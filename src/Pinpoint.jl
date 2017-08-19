#==============================================================================#
# Pinpoint.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/pinpoint-2016-12-01.normal.json
#==============================================================================#

__precompile__()

module Pinpoint

using AWSCore


"""
    using AWSSDK.Pinpoint.create_campaign
    create_campaign([::AWSConfig], arguments::Dict)
    create_campaign([::AWSConfig]; application-id=, WriteCampaignRequest=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "POST", "/v1/apps/{application-id}/campaigns", arguments::Dict)
    pinpoint([::AWSConfig], "POST", "/v1/apps/{application-id}/campaigns", application-id=, WriteCampaignRequest=)

# CreateCampaign Operation

Creates or updates a campaign.

# Arguments

## `application-id = ::String` -- *Required*



## `WriteCampaignRequest = [ ... ]` -- *Required*

```
 WriteCampaignRequest = [
        "AdditionalTreatments" =>  [[
            "MessageConfiguration" =>  [
                "APNSMessage" =>  [
                    "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                    "Body" =>  ::String,
                    "ImageIconUrl" =>  ::String,
                    "ImageSmallIconUrl" =>  ::String,
                    "ImageUrl" =>  ::String,
                    "JsonBody" =>  ::String,
                    "MediaUrl" =>  ::String,
                    "SilentPush" =>  ::Bool,
                    "Title" =>  ::String,
                    "Url" =>  ::String
                ],
                "DefaultMessage" =>  [
                    "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                    "Body" =>  ::String,
                    "ImageIconUrl" =>  ::String,
                    "ImageSmallIconUrl" =>  ::String,
                    "ImageUrl" =>  ::String,
                    "JsonBody" =>  ::String,
                    "MediaUrl" =>  ::String,
                    "SilentPush" =>  ::Bool,
                    "Title" =>  ::String,
                    "Url" =>  ::String
                ],
                "EmailMessage" =>  [
                    "Body" =>  ::String,
                    "HtmlBody" =>  ::String,
                    "Title" =>  ::String
                ],
                "GCMMessage" =>  [
                    "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                    "Body" =>  ::String,
                    "ImageIconUrl" =>  ::String,
                    "ImageSmallIconUrl" =>  ::String,
                    "ImageUrl" =>  ::String,
                    "JsonBody" =>  ::String,
                    "MediaUrl" =>  ::String,
                    "SilentPush" =>  ::Bool,
                    "Title" =>  ::String,
                    "Url" =>  ::String
                ],
                "SMSMessage" =>  [
                    "Body" =>  ::String,
                    "MessageType" =>  "TRANSACTIONAL" or "PROMOTIONAL",
                    "SenderId" =>  ::String
                ]
            ],
            "Schedule" =>  [
                "EndTime" =>  ::String,
                "Frequency" =>  "ONCE", "HOURLY", "DAILY", "WEEKLY" or "MONTHLY",
                "IsLocalTime" =>  ::Bool,
                "QuietTime" =>  [
                    "End" =>  ::String,
                    "Start" =>  ::String
                ],
                "StartTime" =>  ::String,
                "Timezone" =>  ::String
            ],
            "SizePercent" =>  ::Int,
            "TreatmentDescription" =>  ::String,
            "TreatmentName" =>  ::String
        ], ...],
        "Description" =>  ::String,
        "HoldoutPercent" =>  ::Int,
        "IsPaused" =>  ::Bool,
        "Limits" =>  [
            "Daily" =>  ::Int,
            "Total" =>  ::Int
        ],
        "MessageConfiguration" =>  [
            "APNSMessage" =>  [
                "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                "Body" =>  ::String,
                "ImageIconUrl" =>  ::String,
                "ImageSmallIconUrl" =>  ::String,
                "ImageUrl" =>  ::String,
                "JsonBody" =>  ::String,
                "MediaUrl" =>  ::String,
                "SilentPush" =>  ::Bool,
                "Title" =>  ::String,
                "Url" =>  ::String
            ],
            "DefaultMessage" =>  [
                "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                "Body" =>  ::String,
                "ImageIconUrl" =>  ::String,
                "ImageSmallIconUrl" =>  ::String,
                "ImageUrl" =>  ::String,
                "JsonBody" =>  ::String,
                "MediaUrl" =>  ::String,
                "SilentPush" =>  ::Bool,
                "Title" =>  ::String,
                "Url" =>  ::String
            ],
            "EmailMessage" =>  [
                "Body" =>  ::String,
                "HtmlBody" =>  ::String,
                "Title" =>  ::String
            ],
            "GCMMessage" =>  [
                "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                "Body" =>  ::String,
                "ImageIconUrl" =>  ::String,
                "ImageSmallIconUrl" =>  ::String,
                "ImageUrl" =>  ::String,
                "JsonBody" =>  ::String,
                "MediaUrl" =>  ::String,
                "SilentPush" =>  ::Bool,
                "Title" =>  ::String,
                "Url" =>  ::String
            ],
            "SMSMessage" =>  [
                "Body" =>  ::String,
                "MessageType" =>  "TRANSACTIONAL" or "PROMOTIONAL",
                "SenderId" =>  ::String
            ]
        ],
        "Name" =>  ::String,
        "Schedule" =>  [
            "EndTime" =>  ::String,
            "Frequency" =>  "ONCE", "HOURLY", "DAILY", "WEEKLY" or "MONTHLY",
            "IsLocalTime" =>  ::Bool,
            "QuietTime" =>  [
                "End" =>  ::String,
                "Start" =>  ::String
            ],
            "StartTime" =>  ::String,
            "Timezone" =>  ::String
        ],
        "SegmentId" =>  ::String,
        "SegmentVersion" =>  ::Int,
        "TreatmentDescription" =>  ::String,
        "TreatmentName" =>  ::String
    ]
```



# Returns

`CreateCampaignResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateCampaign)
"""

@inline create_campaign(aws::AWSConfig=default_aws_config(); args...) = create_campaign(aws, args)

@inline create_campaign(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "POST", "/v1/apps/{application-id}/campaigns", args)

@inline create_campaign(args) = create_campaign(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.create_import_job
    create_import_job([::AWSConfig], arguments::Dict)
    create_import_job([::AWSConfig]; application-id=, ImportJobRequest=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "POST", "/v1/apps/{application-id}/jobs/import", arguments::Dict)
    pinpoint([::AWSConfig], "POST", "/v1/apps/{application-id}/jobs/import", application-id=, ImportJobRequest=)

# CreateImportJob Operation

Creates or updates an import job.

# Arguments

## `application-id = ::String` -- *Required*



## `ImportJobRequest = [ ... ]` -- *Required*

```
 ImportJobRequest = [
        "DefineSegment" =>  ::Bool,
        "ExternalId" =>  ::String,
        "Format" =>  "CSV" or "JSON",
        "RegisterEndpoints" =>  ::Bool,
        "RoleArn" =>  ::String,
        "S3Url" =>  ::String,
        "SegmentId" =>  ::String,
        "SegmentName" =>  ::String
    ]
```



# Returns

`CreateImportJobResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateImportJob)
"""

@inline create_import_job(aws::AWSConfig=default_aws_config(); args...) = create_import_job(aws, args)

@inline create_import_job(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "POST", "/v1/apps/{application-id}/jobs/import", args)

@inline create_import_job(args) = create_import_job(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.create_segment
    create_segment([::AWSConfig], arguments::Dict)
    create_segment([::AWSConfig]; application-id=, WriteSegmentRequest=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "POST", "/v1/apps/{application-id}/segments", arguments::Dict)
    pinpoint([::AWSConfig], "POST", "/v1/apps/{application-id}/segments", application-id=, WriteSegmentRequest=)

# CreateSegment Operation

Used to create or update a segment.

# Arguments

## `application-id = ::String` -- *Required*



## `WriteSegmentRequest = [ ... ]` -- *Required*

```
 WriteSegmentRequest = [
        "Dimensions" =>  [
            "Attributes" =>  ::Dict{String,String},
            "Behavior" =>  ["Recency" =>  [
                    "Duration" =>  "HR_24", "DAY_7", "DAY_14" or "DAY_30",
                    "RecencyType" =>  "ACTIVE" or "INACTIVE"
                ]],
            "Demographic" =>  [
                "AppVersion" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ],
                "Channel" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ],
                "DeviceType" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ],
                "Make" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ],
                "Model" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ],
                "Platform" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ]
            ],
            "Location" =>  ["Country" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ]],
            "UserAttributes" =>  ::Dict{String,String}
        ],
        "Name" =>  ::String
    ]
```



# Returns

`CreateSegmentResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/CreateSegment)
"""

@inline create_segment(aws::AWSConfig=default_aws_config(); args...) = create_segment(aws, args)

@inline create_segment(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "POST", "/v1/apps/{application-id}/segments", args)

@inline create_segment(args) = create_segment(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.delete_apns_channel
    delete_apns_channel([::AWSConfig], arguments::Dict)
    delete_apns_channel([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/channels/apns", arguments::Dict)
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/channels/apns", application-id=)

# DeleteApnsChannel Operation

Deletes the APNs channel for an app.

# Arguments

## `application-id = ::String` -- *Required*





# Returns

`DeleteApnsChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsChannel)
"""

@inline delete_apns_channel(aws::AWSConfig=default_aws_config(); args...) = delete_apns_channel(aws, args)

@inline delete_apns_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "DELETE", "/v1/apps/{application-id}/channels/apns", args)

@inline delete_apns_channel(args) = delete_apns_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.delete_apns_sandbox_channel
    delete_apns_sandbox_channel([::AWSConfig], arguments::Dict)
    delete_apns_sandbox_channel([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/channels/apns_sandbox", arguments::Dict)
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/channels/apns_sandbox", application-id=)

# DeleteApnsSandboxChannel Operation

Delete an APNS sandbox channel

# Arguments

## `application-id = ::String` -- *Required*





# Returns

`DeleteApnsSandboxChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteApnsSandboxChannel)
"""

@inline delete_apns_sandbox_channel(aws::AWSConfig=default_aws_config(); args...) = delete_apns_sandbox_channel(aws, args)

@inline delete_apns_sandbox_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "DELETE", "/v1/apps/{application-id}/channels/apns_sandbox", args)

@inline delete_apns_sandbox_channel(args) = delete_apns_sandbox_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.delete_campaign
    delete_campaign([::AWSConfig], arguments::Dict)
    delete_campaign([::AWSConfig]; application-id=, campaign-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/campaigns/{campaign-id}", arguments::Dict)
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/campaigns/{campaign-id}", application-id=, campaign-id=)

# DeleteCampaign Operation

Deletes a campaign.

# Arguments

## `application-id = ::String` -- *Required*



## `campaign-id = ::String` -- *Required*





# Returns

`DeleteCampaignResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteCampaign)
"""

@inline delete_campaign(aws::AWSConfig=default_aws_config(); args...) = delete_campaign(aws, args)

@inline delete_campaign(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "DELETE", "/v1/apps/{application-id}/campaigns/{campaign-id}", args)

@inline delete_campaign(args) = delete_campaign(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.delete_email_channel
    delete_email_channel([::AWSConfig], arguments::Dict)
    delete_email_channel([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/channels/email", arguments::Dict)
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/channels/email", application-id=)

# DeleteEmailChannel Operation

Delete an email channel

# Arguments

## `application-id = ::String` -- *Required*





# Returns

`DeleteEmailChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEmailChannel)
"""

@inline delete_email_channel(aws::AWSConfig=default_aws_config(); args...) = delete_email_channel(aws, args)

@inline delete_email_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "DELETE", "/v1/apps/{application-id}/channels/email", args)

@inline delete_email_channel(args) = delete_email_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.delete_event_stream
    delete_event_stream([::AWSConfig], arguments::Dict)
    delete_event_stream([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/eventstream", arguments::Dict)
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/eventstream", application-id=)

# DeleteEventStream Operation

Deletes the event stream for an app.

# Arguments

## `application-id = ::String` -- *Required*
ApplicationId




# Returns

`DeleteEventStreamResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteEventStream)
"""

@inline delete_event_stream(aws::AWSConfig=default_aws_config(); args...) = delete_event_stream(aws, args)

@inline delete_event_stream(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "DELETE", "/v1/apps/{application-id}/eventstream", args)

@inline delete_event_stream(args) = delete_event_stream(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.delete_gcm_channel
    delete_gcm_channel([::AWSConfig], arguments::Dict)
    delete_gcm_channel([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/channels/gcm", arguments::Dict)
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/channels/gcm", application-id=)

# DeleteGcmChannel Operation

Deletes the GCM channel for an app.

# Arguments

## `application-id = ::String` -- *Required*





# Returns

`DeleteGcmChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteGcmChannel)
"""

@inline delete_gcm_channel(aws::AWSConfig=default_aws_config(); args...) = delete_gcm_channel(aws, args)

@inline delete_gcm_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "DELETE", "/v1/apps/{application-id}/channels/gcm", args)

@inline delete_gcm_channel(args) = delete_gcm_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.delete_segment
    delete_segment([::AWSConfig], arguments::Dict)
    delete_segment([::AWSConfig]; application-id=, segment-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/segments/{segment-id}", arguments::Dict)
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/segments/{segment-id}", application-id=, segment-id=)

# DeleteSegment Operation

Deletes a segment.

# Arguments

## `application-id = ::String` -- *Required*



## `segment-id = ::String` -- *Required*





# Returns

`DeleteSegmentResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteSegment)
"""

@inline delete_segment(aws::AWSConfig=default_aws_config(); args...) = delete_segment(aws, args)

@inline delete_segment(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "DELETE", "/v1/apps/{application-id}/segments/{segment-id}", args)

@inline delete_segment(args) = delete_segment(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.delete_sms_channel
    delete_sms_channel([::AWSConfig], arguments::Dict)
    delete_sms_channel([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/channels/sms", arguments::Dict)
    pinpoint([::AWSConfig], "DELETE", "/v1/apps/{application-id}/channels/sms", application-id=)

# DeleteSmsChannel Operation

Delete an SMS channel

# Arguments

## `application-id = ::String` -- *Required*





# Returns

`DeleteSmsChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/DeleteSmsChannel)
"""

@inline delete_sms_channel(aws::AWSConfig=default_aws_config(); args...) = delete_sms_channel(aws, args)

@inline delete_sms_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "DELETE", "/v1/apps/{application-id}/channels/sms", args)

@inline delete_sms_channel(args) = delete_sms_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_apns_channel
    get_apns_channel([::AWSConfig], arguments::Dict)
    get_apns_channel([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/channels/apns", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/channels/apns", application-id=)

# GetApnsChannel Operation

Returns information about the APNs channel for an app.

# Arguments

## `application-id = ::String` -- *Required*





# Returns

`GetApnsChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsChannel)
"""

@inline get_apns_channel(aws::AWSConfig=default_aws_config(); args...) = get_apns_channel(aws, args)

@inline get_apns_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/channels/apns", args)

@inline get_apns_channel(args) = get_apns_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_apns_sandbox_channel
    get_apns_sandbox_channel([::AWSConfig], arguments::Dict)
    get_apns_sandbox_channel([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/channels/apns_sandbox", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/channels/apns_sandbox", application-id=)

# GetApnsSandboxChannel Operation

Get an APNS sandbox channel

# Arguments

## `application-id = ::String` -- *Required*





# Returns

`GetApnsSandboxChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApnsSandboxChannel)
"""

@inline get_apns_sandbox_channel(aws::AWSConfig=default_aws_config(); args...) = get_apns_sandbox_channel(aws, args)

@inline get_apns_sandbox_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/channels/apns_sandbox", args)

@inline get_apns_sandbox_channel(args) = get_apns_sandbox_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_application_settings
    get_application_settings([::AWSConfig], arguments::Dict)
    get_application_settings([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/settings", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/settings", application-id=)

# GetApplicationSettings Operation

Used to request the settings for an app.

# Arguments

## `application-id = ::String` -- *Required*





# Returns

`GetApplicationSettingsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetApplicationSettings)
"""

@inline get_application_settings(aws::AWSConfig=default_aws_config(); args...) = get_application_settings(aws, args)

@inline get_application_settings(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/settings", args)

@inline get_application_settings(args) = get_application_settings(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_campaign
    get_campaign([::AWSConfig], arguments::Dict)
    get_campaign([::AWSConfig]; application-id=, campaign-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/campaigns/{campaign-id}", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/campaigns/{campaign-id}", application-id=, campaign-id=)

# GetCampaign Operation

Returns information about a campaign.

# Arguments

## `application-id = ::String` -- *Required*



## `campaign-id = ::String` -- *Required*





# Returns

`GetCampaignResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaign)
"""

@inline get_campaign(aws::AWSConfig=default_aws_config(); args...) = get_campaign(aws, args)

@inline get_campaign(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/campaigns/{campaign-id}", args)

@inline get_campaign(args) = get_campaign(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_campaign_activities
    get_campaign_activities([::AWSConfig], arguments::Dict)
    get_campaign_activities([::AWSConfig]; application-id=, campaign-id=, <keyword arguments>)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/activities", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/activities", application-id=, campaign-id=, <keyword arguments>)

# GetCampaignActivities Operation

Returns information about the activity performed by a campaign.

# Arguments

## `application-id = ::String` -- *Required*



## `campaign-id = ::String` -- *Required*



## `page-size = ::String`



## `token = ::String`





# Returns

`GetCampaignActivitiesResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignActivities)
"""

@inline get_campaign_activities(aws::AWSConfig=default_aws_config(); args...) = get_campaign_activities(aws, args)

@inline get_campaign_activities(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/activities", args)

@inline get_campaign_activities(args) = get_campaign_activities(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_campaign_version
    get_campaign_version([::AWSConfig], arguments::Dict)
    get_campaign_version([::AWSConfig]; application-id=, campaign-id=, version=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}", application-id=, campaign-id=, version=)

# GetCampaignVersion Operation

Returns information about a specific version of a campaign.

# Arguments

## `application-id = ::String` -- *Required*



## `campaign-id = ::String` -- *Required*



## `version = ::String` -- *Required*





# Returns

`GetCampaignVersionResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignVersion)
"""

@inline get_campaign_version(aws::AWSConfig=default_aws_config(); args...) = get_campaign_version(aws, args)

@inline get_campaign_version(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}", args)

@inline get_campaign_version(args) = get_campaign_version(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_campaign_versions
    get_campaign_versions([::AWSConfig], arguments::Dict)
    get_campaign_versions([::AWSConfig]; application-id=, campaign-id=, <keyword arguments>)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/versions", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/versions", application-id=, campaign-id=, <keyword arguments>)

# GetCampaignVersions Operation

Returns information about your campaign versions.

# Arguments

## `application-id = ::String` -- *Required*



## `campaign-id = ::String` -- *Required*



## `page-size = ::String`



## `token = ::String`





# Returns

`GetCampaignVersionsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaignVersions)
"""

@inline get_campaign_versions(aws::AWSConfig=default_aws_config(); args...) = get_campaign_versions(aws, args)

@inline get_campaign_versions(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/versions", args)

@inline get_campaign_versions(args) = get_campaign_versions(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_campaigns
    get_campaigns([::AWSConfig], arguments::Dict)
    get_campaigns([::AWSConfig]; application-id=, <keyword arguments>)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/campaigns", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/campaigns", application-id=, <keyword arguments>)

# GetCampaigns Operation

Returns information about your campaigns.

# Arguments

## `application-id = ::String` -- *Required*



## `page-size = ::String`



## `token = ::String`





# Returns

`GetCampaignsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetCampaigns)
"""

@inline get_campaigns(aws::AWSConfig=default_aws_config(); args...) = get_campaigns(aws, args)

@inline get_campaigns(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/campaigns", args)

@inline get_campaigns(args) = get_campaigns(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_email_channel
    get_email_channel([::AWSConfig], arguments::Dict)
    get_email_channel([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/channels/email", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/channels/email", application-id=)

# GetEmailChannel Operation

Get an email channel

# Arguments

## `application-id = ::String` -- *Required*





# Returns

`GetEmailChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEmailChannel)
"""

@inline get_email_channel(aws::AWSConfig=default_aws_config(); args...) = get_email_channel(aws, args)

@inline get_email_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/channels/email", args)

@inline get_email_channel(args) = get_email_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_endpoint
    get_endpoint([::AWSConfig], arguments::Dict)
    get_endpoint([::AWSConfig]; application-id=, endpoint-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/endpoints/{endpoint-id}", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/endpoints/{endpoint-id}", application-id=, endpoint-id=)

# GetEndpoint Operation

Returns information about an endpoint.

# Arguments

## `application-id = ::String` -- *Required*



## `endpoint-id = ::String` -- *Required*





# Returns

`GetEndpointResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEndpoint)
"""

@inline get_endpoint(aws::AWSConfig=default_aws_config(); args...) = get_endpoint(aws, args)

@inline get_endpoint(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/endpoints/{endpoint-id}", args)

@inline get_endpoint(args) = get_endpoint(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_event_stream
    get_event_stream([::AWSConfig], arguments::Dict)
    get_event_stream([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/eventstream", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/eventstream", application-id=)

# GetEventStream Operation

Returns the event stream for an app.

# Arguments

## `application-id = ::String` -- *Required*
ApplicationId




# Returns

`GetEventStreamResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetEventStream)
"""

@inline get_event_stream(aws::AWSConfig=default_aws_config(); args...) = get_event_stream(aws, args)

@inline get_event_stream(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/eventstream", args)

@inline get_event_stream(args) = get_event_stream(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_gcm_channel
    get_gcm_channel([::AWSConfig], arguments::Dict)
    get_gcm_channel([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/channels/gcm", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/channels/gcm", application-id=)

# GetGcmChannel Operation

Returns information about the GCM channel for an app.

# Arguments

## `application-id = ::String` -- *Required*





# Returns

`GetGcmChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetGcmChannel)
"""

@inline get_gcm_channel(aws::AWSConfig=default_aws_config(); args...) = get_gcm_channel(aws, args)

@inline get_gcm_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/channels/gcm", args)

@inline get_gcm_channel(args) = get_gcm_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_import_job
    get_import_job([::AWSConfig], arguments::Dict)
    get_import_job([::AWSConfig]; application-id=, job-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/jobs/import/{job-id}", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/jobs/import/{job-id}", application-id=, job-id=)

# GetImportJob Operation

Returns information about an import job.

# Arguments

## `application-id = ::String` -- *Required*



## `job-id = ::String` -- *Required*





# Returns

`GetImportJobResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetImportJob)
"""

@inline get_import_job(aws::AWSConfig=default_aws_config(); args...) = get_import_job(aws, args)

@inline get_import_job(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/jobs/import/{job-id}", args)

@inline get_import_job(args) = get_import_job(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_import_jobs
    get_import_jobs([::AWSConfig], arguments::Dict)
    get_import_jobs([::AWSConfig]; application-id=, <keyword arguments>)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/jobs/import", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/jobs/import", application-id=, <keyword arguments>)

# GetImportJobs Operation

Returns information about your import jobs.

# Arguments

## `application-id = ::String` -- *Required*



## `page-size = ::String`



## `token = ::String`





# Returns

`GetImportJobsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetImportJobs)
"""

@inline get_import_jobs(aws::AWSConfig=default_aws_config(); args...) = get_import_jobs(aws, args)

@inline get_import_jobs(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/jobs/import", args)

@inline get_import_jobs(args) = get_import_jobs(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_segment
    get_segment([::AWSConfig], arguments::Dict)
    get_segment([::AWSConfig]; application-id=, segment-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/segments/{segment-id}", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/segments/{segment-id}", application-id=, segment-id=)

# GetSegment Operation

Returns information about a segment.

# Arguments

## `application-id = ::String` -- *Required*



## `segment-id = ::String` -- *Required*





# Returns

`GetSegmentResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegment)
"""

@inline get_segment(aws::AWSConfig=default_aws_config(); args...) = get_segment(aws, args)

@inline get_segment(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/segments/{segment-id}", args)

@inline get_segment(args) = get_segment(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_segment_import_jobs
    get_segment_import_jobs([::AWSConfig], arguments::Dict)
    get_segment_import_jobs([::AWSConfig]; application-id=, segment-id=, <keyword arguments>)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/segments/{segment-id}/jobs/import", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/segments/{segment-id}/jobs/import", application-id=, segment-id=, <keyword arguments>)

# GetSegmentImportJobs Operation

Returns a list of import jobs for a specific segment.

# Arguments

## `application-id = ::String` -- *Required*



## `page-size = ::String`



## `segment-id = ::String` -- *Required*



## `token = ::String`





# Returns

`GetSegmentImportJobsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentImportJobs)
"""

@inline get_segment_import_jobs(aws::AWSConfig=default_aws_config(); args...) = get_segment_import_jobs(aws, args)

@inline get_segment_import_jobs(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/segments/{segment-id}/jobs/import", args)

@inline get_segment_import_jobs(args) = get_segment_import_jobs(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_segment_version
    get_segment_version([::AWSConfig], arguments::Dict)
    get_segment_version([::AWSConfig]; application-id=, segment-id=, version=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}", application-id=, segment-id=, version=)

# GetSegmentVersion Operation

Returns information about a segment version.

# Arguments

## `application-id = ::String` -- *Required*



## `segment-id = ::String` -- *Required*



## `version = ::String` -- *Required*





# Returns

`GetSegmentVersionResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentVersion)
"""

@inline get_segment_version(aws::AWSConfig=default_aws_config(); args...) = get_segment_version(aws, args)

@inline get_segment_version(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}", args)

@inline get_segment_version(args) = get_segment_version(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_segment_versions
    get_segment_versions([::AWSConfig], arguments::Dict)
    get_segment_versions([::AWSConfig]; application-id=, segment-id=, <keyword arguments>)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/segments/{segment-id}/versions", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/segments/{segment-id}/versions", application-id=, segment-id=, <keyword arguments>)

# GetSegmentVersions Operation

Returns information about your segment versions.

# Arguments

## `application-id = ::String` -- *Required*



## `page-size = ::String`



## `segment-id = ::String` -- *Required*



## `token = ::String`





# Returns

`GetSegmentVersionsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegmentVersions)
"""

@inline get_segment_versions(aws::AWSConfig=default_aws_config(); args...) = get_segment_versions(aws, args)

@inline get_segment_versions(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/segments/{segment-id}/versions", args)

@inline get_segment_versions(args) = get_segment_versions(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_segments
    get_segments([::AWSConfig], arguments::Dict)
    get_segments([::AWSConfig]; application-id=, <keyword arguments>)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/segments", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/segments", application-id=, <keyword arguments>)

# GetSegments Operation

Used to get information about your segments.

# Arguments

## `application-id = ::String` -- *Required*



## `page-size = ::String`



## `token = ::String`





# Returns

`GetSegmentsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSegments)
"""

@inline get_segments(aws::AWSConfig=default_aws_config(); args...) = get_segments(aws, args)

@inline get_segments(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/segments", args)

@inline get_segments(args) = get_segments(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.get_sms_channel
    get_sms_channel([::AWSConfig], arguments::Dict)
    get_sms_channel([::AWSConfig]; application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/channels/sms", arguments::Dict)
    pinpoint([::AWSConfig], "GET", "/v1/apps/{application-id}/channels/sms", application-id=)

# GetSmsChannel Operation

Get an SMS channel

# Arguments

## `application-id = ::String` -- *Required*





# Returns

`GetSmsChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/GetSmsChannel)
"""

@inline get_sms_channel(aws::AWSConfig=default_aws_config(); args...) = get_sms_channel(aws, args)

@inline get_sms_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "GET", "/v1/apps/{application-id}/channels/sms", args)

@inline get_sms_channel(args) = get_sms_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.put_event_stream
    put_event_stream([::AWSConfig], arguments::Dict)
    put_event_stream([::AWSConfig]; application-id=, WriteEventStream=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "POST", "/v1/apps/{application-id}/eventstream", arguments::Dict)
    pinpoint([::AWSConfig], "POST", "/v1/apps/{application-id}/eventstream", application-id=, WriteEventStream=)

# PutEventStream Operation

Use to create or update the event stream for an app.

# Arguments

## `application-id = ::String` -- *Required*
ApplicationId


## `WriteEventStream = [ ... ]` -- *Required*
EventStream to write.
```
 WriteEventStream = [
        "DestinationStreamArn" =>  ::String,
        "ExternalId" =>  ::String,
        "RoleArn" =>  ::String
    ]
```



# Returns

`PutEventStreamResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/PutEventStream)
"""

@inline put_event_stream(aws::AWSConfig=default_aws_config(); args...) = put_event_stream(aws, args)

@inline put_event_stream(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "POST", "/v1/apps/{application-id}/eventstream", args)

@inline put_event_stream(args) = put_event_stream(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.send_messages
    send_messages([::AWSConfig], arguments::Dict)
    send_messages([::AWSConfig]; application-id=, MessageRequest=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "POST", "/v1/apps/{application-id}/messages", arguments::Dict)
    pinpoint([::AWSConfig], "POST", "/v1/apps/{application-id}/messages", application-id=, MessageRequest=)

# SendMessages Operation

Send a batch of messages

# Arguments

## `application-id = ::String` -- *Required*



## `MessageRequest = [ ... ]` -- *Required*

```
 MessageRequest = [
        "Addresses" =>  ::Dict{String,String},
        "Context" =>  ::Dict{String,String},
        "MessageConfiguration" =>  [
            "APNSMessage" =>  [
                "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                "Badge" =>  ::Int,
                "Body" =>  ::String,
                "Category" =>  ::String,
                "Data" =>  ::Dict{String,String},
                "MediaUrl" =>  ::String,
                "RawContent" =>  ::String,
                "SilentPush" =>  ::Bool,
                "Sound" =>  ::String,
                "Substitutions" =>  ::Dict{String,String},
                "ThreadId" =>  ::String,
                "Title" =>  ::String,
                "Url" =>  ::String
            ],
            "DefaultMessage" =>  [
                "Body" =>  ::String,
                "Substitutions" =>  ::Dict{String,String}
            ],
            "DefaultPushNotificationMessage" =>  [
                "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                "Body" =>  ::String,
                "Data" =>  ::Dict{String,String},
                "SilentPush" =>  ::Bool,
                "Substitutions" =>  ::Dict{String,String},
                "Title" =>  ::String,
                "Url" =>  ::String
            ],
            "GCMMessage" =>  [
                "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                "Body" =>  ::String,
                "CollapseKey" =>  ::String,
                "Data" =>  ::Dict{String,String},
                "IconReference" =>  ::String,
                "ImageIconUrl" =>  ::String,
                "ImageUrl" =>  ::String,
                "RawContent" =>  ::String,
                "RestrictedPackageName" =>  ::String,
                "SilentPush" =>  ::Bool,
                "SmallImageIconUrl" =>  ::String,
                "Sound" =>  ::String,
                "Substitutions" =>  ::Dict{String,String},
                "Title" =>  ::String,
                "Url" =>  ::String
            ],
            "SMSMessage" =>  [
                "Body" =>  ::String,
                "MessageType" =>  "TRANSACTIONAL" or "PROMOTIONAL",
                "SenderId" =>  ::String,
                "Substitutions" =>  ::Dict{String,String}
            ]
        ]
    ]
```



# Returns

`SendMessagesResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/SendMessages)
"""

@inline send_messages(aws::AWSConfig=default_aws_config(); args...) = send_messages(aws, args)

@inline send_messages(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "POST", "/v1/apps/{application-id}/messages", args)

@inline send_messages(args) = send_messages(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.update_apns_channel
    update_apns_channel([::AWSConfig], arguments::Dict)
    update_apns_channel([::AWSConfig]; APNSChannelRequest=, application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/channels/apns", arguments::Dict)
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/channels/apns", APNSChannelRequest=, application-id=)

# UpdateApnsChannel Operation

Use to update the APNs channel for an app.

# Arguments

## `APNSChannelRequest = [ ... ]` -- *Required*

```
 APNSChannelRequest = [
        "Certificate" =>  ::String,
        "Enabled" =>  ::Bool,
        "PrivateKey" =>  ::String
    ]
```

## `application-id = ::String` -- *Required*





# Returns

`UpdateApnsChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsChannel)
"""

@inline update_apns_channel(aws::AWSConfig=default_aws_config(); args...) = update_apns_channel(aws, args)

@inline update_apns_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "PUT", "/v1/apps/{application-id}/channels/apns", args)

@inline update_apns_channel(args) = update_apns_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.update_apns_sandbox_channel
    update_apns_sandbox_channel([::AWSConfig], arguments::Dict)
    update_apns_sandbox_channel([::AWSConfig]; APNSSandboxChannelRequest=, application-id=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/channels/apns_sandbox", arguments::Dict)
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/channels/apns_sandbox", APNSSandboxChannelRequest=, application-id=)

# UpdateApnsSandboxChannel Operation

Update an APNS sandbox channel

# Arguments

## `APNSSandboxChannelRequest = [ ... ]` -- *Required*

```
 APNSSandboxChannelRequest = [
        "Certificate" =>  ::String,
        "Enabled" =>  ::Bool,
        "PrivateKey" =>  ::String
    ]
```

## `application-id = ::String` -- *Required*





# Returns

`UpdateApnsSandboxChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApnsSandboxChannel)
"""

@inline update_apns_sandbox_channel(aws::AWSConfig=default_aws_config(); args...) = update_apns_sandbox_channel(aws, args)

@inline update_apns_sandbox_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "PUT", "/v1/apps/{application-id}/channels/apns_sandbox", args)

@inline update_apns_sandbox_channel(args) = update_apns_sandbox_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.update_application_settings
    update_application_settings([::AWSConfig], arguments::Dict)
    update_application_settings([::AWSConfig]; application-id=, WriteApplicationSettingsRequest=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/settings", arguments::Dict)
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/settings", application-id=, WriteApplicationSettingsRequest=)

# UpdateApplicationSettings Operation

Used to update the settings for an app.

# Arguments

## `application-id = ::String` -- *Required*



## `WriteApplicationSettingsRequest = [ ... ]` -- *Required*

```
 WriteApplicationSettingsRequest = [
        "Limits" =>  [
            "Daily" =>  ::Int,
            "Total" =>  ::Int
        ],
        "QuietTime" =>  [
            "End" =>  ::String,
            "Start" =>  ::String
        ]
    ]
```



# Returns

`UpdateApplicationSettingsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateApplicationSettings)
"""

@inline update_application_settings(aws::AWSConfig=default_aws_config(); args...) = update_application_settings(aws, args)

@inline update_application_settings(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "PUT", "/v1/apps/{application-id}/settings", args)

@inline update_application_settings(args) = update_application_settings(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.update_campaign
    update_campaign([::AWSConfig], arguments::Dict)
    update_campaign([::AWSConfig]; application-id=, campaign-id=, WriteCampaignRequest=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/campaigns/{campaign-id}", arguments::Dict)
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/campaigns/{campaign-id}", application-id=, campaign-id=, WriteCampaignRequest=)

# UpdateCampaign Operation

Use to update a campaign.

# Arguments

## `application-id = ::String` -- *Required*



## `campaign-id = ::String` -- *Required*



## `WriteCampaignRequest = [ ... ]` -- *Required*

```
 WriteCampaignRequest = [
        "AdditionalTreatments" =>  [[
            "MessageConfiguration" =>  [
                "APNSMessage" =>  [
                    "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                    "Body" =>  ::String,
                    "ImageIconUrl" =>  ::String,
                    "ImageSmallIconUrl" =>  ::String,
                    "ImageUrl" =>  ::String,
                    "JsonBody" =>  ::String,
                    "MediaUrl" =>  ::String,
                    "SilentPush" =>  ::Bool,
                    "Title" =>  ::String,
                    "Url" =>  ::String
                ],
                "DefaultMessage" =>  [
                    "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                    "Body" =>  ::String,
                    "ImageIconUrl" =>  ::String,
                    "ImageSmallIconUrl" =>  ::String,
                    "ImageUrl" =>  ::String,
                    "JsonBody" =>  ::String,
                    "MediaUrl" =>  ::String,
                    "SilentPush" =>  ::Bool,
                    "Title" =>  ::String,
                    "Url" =>  ::String
                ],
                "EmailMessage" =>  [
                    "Body" =>  ::String,
                    "HtmlBody" =>  ::String,
                    "Title" =>  ::String
                ],
                "GCMMessage" =>  [
                    "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                    "Body" =>  ::String,
                    "ImageIconUrl" =>  ::String,
                    "ImageSmallIconUrl" =>  ::String,
                    "ImageUrl" =>  ::String,
                    "JsonBody" =>  ::String,
                    "MediaUrl" =>  ::String,
                    "SilentPush" =>  ::Bool,
                    "Title" =>  ::String,
                    "Url" =>  ::String
                ],
                "SMSMessage" =>  [
                    "Body" =>  ::String,
                    "MessageType" =>  "TRANSACTIONAL" or "PROMOTIONAL",
                    "SenderId" =>  ::String
                ]
            ],
            "Schedule" =>  [
                "EndTime" =>  ::String,
                "Frequency" =>  "ONCE", "HOURLY", "DAILY", "WEEKLY" or "MONTHLY",
                "IsLocalTime" =>  ::Bool,
                "QuietTime" =>  [
                    "End" =>  ::String,
                    "Start" =>  ::String
                ],
                "StartTime" =>  ::String,
                "Timezone" =>  ::String
            ],
            "SizePercent" =>  ::Int,
            "TreatmentDescription" =>  ::String,
            "TreatmentName" =>  ::String
        ], ...],
        "Description" =>  ::String,
        "HoldoutPercent" =>  ::Int,
        "IsPaused" =>  ::Bool,
        "Limits" =>  [
            "Daily" =>  ::Int,
            "Total" =>  ::Int
        ],
        "MessageConfiguration" =>  [
            "APNSMessage" =>  [
                "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                "Body" =>  ::String,
                "ImageIconUrl" =>  ::String,
                "ImageSmallIconUrl" =>  ::String,
                "ImageUrl" =>  ::String,
                "JsonBody" =>  ::String,
                "MediaUrl" =>  ::String,
                "SilentPush" =>  ::Bool,
                "Title" =>  ::String,
                "Url" =>  ::String
            ],
            "DefaultMessage" =>  [
                "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                "Body" =>  ::String,
                "ImageIconUrl" =>  ::String,
                "ImageSmallIconUrl" =>  ::String,
                "ImageUrl" =>  ::String,
                "JsonBody" =>  ::String,
                "MediaUrl" =>  ::String,
                "SilentPush" =>  ::Bool,
                "Title" =>  ::String,
                "Url" =>  ::String
            ],
            "EmailMessage" =>  [
                "Body" =>  ::String,
                "HtmlBody" =>  ::String,
                "Title" =>  ::String
            ],
            "GCMMessage" =>  [
                "Action" =>  "OPEN_APP", "DEEP_LINK" or "URL",
                "Body" =>  ::String,
                "ImageIconUrl" =>  ::String,
                "ImageSmallIconUrl" =>  ::String,
                "ImageUrl" =>  ::String,
                "JsonBody" =>  ::String,
                "MediaUrl" =>  ::String,
                "SilentPush" =>  ::Bool,
                "Title" =>  ::String,
                "Url" =>  ::String
            ],
            "SMSMessage" =>  [
                "Body" =>  ::String,
                "MessageType" =>  "TRANSACTIONAL" or "PROMOTIONAL",
                "SenderId" =>  ::String
            ]
        ],
        "Name" =>  ::String,
        "Schedule" =>  [
            "EndTime" =>  ::String,
            "Frequency" =>  "ONCE", "HOURLY", "DAILY", "WEEKLY" or "MONTHLY",
            "IsLocalTime" =>  ::Bool,
            "QuietTime" =>  [
                "End" =>  ::String,
                "Start" =>  ::String
            ],
            "StartTime" =>  ::String,
            "Timezone" =>  ::String
        ],
        "SegmentId" =>  ::String,
        "SegmentVersion" =>  ::Int,
        "TreatmentDescription" =>  ::String,
        "TreatmentName" =>  ::String
    ]
```



# Returns

`UpdateCampaignResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateCampaign)
"""

@inline update_campaign(aws::AWSConfig=default_aws_config(); args...) = update_campaign(aws, args)

@inline update_campaign(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "PUT", "/v1/apps/{application-id}/campaigns/{campaign-id}", args)

@inline update_campaign(args) = update_campaign(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.update_email_channel
    update_email_channel([::AWSConfig], arguments::Dict)
    update_email_channel([::AWSConfig]; application-id=, EmailChannelRequest=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/channels/email", arguments::Dict)
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/channels/email", application-id=, EmailChannelRequest=)

# UpdateEmailChannel Operation

Update an email channel

# Arguments

## `application-id = ::String` -- *Required*



## `EmailChannelRequest = [ ... ]` -- *Required*

```
 EmailChannelRequest = [
        "Enabled" =>  ::Bool,
        "FromAddress" =>  ::String,
        "Identity" =>  ::String,
        "RoleArn" =>  ::String
    ]
```



# Returns

`UpdateEmailChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEmailChannel)
"""

@inline update_email_channel(aws::AWSConfig=default_aws_config(); args...) = update_email_channel(aws, args)

@inline update_email_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "PUT", "/v1/apps/{application-id}/channels/email", args)

@inline update_email_channel(args) = update_email_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.update_endpoint
    update_endpoint([::AWSConfig], arguments::Dict)
    update_endpoint([::AWSConfig]; application-id=, endpoint-id=, EndpointRequest=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/endpoints/{endpoint-id}", arguments::Dict)
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/endpoints/{endpoint-id}", application-id=, endpoint-id=, EndpointRequest=)

# UpdateEndpoint Operation

Use to update an endpoint.

# Arguments

## `application-id = ::String` -- *Required*



## `endpoint-id = ::String` -- *Required*



## `EndpointRequest = [ ... ]` -- *Required*

```
 EndpointRequest = [
        "Address" =>  ::String,
        "Attributes" =>  ::Dict{String,String},
        "ChannelType" =>  "GCM", "APNS", "APNS_SANDBOX", "ADM", "SMS" or "EMAIL",
        "Demographic" =>  [
            "AppVersion" =>  ::String,
            "Locale" =>  ::String,
            "Make" =>  ::String,
            "Model" =>  ::String,
            "ModelVersion" =>  ::String,
            "Platform" =>  ::String,
            "PlatformVersion" =>  ::String,
            "Timezone" =>  ::String
        ],
        "EffectiveDate" =>  ::String,
        "EndpointStatus" =>  ::String,
        "Location" =>  [
            "City" =>  ::String,
            "Country" =>  ::String,
            "Latitude" =>  double,
            "Longitude" =>  double,
            "PostalCode" =>  ::String,
            "Region" =>  ::String
        ],
        "Metrics" =>  ::Dict{String,String},
        "OptOut" =>  ::String,
        "RequestId" =>  ::String,
        "User" =>  [
            "UserAttributes" =>  ::Dict{String,String},
            "UserId" =>  ::String
        ]
    ]
```



# Returns

`UpdateEndpointResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEndpoint)
"""

@inline update_endpoint(aws::AWSConfig=default_aws_config(); args...) = update_endpoint(aws, args)

@inline update_endpoint(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "PUT", "/v1/apps/{application-id}/endpoints/{endpoint-id}", args)

@inline update_endpoint(args) = update_endpoint(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.update_endpoints_batch
    update_endpoints_batch([::AWSConfig], arguments::Dict)
    update_endpoints_batch([::AWSConfig]; application-id=, EndpointBatchRequest=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/endpoints", arguments::Dict)
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/endpoints", application-id=, EndpointBatchRequest=)

# UpdateEndpointsBatch Operation

Use to update a batch of endpoints.

# Arguments

## `application-id = ::String` -- *Required*



## `EndpointBatchRequest = ["Item" =>  [[ ... ], ...]]` -- *Required*

```
 EndpointBatchRequest = ["Item" =>  [[
            "Address" =>  ::String,
            "Attributes" =>  ::Dict{String,String},
            "ChannelType" =>  "GCM", "APNS", "APNS_SANDBOX", "ADM", "SMS" or "EMAIL",
            "Demographic" =>  [
                "AppVersion" =>  ::String,
                "Locale" =>  ::String,
                "Make" =>  ::String,
                "Model" =>  ::String,
                "ModelVersion" =>  ::String,
                "Platform" =>  ::String,
                "PlatformVersion" =>  ::String,
                "Timezone" =>  ::String
            ],
            "EffectiveDate" =>  ::String,
            "EndpointStatus" =>  ::String,
            "Id" =>  ::String,
            "Location" =>  [
                "City" =>  ::String,
                "Country" =>  ::String,
                "Latitude" =>  double,
                "Longitude" =>  double,
                "PostalCode" =>  ::String,
                "Region" =>  ::String
            ],
            "Metrics" =>  ::Dict{String,String},
            "OptOut" =>  ::String,
            "RequestId" =>  ::String,
            "User" =>  [
                "UserAttributes" =>  ::Dict{String,String},
                "UserId" =>  ::String
            ]
        ], ...]]
```



# Returns

`UpdateEndpointsBatchResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateEndpointsBatch)
"""

@inline update_endpoints_batch(aws::AWSConfig=default_aws_config(); args...) = update_endpoints_batch(aws, args)

@inline update_endpoints_batch(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "PUT", "/v1/apps/{application-id}/endpoints", args)

@inline update_endpoints_batch(args) = update_endpoints_batch(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.update_gcm_channel
    update_gcm_channel([::AWSConfig], arguments::Dict)
    update_gcm_channel([::AWSConfig]; application-id=, GCMChannelRequest=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/channels/gcm", arguments::Dict)
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/channels/gcm", application-id=, GCMChannelRequest=)

# UpdateGcmChannel Operation

Use to update the GCM channel for an app.

# Arguments

## `application-id = ::String` -- *Required*



## `GCMChannelRequest = [ ... ]` -- *Required*

```
 GCMChannelRequest = [
        "ApiKey" =>  ::String,
        "Enabled" =>  ::Bool
    ]
```



# Returns

`UpdateGcmChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateGcmChannel)
"""

@inline update_gcm_channel(aws::AWSConfig=default_aws_config(); args...) = update_gcm_channel(aws, args)

@inline update_gcm_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "PUT", "/v1/apps/{application-id}/channels/gcm", args)

@inline update_gcm_channel(args) = update_gcm_channel(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.update_segment
    update_segment([::AWSConfig], arguments::Dict)
    update_segment([::AWSConfig]; application-id=, segment-id=, WriteSegmentRequest=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/segments/{segment-id}", arguments::Dict)
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/segments/{segment-id}", application-id=, segment-id=, WriteSegmentRequest=)

# UpdateSegment Operation

Use to update a segment.

# Arguments

## `application-id = ::String` -- *Required*



## `segment-id = ::String` -- *Required*



## `WriteSegmentRequest = [ ... ]` -- *Required*

```
 WriteSegmentRequest = [
        "Dimensions" =>  [
            "Attributes" =>  ::Dict{String,String},
            "Behavior" =>  ["Recency" =>  [
                    "Duration" =>  "HR_24", "DAY_7", "DAY_14" or "DAY_30",
                    "RecencyType" =>  "ACTIVE" or "INACTIVE"
                ]],
            "Demographic" =>  [
                "AppVersion" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ],
                "Channel" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ],
                "DeviceType" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ],
                "Make" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ],
                "Model" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ],
                "Platform" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ]
            ],
            "Location" =>  ["Country" =>  [
                    "DimensionType" =>  "INCLUSIVE" or "EXCLUSIVE",
                    "Values" =>  [::String, ...]
                ]],
            "UserAttributes" =>  ::Dict{String,String}
        ],
        "Name" =>  ::String
    ]
```



# Returns

`UpdateSegmentResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateSegment)
"""

@inline update_segment(aws::AWSConfig=default_aws_config(); args...) = update_segment(aws, args)

@inline update_segment(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "PUT", "/v1/apps/{application-id}/segments/{segment-id}", args)

@inline update_segment(args) = update_segment(default_aws_config(), args)


"""
    using AWSSDK.Pinpoint.update_sms_channel
    update_sms_channel([::AWSConfig], arguments::Dict)
    update_sms_channel([::AWSConfig]; application-id=, SMSChannelRequest=)

    using AWSCore.Services.pinpoint
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/channels/sms", arguments::Dict)
    pinpoint([::AWSConfig], "PUT", "/v1/apps/{application-id}/channels/sms", application-id=, SMSChannelRequest=)

# UpdateSmsChannel Operation

Update an SMS channel

# Arguments

## `application-id = ::String` -- *Required*



## `SMSChannelRequest = [ ... ]` -- *Required*

```
 SMSChannelRequest = [
        "Enabled" =>  ::Bool,
        "SenderId" =>  ::String
    ]
```



# Returns

`UpdateSmsChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pinpoint-2016-12-01/UpdateSmsChannel)
"""

@inline update_sms_channel(aws::AWSConfig=default_aws_config(); args...) = update_sms_channel(aws, args)

@inline update_sms_channel(aws::AWSConfig, args) = AWSCore.Services.pinpoint(aws, "PUT", "/v1/apps/{application-id}/channels/sms", args)

@inline update_sms_channel(args) = update_sms_channel(default_aws_config(), args)




end # module Pinpoint


#==============================================================================#
# End of file
#==============================================================================#
