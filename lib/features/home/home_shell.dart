// lib/features/home/home_shell.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ayara/core/config/theme.dart';
import 'package:ayara/l10n/app_localizations.dart';
import 'package:ayara/features/home/dashboard_screen.dart';
import 'package:ayara/features/chat/presentation/screens/category_screen.dart';
import 'package:ayara/features/duas/duas_screen.dart';
import 'package:ayara/features/calendar/calendar_screen.dart';

class HomeShell extends StatefulWidget {
  /// Jump straight to a specific tab (0=Home, 1=Reflect, 2=Duas, 3=Calendar).
  final int initialIndex;

  const HomeShell({super.key, this.initialIndex = 0});

  /// Find the nearest [HomeShell] and expose [jumpTo] to any child widget.
  static HomeShellState? of(BuildContext context) =>
      context.findAncestorStateOfType<HomeShellState>();

  @override
  State<HomeShell> createState() => HomeShellState();
}

class HomeShellState extends State<HomeShell> {
  late int _index;

  // Each counter is incremented when switching TO that tab, forcing a fresh
  // build (and therefore scroll-to-top) on every re-entry.
  final List<int> _tabKeys = [0, 0, 0, 0];

  @override
  void initState() {
    super.initState();
    _index = widget.initialIndex.clamp(0, 3);
  }

  void _onTap(int i) {
    HapticFeedback.selectionClick();
    setState(() {
      if (i != _index) _tabKeys[i]++;
      _index = i;
    });
  }

  void jumpTo(int index) => _onTap(index);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _index == 0,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop && _index != 0) {
          setState(() => _index = 0);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.deepNavy,
        body: IndexedStack(
          index: _index,
          children: [
            DashboardScreen(key: ValueKey('dash-${_tabKeys[0]}')),
            CategoryScreen(key: ValueKey('cat-${_tabKeys[1]}')),
            DuasScreen(key: ValueKey('duas-${_tabKeys[2]}')),
            CalendarScreen(key: ValueKey('cal-${_tabKeys[3]}')),
          ],
        ),
        bottomNavigationBar: _BottomNav(
          selectedIndex: _index,
          onTap: _onTap,
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _BottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const _BottomNav({required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.navy,
        border: Border(top: BorderSide(color: AppColors.border, width: 0.8)),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Builder(builder: (context) {
            final t = AppLocalizations.of(context);
            return Row(
              children: [
                _NavItem(
                  icon: Icons.home_outlined,
                  activeIcon: Icons.home_rounded,
                  label: t.navHome,
                  selected: selectedIndex == 0,
                  onTap: () => onTap(0),
                ),
                _NavItem(
                  icon: Icons.auto_awesome_outlined,
                  activeIcon: Icons.auto_awesome_rounded,
                  label: t.navReflect,
                  selected: selectedIndex == 1,
                  onTap: () => onTap(1),
                ),
                _NavItem(
                  icon: Icons.menu_book_outlined,
                  activeIcon: Icons.menu_book_rounded,
                  label: t.navDuas,
                  selected: selectedIndex == 2,
                  onTap: () => onTap(2),
                ),
                _NavItem(
                  icon: Icons.calendar_month_outlined,
                  activeIcon: Icons.calendar_month_rounded,
                  label: t.navCalendar,
                  selected: selectedIndex == 3,
                  onTap: () => onTap(3),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _NavItem extends StatelessWidget {
  final IconData icon;
  final IconData activeIcon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                decoration: BoxDecoration(
                  color: selected
                      ? AppColors.crimsonDeep.withValues(alpha: 0.55)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  selected ? activeIcon : icon,
                  color:
                      selected ? AppColors.goldBright : AppColors.textMuted,
                  size: 22,
                ),
              ),
              const SizedBox(height: 2),
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 200),
                style: TextStyle(
                  color:
                      selected ? AppColors.goldBright : AppColors.textMuted,
                  fontSize: 10,
                  fontWeight:
                      selected ? FontWeight.w700 : FontWeight.w400,
                  letterSpacing: 0.2,
                ),
                child: Text(label),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
