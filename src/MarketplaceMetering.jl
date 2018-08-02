#==============================================================================#
# MarketplaceMetering.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/meteringmarketplace-2016-01-14.normal.json
#==============================================================================#

__precompile__()

module MarketplaceMetering

using AWSCore


"""
    using AWSSDK.MarketplaceMetering.batch_meter_usage
    batch_meter_usage([::AWSConfig], arguments::Dict)
    batch_meter_usage([::AWSConfig]; UsageRecords=, ProductCode=)

    using AWSCore.Services.meteringmarketplace
    meteringmarketplace([::AWSConfig], "BatchMeterUsage", arguments::Dict)
    meteringmarketplace([::AWSConfig], "BatchMeterUsage", UsageRecords=, ProductCode=)

# BatchMeterUsage Operation

BatchMeterUsage is called from a SaaS application listed on the AWS Marketplace to post metering records for a set of customers.

For identical requests, the API is idempotent; requests can be retried with the same records or a subset of the input records.

Every request to BatchMeterUsage is for one product. If you need to meter usage for multiple products, you must make multiple calls to BatchMeterUsage.

BatchMeterUsage can process up to 25 UsageRecords at a time.

# Arguments

## `UsageRecords = [[ ... ], ...]` -- *Required*
The set of UsageRecords to submit. BatchMeterUsage accepts up to 25 UsageRecords at a time.
```
 UsageRecords = [[
        "Timestamp" => <required> timestamp,
        "CustomerIdentifier" => <required> ::String,
        "Dimension" => <required> ::String,
        "Quantity" => <required> ::Int
    ], ...]
```

## `ProductCode = ::String` -- *Required*
Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.




# Returns

`BatchMeterUsageResult`

# Exceptions

`InternalServiceErrorException`, `InvalidProductCodeException`, `InvalidUsageDimensionException`, `InvalidCustomerIdentifierException`, `TimestampOutOfBoundsException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/BatchMeterUsage)
"""
@inline batch_meter_usage(aws::AWSConfig=default_aws_config(); args...) = batch_meter_usage(aws, args)

@inline batch_meter_usage(aws::AWSConfig, args) = AWSCore.Services.meteringmarketplace(aws, "BatchMeterUsage", args)

@inline batch_meter_usage(args) = batch_meter_usage(default_aws_config(), args)


"""
    using AWSSDK.MarketplaceMetering.meter_usage
    meter_usage([::AWSConfig], arguments::Dict)
    meter_usage([::AWSConfig]; ProductCode=, Timestamp=, UsageDimension=, UsageQuantity=, DryRun=)

    using AWSCore.Services.meteringmarketplace
    meteringmarketplace([::AWSConfig], "MeterUsage", arguments::Dict)
    meteringmarketplace([::AWSConfig], "MeterUsage", ProductCode=, Timestamp=, UsageDimension=, UsageQuantity=, DryRun=)

# MeterUsage Operation

API to emit metering records. For identical requests, the API is idempotent. It simply returns the metering record ID.

MeterUsage is authenticated on the buyer's AWS account, generally when running from an EC2 instance on the AWS Marketplace.

# Arguments

## `ProductCode = ::String` -- *Required*
Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.


## `Timestamp = timestamp` -- *Required*
Timestamp of the hour, recorded in UTC. The seconds and milliseconds portions of the timestamp will be ignored.


## `UsageDimension = ::String` -- *Required*
It will be one of the fcp dimension name provided during the publishing of the product.


## `UsageQuantity = ::Int` -- *Required*
Consumption value for the hour.


## `DryRun = ::Bool` -- *Required*
Checks whether you have the permissions required for the action, but does not make the request. If you have the permissions, the request returns DryRunOperation; otherwise, it returns UnauthorizedException.




# Returns

`MeterUsageResult`

# Exceptions

`InternalServiceErrorException`, `InvalidProductCodeException`, `InvalidUsageDimensionException`, `InvalidEndpointRegionException`, `TimestampOutOfBoundsException`, `DuplicateRequestException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/MeterUsage)
"""
@inline meter_usage(aws::AWSConfig=default_aws_config(); args...) = meter_usage(aws, args)

@inline meter_usage(aws::AWSConfig, args) = AWSCore.Services.meteringmarketplace(aws, "MeterUsage", args)

@inline meter_usage(args) = meter_usage(default_aws_config(), args)


"""
    using AWSSDK.MarketplaceMetering.resolve_customer
    resolve_customer([::AWSConfig], arguments::Dict)
    resolve_customer([::AWSConfig]; RegistrationToken=)

    using AWSCore.Services.meteringmarketplace
    meteringmarketplace([::AWSConfig], "ResolveCustomer", arguments::Dict)
    meteringmarketplace([::AWSConfig], "ResolveCustomer", RegistrationToken=)

# ResolveCustomer Operation

ResolveCustomer is called by a SaaS application during the registration process. When a buyer visits your website during the registration process, the buyer submits a registration token through their browser. The registration token is resolved through this API to obtain a CustomerIdentifier and product code.

# Arguments

## `RegistrationToken = ::String` -- *Required*
When a buyer visits your website during the registration process, the buyer submits a registration token through the browser. The registration token is resolved to obtain a CustomerIdentifier and product code.




# Returns

`ResolveCustomerResult`

# Exceptions

`InvalidTokenException`, `ExpiredTokenException`, `ThrottlingException` or `InternalServiceErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/ResolveCustomer)
"""
@inline resolve_customer(aws::AWSConfig=default_aws_config(); args...) = resolve_customer(aws, args)

@inline resolve_customer(aws::AWSConfig, args) = AWSCore.Services.meteringmarketplace(aws, "ResolveCustomer", args)

@inline resolve_customer(args) = resolve_customer(default_aws_config(), args)




end # module MarketplaceMetering


#==============================================================================#
# End of file
#==============================================================================#
