// swift-tools-version:5.1
import PackageDescription

let package = Package(
  name: "Local Package",
  products: [
    .library(name: "Assembler", targets: ["Assembler"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/ReactiveX/RxSwift.git",
      .upToNextMajor(from: "5.0.0")
    )
  ],
  targets: [

    .target(
      name: "Assembler",
      dependencies: ["RxSwift" , "RxCocoa", "RxRelay"]
    )
  ]
)
