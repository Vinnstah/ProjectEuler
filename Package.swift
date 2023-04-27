// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProjectEuler",
    platforms: [.macOS(.v13)],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "Problem1",
            dependencies: []),
        .testTarget(name: "Problem1Test",
                   dependencies: ["Problem1"]),
        
        .executableTarget(
            name: "Problem2",
            dependencies: [])
    ]
)
