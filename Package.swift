// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FPhiSelphIDWidgetiOSLight",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FPhiSelphIDWidgetiOSLight",
            targets: ["FPhiSelphIDWidgetiOSLight"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "git@github.com:facephi-clienters/SDK-ZipZap-SPM.git", from: "1.0.0"),
        .package(url: "git@github.com:facephi-clienters/FPhiMBWidgetiOS-framework.git", from: "6.13.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FPhiSelphIDWidgetiOSLight",
            dependencies: [
                "FPhiSelphIDWidgetiOS",
                .product(name: "FPhiZipZap", package: "SDK-ZipZap-SPM"),
                .product(name: "FPhiMBWidgetiOS", package: "FPhiMBWidgetiOS-framework")
            ],
            resources: [.copy("fphi-selphid-widget-resources-selphid-1.0.zip")]),
        .binaryTarget(name: "FPhiSelphIDWidgetiOS",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/Selphid/FPhiSelphIDWidgetiOSLight/1.39.1/FPhiSelphIDWidgetiOSLight.zip",
        checksum: "e5ac638b5b7ae65d5f160cc180d1324be6e71227d9120192454558ab6c1e13d5")
    ]
)