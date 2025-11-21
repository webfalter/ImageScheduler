import Cocoa

public class ImageSchedulerView: NSView {
    private var items: [ImageSchedulerItem] = []
    private var imageView = NSImageView()
    private var timer: Timer?

    public init(frame: CGRect, items: [ImageSchedulerItem]) {
        self.items = items
        super.init(frame: frame)
        imageView.frame = bounds
        imageView.autoresizingMask = [.width, .height]
        addSubview(imageView)
        updateImage()
        timer = Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { [weak self] _ in
            self?.updateImage()
        }
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) not implemented") }

    private func updateImage() {
        let now = Date()
        if let current = items.first(where: { now >= $0.start && now <= $0.end }) {
            imageView.image = NSImage(named: current.name)
        }
    }
}
