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

`LimitExceededException`, `ResourceNotFoundException`, `ConcurrentModificationException`, `IncompatibleImageException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/AssociateFleet)
"""

@inline associate_fleet(aws::AWSConfig=default_aws_config(); args...) = associate_fleet(aws, args)

@inline associate_fleet(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "AssociateFleet", args)

@inline associate_fleet(args) = associate_fleet(default_aws_config(), args)


"""
    using AWSSDK.AppStream.create_directory_config
    create_directory_config([::AWSConfig], arguments::Dict)
    create_directory_config([::AWSConfig]; DirectoryName=, OrganizationalUnitDistinguishedNames=, ServiceAccountCredentials=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "CreateDirectoryConfig", arguments::Dict)
    appstream([::AWSConfig], "CreateDirectoryConfig", DirectoryName=, OrganizationalUnitDistinguishedNames=, ServiceAccountCredentials=)

# CreateDirectoryConfig Operation

Creates a directory configuration.

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

`ResourceAlreadyExistsException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateDirectoryConfig)
"""

@inline create_directory_config(aws::AWSConfig=default_aws_config(); args...) = create_directory_config(aws, args)

@inline create_directory_config(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "CreateDirectoryConfig", args)

@inline create_directory_config(args) = create_directory_config(default_aws_config(), args)


"""
    using AWSSDK.AppStream.create_fleet
    create_fleet([::AWSConfig], arguments::Dict)
    create_fleet([::AWSConfig]; Name=, ImageName=, InstanceType=, ComputeCapacity=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "CreateFleet", arguments::Dict)
    appstream([::AWSConfig], "CreateFleet", Name=, ImageName=, InstanceType=, ComputeCapacity=, <keyword arguments>)

# CreateFleet Operation

Creates a fleet.

# Arguments

## `Name = ::String` -- *Required*
A unique name for the fleet.


## `ImageName = ::String` -- *Required*
The name of the image used by the fleet.


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
The description displayed to end users.


## `DisplayName = ::String`
The fleet name displayed to end users.


## `EnableDefaultInternetAccess = ::Bool`
Enables or disables default internet access for the fleet.


## `DomainJoinInfo = [ ... ]`
The information needed for streaming instances to join a domain.
```
 DomainJoinInfo = [
        "DirectoryName" =>  ::String,
        "OrganizationalUnitDistinguishedName" =>  ::String
    ]
```



# Returns

`CreateFleetResult`

# Exceptions

`ResourceAlreadyExistsException`, `ResourceNotAvailableException`, `ResourceNotFoundException`, `LimitExceededException`, `InvalidRoleException`, `ConcurrentModificationException`, `InvalidParameterCombinationException` or `IncompatibleImageException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateFleet)
"""

@inline create_fleet(aws::AWSConfig=default_aws_config(); args...) = create_fleet(aws, args)

@inline create_fleet(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "CreateFleet", args)

@inline create_fleet(args) = create_fleet(default_aws_config(), args)


"""
    using AWSSDK.AppStream.create_image_builder
    create_image_builder([::AWSConfig], arguments::Dict)
    create_image_builder([::AWSConfig]; Name=, ImageName=, InstanceType=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "CreateImageBuilder", arguments::Dict)
    appstream([::AWSConfig], "CreateImageBuilder", Name=, ImageName=, InstanceType=, <keyword arguments>)

# CreateImageBuilder Operation



# Arguments

## `Name = ::String` -- *Required*



## `ImageName = ::String` -- *Required*



## `InstanceType = ::String` -- *Required*



## `Description = ::String`



## `DisplayName = ::String`



## `VpcConfig = [ ... ]`

```
 VpcConfig = [
        "SubnetIds" =>  [::String, ...],
        "SecurityGroupIds" =>  [::String, ...]
    ]
```

## `EnableDefaultInternetAccess = ::Bool`



## `DomainJoinInfo = [ ... ]`

```
 DomainJoinInfo = [
        "DirectoryName" =>  ::String,
        "OrganizationalUnitDistinguishedName" =>  ::String
    ]
```



# Returns

`CreateImageBuilderResult`

# Exceptions

`LimitExceededException`, `ResourceAlreadyExistsException`, `ResourceNotAvailableException`, `ResourceNotFoundException`, `InvalidRoleException`, `ConcurrentModificationException`, `InvalidParameterCombinationException` or `IncompatibleImageException`.

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



# Arguments

## `Name = ::String` -- *Required*



## `Validity = ::Int`





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

Creates a stack.

# Arguments

## `Name = ::String` -- *Required*
The name of the stack.


## `Description = ::String`
The description displayed to end users.


## `DisplayName = ::String`
The stack name displayed to end users.


## `StorageConnectors = [[ ... ], ...]`
The storage connectors to enable.
```
 StorageConnectors = [[
        "ConnectorType" => <required> "HOMEFOLDERS",
        "ResourceIdentifier" =>  ::String
    ], ...]
```



# Returns

`CreateStackResult`

# Exceptions

`LimitExceededException`, `ResourceAlreadyExistsException`, `ConcurrentModificationException`, `InvalidRoleException`, `ResourceNotFoundException` or `InvalidParameterCombinationException`.

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

Creates a URL to start a streaming session for the specified user.

By default, the URL is valid only for one minute from the time that it is generated.

# Arguments

## `StackName = ::String` -- *Required*
The name of the stack.


## `FleetName = ::String` -- *Required*
The name of the fleet.


## `UserId = ::String` -- *Required*
The ID of the user.


## `ApplicationId = ::String`
The ID of the application that must be launched after the session starts.


## `Validity = ::Int`
The time that the streaming URL will be valid, in seconds. Specify a value between 1 and 604800 seconds.


## `SessionContext = ::String`
The session context of the streaming URL.




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

Deletes the specified directory configuration.

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



# Arguments

## `Name = ::String` -- *Required*





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



# Arguments

## `Name = ::String` -- *Required*





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
    using AWSSDK.AppStream.delete_stack
    delete_stack([::AWSConfig], arguments::Dict)
    delete_stack([::AWSConfig]; Name=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DeleteStack", arguments::Dict)
    appstream([::AWSConfig], "DeleteStack", Name=)

# DeleteStack Operation

Deletes the specified stack. After this operation completes, the environment can no longer be activated and any reservations made for the stack are released.

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

Describes the specified directory configurations.

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

Describes the specified fleets or all fleets in the account.

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



# Arguments

## `Names = [::String, ...]`



## `MaxResults = ::Int`



## `NextToken = ::String`





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
    using AWSSDK.AppStream.describe_images
    describe_images([::AWSConfig], arguments::Dict)
    describe_images([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DescribeImages", arguments::Dict)
    appstream([::AWSConfig], "DescribeImages", <keyword arguments>)

# DescribeImages Operation

Describes the specified images or all images in the account.

# Arguments

## `Names = [::String, ...]`
The names of the images to describe.




# Returns

`DescribeImagesResult`

# Exceptions

`ResourceNotFoundException`.

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

Describes the streaming sessions for the specified stack and fleet. If a user ID is provided, only the streaming sessions for only that user are returned. If an authentication type is not provided, the default is to authenticate users using a streaming URL.

# Arguments

## `StackName = ::String` -- *Required*
The name of the stack.


## `FleetName = ::String` -- *Required*
The name of the fleet.


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

Describes the specified stacks or all stacks in the account.

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

Stops the specified streaming session.

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

Lists the fleets associated with the specified stack.

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

Lists the stacks associated with the specified fleet.

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

`ResourceNotFoundException`, `OperationNotPermittedException`, `LimitExceededException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StartFleet)
"""

@inline start_fleet(aws::AWSConfig=default_aws_config(); args...) = start_fleet(aws, args)

@inline start_fleet(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "StartFleet", args)

@inline start_fleet(args) = start_fleet(default_aws_config(), args)


"""
    using AWSSDK.AppStream.start_image_builder
    start_image_builder([::AWSConfig], arguments::Dict)
    start_image_builder([::AWSConfig]; Name=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "StartImageBuilder", arguments::Dict)
    appstream([::AWSConfig], "StartImageBuilder", Name=)

# StartImageBuilder Operation



# Arguments

## `Name = ::String` -- *Required*





# Returns

`StartImageBuilderResult`

# Exceptions

`ResourceNotAvailableException`, `ResourceNotFoundException` or `ConcurrentModificationException`.

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



# Arguments

## `Name = ::String` -- *Required*





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
    using AWSSDK.AppStream.update_directory_config
    update_directory_config([::AWSConfig], arguments::Dict)
    update_directory_config([::AWSConfig]; DirectoryName=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "UpdateDirectoryConfig", arguments::Dict)
    appstream([::AWSConfig], "UpdateDirectoryConfig", DirectoryName=, <keyword arguments>)

# UpdateDirectoryConfig Operation

Updates the specified directory configuration.

# Arguments

## `DirectoryName = ::String` -- *Required*
The name of the directory configuration.


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
    update_fleet([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "UpdateFleet", arguments::Dict)
    appstream([::AWSConfig], "UpdateFleet", Name=, <keyword arguments>)

# UpdateFleet Operation

Updates the specified fleet.

If the fleet is in the `STOPPED` state, you can update any attribute except the fleet name. If the fleet is in the `RUNNING` state, you can update the `DisplayName` and `ComputeCapacity` attributes. If the fleet is in the `STARTING` or `STOPPING` state, you can't update it.

# Arguments

## `ImageName = ::String`
The name of the image used by the fleet.


## `Name = ::String` -- *Required*
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
The description displayed to end users.


## `DisplayName = ::String`
The fleet name displayed to end users.


## `EnableDefaultInternetAccess = ::Bool`
Enables or disables default internet access for the fleet.


## `DomainJoinInfo = [ ... ]`
The information needed for streaming instances to join a domain.
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

`ResourceInUseException`, `LimitExceededException`, `InvalidRoleException`, `ResourceNotFoundException`, `ResourceNotAvailableException`, `InvalidParameterCombinationException`, `ConcurrentModificationException`, `IncompatibleImageException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateFleet)
"""

@inline update_fleet(aws::AWSConfig=default_aws_config(); args...) = update_fleet(aws, args)

@inline update_fleet(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "UpdateFleet", args)

@inline update_fleet(args) = update_fleet(default_aws_config(), args)


"""
    using AWSSDK.AppStream.update_stack
    update_stack([::AWSConfig], arguments::Dict)
    update_stack([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "UpdateStack", arguments::Dict)
    appstream([::AWSConfig], "UpdateStack", Name=, <keyword arguments>)

# UpdateStack Operation

Updates the specified stack.

# Arguments

## `DisplayName = ::String`
The stack name displayed to end users.


## `Description = ::String`
The description displayed to end users.


## `Name = ::String` -- *Required*
The name of the stack.


## `StorageConnectors = [[ ... ], ...]`
The storage connectors to enable.
```
 StorageConnectors = [[
        "ConnectorType" => <required> "HOMEFOLDERS",
        "ResourceIdentifier" =>  ::String
    ], ...]
```

## `DeleteStorageConnectors = ::Bool`
Deletes the storage connectors currently enabled for the stack.




# Returns

`UpdateStackResult`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidRoleException`, `InvalidParameterCombinationException`, `LimitExceededException` or `IncompatibleImageException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateStack)
"""

@inline update_stack(aws::AWSConfig=default_aws_config(); args...) = update_stack(aws, args)

@inline update_stack(aws::AWSConfig, args) = AWSCore.Services.appstream(aws, "UpdateStack", args)

@inline update_stack(args) = update_stack(default_aws_config(), args)




end # module AppStream


#==============================================================================#
# End of file
#==============================================================================#
