#==============================================================================#
# Health.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/health-2016-08-04.normal.json
#==============================================================================#

__precompile__()

module Health

using AWSCore


"""
    using AWSSDK.Health.describe_affected_entities
    describe_affected_entities([::AWSConfig], arguments::Dict)
    describe_affected_entities([::AWSConfig]; filter=, <keyword arguments>)

    using AWSCore.Services.health
    health([::AWSConfig], "DescribeAffectedEntities", arguments::Dict)
    health([::AWSConfig], "DescribeAffectedEntities", filter=, <keyword arguments>)

# DescribeAffectedEntities Operation

Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this.

At least one event ARN is required. Results are sorted by the `lastUpdatedTime` of the entity, starting with the most recent.

# Arguments

## `filter = [ ... ]` -- *Required*
Values to narrow the results returned. At least one event ARN is required.
```
 filter = [
        "eventArns" => <required> [::String, ...],
        "entityArns" =>  [::String, ...],
        "entityValues" =>  [::String, ...],
        "lastUpdatedTimes" =>  [[
            "from" =>  timestamp,
            "to" =>  timestamp
        ], ...],
        "tags" =>  [::Dict{String,String}, ...],
        "statusCodes" =>  ["IMPAIRED", "UNIMPAIRED" or "UNKNOWN", ...]
    ]
```

## `locale = ::String`
The locale (language) to return information in. English (en) is the default and the only supported value at this time.


## `nextToken = ::String`
If the results of a search are large, only a portion of the results are returned, and a `nextToken` pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.


## `maxResults = ::Int`
The maximum number of items to return in one batch, between 10 and 100, inclusive.




# Returns

`DescribeAffectedEntitiesResponse`

# Exceptions

`InvalidPaginationToken` or `UnsupportedLocale`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedEntities)
"""
@inline describe_affected_entities(aws::AWSConfig=default_aws_config(); args...) = describe_affected_entities(aws, args)

@inline describe_affected_entities(aws::AWSConfig, args) = AWSCore.Services.health(aws, "DescribeAffectedEntities", args)

@inline describe_affected_entities(args) = describe_affected_entities(default_aws_config(), args)


"""
    using AWSSDK.Health.describe_entity_aggregates
    describe_entity_aggregates([::AWSConfig], arguments::Dict)
    describe_entity_aggregates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.health
    health([::AWSConfig], "DescribeEntityAggregates", arguments::Dict)
    health([::AWSConfig], "DescribeEntityAggregates", <keyword arguments>)

# DescribeEntityAggregates Operation

Returns the number of entities that are affected by each of the specified events. If no events are specified, the counts of all affected entities are returned.

# Arguments

## `eventArns = [::String, ...]`
A list of event ARNs (unique identifiers). For example: `"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331", "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"`




# Returns

`DescribeEntityAggregatesResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEntityAggregates)
"""
@inline describe_entity_aggregates(aws::AWSConfig=default_aws_config(); args...) = describe_entity_aggregates(aws, args)

@inline describe_entity_aggregates(aws::AWSConfig, args) = AWSCore.Services.health(aws, "DescribeEntityAggregates", args)

@inline describe_entity_aggregates(args) = describe_entity_aggregates(default_aws_config(), args)


"""
    using AWSSDK.Health.describe_event_aggregates
    describe_event_aggregates([::AWSConfig], arguments::Dict)
    describe_event_aggregates([::AWSConfig]; aggregateField=, <keyword arguments>)

    using AWSCore.Services.health
    health([::AWSConfig], "DescribeEventAggregates", arguments::Dict)
    health([::AWSConfig], "DescribeEventAggregates", aggregateField=, <keyword arguments>)

# DescribeEventAggregates Operation

Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.

# Arguments

## `filter = [ ... ]`
Values to narrow the results returned.
```
 filter = [
        "eventArns" =>  [::String, ...],
        "eventTypeCodes" =>  [::String, ...],
        "services" =>  [::String, ...],
        "regions" =>  [::String, ...],
        "availabilityZones" =>  [::String, ...],
        "startTimes" =>  [[
            "from" =>  timestamp,
            "to" =>  timestamp
        ], ...],
        "endTimes" =>  [[
            "from" =>  timestamp,
            "to" =>  timestamp
        ], ...],
        "lastUpdatedTimes" =>  [[
            "from" =>  timestamp,
            "to" =>  timestamp
        ], ...],
        "entityArns" =>  [::String, ...],
        "entityValues" =>  [::String, ...],
        "eventTypeCategories" =>  ["issue", "accountNotification" or "scheduledChange", ...],
        "tags" =>  [::Dict{String,String}, ...],
        "eventStatusCodes" =>  ["open", "closed" or "upcoming", ...]
    ]
```

## `aggregateField = "eventTypeCategory"` -- *Required*
The only currently supported value is `eventTypeCategory`.


## `maxResults = ::Int`
The maximum number of items to return in one batch, between 10 and 100, inclusive.


## `nextToken = ::String`
If the results of a search are large, only a portion of the results are returned, and a `nextToken` pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.




# Returns

`DescribeEventAggregatesResponse`

# Exceptions

`InvalidPaginationToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventAggregates)
"""
@inline describe_event_aggregates(aws::AWSConfig=default_aws_config(); args...) = describe_event_aggregates(aws, args)

@inline describe_event_aggregates(aws::AWSConfig, args) = AWSCore.Services.health(aws, "DescribeEventAggregates", args)

@inline describe_event_aggregates(args) = describe_event_aggregates(default_aws_config(), args)


"""
    using AWSSDK.Health.describe_event_details
    describe_event_details([::AWSConfig], arguments::Dict)
    describe_event_details([::AWSConfig]; eventArns=, <keyword arguments>)

    using AWSCore.Services.health
    health([::AWSConfig], "DescribeEventDetails", arguments::Dict)
    health([::AWSConfig], "DescribeEventDetails", eventArns=, <keyword arguments>)

# DescribeEventDetails Operation

Returns detailed information about one or more specified events. Information includes standard event data (region, service, etc., as returned by [DescribeEvents](@ref)), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included; to retrieve those, use the [DescribeAffectedEntities](@ref) operation.

If a specified event cannot be retrieved, an error message is returned for that event.

# Arguments

## `eventArns = [::String, ...]` -- *Required*
A list of event ARNs (unique identifiers). For example: `"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331", "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"`


## `locale = ::String`
The locale (language) to return information in. English (en) is the default and the only supported value at this time.




# Returns

`DescribeEventDetailsResponse`

# Exceptions

`UnsupportedLocale`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventDetails)
"""
@inline describe_event_details(aws::AWSConfig=default_aws_config(); args...) = describe_event_details(aws, args)

@inline describe_event_details(aws::AWSConfig, args) = AWSCore.Services.health(aws, "DescribeEventDetails", args)

@inline describe_event_details(args) = describe_event_details(default_aws_config(), args)


"""
    using AWSSDK.Health.describe_event_types
    describe_event_types([::AWSConfig], arguments::Dict)
    describe_event_types([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.health
    health([::AWSConfig], "DescribeEventTypes", arguments::Dict)
    health([::AWSConfig], "DescribeEventTypes", <keyword arguments>)

# DescribeEventTypes Operation

Returns the event types that meet the specified filter criteria. If no filter criteria are specified, all event types are returned, in no particular order.

# Arguments

## `filter = [ ... ]`
Values to narrow the results returned.
```
 filter = [
        "eventTypeCodes" =>  [::String, ...],
        "services" =>  [::String, ...],
        "eventTypeCategories" =>  ["issue", "accountNotification" or "scheduledChange", ...]
    ]
```

## `locale = ::String`
The locale (language) to return information in. English (en) is the default and the only supported value at this time.


## `nextToken = ::String`
If the results of a search are large, only a portion of the results are returned, and a `nextToken` pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.


## `maxResults = ::Int`
The maximum number of items to return in one batch, between 10 and 100, inclusive.




# Returns

`DescribeEventTypesResponse`

# Exceptions

`InvalidPaginationToken` or `UnsupportedLocale`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventTypes)
"""
@inline describe_event_types(aws::AWSConfig=default_aws_config(); args...) = describe_event_types(aws, args)

@inline describe_event_types(aws::AWSConfig, args) = AWSCore.Services.health(aws, "DescribeEventTypes", args)

@inline describe_event_types(args) = describe_event_types(default_aws_config(), args)


"""
    using AWSSDK.Health.describe_events
    describe_events([::AWSConfig], arguments::Dict)
    describe_events([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.health
    health([::AWSConfig], "DescribeEvents", arguments::Dict)
    health([::AWSConfig], "DescribeEvents", <keyword arguments>)

# DescribeEvents Operation

Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the [DescribeEventDetails](@ref) and [DescribeAffectedEntities](@ref) operations.

If no filter criteria are specified, all events are returned. Results are sorted by `lastModifiedTime`, starting with the most recent.

# Arguments

## `filter = [ ... ]`
Values to narrow the results returned.
```
 filter = [
        "eventArns" =>  [::String, ...],
        "eventTypeCodes" =>  [::String, ...],
        "services" =>  [::String, ...],
        "regions" =>  [::String, ...],
        "availabilityZones" =>  [::String, ...],
        "startTimes" =>  [[
            "from" =>  timestamp,
            "to" =>  timestamp
        ], ...],
        "endTimes" =>  [[
            "from" =>  timestamp,
            "to" =>  timestamp
        ], ...],
        "lastUpdatedTimes" =>  [[
            "from" =>  timestamp,
            "to" =>  timestamp
        ], ...],
        "entityArns" =>  [::String, ...],
        "entityValues" =>  [::String, ...],
        "eventTypeCategories" =>  ["issue", "accountNotification" or "scheduledChange", ...],
        "tags" =>  [::Dict{String,String}, ...],
        "eventStatusCodes" =>  ["open", "closed" or "upcoming", ...]
    ]
```

## `nextToken = ::String`
If the results of a search are large, only a portion of the results are returned, and a `nextToken` pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.


## `maxResults = ::Int`
The maximum number of items to return in one batch, between 10 and 100, inclusive.


## `locale = ::String`
The locale (language) to return information in. English (en) is the default and the only supported value at this time.




# Returns

`DescribeEventsResponse`

# Exceptions

`InvalidPaginationToken` or `UnsupportedLocale`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEvents)
"""
@inline describe_events(aws::AWSConfig=default_aws_config(); args...) = describe_events(aws, args)

@inline describe_events(aws::AWSConfig, args) = AWSCore.Services.health(aws, "DescribeEvents", args)

@inline describe_events(args) = describe_events(default_aws_config(), args)




end # module Health


#==============================================================================#
# End of file
#==============================================================================#
