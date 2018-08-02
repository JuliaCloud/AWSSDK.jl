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
    using AWSSDK.WorkSpaces.associate_ip_groups
    associate_ip_groups([::AWSConfig], arguments::Dict)
    associate_ip_groups([::AWSConfig]; DirectoryId=, GroupIds=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "AssociateIpGroups", arguments::Dict)
    workspaces([::AWSConfig], "AssociateIpGroups", DirectoryId=, GroupIds=)

# AssociateIpGroups Operation

Associates the specified IP access control group with the specified directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
The ID of the directory.


## `GroupIds = [::String, ...]` -- *Required*
The IDs of one or more IP access control groups.




# Returns

`AssociateIpGroupsResult`

# Exceptions

`InvalidParameterValuesException`, `ResourceNotFoundException`, `ResourceLimitExceededException`, `InvalidResourceStateException`, `AccessDeniedException` or `OperationNotSupportedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AssociateIpGroups)
"""
@inline associate_ip_groups(aws::AWSConfig=default_aws_config(); args...) = associate_ip_groups(aws, args)

@inline associate_ip_groups(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "AssociateIpGroups", args)

@inline associate_ip_groups(args) = associate_ip_groups(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.authorize_ip_rules
    authorize_ip_rules([::AWSConfig], arguments::Dict)
    authorize_ip_rules([::AWSConfig]; GroupId=, UserRules=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "AuthorizeIpRules", arguments::Dict)
    workspaces([::AWSConfig], "AuthorizeIpRules", GroupId=, UserRules=)

# AuthorizeIpRules Operation

Adds one or more rules to the specified IP access control group.

This action gives users permission to access their WorkSpaces from the CIDR address ranges specified in the rules.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the group.


## `UserRules = [[ ... ], ...]` -- *Required*
The rules to add to the group.
```
 UserRules = [[
        "ipRule" =>  ::String,
        "ruleDesc" =>  ::String
    ], ...]
```



# Returns

`AuthorizeIpRulesResult`

# Exceptions

`InvalidParameterValuesException`, `ResourceNotFoundException`, `ResourceLimitExceededException`, `InvalidResourceStateException` or `AccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AuthorizeIpRules)
"""
@inline authorize_ip_rules(aws::AWSConfig=default_aws_config(); args...) = authorize_ip_rules(aws, args)

@inline authorize_ip_rules(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "AuthorizeIpRules", args)

@inline authorize_ip_rules(args) = authorize_ip_rules(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.create_ip_group
    create_ip_group([::AWSConfig], arguments::Dict)
    create_ip_group([::AWSConfig]; GroupName=, <keyword arguments>)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "CreateIpGroup", arguments::Dict)
    workspaces([::AWSConfig], "CreateIpGroup", GroupName=, <keyword arguments>)

# CreateIpGroup Operation

Creates an IP access control group.

An IP access control group provides you with the ability to control the IP addresses from which users are allowed to access their WorkSpaces. To specify the CIDR address ranges, add rules to your IP access control group and then associate the group with your directory. You can add rules when you create the group or at any time using [AuthorizeIpRules](@ref).

There is a default IP access control group associated with your directory. If you don't associate an IP access control group with your directory, the default group is used. The default group includes a default rule that allows users to access their WorkSpaces from anywhere. You cannot modify the default IP access control group for your directory.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the group.


## `GroupDesc = ::String`
The description of the group.


## `UserRules = [[ ... ], ...]`
The rules to add to the group.
```
 UserRules = [[
        "ipRule" =>  ::String,
        "ruleDesc" =>  ::String
    ], ...]
```



# Returns

`CreateIpGroupResult`

# Exceptions

`InvalidParameterValuesException`, `ResourceLimitExceededException`, `ResourceAlreadyExistsException`, `ResourceCreationFailedException` or `AccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateIpGroup)
"""
@inline create_ip_group(aws::AWSConfig=default_aws_config(); args...) = create_ip_group(aws, args)

@inline create_ip_group(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "CreateIpGroup", args)

@inline create_ip_group(args) = create_ip_group(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.create_tags
    create_tags([::AWSConfig], arguments::Dict)
    create_tags([::AWSConfig]; ResourceId=, Tags=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "CreateTags", arguments::Dict)
    workspaces([::AWSConfig], "CreateTags", ResourceId=, Tags=)

# CreateTags Operation

Creates the specified tags for the specified WorkSpace.

# Arguments

## `ResourceId = ::String` -- *Required*
The ID of the WorkSpace. To find this ID, use [DescribeWorkspaces](@ref).


## `Tags = [[ ... ], ...]` -- *Required*
The tags. Each WorkSpace can have a maximum of 50 tags.
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

This operation is asynchronous and returns before the WorkSpaces are created.

# Arguments

## `Workspaces = [[ ... ], ...]` -- *Required*
The WorkSpaces to create. You can specify up to 25 WorkSpaces.
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
            "RunningModeAutoStopTimeoutInMinutes" =>  ::Int,
            "RootVolumeSizeGib" =>  ::Int,
            "UserVolumeSizeGib" =>  ::Int,
            "ComputeTypeName" =>  "VALUE", "STANDARD", "PERFORMANCE", "POWER" or "GRAPHICS"
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
    using AWSSDK.WorkSpaces.delete_ip_group
    delete_ip_group([::AWSConfig], arguments::Dict)
    delete_ip_group([::AWSConfig]; GroupId=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "DeleteIpGroup", arguments::Dict)
    workspaces([::AWSConfig], "DeleteIpGroup", GroupId=)

# DeleteIpGroup Operation

Deletes the specified IP access control group.

You cannot delete an IP access control group that is associated with a directory.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the IP access control group.




# Returns

`DeleteIpGroupResult`

# Exceptions

`InvalidParameterValuesException`, `ResourceNotFoundException`, `ResourceAssociatedException` or `AccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteIpGroup)
"""
@inline delete_ip_group(aws::AWSConfig=default_aws_config(); args...) = delete_ip_group(aws, args)

@inline delete_ip_group(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "DeleteIpGroup", args)

@inline delete_ip_group(args) = delete_ip_group(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.delete_tags
    delete_tags([::AWSConfig], arguments::Dict)
    delete_tags([::AWSConfig]; ResourceId=, TagKeys=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "DeleteTags", arguments::Dict)
    workspaces([::AWSConfig], "DeleteTags", ResourceId=, TagKeys=)

# DeleteTags Operation

Deletes the specified tags from the specified WorkSpace.

# Arguments

## `ResourceId = ::String` -- *Required*
The ID of the WorkSpace. To find this ID, use [DescribeWorkspaces](@ref).


## `TagKeys = [::String, ...]` -- *Required*
The tag keys.




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
    using AWSSDK.WorkSpaces.describe_ip_groups
    describe_ip_groups([::AWSConfig], arguments::Dict)
    describe_ip_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "DescribeIpGroups", arguments::Dict)
    workspaces([::AWSConfig], "DescribeIpGroups", <keyword arguments>)

# DescribeIpGroups Operation

Describes one or more of your IP access control groups.

# Arguments

## `GroupIds = [::String, ...]`
The IDs of one or more IP access control groups.


## `NextToken = ::String`
The token for the next set of results. (You received this token from a previous call.)


## `MaxResults = ::Int`
The maximum number of items to return.




# Returns

`DescribeIpGroupsResult`

# Exceptions

`InvalidParameterValuesException` or `AccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeIpGroups)
"""
@inline describe_ip_groups(aws::AWSConfig=default_aws_config(); args...) = describe_ip_groups(aws, args)

@inline describe_ip_groups(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "DescribeIpGroups", args)

@inline describe_ip_groups(args) = describe_ip_groups(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.describe_tags
    describe_tags([::AWSConfig], arguments::Dict)
    describe_tags([::AWSConfig]; ResourceId=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "DescribeTags", arguments::Dict)
    workspaces([::AWSConfig], "DescribeTags", ResourceId=)

# DescribeTags Operation

Describes the specified tags for the specified WorkSpace.

# Arguments

## `ResourceId = ::String` -- *Required*
The ID of the WorkSpace. To find this ID, use [DescribeWorkspaces](@ref).




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

Describes the available WorkSpace bundles.

You can filter the results using either bundle ID or owner, but not both.

# Arguments

## `BundleIds = [::String, ...]`
The IDs of the bundles. This parameter cannot be combined with any other filter.


## `Owner = ::String`
The owner of the bundles. This parameter cannot be combined with any other filter.

Specify `AMAZON` to describe the bundles provided by AWS or null to describe the bundles that belong to your account.


## `NextToken = ::String`
The token for the next set of results. (You received this token from a previous call.)




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

Describes the available AWS Directory Service directories that are registered with Amazon WorkSpaces.

# Arguments

## `DirectoryIds = [::String, ...]`
The identifiers of the directories. If the value is null, all directories are retrieved.


## `NextToken = ::String`
The token for the next set of results. (You received this token from a previous call.)




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

Describes the specified WorkSpaces.

You can filter the results using bundle ID, directory ID, or owner, but you can specify only one filter at a time.

# Arguments

## `WorkspaceIds = [::String, ...]`
The IDs of the WorkSpaces. This parameter cannot be combined with any other filter.

Because the [CreateWorkspaces](@ref) operation is asynchronous, the identifier it returns is not immediately available. If you immediately call [DescribeWorkspaces](@ref) with this identifier, no information is returned.


## `DirectoryId = ::String`
The ID of the directory. In addition, you can optionally specify a specific directory user (see `UserName`). This parameter cannot be combined with any other filter.


## `UserName = ::String`
The name of the directory user. You must specify this parameter with `DirectoryId`.


## `BundleId = ::String`
The ID of the bundle. All WorkSpaces that are created from this bundle are retrieved. This parameter cannot be combined with any other filter.


## `Limit = ::Int`
The maximum number of items to return.


## `NextToken = ::String`
The token for the next set of results. (You received this token from a previous call.)




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

Describes the connection status of the specified WorkSpaces.

# Arguments

## `WorkspaceIds = [::String, ...]`
The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.


## `NextToken = ::String`
The token for the next set of results. (You received this token from a previous call.)




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
    using AWSSDK.WorkSpaces.disassociate_ip_groups
    disassociate_ip_groups([::AWSConfig], arguments::Dict)
    disassociate_ip_groups([::AWSConfig]; DirectoryId=, GroupIds=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "DisassociateIpGroups", arguments::Dict)
    workspaces([::AWSConfig], "DisassociateIpGroups", DirectoryId=, GroupIds=)

# DisassociateIpGroups Operation

Disassociates the specified IP access control group from the specified directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
The ID of the directory.


## `GroupIds = [::String, ...]` -- *Required*
The IDs of one or more IP access control groups.




# Returns

`DisassociateIpGroupsResult`

# Exceptions

`InvalidParameterValuesException`, `ResourceNotFoundException`, `InvalidResourceStateException` or `AccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DisassociateIpGroups)
"""
@inline disassociate_ip_groups(aws::AWSConfig=default_aws_config(); args...) = disassociate_ip_groups(aws, args)

@inline disassociate_ip_groups(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "DisassociateIpGroups", args)

@inline disassociate_ip_groups(args) = disassociate_ip_groups(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.modify_workspace_properties
    modify_workspace_properties([::AWSConfig], arguments::Dict)
    modify_workspace_properties([::AWSConfig]; WorkspaceId=, WorkspaceProperties=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "ModifyWorkspaceProperties", arguments::Dict)
    workspaces([::AWSConfig], "ModifyWorkspaceProperties", WorkspaceId=, WorkspaceProperties=)

# ModifyWorkspaceProperties Operation

Modifies the specified WorkSpace properties.

# Arguments

## `WorkspaceId = ::String` -- *Required*
The ID of the WorkSpace.


## `WorkspaceProperties = [ ... ]` -- *Required*
The properties of the WorkSpace.
```
 WorkspaceProperties = [
        "RunningMode" =>  "AUTO_STOP" or "ALWAYS_ON",
        "RunningModeAutoStopTimeoutInMinutes" =>  ::Int,
        "RootVolumeSizeGib" =>  ::Int,
        "UserVolumeSizeGib" =>  ::Int,
        "ComputeTypeName" =>  "VALUE", "STANDARD", "PERFORMANCE", "POWER" or "GRAPHICS"
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
    using AWSSDK.WorkSpaces.modify_workspace_state
    modify_workspace_state([::AWSConfig], arguments::Dict)
    modify_workspace_state([::AWSConfig]; WorkspaceId=, WorkspaceState=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "ModifyWorkspaceState", arguments::Dict)
    workspaces([::AWSConfig], "ModifyWorkspaceState", WorkspaceId=, WorkspaceState=)

# ModifyWorkspaceState Operation

Sets the state of the specified WorkSpace.

To maintain a WorkSpace without being interrupted, set the WorkSpace state to `ADMIN_MAINTENANCE`. WorkSpaces in this state do not respond to requests to reboot, stop, start, or rebuild. An AutoStop WorkSpace in this state is not stopped. Users can log into a WorkSpace in the `ADMIN_MAINTENANCE` state.

# Arguments

## `WorkspaceId = ::String` -- *Required*
The ID of the WorkSpace.


## `WorkspaceState = "AVAILABLE" or "ADMIN_MAINTENANCE"` -- *Required*
The WorkSpace state.




# Returns

`ModifyWorkspaceStateResult`

# Exceptions

`InvalidParameterValuesException`, `InvalidResourceStateException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceState)
"""
@inline modify_workspace_state(aws::AWSConfig=default_aws_config(); args...) = modify_workspace_state(aws, args)

@inline modify_workspace_state(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "ModifyWorkspaceState", args)

@inline modify_workspace_state(args) = modify_workspace_state(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.reboot_workspaces
    reboot_workspaces([::AWSConfig], arguments::Dict)
    reboot_workspaces([::AWSConfig]; RebootWorkspaceRequests=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "RebootWorkspaces", arguments::Dict)
    workspaces([::AWSConfig], "RebootWorkspaces", RebootWorkspaceRequests=)

# RebootWorkspaces Operation

Reboots the specified WorkSpaces.

You cannot reboot a WorkSpace unless its state is `AVAILABLE` or `UNHEALTHY`.

This operation is asynchronous and returns before the WorkSpaces have rebooted.

# Arguments

## `RebootWorkspaceRequests = [["WorkspaceId" => <required> ::String], ...]` -- *Required*
The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.




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

Rebuilds the specified WorkSpace.

You cannot rebuild a WorkSpace unless its state is `AVAILABLE`, `ERROR`, or `UNHEALTHY`.

Rebuilding a WorkSpace is a potentially destructive action that can result in the loss of data. For more information, see [Rebuild a WorkSpace](http://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html).

This operation is asynchronous and returns before the WorkSpaces have been completely rebuilt.

# Arguments

## `RebuildWorkspaceRequests = [["WorkspaceId" => <required> ::String], ...]` -- *Required*
The WorkSpace to rebuild. You can specify a single WorkSpace.




# Returns

`RebuildWorkspacesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildWorkspaces)
"""
@inline rebuild_workspaces(aws::AWSConfig=default_aws_config(); args...) = rebuild_workspaces(aws, args)

@inline rebuild_workspaces(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "RebuildWorkspaces", args)

@inline rebuild_workspaces(args) = rebuild_workspaces(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.revoke_ip_rules
    revoke_ip_rules([::AWSConfig], arguments::Dict)
    revoke_ip_rules([::AWSConfig]; GroupId=, UserRules=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "RevokeIpRules", arguments::Dict)
    workspaces([::AWSConfig], "RevokeIpRules", GroupId=, UserRules=)

# RevokeIpRules Operation

Removes one or more rules from the specified IP access control group.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the group.


## `UserRules = [::String, ...]` -- *Required*
The rules to remove from the group.




# Returns

`RevokeIpRulesResult`

# Exceptions

`InvalidParameterValuesException`, `ResourceNotFoundException`, `InvalidResourceStateException` or `AccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RevokeIpRules)
"""
@inline revoke_ip_rules(aws::AWSConfig=default_aws_config(); args...) = revoke_ip_rules(aws, args)

@inline revoke_ip_rules(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "RevokeIpRules", args)

@inline revoke_ip_rules(args) = revoke_ip_rules(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.start_workspaces
    start_workspaces([::AWSConfig], arguments::Dict)
    start_workspaces([::AWSConfig]; StartWorkspaceRequests=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "StartWorkspaces", arguments::Dict)
    workspaces([::AWSConfig], "StartWorkspaces", StartWorkspaceRequests=)

# StartWorkspaces Operation

Starts the specified WorkSpaces.

You cannot start a WorkSpace unless it has a running mode of `AutoStop` and a state of `STOPPED`.

# Arguments

## `StartWorkspaceRequests = [["WorkspaceId" =>  ::String], ...]` -- *Required*
The WorkSpaces to start. You can specify up to 25 WorkSpaces.




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

Stops the specified WorkSpaces.

You cannot stop a WorkSpace unless it has a running mode of `AutoStop` and a state of `AVAILABLE`, `IMPAIRED`, `UNHEALTHY`, or `ERROR`.

# Arguments

## `StopWorkspaceRequests = [["WorkspaceId" =>  ::String], ...]` -- *Required*
The WorkSpaces to stop. You can specify up to 25 WorkSpaces.




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

Terminating a WorkSpace is a permanent action and cannot be undone. The user's data is destroyed. If you need to archive any user data, contact Amazon Web Services before terminating the WorkSpace.

You can terminate a WorkSpace that is in any state except `SUSPENDED`.

This operation is asynchronous and returns before the WorkSpaces have been completely terminated.

# Arguments

## `TerminateWorkspaceRequests = [["WorkspaceId" => <required> ::String], ...]` -- *Required*
The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.




# Returns

`TerminateWorkspacesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateWorkspaces)
"""
@inline terminate_workspaces(aws::AWSConfig=default_aws_config(); args...) = terminate_workspaces(aws, args)

@inline terminate_workspaces(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "TerminateWorkspaces", args)

@inline terminate_workspaces(args) = terminate_workspaces(default_aws_config(), args)


"""
    using AWSSDK.WorkSpaces.update_rules_of_ip_group
    update_rules_of_ip_group([::AWSConfig], arguments::Dict)
    update_rules_of_ip_group([::AWSConfig]; GroupId=, UserRules=)

    using AWSCore.Services.workspaces
    workspaces([::AWSConfig], "UpdateRulesOfIpGroup", arguments::Dict)
    workspaces([::AWSConfig], "UpdateRulesOfIpGroup", GroupId=, UserRules=)

# UpdateRulesOfIpGroup Operation

Replaces the current rules of the specified IP access control group with the specified rules.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the group.


## `UserRules = [[ ... ], ...]` -- *Required*
One or more rules.
```
 UserRules = [[
        "ipRule" =>  ::String,
        "ruleDesc" =>  ::String
    ], ...]
```



# Returns

`UpdateRulesOfIpGroupResult`

# Exceptions

`InvalidParameterValuesException`, `ResourceNotFoundException`, `ResourceLimitExceededException`, `InvalidResourceStateException` or `AccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateRulesOfIpGroup)
"""
@inline update_rules_of_ip_group(aws::AWSConfig=default_aws_config(); args...) = update_rules_of_ip_group(aws, args)

@inline update_rules_of_ip_group(aws::AWSConfig, args) = AWSCore.Services.workspaces(aws, "UpdateRulesOfIpGroup", args)

@inline update_rules_of_ip_group(args) = update_rules_of_ip_group(default_aws_config(), args)




end # module WorkSpaces


#==============================================================================#
# End of file
#==============================================================================#
