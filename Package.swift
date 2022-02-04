// swift-tools-version:5.3

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 07/09/2021.
//  All code (c) 2021 - present day, Elegant Chaos.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import PackageDescription

let package = Package(
    name: "Labelled",
    platforms: [
        .macOS(.v11), .iOS(.v14), .tvOS(.v14), .watchOS(.v6)
    ],
    products: [
        .library(
            name: "Labelled",
            targets: ["Labelled"]),
        .library(
            name: "LabelledKit",
            targets: ["LabelledKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/elegantchaos/XCTestExtensions.git", from: "1.4.2")
    ],
    targets: [
        .target(
            name: "Labelled",
            dependencies: []),
        .target(
            name: "LabelledKit",
            dependencies: ["Labelled"]),
        .testTarget(
            name: "LabelledTests",
            dependencies: ["Labelled", "XCTestExtensions"]),
    ]
)
