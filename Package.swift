// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoggerKit",
    platforms: [.iOS(.v13), .watchOS(.v6), .macOS(.v10_15), .tvOS(.v13)],
    products: [
        .library(name: "LoggerKit", targets: ["LoggerKit"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "LoggerKit", dependencies: []),
        .testTarget(name: "LoggerKitTests", dependencies: ["LoggerKit"]),
    ]
)
