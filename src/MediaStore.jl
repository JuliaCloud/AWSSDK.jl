#==============================================================================#
# MediaStore.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/mediastore-2017-09-01.normal.json
#==============================================================================#

__precompile__()

module MediaStore

using AWSCore


"""
    using AWSSDK.MediaStore.create_container
    create_container([::AWSConfig], arguments::Dict)
    create_container([::AWSConfig]; ContainerName=)

    using AWSCore.Services.mediastore
    mediastore([::AWSConfig], "CreateContainer", arguments::Dict)
    mediastore([::AWSConfig], "CreateContainer", ContainerName=)

# CreateContainer Operation

Creates a storage container to hold objects. A container is similar to a bucket in the Amazon S3 service.

# Arguments

## `ContainerName = ::String` -- *Required*
The name for the container. The name must be from 1 to 255 characters. Container names must be unique to your AWS account within a specific region. As an example, you could create a container named `movies` in every region, as long as you don’t have an existing container with that name.




# Returns

`CreateContainerOutput`

# Exceptions

`ContainerInUseException`, `LimitExceededException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/CreateContainer)
"""
@inline create_container(aws::AWSConfig=default_aws_config(); args...) = create_container(aws, args)

@inline create_container(aws::AWSConfig, args) = AWSCore.Services.mediastore(aws, "CreateContainer", args)

@inline create_container(args) = create_container(default_aws_config(), args)


"""
    using AWSSDK.MediaStore.delete_container
    delete_container([::AWSConfig], arguments::Dict)
    delete_container([::AWSConfig]; ContainerName=)

    using AWSCore.Services.mediastore
    mediastore([::AWSConfig], "DeleteContainer", arguments::Dict)
    mediastore([::AWSConfig], "DeleteContainer", ContainerName=)

# DeleteContainer Operation

Deletes the specified container. Before you make a `DeleteContainer` request, delete any objects in the container or in any folders in the container. You can delete only empty containers.

# Arguments

## `ContainerName = ::String` -- *Required*
The name of the container to delete.




# Returns

`DeleteContainerOutput`

# Exceptions

`ContainerInUseException`, `ContainerNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteContainer)
"""
@inline delete_container(aws::AWSConfig=default_aws_config(); args...) = delete_container(aws, args)

@inline delete_container(aws::AWSConfig, args) = AWSCore.Services.mediastore(aws, "DeleteContainer", args)

@inline delete_container(args) = delete_container(default_aws_config(), args)


"""
    using AWSSDK.MediaStore.delete_container_policy
    delete_container_policy([::AWSConfig], arguments::Dict)
    delete_container_policy([::AWSConfig]; ContainerName=)

    using AWSCore.Services.mediastore
    mediastore([::AWSConfig], "DeleteContainerPolicy", arguments::Dict)
    mediastore([::AWSConfig], "DeleteContainerPolicy", ContainerName=)

# DeleteContainerPolicy Operation

Deletes the access policy that is associated with the specified container.

# Arguments

## `ContainerName = ::String` -- *Required*
The name of the container that holds the policy.




# Returns

`DeleteContainerPolicyOutput`

# Exceptions

`ContainerInUseException`, `ContainerNotFoundException`, `PolicyNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteContainerPolicy)
"""
@inline delete_container_policy(aws::AWSConfig=default_aws_config(); args...) = delete_container_policy(aws, args)

@inline delete_container_policy(aws::AWSConfig, args) = AWSCore.Services.mediastore(aws, "DeleteContainerPolicy", args)

@inline delete_container_policy(args) = delete_container_policy(default_aws_config(), args)


"""
    using AWSSDK.MediaStore.delete_cors_policy
    delete_cors_policy([::AWSConfig], arguments::Dict)
    delete_cors_policy([::AWSConfig]; ContainerName=)

    using AWSCore.Services.mediastore
    mediastore([::AWSConfig], "DeleteCorsPolicy", arguments::Dict)
    mediastore([::AWSConfig], "DeleteCorsPolicy", ContainerName=)

# DeleteCorsPolicy Operation

Deletes the cross-origin resource sharing (CORS) configuration information that is set for the container.

To use this operation, you must have permission to perform the `MediaStore:DeleteCorsPolicy` action. The container owner has this permission by default and can grant this permission to others.

# Arguments

## `ContainerName = ::String` -- *Required*
The name of the container to remove the policy from.




# Returns

`DeleteCorsPolicyOutput`

# Exceptions

`ContainerInUseException`, `ContainerNotFoundException`, `CorsPolicyNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteCorsPolicy)
"""
@inline delete_cors_policy(aws::AWSConfig=default_aws_config(); args...) = delete_cors_policy(aws, args)

@inline delete_cors_policy(aws::AWSConfig, args) = AWSCore.Services.mediastore(aws, "DeleteCorsPolicy", args)

@inline delete_cors_policy(args) = delete_cors_policy(default_aws_config(), args)


"""
    using AWSSDK.MediaStore.describe_container
    describe_container([::AWSConfig], arguments::Dict)
    describe_container([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediastore
    mediastore([::AWSConfig], "DescribeContainer", arguments::Dict)
    mediastore([::AWSConfig], "DescribeContainer", <keyword arguments>)

# DescribeContainer Operation

Retrieves the properties of the requested container. This request is commonly used to retrieve the endpoint of a container. An endpoint is a value assigned by the service when a new container is created. A container's endpoint does not change after it has been assigned. The `DescribeContainer` request returns a single `Container` object based on `ContainerName`. To return all `Container` objects that are associated with a specified AWS account, use [ListContainers](@ref).

# Arguments

## `ContainerName = ::String`
The name of the container to query.




# Returns

`DescribeContainerOutput`

# Exceptions

`ContainerNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DescribeContainer)
"""
@inline describe_container(aws::AWSConfig=default_aws_config(); args...) = describe_container(aws, args)

@inline describe_container(aws::AWSConfig, args) = AWSCore.Services.mediastore(aws, "DescribeContainer", args)

@inline describe_container(args) = describe_container(default_aws_config(), args)


"""
    using AWSSDK.MediaStore.get_container_policy
    get_container_policy([::AWSConfig], arguments::Dict)
    get_container_policy([::AWSConfig]; ContainerName=)

    using AWSCore.Services.mediastore
    mediastore([::AWSConfig], "GetContainerPolicy", arguments::Dict)
    mediastore([::AWSConfig], "GetContainerPolicy", ContainerName=)

# GetContainerPolicy Operation

Retrieves the access policy for the specified container. For information about the data that is included in an access policy, see the [AWS Identity and Access Management User Guide](https://aws.amazon.com/documentation/iam/).

# Arguments

## `ContainerName = ::String` -- *Required*
The name of the container.




# Returns

`GetContainerPolicyOutput`

# Exceptions

`ContainerInUseException`, `ContainerNotFoundException`, `PolicyNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetContainerPolicy)
"""
@inline get_container_policy(aws::AWSConfig=default_aws_config(); args...) = get_container_policy(aws, args)

@inline get_container_policy(aws::AWSConfig, args) = AWSCore.Services.mediastore(aws, "GetContainerPolicy", args)

@inline get_container_policy(args) = get_container_policy(default_aws_config(), args)


"""
    using AWSSDK.MediaStore.get_cors_policy
    get_cors_policy([::AWSConfig], arguments::Dict)
    get_cors_policy([::AWSConfig]; ContainerName=)

    using AWSCore.Services.mediastore
    mediastore([::AWSConfig], "GetCorsPolicy", arguments::Dict)
    mediastore([::AWSConfig], "GetCorsPolicy", ContainerName=)

# GetCorsPolicy Operation

Returns the cross-origin resource sharing (CORS) configuration information that is set for the container.

To use this operation, you must have permission to perform the `MediaStore:GetCorsPolicy` action. By default, the container owner has this permission and can grant it to others.

# Arguments

## `ContainerName = ::String` -- *Required*
The name of the container that the policy is assigned to.




# Returns

`GetCorsPolicyOutput`

# Exceptions

`ContainerInUseException`, `ContainerNotFoundException`, `CorsPolicyNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetCorsPolicy)
"""
@inline get_cors_policy(aws::AWSConfig=default_aws_config(); args...) = get_cors_policy(aws, args)

@inline get_cors_policy(aws::AWSConfig, args) = AWSCore.Services.mediastore(aws, "GetCorsPolicy", args)

@inline get_cors_policy(args) = get_cors_policy(default_aws_config(), args)


"""
    using AWSSDK.MediaStore.list_containers
    list_containers([::AWSConfig], arguments::Dict)
    list_containers([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediastore
    mediastore([::AWSConfig], "ListContainers", arguments::Dict)
    mediastore([::AWSConfig], "ListContainers", <keyword arguments>)

# ListContainers Operation

Lists the properties of all containers in AWS Elemental MediaStore.

You can query to receive all the containers in one response. Or you can include the `MaxResults` parameter to receive a limited number of containers in each response. In this case, the response includes a token. To get the next set of containers, send the command again, this time with the `NextToken` parameter (with the returned token as its value). The next set of responses appears, with a token if there are still more containers to receive.

See also [DescribeContainer](@ref), which gets the properties of one container.

# Arguments

## `NextToken = ::String`
Only if you used `MaxResults` in the first command, enter the token (which was included in the previous response) to obtain the next set of containers. This token is included in a response only if there actually are more containers to list.


## `MaxResults = ::Int`
Enter the maximum number of containers in the response. Use from 1 to 255 characters.




# Returns

`ListContainersOutput`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/ListContainers)
"""
@inline list_containers(aws::AWSConfig=default_aws_config(); args...) = list_containers(aws, args)

@inline list_containers(aws::AWSConfig, args) = AWSCore.Services.mediastore(aws, "ListContainers", args)

@inline list_containers(args) = list_containers(default_aws_config(), args)


"""
    using AWSSDK.MediaStore.put_container_policy
    put_container_policy([::AWSConfig], arguments::Dict)
    put_container_policy([::AWSConfig]; ContainerName=, Policy=)

    using AWSCore.Services.mediastore
    mediastore([::AWSConfig], "PutContainerPolicy", arguments::Dict)
    mediastore([::AWSConfig], "PutContainerPolicy", ContainerName=, Policy=)

# PutContainerPolicy Operation

Creates an access policy for the specified container to restrict the users and clients that can access it. For information about the data that is included in an access policy, see the [AWS Identity and Access Management User Guide](https://aws.amazon.com/documentation/iam/).

For this release of the REST API, you can create only one policy for a container. If you enter `PutContainerPolicy` twice, the second command modifies the existing policy.

# Arguments

## `ContainerName = ::String` -- *Required*
The name of the container.


## `Policy = ::String` -- *Required*
The contents of the policy, which includes the following:

*   One `Version` tag

*   One `Statement` tag that contains the standard tags for the policy.




# Returns

`PutContainerPolicyOutput`

# Exceptions

`ContainerNotFoundException`, `ContainerInUseException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutContainerPolicy)
"""
@inline put_container_policy(aws::AWSConfig=default_aws_config(); args...) = put_container_policy(aws, args)

@inline put_container_policy(aws::AWSConfig, args) = AWSCore.Services.mediastore(aws, "PutContainerPolicy", args)

@inline put_container_policy(args) = put_container_policy(default_aws_config(), args)


"""
    using AWSSDK.MediaStore.put_cors_policy
    put_cors_policy([::AWSConfig], arguments::Dict)
    put_cors_policy([::AWSConfig]; ContainerName=, CorsPolicy=)

    using AWSCore.Services.mediastore
    mediastore([::AWSConfig], "PutCorsPolicy", arguments::Dict)
    mediastore([::AWSConfig], "PutCorsPolicy", ContainerName=, CorsPolicy=)

# PutCorsPolicy Operation

Sets the cross-origin resource sharing (CORS) configuration on a container so that the container can service cross-origin requests. For example, you might want to enable a request whose origin is http://www.example.com to access your AWS Elemental MediaStore container at my.example.container.com by using the browser's XMLHttpRequest capability.

To enable CORS on a container, you attach a CORS policy to the container. In the CORS policy, you configure rules that identify origins and the HTTP methods that can be executed on your container. The policy can contain up to 398,000 characters. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed.

# Arguments

## `ContainerName = ::String` -- *Required*
The name of the container that you want to assign the CORS policy to.


## `CorsPolicy = [[ ... ], ...]` -- *Required*
The CORS policy to apply to the container.
```
 CorsPolicy = [[
        "AllowedOrigins" =>  [::String, ...],
        "AllowedMethods" =>  ["PUT", "GET", "DELETE" or "HEAD", ...],
        "AllowedHeaders" =>  [::String, ...],
        "MaxAgeSeconds" =>  ::Int,
        "ExposeHeaders" =>  [::String, ...]
    ], ...]
```



# Returns

`PutCorsPolicyOutput`

# Exceptions

`ContainerNotFoundException`, `ContainerInUseException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutCorsPolicy)
"""
@inline put_cors_policy(aws::AWSConfig=default_aws_config(); args...) = put_cors_policy(aws, args)

@inline put_cors_policy(aws::AWSConfig, args) = AWSCore.Services.mediastore(aws, "PutCorsPolicy", args)

@inline put_cors_policy(args) = put_cors_policy(default_aws_config(), args)




end # module MediaStore


#==============================================================================#
# End of file
#==============================================================================#
