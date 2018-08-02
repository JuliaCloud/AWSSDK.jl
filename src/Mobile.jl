#==============================================================================#
# Mobile.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/mobile-2017-07-01.normal.json
#==============================================================================#

__precompile__()

module Mobile

using AWSCore


"""
    using AWSSDK.Mobile.create_project
    create_project([::AWSConfig], arguments::Dict)
    create_project([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mobile
    mobile([::AWSConfig], "POST", "/projects", arguments::Dict)
    mobile([::AWSConfig], "POST", "/projects", <keyword arguments>)

# CreateProject Operation

Creates an AWS Mobile Hub project.

# Arguments

## `name = ::String`
Name of the project.


## `region = ::String`
Default region where project resources should be created.


## `contents = blob`
ZIP or YAML file which contains configuration settings to be used when creating the project. This may be the contents of the file downloaded from the URL provided in an export project operation.


## `snapshotId = ::String`
Unique identifier for an exported snapshot of project configuration. This snapshot identifier is included in the share URL when a project is exported.




# Returns

`CreateProjectResult`

# Exceptions

`InternalFailureException`, `ServiceUnavailableException`, `UnauthorizedException`, `TooManyRequestsException`, `BadRequestException`, `NotFoundException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/CreateProject)
"""
@inline create_project(aws::AWSConfig=default_aws_config(); args...) = create_project(aws, args)

@inline create_project(aws::AWSConfig, args) = AWSCore.Services.mobile(aws, "POST", "/projects", args)

@inline create_project(args) = create_project(default_aws_config(), args)


"""
    using AWSSDK.Mobile.delete_project
    delete_project([::AWSConfig], arguments::Dict)
    delete_project([::AWSConfig]; projectId=)

    using AWSCore.Services.mobile
    mobile([::AWSConfig], "DELETE", "/projects/{projectId}", arguments::Dict)
    mobile([::AWSConfig], "DELETE", "/projects/{projectId}", projectId=)

# DeleteProject Operation

Delets a project in AWS Mobile Hub.

# Arguments

## `projectId = ::String` -- *Required*
Unique project identifier.




# Returns

`DeleteProjectResult`

# Exceptions

`InternalFailureException`, `ServiceUnavailableException`, `UnauthorizedException`, `TooManyRequestsException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/DeleteProject)
"""
@inline delete_project(aws::AWSConfig=default_aws_config(); args...) = delete_project(aws, args)

@inline delete_project(aws::AWSConfig, args) = AWSCore.Services.mobile(aws, "DELETE", "/projects/{projectId}", args)

@inline delete_project(args) = delete_project(default_aws_config(), args)


"""
    using AWSSDK.Mobile.describe_bundle
    describe_bundle([::AWSConfig], arguments::Dict)
    describe_bundle([::AWSConfig]; bundleId=)

    using AWSCore.Services.mobile
    mobile([::AWSConfig], "GET", "/bundles/{bundleId}", arguments::Dict)
    mobile([::AWSConfig], "GET", "/bundles/{bundleId}", bundleId=)

# DescribeBundle Operation

Get the bundle details for the requested bundle id.

# Arguments

## `bundleId = ::String` -- *Required*
Unique bundle identifier.




# Returns

`DescribeBundleResult`

# Exceptions

`InternalFailureException`, `ServiceUnavailableException`, `UnauthorizedException`, `TooManyRequestsException`, `BadRequestException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/DescribeBundle)
"""
@inline describe_bundle(aws::AWSConfig=default_aws_config(); args...) = describe_bundle(aws, args)

@inline describe_bundle(aws::AWSConfig, args) = AWSCore.Services.mobile(aws, "GET", "/bundles/{bundleId}", args)

@inline describe_bundle(args) = describe_bundle(default_aws_config(), args)


"""
    using AWSSDK.Mobile.describe_project
    describe_project([::AWSConfig], arguments::Dict)
    describe_project([::AWSConfig]; projectId=, <keyword arguments>)

    using AWSCore.Services.mobile
    mobile([::AWSConfig], "GET", "/project", arguments::Dict)
    mobile([::AWSConfig], "GET", "/project", projectId=, <keyword arguments>)

# DescribeProject Operation

Gets details about a project in AWS Mobile Hub.

# Arguments

## `projectId = ::String` -- *Required*
Unique project identifier.


## `syncFromResources = ::Bool`
If set to true, causes AWS Mobile Hub to synchronize information from other services, e.g., update state of AWS CloudFormation stacks in the AWS Mobile Hub project.




# Returns

`DescribeProjectResult`

# Exceptions

`InternalFailureException`, `ServiceUnavailableException`, `UnauthorizedException`, `TooManyRequestsException`, `BadRequestException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/DescribeProject)
"""
@inline describe_project(aws::AWSConfig=default_aws_config(); args...) = describe_project(aws, args)

@inline describe_project(aws::AWSConfig, args) = AWSCore.Services.mobile(aws, "GET", "/project", args)

@inline describe_project(args) = describe_project(default_aws_config(), args)


"""
    using AWSSDK.Mobile.export_bundle
    export_bundle([::AWSConfig], arguments::Dict)
    export_bundle([::AWSConfig]; bundleId=, <keyword arguments>)

    using AWSCore.Services.mobile
    mobile([::AWSConfig], "POST", "/bundles/{bundleId}", arguments::Dict)
    mobile([::AWSConfig], "POST", "/bundles/{bundleId}", bundleId=, <keyword arguments>)

# ExportBundle Operation

Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources.

# Arguments

## `bundleId = ::String` -- *Required*
Unique bundle identifier.


## `projectId = ::String`
Unique project identifier.


## `platform = "OSX", "WINDOWS", "LINUX", "OBJC", "SWIFT", "ANDROID" or "JAVASCRIPT"`
Developer desktop or target application platform.




# Returns

`ExportBundleResult`

# Exceptions

`InternalFailureException`, `ServiceUnavailableException`, `UnauthorizedException`, `TooManyRequestsException`, `BadRequestException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ExportBundle)
"""
@inline export_bundle(aws::AWSConfig=default_aws_config(); args...) = export_bundle(aws, args)

@inline export_bundle(aws::AWSConfig, args) = AWSCore.Services.mobile(aws, "POST", "/bundles/{bundleId}", args)

@inline export_bundle(args) = export_bundle(default_aws_config(), args)


"""
    using AWSSDK.Mobile.export_project
    export_project([::AWSConfig], arguments::Dict)
    export_project([::AWSConfig]; projectId=)

    using AWSCore.Services.mobile
    mobile([::AWSConfig], "POST", "/exports/{projectId}", arguments::Dict)
    mobile([::AWSConfig], "POST", "/exports/{projectId}", projectId=)

# ExportProject Operation

Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account.

# Arguments

## `projectId = ::String` -- *Required*
Unique project identifier.




# Returns

`ExportProjectResult`

# Exceptions

`InternalFailureException`, `ServiceUnavailableException`, `UnauthorizedException`, `TooManyRequestsException`, `BadRequestException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ExportProject)
"""
@inline export_project(aws::AWSConfig=default_aws_config(); args...) = export_project(aws, args)

@inline export_project(aws::AWSConfig, args) = AWSCore.Services.mobile(aws, "POST", "/exports/{projectId}", args)

@inline export_project(args) = export_project(default_aws_config(), args)


"""
    using AWSSDK.Mobile.list_bundles
    list_bundles([::AWSConfig], arguments::Dict)
    list_bundles([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mobile
    mobile([::AWSConfig], "GET", "/bundles", arguments::Dict)
    mobile([::AWSConfig], "GET", "/bundles", <keyword arguments>)

# ListBundles Operation

List all available bundles.

# Arguments

## `maxResults = ::Int`
Maximum number of records to list in a single response.


## `nextToken = ::String`
Pagination token. Set to null to start listing bundles from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more bundles.




# Returns

`ListBundlesResult`

# Exceptions

`InternalFailureException`, `ServiceUnavailableException`, `UnauthorizedException`, `TooManyRequestsException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ListBundles)
"""
@inline list_bundles(aws::AWSConfig=default_aws_config(); args...) = list_bundles(aws, args)

@inline list_bundles(aws::AWSConfig, args) = AWSCore.Services.mobile(aws, "GET", "/bundles", args)

@inline list_bundles(args) = list_bundles(default_aws_config(), args)


"""
    using AWSSDK.Mobile.list_projects
    list_projects([::AWSConfig], arguments::Dict)
    list_projects([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mobile
    mobile([::AWSConfig], "GET", "/projects", arguments::Dict)
    mobile([::AWSConfig], "GET", "/projects", <keyword arguments>)

# ListProjects Operation

Lists projects in AWS Mobile Hub.

# Arguments

## `maxResults = ::Int`
Maximum number of records to list in a single response.


## `nextToken = ::String`
Pagination token. Set to null to start listing projects from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more projects.




# Returns

`ListProjectsResult`

# Exceptions

`InternalFailureException`, `ServiceUnavailableException`, `UnauthorizedException`, `TooManyRequestsException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/ListProjects)
"""
@inline list_projects(aws::AWSConfig=default_aws_config(); args...) = list_projects(aws, args)

@inline list_projects(aws::AWSConfig, args) = AWSCore.Services.mobile(aws, "GET", "/projects", args)

@inline list_projects(args) = list_projects(default_aws_config(), args)


"""
    using AWSSDK.Mobile.update_project
    update_project([::AWSConfig], arguments::Dict)
    update_project([::AWSConfig]; projectId=, <keyword arguments>)

    using AWSCore.Services.mobile
    mobile([::AWSConfig], "POST", "/update", arguments::Dict)
    mobile([::AWSConfig], "POST", "/update", projectId=, <keyword arguments>)

# UpdateProject Operation

Update an existing project.

# Arguments

## `contents = blob`
ZIP or YAML file which contains project configuration to be updated. This should be the contents of the file downloaded from the URL provided in an export project operation.


## `projectId = ::String` -- *Required*
Unique project identifier.




# Returns

`UpdateProjectResult`

# Exceptions

`InternalFailureException`, `ServiceUnavailableException`, `UnauthorizedException`, `TooManyRequestsException`, `BadRequestException`, `NotFoundException`, `AccountActionRequiredException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mobile-2017-07-01/UpdateProject)
"""
@inline update_project(aws::AWSConfig=default_aws_config(); args...) = update_project(aws, args)

@inline update_project(aws::AWSConfig, args) = AWSCore.Services.mobile(aws, "POST", "/update", args)

@inline update_project(args) = update_project(default_aws_config(), args)




end # module Mobile


#==============================================================================#
# End of file
#==============================================================================#
