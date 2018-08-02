#==============================================================================#
# PI.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/pi-2018-02-27.normal.json
#==============================================================================#

__precompile__()

module PI

using AWSCore


"""
    using AWSSDK.PI.describe_dimension_keys
    describe_dimension_keys([::AWSConfig], arguments::Dict)
    describe_dimension_keys([::AWSConfig]; ServiceType=, Identifier=, StartTime=, EndTime=, Metric=, GroupBy=, <keyword arguments>)

    using AWSCore.Services.pi
    pi([::AWSConfig], "DescribeDimensionKeys", arguments::Dict)
    pi([::AWSConfig], "DescribeDimensionKeys", ServiceType=, Identifier=, StartTime=, EndTime=, Metric=, GroupBy=, <keyword arguments>)

# DescribeDimensionKeys Operation

For a specific time period, retrieve the top `N` dimension keys for a metric.

# Arguments

## `ServiceType = "RDS"` -- *Required*
The AWS service for which Performance Insights will return metrics. The only valid value for *ServiceType* is: `RDS`


## `Identifier = ::String` -- *Required*
An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source.

To use an Amazon RDS instance as a data source, you specify its `DbiResourceId` value - for example: `db-FAIHNTYBKTGAUSUZQYPDS2GW4A`


## `StartTime = timestamp` -- *Required*
The date and time specifying the beginning of the requested time series data. You can't specify a `StartTime` that's earlier than 7 days ago. The value specified is *inclusive* - data points equal to or greater than `StartTime` will be returned.

The value for `StartTime` must be earlier than the value for `EndTime`.


## `EndTime = timestamp` -- *Required*
The date and time specifying the end of the requested time series data. The value specified is *exclusive* - data points less than (but not equal to) `EndTime` will be returned.

The value for `EndTime` must be later than the value for `StartTime`.


## `Metric = ::String` -- *Required*
The name of a Performance Insights metric to be measured.

Valid values for `Metric` are:

*   `db.load.avg` - a scaled representation of the number of active sessions for the database engine.

*   `db.sampledload.avg` - the raw number of active sessions for the database engine.


## `PeriodInSeconds = ::Int`
The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400 seconds). Valid values are:

*   `1` (one second)

*   `60` (one minute)

*   `300` (five minutes)

*   `3600` (one hour)

*   `86400` (twenty-four hours)

If you don't specify `PeriodInSeconds`, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data points in the response.


## `GroupBy = [ ... ]` -- *Required*
A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights will return all of the dimensions within that group, unless you provide the names of specific dimensions within that group. You can also request that Performance Insights return a limited number of values for a dimension.
```
 GroupBy = [
        "Group" => <required> ::String,
        "Dimensions" =>  [::String, ...],
        "Limit" =>  ::Int
    ]
```

## `PartitionBy = [ ... ]`
For each dimension specified in `GroupBy`, specify a secondary dimension to further subdivide the partition keys in the response.
```
 PartitionBy = [
        "Group" => <required> ::String,
        "Dimensions" =>  [::String, ...],
        "Limit" =>  ::Int
    ]
```

## `Filter = ::Dict{String,String}`
One or more filters to apply in the request. Restrictions:

*   Any number of filters by the same dimension, as specified in the `GroupBy` or `Partition` parameters.

*   A single filter for any other dimension in this dimension group.


## `MaxResults = ::Int`
The maximum number of items to return in the response. If more items exist than the specified `MaxRecords` value, a pagination token is included in the response so that the remaining results can be retrieved.


## `NextToken = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by `MaxRecords`.




# Returns

`DescribeDimensionKeysResponse`

# Exceptions

`InvalidArgumentException`, `InternalServiceError` or `NotAuthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/DescribeDimensionKeys)
"""
@inline describe_dimension_keys(aws::AWSConfig=default_aws_config(); args...) = describe_dimension_keys(aws, args)

@inline describe_dimension_keys(aws::AWSConfig, args) = AWSCore.Services.pi(aws, "DescribeDimensionKeys", args)

@inline describe_dimension_keys(args) = describe_dimension_keys(default_aws_config(), args)


"""
    using AWSSDK.PI.get_resource_metrics
    get_resource_metrics([::AWSConfig], arguments::Dict)
    get_resource_metrics([::AWSConfig]; ServiceType=, Identifier=, MetricQueries=, StartTime=, EndTime=, <keyword arguments>)

    using AWSCore.Services.pi
    pi([::AWSConfig], "GetResourceMetrics", arguments::Dict)
    pi([::AWSConfig], "GetResourceMetrics", ServiceType=, Identifier=, MetricQueries=, StartTime=, EndTime=, <keyword arguments>)

# GetResourceMetrics Operation

Retrieve Performance Insights metrics for a set of data sources, over a time period. You can provide specific dimension groups and dimensions, and provide aggregation and filtering criteria for each group.

# Arguments

## `ServiceType = "RDS"` -- *Required*
The AWS service for which Performance Insights will return metrics. The only valid value for *ServiceType* is: `RDS`


## `Identifier = ::String` -- *Required*
An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source.

To use an Amazon RDS instance as a data source, you specify its `DbiResourceId` value - for example: `db-FAIHNTYBKTGAUSUZQYPDS2GW4A`


## `MetricQueries = [[ ... ], ...]` -- *Required*
An array of one or more queries to perform. Each query must specify a Performance Insights metric, and can optionally specify aggregation and filtering criteria.
```
 MetricQueries = [[
        "Metric" => <required> ::String,
        "GroupBy" =>  [
            "Group" => <required> ::String,
            "Dimensions" =>  [::String, ...],
            "Limit" =>  ::Int
        ],
        "Filter" =>  ::Dict{String,String}
    ], ...]
```

## `StartTime = timestamp` -- *Required*
The date and time specifying the beginning of the requested time series data. You can't specify a `StartTime` that's earlier than 7 days ago. The value specified is *inclusive* - data points equal to or greater than `StartTime` will be returned.

The value for `StartTime` must be earlier than the value for `EndTime`.


## `EndTime = timestamp` -- *Required*
The date and time specifiying the end of the requested time series data. The value specified is *exclusive* - data points less than (but not equal to) `EndTime` will be returned.

The value for `EndTime` must be later than the value for `StartTime`.


## `PeriodInSeconds = ::Int`
The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400 seconds). Valid values are:

*   `1` (one second)

*   `60` (one minute)

*   `300` (five minutes)

*   `3600` (one hour)

*   `86400` (twenty-four hours)

If you don't specify `PeriodInSeconds`, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data points in the response.


## `MaxResults = ::Int`
The maximum number of items to return in the response. If more items exist than the specified `MaxRecords` value, a pagination token is included in the response so that the remaining results can be retrieved.


## `NextToken = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by `MaxRecords`.




# Returns

`GetResourceMetricsResponse`

# Exceptions

`InvalidArgumentException`, `InternalServiceError` or `NotAuthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/GetResourceMetrics)
"""
@inline get_resource_metrics(aws::AWSConfig=default_aws_config(); args...) = get_resource_metrics(aws, args)

@inline get_resource_metrics(aws::AWSConfig, args) = AWSCore.Services.pi(aws, "GetResourceMetrics", args)

@inline get_resource_metrics(args) = get_resource_metrics(default_aws_config(), args)




end # module PI


#==============================================================================#
# End of file
#==============================================================================#
