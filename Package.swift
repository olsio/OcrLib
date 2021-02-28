// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OcrLib",
    platforms: [.macOS(.v10_13)],
    products: [
        .library(
            name: "OcrLib",
            targets: ["OcrLib"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/SwiftyTesseract/SwiftyTesseract.git",
            .upToNextMajor(from: "4.0.0")
        ),
    ],
    targets: [
        .target(
            name: "OcrLib",
            dependencies: ["SwiftyTesseract"],
            resources: [.copy("tessdata")])
    ]
)
