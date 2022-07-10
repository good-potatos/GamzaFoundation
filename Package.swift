// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GamzaFoundation",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        .library(
            name: "GamzaFoundation",
            targets: ["GamzaFoundation"]
        ),
        .library(
            name: "GamzaFoundationDev",
            targets: ["GamzaFoundationDev"]
        )
    ],
    dependencies: [
        // MARK: - Product
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            .upToNextMajor(from: "0.36.0")
        ),
        .package(
            url: "https://github.com/CombineCommunity/CombineExt.git",
            from: "1.0.0"
        ),
        .package(
            url: "https://github.com/onevcat/Kingfisher",
            from: "7.2.0"
        ),
        // MARK: - Dev
        .package(
            url: "https://github.com/nicklockwood/SwiftFormat",
            from: "0.49.7"
        ),
        .package(
            url: "https://github.com/FLEXTool/FLEX.git",
            from: "4.3.0"
        ),
        .package(
            url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git",
            from: "1.9.0"
        ),
    ],
    targets: [
        .target(
            name: "GamzaFoundation",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "CombineExt", package: "CombineExt"),
                .product(name: "Kingfisher", package: "Kingfisher"),
            ]),
        .target(
            name: "GamzaFoundationDev",
            dependencies: [
                .product(name: "FLEX", package: "FLEX"),
                .product(name: "SwiftyBeaver", package: "SwiftyBeaver"),
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "CombineExt", package: "CombineExt"),
                .product(name: "Kingfisher", package: "Kingfisher"),
            ])
    ]
)
