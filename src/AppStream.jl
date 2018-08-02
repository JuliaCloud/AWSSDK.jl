#==============================================================================#
# AppStream.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/appstream-2016-12-01.normal.json
#==============================================================================#

__precompile__()

module AppStream

using AWSCore


"""
    using AWSSDK.AppStream.associate_fleet
    associate_fleet([::AWSConfig], arguments::Dict)
    associate_fleet([::AWSConfig]; FleetName=, StackName=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "AssociateFleet", arguments::Dict)
    appstream([::AWSConfig], "AssociateFleet", FleetName=, StackName=)

# AssociateFleet Operation

Associates the specified fleet with the specified stack.

# Arguments

## `FleetName = ::String` -- *Required*
The name of the fleet.


## `StackName = ::String` -- *Required*
The name of the stack.




# Returns

`AssociateFleetResult`

# Exceptions

`LimitExceededException`, `InvalidAccountStatusException`, `ResourceNotFoundException`, `ConcurrentModificationException`, `IncompatibleImageException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/AssociateFleet)
"""
@inline associate_fleet(aws::AWSConfig=default_aws_config(); args...) = associate_fleet(aws, args)

@inline associate_fleet(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "AssociateFleet", args)

@inline associate_fleet(args) = associate_fleet(default_aws_config(), args)


"""
    using AWSSDK.AppStream.copy_image
    copy_image([::AWSConfig], arguments::Dict)
    copy_image([::AWSConfig]; SourceImageName=, DestinationImageName=, DestinationRegion=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "CopyImage", arguments::Dict)
    appstream([::AWSConfig], "CopyImage", SourceImageName=, DestinationImageName=, DestinationRegion=, <keyword arguments>)

# CopyImage Operation

Copies the image within the same region or to a new region within the same AWS account. Note that any tags you added to the image will not be copied.

# Arguments

## `SourceImageName = ::String` -- *Required*
The name of the image to copy.


## `DestinationImageName = ::String` -- *Required*
The name that the image will have when it is copied to the destination.


## `DestinationRegion = ::String` -- *Required*
The destination region to which the image will be copied. This parameter is required, even if you are copying an image within the same region.


## `DestinationImageDescription = ::String`
The description that the image will have when it is copied to the destination.




# Returns

`CopyImageResponse`

# Exceptions

`ResourceAlreadyExistsException`, `ResourceNotFoundException`, `ResourceNotAvailableException`, `LimitExceededException`, `InvalidAccountStatusException` or `IncompatibleImageException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CopyImage)
"""
@inline copy_image(aws::AWSConfig=default_aws_config(); args...) = copy_image(aws, args)

@inline copy_image(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "CopyImage", args)

@inline copy_image(args) = copy_image(default_aws_config(), args)


"""
    using AWSSDK.AppStream.create_directory_config
    create_directory_config([::AWSConfig], arguments::Dict)
    create_directory_config([::AWSConfig]; DirectoryName=, OrganizationalUnitDistinguishedNames=, ServiceAccountCredentials=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "CreateDirectoryConfig", arguments::Dict)
    appstream([::AWSConfig], "CreateDirectoryConfig", DirectoryName=, OrganizationalUnitDistinguishedNames=, ServiceAccountCredentials=)

# CreateDirectoryConfig Operation

Creates a Directory Config object in AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.

# Arguments

## `DirectoryName = ::String` -- *Required*
The fully qualified name of the directory (for example, corp.example.com).


## `OrganizationalUnitDistinguishedNames = [::String, ...]` -- *Required*
The distinguished names of the organizational units for computer accounts.


## `ServiceAccountCredentials = [ ... ]` -- *Required*
The credentials for the service account used by the streaming instance to connect to the directory.
```
 ServiceAccountCredentials = [
        "AccountName" => <required> ::String,
        "AccountPassword" => <required> ::String
    ]
```



# Returns

`CreateDirectoryConfigResult`

# Exceptions

`ResourceAlreadyExistsException`, `LimitExceededException` or `InvalidAccountStatusException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateDirectoryConfig)
"""
@inline create_directory_config(aws::AWSConfig=default_aws_config(); args...) = create_directory_config(aws, args)

@inline create_directory_config(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "CreateDirectoryConfig", args)

@inline create_directory_config(args) = create_directory_config(default_aws_config(), args)


"""
    using AWSSDK.AppStream.create_fleet
    create_fleet([::AWSConfig], arguments::Dict)
    create_fleet([::AWSConfig]; Name=, InstanceType=, ComputeCapacity=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "CreateFleet", arguments::Dict)
    appstream([::AWSConfig], "CreateFleet", Name=, InstanceType=, ComputeCapacity=, <keyword arguments>)

# CreateFleet Operation

Creates a fleet. A fleet consists of streaming instances that run a specified image.

# Arguments

## `Name = ::String` -- *Required*
A unique name for the fleet.


## `ImageName = ::String`
The name of the image used to create the fleet.


## `ImageArn = ::String`
The ARN of the public, private, or shared image to use.


## `InstanceType = ::String` -- *Required*
The instance type to use when launching fleet instances. The following instance types are available:

*   stream.standard.medium

*   stream.standard.large

*   stream.compute.large

*   stream.compute.xlarge

*   stream.compute.2xlarge

*   stream.compute.4xlarge

*   stream.compute.8xlarge

*   stream.memory.large

*   stream.memory.xlarge

*   stream.memory.2xlarge

*   stream.memory.4xlarge

*   stream.memory.8xlarge

*   stream.graphics-design.large

*   stream.graphics-design.xlarge

*   stream.graphics-design.2xlarge

*   stream.graphics-design.4xlarge

*   stream.graphics-desktop.2xlarge

*   stream.graphics-pro.4xlarge

*   stream.graphics-pro.8xlarge

*   stream.graphics-pro.16xlarge


## `FleetType = "ALWAYS_ON" or "ON_DEMAND"`
The fleet type.

<dl>

<dt>ALWAYS_ON</dt>

<dd>

Provides users with instant-on access to their apps. You are charged for all running instances in your fleet, even if no users are streaming apps.

</dd>

<dt>ON_DEMAND</dt>

<dd>

Provide users with access to applications after they connect, which takes one to two minutes. You are charged for instance streaming when users are connected and a small hourly fee for instances that are not streaming apps.

</dd>

</dl>


## `ComputeCapacity = ["DesiredInstances" => <required> ::Int]` -- *Required*
The desired capacity for the fleet.


## `VpcConfig = [ ... ]`
The VPC configuration for the fleet.
```
 VpcConfig = [
        "SubnetIds" =>  [::String, ...],
        "SecurityGroupIds" =>  [::String, ...]
    ]
```

## `MaxUserDurationInSeconds = ::Int`
The maximum time that a streaming session can run, in seconds. Specify a value between 600 and 57600.


## `DisconnectTimeoutInSeconds = ::Int`
The time after disconnection when a session is considered to have ended, in seconds. If a user who was disconnected reconnects within this time interval, the user is connected to their previous session. Specify a value between 60 and 57600.


## `Description = ::String`
The description for display.


## `DisplayName = ::String`
The fleet name for display.


## `EnableDefaultInternetAccess = ::Bool`
Enables or disables default internet access for the fleet.


## `DomainJoinInfo = [ ... ]`
The information needed to join a Microsoft Active Directory domain.
```
 DomainJoinInfo = [
        "DirectoryName" =>  ::String,
        "OrganizationalUnitDistinguishedName" =>  ::String
    ]
```



# Returns

`CreateFleetResult`

# Exceptions

`ResourceAlreadyExistsException`, `ResourceNotAvailableException`, `ResourceNotFoundException`, `LimitExceededException`, `InvalidAccountStatusException`, `InvalidRoleException`, `ConcurrentModificationException`, `InvalidParameterCombinationException`, `IncompatibleImageException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateFleet)
"""
@inline create_fleet(aws::AWSConfig=default_aws_config(); args...) = create_fleet(aws, args)

@inline create_fleet(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "CreateFleet", args)

@inline create_fleet(args) = create_fleet(default_aws_config(), args)


"""
    using AWSSDK.AppStream.create_image_builder
    create_image_builder([::AWSConfig], arguments::Dict)
    create_image_builder([::AWSConfig]; Name=, InstanceType=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "CreateImageBuilder", arguments::Dict)
    appstream([::AWSConfig], "CreateImageBuilder", Name=, InstanceType=, <keyword arguments>)

# CreateImageBuilder Operation

Creates an image builder. An image builder is a virtual machine that is used to create an image.

The initial state of the builder is `PENDING`. When it is ready, the state is `RUNNING`.

# Arguments

## `Name = ::String` -- *Required*
A unique name for the image builder.


## `ImageName = ::String`
The name of the image used to create the builder.


## `ImageArn = ::String`
The ARN of the public, private, or shared image to use.


## `InstanceType = ::String` -- *Required*
The instance type to use when launching the image builder.


## `Description = ::String`
The description for display.


## `DisplayName = ::String`
The image builder name for display.


## `VpcConfig = [ ... ]`
The VPC configuration for the image builder. You can specify only one subnet.
```
 VpcConfig = [
        "SubnetIds" =>  [::String, ...],
        "SecurityGroupIds" =>  [::String, ...]
    ]
```

## `EnableDefaultInternetAccess = ::Bool`
Enables or disables default internet access for the image builder.


## `DomainJoinInfo = [ ... ]`
The information needed to join a Microsoft Active Directory domain.
```
 DomainJoinInfo = [
        "DirectoryName" =>  ::String,
        "OrganizationalUnitDistinguishedName" =>  ::String
    ]
```

## `AppstreamAgentVersion = ::String`
The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST].




# Returns

`CreateImageBuilderResult`

# Exceptions

`LimitExceededException`, `InvalidAccountStatusException`, `ResourceAlreadyExistsException`, `ResourceNotAvailableException`, `ResourceNotFoundException`, `InvalidRoleException`, `ConcurrentModificationException`, `InvalidParameterCombinationException`, `IncompatibleImageException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateImageBuilder)
"""
@inline create_image_builder(aws::AWSConfig=default_aws_config(); args...) = create_image_builder(aws, args)

@inline create_image_builder(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "CreateImageBuilder", args)

@inline create_image_builder(args) = create_image_builder(default_aws_config(), args)


"""
    using AWSSDK.AppStream.create_image_builder_streaming_url
    create_image_builder_streaming_url([::AWSConfig], arguments::Dict)
    create_image_builder_streaming_url([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "CreateImageBuilderStreamingURL", arguments::Dict)
    appstream([::AWSConfig], "CreateImageBuilderStreamingURL", Name=, <keyword arguments>)

# CreateImageBuilderStreamingURL Operation

Creates a URL to start an image builder streaming session.

# Arguments

## `Name = ::String` -- *Required*
The name of the image builder.


## `Validity = ::Int`
The time that the streaming URL will be valid, in seconds. Specify a value between 1 and 604800 seconds. The default is 3600 seconds.




# Returns

`CreateImageBuilderStreamingURLResult`

# Exceptions

`OperationNotPermittedException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateImageBuilderStreamingURL)
"""
@inline create_image_builder_streaming_url(aws::AWSConfig=default_aws_config(); args...) = create_image_builder_streaming_url(aws, args)

@inline create_image_builder_streaming_url(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "CreateImageBuilderStreamingURL", args)

@inline create_image_builder_streaming_url(args) = create_image_builder_streaming_url(default_aws_config(), args)


"""
    using AWSSDK.AppStream.create_stack
    create_stack([::AWSConfig], arguments::Dict)
    create_stack([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "CreateStack", arguments::Dict)
    appstream([::AWSConfig], "CreateStack", Name=, <keyword arguments>)

# CreateStack Operation

Creates a stack to start streaming applications to users. A stack consists of an associated fleet, user access policies, and storage configurations.

# Arguments

## `Name = ::String` -- *Required*
The name of the stack.


## `Description = ::String`
The description for display.


## `DisplayName = ::String`
The stack name for display.


## `StorageConnectors = [[ ... ], ...]`
The storage connectors to enable.
```
 StorageConnectors = [[
        "ConnectorType" => <required> "HOMEFOLDERS", "GOOGLE_DRIVE" or "ONE_DRIVE",
        "ResourceIdentifier" =>  ::String,
        "Domains" =>  [::String, ...]
    ], ...]
```

## `RedirectURL = ::String`
The URL that users are redirected to after their streaming session ends.


## `FeedbackURL = ::String`
The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.


## `UserSettings = [[ ... ], ...]`
The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.
```
 UserSettings = [[
        "Action" => <required> "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD" or "PRINTING_TO_LOCAL_DEVICE",
        "Permission" => <required> "ENABLED" or "DISABLED"
    ], ...]
```



# Returns

`CreateStackResult`

# Exceptions

`LimitExceededException`, `InvalidAccountStatusException`, `ResourceAlreadyExistsException`, `ConcurrentModificationException`, `InvalidRoleException`, `ResourceNotFoundException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateStack)
"""
@inline create_stack(aws::AWSConfig=default_aws_config(); args...) = create_stack(aws, args)

@inline create_stack(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "CreateStack", args)

@inline create_stack(args) = create_stack(default_aws_config(), args)


"""
    using AWSSDK.AppStream.create_streaming_url
    create_streaming_url([::AWSConfig], arguments::Dict)
    create_streaming_url([::AWSConfig]; StackName=, FleetName=, UserId=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "CreateStreamingURL", arguments::Dict)
    appstream([::AWSConfig], "CreateStreamingURL", StackName=, FleetName=, UserId=, <keyword arguments>)

# CreateStreamingURL Operation

Creates a temporary URL to start an AppStream 2.0 streaming session for the specified user. A streaming URL enables application streaming to be tested without user setup.

# Arguments

## `StackName = ::String` -- *Required*
The name of the stack.


## `FleetName = ::String` -- *Required*
The name of the fleet.


## `UserId = ::String` -- *Required*
The ID of the user.


## `ApplicationId = ::String`
The name of the application to launch after the session starts. This is the name that you specified as **Name** in the Image Assistant.


## `Validity = ::Int`
The time that the streaming URL will be valid, in seconds. Specify a value between 1 and 604800 seconds. The default is 60 seconds.


## `SessionContext = ::String`
The session context. For more information, see [Session Context](http://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters) in the *Amazon AppStream 2.0 Developer Guide*.




# Returns

`CreateStreamingURLResult`

# Exceptions

`ResourceNotFoundException`, `ResourceNotAvailableException`, `OperationNotPermittedException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateStreamingURL)
"""
@inline create_streaming_url(aws::AWSConfig=default_aws_config(); args...) = create_streaming_url(aws, args)

@inline create_streaming_url(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "CreateStreamingURL", args)

@inline create_streaming_url(args) = create_streaming_url(default_aws_config(), args)


"""
    using AWSSDK.AppStream.delete_directory_config
    delete_directory_config([::AWSConfig], arguments::Dict)
    delete_directory_config([::AWSConfig]; DirectoryName=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DeleteDirectoryConfig", arguments::Dict)
    appstream([::AWSConfig], "DeleteDirectoryConfig", DirectoryName=)

# DeleteDirectoryConfig Operation

Deletes the specified Directory Config object from AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.

# Arguments

## `DirectoryName = ::String` -- *Required*
The name of the directory configuration.




# Returns

`DeleteDirectoryConfigResult`

# Exceptions

`ResourceInUseException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteDirectoryConfig)
"""
@inline delete_directory_config(aws::AWSConfig=default_aws_config(); args...) = delete_directory_config(aws, args)

@inline delete_directory_config(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DeleteDirectoryConfig", args)

@inline delete_directory_config(args) = delete_directory_config(default_aws_config(), args)


"""
    using AWSSDK.AppStream.delete_fleet
    delete_fleet([::AWSConfig], arguments::Dict)
    delete_fleet([::AWSConfig]; Name=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DeleteFleet", arguments::Dict)
    appstream([::AWSConfig], "DeleteFleet", Name=)

# DeleteFleet Operation

Deletes the specified fleet.

# Arguments

## `Name = ::String` -- *Required*
The name of the fleet.




# Returns

`DeleteFleetResult`

# Exceptions

`ResourceInUseException`, `ResourceNotFoundException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteFleet)
"""
@inline delete_fleet(aws::AWSConfig=default_aws_config(); args...) = delete_fleet(aws, args)

@inline delete_fleet(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DeleteFleet", args)

@inline delete_fleet(args) = delete_fleet(default_aws_config(), args)


"""
    using AWSSDK.AppStream.delete_image
    delete_image([::AWSConfig], arguments::Dict)
    delete_image([::AWSConfig]; Name=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DeleteImage", arguments::Dict)
    appstream([::AWSConfig], "DeleteImage", Name=)

# DeleteImage Operation

Deletes the specified image. You cannot delete an image when it is in use. After you delete an image, you cannot provision new capacity using the image.

# Arguments

## `Name = ::String` -- *Required*
The name of the image.




# Returns

`DeleteImageResult`

# Exceptions

`ResourceInUseException`, `ResourceNotFoundException`, `OperationNotPermittedException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImage)
"""
@inline delete_image(aws::AWSConfig=default_aws_config(); args...) = delete_image(aws, args)

@inline delete_image(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DeleteImage", args)

@inline delete_image(args) = delete_image(default_aws_config(), args)


"""
    using AWSSDK.AppStream.delete_image_builder
    delete_image_builder([::AWSConfig], arguments::Dict)
    delete_image_builder([::AWSConfig]; Name=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DeleteImageBuilder", arguments::Dict)
    appstream([::AWSConfig], "DeleteImageBuilder", Name=)

# DeleteImageBuilder Operation

Deletes the specified image builder and releases the capacity.

# Arguments

## `Name = ::String` -- *Required*
The name of the image builder.




# Returns

`DeleteImageBuilderResult`

# Exceptions

`ResourceNotFoundException`, `OperationNotPermittedException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImageBuilder)
"""
@inline delete_image_builder(aws::AWSConfig=default_aws_config(); args...) = delete_image_builder(aws, args)

@inline delete_image_builder(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DeleteImageBuilder", args)

@inline delete_image_builder(args) = delete_image_builder(default_aws_config(), args)


"""
    using AWSSDK.AppStream.delete_image_permissions
    delete_image_permissions([::AWSConfig], arguments::Dict)
    delete_image_permissions([::AWSConfig]; Name=, SharedAccountId=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DeleteImagePermissions", arguments::Dict)
    appstream([::AWSConfig], "DeleteImagePermissions", Name=, SharedAccountId=)

# DeleteImagePermissions Operation

Deletes permissions for the specified private image. After you delete permissions for an image, AWS accounts to which you previously granted these permissions can no longer use the image.

# Arguments

## `Name = ::String` -- *Required*
The name of the private image.


## `SharedAccountId = ::String` -- *Required*
The 12-digit ID of the AWS account for which to delete image permissions.




# Returns

`DeleteImagePermissionsResult`

# Exceptions

`ResourceNotAvailableException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImagePermissions)
"""
@inline delete_image_permissions(aws::AWSConfig=default_aws_config(); args...) = delete_image_permissions(aws, args)

@inline delete_image_permissions(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DeleteImagePermissions", args)

@inline delete_image_permissions(args) = delete_image_permissions(default_aws_config(), args)


"""
    using AWSSDK.AppStream.delete_stack
    delete_stack([::AWSConfig], arguments::Dict)
    delete_stack([::AWSConfig]; Name=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DeleteStack", arguments::Dict)
    appstream([::AWSConfig], "DeleteStack", Name=)

# DeleteStack Operation

Deletes the specified stack. After the stack is deleted, the application streaming environment provided by the stack is no longer available to users. Also, any reservations made for application streaming sessions for the stack are released.

# Arguments

## `Name = ::String` -- *Required*
The name of the stack.




# Returns

`DeleteStackResult`

# Exceptions

`ResourceInUseException`, `ResourceNotFoundException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteStack)
"""
@inline delete_stack(aws::AWSConfig=default_aws_config(); args...) = delete_stack(aws, args)

@inline delete_stack(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DeleteStack", args)

@inline delete_stack(args) = delete_stack(default_aws_config(), args)


"""
    using AWSSDK.AppStream.describe_directory_configs
    describe_directory_configs([::AWSConfig], arguments::Dict)
    describe_directory_configs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DescribeDirectoryConfigs", arguments::Dict)
    appstream([::AWSConfig], "DescribeDirectoryConfigs", <keyword arguments>)

# DescribeDirectoryConfigs Operation

Retrieves a list that describes one or more specified Directory Config objects for AppStream 2.0, if the names for these objects are provided. Otherwise, all Directory Config objects in the account are described. These objects include the information required to join streaming instances to an Active Directory domain.

Although the response syntax in this topic includes the account password, this password is not returned in the actual response.

# Arguments

## `DirectoryNames = [::String, ...]`
The directory names.


## `MaxResults = ::Int`
The maximum size of each page of results.


## `NextToken = ::String`
The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.




# Returns

`DescribeDirectoryConfigsResult`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeDirectoryConfigs)
"""
@inline describe_directory_configs(aws::AWSConfig=default_aws_config(); args...) = describe_directory_configs(aws, args)

@inline describe_directory_configs(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DescribeDirectoryConfigs", args)

@inline describe_directory_configs(args) = describe_directory_configs(default_aws_config(), args)


"""
    using AWSSDK.AppStream.describe_fleets
    describe_fleets([::AWSConfig], arguments::Dict)
    describe_fleets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DescribeFleets", arguments::Dict)
    appstream([::AWSConfig], "DescribeFleets", <keyword arguments>)

# DescribeFleets Operation

Retrieves a list that describes one or more specified fleets, if the fleet names are provided. Otherwise, all fleets in the account are described.

# Arguments

## `Names = [::String, ...]`
The names of the fleets to describe.


## `NextToken = ::String`
The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.




# Returns

`DescribeFleetsResult`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeFleets)
"""
@inline describe_fleets(aws::AWSConfig=default_aws_config(); args...) = describe_fleets(aws, args)

@inline describe_fleets(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DescribeFleets", args)

@inline describe_fleets(args) = describe_fleets(default_aws_config(), args)


"""
    using AWSSDK.AppStream.describe_image_builders
    describe_image_builders([::AWSConfig], arguments::Dict)
    describe_image_builders([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DescribeImageBuilders", arguments::Dict)
    appstream([::AWSConfig], "DescribeImageBuilders", <keyword arguments>)

# DescribeImageBuilders Operation

Retrieves a list that describes one or more specified image builders, if the image builder names are provided. Otherwise, all image builders in the account are described.

# Arguments

## `Names = [::String, ...]`
The names of the image builders to describe.


## `MaxResults = ::Int`
The maximum size of each page of results.


## `NextToken = ::String`
The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.




# Returns

`DescribeImageBuildersResult`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImageBuilders)
"""
@inline describe_image_builders(aws::AWSConfig=default_aws_config(); args...) = describe_image_builders(aws, args)

@inline describe_image_builders(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DescribeImageBuilders", args)

@inline describe_image_builders(args) = describe_image_builders(default_aws_config(), args)


"""
    using AWSSDK.AppStream.describe_image_permissions
    describe_image_permissions([::AWSConfig], arguments::Dict)
    describe_image_permissions([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DescribeImagePermissions", arguments::Dict)
    appstream([::AWSConfig], "DescribeImagePermissions", Name=, <keyword arguments>)

# DescribeImagePermissions Operation

Retrieves a list that describes the permissions for a private image that you own.

# Arguments

## `Name = ::String` -- *Required*
The name of the private image for which to describe permissions. The image must be one that you own.


## `MaxResults = ::Int`
The maximum size of each results page.


## `SharedAwsAccountIds = [::String, ...]`
The 12-digit ID of one or more AWS accounts with which the image is shared.


## `NextToken = ::String`
The pagination token to use to retrieve the next page of results. If this value is empty, only the first page is retrieved.




# Returns

`DescribeImagePermissionsResult`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImagePermissions)
"""
@inline describe_image_permissions(aws::AWSConfig=default_aws_config(); args...) = describe_image_permissions(aws, args)

@inline describe_image_permissions(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DescribeImagePermissions", args)

@inline describe_image_permissions(args) = describe_image_permissions(default_aws_config(), args)


"""
    using AWSSDK.AppStream.describe_images
    describe_images([::AWSConfig], arguments::Dict)
    describe_images([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DescribeImages", arguments::Dict)
    appstream([::AWSConfig], "DescribeImages", <keyword arguments>)

# DescribeImages Operation

Retrieves a list that describes one or more specified images, if the image names are provided. Otherwise, all images in the account are described.

# Arguments

## `Names = [::String, ...]`
The names of the images to describe.


## `Arns = [::String, ...]`
The ARNs of the public, private, and shared images to describe.


## `Type = "PUBLIC", "PRIVATE" or "SHARED"`
The type of image (public, private, or shared) to describe.


## `NextToken = ::String`
The pagination token to use to retrieve the next page of results. If this value is empty, only the first page is retrieved.


## `MaxResults = ::Int`
The maximum size of each page of results.




# Returns

`DescribeImagesResult`

# Exceptions

`InvalidParameterCombinationException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImages)
"""
@inline describe_images(aws::AWSConfig=default_aws_config(); args...) = describe_images(aws, args)

@inline describe_images(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DescribeImages", args)

@inline describe_images(args) = describe_images(default_aws_config(), args)


"""
    using AWSSDK.AppStream.describe_sessions
    describe_sessions([::AWSConfig], arguments::Dict)
    describe_sessions([::AWSConfig]; StackName=, FleetName=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DescribeSessions", arguments::Dict)
    appstream([::AWSConfig], "DescribeSessions", StackName=, FleetName=, <keyword arguments>)

# DescribeSessions Operation

Retrieves a list that describes the streaming sessions for a specified stack and fleet. If a user ID is provided for the stack and fleet, only streaming sessions for that user are described. If an authentication type is not provided, the default is to authenticate users using a streaming URL.

# Arguments

## `StackName = ::String` -- *Required*
The name of the stack. This value is case-sensitive.


## `FleetName = ::String` -- *Required*
The name of the fleet. This value is case-sensitive.


## `UserId = ::String`
The user ID.


## `NextToken = ::String`
The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.


## `Limit = ::Int`
The size of each page of results. The default value is 20 and the maximum value is 50.


## `AuthenticationType = "API", "SAML" or "USERPOOL"`
The authentication method. Specify `API` for a user authenticated using a streaming URL or `SAML` for a SAML federated user. The default is to authenticate users using a streaming URL.




# Returns

`DescribeSessionsResult`

# Exceptions

`InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeSessions)
"""
@inline describe_sessions(aws::AWSConfig=default_aws_config(); args...) = describe_sessions(aws, args)

@inline describe_sessions(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DescribeSessions", args)

@inline describe_sessions(args) = describe_sessions(default_aws_config(), args)


"""
    using AWSSDK.AppStream.describe_stacks
    describe_stacks([::AWSConfig], arguments::Dict)
    describe_stacks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DescribeStacks", arguments::Dict)
    appstream([::AWSConfig], "DescribeStacks", <keyword arguments>)

# DescribeStacks Operation

Retrieves a list that describes one or more specified stacks, if the stack names are provided. Otherwise, all stacks in the account are described.

# Arguments

## `Names = [::String, ...]`
The names of the stacks to describe.


## `NextToken = ::String`
The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.




# Returns

`DescribeStacksResult`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeStacks)
"""
@inline describe_stacks(aws::AWSConfig=default_aws_config(); args...) = describe_stacks(aws, args)

@inline describe_stacks(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DescribeStacks", args)

@inline describe_stacks(args) = describe_stacks(default_aws_config(), args)


"""
    using AWSSDK.AppStream.disassociate_fleet
    disassociate_fleet([::AWSConfig], arguments::Dict)
    disassociate_fleet([::AWSConfig]; FleetName=, StackName=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DisassociateFleet", arguments::Dict)
    appstream([::AWSConfig], "DisassociateFleet", FleetName=, StackName=)

# DisassociateFleet Operation

Disassociates the specified fleet from the specified stack.

# Arguments

## `FleetName = ::String` -- *Required*
The name of the fleet.


## `StackName = ::String` -- *Required*
The name of the stack.




# Returns

`DisassociateFleetResult`

# Exceptions

`ResourceInUseException`, `ResourceNotFoundException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DisassociateFleet)
"""
@inline disassociate_fleet(aws::AWSConfig=default_aws_config(); args...) = disassociate_fleet(aws, args)

@inline disassociate_fleet(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "DisassociateFleet", args)

@inline disassociate_fleet(args) = disassociate_fleet(default_aws_config(), args)


"""
    using AWSSDK.AppStream.expire_session
    expire_session([::AWSConfig], arguments::Dict)
    expire_session([::AWSConfig]; SessionId=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "ExpireSession", arguments::Dict)
    appstream([::AWSConfig], "ExpireSession", SessionId=)

# ExpireSession Operation

Immediately stops the specified streaming session.

# Arguments

## `SessionId = ::String` -- *Required*
The ID of the streaming session.




# Returns

`ExpireSessionResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ExpireSession)
"""
@inline expire_session(aws::AWSConfig=default_aws_config(); args...) = expire_session(aws, args)

@inline expire_session(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "ExpireSession", args)

@inline expire_session(args) = expire_session(default_aws_config(), args)


"""
    using AWSSDK.AppStream.list_associated_fleets
    list_associated_fleets([::AWSConfig], arguments::Dict)
    list_associated_fleets([::AWSConfig]; StackName=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "ListAssociatedFleets", arguments::Dict)
    appstream([::AWSConfig], "ListAssociatedFleets", StackName=, <keyword arguments>)

# ListAssociatedFleets Operation

Retrieves the name of the fleet that is associated with the specified stack.

# Arguments

## `StackName = ::String` -- *Required*
The name of the stack.


## `NextToken = ::String`
The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.




# Returns

`ListAssociatedFleetsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListAssociatedFleets)
"""
@inline list_associated_fleets(aws::AWSConfig=default_aws_config(); args...) = list_associated_fleets(aws, args)

@inline list_associated_fleets(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "ListAssociatedFleets", args)

@inline list_associated_fleets(args) = list_associated_fleets(default_aws_config(), args)


"""
    using AWSSDK.AppStream.list_associated_stacks
    list_associated_stacks([::AWSConfig], arguments::Dict)
    list_associated_stacks([::AWSConfig]; FleetName=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "ListAssociatedStacks", arguments::Dict)
    appstream([::AWSConfig], "ListAssociatedStacks", FleetName=, <keyword arguments>)

# ListAssociatedStacks Operation

Retrieves the name of the stack with which the specified fleet is associated.

# Arguments

## `FleetName = ::String` -- *Required*
The name of the fleet.


## `NextToken = ::String`
The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.




# Returns

`ListAssociatedStacksResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListAssociatedStacks)
"""
@inline list_associated_stacks(aws::AWSConfig=default_aws_config(); args...) = list_associated_stacks(aws, args)

@inline list_associated_stacks(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "ListAssociatedStacks", args)

@inline list_associated_stacks(args) = list_associated_stacks(default_aws_config(), args)


"""
    using AWSSDK.AppStream.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; ResourceArn=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "ListTagsForResource", arguments::Dict)
    appstream([::AWSConfig], "ListTagsForResource", ResourceArn=)

# ListTagsForResource Operation

Retrieves a list of all tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks.

For more information about tags, see [Tagging Your Resources](http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html) in the *Amazon AppStream 2.0 Developer Guide*.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource.




# Returns

`ListTagsForResourceResponse`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "ListTagsForResource", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.AppStream.start_fleet
    start_fleet([::AWSConfig], arguments::Dict)
    start_fleet([::AWSConfig]; Name=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "StartFleet", arguments::Dict)
    appstream([::AWSConfig], "StartFleet", Name=)

# StartFleet Operation

Starts the specified fleet.

# Arguments

## `Name = ::String` -- *Required*
The name of the fleet.




# Returns

`StartFleetResult`

# Exceptions

`ResourceNotFoundException`, `OperationNotPermittedException`, `LimitExceededException`, `InvalidAccountStatusException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StartFleet)
"""
@inline start_fleet(aws::AWSConfig=default_aws_config(); args...) = start_fleet(aws, args)

@inline start_fleet(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "StartFleet", args)

@inline start_fleet(args) = start_fleet(default_aws_config(), args)


"""
    using AWSSDK.AppStream.start_image_builder
    start_image_builder([::AWSConfig], arguments::Dict)
    start_image_builder([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "StartImageBuilder", arguments::Dict)
    appstream([::AWSConfig], "StartImageBuilder", Name=, <keyword arguments>)

# StartImageBuilder Operation

Starts the specified image builder.

# Arguments

## `Name = ::String` -- *Required*
The name of the image builder.


## `AppstreamAgentVersion = ::String`
The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST].




# Returns

`StartImageBuilderResult`

# Exceptions

`ResourceNotAvailableException`, `ResourceNotFoundException`, `ConcurrentModificationException`, `InvalidAccountStatusException` or `IncompatibleImageException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StartImageBuilder)
"""
@inline start_image_builder(aws::AWSConfig=default_aws_config(); args...) = start_image_builder(aws, args)

@inline start_image_builder(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "StartImageBuilder", args)

@inline start_image_builder(args) = start_image_builder(default_aws_config(), args)


"""
    using AWSSDK.AppStream.stop_fleet
    stop_fleet([::AWSConfig], arguments::Dict)
    stop_fleet([::AWSConfig]; Name=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "StopFleet", arguments::Dict)
    appstream([::AWSConfig], "StopFleet", Name=)

# StopFleet Operation

Stops the specified fleet.

# Arguments

## `Name = ::String` -- *Required*
The name of the fleet.




# Returns

`StopFleetResult`

# Exceptions

`ResourceNotFoundException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StopFleet)
"""
@inline stop_fleet(aws::AWSConfig=default_aws_config(); args...) = stop_fleet(aws, args)

@inline stop_fleet(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "StopFleet", args)

@inline stop_fleet(args) = stop_fleet(default_aws_config(), args)


"""
    using AWSSDK.AppStream.stop_image_builder
    stop_image_builder([::AWSConfig], arguments::Dict)
    stop_image_builder([::AWSConfig]; Name=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "StopImageBuilder", arguments::Dict)
    appstream([::AWSConfig], "StopImageBuilder", Name=)

# StopImageBuilder Operation

Stops the specified image builder.

# Arguments

## `Name = ::String` -- *Required*
The name of the image builder.




# Returns

`StopImageBuilderResult`

# Exceptions

`ResourceNotFoundException`, `OperationNotPermittedException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StopImageBuilder)
"""
@inline stop_image_builder(aws::AWSConfig=default_aws_config(); args...) = stop_image_builder(aws, args)

@inline stop_image_builder(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "StopImageBuilder", args)

@inline stop_image_builder(args) = stop_image_builder(default_aws_config(), args)


"""
    using AWSSDK.AppStream.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; ResourceArn=, Tags=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "TagResource", arguments::Dict)
    appstream([::AWSConfig], "TagResource", ResourceArn=, Tags=)

# TagResource Operation

Adds or overwrites one or more tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks.

Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value.

To list the current tags for your resources, use [ListTagsForResource](@ref). To disassociate tags from your resources, use [UntagResource](@ref).

For more information about tags, see [Tagging Your Resources](http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html) in the *Amazon AppStream 2.0 Developer Guide*.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource.


## `Tags = ::Dict{String,String}` -- *Required*
The tags to associate. A tag is a key-value pair (the value is optional). For example, `Environment=Test`, or, if you do not specify a value, `Environment=`.

If you do not specify a value, we set the value to an empty string.




# Returns

`TagResourceResponse`

# Exceptions

`LimitExceededException`, `InvalidAccountStatusException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "TagResource", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.AppStream.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; ResourceArn=, TagKeys=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "UntagResource", arguments::Dict)
    appstream([::AWSConfig], "UntagResource", ResourceArn=, TagKeys=)

# UntagResource Operation

Disassociates one or more specified tags from the specified AppStream 2.0 resource.

To list the current tags for your resources, use [ListTagsForResource](@ref).

For more information about tags, see [Tagging Your Resources](http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html) in the *Amazon AppStream 2.0 Developer Guide*.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource.


## `TagKeys = [::String, ...]` -- *Required*
The tag keys for the tags to disassociate.




# Returns

`UntagResourceResponse`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "UntagResource", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.AppStream.update_directory_config
    update_directory_config([::AWSConfig], arguments::Dict)
    update_directory_config([::AWSConfig]; DirectoryName=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "UpdateDirectoryConfig", arguments::Dict)
    appstream([::AWSConfig], "UpdateDirectoryConfig", DirectoryName=, <keyword arguments>)

# UpdateDirectoryConfig Operation

Updates the specified Directory Config object in AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.

# Arguments

## `DirectoryName = ::String` -- *Required*
The name of the Directory Config object.


## `OrganizationalUnitDistinguishedNames = [::String, ...]`
The distinguished names of the organizational units for computer accounts.


## `ServiceAccountCredentials = [ ... ]`
The credentials for the service account used by the streaming instance to connect to the directory.
```
 ServiceAccountCredentials = [
        "AccountName" => <required> ::String,
        "AccountPassword" => <required> ::String
    ]
```



# Returns

`UpdateDirectoryConfigResult`

# Exceptions

`ResourceInUseException`, `ResourceNotFoundException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateDirectoryConfig)
"""
@inline update_directory_config(aws::AWSConfig=default_aws_config(); args...) = update_directory_config(aws, args)

@inline update_directory_config(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "UpdateDirectoryConfig", args)

@inline update_directory_config(args) = update_directory_config(default_aws_config(), args)


"""
    using AWSSDK.AppStream.update_fleet
    update_fleet([::AWSConfig], arguments::Dict)
    update_fleet([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "UpdateFleet", arguments::Dict)
    appstream([::AWSConfig], "UpdateFleet", <keyword arguments>)

# UpdateFleet Operation

Updates the specified fleet.

If the fleet is in the `STOPPED` state, you can update any attribute except the fleet name. If the fleet is in the `RUNNING` state, you can update the `DisplayName` and `ComputeCapacity` attributes. If the fleet is in the `STARTING` or `STOPPING` state, you can't update it.

# Arguments

## `ImageName = ::String`
The name of the image used to create the fleet.


## `ImageArn = ::String`
The ARN of the public, private, or shared image to use.


## `Name = ::String`
A unique name for the fleet.


## `InstanceType = ::String`
The instance type to use when launching fleet instances. The following instance types are available:

*   stream.standard.medium

*   stream.standard.large

*   stream.compute.large

*   stream.compute.xlarge

*   stream.compute.2xlarge

*   stream.compute.4xlarge

*   stream.compute.8xlarge

*   stream.memory.large

*   stream.memory.xlarge

*   stream.memory.2xlarge

*   stream.memory.4xlarge

*   stream.memory.8xlarge

*   stream.graphics-design.large

*   stream.graphics-design.xlarge

*   stream.graphics-design.2xlarge

*   stream.graphics-design.4xlarge

*   stream.graphics-desktop.2xlarge

*   stream.graphics-pro.4xlarge

*   stream.graphics-pro.8xlarge

*   stream.graphics-pro.16xlarge


## `ComputeCapacity = ["DesiredInstances" => <required> ::Int]`
The desired capacity for the fleet.


## `VpcConfig = [ ... ]`
The VPC configuration for the fleet.
```
 VpcConfig = [
        "SubnetIds" =>  [::String, ...],
        "SecurityGroupIds" =>  [::String, ...]
    ]
```

## `MaxUserDurationInSeconds = ::Int`
The maximum time that a streaming session can run, in seconds. Specify a value between 600 and 57600.


## `DisconnectTimeoutInSeconds = ::Int`
The time after disconnection when a session is considered to have ended, in seconds. If a user who was disconnected reconnects within this time interval, the user is connected to their previous session. Specify a value between 60 and 57600.


## `DeleteVpcConfig = ::Bool`
Deletes the VPC association for the specified fleet.


## `Description = ::String`
The description for display.


## `DisplayName = ::String`
The fleet name for display.


## `EnableDefaultInternetAccess = ::Bool`
Enables or disables default internet access for the fleet.


## `DomainJoinInfo = [ ... ]`
The information needed to join a Microsoft Active Directory domain.
```
 DomainJoinInfo = [
        "DirectoryName" =>  ::String,
        "OrganizationalUnitDistinguishedName" =>  ::String
    ]
```

## `AttributesToDelete = ["VPC_CONFIGURATION", "VPC_CONFIGURATION_SECURITY_GROUP_IDS" or "DOMAIN_JOIN_INFO", ...]`
The fleet attributes to delete.




# Returns

`UpdateFleetResult`

# Exceptions

`ResourceInUseException`, `LimitExceededException`, `InvalidAccountStatusException`, `InvalidRoleException`, `ResourceNotFoundException`, `ResourceNotAvailableException`, `InvalidParameterCombinationException`, `ConcurrentModificationException`, `IncompatibleImageException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateFleet)
"""
@inline update_fleet(aws::AWSConfig=default_aws_config(); args...) = update_fleet(aws, args)

@inline update_fleet(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "UpdateFleet", args)

@inline update_fleet(args) = update_fleet(default_aws_config(), args)


"""
    using AWSSDK.AppStream.update_image_permissions
    update_image_permissions([::AWSConfig], arguments::Dict)
    update_image_permissions([::AWSConfig]; Name=, SharedAccountId=, ImagePermissions=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "UpdateImagePermissions", arguments::Dict)
    appstream([::AWSConfig], "UpdateImagePermissions", Name=, SharedAccountId=, ImagePermissions=)

# UpdateImagePermissions Operation

Adds or updates permissions for the specified private image.

# Arguments

## `Name = ::String` -- *Required*
The name of the private image.


## `SharedAccountId = ::String` -- *Required*
The 12-digit ID of the AWS account for which you want add or update image permissions.


## `ImagePermissions = [ ... ]` -- *Required*
The permissions for the image.
```
 ImagePermissions = [
        "allowFleet" =>  ::Bool,
        "allowImageBuilder" =>  ::Bool
    ]
```



# Returns

`UpdateImagePermissionsResult`

# Exceptions

`ResourceNotFoundException`, `ResourceNotAvailableException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateImagePermissions)
"""
@inline update_image_permissions(aws::AWSConfig=default_aws_config(); args...) = update_image_permissions(aws, args)

@inline update_image_permissions(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "UpdateImagePermissions", args)

@inline update_image_permissions(args) = update_image_permissions(default_aws_config(), args)


"""
    using AWSSDK.AppStream.update_stack
    update_stack([::AWSConfig], arguments::Dict)
    update_stack([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "UpdateStack", arguments::Dict)
    appstream([::AWSConfig], "UpdateStack", Name=, <keyword arguments>)

# UpdateStack Operation

Updates the specified fields for the specified stack.

# Arguments

## `DisplayName = ::String`
The stack name for display.


## `Description = ::String`
The description for display.


## `Name = ::String` -- *Required*
The name of the stack.


## `StorageConnectors = [[ ... ], ...]`
The storage connectors to enable.
```
 StorageConnectors = [[
        "ConnectorType" => <required> "HOMEFOLDERS", "GOOGLE_DRIVE" or "ONE_DRIVE",
        "ResourceIdentifier" =>  ::String,
        "Domains" =>  [::String, ...]
    ], ...]
```

## `DeleteStorageConnectors = ::Bool`
Deletes the storage connectors currently enabled for the stack.


## `RedirectURL = ::String`
The URL that users are redirected to after their streaming session ends.


## `FeedbackURL = ::String`
The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.


## `AttributesToDelete = ["STORAGE_CONNECTORS", "STORAGE_CONNECTOR_HOMEFOLDERS", "STORAGE_CONNECTOR_GOOGLE_DRIVE", "STORAGE_CONNECTOR_ONE_DRIVE", "REDIRECT_URL", "FEEDBACK_URL", "THEME_NAME" or "USER_SETTINGS", ...]`
The stack attributes to delete.


## `UserSettings = [[ ... ], ...]`
The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.
```
 UserSettings = [[
        "Action" => <required> "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD" or "PRINTING_TO_LOCAL_DEVICE",
        "Permission" => <required> "ENABLED" or "DISABLED"
    ], ...]
```



# Returns

`UpdateStackResult`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidRoleException`, `InvalidParameterCombinationException`, `LimitExceededException`, `InvalidAccountStatusException`, `IncompatibleImageException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateStack)
"""
@inline update_stack(aws::AWSConfig=default_aws_config(); args...) = update_stack(aws, args)

@inline update_stack(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "UpdateStack", args)

@inline update_stack(args) = update_stack(default_aws_config(), args)




end # module AppStream


#==============================================================================#
# End of file
#==============================================================================#
