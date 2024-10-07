// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "RxGoogleMaps",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "RxGoogleMaps", targets: ["RxGoogleMaps"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.6.0")),
    .package(url: "https://github.com/googlemaps/ios-maps-sdk.git", .upToNextMajor(from: "9.0.0")),
  ],
  targets: [
    .target(name: "RxGoogleMaps", dependencies: [
       .product(name: "RxSwift", package: "RxSwift"),
       .product(name: "RxCocoa", package: "RxSwift"),
       .product(name: "GoogleMaps", package: "ios-maps-sdk")
    ])
  ]
)
