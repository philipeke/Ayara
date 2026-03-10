/**
 * Factory that returns a complete firebase-admin mock.
 *
 * Usage inside jest.mock():
 *
 *   jest.mock('firebase-admin', () => require('../helpers/make-admin-mock').makeAdminMock());
 *
 * Tests access state via jest.requireMock('firebase-admin').__XXX helpers.
 */

export function makeAdminMock() {
  const _state: Map<string, any> = new Map();
  const _ops: any[] = [];

  // ─── Ref / Collection factories ──────────────────────────────────────────
  function makeRef(path: string): any {
    return {
      path,
      id: path.split('/').pop(),
      collection: (name: string) => makeCollection(`${path}/${name}`),
      get: async () => readDoc(path),
      set: async (data: any, opts?: any) => {
        _ops.push({ type: 'set', path, data, options: opts });
      },
      delete: async () => {
        _ops.push({ type: 'delete', path });
      },
    };
  }

  /** Chainable query builder that accumulates where() conditions. */
  function makeQuery(collectionPath: string, conditions: Array<{ field: string; val: any }>): any {
    const query: any = {
      where: (field: string, _op: string, val: any) =>
        makeQuery(collectionPath, [...conditions, { field, val }]),
      limit: (_n: number) => makeQuery(collectionPath, conditions),
      get: async () => {
        const docs: any[] = [];
        for (const [p, d] of _state.entries()) {
          if (d === undefined) continue;
          // Immediate child of collection
          if (!p.startsWith(collectionPath + '/')) continue;
          const rest = p.slice(collectionPath.length + 1);
          if (rest.includes('/')) continue; // subcollection doc, skip
          const matches = conditions.every(({ field, val }) => d?.[field] === val);
          if (matches) {
            docs.push({
              id: p.split('/').pop(),
              exists: true,
              data: () => d,
              get: (f: string) => d?.[f],
              ref: makeRef(p),
            });
          }
        }
        return { empty: docs.length === 0, docs, size: docs.length };
      },
    };
    return query;
  }

  function makeCollection(name: string): any {
    return {
      path: name,
      doc: (id: string) => makeRef(`${name}/${id}`),
      where: (field: string, op: string, val: any) => makeQuery(name, [{ field, val }]),
      limit: (n: number) => makeQuery(name, []),
    };
  }

  function readDoc(path: string) {
    const data = _state.get(path);
    return {
      exists: data !== undefined,
      data: () => data ?? {},
      get: (f: string) => data?.[f],
    };
  }

  // ─── Transaction ─────────────────────────────────────────────────────────
  function createTx() {
    return {
      get: async (ref: any) => readDoc(ref.path),
      set: (ref: any, data: any, opts?: any) => {
        _ops.push({ type: 'set', path: ref.path, data, options: opts });
      },
      create: (ref: any, data: any) => {
        _ops.push({ type: 'create', path: ref.path, data });
      },
      delete: (ref: any) => {
        _ops.push({ type: 'delete', path: ref.path });
      },
    };
  }

  // ─── Batch ───────────────────────────────────────────────────────────────
  function createBatch() {
    const bOps: any[] = [];
    return {
      set: (ref: any, data: any, opts?: any) =>
        bOps.push({ type: 'set', path: ref.path, data, options: opts }),
      delete: (ref: any) => bOps.push({ type: 'delete', path: ref.path }),
      commit: async () => bOps.forEach((op) => _ops.push(op)),
    };
  }

  // ─── Mock Firestore instance ──────────────────────────────────────────────
  const mockDb: any = {
    collection: makeCollection,
    runTransaction: async (fn: Function) => fn(createTx()),
    batch: createBatch,
  };

  const mockFirestoreFn: any = () => mockDb;
  mockFirestoreFn.FieldValue = {
    serverTimestamp: () => ({ __type: 'serverTimestamp' }),
    arrayUnion: (...items: any[]) => ({ __type: 'arrayUnion', items }),
    arrayRemove: (...items: any[]) => ({ __type: 'arrayRemove', items }),
    increment: (n: number) => ({ __type: 'increment', n }),
  };

  // ─── Full admin mock ──────────────────────────────────────────────────────
  return {
    firestore: mockFirestoreFn,
    auth: () => ({
      getUser: async (uid: string) => {
        const authDoc = _state.get(`_auth/${uid}`);
        if (!authDoc) throw new Error(`No auth record for uid ${uid}`);
        return authDoc;
      },
    }),

    // ────────────────────────────────────────────────────────────────────────
    // Test helpers — access via jest.requireMock('firebase-admin')
    // ────────────────────────────────────────────────────────────────────────

    /** Set a Firestore document at the given path */
    __setState: (path: string, data: any) => _state.set(path, data),

    /** Remove a document (simulate doesn't exist) */
    __deleteDoc: (path: string) => _state.delete(path),

    /** Set a Firebase Auth user record */
    __setAuth: (uid: string, data: any) => _state.set(`_auth/${uid}`, data),

    /** All recorded Firestore operations (set/create/delete) */
    __getOps: () => [..._ops],

    /** Last set/create op targeting a path */
    __findSetOp: (path: string) =>
      [..._ops].reverse().find((op: any) => op.path === path && (op.type === 'set' || op.type === 'create')),

    /** All ops targeting a path (in order) */
    __getOpsForPath: (path: string) => _ops.filter((op: any) => op.path === path),

    /** Find the op where status='granted' was written to a tx doc */
    __findGrantOp: (path: string) =>
      [..._ops].reverse().find((op: any) => op.path === path && op.data?.status === 'granted'),

    /** Reset all state and ops — call in beforeEach */
    __reset: () => {
      _state.clear();
      _ops.length = 0;
    },
  };
}
