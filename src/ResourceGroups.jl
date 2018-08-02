#==============================================================================#
# ResourceGroups.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/resource-groups-2017-11-27.normal.json
#==============================================================================#

__precompile__()

module ResourceGroups

using AWSCore


"""
    using AWSSDK.ResourceGroups.create_group
    create_group([::AWSConfig], arguments::Dict)
    create_group([::AWSConfig]; Name=, ResourceQuery=, <keyword arguments>)

    using AWSCore.Services.resource_groups
    resource_groups([::AWSConfig], "POST", "/groups", arguments::Dict)
    resource_groups([::AWSConfig], "POST", "/groups", Name=, ResourceQuery=, <keyword arguments>)

# CreateGroup Operation

Creates a group with a specified name, description, and resource query.

# Arguments

## `Name = ::String` -- *Required*
The name of the group, which is the identifier of the group in other operations. A resource group name cannot be updated after it is created. A resource group name can have a maximum of 127 characters, including letters, numbers, hyphens, dots, and underscores. The name cannot start with `AWS` or `aws`; these are reserved. A resource group name must be unique within your account.


## `Description = ::String`
The description of the resource group. Descriptions can have a maximum of 511 characters, including letters, numbers, hyphens, underscores, punctuation, and spaces.


## `ResourceQuery = [ ... ]` -- *Required*
The resource query that determines which AWS resources are members of this group.
```
 ResourceQuery = [
        "Type" => <required> "TAG_FILTERS_1_0",
        "Query" => <required> ::String
    ]
```

## `Tags = ::Dict{String,String}`
The tags to add to the group. A tag is a string-to-string map of key-value pairs. Tag keys can have a maximum character length of 127 characters, and tag values can have a maximum length of 255 characters.




# Returns

`CreateGroupOutput`

# Exceptions

`BadRequestException`, `ForbiddenException`, `MethodNotAllowedException`, `TooManyRequestsException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/CreateGroup)
"""
@inline create_group(aws::AWSConfig=default_aws_config(); args...) = create_group(aws, args)

@inline create_group(aws::AWSConfig, args) = AWSCore.Services.resource_groups(aws, "POST", "/groups", args)

@inline create_group(args) = create_group(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroups.delete_group
    delete_group([::AWSConfig], arguments::Dict)
    delete_group([::AWSConfig]; GroupName=)

    using AWSCore.Services.resource_groups
    resource_groups([::AWSConfig], "DELETE", "/groups/{GroupName}", arguments::Dict)
    resource_groups([::AWSConfig], "DELETE", "/groups/{GroupName}", GroupName=)

# DeleteGroup Operation

Deletes a specified resource group. Deleting a resource group does not delete resources that are members of the group; it only deletes the group structure.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the resource group to delete.




# Returns

`DeleteGroupOutput`

# Exceptions

`BadRequestException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException`, `TooManyRequestsException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/DeleteGroup)
"""
@inline delete_group(aws::AWSConfig=default_aws_config(); args...) = delete_group(aws, args)

@inline delete_group(aws::AWSConfig, args) = AWSCore.Services.resource_groups(aws, "DELETE", "/groups/{GroupName}", args)

@inline delete_group(args) = delete_group(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroups.get_group
    get_group([::AWSConfig], arguments::Dict)
    get_group([::AWSConfig]; GroupName=)

    using AWSCore.Services.resource_groups
    resource_groups([::AWSConfig], "GET", "/groups/{GroupName}", arguments::Dict)
    resource_groups([::AWSConfig], "GET", "/groups/{GroupName}", GroupName=)

# GetGroup Operation

Returns information about a specified resource group.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the resource group.




# Returns

`GetGroupOutput`

# Exceptions

`BadRequestException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException`, `TooManyRequestsException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroup)
"""
@inline get_group(aws::AWSConfig=default_aws_config(); args...) = get_group(aws, args)

@inline get_group(aws::AWSConfig, args) = AWSCore.Services.resource_groups(aws, "GET", "/groups/{GroupName}", args)

@inline get_group(args) = get_group(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroups.get_group_query
    get_group_query([::AWSConfig], arguments::Dict)
    get_group_query([::AWSConfig]; GroupName=)

    using AWSCore.Services.resource_groups
    resource_groups([::AWSConfig], "GET", "/groups/{GroupName}/query", arguments::Dict)
    resource_groups([::AWSConfig], "GET", "/groups/{GroupName}/query", GroupName=)

# GetGroupQuery Operation

Returns the resource query associated with the specified resource group.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the resource group.




# Returns

`GetGroupQueryOutput`

# Exceptions

`BadRequestException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException`, `TooManyRequestsException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupQuery)
"""
@inline get_group_query(aws::AWSConfig=default_aws_config(); args...) = get_group_query(aws, args)

@inline get_group_query(aws::AWSConfig, args) = AWSCore.Services.resource_groups(aws, "GET", "/groups/{GroupName}/query", args)

@inline get_group_query(args) = get_group_query(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroups.get_tags
    get_tags([::AWSConfig], arguments::Dict)
    get_tags([::AWSConfig]; Arn=)

    using AWSCore.Services.resource_groups
    resource_groups([::AWSConfig], "GET", "/resources/{Arn}/tags", arguments::Dict)
    resource_groups([::AWSConfig], "GET", "/resources/{Arn}/tags", Arn=)

# GetTags Operation

Returns a list of tags that are associated with a resource, specified by an ARN.

# Arguments

## `Arn = ::String` -- *Required*
The ARN of the resource for which you want a list of tags. The resource must exist within the account you are using.




# Returns

`GetTagsOutput`

# Exceptions

`BadRequestException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException`, `TooManyRequestsException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetTags)
"""
@inline get_tags(aws::AWSConfig=default_aws_config(); args...) = get_tags(aws, args)

@inline get_tags(aws::AWSConfig, args) = AWSCore.Services.resource_groups(aws, "GET", "/resources/{Arn}/tags", args)

@inline get_tags(args) = get_tags(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroups.list_group_resources
    list_group_resources([::AWSConfig], arguments::Dict)
    list_group_resources([::AWSConfig]; GroupName=, <keyword arguments>)

    using AWSCore.Services.resource_groups
    resource_groups([::AWSConfig], "GET", "/groups/{GroupName}/resource-identifiers", arguments::Dict)
    resource_groups([::AWSConfig], "GET", "/groups/{GroupName}/resource-identifiers", GroupName=, <keyword arguments>)

# ListGroupResources Operation

Returns a list of ARNs of resources that are members of a specified resource group.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the resource group.


## `maxResults = ::Int`
The maximum number of group member ARNs that are returned in a single call by ListGroupResources, in paginated output. By default, this number is 50.


## `nextToken = ::String`
The NextToken value that is returned in a paginated ListGroupResources request. To get the next page of results, run the call again, add the NextToken parameter, and specify the NextToken value.




# Returns

`ListGroupResourcesOutput`

# Exceptions

`UnauthorizedException`, `BadRequestException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException`, `TooManyRequestsException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroupResources)
"""
@inline list_group_resources(aws::AWSConfig=default_aws_config(); args...) = list_group_resources(aws, args)

@inline list_group_resources(aws::AWSConfig, args) = AWSCore.Services.resource_groups(aws, "GET", "/groups/{GroupName}/resource-identifiers", args)

@inline list_group_resources(args) = list_group_resources(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroups.list_groups
    list_groups([::AWSConfig], arguments::Dict)
    list_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.resource_groups
    resource_groups([::AWSConfig], "GET", "/groups", arguments::Dict)
    resource_groups([::AWSConfig], "GET", "/groups", <keyword arguments>)

# ListGroups Operation

Returns a list of existing resource groups in your account.

# Arguments

## `maxResults = ::Int`
The maximum number of resource group results that are returned by ListGroups in paginated output. By default, this number is 50.


## `nextToken = ::String`
The NextToken value that is returned in a paginated `ListGroups` request. To get the next page of results, run the call again, add the NextToken parameter, and specify the NextToken value.




# Returns

`ListGroupsOutput`

# Exceptions

`BadRequestException`, `ForbiddenException`, `MethodNotAllowedException`, `TooManyRequestsException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroups)
"""
@inline list_groups(aws::AWSConfig=default_aws_config(); args...) = list_groups(aws, args)

@inline list_groups(aws::AWSConfig, args) = AWSCore.Services.resource_groups(aws, "GET", "/groups", args)

@inline list_groups(args) = list_groups(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroups.search_resources
    search_resources([::AWSConfig], arguments::Dict)
    search_resources([::AWSConfig]; ResourceQuery=, <keyword arguments>)

    using AWSCore.Services.resource_groups
    resource_groups([::AWSConfig], "POST", "/resources/search", arguments::Dict)
    resource_groups([::AWSConfig], "POST", "/resources/search", ResourceQuery=, <keyword arguments>)

# SearchResources Operation

Returns a list of AWS resource identifiers that matches a specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.

# Arguments

## `ResourceQuery = [ ... ]` -- *Required*
The search query, using the same formats that are supported for resource group definition.
```
 ResourceQuery = [
        "Type" => <required> "TAG_FILTERS_1_0",
        "Query" => <required> ::String
    ]
```

## `MaxResults = ::Int`
The maximum number of group member ARNs returned by `SearchResources` in paginated output. By default, this number is 50.


## `NextToken = ::String`
The NextToken value that is returned in a paginated `SearchResources` request. To get the next page of results, run the call again, add the NextToken parameter, and specify the NextToken value.




# Returns

`SearchResourcesOutput`

# Exceptions

`UnauthorizedException`, `BadRequestException`, `ForbiddenException`, `MethodNotAllowedException`, `TooManyRequestsException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/SearchResources)
"""
@inline search_resources(aws::AWSConfig=default_aws_config(); args...) = search_resources(aws, args)

@inline search_resources(aws::AWSConfig, args) = AWSCore.Services.resource_groups(aws, "POST", "/resources/search", args)

@inline search_resources(args) = search_resources(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroups.tag
    tag([::AWSConfig], arguments::Dict)
    tag([::AWSConfig]; Arn=, Tags=)

    using AWSCore.Services.resource_groups
    resource_groups([::AWSConfig], "PUT", "/resources/{Arn}/tags", arguments::Dict)
    resource_groups([::AWSConfig], "PUT", "/resources/{Arn}/tags", Arn=, Tags=)

# Tag Operation

Adds specified tags to a resource with the specified ARN. Existing tags on a resource are not changed if they are not specified in the request parameters.

# Arguments

## `Arn = ::String` -- *Required*
The ARN of the resource to which to add tags.


## `Tags = ::Dict{String,String}` -- *Required*
The tags to add to the specified resource. A tag is a string-to-string map of key-value pairs. Tag keys can have a maximum character length of 127 characters, and tag values can have a maximum length of 255 characters.




# Returns

`TagOutput`

# Exceptions

`BadRequestException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException`, `TooManyRequestsException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/Tag)
"""
@inline tag(aws::AWSConfig=default_aws_config(); args...) = tag(aws, args)

@inline tag(aws::AWSConfig, args) = AWSCore.Services.resource_groups(aws, "PUT", "/resources/{Arn}/tags", args)

@inline tag(args) = tag(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroups.untag
    untag([::AWSConfig], arguments::Dict)
    untag([::AWSConfig]; Arn=, Keys=)

    using AWSCore.Services.resource_groups
    resource_groups([::AWSConfig], "PATCH", "/resources/{Arn}/tags", arguments::Dict)
    resource_groups([::AWSConfig], "PATCH", "/resources/{Arn}/tags", Arn=, Keys=)

# Untag Operation

Deletes specified tags from a specified resource.

# Arguments

## `Arn = ::String` -- *Required*
The ARN of the resource from which to remove tags.


## `Keys = [::String, ...]` -- *Required*
The keys of the tags to be removed.




# Returns

`UntagOutput`

# Exceptions

`BadRequestException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException`, `TooManyRequestsException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/Untag)
"""
@inline untag(aws::AWSConfig=default_aws_config(); args...) = untag(aws, args)

@inline untag(aws::AWSConfig, args) = AWSCore.Services.resource_groups(aws, "PATCH", "/resources/{Arn}/tags", args)

@inline untag(args) = untag(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroups.update_group
    update_group([::AWSConfig], arguments::Dict)
    update_group([::AWSConfig]; GroupName=, <keyword arguments>)

    using AWSCore.Services.resource_groups
    resource_groups([::AWSConfig], "PUT", "/groups/{GroupName}", arguments::Dict)
    resource_groups([::AWSConfig], "PUT", "/groups/{GroupName}", GroupName=, <keyword arguments>)

# UpdateGroup Operation

Updates an existing group with a new or changed description. You cannot update the name of a resource group.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the resource group for which you want to update its description.


## `Description = ::String`
The description of the resource group. Descriptions can have a maximum of 511 characters, including letters, numbers, hyphens, underscores, punctuation, and spaces.




# Returns

`UpdateGroupOutput`

# Exceptions

`BadRequestException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException`, `TooManyRequestsException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroup)
"""
@inline update_group(aws::AWSConfig=default_aws_config(); args...) = update_group(aws, args)

@inline update_group(aws::AWSConfig, args) = AWSCore.Services.resource_groups(aws, "PUT", "/groups/{GroupName}", args)

@inline update_group(args) = update_group(default_aws_config(), args)


"""
    using AWSSDK.ResourceGroups.update_group_query
    update_group_query([::AWSConfig], arguments::Dict)
    update_group_query([::AWSConfig]; GroupName=, ResourceQuery=)

    using AWSCore.Services.resource_groups
    resource_groups([::AWSConfig], "PUT", "/groups/{GroupName}/query", arguments::Dict)
    resource_groups([::AWSConfig], "PUT", "/groups/{GroupName}/query", GroupName=, ResourceQuery=)

# UpdateGroupQuery Operation

Updates the resource query of a group.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the resource group for which you want to edit the query.


## `ResourceQuery = [ ... ]` -- *Required*
The resource query that determines which AWS resources are members of the resource group.
```
 ResourceQuery = [
        "Type" => <required> "TAG_FILTERS_1_0",
        "Query" => <required> ::String
    ]
```



# Returns

`UpdateGroupQueryOutput`

# Exceptions

`BadRequestException`, `ForbiddenException`, `NotFoundException`, `MethodNotAllowedException`, `TooManyRequestsException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroupQuery)
"""
@inline update_group_query(aws::AWSConfig=default_aws_config(); args...) = update_group_query(aws, args)

@inline update_group_query(aws::AWSConfig, args) = AWSCore.Services.resource_groups(aws, "PUT", "/groups/{GroupName}/query", args)

@inline update_group_query(args) = update_group_query(default_aws_config(), args)




end # module ResourceGroups


#==============================================================================#
# End of file
#==============================================================================#
