#==============================================================================#
# CostExplorer.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/ce-2017-10-25.normal.json
#==============================================================================#

__precompile__()

module CostExplorer

using AWSCore


"""
    using AWSSDK.CostExplorer.get_cost_and_usage
    get_cost_and_usage([::AWSConfig], arguments::Dict)
    get_cost_and_usage([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ce
    ce([::AWSConfig], "GetCostAndUsage", arguments::Dict)
    ce([::AWSConfig], "GetCostAndUsage", <keyword arguments>)

# GetCostAndUsage Operation

Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric, such as `BlendedCosts` or `UsageQuantity`, that you want the request to return. You can also filter and group your data by various dimensions, such as `SERVICE` or `AZ`, in a specific time range. For a complete list of valid dimensions, see the `[GetDimensionValues](http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html)` operation. Master accounts in an organization in AWS Organizations have access to all member accounts.

# Arguments

## `TimePeriod = [ ... ]`
Sets the start and end dates for retrieving AWS costs. The start date is inclusive, but the end date is exclusive. For example, if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data is retrieved from `2017-01-01` up to and including `2017-04-30` but not including `2017-05-01`.
```
 TimePeriod = [
        "Start" => <required> ::String,
        "End" => <required> ::String
    ]
```

## `Granularity = "DAILY" or "MONTHLY"`
Sets the AWS cost granularity to `MONTHLY` or `DAILY`. If `Granularity` isn't set, the response object doesn't include the `Granularity`, either `MONTHLY` or `DAILY`.


## `Filter = [ ... ]`
Filters AWS costs by different dimensions. For example, you can specify `SERVICE` and `LINKED_ACCOUNT` and get the costs that are associated with that account's usage of that service. You can nest `Expression` objects to define any combination of dimension filters. For more information, see [Expression](http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html).
```
 Filter = [
        "Or" =>  [structure, ...],
        "And" =>  [structure, ...],
        "Not" =>  structure,
        "Dimensions" =>  [
            "Key" =>  "AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE" or "INSTANCE_TYPE_FAMILY",
            "Values" =>  [::String, ...]
        ],
        "Tags" =>  [
            "Key" =>  ::String,
            "Values" =>  [::String, ...]
        ]
    ]
```

## `Metrics = [::String, ...]`
Which metrics are returned in the query. For more information about blended and unblended rates, see [Why does the "blended" annotation appear on some line items in my bill?](https://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/).

Valid values are `AmortizedCost`, `BlendedCost`, `UnblendedCost`, and `UsageQuantity`.

**Note**
> If you return the `UsageQuantity` metric, the service aggregates all usage numbers without taking into account the units. For example, if you aggregate `usageQuantity` across all of EC2, the results aren't meaningful because EC2 compute hours and data transfer are measured in different units (for example, hours vs. GB). To get more meaningful `UsageQuantity` metrics, filter by `UsageType` or `UsageTypeGroups`.

`Metrics` is required for `GetCostAndUsage` requests.


## `GroupBy = [[ ... ], ...]`
You can group AWS costs using up to two different groups, either dimensions, tag keys, or both.

When you group by tag key, you get all tag values, including empty strings.

Valid values are `AZ`, `INSTANCE_TYPE`, `LEGAL_ENTITY_NAME`, `LINKED_ACCOUNT`, `OPERATION`, `PLATFORM`, `PURCHASE_TYPE`, `SERVICE`, `TAGS`, `TENANCY`, and `USAGE_TYPE`.
```
 GroupBy = [[
        "Type" =>  "DIMENSION" or "TAG",
        "Key" =>  ::String
    ], ...]
```

## `NextPageToken = ::String`
The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.




# Returns

`GetCostAndUsageResponse`

# Exceptions

`LimitExceededException`, `BillExpirationException`, `DataUnavailableException`, `InvalidNextTokenException` or `RequestChangedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetCostAndUsage)
"""
@inline get_cost_and_usage(aws::AWSConfig=default_aws_config(); args...) = get_cost_and_usage(aws, args)

@inline get_cost_and_usage(aws::AWSConfig, args) = AWSCore.Services.ce(aws, "GetCostAndUsage", args)

@inline get_cost_and_usage(args) = get_cost_and_usage(default_aws_config(), args)


"""
    using AWSSDK.CostExplorer.get_dimension_values
    get_dimension_values([::AWSConfig], arguments::Dict)
    get_dimension_values([::AWSConfig]; TimePeriod=, Dimension=, <keyword arguments>)

    using AWSCore.Services.ce
    ce([::AWSConfig], "GetDimensionValues", arguments::Dict)
    ce([::AWSConfig], "GetDimensionValues", TimePeriod=, Dimension=, <keyword arguments>)

# GetDimensionValues Operation

Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string.

# Arguments

## `SearchString = ::String`
The value that you want to search the filter values for.


## `TimePeriod = [ ... ]` -- *Required*
The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data is retrieved from `2017-01-01` up to and including `2017-04-30` but not including `2017-05-01`.
```
 TimePeriod = [
        "Start" => <required> ::String,
        "End" => <required> ::String
    ]
```

## `Dimension = "AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE" or "INSTANCE_TYPE_FAMILY"` -- *Required*
The name of the dimension. Each `Dimension` is available for different a `Context`. For more information, see `Context`.


## `Context = "COST_AND_USAGE" or "RESERVATIONS"`
The context for the call to `GetDimensionValues`. This can be `RESERVATIONS` or `COST_AND_USAGE`. The default value is `COST_AND_USAGE`. If the context is set to `RESERVATIONS`, the resulting dimension values can be used in the `GetReservationUtilization` operation. If the context is set to `COST_AND_USAGE` the resulting dimension values can be used in the `GetCostAndUsage` operation.

If you set the context to `COST_AND_USAGE`, you can use the following dimensions for searching:

*   AZ - The Availability Zone. An example is `us-east-1a`.

*   DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.

*   INSTANCE_TYPE - The type of EC2 instance. An example is `m4.xlarge`.

*   LEGAL_ENTITY_NAME - The name of the organization that sells you AWS services, such as Amazon Web Services.

*   LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.

*   OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.

*   OPERATION - The action performed. Examples include `RunInstance` and `CreateBucket`.

*   PLATFORM - The EC2 operating system. Examples are Windows or Linux.

*   PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand Instances and Standard Reserved Instances.

*   SERVICE - The AWS service such as Amazon DynamoDB.

*   USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the `GetDimensionValues` operation includes a unit attribute. Examples include GB and Hrs.

*   USAGE_TYPE_GROUP - The grouping of common usage types. An example is EC2: CloudWatch – Alarms. The response for this operation includes a unit attribute.

*   RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.

If you set the context to `RESERVATIONS`, you can use the following dimensions for searching:

*   AZ - The Availability Zone. An example is `us-east-1a`.

*   CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.

*   DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are `SingleAZ` and `MultiAZ`.

*   INSTANCE_TYPE - The type of EC2 instance. An example is `m4.xlarge`.

*   LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.

*   PLATFORM - The EC2 operating system. Examples are Windows or Linux.

*   REGION - The AWS Region.

*   SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.

*   TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).

*   TENANCY - The tenancy of a resource. Examples are shared or dedicated.


## `NextPageToken = ::String`
The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.




# Returns

`GetDimensionValuesResponse`

# Exceptions

`LimitExceededException`, `BillExpirationException`, `DataUnavailableException`, `InvalidNextTokenException` or `RequestChangedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetDimensionValues)
"""
@inline get_dimension_values(aws::AWSConfig=default_aws_config(); args...) = get_dimension_values(aws, args)

@inline get_dimension_values(aws::AWSConfig, args) = AWSCore.Services.ce(aws, "GetDimensionValues", args)

@inline get_dimension_values(args) = get_dimension_values(default_aws_config(), args)


"""
    using AWSSDK.CostExplorer.get_reservation_coverage
    get_reservation_coverage([::AWSConfig], arguments::Dict)
    get_reservation_coverage([::AWSConfig]; TimePeriod=, <keyword arguments>)

    using AWSCore.Services.ce
    ce([::AWSConfig], "GetReservationCoverage", arguments::Dict)
    ce([::AWSConfig], "GetReservationCoverage", TimePeriod=, <keyword arguments>)

# GetReservationCoverage Operation

Retrieves the reservation coverage for your account. This allows you to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or Amazon Redshift usage is covered by a reservation. An organization's master account can see the coverage of the associated member accounts. For any time period, you can filter data about reservation usage by the following dimensions:

*   AZ

*   CACHE_ENGINE

*   DATABASE_ENGINE

*   DEPLOYMENT_OPTION

*   INSTANCE_TYPE

*   LINKED_ACCOUNT

*   OPERATING_SYSTEM

*   PLATFORM

*   REGION

*   SERVICE

*   TAG

*   TENANCY

To determine valid values for a dimension, use the `GetDimensionValues` operation.

# Arguments

## `TimePeriod = [ ... ]` -- *Required*
The start and end dates of the period for which you want to retrieve data about reservation coverage. You can retrieve data for a maximum of 13 months: the last 12 months and the current month. The start date is inclusive, but the end date is exclusive. For example, if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data is retrieved from `2017-01-01` up to and including `2017-04-30` but not including `2017-05-01`.
```
 TimePeriod = [
        "Start" => <required> ::String,
        "End" => <required> ::String
    ]
```

## `GroupBy = [[ ... ], ...]`
You can group the data by the following attributes:

*   AZ

*   CACHE_ENGINE

*   DATABASE_ENGINE

*   DEPLOYMENT_OPTION

*   INSTANCE_TYPE

*   LINKED_ACCOUNT

*   OPERATING_SYSTEM

*   PLATFORM

*   REGION

*   TAG

*   TENANCY
```
 GroupBy = [[
        "Type" =>  "DIMENSION" or "TAG",
        "Key" =>  ::String
    ], ...]
```

## `Granularity = "DAILY" or "MONTHLY"`
The granularity of the AWS cost data for the reservation. Valid values are `MONTHLY` and `DAILY`.

If `GroupBy` is set, `Granularity` can't be set. If `Granularity` isn't set, the response object doesn't include `Granularity`, either `MONTHLY` or `DAILY`.


## `Filter = [ ... ]`
Filters utilization data by dimensions. You can filter by the following dimensions:

*   AZ

*   CACHE_ENGINE

*   DATABASE_ENGINE

*   DEPLOYMENT_OPTION

*   INSTANCE_TYPE

*   LINKED_ACCOUNT

*   OPERATING_SYSTEM

*   PLATFORM

*   REGION

*   SERVICE

*   TAG

*   TENANCY

`GetReservationCoverage` uses the same `[Expression](http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html)` object as the other operations, but only `AND` is supported among each dimension. You can nest only one level deep. If there are multiple values for a dimension, they are OR'd together.

If you don't provide a `SERVICE` filter, Cost Explorer defaults to EC2.
```
 Filter = [
        "Or" =>  [structure, ...],
        "And" =>  [structure, ...],
        "Not" =>  structure,
        "Dimensions" =>  [
            "Key" =>  "AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE" or "INSTANCE_TYPE_FAMILY",
            "Values" =>  [::String, ...]
        ],
        "Tags" =>  [
            "Key" =>  ::String,
            "Values" =>  [::String, ...]
        ]
    ]
```

## `NextPageToken = ::String`
The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.




# Returns

`GetReservationCoverageResponse`

# Exceptions

`LimitExceededException`, `DataUnavailableException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationCoverage)
"""
@inline get_reservation_coverage(aws::AWSConfig=default_aws_config(); args...) = get_reservation_coverage(aws, args)

@inline get_reservation_coverage(aws::AWSConfig, args) = AWSCore.Services.ce(aws, "GetReservationCoverage", args)

@inline get_reservation_coverage(args) = get_reservation_coverage(default_aws_config(), args)


"""
    using AWSSDK.CostExplorer.get_reservation_purchase_recommendation
    get_reservation_purchase_recommendation([::AWSConfig], arguments::Dict)
    get_reservation_purchase_recommendation([::AWSConfig]; Service=, <keyword arguments>)

    using AWSCore.Services.ce
    ce([::AWSConfig], "GetReservationPurchaseRecommendation", arguments::Dict)
    ce([::AWSConfig], "GetReservationPurchaseRecommendation", Service=, <keyword arguments>)

# GetReservationPurchaseRecommendation Operation

Gets recommendations for which reservations to purchase. These recommendations could help you reduce your costs. Reservations provide a discounted hourly rate (up to 75%) compared to On-Demand pricing.

AWS generates your recommendations by identifying your On-Demand usage during a specific time period and collecting your usage into categories that are eligible for a reservation. After AWS has these categories, it simulates every combination of reservations in each category of usage to identify the best number of each type of RI to purchase to maximize your estimated savings.

For example, AWS automatically aggregates your EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon) Region and recommends that you buy size-flexible regional reservations to apply to the c4 family usage. AWS recommends the smallest size instance in an instance family. This makes it easier to purchase a size-flexible RI. AWS also shows the equal number of normalized units so that you can purchase any instance size that you want. For this example, your RI recommendation would be for `c4.large`, because that is the smallest size instance in the c4 instance family.

# Arguments

## `AccountId = ::String`
The account ID that is associated with the recommendation.


## `Service = ::String` -- *Required*
The specific service that you want recommendations for.


## `AccountScope = "PAYER" or "LINKED"`
The account scope that you want recommendations for. `PAYER` means that AWS includes the master account and any member accounts when it calculates its recommendations. `LINKED` means that AWS includes only member accounts when it calculates its recommendations.

Valid values are `PAYER` and `LINKED`.


## `LookbackPeriodInDays = "SEVEN_DAYS", "THIRTY_DAYS" or "SIXTY_DAYS"`
The number of previous days that you want AWS to consider when it calculates your recommendations.


## `TermInYears = "ONE_YEAR" or "THREE_YEARS"`
The reservation term that you want recommendations for.


## `PaymentOption = "NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION" or "HEAVY_UTILIZATION"`
The reservation purchase option that you want recommendations for.


## `ServiceSpecification = ["EC2Specification" =>  ["OfferingClass" =>  "STANDARD" or "CONVERTIBLE"]]`
The hardware specifications for the service instances that you want recommendations for, such as standard or convertible EC2 instances.


## `PageSize = ::Int`
The number of recommendations that you want returned in a single response object.


## `NextPageToken = ::String`
The pagination token that indicates the next set of results that you want to retrieve.




# Returns

`GetReservationPurchaseRecommendationResponse`

# Exceptions

`LimitExceededException`, `DataUnavailableException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationPurchaseRecommendation)
"""
@inline get_reservation_purchase_recommendation(aws::AWSConfig=default_aws_config(); args...) = get_reservation_purchase_recommendation(aws, args)

@inline get_reservation_purchase_recommendation(aws::AWSConfig, args) = AWSCore.Services.ce(aws, "GetReservationPurchaseRecommendation", args)

@inline get_reservation_purchase_recommendation(args) = get_reservation_purchase_recommendation(default_aws_config(), args)


"""
    using AWSSDK.CostExplorer.get_reservation_utilization
    get_reservation_utilization([::AWSConfig], arguments::Dict)
    get_reservation_utilization([::AWSConfig]; TimePeriod=, <keyword arguments>)

    using AWSCore.Services.ce
    ce([::AWSConfig], "GetReservationUtilization", arguments::Dict)
    ce([::AWSConfig], "GetReservationUtilization", TimePeriod=, <keyword arguments>)

# GetReservationUtilization Operation

Retrieves the reservation utilization for your account. Master accounts in an organization have access to member accounts. You can filter data by dimensions in a time period. You can use `GetDimensionValues` to determine the possible dimension values. Currently, you can group only by `SUBSCRIPTION_ID`.

# Arguments

## `TimePeriod = [ ... ]` -- *Required*
Sets the start and end dates for retrieving Reserved Instance (RI) utilization. The start date is inclusive, but the end date is exclusive. For example, if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data is retrieved from `2017-01-01` up to and including `2017-04-30` but not including `2017-05-01`.
```
 TimePeriod = [
        "Start" => <required> ::String,
        "End" => <required> ::String
    ]
```

## `GroupBy = [[ ... ], ...]`
Groups only by `SUBSCRIPTION_ID`. Metadata is included.
```
 GroupBy = [[
        "Type" =>  "DIMENSION" or "TAG",
        "Key" =>  ::String
    ], ...]
```

## `Granularity = "DAILY" or "MONTHLY"`
If `GroupBy` is set, `Granularity` can't be set. If `Granularity` isn't set, the response object doesn't include `Granularity`, either `MONTHLY` or `DAILY`. If both `GroupBy` and `Granularity` aren't set, `GetReservationUtilization` defaults to `DAILY`.


## `Filter = [ ... ]`
Filters utilization data by dimensions. You can filter by the following dimensions:

*   AZ

*   CACHE_ENGINE

*   DATABASE_ENGINE

*   DEPLOYMENT_OPTION

*   INSTANCE_TYPE

*   LINKED_ACCOUNT

*   OPERATING_SYSTEM

*   PLATFORM

*   REGION

*   SERVICE

*   SCOPE

*   TENANCY

`GetReservationUtilization` uses the same `[Expression](http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html)` object as the other operations, but only `AND` is supported among each dimension, and nesting is supported up to only one level deep. If there are multiple values for a dimension, they are OR'd together.
```
 Filter = [
        "Or" =>  [structure, ...],
        "And" =>  [structure, ...],
        "Not" =>  structure,
        "Dimensions" =>  [
            "Key" =>  "AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE" or "INSTANCE_TYPE_FAMILY",
            "Values" =>  [::String, ...]
        ],
        "Tags" =>  [
            "Key" =>  ::String,
            "Values" =>  [::String, ...]
        ]
    ]
```

## `NextPageToken = ::String`
The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.




# Returns

`GetReservationUtilizationResponse`

# Exceptions

`LimitExceededException`, `DataUnavailableException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetReservationUtilization)
"""
@inline get_reservation_utilization(aws::AWSConfig=default_aws_config(); args...) = get_reservation_utilization(aws, args)

@inline get_reservation_utilization(aws::AWSConfig, args) = AWSCore.Services.ce(aws, "GetReservationUtilization", args)

@inline get_reservation_utilization(args) = get_reservation_utilization(default_aws_config(), args)


"""
    using AWSSDK.CostExplorer.get_tags
    get_tags([::AWSConfig], arguments::Dict)
    get_tags([::AWSConfig]; TimePeriod=, <keyword arguments>)

    using AWSCore.Services.ce
    ce([::AWSConfig], "GetTags", arguments::Dict)
    ce([::AWSConfig], "GetTags", TimePeriod=, <keyword arguments>)

# GetTags Operation

Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string.

# Arguments

## `SearchString = ::String`
The value that you want to search for.


## `TimePeriod = [ ... ]` -- *Required*
The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if `start` is `2017-01-01` and `end` is `2017-05-01`, then the cost and usage data is retrieved from `2017-01-01` up to and including `2017-04-30` but not including `2017-05-01`.
```
 TimePeriod = [
        "Start" => <required> ::String,
        "End" => <required> ::String
    ]
```

## `TagKey = ::String`
The key of the tag that you want to return values for.


## `NextPageToken = ::String`
The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.




# Returns

`GetTagsResponse`

# Exceptions

`LimitExceededException`, `BillExpirationException`, `DataUnavailableException`, `InvalidNextTokenException` or `RequestChangedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ce-2017-10-25/GetTags)
"""
@inline get_tags(aws::AWSConfig=default_aws_config(); args...) = get_tags(aws, args)

@inline get_tags(aws::AWSConfig, args) = AWSCore.Services.ce(aws, "GetTags", args)

@inline get_tags(args) = get_tags(default_aws_config(), args)




end # module CostExplorer


#==============================================================================#
# End of file
#==============================================================================#
