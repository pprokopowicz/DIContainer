// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DIContainer",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "DIContainer",
            type: .dynamic,
            targets: ["DIContainer"]
        ),
        .library(
            name: "DIContainerBinary",
            targets: ["DIContainerBinary"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble.git", from: "9.2.0"),
        .package(url: "https://github.com/Quick/Quick.git", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "DIContainer",
            dependencies: []
        ),
        .binaryTarget(
            name: "DIContainerBinary",
            path: "framework/DIContainer.xcframework"
        ),
        .testTarget(
            name: "DIContainerTests",
            dependencies: [
                .target(name: "DIContainer"),
                .product(name: "Nimble", package: "Nimble"),
                .product(name: "Quick", package: "Quick")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
