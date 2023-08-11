// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FancyUIKit",
  platforms: [.iOS(.v13)],
  products: [
    .library(
      name: "FancyUIKit",
      targets: ["FancyUIKit"]),
  ],
  dependencies: [
    .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.2.0"),
  ],
  targets: [
    .target(
      name: "FancyUIKit",
      dependencies: [
        .product(name: "Lottie", package: "lottie-ios")
      ]
    ),
    .testTarget(
      name: "FancyUIKitTests",
      dependencies: ["FancyUIKit"]
    ),
  ]
)
