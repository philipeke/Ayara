import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    #if DEBUG
    // Pin the App Check debug token so the native DebugAppCheckProvider always
    // uses this UUID. Register it once in Firebase Console →
    // App Check → iOS app → Manage debug tokens.
    setenv("FIRAAppCheckDebugToken", "C26644DA-8688-4F65-9A7E-62BCAB914225", 1)
    #endif
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
