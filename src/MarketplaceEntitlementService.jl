#==============================================================================#
# MarketplaceEntitlementService.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/entitlement.marketplace-2017-01-11.normal.json
#==============================================================================#

__precompile__()

module MarketplaceEntitlementService

using AWSCore


"""
    using AWSSDK.MarketplaceEntitlementService.get_entitlements
    get_entitlements([::AWSConfig], arguments::Dict)
    get_entitlements([::AWSConfig]; ProductCode=, <keyword arguments>)

    using AWSCore.Services.entitlement_marketplace
    entitlement_marketplace([::AWSConfig], "GetEntitlements", arguments::Dict)
    entitlement_marketplace([::AWSConfig], "GetEntitlements", ProductCode=, <keyword arguments>)

# GetEntitlements Operation

GetEntitlements retrieves entitlement values for a given product. The results can be filtered based on customer identifier or product dimensions.

# Arguments

## `ProductCode = ::String` -- *Required*
Product code is used to uniquely identify a product in AWS Marketplace. The product code will be provided by AWS Marketplace when the product listing is created.


## `Filter = ::Dict{String,String}`
Filter is used to return entitlements for a specific customer or for a specific dimension. Filters are described as keys mapped to a lists of values. Filtered requests are *unioned* for each value in the value list, and then *intersected* for each filter key.


## `NextToken = ::String`
For paginated calls to GetEntitlements, pass the NextToken from the previous GetEntitlementsResult.


## `MaxResults = ::Int`
The maximum number of items to retrieve from the GetEntitlements operation. For pagination, use the NextToken field in subsequent calls to GetEntitlements.




# Returns

`GetEntitlementsResult`

# Exceptions

`InvalidParameterException`, `ThrottlingException` or `InternalServiceErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/entitlement.marketplace-2017-01-11/GetEntitlements)
"""
@inline get_entitlements(aws::AWSConfig=default_aws_config(); args...) = get_entitlements(aws, args)

@inline get_entitlements(aws::AWSConfig, args) = AWSCore.Services.entitlement_marketplace(aws, "GetEntitlements", args)

@inline get_entitlements(args) = get_entitlements(default_aws_config(), args)




end # module MarketplaceEntitlementService


#==============================================================================#
# End of file
#==============================================================================#
