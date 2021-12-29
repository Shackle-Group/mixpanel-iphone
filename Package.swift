// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Mixpanel",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "Mixpanel", type: .dynamic, targets: ["Mixpanel"]),
    ],
    targets: [
        .target(
            name: "Mixpanel",
            path: "Mixpanel",
            exclude: ["app_extension_module.modulemap",
                      "ios.modulemap",
                      "macos.modulemap",
                      "tvos.modulemap",
                      "watchos.modulemap",
                      "MixpanelWatchProperties.h",
                      "MixpanelWatchProperties.m"],
            resources: [
                .copy("Images/MPDismissKeyboard@2x.png"),
                .copy("Images/MPLogo@2x.png"),
                .copy("Images/MPCheckmark.png"),
                .copy("test_variant.json"),
                .copy("Images/MPLogo.png"),
                .copy("Images/MPArrowLeft@2x.png"),
                .copy("Images/MPArrowRight.png"),
                .copy("Images/MPCheckmark@2x.png"),
                .copy("Images/MPDismissKeyboard.png"),
                .copy("Images/MPCloseButton@2x.png"),
                .copy("Images/placeholder-image.png"),
                .copy("Images/MPArrowRight@2x.png"),
                .copy("Images/MPCloseButton@3x.png"),
                .copy("Images/MPArrowLeft.png"),
                .copy("snapshot_config.json"),
                .copy("Images/MPCloseButton.png")
            ]
        )
    ]
)
