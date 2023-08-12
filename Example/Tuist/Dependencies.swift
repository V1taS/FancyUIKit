import ProjectDescription

let dependencies = Dependencies(
  swiftPackageManager: SwiftPackageManagerDependencies(
    [.local(path: "../../FancyUIKit")]
  ),
  platforms: [.iOS]
)
