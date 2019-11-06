// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Shout",
    products: [
        .library(name: "Shout", targets: ["Shout"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/BlueSocket", from: "1.0.50"),
        .package(url: "https://github.com/DomAmato/CSSH", .branch("master")),
    ],
    targets: [
        .target(name: "Shout", dependencies: ["Socket"]),
        .testTarget(name: "ShoutTests", dependencies: ["Shout"]),
    ]
)
