// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorMlkitFaceMeshDetection",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorMlkitFaceMeshDetection",
            targets: ["FaceMeshDetectionPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "6.0.0")
    ],
    targets: [
        .target(
            name: "FaceMeshDetectionPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/FaceMeshDetectionPlugin"),
        .testTarget(
            name: "FaceMeshDetectionPluginTests",
            dependencies: ["FaceMeshDetectionPlugin"],
            path: "ios/Tests/FaceMeshDetectionPluginTests")
    ]
)
