#==============================================================================#
# WorkSpaces.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/workspaces-2015-04-08.normal.json
#==============================================================================#

__precompile__()

module WorkSpaces

using AWSCore


"""
    using AWSSDK.WorkSpaces.create_tags
    create_tags([::AWSConfig], arguments::Dict)
    create_tags([::AWSConfig]; ResourceId=, Tags=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "CreateTags", arguments::Dict)
    workspaces([::AWSConfig], "CreateTags", ResourceId=, Tags=)

# CreateTags Operation

Creates tags for a WorkSpace.

# Arguments

## `ResourceId = ::String` -- *Required*
The resource ID of the request.


## `Tags = [[ ... ], ...]` -- *Required*
The tags of the request.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateTagsResult`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterValuesException` or `ResourceLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateTags)
"""

@inline create_tags(aws::AWSConfig=default_aws_config(); args...) = create_tags(aws, args)

@inline create_tags(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "CreateTags", args)

@inline create_tags(args) = create_tags(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.create_workspaces
    create_workspaces([::AWSConfig], arguments::Dict)
    create_workspaces([::AWSConfig]; Workspaces=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "CreateWorkspaces", arguments::Dict)
    workspaces([::AWSConfig], "CreateWorkspaces", Workspaces=)

# CreateWorkspaces Operation

Creates one or more WorkSpaces.

**Note**
> This operation is asynchronous and returns before the WorkSpaces are created.

# Arguments

## `Workspaces = [[ ... ], ...]` -- *Required*
An array of structures that specify the WorkSpaces to create.
```
 Workspaces = [[
        "DirectoryId" => <required> ::String,
        "UserName" => <required> ::String,
        "BundleId" => <required> ::String,
        "VolumeEncryptionKey" =>  ::String,
        "UserVolumeEncryptionEnabled" =>  ::Bool,
        "RootVolumeEncryptionEnabled" =>  ::Bool,
        "WorkspaceProperties" =>  [
            "RunningMode" =>  "AUTO_STOP" or "ALWAYS_ON",
            "RunningModeAutoStopTimeoutInMinutes" =>  ::Int
        ],
        "Tags" =>  [[
            "Key" => <required> ::String,
            "Value" =>  ::String
        ], ...]
    ], ...]
```



# Returns

`CreateWorkspacesResult`

# Exceptions

`ResourceLimitExceededException` or `InvalidParameterValuesException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateWorkspaces)
"""

@inline create_workspaces(aws::AWSConfig=default_aws_config(); args...) = create_workspaces(aws, args)

@inline create_workspaces(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "CreateWorkspaces", args)

@inline create_workspaces(args) = create_workspaces(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.delete_tags
    delete_tags([::AWSConfig], arguments::Dict)
    delete_tags([::AWSConfig]; ResourceId=, TagKeys=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "DeleteTags", arguments::Dict)
    workspaces([::AWSConfig], "DeleteTags", ResourceId=, TagKeys=)

# DeleteTags Operation

Deletes tags from a WorkSpace.

# Arguments

## `ResourceId = ::String` -- *Required*
The resource ID of the request.


## `TagKeys = [::String, ...]` -- *Required*
The tag keys of the request.




# Returns

`DeleteTagsResult`

# Exceptions

`ResourceNotFoundException` or `InvalidParameterValuesException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteTags)
"""

@inline delete_tags(aws::AWSConfig=default_aws_config(); args...) = delete_tags(aws, args)

@inline delete_tags(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "DeleteTags", args)

@inline delete_tags(args) = delete_tags(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.describe_tags
    describe_tags([::AWSConfig], arguments::Dict)
    describe_tags([::AWSConfig]; ResourceId=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "DescribeTags", arguments::Dict)
    workspaces([::AWSConfig], "DescribeTags", ResourceId=)

# DescribeTags Operation

Describes tags for a WorkSpace.

# Arguments

## `ResourceId = ::String` -- *Required*
The resource ID of the request.




# Returns

`DescribeTagsResult`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeTags)
"""

@inline describe_tags(aws::AWSConfig=default_aws_config(); args...) = describe_tags(aws, args)

@inline describe_tags(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "DescribeTags", args)

@inline describe_tags(args) = describe_tags(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.describe_workspace_bundles
    describe_workspace_bundles([::AWSConfig], arguments::Dict)
    describe_workspace_bundles([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "DescribeWorkspaceBundles", arguments::Dict)
    workspaces([::AWSConfig], "DescribeWorkspaceBundles", <keyword arguments>)

# DescribeWorkspaceBundles Operation

Obtains information about the WorkSpace bundles that are available to your account in the specified region.

You can filter the results with either the `BundleIds` parameter, or the `Owner` parameter, but not both.

This operation supports pagination with the use of the `NextToken` request and response parameters. If more results are available, the `NextToken` response member contains a token that you pass in the next call to this operation to retrieve the next set of items.

# Arguments

## `BundleIds = [::String, ...]`
An array of strings that contains the identifiers of the bundles to retrieve. This parameter cannot be combined with any other filter parameter.


## `Owner = ::String`
The owner of the bundles to retrieve. This parameter cannot be combined with any other filter parameter.

This contains one of the following values:

*   null- Retrieves the bundles that belong to the account making the call.

*   `AMAZON`- Retrieves the bundles that are provided by AWS.


## `NextToken = ::String`
The `NextToken` value from a previous call to this operation. Pass null if this is the first call.




# Returns

`DescribeWorkspaceBundlesResult`

# Exceptions

`InvalidParameterValuesException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceBundles)
"""

@inline describe_workspace_bundles(aws::AWSConfig=default_aws_config(); args...) = describe_workspace_bundles(aws, args)

@inline describe_workspace_bundles(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "DescribeWorkspaceBundles", args)

@inline describe_workspace_bundles(args) = describe_workspace_bundles(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.describe_workspace_directories
    describe_workspace_directories([::AWSConfig], arguments::Dict)
    describe_workspace_directories([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "DescribeWorkspaceDirectories", arguments::Dict)
    workspaces([::AWSConfig], "DescribeWorkspaceDirectories", <keyword arguments>)

# DescribeWorkspaceDirectories Operation

Retrieves information about the AWS Directory Service directories in the region that are registered with Amazon WorkSpaces and are available to your account.

This operation supports pagination with the use of the `NextToken` request and response parameters. If more results are available, the `NextToken` response member contains a token that you pass in the next call to this operation to retrieve the next set of items.

# Arguments

## `DirectoryIds = [::String, ...]`
An array of strings that contains the directory identifiers to retrieve information for. If this member is null, all directories are retrieved.


## `NextToken = ::String`
The `NextToken` value from a previous call to this operation. Pass null if this is the first call.




# Returns

`DescribeWorkspaceDirectoriesResult`

# Exceptions

`InvalidParameterValuesException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceDirectories)
"""

@inline describe_workspace_directories(aws::AWSConfig=default_aws_config(); args...) = describe_workspace_directories(aws, args)

@inline describe_workspace_directories(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "DescribeWorkspaceDirectories", args)

@inline describe_workspace_directories(args) = describe_workspace_directories(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.describe_workspaces
    describe_workspaces([::AWSConfig], arguments::Dict)
    describe_workspaces([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "DescribeWorkspaces", arguments::Dict)
    workspaces([::AWSConfig], "DescribeWorkspaces", <keyword arguments>)

# DescribeWorkspaces Operation

Obtains information about the specified WorkSpaces.

Only one of the filter parameters, such as `BundleId`, `DirectoryId`, or `WorkspaceIds`, can be specified at a time.

This operation supports pagination with the use of the `NextToken` request and response parameters. If more results are available, the `NextToken` response member contains a token that you pass in the next call to this operation to retrieve the next set of items.

# Arguments

## `WorkspaceIds = [::String, ...]`
An array of strings that contain the identifiers of the WorkSpaces for which to retrieve information. This parameter cannot be combined with any other filter parameter.

Because the [CreateWorkspaces](@ref) operation is asynchronous, the identifier it returns is not immediately available. If you immediately call [DescribeWorkspaces](@ref) with this identifier, no information is returned.


## `DirectoryId = ::String`
Specifies the directory identifier to which to limit the WorkSpaces. Optionally, you can specify a specific directory user with the `UserName` parameter. This parameter cannot be combined with any other filter parameter.


## `UserName = ::String`
Used with the `DirectoryId` parameter to specify the directory user for whom to obtain the WorkSpace.


## `BundleId = ::String`
The identifier of a bundle to obtain the WorkSpaces for. All WorkSpaces that are created from this bundle will be retrieved. This parameter cannot be combined with any other filter parameter.


## `Limit = ::Int`
The maximum number of items to return.


## `NextToken = ::String`
The `NextToken` value from a previous call to this operation. Pass null if this is the first call.




# Returns

`DescribeWorkspacesResult`

# Exceptions

`InvalidParameterValuesException` or `ResourceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaces)
"""

@inline describe_workspaces(aws::AWSConfig=default_aws_config(); args...) = describe_workspaces(aws, args)

@inline describe_workspaces(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "DescribeWorkspaces", args)

@inline describe_workspaces(args) = describe_workspaces(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.describe_workspaces_connection_status
    describe_workspaces_connection_status([::AWSConfig], arguments::Dict)
    describe_workspaces_connection_status([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "DescribeWorkspacesConnectionStatus", arguments::Dict)
    workspaces([::AWSConfig], "DescribeWorkspacesConnectionStatus", <keyword arguments>)

# DescribeWorkspacesConnectionStatus Operation

Describes the connection status of a specified WorkSpace.

# Arguments

## `WorkspaceIds = [::String, ...]`
An array of strings that contain the identifiers of the WorkSpaces.


## `NextToken = ::String`
The next token of the request.




# Returns

`DescribeWorkspacesConnectionStatusResult`

# Exceptions

`InvalidParameterValuesException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesConnectionStatus)
"""

@inline describe_workspaces_connection_status(aws::AWSConfig=default_aws_config(); args...) = describe_workspaces_connection_status(aws, args)

@inline describe_workspaces_connection_status(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "DescribeWorkspacesConnectionStatus", args)

@inline describe_workspaces_connection_status(args) = describe_workspaces_connection_status(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.modify_workspace_properties
    modify_workspace_properties([::AWSConfig], arguments::Dict)
    modify_workspace_properties([::AWSConfig]; WorkspaceId=, WorkspaceProperties=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "ModifyWorkspaceProperties", arguments::Dict)
    workspaces([::AWSConfig], "ModifyWorkspaceProperties", WorkspaceId=, WorkspaceProperties=)

# ModifyWorkspaceProperties Operation

Modifies the WorkSpace properties, including the running mode and AutoStop time.

# Arguments

## `WorkspaceId = ::String` -- *Required*
The ID of the WorkSpace.


## `WorkspaceProperties = [ ... ]` -- *Required*
The WorkSpace properties of the request.
```
 WorkspaceProperties = [
        "RunningMode" =>  "AUTO_STOP" or "ALWAYS_ON",
        "RunningModeAutoStopTimeoutInMinutes" =>  ::Int
    ]
```



# Returns

`ModifyWorkspacePropertiesResult`

# Exceptions

`InvalidParameterValuesException`, `InvalidResourceStateException`, `OperationInProgressException`, `UnsupportedWorkspaceConfigurationException`, `ResourceNotFoundException`, `AccessDeniedException` or `ResourceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceProperties)
"""

@inline modify_workspace_properties(aws::AWSConfig=default_aws_config(); args...) = modify_workspace_properties(aws, args)

@inline modify_workspace_properties(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "ModifyWorkspaceProperties", args)

@inline modify_workspace_properties(args) = modify_workspace_properties(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.reboot_workspaces
    reboot_workspaces([::AWSConfig], arguments::Dict)
    reboot_workspaces([::AWSConfig]; RebootWorkspaceRequests=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "RebootWorkspaces", arguments::Dict)
    workspaces([::AWSConfig], "RebootWorkspaces", RebootWorkspaceRequests=)

# RebootWorkspaces Operation

Reboots the specified WorkSpaces.

To be able to reboot a WorkSpace, the WorkSpace must have a **State** of `AVAILABLE`, `IMPAIRED`, or `INOPERABLE`.

**Note**
> This operation is asynchronous and returns before the WorkSpaces have rebooted.

# Arguments

## `RebootWorkspaceRequests = [["WorkspaceId" => <required> ::String], ...]` -- *Required*
An array of structures that specify the WorkSpaces to reboot.




# Returns

`RebootWorkspacesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebootWorkspaces)
"""

@inline reboot_workspaces(aws::AWSConfig=default_aws_config(); args...) = reboot_workspaces(aws, args)

@inline reboot_workspaces(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "RebootWorkspaces", args)

@inline reboot_workspaces(args) = reboot_workspaces(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.rebuild_workspaces
    rebuild_workspaces([::AWSConfig], arguments::Dict)
    rebuild_workspaces([::AWSConfig]; RebuildWorkspaceRequests=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "RebuildWorkspaces", arguments::Dict)
    workspaces([::AWSConfig], "RebuildWorkspaces", RebuildWorkspaceRequests=)

# RebuildWorkspaces Operation

Rebuilds the specified WorkSpaces.

Rebuilding a WorkSpace is a potentially destructive action that can result in the loss of data. Rebuilding a WorkSpace causes the following to occur:

*   The system is restored to the image of the bundle that the WorkSpace is created from. Any applications that have been installed, or system settings that have been made since the WorkSpace was created will be lost.

*   The data drive (D drive) is re-created from the last automatic snapshot taken of the data drive. The current contents of the data drive are overwritten. Automatic snapshots of the data drive are taken every 12 hours, so the snapshot can be as much as 12 hours old.

To be able to rebuild a WorkSpace, the WorkSpace must have a **State** of `AVAILABLE` or `ERROR`.

**Note**
> This operation is asynchronous and returns before the WorkSpaces have been completely rebuilt.

# Arguments

## `RebuildWorkspaceRequests = [["WorkspaceId" => <required> ::String], ...]` -- *Required*
An array of structures that specify the WorkSpaces to rebuild.




# Returns

`RebuildWorkspacesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildWorkspaces)
"""

@inline rebuild_workspaces(aws::AWSConfig=default_aws_config(); args...) = rebuild_workspaces(aws, args)

@inline rebuild_workspaces(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "RebuildWorkspaces", args)

@inline rebuild_workspaces(args) = rebuild_workspaces(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.start_workspaces
    start_workspaces([::AWSConfig], arguments::Dict)
    start_workspaces([::AWSConfig]; StartWorkspaceRequests=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "StartWorkspaces", arguments::Dict)
    workspaces([::AWSConfig], "StartWorkspaces", StartWorkspaceRequests=)

# StartWorkspaces Operation

Starts the specified WorkSpaces. The WorkSpaces must have a running mode of AutoStop and a state of STOPPED.

# Arguments

## `StartWorkspaceRequests = [["WorkspaceId" =>  ::String], ...]` -- *Required*
The requests.




# Returns

`StartWorkspacesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StartWorkspaces)
"""

@inline start_workspaces(aws::AWSConfig=default_aws_config(); args...) = start_workspaces(aws, args)

@inline start_workspaces(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "StartWorkspaces", args)

@inline start_workspaces(args) = start_workspaces(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.stop_workspaces
    stop_workspaces([::AWSConfig], arguments::Dict)
    stop_workspaces([::AWSConfig]; StopWorkspaceRequests=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "StopWorkspaces", arguments::Dict)
    workspaces([::AWSConfig], "StopWorkspaces", StopWorkspaceRequests=)

# StopWorkspaces Operation

Stops the specified WorkSpaces. The WorkSpaces must have a running mode of AutoStop and a state of AVAILABLE, IMPAIRED, UNHEALTHY, or ERROR.

# Arguments

## `StopWorkspaceRequests = [["WorkspaceId" =>  ::String], ...]` -- *Required*
The requests.




# Returns

`StopWorkspacesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StopWorkspaces)
"""

@inline stop_workspaces(aws::AWSConfig=default_aws_config(); args...) = stop_workspaces(aws, args)

@inline stop_workspaces(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "StopWorkspaces", args)

@inline stop_workspaces(args) = stop_workspaces(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.terminate_workspaces
    terminate_workspaces([::AWSConfig], arguments::Dict)
    terminate_workspaces([::AWSConfig]; TerminateWorkspaceRequests=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "TerminateWorkspaces", arguments::Dict)
    workspaces([::AWSConfig], "TerminateWorkspaces", TerminateWorkspaceRequests=)

# TerminateWorkspaces Operation

Terminates the specified WorkSpaces.

Terminating a WorkSpace is a permanent action and cannot be undone. The user's data is not maintained and will be destroyed. If you need to archive any user data, contact Amazon Web Services before terminating the WorkSpace.

You can terminate a WorkSpace that is in any state except `SUSPENDED`.

**Note**
> This operation is asynchronous and returns before the WorkSpaces have been completely terminated.

# Arguments

## `TerminateWorkspaceRequests = [["WorkspaceId" => <required> ::String], ...]` -- *Required*
An array of structures that specify the WorkSpaces to terminate.




# Returns

`TerminateWorkspacesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateWorkspaces)
"""

@inline terminate_workspaces(aws::AWSConfig=default_aws_config(); args...) = terminate_workspaces(aws, args)

@inline terminate_workspaces(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "TerminateWorkspaces", args)

@inline terminate_workspaces(args) = terminate_workspaces(default_aws_config(), args)




end # module WorkSpaces


#==============================================================================#
# End of file
#==============================================================================#
