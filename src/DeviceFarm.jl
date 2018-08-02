#==============================================================================#
# DeviceFarm.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/devicefarm-2015-06-23.normal.json
#==============================================================================#

__precompile__()

module DeviceFarm

using AWSCore


"""
    using AWSSDK.DeviceFarm.create_device_pool
    create_device_pool([::AWSConfig], arguments::Dict)
    create_device_pool([::AWSConfig]; projectArn=, name=, rules=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "CreateDevicePool", arguments::Dict)
    devicefarm([::AWSConfig], "CreateDevicePool", projectArn=, name=, rules=, <keyword arguments>)

# CreateDevicePool Operation

Creates a device pool.

# Arguments

## `projectArn = ::String` -- *Required*
The ARN of the project for the device pool.


## `name = ::String` -- *Required*
The device pool's name.


## `description = ::String`
The device pool's description.


## `rules = [[ ... ], ...]` -- *Required*
The device pool's rules.
```
 rules = [[
        "attribute" =>  "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS" or "FLEET_TYPE",
        "operator" =>  "EQUALS", "LESS_THAN", "GREATER_THAN", "IN", "NOT_IN" or "CONTAINS",
        "value" =>  ::String
    ], ...]
```



# Returns

`CreateDevicePoolResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To create a new device pool

The following example creates a new device pool named MyDevicePool inside an existing project.

Input:
```
[
    "name" => "MyDevicePool",
    "description" => "My Android devices",
    "projectArn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    "rules" => [

    ]
]
```

Output:
```
Dict(
    "devicePool" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateDevicePool)
"""
@inline create_device_pool(aws::AWSConfig=default_aws_config(); args...) = create_device_pool(aws, args)

@inline create_device_pool(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "CreateDevicePool", args)

@inline create_device_pool(args) = create_device_pool(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.create_instance_profile
    create_instance_profile([::AWSConfig], arguments::Dict)
    create_instance_profile([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "CreateInstanceProfile", arguments::Dict)
    devicefarm([::AWSConfig], "CreateInstanceProfile", name=, <keyword arguments>)

# CreateInstanceProfile Operation

Creates a profile that can be applied to one or more private fleet device instances.

# Arguments

## `name = ::String` -- *Required*
The name of your instance profile.


## `description = ::String`
The description of your instance profile.


## `packageCleanup = ::Bool`
When set to `true`, Device Farm will remove app packages after a test run. The default value is `false` for private devices.


## `excludeAppPackagesFromCleanup = [::String, ...]`
An array of strings specifying the list of app packages that should not be cleaned up from the device after a test run is over.

The list of packages is only considered if you set `packageCleanup` to `true`.


## `rebootAfterUse = ::Bool`
When set to `true`, Device Farm will reboot the instance after a test run. The default value is `true`.




# Returns

`CreateInstanceProfileResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateInstanceProfile)
"""
@inline create_instance_profile(aws::AWSConfig=default_aws_config(); args...) = create_instance_profile(aws, args)

@inline create_instance_profile(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "CreateInstanceProfile", args)

@inline create_instance_profile(args) = create_instance_profile(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.create_network_profile
    create_network_profile([::AWSConfig], arguments::Dict)
    create_network_profile([::AWSConfig]; projectArn=, name=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "CreateNetworkProfile", arguments::Dict)
    devicefarm([::AWSConfig], "CreateNetworkProfile", projectArn=, name=, <keyword arguments>)

# CreateNetworkProfile Operation

Creates a network profile.

# Arguments

## `projectArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the project for which you want to create a network profile.


## `name = ::String` -- *Required*
The name you wish to specify for the new network profile.


## `description = ::String`
The description of the network profile.


## `type = "CURATED" or "PRIVATE"`
The type of network profile you wish to create. Valid values are listed below.


## `uplinkBandwidthBits = ::Int`
The data throughput rate in bits per second, as an integer from 0 to 104857600.


## `downlinkBandwidthBits = ::Int`
The data throughput rate in bits per second, as an integer from 0 to 104857600.


## `uplinkDelayMs = ::Int`
Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.


## `downlinkDelayMs = ::Int`
Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.


## `uplinkJitterMs = ::Int`
Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.


## `downlinkJitterMs = ::Int`
Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.


## `uplinkLossPercent = ::Int`
Proportion of transmitted packets that fail to arrive from 0 to 100 percent.


## `downlinkLossPercent = ::Int`
Proportion of received packets that fail to arrive from 0 to 100 percent.




# Returns

`CreateNetworkProfileResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateNetworkProfile)
"""
@inline create_network_profile(aws::AWSConfig=default_aws_config(); args...) = create_network_profile(aws, args)

@inline create_network_profile(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "CreateNetworkProfile", args)

@inline create_network_profile(args) = create_network_profile(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.create_project
    create_project([::AWSConfig], arguments::Dict)
    create_project([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "CreateProject", arguments::Dict)
    devicefarm([::AWSConfig], "CreateProject", name=, <keyword arguments>)

# CreateProject Operation

Creates a new project.

# Arguments

## `name = ::String` -- *Required*
The project's name.


## `defaultJobTimeoutMinutes = ::Int`
Sets the execution timeout value (in minutes) for a project. All test runs in this project will use the specified execution timeout value unless overridden when scheduling a run.




# Returns

`CreateProjectResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To create a new project

The following example creates a new project named MyProject.

Input:
```
[
    "name" => "MyProject"
]
```

Output:
```
Dict(
    "project" => Dict(
        "name" => "MyProject",
        "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:5e01a8c7-c861-4c0a-b1d5-12345EXAMPLE",
        "created" => "1472660939.152"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateProject)
"""
@inline create_project(aws::AWSConfig=default_aws_config(); args...) = create_project(aws, args)

@inline create_project(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "CreateProject", args)

@inline create_project(args) = create_project(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.create_remote_access_session
    create_remote_access_session([::AWSConfig], arguments::Dict)
    create_remote_access_session([::AWSConfig]; projectArn=, deviceArn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "CreateRemoteAccessSession", arguments::Dict)
    devicefarm([::AWSConfig], "CreateRemoteAccessSession", projectArn=, deviceArn=, <keyword arguments>)

# CreateRemoteAccessSession Operation

Specifies and starts a remote access session.

# Arguments

## `projectArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the project for which you want to create a remote access session.


## `deviceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the device for which you want to create a remote access session.


## `instanceArn = ::String`
The Amazon Resource Name (ARN) of the device instance for which you want to create a remote access session.


## `sshPublicKey = ::String`
The public key of the `ssh` key pair you want to use for connecting to remote devices in your remote debugging session. This is only required if `remoteDebugEnabled` is set to `true`.


## `remoteDebugEnabled = ::Bool`
Set to `true` if you want to access devices remotely for debugging in your remote access session.


## `remoteRecordEnabled = ::Bool`
Set to `true` to enable remote recording for the remote access session.


## `remoteRecordAppArn = ::String`
The Amazon Resource Name (ARN) for the app to be recorded in the remote access session.


## `name = ::String`
The name of the remote access session that you wish to create.


## `clientId = ::String`
Unique identifier for the client. If you want access to multiple devices on the same client, you should pass the same `clientId` value in each call to `CreateRemoteAccessSession`. This is required only if `remoteDebugEnabled` is set to `true`.


## `configuration = [ ... ]`
The configuration information for the remote access session request.
```
 configuration = [
        "billingMethod" =>  "METERED" or "UNMETERED",
        "vpceConfigurationArns" =>  [::String, ...]
    ]
```

## `interactionMode = "INTERACTIVE", "NO_VIDEO" or "VIDEO_ONLY"`
The interaction mode of the remote access session. Valid values are:

*   INTERACTIVE: You can interact with the iOS device by viewing, touching, and rotating the screen. You **cannot** run XCUITest framework-based tests in this mode.

*   NO_VIDEO: You are connected to the device but cannot interact with it or view the screen. This mode has the fastest test execution speed. You **can** run XCUITest framework-based tests in this mode.

*   VIDEO_ONLY: You can view the screen but cannot touch or rotate it. You **can** run XCUITest framework-based tests and watch the screen in this mode.


## `skipAppResign = ::Bool`
When set to `true`, for private devices, Device Farm will not sign your app again. For public devices, Device Farm always signs your apps again and this parameter has no effect.

For more information about how Device Farm re-signs your app(s), see [Do you modify my app?](https://aws.amazon.com/device-farm/faq/) in the *AWS Device Farm FAQs*.




# Returns

`CreateRemoteAccessSessionResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To create a remote access session

The following example creates a remote access session named MySession.

Input:
```
[
    "name" => "MySession",
    "configuration" => [
        "billingMethod" => "METERED"
    ],
    "deviceArn" => "arn:aws:devicefarm:us-west-2::device:123EXAMPLE",
    "projectArn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(
    "remoteAccessSession" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateRemoteAccessSession)
"""
@inline create_remote_access_session(aws::AWSConfig=default_aws_config(); args...) = create_remote_access_session(aws, args)

@inline create_remote_access_session(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "CreateRemoteAccessSession", args)

@inline create_remote_access_session(args) = create_remote_access_session(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.create_upload
    create_upload([::AWSConfig], arguments::Dict)
    create_upload([::AWSConfig]; projectArn=, name=, type=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "CreateUpload", arguments::Dict)
    devicefarm([::AWSConfig], "CreateUpload", projectArn=, name=, type=, <keyword arguments>)

# CreateUpload Operation

Uploads an app or test scripts.

# Arguments

## `projectArn = ::String` -- *Required*
The ARN of the project for the upload.


## `name = ::String` -- *Required*
The upload's file name. The name should not contain the '/' character. If uploading an iOS app, the file name needs to end with the `.ipa` extension. If uploading an Android app, the file name needs to end with the `.apk` extension. For all others, the file name must end with the `.zip` file extension.


## `type = "ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE" or "XCTEST_UI_TEST_PACKAGE"` -- *Required*
The upload's upload type.

Must be one of the following values:

*   ANDROID_APP: An Android upload.

*   IOS_APP: An iOS upload.

*   WEB_APP: A web appliction upload.

*   EXTERNAL_DATA: An external data upload.

*   APPIUM_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package upload.

*   APPIUM_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package upload.

*   APPIUM_PYTHON_TEST_PACKAGE: An Appium Python test package upload.

*   APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package upload.

*   APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package upload.

*   APPIUM_WEB_PYTHON_TEST_PACKAGE: An Appium Python test package upload.

*   CALABASH_TEST_PACKAGE: A Calabash test package upload.

*   INSTRUMENTATION_TEST_PACKAGE: An instrumentation upload.

*   UIAUTOMATION_TEST_PACKAGE: A uiautomation test package upload.

*   UIAUTOMATOR_TEST_PACKAGE: A uiautomator test package upload.

*   XCTEST_TEST_PACKAGE: An XCode test package upload.

*   XCTEST_UI_TEST_PACKAGE: An XCode UI test package upload.

**Note** If you call `CreateUpload` with `WEB_APP` specified, AWS Device Farm throws an `ArgumentException` error.


## `contentType = ::String`
The upload's content type (for example, "application/octet-stream").




# Returns

`CreateUploadResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To create a new test package upload

The following example creates a new Appium Python test package upload inside an existing project.

Input:
```
[
    "name" => "MyAppiumPythonUpload",
    "type" => "APPIUM_PYTHON_TEST_PACKAGE",
    "projectArn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(
    "upload" => Dict(
        "name" => "MyAppiumPythonUpload",
        "type" => "APPIUM_PYTHON_TEST_PACKAGE",
        "arn" => "arn:aws:devicefarm:us-west-2:123456789101:upload:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/b5340a65-3da7-4da6-a26e-12345EXAMPLE",
        "created" => "1472661404.186",
        "status" => "INITIALIZED",
        "url" => "https://prod-us-west-2-uploads.s3-us-west-2.amazonaws.com/arn%3Aaws%3Adevicefarm%3Aus-west-2%3A123456789101%3Aproject%3A5e01a8c7-c861-4c0a-b1d5-12345EXAMPLE/uploads/arn%3Aaws%3Adevicefarm%3Aus-west-2%3A123456789101%3Aupload%3A5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/b5340a65-3da7-4da6-a26e-12345EXAMPLE/MyAppiumPythonUpload?AWSAccessKeyId=1234567891011EXAMPLE&Expires=1472747804&Signature=1234567891011EXAMPLE"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateUpload)
"""
@inline create_upload(aws::AWSConfig=default_aws_config(); args...) = create_upload(aws, args)

@inline create_upload(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "CreateUpload", args)

@inline create_upload(args) = create_upload(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.create_vpceconfiguration
    create_vpceconfiguration([::AWSConfig], arguments::Dict)
    create_vpceconfiguration([::AWSConfig]; vpceConfigurationName=, vpceServiceName=, serviceDnsName=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "CreateVPCEConfiguration", arguments::Dict)
    devicefarm([::AWSConfig], "CreateVPCEConfiguration", vpceConfigurationName=, vpceServiceName=, serviceDnsName=, <keyword arguments>)

# CreateVPCEConfiguration Operation

Creates a configuration record in Device Farm for your Amazon Virtual Private Cloud (VPC) endpoint.

# Arguments

## `vpceConfigurationName = ::String` -- *Required*
The friendly name you give to your VPC endpoint configuration, to manage your configurations more easily.


## `vpceServiceName = ::String` -- *Required*
The name of the VPC endpoint service running inside your AWS account that you want Device Farm to test.


## `serviceDnsName = ::String` -- *Required*
The DNS name of the service running in your VPC that you want Device Farm to test.


## `vpceConfigurationDescription = ::String`
An optional description, providing more details about your VPC endpoint configuration.




# Returns

`CreateVPCEConfigurationResult`

# Exceptions

`ArgumentException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateVPCEConfiguration)
"""
@inline create_vpceconfiguration(aws::AWSConfig=default_aws_config(); args...) = create_vpceconfiguration(aws, args)

@inline create_vpceconfiguration(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "CreateVPCEConfiguration", args)

@inline create_vpceconfiguration(args) = create_vpceconfiguration(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.delete_device_pool
    delete_device_pool([::AWSConfig], arguments::Dict)
    delete_device_pool([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "DeleteDevicePool", arguments::Dict)
    devicefarm([::AWSConfig], "DeleteDevicePool", arn=)

# DeleteDevicePool Operation

Deletes a device pool given the pool ARN. Does not allow deletion of curated pools owned by the system.

# Arguments

## `arn = ::String` -- *Required*
Represents the Amazon Resource Name (ARN) of the Device Farm device pool you wish to delete.




# Returns

`DeleteDevicePoolResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To delete a device pool

The following example deletes a specific device pool.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2::devicepool:123-456-EXAMPLE-GUID"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteDevicePool)
"""
@inline delete_device_pool(aws::AWSConfig=default_aws_config(); args...) = delete_device_pool(aws, args)

@inline delete_device_pool(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "DeleteDevicePool", args)

@inline delete_device_pool(args) = delete_device_pool(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.delete_instance_profile
    delete_instance_profile([::AWSConfig], arguments::Dict)
    delete_instance_profile([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "DeleteInstanceProfile", arguments::Dict)
    devicefarm([::AWSConfig], "DeleteInstanceProfile", arn=)

# DeleteInstanceProfile Operation

Deletes a profile that can be applied to one or more private device instances.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the instance profile you are requesting to delete.




# Returns

`DeleteInstanceProfileResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteInstanceProfile)
"""
@inline delete_instance_profile(aws::AWSConfig=default_aws_config(); args...) = delete_instance_profile(aws, args)

@inline delete_instance_profile(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "DeleteInstanceProfile", args)

@inline delete_instance_profile(args) = delete_instance_profile(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.delete_network_profile
    delete_network_profile([::AWSConfig], arguments::Dict)
    delete_network_profile([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "DeleteNetworkProfile", arguments::Dict)
    devicefarm([::AWSConfig], "DeleteNetworkProfile", arn=)

# DeleteNetworkProfile Operation

Deletes a network profile.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the network profile you want to delete.




# Returns

`DeleteNetworkProfileResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteNetworkProfile)
"""
@inline delete_network_profile(aws::AWSConfig=default_aws_config(); args...) = delete_network_profile(aws, args)

@inline delete_network_profile(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "DeleteNetworkProfile", args)

@inline delete_network_profile(args) = delete_network_profile(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.delete_project
    delete_project([::AWSConfig], arguments::Dict)
    delete_project([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "DeleteProject", arguments::Dict)
    devicefarm([::AWSConfig], "DeleteProject", arn=)

# DeleteProject Operation

Deletes an AWS Device Farm project, given the project ARN.

**Note** Deleting this resource does not stop an in-progress run.

# Arguments

## `arn = ::String` -- *Required*
Represents the Amazon Resource Name (ARN) of the Device Farm project you wish to delete.




# Returns

`DeleteProjectResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To delete a project

The following example deletes a specific project.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteProject)
"""
@inline delete_project(aws::AWSConfig=default_aws_config(); args...) = delete_project(aws, args)

@inline delete_project(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "DeleteProject", args)

@inline delete_project(args) = delete_project(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.delete_remote_access_session
    delete_remote_access_session([::AWSConfig], arguments::Dict)
    delete_remote_access_session([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "DeleteRemoteAccessSession", arguments::Dict)
    devicefarm([::AWSConfig], "DeleteRemoteAccessSession", arn=)

# DeleteRemoteAccessSession Operation

Deletes a completed remote access session and its results.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the sesssion for which you want to delete remote access.




# Returns

`DeleteRemoteAccessSessionResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To delete a specific remote access session

The following example deletes a specific remote access session.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:session:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteRemoteAccessSession)
"""
@inline delete_remote_access_session(aws::AWSConfig=default_aws_config(); args...) = delete_remote_access_session(aws, args)

@inline delete_remote_access_session(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "DeleteRemoteAccessSession", args)

@inline delete_remote_access_session(args) = delete_remote_access_session(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.delete_run
    delete_run([::AWSConfig], arguments::Dict)
    delete_run([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "DeleteRun", arguments::Dict)
    devicefarm([::AWSConfig], "DeleteRun", arn=)

# DeleteRun Operation

Deletes the run, given the run ARN.

**Note** Deleting this resource does not stop an in-progress run.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) for the run you wish to delete.




# Returns

`DeleteRunResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To delete a run

The following example deletes a specific test run.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:run:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteRun)
"""
@inline delete_run(aws::AWSConfig=default_aws_config(); args...) = delete_run(aws, args)

@inline delete_run(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "DeleteRun", args)

@inline delete_run(args) = delete_run(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.delete_upload
    delete_upload([::AWSConfig], arguments::Dict)
    delete_upload([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "DeleteUpload", arguments::Dict)
    devicefarm([::AWSConfig], "DeleteUpload", arn=)

# DeleteUpload Operation

Deletes an upload given the upload ARN.

# Arguments

## `arn = ::String` -- *Required*
Represents the Amazon Resource Name (ARN) of the Device Farm upload you wish to delete.




# Returns

`DeleteUploadResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To delete a specific upload

The following example deletes a specific upload.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:upload:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteUpload)
"""
@inline delete_upload(aws::AWSConfig=default_aws_config(); args...) = delete_upload(aws, args)

@inline delete_upload(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "DeleteUpload", args)

@inline delete_upload(args) = delete_upload(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.delete_vpceconfiguration
    delete_vpceconfiguration([::AWSConfig], arguments::Dict)
    delete_vpceconfiguration([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "DeleteVPCEConfiguration", arguments::Dict)
    devicefarm([::AWSConfig], "DeleteVPCEConfiguration", arn=)

# DeleteVPCEConfiguration Operation

Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to delete.




# Returns

`DeleteVPCEConfigurationResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `ServiceAccountException` or `InvalidOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteVPCEConfiguration)
"""
@inline delete_vpceconfiguration(aws::AWSConfig=default_aws_config(); args...) = delete_vpceconfiguration(aws, args)

@inline delete_vpceconfiguration(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "DeleteVPCEConfiguration", args)

@inline delete_vpceconfiguration(args) = delete_vpceconfiguration(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_account_settings
    get_account_settings([::AWSConfig], arguments::Dict)
    get_account_settings([::AWSConfig]; )

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetAccountSettings", arguments::Dict)
    devicefarm([::AWSConfig], "GetAccountSettings", )

# GetAccountSettings Operation

Returns the number of unmetered iOS and/or unmetered Android devices that have been purchased by the account.

# Arguments



# Returns

`GetAccountSettingsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about account settings

The following example returns information about your Device Farm account settings.

Input:
```
[

]
```

Output:
```
Dict(
    "accountSettings" => Dict(
        "awsAccountNumber" => "123456789101",
        "unmeteredDevices" => Dict(
            "ANDROID" => 1,
            "IOS" => 2
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetAccountSettings)
"""
@inline get_account_settings(aws::AWSConfig=default_aws_config(); args...) = get_account_settings(aws, args)

@inline get_account_settings(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetAccountSettings", args)

@inline get_account_settings(args) = get_account_settings(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_device
    get_device([::AWSConfig], arguments::Dict)
    get_device([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetDevice", arguments::Dict)
    devicefarm([::AWSConfig], "GetDevice", arn=)

# GetDevice Operation

Gets information about a unique device type.

# Arguments

## `arn = ::String` -- *Required*
The device type's ARN.




# Returns

`GetDeviceResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about a device

The following example returns information about a specific device.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2::device:123EXAMPLE"
]
```

Output:
```
Dict(
    "device" => Dict(
        "name" => "LG G2 (Sprint)",
        "arn" => "arn:aws:devicefarm:us-west-2::device:A0E6E6E1059E45918208DF75B2B7EF6C",
        "cpu" => Dict(
            "architecture" => "armeabi-v7a",
            "clock" => 2265.6,
            "frequency" => "MHz"
        ),
        "formFactor" => "PHONE",
        "heapSize" => 256000000,
        "image" => "75B2B7EF6C12345EXAMPLE",
        "manufacturer" => "LG",
        "memory" => 16000000000,
        "model" => "G2 (Sprint)",
        "os" => "4.2.2",
        "platform" => "ANDROID",
        "resolution" => Dict(
            "height" => 1920,
            "width" => 1080
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetDevice)
"""
@inline get_device(aws::AWSConfig=default_aws_config(); args...) = get_device(aws, args)

@inline get_device(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetDevice", args)

@inline get_device(args) = get_device(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_device_instance
    get_device_instance([::AWSConfig], arguments::Dict)
    get_device_instance([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetDeviceInstance", arguments::Dict)
    devicefarm([::AWSConfig], "GetDeviceInstance", arn=)

# GetDeviceInstance Operation

Returns information about a device instance belonging to a private device fleet.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the instance you're requesting information about.




# Returns

`GetDeviceInstanceResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetDeviceInstance)
"""
@inline get_device_instance(aws::AWSConfig=default_aws_config(); args...) = get_device_instance(aws, args)

@inline get_device_instance(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetDeviceInstance", args)

@inline get_device_instance(args) = get_device_instance(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_device_pool
    get_device_pool([::AWSConfig], arguments::Dict)
    get_device_pool([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetDevicePool", arguments::Dict)
    devicefarm([::AWSConfig], "GetDevicePool", arn=)

# GetDevicePool Operation

Gets information about a device pool.

# Arguments

## `arn = ::String` -- *Required*
The device pool's ARN.




# Returns

`GetDevicePoolResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about a device pool

The following example returns information about a specific device pool, given a project ARN.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(
    "devicePool" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetDevicePool)
"""
@inline get_device_pool(aws::AWSConfig=default_aws_config(); args...) = get_device_pool(aws, args)

@inline get_device_pool(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetDevicePool", args)

@inline get_device_pool(args) = get_device_pool(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_device_pool_compatibility
    get_device_pool_compatibility([::AWSConfig], arguments::Dict)
    get_device_pool_compatibility([::AWSConfig]; devicePoolArn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetDevicePoolCompatibility", arguments::Dict)
    devicefarm([::AWSConfig], "GetDevicePoolCompatibility", devicePoolArn=, <keyword arguments>)

# GetDevicePoolCompatibility Operation

Gets information about compatibility with a device pool.

# Arguments

## `devicePoolArn = ::String` -- *Required*
The device pool's ARN.


## `appArn = ::String`
The ARN of the app that is associated with the specified device pool.


## `testType = "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD" or "REMOTE_ACCESS_REPLAY"`
The test type for the specified device pool.

Allowed values include the following:

*   BUILTIN_FUZZ: The built-in fuzz type.

*   BUILTIN_EXPLORER: For Android, an app explorer that will traverse an Android app, interacting with it and capturing screenshots at the same time.

*   APPIUM_JAVA_JUNIT: The Appium Java JUnit type.

*   APPIUM_JAVA_TESTNG: The Appium Java TestNG type.

*   APPIUM_PYTHON: The Appium Python type.

*   APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for Web apps.

*   APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for Web apps.

*   APPIUM_WEB_PYTHON: The Appium Python type for Web apps.

*   CALABASH: The Calabash type.

*   INSTRUMENTATION: The Instrumentation type.

*   UIAUTOMATION: The uiautomation type.

*   UIAUTOMATOR: The uiautomator type.

*   XCTEST: The XCode test type.

*   XCTEST_UI: The XCode UI test type.


## `test = [ ... ]`
Information about the uploaded test to be run against the device pool.
```
 test = [
        "type" => <required> "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD" or "REMOTE_ACCESS_REPLAY",
        "testPackageArn" =>  ::String,
        "filter" =>  ::String,
        "parameters" =>  ::Dict{String,String}
    ]
```

## `configuration = [ ... ]`
An object containing information about the settings for a run.
```
 configuration = [
        "extraDataPackageArn" =>  ::String,
        "networkProfileArn" =>  ::String,
        "locale" =>  ::String,
        "location" =>  [
            "latitude" => <required> double,
            "longitude" => <required> double
        ],
        "vpceConfigurationArns" =>  [::String, ...],
        "customerArtifactPaths" =>  [
            "iosPaths" =>  [::String, ...],
            "androidPaths" =>  [::String, ...],
            "deviceHostPaths" =>  [::String, ...]
        ],
        "radios" =>  [
            "wifi" =>  ::Bool,
            "bluetooth" =>  ::Bool,
            "nfc" =>  ::Bool,
            "gps" =>  ::Bool
        ],
        "auxiliaryApps" =>  [::String, ...],
        "billingMethod" =>  "METERED" or "UNMETERED"
    ]
```



# Returns

`GetDevicePoolCompatibilityResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about the compatibility of a device pool

The following example returns information about the compatibility of a specific device pool, given its ARN.

Input:
```
[
    "appArn" => "arn:aws:devicefarm:us-west-2::app:123-456-EXAMPLE-GUID",
    "devicePoolArn" => "arn:aws:devicefarm:us-west-2::devicepool:123-456-EXAMPLE-GUID",
    "testType" => "APPIUM_PYTHON"
]
```

Output:
```
Dict(
    "compatibleDevices" => [

    ],
    "incompatibleDevices" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetDevicePoolCompatibility)
"""
@inline get_device_pool_compatibility(aws::AWSConfig=default_aws_config(); args...) = get_device_pool_compatibility(aws, args)

@inline get_device_pool_compatibility(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetDevicePoolCompatibility", args)

@inline get_device_pool_compatibility(args) = get_device_pool_compatibility(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_instance_profile
    get_instance_profile([::AWSConfig], arguments::Dict)
    get_instance_profile([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetInstanceProfile", arguments::Dict)
    devicefarm([::AWSConfig], "GetInstanceProfile", arn=)

# GetInstanceProfile Operation

Returns information about the specified instance profile.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of your instance profile.




# Returns

`GetInstanceProfileResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetInstanceProfile)
"""
@inline get_instance_profile(aws::AWSConfig=default_aws_config(); args...) = get_instance_profile(aws, args)

@inline get_instance_profile(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetInstanceProfile", args)

@inline get_instance_profile(args) = get_instance_profile(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_job
    get_job([::AWSConfig], arguments::Dict)
    get_job([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetJob", arguments::Dict)
    devicefarm([::AWSConfig], "GetJob", arn=)

# GetJob Operation

Gets information about a job.

# Arguments

## `arn = ::String` -- *Required*
The job's ARN.




# Returns

`GetJobResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about a job

The following example returns information about a specific job.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2::job:123-456-EXAMPLE-GUID"
]
```

Output:
```
Dict(
    "job" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetJob)
"""
@inline get_job(aws::AWSConfig=default_aws_config(); args...) = get_job(aws, args)

@inline get_job(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetJob", args)

@inline get_job(args) = get_job(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_network_profile
    get_network_profile([::AWSConfig], arguments::Dict)
    get_network_profile([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetNetworkProfile", arguments::Dict)
    devicefarm([::AWSConfig], "GetNetworkProfile", arn=)

# GetNetworkProfile Operation

Returns information about a network profile.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the network profile you want to return information about.




# Returns

`GetNetworkProfileResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetNetworkProfile)
"""
@inline get_network_profile(aws::AWSConfig=default_aws_config(); args...) = get_network_profile(aws, args)

@inline get_network_profile(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetNetworkProfile", args)

@inline get_network_profile(args) = get_network_profile(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_offering_status
    get_offering_status([::AWSConfig], arguments::Dict)
    get_offering_status([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetOfferingStatus", arguments::Dict)
    devicefarm([::AWSConfig], "GetOfferingStatus", <keyword arguments>)

# GetOfferingStatus Operation

Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a `NotEligible` error if the user is not permitted to invoke the operation. Please contact [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com) if you believe that you should be able to invoke this operation.

# Arguments

## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`GetOfferingStatusResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `NotEligibleException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get status information about device offerings

The following example returns information about Device Farm offerings available to your account.

Input:
```
[
    "nextToken" => "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE="
]
```

Output:
```
Dict(
    "current" => Dict(
        "D68B3C05-1BA6-4360-BC69-12345EXAMPLE" => Dict(
            "offering" => Dict(
                "type" => "RECURRING",
                "description" => "Android Remote Access Unmetered Device Slot",
                "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE",
                "platform" => "ANDROID"
            ),
            "quantity" => 1
        )
    ),
    "nextPeriod" => Dict(
        "D68B3C05-1BA6-4360-BC69-12345EXAMPLE" => Dict(
            "effectiveOn" => "1472688000",
            "offering" => Dict(
                "type" => "RECURRING",
                "description" => "Android Remote Access Unmetered Device Slot",
                "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE",
                "platform" => "ANDROID"
            ),
            "quantity" => 1
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetOfferingStatus)
"""
@inline get_offering_status(aws::AWSConfig=default_aws_config(); args...) = get_offering_status(aws, args)

@inline get_offering_status(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetOfferingStatus", args)

@inline get_offering_status(args) = get_offering_status(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_project
    get_project([::AWSConfig], arguments::Dict)
    get_project([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetProject", arguments::Dict)
    devicefarm([::AWSConfig], "GetProject", arn=)

# GetProject Operation

Gets information about a project.

# Arguments

## `arn = ::String` -- *Required*
The project's ARN.




# Returns

`GetProjectResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about a project

The following example gets information about a specific project.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:5e01a8c7-c861-4c0a-b1d5-12345EXAMPLE"
]
```

Output:
```
Dict(
    "project" => Dict(
        "name" => "My Project",
        "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:5e01a8c7-c861-4c0a-b1d5-12345EXAMPLE",
        "created" => "1472660939.152"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetProject)
"""
@inline get_project(aws::AWSConfig=default_aws_config(); args...) = get_project(aws, args)

@inline get_project(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetProject", args)

@inline get_project(args) = get_project(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_remote_access_session
    get_remote_access_session([::AWSConfig], arguments::Dict)
    get_remote_access_session([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetRemoteAccessSession", arguments::Dict)
    devicefarm([::AWSConfig], "GetRemoteAccessSession", arn=)

# GetRemoteAccessSession Operation

Returns a link to a currently running remote access session.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the remote access session about which you want to get session information.




# Returns

`GetRemoteAccessSessionResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get a remote access session

The following example gets a specific remote access session.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:session:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(
    "remoteAccessSession" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetRemoteAccessSession)
"""
@inline get_remote_access_session(aws::AWSConfig=default_aws_config(); args...) = get_remote_access_session(aws, args)

@inline get_remote_access_session(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetRemoteAccessSession", args)

@inline get_remote_access_session(args) = get_remote_access_session(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_run
    get_run([::AWSConfig], arguments::Dict)
    get_run([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetRun", arguments::Dict)
    devicefarm([::AWSConfig], "GetRun", arn=)

# GetRun Operation

Gets information about a run.

# Arguments

## `arn = ::String` -- *Required*
The run's ARN.




# Returns

`GetRunResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about a test run

The following example gets information about a specific test run.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:run:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/0fcac17b-6122-44d7-ae5a-12345EXAMPLE"
]
```

Output:
```
Dict(
    "run" => Dict(
        "name" => "My Test Run",
        "type" => "BUILTIN_EXPLORER",
        "arn" => "arn:aws:devicefarm:us-west-2:123456789101:run:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/0fcac17b-6122-44d7-ae5a-12345EXAMPLE",
        "billingMethod" => "METERED",
        "completedJobs" => 0,
        "counters" => Dict(
            "errored" => 0,
            "failed" => 0,
            "passed" => 0,
            "skipped" => 0,
            "stopped" => 0,
            "total" => 0,
            "warned" => 0
        ),
        "created" => "1472667509.852",
        "deviceMinutes" => Dict(
            "metered" => 0.0,
            "total" => 0.0,
            "unmetered" => 0.0
        ),
        "platform" => "ANDROID",
        "result" => "PENDING",
        "status" => "RUNNING",
        "totalJobs" => 3
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetRun)
"""
@inline get_run(aws::AWSConfig=default_aws_config(); args...) = get_run(aws, args)

@inline get_run(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetRun", args)

@inline get_run(args) = get_run(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_suite
    get_suite([::AWSConfig], arguments::Dict)
    get_suite([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetSuite", arguments::Dict)
    devicefarm([::AWSConfig], "GetSuite", arn=)

# GetSuite Operation

Gets information about a suite.

# Arguments

## `arn = ::String` -- *Required*
The suite's ARN.




# Returns

`GetSuiteResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about a test suite

The following example gets information about a specific test suite.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:suite:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(
    "suite" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetSuite)
"""
@inline get_suite(aws::AWSConfig=default_aws_config(); args...) = get_suite(aws, args)

@inline get_suite(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetSuite", args)

@inline get_suite(args) = get_suite(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_test
    get_test([::AWSConfig], arguments::Dict)
    get_test([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetTest", arguments::Dict)
    devicefarm([::AWSConfig], "GetTest", arn=)

# GetTest Operation

Gets information about a test.

# Arguments

## `arn = ::String` -- *Required*
The test's ARN.




# Returns

`GetTestResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about a specific test

The following example gets information about a specific test.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:test:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(
    "test" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetTest)
"""
@inline get_test(aws::AWSConfig=default_aws_config(); args...) = get_test(aws, args)

@inline get_test(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetTest", args)

@inline get_test(args) = get_test(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_upload
    get_upload([::AWSConfig], arguments::Dict)
    get_upload([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetUpload", arguments::Dict)
    devicefarm([::AWSConfig], "GetUpload", arn=)

# GetUpload Operation

Gets information about an upload.

# Arguments

## `arn = ::String` -- *Required*
The upload's ARN.




# Returns

`GetUploadResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about a specific upload

The following example gets information about a specific upload.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:upload:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(
    "upload" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetUpload)
"""
@inline get_upload(aws::AWSConfig=default_aws_config(); args...) = get_upload(aws, args)

@inline get_upload(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetUpload", args)

@inline get_upload(args) = get_upload(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.get_vpceconfiguration
    get_vpceconfiguration([::AWSConfig], arguments::Dict)
    get_vpceconfiguration([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "GetVPCEConfiguration", arguments::Dict)
    devicefarm([::AWSConfig], "GetVPCEConfiguration", arn=)

# GetVPCEConfiguration Operation

Returns information about the configuration settings for your Amazon Virtual Private Cloud (VPC) endpoint.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to describe.




# Returns

`GetVPCEConfigurationResult`

# Exceptions

`ArgumentException`, `NotFoundException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetVPCEConfiguration)
"""
@inline get_vpceconfiguration(aws::AWSConfig=default_aws_config(); args...) = get_vpceconfiguration(aws, args)

@inline get_vpceconfiguration(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "GetVPCEConfiguration", args)

@inline get_vpceconfiguration(args) = get_vpceconfiguration(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.install_to_remote_access_session
    install_to_remote_access_session([::AWSConfig], arguments::Dict)
    install_to_remote_access_session([::AWSConfig]; remoteAccessSessionArn=, appArn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "InstallToRemoteAccessSession", arguments::Dict)
    devicefarm([::AWSConfig], "InstallToRemoteAccessSession", remoteAccessSessionArn=, appArn=)

# InstallToRemoteAccessSession Operation

Installs an application to the device in a remote access session. For Android applications, the file must be in .apk format. For iOS applications, the file must be in .ipa format.

# Arguments

## `remoteAccessSessionArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the remote access session about which you are requesting information.


## `appArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the app about which you are requesting information.




# Returns

`InstallToRemoteAccessSessionResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To install to a remote access session

The following example installs a specific app to a device in a specific remote access session.

Input:
```
[
    "appArn" => "arn:aws:devicefarm:us-west-2:123456789101:app:EXAMPLE-GUID-123-456",
    "remoteAccessSessionArn" => "arn:aws:devicefarm:us-west-2:123456789101:session:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(
    "appUpload" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/InstallToRemoteAccessSession)
"""
@inline install_to_remote_access_session(aws::AWSConfig=default_aws_config(); args...) = install_to_remote_access_session(aws, args)

@inline install_to_remote_access_session(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "InstallToRemoteAccessSession", args)

@inline install_to_remote_access_session(args) = install_to_remote_access_session(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_artifacts
    list_artifacts([::AWSConfig], arguments::Dict)
    list_artifacts([::AWSConfig]; arn=, type=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListArtifacts", arguments::Dict)
    devicefarm([::AWSConfig], "ListArtifacts", arn=, type=, <keyword arguments>)

# ListArtifacts Operation

Gets information about artifacts.

# Arguments

## `arn = ::String` -- *Required*
The Run, Job, Suite, or Test ARN.


## `type = "SCREENSHOT", "FILE" or "LOG"` -- *Required*
The artifacts' type.

Allowed values include:

*   FILE: The artifacts are files.

*   LOG: The artifacts are logs.

*   SCREENSHOT: The artifacts are screenshots.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListArtifactsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To list artifacts for a resource

The following example lists screenshot artifacts for a specific run.

Input:
```
[
    "type" => "SCREENSHOT",
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:run:EXAMPLE-GUID-123-456"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListArtifacts)
"""
@inline list_artifacts(aws::AWSConfig=default_aws_config(); args...) = list_artifacts(aws, args)

@inline list_artifacts(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListArtifacts", args)

@inline list_artifacts(args) = list_artifacts(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_device_instances
    list_device_instances([::AWSConfig], arguments::Dict)
    list_device_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListDeviceInstances", arguments::Dict)
    devicefarm([::AWSConfig], "ListDeviceInstances", <keyword arguments>)

# ListDeviceInstances Operation

Returns information about the private device instances associated with one or more AWS accounts.

# Arguments

## `maxResults = ::Int`
An integer specifying the maximum number of items you want to return in the API response.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListDeviceInstancesResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListDeviceInstances)
"""
@inline list_device_instances(aws::AWSConfig=default_aws_config(); args...) = list_device_instances(aws, args)

@inline list_device_instances(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListDeviceInstances", args)

@inline list_device_instances(args) = list_device_instances(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_device_pools
    list_device_pools([::AWSConfig], arguments::Dict)
    list_device_pools([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListDevicePools", arguments::Dict)
    devicefarm([::AWSConfig], "ListDevicePools", arn=, <keyword arguments>)

# ListDevicePools Operation

Gets information about device pools.

# Arguments

## `arn = ::String` -- *Required*
The project ARN.


## `type = "CURATED" or "PRIVATE"`
The device pools' type.

Allowed values include:

*   CURATED: A device pool that is created and managed by AWS Device Farm.

*   PRIVATE: A device pool that is created and managed by the device pool developer.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListDevicePoolsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about device pools

The following example returns information about the private device pools in a specific project.

Input:
```
[
    "type" => "PRIVATE",
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(
    "devicePools" => [
        Dict(
            "name" => "Top Devices",
            "arn" => "arn:aws:devicefarm:us-west-2::devicepool:082d10e5-d7d7-48a5-ba5c-12345EXAMPLE",
            "description" => "Top devices",
            "rules" => [
                Dict(
                    "value" => "["arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE","arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE","arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE","arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE","arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE","arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE","arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE","arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE","arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE","arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE"]",
                    "attribute" => "ARN",
                    "operator" => "IN"
                )
            ]
        ),
        Dict(
            "name" => "My Android Device Pool",
            "arn" => "arn:aws:devicefarm:us-west-2:123456789101:devicepool:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/bf96e75a-28f6-4e61-b6a7-12345EXAMPLE",
            "description" => "Samsung Galaxy Android devices",
            "rules" => [
                Dict(
                    "value" => "["arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE","arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE","arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE"]",
                    "attribute" => "ARN",
                    "operator" => "IN"
                )
            ]
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListDevicePools)
"""
@inline list_device_pools(aws::AWSConfig=default_aws_config(); args...) = list_device_pools(aws, args)

@inline list_device_pools(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListDevicePools", args)

@inline list_device_pools(args) = list_device_pools(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_devices
    list_devices([::AWSConfig], arguments::Dict)
    list_devices([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListDevices", arguments::Dict)
    devicefarm([::AWSConfig], "ListDevices", <keyword arguments>)

# ListDevices Operation

Gets information about unique device types.

# Arguments

## `arn = ::String`
The Amazon Resource Name (ARN) of the project.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListDevicesResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about devices

The following example returns information about the available devices in a specific project.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListDevices)
"""
@inline list_devices(aws::AWSConfig=default_aws_config(); args...) = list_devices(aws, args)

@inline list_devices(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListDevices", args)

@inline list_devices(args) = list_devices(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_instance_profiles
    list_instance_profiles([::AWSConfig], arguments::Dict)
    list_instance_profiles([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListInstanceProfiles", arguments::Dict)
    devicefarm([::AWSConfig], "ListInstanceProfiles", <keyword arguments>)

# ListInstanceProfiles Operation

Returns information about all the instance profiles in an AWS account.

# Arguments

## `maxResults = ::Int`
An integer specifying the maximum number of items you want to return in the API response.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListInstanceProfilesResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListInstanceProfiles)
"""
@inline list_instance_profiles(aws::AWSConfig=default_aws_config(); args...) = list_instance_profiles(aws, args)

@inline list_instance_profiles(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListInstanceProfiles", args)

@inline list_instance_profiles(args) = list_instance_profiles(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_jobs
    list_jobs([::AWSConfig], arguments::Dict)
    list_jobs([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListJobs", arguments::Dict)
    devicefarm([::AWSConfig], "ListJobs", arn=, <keyword arguments>)

# ListJobs Operation

Gets information about jobs for a given test run.

# Arguments

## `arn = ::String` -- *Required*
The run's Amazon Resource Name (ARN).


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListJobsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about jobs

The following example returns information about jobs in a specific project.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListJobs)
"""
@inline list_jobs(aws::AWSConfig=default_aws_config(); args...) = list_jobs(aws, args)

@inline list_jobs(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListJobs", args)

@inline list_jobs(args) = list_jobs(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_network_profiles
    list_network_profiles([::AWSConfig], arguments::Dict)
    list_network_profiles([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListNetworkProfiles", arguments::Dict)
    devicefarm([::AWSConfig], "ListNetworkProfiles", arn=, <keyword arguments>)

# ListNetworkProfiles Operation

Returns the list of available network profiles.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the project for which you want to list network profiles.


## `type = "CURATED" or "PRIVATE"`
The type of network profile you wish to return information about. Valid values are listed below.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListNetworkProfilesResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListNetworkProfiles)
"""
@inline list_network_profiles(aws::AWSConfig=default_aws_config(); args...) = list_network_profiles(aws, args)

@inline list_network_profiles(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListNetworkProfiles", args)

@inline list_network_profiles(args) = list_network_profiles(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_offering_promotions
    list_offering_promotions([::AWSConfig], arguments::Dict)
    list_offering_promotions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListOfferingPromotions", arguments::Dict)
    devicefarm([::AWSConfig], "ListOfferingPromotions", <keyword arguments>)

# ListOfferingPromotions Operation

Returns a list of offering promotions. Each offering promotion record contains the ID and description of the promotion. The API returns a `NotEligible` error if the caller is not permitted to invoke the operation. Contact [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com) if you believe that you should be able to invoke this operation.

# Arguments

## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListOfferingPromotionsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `NotEligibleException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListOfferingPromotions)
"""
@inline list_offering_promotions(aws::AWSConfig=default_aws_config(); args...) = list_offering_promotions(aws, args)

@inline list_offering_promotions(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListOfferingPromotions", args)

@inline list_offering_promotions(args) = list_offering_promotions(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_offering_transactions
    list_offering_transactions([::AWSConfig], arguments::Dict)
    list_offering_transactions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListOfferingTransactions", arguments::Dict)
    devicefarm([::AWSConfig], "ListOfferingTransactions", <keyword arguments>)

# ListOfferingTransactions Operation

Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a `NotEligible` error if the user is not permitted to invoke the operation. Please contact [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com) if you believe that you should be able to invoke this operation.

# Arguments

## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListOfferingTransactionsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `NotEligibleException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about device offering transactions

The following example returns information about Device Farm offering transactions.

Input:
```
[
    "nextToken" => "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE="
]
```

Output:
```
Dict(
    "offeringTransactions" => [
        Dict(
            "cost" => Dict(
                "amount" => 0,
                "currencyCode" => "USD"
            ),
            "createdOn" => "1470021420",
            "offeringStatus" => Dict(
                "type" => "RENEW",
                "effectiveOn" => "1472688000",
                "offering" => Dict(
                    "type" => "RECURRING",
                    "description" => "Android Remote Access Unmetered Device Slot",
                    "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE",
                    "platform" => "ANDROID"
                ),
                "quantity" => 0
            ),
            "transactionId" => "03728003-d1ea-4851-abd6-12345EXAMPLE"
        ),
        Dict(
            "cost" => Dict(
                "amount" => 250,
                "currencyCode" => "USD"
            ),
            "createdOn" => "1470021420",
            "offeringStatus" => Dict(
                "type" => "PURCHASE",
                "effectiveOn" => "1470021420",
                "offering" => Dict(
                    "type" => "RECURRING",
                    "description" => "Android Remote Access Unmetered Device Slot",
                    "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE",
                    "platform" => "ANDROID"
                ),
                "quantity" => 1
            ),
            "transactionId" => "56820b6e-06bd-473a-8ff8-12345EXAMPLE"
        ),
        Dict(
            "cost" => Dict(
                "amount" => 175,
                "currencyCode" => "USD"
            ),
            "createdOn" => "1465538520",
            "offeringStatus" => Dict(
                "type" => "PURCHASE",
                "effectiveOn" => "1465538520",
                "offering" => Dict(
                    "type" => "RECURRING",
                    "description" => "Android Unmetered Device Slot",
                    "id" => "8980F81C-00D7-469D-8EC6-12345EXAMPLE",
                    "platform" => "ANDROID"
                ),
                "quantity" => 1
            ),
            "transactionId" => "953ae2c6-d760-4a04-9597-12345EXAMPLE"
        ),
        Dict(
            "cost" => Dict(
                "amount" => 8.07,
                "currencyCode" => "USD"
            ),
            "createdOn" => "1459344300",
            "offeringStatus" => Dict(
                "type" => "PURCHASE",
                "effectiveOn" => "1459344300",
                "offering" => Dict(
                    "type" => "RECURRING",
                    "description" => "iOS Unmetered Device Slot",
                    "id" => "A53D4D73-A6F6-4B82-A0B0-12345EXAMPLE",
                    "platform" => "IOS"
                ),
                "quantity" => 1
            ),
            "transactionId" => "2baf9021-ae3e-47f5-ab52-12345EXAMPLE"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListOfferingTransactions)
"""
@inline list_offering_transactions(aws::AWSConfig=default_aws_config(); args...) = list_offering_transactions(aws, args)

@inline list_offering_transactions(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListOfferingTransactions", args)

@inline list_offering_transactions(args) = list_offering_transactions(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_offerings
    list_offerings([::AWSConfig], arguments::Dict)
    list_offerings([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListOfferings", arguments::Dict)
    devicefarm([::AWSConfig], "ListOfferings", <keyword arguments>)

# ListOfferings Operation

Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a `NotEligible` error if the user is not permitted to invoke the operation. Please contact [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com) if you believe that you should be able to invoke this operation.

# Arguments

## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListOfferingsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `NotEligibleException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about device offerings

The following example returns information about available device offerings.

Input:
```
[
    "nextToken" => "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE="
]
```

Output:
```
Dict(
    "offerings" => [
        Dict(
            "type" => "RECURRING",
            "description" => "iOS Unmetered Device Slot",
            "id" => "A53D4D73-A6F6-4B82-A0B0-12345EXAMPLE",
            "platform" => "IOS",
            "recurringCharges" => [
                Dict(
                    "cost" => Dict(
                        "amount" => 250,
                        "currencyCode" => "USD"
                    ),
                    "frequency" => "MONTHLY"
                )
            ]
        ),
        Dict(
            "type" => "RECURRING",
            "description" => "Android Unmetered Device Slot",
            "id" => "8980F81C-00D7-469D-8EC6-12345EXAMPLE",
            "platform" => "ANDROID",
            "recurringCharges" => [
                Dict(
                    "cost" => Dict(
                        "amount" => 250,
                        "currencyCode" => "USD"
                    ),
                    "frequency" => "MONTHLY"
                )
            ]
        ),
        Dict(
            "type" => "RECURRING",
            "description" => "Android Remote Access Unmetered Device Slot",
            "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE",
            "platform" => "ANDROID",
            "recurringCharges" => [
                Dict(
                    "cost" => Dict(
                        "amount" => 250,
                        "currencyCode" => "USD"
                    ),
                    "frequency" => "MONTHLY"
                )
            ]
        ),
        Dict(
            "type" => "RECURRING",
            "description" => "iOS Remote Access Unmetered Device Slot",
            "id" => "552B4DAD-A6C9-45C4-94FB-12345EXAMPLE",
            "platform" => "IOS",
            "recurringCharges" => [
                Dict(
                    "cost" => Dict(
                        "amount" => 250,
                        "currencyCode" => "USD"
                    ),
                    "frequency" => "MONTHLY"
                )
            ]
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListOfferings)
"""
@inline list_offerings(aws::AWSConfig=default_aws_config(); args...) = list_offerings(aws, args)

@inline list_offerings(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListOfferings", args)

@inline list_offerings(args) = list_offerings(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_projects
    list_projects([::AWSConfig], arguments::Dict)
    list_projects([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListProjects", arguments::Dict)
    devicefarm([::AWSConfig], "ListProjects", <keyword arguments>)

# ListProjects Operation

Gets information about projects.

# Arguments

## `arn = ::String`
Optional. If no Amazon Resource Name (ARN) is specified, then AWS Device Farm returns a list of all projects for the AWS account. You can also specify a project ARN.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListProjectsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about a Device Farm project

The following example returns information about the specified project in Device Farm.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:7ad300ed-8183-41a7-bf94-12345EXAMPLE",
    "nextToken" => "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE"
]
```

Output:
```
Dict(
    "projects" => [
        Dict(
            "name" => "My Test Project",
            "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:7ad300ed-8183-41a7-bf94-12345EXAMPLE",
            "created" => "1453163262.105"
        ),
        Dict(
            "name" => "Hello World",
            "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:d6b087d9-56db-4e44-b9ec-12345EXAMPLE",
            "created" => "1470350112.439"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListProjects)
"""
@inline list_projects(aws::AWSConfig=default_aws_config(); args...) = list_projects(aws, args)

@inline list_projects(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListProjects", args)

@inline list_projects(args) = list_projects(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_remote_access_sessions
    list_remote_access_sessions([::AWSConfig], arguments::Dict)
    list_remote_access_sessions([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListRemoteAccessSessions", arguments::Dict)
    devicefarm([::AWSConfig], "ListRemoteAccessSessions", arn=, <keyword arguments>)

# ListRemoteAccessSessions Operation

Returns a list of all currently running remote access sessions.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the remote access session about which you are requesting information.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListRemoteAccessSessionsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about a remote access session

The following example returns information about a specific Device Farm remote access session.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:session:EXAMPLE-GUID-123-456",
    "nextToken" => "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE="
]
```

Output:
```
Dict(
    "remoteAccessSessions" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListRemoteAccessSessions)
"""
@inline list_remote_access_sessions(aws::AWSConfig=default_aws_config(); args...) = list_remote_access_sessions(aws, args)

@inline list_remote_access_sessions(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListRemoteAccessSessions", args)

@inline list_remote_access_sessions(args) = list_remote_access_sessions(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_runs
    list_runs([::AWSConfig], arguments::Dict)
    list_runs([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListRuns", arguments::Dict)
    devicefarm([::AWSConfig], "ListRuns", arn=, <keyword arguments>)

# ListRuns Operation

Gets information about runs, given an AWS Device Farm project ARN.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the project for which you want to list runs.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListRunsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about a test run

The following example returns information about a specific test run.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:run:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/0fcac17b-6122-44d7-ae5a-12345EXAMPLE",
    "nextToken" => "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE"
]
```

Output:
```
Dict(
    "runs" => [
        Dict(
            "name" => "My Test Run",
            "type" => "BUILTIN_EXPLORER",
            "arn" => "arn:aws:devicefarm:us-west-2:123456789101:run:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/0fcac17b-6122-44d7-ae5a-12345EXAMPLE",
            "billingMethod" => "METERED",
            "completedJobs" => 0,
            "counters" => Dict(
                "errored" => 0,
                "failed" => 0,
                "passed" => 0,
                "skipped" => 0,
                "stopped" => 0,
                "total" => 0,
                "warned" => 0
            ),
            "created" => "1472667509.852",
            "deviceMinutes" => Dict(
                "metered" => 0.0,
                "total" => 0.0,
                "unmetered" => 0.0
            ),
            "platform" => "ANDROID",
            "result" => "PENDING",
            "status" => "RUNNING",
            "totalJobs" => 3
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListRuns)
"""
@inline list_runs(aws::AWSConfig=default_aws_config(); args...) = list_runs(aws, args)

@inline list_runs(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListRuns", args)

@inline list_runs(args) = list_runs(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_samples
    list_samples([::AWSConfig], arguments::Dict)
    list_samples([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListSamples", arguments::Dict)
    devicefarm([::AWSConfig], "ListSamples", arn=, <keyword arguments>)

# ListSamples Operation

Gets information about samples, given an AWS Device Farm project ARN

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the project for which you want to list samples.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListSamplesResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about samples

The following example returns information about samples, given a specific Device Farm project.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    "nextToken" => "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE"
]
```

Output:
```
Dict(
    "samples" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListSamples)
"""
@inline list_samples(aws::AWSConfig=default_aws_config(); args...) = list_samples(aws, args)

@inline list_samples(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListSamples", args)

@inline list_samples(args) = list_samples(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_suites
    list_suites([::AWSConfig], arguments::Dict)
    list_suites([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListSuites", arguments::Dict)
    devicefarm([::AWSConfig], "ListSuites", arn=, <keyword arguments>)

# ListSuites Operation

Gets information about test suites for a given job.

# Arguments

## `arn = ::String` -- *Required*
The job's Amazon Resource Name (ARN).


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListSuitesResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about suites

The following example returns information about suites, given a specific Device Farm project.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    "nextToken" => "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE"
]
```

Output:
```
Dict(
    "suites" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListSuites)
"""
@inline list_suites(aws::AWSConfig=default_aws_config(); args...) = list_suites(aws, args)

@inline list_suites(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListSuites", args)

@inline list_suites(args) = list_suites(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_tests
    list_tests([::AWSConfig], arguments::Dict)
    list_tests([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListTests", arguments::Dict)
    devicefarm([::AWSConfig], "ListTests", arn=, <keyword arguments>)

# ListTests Operation

Gets information about tests in a given test suite.

# Arguments

## `arn = ::String` -- *Required*
The test suite's Amazon Resource Name (ARN).


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListTestsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about tests

The following example returns information about tests, given a specific Device Farm project.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    "nextToken" => "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE"
]
```

Output:
```
Dict(
    "tests" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListTests)
"""
@inline list_tests(aws::AWSConfig=default_aws_config(); args...) = list_tests(aws, args)

@inline list_tests(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListTests", args)

@inline list_tests(args) = list_tests(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_unique_problems
    list_unique_problems([::AWSConfig], arguments::Dict)
    list_unique_problems([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListUniqueProblems", arguments::Dict)
    devicefarm([::AWSConfig], "ListUniqueProblems", arn=, <keyword arguments>)

# ListUniqueProblems Operation

Gets information about unique problems.

# Arguments

## `arn = ::String` -- *Required*
The unique problems' ARNs.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListUniqueProblemsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about unique problems

The following example returns information about unique problems, given a specific Device Farm project.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    "nextToken" => "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE"
]
```

Output:
```
Dict(
    "uniqueProblems" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListUniqueProblems)
"""
@inline list_unique_problems(aws::AWSConfig=default_aws_config(); args...) = list_unique_problems(aws, args)

@inline list_unique_problems(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListUniqueProblems", args)

@inline list_unique_problems(args) = list_unique_problems(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_uploads
    list_uploads([::AWSConfig], arguments::Dict)
    list_uploads([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListUploads", arguments::Dict)
    devicefarm([::AWSConfig], "ListUploads", arn=, <keyword arguments>)

# ListUploads Operation

Gets information about uploads, given an AWS Device Farm project ARN.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the project for which you want to list uploads.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListUploadsResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To get information about uploads

The following example returns information about uploads, given a specific Device Farm project.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    "nextToken" => "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE"
]
```

Output:
```
Dict(
    "uploads" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListUploads)
"""
@inline list_uploads(aws::AWSConfig=default_aws_config(); args...) = list_uploads(aws, args)

@inline list_uploads(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListUploads", args)

@inline list_uploads(args) = list_uploads(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.list_vpceconfigurations
    list_vpceconfigurations([::AWSConfig], arguments::Dict)
    list_vpceconfigurations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ListVPCEConfigurations", arguments::Dict)
    devicefarm([::AWSConfig], "ListVPCEConfigurations", <keyword arguments>)

# ListVPCEConfigurations Operation

Returns information about all Amazon Virtual Private Cloud (VPC) endpoint configurations in the AWS account.

# Arguments

## `maxResults = ::Int`
An integer specifying the maximum number of items you want to return in the API response.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListVPCEConfigurationsResult`

# Exceptions

`ArgumentException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListVPCEConfigurations)
"""
@inline list_vpceconfigurations(aws::AWSConfig=default_aws_config(); args...) = list_vpceconfigurations(aws, args)

@inline list_vpceconfigurations(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ListVPCEConfigurations", args)

@inline list_vpceconfigurations(args) = list_vpceconfigurations(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.purchase_offering
    purchase_offering([::AWSConfig], arguments::Dict)
    purchase_offering([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "PurchaseOffering", arguments::Dict)
    devicefarm([::AWSConfig], "PurchaseOffering", <keyword arguments>)

# PurchaseOffering Operation

Immediately purchases offerings for an AWS account. Offerings renew with the latest total purchased quantity for an offering, unless the renewal was overridden. The API returns a `NotEligible` error if the user is not permitted to invoke the operation. Please contact [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com) if you believe that you should be able to invoke this operation.

# Arguments

## `offeringId = ::String`
The ID of the offering.


## `quantity = ::Int`
The number of device slots you wish to purchase in an offering request.


## `offeringPromotionId = ::String`
The ID of the offering promotion to be applied to the purchase.




# Returns

`PurchaseOfferingResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `NotEligibleException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To purchase a device slot offering

The following example purchases a specific device slot offering.

Input:
```
[
    "offeringId" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE",
    "quantity" => 1
]
```

Output:
```
Dict(
    "offeringTransaction" => Dict(
        "cost" => Dict(
            "amount" => 8.07,
            "currencyCode" => "USD"
        ),
        "createdOn" => "1472648340",
        "offeringStatus" => Dict(
            "type" => "PURCHASE",
            "effectiveOn" => "1472648340",
            "offering" => Dict(
                "type" => "RECURRING",
                "description" => "Android Remote Access Unmetered Device Slot",
                "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE",
                "platform" => "ANDROID"
            ),
            "quantity" => 1
        ),
        "transactionId" => "d30614ed-1b03-404c-9893-12345EXAMPLE"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/PurchaseOffering)
"""
@inline purchase_offering(aws::AWSConfig=default_aws_config(); args...) = purchase_offering(aws, args)

@inline purchase_offering(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "PurchaseOffering", args)

@inline purchase_offering(args) = purchase_offering(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.renew_offering
    renew_offering([::AWSConfig], arguments::Dict)
    renew_offering([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "RenewOffering", arguments::Dict)
    devicefarm([::AWSConfig], "RenewOffering", <keyword arguments>)

# RenewOffering Operation

Explicitly sets the quantity of devices to renew for an offering, starting from the `effectiveDate` of the next period. The API returns a `NotEligible` error if the user is not permitted to invoke the operation. Please contact [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com) if you believe that you should be able to invoke this operation.

# Arguments

## `offeringId = ::String`
The ID of a request to renew an offering.


## `quantity = ::Int`
The quantity requested in an offering renewal.




# Returns

`RenewOfferingResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `NotEligibleException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To renew a device slot offering

The following example renews a specific device slot offering.

Input:
```
[
    "offeringId" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE",
    "quantity" => 1
]
```

Output:
```
Dict(
    "offeringTransaction" => Dict(
        "cost" => Dict(
            "amount" => 250,
            "currencyCode" => "USD"
        ),
        "createdOn" => "1472648880",
        "offeringStatus" => Dict(
            "type" => "RENEW",
            "effectiveOn" => "1472688000",
            "offering" => Dict(
                "type" => "RECURRING",
                "description" => "Android Remote Access Unmetered Device Slot",
                "id" => "D68B3C05-1BA6-4360-BC69-12345EXAMPLE",
                "platform" => "ANDROID"
            ),
            "quantity" => 1
        ),
        "transactionId" => "e90f1405-8c35-4561-be43-12345EXAMPLE"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/RenewOffering)
"""
@inline renew_offering(aws::AWSConfig=default_aws_config(); args...) = renew_offering(aws, args)

@inline renew_offering(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "RenewOffering", args)

@inline renew_offering(args) = renew_offering(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.schedule_run
    schedule_run([::AWSConfig], arguments::Dict)
    schedule_run([::AWSConfig]; projectArn=, devicePoolArn=, test=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "ScheduleRun", arguments::Dict)
    devicefarm([::AWSConfig], "ScheduleRun", projectArn=, devicePoolArn=, test=, <keyword arguments>)

# ScheduleRun Operation

Schedules a run.

# Arguments

## `projectArn = ::String` -- *Required*
The ARN of the project for the run to be scheduled.


## `appArn = ::String`
The ARN of the app to schedule a run.


## `devicePoolArn = ::String` -- *Required*
The ARN of the device pool for the run to be scheduled.


## `name = ::String`
The name for the run to be scheduled.


## `test = [ ... ]` -- *Required*
Information about the test for the run to be scheduled.
```
 test = [
        "type" => <required> "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD" or "REMOTE_ACCESS_REPLAY",
        "testPackageArn" =>  ::String,
        "filter" =>  ::String,
        "parameters" =>  ::Dict{String,String}
    ]
```

## `configuration = [ ... ]`
Information about the settings for the run to be scheduled.
```
 configuration = [
        "extraDataPackageArn" =>  ::String,
        "networkProfileArn" =>  ::String,
        "locale" =>  ::String,
        "location" =>  [
            "latitude" => <required> double,
            "longitude" => <required> double
        ],
        "vpceConfigurationArns" =>  [::String, ...],
        "customerArtifactPaths" =>  [
            "iosPaths" =>  [::String, ...],
            "androidPaths" =>  [::String, ...],
            "deviceHostPaths" =>  [::String, ...]
        ],
        "radios" =>  [
            "wifi" =>  ::Bool,
            "bluetooth" =>  ::Bool,
            "nfc" =>  ::Bool,
            "gps" =>  ::Bool
        ],
        "auxiliaryApps" =>  [::String, ...],
        "billingMethod" =>  "METERED" or "UNMETERED"
    ]
```

## `executionConfiguration = [ ... ]`
Specifies configuration information about a test run, such as the execution timeout (in minutes).
```
 executionConfiguration = [
        "jobTimeoutMinutes" =>  ::Int,
        "accountsCleanup" =>  ::Bool,
        "appPackagesCleanup" =>  ::Bool,
        "skipAppResign" =>  ::Bool
    ]
```



# Returns

`ScheduleRunResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException`, `IdempotencyException` or `ServiceAccountException`.

# Example: To schedule a test run

The following example schedules a test run named MyRun.

Input:
```
[
    "name" => "MyRun",
    "devicePoolArn" => "arn:aws:devicefarm:us-west-2:123456789101:pool:EXAMPLE-GUID-123-456",
    "projectArn" => "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    "test" => [
        "type" => "APPIUM_JAVA_JUNIT",
        "testPackageArn" => "arn:aws:devicefarm:us-west-2:123456789101:test:EXAMPLE-GUID-123-456"
    ]
]
```

Output:
```
Dict(
    "run" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ScheduleRun)
"""
@inline schedule_run(aws::AWSConfig=default_aws_config(); args...) = schedule_run(aws, args)

@inline schedule_run(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "ScheduleRun", args)

@inline schedule_run(args) = schedule_run(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.stop_remote_access_session
    stop_remote_access_session([::AWSConfig], arguments::Dict)
    stop_remote_access_session([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "StopRemoteAccessSession", arguments::Dict)
    devicefarm([::AWSConfig], "StopRemoteAccessSession", arn=)

# StopRemoteAccessSession Operation

Ends a specified remote access session.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the remote access session you wish to stop.




# Returns

`StopRemoteAccessSessionResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/StopRemoteAccessSession)
"""
@inline stop_remote_access_session(aws::AWSConfig=default_aws_config(); args...) = stop_remote_access_session(aws, args)

@inline stop_remote_access_session(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "StopRemoteAccessSession", args)

@inline stop_remote_access_session(args) = stop_remote_access_session(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.stop_run
    stop_run([::AWSConfig], arguments::Dict)
    stop_run([::AWSConfig]; arn=)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "StopRun", arguments::Dict)
    devicefarm([::AWSConfig], "StopRun", arn=)

# StopRun Operation

Initiates a stop request for the current test run. AWS Device Farm will immediately stop the run on devices where tests have not started executing, and you will not be billed for these devices. On devices where tests have started executing, Setup Suite and Teardown Suite tests will run to completion before stopping execution on those devices. You will be billed for Setup, Teardown, and any tests that were in progress or already completed.

# Arguments

## `arn = ::String` -- *Required*
Represents the Amazon Resource Name (ARN) of the Device Farm run you wish to stop.




# Returns

`StopRunResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To stop a test run

The following example stops a specific test run.

Input:
```
[
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:run:EXAMPLE-GUID-123-456"
]
```

Output:
```
Dict(
    "run" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/StopRun)
"""
@inline stop_run(aws::AWSConfig=default_aws_config(); args...) = stop_run(aws, args)

@inline stop_run(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "StopRun", args)

@inline stop_run(args) = stop_run(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.update_device_instance
    update_device_instance([::AWSConfig], arguments::Dict)
    update_device_instance([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "UpdateDeviceInstance", arguments::Dict)
    devicefarm([::AWSConfig], "UpdateDeviceInstance", arn=, <keyword arguments>)

# UpdateDeviceInstance Operation

Updates information about an existing private device instance.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the device instance.


## `profileArn = ::String`
The Amazon Resource Name (ARN) of the profile that you want to associate with the device instance.


## `labels = [::String, ...]`
An array of strings that you want to associate with the device instance.




# Returns

`UpdateDeviceInstanceResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateDeviceInstance)
"""
@inline update_device_instance(aws::AWSConfig=default_aws_config(); args...) = update_device_instance(aws, args)

@inline update_device_instance(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "UpdateDeviceInstance", args)

@inline update_device_instance(args) = update_device_instance(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.update_device_pool
    update_device_pool([::AWSConfig], arguments::Dict)
    update_device_pool([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "UpdateDevicePool", arguments::Dict)
    devicefarm([::AWSConfig], "UpdateDevicePool", arn=, <keyword arguments>)

# UpdateDevicePool Operation

Modifies the name, description, and rules in a device pool given the attributes and the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a whole (or not at all).

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resourc Name (ARN) of the Device Farm device pool you wish to update.


## `name = ::String`
A string representing the name of the device pool you wish to update.


## `description = ::String`
A description of the device pool you wish to update.


## `rules = [[ ... ], ...]`
Represents the rules you wish to modify for the device pool. Updating rules is optional; however, if you choose to update rules for your request, the update will replace the existing rules.
```
 rules = [[
        "attribute" =>  "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS" or "FLEET_TYPE",
        "operator" =>  "EQUALS", "LESS_THAN", "GREATER_THAN", "IN", "NOT_IN" or "CONTAINS",
        "value" =>  ::String
    ], ...]
```



# Returns

`UpdateDevicePoolResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To update a device pool

The following example updates the specified device pool with a new name and description. It also enables remote access of devices in the device pool.

Input:
```
[
    "name" => "NewName",
    "arn" => "arn:aws:devicefarm:us-west-2::devicepool:082d10e5-d7d7-48a5-ba5c-12345EXAMPLE",
    "description" => "NewDescription",
    "rules" => [
        [
            "value" => "True",
            "attribute" => "REMOTE_ACCESS_ENABLED",
            "operator" => "EQUALS"
        ]
    ]
]
```

Output:
```
Dict(
    "devicePool" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateDevicePool)
"""
@inline update_device_pool(aws::AWSConfig=default_aws_config(); args...) = update_device_pool(aws, args)

@inline update_device_pool(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "UpdateDevicePool", args)

@inline update_device_pool(args) = update_device_pool(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.update_instance_profile
    update_instance_profile([::AWSConfig], arguments::Dict)
    update_instance_profile([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "UpdateInstanceProfile", arguments::Dict)
    devicefarm([::AWSConfig], "UpdateInstanceProfile", arn=, <keyword arguments>)

# UpdateInstanceProfile Operation

Updates information about an existing private device instance profile.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the instance profile.


## `name = ::String`
The updated name for your instance profile.


## `description = ::String`
The updated description for your instance profile.


## `packageCleanup = ::Bool`
The updated choice for whether you want to specify package cleanup. The default value is `false` for private devices.


## `excludeAppPackagesFromCleanup = [::String, ...]`
An array of strings specifying the list of app packages that should not be cleaned up from the device after a test run is over.

The list of packages is only considered if you set `packageCleanup` to `true`.


## `rebootAfterUse = ::Bool`
The updated choice for whether you want to reboot the device after use. The default value is `true`.




# Returns

`UpdateInstanceProfileResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateInstanceProfile)
"""
@inline update_instance_profile(aws::AWSConfig=default_aws_config(); args...) = update_instance_profile(aws, args)

@inline update_instance_profile(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "UpdateInstanceProfile", args)

@inline update_instance_profile(args) = update_instance_profile(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.update_network_profile
    update_network_profile([::AWSConfig], arguments::Dict)
    update_network_profile([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "UpdateNetworkProfile", arguments::Dict)
    devicefarm([::AWSConfig], "UpdateNetworkProfile", arn=, <keyword arguments>)

# UpdateNetworkProfile Operation

Updates the network profile with specific settings.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the project for which you want to update network profile settings.


## `name = ::String`
The name of the network profile about which you are returning information.


## `description = ::String`
The descriptoin of the network profile about which you are returning information.


## `type = "CURATED" or "PRIVATE"`
The type of network profile you wish to return information about. Valid values are listed below.


## `uplinkBandwidthBits = ::Int`
The data throughput rate in bits per second, as an integer from 0 to 104857600.


## `downlinkBandwidthBits = ::Int`
The data throughput rate in bits per second, as an integer from 0 to 104857600.


## `uplinkDelayMs = ::Int`
Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.


## `downlinkDelayMs = ::Int`
Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.


## `uplinkJitterMs = ::Int`
Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.


## `downlinkJitterMs = ::Int`
Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.


## `uplinkLossPercent = ::Int`
Proportion of transmitted packets that fail to arrive from 0 to 100 percent.


## `downlinkLossPercent = ::Int`
Proportion of received packets that fail to arrive from 0 to 100 percent.




# Returns

`UpdateNetworkProfileResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateNetworkProfile)
"""
@inline update_network_profile(aws::AWSConfig=default_aws_config(); args...) = update_network_profile(aws, args)

@inline update_network_profile(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "UpdateNetworkProfile", args)

@inline update_network_profile(args) = update_network_profile(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.update_project
    update_project([::AWSConfig], arguments::Dict)
    update_project([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "UpdateProject", arguments::Dict)
    devicefarm([::AWSConfig], "UpdateProject", arn=, <keyword arguments>)

# UpdateProject Operation

Modifies the specified project name, given the project ARN and a new name.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the project whose name you wish to update.


## `name = ::String`
A string representing the new name of the project that you are updating.


## `defaultJobTimeoutMinutes = ::Int`
The number of minutes a test run in the project will execute before it times out.




# Returns

`UpdateProjectResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `LimitExceededException` or `ServiceAccountException`.

# Example: To update a device pool

The following example updates the specified project with a new name.

Input:
```
[
    "name" => "NewName",
    "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:8f75187d-101e-4625-accc-12345EXAMPLE"
]
```

Output:
```
Dict(
    "project" => Dict(
        "name" => "NewName",
        "arn" => "arn:aws:devicefarm:us-west-2:123456789101:project:8f75187d-101e-4625-accc-12345EXAMPLE",
        "created" => "1448400709.927"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateProject)
"""
@inline update_project(aws::AWSConfig=default_aws_config(); args...) = update_project(aws, args)

@inline update_project(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "UpdateProject", args)

@inline update_project(args) = update_project(default_aws_config(), args)


"""
    using AWSSDK.DeviceFarm.update_vpceconfiguration
    update_vpceconfiguration([::AWSConfig], arguments::Dict)
    update_vpceconfiguration([::AWSConfig]; arn=, <keyword arguments>)

    using AWSCore.Services.devicefarm
    devicefarm([::AWSConfig], "UpdateVPCEConfiguration", arguments::Dict)
    devicefarm([::AWSConfig], "UpdateVPCEConfiguration", arn=, <keyword arguments>)

# UpdateVPCEConfiguration Operation

Updates information about an existing Amazon Virtual Private Cloud (VPC) endpoint configuration.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to update.


## `vpceConfigurationName = ::String`
The friendly name you give to your VPC endpoint configuration, to manage your configurations more easily.


## `vpceServiceName = ::String`
The name of the VPC endpoint service running inside your AWS account that you want Device Farm to test.


## `serviceDnsName = ::String`
The DNS (domain) name used to connect to your private service in your Amazon VPC. The DNS name must not already be in use on the Internet.


## `vpceConfigurationDescription = ::String`
An optional description, providing more details about your VPC endpoint configuration.




# Returns

`UpdateVPCEConfigurationResult`

# Exceptions

`ArgumentException`, `NotFoundException`, `ServiceAccountException` or `InvalidOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateVPCEConfiguration)
"""
@inline update_vpceconfiguration(aws::AWSConfig=default_aws_config(); args...) = update_vpceconfiguration(aws, args)

@inline update_vpceconfiguration(aws::AWSConfig, args) = AWSCore.Services.devicefarm(aws, "UpdateVPCEConfiguration", args)

@inline update_vpceconfiguration(args) = update_vpceconfiguration(default_aws_config(), args)




end # module DeviceFarm


#==============================================================================#
# End of file
#==============================================================================#
