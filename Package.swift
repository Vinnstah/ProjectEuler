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
            name: "Problem3",
            dependencies: []),
        .testTarget(name: "Problem3Test",
                   dependencies: ["Problem3"]),
        
        .executableTarget(
            name: "Problem4",
            dependencies: []),
        .testTarget(name: "Problem4Test",
                   dependencies: ["Problem4"]),
        
        .executableTarget(
            name: "Problem5",
            dependencies: []),
        .testTarget(name: "Problem5Test",
                   dependencies: ["Problem5"]),
        
        .executableTarget(
            name: "Problem6",
            dependencies: []),
        .testTarget(name: "Problem6Test",
                   dependencies: ["Problem6"]),
        
            .executableTarget(
                name: "Problem7",
                dependencies: []),
            .testTarget(name: "Problem7Test",
                       dependencies: ["Problem7"]),
        
            .executableTarget(
                name: "Problem8",
                dependencies: []),
            .testTarget(name: "Problem8Test",
                       dependencies: ["Problem8"]),
        
            .executableTarget(
                name: "Problem13",
                dependencies: []),
    ]
)
