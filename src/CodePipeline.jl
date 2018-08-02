#==============================================================================#
# CodePipeline.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/codepipeline-2015-07-09.normal.json
#==============================================================================#

__precompile__()

module CodePipeline

using AWSCore


"""
    using AWSSDK.CodePipeline.acknowledge_job
    acknowledge_job([::AWSConfig], arguments::Dict)
    acknowledge_job([::AWSConfig]; jobId=, nonce=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "AcknowledgeJob", arguments::Dict)
    codepipeline([::AWSConfig], "AcknowledgeJob", jobId=, nonce=)

# AcknowledgeJob Operation

Returns information about a specified job and whether that job has been received by the job worker. Only used for custom actions.

# Arguments

## `jobId = ::String` -- *Required*
The unique system-generated ID of the job for which you want to confirm receipt.


## `nonce = ::String` -- *Required*
A system-generated random number that AWS CodePipeline uses to ensure that the job is being worked on by only one job worker. Get this number from the response of the [PollForJobs](@ref) request that returned this job.




# Returns

`AcknowledgeJobOutput`

# Exceptions

`ValidationException`, `InvalidNonceException` or `JobNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/AcknowledgeJob)
"""
@inline acknowledge_job(aws::AWSConfig=default_aws_config(); args...) = acknowledge_job(aws, args)

@inline acknowledge_job(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "AcknowledgeJob", args)

@inline acknowledge_job(args) = acknowledge_job(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.acknowledge_third_party_job
    acknowledge_third_party_job([::AWSConfig], arguments::Dict)
    acknowledge_third_party_job([::AWSConfig]; jobId=, nonce=, clientToken=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "AcknowledgeThirdPartyJob", arguments::Dict)
    codepipeline([::AWSConfig], "AcknowledgeThirdPartyJob", jobId=, nonce=, clientToken=)

# AcknowledgeThirdPartyJob Operation

Confirms a job worker has received the specified job. Only used for partner actions.

# Arguments

## `jobId = ::String` -- *Required*
The unique system-generated ID of the job.


## `nonce = ::String` -- *Required*
A system-generated random number that AWS CodePipeline uses to ensure that the job is being worked on by only one job worker. Get this number from the response to a [GetThirdPartyJobDetails](@ref) request.


## `clientToken = ::String` -- *Required*
The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.




# Returns

`AcknowledgeThirdPartyJobOutput`

# Exceptions

`ValidationException`, `InvalidNonceException`, `JobNotFoundException` or `InvalidClientTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/AcknowledgeThirdPartyJob)
"""
@inline acknowledge_third_party_job(aws::AWSConfig=default_aws_config(); args...) = acknowledge_third_party_job(aws, args)

@inline acknowledge_third_party_job(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "AcknowledgeThirdPartyJob", args)

@inline acknowledge_third_party_job(args) = acknowledge_third_party_job(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.create_custom_action_type
    create_custom_action_type([::AWSConfig], arguments::Dict)
    create_custom_action_type([::AWSConfig]; category=, provider=, version=, inputArtifactDetails=, outputArtifactDetails=, <keyword arguments>)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "CreateCustomActionType", arguments::Dict)
    codepipeline([::AWSConfig], "CreateCustomActionType", category=, provider=, version=, inputArtifactDetails=, outputArtifactDetails=, <keyword arguments>)

# CreateCustomActionType Operation

Creates a new custom action that can be used in all pipelines associated with the AWS account. Only used for custom actions.

# Arguments

## `category = "Source", "Build", "Deploy", "Test", "Invoke" or "Approval"` -- *Required*
The category of the custom action, such as a build action or a test action.

**Note**
> Although Source and Approval are listed as valid values, they are not currently functional. These values are reserved for future use.


## `provider = ::String` -- *Required*
The provider of the service used in the custom action, such as AWS CodeDeploy.


## `version = ::String` -- *Required*
The version identifier of the custom action.


## `settings = [ ... ]`
Returns information about the settings for an action type.
```
 settings = [
        "thirdPartyConfigurationUrl" =>  ::String,
        "entityUrlTemplate" =>  ::String,
        "executionUrlTemplate" =>  ::String,
        "revisionUrlTemplate" =>  ::String
    ]
```

## `configurationProperties = [[ ... ], ...]`
The configuration properties for the custom action.

**Note**
> You can refer to a name in the configuration properties of the custom action within the URL templates by following the format of {Config:name}, as long as the configuration property is both required and not secret. For more information, see [Create a Custom Action for a Pipeline](http://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html).
```
 configurationProperties = [[
        "name" => <required> ::String,
        "required" => <required> ::Bool,
        "key" => <required> ::Bool,
        "secret" => <required> ::Bool,
        "queryable" =>  ::Bool,
        "description" =>  ::String,
        "type" =>  "String", "Number" or "Boolean"
    ], ...]
```

## `inputArtifactDetails = [ ... ]` -- *Required*
The details of the input artifact for the action, such as its commit ID.
```
 inputArtifactDetails = [
        "minimumCount" => <required> ::Int,
        "maximumCount" => <required> ::Int
    ]
```

## `outputArtifactDetails = [ ... ]` -- *Required*
The details of the output artifact of the action, such as its commit ID.
```
 outputArtifactDetails = [
        "minimumCount" => <required> ::Int,
        "maximumCount" => <required> ::Int
    ]
```



# Returns

`CreateCustomActionTypeOutput`

# Exceptions

`ValidationException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/CreateCustomActionType)
"""
@inline create_custom_action_type(aws::AWSConfig=default_aws_config(); args...) = create_custom_action_type(aws, args)

@inline create_custom_action_type(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "CreateCustomActionType", args)

@inline create_custom_action_type(args) = create_custom_action_type(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.create_pipeline
    create_pipeline([::AWSConfig], arguments::Dict)
    create_pipeline([::AWSConfig]; pipeline=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "CreatePipeline", arguments::Dict)
    codepipeline([::AWSConfig], "CreatePipeline", pipeline=)

# CreatePipeline Operation

Creates a pipeline.

# Arguments

## `pipeline = [ ... ]` -- *Required*
Represents the structure of actions and stages to be performed in the pipeline.
```
 pipeline = [
        "name" => <required> ::String,
        "roleArn" => <required> ::String,
        "artifactStore" => <required> [
            "type" => <required> "S3",
            "location" => <required> ::String,
            "encryptionKey" =>  [
                "id" => <required> ::String,
                "type" => <required> "KMS"
            ]
        ],
        "stages" => <required> [[
            "name" => <required> ::String,
            "blockers" =>  [[
                "name" => <required> ::String,
                "type" => <required> "Schedule"
            ], ...],
            "actions" => <required> [[
                "name" => <required> ::String,
                "actionTypeId" => <required> [
                    "category" => <required> "Source", "Build", "Deploy", "Test", "Invoke" or "Approval",
                    "owner" => <required> "AWS", "ThirdParty" or "Custom",
                    "provider" => <required> ::String,
                    "version" => <required> ::String
                ],
                "runOrder" =>  ::Int,
                "configuration" =>  ::Dict{String,String},
                "outputArtifacts" =>  [["name" => <required> ::String], ...],
                "inputArtifacts" =>  [["name" => <required> ::String], ...],
                "roleArn" =>  ::String
            ], ...]
        ], ...],
        "version" =>  ::Int
    ]
```



# Returns

`CreatePipelineOutput`

# Exceptions

`ValidationException`, `PipelineNameInUseException`, `InvalidStageDeclarationException`, `InvalidActionDeclarationException`, `InvalidBlockerDeclarationException`, `InvalidStructureException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/CreatePipeline)
"""
@inline create_pipeline(aws::AWSConfig=default_aws_config(); args...) = create_pipeline(aws, args)

@inline create_pipeline(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "CreatePipeline", args)

@inline create_pipeline(args) = create_pipeline(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.delete_custom_action_type
    delete_custom_action_type([::AWSConfig], arguments::Dict)
    delete_custom_action_type([::AWSConfig]; category=, provider=, version=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "DeleteCustomActionType", arguments::Dict)
    codepipeline([::AWSConfig], "DeleteCustomActionType", category=, provider=, version=)

# DeleteCustomActionType Operation

Marks a custom action as deleted. PollForJobs for the custom action will fail after the action is marked for deletion. Only used for custom actions.

**Important**
> To re-create a custom action after it has been deleted you must use a string in the version field that has never been used before. This string can be an incremented version number, for example. To restore a deleted custom action, use a JSON file that is identical to the deleted action, including the original string in the version field.

# Arguments

## `category = "Source", "Build", "Deploy", "Test", "Invoke" or "Approval"` -- *Required*
The category of the custom action that you want to delete, such as source or deploy.


## `provider = ::String` -- *Required*
The provider of the service used in the custom action, such as AWS CodeDeploy.


## `version = ::String` -- *Required*
The version of the custom action to delete.




# Exceptions

`ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeleteCustomActionType)
"""
@inline delete_custom_action_type(aws::AWSConfig=default_aws_config(); args...) = delete_custom_action_type(aws, args)

@inline delete_custom_action_type(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "DeleteCustomActionType", args)

@inline delete_custom_action_type(args) = delete_custom_action_type(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.delete_pipeline
    delete_pipeline([::AWSConfig], arguments::Dict)
    delete_pipeline([::AWSConfig]; name=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "DeletePipeline", arguments::Dict)
    codepipeline([::AWSConfig], "DeletePipeline", name=)

# DeletePipeline Operation

Deletes the specified pipeline.

# Arguments

## `name = ::String` -- *Required*
The name of the pipeline to be deleted.




# Exceptions

`ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeletePipeline)
"""
@inline delete_pipeline(aws::AWSConfig=default_aws_config(); args...) = delete_pipeline(aws, args)

@inline delete_pipeline(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "DeletePipeline", args)

@inline delete_pipeline(args) = delete_pipeline(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.delete_webhook
    delete_webhook([::AWSConfig], arguments::Dict)
    delete_webhook([::AWSConfig]; name=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "DeleteWebhook", arguments::Dict)
    codepipeline([::AWSConfig], "DeleteWebhook", name=)

# DeleteWebhook Operation

Deletes a previously created webhook by name. Deleting the webhook stops AWS CodePipeline from starting a pipeline every time an external event occurs. The API will return successfully when trying to delete a webhook that is already deleted. If a deleted webhook is re-created by calling PutWebhook with the same name, it will have a different URL.

# Arguments

## `name = ::String` -- *Required*
The name of the webhook you want to delete.




# Returns

`DeleteWebhookOutput`

# Exceptions

`ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeleteWebhook)
"""
@inline delete_webhook(aws::AWSConfig=default_aws_config(); args...) = delete_webhook(aws, args)

@inline delete_webhook(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "DeleteWebhook", args)

@inline delete_webhook(args) = delete_webhook(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.deregister_webhook_with_third_party
    deregister_webhook_with_third_party([::AWSConfig], arguments::Dict)
    deregister_webhook_with_third_party([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "DeregisterWebhookWithThirdParty", arguments::Dict)
    codepipeline([::AWSConfig], "DeregisterWebhookWithThirdParty", <keyword arguments>)

# DeregisterWebhookWithThirdParty Operation

Removes the connection between the webhook that was created by CodePipeline and the external tool with events to be detected. Currently only supported for webhooks that target an action type of GitHub.

# Arguments

## `webhookName = ::String`
The name of the webhook you want to deregister.




# Returns

`DeregisterWebhookWithThirdPartyOutput`

# Exceptions

`ValidationException` or `WebhookNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeregisterWebhookWithThirdParty)
"""
@inline deregister_webhook_with_third_party(aws::AWSConfig=default_aws_config(); args...) = deregister_webhook_with_third_party(aws, args)

@inline deregister_webhook_with_third_party(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "DeregisterWebhookWithThirdParty", args)

@inline deregister_webhook_with_third_party(args) = deregister_webhook_with_third_party(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.disable_stage_transition
    disable_stage_transition([::AWSConfig], arguments::Dict)
    disable_stage_transition([::AWSConfig]; pipelineName=, stageName=, transitionType=, reason=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "DisableStageTransition", arguments::Dict)
    codepipeline([::AWSConfig], "DisableStageTransition", pipelineName=, stageName=, transitionType=, reason=)

# DisableStageTransition Operation

Prevents artifacts in a pipeline from transitioning to the next stage in the pipeline.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of the pipeline in which you want to disable the flow of artifacts from one stage to another.


## `stageName = ::String` -- *Required*
The name of the stage where you want to disable the inbound or outbound transition of artifacts.


## `transitionType = "Inbound" or "Outbound"` -- *Required*
Specifies whether artifacts will be prevented from transitioning into the stage and being processed by the actions in that stage (inbound), or prevented from transitioning from the stage after they have been processed by the actions in that stage (outbound).


## `reason = ::String` -- *Required*
The reason given to the user why a stage is disabled, such as waiting for manual approval or manual tests. This message is displayed in the pipeline console UI.




# Exceptions

`ValidationException`, `PipelineNotFoundException` or `StageNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DisableStageTransition)
"""
@inline disable_stage_transition(aws::AWSConfig=default_aws_config(); args...) = disable_stage_transition(aws, args)

@inline disable_stage_transition(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "DisableStageTransition", args)

@inline disable_stage_transition(args) = disable_stage_transition(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.enable_stage_transition
    enable_stage_transition([::AWSConfig], arguments::Dict)
    enable_stage_transition([::AWSConfig]; pipelineName=, stageName=, transitionType=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "EnableStageTransition", arguments::Dict)
    codepipeline([::AWSConfig], "EnableStageTransition", pipelineName=, stageName=, transitionType=)

# EnableStageTransition Operation

Enables artifacts in a pipeline to transition to a stage in a pipeline.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of the pipeline in which you want to enable the flow of artifacts from one stage to another.


## `stageName = ::String` -- *Required*
The name of the stage where you want to enable the transition of artifacts, either into the stage (inbound) or from that stage to the next stage (outbound).


## `transitionType = "Inbound" or "Outbound"` -- *Required*
Specifies whether artifacts will be allowed to enter the stage and be processed by the actions in that stage (inbound) or whether already-processed artifacts will be allowed to transition to the next stage (outbound).




# Exceptions

`ValidationException`, `PipelineNotFoundException` or `StageNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/EnableStageTransition)
"""
@inline enable_stage_transition(aws::AWSConfig=default_aws_config(); args...) = enable_stage_transition(aws, args)

@inline enable_stage_transition(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "EnableStageTransition", args)

@inline enable_stage_transition(args) = enable_stage_transition(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.get_job_details
    get_job_details([::AWSConfig], arguments::Dict)
    get_job_details([::AWSConfig]; jobId=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "GetJobDetails", arguments::Dict)
    codepipeline([::AWSConfig], "GetJobDetails", jobId=)

# GetJobDetails Operation

Returns information about a job. Only used for custom actions.

**Important**
> When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action.

# Arguments

## `jobId = ::String` -- *Required*
The unique system-generated ID for the job.




# Returns

`GetJobDetailsOutput`

# Exceptions

`ValidationException` or `JobNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetJobDetails)
"""
@inline get_job_details(aws::AWSConfig=default_aws_config(); args...) = get_job_details(aws, args)

@inline get_job_details(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "GetJobDetails", args)

@inline get_job_details(args) = get_job_details(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.get_pipeline
    get_pipeline([::AWSConfig], arguments::Dict)
    get_pipeline([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "GetPipeline", arguments::Dict)
    codepipeline([::AWSConfig], "GetPipeline", name=, <keyword arguments>)

# GetPipeline Operation

Returns the metadata, structure, stages, and actions of a pipeline. Can be used to return the entire structure of a pipeline in JSON format, which can then be modified and used to update the pipeline structure with [UpdatePipeline](@ref).

# Arguments

## `name = ::String` -- *Required*
The name of the pipeline for which you want to get information. Pipeline names must be unique under an Amazon Web Services (AWS) user account.


## `version = ::Int`
The version number of the pipeline. If you do not specify a version, defaults to the most current version.




# Returns

`GetPipelineOutput`

# Exceptions

`ValidationException`, `PipelineNotFoundException` or `PipelineVersionNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetPipeline)
"""
@inline get_pipeline(aws::AWSConfig=default_aws_config(); args...) = get_pipeline(aws, args)

@inline get_pipeline(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "GetPipeline", args)

@inline get_pipeline(args) = get_pipeline(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.get_pipeline_execution
    get_pipeline_execution([::AWSConfig], arguments::Dict)
    get_pipeline_execution([::AWSConfig]; pipelineName=, pipelineExecutionId=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "GetPipelineExecution", arguments::Dict)
    codepipeline([::AWSConfig], "GetPipelineExecution", pipelineName=, pipelineExecutionId=)

# GetPipelineExecution Operation

Returns information about an execution of a pipeline, including details about artifacts, the pipeline execution ID, and the name, version, and status of the pipeline.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of the pipeline about which you want to get execution details.


## `pipelineExecutionId = ::String` -- *Required*
The ID of the pipeline execution about which you want to get execution details.




# Returns

`GetPipelineExecutionOutput`

# Exceptions

`ValidationException`, `PipelineNotFoundException` or `PipelineExecutionNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetPipelineExecution)
"""
@inline get_pipeline_execution(aws::AWSConfig=default_aws_config(); args...) = get_pipeline_execution(aws, args)

@inline get_pipeline_execution(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "GetPipelineExecution", args)

@inline get_pipeline_execution(args) = get_pipeline_execution(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.get_pipeline_state
    get_pipeline_state([::AWSConfig], arguments::Dict)
    get_pipeline_state([::AWSConfig]; name=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "GetPipelineState", arguments::Dict)
    codepipeline([::AWSConfig], "GetPipelineState", name=)

# GetPipelineState Operation

Returns information about the state of a pipeline, including the stages and actions.

# Arguments

## `name = ::String` -- *Required*
The name of the pipeline about which you want to get information.




# Returns

`GetPipelineStateOutput`

# Exceptions

`ValidationException` or `PipelineNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetPipelineState)
"""
@inline get_pipeline_state(aws::AWSConfig=default_aws_config(); args...) = get_pipeline_state(aws, args)

@inline get_pipeline_state(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "GetPipelineState", args)

@inline get_pipeline_state(args) = get_pipeline_state(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.get_third_party_job_details
    get_third_party_job_details([::AWSConfig], arguments::Dict)
    get_third_party_job_details([::AWSConfig]; jobId=, clientToken=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "GetThirdPartyJobDetails", arguments::Dict)
    codepipeline([::AWSConfig], "GetThirdPartyJobDetails", jobId=, clientToken=)

# GetThirdPartyJobDetails Operation

Requests the details of a job for a third party action. Only used for partner actions.

**Important**
> When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action.

# Arguments

## `jobId = ::String` -- *Required*
The unique system-generated ID used for identifying the job.


## `clientToken = ::String` -- *Required*
The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.




# Returns

`GetThirdPartyJobDetailsOutput`

# Exceptions

`JobNotFoundException`, `ValidationException`, `InvalidClientTokenException` or `InvalidJobException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetThirdPartyJobDetails)
"""
@inline get_third_party_job_details(aws::AWSConfig=default_aws_config(); args...) = get_third_party_job_details(aws, args)

@inline get_third_party_job_details(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "GetThirdPartyJobDetails", args)

@inline get_third_party_job_details(args) = get_third_party_job_details(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.list_action_types
    list_action_types([::AWSConfig], arguments::Dict)
    list_action_types([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "ListActionTypes", arguments::Dict)
    codepipeline([::AWSConfig], "ListActionTypes", <keyword arguments>)

# ListActionTypes Operation

Gets a summary of all AWS CodePipeline action types associated with your account.

# Arguments

## `actionOwnerFilter = "AWS", "ThirdParty" or "Custom"`
Filters the list of action types to those created by a specified entity.


## `nextToken = ::String`
An identifier that was returned from the previous list action types call, which can be used to return the next set of action types in the list.




# Returns

`ListActionTypesOutput`

# Exceptions

`ValidationException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListActionTypes)
"""
@inline list_action_types(aws::AWSConfig=default_aws_config(); args...) = list_action_types(aws, args)

@inline list_action_types(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "ListActionTypes", args)

@inline list_action_types(args) = list_action_types(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.list_pipeline_executions
    list_pipeline_executions([::AWSConfig], arguments::Dict)
    list_pipeline_executions([::AWSConfig]; pipelineName=, <keyword arguments>)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "ListPipelineExecutions", arguments::Dict)
    codepipeline([::AWSConfig], "ListPipelineExecutions", pipelineName=, <keyword arguments>)

# ListPipelineExecutions Operation

Gets a summary of the most recent executions for a pipeline.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of the pipeline for which you want to get execution summary information.


## `maxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value. The available pipeline execution history is limited to the most recent 12 months, based on pipeline execution start times. Default value is 100.


## `nextToken = ::String`
The token that was returned from the previous ListPipelineExecutions call, which can be used to return the next set of pipeline executions in the list.




# Returns

`ListPipelineExecutionsOutput`

# Exceptions

`ValidationException`, `PipelineNotFoundException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListPipelineExecutions)
"""
@inline list_pipeline_executions(aws::AWSConfig=default_aws_config(); args...) = list_pipeline_executions(aws, args)

@inline list_pipeline_executions(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "ListPipelineExecutions", args)

@inline list_pipeline_executions(args) = list_pipeline_executions(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.list_pipelines
    list_pipelines([::AWSConfig], arguments::Dict)
    list_pipelines([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "ListPipelines", arguments::Dict)
    codepipeline([::AWSConfig], "ListPipelines", <keyword arguments>)

# ListPipelines Operation

Gets a summary of all of the pipelines associated with your account.

# Arguments

## `nextToken = ::String`
An identifier that was returned from the previous list pipelines call, which can be used to return the next set of pipelines in the list.




# Returns

`ListPipelinesOutput`

# Exceptions

`ValidationException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListPipelines)
"""
@inline list_pipelines(aws::AWSConfig=default_aws_config(); args...) = list_pipelines(aws, args)

@inline list_pipelines(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "ListPipelines", args)

@inline list_pipelines(args) = list_pipelines(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.list_webhooks
    list_webhooks([::AWSConfig], arguments::Dict)
    list_webhooks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "ListWebhooks", arguments::Dict)
    codepipeline([::AWSConfig], "ListWebhooks", <keyword arguments>)

# ListWebhooks Operation

Gets a listing of all the webhooks in this region for this account. The output lists all webhooks and includes the webhook URL and ARN, as well the configuration for each webhook.

# Arguments

## `NextToken = ::String`
The token that was returned from the previous ListWebhooks call, which can be used to return the next set of webhooks in the list.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value.




# Returns

`ListWebhooksOutput`

# Exceptions

`ValidationException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListWebhooks)
"""
@inline list_webhooks(aws::AWSConfig=default_aws_config(); args...) = list_webhooks(aws, args)

@inline list_webhooks(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "ListWebhooks", args)

@inline list_webhooks(args) = list_webhooks(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.poll_for_jobs
    poll_for_jobs([::AWSConfig], arguments::Dict)
    poll_for_jobs([::AWSConfig]; actionTypeId=, <keyword arguments>)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "PollForJobs", arguments::Dict)
    codepipeline([::AWSConfig], "PollForJobs", actionTypeId=, <keyword arguments>)

# PollForJobs Operation

Returns information about any jobs for AWS CodePipeline to act upon. PollForJobs is only valid for action types with "Custom" in the owner field. If the action type contains "AWS" or "ThirdParty" in the owner field, the PollForJobs action returns an error.

**Important**
> When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action.

# Arguments

## `actionTypeId = [ ... ]` -- *Required*
Represents information about an action type.
```
 actionTypeId = [
        "category" => <required> "Source", "Build", "Deploy", "Test", "Invoke" or "Approval",
        "owner" => <required> "AWS", "ThirdParty" or "Custom",
        "provider" => <required> ::String,
        "version" => <required> ::String
    ]
```

## `maxBatchSize = ::Int`
The maximum number of jobs to return in a poll for jobs call.


## `queryParam = ::Dict{String,String}`
A map of property names and values. For an action type with no queryable properties, this value must be null or an empty map. For an action type with a queryable property, you must supply that property as a key in the map. Only jobs whose action configuration matches the mapped value will be returned.




# Returns

`PollForJobsOutput`

# Exceptions

`ValidationException` or `ActionTypeNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PollForJobs)
"""
@inline poll_for_jobs(aws::AWSConfig=default_aws_config(); args...) = poll_for_jobs(aws, args)

@inline poll_for_jobs(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "PollForJobs", args)

@inline poll_for_jobs(args) = poll_for_jobs(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.poll_for_third_party_jobs
    poll_for_third_party_jobs([::AWSConfig], arguments::Dict)
    poll_for_third_party_jobs([::AWSConfig]; actionTypeId=, <keyword arguments>)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "PollForThirdPartyJobs", arguments::Dict)
    codepipeline([::AWSConfig], "PollForThirdPartyJobs", actionTypeId=, <keyword arguments>)

# PollForThirdPartyJobs Operation

Determines whether there are any third party jobs for a job worker to act on. Only used for partner actions.

**Important**
> When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts.

# Arguments

## `actionTypeId = [ ... ]` -- *Required*
Represents information about an action type.
```
 actionTypeId = [
        "category" => <required> "Source", "Build", "Deploy", "Test", "Invoke" or "Approval",
        "owner" => <required> "AWS", "ThirdParty" or "Custom",
        "provider" => <required> ::String,
        "version" => <required> ::String
    ]
```

## `maxBatchSize = ::Int`
The maximum number of jobs to return in a poll for jobs call.




# Returns

`PollForThirdPartyJobsOutput`

# Exceptions

`ActionTypeNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PollForThirdPartyJobs)
"""
@inline poll_for_third_party_jobs(aws::AWSConfig=default_aws_config(); args...) = poll_for_third_party_jobs(aws, args)

@inline poll_for_third_party_jobs(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "PollForThirdPartyJobs", args)

@inline poll_for_third_party_jobs(args) = poll_for_third_party_jobs(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.put_action_revision
    put_action_revision([::AWSConfig], arguments::Dict)
    put_action_revision([::AWSConfig]; pipelineName=, stageName=, actionName=, actionRevision=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "PutActionRevision", arguments::Dict)
    codepipeline([::AWSConfig], "PutActionRevision", pipelineName=, stageName=, actionName=, actionRevision=)

# PutActionRevision Operation

Provides information to AWS CodePipeline about new revisions to a source.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of the pipeline that will start processing the revision to the source.


## `stageName = ::String` -- *Required*
The name of the stage that contains the action that will act upon the revision.


## `actionName = ::String` -- *Required*
The name of the action that will process the revision.


## `actionRevision = [ ... ]` -- *Required*
Represents information about the version (or revision) of an action.
```
 actionRevision = [
        "revisionId" => <required> ::String,
        "revisionChangeId" => <required> ::String,
        "created" => <required> timestamp
    ]
```



# Returns

`PutActionRevisionOutput`

# Exceptions

`PipelineNotFoundException`, `StageNotFoundException`, `ActionNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutActionRevision)
"""
@inline put_action_revision(aws::AWSConfig=default_aws_config(); args...) = put_action_revision(aws, args)

@inline put_action_revision(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "PutActionRevision", args)

@inline put_action_revision(args) = put_action_revision(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.put_approval_result
    put_approval_result([::AWSConfig], arguments::Dict)
    put_approval_result([::AWSConfig]; pipelineName=, stageName=, actionName=, result=, token=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "PutApprovalResult", arguments::Dict)
    codepipeline([::AWSConfig], "PutApprovalResult", pipelineName=, stageName=, actionName=, result=, token=)

# PutApprovalResult Operation

Provides the response to a manual approval request to AWS CodePipeline. Valid responses include Approved and Rejected.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of the pipeline that contains the action.


## `stageName = ::String` -- *Required*
The name of the stage that contains the action.


## `actionName = ::String` -- *Required*
The name of the action for which approval is requested.


## `result = [ ... ]` -- *Required*
Represents information about the result of the approval request.
```
 result = [
        "summary" => <required> ::String,
        "status" => <required> "Approved" or "Rejected"
    ]
```

## `token = ::String` -- *Required*
The system-generated token used to identify a unique approval request. The token for each open approval request can be obtained using the [GetPipelineState](@ref) action and is used to validate that the approval request corresponding to this token is still valid.




# Returns

`PutApprovalResultOutput`

# Exceptions

`InvalidApprovalTokenException`, `ApprovalAlreadyCompletedException`, `PipelineNotFoundException`, `StageNotFoundException`, `ActionNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutApprovalResult)
"""
@inline put_approval_result(aws::AWSConfig=default_aws_config(); args...) = put_approval_result(aws, args)

@inline put_approval_result(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "PutApprovalResult", args)

@inline put_approval_result(args) = put_approval_result(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.put_job_failure_result
    put_job_failure_result([::AWSConfig], arguments::Dict)
    put_job_failure_result([::AWSConfig]; jobId=, failureDetails=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "PutJobFailureResult", arguments::Dict)
    codepipeline([::AWSConfig], "PutJobFailureResult", jobId=, failureDetails=)

# PutJobFailureResult Operation

Represents the failure of a job as returned to the pipeline by a job worker. Only used for custom actions.

# Arguments

## `jobId = ::String` -- *Required*
The unique system-generated ID of the job that failed. This is the same ID returned from PollForJobs.


## `failureDetails = [ ... ]` -- *Required*
The details about the failure of a job.
```
 failureDetails = [
        "type" => <required> "JobFailed", "ConfigurationError", "PermissionError", "RevisionOutOfSync", "RevisionUnavailable" or "SystemUnavailable",
        "message" => <required> ::String,
        "externalExecutionId" =>  ::String
    ]
```



# Exceptions

`ValidationException`, `JobNotFoundException` or `InvalidJobStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutJobFailureResult)
"""
@inline put_job_failure_result(aws::AWSConfig=default_aws_config(); args...) = put_job_failure_result(aws, args)

@inline put_job_failure_result(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "PutJobFailureResult", args)

@inline put_job_failure_result(args) = put_job_failure_result(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.put_job_success_result
    put_job_success_result([::AWSConfig], arguments::Dict)
    put_job_success_result([::AWSConfig]; jobId=, <keyword arguments>)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "PutJobSuccessResult", arguments::Dict)
    codepipeline([::AWSConfig], "PutJobSuccessResult", jobId=, <keyword arguments>)

# PutJobSuccessResult Operation

Represents the success of a job as returned to the pipeline by a job worker. Only used for custom actions.

# Arguments

## `jobId = ::String` -- *Required*
The unique system-generated ID of the job that succeeded. This is the same ID returned from PollForJobs.


## `currentRevision = [ ... ]`
The ID of the current revision of the artifact successfully worked upon by the job.
```
 currentRevision = [
        "revision" => <required> ::String,
        "changeIdentifier" => <required> ::String,
        "created" =>  timestamp,
        "revisionSummary" =>  ::String
    ]
```

## `continuationToken = ::String`
A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a successful job provides to identify a custom action in progress. Future jobs will use this token in order to identify the running instance of the action. It can be reused to return additional information about the progress of the custom action. When the action is complete, no continuation token should be supplied.


## `executionDetails = [ ... ]`
The execution details of the successful job, such as the actions taken by the job worker.
```
 executionDetails = [
        "summary" =>  ::String,
        "externalExecutionId" =>  ::String,
        "percentComplete" =>  ::Int
    ]
```



# Exceptions

`ValidationException`, `JobNotFoundException` or `InvalidJobStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutJobSuccessResult)
"""
@inline put_job_success_result(aws::AWSConfig=default_aws_config(); args...) = put_job_success_result(aws, args)

@inline put_job_success_result(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "PutJobSuccessResult", args)

@inline put_job_success_result(args) = put_job_success_result(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.put_third_party_job_failure_result
    put_third_party_job_failure_result([::AWSConfig], arguments::Dict)
    put_third_party_job_failure_result([::AWSConfig]; jobId=, clientToken=, failureDetails=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "PutThirdPartyJobFailureResult", arguments::Dict)
    codepipeline([::AWSConfig], "PutThirdPartyJobFailureResult", jobId=, clientToken=, failureDetails=)

# PutThirdPartyJobFailureResult Operation

Represents the failure of a third party job as returned to the pipeline by a job worker. Only used for partner actions.

# Arguments

## `jobId = ::String` -- *Required*
The ID of the job that failed. This is the same ID returned from PollForThirdPartyJobs.


## `clientToken = ::String` -- *Required*
The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.


## `failureDetails = [ ... ]` -- *Required*
Represents information about failure details.
```
 failureDetails = [
        "type" => <required> "JobFailed", "ConfigurationError", "PermissionError", "RevisionOutOfSync", "RevisionUnavailable" or "SystemUnavailable",
        "message" => <required> ::String,
        "externalExecutionId" =>  ::String
    ]
```



# Exceptions

`ValidationException`, `JobNotFoundException`, `InvalidJobStateException` or `InvalidClientTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutThirdPartyJobFailureResult)
"""
@inline put_third_party_job_failure_result(aws::AWSConfig=default_aws_config(); args...) = put_third_party_job_failure_result(aws, args)

@inline put_third_party_job_failure_result(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "PutThirdPartyJobFailureResult", args)

@inline put_third_party_job_failure_result(args) = put_third_party_job_failure_result(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.put_third_party_job_success_result
    put_third_party_job_success_result([::AWSConfig], arguments::Dict)
    put_third_party_job_success_result([::AWSConfig]; jobId=, clientToken=, <keyword arguments>)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "PutThirdPartyJobSuccessResult", arguments::Dict)
    codepipeline([::AWSConfig], "PutThirdPartyJobSuccessResult", jobId=, clientToken=, <keyword arguments>)

# PutThirdPartyJobSuccessResult Operation

Represents the success of a third party job as returned to the pipeline by a job worker. Only used for partner actions.

# Arguments

## `jobId = ::String` -- *Required*
The ID of the job that successfully completed. This is the same ID returned from PollForThirdPartyJobs.


## `clientToken = ::String` -- *Required*
The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.


## `currentRevision = [ ... ]`
Represents information about a current revision.
```
 currentRevision = [
        "revision" => <required> ::String,
        "changeIdentifier" => <required> ::String,
        "created" =>  timestamp,
        "revisionSummary" =>  ::String
    ]
```

## `continuationToken = ::String`
A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a successful job provides to identify a partner action in progress. Future jobs will use this token in order to identify the running instance of the action. It can be reused to return additional information about the progress of the partner action. When the action is complete, no continuation token should be supplied.


## `executionDetails = [ ... ]`
The details of the actions taken and results produced on an artifact as it passes through stages in the pipeline.
```
 executionDetails = [
        "summary" =>  ::String,
        "externalExecutionId" =>  ::String,
        "percentComplete" =>  ::Int
    ]
```



# Exceptions

`ValidationException`, `JobNotFoundException`, `InvalidJobStateException` or `InvalidClientTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutThirdPartyJobSuccessResult)
"""
@inline put_third_party_job_success_result(aws::AWSConfig=default_aws_config(); args...) = put_third_party_job_success_result(aws, args)

@inline put_third_party_job_success_result(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "PutThirdPartyJobSuccessResult", args)

@inline put_third_party_job_success_result(args) = put_third_party_job_success_result(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.put_webhook
    put_webhook([::AWSConfig], arguments::Dict)
    put_webhook([::AWSConfig]; webhook=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "PutWebhook", arguments::Dict)
    codepipeline([::AWSConfig], "PutWebhook", webhook=)

# PutWebhook Operation

Defines a webhook and returns a unique webhook URL generated by CodePipeline. This URL can be supplied to third party source hosting providers to call every time there's a code change. When CodePipeline receives a POST request on this URL, the pipeline defined in the webhook is started as long as the POST request satisfied the authentication and filtering requirements supplied when defining the webhook. RegisterWebhookWithThirdParty and DeregisterWebhookWithThirdParty APIs can be used to automatically configure supported third parties to call the generated webhook URL.

# Arguments

## `webhook = [ ... ]` -- *Required*
The detail provided in an input file to create the webhook, such as the webhook name, the pipeline name, and the action name. Give the webhook a unique name which identifies the webhook being defined. You may choose to name the webhook after the pipeline and action it targets so that you can easily recognize what it's used for later.
```
 webhook = [
        "name" => <required> ::String,
        "targetPipeline" => <required> ::String,
        "targetAction" => <required> ::String,
        "filters" => <required> [[
            "jsonPath" => <required> ::String,
            "matchEquals" =>  ::String
        ], ...],
        "authentication" => <required> "GITHUB_HMAC", "IP" or "UNAUTHENTICATED",
        "authenticationConfiguration" => <required> [
            "AllowedIPRange" =>  ::String,
            "SecretToken" =>  ::String
        ]
    ]
```



# Returns

`PutWebhookOutput`

# Exceptions

`ValidationException`, `LimitExceededException`, `InvalidWebhookFilterPatternException`, `InvalidWebhookAuthenticationParametersException` or `PipelineNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutWebhook)
"""
@inline put_webhook(aws::AWSConfig=default_aws_config(); args...) = put_webhook(aws, args)

@inline put_webhook(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "PutWebhook", args)

@inline put_webhook(args) = put_webhook(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.register_webhook_with_third_party
    register_webhook_with_third_party([::AWSConfig], arguments::Dict)
    register_webhook_with_third_party([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "RegisterWebhookWithThirdParty", arguments::Dict)
    codepipeline([::AWSConfig], "RegisterWebhookWithThirdParty", <keyword arguments>)

# RegisterWebhookWithThirdParty Operation

Configures a connection between the webhook that was created and the external tool with events to be detected.

# Arguments

## `webhookName = ::String`
The name of an existing webhook created with PutWebhook to register with a supported third party.




# Returns

`RegisterWebhookWithThirdPartyOutput`

# Exceptions

`ValidationException` or `WebhookNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/RegisterWebhookWithThirdParty)
"""
@inline register_webhook_with_third_party(aws::AWSConfig=default_aws_config(); args...) = register_webhook_with_third_party(aws, args)

@inline register_webhook_with_third_party(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "RegisterWebhookWithThirdParty", args)

@inline register_webhook_with_third_party(args) = register_webhook_with_third_party(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.retry_stage_execution
    retry_stage_execution([::AWSConfig], arguments::Dict)
    retry_stage_execution([::AWSConfig]; pipelineName=, stageName=, pipelineExecutionId=, retryMode=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "RetryStageExecution", arguments::Dict)
    codepipeline([::AWSConfig], "RetryStageExecution", pipelineName=, stageName=, pipelineExecutionId=, retryMode=)

# RetryStageExecution Operation

Resumes the pipeline execution by retrying the last failed actions in a stage.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of the pipeline that contains the failed stage.


## `stageName = ::String` -- *Required*
The name of the failed stage to be retried.


## `pipelineExecutionId = ::String` -- *Required*
The ID of the pipeline execution in the failed stage to be retried. Use the [GetPipelineState](@ref) action to retrieve the current pipelineExecutionId of the failed stage


## `retryMode = "FAILED_ACTIONS"` -- *Required*
The scope of the retry attempt. Currently, the only supported value is FAILED_ACTIONS.




# Returns

`RetryStageExecutionOutput`

# Exceptions

`ValidationException`, `PipelineNotFoundException`, `StageNotFoundException`, `StageNotRetryableException` or `NotLatestPipelineExecutionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/RetryStageExecution)
"""
@inline retry_stage_execution(aws::AWSConfig=default_aws_config(); args...) = retry_stage_execution(aws, args)

@inline retry_stage_execution(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "RetryStageExecution", args)

@inline retry_stage_execution(args) = retry_stage_execution(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.start_pipeline_execution
    start_pipeline_execution([::AWSConfig], arguments::Dict)
    start_pipeline_execution([::AWSConfig]; name=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "StartPipelineExecution", arguments::Dict)
    codepipeline([::AWSConfig], "StartPipelineExecution", name=)

# StartPipelineExecution Operation

Starts the specified pipeline. Specifically, it begins processing the latest commit to the source location specified as part of the pipeline.

# Arguments

## `name = ::String` -- *Required*
The name of the pipeline to start.




# Returns

`StartPipelineExecutionOutput`

# Exceptions

`ValidationException` or `PipelineNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StartPipelineExecution)
"""
@inline start_pipeline_execution(aws::AWSConfig=default_aws_config(); args...) = start_pipeline_execution(aws, args)

@inline start_pipeline_execution(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "StartPipelineExecution", args)

@inline start_pipeline_execution(args) = start_pipeline_execution(default_aws_config(), args)


"""
    using AWSSDK.CodePipeline.update_pipeline
    update_pipeline([::AWSConfig], arguments::Dict)
    update_pipeline([::AWSConfig]; pipeline=)

    using AWSCore.Services.codepipeline
    codepipeline([::AWSConfig], "UpdatePipeline", arguments::Dict)
    codepipeline([::AWSConfig], "UpdatePipeline", pipeline=)

# UpdatePipeline Operation

Updates a specified pipeline with edits or changes to its structure. Use a JSON file with the pipeline structure in conjunction with UpdatePipeline to provide the full structure of the pipeline. Updating the pipeline increases the version number of the pipeline by 1.

# Arguments

## `pipeline = [ ... ]` -- *Required*
The name of the pipeline to be updated.
```
 pipeline = [
        "name" => <required> ::String,
        "roleArn" => <required> ::String,
        "artifactStore" => <required> [
            "type" => <required> "S3",
            "location" => <required> ::String,
            "encryptionKey" =>  [
                "id" => <required> ::String,
                "type" => <required> "KMS"
            ]
        ],
        "stages" => <required> [[
            "name" => <required> ::String,
            "blockers" =>  [[
                "name" => <required> ::String,
                "type" => <required> "Schedule"
            ], ...],
            "actions" => <required> [[
                "name" => <required> ::String,
                "actionTypeId" => <required> [
                    "category" => <required> "Source", "Build", "Deploy", "Test", "Invoke" or "Approval",
                    "owner" => <required> "AWS", "ThirdParty" or "Custom",
                    "provider" => <required> ::String,
                    "version" => <required> ::String
                ],
                "runOrder" =>  ::Int,
                "configuration" =>  ::Dict{String,String},
                "outputArtifacts" =>  [["name" => <required> ::String], ...],
                "inputArtifacts" =>  [["name" => <required> ::String], ...],
                "roleArn" =>  ::String
            ], ...]
        ], ...],
        "version" =>  ::Int
    ]
```



# Returns

`UpdatePipelineOutput`

# Exceptions

`ValidationException`, `InvalidStageDeclarationException`, `InvalidActionDeclarationException`, `InvalidBlockerDeclarationException`, `InvalidStructureException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/UpdatePipeline)
"""
@inline update_pipeline(aws::AWSConfig=default_aws_config(); args...) = update_pipeline(aws, args)

@inline update_pipeline(aws::AWSConfig, args) = AWSCore.Services.codepipeline(aws, "UpdatePipeline", args)

@inline update_pipeline(args) = update_pipeline(default_aws_config(), args)




end # module CodePipeline


#==============================================================================#
# End of file
#==============================================================================#
