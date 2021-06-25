// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Container",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "Container",
            targets: ["Container"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Container",
            dependencies: []),
        .testTarget(
            name: "ContainerTests",
            dependencies: ["Container"]),
    ]
)
