// swift-tools-version: 5.7
//
// Copyright 2021, 2022  OpenAlloc LLC
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.
//

import PackageDescription

let package = Package(
    name: "FlowAllocLow",
    platforms: [.macOS(.v12), .iOS(.v15)],
    products: [
        .library(name: "FlowAllocLow", targets: ["FlowAllocLow"]),
    ],
    dependencies: [
        .package(url: "https://github.com/openalloc/FlowXCT.git", from: "1.0.0"),
        .package(url: "https://github.com/openalloc/FlowBase.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "FlowAllocLow",
            dependencies: [
                "FlowBase",
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "FlowAllocLowTests",
            dependencies: [
                "FlowAllocLow",
                "FlowBase",
                "FlowXCT",
            ],
            path: "Tests"
        ),
    ]
)
