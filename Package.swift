// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ImageScheduler",
    platforms: [
        .iOS(.v15),
        .macOS(.v11)
    ],
    products: [
        .library(name: "ImageScheduler", targets: ["ImageScheduler"])
    ],
    targets: [
        .target(name: "ImageScheduler", path: "Sources/ImageScheduler")
    ]
)
