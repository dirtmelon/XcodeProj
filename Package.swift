// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "XcodeProj",
    products: [
        .library(name: "XcodeProj", targets: ["XcodeProj"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tadija/AEXML", .upToNextMinor(from: "4.4.0")),
        .package(url: "https://github.com/kylef/PathKit", .upToNextMinor(from: "1.0.0")),
        .package(url: "https://github.com/apple/swift-package-manager", .branch("swift-5.1-branch")),
    ],
    targets: [
        .target(name: "XcodeProj",
                dependencies: [
                    "PathKit",
                    "AEXML",
                ]),
        .testTarget(name: "XcodeProjTests", dependencies: ["XcodeProj", "SPMUtility"]),
    ]
)
