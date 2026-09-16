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
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            exact: "13.6.3"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXAppLovinAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios/releases/download/adapter-applovin/13.6.3.0/CloudXAppLovinAdapter.xcframework.zip",
            checksum: "e066215302a47830c915e6812d0e04d754141c0916f347f6ace2fdf382e24b30"
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
