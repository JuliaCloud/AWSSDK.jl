#==============================================================================#
# ResourceGroupsTaggingAPI.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/resourcegroupstaggingapi-2017-01-26.normal.json
#==============================================================================#

__precompile__()

module ResourceGroupsTaggingAPI

using AWSCore


"""
    using AWSSDK.ResourceGroupsTaggingAPI.get_resources
    get_resources([::AWSConfig], arguments::Dict)
    get_resources([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.resourcegroupstaggingapi
    resourcegroupstaggingapi([::AWSConfig], "GetResources", arguments::Dict)
    resourcegroupstaggingapi([::AWSConfig], "GetResources", <keyword arguments>)

# GetResources Operation

Returns all the tagged resources that are associated with the specified tags (keys and values) located in the specified region for the AWS account. The tags and the resource types that you specify in the request are known as *filters*. The response includes all tags that are associated with the requested resources. If no filter is provided, this action returns a paginated resource list with the associated tags.

# Arguments

## `PaginationToken = ::String`
A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a `PaginationToken`, use that string for this value to request an additional page of data.


## `TagFilters = [[ ... ], ...]`
A list of tags (keys and values). A request can include up to 50 keys, and each key can include up to 20 values.

If you specify multiple filters connected by an AND operator in a single request, the response returns only those resources that are associated with every specified filter.

If you specify multiple filters connected by an OR operator in a single request, the response returns all resources that are associated with at least one or possibly more of the specified filters.
```
 TagFilters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `ResourcesPerPage = ::Int`
A limit that restricts the number of resources returned by GetResources in paginated output. You can set ResourcesPerPage to a minimum of 1 item and the maximum of 50 items.


## `TagsPerPage = ::Int`
A limit that restricts the number of tags (key and value pairs) returned by GetResources in paginated output. A resource with no tags is counted as having one tag (one key and value pair).

`GetResources` does not split a resource and its associated tags across pages. If the specified `TagsPerPage` would cause such a break, a `PaginationToken` is returned in place of the affected resource and its tags. Use that token in another request to get the remaining data. For example, if you specify a `TagsPerPage` of `100` and the account has 22 resources with 10 tags each (meaning that each resource has 10 key and value pairs), the output will consist of 3 pages, with the first page displaying the first 10 resources, each with its 10 tags, the second page displaying the next 10 resources each with its 10 tags, and the third page displaying the remaining 2 resources, each with its 10 tags.

You can set `TagsPerPage` to a minimum of 100 items and the maximum of 500 items.


## `ResourceTypeFilters = [::String, ...]`
The constraints on the resources that you want returned. The format of each resource type is `service[:resourceType]`. For example, specifying a resource type of `ec2` returns all tagged Amazon EC2 resources (which includes tagged EC2 instances). Specifying a resource type of `ec2:instance` returns only EC2 instances.

The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the *AWS General Reference* for the following:

*   For a list of service name strings, see [AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces).

*   For resource type strings, see [Example ARNs](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax).

*   For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).




# Returns

`GetResourcesOutput`

# Exceptions

`InvalidParameterException`, `ThrottledException`, `InternalServiceException` or `PaginationTokenExpiredException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetResources)
"""
@inline get_resources(aws::AWSConfig=default_aws_config(); args...) = get_resources(aws, args)

@inline get_resources(aws::AWSConfig, args) = AWSCore.Services.resourcegroupstaggingapi(aws, "GetResources", args)

@inline get_resources(args) = get_resources(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroupsTaggingAPI.get_tag_keys
    get_tag_keys([::AWSConfig], arguments::Dict)
    get_tag_keys([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.resourcegroupstaggingapi
    resourcegroupstaggingapi([::AWSConfig], "GetTagKeys", arguments::Dict)
    resourcegroupstaggingapi([::AWSConfig], "GetTagKeys", <keyword arguments>)

# GetTagKeys Operation

Returns all tag keys in the specified region for the AWS account.

# Arguments

## `PaginationToken = ::String`
A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.




# Returns

`GetTagKeysOutput`

# Exceptions

`InvalidParameterException`, `ThrottledException`, `InternalServiceException` or `PaginationTokenExpiredException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagKeys)
"""
@inline get_tag_keys(aws::AWSConfig=default_aws_config(); args...) = get_tag_keys(aws, args)

@inline get_tag_keys(aws::AWSConfig, args) = AWSCore.Services.resourcegroupstaggingapi(aws, "GetTagKeys", args)

@inline get_tag_keys(args) = get_tag_keys(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroupsTaggingAPI.get_tag_values
    get_tag_values([::AWSConfig], arguments::Dict)
    get_tag_values([::AWSConfig]; Key=, <keyword arguments>)

    using AWSCore.Services.resourcegroupstaggingapi
    resourcegroupstaggingapi([::AWSConfig], "GetTagValues", arguments::Dict)
    resourcegroupstaggingapi([::AWSConfig], "GetTagValues", Key=, <keyword arguments>)

# GetTagValues Operation

Returns all tag values for the specified key in the specified region for the AWS account.

# Arguments

## `PaginationToken = ::String`
A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.


## `Key = ::String` -- *Required*
The key for which you want to list all existing values in the specified region for the AWS account.




# Returns

`GetTagValuesOutput`

# Exceptions

`InvalidParameterException`, `ThrottledException`, `InternalServiceException` or `PaginationTokenExpiredException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagValues)
"""
@inline get_tag_values(aws::AWSConfig=default_aws_config(); args...) = get_tag_values(aws, args)

@inline get_tag_values(aws::AWSConfig, args) = AWSCore.Services.resourcegroupstaggingapi(aws, "GetTagValues", args)

@inline get_tag_values(args) = get_tag_values(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroupsTaggingAPI.tag_resources
    tag_resources([::AWSConfig], arguments::Dict)
    tag_resources([::AWSConfig]; ResourceARNList=, Tags=)

    using AWSCore.Services.resourcegroupstaggingapi
    resourcegroupstaggingapi([::AWSConfig], "TagResources", arguments::Dict)
    resourcegroupstaggingapi([::AWSConfig], "TagResources", ResourceARNList=, Tags=)

# TagResources Operation

Applies one or more tags to the specified resources. Note the following:

*   Not all resources can have tags. For a list of resources that support tagging, see [Supported Resources](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/supported-resources.html) in the *AWS Resource Groups and Tag Editor User Guide*.

*   Each resource can have up to 50 tags. For other limits, see [Tag Restrictions](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-restrictions) in the *Amazon EC2 User Guide for Linux Instances*.

*   You can only tag resources that are located in the specified region for the AWS account.

*   To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see [Obtaining Permissions for Tagging](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html) in the *AWS Resource Groups and Tag Editor User Guide*.

# Arguments

## `ResourceARNList = [::String, ...]` -- *Required*
A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to tag. An ARN can be set to a maximum of 1600 characters. For more information, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `Tags = ::Dict{String,String}` -- *Required*
The tags that you want to add to the specified resources. A tag consists of a key and a value that you define.




# Returns

`TagResourcesOutput`

# Exceptions

`InvalidParameterException`, `ThrottledException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/TagResources)
"""
@inline tag_resources(aws::AWSConfig=default_aws_config(); args...) = tag_resources(aws, args)

@inline tag_resources(aws::AWSConfig, args) = AWSCore.Services.resourcegroupstaggingapi(aws, "TagResources", args)

@inline tag_resources(args) = tag_resources(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroupsTaggingAPI.untag_resources
    untag_resources([::AWSConfig], arguments::Dict)
    untag_resources([::AWSConfig]; ResourceARNList=, TagKeys=)

    using AWSCore.Services.resourcegroupstaggingapi
    resourcegroupstaggingapi([::AWSConfig], "UntagResources", arguments::Dict)
    resourcegroupstaggingapi([::AWSConfig], "UntagResources", ResourceARNList=, TagKeys=)

# UntagResources Operation

Removes the specified tags from the specified resources. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you attempt to remove tags from a resource that were already removed. Note the following:

*   To remove tags from a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for removing tags. For more information, see [Obtaining Permissions for Tagging](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html) in the *AWS Resource Groups and Tag Editor User Guide*.

*   You can only tag resources that are located in the specified region for the AWS account.

# Arguments

## `ResourceARNList = [::String, ...]` -- *Required*
A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to untag. An ARN can be set to a maximum of 1600 characters. For more information, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `TagKeys = [::String, ...]` -- *Required*
A list of the tag keys that you want to remove from the specified resources.




# Returns

`UntagResourcesOutput`

# Exceptions

`InvalidParameterException`, `ThrottledException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/UntagResources)
"""
@inline untag_resources(aws::AWSConfig=default_aws_config(); args...) = untag_resources(aws, args)

@inline untag_resources(aws::AWSConfig, args) = AWSCore.Services.resourcegroupstaggingapi(aws, "UntagResources", args)

@inline untag_resources(args) = untag_resources(default_aws_config(), args)




end # module ResourceGroupsTaggingAPI


#==============================================================================#
# End of file
#==============================================================================#
