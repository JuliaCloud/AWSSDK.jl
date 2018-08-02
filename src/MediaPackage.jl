#==============================================================================#
# MediaPackage.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/mediapackage-2017-10-12.normal.json
#==============================================================================#

__precompile__()

module MediaPackage

using AWSCore


"""
    using AWSSDK.MediaPackage.create_channel
    create_channel([::AWSConfig], arguments::Dict)
    create_channel([::AWSConfig]; id=, <keyword arguments>)

    using AWSCore.Services.mediapackage
    mediapackage([::AWSConfig], "POST", "/channels", arguments::Dict)
    mediapackage([::AWSConfig], "POST", "/channels", id=, <keyword arguments>)

# CreateChannel Operation

Creates a new Channel.

# Arguments

## `description = ::String`
A short text description of the Channel.


## `id = ::String` -- *Required*
The ID of the Channel. The ID must be unique within the region and it cannot be changed after a Channel is created.




# Returns

`CreateChannelResponse`

# Exceptions

`UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `ServiceUnavailableException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CreateChannel)
"""
@inline create_channel(aws::AWSConfig=default_aws_config(); args...) = create_channel(aws, args)

@inline create_channel(aws::AWSConfig, args) = AWSCore.Services.mediapackage(aws, "POST", "/channels", args)

@inline create_channel(args) = create_channel(default_aws_config(), args)


"""
    using AWSSDK.MediaPackage.create_origin_endpoint
    create_origin_endpoint([::AWSConfig], arguments::Dict)
    create_origin_endpoint([::AWSConfig]; channelId=, id=, <keyword arguments>)

    using AWSCore.Services.mediapackage
    mediapackage([::AWSConfig], "POST", "/origin_endpoints", arguments::Dict)
    mediapackage([::AWSConfig], "POST", "/origin_endpoints", channelId=, id=, <keyword arguments>)

# CreateOriginEndpoint Operation

Creates a new OriginEndpoint record.

# Arguments

## `channelId = ::String` -- *Required*
The ID of the Channel that the OriginEndpoint will be associated with. This cannot be changed after the OriginEndpoint is created.


## `cmafPackage = [ ... ]`

```
 cmafPackage = [
        "encryption" =>  [
            "keyRotationIntervalSeconds" =>  ::Int,
            "spekeKeyProvider" => <required> [
                "resourceId" => <required> ::String,
                "roleArn" => <required> ::String,
                "systemIds" => <required> [::String, ...],
                "url" => <required> ::String
            ]
        ],
        "hlsManifests" =>  [[
            "adMarkers" =>  "NONE", "SCTE35_ENHANCED" or "PASSTHROUGH",
            "id" => <required> ::String,
            "includeIframeOnlyStream" =>  ::Bool,
            "manifestName" =>  ::String,
            "playlistType" =>  "NONE", "EVENT" or "VOD",
            "playlistWindowSeconds" =>  ::Int,
            "programDateTimeIntervalSeconds" =>  ::Int
        ], ...],
        "segmentDurationSeconds" =>  ::Int,
        "segmentPrefix" =>  ::String,
        "streamSelection" =>  [
            "maxVideoBitsPerSecond" =>  ::Int,
            "minVideoBitsPerSecond" =>  ::Int,
            "streamOrder" =>  "ORIGINAL", "VIDEO_BITRATE_ASCENDING" or "VIDEO_BITRATE_DESCENDING"
        ]
    ]
```

## `dashPackage = [ ... ]`

```
 dashPackage = [
        "encryption" =>  [
            "keyRotationIntervalSeconds" =>  ::Int,
            "spekeKeyProvider" => <required> [
                "resourceId" => <required> ::String,
                "roleArn" => <required> ::String,
                "systemIds" => <required> [::String, ...],
                "url" => <required> ::String
            ]
        ],
        "manifestWindowSeconds" =>  ::Int,
        "minBufferTimeSeconds" =>  ::Int,
        "minUpdatePeriodSeconds" =>  ::Int,
        "periodTriggers" =>  ["ADS", ...],
        "profile" =>  "NONE" or "HBBTV_1_5",
        "segmentDurationSeconds" =>  ::Int,
        "streamSelection" =>  [
            "maxVideoBitsPerSecond" =>  ::Int,
            "minVideoBitsPerSecond" =>  ::Int,
            "streamOrder" =>  "ORIGINAL", "VIDEO_BITRATE_ASCENDING" or "VIDEO_BITRATE_DESCENDING"
        ],
        "suggestedPresentationDelaySeconds" =>  ::Int
    ]
```

## `description = ::String`
A short text description of the OriginEndpoint.


## `hlsPackage = [ ... ]`

```
 hlsPackage = [
        "adMarkers" =>  "NONE", "SCTE35_ENHANCED" or "PASSTHROUGH",
        "encryption" =>  [
            "constantInitializationVector" =>  ::String,
            "encryptionMethod" =>  "AES_128" or "SAMPLE_AES",
            "keyRotationIntervalSeconds" =>  ::Int,
            "repeatExtXKey" =>  ::Bool,
            "spekeKeyProvider" => <required> [
                "resourceId" => <required> ::String,
                "roleArn" => <required> ::String,
                "systemIds" => <required> [::String, ...],
                "url" => <required> ::String
            ]
        ],
        "includeIframeOnlyStream" =>  ::Bool,
        "playlistType" =>  "NONE", "EVENT" or "VOD",
        "playlistWindowSeconds" =>  ::Int,
        "programDateTimeIntervalSeconds" =>  ::Int,
        "segmentDurationSeconds" =>  ::Int,
        "streamSelection" =>  [
            "maxVideoBitsPerSecond" =>  ::Int,
            "minVideoBitsPerSecond" =>  ::Int,
            "streamOrder" =>  "ORIGINAL", "VIDEO_BITRATE_ASCENDING" or "VIDEO_BITRATE_DESCENDING"
        ],
        "useAudioRenditionGroup" =>  ::Bool
    ]
```

## `id = ::String` -- *Required*
The ID of the OriginEndpoint. The ID must be unique within the region and it cannot be changed after the OriginEndpoint is created.


## `manifestName = ::String`
A short string that will be used as the filename of the OriginEndpoint URL (defaults to "index").


## `mssPackage = [ ... ]`

```
 mssPackage = [
        "encryption" =>  ["spekeKeyProvider" => <required> [
                "resourceId" => <required> ::String,
                "roleArn" => <required> ::String,
                "systemIds" => <required> [::String, ...],
                "url" => <required> ::String
            ]],
        "manifestWindowSeconds" =>  ::Int,
        "segmentDurationSeconds" =>  ::Int,
        "streamSelection" =>  [
            "maxVideoBitsPerSecond" =>  ::Int,
            "minVideoBitsPerSecond" =>  ::Int,
            "streamOrder" =>  "ORIGINAL", "VIDEO_BITRATE_ASCENDING" or "VIDEO_BITRATE_DESCENDING"
        ]
    ]
```

## `startoverWindowSeconds = ::Int`
Maximum duration (seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.


## `timeDelaySeconds = ::Int`
Amount of delay (seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.


## `whitelist = [::String, ...]`
A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.




# Returns

`CreateOriginEndpointResponse`

# Exceptions

`UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `ServiceUnavailableException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CreateOriginEndpoint)
"""
@inline create_origin_endpoint(aws::AWSConfig=default_aws_config(); args...) = create_origin_endpoint(aws, args)

@inline create_origin_endpoint(aws::AWSConfig, args) = AWSCore.Services.mediapackage(aws, "POST", "/origin_endpoints", args)

@inline create_origin_endpoint(args) = create_origin_endpoint(default_aws_config(), args)


"""
    using AWSSDK.MediaPackage.delete_channel
    delete_channel([::AWSConfig], arguments::Dict)
    delete_channel([::AWSConfig]; id=)

    using AWSCore.Services.mediapackage
    mediapackage([::AWSConfig], "DELETE", "/channels/{id}", arguments::Dict)
    mediapackage([::AWSConfig], "DELETE", "/channels/{id}", id=)

# DeleteChannel Operation

Deletes an existing Channel.

# Arguments

## `id = ::String` -- *Required*
The ID of the Channel to delete.




# Returns

`DeleteChannelResponse`

# Exceptions

`UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `ServiceUnavailableException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DeleteChannel)
"""
@inline delete_channel(aws::AWSConfig=default_aws_config(); args...) = delete_channel(aws, args)

@inline delete_channel(aws::AWSConfig, args) = AWSCore.Services.mediapackage(aws, "DELETE", "/channels/{id}", args)

@inline delete_channel(args) = delete_channel(default_aws_config(), args)


"""
    using AWSSDK.MediaPackage.delete_origin_endpoint
    delete_origin_endpoint([::AWSConfig], arguments::Dict)
    delete_origin_endpoint([::AWSConfig]; id=)

    using AWSCore.Services.mediapackage
    mediapackage([::AWSConfig], "DELETE", "/origin_endpoints/{id}", arguments::Dict)
    mediapackage([::AWSConfig], "DELETE", "/origin_endpoints/{id}", id=)

# DeleteOriginEndpoint Operation

Deletes an existing OriginEndpoint.

# Arguments

## `id = ::String` -- *Required*
The ID of the OriginEndpoint to delete.




# Returns

`DeleteOriginEndpointResponse`

# Exceptions

`UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `ServiceUnavailableException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DeleteOriginEndpoint)
"""
@inline delete_origin_endpoint(aws::AWSConfig=default_aws_config(); args...) = delete_origin_endpoint(aws, args)

@inline delete_origin_endpoint(aws::AWSConfig, args) = AWSCore.Services.mediapackage(aws, "DELETE", "/origin_endpoints/{id}", args)

@inline delete_origin_endpoint(args) = delete_origin_endpoint(default_aws_config(), args)


"""
    using AWSSDK.MediaPackage.describe_channel
    describe_channel([::AWSConfig], arguments::Dict)
    describe_channel([::AWSConfig]; id=)

    using AWSCore.Services.mediapackage
    mediapackage([::AWSConfig], "GET", "/channels/{id}", arguments::Dict)
    mediapackage([::AWSConfig], "GET", "/channels/{id}", id=)

# DescribeChannel Operation

Gets details about a Channel.

# Arguments

## `id = ::String` -- *Required*
The ID of a Channel.




# Returns

`DescribeChannelResponse`

# Exceptions

`UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `ServiceUnavailableException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DescribeChannel)
"""
@inline describe_channel(aws::AWSConfig=default_aws_config(); args...) = describe_channel(aws, args)

@inline describe_channel(aws::AWSConfig, args) = AWSCore.Services.mediapackage(aws, "GET", "/channels/{id}", args)

@inline describe_channel(args) = describe_channel(default_aws_config(), args)


"""
    using AWSSDK.MediaPackage.describe_origin_endpoint
    describe_origin_endpoint([::AWSConfig], arguments::Dict)
    describe_origin_endpoint([::AWSConfig]; id=)

    using AWSCore.Services.mediapackage
    mediapackage([::AWSConfig], "GET", "/origin_endpoints/{id}", arguments::Dict)
    mediapackage([::AWSConfig], "GET", "/origin_endpoints/{id}", id=)

# DescribeOriginEndpoint Operation

Gets details about an existing OriginEndpoint.

# Arguments

## `id = ::String` -- *Required*
The ID of the OriginEndpoint.




# Returns

`DescribeOriginEndpointResponse`

# Exceptions

`UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `ServiceUnavailableException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DescribeOriginEndpoint)
"""
@inline describe_origin_endpoint(aws::AWSConfig=default_aws_config(); args...) = describe_origin_endpoint(aws, args)

@inline describe_origin_endpoint(aws::AWSConfig, args) = AWSCore.Services.mediapackage(aws, "GET", "/origin_endpoints/{id}", args)

@inline describe_origin_endpoint(args) = describe_origin_endpoint(default_aws_config(), args)


"""
    using AWSSDK.MediaPackage.list_channels
    list_channels([::AWSConfig], arguments::Dict)
    list_channels([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediapackage
    mediapackage([::AWSConfig], "GET", "/channels", arguments::Dict)
    mediapackage([::AWSConfig], "GET", "/channels", <keyword arguments>)

# ListChannels Operation

Returns a collection of Channels.

# Arguments

## `maxResults = ::Int`
Upper bound on number of records to return.


## `nextToken = ::String`
A token used to resume pagination from the end of a previous request.




# Returns

`ListChannelsResponse`

# Exceptions

`UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `ServiceUnavailableException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ListChannels)
"""
@inline list_channels(aws::AWSConfig=default_aws_config(); args...) = list_channels(aws, args)

@inline list_channels(aws::AWSConfig, args) = AWSCore.Services.mediapackage(aws, "GET", "/channels", args)

@inline list_channels(args) = list_channels(default_aws_config(), args)


"""
    using AWSSDK.MediaPackage.list_origin_endpoints
    list_origin_endpoints([::AWSConfig], arguments::Dict)
    list_origin_endpoints([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediapackage
    mediapackage([::AWSConfig], "GET", "/origin_endpoints", arguments::Dict)
    mediapackage([::AWSConfig], "GET", "/origin_endpoints", <keyword arguments>)

# ListOriginEndpoints Operation

Returns a collection of OriginEndpoint records.

# Arguments

## `channelId = ::String`
When specified, the request will return only OriginEndpoints associated with the given Channel ID.


## `maxResults = ::Int`
The upper bound on the number of records to return.


## `nextToken = ::String`
A token used to resume pagination from the end of a previous request.




# Returns

`ListOriginEndpointsResponse`

# Exceptions

`UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `ServiceUnavailableException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ListOriginEndpoints)
"""
@inline list_origin_endpoints(aws::AWSConfig=default_aws_config(); args...) = list_origin_endpoints(aws, args)

@inline list_origin_endpoints(aws::AWSConfig, args) = AWSCore.Services.mediapackage(aws, "GET", "/origin_endpoints", args)

@inline list_origin_endpoints(args) = list_origin_endpoints(default_aws_config(), args)


"""
    using AWSSDK.MediaPackage.rotate_channel_credentials
    rotate_channel_credentials([::AWSConfig], arguments::Dict)
    rotate_channel_credentials([::AWSConfig]; id=)

    using AWSCore.Services.mediapackage
    mediapackage([::AWSConfig], "PUT", "/channels/{id}/credentials", arguments::Dict)
    mediapackage([::AWSConfig], "PUT", "/channels/{id}/credentials", id=)

# RotateChannelCredentials Operation

Changes the Channel ingest username and password.

# Arguments

## `id = ::String` -- *Required*
The ID of the channel to update.




# Returns

`RotateChannelCredentialsResponse`

# Exceptions

`UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `ServiceUnavailableException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/RotateChannelCredentials)
"""
@inline rotate_channel_credentials(aws::AWSConfig=default_aws_config(); args...) = rotate_channel_credentials(aws, args)

@inline rotate_channel_credentials(aws::AWSConfig, args) = AWSCore.Services.mediapackage(aws, "PUT", "/channels/{id}/credentials", args)

@inline rotate_channel_credentials(args) = rotate_channel_credentials(default_aws_config(), args)


"""
    using AWSSDK.MediaPackage.update_channel
    update_channel([::AWSConfig], arguments::Dict)
    update_channel([::AWSConfig]; id=, <keyword arguments>)

    using AWSCore.Services.mediapackage
    mediapackage([::AWSConfig], "PUT", "/channels/{id}", arguments::Dict)
    mediapackage([::AWSConfig], "PUT", "/channels/{id}", id=, <keyword arguments>)

# UpdateChannel Operation

Updates an existing Channel.

# Arguments

## `description = ::String`
A short text description of the Channel.


## `id = ::String` -- *Required*
The ID of the Channel to update.




# Returns

`UpdateChannelResponse`

# Exceptions

`UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `ServiceUnavailableException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/UpdateChannel)
"""
@inline update_channel(aws::AWSConfig=default_aws_config(); args...) = update_channel(aws, args)

@inline update_channel(aws::AWSConfig, args) = AWSCore.Services.mediapackage(aws, "PUT", "/channels/{id}", args)

@inline update_channel(args) = update_channel(default_aws_config(), args)


"""
    using AWSSDK.MediaPackage.update_origin_endpoint
    update_origin_endpoint([::AWSConfig], arguments::Dict)
    update_origin_endpoint([::AWSConfig]; id=, <keyword arguments>)

    using AWSCore.Services.mediapackage
    mediapackage([::AWSConfig], "PUT", "/origin_endpoints/{id}", arguments::Dict)
    mediapackage([::AWSConfig], "PUT", "/origin_endpoints/{id}", id=, <keyword arguments>)

# UpdateOriginEndpoint Operation

Updates an existing OriginEndpoint.

# Arguments

## `cmafPackage = [ ... ]`

```
 cmafPackage = [
        "encryption" =>  [
            "keyRotationIntervalSeconds" =>  ::Int,
            "spekeKeyProvider" => <required> [
                "resourceId" => <required> ::String,
                "roleArn" => <required> ::String,
                "systemIds" => <required> [::String, ...],
                "url" => <required> ::String
            ]
        ],
        "hlsManifests" =>  [[
            "adMarkers" =>  "NONE", "SCTE35_ENHANCED" or "PASSTHROUGH",
            "id" => <required> ::String,
            "includeIframeOnlyStream" =>  ::Bool,
            "manifestName" =>  ::String,
            "playlistType" =>  "NONE", "EVENT" or "VOD",
            "playlistWindowSeconds" =>  ::Int,
            "programDateTimeIntervalSeconds" =>  ::Int
        ], ...],
        "segmentDurationSeconds" =>  ::Int,
        "segmentPrefix" =>  ::String,
        "streamSelection" =>  [
            "maxVideoBitsPerSecond" =>  ::Int,
            "minVideoBitsPerSecond" =>  ::Int,
            "streamOrder" =>  "ORIGINAL", "VIDEO_BITRATE_ASCENDING" or "VIDEO_BITRATE_DESCENDING"
        ]
    ]
```

## `dashPackage = [ ... ]`

```
 dashPackage = [
        "encryption" =>  [
            "keyRotationIntervalSeconds" =>  ::Int,
            "spekeKeyProvider" => <required> [
                "resourceId" => <required> ::String,
                "roleArn" => <required> ::String,
                "systemIds" => <required> [::String, ...],
                "url" => <required> ::String
            ]
        ],
        "manifestWindowSeconds" =>  ::Int,
        "minBufferTimeSeconds" =>  ::Int,
        "minUpdatePeriodSeconds" =>  ::Int,
        "periodTriggers" =>  ["ADS", ...],
        "profile" =>  "NONE" or "HBBTV_1_5",
        "segmentDurationSeconds" =>  ::Int,
        "streamSelection" =>  [
            "maxVideoBitsPerSecond" =>  ::Int,
            "minVideoBitsPerSecond" =>  ::Int,
            "streamOrder" =>  "ORIGINAL", "VIDEO_BITRATE_ASCENDING" or "VIDEO_BITRATE_DESCENDING"
        ],
        "suggestedPresentationDelaySeconds" =>  ::Int
    ]
```

## `description = ::String`
A short text description of the OriginEndpoint.


## `hlsPackage = [ ... ]`

```
 hlsPackage = [
        "adMarkers" =>  "NONE", "SCTE35_ENHANCED" or "PASSTHROUGH",
        "encryption" =>  [
            "constantInitializationVector" =>  ::String,
            "encryptionMethod" =>  "AES_128" or "SAMPLE_AES",
            "keyRotationIntervalSeconds" =>  ::Int,
            "repeatExtXKey" =>  ::Bool,
            "spekeKeyProvider" => <required> [
                "resourceId" => <required> ::String,
                "roleArn" => <required> ::String,
                "systemIds" => <required> [::String, ...],
                "url" => <required> ::String
            ]
        ],
        "includeIframeOnlyStream" =>  ::Bool,
        "playlistType" =>  "NONE", "EVENT" or "VOD",
        "playlistWindowSeconds" =>  ::Int,
        "programDateTimeIntervalSeconds" =>  ::Int,
        "segmentDurationSeconds" =>  ::Int,
        "streamSelection" =>  [
            "maxVideoBitsPerSecond" =>  ::Int,
            "minVideoBitsPerSecond" =>  ::Int,
            "streamOrder" =>  "ORIGINAL", "VIDEO_BITRATE_ASCENDING" or "VIDEO_BITRATE_DESCENDING"
        ],
        "useAudioRenditionGroup" =>  ::Bool
    ]
```

## `id = ::String` -- *Required*
The ID of the OriginEndpoint to update.


## `manifestName = ::String`
A short string that will be appended to the end of the Endpoint URL.


## `mssPackage = [ ... ]`

```
 mssPackage = [
        "encryption" =>  ["spekeKeyProvider" => <required> [
                "resourceId" => <required> ::String,
                "roleArn" => <required> ::String,
                "systemIds" => <required> [::String, ...],
                "url" => <required> ::String
            ]],
        "manifestWindowSeconds" =>  ::Int,
        "segmentDurationSeconds" =>  ::Int,
        "streamSelection" =>  [
            "maxVideoBitsPerSecond" =>  ::Int,
            "minVideoBitsPerSecond" =>  ::Int,
            "streamOrder" =>  "ORIGINAL", "VIDEO_BITRATE_ASCENDING" or "VIDEO_BITRATE_DESCENDING"
        ]
    ]
```

## `startoverWindowSeconds = ::Int`
Maximum duration (in seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.


## `timeDelaySeconds = ::Int`
Amount of delay (in seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.


## `whitelist = [::String, ...]`
A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.




# Returns

`UpdateOriginEndpointResponse`

# Exceptions

`UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `ServiceUnavailableException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/UpdateOriginEndpoint)
"""
@inline update_origin_endpoint(aws::AWSConfig=default_aws_config(); args...) = update_origin_endpoint(aws, args)

@inline update_origin_endpoint(aws::AWSConfig, args) = AWSCore.Services.mediapackage(aws, "PUT", "/origin_endpoints/{id}", args)

@inline update_origin_endpoint(args) = update_origin_endpoint(default_aws_config(), args)




end # module MediaPackage


#==============================================================================#
# End of file
#==============================================================================#
