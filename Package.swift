// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "UniqueXs",
  products: [],
  dependencies: [],
  targets: [
    .target(name: "A"),
    .target(name: "B", dependencies: ["A"]),
    .target(name: "C", dependencies: ["A"]),
    .testTarget(name: "D", dependencies: ["A", "B", "C"]),
  ]
)
