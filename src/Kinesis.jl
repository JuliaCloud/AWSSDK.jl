#==============================================================================#
# Kinesis.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/kinesis-2013-12-02.normal.json
#==============================================================================#

__precompile__()

module Kinesis

using AWSCore


"""
    using AWSSDK.Kinesis.add_tags_to_stream
    add_tags_to_stream([::AWSConfig], arguments::Dict)
    add_tags_to_stream([::AWSConfig]; StreamName=, Tags=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "AddTagsToStream", arguments::Dict)
    kinesis([::AWSConfig], "AddTagsToStream", StreamName=, Tags=)

# AddTagsToStream Operation

Adds or updates tags for the specified Kinesis data stream. Each stream can have up to 10 tags.

If tags have already been assigned to the stream, `AddTagsToStream` overwrites any existing tags that correspond to the specified tag keys.

[AddTagsToStream](@ref) has a limit of five transactions per second per account.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream.


## `Tags = ::Dict{String,String}` -- *Required*
The set of key-value pairs to use to create the tags.




# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/AddTagsToStream)
"""
@inline add_tags_to_stream(aws::AWSConfig=default_aws_config(); args...) = add_tags_to_stream(aws, args)

@inline add_tags_to_stream(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "AddTagsToStream", args)

@inline add_tags_to_stream(args) = add_tags_to_stream(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.create_stream
    create_stream([::AWSConfig], arguments::Dict)
    create_stream([::AWSConfig]; StreamName=, ShardCount=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "CreateStream", arguments::Dict)
    kinesis([::AWSConfig], "CreateStream", StreamName=, ShardCount=)

# CreateStream Operation

Creates a Kinesis data stream. A stream captures and transports data records that are continuously emitted from different data sources or *producers*. Scale-out within a stream is explicitly supported by means of shards, which are uniquely identified groups of data records in a stream.

You specify and control the number of shards that a stream is composed of. Each shard can support reads up to five transactions per second, up to a maximum data read total of 2 MB per second. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MB per second. If the amount of data input increases or decreases, you can add or remove shards.

The stream name identifies the stream. The name is scoped to the AWS account used by the application. It is also scoped by AWS Region. That is, two streams in two different accounts can have the same name, and two streams in the same account, but in two different Regions, can have the same name.

`CreateStream` is an asynchronous operation. Upon receiving a `CreateStream` request, Kinesis Data Streams immediately returns and sets the stream status to `CREATING`. After the stream is created, Kinesis Data Streams sets the stream status to `ACTIVE`. You should perform read and write operations only on an `ACTIVE` stream.

You receive a `LimitExceededException` when making a `CreateStream` request when you try to do one of the following:

*   Have more than five streams in the `CREATING` state at any point in time.

*   Create more shards than are authorized for your account.

For the default shard limit for an AWS account, see [Amazon Kinesis Data Streams Limits](http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html) in the *Amazon Kinesis Data Streams Developer Guide*. To increase this limit, [contact AWS Support](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html).

You can use `DescribeStream` to check the stream status, which is returned in `StreamStatus`.

[CreateStream](@ref) has a limit of five transactions per second per account.

# Arguments

## `StreamName = ::String` -- *Required*
A name to identify the stream. The stream name is scoped to the AWS account used by the application that creates the stream. It is also scoped by AWS Region. That is, two streams in two different AWS accounts can have the same name. Two streams in the same AWS account but in two different Regions can also have the same name.


## `ShardCount = ::Int` -- *Required*
The number of shards that the stream will use. The throughput of the stream is a function of the number of shards; more shards are required for greater provisioned throughput.

DefaultShardLimit;




# Exceptions

`ResourceInUseException`, `LimitExceededException` or `InvalidArgumentException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/CreateStream)
"""
@inline create_stream(aws::AWSConfig=default_aws_config(); args...) = create_stream(aws, args)

@inline create_stream(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "CreateStream", args)

@inline create_stream(args) = create_stream(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.decrease_stream_retention_period
    decrease_stream_retention_period([::AWSConfig], arguments::Dict)
    decrease_stream_retention_period([::AWSConfig]; StreamName=, RetentionPeriodHours=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "DecreaseStreamRetentionPeriod", arguments::Dict)
    kinesis([::AWSConfig], "DecreaseStreamRetentionPeriod", StreamName=, RetentionPeriodHours=)

# DecreaseStreamRetentionPeriod Operation

Decreases the Kinesis data stream's retention period, which is the length of time data records are accessible after they are added to the stream. The minimum value of a stream's retention period is 24 hours.

This operation may result in lost data. For example, if the stream's retention period is 48 hours and is decreased to 24 hours, any data already in the stream that is older than 24 hours is inaccessible.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream to modify.


## `RetentionPeriodHours = ::Int` -- *Required*
The new retention period of the stream, in hours. Must be less than the current retention period.




# Exceptions

`ResourceInUseException`, `ResourceNotFoundException`, `LimitExceededException` or `InvalidArgumentException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DecreaseStreamRetentionPeriod)
"""
@inline decrease_stream_retention_period(aws::AWSConfig=default_aws_config(); args...) = decrease_stream_retention_period(aws, args)

@inline decrease_stream_retention_period(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "DecreaseStreamRetentionPeriod", args)

@inline decrease_stream_retention_period(args) = decrease_stream_retention_period(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.delete_stream
    delete_stream([::AWSConfig], arguments::Dict)
    delete_stream([::AWSConfig]; StreamName=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "DeleteStream", arguments::Dict)
    kinesis([::AWSConfig], "DeleteStream", StreamName=)

# DeleteStream Operation

Deletes a Kinesis data stream and all its shards and data. You must shut down any applications that are operating on the stream before you delete the stream. If an application attempts to operate on a deleted stream, it receives the exception `ResourceNotFoundException`.

If the stream is in the `ACTIVE` state, you can delete it. After a `DeleteStream` request, the specified stream is in the `DELETING` state until Kinesis Data Streams completes the deletion.

**Note:** Kinesis Data Streams might continue to accept data read and write operations, such as [PutRecord](@ref), [PutRecords](@ref), and [GetRecords](@ref), on a stream in the `DELETING` state until the stream deletion is complete.

When you delete a stream, any shards in that stream are also deleted, and any tags are dissociated from the stream.

You can use the [DescribeStream](@ref) operation to check the state of the stream, which is returned in `StreamStatus`.

[DeleteStream](@ref) has a limit of five transactions per second per account.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream to delete.




# Exceptions

`ResourceNotFoundException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DeleteStream)
"""
@inline delete_stream(aws::AWSConfig=default_aws_config(); args...) = delete_stream(aws, args)

@inline delete_stream(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "DeleteStream", args)

@inline delete_stream(args) = delete_stream(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.describe_limits
    describe_limits([::AWSConfig], arguments::Dict)
    describe_limits([::AWSConfig]; )

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "DescribeLimits", arguments::Dict)
    kinesis([::AWSConfig], "DescribeLimits", )

# DescribeLimits Operation

Describes the shard limits and usage for the account.

If you update your account limits, the old limits might be returned for a few minutes.

This operation has a limit of one transaction per second per account.

# Arguments



# Returns

`DescribeLimitsOutput`

# Exceptions

`LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DescribeLimits)
"""
@inline describe_limits(aws::AWSConfig=default_aws_config(); args...) = describe_limits(aws, args)

@inline describe_limits(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "DescribeLimits", args)

@inline describe_limits(args) = describe_limits(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.describe_stream
    describe_stream([::AWSConfig], arguments::Dict)
    describe_stream([::AWSConfig]; StreamName=, <keyword arguments>)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "DescribeStream", arguments::Dict)
    kinesis([::AWSConfig], "DescribeStream", StreamName=, <keyword arguments>)

# DescribeStream Operation

Describes the specified Kinesis data stream.

The information returned includes the stream name, Amazon Resource Name (ARN), creation time, enhanced metric configuration, and shard map. The shard map is an array of shard objects. For each shard object, there is the hash key and sequence number ranges that the shard spans, and the IDs of any earlier shards that played in a role in creating the shard. Every record ingested in the stream is identified by a sequence number, which is assigned when the record is put into the stream.

You can limit the number of shards returned by each call. For more information, see [Retrieving Shards from a Stream](http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html) in the *Amazon Kinesis Data Streams Developer Guide*.

There are no guarantees about the chronological order shards returned. To process shards in chronological order, use the ID of the parent shard to track the lineage to the oldest shard.

This operation has a limit of 10 transactions per second per account.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream to describe.


## `Limit = ::Int`
The maximum number of shards to return in a single call. The default value is 100. If you specify a value greater than 100, at most 100 shards are returned.


## `ExclusiveStartShardId = ::String`
The shard ID of the shard to start with.




# Returns

`DescribeStreamOutput`

# Exceptions

`ResourceNotFoundException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DescribeStream)
"""
@inline describe_stream(aws::AWSConfig=default_aws_config(); args...) = describe_stream(aws, args)

@inline describe_stream(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "DescribeStream", args)

@inline describe_stream(args) = describe_stream(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.describe_stream_summary
    describe_stream_summary([::AWSConfig], arguments::Dict)
    describe_stream_summary([::AWSConfig]; StreamName=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "DescribeStreamSummary", arguments::Dict)
    kinesis([::AWSConfig], "DescribeStreamSummary", StreamName=)

# DescribeStreamSummary Operation

Provides a summarized description of the specified Kinesis data stream without the shard list.

The information returned includes the stream name, Amazon Resource Name (ARN), status, record retention period, approximate creation time, monitoring, encryption details, and open shard count.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream to describe.




# Returns

`DescribeStreamSummaryOutput`

# Exceptions

`ResourceNotFoundException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DescribeStreamSummary)
"""
@inline describe_stream_summary(aws::AWSConfig=default_aws_config(); args...) = describe_stream_summary(aws, args)

@inline describe_stream_summary(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "DescribeStreamSummary", args)

@inline describe_stream_summary(args) = describe_stream_summary(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.disable_enhanced_monitoring
    disable_enhanced_monitoring([::AWSConfig], arguments::Dict)
    disable_enhanced_monitoring([::AWSConfig]; StreamName=, ShardLevelMetrics=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "DisableEnhancedMonitoring", arguments::Dict)
    kinesis([::AWSConfig], "DisableEnhancedMonitoring", StreamName=, ShardLevelMetrics=)

# DisableEnhancedMonitoring Operation

Disables enhanced monitoring.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the Kinesis data stream for which to disable enhanced monitoring.


## `ShardLevelMetrics = ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds" or "ALL", ...]` -- *Required*
List of shard-level metrics to disable.

The following are the valid shard-level metrics. The value "`ALL`" disables every metric.

*   `IncomingBytes`

*   `IncomingRecords`

*   `OutgoingBytes`

*   `OutgoingRecords`

*   `WriteProvisionedThroughputExceeded`

*   `ReadProvisionedThroughputExceeded`

*   `IteratorAgeMilliseconds`

*   `ALL`

For more information, see [Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch](http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html) in the *Amazon Kinesis Data Streams Developer Guide*.




# Returns

`EnhancedMonitoringOutput`

# Exceptions

`InvalidArgumentException`, `LimitExceededException`, `ResourceInUseException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DisableEnhancedMonitoring)
"""
@inline disable_enhanced_monitoring(aws::AWSConfig=default_aws_config(); args...) = disable_enhanced_monitoring(aws, args)

@inline disable_enhanced_monitoring(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "DisableEnhancedMonitoring", args)

@inline disable_enhanced_monitoring(args) = disable_enhanced_monitoring(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.enable_enhanced_monitoring
    enable_enhanced_monitoring([::AWSConfig], arguments::Dict)
    enable_enhanced_monitoring([::AWSConfig]; StreamName=, ShardLevelMetrics=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "EnableEnhancedMonitoring", arguments::Dict)
    kinesis([::AWSConfig], "EnableEnhancedMonitoring", StreamName=, ShardLevelMetrics=)

# EnableEnhancedMonitoring Operation

Enables enhanced Kinesis data stream monitoring for shard-level metrics.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream for which to enable enhanced monitoring.


## `ShardLevelMetrics = ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds" or "ALL", ...]` -- *Required*
List of shard-level metrics to enable.

The following are the valid shard-level metrics. The value "`ALL`" enables every metric.

*   `IncomingBytes`

*   `IncomingRecords`

*   `OutgoingBytes`

*   `OutgoingRecords`

*   `WriteProvisionedThroughputExceeded`

*   `ReadProvisionedThroughputExceeded`

*   `IteratorAgeMilliseconds`

*   `ALL`

For more information, see [Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch](http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html) in the *Amazon Kinesis Data Streams Developer Guide*.




# Returns

`EnhancedMonitoringOutput`

# Exceptions

`InvalidArgumentException`, `LimitExceededException`, `ResourceInUseException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/EnableEnhancedMonitoring)
"""
@inline enable_enhanced_monitoring(aws::AWSConfig=default_aws_config(); args...) = enable_enhanced_monitoring(aws, args)

@inline enable_enhanced_monitoring(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "EnableEnhancedMonitoring", args)

@inline enable_enhanced_monitoring(args) = enable_enhanced_monitoring(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.get_records
    get_records([::AWSConfig], arguments::Dict)
    get_records([::AWSConfig]; ShardIterator=, <keyword arguments>)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "GetRecords", arguments::Dict)
    kinesis([::AWSConfig], "GetRecords", ShardIterator=, <keyword arguments>)

# GetRecords Operation

Gets data records from a Kinesis data stream's shard.

Specify a shard iterator using the `ShardIterator` parameter. The shard iterator specifies the position in the shard from which you want to start reading data records sequentially. If there are no records available in the portion of the shard that the iterator points to, [GetRecords](@ref) returns an empty list. It might take multiple calls to get to a portion of the shard that contains records.

You can scale by provisioning multiple shards per stream while considering service limits (for more information, see [Amazon Kinesis Data Streams Limits](http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html) in the *Amazon Kinesis Data Streams Developer Guide*). Your application should have one thread per shard, each reading continuously from its stream. To read from a stream continually, call [GetRecords](@ref) in a loop. Use [GetShardIterator](@ref) to get the shard iterator to specify in the first [GetRecords](@ref) call. [GetRecords](@ref) returns a new shard iterator in `NextShardIterator`. Specify the shard iterator returned in `NextShardIterator` in subsequent calls to [GetRecords](@ref). If the shard has been closed, the shard iterator can't return more data and [GetRecords](@ref) returns `null` in `NextShardIterator`. You can terminate the loop when the shard is closed, or when the shard iterator reaches the record with the sequence number or other attribute that marks it as the last record to process.

Each data record can be up to 1 MB in size, and each shard can read up to 2 MB per second. You can ensure that your calls don't exceed the maximum supported size or throughput by using the `Limit` parameter to specify the maximum number of records that [GetRecords](@ref) can return. Consider your average record size when determining this limit.

The size of the data returned by [GetRecords](@ref) varies depending on the utilization of the shard. The maximum size of data that [GetRecords](@ref) can return is 10 MB. If a call returns this amount of data, subsequent calls made within the next five seconds throw `ProvisionedThroughputExceededException`. If there is insufficient provisioned throughput on the stream, subsequent calls made within the next one second throw `ProvisionedThroughputExceededException`. [GetRecords](@ref) won't return any data when it throws an exception. For this reason, we recommend that you wait one second between calls to [GetRecords](@ref); however, it's possible that the application will get exceptions for longer than 1 second.

To detect whether the application is falling behind in processing, you can use the `MillisBehindLatest` response attribute. You can also monitor the stream using CloudWatch metrics and other mechanisms (see [Monitoring](http://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html) in the *Amazon Kinesis Data Streams Developer Guide*).

Each Amazon Kinesis record includes a value, `ApproximateArrivalTimestamp`, that is set when a stream successfully receives and stores a record. This is commonly referred to as a server-side time stamp, whereas a client-side time stamp is set when a data producer creates or sends the record to a stream (a data producer is any data source putting data records into a stream, for example with [PutRecords](@ref)). The time stamp has millisecond precision. There are no guarantees about the time stamp accuracy, or that the time stamp is always increasing. For example, records in a shard or across a stream might have time stamps that are out of order.

# Arguments

## `ShardIterator = ::String` -- *Required*
The position in the shard from which you want to start sequentially reading data records. A shard iterator specifies this position using the sequence number of a data record in the shard.


## `Limit = ::Int`
The maximum number of records to return. Specify a value of up to 10,000. If you specify a value that is greater than 10,000, [GetRecords](@ref) throws `InvalidArgumentException`.




# Returns

`GetRecordsOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidArgumentException`, `ProvisionedThroughputExceededException`, `ExpiredIteratorException`, `KMSDisabledException`, `KMSInvalidStateException`, `KMSAccessDeniedException`, `KMSNotFoundException`, `KMSOptInRequired` or `KMSThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/GetRecords)
"""
@inline get_records(aws::AWSConfig=default_aws_config(); args...) = get_records(aws, args)

@inline get_records(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "GetRecords", args)

@inline get_records(args) = get_records(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.get_shard_iterator
    get_shard_iterator([::AWSConfig], arguments::Dict)
    get_shard_iterator([::AWSConfig]; StreamName=, ShardId=, ShardIteratorType=, <keyword arguments>)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "GetShardIterator", arguments::Dict)
    kinesis([::AWSConfig], "GetShardIterator", StreamName=, ShardId=, ShardIteratorType=, <keyword arguments>)

# GetShardIterator Operation

Gets an Amazon Kinesis shard iterator. A shard iterator expires five minutes after it is returned to the requester.

A shard iterator specifies the shard position from which to start reading data records sequentially. The position is specified using the sequence number of a data record in a shard. A sequence number is the identifier associated with every record ingested in the stream, and is assigned when a record is put into the stream. Each stream has one or more shards.

You must specify the shard iterator type. For example, you can set the `ShardIteratorType` parameter to read exactly from the position denoted by a specific sequence number by using the `AT_SEQUENCE_NUMBER` shard iterator type. Alternatively, the parameter can read right after the sequence number by using the `AFTER_SEQUENCE_NUMBER` shard iterator type, using sequence numbers returned by earlier calls to [PutRecord](@ref), [PutRecords](@ref), [GetRecords](@ref), or [DescribeStream](@ref). In the request, you can specify the shard iterator type `AT_TIMESTAMP` to read records from an arbitrary point in time, `TRIM_HORIZON` to cause `ShardIterator` to point to the last untrimmed record in the shard in the system (the oldest data record in the shard), or `LATEST` so that you always read the most recent data in the shard.

When you read repeatedly from a stream, use a [GetShardIterator](@ref) request to get the first shard iterator for use in your first [GetRecords](@ref) request and for subsequent reads use the shard iterator returned by the [GetRecords](@ref) request in `NextShardIterator`. A new shard iterator is returned by every [GetRecords](@ref) request in `NextShardIterator`, which you use in the `ShardIterator` parameter of the next [GetRecords](@ref) request.

If a [GetShardIterator](@ref) request is made too often, you receive a `ProvisionedThroughputExceededException`. For more information about throughput limits, see [GetRecords](@ref), and [Streams Limits](http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html) in the *Amazon Kinesis Data Streams Developer Guide*.

If the shard is closed, [GetShardIterator](@ref) returns a valid iterator for the last sequence number of the shard. A shard can be closed as a result of using [SplitShard](@ref) or [MergeShards](@ref).

[GetShardIterator](@ref) has a limit of five transactions per second per account per open shard.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the Amazon Kinesis data stream.


## `ShardId = ::String` -- *Required*
The shard ID of the Kinesis Data Streams shard to get the iterator for.


## `ShardIteratorType = "AT_SEQUENCE_NUMBER", "AFTER_SEQUENCE_NUMBER", "TRIM_HORIZON", "LATEST" or "AT_TIMESTAMP"` -- *Required*
Determines how the shard iterator is used to start reading data records from the shard.

The following are the valid Amazon Kinesis shard iterator types:

*   AT_SEQUENCE_NUMBER - Start reading from the position denoted by a specific sequence number, provided in the value `StartingSequenceNumber`.

*   AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted by a specific sequence number, provided in the value `StartingSequenceNumber`.

*   AT_TIMESTAMP - Start reading from the position denoted by a specific time stamp, provided in the value `Timestamp`.

*   TRIM_HORIZON - Start reading at the last untrimmed record in the shard in the system, which is the oldest data record in the shard.

*   LATEST - Start reading just after the most recent record in the shard, so that you always read the most recent data in the shard.


## `StartingSequenceNumber = ::String`
The sequence number of the data record in the shard from which to start reading. Used with shard iterator type AT_SEQUENCE_NUMBER and AFTER_SEQUENCE_NUMBER.


## `Timestamp = timestamp`
The time stamp of the data record from which to start reading. Used with shard iterator type AT_TIMESTAMP. A time stamp is the Unix epoch date with precision in milliseconds. For example, `2016-04-04T19:58:46.480-00:00` or `1459799926.480`. If a record with this exact time stamp does not exist, the iterator returned is for the next (later) record. If the time stamp is older than the current trim horizon, the iterator returned is for the oldest untrimmed data record (TRIM_HORIZON).




# Returns

`GetShardIteratorOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidArgumentException` or `ProvisionedThroughputExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/GetShardIterator)
"""
@inline get_shard_iterator(aws::AWSConfig=default_aws_config(); args...) = get_shard_iterator(aws, args)

@inline get_shard_iterator(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "GetShardIterator", args)

@inline get_shard_iterator(args) = get_shard_iterator(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.increase_stream_retention_period
    increase_stream_retention_period([::AWSConfig], arguments::Dict)
    increase_stream_retention_period([::AWSConfig]; StreamName=, RetentionPeriodHours=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "IncreaseStreamRetentionPeriod", arguments::Dict)
    kinesis([::AWSConfig], "IncreaseStreamRetentionPeriod", StreamName=, RetentionPeriodHours=)

# IncreaseStreamRetentionPeriod Operation

Increases the Kinesis data stream's retention period, which is the length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 168 hours (7 days).

If you choose a longer stream retention period, this operation increases the time period during which records that have not yet expired are accessible. However, it does not make previous, expired data (older than the stream's previous retention period) accessible after the operation has been called. For example, if a stream's retention period is set to 24 hours and is increased to 168 hours, any data that is older than 24 hours remains inaccessible to consumer applications.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream to modify.


## `RetentionPeriodHours = ::Int` -- *Required*
The new retention period of the stream, in hours. Must be more than the current retention period.




# Exceptions

`ResourceInUseException`, `ResourceNotFoundException`, `LimitExceededException` or `InvalidArgumentException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/IncreaseStreamRetentionPeriod)
"""
@inline increase_stream_retention_period(aws::AWSConfig=default_aws_config(); args...) = increase_stream_retention_period(aws, args)

@inline increase_stream_retention_period(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "IncreaseStreamRetentionPeriod", args)

@inline increase_stream_retention_period(args) = increase_stream_retention_period(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.list_shards
    list_shards([::AWSConfig], arguments::Dict)
    list_shards([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "ListShards", arguments::Dict)
    kinesis([::AWSConfig], "ListShards", <keyword arguments>)

# ListShards Operation

Lists the shards in a stream and provides information about each shard.

**Important**
> This API is a new operation that is used by the Amazon Kinesis Client Library (KCL). If you have a fine-grained IAM policy that only allows specific operations, you must update your policy to allow calls to this API. For more information, see [Controlling Access to Amazon Kinesis Data Streams Resources Using IAM](https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html).

# Arguments

## `StreamName = ::String`
The name of the data stream whose shards you want to list.

You cannot specify this parameter if you specify the `NextToken` parameter.


## `NextToken = ::String`
When the number of shards in the data stream is greater than the default value for the `MaxResults` parameter, or if you explicitly specify a value for `MaxResults` that is less than the number of shards in the data stream, the response includes a pagination token named `NextToken`. You can specify this `NextToken` value in a subsequent call to `ListShards` to list the next set of shards.

Don't specify `StreamName` or `StreamCreationTimestamp` if you specify `NextToken` because the latter unambiguously identifies the stream.

You can optionally specify a value for the `MaxResults` parameter when you specify `NextToken`. If you specify a `MaxResults` value that is less than the number of shards that the operation returns if you don't specify `MaxResults`, the response will contain a new `NextToken` value. You can use the new `NextToken` value in a subsequent call to the `ListShards` operation.

**Important**
> Tokens expire after 300 seconds. When you obtain a value for `NextToken` in the response to a call to `ListShards`, you have 300 seconds to use that value. If you specify an expired token in a call to `ListShards`, you get `ExpiredNextTokenException`.


## `ExclusiveStartShardId = ::String`
The ID of the shard to start the list with.

If you don't specify this parameter, the default behavior is for `ListShards` to list the shards starting with the first one in the stream.

You cannot specify this parameter if you specify `NextToken`.


## `MaxResults = ::Int`
The maximum number of shards to return in a single call to `ListShards`. The minimum value you can specify for this parameter is 1, and the maximum is 1,000, which is also the default.

When the number of shards to be listed is greater than the value of `MaxResults`, the response contains a `NextToken` value that you can use in a subsequent call to `ListShards` to list the next set of shards.


## `StreamCreationTimestamp = timestamp`
Specify this input parameter to distinguish data streams that have the same name. For example, if you create a data stream and then delete it, and you later create another data stream with the same name, you can use this input parameter to specify which of the two streams you want to list the shards for.

You cannot specify this parameter if you specify the `NextToken` parameter.




# Returns

`ListShardsOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidArgumentException`, `LimitExceededException`, `ExpiredNextTokenException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ListShards)
"""
@inline list_shards(aws::AWSConfig=default_aws_config(); args...) = list_shards(aws, args)

@inline list_shards(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "ListShards", args)

@inline list_shards(args) = list_shards(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.list_streams
    list_streams([::AWSConfig], arguments::Dict)
    list_streams([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "ListStreams", arguments::Dict)
    kinesis([::AWSConfig], "ListStreams", <keyword arguments>)

# ListStreams Operation

Lists your Kinesis data streams.

The number of streams may be too large to return from a single call to `ListStreams`. You can limit the number of returned streams using the `Limit` parameter. If you do not specify a value for the `Limit` parameter, Kinesis Data Streams uses the default limit, which is currently 10.

You can detect if there are more streams available to list by using the `HasMoreStreams` flag from the returned output. If there are more streams available, you can request more streams by using the name of the last stream returned by the `ListStreams` request in the `ExclusiveStartStreamName` parameter in a subsequent request to `ListStreams`. The group of stream names returned by the subsequent request is then added to the list. You can continue this process until all the stream names have been collected in the list.

[ListStreams](@ref) has a limit of five transactions per second per account.

# Arguments

## `Limit = ::Int`
The maximum number of streams to list.


## `ExclusiveStartStreamName = ::String`
The name of the stream to start the list with.




# Returns

`ListStreamsOutput`

# Exceptions

`LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ListStreams)
"""
@inline list_streams(aws::AWSConfig=default_aws_config(); args...) = list_streams(aws, args)

@inline list_streams(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "ListStreams", args)

@inline list_streams(args) = list_streams(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.list_tags_for_stream
    list_tags_for_stream([::AWSConfig], arguments::Dict)
    list_tags_for_stream([::AWSConfig]; StreamName=, <keyword arguments>)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "ListTagsForStream", arguments::Dict)
    kinesis([::AWSConfig], "ListTagsForStream", StreamName=, <keyword arguments>)

# ListTagsForStream Operation

Lists the tags for the specified Kinesis data stream. This operation has a limit of five transactions per second per account.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream.


## `ExclusiveStartTagKey = ::String`
The key to use as the starting point for the list of tags. If this parameter is set, `ListTagsForStream` gets all tags that occur after `ExclusiveStartTagKey`.


## `Limit = ::Int`
The number of tags to return. If this number is less than the total number of tags associated with the stream, `HasMoreTags` is set to `true`. To list additional tags, set `ExclusiveStartTagKey` to the last key in the response.




# Returns

`ListTagsForStreamOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidArgumentException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ListTagsForStream)
"""
@inline list_tags_for_stream(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_stream(aws, args)

@inline list_tags_for_stream(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "ListTagsForStream", args)

@inline list_tags_for_stream(args) = list_tags_for_stream(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.merge_shards
    merge_shards([::AWSConfig], arguments::Dict)
    merge_shards([::AWSConfig]; StreamName=, ShardToMerge=, AdjacentShardToMerge=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "MergeShards", arguments::Dict)
    kinesis([::AWSConfig], "MergeShards", StreamName=, ShardToMerge=, AdjacentShardToMerge=)

# MergeShards Operation

Merges two adjacent shards in a Kinesis data stream and combines them into a single shard to reduce the stream's capacity to ingest and transport data. Two shards are considered adjacent if the union of the hash key ranges for the two shards form a contiguous set with no gaps. For example, if you have two shards, one with a hash key range of 276...381 and the other with a hash key range of 382...454, then you could merge these two shards into a single shard that would have a hash key range of 276...454. After the merge, the single child shard receives data for all hash key values covered by the two parent shards.

`MergeShards` is called when there is a need to reduce the overall capacity of a stream because of excess capacity that is not being used. You must specify the shard to be merged and the adjacent shard for a stream. For more information about merging shards, see [Merge Two Shards](http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-merge.html) in the *Amazon Kinesis Data Streams Developer Guide*.

If the stream is in the `ACTIVE` state, you can call `MergeShards`. If a stream is in the `CREATING`, `UPDATING`, or `DELETING` state, `MergeShards` returns a `ResourceInUseException`. If the specified stream does not exist, `MergeShards` returns a `ResourceNotFoundException`.

You can use [DescribeStream](@ref) to check the state of the stream, which is returned in `StreamStatus`.

`MergeShards` is an asynchronous operation. Upon receiving a `MergeShards` request, Amazon Kinesis Data Streams immediately returns a response and sets the `StreamStatus` to `UPDATING`. After the operation is completed, Kinesis Data Streams sets the `StreamStatus` to `ACTIVE`. Read and write operations continue to work while the stream is in the `UPDATING` state.

You use [DescribeStream](@ref) to determine the shard IDs that are specified in the `MergeShards` request.

If you try to operate on too many streams in parallel using [CreateStream](@ref), [DeleteStream](@ref), `MergeShards`, or [SplitShard](@ref), you receive a `LimitExceededException`.

`MergeShards` has a limit of five transactions per second per account.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream for the merge.


## `ShardToMerge = ::String` -- *Required*
The shard ID of the shard to combine with the adjacent shard for the merge.


## `AdjacentShardToMerge = ::String` -- *Required*
The shard ID of the adjacent shard for the merge.




# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/MergeShards)
"""
@inline merge_shards(aws::AWSConfig=default_aws_config(); args...) = merge_shards(aws, args)

@inline merge_shards(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "MergeShards", args)

@inline merge_shards(args) = merge_shards(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.put_record
    put_record([::AWSConfig], arguments::Dict)
    put_record([::AWSConfig]; StreamName=, Data=, PartitionKey=, <keyword arguments>)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "PutRecord", arguments::Dict)
    kinesis([::AWSConfig], "PutRecord", StreamName=, Data=, PartitionKey=, <keyword arguments>)

# PutRecord Operation

Writes a single data record into an Amazon Kinesis data stream. Call `PutRecord` to send data into the stream for real-time ingestion and subsequent processing, one record at a time. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MB per second.

You must specify the name of the stream that captures, stores, and transports the data; a partition key; and the data blob itself.

The data blob can be any type of data; for example, a segment from a log file, geographic/location data, website clickstream data, and so on.

The partition key is used by Kinesis Data Streams to distribute data across shards. Kinesis Data Streams segregates the data records that belong to a stream into multiple shards, using the partition key associated with each data record to determine the shard to which a given data record belongs.

Partition keys are Unicode strings, with a maximum length limit of 256 characters for each key. An MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards using the hash key ranges of the shards. You can override hashing the partition key to determine the shard by explicitly specifying a hash value using the `ExplicitHashKey` parameter. For more information, see [Adding Data to a Stream](http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream) in the *Amazon Kinesis Data Streams Developer Guide*.

`PutRecord` returns the shard ID of where the data record was placed and the sequence number that was assigned to the data record.

Sequence numbers increase over time and are specific to a shard within a stream, not across all shards within a stream. To guarantee strictly increasing ordering, write serially to a shard and use the `SequenceNumberForOrdering` parameter. For more information, see [Adding Data to a Stream](http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream) in the *Amazon Kinesis Data Streams Developer Guide*.

If a `PutRecord` request cannot be processed because of insufficient provisioned throughput on the shard involved in the request, `PutRecord` throws `ProvisionedThroughputExceededException`.

By default, data records are accessible for 24 hours from the time that they are added to a stream. You can use [IncreaseStreamRetentionPeriod](@ref) or [DecreaseStreamRetentionPeriod](@ref) to modify this retention period.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream to put the data record into.


## `Data = blob` -- *Required*
The data blob to put into the record, which is base64-encoded when the blob is serialized. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MB).


## `PartitionKey = ::String` -- *Required*
Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis Data Streams uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.


## `ExplicitHashKey = ::String`
The hash value used to explicitly determine the shard the data record is assigned to by overriding the partition key hash.


## `SequenceNumberForOrdering = ::String`
Guarantees strictly increasing sequence numbers, for puts from the same client and to the same partition key. Usage: set the `SequenceNumberForOrdering` of record *n* to the sequence number of record *n-1* (as returned in the result when putting record *n-1*). If this parameter is not set, records are coarsely ordered based on arrival time.




# Returns

`PutRecordOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidArgumentException`, `ProvisionedThroughputExceededException`, `KMSDisabledException`, `KMSInvalidStateException`, `KMSAccessDeniedException`, `KMSNotFoundException`, `KMSOptInRequired` or `KMSThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/PutRecord)
"""
@inline put_record(aws::AWSConfig=default_aws_config(); args...) = put_record(aws, args)

@inline put_record(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "PutRecord", args)

@inline put_record(args) = put_record(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.put_records
    put_records([::AWSConfig], arguments::Dict)
    put_records([::AWSConfig]; Records=, StreamName=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "PutRecords", arguments::Dict)
    kinesis([::AWSConfig], "PutRecords", Records=, StreamName=)

# PutRecords Operation

Writes multiple data records into a Kinesis data stream in a single call (also referred to as a `PutRecords` request). Use this operation to send data into the stream for data ingestion and processing.

Each `PutRecords` request can support up to 500 records. Each record in the request can be as large as 1 MB, up to a limit of 5 MB for the entire request, including partition keys. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MB per second.

You must specify the name of the stream that captures, stores, and transports the data; and an array of request `Records`, with each record in the array requiring a partition key and data blob. The record size limit applies to the total size of the partition key and data blob.

The data blob can be any type of data; for example, a segment from a log file, geographic/location data, website clickstream data, and so on.

The partition key is used by Kinesis Data Streams as input to a hash function that maps the partition key and associated data to a specific shard. An MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream. For more information, see [Adding Data to a Stream](http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream) in the *Amazon Kinesis Data Streams Developer Guide*.

Each record in the `Records` array may include an optional parameter, `ExplicitHashKey`, which overrides the partition key to shard mapping. This parameter allows a data producer to determine explicitly the shard where the record is stored. For more information, see [Adding Multiple Records with PutRecords](http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords) in the *Amazon Kinesis Data Streams Developer Guide*.

The `PutRecords` response includes an array of response `Records`. Each record in the response array directly correlates with a record in the request array using natural ordering, from the top to the bottom of the request and response. The response `Records` array always includes the same number of records as the request array.

The response `Records` array includes both successfully and unsuccessfully processed records. Kinesis Data Streams attempts to process all records in each `PutRecords` request. A single record failure does not stop the processing of subsequent records.

A successfully processed record includes `ShardId` and `SequenceNumber` values. The `ShardId` parameter identifies the shard in the stream where the record is stored. The `SequenceNumber` parameter is an identifier assigned to the put record, unique to all records in the stream.

An unsuccessfully processed record includes `ErrorCode` and `ErrorMessage` values. `ErrorCode` reflects the type of error and can be one of the following values: `ProvisionedThroughputExceededException` or `InternalFailure`. `ErrorMessage` provides more detailed information about the `ProvisionedThroughputExceededException` exception including the account ID, stream name, and shard ID of the record that was throttled. For more information about partially successful responses, see [Adding Multiple Records with PutRecords](http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-add-data-to-stream.html#kinesis-using-sdk-java-putrecords) in the *Amazon Kinesis Data Streams Developer Guide*.

By default, data records are accessible for 24 hours from the time that they are added to a stream. You can use [IncreaseStreamRetentionPeriod](@ref) or [DecreaseStreamRetentionPeriod](@ref) to modify this retention period.

# Arguments

## `Records = [[ ... ], ...]` -- *Required*
The records associated with the request.
```
 Records = [[
        "Data" => <required> blob,
        "ExplicitHashKey" =>  ::String,
        "PartitionKey" => <required> ::String
    ], ...]
```

## `StreamName = ::String` -- *Required*
The stream name associated with the request.




# Returns

`PutRecordsOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidArgumentException`, `ProvisionedThroughputExceededException`, `KMSDisabledException`, `KMSInvalidStateException`, `KMSAccessDeniedException`, `KMSNotFoundException`, `KMSOptInRequired` or `KMSThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/PutRecords)
"""
@inline put_records(aws::AWSConfig=default_aws_config(); args...) = put_records(aws, args)

@inline put_records(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "PutRecords", args)

@inline put_records(args) = put_records(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.remove_tags_from_stream
    remove_tags_from_stream([::AWSConfig], arguments::Dict)
    remove_tags_from_stream([::AWSConfig]; StreamName=, TagKeys=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "RemoveTagsFromStream", arguments::Dict)
    kinesis([::AWSConfig], "RemoveTagsFromStream", StreamName=, TagKeys=)

# RemoveTagsFromStream Operation

Removes tags from the specified Kinesis data stream. Removed tags are deleted and cannot be recovered after this operation successfully completes.

If you specify a tag that does not exist, it is ignored.

[RemoveTagsFromStream](@ref) has a limit of five transactions per second per account.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream.


## `TagKeys = [::String, ...]` -- *Required*
A list of tag keys. Each corresponding tag is removed from the stream.




# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/RemoveTagsFromStream)
"""
@inline remove_tags_from_stream(aws::AWSConfig=default_aws_config(); args...) = remove_tags_from_stream(aws, args)

@inline remove_tags_from_stream(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "RemoveTagsFromStream", args)

@inline remove_tags_from_stream(args) = remove_tags_from_stream(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.split_shard
    split_shard([::AWSConfig], arguments::Dict)
    split_shard([::AWSConfig]; StreamName=, ShardToSplit=, NewStartingHashKey=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "SplitShard", arguments::Dict)
    kinesis([::AWSConfig], "SplitShard", StreamName=, ShardToSplit=, NewStartingHashKey=)

# SplitShard Operation

Splits a shard into two new shards in the Kinesis data stream, to increase the stream's capacity to ingest and transport data. `SplitShard` is called when there is a need to increase the overall capacity of a stream because of an expected increase in the volume of data records being ingested.

You can also use `SplitShard` when a shard appears to be approaching its maximum utilization; for example, the producers sending data into the specific shard are suddenly sending more than previously anticipated. You can also call `SplitShard` to increase stream capacity, so that more Kinesis Data Streams applications can simultaneously read data from the stream for real-time processing.

You must specify the shard to be split and the new hash key, which is the position in the shard where the shard gets split in two. In many cases, the new hash key might be the average of the beginning and ending hash key, but it can be any hash key value in the range being mapped into the shard. For more information, see [Split a Shard](http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-split.html) in the *Amazon Kinesis Data Streams Developer Guide*.

You can use [DescribeStream](@ref) to determine the shard ID and hash key values for the `ShardToSplit` and `NewStartingHashKey` parameters that are specified in the `SplitShard` request.

`SplitShard` is an asynchronous operation. Upon receiving a `SplitShard` request, Kinesis Data Streams immediately returns a response and sets the stream status to `UPDATING`. After the operation is completed, Kinesis Data Streams sets the stream status to `ACTIVE`. Read and write operations continue to work while the stream is in the `UPDATING` state.

You can use `DescribeStream` to check the status of the stream, which is returned in `StreamStatus`. If the stream is in the `ACTIVE` state, you can call `SplitShard`. If a stream is in `CREATING` or `UPDATING` or `DELETING` states, `DescribeStream` returns a `ResourceInUseException`.

If the specified stream does not exist, `DescribeStream` returns a `ResourceNotFoundException`. If you try to create more shards than are authorized for your account, you receive a `LimitExceededException`.

For the default shard limit for an AWS account, see [Streams Limits](http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html) in the *Amazon Kinesis Data Streams Developer Guide*. To increase this limit, [contact AWS Support](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html).

If you try to operate on too many streams simultaneously using [CreateStream](@ref), [DeleteStream](@ref), [MergeShards](@ref), and/or [SplitShard](@ref), you receive a `LimitExceededException`.

`SplitShard` has a limit of five transactions per second per account.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream for the shard split.


## `ShardToSplit = ::String` -- *Required*
The shard ID of the shard to split.


## `NewStartingHashKey = ::String` -- *Required*
A hash key value for the starting hash key of one of the child shards created by the split. The hash key range for a given shard constitutes a set of ordered contiguous positive integers. The value for `NewStartingHashKey` must be in the range of hash keys being mapped into the shard. The `NewStartingHashKey` hash key value and all higher hash key values in hash key range are distributed to one of the child shards. All the lower hash key values in the range are distributed to the other child shard.




# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/SplitShard)
"""
@inline split_shard(aws::AWSConfig=default_aws_config(); args...) = split_shard(aws, args)

@inline split_shard(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "SplitShard", args)

@inline split_shard(args) = split_shard(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.start_stream_encryption
    start_stream_encryption([::AWSConfig], arguments::Dict)
    start_stream_encryption([::AWSConfig]; StreamName=, EncryptionType=, KeyId=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "StartStreamEncryption", arguments::Dict)
    kinesis([::AWSConfig], "StartStreamEncryption", StreamName=, EncryptionType=, KeyId=)

# StartStreamEncryption Operation

Enables or updates server-side encryption using an AWS KMS key for a specified stream.

Starting encryption is an asynchronous operation. Upon receiving the request, Kinesis Data Streams returns immediately and sets the status of the stream to `UPDATING`. After the update is complete, Kinesis Data Streams sets the status of the stream back to `ACTIVE`. Updating or applying encryption normally takes a few seconds to complete, but it can take minutes. You can continue to read and write data to your stream while its status is `UPDATING`. Once the status of the stream is `ACTIVE`, encryption begins for records written to the stream.

API Limits: You can successfully apply a new AWS KMS key for server-side encryption 25 times in a rolling 24-hour period.

Note: It can take up to five seconds after the stream is in an `ACTIVE` status before all records written to the stream are encrypted. After you enable encryption, you can verify that encryption is applied by inspecting the API response from `PutRecord` or `PutRecords`.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream for which to start encrypting records.


## `EncryptionType = "NONE" or "KMS"` -- *Required*
The encryption type to use. The only valid value is `KMS`.


## `KeyId = ::String` -- *Required*
The GUID for the customer-managed AWS KMS key to use for encryption. This value can be a globally unique identifier, a fully specified Amazon Resource Name (ARN) to either an alias or a key, or an alias name prefixed by "alias/".You can also use a master key owned by Kinesis Data Streams by specifying the alias `aws/kinesis`.

*   Key ARN example: `arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012`

*   Alias ARN example: `arn:aws:kms:us-east-1:123456789012:alias/MyAliasName`

*   Globally unique key ID example: `12345678-1234-1234-1234-123456789012`

*   Alias name example: `alias/MyAliasName`

*   Master key owned by Kinesis Data Streams: `alias/aws/kinesis`




# Exceptions

`InvalidArgumentException`, `LimitExceededException`, `ResourceInUseException`, `ResourceNotFoundException`, `KMSDisabledException`, `KMSInvalidStateException`, `KMSAccessDeniedException`, `KMSNotFoundException`, `KMSOptInRequired` or `KMSThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/StartStreamEncryption)
"""
@inline start_stream_encryption(aws::AWSConfig=default_aws_config(); args...) = start_stream_encryption(aws, args)

@inline start_stream_encryption(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "StartStreamEncryption", args)

@inline start_stream_encryption(args) = start_stream_encryption(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.stop_stream_encryption
    stop_stream_encryption([::AWSConfig], arguments::Dict)
    stop_stream_encryption([::AWSConfig]; StreamName=, EncryptionType=, KeyId=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "StopStreamEncryption", arguments::Dict)
    kinesis([::AWSConfig], "StopStreamEncryption", StreamName=, EncryptionType=, KeyId=)

# StopStreamEncryption Operation

Disables server-side encryption for a specified stream.

Stopping encryption is an asynchronous operation. Upon receiving the request, Kinesis Data Streams returns immediately and sets the status of the stream to `UPDATING`. After the update is complete, Kinesis Data Streams sets the status of the stream back to `ACTIVE`. Stopping encryption normally takes a few seconds to complete, but it can take minutes. You can continue to read and write data to your stream while its status is `UPDATING`. Once the status of the stream is `ACTIVE`, records written to the stream are no longer encrypted by Kinesis Data Streams.

API Limits: You can successfully disable server-side encryption 25 times in a rolling 24-hour period.

Note: It can take up to five seconds after the stream is in an `ACTIVE` status before all records written to the stream are no longer subject to encryption. After you disabled encryption, you can verify that encryption is not applied by inspecting the API response from `PutRecord` or `PutRecords`.

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream on which to stop encrypting records.


## `EncryptionType = "NONE" or "KMS"` -- *Required*
The encryption type. The only valid value is `KMS`.


## `KeyId = ::String` -- *Required*
The GUID for the customer-managed AWS KMS key to use for encryption. This value can be a globally unique identifier, a fully specified Amazon Resource Name (ARN) to either an alias or a key, or an alias name prefixed by "alias/".You can also use a master key owned by Kinesis Data Streams by specifying the alias `aws/kinesis`.

*   Key ARN example: `arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012`

*   Alias ARN example: `arn:aws:kms:us-east-1:123456789012:alias/MyAliasName`

*   Globally unique key ID example: `12345678-1234-1234-1234-123456789012`

*   Alias name example: `alias/MyAliasName`

*   Master key owned by Kinesis Data Streams: `alias/aws/kinesis`




# Exceptions

`InvalidArgumentException`, `LimitExceededException`, `ResourceInUseException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/StopStreamEncryption)
"""
@inline stop_stream_encryption(aws::AWSConfig=default_aws_config(); args...) = stop_stream_encryption(aws, args)

@inline stop_stream_encryption(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "StopStreamEncryption", args)

@inline stop_stream_encryption(args) = stop_stream_encryption(default_aws_config(), args)


"""
    using AWSSDK.Kinesis.update_shard_count
    update_shard_count([::AWSConfig], arguments::Dict)
    update_shard_count([::AWSConfig]; StreamName=, TargetShardCount=, ScalingType=)

    using AWSCore.Services.kinesis
    kinesis([::AWSConfig], "UpdateShardCount", arguments::Dict)
    kinesis([::AWSConfig], "UpdateShardCount", StreamName=, TargetShardCount=, ScalingType=)

# UpdateShardCount Operation

Updates the shard count of the specified stream to the specified number of shards.

Updating the shard count is an asynchronous operation. Upon receiving the request, Kinesis Data Streams returns immediately and sets the status of the stream to `UPDATING`. After the update is complete, Kinesis Data Streams sets the status of the stream back to `ACTIVE`. Depending on the size of the stream, the scaling action could take a few minutes to complete. You can continue to read and write data to your stream while its status is `UPDATING`.

To update the shard count, Kinesis Data Streams performs splits or merges on individual shards. This can cause short-lived shards to be created, in addition to the final shards. We recommend that you double or halve the shard count, as this results in the fewest number of splits or merges.

This operation has the following limits. You cannot do the following:

*   Scale more than twice per rolling 24-hour period per stream

*   Scale up to more than double your current shard count for a stream

*   Scale down below half your current shard count for a stream

*   Scale up to more than 500 shards in a stream

*   Scale a stream with more than 500 shards down unless the result is less than 500 shards

*   Scale up to more than the shard limit for your account

For the default limits for an AWS account, see [Streams Limits](http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html) in the *Amazon Kinesis Data Streams Developer Guide*. To request an increase in the call rate limit, the shard limit for this API, or your overall shard limit, use the [limits form](https://console.aws.amazon.com/support/v1#/case/create?issueType=service-limit-increase&limitType=service-code-kinesis).

# Arguments

## `StreamName = ::String` -- *Required*
The name of the stream.


## `TargetShardCount = ::Int` -- *Required*
The new number of shards.


## `ScalingType = "UNIFORM_SCALING"` -- *Required*
The scaling type. Uniform scaling creates shards of equal size.




# Returns

`UpdateShardCountOutput`

# Exceptions

`InvalidArgumentException`, `LimitExceededException`, `ResourceInUseException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/UpdateShardCount)
"""
@inline update_shard_count(aws::AWSConfig=default_aws_config(); args...) = update_shard_count(aws, args)

@inline update_shard_count(aws::AWSConfig, args) = AWSCore.Services.kinesis(aws, "UpdateShardCount", args)

@inline update_shard_count(args) = update_shard_count(default_aws_config(), args)




end # module Kinesis


#==============================================================================#
# End of file
#==============================================================================#
