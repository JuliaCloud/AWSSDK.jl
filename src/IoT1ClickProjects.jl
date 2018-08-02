#==============================================================================#
# IoT1ClickProjects.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/iot1click-projects-2018-05-14.normal.json
#==============================================================================#

__precompile__()

module IoT1ClickProjects

using AWSCore


"""
    using AWSSDK.IoT1ClickProjects.associate_device_with_placement
    associate_device_with_placement([::AWSConfig], arguments::Dict)
    associate_device_with_placement([::AWSConfig]; projectName=, placementName=, deviceId=, deviceTemplateName=)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "PUT", "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", arguments::Dict)
    iot1click_projects([::AWSConfig], "PUT", "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", projectName=, placementName=, deviceId=, deviceTemplateName=)

# AssociateDeviceWithPlacement Operation

Associates a physical device with a placement.

# Arguments

## `projectName = ::String` -- *Required*
The name of the project containing the placement in which to associate the device.


## `placementName = ::String` -- *Required*
The name of the placement in which to associate the device.


## `deviceId = ::String` -- *Required*
The ID of the physical device to be associated with the given placement in the project. Note that a mandatory 4 character prefix is required for all `deviceId` values.


## `deviceTemplateName = ::String` -- *Required*
The device template name to associate with the device ID.




# Returns

`AssociateDeviceWithPlacementResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException`, `ResourceConflictException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/AssociateDeviceWithPlacement)
"""
@inline associate_device_with_placement(aws::AWSConfig=default_aws_config(); args...) = associate_device_with_placement(aws, args)

@inline associate_device_with_placement(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "PUT", "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", args)

@inline associate_device_with_placement(args) = associate_device_with_placement(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickProjects.create_placement
    create_placement([::AWSConfig], arguments::Dict)
    create_placement([::AWSConfig]; placementName=, projectName=, <keyword arguments>)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "POST", "/projects/{projectName}/placements", arguments::Dict)
    iot1click_projects([::AWSConfig], "POST", "/projects/{projectName}/placements", placementName=, projectName=, <keyword arguments>)

# CreatePlacement Operation

Creates an empty placement.

# Arguments

## `placementName = ::String` -- *Required*
The name of the placement to be created.


## `projectName = ::String` -- *Required*
The name of the project in which to create the placement.


## `attributes = ::Dict{String,String}`
Optional user-defined key/value pairs providing contextual data (such as location or function) for the placement.




# Returns

`CreatePlacementResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException`, `ResourceConflictException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/CreatePlacement)
"""
@inline create_placement(aws::AWSConfig=default_aws_config(); args...) = create_placement(aws, args)

@inline create_placement(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "POST", "/projects/{projectName}/placements", args)

@inline create_placement(args) = create_placement(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickProjects.create_project
    create_project([::AWSConfig], arguments::Dict)
    create_project([::AWSConfig]; projectName=, <keyword arguments>)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "POST", "/projects", arguments::Dict)
    iot1click_projects([::AWSConfig], "POST", "/projects", projectName=, <keyword arguments>)

# CreateProject Operation

Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.

# Arguments

## `projectName = ::String` -- *Required*
The name of the project to create.


## `description = ::String`
An optional description for the project.


## `placementTemplate = [ ... ]`
The schema defining the placement to be created. A placement template defines placement default attributes and device templates. You cannot add or remove device templates after the project has been created. However, you can update `callbackOverrides` for the device templates using the `UpdateProject` API.
```
 placementTemplate = [
        "defaultAttributes" =>  ::Dict{String,String},
        "deviceTemplates" =>  ::Dict{String,String}
    ]
```



# Returns

`CreateProjectResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException` or `ResourceConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/CreateProject)
"""
@inline create_project(aws::AWSConfig=default_aws_config(); args...) = create_project(aws, args)

@inline create_project(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "POST", "/projects", args)

@inline create_project(args) = create_project(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickProjects.delete_placement
    delete_placement([::AWSConfig], arguments::Dict)
    delete_placement([::AWSConfig]; placementName=, projectName=)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "DELETE", "/projects/{projectName}/placements/{placementName}", arguments::Dict)
    iot1click_projects([::AWSConfig], "DELETE", "/projects/{projectName}/placements/{placementName}", placementName=, projectName=)

# DeletePlacement Operation

Deletes a placement. To delete a placement, it must not have any devices associated with it.

**Note**
> When you delete a placement, all associated data becomes irretrievable.

# Arguments

## `placementName = ::String` -- *Required*
The name of the empty placement to delete.


## `projectName = ::String` -- *Required*
The project containing the empty placement to delete.




# Returns

`DeletePlacementResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException`, `ResourceNotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/DeletePlacement)
"""
@inline delete_placement(aws::AWSConfig=default_aws_config(); args...) = delete_placement(aws, args)

@inline delete_placement(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "DELETE", "/projects/{projectName}/placements/{placementName}", args)

@inline delete_placement(args) = delete_placement(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickProjects.delete_project
    delete_project([::AWSConfig], arguments::Dict)
    delete_project([::AWSConfig]; projectName=)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "DELETE", "/projects/{projectName}", arguments::Dict)
    iot1click_projects([::AWSConfig], "DELETE", "/projects/{projectName}", projectName=)

# DeleteProject Operation

Deletes a project. To delete a project, it must not have any placements associated with it.

**Note**
> When you delete a project, all associated data becomes irretrievable.

# Arguments

## `projectName = ::String` -- *Required*
The name of the empty project to delete.




# Returns

`DeleteProjectResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException`, `ResourceNotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/DeleteProject)
"""
@inline delete_project(aws::AWSConfig=default_aws_config(); args...) = delete_project(aws, args)

@inline delete_project(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "DELETE", "/projects/{projectName}", args)

@inline delete_project(args) = delete_project(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickProjects.describe_placement
    describe_placement([::AWSConfig], arguments::Dict)
    describe_placement([::AWSConfig]; placementName=, projectName=)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "GET", "/projects/{projectName}/placements/{placementName}", arguments::Dict)
    iot1click_projects([::AWSConfig], "GET", "/projects/{projectName}/placements/{placementName}", placementName=, projectName=)

# DescribePlacement Operation

Describes a placement in a project.

# Arguments

## `placementName = ::String` -- *Required*
The name of the placement within a project.


## `projectName = ::String` -- *Required*
The project containing the placement to be described.




# Returns

`DescribePlacementResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/DescribePlacement)
"""
@inline describe_placement(aws::AWSConfig=default_aws_config(); args...) = describe_placement(aws, args)

@inline describe_placement(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "GET", "/projects/{projectName}/placements/{placementName}", args)

@inline describe_placement(args) = describe_placement(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickProjects.describe_project
    describe_project([::AWSConfig], arguments::Dict)
    describe_project([::AWSConfig]; projectName=)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "GET", "/projects/{projectName}", arguments::Dict)
    iot1click_projects([::AWSConfig], "GET", "/projects/{projectName}", projectName=)

# DescribeProject Operation

Returns an object describing a project.

# Arguments

## `projectName = ::String` -- *Required*
The name of the project to be described.




# Returns

`DescribeProjectResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/DescribeProject)
"""
@inline describe_project(aws::AWSConfig=default_aws_config(); args...) = describe_project(aws, args)

@inline describe_project(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "GET", "/projects/{projectName}", args)

@inline describe_project(args) = describe_project(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickProjects.disassociate_device_from_placement
    disassociate_device_from_placement([::AWSConfig], arguments::Dict)
    disassociate_device_from_placement([::AWSConfig]; projectName=, placementName=, deviceTemplateName=)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "DELETE", "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", arguments::Dict)
    iot1click_projects([::AWSConfig], "DELETE", "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", projectName=, placementName=, deviceTemplateName=)

# DisassociateDeviceFromPlacement Operation

Removes a physical device from a placement.

# Arguments

## `projectName = ::String` -- *Required*
The name of the project that contains the placement.


## `placementName = ::String` -- *Required*
The name of the placement that the device should be removed from.


## `deviceTemplateName = ::String` -- *Required*
The device ID that should be removed from the placement.




# Returns

`DisassociateDeviceFromPlacementResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException`, `ResourceNotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/DisassociateDeviceFromPlacement)
"""
@inline disassociate_device_from_placement(aws::AWSConfig=default_aws_config(); args...) = disassociate_device_from_placement(aws, args)

@inline disassociate_device_from_placement(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "DELETE", "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", args)

@inline disassociate_device_from_placement(args) = disassociate_device_from_placement(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickProjects.get_devices_in_placement
    get_devices_in_placement([::AWSConfig], arguments::Dict)
    get_devices_in_placement([::AWSConfig]; projectName=, placementName=)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "GET", "/projects/{projectName}/placements/{placementName}/devices", arguments::Dict)
    iot1click_projects([::AWSConfig], "GET", "/projects/{projectName}/placements/{placementName}/devices", projectName=, placementName=)

# GetDevicesInPlacement Operation

Returns an object enumerating the devices in a placement.

# Arguments

## `projectName = ::String` -- *Required*
The name of the project containing the placement.


## `placementName = ::String` -- *Required*
The name of the placement to get the devices from.




# Returns

`GetDevicesInPlacementResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/GetDevicesInPlacement)
"""
@inline get_devices_in_placement(aws::AWSConfig=default_aws_config(); args...) = get_devices_in_placement(aws, args)

@inline get_devices_in_placement(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "GET", "/projects/{projectName}/placements/{placementName}/devices", args)

@inline get_devices_in_placement(args) = get_devices_in_placement(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickProjects.list_placements
    list_placements([::AWSConfig], arguments::Dict)
    list_placements([::AWSConfig]; projectName=, <keyword arguments>)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "GET", "/projects/{projectName}/placements", arguments::Dict)
    iot1click_projects([::AWSConfig], "GET", "/projects/{projectName}/placements", projectName=, <keyword arguments>)

# ListPlacements Operation

Lists the placement(s) of a project.

# Arguments

## `projectName = ::String` -- *Required*
The project containing the placements to be listed.


## `nextToken = ::String`
The token to retrieve the next set of results.


## `maxResults = ::Int`
The maximum number of results to return per request. If not set, a default value of 100 is used.




# Returns

`ListPlacementsResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/ListPlacements)
"""
@inline list_placements(aws::AWSConfig=default_aws_config(); args...) = list_placements(aws, args)

@inline list_placements(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "GET", "/projects/{projectName}/placements", args)

@inline list_placements(args) = list_placements(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickProjects.list_projects
    list_projects([::AWSConfig], arguments::Dict)
    list_projects([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "GET", "/projects", arguments::Dict)
    iot1click_projects([::AWSConfig], "GET", "/projects", <keyword arguments>)

# ListProjects Operation

Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.

# Arguments

## `nextToken = ::String`
The token to retrieve the next set of results.


## `maxResults = ::Int`
The maximum number of results to return per request. If not set, a default value of 100 is used.




# Returns

`ListProjectsResponse`

# Exceptions

`InternalFailureException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/ListProjects)
"""
@inline list_projects(aws::AWSConfig=default_aws_config(); args...) = list_projects(aws, args)

@inline list_projects(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "GET", "/projects", args)

@inline list_projects(args) = list_projects(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickProjects.update_placement
    update_placement([::AWSConfig], arguments::Dict)
    update_placement([::AWSConfig]; placementName=, projectName=, <keyword arguments>)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "PUT", "/projects/{projectName}/placements/{placementName}", arguments::Dict)
    iot1click_projects([::AWSConfig], "PUT", "/projects/{projectName}/placements/{placementName}", placementName=, projectName=, <keyword arguments>)

# UpdatePlacement Operation

Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").

# Arguments

## `placementName = ::String` -- *Required*
The name of the placement to update.


## `projectName = ::String` -- *Required*
The name of the project containing the placement to be updated.


## `attributes = ::Dict{String,String}`
The user-defined object of attributes used to update the placement. The maximum number of key/value pairs is 50.




# Returns

`UpdatePlacementResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException`, `ResourceNotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/UpdatePlacement)
"""
@inline update_placement(aws::AWSConfig=default_aws_config(); args...) = update_placement(aws, args)

@inline update_placement(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "PUT", "/projects/{projectName}/placements/{placementName}", args)

@inline update_placement(args) = update_placement(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickProjects.update_project
    update_project([::AWSConfig], arguments::Dict)
    update_project([::AWSConfig]; projectName=, <keyword arguments>)

    using AWSCore.Services.iot1click_projects
    iot1click_projects([::AWSConfig], "PUT", "/projects/{projectName}", arguments::Dict)
    iot1click_projects([::AWSConfig], "PUT", "/projects/{projectName}", projectName=, <keyword arguments>)

# UpdateProject Operation

Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., `""`).

# Arguments

## `projectName = ::String` -- *Required*
The name of the project to be updated.


## `description = ::String`
An optional user-defined description for the project.


## `placementTemplate = [ ... ]`
An object defining the project update. Once a project has been created, you cannot add device template names to the project. However, for a given `placementTemplate`, you can update the associated `callbackOverrides` for the device definition using this API.
```
 placementTemplate = [
        "defaultAttributes" =>  ::Dict{String,String},
        "deviceTemplates" =>  ::Dict{String,String}
    ]
```



# Returns

`UpdateProjectResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException`, `ResourceNotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot1click-projects-2018-05-14/UpdateProject)
"""
@inline update_project(aws::AWSConfig=default_aws_config(); args...) = update_project(aws, args)

@inline update_project(aws::AWSConfig, args) = AWSCore.Services.iot1click_projects(aws, "PUT", "/projects/{projectName}", args)

@inline update_project(args) = update_project(default_aws_config(), args)




end # module IoT1ClickProjects


#==============================================================================#
# End of file
#==============================================================================#
