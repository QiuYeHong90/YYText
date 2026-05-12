// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "YYText",
    defaultLocalization: "en",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "YYText", targets: ["YYText"])
    ],
    targets: [
        .target(
            name: "YYText",
            path: "./YYText",
            publicHeadersPath: nil, // ✅ 这里修复了
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("Component"),
                .headerSearchPath("Utility"),
                .headerSearchPath("String"),
                .headerSearchPath("Async"),
                .headerSearchPath("Parser"),
                .headerSearchPath("Attribute")
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("CoreText"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("Accelerate"),
                .linkedFramework("MobileCoreServices"),
            ]
        )
    ]
)
