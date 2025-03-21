// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let package = Package(
    name: "CSodium",
    products: [
        .library(
            name: "CSodium",
            targets: ["CSodium"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CSodium",
            dependencies: [],
            path: "Sources/sodium/",
            sources: [

            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("libsodium/include"),
                .headerSearchPath("libsodium/src"),
                .define("HAVE_STRNDUP")
            ]
        )
    ]
)
