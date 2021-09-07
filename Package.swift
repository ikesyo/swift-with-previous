// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "swift-with-previous",
    products: [
        .library(
            name: "WithPrevious",
            targets: ["WithPrevious"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WithPrevious",
            dependencies: []
        ),
        .testTarget(
            name: "WithPreviousTests",
            dependencies: ["WithPrevious"]
        ),
    ]
)
