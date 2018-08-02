#==============================================================================#
# MediaTailor.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/mediatailor-2018-04-23.normal.json
#==============================================================================#

__precompile__()

module MediaTailor

using AWSCore


"""
    using AWSSDK.MediaTailor.delete_playback_configuration
    delete_playback_configuration([::AWSConfig], arguments::Dict)
    delete_playback_configuration([::AWSConfig]; Name=)

    using AWSCore.Services.mediatailor
    mediatailor([::AWSConfig], "DELETE", "/playbackConfiguration/{Name}", arguments::Dict)
    mediatailor([::AWSConfig], "DELETE", "/playbackConfiguration/{Name}", Name=)

# DeletePlaybackConfiguration Operation

Deletes the configuration for the specified name.

# Arguments

## `Name = ::String` -- *Required*
The identifier for the configuration.




# Returns

`DeletePlaybackConfigurationResponse`

# Exceptions

.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeletePlaybackConfiguration)
"""
@inline delete_playback_configuration(aws::AWSConfig=default_aws_config(); args...) = delete_playback_configuration(aws, args)

@inline delete_playback_configuration(aws::AWSConfig, args) = AWSCore.Services.mediatailor(aws, "DELETE", "/playbackConfiguration/{Name}", args)

@inline delete_playback_configuration(args) = delete_playback_configuration(default_aws_config(), args)


"""
    using AWSSDK.MediaTailor.get_playback_configuration
    get_playback_configuration([::AWSConfig], arguments::Dict)
    get_playback_configuration([::AWSConfig]; Name=)

    using AWSCore.Services.mediatailor
    mediatailor([::AWSConfig], "GET", "/playbackConfiguration/{Name}", arguments::Dict)
    mediatailor([::AWSConfig], "GET", "/playbackConfiguration/{Name}", Name=)

# GetPlaybackConfiguration Operation

Returns the configuration for the specified name.

# Arguments

## `Name = ::String` -- *Required*
The identifier for the configuration.




# Returns

`GetPlaybackConfigurationResponse`

# Exceptions

.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetPlaybackConfiguration)
"""
@inline get_playback_configuration(aws::AWSConfig=default_aws_config(); args...) = get_playback_configuration(aws, args)

@inline get_playback_configuration(aws::AWSConfig, args) = AWSCore.Services.mediatailor(aws, "GET", "/playbackConfiguration/{Name}", args)

@inline get_playback_configuration(args) = get_playback_configuration(default_aws_config(), args)


"""
    using AWSSDK.MediaTailor.list_playback_configurations
    list_playback_configurations([::AWSConfig], arguments::Dict)
    list_playback_configurations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediatailor
    mediatailor([::AWSConfig], "GET", "/playbackConfigurations", arguments::Dict)
    mediatailor([::AWSConfig], "GET", "/playbackConfigurations", <keyword arguments>)

# ListPlaybackConfigurations Operation

Returns a list of the configurations defined in AWS Elemental MediaTailor. You can specify a max number of configurations to return at a time. The default max is 50. Results are returned in pagefuls. If AWS Elemental MediaTailor has more configurations than the specified max, it provides parameters in the response that you can use to retrieve the next pageful.

# Arguments

## `MaxResults = ::Int`
Maximum number of records to return.


## `NextToken = ::String`
Pagination token returned by the GET list request when results overrun the meximum allowed. Use the token to fetch the next page of results.




# Returns

`ListPlaybackConfigurationsResponse`

# Exceptions

.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListPlaybackConfigurations)
"""
@inline list_playback_configurations(aws::AWSConfig=default_aws_config(); args...) = list_playback_configurations(aws, args)

@inline list_playback_configurations(aws::AWSConfig, args) = AWSCore.Services.mediatailor(aws, "GET", "/playbackConfigurations", args)

@inline list_playback_configurations(args) = list_playback_configurations(default_aws_config(), args)


"""
    using AWSSDK.MediaTailor.put_playback_configuration
    put_playback_configuration([::AWSConfig], arguments::Dict)
    put_playback_configuration([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediatailor
    mediatailor([::AWSConfig], "PUT", "/playbackConfiguration", arguments::Dict)
    mediatailor([::AWSConfig], "PUT", "/playbackConfiguration", <keyword arguments>)

# PutPlaybackConfiguration Operation

Adds a new configuration to AWS Elemental MediaTailor.

# Arguments

## `AdDecisionServerUrl = ::String`
The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25000 characters.


## `CdnConfiguration = [ ... ]`
The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.
```
 CdnConfiguration = [
        "AdSegmentUrlPrefix" =>  ::String,
        "ContentSegmentUrlPrefix" =>  ::String
    ]
```

## `Name = ::String`
The identifier for the configuration.


## `SlateAdUrl = ::String`
The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because AWS Elemental MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.


## `VideoContentSourceUrl = ::String`
The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.




# Returns

`PutPlaybackConfigurationResponse`

# Exceptions

.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PutPlaybackConfiguration)
"""
@inline put_playback_configuration(aws::AWSConfig=default_aws_config(); args...) = put_playback_configuration(aws, args)

@inline put_playback_configuration(aws::AWSConfig, args) = AWSCore.Services.mediatailor(aws, "PUT", "/playbackConfiguration", args)

@inline put_playback_configuration(args) = put_playback_configuration(default_aws_config(), args)




end # module MediaTailor


#==============================================================================#
# End of file
#==============================================================================#
