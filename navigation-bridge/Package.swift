// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "navigation-bridge",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NavigationBridge",
            targets: ["NavigationBridge"]),
    ],
    dependencies: [
        .package(path: "../models"),
        .package(path: "../packageOne"),
        .package(path: "../packageTwo")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NavigationBridge",
            dependencies: [
                .product(name: "Models", package: "models"),
                .product(name: "PackageOne", package: "packageOne"),
                .product(name: "PackageTwo", package: "packageTwo")
            ]
        )
    ]
)
