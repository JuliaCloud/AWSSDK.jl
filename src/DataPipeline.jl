#==============================================================================#
# DataPipeline.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/datapipeline-2012-10-29.normal.json
#==============================================================================#

__precompile__()

module DataPipeline

using AWSCore


"""
    using AWSSDK.DataPipeline.activate_pipeline
    activate_pipeline([::AWSConfig], arguments::Dict)
    activate_pipeline([::AWSConfig]; pipelineId=, <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "ActivatePipeline", arguments::Dict)
    datapipeline([::AWSConfig], "ActivatePipeline", pipelineId=, <keyword arguments>)

# ActivatePipeline Operation

Validates the specified pipeline and starts processing pipeline tasks. If the pipeline does not pass validation, activation fails.

If you need to pause the pipeline to investigate an issue with a component, such as a data source or script, call [DeactivatePipeline](@ref).

To activate a finished pipeline, modify the end date for the pipeline and then activate it.

# Arguments

## `pipelineId = ::String` -- *Required*
The ID of the pipeline.


## `parameterValues = [[ ... ], ...]`
A list of parameter values to pass to the pipeline at activation.
```
 parameterValues = [[
        "id" => <required> ::String,
        "stringValue" => <required> ::String
    ], ...]
```

## `startTimestamp = timestamp`
The date and time to resume the pipeline. By default, the pipeline resumes from the last completed execution.




# Returns

`ActivatePipelineOutput`

# Exceptions

`PipelineNotFoundException`, `PipelineDeletedException`, `InternalServiceError` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ActivatePipeline)
"""
@inline activate_pipeline(aws::AWSConfig=default_aws_config(); args...) = activate_pipeline(aws, args)

@inline activate_pipeline(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "ActivatePipeline", args)

@inline activate_pipeline(args) = activate_pipeline(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.add_tags
    add_tags([::AWSConfig], arguments::Dict)
    add_tags([::AWSConfig]; pipelineId=, tags=)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "AddTags", arguments::Dict)
    datapipeline([::AWSConfig], "AddTags", pipelineId=, tags=)

# AddTags Operation

Adds or modifies tags for the specified pipeline.

# Arguments

## `pipelineId = ::String` -- *Required*
The ID of the pipeline.


## `tags = [[ ... ], ...]` -- *Required*
The tags to add, as key/value pairs.
```
 tags = [[
        "key" => <required> ::String,
        "value" => <required> ::String
    ], ...]
```



# Returns

`AddTagsOutput`

# Exceptions

`InternalServiceError`, `InvalidRequestException`, `PipelineNotFoundException` or `PipelineDeletedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/AddTags)
"""
@inline add_tags(aws::AWSConfig=default_aws_config(); args...) = add_tags(aws, args)

@inline add_tags(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "AddTags", args)

@inline add_tags(args) = add_tags(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.create_pipeline
    create_pipeline([::AWSConfig], arguments::Dict)
    create_pipeline([::AWSConfig]; name=, uniqueId=, <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "CreatePipeline", arguments::Dict)
    datapipeline([::AWSConfig], "CreatePipeline", name=, uniqueId=, <keyword arguments>)

# CreatePipeline Operation

Creates a new, empty pipeline. Use [PutPipelineDefinition](@ref) to populate the pipeline.

# Arguments

## `name = ::String` -- *Required*
The name for the pipeline. You can use the same name for multiple pipelines associated with your AWS account, because AWS Data Pipeline assigns each pipeline a unique pipeline identifier.


## `uniqueId = ::String` -- *Required*
A unique identifier. This identifier is not the same as the pipeline identifier assigned by AWS Data Pipeline. You are responsible for defining the format and ensuring the uniqueness of this identifier. You use this parameter to ensure idempotency during repeated calls to `CreatePipeline`. For example, if the first call to `CreatePipeline` does not succeed, you can pass in the same unique identifier and pipeline name combination on a subsequent call to `CreatePipeline`. `CreatePipeline` ensures that if a pipeline already exists with the same name and unique identifier, a new pipeline is not created. Instead, you'll receive the pipeline identifier from the previous attempt. The uniqueness of the name and unique identifier combination is scoped to the AWS account or IAM user credentials.


## `description = ::String`
The description for the pipeline.


## `tags = [[ ... ], ...]`
A list of tags to associate with the pipeline at creation. Tags let you control access to pipelines. For more information, see [Controlling User Access to Pipelines](http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html) in the *AWS Data Pipeline Developer Guide*.
```
 tags = [[
        "key" => <required> ::String,
        "value" => <required> ::String
    ], ...]
```



# Returns

`CreatePipelineOutput`

# Exceptions

`InternalServiceError` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/CreatePipeline)
"""
@inline create_pipeline(aws::AWSConfig=default_aws_config(); args...) = create_pipeline(aws, args)

@inline create_pipeline(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "CreatePipeline", args)

@inline create_pipeline(args) = create_pipeline(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.deactivate_pipeline
    deactivate_pipeline([::AWSConfig], arguments::Dict)
    deactivate_pipeline([::AWSConfig]; pipelineId=, <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "DeactivatePipeline", arguments::Dict)
    datapipeline([::AWSConfig], "DeactivatePipeline", pipelineId=, <keyword arguments>)

# DeactivatePipeline Operation

Deactivates the specified running pipeline. The pipeline is set to the `DEACTIVATING` state until the deactivation process completes.

To resume a deactivated pipeline, use [ActivatePipeline](@ref). By default, the pipeline resumes from the last completed execution. Optionally, you can specify the date and time to resume the pipeline.

# Arguments

## `pipelineId = ::String` -- *Required*
The ID of the pipeline.


## `cancelActive = ::Bool`
Indicates whether to cancel any running objects. The default is true, which sets the state of any running objects to `CANCELED`. If this value is false, the pipeline is deactivated after all running objects finish.




# Returns

`DeactivatePipelineOutput`

# Exceptions

`PipelineNotFoundException`, `PipelineDeletedException`, `InternalServiceError` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DeactivatePipeline)
"""
@inline deactivate_pipeline(aws::AWSConfig=default_aws_config(); args...) = deactivate_pipeline(aws, args)

@inline deactivate_pipeline(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "DeactivatePipeline", args)

@inline deactivate_pipeline(args) = deactivate_pipeline(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.delete_pipeline
    delete_pipeline([::AWSConfig], arguments::Dict)
    delete_pipeline([::AWSConfig]; pipelineId=)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "DeletePipeline", arguments::Dict)
    datapipeline([::AWSConfig], "DeletePipeline", pipelineId=)

# DeletePipeline Operation

Deletes a pipeline, its pipeline definition, and its run history. AWS Data Pipeline attempts to cancel instances associated with the pipeline that are currently being processed by task runners.

Deleting a pipeline cannot be undone. You cannot query or restore a deleted pipeline. To temporarily pause a pipeline instead of deleting it, call [SetStatus](@ref) with the status set to `PAUSE` on individual components. Components that are paused by [SetStatus](@ref) can be resumed.

# Arguments

## `pipelineId = ::String` -- *Required*
The ID of the pipeline.




# Exceptions

`PipelineNotFoundException`, `InternalServiceError` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DeletePipeline)
"""
@inline delete_pipeline(aws::AWSConfig=default_aws_config(); args...) = delete_pipeline(aws, args)

@inline delete_pipeline(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "DeletePipeline", args)

@inline delete_pipeline(args) = delete_pipeline(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.describe_objects
    describe_objects([::AWSConfig], arguments::Dict)
    describe_objects([::AWSConfig]; pipelineId=, objectIds=, <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "DescribeObjects", arguments::Dict)
    datapipeline([::AWSConfig], "DescribeObjects", pipelineId=, objectIds=, <keyword arguments>)

# DescribeObjects Operation

Gets the object definitions for a set of objects associated with the pipeline. Object definitions are composed of a set of fields that define the properties of the object.

# Arguments

## `pipelineId = ::String` -- *Required*
The ID of the pipeline that contains the object definitions.


## `objectIds = [::String, ...]` -- *Required*
The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to `DescribeObjects`.


## `evaluateExpressions = ::Bool`
Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.


## `marker = ::String`
The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call `DescribeObjects` with the marker value from the previous call to retrieve the next set of results.




# Returns

`DescribeObjectsOutput`

# Exceptions

`InternalServiceError`, `InvalidRequestException`, `PipelineNotFoundException` or `PipelineDeletedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DescribeObjects)
"""
@inline describe_objects(aws::AWSConfig=default_aws_config(); args...) = describe_objects(aws, args)

@inline describe_objects(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "DescribeObjects", args)

@inline describe_objects(args) = describe_objects(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.describe_pipelines
    describe_pipelines([::AWSConfig], arguments::Dict)
    describe_pipelines([::AWSConfig]; pipelineIds=)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "DescribePipelines", arguments::Dict)
    datapipeline([::AWSConfig], "DescribePipelines", pipelineIds=)

# DescribePipelines Operation

Retrieves metadata about one or more pipelines. The information retrieved includes the name of the pipeline, the pipeline identifier, its current state, and the user account that owns the pipeline. Using account credentials, you can retrieve metadata about pipelines that you or your IAM users have created. If you are using an IAM user account, you can retrieve metadata about only those pipelines for which you have read permissions.

To retrieve the full pipeline definition instead of metadata about the pipeline, call [GetPipelineDefinition](@ref).

# Arguments

## `pipelineIds = [::String, ...]` -- *Required*
The IDs of the pipelines to describe. You can pass as many as 25 identifiers in a single call. To obtain pipeline IDs, call [ListPipelines](@ref).




# Returns

`DescribePipelinesOutput`

# Exceptions

`PipelineNotFoundException`, `PipelineDeletedException`, `InternalServiceError` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/DescribePipelines)
"""
@inline describe_pipelines(aws::AWSConfig=default_aws_config(); args...) = describe_pipelines(aws, args)

@inline describe_pipelines(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "DescribePipelines", args)

@inline describe_pipelines(args) = describe_pipelines(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.evaluate_expression
    evaluate_expression([::AWSConfig], arguments::Dict)
    evaluate_expression([::AWSConfig]; pipelineId=, objectId=, expression=)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "EvaluateExpression", arguments::Dict)
    datapipeline([::AWSConfig], "EvaluateExpression", pipelineId=, objectId=, expression=)

# EvaluateExpression Operation

Task runners call `EvaluateExpression` to evaluate a string in the context of the specified object. For example, a task runner can evaluate SQL queries stored in Amazon S3.

# Arguments

## `pipelineId = ::String` -- *Required*
The ID of the pipeline.


## `objectId = ::String` -- *Required*
The ID of the object.


## `expression = ::String` -- *Required*
The expression to evaluate.




# Returns

`EvaluateExpressionOutput`

# Exceptions

`InternalServiceError`, `TaskNotFoundException`, `InvalidRequestException`, `PipelineNotFoundException` or `PipelineDeletedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/EvaluateExpression)
"""
@inline evaluate_expression(aws::AWSConfig=default_aws_config(); args...) = evaluate_expression(aws, args)

@inline evaluate_expression(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "EvaluateExpression", args)

@inline evaluate_expression(args) = evaluate_expression(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.get_pipeline_definition
    get_pipeline_definition([::AWSConfig], arguments::Dict)
    get_pipeline_definition([::AWSConfig]; pipelineId=, <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "GetPipelineDefinition", arguments::Dict)
    datapipeline([::AWSConfig], "GetPipelineDefinition", pipelineId=, <keyword arguments>)

# GetPipelineDefinition Operation

Gets the definition of the specified pipeline. You can call `GetPipelineDefinition` to retrieve the pipeline definition that you provided using [PutPipelineDefinition](@ref).

# Arguments

## `pipelineId = ::String` -- *Required*
The ID of the pipeline.


## `version = ::String`
The version of the pipeline definition to retrieve. Set this parameter to `latest` (default) to use the last definition saved to the pipeline or `active` to use the last definition that was activated.




# Returns

`GetPipelineDefinitionOutput`

# Exceptions

`InternalServiceError`, `InvalidRequestException`, `PipelineNotFoundException` or `PipelineDeletedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/GetPipelineDefinition)
"""
@inline get_pipeline_definition(aws::AWSConfig=default_aws_config(); args...) = get_pipeline_definition(aws, args)

@inline get_pipeline_definition(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "GetPipelineDefinition", args)

@inline get_pipeline_definition(args) = get_pipeline_definition(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.list_pipelines
    list_pipelines([::AWSConfig], arguments::Dict)
    list_pipelines([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "ListPipelines", arguments::Dict)
    datapipeline([::AWSConfig], "ListPipelines", <keyword arguments>)

# ListPipelines Operation

Lists the pipeline identifiers for all active pipelines that you have permission to access.

# Arguments

## `marker = ::String`
The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call `ListPipelines` with the marker value from the previous call to retrieve the next set of results.




# Returns

`ListPipelinesOutput`

# Exceptions

`InternalServiceError` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ListPipelines)
"""
@inline list_pipelines(aws::AWSConfig=default_aws_config(); args...) = list_pipelines(aws, args)

@inline list_pipelines(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "ListPipelines", args)

@inline list_pipelines(args) = list_pipelines(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.poll_for_task
    poll_for_task([::AWSConfig], arguments::Dict)
    poll_for_task([::AWSConfig]; workerGroup=, <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "PollForTask", arguments::Dict)
    datapipeline([::AWSConfig], "PollForTask", workerGroup=, <keyword arguments>)

# PollForTask Operation

Task runners call `PollForTask` to receive a task to perform from AWS Data Pipeline. The task runner specifies which tasks it can perform by setting a value for the `workerGroup` parameter. The task returned can come from any of the pipelines that match the `workerGroup` value passed in by the task runner and that was launched using the IAM user credentials specified by the task runner.

If tasks are ready in the work queue, `PollForTask` returns a response immediately. If no tasks are available in the queue, `PollForTask` uses long-polling and holds on to a poll connection for up to a 90 seconds, during which time the first newly scheduled task is handed to the task runner. To accomodate this, set the socket timeout in your task runner to 90 seconds. The task runner should not call `PollForTask` again on the same `workerGroup` until it receives a response, and this can take up to 90 seconds.

# Arguments

## `workerGroup = ::String` -- *Required*
The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. You can only specify a single value for `workerGroup` in the call to `PollForTask`. There are no wildcard values permitted in `workerGroup`; the string must be an exact, case-sensitive, match.


## `hostname = ::String`
The public DNS name of the calling task runner.


## `instanceIdentity = [ ... ]`
Identity information for the EC2 instance that is hosting the task runner. You can get this value from the instance using `http://169.254.169.254/latest/meta-data/instance-id`. For more information, see [Instance Metadata](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html) in the *Amazon Elastic Compute Cloud User Guide.* Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.
```
 instanceIdentity = [
        "document" =>  ::String,
        "signature" =>  ::String
    ]
```



# Returns

`PollForTaskOutput`

# Exceptions

`InternalServiceError`, `InvalidRequestException` or `TaskNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/PollForTask)
"""
@inline poll_for_task(aws::AWSConfig=default_aws_config(); args...) = poll_for_task(aws, args)

@inline poll_for_task(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "PollForTask", args)

@inline poll_for_task(args) = poll_for_task(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.put_pipeline_definition
    put_pipeline_definition([::AWSConfig], arguments::Dict)
    put_pipeline_definition([::AWSConfig]; pipelineId=, pipelineObjects=, <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "PutPipelineDefinition", arguments::Dict)
    datapipeline([::AWSConfig], "PutPipelineDefinition", pipelineId=, pipelineObjects=, <keyword arguments>)

# PutPipelineDefinition Operation

Adds tasks, schedules, and preconditions to the specified pipeline. You can use `PutPipelineDefinition` to populate a new pipeline.

`PutPipelineDefinition` also validates the configuration as it adds it to the pipeline. Changes to the pipeline are saved unless one of the following three validation errors exists in the pipeline.

1.  An object is missing a name or identifier field.
2.  A string or reference field is empty.
3.  The number of objects in the pipeline exceeds the maximum allowed objects.
4.  The pipeline is in a FINISHED state.

Pipeline object definitions are passed to the `PutPipelineDefinition` action and returned by the [GetPipelineDefinition](@ref) action.

# Arguments

## `pipelineId = ::String` -- *Required*
The ID of the pipeline.


## `pipelineObjects = [[ ... ], ...]` -- *Required*
The objects that define the pipeline. These objects overwrite the existing pipeline definition.
```
 pipelineObjects = [[
        "id" => <required> ::String,
        "name" => <required> ::String,
        "fields" => <required> [[
            "key" => <required> ::String,
            "stringValue" =>  ::String,
            "refValue" =>  ::String
        ], ...]
    ], ...]
```

## `parameterObjects = [[ ... ], ...]`
The parameter objects used with the pipeline.
```
 parameterObjects = [[
        "id" => <required> ::String,
        "attributes" => <required> [[
            "key" => <required> ::String,
            "stringValue" => <required> ::String
        ], ...]
    ], ...]
```

## `parameterValues = [[ ... ], ...]`
The parameter values used with the pipeline.
```
 parameterValues = [[
        "id" => <required> ::String,
        "stringValue" => <required> ::String
    ], ...]
```



# Returns

`PutPipelineDefinitionOutput`

# Exceptions

`InternalServiceError`, `InvalidRequestException`, `PipelineNotFoundException` or `PipelineDeletedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/PutPipelineDefinition)
"""
@inline put_pipeline_definition(aws::AWSConfig=default_aws_config(); args...) = put_pipeline_definition(aws, args)

@inline put_pipeline_definition(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "PutPipelineDefinition", args)

@inline put_pipeline_definition(args) = put_pipeline_definition(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.query_objects
    query_objects([::AWSConfig], arguments::Dict)
    query_objects([::AWSConfig]; pipelineId=, sphere=, <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "QueryObjects", arguments::Dict)
    datapipeline([::AWSConfig], "QueryObjects", pipelineId=, sphere=, <keyword arguments>)

# QueryObjects Operation

Queries the specified pipeline for the names of objects that match the specified set of conditions.

# Arguments

## `pipelineId = ::String` -- *Required*
The ID of the pipeline.


## `query = ["selectors" =>  [[ ... ], ...]]`
The query that defines the objects to be returned. The `Query` object can contain a maximum of ten selectors. The conditions in the query are limited to top-level String fields in the object. These filters can be applied to components, instances, and attempts.
```
 query = ["selectors" =>  [[
            "fieldName" =>  ::String,
            "operator" =>  [
                "type" =>  "EQ", "REF_EQ", "LE", "GE" or "BETWEEN",
                "values" =>  [::String, ...]
            ]
        ], ...]]
```

## `sphere = ::String` -- *Required*
Indicates whether the query applies to components or instances. The possible values are: `COMPONENT`, `INSTANCE`, and `ATTEMPT`.


## `marker = ::String`
The starting point for the results to be returned. For the first call, this value should be empty. As long as there are more results, continue to call `QueryObjects` with the marker value from the previous call to retrieve the next set of results.


## `limit = ::Int`
The maximum number of object names that `QueryObjects` will return in a single call. The default value is 100.




# Returns

`QueryObjectsOutput`

# Exceptions

`PipelineNotFoundException`, `PipelineDeletedException`, `InternalServiceError` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/QueryObjects)
"""
@inline query_objects(aws::AWSConfig=default_aws_config(); args...) = query_objects(aws, args)

@inline query_objects(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "QueryObjects", args)

@inline query_objects(args) = query_objects(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.remove_tags
    remove_tags([::AWSConfig], arguments::Dict)
    remove_tags([::AWSConfig]; pipelineId=, tagKeys=)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "RemoveTags", arguments::Dict)
    datapipeline([::AWSConfig], "RemoveTags", pipelineId=, tagKeys=)

# RemoveTags Operation

Removes existing tags from the specified pipeline.

# Arguments

## `pipelineId = ::String` -- *Required*
The ID of the pipeline.


## `tagKeys = [::String, ...]` -- *Required*
The keys of the tags to remove.




# Returns

`RemoveTagsOutput`

# Exceptions

`InternalServiceError`, `InvalidRequestException`, `PipelineNotFoundException` or `PipelineDeletedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/RemoveTags)
"""
@inline remove_tags(aws::AWSConfig=default_aws_config(); args...) = remove_tags(aws, args)

@inline remove_tags(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "RemoveTags", args)

@inline remove_tags(args) = remove_tags(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.report_task_progress
    report_task_progress([::AWSConfig], arguments::Dict)
    report_task_progress([::AWSConfig]; taskId=, <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "ReportTaskProgress", arguments::Dict)
    datapipeline([::AWSConfig], "ReportTaskProgress", taskId=, <keyword arguments>)

# ReportTaskProgress Operation

Task runners call `ReportTaskProgress` when assigned a task to acknowledge that it has the task. If the web service does not receive this acknowledgement within 2 minutes, it assigns the task in a subsequent [PollForTask](@ref) call. After this initial acknowledgement, the task runner only needs to report progress every 15 minutes to maintain its ownership of the task. You can change this reporting time from 15 minutes by specifying a `reportProgressTimeout` field in your pipeline.

If a task runner does not report its status after 5 minutes, AWS Data Pipeline assumes that the task runner is unable to process the task and reassigns the task in a subsequent response to [PollForTask](@ref). Task runners should call `ReportTaskProgress` every 60 seconds.

# Arguments

## `taskId = ::String` -- *Required*
The ID of the task assigned to the task runner. This value is provided in the response for [PollForTask](@ref).


## `fields = [[ ... ], ...]`
Key-value pairs that define the properties of the ReportTaskProgressInput object.
```
 fields = [[
        "key" => <required> ::String,
        "stringValue" =>  ::String,
        "refValue" =>  ::String
    ], ...]
```



# Returns

`ReportTaskProgressOutput`

# Exceptions

`InternalServiceError`, `InvalidRequestException`, `TaskNotFoundException`, `PipelineNotFoundException` or `PipelineDeletedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ReportTaskProgress)
"""
@inline report_task_progress(aws::AWSConfig=default_aws_config(); args...) = report_task_progress(aws, args)

@inline report_task_progress(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "ReportTaskProgress", args)

@inline report_task_progress(args) = report_task_progress(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.report_task_runner_heartbeat
    report_task_runner_heartbeat([::AWSConfig], arguments::Dict)
    report_task_runner_heartbeat([::AWSConfig]; taskrunnerId=, <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "ReportTaskRunnerHeartbeat", arguments::Dict)
    datapipeline([::AWSConfig], "ReportTaskRunnerHeartbeat", taskrunnerId=, <keyword arguments>)

# ReportTaskRunnerHeartbeat Operation

Task runners call `ReportTaskRunnerHeartbeat` every 15 minutes to indicate that they are operational. If the AWS Data Pipeline Task Runner is launched on a resource managed by AWS Data Pipeline, the web service can use this call to detect when the task runner application has failed and restart a new instance.

# Arguments

## `taskrunnerId = ::String` -- *Required*
The ID of the task runner. This value should be unique across your AWS account. In the case of AWS Data Pipeline Task Runner launched on a resource managed by AWS Data Pipeline, the web service provides a unique identifier when it launches the application. If you have written a custom task runner, you should assign a unique identifier for the task runner.


## `workerGroup = ::String`
The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. You can only specify a single value for `workerGroup`. There are no wildcard values permitted in `workerGroup`; the string must be an exact, case-sensitive, match.


## `hostname = ::String`
The public DNS name of the task runner.




# Returns

`ReportTaskRunnerHeartbeatOutput`

# Exceptions

`InternalServiceError` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ReportTaskRunnerHeartbeat)
"""
@inline report_task_runner_heartbeat(aws::AWSConfig=default_aws_config(); args...) = report_task_runner_heartbeat(aws, args)

@inline report_task_runner_heartbeat(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "ReportTaskRunnerHeartbeat", args)

@inline report_task_runner_heartbeat(args) = report_task_runner_heartbeat(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.set_status
    set_status([::AWSConfig], arguments::Dict)
    set_status([::AWSConfig]; pipelineId=, objectIds=, status=)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "SetStatus", arguments::Dict)
    datapipeline([::AWSConfig], "SetStatus", pipelineId=, objectIds=, status=)

# SetStatus Operation

Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline. This update might not occur immediately, but is eventually consistent. The status that can be set depends on the type of object (for example, DataNode or Activity). You cannot perform this operation on `FINISHED` pipelines and attempting to do so returns `InvalidRequestException`.

# Arguments

## `pipelineId = ::String` -- *Required*
The ID of the pipeline that contains the objects.


## `objectIds = [::String, ...]` -- *Required*
The IDs of the objects. The corresponding objects can be either physical or components, but not a mix of both types.


## `status = ::String` -- *Required*
The status to be set on all the objects specified in `objectIds`. For components, use `PAUSE` or `RESUME`. For instances, use `TRY_CANCEL`, `RERUN`, or `MARK_FINISHED`.




# Exceptions

`PipelineNotFoundException`, `PipelineDeletedException`, `InternalServiceError` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/SetStatus)
"""
@inline set_status(aws::AWSConfig=default_aws_config(); args...) = set_status(aws, args)

@inline set_status(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "SetStatus", args)

@inline set_status(args) = set_status(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.set_task_status
    set_task_status([::AWSConfig], arguments::Dict)
    set_task_status([::AWSConfig]; taskId=, taskStatus=, <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "SetTaskStatus", arguments::Dict)
    datapipeline([::AWSConfig], "SetTaskStatus", taskId=, taskStatus=, <keyword arguments>)

# SetTaskStatus Operation

Task runners call `SetTaskStatus` to notify AWS Data Pipeline that a task is completed and provide information about the final status. A task runner makes this call regardless of whether the task was sucessful. A task runner does not need to call `SetTaskStatus` for tasks that are canceled by the web service during a call to [ReportTaskProgress](@ref).

# Arguments

## `taskId = ::String` -- *Required*
The ID of the task assigned to the task runner. This value is provided in the response for [PollForTask](@ref).


## `taskStatus = "FINISHED", "FAILED" or "FALSE"` -- *Required*
If `FINISHED`, the task successfully completed. If `FAILED`, the task ended unsuccessfully. Preconditions use false.


## `errorId = ::String`
If an error occurred during the task, this value specifies the error code. This value is set on the physical attempt object. It is used to display error information to the user. It should not start with string "Service_" which is reserved by the system.


## `errorMessage = ::String`
If an error occurred during the task, this value specifies a text description of the error. This value is set on the physical attempt object. It is used to display error information to the user. The web service does not parse this value.


## `errorStackTrace = ::String`
If an error occurred during the task, this value specifies the stack trace associated with the error. This value is set on the physical attempt object. It is used to display error information to the user. The web service does not parse this value.




# Returns

`SetTaskStatusOutput`

# Exceptions

`InternalServiceError`, `TaskNotFoundException`, `InvalidRequestException`, `PipelineNotFoundException` or `PipelineDeletedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/SetTaskStatus)
"""
@inline set_task_status(aws::AWSConfig=default_aws_config(); args...) = set_task_status(aws, args)

@inline set_task_status(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "SetTaskStatus", args)

@inline set_task_status(args) = set_task_status(default_aws_config(), args)


"""
    using AWSSDK.DataPipeline.validate_pipeline_definition
    validate_pipeline_definition([::AWSConfig], arguments::Dict)
    validate_pipeline_definition([::AWSConfig]; pipelineId=, pipelineObjects=, <keyword arguments>)

    using AWSCore.Services.datapipeline
    datapipeline([::AWSConfig], "ValidatePipelineDefinition", arguments::Dict)
    datapipeline([::AWSConfig], "ValidatePipelineDefinition", pipelineId=, pipelineObjects=, <keyword arguments>)

# ValidatePipelineDefinition Operation

Validates the specified pipeline definition to ensure that it is well formed and can be run without error.

# Arguments

## `pipelineId = ::String` -- *Required*
The ID of the pipeline.


## `pipelineObjects = [[ ... ], ...]` -- *Required*
The objects that define the pipeline changes to validate against the pipeline.
```
 pipelineObjects = [[
        "id" => <required> ::String,
        "name" => <required> ::String,
        "fields" => <required> [[
            "key" => <required> ::String,
            "stringValue" =>  ::String,
            "refValue" =>  ::String
        ], ...]
    ], ...]
```

## `parameterObjects = [[ ... ], ...]`
The parameter objects used with the pipeline.
```
 parameterObjects = [[
        "id" => <required> ::String,
        "attributes" => <required> [[
            "key" => <required> ::String,
            "stringValue" => <required> ::String
        ], ...]
    ], ...]
```

## `parameterValues = [[ ... ], ...]`
The parameter values used with the pipeline.
```
 parameterValues = [[
        "id" => <required> ::String,
        "stringValue" => <required> ::String
    ], ...]
```



# Returns

`ValidatePipelineDefinitionOutput`

# Exceptions

`InternalServiceError`, `InvalidRequestException`, `PipelineNotFoundException` or `PipelineDeletedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29/ValidatePipelineDefinition)
"""
@inline validate_pipeline_definition(aws::AWSConfig=default_aws_config(); args...) = validate_pipeline_definition(aws, args)

@inline validate_pipeline_definition(aws::AWSConfig, args) = AWSCore.Services.datapipeline(aws, "ValidatePipelineDefinition", args)

@inline validate_pipeline_definition(args) = validate_pipeline_definition(default_aws_config(), args)




end # module DataPipeline


#==============================================================================#
# End of file
#==============================================================================#
