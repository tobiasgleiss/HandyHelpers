// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HandyHelpers",
    platforms: [
        .macOS(.v14),
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "HandyHelpers",
            targets: ["HandyHelpers"]),
    ],
    targets: [
        .target(
            name: "HandyHelpers"),
        .testTarget(
            name: "HandyHelpersTests",
            dependencies: ["HandyHelpers"]
        ),
    ]
)
