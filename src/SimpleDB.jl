#==============================================================================#
# SimpleDB.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/sdb-2009-04-15.normal.json
#==============================================================================#

__precompile__()

module SimpleDB

using AWSCore


"""
    using AWSSDK.SimpleDB.batch_delete_attributes
    batch_delete_attributes([::AWSConfig], arguments::Dict)
    batch_delete_attributes([::AWSConfig]; DomainName=, Item=)

    using AWSCore.Services.sdb
    sdb([::AWSConfig], "BatchDeleteAttributes", arguments::Dict)
    sdb([::AWSConfig], "BatchDeleteAttributes", DomainName=, Item=)

# BatchDeleteAttributes Operation

Performs multiple DeleteAttributes operations in a single call, which reduces round trips and latencies. This enables Amazon SimpleDB to optimize requests, which generally yields better throughput.

**Note**
> If you specify BatchDeleteAttributes without attributes or values, all the attributes for the item are deleted.

BatchDeleteAttributes is an idempotent operation; running it multiple times on the same item or attribute doesn't result in an error.

The BatchDeleteAttributes operation succeeds or fails in its entirety. There are no partial deletes. You can execute multiple BatchDeleteAttributes operations and other operations in parallel. However, large numbers of concurrent BatchDeleteAttributes calls can result in Service Unavailable (503) responses.

This operation is vulnerable to exceeding the maximum URL size when making a REST request using the HTTP GET method.

This operation does not support conditions using Expected.X.Name, Expected.X.Value, or Expected.X.Exists.

The following limitations are enforced for this operation:

*   1 MB request size
*   25 item limit per BatchDeleteAttributes operation

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain in which the attributes are being deleted.


## `Item = [[ ... ], ...]` -- *Required*
A list of items on which to perform the operation.
```
 Item = [[
        "ItemName" => <required> ::String,
        "Attribute" =>  [[
            "Name" => <required> ::String,
            "Value" =>  ::String
        ], ...]
    ], ...]
```



See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sdb-2009-04-15/BatchDeleteAttributes)
"""
@inline batch_delete_attributes(aws::AWSConfig=default_aws_config(); args...) = batch_delete_attributes(aws, args)

@inline batch_delete_attributes(aws::AWSConfig, args) = AWSCore.Services.sdb(aws, "BatchDeleteAttributes", args)

@inline batch_delete_attributes(args) = batch_delete_attributes(default_aws_config(), args)


"""
    using AWSSDK.SimpleDB.batch_put_attributes
    batch_put_attributes([::AWSConfig], arguments::Dict)
    batch_put_attributes([::AWSConfig]; DomainName=, Item=)

    using AWSCore.Services.sdb
    sdb([::AWSConfig], "BatchPutAttributes", arguments::Dict)
    sdb([::AWSConfig], "BatchPutAttributes", DomainName=, Item=)

# BatchPutAttributes Operation

The `BatchPutAttributes` operation creates or replaces attributes within one or more items. By using this operation, the client can perform multiple [PutAttribute](@ref) operation with a single call. This helps yield savings in round trips and latencies, enabling Amazon SimpleDB to optimize requests and generally produce better throughput.

The client may specify the item name with the `Item.X.ItemName` parameter. The client may specify new attributes using a combination of the `Item.X.Attribute.Y.Name` and `Item.X.Attribute.Y.Value` parameters. The client may specify the first attribute for the first item using the parameters `Item.0.Attribute.0.Name` and `Item.0.Attribute.0.Value`, and for the second attribute for the first item by the parameters `Item.0.Attribute.1.Name` and `Item.0.Attribute.1.Value`, and so on.

Attributes are uniquely identified within an item by their name/value combination. For example, a single item can have the attributes `{ "first_name", "first_value" }` and `{ "first_name", "second_value" }`. However, it cannot have two attribute instances where both the `Item.X.Attribute.Y.Name` and `Item.X.Attribute.Y.Value` are the same.

Optionally, the requester can supply the `Replace` parameter for each individual value. Setting this value to `true` will cause the new attribute values to replace the existing attribute values. For example, if an item `I` has the attributes `{ 'a', '1' }, { 'b', '2'}` and `{ 'b', '3' }` and the requester does a BatchPutAttributes of `{'I', 'b', '4' }` with the Replace parameter set to true, the final attributes of the item will be `{ 'a', '1' }` and `{ 'b', '4' }`, replacing the previous values of the 'b' attribute with the new value.

**Note**
> You cannot specify an empty string as an item or as an attribute name. The `BatchPutAttributes` operation succeeds or fails in its entirety. There are no partial puts.

**Important**
> This operation is vulnerable to exceeding the maximum URL size when making a REST request using the HTTP GET method. This operation does not support conditions using `Expected.X.Name`, `Expected.X.Value`, or `Expected.X.Exists`.

You can execute multiple `BatchPutAttributes` operations and other operations in parallel. However, large numbers of concurrent `BatchPutAttributes` calls can result in Service Unavailable (503) responses.

The following limitations are enforced for this operation:

*   256 attribute name-value pairs per item
*   1 MB request size
*   1 billion attributes per domain
*   10 GB of total user data storage per domain
*   25 item limit per `BatchPutAttributes` operation

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain in which the attributes are being stored.


## `Item = [[ ... ], ...]` -- *Required*
A list of items on which to perform the operation.
```
 Item = [[
        "ItemName" => <required> ::String,
        "Attribute" => <required> [[
            "Name" => <required> ::String,
            "Value" => <required> ::String,
            "Replace" =>  ::Bool
        ], ...]
    ], ...]
```



# Exceptions

`DuplicateItemName`, `InvalidParameterValue`, `MissingParameter`, `NoSuchDomain`, `NumberItemAttributesExceeded`, `NumberDomainAttributesExceeded`, `NumberDomainBytesExceeded`, `NumberSubmittedItemsExceeded` or `NumberSubmittedAttributesExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sdb-2009-04-15/BatchPutAttributes)
"""
@inline batch_put_attributes(aws::AWSConfig=default_aws_config(); args...) = batch_put_attributes(aws, args)

@inline batch_put_attributes(aws::AWSConfig, args) = AWSCore.Services.sdb(aws, "BatchPutAttributes", args)

@inline batch_put_attributes(args) = batch_put_attributes(default_aws_config(), args)


"""
    using AWSSDK.SimpleDB.create_domain
    create_domain([::AWSConfig], arguments::Dict)
    create_domain([::AWSConfig]; DomainName=)

    using AWSCore.Services.sdb
    sdb([::AWSConfig], "CreateDomain", arguments::Dict)
    sdb([::AWSConfig], "CreateDomain", DomainName=)

# CreateDomain Operation

The `CreateDomain` operation creates a new domain. The domain name should be unique among the domains associated with the Access Key ID provided in the request. The `CreateDomain` operation may take 10 or more seconds to complete.

**Note**
> CreateDomain is an idempotent operation; running it multiple times using the same domain name will not result in an error response.

The client can create up to 100 domains per account.

If the client requires additional domains, go to [http://aws.amazon.com/contact-us/simpledb-limit-request/](http://aws.amazon.com/contact-us/simpledb-limit-request/).

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain to create. The name can range between 3 and 255 characters and can contain the following characters: a-z, A-Z, 0-9, '_', '-', and '.'.




# Exceptions

`InvalidParameterValue`, `MissingParameter` or `NumberDomainsExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sdb-2009-04-15/CreateDomain)
"""
@inline create_domain(aws::AWSConfig=default_aws_config(); args...) = create_domain(aws, args)

@inline create_domain(aws::AWSConfig, args) = AWSCore.Services.sdb(aws, "CreateDomain", args)

@inline create_domain(args) = create_domain(default_aws_config(), args)


"""
    using AWSSDK.SimpleDB.delete_attributes
    delete_attributes([::AWSConfig], arguments::Dict)
    delete_attributes([::AWSConfig]; DomainName=, ItemName=, <keyword arguments>)

    using AWSCore.Services.sdb
    sdb([::AWSConfig], "DeleteAttributes", arguments::Dict)
    sdb([::AWSConfig], "DeleteAttributes", DomainName=, ItemName=, <keyword arguments>)

# DeleteAttributes Operation

Deletes one or more attributes associated with an item. If all attributes of the item are deleted, the item is deleted.

**Note**
> If `DeleteAttributes` is called without being passed any attributes or values specified, all the attributes for the item are deleted.

`DeleteAttributes` is an idempotent operation; running it multiple times on the same item or attribute does not result in an error response.

Because Amazon SimpleDB makes multiple copies of item data and uses an eventual consistency update model, performing a [GetAttributes](@ref) or [Select](@ref) operation (read) immediately after a `DeleteAttributes` or [PutAttributes](@ref) operation (write) might not return updated item data.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain in which to perform the operation.


## `ItemName = ::String` -- *Required*
The name of the item. Similar to rows on a spreadsheet, items represent individual objects that contain one or more value-attribute pairs.


## `Attribute = [[ ... ], ...]`
A list of Attributes. Similar to columns on a spreadsheet, attributes represent categories of data that can be assigned to items.
```
 Attribute = [[
        "Name" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```

## `Expected = [ ... ]`
The update condition which, if specified, determines whether the specified attributes will be deleted or not. The update condition must be satisfied in order for this request to be processed and the attributes to be deleted.
```
 Expected = [
        "Name" =>  ::String,
        "Value" =>  ::String,
        "Exists" =>  ::Bool
    ]
```



# Exceptions

`InvalidParameterValue`, `MissingParameter`, `NoSuchDomain` or `AttributeDoesNotExist`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sdb-2009-04-15/DeleteAttributes)
"""
@inline delete_attributes(aws::AWSConfig=default_aws_config(); args...) = delete_attributes(aws, args)

@inline delete_attributes(aws::AWSConfig, args) = AWSCore.Services.sdb(aws, "DeleteAttributes", args)

@inline delete_attributes(args) = delete_attributes(default_aws_config(), args)


"""
    using AWSSDK.SimpleDB.delete_domain
    delete_domain([::AWSConfig], arguments::Dict)
    delete_domain([::AWSConfig]; DomainName=)

    using AWSCore.Services.sdb
    sdb([::AWSConfig], "DeleteDomain", arguments::Dict)
    sdb([::AWSConfig], "DeleteDomain", DomainName=)

# DeleteDomain Operation

The `DeleteDomain` operation deletes a domain. Any items (and their attributes) in the domain are deleted as well. The `DeleteDomain` operation might take 10 or more seconds to complete.

**Note**
> Running `DeleteDomain` on a domain that does not exist or running the function multiple times using the same domain name will not result in an error response.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain to delete.




# Exceptions

`MissingParameter`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sdb-2009-04-15/DeleteDomain)
"""
@inline delete_domain(aws::AWSConfig=default_aws_config(); args...) = delete_domain(aws, args)

@inline delete_domain(aws::AWSConfig, args) = AWSCore.Services.sdb(aws, "DeleteDomain", args)

@inline delete_domain(args) = delete_domain(default_aws_config(), args)


"""
    using AWSSDK.SimpleDB.domain_metadata
    domain_metadata([::AWSConfig], arguments::Dict)
    domain_metadata([::AWSConfig]; DomainName=)

    using AWSCore.Services.sdb
    sdb([::AWSConfig], "DomainMetadata", arguments::Dict)
    sdb([::AWSConfig], "DomainMetadata", DomainName=)

# DomainMetadata Operation

Returns information about the domain, including when the domain was created, the number of items and attributes in the domain, and the size of the attribute names and values.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain for which to display the metadata of.




# Returns

`DomainMetadataResult`

# Exceptions

`MissingParameter` or `NoSuchDomain`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sdb-2009-04-15/DomainMetadata)
"""
@inline domain_metadata(aws::AWSConfig=default_aws_config(); args...) = domain_metadata(aws, args)

@inline domain_metadata(aws::AWSConfig, args) = AWSCore.Services.sdb(aws, "DomainMetadata", args)

@inline domain_metadata(args) = domain_metadata(default_aws_config(), args)


"""
    using AWSSDK.SimpleDB.get_attributes
    get_attributes([::AWSConfig], arguments::Dict)
    get_attributes([::AWSConfig]; DomainName=, ItemName=, <keyword arguments>)

    using AWSCore.Services.sdb
    sdb([::AWSConfig], "GetAttributes", arguments::Dict)
    sdb([::AWSConfig], "GetAttributes", DomainName=, ItemName=, <keyword arguments>)

# GetAttributes Operation

Returns all of the attributes associated with the specified item. Optionally, the attributes returned can be limited to one or more attributes by specifying an attribute name parameter.

If the item does not exist on the replica that was accessed for this operation, an empty set is returned. The system does not return an error as it cannot guarantee the item does not exist on other replicas.

**Note**
> If GetAttributes is called without being passed any attribute names, all the attributes for the item are returned.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain in which to perform the operation.


## `ItemName = ::String` -- *Required*
The name of the item.


## `AttributeName = [::String, ...]`
The names of the attributes.


## `ConsistentRead = ::Bool`
Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If `true`, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.




# Returns

`GetAttributesResult`

# Exceptions

`InvalidParameterValue`, `MissingParameter` or `NoSuchDomain`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sdb-2009-04-15/GetAttributes)
"""
@inline get_attributes(aws::AWSConfig=default_aws_config(); args...) = get_attributes(aws, args)

@inline get_attributes(aws::AWSConfig, args) = AWSCore.Services.sdb(aws, "GetAttributes", args)

@inline get_attributes(args) = get_attributes(default_aws_config(), args)


"""
    using AWSSDK.SimpleDB.list_domains
    list_domains([::AWSConfig], arguments::Dict)
    list_domains([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sdb
    sdb([::AWSConfig], "ListDomains", arguments::Dict)
    sdb([::AWSConfig], "ListDomains", <keyword arguments>)

# ListDomains Operation

The `ListDomains` operation lists all domains associated with the Access Key ID. It returns domain names up to the limit set by [MaxNumberOfDomains](#MaxNumberOfDomains). A [NextToken](#NextToken) is returned if there are more than `MaxNumberOfDomains` domains. Calling `ListDomains` successive times with the `NextToken` provided by the operation returns up to `MaxNumberOfDomains` more domain names with each successive operation call.

# Arguments

## `MaxNumberOfDomains = ::Int`
The maximum number of domain names you want returned. The range is 1 to 100. The default setting is 100.


## `NextToken = ::String`
A string informing Amazon SimpleDB where to start the next list of domain names.




# Returns

`ListDomainsResult`

# Exceptions

`InvalidParameterValue` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sdb-2009-04-15/ListDomains)
"""
@inline list_domains(aws::AWSConfig=default_aws_config(); args...) = list_domains(aws, args)

@inline list_domains(aws::AWSConfig, args) = AWSCore.Services.sdb(aws, "ListDomains", args)

@inline list_domains(args) = list_domains(default_aws_config(), args)


"""
    using AWSSDK.SimpleDB.put_attributes
    put_attributes([::AWSConfig], arguments::Dict)
    put_attributes([::AWSConfig]; DomainName=, ItemName=, Attribute=, <keyword arguments>)

    using AWSCore.Services.sdb
    sdb([::AWSConfig], "PutAttributes", arguments::Dict)
    sdb([::AWSConfig], "PutAttributes", DomainName=, ItemName=, Attribute=, <keyword arguments>)

# PutAttributes Operation

The PutAttributes operation creates or replaces attributes in an item. The client may specify new attributes using a combination of the `Attribute.X.Name` and `Attribute.X.Value` parameters. The client specifies the first attribute by the parameters `Attribute.0.Name` and `Attribute.0.Value`, the second attribute by the parameters `Attribute.1.Name` and `Attribute.1.Value`, and so on.

Attributes are uniquely identified in an item by their name/value combination. For example, a single item can have the attributes `{ "first_name", "first_value" }` and `{ "first_name", second_value" }`. However, it cannot have two attribute instances where both the `Attribute.X.Name` and `Attribute.X.Value` are the same.

Optionally, the requestor can supply the `Replace` parameter for each individual attribute. Setting this value to `true` causes the new attribute value to replace the existing attribute value(s). For example, if an item has the attributes `{ 'a', '1' }`, `{ 'b', '2'}` and `{ 'b', '3' }` and the requestor calls `PutAttributes` using the attributes `{ 'b', '4' }` with the `Replace` parameter set to true, the final attributes of the item are changed to `{ 'a', '1' }` and `{ 'b', '4' }`, which replaces the previous values of the 'b' attribute with the new value.

**Note**
> Using `PutAttributes` to replace attribute values that do not exist will not result in an error response.

You cannot specify an empty string as an attribute name.

Because Amazon SimpleDB makes multiple copies of client data and uses an eventual consistency update model, an immediate [GetAttributes](@ref) or [Select](@ref) operation (read) immediately after a [PutAttributes](@ref) or [DeleteAttributes](@ref) operation (write) might not return the updated data.

The following limitations are enforced for this operation:

*   256 total attribute name-value pairs per item
*   One billion attributes per domain
*   10 GB of total user data storage per domain

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain in which to perform the operation.


## `ItemName = ::String` -- *Required*
The name of the item.


## `Attribute = [[ ... ], ...]` -- *Required*
The list of attributes.
```
 Attribute = [[
        "Name" => <required> ::String,
        "Value" => <required> ::String,
        "Replace" =>  ::Bool
    ], ...]
```

## `Expected = [ ... ]`
The update condition which, if specified, determines whether the specified attributes will be updated or not. The update condition must be satisfied in order for this request to be processed and the attributes to be updated.
```
 Expected = [
        "Name" =>  ::String,
        "Value" =>  ::String,
        "Exists" =>  ::Bool
    ]
```



# Exceptions

`InvalidParameterValue`, `MissingParameter`, `NoSuchDomain`, `NumberDomainAttributesExceeded`, `NumberDomainBytesExceeded`, `NumberItemAttributesExceeded` or `AttributeDoesNotExist`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sdb-2009-04-15/PutAttributes)
"""
@inline put_attributes(aws::AWSConfig=default_aws_config(); args...) = put_attributes(aws, args)

@inline put_attributes(aws::AWSConfig, args) = AWSCore.Services.sdb(aws, "PutAttributes", args)

@inline put_attributes(args) = put_attributes(default_aws_config(), args)


"""
    using AWSSDK.SimpleDB.select
    select([::AWSConfig], arguments::Dict)
    select([::AWSConfig]; SelectExpression=, <keyword arguments>)

    using AWSCore.Services.sdb
    sdb([::AWSConfig], "Select", arguments::Dict)
    sdb([::AWSConfig], "Select", SelectExpression=, <keyword arguments>)

# Select Operation

The `Select` operation returns a set of attributes for `ItemNames` that match the select expression. `Select` is similar to the standard SQL SELECT statement.

The total size of the response cannot exceed 1 MB in total size. Amazon SimpleDB automatically adjusts the number of items returned per page to enforce this limit. For example, if the client asks to retrieve 2500 items, but each individual item is 10 kB in size, the system returns 100 items and an appropriate `NextToken` so the client can access the next page of results.

For information on how to construct select expressions, see Using Select to Create Amazon SimpleDB Queries in the Developer Guide.

# Arguments

## `SelectExpression = ::String` -- *Required*
The expression used to query the domain.


## `NextToken = ::String`
A string informing Amazon SimpleDB where to start the next list of `ItemNames`.


## `ConsistentRead = ::Bool`
Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If `true`, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.




# Returns

`SelectResult`

# Exceptions

`InvalidParameterValue`, `InvalidNextToken`, `InvalidNumberPredicates`, `InvalidNumberValueTests`, `InvalidQueryExpression`, `MissingParameter`, `NoSuchDomain`, `RequestTimeout` or `TooManyRequestedAttributes`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sdb-2009-04-15/Select)
"""
@inline select(aws::AWSConfig=default_aws_config(); args...) = select(aws, args)

@inline select(aws::AWSConfig, args) = AWSCore.Services.sdb(aws, "Select", args)

@inline select(args) = select(default_aws_config(), args)




end # module SimpleDB


#==============================================================================#
# End of file
#==============================================================================#
