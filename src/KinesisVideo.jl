#==============================================================================#
# KinesisVideo.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/kinesisvideo-2017-09-30.normal.json
#==============================================================================#

__precompile__()

module KinesisVideo

using AWSCore


"""
    using AWSSDK.KinesisVideo.create_stream
    create_stream([::AWSConfig], arguments::Dict)
    create_stream([::AWSConfig]; StreamName=, <keyword arguments>)

    using AWSCore.Services.kinesisvideo
    kinesisvideo([::AWSConfig], "POST", "/createStream", arguments::Dict)
    kinesisvideo([::AWSConfig], "POST", "/createStream", StreamName=, <keyword arguments>)

# CreateStream Operation

Creates a new Kinesis video stream.

When you create a new stream, Kinesis Video Streams assigns it a version number. When you change the stream's metadata, Kinesis Video Streams updates the version.

`CreateStream` is an asynchronous operation.

For information about how the service works, see [How it Works](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-it-works.html).

You must have permissions for the `KinesisVideo:CreateStream` action.

# Arguments

## `DeviceName = ::String`
The name of the device that is writing to the stream.

**Note**
> In the current implementation, Kinesis Video Streams does not use this name.


## `StreamName = ::String` -- *Required*
A name for the stream that you are creating.

The stream name is an identifier for the stream, and must be unique for each account and region.


## `MediaType = ::String`
The media type of the stream. Consumers of the stream can use this information when processing the stream. For more information about media types, see [Media Types](http://www.iana.org/assignments/media-types/media-types.xhtml). If you choose to specify the `MediaType`, see [Naming Requirements](https://tools.ietf.org/html/rfc6838#section-4.2) for guidelines.

To play video on the console, the media must be H.264 encoded, and you need to specify this video type in this parameter as `video/h264`.

This parameter is optional; the default value is `null` (or empty in JSON).


## `KmsKeyId = ::String`
The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video Streams to use to encrypt stream data.

If no key ID is specified, the default, Kinesis Video-managed key (`aws/kinesisvideo`) is used.

For more information, see [DescribeKey](http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters).


## `DataRetentionInHours = ::Int`
The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream.

The default value is 0, indicating that the stream does not persist data.

When the `DataRetentionInHours` value is 0, consumers can still consume the fragments that remain in the service host buffer, which has a retention time limit of 5 minutes and a retention memory limit of 200 MB. Fragments are removed from the buffer when either limit is reached.




# Returns

`CreateStreamOutput`

# Exceptions

`AccountStreamLimitExceededException`, `DeviceStreamLimitExceededException`, `ResourceInUseException`, `InvalidDeviceException`, `InvalidArgumentException` or `ClientLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/CreateStream)
"""
@inline create_stream(aws::AWSConfig=default_aws_config(); args...) = create_stream(aws, args)

@inline create_stream(aws::AWSConfig, args) = AWSCore.Services.kinesisvideo(aws, "POST", "/createStream", args)

@inline create_stream(args) = create_stream(default_aws_config(), args)


"""
    using AWSSDK.KinesisVideo.delete_stream
    delete_stream([::AWSConfig], arguments::Dict)
    delete_stream([::AWSConfig]; StreamARN=, <keyword arguments>)

    using AWSCore.Services.kinesisvideo
    kinesisvideo([::AWSConfig], "POST", "/deleteStream", arguments::Dict)
    kinesisvideo([::AWSConfig], "POST", "/deleteStream", StreamARN=, <keyword arguments>)

# DeleteStream Operation

Deletes a Kinesis video stream and the data contained in the stream.

This method marks the stream for deletion, and makes the data in the stream inaccessible immediately.

To ensure that you have the latest version of the stream before deleting it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the `DescribeStream` API.

This operation requires permission for the `KinesisVideo:DeleteStream` action.

# Arguments

## `StreamARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the stream that you want to delete.


## `CurrentVersion = ::String`
Optional: The version of the stream that you want to delete.

Specify the version as a safeguard to ensure that your are deleting the correct stream. To get the stream version, use the `DescribeStream` API.

If not specified, only the `CreationTime` is checked before deleting the stream.




# Returns

`DeleteStreamOutput`

# Exceptions

`ClientLimitExceededException`, `InvalidArgumentException`, `ResourceNotFoundException` or `NotAuthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteStream)
"""
@inline delete_stream(aws::AWSConfig=default_aws_config(); args...) = delete_stream(aws, args)

@inline delete_stream(aws::AWSConfig, args) = AWSCore.Services.kinesisvideo(aws, "POST", "/deleteStream", args)

@inline delete_stream(args) = delete_stream(default_aws_config(), args)


"""
    using AWSSDK.KinesisVideo.describe_stream
    describe_stream([::AWSConfig], arguments::Dict)
    describe_stream([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.kinesisvideo
    kinesisvideo([::AWSConfig], "POST", "/describeStream", arguments::Dict)
    kinesisvideo([::AWSConfig], "POST", "/describeStream", <keyword arguments>)

# DescribeStream Operation

Returns the most current information about the specified stream. You must specify either the `StreamName` or the `StreamARN`.

# Arguments

## `StreamName = ::String`
The name of the stream.


## `StreamARN = ::String`
The Amazon Resource Name (ARN) of the stream.




# Returns

`DescribeStreamOutput`

# Exceptions

`InvalidArgumentException`, `ResourceNotFoundException`, `ClientLimitExceededException` or `NotAuthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeStream)
"""
@inline describe_stream(aws::AWSConfig=default_aws_config(); args...) = describe_stream(aws, args)

@inline describe_stream(aws::AWSConfig, args) = AWSCore.Services.kinesisvideo(aws, "POST", "/describeStream", args)

@inline describe_stream(args) = describe_stream(default_aws_config(), args)


"""
    using AWSSDK.KinesisVideo.get_data_endpoint
    get_data_endpoint([::AWSConfig], arguments::Dict)
    get_data_endpoint([::AWSConfig]; APIName=, <keyword arguments>)

    using AWSCore.Services.kinesisvideo
    kinesisvideo([::AWSConfig], "POST", "/getDataEndpoint", arguments::Dict)
    kinesisvideo([::AWSConfig], "POST", "/getDataEndpoint", APIName=, <keyword arguments>)

# GetDataEndpoint Operation

Gets an endpoint for a specified stream for either reading or writing. Use this endpoint in your application to read from the specified stream (using the `GetMedia` or `GetMediaForFragmentList` operations) or write to it (using the `PutMedia` operation).

**Note**
> The returned endpoint does not have the API name appended. The client needs to add the API name to the returned endpoint.

In the request, specify the stream either by `StreamName` or `StreamARN`.

# Arguments

## `StreamName = ::String`
The name of the stream that you want to get the endpoint for. You must specify either this parameter or a `StreamARN` in the request.


## `StreamARN = ::String`
The Amazon Resource Name (ARN) of the stream that you want to get the endpoint for. You must specify either this parameter or a `StreamName` in the request.


## `APIName = "PUT_MEDIA", "GET_MEDIA", "LIST_FRAGMENTS", "GET_MEDIA_FOR_FRAGMENT_LIST" or "GET_HLS_STREAMING_SESSION_URL"` -- *Required*
The name of the API action for which to get an endpoint.




# Returns

`GetDataEndpointOutput`

# Exceptions

`InvalidArgumentException`, `ResourceNotFoundException`, `ClientLimitExceededException` or `NotAuthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/GetDataEndpoint)
"""
@inline get_data_endpoint(aws::AWSConfig=default_aws_config(); args...) = get_data_endpoint(aws, args)

@inline get_data_endpoint(aws::AWSConfig, args) = AWSCore.Services.kinesisvideo(aws, "POST", "/getDataEndpoint", args)

@inline get_data_endpoint(args) = get_data_endpoint(default_aws_config(), args)


"""
    using AWSSDK.KinesisVideo.list_streams
    list_streams([::AWSConfig], arguments::Dict)
    list_streams([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.kinesisvideo
    kinesisvideo([::AWSConfig], "POST", "/listStreams", arguments::Dict)
    kinesisvideo([::AWSConfig], "POST", "/listStreams", <keyword arguments>)

# ListStreams Operation

Returns an array of `StreamInfo` objects. Each object describes a stream. To retrieve only streams that satisfy a specific condition, you can specify a `StreamNameCondition`.

# Arguments

## `MaxResults = ::Int`
The maximum number of streams to return in the response. The default is 10,000.


## `NextToken = ::String`
If you specify this parameter, when the result of a `ListStreams` operation is truncated, the call returns the `NextToken` in the response. To get another batch of streams, provide this token in your next request.


## `StreamNameCondition = [ ... ]`
Optional: Returns only streams that satisfy a specific condition. Currently, you can specify only the prefix of a stream name as a condition.
```
 StreamNameCondition = [
        "ComparisonOperator" =>  "BEGINS_WITH",
        "ComparisonValue" =>  ::String
    ]
```



# Returns

`ListStreamsOutput`

# Exceptions

`ClientLimitExceededException` or `InvalidArgumentException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListStreams)
"""
@inline list_streams(aws::AWSConfig=default_aws_config(); args...) = list_streams(aws, args)

@inline list_streams(aws::AWSConfig, args) = AWSCore.Services.kinesisvideo(aws, "POST", "/listStreams", args)

@inline list_streams(args) = list_streams(default_aws_config(), args)


"""
    using AWSSDK.KinesisVideo.list_tags_for_stream
    list_tags_for_stream([::AWSConfig], arguments::Dict)
    list_tags_for_stream([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.kinesisvideo
    kinesisvideo([::AWSConfig], "POST", "/listTagsForStream", arguments::Dict)
    kinesisvideo([::AWSConfig], "POST", "/listTagsForStream", <keyword arguments>)

# ListTagsForStream Operation

Returns a list of tags associated with the specified stream.

In the request, you must specify either the `StreamName` or the `StreamARN`.

# Arguments

## `NextToken = ::String`
If you specify this parameter and the result of a `ListTagsForStream` call is truncated, the response includes a token that you can use in the next request to fetch the next batch of tags.


## `StreamARN = ::String`
The Amazon Resource Name (ARN) of the stream that you want to list tags for.


## `StreamName = ::String`
The name of the stream that you want to list tags for.




# Returns

`ListTagsForStreamOutput`

# Exceptions

`ClientLimitExceededException`, `InvalidArgumentException`, `ResourceNotFoundException`, `NotAuthorizedException` or `InvalidResourceFormatException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListTagsForStream)
"""
@inline list_tags_for_stream(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_stream(aws, args)

@inline list_tags_for_stream(aws::AWSConfig, args) = AWSCore.Services.kinesisvideo(aws, "POST", "/listTagsForStream", args)

@inline list_tags_for_stream(args) = list_tags_for_stream(default_aws_config(), args)


"""
    using AWSSDK.KinesisVideo.tag_stream
    tag_stream([::AWSConfig], arguments::Dict)
    tag_stream([::AWSConfig]; Tags=, <keyword arguments>)

    using AWSCore.Services.kinesisvideo
    kinesisvideo([::AWSConfig], "POST", "/tagStream", arguments::Dict)
    kinesisvideo([::AWSConfig], "POST", "/tagStream", Tags=, <keyword arguments>)

# TagStream Operation

Adds one or more tags to a stream. A *tag* is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html) in the *AWS Billing and Cost Management User Guide*.

You must provide either the `StreamName` or the `StreamARN`.

This operation requires permission for the `KinesisVideo:TagStream` action.

Kinesis video streams support up to 50 tags.

# Arguments

## `StreamARN = ::String`
The Amazon Resource Name (ARN) of the resource that you want to add the tag or tags to.


## `StreamName = ::String`
The name of the stream that you want to add the tag or tags to.


## `Tags = ::Dict{String,String}` -- *Required*
A list of tags to associate with the specified stream. Each tag is a key-value pair (the value is optional).




# Returns

`TagStreamOutput`

# Exceptions

`ClientLimitExceededException`, `InvalidArgumentException`, `ResourceNotFoundException`, `NotAuthorizedException`, `InvalidResourceFormatException` or `TagsPerResourceExceededLimitException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/TagStream)
"""
@inline tag_stream(aws::AWSConfig=default_aws_config(); args...) = tag_stream(aws, args)

@inline tag_stream(aws::AWSConfig, args) = AWSCore.Services.kinesisvideo(aws, "POST", "/tagStream", args)

@inline tag_stream(args) = tag_stream(default_aws_config(), args)


"""
    using AWSSDK.KinesisVideo.untag_stream
    untag_stream([::AWSConfig], arguments::Dict)
    untag_stream([::AWSConfig]; TagKeyList=, <keyword arguments>)

    using AWSCore.Services.kinesisvideo
    kinesisvideo([::AWSConfig], "POST", "/untagStream", arguments::Dict)
    kinesisvideo([::AWSConfig], "POST", "/untagStream", TagKeyList=, <keyword arguments>)

# UntagStream Operation

Removes one or more tags from a stream. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored.

In the request, you must provide the `StreamName` or `StreamARN`.

# Arguments

## `StreamARN = ::String`
The Amazon Resource Name (ARN) of the stream that you want to remove tags from.


## `StreamName = ::String`
The name of the stream that you want to remove tags from.


## `TagKeyList = [::String, ...]` -- *Required*
A list of the keys of the tags that you want to remove.




# Returns

`UntagStreamOutput`

# Exceptions

`ClientLimitExceededException`, `InvalidArgumentException`, `ResourceNotFoundException`, `NotAuthorizedException` or `InvalidResourceFormatException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UntagStream)
"""
@inline untag_stream(aws::AWSConfig=default_aws_config(); args...) = untag_stream(aws, args)

@inline untag_stream(aws::AWSConfig, args) = AWSCore.Services.kinesisvideo(aws, "POST", "/untagStream", args)

@inline untag_stream(args) = untag_stream(default_aws_config(), args)


"""
    using AWSSDK.KinesisVideo.update_data_retention
    update_data_retention([::AWSConfig], arguments::Dict)
    update_data_retention([::AWSConfig]; CurrentVersion=, Operation=, DataRetentionChangeInHours=, <keyword arguments>)

    using AWSCore.Services.kinesisvideo
    kinesisvideo([::AWSConfig], "POST", "/updateDataRetention", arguments::Dict)
    kinesisvideo([::AWSConfig], "POST", "/updateDataRetention", CurrentVersion=, Operation=, DataRetentionChangeInHours=, <keyword arguments>)

# UpdateDataRetention Operation

Increases or decreases the stream's data retention period by the value that you specify. To indicate whether you want to increase or decrease the data retention period, specify the `Operation` parameter in the request body. In the request, you must specify either the `StreamName` or the `StreamARN`.

**Note**
> The retention period that you specify replaces the current value.

This operation requires permission for the `KinesisVideo:UpdateDataRetention` action.

Changing the data retention period affects the data in the stream as follows:

*   If the data retention period is increased, existing data is retained for the new retention period. For example, if the data retention period is increased from one hour to seven hours, all existing data is retained for seven hours.

*   If the data retention period is decreased, existing data is retained for the new retention period. For example, if the data retention period is decreased from seven hours to one hour, all existing data is retained for one hour, and any data older than one hour is deleted immediately.

# Arguments

## `StreamName = ::String`
The name of the stream whose retention period you want to change.


## `StreamARN = ::String`
The Amazon Resource Name (ARN) of the stream whose retention period you want to change.


## `CurrentVersion = ::String` -- *Required*
The version of the stream whose retention period you want to change. To get the version, call either the `DescribeStream` or the `ListStreams` API.


## `Operation = "INCREASE_DATA_RETENTION" or "DECREASE_DATA_RETENTION"` -- *Required*
Indicates whether you want to increase or decrease the retention period.


## `DataRetentionChangeInHours = ::Int` -- *Required*
The retention period, in hours. The value you specify replaces the current value.




# Returns

`UpdateDataRetentionOutput`

# Exceptions

`ClientLimitExceededException`, `InvalidArgumentException`, `ResourceNotFoundException`, `ResourceInUseException`, `NotAuthorizedException` or `VersionMismatchException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateDataRetention)
"""
@inline update_data_retention(aws::AWSConfig=default_aws_config(); args...) = update_data_retention(aws, args)

@inline update_data_retention(aws::AWSConfig, args) = AWSCore.Services.kinesisvideo(aws, "POST", "/updateDataRetention", args)

@inline update_data_retention(args) = update_data_retention(default_aws_config(), args)


"""
    using AWSSDK.KinesisVideo.update_stream
    update_stream([::AWSConfig], arguments::Dict)
    update_stream([::AWSConfig]; CurrentVersion=, <keyword arguments>)

    using AWSCore.Services.kinesisvideo
    kinesisvideo([::AWSConfig], "POST", "/updateStream", arguments::Dict)
    kinesisvideo([::AWSConfig], "POST", "/updateStream", CurrentVersion=, <keyword arguments>)

# UpdateStream Operation

Updates stream metadata, such as the device name and media type.

You must provide the stream name or the Amazon Resource Name (ARN) of the stream.

To make sure that you have the latest version of the stream before updating it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the `DescribeStream` API.

`UpdateStream` is an asynchronous operation, and takes time to complete.

# Arguments

## `StreamName = ::String`
The name of the stream whose metadata you want to update.

The stream name is an identifier for the stream, and must be unique for each account and region.


## `StreamARN = ::String`
The ARN of the stream whose metadata you want to update.


## `CurrentVersion = ::String` -- *Required*
The version of the stream whose metadata you want to update.


## `DeviceName = ::String`
The name of the device that is writing to the stream.

**Note**
> In the current implementation, Kinesis Video Streams does not use this name.


## `MediaType = ::String`
The stream's media type. Use `MediaType` to specify the type of content that the stream contains to the consumers of the stream. For more information about media types, see [Media Types](http://www.iana.org/assignments/media-types/media-types.xhtml). If you choose to specify the `MediaType`, see [Naming Requirements](https://tools.ietf.org/html/rfc6838#section-4.2).

To play video on the console, you must specify the correct video type. For example, if the video in the stream is H.264, specify `video/h264` as the `MediaType`.




# Returns

`UpdateStreamOutput`

# Exceptions

`ClientLimitExceededException`, `InvalidArgumentException`, `ResourceNotFoundException`, `ResourceInUseException`, `NotAuthorizedException` or `VersionMismatchException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateStream)
"""
@inline update_stream(aws::AWSConfig=default_aws_config(); args...) = update_stream(aws, args)

@inline update_stream(aws::AWSConfig, args) = AWSCore.Services.kinesisvideo(aws, "POST", "/updateStream", args)

@inline update_stream(args) = update_stream(default_aws_config(), args)




end # module KinesisVideo


#==============================================================================#
# End of file
#==============================================================================#
