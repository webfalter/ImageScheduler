#if canImport(Cocoa) && !canImport(SwiftUI)
import Cocoa

public class ImageSchedulerView: NSView {
    private var items: [ImageScheduleItem] = []
    private var imageView = NSImageView()
    private var timer: Timer?

    public init(frame: CGRect, items: [ImageScheduleItem]) {
        self.items = items
        super.init(frame: frame)
        imageView.frame = bounds
        addSubview(imageView)
        updateImage()
        timer = Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { [weak self] _ in self?.updateImage() }
    }

    required init?(coder: NSCoder) { fatalError("init coder") }

    private func updateImage() {
        let now = Date()
        if let m = items.first(where: { now >= $0.start && now <= $0.end }) {
            imageView.image = NSImage(named: m.name)
        }
    }
}
#endif
