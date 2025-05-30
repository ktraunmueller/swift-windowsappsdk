// swift-tools-version: 6.2

import PackageDescription

let linkerSettings: [LinkerSetting] = [
/* Figure out magic incantation so we can delay load these dlls
    .unsafeFlags(["-L\(currentDirectory)/Sources/CWinAppSDK/nuget/lib"]),
    .unsafeFlags(["-Xlinker" , "/DELAYLOAD:Microsoft.WindowsAppRuntime.Bootstrap.dll"]),
*/
]

let package = Package(
    name: "swift-windowsappsdk",
    products: [
        .library(name: "WinAppSDK", type: .dynamic, targets: ["WinAppSDK"]),
        .library(name: "CWinAppSDK", targets: ["CWinAppSDK"]),
    ],
    dependencies: [
        // .package(url: "https://github.com/ktraunmueller/swift-cwinrt", branch: "main"),
        // .package(url: "https://github.com/ktraunmueller/swift-uwp", branch: "main"),
        // .package(url: "https://github.com/ktraunmueller/swift-windowsfoundation", branch: "main")
        .package(path: "../swift-cwinrt"),
        .package(path: "../swift-uwp"),
        .package(path: "../swift-windowsfoundation")
    ],
    targets: [
        .target(
            name: "WinAppSDK",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "UWP", package: "swift-uwp"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
                "CWinAppSDK"
            ]
        ),
        .target(
            name: "CWinAppSDK",
            resources: [
                // TODO copy right file depending on target architecture
                .copy("nuget/bin/arm64/Microsoft.WindowsAppRuntime.Bootstrap.dll")
            ],
            linkerSettings: linkerSettings
        )
    ],
    swiftLanguageModes: [.v5]
)
