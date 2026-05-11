// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "YYText",
    platforms: [
        .iOS(.v13) // SPM 至少要 iOS 13，你要更低也可以用 .v9
    ],
    products: [
        .library(
            name: "YYText",
            targets: ["YYText"]
        )
    ],
    targets: [
        .target(
            name: "YYText",
            path: "YYText",
            sources: ["."],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .define("SPM", to: "1")
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreText"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Accelerate"),
                .linkedFramework("MobileCoreServices"),
            ]
        )
    ]
)