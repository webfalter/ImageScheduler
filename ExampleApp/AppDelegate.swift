import Cocoa
@main
class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!
    func applicationDidFinishLaunching(_ n: Notification) {
        let vc = ViewController()
        window = NSWindow(contentRect: NSMakeRect(0,0,600,600), styleMask:[.titled,.closable,.resizable], backing:.buffered, defer:false)
        window.center()
        window.contentViewController = vc
        window.makeKeyAndOrderFront(nil)
    }
}
