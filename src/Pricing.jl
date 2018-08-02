#==============================================================================#
# Pricing.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/pricing-2017-10-15.normal.json
#==============================================================================#

__precompile__()

module Pricing

using AWSCore


"""
    using AWSSDK.Pricing.describe_services
    describe_services([::AWSConfig], arguments::Dict)
    describe_services([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.pricing
    pricing([::AWSConfig], "DescribeServices", arguments::Dict)
    pricing([::AWSConfig], "DescribeServices", <keyword arguments>)

# DescribeServices Operation

Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as `AmazonEC2`, to get information specific to that service, such as the attribute names available for that service. For example, some of the attribute names available for EC2 are `volumeType`, `maxIopsVolume`, `operation`, `locationType`, and `instanceCapacity10xlarge`.

# Arguments

## `ServiceCode = ::String`
The code for the service whose information you want to retrieve, such as `AmazonEC2`. You can use the `ServiceCode` to filter the results in a `GetProducts` call. To retrieve a list of all services, leave this blank.


## `FormatVersion = ::String`
The format version that you want the response to be in.

Valid values are: `aws_v1`


## `NextToken = ::String`
The pagination token that indicates the next set of results that you want to retrieve.


## `MaxResults = ::Int`
The maximum number of results that you want returned in the response.




# Returns

`DescribeServicesResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException`, `NotFoundException`, `InvalidNextTokenException` or `ExpiredNextTokenException`.

# Example: To retrieve a list of services and service codes



Input:
```
[
    "FormatVersion" => "aws_v1",
    "MaxResults" => 1,
    "ServiceCode" => "AmazonEC2"
]
```

Output:
```
Dict(
    "FormatVersion" => "aws_v1",
    "NextToken" => "abcdefg123",
    "Services" => [
        Dict(
            "AttributeNames" => [
                "volumeType",
                "maxIopsvolume",
                "instanceCapacity10xlarge",
                "locationType",
                "operation"
            ],
            "ServiceCode" => "AmazonEC2"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/DescribeServices)
"""
@inline describe_services(aws::AWSConfig=default_aws_config(); args...) = describe_services(aws, args)

@inline describe_services(aws::AWSConfig, args) = AWSCore.Services.pricing(aws, "DescribeServices", args)

@inline describe_services(args) = describe_services(default_aws_config(), args)


"""
    using AWSSDK.Pricing.get_attribute_values
    get_attribute_values([::AWSConfig], arguments::Dict)
    get_attribute_values([::AWSConfig]; ServiceCode=, AttributeName=, <keyword arguments>)

    using AWSCore.Services.pricing
    pricing([::AWSConfig], "GetAttributeValues", arguments::Dict)
    pricing([::AWSConfig], "GetAttributeValues", ServiceCode=, AttributeName=, <keyword arguments>)

# GetAttributeValues Operation

Returns a list of attribute values. Attibutes are similar to the details in a Price List API offer file. For a list of available attributes, see [Offer File Definitions](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs) in the [AWS Billing and Cost Management User Guide](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html).

# Arguments

## `ServiceCode = ::String` -- *Required*
The service code for the service whose attributes you want to retrieve. For example, if you want the retrieve an EC2 attribute, use `AmazonEC2`.


## `AttributeName = ::String` -- *Required*
The name of the attribute that you want to retrieve the values for, such as `volumeType`.


## `NextToken = ::String`
The pagination token that indicates the next set of results that you want to retrieve.


## `MaxResults = ::Int`
The maximum number of results to return in response.




# Returns

`GetAttributeValuesResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException`, `NotFoundException`, `InvalidNextTokenException` or `ExpiredNextTokenException`.

# Example: To retrieve a list of attribute values

This operation returns a list of values available for the given attribute.

Input:
```
[
    "AttributeName" => "volumeType",
    "MaxResults" => 2,
    "ServiceCode" => "AmazonEC2"
]
```

Output:
```
Dict(
    "AttributeValues" => [
        Dict(
            "Value" => "Throughput Optimized HDD"
        ),
        Dict(
            "Value" => "Provisioned IOPS"
        )
    ],
    "NextToken" => "GpgauEXAMPLEezucl5LV0w==:7GzYJ0nw0DBTJ2J66EoTIIynE6O1uXwQtTRqioJzQadBnDVgHPzI1en4BUQnPCLpzeBk9RQQAWaFieA4+DapFAGLgk+Z/9/cTw9GldnPOHN98+FdmJP7wKU3QQpQ8MQr5KOeBkIsAqvAQYdL0DkL7tHwPtE5iCEByAmg9gcC/yBU1vAOsf7R3VaNN4M5jMDv3woSWqASSIlBVB6tgW78YL22KhssoItM/jWW+aP6Jqtq4mldxp/ct6DWAl+xLFwHU/CbketimPPXyqHF3/UXDw=="
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/GetAttributeValues)
"""
@inline get_attribute_values(aws::AWSConfig=default_aws_config(); args...) = get_attribute_values(aws, args)

@inline get_attribute_values(aws::AWSConfig, args) = AWSCore.Services.pricing(aws, "GetAttributeValues", args)

@inline get_attribute_values(args) = get_attribute_values(default_aws_config(), args)


"""
    using AWSSDK.Pricing.get_products
    get_products([::AWSConfig], arguments::Dict)
    get_products([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.pricing
    pricing([::AWSConfig], "GetProducts", arguments::Dict)
    pricing([::AWSConfig], "GetProducts", <keyword arguments>)

# GetProducts Operation

Returns a list of all products that match the filter criteria.

# Arguments

## `ServiceCode = ::String`
The code for the service whose products you want to retrieve.


## `Filters = [[ ... ], ...]`
The list of filters that limit the returned products. only products that match all filters are returned.
```
 Filters = [[
        "Type" => <required> "TERM_MATCH",
        "Field" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `FormatVersion = ::String`
The format version that you want the response to be in.

Valid values are: `aws_v1`


## `NextToken = ::String`
The pagination token that indicates the next set of results that you want to retrieve.


## `MaxResults = ::Int`
The maximum number of results to return in the response.




# Returns

`GetProductsResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException`, `NotFoundException`, `InvalidNextTokenException` or `ExpiredNextTokenException`.

# Example: To retrieve a list of products

This operation returns a list of products that match the given criteria.

Input:
```
[
    "Filters" => [
        [
            "Field" => "ServiceCode",
            "Type" => "TERM_MATCH",
            "Value" => "AmazonEC2"
        ],
        [
            "Field" => "volumeType",
            "Type" => "TERM_MATCH",
            "Value" => "Provisioned IOPS"
        ]
    ],
    "FormatVersion" => "aws_v1",
    "MaxResults" => 1
]
```

Output:
```
Dict(
    "FormatVersion" => "aws_v1",
    "NextToken" => "57r3EXAMPLEujbzWfHF7Ciw==:ywSmZsD3mtpQmQLQ5XfOsIMkYybSj+vAT+kGmwMFq+K9DGmIoJkz7lunVeamiOPgthdWSO2a7YKojCO+zY4dJmuNl2QvbNhXs+AJ2Ufn7xGmJncNI2TsEuAsVCUfTAvAQNcwwamtk6XuZ4YdNnooV62FjkV3ZAn40d9+wAxV7+FImvhUHi/+f8afgZdGh2zPUlH8jlV9uUtj0oHp8+DhPUuHXh+WBII1E/aoKpPSm3c=",
    "PriceList" => [
        "{"product":{"productFamily":"Storage","attributes":{"storageMedia":"SSD-backed","maxThroughputvolume":"320 MB/sec","volumeType":"Provisioned IOPS","maxIopsvolume":"20000","servicecode":"AmazonEC2","usagetype":"CAN1-EBS:VolumeUsage.piops","locationType":"AWS Region","location":"Canada (Central)","servicename":"Amazon Elastic Compute Cloud","maxVolumeSize":"16 TiB","operation":""},"sku":"WQGC34PB2AWS8R4U"},"serviceCode":"AmazonEC2","terms":{"OnDemand":{"WQGC34PB2AWS8R4U.JRTCKXETXF":{"priceDimensions":{"WQGC34PB2AWS8R4U.JRTCKXETXF.6YS6EN2CT7":{"unit":"GB-Mo","endRange":"Inf","description":"\$0.138 per GB-month of Provisioned IOPS SSD (io1)  provisioned storage - Canada (Central)","appliesTo":[],"rateCode":"WQGC34PB2AWS8R4U.JRTCKXETXF.6YS6EN2CT7","beginRange":"0","pricePerUnit":{"USD":"0.1380000000"}}},"sku":"WQGC34PB2AWS8R4U","effectiveDate":"2017-08-01T00:00:00Z","offerTermCode":"JRTCKXETXF","termAttributes":{}}}},"version":"20170901182201","publicationDate":"2017-09-01T18:22:01Z"}"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/GetProducts)
"""
@inline get_products(aws::AWSConfig=default_aws_config(); args...) = get_products(aws, args)

@inline get_products(aws::AWSConfig, args) = AWSCore.Services.pricing(aws, "GetProducts", args)

@inline get_products(args) = get_products(default_aws_config(), args)




end # module Pricing


#==============================================================================#
# End of file
#==============================================================================#
