import Foundation

public struct ImageSchedulerItem {
    public let start: Date
    public let end: Date
    public let name: String

    public init(start: Date, end: Date, name: String) {
        self.start = start
        self.end = end
        self.name = name
    }
}
