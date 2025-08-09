import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let result = super.application(application, didFinishLaunchingWithOptions: launchOptions)
    window?.backgroundColor = UIColor(red: 0x66/255.0, green: 0xBB/255.0, blue: 0x55/255.0, alpha: 1.0)
    return result
  }
}
