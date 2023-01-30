import ProjectDescription

let deploymentTarget = DeploymentTarget.iOS(
    targetVersion: "12.0",
    devices: DeploymentDevice.iphone
)

let project = Project(
    name: "MyProject",
    settings: .settings(),
    targets: [
        Target(
            name: "TestHost",
            platform: .iOS,
            product: .app,
            bundleId: "org.foo.TestHost",
            deploymentTarget: deploymentTarget,
            infoPlist: "TestHost/Info.plist",
            sources: [
                "TestHost/*.swift"
            ],
            resources: [
                "TestHost/Base.lproj/*.storyboard",
                "TestHost/*.xcassets",
            ]
        )
    ]
)
