// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GamzaFoundation",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        .library(
            name: "GamzaFoundation",
            targets: ["GamzaFoundation"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "GamzaFoundation",
            dependencies: [])
    ]
)
