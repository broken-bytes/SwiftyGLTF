// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "GameKit",
    products: [
        .library(
            name: "SwiftyGLTF",
            targets: ["SwiftyGLTF"]
        ) 
    ],

    targets: [
        .target(
            name: "SwiftyGLTF",
            path: "Sources/SwiftyGLTF"
        ),
        .testTarget(
            name: "SwiftyGLTFTests",
            dependencies: ["SwiftyGLTF"],
            path: "Tests/SwiftyGLTF",
            resources: [
                .copy("Resources/russian_food_cans_01_1k.gltf")
            ]
        ),
    ]
)