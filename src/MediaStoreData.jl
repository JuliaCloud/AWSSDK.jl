#==============================================================================#
# MediaStoreData.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/mediastore-data-2017-09-01.normal.json
#==============================================================================#

__precompile__()

module MediaStoreData

using AWSCore


"""
    using AWSSDK.MediaStoreData.delete_object
    delete_object([::AWSConfig], arguments::Dict)
    delete_object([::AWSConfig]; Path=)

    using AWSCore.Services.mediastore_data
    mediastore_data([::AWSConfig], "DELETE", "/{Path+}", arguments::Dict)
    mediastore_data([::AWSConfig], "DELETE", "/{Path+}", Path=)

# DeleteObject Operation

Deletes an object at the specified path.

# Arguments

## `Path = ::String` -- *Required*
The path (including the file name) where the object is stored in the container. Format: <folder name>/<folder name>/<file name>




# Returns

`DeleteObjectResponse`

# Exceptions

`ContainerNotFoundException`, `ObjectNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/DeleteObject)
"""
@inline delete_object(aws::AWSConfig=default_aws_config(); args...) = delete_object(aws, args)

@inline delete_object(aws::AWSConfig, args) = AWSCore.Services.mediastore_data(aws, "DELETE", "/{Path+}", args)

@inline delete_object(args) = delete_object(default_aws_config(), args)


"""
    using AWSSDK.MediaStoreData.describe_object
    describe_object([::AWSConfig], arguments::Dict)
    describe_object([::AWSConfig]; Path=)

    using AWSCore.Services.mediastore_data
    mediastore_data([::AWSConfig], "HEAD", "/{Path+}", arguments::Dict)
    mediastore_data([::AWSConfig], "HEAD", "/{Path+}", Path=)

# DescribeObject Operation

Gets the headers for an object at the specified path.

# Arguments

## `Path = ::String` -- *Required*
The path (including the file name) where the object is stored in the container. Format: <folder name>/<folder name>/<file name>




# Returns

`DescribeObjectResponse`

# Exceptions

`ContainerNotFoundException`, `ObjectNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/DescribeObject)
"""
@inline describe_object(aws::AWSConfig=default_aws_config(); args...) = describe_object(aws, args)

@inline describe_object(aws::AWSConfig, args) = AWSCore.Services.mediastore_data(aws, "HEAD", "/{Path+}", args)

@inline describe_object(args) = describe_object(default_aws_config(), args)


"""
    using AWSSDK.MediaStoreData.get_object
    get_object([::AWSConfig], arguments::Dict)
    get_object([::AWSConfig]; Path=, <keyword arguments>)

    using AWSCore.Services.mediastore_data
    mediastore_data([::AWSConfig], "GET", "/{Path+}", arguments::Dict)
    mediastore_data([::AWSConfig], "GET", "/{Path+}", Path=, <keyword arguments>)

# GetObject Operation

Downloads the object at the specified path.

# Arguments

## `Path = ::String` -- *Required*
The path (including the file name) where the object is stored in the container. Format: <folder name>/<folder name>/<file name>

For example, to upload the file `mlaw.avi` to the folder path `premium\\canada` in the container `movies`, enter the path `premium/canada/mlaw.avi`.

Do not include the container name in this path.

If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing `premium/usa` subfolder. If you specify `premium/canada`, the service creates a `canada` subfolder in the `premium` folder. You then have two subfolders, `usa` and `canada`, in the `premium` folder.

There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore.

For more information about folders and how they exist in a container, see the [AWS Elemental MediaStore User Guide](http://docs.aws.amazon.com/mediastore/latest/ug/).

The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension.


## `*header:* Range = ::String`
The range bytes of an object to retrieve. For more information about the `Range` header, go to [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35).




# Returns

`GetObjectResponse`

# Exceptions

`ContainerNotFoundException`, `ObjectNotFoundException`, `RequestedRangeNotSatisfiableException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/GetObject)
"""
@inline get_object(aws::AWSConfig=default_aws_config(); args...) = get_object(aws, args)

@inline get_object(aws::AWSConfig, args) = AWSCore.Services.mediastore_data(aws, "GET", "/{Path+}", args)

@inline get_object(args) = get_object(default_aws_config(), args)


"""
    using AWSSDK.MediaStoreData.list_items
    list_items([::AWSConfig], arguments::Dict)
    list_items([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediastore_data
    mediastore_data([::AWSConfig], "GET", "/", arguments::Dict)
    mediastore_data([::AWSConfig], "GET", "/", <keyword arguments>)

# ListItems Operation

Provides a list of metadata entries about folders and objects in the specified folder.

# Arguments

## `Path = ::String`
The path in the container from which to retrieve items. Format: <folder name>/<folder name>/<file name>


## `MaxResults = ::Int`
The maximum results to return. The service might return fewer results.


## `NextToken = ::String`
The `NextToken` received in the `ListItemsResponse` for the same container and path. Tokens expire after 15 minutes.




# Returns

`ListItemsResponse`

# Exceptions

`ContainerNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/ListItems)
"""
@inline list_items(aws::AWSConfig=default_aws_config(); args...) = list_items(aws, args)

@inline list_items(aws::AWSConfig, args) = AWSCore.Services.mediastore_data(aws, "GET", "/", args)

@inline list_items(args) = list_items(default_aws_config(), args)


"""
    using AWSSDK.MediaStoreData.put_object
    put_object([::AWSConfig], arguments::Dict)
    put_object([::AWSConfig]; Body=, Path=, <keyword arguments>)

    using AWSCore.Services.mediastore_data
    mediastore_data([::AWSConfig], "PUT", "/{Path+}", arguments::Dict)
    mediastore_data([::AWSConfig], "PUT", "/{Path+}", Body=, Path=, <keyword arguments>)

# PutObject Operation

Uploads an object to the specified path. Object sizes are limited to 10 MB.

# Arguments

## `Body = blob` -- *Required*
The bytes to be stored.


## `Path = ::String` -- *Required*
The path (including the file name) where the object is stored in the container. Format: <folder name>/<folder name>/<file name>

For example, to upload the file `mlaw.avi` to the folder path `premium\\canada` in the container `movies`, enter the path `premium/canada/mlaw.avi`.

Do not include the container name in this path.

If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing `premium/usa` subfolder. If you specify `premium/canada`, the service creates a `canada` subfolder in the `premium` folder. You then have two subfolders, `usa` and `canada`, in the `premium` folder.

There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore.

For more information about folders and how they exist in a container, see the [AWS Elemental MediaStore User Guide](http://docs.aws.amazon.com/mediastore/latest/ug/).

The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension.


## `*header:* Content-Type = ::String`
The content type of the object.


## `*header:* Cache-Control = ::String`
An optional `CacheControl` header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at [https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9).

Headers with a custom user-defined value are also accepted.


## `*header:* x-amz-storage-class = "TEMPORAL"`
Indicates the storage class of a `Put` request. Defaults to high-performance temporal storage class, and objects are persisted into durable storage shortly after being received.




# Returns

`PutObjectResponse`

# Exceptions

`ContainerNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/PutObject)
"""
@inline put_object(aws::AWSConfig=default_aws_config(); args...) = put_object(aws, args)

@inline put_object(aws::AWSConfig, args) = AWSCore.Services.mediastore_data(aws, "PUT", "/{Path+}", args)

@inline put_object(args) = put_object(default_aws_config(), args)




end # module MediaStoreData


#==============================================================================#
# End of file
#==============================================================================#
