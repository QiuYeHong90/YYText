// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "YYText",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "YYText", targets: ["YYText"])
    ],
    targets: [
        .target(
            name: "YYText",
            path: "YYText",
            publicHeadersPath: ".",
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