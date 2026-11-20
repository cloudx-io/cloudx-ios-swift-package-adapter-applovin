// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXAppLovinAdapter",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXAppLovinAdapter",
            targets: ["CloudXAppLovinAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.11.0"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            exact: "13.6.4"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXAppLovinAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-applovin/releases/download/binary/13060400.0.0/CloudXAppLovinAdapter.xcframework.zip",
            checksum: "ab0937d5f9b8d1bb4ade9207f1b8f483df0e8ce5c1a779d37963c31beb3cde8e"
        ),
        .target(
            name: "CloudXAppLovinAdapterPackage",
            dependencies: [
                "CloudXAppLovinAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "AppLovinSDK", package: "applovin-max-swift-package"),
            ]
        ),
        .testTarget(
            name: "CloudXAppLovinAdapterSwiftTests",
            dependencies: ["CloudXAppLovinAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXAppLovinAdapterObjCTests",
            dependencies: ["CloudXAppLovinAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
