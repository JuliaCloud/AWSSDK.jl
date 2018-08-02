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
    using AWSSDK.CodeBuild.batch_delete_builds
    batch_delete_builds([::AWSConfig], arguments::Dict)
    batch_delete_builds([::AWSConfig]; ids=)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "BatchDeleteBuilds", arguments::Dict)
    codebuild([::AWSConfig], "BatchDeleteBuilds", ids=)

# BatchDeleteBuilds Operation

Deletes one or more builds.

# Arguments

## `ids = [::String, ...]` -- *Required*
The IDs of the builds to delete.




# Returns

`BatchDeleteBuildsOutput`

# Exceptions

`InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchDeleteBuilds)
"""
@inline batch_delete_builds(aws::AWSConfig=default_aws_config(); args...) = batch_delete_builds(aws, args)

@inline batch_delete_builds(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "BatchDeleteBuilds", args)

@inline batch_delete_builds(args) = batch_delete_builds(default_aws_config(), args)


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

# Example: To get information about builds

The following example gets information about builds with the specified build IDs.

Input:
```
[
    "ids" => [
        "codebuild-demo-project:9b0ac37f-d19e-4254-9079-f47e9a389eEX",
        "codebuild-demo-project:b79a46f7-1473-4636-a23f-da9c45c208EX"
    ]
]
```

Output:
```
Dict(
    "builds" => [
        Dict(
            "arn" => "arn:aws:codebuild:us-east-1:123456789012:build/codebuild-demo-project:9b0ac37f-d19e-4254-9079-f47e9a389eEX",
            "artifacts" => Dict(
                "location" => "arn:aws:s3:::codebuild-123456789012-output-bucket/codebuild-demo-project"
            ),
            "buildComplete" => true,
            "buildStatus" => "SUCCEEDED",
            "currentPhase" => "COMPLETED",
            "endTime" => 1.479832474764e9,
            "environment" => Dict(
                "type" => "LINUX_CONTAINER",
                "computeType" => "BUILD_GENERAL1_SMALL",
                "environmentVariables" => [

                ],
                "image" => "aws/codebuild/java:openjdk-8",
                "privilegedMode" => false
            ),
            "id" => "codebuild-demo-project:9b0ac37f-d19e-4254-9079-f47e9a389eEX",
            "initiator" => "MyDemoUser",
            "logs" => Dict(
                "deepLink" => "https://console.aws.amazon.com/cloudwatch/home?region=us-east-1#logEvent:group=/aws/codebuild/codebuild-demo-project;stream=9b0ac37f-d19e-4254-9079-f47e9a389eEX",
                "groupName" => "/aws/codebuild/codebuild-demo-project",
                "streamName" => "9b0ac37f-d19e-4254-9079-f47e9a389eEX"
            ),
            "phases" => [
                Dict(
                    "durationInSeconds" => 0,
                    "endTime" => 1.47983234223e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "SUBMITTED",
                    "startTime" => 1.479832341854e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 72,
                    "endTime" => 1.479832415064e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "PROVISIONING",
                    "startTime" => 1.47983234223e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 46,
                    "endTime" => 1.479832461261e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "DOWNLOAD_SOURCE",
                    "startTime" => 1.479832415064e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 0,
                    "endTime" => 1.479832461354e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "INSTALL",
                    "startTime" => 1.479832461261e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 0,
                    "endTime" => 1.479832461448e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "PRE_BUILD",
                    "startTime" => 1.479832461354e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 9,
                    "endTime" => 1.479832471115e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "BUILD",
                    "startTime" => 1.479832461448e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 0,
                    "endTime" => 1.479832471224e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "POST_BUILD",
                    "startTime" => 1.479832471115e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 0,
                    "endTime" => 1.479832471791e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "UPLOAD_ARTIFACTS",
                    "startTime" => 1.479832471224e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 2,
                    "endTime" => 1.479832474764e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "FINALIZING",
                    "startTime" => 1.479832471791e9
                ),
                Dict(
                    "phaseType" => "COMPLETED",
                    "startTime" => 1.479832474764e9
                )
            ],
            "projectName" => "codebuild-demo-project",
            "source" => Dict(
                "type" => "S3",
                "buildspec" => "",
                "location" => "arn:aws:s3:::codebuild-123456789012-input-bucket/MessageUtil.zip"
            ),
            "startTime" => 1.479832341854e9,
            "timeoutInMinutes" => 60
        ),
        Dict(
            "arn" => "arn:aws:codebuild:us-east-1:123456789012:build/codebuild-demo-project:b79a46f7-1473-4636-a23f-da9c45c208EX",
            "artifacts" => Dict(
                "location" => "arn:aws:s3:::codebuild-123456789012-output-bucket/codebuild-demo-project"
            ),
            "buildComplete" => true,
            "buildStatus" => "SUCCEEDED",
            "currentPhase" => "COMPLETED",
            "endTime" => 1.479401214239e9,
            "environment" => Dict(
                "type" => "LINUX_CONTAINER",
                "computeType" => "BUILD_GENERAL1_SMALL",
                "environmentVariables" => [

                ],
                "image" => "aws/codebuild/java:openjdk-8",
                "privilegedMode" => false
            ),
            "id" => "codebuild-demo-project:b79a46f7-1473-4636-a23f-da9c45c208EX",
            "initiator" => "MyDemoUser",
            "logs" => Dict(
                "deepLink" => "https://console.aws.amazon.com/cloudwatch/home?region=us-east-1#logEvent:group=/aws/codebuild/codebuild-demo-project;stream=b79a46f7-1473-4636-a23f-da9c45c208EX",
                "groupName" => "/aws/codebuild/codebuild-demo-project",
                "streamName" => "b79a46f7-1473-4636-a23f-da9c45c208EX"
            ),
            "phases" => [
                Dict(
                    "durationInSeconds" => 0,
                    "endTime" => 1.479401082342e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "SUBMITTED",
                    "startTime" => 1.479401081869e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 71,
                    "endTime" => 1.479401154129e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "PROVISIONING",
                    "startTime" => 1.479401082342e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 45,
                    "endTime" => 1.479401199136e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "DOWNLOAD_SOURCE",
                    "startTime" => 1.479401154129e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 0,
                    "endTime" => 1.479401199236e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "INSTALL",
                    "startTime" => 1.479401199136e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 0,
                    "endTime" => 1.479401199345e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "PRE_BUILD",
                    "startTime" => 1.479401199236e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 9,
                    "endTime" => 1.47940120868e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "BUILD",
                    "startTime" => 1.479401199345e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 0,
                    "endTime" => 1.479401208783e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "POST_BUILD",
                    "startTime" => 1.47940120868e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 0,
                    "endTime" => 1.479401209463e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "UPLOAD_ARTIFACTS",
                    "startTime" => 1.479401208783e9
                ),
                Dict(
                    "contexts" => [

                    ],
                    "durationInSeconds" => 4,
                    "endTime" => 1.479401214239e9,
                    "phaseStatus" => "SUCCEEDED",
                    "phaseType" => "FINALIZING",
                    "startTime" => 1.479401209463e9
                ),
                Dict(
                    "phaseType" => "COMPLETED",
                    "startTime" => 1.479401214239e9
                )
            ],
            "projectName" => "codebuild-demo-project",
            "source" => Dict(
                "type" => "S3",
                "location" => "arn:aws:s3:::codebuild-123456789012-input-bucket/MessageUtil.zip"
            ),
            "startTime" => 1.479401081869e9,
            "timeoutInMinutes" => 60
        )
    ]
)
```

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
    create_project([::AWSConfig]; name=, source=, artifacts=, environment=, serviceRole=, <keyword arguments>)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "CreateProject", arguments::Dict)
    codebuild([::AWSConfig], "CreateProject", name=, source=, artifacts=, environment=, serviceRole=, <keyword arguments>)

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
        "type" => <required> "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET" or "GITHUB_ENTERPRISE",
        "location" =>  ::String,
        "gitCloneDepth" =>  ::Int,
        "buildspec" =>  ::String,
        "auth" =>  [
            "type" => <required> "OAUTH",
            "resource" =>  ::String
        ],
        "reportBuildStatus" =>  ::Bool,
        "insecureSsl" =>  ::Bool
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
        "packaging" =>  "NONE" or "ZIP",
        "encryptionDisabled" =>  ::Bool
    ]
```

## `cache = [ ... ]`
Stores recently used information so that it can be quickly accessed at a later time.
```
 cache = [
        "type" => <required> "NO_CACHE" or "S3",
        "location" =>  ::String
    ]
```

## `environment = [ ... ]` -- *Required*
Information about the build environment for the build project.
```
 environment = [
        "type" => <required> "WINDOWS_CONTAINER" or "LINUX_CONTAINER",
        "image" => <required> ::String,
        "computeType" => <required> "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM" or "BUILD_GENERAL1_LARGE",
        "environmentVariables" =>  [[
            "name" => <required> ::String,
            "value" => <required> ::String,
            "type" =>  "PLAINTEXT" or "PARAMETER_STORE"
        ], ...],
        "privilegedMode" =>  ::Bool,
        "certificate" =>  ::String
    ]
```

## `serviceRole = ::String` -- *Required*
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

## `vpcConfig = [ ... ]`
VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.
```
 vpcConfig = [
        "vpcId" =>  ::String,
        "subnets" =>  [::String, ...],
        "securityGroupIds" =>  [::String, ...]
    ]
```

## `badgeEnabled = ::Bool`
Set this to true to generate a publicly-accessible URL for your project's build badge.




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
    using AWSSDK.CodeBuild.create_webhook
    create_webhook([::AWSConfig], arguments::Dict)
    create_webhook([::AWSConfig]; projectName=, <keyword arguments>)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "CreateWebhook", arguments::Dict)
    codebuild([::AWSConfig], "CreateWebhook", projectName=, <keyword arguments>)

# CreateWebhook Operation

For an existing AWS CodeBuild build project that has its source code stored in a GitHub repository, enables AWS CodeBuild to begin automatically rebuilding the source code every time a code change is pushed to the repository.

**Important**
> If you enable webhooks for an AWS CodeBuild project, and the project is used as a build step in AWS CodePipeline, then two identical builds will be created for each commit. One build is triggered through webhooks, and one through AWS CodePipeline. Because billing is on a per-build basis, you will be billed for both builds. Therefore, if you are using AWS CodePipeline, we recommend that you disable webhooks in CodeBuild. In the AWS CodeBuild console, clear the Webhook box. For more information, see step 5 in [Change a Build Project's Settings](http://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console).

# Arguments

## `projectName = ::String` -- *Required*
The name of the AWS CodeBuild project.


## `branchFilter = ::String`
A regular expression used to determine which branches in a repository are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If it doesn't match, then it is not. If branchFilter is empty, then all branches are built.




# Returns

`CreateWebhookOutput`

# Exceptions

`InvalidInputException`, `OAuthProviderException`, `ResourceAlreadyExistsException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateWebhook)
"""
@inline create_webhook(aws::AWSConfig=default_aws_config(); args...) = create_webhook(aws, args)

@inline create_webhook(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "CreateWebhook", args)

@inline create_webhook(args) = create_webhook(default_aws_config(), args)


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
    using AWSSDK.CodeBuild.delete_webhook
    delete_webhook([::AWSConfig], arguments::Dict)
    delete_webhook([::AWSConfig]; projectName=)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "DeleteWebhook", arguments::Dict)
    codebuild([::AWSConfig], "DeleteWebhook", projectName=)

# DeleteWebhook Operation

For an existing AWS CodeBuild build project that has its source code stored in a GitHub repository, stops AWS CodeBuild from automatically rebuilding the source code every time a code change is pushed to the repository.

# Arguments

## `projectName = ::String` -- *Required*
The name of the AWS CodeBuild project.




# Returns

`DeleteWebhookOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `OAuthProviderException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteWebhook)
"""
@inline delete_webhook(aws::AWSConfig=default_aws_config(); args...) = delete_webhook(aws, args)

@inline delete_webhook(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "DeleteWebhook", args)

@inline delete_webhook(args) = delete_webhook(default_aws_config(), args)


"""
    using AWSSDK.CodeBuild.invalidate_project_cache
    invalidate_project_cache([::AWSConfig], arguments::Dict)
    invalidate_project_cache([::AWSConfig]; projectName=)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "InvalidateProjectCache", arguments::Dict)
    codebuild([::AWSConfig], "InvalidateProjectCache", projectName=)

# InvalidateProjectCache Operation

Resets the cache for a project.

# Arguments

## `projectName = ::String` -- *Required*
The name of the AWS CodeBuild build project that the cache will be reset for.




# Returns

`InvalidateProjectCacheOutput`

# Exceptions

`InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/InvalidateProjectCache)
"""
@inline invalidate_project_cache(aws::AWSConfig=default_aws_config(); args...) = invalidate_project_cache(aws, args)

@inline invalidate_project_cache(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "InvalidateProjectCache", args)

@inline invalidate_project_cache(args) = invalidate_project_cache(default_aws_config(), args)


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
The name of the AWS CodeBuild project.


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
The name of the AWS CodeBuild build project to start running a build.


## `sourceVersion = ::String`
A version of the build input to be built, for this build only. If not specified, the latest version will be used. If specified, must be one of:

*   For AWS CodeCommit: the commit ID to use.

*   For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format `pr/pull-request-ID` (for example `pr/25`). If a branch name is specified, the branch's HEAD commit ID will be used. If not specified, the default branch's HEAD commit ID will be used.

*   For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID will be used. If not specified, the default branch's HEAD commit ID will be used.

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
        "packaging" =>  "NONE" or "ZIP",
        "encryptionDisabled" =>  ::Bool
    ]
```

## `environmentVariablesOverride = [[ ... ], ...]`
A set of environment variables that overrides, for this build only, the latest ones already defined in the build project.
```
 environmentVariablesOverride = [[
        "name" => <required> ::String,
        "value" => <required> ::String,
        "type" =>  "PLAINTEXT" or "PARAMETER_STORE"
    ], ...]
```

## `sourceTypeOverride = "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET" or "GITHUB_ENTERPRISE"`
A source input type for this build that overrides the source input defined in the build project


## `sourceLocationOverride = ::String`
A location that overrides for this build the source location for the one defined in the build project.


## `sourceAuthOverride = [ ... ]`
An authorization type for this build that overrides the one defined in the build project. This override applies only if the build project's source is BitBucket or GitHub.
```
 sourceAuthOverride = [
        "type" => <required> "OAUTH",
        "resource" =>  ::String
    ]
```

## `gitCloneDepthOverride = ::Int`
The user-defined depth of history, with a minimum value of 0, that overrides, for this build only, any previous depth of history defined in the build project.


## `buildspecOverride = ::String`
A build spec declaration that overrides, for this build only, the latest one already defined in the build project.


## `insecureSslOverride = ::Bool`
Enable this flag to override the insecure SSL setting that is specified in the build project. The insecure SSL setting determines whether to ignore SSL warnings while connecting to the project source code. This override applies only if the build's source is GitHub Enterprise.


## `reportBuildStatusOverride = ::Bool`
Set to true to report to your source provider the status of a build's start and completion. If you use this option with a source provider other than GitHub, an invalidInputException is thrown.


## `environmentTypeOverride = "WINDOWS_CONTAINER" or "LINUX_CONTAINER"`
A container type for this build that overrides the one specified in the build project.


## `imageOverride = ::String`
The name of an image for this build that overrides the one specified in the build project.


## `computeTypeOverride = "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM" or "BUILD_GENERAL1_LARGE"`
The name of a compute type for this build that overrides the one specified in the build project.


## `certificateOverride = ::String`
The name of a certificate for this build that overrides the one specified in the build project.


## `cacheOverride = [ ... ]`
A ProjectCache object specified for this build that overrides the one defined in the build project.
```
 cacheOverride = [
        "type" => <required> "NO_CACHE" or "S3",
        "location" =>  ::String
    ]
```

## `serviceRoleOverride = ::String`
The name of a service role for this build that overrides the one specified in the build project.


## `privilegedModeOverride = ::Bool`
Enable this flag to override privileged mode in the build project.


## `timeoutInMinutesOverride = ::Int`
The number of build timeout minutes, from 5 to 480 (8 hours), that overrides, for this build only, the latest setting already defined in the build project.


## `idempotencyToken = ::String`
A unique, case sensitive identifier you provide to ensure the idempotency of the StartBuild request. The token is included in the StartBuild request and is valid for 12 hours. If you repeat the StartBuild request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error.




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
        "type" => <required> "CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET" or "GITHUB_ENTERPRISE",
        "location" =>  ::String,
        "gitCloneDepth" =>  ::Int,
        "buildspec" =>  ::String,
        "auth" =>  [
            "type" => <required> "OAUTH",
            "resource" =>  ::String
        ],
        "reportBuildStatus" =>  ::Bool,
        "insecureSsl" =>  ::Bool
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
        "packaging" =>  "NONE" or "ZIP",
        "encryptionDisabled" =>  ::Bool
    ]
```

## `cache = [ ... ]`
Stores recently used information so that it can be quickly accessed at a later time.
```
 cache = [
        "type" => <required> "NO_CACHE" or "S3",
        "location" =>  ::String
    ]
```

## `environment = [ ... ]`
Information to be changed about the build environment for the build project.
```
 environment = [
        "type" => <required> "WINDOWS_CONTAINER" or "LINUX_CONTAINER",
        "image" => <required> ::String,
        "computeType" => <required> "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM" or "BUILD_GENERAL1_LARGE",
        "environmentVariables" =>  [[
            "name" => <required> ::String,
            "value" => <required> ::String,
            "type" =>  "PLAINTEXT" or "PARAMETER_STORE"
        ], ...],
        "privilegedMode" =>  ::Bool,
        "certificate" =>  ::String
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

## `vpcConfig = [ ... ]`
VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.
```
 vpcConfig = [
        "vpcId" =>  ::String,
        "subnets" =>  [::String, ...],
        "securityGroupIds" =>  [::String, ...]
    ]
```

## `badgeEnabled = ::Bool`
Set this to true to generate a publicly-accessible URL for your project's build badge.




# Returns

`UpdateProjectOutput`

# Exceptions

`InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProject)
"""
@inline update_project(aws::AWSConfig=default_aws_config(); args...) = update_project(aws, args)

@inline update_project(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "UpdateProject", args)

@inline update_project(args) = update_project(default_aws_config(), args)


"""
    using AWSSDK.CodeBuild.update_webhook
    update_webhook([::AWSConfig], arguments::Dict)
    update_webhook([::AWSConfig]; projectName=, <keyword arguments>)

    using AWSCore.Services.codebuild
    codebuild([::AWSConfig], "UpdateWebhook", arguments::Dict)
    codebuild([::AWSConfig], "UpdateWebhook", projectName=, <keyword arguments>)

# UpdateWebhook Operation

Updates the webhook associated with an AWS CodeBuild build project.

# Arguments

## `projectName = ::String` -- *Required*
The name of the AWS CodeBuild project.


## `branchFilter = ::String`
A regular expression used to determine which branches in a repository are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If it doesn't match, then it is not. If branchFilter is empty, then all branches are built.


## `rotateSecret = ::Bool`
A boolean value that specifies whether the associated repository's secret token should be updated.




# Returns

`UpdateWebhookOutput`

# Exceptions

`InvalidInputException`, `ResourceNotFoundException` or `OAuthProviderException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateWebhook)
"""
@inline update_webhook(aws::AWSConfig=default_aws_config(); args...) = update_webhook(aws, args)

@inline update_webhook(aws::AWSConfig, args) = AWSCore.Services.codebuild(aws, "UpdateWebhook", args)

@inline update_webhook(args) = update_webhook(default_aws_config(), args)




end # module CodeBuild


#==============================================================================#
# End of file
#==============================================================================#
