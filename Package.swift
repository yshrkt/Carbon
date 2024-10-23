// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Carbon",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "Carbon", targets: ["Carbon"])
    ],
    dependencies: [
        .package(url: "https://github.com/ca-love/DifferenceKit.git", branch: "feature/xcode16")
    ],
    targets: [
        .target(
            name: "Carbon",
            dependencies: ["DifferenceKit"],
            path: "Sources"
        ),
        .testTarget(
            name: "Tests",
            dependencies: ["Carbon"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
