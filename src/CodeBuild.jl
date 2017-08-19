#==============================================================================#
# CodeBuild.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/codebuild-2016-10-06.normal.json
#==============================================================================#

__precompile__()

module CodeBuild

using AWSCore


"""
    using AWSSDK.CodeBuild.batch_get_builds
    batch_get_builds([::AWSConfig], arguments::Dict)
    batch_get_builds([::AWSConfig]; ids=)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "BatchGetBuilds", arguments::Dict)
    codebuild([::AWSConfig], "BatchGetBuilds", ids=)

# BatchGetBuilds Operation

Gets information about builds.

# Arguments

## `ids = [::String, ...]` -- *Required*
The IDs of the builds.




# Returns

`BatchGetBuildsOutput`

# Exceptions

`InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetBuilds)
"""

@inline batch_get_builds(aws::AWSConfig=default_aws_config(); args...) = batch_get_builds(aws, args)

@inline batch_get_builds(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "BatchGetBuilds", args)

@inline batch_get_builds(args) = batch_get_builds(default_aws_config(), args)


"""
    using AWSSDK.CodeBuild.batch_get_projects
    batch_get_projects([::AWSConfig], arguments::Dict)
    batch_get_projects([::AWSConfig]; names=)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "BatchGetProjects", arguments::Dict)
    codebuild([::AWSConfig], "BatchGetProjects", names=)

# BatchGetProjects Operation

Gets information about build projects.

# Arguments

## `names = [::String, ...]` -- *Required*
The names of the build projects.




# Returns

`BatchGetProjectsOutput`

# Exceptions

`InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetProjects)
"""

@inline batch_get_projects(aws::AWSConfig=default_aws_config(); args...) = batch_get_projects(aws, args)

@inline batch_get_projects(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "BatchGetProjects", args)

@inline batch_get_projects(args) = batch_get_projects(default_aws_config(), args)


"""
    using AWSSDK.CodeBuild.create_project
    create_project([::AWSConfig], arguments::Dict)
    create_project([::AWSConfig]; name=, source=, artifacts=, environment=, <keyword arguments>)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "CreateProject", arguments::Dict)
    codebuild([::AWSConfig], "CreateProject", name=, source=, artifacts=, environment=, <keyword arguments>)

# CreateProject Operation

Creates a build project.

# Arguments

## `name = ::String` -- *Required*
The name of the build project.


## `description = ::String`
A description that makes the build project easy to identify.


## `source = [ ... ]` -- *Required*
Information about the build input source code for the build project.
```
 source = [
        "type" => <required> "CODECOMMIT", "CODEPIPELINE", "GITHUB" or "S3",
        "location" =>  ::String,
        "buildspec" =>  ::String,
        "auth" =>  [
            "type" => <required> "OAUTH",
            "resource" =>  ::String
        ]
    ]
```

## `artifacts = [ ... ]` -- *Required*
Information about the build output artifacts for the build project.
```
 artifacts = [
        "type" => <required> "CODEPIPELINE", "S3" or "NO_ARTIFACTS",
        "location" =>  ::String,
        "path" =>  ::String,
        "namespaceType" =>  "NONE" or "BUILD_ID",
        "name" =>  ::String,
        "packaging" =>  "NONE" or "ZIP"
    ]
```

## `environment = [ ... ]` -- *Required*
Information about the build environment for the build project.
```
 environment = [
        "type" => <required> "LINUX_CONTAINER",
        "image" => <required> ::String,
        "computeType" => <required> "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM" or "BUILD_GENERAL1_LARGE",
        "environmentVariables" =>  [[
            "name" => <required> ::String,
            "value" => <required> ::String
        ], ...],
        "privilegedMode" =>  ::Bool
    ]
```

## `serviceRole = ::String`
The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.


## `timeoutInMinutes = ::Int`
How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any build that has not been marked as completed. The default is 60 minutes.


## `encryptionKey = ::String`
The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.

You can specify either the CMK's Amazon Resource Name (ARN) or, if available, the CMK's alias (using the format `alias/*alias-name*` ).


## `tags = [[ ... ], ...]`
A set of tags for this build project.

These tags are available for use by AWS services that support AWS CodeBuild build project tags.
```
 tags = [[
        "key" =>  ::String,
        "value" =>  ::String
    ], ...]
```



# Returns

`CreateProjectOutput`

# Exceptions

`InvalidInputException`, `ResourceAlreadyExistsException` or `AccountLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateProject)
"""

@inline create_project(aws::AWSConfig=default_aws_config(); args...) = create_project(aws, args)

@inline create_project(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "CreateProject", args)

@inline create_project(args) = create_project(default_aws_config(), args)


"""
    using AWSSDK.CodeBuild.delete_project
    delete_project([::AWSConfig], arguments::Dict)
    delete_project([::AWSConfig]; name=)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "DeleteProject", arguments::Dict)
    codebuild([::AWSConfig], "DeleteProject", name=)

# DeleteProject Operation

Deletes a build project.

# Arguments

## `name = ::String` -- *Required*
The name of the build project.




# Returns

`DeleteProjectOutput`

# Exceptions

`InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteProject)
"""

@inline delete_project(aws::AWSConfig=default_aws_config(); args...) = delete_project(aws, args)

@inline delete_project(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "DeleteProject", args)

@inline delete_project(args) = delete_project(default_aws_config(), args)


"""
    using AWSSDK.CodeBuild.list_builds
    list_builds([::AWSConfig], arguments::Dict)
    list_builds([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "ListBuilds", arguments::Dict)
    codebuild([::AWSConfig], "ListBuilds", <keyword arguments>)

# ListBuilds Operation

Gets a list of build IDs, with each build ID representing a single build.

# Arguments

## `sortOrder = "ASCENDING" or "DESCENDING"`
The order to list build IDs. Valid values include:

*   `ASCENDING`: List the build IDs in ascending order by build ID.

*   `DESCENDING`: List the build IDs in descending order by build ID.


## `nextToken = ::String`
During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a *next token*. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.




# Returns

`ListBuildsOutput`

# Exceptions

`InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuilds)
"""

@inline list_builds(aws::AWSConfig=default_aws_config(); args...) = list_builds(aws, args)

@inline list_builds(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "ListBuilds", args)

@inline list_builds(args) = list_builds(default_aws_config(), args)


"""
    using AWSSDK.CodeBuild.list_builds_for_project
    list_builds_for_project([::AWSConfig], arguments::Dict)
    list_builds_for_project([::AWSConfig]; projectName=, <keyword arguments>)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "ListBuildsForProject", arguments::Dict)
    codebuild([::AWSConfig], "ListBuildsForProject", projectName=, <keyword arguments>)

# ListBuildsForProject Operation

Gets a list of build IDs for the specified build project, with each build ID representing a single build.

# Arguments

## `projectName = ::String` -- *Required*
The name of the build project.


## `sortOrder = "ASCENDING" or "DESCENDING"`
The order to list build IDs. Valid values include:

*   `ASCENDING`: List the build IDs in ascending order by build ID.

*   `DESCENDING`: List the build IDs in descending order by build ID.


## `nextToken = ::String`
During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a *next token*. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.




# Returns

`ListBuildsForProjectOutput`

# Exceptions

`InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildsForProject)
"""

@inline list_builds_for_project(aws::AWSConfig=default_aws_config(); args...) = list_builds_for_project(aws, args)

@inline list_builds_for_project(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "ListBuildsForProject", args)

@inline list_builds_for_project(args) = list_builds_for_project(default_aws_config(), args)


"""
    using AWSSDK.CodeBuild.list_curated_environment_images
    list_curated_environment_images([::AWSConfig], arguments::Dict)
    list_curated_environment_images([::AWSConfig]; )

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "ListCuratedEnvironmentImages", arguments::Dict)
    codebuild([::AWSConfig], "ListCuratedEnvironmentImages", )

# ListCuratedEnvironmentImages Operation

Gets information about Docker images that are managed by AWS CodeBuild.

# Arguments



# Returns

`ListCuratedEnvironmentImagesOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListCuratedEnvironmentImages)
"""

@inline list_curated_environment_images(aws::AWSConfig=default_aws_config(); args...) = list_curated_environment_images(aws, args)

@inline list_curated_environment_images(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "ListCuratedEnvironmentImages", args)

@inline list_curated_environment_images(args) = list_curated_environment_images(default_aws_config(), args)


"""
    using AWSSDK.CodeBuild.list_projects
    list_projects([::AWSConfig], arguments::Dict)
    list_projects([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "ListProjects", arguments::Dict)
    codebuild([::AWSConfig], "ListProjects", <keyword arguments>)

# ListProjects Operation

Gets a list of build project names, with each build project name representing a single build project.

# Arguments

## `sortBy = "NAME", "CREATED_TIME" or "LAST_MODIFIED_TIME"`
The criterion to be used to list build project names. Valid values include:

*   `CREATED_TIME`: List the build project names based on when each build project was created.

*   `LAST_MODIFIED_TIME`: List the build project names based on when information about each build project was last changed.

*   `NAME`: List the build project names based on each build project's name.

Use `sortOrder` to specify in what order to list the build project names based on the preceding criteria.


## `sortOrder = "ASCENDING" or "DESCENDING"`
The order in which to list build projects. Valid values include:

*   `ASCENDING`: List the build project names in ascending order.

*   `DESCENDING`: List the build project names in descending order.

Use `sortBy` to specify the criterion to be used to list build project names.


## `nextToken = ::String`
During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a *next token*. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.




# Returns

`ListProjectsOutput`

# Exceptions

`InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListProjects)
"""

@inline list_projects(aws::AWSConfig=default_aws_config(); args...) = list_projects(aws, args)

@inline list_projects(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "ListProjects", args)

@inline list_projects(args) = list_projects(default_aws_config(), args)


"""
    using AWSSDK.CodeBuild.start_build
    start_build([::AWSConfig], arguments::Dict)
    start_build([::AWSConfig]; projectName=, <keyword arguments>)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "StartBuild", arguments::Dict)
    codebuild([::AWSConfig], "StartBuild", projectName=, <keyword arguments>)

# StartBuild Operation

Starts running a build.

# Arguments

## `projectName = ::String` -- *Required*
The name of the build project to start running a build.


## `sourceVersion = ::String`
A version of the build input to be built, for this build only. If not specified, the latest version will be used. If specified, must be one of:

*   For AWS CodeCommit or GitHub: the commit ID to use.

*   For Amazon Simple Storage Service (Amazon S3): the version ID of the object representing the build input ZIP file to use.


## `artifactsOverride = [ ... ]`
Build output artifact settings that override, for this build only, the latest ones already defined in the build project.
```
 artifactsOverride = [
        "type" => <required> "CODEPIPELINE", "S3" or "NO_ARTIFACTS",
        "location" =>  ::String,
        "path" =>  ::String,
        "namespaceType" =>  "NONE" or "BUILD_ID",
        "name" =>  ::String,
        "packaging" =>  "NONE" or "ZIP"
    ]
```

## `environmentVariablesOverride = [[ ... ], ...]`
A set of environment variables that overrides, for this build only, the latest ones already defined in the build project.
```
 environmentVariablesOverride = [[
        "name" => <required> ::String,
        "value" => <required> ::String
    ], ...]
```

## `buildspecOverride = ::String`
A build spec declaration that overrides, for this build only, the latest one already defined in the build project.


## `timeoutInMinutesOverride = ::Int`
The number of build timeout minutes, from 5 to 480 (8 hours), that overrides, for this build only, the latest setting already defined in the build project.




# Returns

`StartBuildOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `AccountLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartBuild)
"""

@inline start_build(aws::AWSConfig=default_aws_config(); args...) = start_build(aws, args)

@inline start_build(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "StartBuild", args)

@inline start_build(args) = start_build(default_aws_config(), args)


"""
    using AWSSDK.CodeBuild.stop_build
    stop_build([::AWSConfig], arguments::Dict)
    stop_build([::AWSConfig]; id=)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "StopBuild", arguments::Dict)
    codebuild([::AWSConfig], "StopBuild", id=)

# StopBuild Operation

Attempts to stop running a build.

# Arguments

## `id = ::String` -- *Required*
The ID of the build.




# Returns

`StopBuildOutput`

# Exceptions

`InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StopBuild)
"""

@inline stop_build(aws::AWSConfig=default_aws_config(); args...) = stop_build(aws, args)

@inline stop_build(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "StopBuild", args)

@inline stop_build(args) = stop_build(default_aws_config(), args)


"""
    using AWSSDK.CodeBuild.update_project
    update_project([::AWSConfig], arguments::Dict)
    update_project([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "UpdateProject", arguments::Dict)
    codebuild([::AWSConfig], "UpdateProject", name=, <keyword arguments>)

# UpdateProject Operation

Changes the settings of a build project.

# Arguments

## `name = ::String` -- *Required*
The name of the build project.

**Note**
> You cannot change a build project's name.


## `description = ::String`
A new or replacement description of the build project.


## `source = [ ... ]`
Information to be changed about the build input source code for the build project.
```
 source = [
        "type" => <required> "CODECOMMIT", "CODEPIPELINE", "GITHUB" or "S3",
        "location" =>  ::String,
        "buildspec" =>  ::String,
        "auth" =>  [
            "type" => <required> "OAUTH",
            "resource" =>  ::String
        ]
    ]
```

## `artifacts = [ ... ]`
Information to be changed about the build output artifacts for the build project.
```
 artifacts = [
        "type" => <required> "CODEPIPELINE", "S3" or "NO_ARTIFACTS",
        "location" =>  ::String,
        "path" =>  ::String,
        "namespaceType" =>  "NONE" or "BUILD_ID",
        "name" =>  ::String,
        "packaging" =>  "NONE" or "ZIP"
    ]
```

## `environment = [ ... ]`
Information to be changed about the build environment for the build project.
```
 environment = [
        "type" => <required> "LINUX_CONTAINER",
        "image" => <required> ::String,
        "computeType" => <required> "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM" or "BUILD_GENERAL1_LARGE",
        "environmentVariables" =>  [[
            "name" => <required> ::String,
            "value" => <required> ::String
        ], ...],
        "privilegedMode" =>  ::Bool
    ]
```

## `serviceRole = ::String`
The replacement ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.


## `timeoutInMinutes = ::Int`
The replacement value in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed.


## `encryptionKey = ::String`
The replacement AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.

You can specify either the CMK's Amazon Resource Name (ARN) or, if available, the CMK's alias (using the format `alias/*alias-name*` ).


## `tags = [[ ... ], ...]`
The replacement set of tags for this build project.

These tags are available for use by AWS services that support AWS CodeBuild build project tags.
```
 tags = [[
        "key" =>  ::String,
        "value" =>  ::String
    ], ...]
```



# Returns

`UpdateProjectOutput`

# Exceptions

`InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProject)
"""

@inline update_project(aws::AWSConfig=default_aws_config(); args...) = update_project(aws, args)

@inline update_project(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "UpdateProject", args)

@inline update_project(args) = update_project(default_aws_config(), args)




end # module CodeBuild


#==============================================================================#
# End of file
#==============================================================================#
