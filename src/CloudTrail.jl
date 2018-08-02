#==============================================================================#
# CloudTrail.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/cloudtrail-2013-11-01.normal.json
#==============================================================================#

__precompile__()

module CloudTrail

using AWSCore


"""
    using AWSSDK.CloudTrail.add_tags
    add_tags([::AWSConfig], arguments::Dict)
    add_tags([::AWSConfig]; ResourceId=, <keyword arguments>)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "AddTags", arguments::Dict)
    cloudtrail([::AWSConfig], "AddTags", ResourceId=, <keyword arguments>)

# AddTags Operation

Adds one or more tags to a trail, up to a limit of 50. Tags must be unique per trail. Overwrites an existing tag's value when a new value is specified for an existing tag key. If you specify a key without a value, the tag will be created with the specified key and a value of null. You can tag a trail that applies to all regions only from the region in which the trail was created (that is, from its home region).

# Arguments

## `ResourceId = ::String` -- *Required*
Specifies the ARN of the trail to which one or more tags will be added. The format of a trail ARN is:

`arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`


## `TagsList = [[ ... ], ...]`
Contains a list of CloudTrail tags, up to a limit of 50
```
 TagsList = [[
        "Key" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`AddTagsResponse`

# Exceptions

`ResourceNotFoundException`, `CloudTrailARNInvalidException`, `ResourceTypeNotSupportedException`, `TagsLimitExceededException`, `InvalidTrailNameException`, `InvalidTagParameterException`, `UnsupportedOperationException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AddTags)
"""
@inline add_tags(aws::AWSConfig=default_aws_config(); args...) = add_tags(aws, args)

@inline add_tags(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "AddTags", args)

@inline add_tags(args) = add_tags(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.create_trail
    create_trail([::AWSConfig], arguments::Dict)
    create_trail([::AWSConfig]; Name=, S3BucketName=, <keyword arguments>)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "CreateTrail", arguments::Dict)
    cloudtrail([::AWSConfig], "CreateTrail", Name=, S3BucketName=, <keyword arguments>)

# CreateTrail Operation

Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket. A maximum of five trails can exist in a region, irrespective of the region in which they were created.

# Arguments

## `Name = ::String` -- *Required*
Specifies the name of the trail. The name must meet the following requirements:

*   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)

*   Start with a letter or number, and end with a letter or number

*   Be between 3 and 128 characters

*   Have no adjacent periods, underscores or dashes. Names like `my-_namespace` and `my--namespace` are invalid.

*   Not be in IP address format (for example, 192.168.5.4)


## `S3BucketName = ::String` -- *Required*
Specifies the name of the Amazon S3 bucket designated for publishing log files. See [Amazon S3 Bucket Naming Requirements](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html).


## `S3KeyPrefix = ::String`
Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see [Finding Your CloudTrail Log Files](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html). The maximum length is 200 characters.


## `SnsTopicName = ::String`
Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.


## `IncludeGlobalServiceEvents = ::Bool`
Specifies whether the trail is publishing events from global services such as IAM to the log files.


## `IsMultiRegionTrail = ::Bool`
Specifies whether the trail is created in the current region or in all regions. The default is false.


## `EnableLogFileValidation = ::Bool`
Specifies whether log file integrity validation is enabled. The default is false.

**Note**
> When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.


## `CloudWatchLogsLogGroupArn = ::String`
Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.


## `CloudWatchLogsRoleArn = ::String`
Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.


## `KmsKeyId = ::String`
Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.

Examples:

*   alias/MyAliasName

*   arn:aws:kms:us-east-1:123456789012:alias/MyAliasName

*   arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012

*   12345678-1234-1234-1234-123456789012




# Returns

`CreateTrailResponse`

# Exceptions

`MaximumNumberOfTrailsExceededException`, `TrailAlreadyExistsException`, `S3BucketDoesNotExistException`, `InsufficientS3BucketPolicyException`, `InsufficientSnsTopicPolicyException`, `InsufficientEncryptionPolicyException`, `InvalidS3BucketNameException`, `InvalidS3PrefixException`, `InvalidSnsTopicNameException`, `InvalidKmsKeyIdException`, `InvalidTrailNameException`, `TrailNotProvidedException`, `InvalidParameterCombinationException`, `KmsKeyNotFoundException`, `KmsKeyDisabledException`, `KmsException`, `InvalidCloudWatchLogsLogGroupArnException`, `InvalidCloudWatchLogsRoleArnException`, `CloudWatchLogsDeliveryUnavailableException`, `UnsupportedOperationException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateTrail)
"""
@inline create_trail(aws::AWSConfig=default_aws_config(); args...) = create_trail(aws, args)

@inline create_trail(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "CreateTrail", args)

@inline create_trail(args) = create_trail(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.delete_trail
    delete_trail([::AWSConfig], arguments::Dict)
    delete_trail([::AWSConfig]; Name=)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "DeleteTrail", arguments::Dict)
    cloudtrail([::AWSConfig], "DeleteTrail", Name=)

# DeleteTrail Operation

Deletes a trail. This operation must be called from the region in which the trail was created. `DeleteTrail` cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.

# Arguments

## `Name = ::String` -- *Required*
Specifies the name or the CloudTrail ARN of the trail to be deleted. The format of a trail ARN is: `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`




# Returns

`DeleteTrailResponse`

# Exceptions

`TrailNotFoundException`, `InvalidTrailNameException` or `InvalidHomeRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteTrail)
"""
@inline delete_trail(aws::AWSConfig=default_aws_config(); args...) = delete_trail(aws, args)

@inline delete_trail(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "DeleteTrail", args)

@inline delete_trail(args) = delete_trail(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.describe_trails
    describe_trails([::AWSConfig], arguments::Dict)
    describe_trails([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "DescribeTrails", arguments::Dict)
    cloudtrail([::AWSConfig], "DescribeTrails", <keyword arguments>)

# DescribeTrails Operation

Retrieves settings for the trail associated with the current region for your account.

# Arguments

## `trailNameList = [::String, ...]`
Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The format of a trail ARN is:

`arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`

If an empty list is specified, information for the trail in the current region is returned.

*   If an empty list is specified and `IncludeShadowTrails` is false, then information for all trails in the current region is returned.

*   If an empty list is specified and IncludeShadowTrails is null or true, then information for all trails in the current region and any associated shadow trails in other regions is returned.

**Note**
> If one or more trail names are specified, information is returned only if the names match the names of trails belonging only to the current region. To return information about a trail in another region, you must specify its trail ARN.


## `includeShadowTrails = ::Bool`
Specifies whether to include shadow trails in the response. A shadow trail is the replication in a region of a trail that was created in a different region. The default is true.




# Returns

`DescribeTrailsResponse`

# Exceptions

`UnsupportedOperationException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DescribeTrails)
"""
@inline describe_trails(aws::AWSConfig=default_aws_config(); args...) = describe_trails(aws, args)

@inline describe_trails(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "DescribeTrails", args)

@inline describe_trails(args) = describe_trails(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.get_event_selectors
    get_event_selectors([::AWSConfig], arguments::Dict)
    get_event_selectors([::AWSConfig]; TrailName=)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "GetEventSelectors", arguments::Dict)
    cloudtrail([::AWSConfig], "GetEventSelectors", TrailName=)

# GetEventSelectors Operation

Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:

*   The S3 objects that you are logging for data events.

*   If your event selector includes management events.

*   If your event selector includes read-only events, write-only events, or all.

For more information, see [Logging Data and Management Events for Trails](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html) in the *AWS CloudTrail User Guide*.

# Arguments

## `TrailName = ::String` -- *Required*
Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:

*   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)

*   Start with a letter or number, and end with a letter or number

*   Be between 3 and 128 characters

*   Have no adjacent periods, underscores or dashes. Names like `my-_namespace` and `my--namespace` are invalid.

*   Not be in IP address format (for example, 192.168.5.4)

If you specify a trail ARN, it must be in the format:

`arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`




# Returns

`GetEventSelectorsResponse`

# Exceptions

`TrailNotFoundException`, `InvalidTrailNameException`, `UnsupportedOperationException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventSelectors)
"""
@inline get_event_selectors(aws::AWSConfig=default_aws_config(); args...) = get_event_selectors(aws, args)

@inline get_event_selectors(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "GetEventSelectors", args)

@inline get_event_selectors(args) = get_event_selectors(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.get_trail_status
    get_trail_status([::AWSConfig], arguments::Dict)
    get_trail_status([::AWSConfig]; Name=)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "GetTrailStatus", arguments::Dict)
    cloudtrail([::AWSConfig], "GetTrailStatus", Name=)

# GetTrailStatus Operation

Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.

# Arguments

## `Name = ::String` -- *Required*
Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a shadow trail (a replication of the trail in another region), you must specify its ARN. The format of a trail ARN is:

`arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`




# Returns

`GetTrailStatusResponse`

# Exceptions

`TrailNotFoundException` or `InvalidTrailNameException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrailStatus)
"""
@inline get_trail_status(aws::AWSConfig=default_aws_config(); args...) = get_trail_status(aws, args)

@inline get_trail_status(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "GetTrailStatus", args)

@inline get_trail_status(args) = get_trail_status(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.list_public_keys
    list_public_keys([::AWSConfig], arguments::Dict)
    list_public_keys([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "ListPublicKeys", arguments::Dict)
    cloudtrail([::AWSConfig], "ListPublicKeys", <keyword arguments>)

# ListPublicKeys Operation

Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.

**Note**
> CloudTrail uses different private/public key pairs per region. Each digest file is signed with a private key unique to its region. Therefore, when you validate a digest file from a particular region, you must look in the same region for its corresponding public key.

# Arguments

## `StartTime = timestamp`
Optionally specifies, in UTC, the start of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used, and the current public key is returned.


## `EndTime = timestamp`
Optionally specifies, in UTC, the end of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used.


## `NextToken = ::String`
Reserved for future use.




# Returns

`ListPublicKeysResponse`

# Exceptions

`InvalidTimeRangeException`, `UnsupportedOperationException`, `OperationNotPermittedException` or `InvalidTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListPublicKeys)
"""
@inline list_public_keys(aws::AWSConfig=default_aws_config(); args...) = list_public_keys(aws, args)

@inline list_public_keys(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "ListPublicKeys", args)

@inline list_public_keys(args) = list_public_keys(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.list_tags
    list_tags([::AWSConfig], arguments::Dict)
    list_tags([::AWSConfig]; ResourceIdList=, <keyword arguments>)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "ListTags", arguments::Dict)
    cloudtrail([::AWSConfig], "ListTags", ResourceIdList=, <keyword arguments>)

# ListTags Operation

Lists the tags for the trail in the current region.

# Arguments

## `ResourceIdList = [::String, ...]` -- *Required*
Specifies a list of trail ARNs whose tags will be listed. The list has a limit of 20 ARNs. The format of a trail ARN is:

`arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`


## `NextToken = ::String`
Reserved for future use.




# Returns

`ListTagsResponse`

# Exceptions

`ResourceNotFoundException`, `CloudTrailARNInvalidException`, `ResourceTypeNotSupportedException`, `InvalidTrailNameException`, `UnsupportedOperationException`, `OperationNotPermittedException` or `InvalidTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTags)
"""
@inline list_tags(aws::AWSConfig=default_aws_config(); args...) = list_tags(aws, args)

@inline list_tags(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "ListTags", args)

@inline list_tags(args) = list_tags(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.lookup_events
    lookup_events([::AWSConfig], arguments::Dict)
    lookup_events([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "LookupEvents", arguments::Dict)
    cloudtrail([::AWSConfig], "LookupEvents", <keyword arguments>)

# LookupEvents Operation

Looks up API activity events captured by CloudTrail that create, update, or delete resources in your account. Events for a region can be looked up for the times in which you had CloudTrail turned on in that region during the last seven days. Lookup supports the following attributes:

*   Event ID

*   Event name

*   Event source

*   Resource name

*   Resource type

*   User name

All attributes are optional. The default number of results returned is 10, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.

**Important**
> The rate of lookup requests is limited to one per second per account. If this limit is exceeded, a throttling error occurs.

**Important**
> Events that occurred during the selected time range will not be available for lookup if CloudTrail logging was not enabled when the events occurred.

# Arguments

## `LookupAttributes = [[ ... ], ...]`
Contains a list of lookup attributes. Currently the list can contain only one item.
```
 LookupAttributes = [[
        "AttributeKey" => <required> "EventId", "EventName", "Username", "ResourceType", "ResourceName" or "EventSource",
        "AttributeValue" => <required> ::String
    ], ...]
```

## `StartTime = timestamp`
Specifies that only events that occur after or at the specified time are returned. If the specified start time is after the specified end time, an error is returned.


## `EndTime = timestamp`
Specifies that only events that occur before or at the specified time are returned. If the specified end time is before the specified start time, an error is returned.


## `MaxResults = ::Int`
The number of events to return. Possible values are 1 through 50. The default is 10.


## `NextToken = ::String`
The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.




# Returns

`LookupEventsResponse`

# Exceptions

`InvalidLookupAttributesException`, `InvalidTimeRangeException`, `InvalidMaxResultsException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/LookupEvents)
"""
@inline lookup_events(aws::AWSConfig=default_aws_config(); args...) = lookup_events(aws, args)

@inline lookup_events(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "LookupEvents", args)

@inline lookup_events(args) = lookup_events(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.put_event_selectors
    put_event_selectors([::AWSConfig], arguments::Dict)
    put_event_selectors([::AWSConfig]; TrailName=, EventSelectors=)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "PutEventSelectors", arguments::Dict)
    cloudtrail([::AWSConfig], "PutEventSelectors", TrailName=, EventSelectors=)

# PutEventSelectors Operation

Configures an event selector for your trail. Use event selectors to specify whether you want your trail to log management and/or data events. When an event occurs in your account, CloudTrail evaluates the event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.

Example

1.  You create an event selector for a trail and specify that you want write-only events.

2.  The EC2 `GetConsoleOutput` and `RunInstances` API operations occur in your account.

3.  CloudTrail evaluates whether the events match your event selectors.

4.  The `RunInstances` is a write-only event and it matches your event selector. The trail logs the event.

5.  The `GetConsoleOutput` is a read-only event but it doesn't match your event selector. The trail doesn't log the event.

The `PutEventSelectors` operation must be called from the region in which the trail was created; otherwise, an `InvalidHomeRegionException` is thrown.

You can configure up to five event selectors for each trail. For more information, see [Logging Data and Management Events for Trails](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html) in the *AWS CloudTrail User Guide*.

# Arguments

## `TrailName = ::String` -- *Required*
Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:

*   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)

*   Start with a letter or number, and end with a letter or number

*   Be between 3 and 128 characters

*   Have no adjacent periods, underscores or dashes. Names like `my-_namespace` and `my--namespace` are invalid.

*   Not be in IP address format (for example, 192.168.5.4)

If you specify a trail ARN, it must be in the format:

`arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`


## `EventSelectors = [[ ... ], ...]` -- *Required*
Specifies the settings for your event selectors. You can configure up to five event selectors for a trail.
```
 EventSelectors = [[
        "ReadWriteType" =>  "ReadOnly", "WriteOnly" or "All",
        "IncludeManagementEvents" =>  ::Bool,
        "DataResources" =>  [[
            "Type" =>  ::String,
            "Values" =>  [::String, ...]
        ], ...]
    ], ...]
```



# Returns

`PutEventSelectorsResponse`

# Exceptions

`TrailNotFoundException`, `InvalidTrailNameException`, `InvalidHomeRegionException`, `InvalidEventSelectorsException`, `UnsupportedOperationException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutEventSelectors)
"""
@inline put_event_selectors(aws::AWSConfig=default_aws_config(); args...) = put_event_selectors(aws, args)

@inline put_event_selectors(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "PutEventSelectors", args)

@inline put_event_selectors(args) = put_event_selectors(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.remove_tags
    remove_tags([::AWSConfig], arguments::Dict)
    remove_tags([::AWSConfig]; ResourceId=, <keyword arguments>)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "RemoveTags", arguments::Dict)
    cloudtrail([::AWSConfig], "RemoveTags", ResourceId=, <keyword arguments>)

# RemoveTags Operation

Removes the specified tags from a trail.

# Arguments

## `ResourceId = ::String` -- *Required*
Specifies the ARN of the trail from which tags should be removed. The format of a trail ARN is:

`arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`


## `TagsList = [[ ... ], ...]`
Specifies a list of tags to be removed.
```
 TagsList = [[
        "Key" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`RemoveTagsResponse`

# Exceptions

`ResourceNotFoundException`, `CloudTrailARNInvalidException`, `ResourceTypeNotSupportedException`, `InvalidTrailNameException`, `InvalidTagParameterException`, `UnsupportedOperationException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RemoveTags)
"""
@inline remove_tags(aws::AWSConfig=default_aws_config(); args...) = remove_tags(aws, args)

@inline remove_tags(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "RemoveTags", args)

@inline remove_tags(args) = remove_tags(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.start_logging
    start_logging([::AWSConfig], arguments::Dict)
    start_logging([::AWSConfig]; Name=)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "StartLogging", arguments::Dict)
    cloudtrail([::AWSConfig], "StartLogging", Name=)

# StartLogging Operation

Starts the recording of AWS API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.

# Arguments

## `Name = ::String` -- *Required*
Specifies the name or the CloudTrail ARN of the trail for which CloudTrail logs AWS API calls. The format of a trail ARN is:

`arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`




# Returns

`StartLoggingResponse`

# Exceptions

`TrailNotFoundException`, `InvalidTrailNameException` or `InvalidHomeRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartLogging)
"""
@inline start_logging(aws::AWSConfig=default_aws_config(); args...) = start_logging(aws, args)

@inline start_logging(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "StartLogging", args)

@inline start_logging(args) = start_logging(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.stop_logging
    stop_logging([::AWSConfig], arguments::Dict)
    stop_logging([::AWSConfig]; Name=)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "StopLogging", arguments::Dict)
    cloudtrail([::AWSConfig], "StopLogging", Name=)

# StopLogging Operation

Suspends the recording of AWS API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an `InvalidHomeRegionException` will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.

# Arguments

## `Name = ::String` -- *Required*
Specifies the name or the CloudTrail ARN of the trail for which CloudTrail will stop logging AWS API calls. The format of a trail ARN is:

`arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`




# Returns

`StopLoggingResponse`

# Exceptions

`TrailNotFoundException`, `InvalidTrailNameException` or `InvalidHomeRegionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopLogging)
"""
@inline stop_logging(aws::AWSConfig=default_aws_config(); args...) = stop_logging(aws, args)

@inline stop_logging(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "StopLogging", args)

@inline stop_logging(args) = stop_logging(default_aws_config(), args)


"""
    using AWSSDK.CloudTrail.update_trail
    update_trail([::AWSConfig], arguments::Dict)
    update_trail([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.cloudtrail
    cloudtrail([::AWSConfig], "UpdateTrail", arguments::Dict)
    cloudtrail([::AWSConfig], "UpdateTrail", Name=, <keyword arguments>)

# UpdateTrail Operation

Updates the settings that specify delivery of log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. `UpdateTrail` must be called from the region in which the trail was created; otherwise, an `InvalidHomeRegionException` is thrown.

# Arguments

## `Name = ::String` -- *Required*
Specifies the name of the trail or trail ARN. If `Name` is a trail name, the string must meet the following requirements:

*   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)

*   Start with a letter or number, and end with a letter or number

*   Be between 3 and 128 characters

*   Have no adjacent periods, underscores or dashes. Names like `my-_namespace` and `my--namespace` are invalid.

*   Not be in IP address format (for example, 192.168.5.4)

If `Name` is a trail ARN, it must be in the format:

`arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`


## `S3BucketName = ::String`
Specifies the name of the Amazon S3 bucket designated for publishing log files. See [Amazon S3 Bucket Naming Requirements](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html).


## `S3KeyPrefix = ::String`
Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see [Finding Your CloudTrail Log Files](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html). The maximum length is 200 characters.


## `SnsTopicName = ::String`
Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.


## `IncludeGlobalServiceEvents = ::Bool`
Specifies whether the trail is publishing events from global services such as IAM to the log files.


## `IsMultiRegionTrail = ::Bool`
Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true, shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region where it was created, and its shadow trails in other regions will be deleted.


## `EnableLogFileValidation = ::Bool`
Specifies whether log file validation is enabled. The default is false.

**Note**
> When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.


## `CloudWatchLogsLogGroupArn = ::String`
Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.


## `CloudWatchLogsRoleArn = ::String`
Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.


## `KmsKeyId = ::String`
Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.

Examples:

*   alias/MyAliasName

*   arn:aws:kms:us-east-1:123456789012:alias/MyAliasName

*   arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012

*   12345678-1234-1234-1234-123456789012




# Returns

`UpdateTrailResponse`

# Exceptions

`S3BucketDoesNotExistException`, `InsufficientS3BucketPolicyException`, `InsufficientSnsTopicPolicyException`, `InsufficientEncryptionPolicyException`, `TrailNotFoundException`, `InvalidS3BucketNameException`, `InvalidS3PrefixException`, `InvalidSnsTopicNameException`, `InvalidKmsKeyIdException`, `InvalidTrailNameException`, `TrailNotProvidedException`, `InvalidParameterCombinationException`, `InvalidHomeRegionException`, `KmsKeyNotFoundException`, `KmsKeyDisabledException`, `KmsException`, `InvalidCloudWatchLogsLogGroupArnException`, `InvalidCloudWatchLogsRoleArnException`, `CloudWatchLogsDeliveryUnavailableException`, `UnsupportedOperationException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateTrail)
"""
@inline update_trail(aws::AWSConfig=default_aws_config(); args...) = update_trail(aws, args)

@inline update_trail(aws::AWSConfig, args) = AWSCore.Services.cloudtrail(aws, "UpdateTrail", args)

@inline update_trail(args) = update_trail(default_aws_config(), args)




end # module CloudTrail


#==============================================================================#
# End of file
#==============================================================================#
