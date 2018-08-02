#==============================================================================#
# XRay.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/xray-2016-04-12.normal.json
#==============================================================================#

__precompile__()

module XRay

using AWSCore


"""
    using AWSSDK.XRay.batch_get_traces
    batch_get_traces([::AWSConfig], arguments::Dict)
    batch_get_traces([::AWSConfig]; TraceIds=, <keyword arguments>)

    using AWSCore.Services.xray
    xray([::AWSConfig], "POST", "/Traces", arguments::Dict)
    xray([::AWSConfig], "POST", "/Traces", TraceIds=, <keyword arguments>)

# BatchGetTraces Operation

Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use `GetTraceSummaries` to get a list of trace IDs.

# Arguments

## `TraceIds = [::String, ...]` -- *Required*
Specify the trace IDs of requests for which to retrieve segments.


## `NextToken = ::String`
Pagination token. Not used.




# Returns

`BatchGetTracesResult`

# Exceptions

`InvalidRequestException` or `ThrottledException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/BatchGetTraces)
"""
@inline batch_get_traces(aws::AWSConfig=default_aws_config(); args...) = batch_get_traces(aws, args)

@inline batch_get_traces(aws::AWSConfig, args) = AWSCore.Services.xray(aws, "POST", "/Traces", args)

@inline batch_get_traces(args) = batch_get_traces(default_aws_config(), args)


"""
    using AWSSDK.XRay.get_encryption_config
    get_encryption_config([::AWSConfig], arguments::Dict)
    get_encryption_config([::AWSConfig]; )

    using AWSCore.Services.xray
    xray([::AWSConfig], "POST", "/EncryptionConfig", arguments::Dict)
    xray([::AWSConfig], "POST", "/EncryptionConfig", )

# GetEncryptionConfig Operation

Retrieves the current encryption configuration for X-Ray data.

# Arguments



# Returns

`GetEncryptionConfigResult`

# Exceptions

`InvalidRequestException` or `ThrottledException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetEncryptionConfig)
"""
@inline get_encryption_config(aws::AWSConfig=default_aws_config(); args...) = get_encryption_config(aws, args)

@inline get_encryption_config(aws::AWSConfig, args) = AWSCore.Services.xray(aws, "POST", "/EncryptionConfig", args)

@inline get_encryption_config(args) = get_encryption_config(default_aws_config(), args)


"""
    using AWSSDK.XRay.get_service_graph
    get_service_graph([::AWSConfig], arguments::Dict)
    get_service_graph([::AWSConfig]; StartTime=, EndTime=, <keyword arguments>)

    using AWSCore.Services.xray
    xray([::AWSConfig], "POST", "/ServiceGraph", arguments::Dict)
    xray([::AWSConfig], "POST", "/ServiceGraph", StartTime=, EndTime=, <keyword arguments>)

# GetServiceGraph Operation

Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the AWS X-Ray SDK. Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.

# Arguments

## `StartTime = timestamp` -- *Required*
The start of the time frame for which to generate a graph.


## `EndTime = timestamp` -- *Required*
The end of the time frame for which to generate a graph.


## `NextToken = ::String`
Pagination token. Not used.




# Returns

`GetServiceGraphResult`

# Exceptions

`InvalidRequestException` or `ThrottledException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetServiceGraph)
"""
@inline get_service_graph(aws::AWSConfig=default_aws_config(); args...) = get_service_graph(aws, args)

@inline get_service_graph(aws::AWSConfig, args) = AWSCore.Services.xray(aws, "POST", "/ServiceGraph", args)

@inline get_service_graph(args) = get_service_graph(default_aws_config(), args)


"""
    using AWSSDK.XRay.get_trace_graph
    get_trace_graph([::AWSConfig], arguments::Dict)
    get_trace_graph([::AWSConfig]; TraceIds=, <keyword arguments>)

    using AWSCore.Services.xray
    xray([::AWSConfig], "POST", "/TraceGraph", arguments::Dict)
    xray([::AWSConfig], "POST", "/TraceGraph", TraceIds=, <keyword arguments>)

# GetTraceGraph Operation

Retrieves a service graph for one or more specific trace IDs.

# Arguments

## `TraceIds = [::String, ...]` -- *Required*
Trace IDs of requests for which to generate a service graph.


## `NextToken = ::String`
Pagination token. Not used.




# Returns

`GetTraceGraphResult`

# Exceptions

`InvalidRequestException` or `ThrottledException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceGraph)
"""
@inline get_trace_graph(aws::AWSConfig=default_aws_config(); args...) = get_trace_graph(aws, args)

@inline get_trace_graph(aws::AWSConfig, args) = AWSCore.Services.xray(aws, "POST", "/TraceGraph", args)

@inline get_trace_graph(args) = get_trace_graph(default_aws_config(), args)


"""
    using AWSSDK.XRay.get_trace_summaries
    get_trace_summaries([::AWSConfig], arguments::Dict)
    get_trace_summaries([::AWSConfig]; StartTime=, EndTime=, <keyword arguments>)

    using AWSCore.Services.xray
    xray([::AWSConfig], "POST", "/TraceSummaries", arguments::Dict)
    xray([::AWSConfig], "POST", "/TraceSummaries", StartTime=, EndTime=, <keyword arguments>)

# GetTraceSummaries Operation

Retrieves IDs and metadata for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to `BatchGetTraces`.

A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through `api.example.com`:

`service("api.example.com")`

This filter expression finds traces that have an annotation named `account` with the value `12345`:

`annotation.account = "12345"`

For a full list of indexed fields and keywords that you can use in filter expressions, see [Using Filter Expressions](http://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html) in the *AWS X-Ray Developer Guide*.

# Arguments

## `StartTime = timestamp` -- *Required*
The start of the time frame for which to retrieve traces.


## `EndTime = timestamp` -- *Required*
The end of the time frame for which to retrieve traces.


## `Sampling = ::Bool`
Set to `true` to get summaries for only a subset of available traces.


## `FilterExpression = ::String`
Specify a filter expression to retrieve trace summaries for services or requests that meet certain requirements.


## `NextToken = ::String`
Specify the pagination token returned by a previous request to retrieve the next page of results.




# Returns

`GetTraceSummariesResult`

# Exceptions

`InvalidRequestException` or `ThrottledException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceSummaries)
"""
@inline get_trace_summaries(aws::AWSConfig=default_aws_config(); args...) = get_trace_summaries(aws, args)

@inline get_trace_summaries(aws::AWSConfig, args) = AWSCore.Services.xray(aws, "POST", "/TraceSummaries", args)

@inline get_trace_summaries(args) = get_trace_summaries(default_aws_config(), args)


"""
    using AWSSDK.XRay.put_encryption_config
    put_encryption_config([::AWSConfig], arguments::Dict)
    put_encryption_config([::AWSConfig]; Type=, <keyword arguments>)

    using AWSCore.Services.xray
    xray([::AWSConfig], "POST", "/PutEncryptionConfig", arguments::Dict)
    xray([::AWSConfig], "POST", "/PutEncryptionConfig", Type=, <keyword arguments>)

# PutEncryptionConfig Operation

Updates the encryption configuration for X-Ray data.

# Arguments

## `KeyId = ::String`
An AWS KMS customer master key (CMK) in one of the following formats:

*   **Alias** - The name of the key. For example, `alias/MyKey`.

*   **Key ID** - The KMS key ID of the key. For example, `ae4aa6d49-a4d8-9df9-a475-4ff6d7898456`.

*   **ARN** - The full Amazon Resource Name of the key ID or alias. For example, `arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456`. Use this format to specify a key in a different account.

Omit this key if you set `Type` to `NONE`.


## `Type = "NONE" or "KMS"` -- *Required*
The type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.




# Returns

`PutEncryptionConfigResult`

# Exceptions

`InvalidRequestException` or `ThrottledException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutEncryptionConfig)
"""
@inline put_encryption_config(aws::AWSConfig=default_aws_config(); args...) = put_encryption_config(aws, args)

@inline put_encryption_config(aws::AWSConfig, args) = AWSCore.Services.xray(aws, "POST", "/PutEncryptionConfig", args)

@inline put_encryption_config(args) = put_encryption_config(default_aws_config(), args)


"""
    using AWSSDK.XRay.put_telemetry_records
    put_telemetry_records([::AWSConfig], arguments::Dict)
    put_telemetry_records([::AWSConfig]; TelemetryRecords=, <keyword arguments>)

    using AWSCore.Services.xray
    xray([::AWSConfig], "POST", "/TelemetryRecords", arguments::Dict)
    xray([::AWSConfig], "POST", "/TelemetryRecords", TelemetryRecords=, <keyword arguments>)

# PutTelemetryRecords Operation

Used by the AWS X-Ray daemon to upload telemetry.

# Arguments

## `TelemetryRecords = [[ ... ], ...]` -- *Required*

```
 TelemetryRecords = [[
        "Timestamp" => <required> timestamp,
        "SegmentsReceivedCount" =>  ::Int,
        "SegmentsSentCount" =>  ::Int,
        "SegmentsSpilloverCount" =>  ::Int,
        "SegmentsRejectedCount" =>  ::Int,
        "BackendConnectionErrors" =>  [
            "TimeoutCount" =>  ::Int,
            "ConnectionRefusedCount" =>  ::Int,
            "HTTPCode4XXCount" =>  ::Int,
            "HTTPCode5XXCount" =>  ::Int,
            "UnknownHostCount" =>  ::Int,
            "OtherCount" =>  ::Int
        ]
    ], ...]
```

## `EC2InstanceId = ::String`



## `Hostname = ::String`



## `ResourceARN = ::String`





# Returns

`PutTelemetryRecordsResult`

# Exceptions

`InvalidRequestException` or `ThrottledException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTelemetryRecords)
"""
@inline put_telemetry_records(aws::AWSConfig=default_aws_config(); args...) = put_telemetry_records(aws, args)

@inline put_telemetry_records(aws::AWSConfig, args) = AWSCore.Services.xray(aws, "POST", "/TelemetryRecords", args)

@inline put_telemetry_records(args) = put_telemetry_records(default_aws_config(), args)


"""
    using AWSSDK.XRay.put_trace_segments
    put_trace_segments([::AWSConfig], arguments::Dict)
    put_trace_segments([::AWSConfig]; TraceSegmentDocuments=)

    using AWSCore.Services.xray
    xray([::AWSConfig], "POST", "/TraceSegments", arguments::Dict)
    xray([::AWSConfig], "POST", "/TraceSegments", TraceSegmentDocuments=)

# PutTraceSegments Operation

Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A segment document can be a completed segment, an in-progress segment, or an array of subsegments.

Segments must include the following fields. For the full segment document schema, see [AWS X-Ray Segment Documents](https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html) in the *AWS X-Ray Developer Guide*.

**Required Segment Document Fields**

*   `name` - The name of the service that handled the request.

*   `id` - A 64-bit identifier for the segment, unique among segments in the same trace, in 16 hexadecimal digits.

*   `trace_id` - A unique identifier that connects all segments and subsegments originating from a single client request.

*   `start_time` - Time the segment or subsegment was created, in floating point seconds in epoch time, accurate to milliseconds. For example, `1480615200.010` or `1.480615200010E9`.

*   `end_time` - Time the segment or subsegment was closed. For example, `1480615200.090` or `1.480615200090E9`. Specify either an `end_time` or `in_progress`.

*   `in_progress` - Set to `true` instead of specifying an `end_time` to record that a segment has been started, but is not complete. Send an in progress segment when your application receives a request that will take a long time to serve, to trace the fact that the request was received. When the response is sent, send the complete segment to overwrite the in-progress segment.

A `trace_id` consists of three numbers separated by hyphens. For example, 1-58406520-a006649127e371903a2de979. This includes:

**Trace ID Format**

*   The version number, i.e. `1`.

*   The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is `1480615200` seconds, or `58406520` in hexadecimal.

*   A 96-bit identifier for the trace, globally unique, in 24 hexadecimal digits.

# Arguments

## `TraceSegmentDocuments = [::String, ...]` -- *Required*
A string containing a JSON document defining one or more segments or subsegments.




# Returns

`PutTraceSegmentsResult`

# Exceptions

`InvalidRequestException` or `ThrottledException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTraceSegments)
"""
@inline put_trace_segments(aws::AWSConfig=default_aws_config(); args...) = put_trace_segments(aws, args)

@inline put_trace_segments(aws::AWSConfig, args) = AWSCore.Services.xray(aws, "POST", "/TraceSegments", args)

@inline put_trace_segments(args) = put_trace_segments(default_aws_config(), args)




end # module XRay


#==============================================================================#
# End of file
#==============================================================================#
