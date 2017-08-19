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

Associate a fleet to a stack.

# Arguments

## `FleetName = ::String` -- *Required*
The name of the fleet to associate.


## `StackName = ::String` -- *Required*
The name of the stack to which the fleet is associated.




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

Creates a directory configuration with the given parameters.

# Arguments

## `DirectoryName = ::String` -- *Required*
The fully qualified name of the directory, such as corp.example.com


## `OrganizationalUnitDistinguishedNames = [::String, ...]` -- *Required*
The list of the distinguished names of organizational units to place computer accounts in.


## `ServiceAccountCredentials = [ ... ]` -- *Required*
The *AccountName* and *AccountPassword* values for the service account, which are used by the streaming instance to connect to the directory.
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

Creates a new fleet.

# Arguments

## `Name = ::String` -- *Required*
A unique identifier for the fleet.


## `ImageName = ::String` -- *Required*
Unique name of the image used by the fleet.


## `InstanceType = ::String` -- *Required*
The instance type of compute resources for the fleet. Fleet instances are launched from this instance type. Available instance types are:

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


## `ComputeCapacity = ["DesiredInstances" => <required> ::Int]` -- *Required*
The parameters for the capacity allocated to the fleet.


## `VpcConfig = [ ... ]`
The VPC configuration for the fleet.
```
 VpcConfig = [
        "SubnetIds" =>  [::String, ...],
        "SecurityGroupIds" =>  [::String, ...]
    ]
```

## `MaxUserDurationInSeconds = ::Int`
The maximum time for which a streaming session can run. The input can be any numeric value in seconds between 600 and 57600.


## `DisconnectTimeoutInSeconds = ::Int`
The time after disconnection when a session is considered to have ended. If a user who got disconnected reconnects within this timeout interval, the user is connected back to their previous session. The input can be any numeric value in seconds between 60 and 57600\.


## `Description = ::String`
The description of the fleet.


## `DisplayName = ::String`
The display name of the fleet.


## `EnableDefaultInternetAccess = ::Bool`
Enables or disables default internet access for the fleet.


## `DomainJoinInfo = [ ... ]`
The *DirectoryName* and *OrganizationalUnitDistinguishedName* values, which are used to join domains for the AppStream 2.0 streaming instances.
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
    using AWSSDK.AppStream.create_stack
    create_stack([::AWSConfig], arguments::Dict)
    create_stack([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "CreateStack", arguments::Dict)
    appstream([::AWSConfig], "CreateStack", Name=, <keyword arguments>)

# CreateStack Operation

Create a new stack.

# Arguments

## `Name = ::String` -- *Required*
The unique identifier for this stack.


## `Description = ::String`
The description displayed to end users on the AppStream 2.0 portal.


## `DisplayName = ::String`
The name displayed to end users on the AppStream 2.0 portal.


## `StorageConnectors = [[ ... ], ...]`
The storage connectors to be enabled for the stack.
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

Creates a URL to start an AppStream 2.0 streaming session for a user. By default, the URL is valid only for 1 minute from the time that it is generated.

# Arguments

## `StackName = ::String` -- *Required*
The stack for which the URL is generated.


## `FleetName = ::String` -- *Required*
The fleet for which the URL is generated.


## `UserId = ::String` -- *Required*
A unique user ID for whom the URL is generated.


## `ApplicationId = ::String`
The ID of the application that must be launched after the session starts.


## `Validity = ::Int`
The duration up to which the URL returned by this action is valid. The input can be any numeric value in seconds between 1 and 604800 seconds.


## `SessionContext = ::String`
The sessionContext of the streaming URL.




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

Deletes the directory configuration with the given parameters.

# Arguments

## `DirectoryName = ::String` -- *Required*
The name of the directory configuration to be deleted.




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

Deletes a fleet.

# Arguments

## `Name = ::String` -- *Required*
The name of the fleet to be deleted.




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
    using AWSSDK.AppStream.delete_stack
    delete_stack([::AWSConfig], arguments::Dict)
    delete_stack([::AWSConfig]; Name=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DeleteStack", arguments::Dict)
    appstream([::AWSConfig], "DeleteStack", Name=)

# DeleteStack Operation

Deletes the stack. After this operation completes, the environment can no longer be activated, and any reservations made for the stack are released.

# Arguments

## `Name = ::String` -- *Required*
The name of the stack to delete.




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

Returns a list describing the specified directory configurations.

# Arguments

## `DirectoryNames = [::String, ...]`
A specific list of directory names.


## `MaxResults = ::Int`
The size of each page of results.


## `NextToken = ::String`
The DescribeDirectoryConfigsResult.NextToken from a previous call to DescribeDirectoryConfigs. If this is the first call, pass null.




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

If fleet names are provided, this operation describes the specified fleets; otherwise, all the fleets in the account are described.

# Arguments

## `Names = [::String, ...]`
The fleet names to describe. Use null to describe all the fleets for the AWS account.


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
    using AWSSDK.AppStream.describe_images
    describe_images([::AWSConfig], arguments::Dict)
    describe_images([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "DescribeImages", arguments::Dict)
    appstream([::AWSConfig], "DescribeImages", <keyword arguments>)

# DescribeImages Operation

Describes the images. If a list of names is not provided, all images in your account are returned. This operation does not return a paginated result.

# Arguments

## `Names = [::String, ...]`
A specific list of images to describe.




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

Describes the streaming sessions for a stack and a fleet. If a user ID is provided, this operation returns streaming sessions for only that user. To retrieve the next set of items, pass this value for the `nextToken` parameter in a subsequent call to this operation. If an authentication type is not provided, the operation defaults to users authenticated using a streaming URL.

# Arguments

## `StackName = ::String` -- *Required*
The name of the stack for which to list sessions.


## `FleetName = ::String` -- *Required*
The name of the fleet for which to list sessions.


## `UserId = ::String`
The user for whom to list sessions. Use null to describe all the sessions for the stack and fleet.


## `NextToken = ::String`
The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.


## `Limit = ::Int`
The size of each page of results. The default value is 20 and the maximum supported value is 50.


## `AuthenticationType = "API", "SAML" or "USERPOOL"`
The authentication method of the user. It can be `API` for a user authenticated using a streaming URL, or `SAML` for a SAML federated user. If an authentication type is not provided, the operation defaults to users authenticated using a streaming URL.




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

If stack names are not provided, this operation describes the specified stacks; otherwise, all stacks in the account are described. To retrieve the next set of items, pass the `nextToken` value in a subsequent call to this operation.

# Arguments

## `Names = [::String, ...]`
The stack names to describe. Use null to describe all the stacks for the AWS account.


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

Disassociates a fleet from a stack.

# Arguments

## `FleetName = ::String` -- *Required*
The name of the fleet to disassociate.


## `StackName = ::String` -- *Required*
The name of the stack with which the fleet is associated.




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

This operation immediately stops a streaming session.

# Arguments

## `SessionId = ::String` -- *Required*
The unique identifier of the streaming session to be stopped.




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

Lists all fleets associated with the stack.

# Arguments

## `StackName = ::String` -- *Required*
The name of the stack whose associated fleets are listed.


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

Lists all stacks to which the specified fleet is associated.

# Arguments

## `FleetName = ::String` -- *Required*
The name of the fleet whose associated stacks are listed.


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

Starts a fleet.

# Arguments

## `Name = ::String` -- *Required*
The name of the fleet to start.




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
    using AWSSDK.AppStream.stop_fleet
    stop_fleet([::AWSConfig], arguments::Dict)
    stop_fleet([::AWSConfig]; Name=)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "StopFleet", arguments::Dict)
    appstream([::AWSConfig], "StopFleet", Name=)

# StopFleet Operation

Stops a fleet.

# Arguments

## `Name = ::String` -- *Required*
The name of the fleet to stop.




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
    using AWSSDK.AppStream.update_directory_config
    update_directory_config([::AWSConfig], arguments::Dict)
    update_directory_config([::AWSConfig]; DirectoryName=, <keyword arguments>)

    using AWSCore.Services.appstream
    appstream([::AWSConfig], "UpdateDirectoryConfig", arguments::Dict)
    appstream([::AWSConfig], "UpdateDirectoryConfig", DirectoryName=, <keyword arguments>)

# UpdateDirectoryConfig Operation

Updates the directory configuration with the given parameters.

# Arguments

## `DirectoryName = ::String` -- *Required*
The name of the existing directory configuration to be updated.


## `OrganizationalUnitDistinguishedNames = [::String, ...]`
The list of the distinguished names of organizational units to place computer accounts in.


## `ServiceAccountCredentials = [ ... ]`
The *AccountName* and *AccountPassword* values for the service account, which are used by the streaming instance to connect to the directory
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

Updates an existing fleet. All the attributes except the fleet name can be updated in the **STOPPED** state. When a fleet is in the **RUNNING** state, only `DisplayName` and `ComputeCapacity` can be updated. A fleet cannot be updated in a status of **STARTING** or **STOPPING**.

# Arguments

## `ImageName = ::String`
The image name from which a fleet is created.


## `Name = ::String` -- *Required*
The name of the fleet.


## `InstanceType = ::String`
The instance type of compute resources for the fleet. Fleet instances are launched from this instance type. Available instance types are:

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


## `ComputeCapacity = ["DesiredInstances" => <required> ::Int]`
The parameters for the capacity allocated to the fleet.


## `VpcConfig = [ ... ]`
The VPC configuration for the fleet.
```
 VpcConfig = [
        "SubnetIds" =>  [::String, ...],
        "SecurityGroupIds" =>  [::String, ...]
    ]
```

## `MaxUserDurationInSeconds = ::Int`
The maximum time for which a streaming session can run. The input can be any numeric value in seconds between 600 and 57600.


## `DisconnectTimeoutInSeconds = ::Int`
The time after disconnection when a session is considered to have ended. If a user who got disconnected reconnects within this timeout interval, the user is connected back to their previous session. The input can be any numeric value in seconds between 60 and 57600.


## `DeleteVpcConfig = ::Bool`
Delete the VPC association for the specified fleet.


## `Description = ::String`
The description displayed to end users on the AppStream 2.0 portal.


## `DisplayName = ::String`
The name displayed to end users on the AppStream 2.0 portal.


## `EnableDefaultInternetAccess = ::Bool`
Enables or disables default internet access for the fleet.


## `DomainJoinInfo = [ ... ]`
The *DirectoryName* and *OrganizationalUnitDistinguishedName* values, which are used to join domains for the AppStream 2.0 streaming instances.
```
 DomainJoinInfo = [
        "DirectoryName" =>  ::String,
        "OrganizationalUnitDistinguishedName" =>  ::String
    ]
```

## `AttributesToDelete = ["VPC_CONFIGURATION", "VPC_CONFIGURATION_SECURITY_GROUP_IDS" or "DOMAIN_JOIN_INFO", ...]`
Fleet attributes to be deleted.




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

Updates the specified fields in the stack with the specified name.

# Arguments

## `DisplayName = ::String`
The name displayed to end users on the AppStream 2.0 portal.


## `Description = ::String`
The description displayed to end users on the AppStream 2.0 portal.


## `Name = ::String` -- *Required*
The name of the stack to update.


## `StorageConnectors = [[ ... ], ...]`
The storage connectors to be enabled for the stack.
```
 StorageConnectors = [[
        "ConnectorType" => <required> "HOMEFOLDERS",
        "ResourceIdentifier" =>  ::String
    ], ...]
```

## `DeleteStorageConnectors = ::Bool`
Remove all the storage connectors currently enabled for the stack.




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
