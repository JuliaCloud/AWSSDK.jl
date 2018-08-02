#==============================================================================#
# ECR.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/ecr-2015-09-21.normal.json
#==============================================================================#

__precompile__()

module ECR

using AWSCore


"""
    using AWSSDK.ECR.batch_check_layer_availability
    batch_check_layer_availability([::AWSConfig], arguments::Dict)
    batch_check_layer_availability([::AWSConfig]; repositoryName=, layerDigests=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "BatchCheckLayerAvailability", arguments::Dict)
    ecr([::AWSConfig], "BatchCheckLayerAvailability", repositoryName=, layerDigests=, <keyword arguments>)

# BatchCheckLayerAvailability Operation

Check the availability of multiple image layers in a specified registry and repository.

**Note**
> This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the `docker` CLI to pull, tag, and push images.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the image layers to check. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository that is associated with the image layers to check.


## `layerDigests = [::String, ...]` -- *Required*
The digests of the image layers to check.




# Returns

`BatchCheckLayerAvailabilityResponse`

# Exceptions

`RepositoryNotFoundException`, `InvalidParameterException` or `ServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchCheckLayerAvailability)
"""
@inline batch_check_layer_availability(aws::AWSConfig=default_aws_config(); args...) = batch_check_layer_availability(aws, args)

@inline batch_check_layer_availability(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "BatchCheckLayerAvailability", args)

@inline batch_check_layer_availability(args) = batch_check_layer_availability(default_aws_config(), args)


"""
    using AWSSDK.ECR.batch_delete_image
    batch_delete_image([::AWSConfig], arguments::Dict)
    batch_delete_image([::AWSConfig]; repositoryName=, imageIds=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "BatchDeleteImage", arguments::Dict)
    ecr([::AWSConfig], "BatchDeleteImage", repositoryName=, imageIds=, <keyword arguments>)

# BatchDeleteImage Operation

Deletes a list of specified images within a specified repository. Images are specified with either `imageTag` or `imageDigest`.

You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository.

You can completely delete an image (and all of its tags) by specifying the image's digest in your request.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the image to delete. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The repository that contains the image to delete.


## `imageIds = [[ ... ], ...]` -- *Required*
A list of image ID references that correspond to images to delete. The format of the `imageIds` reference is `imageTag=tag` or `imageDigest=digest`.
```
 imageIds = [[
        "imageDigest" =>  ::String,
        "imageTag" =>  ::String
    ], ...]
```



# Returns

`BatchDeleteImageResponse`

# Exceptions

`ServerException`, `InvalidParameterException` or `RepositoryNotFoundException`.

# Example: To delete multiple images

This example deletes images with the tags precise and trusty in a repository called ubuntu in the default registry for an account.

Input:
```
[
    "imageIds" => [
        [
            "imageTag" => "precise"
        ]
    ],
    "repositoryName" => "ubuntu"
]
```

Output:
```
Dict(
    "failures" => [

    ],
    "imageIds" => [
        Dict(
            "imageDigest" => "sha256:examplee6d1e504117a17000003d3753086354a38375961f2e665416ef4b1b2f",
            "imageTag" => "precise"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchDeleteImage)
"""
@inline batch_delete_image(aws::AWSConfig=default_aws_config(); args...) = batch_delete_image(aws, args)

@inline batch_delete_image(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "BatchDeleteImage", args)

@inline batch_delete_image(args) = batch_delete_image(default_aws_config(), args)


"""
    using AWSSDK.ECR.batch_get_image
    batch_get_image([::AWSConfig], arguments::Dict)
    batch_get_image([::AWSConfig]; repositoryName=, imageIds=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "BatchGetImage", arguments::Dict)
    ecr([::AWSConfig], "BatchGetImage", repositoryName=, imageIds=, <keyword arguments>)

# BatchGetImage Operation

Gets detailed information for specified images within a specified repository. Images are specified with either `imageTag` or `imageDigest`.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the images to describe. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The repository that contains the images to describe.


## `imageIds = [[ ... ], ...]` -- *Required*
A list of image ID references that correspond to images to describe. The format of the `imageIds` reference is `imageTag=tag` or `imageDigest=digest`.
```
 imageIds = [[
        "imageDigest" =>  ::String,
        "imageTag" =>  ::String
    ], ...]
```

## `acceptedMediaTypes = [::String, ...]`
The accepted media types for the request.

Valid values: `application/vnd.docker.distribution.manifest.v1+json` | `application/vnd.docker.distribution.manifest.v2+json` | `application/vnd.oci.image.manifest.v1+json`




# Returns

`BatchGetImageResponse`

# Exceptions

`ServerException`, `InvalidParameterException` or `RepositoryNotFoundException`.

# Example: To obtain multiple images in a single request

This example obtains information for an image with a specified image digest ID from the repository named ubuntu in the current account.

Input:
```
[
    "imageIds" => [
        [
            "imageTag" => "precise"
        ]
    ],
    "repositoryName" => "ubuntu"
]
```

Output:
```
Dict(
    "failures" => [

    ],
    "images" => [
        Dict(
            "imageId" => Dict(
                "imageDigest" => "sha256:example76bdff6d83a09ba2a818f0d00000063724a9ac3ba5019c56f74ebf42a",
                "imageTag" => "precise"
            ),
            "imageManifest" => "{
 "schemaVersion": 1,
 "name": "ubuntu",
 "tag": "precise",
...",
            "registryId" => "244698725403",
            "repositoryName" => "ubuntu"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchGetImage)
"""
@inline batch_get_image(aws::AWSConfig=default_aws_config(); args...) = batch_get_image(aws, args)

@inline batch_get_image(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "BatchGetImage", args)

@inline batch_get_image(args) = batch_get_image(default_aws_config(), args)


"""
    using AWSSDK.ECR.complete_layer_upload
    complete_layer_upload([::AWSConfig], arguments::Dict)
    complete_layer_upload([::AWSConfig]; repositoryName=, uploadId=, layerDigests=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "CompleteLayerUpload", arguments::Dict)
    ecr([::AWSConfig], "CompleteLayerUpload", repositoryName=, uploadId=, layerDigests=, <keyword arguments>)

# CompleteLayerUpload Operation

Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a `sha256` digest of the image layer for data validation purposes.

**Note**
> This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the `docker` CLI to pull, tag, and push images.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry to which to upload layers. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository to associate with the image layer.


## `uploadId = ::String` -- *Required*
The upload ID from a previous [InitiateLayerUpload](@ref) operation to associate with the image layer.


## `layerDigests = [::String, ...]` -- *Required*
The `sha256` digest of the image layer.




# Returns

`CompleteLayerUploadResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `RepositoryNotFoundException`, `UploadNotFoundException`, `InvalidLayerException`, `LayerPartTooSmallException`, `LayerAlreadyExistsException` or `EmptyUploadException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CompleteLayerUpload)
"""
@inline complete_layer_upload(aws::AWSConfig=default_aws_config(); args...) = complete_layer_upload(aws, args)

@inline complete_layer_upload(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "CompleteLayerUpload", args)

@inline complete_layer_upload(args) = complete_layer_upload(default_aws_config(), args)


"""
    using AWSSDK.ECR.create_repository
    create_repository([::AWSConfig], arguments::Dict)
    create_repository([::AWSConfig]; repositoryName=)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "CreateRepository", arguments::Dict)
    ecr([::AWSConfig], "CreateRepository", repositoryName=)

# CreateRepository Operation

Creates an image repository.

# Arguments

## `repositoryName = ::String` -- *Required*
The name to use for the repository. The repository name may be specified on its own (such as `nginx-web-app`) or it can be prepended with a namespace to group the repository into a category (such as `project-a/nginx-web-app`).




# Returns

`CreateRepositoryResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `RepositoryAlreadyExistsException` or `LimitExceededException`.

# Example: To create a new repository

This example creates a repository called nginx-web-app inside the project-a namespace in the default registry for an account.

Input:
```
[
    "repositoryName" => "project-a/nginx-web-app"
]
```

Output:
```
Dict(
    "repository" => Dict(
        "registryId" => "012345678901",
        "repositoryArn" => "arn:aws:ecr:us-west-2:012345678901:repository/project-a/nginx-web-app",
        "repositoryName" => "project-a/nginx-web-app"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CreateRepository)
"""
@inline create_repository(aws::AWSConfig=default_aws_config(); args...) = create_repository(aws, args)

@inline create_repository(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "CreateRepository", args)

@inline create_repository(args) = create_repository(default_aws_config(), args)


"""
    using AWSSDK.ECR.delete_lifecycle_policy
    delete_lifecycle_policy([::AWSConfig], arguments::Dict)
    delete_lifecycle_policy([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "DeleteLifecyclePolicy", arguments::Dict)
    ecr([::AWSConfig], "DeleteLifecyclePolicy", repositoryName=, <keyword arguments>)

# DeleteLifecyclePolicy Operation

Deletes the specified lifecycle policy.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository.




# Returns

`DeleteLifecyclePolicyResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `RepositoryNotFoundException` or `LifecyclePolicyNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteLifecyclePolicy)
"""
@inline delete_lifecycle_policy(aws::AWSConfig=default_aws_config(); args...) = delete_lifecycle_policy(aws, args)

@inline delete_lifecycle_policy(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "DeleteLifecyclePolicy", args)

@inline delete_lifecycle_policy(args) = delete_lifecycle_policy(default_aws_config(), args)


"""
    using AWSSDK.ECR.delete_repository
    delete_repository([::AWSConfig], arguments::Dict)
    delete_repository([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "DeleteRepository", arguments::Dict)
    ecr([::AWSConfig], "DeleteRepository", repositoryName=, <keyword arguments>)

# DeleteRepository Operation

Deletes an existing image repository. If a repository contains images, you must use the `force` option to delete it.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repository to delete. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository to delete.


## `force = ::Bool`
If a repository contains images, forces the deletion.




# Returns

`DeleteRepositoryResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `RepositoryNotFoundException` or `RepositoryNotEmptyException`.

# Example: To force delete a repository

This example force deletes a repository named ubuntu in the default registry for an account. The force parameter is required if the repository contains images.

Input:
```
[
    "force" => true,
    "repositoryName" => "ubuntu"
]
```

Output:
```
Dict(
    "repository" => Dict(
        "registryId" => "012345678901",
        "repositoryArn" => "arn:aws:ecr:us-west-2:012345678901:repository/ubuntu",
        "repositoryName" => "ubuntu"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRepository)
"""
@inline delete_repository(aws::AWSConfig=default_aws_config(); args...) = delete_repository(aws, args)

@inline delete_repository(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "DeleteRepository", args)

@inline delete_repository(args) = delete_repository(default_aws_config(), args)


"""
    using AWSSDK.ECR.delete_repository_policy
    delete_repository_policy([::AWSConfig], arguments::Dict)
    delete_repository_policy([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "DeleteRepositoryPolicy", arguments::Dict)
    ecr([::AWSConfig], "DeleteRepositoryPolicy", repositoryName=, <keyword arguments>)

# DeleteRepositoryPolicy Operation

Deletes the repository policy from a specified repository.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repository policy to delete. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository that is associated with the repository policy to delete.




# Returns

`DeleteRepositoryPolicyResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `RepositoryNotFoundException` or `RepositoryPolicyNotFoundException`.

# Example: To delete the policy associated with a repository

This example deletes the policy associated with the repository named ubuntu in the current account.

Input:
```
[
    "repositoryName" => "ubuntu"
]
```

Output:
```
Dict(
    "policyText" => "{ ... }",
    "registryId" => "012345678901",
    "repositoryName" => "ubuntu"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRepositoryPolicy)
"""
@inline delete_repository_policy(aws::AWSConfig=default_aws_config(); args...) = delete_repository_policy(aws, args)

@inline delete_repository_policy(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "DeleteRepositoryPolicy", args)

@inline delete_repository_policy(args) = delete_repository_policy(default_aws_config(), args)


"""
    using AWSSDK.ECR.describe_images
    describe_images([::AWSConfig], arguments::Dict)
    describe_images([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "DescribeImages", arguments::Dict)
    ecr([::AWSConfig], "DescribeImages", repositoryName=, <keyword arguments>)

# DescribeImages Operation

Returns metadata about the images in a repository, including image size, image tags, and creation date.

**Note**
> Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the `docker images` command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by [DescribeImages](@ref).

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repository in which to describe images. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.


## `imageIds = [[ ... ], ...]`
The list of image IDs for the requested repository.
```
 imageIds = [[
        "imageDigest" =>  ::String,
        "imageTag" =>  ::String
    ], ...]
```

## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `DescribeImages` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return. This option cannot be used when you specify images with `imageIds`.


## `maxResults = ::Int`
The maximum number of repository results returned by `DescribeImages` in paginated output. When this parameter is used, `DescribeImages` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeImages` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `DescribeImages` returns up to 100 results and a `nextToken` value, if applicable. This option cannot be used when you specify images with `imageIds`.


## `filter = ["tagStatus" =>  "TAGGED" or "UNTAGGED"]`
The filter key and value with which to filter your `DescribeImages` results.




# Returns

`DescribeImagesResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `RepositoryNotFoundException` or `ImageNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImages)
"""
@inline describe_images(aws::AWSConfig=default_aws_config(); args...) = describe_images(aws, args)

@inline describe_images(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "DescribeImages", args)

@inline describe_images(args) = describe_images(default_aws_config(), args)


"""
    using AWSSDK.ECR.describe_repositories
    describe_repositories([::AWSConfig], arguments::Dict)
    describe_repositories([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "DescribeRepositories", arguments::Dict)
    ecr([::AWSConfig], "DescribeRepositories", <keyword arguments>)

# DescribeRepositories Operation

Describes image repositories in a registry.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repositories to be described. If you do not specify a registry, the default registry is assumed.


## `repositoryNames = [::String, ...]`
A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `DescribeRepositories` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return. This option cannot be used when you specify repositories with `repositoryNames`.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.


## `maxResults = ::Int`
The maximum number of repository results returned by `DescribeRepositories` in paginated output. When this parameter is used, `DescribeRepositories` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeRepositories` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `DescribeRepositories` returns up to 100 results and a `nextToken` value, if applicable. This option cannot be used when you specify repositories with `repositoryNames`.




# Returns

`DescribeRepositoriesResponse`

# Exceptions

`ServerException`, `InvalidParameterException` or `RepositoryNotFoundException`.

# Example: To describe all repositories in the current account

The following example obtains a list and description of all repositories in the default registry to which the current user has access.

Input:
```
[

]
```

Output:
```
Dict(
    "repositories" => [
        Dict(
            "registryId" => "012345678910",
            "repositoryArn" => "arn:aws:ecr:us-west-2:012345678910:repository/ubuntu",
            "repositoryName" => "ubuntu"
        ),
        Dict(
            "registryId" => "012345678910",
            "repositoryArn" => "arn:aws:ecr:us-west-2:012345678910:repository/test",
            "repositoryName" => "test"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeRepositories)
"""
@inline describe_repositories(aws::AWSConfig=default_aws_config(); args...) = describe_repositories(aws, args)

@inline describe_repositories(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "DescribeRepositories", args)

@inline describe_repositories(args) = describe_repositories(default_aws_config(), args)


"""
    using AWSSDK.ECR.get_authorization_token
    get_authorization_token([::AWSConfig], arguments::Dict)
    get_authorization_token([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "GetAuthorizationToken", arguments::Dict)
    ecr([::AWSConfig], "GetAuthorizationToken", <keyword arguments>)

# GetAuthorizationToken Operation

Retrieves a token that is valid for a specified registry for 12 hours. This command allows you to use the `docker` CLI to push and pull images with Amazon ECR. If you do not specify a registry, the default registry is assumed.

The `authorizationToken` returned for each registry specified is a base64 encoded string that can be decoded and used in a `docker login` command to authenticate to a registry. The AWS CLI offers an `aws ecr get-login` command that simplifies the login process.

# Arguments

## `registryIds = [::String, ...]`
A list of AWS account IDs that are associated with the registries for which to get authorization tokens. If you do not specify a registry, the default registry is assumed.




# Returns

`GetAuthorizationTokenResponse`

# Exceptions

`ServerException` or `InvalidParameterException`.

# Example: To obtain an authorization token

This example gets an authorization token for your default registry.

Input:
```
[

]
```

Output:
```
Dict(
    "authorizationData" => [
        Dict(
            "authorizationToken" => "QVdTOkN...",
            "expiresAt" => "1470951892432",
            "proxyEndpoint" => "https://012345678901.dkr.ecr.us-west-2.amazonaws.com"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetAuthorizationToken)
"""
@inline get_authorization_token(aws::AWSConfig=default_aws_config(); args...) = get_authorization_token(aws, args)

@inline get_authorization_token(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "GetAuthorizationToken", args)

@inline get_authorization_token(args) = get_authorization_token(default_aws_config(), args)


"""
    using AWSSDK.ECR.get_download_url_for_layer
    get_download_url_for_layer([::AWSConfig], arguments::Dict)
    get_download_url_for_layer([::AWSConfig]; repositoryName=, layerDigest=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "GetDownloadUrlForLayer", arguments::Dict)
    ecr([::AWSConfig], "GetDownloadUrlForLayer", repositoryName=, layerDigest=, <keyword arguments>)

# GetDownloadUrlForLayer Operation

Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.

**Note**
> This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the `docker` CLI to pull, tag, and push images.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the image layer to download. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository that is associated with the image layer to download.


## `layerDigest = ::String` -- *Required*
The digest of the image layer to download.




# Returns

`GetDownloadUrlForLayerResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `LayersNotFoundException`, `LayerInaccessibleException` or `RepositoryNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetDownloadUrlForLayer)
"""
@inline get_download_url_for_layer(aws::AWSConfig=default_aws_config(); args...) = get_download_url_for_layer(aws, args)

@inline get_download_url_for_layer(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "GetDownloadUrlForLayer", args)

@inline get_download_url_for_layer(args) = get_download_url_for_layer(default_aws_config(), args)


"""
    using AWSSDK.ECR.get_lifecycle_policy
    get_lifecycle_policy([::AWSConfig], arguments::Dict)
    get_lifecycle_policy([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "GetLifecyclePolicy", arguments::Dict)
    ecr([::AWSConfig], "GetLifecyclePolicy", repositoryName=, <keyword arguments>)

# GetLifecyclePolicy Operation

Retrieves the specified lifecycle policy.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository.




# Returns

`GetLifecyclePolicyResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `RepositoryNotFoundException` or `LifecyclePolicyNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetLifecyclePolicy)
"""
@inline get_lifecycle_policy(aws::AWSConfig=default_aws_config(); args...) = get_lifecycle_policy(aws, args)

@inline get_lifecycle_policy(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "GetLifecyclePolicy", args)

@inline get_lifecycle_policy(args) = get_lifecycle_policy(default_aws_config(), args)


"""
    using AWSSDK.ECR.get_lifecycle_policy_preview
    get_lifecycle_policy_preview([::AWSConfig], arguments::Dict)
    get_lifecycle_policy_preview([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "GetLifecyclePolicyPreview", arguments::Dict)
    ecr([::AWSConfig], "GetLifecyclePolicyPreview", repositoryName=, <keyword arguments>)

# GetLifecyclePolicyPreview Operation

Retrieves the results of the specified lifecycle policy preview request.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository.


## `imageIds = [[ ... ], ...]`
The list of imageIDs to be included.
```
 imageIds = [[
        "imageDigest" =>  ::String,
        "imageTag" =>  ::String
    ], ...]
```

## `nextToken = ::String`
The `nextToken` value returned from a previous paginated  `GetLifecyclePolicyPreviewRequest` request where `maxResults` was used and the  results exceeded the value of that parameter. Pagination continues from the end of the  previous results that returned the `nextToken` value. This value is  `null` when there are no more results to return. This option cannot be used when you specify images with `imageIds`.


## `maxResults = ::Int`
The maximum number of repository results returned by `GetLifecyclePolicyPreviewRequest` in  paginated output. When this parameter is used, `GetLifecyclePolicyPreviewRequest` only returns  `maxResults` results in a single page along with a `nextToken`  response element. The remaining results of the initial request can be seen by sending  another `GetLifecyclePolicyPreviewRequest` request with the returned `nextToken`  value. This value can be between 1 and 100. If this  parameter is not used, then `GetLifecyclePolicyPreviewRequest` returns up to  100 results and a `nextToken` value, if  applicable. This option cannot be used when you specify images with `imageIds`.


## `filter = ["tagStatus" =>  "TAGGED" or "UNTAGGED"]`
An optional parameter that filters results based on image tag status and all tags, if tagged.




# Returns

`GetLifecyclePolicyPreviewResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `RepositoryNotFoundException` or `LifecyclePolicyPreviewNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetLifecyclePolicyPreview)
"""
@inline get_lifecycle_policy_preview(aws::AWSConfig=default_aws_config(); args...) = get_lifecycle_policy_preview(aws, args)

@inline get_lifecycle_policy_preview(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "GetLifecyclePolicyPreview", args)

@inline get_lifecycle_policy_preview(args) = get_lifecycle_policy_preview(default_aws_config(), args)


"""
    using AWSSDK.ECR.get_repository_policy
    get_repository_policy([::AWSConfig], arguments::Dict)
    get_repository_policy([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "GetRepositoryPolicy", arguments::Dict)
    ecr([::AWSConfig], "GetRepositoryPolicy", repositoryName=, <keyword arguments>)

# GetRepositoryPolicy Operation

Retrieves the repository policy for a specified repository.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository with the policy to retrieve.




# Returns

`GetRepositoryPolicyResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `RepositoryNotFoundException` or `RepositoryPolicyNotFoundException`.

# Example: To get the current policy for a repository

This example obtains the repository policy for the repository named ubuntu.

Input:
```
[
    "repositoryName" => "ubuntu"
]
```

Output:
```
Dict(
    "policyText" => "{
  "Version" : "2008-10-17",
  "Statement" : [ {
    "Sid" : "new statement",
    "Effect" : "Allow",
    "Principal" : {
     "AWS" : "arn:aws:iam::012345678901:role/CodeDeployDemo"
    },
"Action" : [ "ecr:GetDownloadUrlForLayer", "ecr:BatchGetImage", "ecr:BatchCheckLayerAvailability" ]
 } ]
}",
    "registryId" => "012345678901",
    "repositoryName" => "ubuntu"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetRepositoryPolicy)
"""
@inline get_repository_policy(aws::AWSConfig=default_aws_config(); args...) = get_repository_policy(aws, args)

@inline get_repository_policy(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "GetRepositoryPolicy", args)

@inline get_repository_policy(args) = get_repository_policy(default_aws_config(), args)


"""
    using AWSSDK.ECR.initiate_layer_upload
    initiate_layer_upload([::AWSConfig], arguments::Dict)
    initiate_layer_upload([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "InitiateLayerUpload", arguments::Dict)
    ecr([::AWSConfig], "InitiateLayerUpload", repositoryName=, <keyword arguments>)

# InitiateLayerUpload Operation

Notify Amazon ECR that you intend to upload an image layer.

**Note**
> This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the `docker` CLI to pull, tag, and push images.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry to which you intend to upload layers. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository to which you intend to upload layers.




# Returns

`InitiateLayerUploadResponse`

# Exceptions

`ServerException`, `InvalidParameterException` or `RepositoryNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/InitiateLayerUpload)
"""
@inline initiate_layer_upload(aws::AWSConfig=default_aws_config(); args...) = initiate_layer_upload(aws, args)

@inline initiate_layer_upload(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "InitiateLayerUpload", args)

@inline initiate_layer_upload(args) = initiate_layer_upload(default_aws_config(), args)


"""
    using AWSSDK.ECR.list_images
    list_images([::AWSConfig], arguments::Dict)
    list_images([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "ListImages", arguments::Dict)
    ecr([::AWSConfig], "ListImages", repositoryName=, <keyword arguments>)

# ListImages Operation

Lists all the image IDs for a given repository.

You can filter images based on whether or not they are tagged by setting the `tagStatus` parameter to `TAGGED` or `UNTAGGED`. For example, you can filter your results to return only `UNTAGGED` images and then pipe that result to a [BatchDeleteImage](@ref) operation to delete them. Or, you can filter your results to return only `TAGGED` images to list all of the tags in your repository.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repository in which to list images. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The repository with image IDs to be listed.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `ListImages` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.


## `maxResults = ::Int`
The maximum number of image results returned by `ListImages` in paginated output. When this parameter is used, `ListImages` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `ListImages` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `ListImages` returns up to 100 results and a `nextToken` value, if applicable.


## `filter = ["tagStatus" =>  "TAGGED" or "UNTAGGED"]`
The filter key and value with which to filter your `ListImages` results.




# Returns

`ListImagesResponse`

# Exceptions

`ServerException`, `InvalidParameterException` or `RepositoryNotFoundException`.

# Example: To list all images in a repository

This example lists all of the images in the repository named ubuntu in the default registry in the current account. 

Input:
```
[
    "repositoryName" => "ubuntu"
]
```

Output:
```
Dict(
    "imageIds" => [
        Dict(
            "imageDigest" => "sha256:764f63476bdff6d83a09ba2a818f0d35757063724a9ac3ba5019c56f74ebf42a",
            "imageTag" => "precise"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ListImages)
"""
@inline list_images(aws::AWSConfig=default_aws_config(); args...) = list_images(aws, args)

@inline list_images(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "ListImages", args)

@inline list_images(args) = list_images(default_aws_config(), args)


"""
    using AWSSDK.ECR.put_image
    put_image([::AWSConfig], arguments::Dict)
    put_image([::AWSConfig]; repositoryName=, imageManifest=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "PutImage", arguments::Dict)
    ecr([::AWSConfig], "PutImage", repositoryName=, imageManifest=, <keyword arguments>)

# PutImage Operation

Creates or updates the image manifest and tags associated with an image.

**Note**
> This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the `docker` CLI to pull, tag, and push images.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repository in which to put the image. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository in which to put the image.


## `imageManifest = ::String` -- *Required*
The image manifest corresponding to the image to be uploaded.


## `imageTag = ::String`
The tag to associate with the image. This parameter is required for images that use the Docker Image Manifest V2 Schema 2 or OCI formats.




# Returns

`PutImageResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `RepositoryNotFoundException`, `ImageAlreadyExistsException`, `LayersNotFoundException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImage)
"""
@inline put_image(aws::AWSConfig=default_aws_config(); args...) = put_image(aws, args)

@inline put_image(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "PutImage", args)

@inline put_image(args) = put_image(default_aws_config(), args)


"""
    using AWSSDK.ECR.put_lifecycle_policy
    put_lifecycle_policy([::AWSConfig], arguments::Dict)
    put_lifecycle_policy([::AWSConfig]; repositoryName=, lifecyclePolicyText=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "PutLifecyclePolicy", arguments::Dict)
    ecr([::AWSConfig], "PutLifecyclePolicy", repositoryName=, lifecyclePolicyText=, <keyword arguments>)

# PutLifecyclePolicy Operation

Creates or updates a lifecycle policy. For information about lifecycle policy syntax, see [Lifecycle Policy Template](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html).

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repository. If you do  not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository to receive the policy.


## `lifecyclePolicyText = ::String` -- *Required*
The JSON repository policy text to apply to the repository.




# Returns

`PutLifecyclePolicyResponse`

# Exceptions

`ServerException`, `InvalidParameterException` or `RepositoryNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutLifecyclePolicy)
"""
@inline put_lifecycle_policy(aws::AWSConfig=default_aws_config(); args...) = put_lifecycle_policy(aws, args)

@inline put_lifecycle_policy(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "PutLifecyclePolicy", args)

@inline put_lifecycle_policy(args) = put_lifecycle_policy(default_aws_config(), args)


"""
    using AWSSDK.ECR.set_repository_policy
    set_repository_policy([::AWSConfig], arguments::Dict)
    set_repository_policy([::AWSConfig]; repositoryName=, policyText=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "SetRepositoryPolicy", arguments::Dict)
    ecr([::AWSConfig], "SetRepositoryPolicy", repositoryName=, policyText=, <keyword arguments>)

# SetRepositoryPolicy Operation

Applies a repository policy on a specified repository to control access permissions.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository to receive the policy.


## `policyText = ::String` -- *Required*
The JSON repository policy text to apply to the repository.


## `force = ::Bool`
If the policy you are attempting to set on a repository policy would prevent you from setting another policy in the future, you must force the [SetRepositoryPolicy](@ref) operation. This is intended to prevent accidental repository lock outs.




# Returns

`SetRepositoryPolicyResponse`

# Exceptions

`ServerException`, `InvalidParameterException` or `RepositoryNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/SetRepositoryPolicy)
"""
@inline set_repository_policy(aws::AWSConfig=default_aws_config(); args...) = set_repository_policy(aws, args)

@inline set_repository_policy(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "SetRepositoryPolicy", args)

@inline set_repository_policy(args) = set_repository_policy(default_aws_config(), args)


"""
    using AWSSDK.ECR.start_lifecycle_policy_preview
    start_lifecycle_policy_preview([::AWSConfig], arguments::Dict)
    start_lifecycle_policy_preview([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "StartLifecyclePolicyPreview", arguments::Dict)
    ecr([::AWSConfig], "StartLifecyclePolicyPreview", repositoryName=, <keyword arguments>)

# StartLifecyclePolicyPreview Operation

Starts a preview of the specified lifecycle policy. This allows you to see the results before creating the lifecycle policy.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository to be evaluated.


## `lifecyclePolicyText = ::String`
The policy to be evaluated against. If you do not specify a policy, the current policy for the repository is used.




# Returns

`StartLifecyclePolicyPreviewResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `RepositoryNotFoundException`, `LifecyclePolicyNotFoundException` or `LifecyclePolicyPreviewInProgressException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/StartLifecyclePolicyPreview)
"""
@inline start_lifecycle_policy_preview(aws::AWSConfig=default_aws_config(); args...) = start_lifecycle_policy_preview(aws, args)

@inline start_lifecycle_policy_preview(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "StartLifecyclePolicyPreview", args)

@inline start_lifecycle_policy_preview(args) = start_lifecycle_policy_preview(default_aws_config(), args)


"""
    using AWSSDK.ECR.upload_layer_part
    upload_layer_part([::AWSConfig], arguments::Dict)
    upload_layer_part([::AWSConfig]; repositoryName=, uploadId=, partFirstByte=, partLastByte=, layerPartBlob=, <keyword arguments>)

    using AWSCore.Services.ecr
    ecr([::AWSConfig], "UploadLayerPart", arguments::Dict)
    ecr([::AWSConfig], "UploadLayerPart", repositoryName=, uploadId=, partFirstByte=, partLastByte=, layerPartBlob=, <keyword arguments>)

# UploadLayerPart Operation

Uploads an image layer part to Amazon ECR.

**Note**
> This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the `docker` CLI to pull, tag, and push images.

# Arguments

## `registryId = ::String`
The AWS account ID associated with the registry to which you are uploading layer parts. If you do not specify a registry, the default registry is assumed.


## `repositoryName = ::String` -- *Required*
The name of the repository to which you are uploading layer parts.


## `uploadId = ::String` -- *Required*
The upload ID from a previous [InitiateLayerUpload](@ref) operation to associate with the layer part upload.


## `partFirstByte = ::Int` -- *Required*
The integer value of the first byte of the layer part.


## `partLastByte = ::Int` -- *Required*
The integer value of the last byte of the layer part.


## `layerPartBlob = blob` -- *Required*
The base64-encoded layer part payload.




# Returns

`UploadLayerPartResponse`

# Exceptions

`ServerException`, `InvalidParameterException`, `InvalidLayerPartException`, `RepositoryNotFoundException`, `UploadNotFoundException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UploadLayerPart)
"""
@inline upload_layer_part(aws::AWSConfig=default_aws_config(); args...) = upload_layer_part(aws, args)

@inline upload_layer_part(aws::AWSConfig, args) = AWSCore.Services.ecr(aws, "UploadLayerPart", args)

@inline upload_layer_part(args) = upload_layer_part(default_aws_config(), args)




end # module ECR


#==============================================================================#
# End of file
#==============================================================================#
