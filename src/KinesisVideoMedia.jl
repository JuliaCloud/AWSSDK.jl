#==============================================================================#
# KinesisVideoMedia.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/kinesis-video-media-2017-09-30.normal.json
#==============================================================================#

__precompile__()

module KinesisVideoMedia

using AWSCore


"""
    using AWSSDK.KinesisVideoMedia.get_media
    get_media([::AWSConfig], arguments::Dict)
    get_media([::AWSConfig]; StartSelector=, <keyword arguments>)

    using AWSCore.Services.kinesis_video_media
    kinesis_video_media([::AWSConfig], "POST", "/getMedia", arguments::Dict)
    kinesis_video_media([::AWSConfig], "POST", "/getMedia", StartSelector=, <keyword arguments>)

# GetMedia Operation

Use this API to retrieve media content from a Kinesis video stream. In the request, you identify stream name or stream Amazon Resource Name (ARN), and the starting chunk. Kinesis Video Streams then returns a stream of chunks in order by fragment number.

**Note**
> You must first call the `GetDataEndpoint` API to get an endpoint to which you can then send the `GetMedia` requests.

When you put media data (fragments) on a stream, Kinesis Video Streams stores each incoming fragment and related metadata in what is called a "chunk." For more information, see . The `GetMedia` API returns a stream of these chunks starting from the chunk that you specify in the request.

The following limits apply when using the `GetMedia` API:

*   A client can call `GetMedia` up to five times per second per stream.

*   Kinesis Video Streams sends media data at a rate of up to 25 megabytes per second (or 200 megabits per second) during a `GetMedia` session.

# Arguments

## `StreamName = ::String`
The Kinesis video stream name from where you want to get the media content. If you don't specify the `streamName`, you must specify the `streamARN`.


## `StreamARN = ::String`
The ARN of the stream from where you want to get the media content. If you don't specify the `streamARN`, you must specify the `streamName`.


## `StartSelector = [ ... ]` -- *Required*
Identifies the starting chunk to get from the specified stream.
```
 StartSelector = [
        "StartSelectorType" => <required> "FRAGMENT_NUMBER", "SERVER_TIMESTAMP", "PRODUCER_TIMESTAMP", "NOW", "EARLIEST" or "CONTINUATION_TOKEN",
        "AfterFragmentNumber" =>  ::String,
        "StartTimestamp" =>  timestamp,
        "ContinuationToken" =>  ::String
    ]
```



# Returns

`GetMediaOutput`

# Exceptions

`ResourceNotFoundException`, `NotAuthorizedException`, `InvalidEndpointException`, `ClientLimitExceededException`, `ConnectionLimitExceededException` or `InvalidArgumentException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesis-video-media-2017-09-30/GetMedia)
"""
@inline get_media(aws::AWSConfig=default_aws_config(); args...) = get_media(aws, args)

@inline get_media(aws::AWSConfig, args) = AWSCore.Services.kinesis_video_media(aws, "POST", "/getMedia", args)

@inline get_media(args) = get_media(default_aws_config(), args)




end # module KinesisVideoMedia


#==============================================================================#
# End of file
#==============================================================================#
