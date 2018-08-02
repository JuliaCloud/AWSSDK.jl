#==============================================================================#
# CloudWatchLogs.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/logs-2014-03-28.normal.json
#==============================================================================#

__precompile__()

module CloudWatchLogs

using AWSCore


"""
    using AWSSDK.CloudWatchLogs.associate_kms_key
    associate_kms_key([::AWSConfig], arguments::Dict)
    associate_kms_key([::AWSConfig]; logGroupName=, kmsKeyId=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "AssociateKmsKey", arguments::Dict)
    logs([::AWSConfig], "AssociateKmsKey", logGroupName=, kmsKeyId=)

# AssociateKmsKey Operation

Associates the specified AWS Key Management Service (AWS KMS) customer master key (CMK) with the specified log group.

Associating an AWS KMS CMK with a log group overrides any existing associations between the log group and a CMK. After a CMK is associated with a log group, all newly ingested data for the log group is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested.

Note that it can take up to 5 minutes for this operation to take effect.

If you attempt to associate a CMK with a log group but the CMK does not exist or the CMK is disabled, you will receive an `InvalidParameterException` error.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `kmsKeyId = ::String` -- *Required*
The Amazon Resource Name (ARN) of the CMK to use when encrypting log data. For more information, see [Amazon Resource Names - AWS Key Management Service (AWS KMS)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms).




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `OperationAbortedException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/AssociateKmsKey)
"""
@inline associate_kms_key(aws::AWSConfig=default_aws_config(); args...) = associate_kms_key(aws, args)

@inline associate_kms_key(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "AssociateKmsKey", args)

@inline associate_kms_key(args) = associate_kms_key(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.cancel_export_task
    cancel_export_task([::AWSConfig], arguments::Dict)
    cancel_export_task([::AWSConfig]; taskId=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "CancelExportTask", arguments::Dict)
    logs([::AWSConfig], "CancelExportTask", taskId=)

# CancelExportTask Operation

Cancels the specified export task.

The task must be in the `PENDING` or `RUNNING` state.

# Arguments

## `taskId = ::String` -- *Required*
The ID of the export task.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `InvalidOperationException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CancelExportTask)
"""
@inline cancel_export_task(aws::AWSConfig=default_aws_config(); args...) = cancel_export_task(aws, args)

@inline cancel_export_task(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "CancelExportTask", args)

@inline cancel_export_task(args) = cancel_export_task(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.create_export_task
    create_export_task([::AWSConfig], arguments::Dict)
    create_export_task([::AWSConfig]; logGroupName=, from=, to=, destination=, <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "CreateExportTask", arguments::Dict)
    logs([::AWSConfig], "CreateExportTask", logGroupName=, from=, to=, destination=, <keyword arguments>)

# CreateExportTask Operation

Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket.

This is an asynchronous call. If all the required information is provided, this operation initiates an export task and responds with the ID of the task. After the task has started, you can use [DescribeExportTasks](@ref) to get the status of the export task. Each account can only have one active (`RUNNING` or `PENDING`) export task at a time. To cancel an export task, use [CancelExportTask](@ref).

You can export logs from multiple log groups or multiple time ranges to the same S3 bucket. To separate out log data for each export task, you can specify a prefix to be used as the Amazon S3 key prefix for all exported objects.

# Arguments

## `taskName = ::String`
The name of the export task.


## `logGroupName = ::String` -- *Required*
The name of the log group.


## `logStreamNamePrefix = ::String`
Export only log streams that match the provided prefix. If you don't specify a value, no prefix filter is applied.


## `from = ::Int` -- *Required*
The start time of the range for the request, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp earlier than this time are not exported.


## `to = ::Int` -- *Required*
The end time of the range for the request, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp later than this time are not exported.


## `destination = ::String` -- *Required*
The name of S3 bucket for the exported log data. The bucket must be in the same AWS region.


## `destinationPrefix = ::String`
The prefix used as the start of the key for every object exported. If you don't specify a value, the default is `exportedlogs`.




# Returns

`CreateExportTaskResponse`

# Exceptions

`InvalidParameterException`, `LimitExceededException`, `OperationAbortedException`, `ServiceUnavailableException`, `ResourceNotFoundException` or `ResourceAlreadyExistsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateExportTask)
"""
@inline create_export_task(aws::AWSConfig=default_aws_config(); args...) = create_export_task(aws, args)

@inline create_export_task(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "CreateExportTask", args)

@inline create_export_task(args) = create_export_task(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.create_log_group
    create_log_group([::AWSConfig], arguments::Dict)
    create_log_group([::AWSConfig]; logGroupName=, <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "CreateLogGroup", arguments::Dict)
    logs([::AWSConfig], "CreateLogGroup", logGroupName=, <keyword arguments>)

# CreateLogGroup Operation

Creates a log group with the specified name.

You can create up to 5000 log groups per account.

You must use the following guidelines when naming a log group:

*   Log group names must be unique within a region for an AWS account.

*   Log group names can be between 1 and 512 characters long.

*   Log group names consist of the following characters: a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).

If you associate a AWS Key Management Service (AWS KMS) customer master key (CMK) with the log group, ingested data is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested.

If you attempt to associate a CMK with the log group but the CMK does not exist or the CMK is disabled, you will receive an `InvalidParameterException` error.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `kmsKeyId = ::String`
The Amazon Resource Name (ARN) of the CMK to use when encrypting log data. For more information, see [Amazon Resource Names - AWS Key Management Service (AWS KMS)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms).


## `tags = ::Dict{String,String}`
The key-value pairs to use for the tags.




# Exceptions

`InvalidParameterException`, `ResourceAlreadyExistsException`, `LimitExceededException`, `OperationAbortedException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogGroup)
"""
@inline create_log_group(aws::AWSConfig=default_aws_config(); args...) = create_log_group(aws, args)

@inline create_log_group(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "CreateLogGroup", args)

@inline create_log_group(args) = create_log_group(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.create_log_stream
    create_log_stream([::AWSConfig], arguments::Dict)
    create_log_stream([::AWSConfig]; logGroupName=, logStreamName=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "CreateLogStream", arguments::Dict)
    logs([::AWSConfig], "CreateLogStream", logGroupName=, logStreamName=)

# CreateLogStream Operation

Creates a log stream for the specified log group.

There is no limit on the number of log streams that you can create for a log group.

You must use the following guidelines when naming a log stream:

*   Log stream names must be unique within the log group.

*   Log stream names can be between 1 and 512 characters long.

*   The ':' (colon) and '*' (asterisk) characters are not allowed.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `logStreamName = ::String` -- *Required*
The name of the log stream.




# Exceptions

`InvalidParameterException`, `ResourceAlreadyExistsException`, `ResourceNotFoundException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogStream)
"""
@inline create_log_stream(aws::AWSConfig=default_aws_config(); args...) = create_log_stream(aws, args)

@inline create_log_stream(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "CreateLogStream", args)

@inline create_log_stream(args) = create_log_stream(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.delete_destination
    delete_destination([::AWSConfig], arguments::Dict)
    delete_destination([::AWSConfig]; destinationName=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DeleteDestination", arguments::Dict)
    logs([::AWSConfig], "DeleteDestination", destinationName=)

# DeleteDestination Operation

Deletes the specified destination, and eventually disables all the subscription filters that publish to it. This operation does not delete the physical resource encapsulated by the destination.

# Arguments

## `destinationName = ::String` -- *Required*
The name of the destination.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `OperationAbortedException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDestination)
"""
@inline delete_destination(aws::AWSConfig=default_aws_config(); args...) = delete_destination(aws, args)

@inline delete_destination(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DeleteDestination", args)

@inline delete_destination(args) = delete_destination(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.delete_log_group
    delete_log_group([::AWSConfig], arguments::Dict)
    delete_log_group([::AWSConfig]; logGroupName=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DeleteLogGroup", arguments::Dict)
    logs([::AWSConfig], "DeleteLogGroup", logGroupName=)

# DeleteLogGroup Operation

Deletes the specified log group and permanently deletes all the archived log events associated with the log group.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `OperationAbortedException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteLogGroup)
"""
@inline delete_log_group(aws::AWSConfig=default_aws_config(); args...) = delete_log_group(aws, args)

@inline delete_log_group(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DeleteLogGroup", args)

@inline delete_log_group(args) = delete_log_group(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.delete_log_stream
    delete_log_stream([::AWSConfig], arguments::Dict)
    delete_log_stream([::AWSConfig]; logGroupName=, logStreamName=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DeleteLogStream", arguments::Dict)
    logs([::AWSConfig], "DeleteLogStream", logGroupName=, logStreamName=)

# DeleteLogStream Operation

Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `logStreamName = ::String` -- *Required*
The name of the log stream.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `OperationAbortedException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteLogStream)
"""
@inline delete_log_stream(aws::AWSConfig=default_aws_config(); args...) = delete_log_stream(aws, args)

@inline delete_log_stream(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DeleteLogStream", args)

@inline delete_log_stream(args) = delete_log_stream(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.delete_metric_filter
    delete_metric_filter([::AWSConfig], arguments::Dict)
    delete_metric_filter([::AWSConfig]; logGroupName=, filterName=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DeleteMetricFilter", arguments::Dict)
    logs([::AWSConfig], "DeleteMetricFilter", logGroupName=, filterName=)

# DeleteMetricFilter Operation

Deletes the specified metric filter.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `filterName = ::String` -- *Required*
The name of the metric filter.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `OperationAbortedException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteMetricFilter)
"""
@inline delete_metric_filter(aws::AWSConfig=default_aws_config(); args...) = delete_metric_filter(aws, args)

@inline delete_metric_filter(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DeleteMetricFilter", args)

@inline delete_metric_filter(args) = delete_metric_filter(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.delete_resource_policy
    delete_resource_policy([::AWSConfig], arguments::Dict)
    delete_resource_policy([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DeleteResourcePolicy", arguments::Dict)
    logs([::AWSConfig], "DeleteResourcePolicy", <keyword arguments>)

# DeleteResourcePolicy Operation

Deletes a resource policy from this account. This revokes the access of the identities in that policy to put log events to this account.

# Arguments

## `policyName = ::String`
The name of the policy to be revoked. This parameter is required.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteResourcePolicy)
"""
@inline delete_resource_policy(aws::AWSConfig=default_aws_config(); args...) = delete_resource_policy(aws, args)

@inline delete_resource_policy(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DeleteResourcePolicy", args)

@inline delete_resource_policy(args) = delete_resource_policy(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.delete_retention_policy
    delete_retention_policy([::AWSConfig], arguments::Dict)
    delete_retention_policy([::AWSConfig]; logGroupName=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DeleteRetentionPolicy", arguments::Dict)
    logs([::AWSConfig], "DeleteRetentionPolicy", logGroupName=)

# DeleteRetentionPolicy Operation

Deletes the specified retention policy.

Log events do not expire if they belong to log groups without a retention policy.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `OperationAbortedException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteRetentionPolicy)
"""
@inline delete_retention_policy(aws::AWSConfig=default_aws_config(); args...) = delete_retention_policy(aws, args)

@inline delete_retention_policy(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DeleteRetentionPolicy", args)

@inline delete_retention_policy(args) = delete_retention_policy(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.delete_subscription_filter
    delete_subscription_filter([::AWSConfig], arguments::Dict)
    delete_subscription_filter([::AWSConfig]; logGroupName=, filterName=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DeleteSubscriptionFilter", arguments::Dict)
    logs([::AWSConfig], "DeleteSubscriptionFilter", logGroupName=, filterName=)

# DeleteSubscriptionFilter Operation

Deletes the specified subscription filter.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `filterName = ::String` -- *Required*
The name of the subscription filter.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `OperationAbortedException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteSubscriptionFilter)
"""
@inline delete_subscription_filter(aws::AWSConfig=default_aws_config(); args...) = delete_subscription_filter(aws, args)

@inline delete_subscription_filter(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DeleteSubscriptionFilter", args)

@inline delete_subscription_filter(args) = delete_subscription_filter(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.describe_destinations
    describe_destinations([::AWSConfig], arguments::Dict)
    describe_destinations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DescribeDestinations", arguments::Dict)
    logs([::AWSConfig], "DescribeDestinations", <keyword arguments>)

# DescribeDestinations Operation

Lists all your destinations. The results are ASCII-sorted by destination name.

# Arguments

## `DestinationNamePrefix = ::String`
The prefix to match. If you don't specify a value, no prefix filter is applied.


## `nextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `limit = ::Int`
The maximum number of items returned. If you don't specify a value, the default is up to 50 items.




# Returns

`DescribeDestinationsResponse`

# Exceptions

`InvalidParameterException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDestinations)
"""
@inline describe_destinations(aws::AWSConfig=default_aws_config(); args...) = describe_destinations(aws, args)

@inline describe_destinations(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DescribeDestinations", args)

@inline describe_destinations(args) = describe_destinations(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.describe_export_tasks
    describe_export_tasks([::AWSConfig], arguments::Dict)
    describe_export_tasks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DescribeExportTasks", arguments::Dict)
    logs([::AWSConfig], "DescribeExportTasks", <keyword arguments>)

# DescribeExportTasks Operation

Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.

# Arguments

## `taskId = ::String`
The ID of the export task. Specifying a task ID filters the results to zero or one export tasks.


## `statusCode = "CANCELLED", "COMPLETED", "FAILED", "PENDING", "PENDING_CANCEL" or "RUNNING"`
The status code of the export task. Specifying a status code filters the results to zero or more export tasks.


## `nextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `limit = ::Int`
The maximum number of items returned. If you don't specify a value, the default is up to 50 items.




# Returns

`DescribeExportTasksResponse`

# Exceptions

`InvalidParameterException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeExportTasks)
"""
@inline describe_export_tasks(aws::AWSConfig=default_aws_config(); args...) = describe_export_tasks(aws, args)

@inline describe_export_tasks(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DescribeExportTasks", args)

@inline describe_export_tasks(args) = describe_export_tasks(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.describe_log_groups
    describe_log_groups([::AWSConfig], arguments::Dict)
    describe_log_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DescribeLogGroups", arguments::Dict)
    logs([::AWSConfig], "DescribeLogGroups", <keyword arguments>)

# DescribeLogGroups Operation

Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.

# Arguments

## `logGroupNamePrefix = ::String`
The prefix to match.


## `nextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `limit = ::Int`
The maximum number of items returned. If you don't specify a value, the default is up to 50 items.




# Returns

`DescribeLogGroupsResponse`

# Exceptions

`InvalidParameterException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogGroups)
"""
@inline describe_log_groups(aws::AWSConfig=default_aws_config(); args...) = describe_log_groups(aws, args)

@inline describe_log_groups(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DescribeLogGroups", args)

@inline describe_log_groups(args) = describe_log_groups(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.describe_log_streams
    describe_log_streams([::AWSConfig], arguments::Dict)
    describe_log_streams([::AWSConfig]; logGroupName=, <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DescribeLogStreams", arguments::Dict)
    logs([::AWSConfig], "DescribeLogStreams", logGroupName=, <keyword arguments>)

# DescribeLogStreams Operation

Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered.

This operation has a limit of five transactions per second, after which transactions are throttled.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `logStreamNamePrefix = ::String`
The prefix to match.

iIf `orderBy` is `LastEventTime`,you cannot specify this parameter.


## `orderBy = "LogStreamName" or "LastEventTime"`
If the value is `LogStreamName`, the results are ordered by log stream name. If the value is `LastEventTime`, the results are ordered by the event time. The default value is `LogStreamName`.

If you order the results by event time, you cannot specify the `logStreamNamePrefix` parameter.

lastEventTimestamp represents the time of the most recent log event in the log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. lastEventTimeStamp updates on an eventual consistency basis. It typically updates in less than an hour from ingestion, but may take longer in some rare situations.


## `descending = ::Bool`
If the value is true, results are returned in descending order. If the value is to false, results are returned in ascending order. The default value is false.


## `nextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `limit = ::Int`
The maximum number of items returned. If you don't specify a value, the default is up to 50 items.




# Returns

`DescribeLogStreamsResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogStreams)
"""
@inline describe_log_streams(aws::AWSConfig=default_aws_config(); args...) = describe_log_streams(aws, args)

@inline describe_log_streams(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DescribeLogStreams", args)

@inline describe_log_streams(args) = describe_log_streams(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.describe_metric_filters
    describe_metric_filters([::AWSConfig], arguments::Dict)
    describe_metric_filters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DescribeMetricFilters", arguments::Dict)
    logs([::AWSConfig], "DescribeMetricFilters", <keyword arguments>)

# DescribeMetricFilters Operation

Lists the specified metric filters. You can list all the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.

# Arguments

## `logGroupName = ::String`
The name of the log group.


## `filterNamePrefix = ::String`
The prefix to match.


## `nextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `limit = ::Int`
The maximum number of items returned. If you don't specify a value, the default is up to 50 items.


## `metricName = ::String`



## `metricNamespace = ::String`
The namespace of the CloudWatch metric.




# Returns

`DescribeMetricFiltersResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeMetricFilters)
"""
@inline describe_metric_filters(aws::AWSConfig=default_aws_config(); args...) = describe_metric_filters(aws, args)

@inline describe_metric_filters(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DescribeMetricFilters", args)

@inline describe_metric_filters(args) = describe_metric_filters(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.describe_resource_policies
    describe_resource_policies([::AWSConfig], arguments::Dict)
    describe_resource_policies([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DescribeResourcePolicies", arguments::Dict)
    logs([::AWSConfig], "DescribeResourcePolicies", <keyword arguments>)

# DescribeResourcePolicies Operation

Lists the resource policies in this account.

# Arguments

## `nextToken = ::String`



## `limit = ::Int`
The maximum number of resource policies to be displayed with one call of this API.




# Returns

`DescribeResourcePoliciesResponse`

# Exceptions

`InvalidParameterException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeResourcePolicies)
"""
@inline describe_resource_policies(aws::AWSConfig=default_aws_config(); args...) = describe_resource_policies(aws, args)

@inline describe_resource_policies(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DescribeResourcePolicies", args)

@inline describe_resource_policies(args) = describe_resource_policies(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.describe_subscription_filters
    describe_subscription_filters([::AWSConfig], arguments::Dict)
    describe_subscription_filters([::AWSConfig]; logGroupName=, <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DescribeSubscriptionFilters", arguments::Dict)
    logs([::AWSConfig], "DescribeSubscriptionFilters", logGroupName=, <keyword arguments>)

# DescribeSubscriptionFilters Operation

Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `filterNamePrefix = ::String`
The prefix to match. If you don't specify a value, no prefix filter is applied.


## `nextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `limit = ::Int`
The maximum number of items returned. If you don't specify a value, the default is up to 50 items.




# Returns

`DescribeSubscriptionFiltersResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeSubscriptionFilters)
"""
@inline describe_subscription_filters(aws::AWSConfig=default_aws_config(); args...) = describe_subscription_filters(aws, args)

@inline describe_subscription_filters(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DescribeSubscriptionFilters", args)

@inline describe_subscription_filters(args) = describe_subscription_filters(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.disassociate_kms_key
    disassociate_kms_key([::AWSConfig], arguments::Dict)
    disassociate_kms_key([::AWSConfig]; logGroupName=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "DisassociateKmsKey", arguments::Dict)
    logs([::AWSConfig], "DisassociateKmsKey", logGroupName=)

# DisassociateKmsKey Operation

Disassociates the associated AWS Key Management Service (AWS KMS) customer master key (CMK) from the specified log group.

After the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested.

Note that it can take up to 5 minutes for this operation to take effect.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `OperationAbortedException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DisassociateKmsKey)
"""
@inline disassociate_kms_key(aws::AWSConfig=default_aws_config(); args...) = disassociate_kms_key(aws, args)

@inline disassociate_kms_key(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "DisassociateKmsKey", args)

@inline disassociate_kms_key(args) = disassociate_kms_key(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.filter_log_events
    filter_log_events([::AWSConfig], arguments::Dict)
    filter_log_events([::AWSConfig]; logGroupName=, <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "FilterLogEvents", arguments::Dict)
    logs([::AWSConfig], "FilterLogEvents", logGroupName=, <keyword arguments>)

# FilterLogEvents Operation

Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream.

By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events), or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `logStreamNames = [::String, ...]`
Optional list of log stream names.


## `startTime = ::Int`
The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp before this time are not returned.


## `endTime = ::Int`
The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp later than this time are not returned.


## `filterPattern = ::String`
The filter pattern to use. If not provided, all the events are matched.


## `nextToken = ::String`
The token for the next set of events to return. (You received this token from a previous call.)


## `limit = ::Int`
The maximum number of events to return. The default is 10,000 events.


## `interleaved = ::Bool`
If the value is true, the operation makes a best effort to provide responses that contain events from multiple log streams within the log group, interleaved in a single response. If the value is false, all the matched log events in the first log stream are searched first, then those in the next log stream, and so on. The default is false.




# Returns

`FilterLogEventsResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/FilterLogEvents)
"""
@inline filter_log_events(aws::AWSConfig=default_aws_config(); args...) = filter_log_events(aws, args)

@inline filter_log_events(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "FilterLogEvents", args)

@inline filter_log_events(args) = filter_log_events(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.get_log_events
    get_log_events([::AWSConfig], arguments::Dict)
    get_log_events([::AWSConfig]; logGroupName=, logStreamName=, <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "GetLogEvents", arguments::Dict)
    logs([::AWSConfig], "GetLogEvents", logGroupName=, logStreamName=, <keyword arguments>)

# GetLogEvents Operation

Lists log events from the specified log stream. You can list all the log events or filter using a time range.

By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `logStreamName = ::String` -- *Required*
The name of the log stream.


## `startTime = ::Int`
The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp earlier than this time are not included.


## `endTime = ::Int`
The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp later than this time are not included.


## `nextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `limit = ::Int`
The maximum number of log events returned. If you don't specify a value, the maximum is as many log events as can fit in a response size of 1 MB, up to 10,000 log events.


## `startFromHead = ::Bool`
If the value is true, the earliest log events are returned first. If the value is false, the latest log events are returned first. The default value is false.




# Returns

`GetLogEventsResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogEvents)
"""
@inline get_log_events(aws::AWSConfig=default_aws_config(); args...) = get_log_events(aws, args)

@inline get_log_events(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "GetLogEvents", args)

@inline get_log_events(args) = get_log_events(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.list_tags_log_group
    list_tags_log_group([::AWSConfig], arguments::Dict)
    list_tags_log_group([::AWSConfig]; logGroupName=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "ListTagsLogGroup", arguments::Dict)
    logs([::AWSConfig], "ListTagsLogGroup", logGroupName=)

# ListTagsLogGroup Operation

Lists the tags for the specified log group.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.




# Returns

`ListTagsLogGroupResponse`

# Exceptions

`ResourceNotFoundException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListTagsLogGroup)
"""
@inline list_tags_log_group(aws::AWSConfig=default_aws_config(); args...) = list_tags_log_group(aws, args)

@inline list_tags_log_group(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "ListTagsLogGroup", args)

@inline list_tags_log_group(args) = list_tags_log_group(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.put_destination
    put_destination([::AWSConfig], arguments::Dict)
    put_destination([::AWSConfig]; destinationName=, targetArn=, roleArn=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "PutDestination", arguments::Dict)
    logs([::AWSConfig], "PutDestination", destinationName=, targetArn=, roleArn=)

# PutDestination Operation

Creates or updates a destination. A destination encapsulates a physical resource (such as an Amazon Kinesis stream) and enables you to subscribe to a real-time stream of log events for a different account, ingested using [PutLogEvents](@ref). Currently, the only supported physical resource is a Kinesis stream belonging to the same account as the destination.

Through an access policy, a destination controls what is written to its Kinesis stream. By default, `PutDestination` does not set any access policy with the destination, which means a cross-account user cannot call [PutSubscriptionFilter](@ref) against this destination. To enable this, the destination owner must call [PutDestinationPolicy](@ref) after `PutDestination`.

# Arguments

## `destinationName = ::String` -- *Required*
A name for the destination.


## `targetArn = ::String` -- *Required*
The ARN of an Amazon Kinesis stream to which to deliver matching log events.


## `roleArn = ::String` -- *Required*
The ARN of an IAM role that grants CloudWatch Logs permissions to call the Amazon Kinesis PutRecord operation on the destination stream.




# Returns

`PutDestinationResponse`

# Exceptions

`InvalidParameterException`, `OperationAbortedException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestination)
"""
@inline put_destination(aws::AWSConfig=default_aws_config(); args...) = put_destination(aws, args)

@inline put_destination(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "PutDestination", args)

@inline put_destination(args) = put_destination(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.put_destination_policy
    put_destination_policy([::AWSConfig], arguments::Dict)
    put_destination_policy([::AWSConfig]; destinationName=, accessPolicy=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "PutDestinationPolicy", arguments::Dict)
    logs([::AWSConfig], "PutDestinationPolicy", destinationName=, accessPolicy=)

# PutDestinationPolicy Operation

Creates or updates an access policy associated with an existing destination. An access policy is an [IAM policy document](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html) that is used to authorize claims to register a subscription filter against a given destination.

# Arguments

## `destinationName = ::String` -- *Required*
A name for an existing destination.


## `accessPolicy = ::String` -- *Required*
An IAM policy document that authorizes cross-account users to deliver their log events to the associated destination.




# Exceptions

`InvalidParameterException`, `OperationAbortedException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestinationPolicy)
"""
@inline put_destination_policy(aws::AWSConfig=default_aws_config(); args...) = put_destination_policy(aws, args)

@inline put_destination_policy(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "PutDestinationPolicy", args)

@inline put_destination_policy(args) = put_destination_policy(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.put_log_events
    put_log_events([::AWSConfig], arguments::Dict)
    put_log_events([::AWSConfig]; logGroupName=, logStreamName=, logEvents=, <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "PutLogEvents", arguments::Dict)
    logs([::AWSConfig], "PutLogEvents", logGroupName=, logStreamName=, logEvents=, <keyword arguments>)

# PutLogEvents Operation

Uploads a batch of log events to the specified log stream.

You must include the sequence token obtained from the response of the previous call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using [DescribeLogStreams](@ref). If you call `PutLogEvents` twice within a narrow time period using the same value for `sequenceToken`, both calls may be successful, or one may be rejected.

The batch of events must satisfy the following constraints:

*   The maximum batch size is 1,048,576 bytes, and this size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.

*   None of the log events in the batch can be more than 2 hours in the future.

*   None of the log events in the batch can be older than 14 days or the retention period of the log group.

*   The log events in the batch must be in chronological ordered by their time stamp (the time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC).

*   The maximum number of log events in a batch is 10,000.

*   A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `logStreamName = ::String` -- *Required*
The name of the log stream.


## `logEvents = [[ ... ], ...]` -- *Required*
The log events.
```
 logEvents = [[
        "timestamp" => <required> ::Int,
        "message" => <required> ::String
    ], ...]
```

## `sequenceToken = ::String`
The sequence token obtained from the response of the previous `PutLogEvents` call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using [DescribeLogStreams](@ref). If you call `PutLogEvents` twice within a narrow time period using the same value for `sequenceToken`, both calls may be successful, or one may be rejected.




# Returns

`PutLogEventsResponse`

# Exceptions

`InvalidParameterException`, `InvalidSequenceTokenException`, `DataAlreadyAcceptedException`, `ResourceNotFoundException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutLogEvents)
"""
@inline put_log_events(aws::AWSConfig=default_aws_config(); args...) = put_log_events(aws, args)

@inline put_log_events(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "PutLogEvents", args)

@inline put_log_events(args) = put_log_events(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.put_metric_filter
    put_metric_filter([::AWSConfig], arguments::Dict)
    put_metric_filter([::AWSConfig]; logGroupName=, filterName=, filterPattern=, metricTransformations=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "PutMetricFilter", arguments::Dict)
    logs([::AWSConfig], "PutMetricFilter", logGroupName=, filterName=, filterPattern=, metricTransformations=)

# PutMetricFilter Operation

Creates or updates a metric filter and associates it with the specified log group. Metric filters allow you to configure rules to extract metric data from log events ingested through [PutLogEvents](@ref).

The maximum number of metric filters that can be associated with a log group is 100.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `filterName = ::String` -- *Required*
A name for the metric filter.


## `filterPattern = ::String` -- *Required*
A filter pattern for extracting metric data out of ingested log events.


## `metricTransformations = [[ ... ], ...]` -- *Required*
A collection of information that defines how metric data gets emitted.
```
 metricTransformations = [[
        "metricName" => <required> ::String,
        "metricNamespace" => <required> ::String,
        "metricValue" => <required> ::String,
        "defaultValue" =>  double
    ], ...]
```



# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `OperationAbortedException`, `LimitExceededException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutMetricFilter)
"""
@inline put_metric_filter(aws::AWSConfig=default_aws_config(); args...) = put_metric_filter(aws, args)

@inline put_metric_filter(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "PutMetricFilter", args)

@inline put_metric_filter(args) = put_metric_filter(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.put_resource_policy
    put_resource_policy([::AWSConfig], arguments::Dict)
    put_resource_policy([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "PutResourcePolicy", arguments::Dict)
    logs([::AWSConfig], "PutResourcePolicy", <keyword arguments>)

# PutResourcePolicy Operation

Creates or updates a resource policy allowing other AWS services to put log events to this account, such as Amazon Route 53. An account can have up to 50 resource policies per region.

# Arguments

## `policyName = ::String`
Name of the new policy. This parameter is required.


## `policyDocument = ::String`
Details of the new policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string.

The following example creates a resource policy enabling the Route 53 service to put DNS query logs in to the specified log group. Replace "logArn" with the ARN of your CloudWatch Logs resource, such as a log group or log stream.

{ "Version": "2012-10-17" "Statement": [ { "Sid": "Route53LogsToCloudWatchLogs", "Effect": "Allow", "Principal": { "Service": [ "route53.amazonaws.com" ] }, "Action":"logs:PutLogEvents", "Resource": logArn } ] }




# Returns

`PutResourcePolicyResponse`

# Exceptions

`InvalidParameterException`, `LimitExceededException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutResourcePolicy)
"""
@inline put_resource_policy(aws::AWSConfig=default_aws_config(); args...) = put_resource_policy(aws, args)

@inline put_resource_policy(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "PutResourcePolicy", args)

@inline put_resource_policy(args) = put_resource_policy(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.put_retention_policy
    put_retention_policy([::AWSConfig], arguments::Dict)
    put_retention_policy([::AWSConfig]; logGroupName=, retentionInDays=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "PutRetentionPolicy", arguments::Dict)
    logs([::AWSConfig], "PutRetentionPolicy", logGroupName=, retentionInDays=)

# PutRetentionPolicy Operation

Sets the retention of the specified log group. A retention policy allows you to configure the number of days for which to retain log events in the specified log group.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `retentionInDays = ::Int` -- *Required*





# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `OperationAbortedException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutRetentionPolicy)
"""
@inline put_retention_policy(aws::AWSConfig=default_aws_config(); args...) = put_retention_policy(aws, args)

@inline put_retention_policy(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "PutRetentionPolicy", args)

@inline put_retention_policy(args) = put_retention_policy(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.put_subscription_filter
    put_subscription_filter([::AWSConfig], arguments::Dict)
    put_subscription_filter([::AWSConfig]; logGroupName=, filterName=, filterPattern=, destinationArn=, <keyword arguments>)

    using AWSCore.Services.logs
    logs([::AWSConfig], "PutSubscriptionFilter", arguments::Dict)
    logs([::AWSConfig], "PutSubscriptionFilter", logGroupName=, filterName=, filterPattern=, destinationArn=, <keyword arguments>)

# PutSubscriptionFilter Operation

Creates or updates a subscription filter and associates it with the specified log group. Subscription filters allow you to subscribe to a real-time stream of log events ingested through [PutLogEvents](@ref) and have them delivered to a specific destination. Currently, the supported destinations are:

*   An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.

*   A logical destination that belongs to a different account, for cross-account delivery.

*   An Amazon Kinesis Firehose delivery stream that belongs to the same account as the subscription filter, for same-account delivery.

*   An AWS Lambda function that belongs to the same account as the subscription filter, for same-account delivery.

There can only be one subscription filter associated with a log group. If you are updating an existing filter, you must specify the correct name in `filterName`. Otherwise, the call fails because you cannot associate a second filter with a log group.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `filterName = ::String` -- *Required*
A name for the subscription filter. If you are updating an existing filter, you must specify the correct name in `filterName`. Otherwise, the call fails because you cannot associate a second filter with a log group. To find the name of the filter currently associated with a log group, use [DescribeSubscriptionFilters](@ref).


## `filterPattern = ::String` -- *Required*
A filter pattern for subscribing to a filtered stream of log events.


## `destinationArn = ::String` -- *Required*
The ARN of the destination to deliver matching log events to. Currently, the supported destinations are:

*   An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.

*   A logical destination (specified using an ARN) belonging to a different account, for cross-account delivery.

*   An Amazon Kinesis Firehose delivery stream belonging to the same account as the subscription filter, for same-account delivery.

*   An AWS Lambda function belonging to the same account as the subscription filter, for same-account delivery.


## `roleArn = ::String`
The ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery.


## `distribution = "Random" or "ByLogStream"`
The method used to distribute log data to the destination. By default log data is grouped by log stream, but the grouping can be set to random for a more even distribution. This property is only applicable when the destination is an Amazon Kinesis stream.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `OperationAbortedException`, `LimitExceededException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutSubscriptionFilter)
"""
@inline put_subscription_filter(aws::AWSConfig=default_aws_config(); args...) = put_subscription_filter(aws, args)

@inline put_subscription_filter(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "PutSubscriptionFilter", args)

@inline put_subscription_filter(args) = put_subscription_filter(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.tag_log_group
    tag_log_group([::AWSConfig], arguments::Dict)
    tag_log_group([::AWSConfig]; logGroupName=, tags=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "TagLogGroup", arguments::Dict)
    logs([::AWSConfig], "TagLogGroup", logGroupName=, tags=)

# TagLogGroup Operation

Adds or updates the specified tags for the specified log group.

To list the tags for a log group, use [ListTagsLogGroup](@ref). To remove tags, use [UntagLogGroup](@ref).

For more information about tags, see [Tag Log Groups in Amazon CloudWatch Logs](http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/log-group-tagging.html) in the *Amazon CloudWatch Logs User Guide*.

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `tags = ::Dict{String,String}` -- *Required*
The key-value pairs to use for the tags.




# Exceptions

`ResourceNotFoundException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TagLogGroup)
"""
@inline tag_log_group(aws::AWSConfig=default_aws_config(); args...) = tag_log_group(aws, args)

@inline tag_log_group(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "TagLogGroup", args)

@inline tag_log_group(args) = tag_log_group(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.test_metric_filter
    test_metric_filter([::AWSConfig], arguments::Dict)
    test_metric_filter([::AWSConfig]; filterPattern=, logEventMessages=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "TestMetricFilter", arguments::Dict)
    logs([::AWSConfig], "TestMetricFilter", filterPattern=, logEventMessages=)

# TestMetricFilter Operation

Tests the filter pattern of a metric filter against a sample of log event messages. You can use this operation to validate the correctness of a metric filter pattern.

# Arguments

## `filterPattern = ::String` -- *Required*



## `logEventMessages = [::String, ...]` -- *Required*
The log event messages to test.




# Returns

`TestMetricFilterResponse`

# Exceptions

`InvalidParameterException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TestMetricFilter)
"""
@inline test_metric_filter(aws::AWSConfig=default_aws_config(); args...) = test_metric_filter(aws, args)

@inline test_metric_filter(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "TestMetricFilter", args)

@inline test_metric_filter(args) = test_metric_filter(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchLogs.untag_log_group
    untag_log_group([::AWSConfig], arguments::Dict)
    untag_log_group([::AWSConfig]; logGroupName=, tags=)

    using AWSCore.Services.logs
    logs([::AWSConfig], "UntagLogGroup", arguments::Dict)
    logs([::AWSConfig], "UntagLogGroup", logGroupName=, tags=)

# UntagLogGroup Operation

Removes the specified tags from the specified log group.

To list the tags for a log group, use [ListTagsLogGroup](@ref). To add tags, use [UntagLogGroup](@ref).

# Arguments

## `logGroupName = ::String` -- *Required*
The name of the log group.


## `tags = [::String, ...]` -- *Required*
The tag keys. The corresponding tags are removed from the log group.




# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UntagLogGroup)
"""
@inline untag_log_group(aws::AWSConfig=default_aws_config(); args...) = untag_log_group(aws, args)

@inline untag_log_group(aws::AWSConfig, args) = AWSCore.Services.logs(aws, "UntagLogGroup", args)

@inline untag_log_group(args) = untag_log_group(default_aws_config(), args)




end # module CloudWatchLogs


#==============================================================================#
# End of file
#==============================================================================#
