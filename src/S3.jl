#==============================================================================#
# S3.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/s3-2006-03-01.normal.json
#==============================================================================#

__precompile__()

module S3

using AWSCore


"""
    using AWSSDK.S3.abort_multipart_upload
    abort_multipart_upload([::AWSConfig], arguments::Dict)
    abort_multipart_upload([::AWSConfig]; Bucket=, Key=, uploadId=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}/{Key+}", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}/{Key+}", Bucket=, Key=, uploadId=, <keyword arguments>)

# AbortMultipartUpload Operation

Aborts a multipart upload.

To verify that all parts have been removed, so you don't get charged for the part storage, you should call the List Parts operation and ensure the parts list is empty.

# Arguments

## `Bucket = ::String` -- *Required*



## `Key = ::String` -- *Required*



## `uploadId = ::String` -- *Required*



## `*header:* x-amz-request-payer = "requester"`





# Returns

`AbortMultipartUploadOutput`

# Exceptions

`NoSuchUpload`.

# Example: To abort a multipart upload

The following example aborts a multipart upload.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "bigobject",
    "UploadId" => "xadcOB_7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LAT2dUN91cOmrEQHDsP3WA60CEg--"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/AbortMultipartUpload)
"""
@inline abort_multipart_upload(aws::AWSConfig=default_aws_config(); args...) = abort_multipart_upload(aws, args)

@inline abort_multipart_upload(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}/{Key+}", args)

@inline abort_multipart_upload(args) = abort_multipart_upload(default_aws_config(), args)


"""
    using AWSSDK.S3.complete_multipart_upload
    complete_multipart_upload([::AWSConfig], arguments::Dict)
    complete_multipart_upload([::AWSConfig]; Bucket=, Key=, uploadId=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "POST", "/{Bucket}/{Key+}", arguments::Dict)
    s3([::AWSConfig], "POST", "/{Bucket}/{Key+}", Bucket=, Key=, uploadId=, <keyword arguments>)

# CompleteMultipartUpload Operation

Completes a multipart upload by assembling previously uploaded parts.

# Arguments

## `Bucket = ::String` -- *Required*



## `Key = ::String` -- *Required*



## `CompleteMultipartUpload = ["Part" =>  [[ ... ], ...]]`

```
 CompleteMultipartUpload = ["Part" =>  [[
            "ETag" =>  ::String,
            "PartNumber" =>  ::Int
        ], ...]]
```

## `uploadId = ::String` -- *Required*



## `*header:* x-amz-request-payer = "requester"`





# Returns

`CompleteMultipartUploadOutput`

# Example: To complete multipart upload

The following example completes a multipart upload.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "bigobject",
    "MultipartUpload" => [
        "Parts" => [
            [
                "ETag" => ""d8c2eafd90c266e19ab9dcacc479f8af"",
                "PartNumber" => "1"
            ],
            [
                "ETag" => ""d8c2eafd90c266e19ab9dcacc479f8af"",
                "PartNumber" => "2"
            ]
        ]
    ],
    "UploadId" => "7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LAT2dUN91cOmrEQHDsP3WA60CEg--"
]
```

Output:
```
Dict(
    "Bucket" => "acexamplebucket",
    "ETag" => ""4d9031c7644d8081c2829f4ea23c55f7-2"",
    "Key" => "bigobject",
    "Location" => "https://examplebucket.s3.amazonaws.com/bigobject"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/CompleteMultipartUpload)
"""
@inline complete_multipart_upload(aws::AWSConfig=default_aws_config(); args...) = complete_multipart_upload(aws, args)

@inline complete_multipart_upload(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "POST", "/{Bucket}/{Key+}", args)

@inline complete_multipart_upload(args) = complete_multipart_upload(default_aws_config(), args)


"""
    using AWSSDK.S3.copy_object
    copy_object([::AWSConfig], arguments::Dict)
    copy_object([::AWSConfig]; Bucket=, *header:* x-amz-copy-source=, Key=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}/{Key+}", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}/{Key+}", Bucket=, *header:* x-amz-copy-source=, Key=, <keyword arguments>)

# CopyObject Operation

Creates a copy of an object that is already stored in Amazon S3.

# Arguments

## `*header:* x-amz-acl = "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read" or "bucket-owner-full-control"`
The canned ACL to apply to the object.


## `Bucket = ::String` -- *Required*



## `*header:* Cache-Control = ::String`
Specifies caching behavior along the request/reply chain.


## `*header:* Content-Disposition = ::String`
Specifies presentational information for the object.


## `*header:* Content-Encoding = ::String`
Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.


## `*header:* Content-Language = ::String`
The language the content is in.


## `*header:* Content-Type = ::String`
A standard MIME type describing the format of the object data.


## `*header:* x-amz-copy-source = ::String` -- *Required*
The name of the source bucket and key name of the source object, separated by a slash (/). Must be URL-encoded.


## `*header:* x-amz-copy-source-if-match = ::String`
Copies the object if its entity tag (ETag) matches the specified tag.


## `*header:* x-amz-copy-source-if-modified-since = timestamp`
Copies the object if it has been modified since the specified time.


## `*header:* x-amz-copy-source-if-none-match = ::String`
Copies the object if its entity tag (ETag) is different than the specified ETag.


## `*header:* x-amz-copy-source-if-unmodified-since = timestamp`
Copies the object if it hasn't been modified since the specified time.


## `*header:* Expires = timestamp`
The date and time at which the object is no longer cacheable.


## `*header:* x-amz-grant-full-control = ::String`
Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.


## `*header:* x-amz-grant-read = ::String`
Allows grantee to read the object data and its metadata.


## `*header:* x-amz-grant-read-acp = ::String`
Allows grantee to read the object ACL.


## `*header:* x-amz-grant-write-acp = ::String`
Allows grantee to write the ACL for the applicable object.


## `Key = ::String` -- *Required*



## `*header:* x-amz-meta- = ::Dict{String,String}`
A map of metadata to store with the object in S3.


## `*header:* x-amz-metadata-directive = "COPY" or "REPLACE"`
Specifies whether the metadata is copied from the source object or replaced with metadata provided in the request.


## `*header:* x-amz-tagging-directive = "COPY" or "REPLACE"`
Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request.


## `*header:* x-amz-server-side-encryption = "AES256" or "aws:kms"`
The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).


## `*header:* x-amz-storage-class = "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA" or "ONEZONE_IA"`
The type of storage to use for the object. Defaults to 'STANDARD'.


## `*header:* x-amz-website-redirect-location = ::String`
If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.


## `*header:* x-amz-server-side-encryption-customer-algorithm = ::String`
Specifies the algorithm to use to when encrypting the object (e.g., AES256).


## `*header:* x-amz-server-side-encryption-customer-key = blob`
Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.


## `*header:* x-amz-server-side-encryption-customer-key-MD5 = ::String`
Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.


## `*header:* x-amz-server-side-encryption-aws-kms-key-id = ::String`
Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version


## `*header:* x-amz-copy-source-server-side-encryption-customer-algorithm = ::String`
Specifies the algorithm to use when decrypting the source object (e.g., AES256).


## `*header:* x-amz-copy-source-server-side-encryption-customer-key = blob`
Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.


## `*header:* x-amz-copy-source-server-side-encryption-customer-key-MD5 = ::String`
Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.


## `*header:* x-amz-request-payer = "requester"`



## `*header:* x-amz-tagging = ::String`
The tag-set for the object destination object this value must be used in conjunction with the TaggingDirective. The tag-set must be encoded as URL Query parameters




# Returns

`CopyObjectOutput`

# Exceptions

`ObjectNotInActiveTierError`.

# Example: To copy an object

The following example copies an object from one bucket to another.

Input:
```
[
    "Bucket" => "destinationbucket",
    "CopySource" => "/sourcebucket/HappyFacejpg",
    "Key" => "HappyFaceCopyjpg"
]
```

Output:
```
Dict(
    "CopyObjectResult" => Dict(
        "ETag" => ""6805f2cfc46c0f04559748bb039d69ae"",
        "LastModified" => "2016-12-15T17:38:53.000Z"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/CopyObject)
"""
@inline copy_object(aws::AWSConfig=default_aws_config(); args...) = copy_object(aws, args)

@inline copy_object(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}/{Key+}", args)

@inline copy_object(args) = copy_object(default_aws_config(), args)


"""
    using AWSSDK.S3.create_bucket
    create_bucket([::AWSConfig], arguments::Dict)
    create_bucket([::AWSConfig]; Bucket=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}", Bucket=, <keyword arguments>)

# CreateBucket Operation

Creates a new bucket.

# Arguments

## `*header:* x-amz-acl = "private", "public-read", "public-read-write" or "authenticated-read"`
The canned ACL to apply to the bucket.


## `Bucket = ::String` -- *Required*



## `CreateBucketConfiguration = ["LocationConstraint" =>  "EU", "eu-west-1", "us-west-1", "us-west-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1", "cn-north-1" or "eu-central-1"]`



## `*header:* x-amz-grant-full-control = ::String`
Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.


## `*header:* x-amz-grant-read = ::String`
Allows grantee to list the objects in the bucket.


## `*header:* x-amz-grant-read-acp = ::String`
Allows grantee to read the bucket ACL.


## `*header:* x-amz-grant-write = ::String`
Allows grantee to create, overwrite, and delete any object in the bucket.


## `*header:* x-amz-grant-write-acp = ::String`
Allows grantee to write the ACL for the applicable bucket.




# Returns

`CreateBucketOutput`

# Exceptions

`BucketAlreadyExists` or `BucketAlreadyOwnedByYou`.

# Example: To create a bucket in a specific region

The following example creates a bucket. The request specifies an AWS region where to create the bucket.

Input:
```
[
    "Bucket" => "examplebucket",
    "CreateBucketConfiguration" => [
        "LocationConstraint" => "eu-west-1"
    ]
]
```

Output:
```
Dict(
    "Location" => "http://examplebucket.s3.amazonaws.com/"
)
```

# Example: To create a bucket 

The following example creates a bucket.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "Location" => "/examplebucket"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/CreateBucket)
"""
@inline create_bucket(aws::AWSConfig=default_aws_config(); args...) = create_bucket(aws, args)

@inline create_bucket(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}", args)

@inline create_bucket(args) = create_bucket(default_aws_config(), args)


"""
    using AWSSDK.S3.create_multipart_upload
    create_multipart_upload([::AWSConfig], arguments::Dict)
    create_multipart_upload([::AWSConfig]; Bucket=, Key=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "POST", "/{Bucket}/{Key+}?uploads", arguments::Dict)
    s3([::AWSConfig], "POST", "/{Bucket}/{Key+}?uploads", Bucket=, Key=, <keyword arguments>)

# CreateMultipartUpload Operation

Initiates a multipart upload and returns an upload ID.

**Note:** After you initiate multipart upload and upload one or more parts, you must either complete or abort multipart upload in order to stop getting charged for storage of the uploaded parts. Only after you either complete or abort multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts storage.

# Arguments

## `*header:* x-amz-acl = "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read" or "bucket-owner-full-control"`
The canned ACL to apply to the object.


## `Bucket = ::String` -- *Required*



## `*header:* Cache-Control = ::String`
Specifies caching behavior along the request/reply chain.


## `*header:* Content-Disposition = ::String`
Specifies presentational information for the object.


## `*header:* Content-Encoding = ::String`
Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.


## `*header:* Content-Language = ::String`
The language the content is in.


## `*header:* Content-Type = ::String`
A standard MIME type describing the format of the object data.


## `*header:* Expires = timestamp`
The date and time at which the object is no longer cacheable.


## `*header:* x-amz-grant-full-control = ::String`
Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.


## `*header:* x-amz-grant-read = ::String`
Allows grantee to read the object data and its metadata.


## `*header:* x-amz-grant-read-acp = ::String`
Allows grantee to read the object ACL.


## `*header:* x-amz-grant-write-acp = ::String`
Allows grantee to write the ACL for the applicable object.


## `Key = ::String` -- *Required*



## `*header:* x-amz-meta- = ::Dict{String,String}`
A map of metadata to store with the object in S3.


## `*header:* x-amz-server-side-encryption = "AES256" or "aws:kms"`
The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).


## `*header:* x-amz-storage-class = "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA" or "ONEZONE_IA"`
The type of storage to use for the object. Defaults to 'STANDARD'.


## `*header:* x-amz-website-redirect-location = ::String`
If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.


## `*header:* x-amz-server-side-encryption-customer-algorithm = ::String`
Specifies the algorithm to use to when encrypting the object (e.g., AES256).


## `*header:* x-amz-server-side-encryption-customer-key = blob`
Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.


## `*header:* x-amz-server-side-encryption-customer-key-MD5 = ::String`
Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.


## `*header:* x-amz-server-side-encryption-aws-kms-key-id = ::String`
Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version


## `*header:* x-amz-request-payer = "requester"`



## `*header:* x-amz-tagging = ::String`
The tag-set for the object. The tag-set must be encoded as URL Query parameters




# Returns

`CreateMultipartUploadOutput`

# Example: To initiate a multipart upload

The following example initiates a multipart upload.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "largeobject"
]
```

Output:
```
Dict(
    "Bucket" => "examplebucket",
    "Key" => "largeobject",
    "UploadId" => "ibZBv_75gd9r8lH_gqXatLdxMVpAlj6ZQjEs.OwyF3953YdwbcQnMA2BLGn8Lx12fQNICtMw5KyteFeHw.Sjng--"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/CreateMultipartUpload)
"""
@inline create_multipart_upload(aws::AWSConfig=default_aws_config(); args...) = create_multipart_upload(aws, args)

@inline create_multipart_upload(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "POST", "/{Bucket}/{Key+}?uploads", args)

@inline create_multipart_upload(args) = create_multipart_upload(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_bucket
    delete_bucket([::AWSConfig], arguments::Dict)
    delete_bucket([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}", Bucket=)

# DeleteBucket Operation

Deletes the bucket. All objects (including all object versions and Delete Markers) in the bucket must be deleted before the bucket itself can be deleted.

# Arguments

## `Bucket = ::String` -- *Required*





# Example: To delete a bucket

The following example deletes the specified bucket.

Input:
```
[
    "Bucket" => "forrandall2"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteBucket)
"""
@inline delete_bucket(aws::AWSConfig=default_aws_config(); args...) = delete_bucket(aws, args)

@inline delete_bucket(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}", args)

@inline delete_bucket(args) = delete_bucket(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_bucket_analytics_configuration
    delete_bucket_analytics_configuration([::AWSConfig], arguments::Dict)
    delete_bucket_analytics_configuration([::AWSConfig]; Bucket=, id=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}?analytics", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}?analytics", Bucket=, id=)

# DeleteBucketAnalyticsConfiguration Operation

Deletes an analytics configuration for the bucket (specified by the analytics configuration ID).

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket from which an analytics configuration is deleted.


## `id = ::String` -- *Required*
The identifier used to represent an analytics configuration.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteBucketAnalyticsConfiguration)
"""
@inline delete_bucket_analytics_configuration(aws::AWSConfig=default_aws_config(); args...) = delete_bucket_analytics_configuration(aws, args)

@inline delete_bucket_analytics_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}?analytics", args)

@inline delete_bucket_analytics_configuration(args) = delete_bucket_analytics_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_bucket_cors
    delete_bucket_cors([::AWSConfig], arguments::Dict)
    delete_bucket_cors([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}?cors", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}?cors", Bucket=)

# DeleteBucketCors Operation

Deletes the cors configuration information set for the bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Example: To delete cors configuration on a bucket.

The following example deletes CORS configuration on a bucket.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteBucketCors)
"""
@inline delete_bucket_cors(aws::AWSConfig=default_aws_config(); args...) = delete_bucket_cors(aws, args)

@inline delete_bucket_cors(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}?cors", args)

@inline delete_bucket_cors(args) = delete_bucket_cors(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_bucket_encryption
    delete_bucket_encryption([::AWSConfig], arguments::Dict)
    delete_bucket_encryption([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}?encryption", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}?encryption", Bucket=)

# DeleteBucketEncryption Operation

Deletes the server-side encryption configuration from the bucket.

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket containing the server-side encryption configuration to delete.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteBucketEncryption)
"""
@inline delete_bucket_encryption(aws::AWSConfig=default_aws_config(); args...) = delete_bucket_encryption(aws, args)

@inline delete_bucket_encryption(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}?encryption", args)

@inline delete_bucket_encryption(args) = delete_bucket_encryption(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_bucket_inventory_configuration
    delete_bucket_inventory_configuration([::AWSConfig], arguments::Dict)
    delete_bucket_inventory_configuration([::AWSConfig]; Bucket=, id=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}?inventory", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}?inventory", Bucket=, id=)

# DeleteBucketInventoryConfiguration Operation

Deletes an inventory configuration (identified by the inventory ID) from the bucket.

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket containing the inventory configuration to delete.


## `id = ::String` -- *Required*
The ID used to identify the inventory configuration.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteBucketInventoryConfiguration)
"""
@inline delete_bucket_inventory_configuration(aws::AWSConfig=default_aws_config(); args...) = delete_bucket_inventory_configuration(aws, args)

@inline delete_bucket_inventory_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}?inventory", args)

@inline delete_bucket_inventory_configuration(args) = delete_bucket_inventory_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_bucket_lifecycle
    delete_bucket_lifecycle([::AWSConfig], arguments::Dict)
    delete_bucket_lifecycle([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}?lifecycle", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}?lifecycle", Bucket=)

# DeleteBucketLifecycle Operation

Deletes the lifecycle configuration from the bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Example: To delete lifecycle configuration on a bucket.

The following example deletes lifecycle configuration on a bucket.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteBucketLifecycle)
"""
@inline delete_bucket_lifecycle(aws::AWSConfig=default_aws_config(); args...) = delete_bucket_lifecycle(aws, args)

@inline delete_bucket_lifecycle(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}?lifecycle", args)

@inline delete_bucket_lifecycle(args) = delete_bucket_lifecycle(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_bucket_metrics_configuration
    delete_bucket_metrics_configuration([::AWSConfig], arguments::Dict)
    delete_bucket_metrics_configuration([::AWSConfig]; Bucket=, id=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}?metrics", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}?metrics", Bucket=, id=)

# DeleteBucketMetricsConfiguration Operation

Deletes a metrics configuration (specified by the metrics configuration ID) from the bucket.

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket containing the metrics configuration to delete.


## `id = ::String` -- *Required*
The ID used to identify the metrics configuration.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteBucketMetricsConfiguration)
"""
@inline delete_bucket_metrics_configuration(aws::AWSConfig=default_aws_config(); args...) = delete_bucket_metrics_configuration(aws, args)

@inline delete_bucket_metrics_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}?metrics", args)

@inline delete_bucket_metrics_configuration(args) = delete_bucket_metrics_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_bucket_policy
    delete_bucket_policy([::AWSConfig], arguments::Dict)
    delete_bucket_policy([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}?policy", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}?policy", Bucket=)

# DeleteBucketPolicy Operation

Deletes the policy from the bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Example: To delete bucket policy

The following example deletes bucket policy on the specified bucket.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteBucketPolicy)
"""
@inline delete_bucket_policy(aws::AWSConfig=default_aws_config(); args...) = delete_bucket_policy(aws, args)

@inline delete_bucket_policy(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}?policy", args)

@inline delete_bucket_policy(args) = delete_bucket_policy(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_bucket_replication
    delete_bucket_replication([::AWSConfig], arguments::Dict)
    delete_bucket_replication([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}?replication", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}?replication", Bucket=)

# DeleteBucketReplication Operation

Deletes the replication configuration from the bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Example: To delete bucket replication configuration

The following example deletes replication configuration set on bucket.

Input:
```
[
    "Bucket" => "example"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteBucketReplication)
"""
@inline delete_bucket_replication(aws::AWSConfig=default_aws_config(); args...) = delete_bucket_replication(aws, args)

@inline delete_bucket_replication(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}?replication", args)

@inline delete_bucket_replication(args) = delete_bucket_replication(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_bucket_tagging
    delete_bucket_tagging([::AWSConfig], arguments::Dict)
    delete_bucket_tagging([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}?tagging", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}?tagging", Bucket=)

# DeleteBucketTagging Operation

Deletes the tags from the bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Example: To delete bucket tags

The following example deletes bucket tags.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteBucketTagging)
"""
@inline delete_bucket_tagging(aws::AWSConfig=default_aws_config(); args...) = delete_bucket_tagging(aws, args)

@inline delete_bucket_tagging(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}?tagging", args)

@inline delete_bucket_tagging(args) = delete_bucket_tagging(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_bucket_website
    delete_bucket_website([::AWSConfig], arguments::Dict)
    delete_bucket_website([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}?website", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}?website", Bucket=)

# DeleteBucketWebsite Operation

This operation removes the website configuration from the bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Example: To delete bucket website configuration

The following example deletes bucket website configuration.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteBucketWebsite)
"""
@inline delete_bucket_website(aws::AWSConfig=default_aws_config(); args...) = delete_bucket_website(aws, args)

@inline delete_bucket_website(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}?website", args)

@inline delete_bucket_website(args) = delete_bucket_website(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_object
    delete_object([::AWSConfig], arguments::Dict)
    delete_object([::AWSConfig]; Bucket=, Key=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}/{Key+}", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}/{Key+}", Bucket=, Key=, <keyword arguments>)

# DeleteObject Operation

Removes the null version (if there is one) of an object and inserts a delete marker, which becomes the latest version of the object. If there isn't a null version, Amazon S3 does not remove any objects.

# Arguments

## `Bucket = ::String` -- *Required*



## `Key = ::String` -- *Required*



## `*header:* x-amz-mfa = ::String`
The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.


## `versionId = ::String`
VersionId used to reference a specific version of the object.


## `*header:* x-amz-request-payer = "requester"`





# Returns

`DeleteObjectOutput`

# Example: To delete an object (from a non-versioned bucket)

The following example deletes an object from a non-versioned bucket.

Input:
```
[
    "Bucket" => "ExampleBucket",
    "Key" => "HappyFace.jpg"
]
```

# Example: To delete an object

The following example deletes an object from an S3 bucket.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "objectkey.jpg"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteObject)
"""
@inline delete_object(aws::AWSConfig=default_aws_config(); args...) = delete_object(aws, args)

@inline delete_object(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}/{Key+}", args)

@inline delete_object(args) = delete_object(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_object_tagging
    delete_object_tagging([::AWSConfig], arguments::Dict)
    delete_object_tagging([::AWSConfig]; Bucket=, Key=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "DELETE", "/{Bucket}/{Key+}?tagging", arguments::Dict)
    s3([::AWSConfig], "DELETE", "/{Bucket}/{Key+}?tagging", Bucket=, Key=, <keyword arguments>)

# DeleteObjectTagging Operation

Removes the tag-set from an existing object.

# Arguments

## `Bucket = ::String` -- *Required*



## `Key = ::String` -- *Required*



## `versionId = ::String`
The versionId of the object that the tag-set will be removed from.




# Returns

`DeleteObjectTaggingOutput`

# Example: To remove tag set from an object version

The following example removes tag set associated with the specified object version. The request specifies both the object key and object version.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "HappyFace.jpg",
    "VersionId" => "ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI"
]
```

Output:
```
Dict(
    "VersionId" => "ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI"
)
```

# Example: To remove tag set from an object

The following example removes tag set associated with the specified object. If the bucket is versioning enabled, the operation removes tag set from the latest object version.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "HappyFace.jpg"
]
```

Output:
```
Dict(
    "VersionId" => "null"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteObjectTagging)
"""
@inline delete_object_tagging(aws::AWSConfig=default_aws_config(); args...) = delete_object_tagging(aws, args)

@inline delete_object_tagging(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "DELETE", "/{Bucket}/{Key+}?tagging", args)

@inline delete_object_tagging(args) = delete_object_tagging(default_aws_config(), args)


"""
    using AWSSDK.S3.delete_objects
    delete_objects([::AWSConfig], arguments::Dict)
    delete_objects([::AWSConfig]; Bucket=, Delete=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "POST", "/{Bucket}?delete", arguments::Dict)
    s3([::AWSConfig], "POST", "/{Bucket}?delete", Bucket=, Delete=, <keyword arguments>)

# DeleteObjects Operation

This operation enables you to delete multiple objects from a bucket using a single HTTP request. You may specify up to 1000 keys.

# Arguments

## `Bucket = ::String` -- *Required*



## `Delete = [ ... ]` -- *Required*

```
 Delete = [
        "Object" => <required> [[
            "Key" => <required> ::String,
            "VersionId" =>  ::String
        ], ...],
        "Quiet" =>  ::Bool
    ]
```

## `*header:* x-amz-mfa = ::String`
The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.


## `*header:* x-amz-request-payer = "requester"`





# Returns

`DeleteObjectsOutput`

# Example: To delete multiple object versions from a versioned bucket

The following example deletes objects from a bucket. The request specifies object versions. S3 deletes specific object versions and returns the key and versions of deleted objects in the response.

Input:
```
[
    "Bucket" => "examplebucket",
    "Delete" => [
        "Objects" => [
            [
                "Key" => "HappyFace.jpg",
                "VersionId" => "2LWg7lQLnY41.maGB5Z6SWW.dcq0vx7b"
            ],
            [
                "Key" => "HappyFace.jpg",
                "VersionId" => "yoz3HB.ZhCS_tKVEmIOr7qYyyAaZSKVd"
            ]
        ],
        "Quiet" => false
    ]
]
```

Output:
```
Dict(
    "Deleted" => [
        Dict(
            "Key" => "HappyFace.jpg",
            "VersionId" => "yoz3HB.ZhCS_tKVEmIOr7qYyyAaZSKVd"
        ),
        Dict(
            "Key" => "HappyFace.jpg",
            "VersionId" => "2LWg7lQLnY41.maGB5Z6SWW.dcq0vx7b"
        )
    ]
)
```

# Example: To delete multiple objects from a versioned bucket

The following example deletes objects from a bucket. The bucket is versioned, and the request does not specify the object version to delete. In this case, all versions remain in the bucket and S3 adds a delete marker.

Input:
```
[
    "Bucket" => "examplebucket",
    "Delete" => [
        "Objects" => [
            [
                "Key" => "objectkey1"
            ],
            [
                "Key" => "objectkey2"
            ]
        ],
        "Quiet" => false
    ]
]
```

Output:
```
Dict(
    "Deleted" => [
        Dict(
            "DeleteMarker" => "true",
            "DeleteMarkerVersionId" => "A._w1z6EFiCF5uhtQMDal9JDkID9tQ7F",
            "Key" => "objectkey1"
        ),
        Dict(
            "DeleteMarker" => "true",
            "DeleteMarkerVersionId" => "iOd_ORxhkKe_e8G8_oSGxt2PjsCZKlkt",
            "Key" => "objectkey2"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/DeleteObjects)
"""
@inline delete_objects(aws::AWSConfig=default_aws_config(); args...) = delete_objects(aws, args)

@inline delete_objects(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "POST", "/{Bucket}?delete", args)

@inline delete_objects(args) = delete_objects(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_accelerate_configuration
    get_bucket_accelerate_configuration([::AWSConfig], arguments::Dict)
    get_bucket_accelerate_configuration([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?accelerate", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?accelerate", Bucket=)

# GetBucketAccelerateConfiguration Operation

Returns the accelerate configuration of a bucket.

# Arguments

## `Bucket = ::String` -- *Required*
Name of the bucket for which the accelerate configuration is retrieved.




# Returns

`GetBucketAccelerateConfigurationOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketAccelerateConfiguration)
"""
@inline get_bucket_accelerate_configuration(aws::AWSConfig=default_aws_config(); args...) = get_bucket_accelerate_configuration(aws, args)

@inline get_bucket_accelerate_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?accelerate", args)

@inline get_bucket_accelerate_configuration(args) = get_bucket_accelerate_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_acl
    get_bucket_acl([::AWSConfig], arguments::Dict)
    get_bucket_acl([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?acl", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?acl", Bucket=)

# GetBucketAcl Operation

Gets the access control policy for the bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Returns

`GetBucketAclOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketAcl)
"""
@inline get_bucket_acl(aws::AWSConfig=default_aws_config(); args...) = get_bucket_acl(aws, args)

@inline get_bucket_acl(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?acl", args)

@inline get_bucket_acl(args) = get_bucket_acl(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_analytics_configuration
    get_bucket_analytics_configuration([::AWSConfig], arguments::Dict)
    get_bucket_analytics_configuration([::AWSConfig]; Bucket=, id=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?analytics", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?analytics", Bucket=, id=)

# GetBucketAnalyticsConfiguration Operation

Gets an analytics configuration for the bucket (specified by the analytics configuration ID).

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket from which an analytics configuration is retrieved.


## `id = ::String` -- *Required*
The identifier used to represent an analytics configuration.




# Returns

`GetBucketAnalyticsConfigurationOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketAnalyticsConfiguration)
"""
@inline get_bucket_analytics_configuration(aws::AWSConfig=default_aws_config(); args...) = get_bucket_analytics_configuration(aws, args)

@inline get_bucket_analytics_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?analytics", args)

@inline get_bucket_analytics_configuration(args) = get_bucket_analytics_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_cors
    get_bucket_cors([::AWSConfig], arguments::Dict)
    get_bucket_cors([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?cors", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?cors", Bucket=)

# GetBucketCors Operation

Returns the cors configuration for the bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Returns

`GetBucketCorsOutput`

# Example: To get cors configuration set on a bucket

The following example returns cross-origin resource sharing (CORS) configuration set on a bucket.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "CORSRules" => [
        Dict(
            "AllowedHeaders" => [
                "Authorization"
            ],
            "AllowedMethods" => [
                "GET"
            ],
            "AllowedOrigins" => [
                "*"
            ],
            "MaxAgeSeconds" => 3000
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketCors)
"""
@inline get_bucket_cors(aws::AWSConfig=default_aws_config(); args...) = get_bucket_cors(aws, args)

@inline get_bucket_cors(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?cors", args)

@inline get_bucket_cors(args) = get_bucket_cors(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_encryption
    get_bucket_encryption([::AWSConfig], arguments::Dict)
    get_bucket_encryption([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?encryption", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?encryption", Bucket=)

# GetBucketEncryption Operation

Returns the server-side encryption configuration of a bucket.

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket from which the server-side encryption configuration is retrieved.




# Returns

`GetBucketEncryptionOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketEncryption)
"""
@inline get_bucket_encryption(aws::AWSConfig=default_aws_config(); args...) = get_bucket_encryption(aws, args)

@inline get_bucket_encryption(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?encryption", args)

@inline get_bucket_encryption(args) = get_bucket_encryption(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_inventory_configuration
    get_bucket_inventory_configuration([::AWSConfig], arguments::Dict)
    get_bucket_inventory_configuration([::AWSConfig]; Bucket=, id=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?inventory", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?inventory", Bucket=, id=)

# GetBucketInventoryConfiguration Operation

Returns an inventory configuration (identified by the inventory ID) from the bucket.

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket containing the inventory configuration to retrieve.


## `id = ::String` -- *Required*
The ID used to identify the inventory configuration.




# Returns

`GetBucketInventoryConfigurationOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketInventoryConfiguration)
"""
@inline get_bucket_inventory_configuration(aws::AWSConfig=default_aws_config(); args...) = get_bucket_inventory_configuration(aws, args)

@inline get_bucket_inventory_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?inventory", args)

@inline get_bucket_inventory_configuration(args) = get_bucket_inventory_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_lifecycle
    get_bucket_lifecycle([::AWSConfig], arguments::Dict)
    get_bucket_lifecycle([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?lifecycle", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?lifecycle", Bucket=)

# GetBucketLifecycle Operation

Deprecated, see the GetBucketLifecycleConfiguration operation.

# Arguments

## `Bucket = ::String` -- *Required*





# Returns

`GetBucketLifecycleOutput`

# Example: To get a bucket acl

The following example gets ACL on the specified bucket.

Input:
```
[
    "Bucket" => "acl1"
]
```

Output:
```
Dict(
    "Rules" => [
        Dict(
            "Expiration" => Dict(
                "Days" => 1
            ),
            "ID" => "delete logs",
            "Prefix" => "123/",
            "Status" => "Enabled"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketLifecycle)
"""
@inline get_bucket_lifecycle(aws::AWSConfig=default_aws_config(); args...) = get_bucket_lifecycle(aws, args)

@inline get_bucket_lifecycle(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?lifecycle", args)

@inline get_bucket_lifecycle(args) = get_bucket_lifecycle(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_lifecycle_configuration
    get_bucket_lifecycle_configuration([::AWSConfig], arguments::Dict)
    get_bucket_lifecycle_configuration([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?lifecycle", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?lifecycle", Bucket=)

# GetBucketLifecycleConfiguration Operation

Returns the lifecycle configuration information set on the bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Returns

`GetBucketLifecycleConfigurationOutput`

# Example: To get lifecycle configuration on a bucket

The following example retrieves lifecycle configuration on set on a bucket. 

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "Rules" => [
        Dict(
            "ID" => "Rule for TaxDocs/",
            "Prefix" => "TaxDocs",
            "Status" => "Enabled",
            "Transitions" => [
                Dict(
                    "Days" => 365,
                    "StorageClass" => "STANDARD_IA"
                )
            ]
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketLifecycleConfiguration)
"""
@inline get_bucket_lifecycle_configuration(aws::AWSConfig=default_aws_config(); args...) = get_bucket_lifecycle_configuration(aws, args)

@inline get_bucket_lifecycle_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?lifecycle", args)

@inline get_bucket_lifecycle_configuration(args) = get_bucket_lifecycle_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_location
    get_bucket_location([::AWSConfig], arguments::Dict)
    get_bucket_location([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?location", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?location", Bucket=)

# GetBucketLocation Operation

Returns the region the bucket resides in.

# Arguments

## `Bucket = ::String` -- *Required*





# Returns

`GetBucketLocationOutput`

# Example: To get bucket location

The following example returns bucket location.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "LocationConstraint" => "us-west-2"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketLocation)
"""
@inline get_bucket_location(aws::AWSConfig=default_aws_config(); args...) = get_bucket_location(aws, args)

@inline get_bucket_location(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?location", args)

@inline get_bucket_location(args) = get_bucket_location(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_logging
    get_bucket_logging([::AWSConfig], arguments::Dict)
    get_bucket_logging([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?logging", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?logging", Bucket=)

# GetBucketLogging Operation

Returns the logging status of a bucket and the permissions users have to view and modify that status. To use GET, you must be the bucket owner.

# Arguments

## `Bucket = ::String` -- *Required*





# Returns

`GetBucketLoggingOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketLogging)
"""
@inline get_bucket_logging(aws::AWSConfig=default_aws_config(); args...) = get_bucket_logging(aws, args)

@inline get_bucket_logging(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?logging", args)

@inline get_bucket_logging(args) = get_bucket_logging(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_metrics_configuration
    get_bucket_metrics_configuration([::AWSConfig], arguments::Dict)
    get_bucket_metrics_configuration([::AWSConfig]; Bucket=, id=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?metrics", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?metrics", Bucket=, id=)

# GetBucketMetricsConfiguration Operation

Gets a metrics configuration (specified by the metrics configuration ID) from the bucket.

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket containing the metrics configuration to retrieve.


## `id = ::String` -- *Required*
The ID used to identify the metrics configuration.




# Returns

`GetBucketMetricsConfigurationOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketMetricsConfiguration)
"""
@inline get_bucket_metrics_configuration(aws::AWSConfig=default_aws_config(); args...) = get_bucket_metrics_configuration(aws, args)

@inline get_bucket_metrics_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?metrics", args)

@inline get_bucket_metrics_configuration(args) = get_bucket_metrics_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_notification
    get_bucket_notification([::AWSConfig], arguments::Dict)
    get_bucket_notification([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?notification", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?notification", Bucket=)

# GetBucketNotification Operation

Deprecated, see the GetBucketNotificationConfiguration operation.

# Arguments

## `Bucket = ::String` -- *Required*
Name of the bucket to get the notification configuration for.




# Returns

`NotificationConfigurationDeprecated`

# Example: To get notification configuration set on a bucket

The following example returns notification configuration set on a bucket.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "QueueConfiguration" => Dict(
        "Event" => "s3:ObjectCreated:Put",
        "Events" => [
            "s3:ObjectCreated:Put"
        ],
        "Id" => "MDQ2OGQ4NDEtOTBmNi00YTM4LTk0NzYtZDIwN2I3NWQ1NjIx",
        "Queue" => "arn:aws:sqs:us-east-1:acct-id:S3ObjectCreatedEventQueue"
    ),
    "TopicConfiguration" => Dict(
        "Event" => "s3:ObjectCreated:Copy",
        "Events" => [
            "s3:ObjectCreated:Copy"
        ],
        "Id" => "YTVkMWEzZGUtNTY1NS00ZmE2LWJjYjktMmRlY2QwODFkNTJi",
        "Topic" => "arn:aws:sns:us-east-1:acct-id:S3ObjectCreatedEventTopic"
    )
)
```

# Example: To get notification configuration set on a bucket

The following example returns notification configuration set on a bucket.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "QueueConfiguration" => Dict(
        "Event" => "s3:ObjectCreated:Put",
        "Events" => [
            "s3:ObjectCreated:Put"
        ],
        "Id" => "MDQ2OGQ4NDEtOTBmNi00YTM4LTk0NzYtZDIwN2I3NWQ1NjIx",
        "Queue" => "arn:aws:sqs:us-east-1:acct-id:S3ObjectCreatedEventQueue"
    ),
    "TopicConfiguration" => Dict(
        "Event" => "s3:ObjectCreated:Copy",
        "Events" => [
            "s3:ObjectCreated:Copy"
        ],
        "Id" => "YTVkMWEzZGUtNTY1NS00ZmE2LWJjYjktMmRlY2QwODFkNTJi",
        "Topic" => "arn:aws:sns:us-east-1:acct-id:S3ObjectCreatedEventTopic"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketNotification)
"""
@inline get_bucket_notification(aws::AWSConfig=default_aws_config(); args...) = get_bucket_notification(aws, args)

@inline get_bucket_notification(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?notification", args)

@inline get_bucket_notification(args) = get_bucket_notification(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_notification_configuration
    get_bucket_notification_configuration([::AWSConfig], arguments::Dict)
    get_bucket_notification_configuration([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?notification", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?notification", Bucket=)

# GetBucketNotificationConfiguration Operation

Returns the notification configuration of a bucket.

# Arguments

## `Bucket = ::String` -- *Required*
Name of the bucket to get the notification configuration for.




# Returns

`NotificationConfiguration`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketNotificationConfiguration)
"""
@inline get_bucket_notification_configuration(aws::AWSConfig=default_aws_config(); args...) = get_bucket_notification_configuration(aws, args)

@inline get_bucket_notification_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?notification", args)

@inline get_bucket_notification_configuration(args) = get_bucket_notification_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_policy
    get_bucket_policy([::AWSConfig], arguments::Dict)
    get_bucket_policy([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?policy", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?policy", Bucket=)

# GetBucketPolicy Operation

Returns the policy of a specified bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Returns

`GetBucketPolicyOutput`

# Example: To get bucket policy

The following example returns bucket policy associated with a bucket.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "Policy" => "{"Version":"2008-10-17","Id":"LogPolicy","Statement":[{"Sid":"Enables the log delivery group to publish logs to your bucket ","Effect":"Allow","Principal":{"AWS":"111122223333"},"Action":["s3:GetBucketAcl","s3:GetObjectAcl","s3:PutObject"],"Resource":["arn:aws:s3:::policytest1/*","arn:aws:s3:::policytest1"]}]}"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketPolicy)
"""
@inline get_bucket_policy(aws::AWSConfig=default_aws_config(); args...) = get_bucket_policy(aws, args)

@inline get_bucket_policy(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?policy", args)

@inline get_bucket_policy(args) = get_bucket_policy(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_replication
    get_bucket_replication([::AWSConfig], arguments::Dict)
    get_bucket_replication([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?replication", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?replication", Bucket=)

# GetBucketReplication Operation

Returns the replication configuration of a bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Returns

`GetBucketReplicationOutput`

# Example: To get replication configuration set on a bucket

The following example returns replication configuration set on a bucket.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "ReplicationConfiguration" => Dict(
        "Role" => "arn:aws:iam::acct-id:role/example-role",
        "Rules" => [
            Dict(
                "Destination" => Dict(
                    "Bucket" => "arn:aws:s3:::destination-bucket"
                ),
                "ID" => "MWIwNTkwZmItMTE3MS00ZTc3LWJkZDEtNzRmODQwYzc1OTQy",
                "Prefix" => "Tax",
                "Status" => "Enabled"
            )
        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketReplication)
"""
@inline get_bucket_replication(aws::AWSConfig=default_aws_config(); args...) = get_bucket_replication(aws, args)

@inline get_bucket_replication(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?replication", args)

@inline get_bucket_replication(args) = get_bucket_replication(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_request_payment
    get_bucket_request_payment([::AWSConfig], arguments::Dict)
    get_bucket_request_payment([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?requestPayment", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?requestPayment", Bucket=)

# GetBucketRequestPayment Operation

Returns the request payment configuration of a bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Returns

`GetBucketRequestPaymentOutput`

# Example: To get bucket versioning configuration

The following example retrieves bucket versioning configuration.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "Payer" => "BucketOwner"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketRequestPayment)
"""
@inline get_bucket_request_payment(aws::AWSConfig=default_aws_config(); args...) = get_bucket_request_payment(aws, args)

@inline get_bucket_request_payment(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?requestPayment", args)

@inline get_bucket_request_payment(args) = get_bucket_request_payment(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_tagging
    get_bucket_tagging([::AWSConfig], arguments::Dict)
    get_bucket_tagging([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?tagging", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?tagging", Bucket=)

# GetBucketTagging Operation

Returns the tag set associated with the bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Returns

`GetBucketTaggingOutput`

# Example: To get tag set associated with a bucket

The following example returns tag set associated with a bucket

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "TagSet" => [
        Dict(
            "Key" => "key1",
            "Value" => "value1"
        ),
        Dict(
            "Key" => "key2",
            "Value" => "value2"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketTagging)
"""
@inline get_bucket_tagging(aws::AWSConfig=default_aws_config(); args...) = get_bucket_tagging(aws, args)

@inline get_bucket_tagging(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?tagging", args)

@inline get_bucket_tagging(args) = get_bucket_tagging(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_versioning
    get_bucket_versioning([::AWSConfig], arguments::Dict)
    get_bucket_versioning([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?versioning", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?versioning", Bucket=)

# GetBucketVersioning Operation

Returns the versioning state of a bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Returns

`GetBucketVersioningOutput`

# Example: To get bucket versioning configuration

The following example retrieves bucket versioning configuration.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "MFADelete" => "Disabled",
    "Status" => "Enabled"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketVersioning)
"""
@inline get_bucket_versioning(aws::AWSConfig=default_aws_config(); args...) = get_bucket_versioning(aws, args)

@inline get_bucket_versioning(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?versioning", args)

@inline get_bucket_versioning(args) = get_bucket_versioning(default_aws_config(), args)


"""
    using AWSSDK.S3.get_bucket_website
    get_bucket_website([::AWSConfig], arguments::Dict)
    get_bucket_website([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?website", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?website", Bucket=)

# GetBucketWebsite Operation

Returns the website configuration for a bucket.

# Arguments

## `Bucket = ::String` -- *Required*





# Returns

`GetBucketWebsiteOutput`

# Example: To get bucket website configuration

The following example retrieves website configuration of a bucket.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "ErrorDocument" => Dict(
        "Key" => "error.html"
    ),
    "IndexDocument" => Dict(
        "Suffix" => "index.html"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetBucketWebsite)
"""
@inline get_bucket_website(aws::AWSConfig=default_aws_config(); args...) = get_bucket_website(aws, args)

@inline get_bucket_website(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?website", args)

@inline get_bucket_website(args) = get_bucket_website(default_aws_config(), args)


"""
    using AWSSDK.S3.get_object
    get_object([::AWSConfig], arguments::Dict)
    get_object([::AWSConfig]; Bucket=, Key=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}/{Key+}", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}/{Key+}", Bucket=, Key=, <keyword arguments>)

# GetObject Operation

Retrieves objects from Amazon S3.

# Arguments

## `Bucket = ::String` -- *Required*



## `*header:* If-Match = ::String`
Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).


## `*header:* If-Modified-Since = timestamp`
Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).


## `*header:* If-None-Match = ::String`
Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).


## `*header:* If-Unmodified-Since = timestamp`
Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).


## `Key = ::String` -- *Required*



## `*header:* Range = ::String`
Downloads the specified range bytes of an object. For more information about the HTTP Range header, go to http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.


## `response-cache-control = ::String`
Sets the Cache-Control header of the response.


## `response-content-disposition = ::String`
Sets the Content-Disposition header of the response


## `response-content-encoding = ::String`
Sets the Content-Encoding header of the response.


## `response-content-language = ::String`
Sets the Content-Language header of the response.


## `response-content-type = ::String`
Sets the Content-Type header of the response.


## `response-expires = timestamp`
Sets the Expires header of the response.


## `versionId = ::String`
VersionId used to reference a specific version of the object.


## `*header:* x-amz-server-side-encryption-customer-algorithm = ::String`
Specifies the algorithm to use to when encrypting the object (e.g., AES256).


## `*header:* x-amz-server-side-encryption-customer-key = blob`
Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.


## `*header:* x-amz-server-side-encryption-customer-key-MD5 = ::String`
Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.


## `*header:* x-amz-request-payer = "requester"`



## `partNumber = ::Int`
Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' GET request for the part specified. Useful for downloading just a part of an object.




# Returns

`GetObjectOutput`

# Exceptions

`NoSuchKey`.

# Example: To retrieve an object

The following example retrieves an object for an S3 bucket.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "HappyFace.jpg"
]
```

Output:
```
Dict(
    "AcceptRanges" => "bytes",
    "ContentLength" => "3191",
    "ContentType" => "image/jpeg",
    "ETag" => ""6805f2cfc46c0f04559748bb039d69ae"",
    "LastModified" => "Thu, 15 Dec 2016 01:19:41 GMT",
    "Metadata" => Dict(

    ),
    "TagCount" => 2,
    "VersionId" => "null"
)
```

# Example: To retrieve a byte range of an object 

The following example retrieves an object for an S3 bucket. The request specifies the range header to retrieve a specific byte range.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "SampleFile.txt",
    "Range" => "bytes=0-9"
]
```

Output:
```
Dict(
    "AcceptRanges" => "bytes",
    "ContentLength" => "10",
    "ContentRange" => "bytes 0-9/43",
    "ContentType" => "text/plain",
    "ETag" => ""0d94420ffd0bc68cd3d152506b97a9cc"",
    "LastModified" => "Thu, 09 Oct 2014 22:57:28 GMT",
    "Metadata" => Dict(

    ),
    "VersionId" => "null"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetObject)
"""
@inline get_object(aws::AWSConfig=default_aws_config(); args...) = get_object(aws, args)

@inline get_object(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}/{Key+}", args)

@inline get_object(args) = get_object(default_aws_config(), args)


"""
    using AWSSDK.S3.get_object_acl
    get_object_acl([::AWSConfig], arguments::Dict)
    get_object_acl([::AWSConfig]; Bucket=, Key=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}/{Key+}?acl", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}/{Key+}?acl", Bucket=, Key=, <keyword arguments>)

# GetObjectAcl Operation

Returns the access control list (ACL) of an object.

# Arguments

## `Bucket = ::String` -- *Required*



## `Key = ::String` -- *Required*



## `versionId = ::String`
VersionId used to reference a specific version of the object.


## `*header:* x-amz-request-payer = "requester"`





# Returns

`GetObjectAclOutput`

# Exceptions

`NoSuchKey`.

# Example: To retrieve object ACL

The following example retrieves access control list (ACL) of an object.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "HappyFace.jpg"
]
```

Output:
```
Dict(
    "Grants" => [
        Dict(
            "Grantee" => Dict(
                "DisplayName" => "owner-display-name",
                "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc",
                "Type" => "CanonicalUser"
            ),
            "Permission" => "WRITE"
        ),
        Dict(
            "Grantee" => Dict(
                "DisplayName" => "owner-display-name",
                "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc",
                "Type" => "CanonicalUser"
            ),
            "Permission" => "WRITE_ACP"
        ),
        Dict(
            "Grantee" => Dict(
                "DisplayName" => "owner-display-name",
                "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc",
                "Type" => "CanonicalUser"
            ),
            "Permission" => "READ"
        ),
        Dict(
            "Grantee" => Dict(
                "DisplayName" => "owner-display-name",
                "ID" => "852b113eexamplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc",
                "Type" => "CanonicalUser"
            ),
            "Permission" => "READ_ACP"
        )
    ],
    "Owner" => Dict(
        "DisplayName" => "owner-display-name",
        "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetObjectAcl)
"""
@inline get_object_acl(aws::AWSConfig=default_aws_config(); args...) = get_object_acl(aws, args)

@inline get_object_acl(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}/{Key+}?acl", args)

@inline get_object_acl(args) = get_object_acl(default_aws_config(), args)


"""
    using AWSSDK.S3.get_object_tagging
    get_object_tagging([::AWSConfig], arguments::Dict)
    get_object_tagging([::AWSConfig]; Bucket=, Key=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}/{Key+}?tagging", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}/{Key+}?tagging", Bucket=, Key=, <keyword arguments>)

# GetObjectTagging Operation

Returns the tag-set of an object.

# Arguments

## `Bucket = ::String` -- *Required*



## `Key = ::String` -- *Required*



## `versionId = ::String`





# Returns

`GetObjectTaggingOutput`

# Example: To retrieve tag set of an object

The following example retrieves tag set of an object.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "HappyFace.jpg"
]
```

Output:
```
Dict(
    "TagSet" => [
        Dict(
            "Key" => "Key4",
            "Value" => "Value4"
        ),
        Dict(
            "Key" => "Key3",
            "Value" => "Value3"
        )
    ],
    "VersionId" => "null"
)
```

# Example: To retrieve tag set of a specific object version

The following example retrieves tag set of an object. The request specifies object version.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "exampleobject",
    "VersionId" => "ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI"
]
```

Output:
```
Dict(
    "TagSet" => [
        Dict(
            "Key" => "Key1",
            "Value" => "Value1"
        )
    ],
    "VersionId" => "ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetObjectTagging)
"""
@inline get_object_tagging(aws::AWSConfig=default_aws_config(); args...) = get_object_tagging(aws, args)

@inline get_object_tagging(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}/{Key+}?tagging", args)

@inline get_object_tagging(args) = get_object_tagging(default_aws_config(), args)


"""
    using AWSSDK.S3.get_object_torrent
    get_object_torrent([::AWSConfig], arguments::Dict)
    get_object_torrent([::AWSConfig]; Bucket=, Key=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}/{Key+}?torrent", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}/{Key+}?torrent", Bucket=, Key=, <keyword arguments>)

# GetObjectTorrent Operation

Return torrent files from a bucket.

# Arguments

## `Bucket = ::String` -- *Required*



## `Key = ::String` -- *Required*



## `*header:* x-amz-request-payer = "requester"`





# Returns

`GetObjectTorrentOutput`

# Example: To retrieve torrent files for an object

The following example retrieves torrent files of an object.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "HappyFace.jpg"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/GetObjectTorrent)
"""
@inline get_object_torrent(aws::AWSConfig=default_aws_config(); args...) = get_object_torrent(aws, args)

@inline get_object_torrent(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}/{Key+}?torrent", args)

@inline get_object_torrent(args) = get_object_torrent(default_aws_config(), args)


"""
    using AWSSDK.S3.head_bucket
    head_bucket([::AWSConfig], arguments::Dict)
    head_bucket([::AWSConfig]; Bucket=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "HEAD", "/{Bucket}", arguments::Dict)
    s3([::AWSConfig], "HEAD", "/{Bucket}", Bucket=)

# HeadBucket Operation

This operation is useful to determine if a bucket exists and you have permission to access it.

# Arguments

## `Bucket = ::String` -- *Required*





# Exceptions

`NoSuchBucket`.

# Example: To determine if bucket exists

This operation checks to see if a bucket exists.

Input:
```
[
    "Bucket" => "acl1"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/HeadBucket)
"""
@inline head_bucket(aws::AWSConfig=default_aws_config(); args...) = head_bucket(aws, args)

@inline head_bucket(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "HEAD", "/{Bucket}", args)

@inline head_bucket(args) = head_bucket(default_aws_config(), args)


"""
    using AWSSDK.S3.head_object
    head_object([::AWSConfig], arguments::Dict)
    head_object([::AWSConfig]; Bucket=, Key=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "HEAD", "/{Bucket}/{Key+}", arguments::Dict)
    s3([::AWSConfig], "HEAD", "/{Bucket}/{Key+}", Bucket=, Key=, <keyword arguments>)

# HeadObject Operation

The HEAD operation retrieves metadata from an object without returning the object itself. This operation is useful if you're only interested in an object's metadata. To use HEAD, you must have READ access to the object.

# Arguments

## `Bucket = ::String` -- *Required*



## `*header:* If-Match = ::String`
Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).


## `*header:* If-Modified-Since = timestamp`
Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).


## `*header:* If-None-Match = ::String`
Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).


## `*header:* If-Unmodified-Since = timestamp`
Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).


## `Key = ::String` -- *Required*



## `*header:* Range = ::String`
Downloads the specified range bytes of an object. For more information about the HTTP Range header, go to http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.


## `versionId = ::String`
VersionId used to reference a specific version of the object.


## `*header:* x-amz-server-side-encryption-customer-algorithm = ::String`
Specifies the algorithm to use to when encrypting the object (e.g., AES256).


## `*header:* x-amz-server-side-encryption-customer-key = blob`
Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.


## `*header:* x-amz-server-side-encryption-customer-key-MD5 = ::String`
Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.


## `*header:* x-amz-request-payer = "requester"`



## `partNumber = ::Int`
Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' HEAD request for the part specified. Useful querying about the size of the part and the number of parts in this object.




# Returns

`HeadObjectOutput`

# Exceptions

`NoSuchKey`.

# Example: To retrieve metadata of an object without returning the object itself

The following example retrieves an object metadata.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "HappyFace.jpg"
]
```

Output:
```
Dict(
    "AcceptRanges" => "bytes",
    "ContentLength" => "3191",
    "ContentType" => "image/jpeg",
    "ETag" => ""6805f2cfc46c0f04559748bb039d69ae"",
    "LastModified" => "Thu, 15 Dec 2016 01:19:41 GMT",
    "Metadata" => Dict(

    ),
    "VersionId" => "null"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/HeadObject)
"""
@inline head_object(aws::AWSConfig=default_aws_config(); args...) = head_object(aws, args)

@inline head_object(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "HEAD", "/{Bucket}/{Key+}", args)

@inline head_object(args) = head_object(default_aws_config(), args)


"""
    using AWSSDK.S3.list_bucket_analytics_configurations
    list_bucket_analytics_configurations([::AWSConfig], arguments::Dict)
    list_bucket_analytics_configurations([::AWSConfig]; Bucket=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?analytics", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?analytics", Bucket=, <keyword arguments>)

# ListBucketAnalyticsConfigurations Operation

Lists the analytics configurations for the bucket.

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket from which analytics configurations are retrieved.


## `continuation-token = ::String`
The ContinuationToken that represents a placeholder from where this request should begin.




# Returns

`ListBucketAnalyticsConfigurationsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/ListBucketAnalyticsConfigurations)
"""
@inline list_bucket_analytics_configurations(aws::AWSConfig=default_aws_config(); args...) = list_bucket_analytics_configurations(aws, args)

@inline list_bucket_analytics_configurations(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?analytics", args)

@inline list_bucket_analytics_configurations(args) = list_bucket_analytics_configurations(default_aws_config(), args)


"""
    using AWSSDK.S3.list_bucket_inventory_configurations
    list_bucket_inventory_configurations([::AWSConfig], arguments::Dict)
    list_bucket_inventory_configurations([::AWSConfig]; Bucket=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?inventory", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?inventory", Bucket=, <keyword arguments>)

# ListBucketInventoryConfigurations Operation

Returns a list of inventory configurations for the bucket.

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket containing the inventory configurations to retrieve.


## `continuation-token = ::String`
The marker used to continue an inventory configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.




# Returns

`ListBucketInventoryConfigurationsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/ListBucketInventoryConfigurations)
"""
@inline list_bucket_inventory_configurations(aws::AWSConfig=default_aws_config(); args...) = list_bucket_inventory_configurations(aws, args)

@inline list_bucket_inventory_configurations(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?inventory", args)

@inline list_bucket_inventory_configurations(args) = list_bucket_inventory_configurations(default_aws_config(), args)


"""
    using AWSSDK.S3.list_bucket_metrics_configurations
    list_bucket_metrics_configurations([::AWSConfig], arguments::Dict)
    list_bucket_metrics_configurations([::AWSConfig]; Bucket=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?metrics", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?metrics", Bucket=, <keyword arguments>)

# ListBucketMetricsConfigurations Operation

Lists the metrics configurations for the bucket.

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket containing the metrics configurations to retrieve.


## `continuation-token = ::String`
The marker that is used to continue a metrics configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.




# Returns

`ListBucketMetricsConfigurationsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/ListBucketMetricsConfigurations)
"""
@inline list_bucket_metrics_configurations(aws::AWSConfig=default_aws_config(); args...) = list_bucket_metrics_configurations(aws, args)

@inline list_bucket_metrics_configurations(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?metrics", args)

@inline list_bucket_metrics_configurations(args) = list_bucket_metrics_configurations(default_aws_config(), args)


"""
    using AWSSDK.S3.list_buckets
    list_buckets([::AWSConfig])
    

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/",)
    

# ListBuckets Operation

Returns a list of all buckets owned by the authenticated sender of the request.

# Returns

`ListBucketsOutput`

# Example: To list object versions

The following example return versions of an object with specific key name prefix. The request limits the number of items returned to two. If there are are more than two object version, S3 returns NextToken in the response. You can specify this token value in your next request to fetch next set of object versions.

Output:
```
Dict(
    "Buckets" => [
        Dict(
            "CreationDate" => "2012-02-15T21: 03: 02.000Z",
            "Name" => "examplebucket"
        ),
        Dict(
            "CreationDate" => "2011-07-24T19: 33: 50.000Z",
            "Name" => "examplebucket2"
        ),
        Dict(
            "CreationDate" => "2010-12-17T00: 56: 49.000Z",
            "Name" => "examplebucket3"
        )
    ],
    "Owner" => Dict(
        "DisplayName" => "own-display-name",
        "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/ListBuckets)
"""
@inline list_buckets(aws::AWSConfig=default_aws_config(); args...) = list_buckets(aws, args)

@inline list_buckets(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/", args)

@inline list_buckets(args) = list_buckets(default_aws_config(), args)


"""
    using AWSSDK.S3.list_multipart_uploads
    list_multipart_uploads([::AWSConfig], arguments::Dict)
    list_multipart_uploads([::AWSConfig]; Bucket=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?uploads", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?uploads", Bucket=, <keyword arguments>)

# ListMultipartUploads Operation

This operation lists in-progress multipart uploads.

# Arguments

## `Bucket = ::String` -- *Required*



## `delimiter = ::String`
Character you use to group keys.


## `encoding-type = "url"`



## `key-marker = ::String`
Together with upload-id-marker, this parameter specifies the multipart upload after which listing should begin.


## `max-uploads = ::Int`
Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response body. 1,000 is the maximum number of uploads that can be returned in a response.


## `prefix = ::String`
Lists in-progress uploads only for those keys that begin with the specified prefix.


## `upload-id-marker = ::String`
Together with key-marker, specifies the multipart upload after which listing should begin. If key-marker is not specified, the upload-id-marker parameter is ignored.




# Returns

`ListMultipartUploadsOutput`

# Example: To list in-progress multipart uploads on a bucket

The following example lists in-progress multipart uploads on a specific bucket.

Input:
```
[
    "Bucket" => "examplebucket"
]
```

Output:
```
Dict(
    "Uploads" => [
        Dict(
            "Initiated" => "2014-05-01T05:40:58.000Z",
            "Initiator" => Dict(
                "DisplayName" => "display-name",
                "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
            ),
            "Key" => "JavaFile",
            "Owner" => Dict(
                "DisplayName" => "display-name",
                "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
            ),
            "StorageClass" => "STANDARD",
            "UploadId" => "examplelUa.CInXklLQtSMJITdUnoZ1Y5GACB5UckOtspm5zbDMCkPF_qkfZzMiFZ6dksmcnqxJyIBvQMG9X9Q--"
        ),
        Dict(
            "Initiated" => "2014-05-01T05:41:27.000Z",
            "Initiator" => Dict(
                "DisplayName" => "display-name",
                "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
            ),
            "Key" => "JavaFile",
            "Owner" => Dict(
                "DisplayName" => "display-name",
                "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
            ),
            "StorageClass" => "STANDARD",
            "UploadId" => "examplelo91lv1iwvWpvCiJWugw2xXLPAD7Z8cJyX9.WiIRgNrdG6Ldsn.9FtS63TCl1Uf5faTB.1U5Ckcbmdw--"
        )
    ]
)
```

# Example: List next set of multipart uploads when previous result is truncated

The following example specifies the upload-id-marker and key-marker from previous truncated response to retrieve next setup of multipart uploads.

Input:
```
[
    "Bucket" => "examplebucket",
    "KeyMarker" => "nextkeyfrompreviousresponse",
    "MaxUploads" => "2",
    "UploadIdMarker" => "valuefrompreviousresponse"
]
```

Output:
```
Dict(
    "Bucket" => "acl1",
    "IsTruncated" => true,
    "KeyMarker" => "",
    "MaxUploads" => "2",
    "NextKeyMarker" => "someobjectkey",
    "NextUploadIdMarker" => "examplelo91lv1iwvWpvCiJWugw2xXLPAD7Z8cJyX9.WiIRgNrdG6Ldsn.9FtS63TCl1Uf5faTB.1U5Ckcbmdw--",
    "UploadIdMarker" => "",
    "Uploads" => [
        Dict(
            "Initiated" => "2014-05-01T05:40:58.000Z",
            "Initiator" => Dict(
                "DisplayName" => "ownder-display-name",
                "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
            ),
            "Key" => "JavaFile",
            "Owner" => Dict(
                "DisplayName" => "mohanataws",
                "ID" => "852b113e7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
            ),
            "StorageClass" => "STANDARD",
            "UploadId" => "gZ30jIqlUa.CInXklLQtSMJITdUnoZ1Y5GACB5UckOtspm5zbDMCkPF_qkfZzMiFZ6dksmcnqxJyIBvQMG9X9Q--"
        ),
        Dict(
            "Initiated" => "2014-05-01T05:41:27.000Z",
            "Initiator" => Dict(
                "DisplayName" => "ownder-display-name",
                "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
            ),
            "Key" => "JavaFile",
            "Owner" => Dict(
                "DisplayName" => "ownder-display-name",
                "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
            ),
            "StorageClass" => "STANDARD",
            "UploadId" => "b7tZSqIlo91lv1iwvWpvCiJWugw2xXLPAD7Z8cJyX9.WiIRgNrdG6Ldsn.9FtS63TCl1Uf5faTB.1U5Ckcbmdw--"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/ListMultipartUploads)
"""
@inline list_multipart_uploads(aws::AWSConfig=default_aws_config(); args...) = list_multipart_uploads(aws, args)

@inline list_multipart_uploads(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?uploads", args)

@inline list_multipart_uploads(args) = list_multipart_uploads(default_aws_config(), args)


"""
    using AWSSDK.S3.list_object_versions
    list_object_versions([::AWSConfig], arguments::Dict)
    list_object_versions([::AWSConfig]; Bucket=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?versions", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?versions", Bucket=, <keyword arguments>)

# ListObjectVersions Operation

Returns metadata about all of the versions of objects in a bucket.

# Arguments

## `Bucket = ::String` -- *Required*



## `delimiter = ::String`
A delimiter is a character you use to group keys.


## `encoding-type = "url"`



## `key-marker = ::String`
Specifies the key to start with when listing objects in a bucket.


## `max-keys = ::Int`
Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.


## `prefix = ::String`
Limits the response to keys that begin with the specified prefix.


## `version-id-marker = ::String`
Specifies the object version you want to start listing from.




# Returns

`ListObjectVersionsOutput`

# Example: To list object versions

The following example return versions of an object with specific key name prefix. The request limits the number of items returned to two. If there are are more than two object version, S3 returns NextToken in the response. You can specify this token value in your next request to fetch next set of object versions.

Input:
```
[
    "Bucket" => "examplebucket",
    "Prefix" => "HappyFace.jpg"
]
```

Output:
```
Dict(
    "Versions" => [
        Dict(
            "ETag" => ""6805f2cfc46c0f04559748bb039d69ae"",
            "IsLatest" => true,
            "Key" => "HappyFace.jpg",
            "LastModified" => "2016-12-15T01:19:41.000Z",
            "Owner" => Dict(
                "DisplayName" => "owner-display-name",
                "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
            ),
            "Size" => 3191,
            "StorageClass" => "STANDARD",
            "VersionId" => "null"
        ),
        Dict(
            "ETag" => ""6805f2cfc46c0f04559748bb039d69ae"",
            "IsLatest" => false,
            "Key" => "HappyFace.jpg",
            "LastModified" => "2016-12-13T00:58:26.000Z",
            "Owner" => Dict(
                "DisplayName" => "owner-display-name",
                "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
            ),
            "Size" => 3191,
            "StorageClass" => "STANDARD",
            "VersionId" => "PHtexPGjH2y.zBgT8LmB7wwLI2mpbz.k"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/ListObjectVersions)
"""
@inline list_object_versions(aws::AWSConfig=default_aws_config(); args...) = list_object_versions(aws, args)

@inline list_object_versions(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?versions", args)

@inline list_object_versions(args) = list_object_versions(default_aws_config(), args)


"""
    using AWSSDK.S3.list_objects
    list_objects([::AWSConfig], arguments::Dict)
    list_objects([::AWSConfig]; Bucket=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}", Bucket=, <keyword arguments>)

# ListObjects Operation

Returns some or all (up to 1000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket.

# Arguments

## `Bucket = ::String` -- *Required*



## `delimiter = ::String`
A delimiter is a character you use to group keys.


## `encoding-type = "url"`



## `marker = ::String`
Specifies the key to start with when listing objects in a bucket.


## `max-keys = ::Int`
Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.


## `prefix = ::String`
Limits the response to keys that begin with the specified prefix.


## `*header:* x-amz-request-payer = "requester"`
Confirms that the requester knows that she or he will be charged for the list objects request. Bucket owners need not specify this parameter in their requests.




# Returns

`ListObjectsOutput`

# Exceptions

`NoSuchBucket`.

# Example: To list objects in a bucket

The following example list two objects in a bucket.

Input:
```
[
    "Bucket" => "examplebucket",
    "MaxKeys" => "2"
]
```

Output:
```
Dict(
    "Contents" => [
        Dict(
            "ETag" => ""70ee1738b6b21e2c8a43f3a5ab0eee71"",
            "Key" => "example1.jpg",
            "LastModified" => "2014-11-21T19:40:05.000Z",
            "Owner" => Dict(
                "DisplayName" => "myname",
                "ID" => "12345example25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
            ),
            "Size" => 11,
            "StorageClass" => "STANDARD"
        ),
        Dict(
            "ETag" => ""9c8af9a76df052144598c115ef33e511"",
            "Key" => "example2.jpg",
            "LastModified" => "2013-11-15T01:10:49.000Z",
            "Owner" => Dict(
                "DisplayName" => "myname",
                "ID" => "12345example25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
            ),
            "Size" => 713193,
            "StorageClass" => "STANDARD"
        )
    ],
    "NextMarker" => "eyJNYXJrZXIiOiBudWxsLCAiYm90b190cnVuY2F0ZV9hbW91bnQiOiAyfQ=="
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/ListObjects)
"""
@inline list_objects(aws::AWSConfig=default_aws_config(); args...) = list_objects(aws, args)

@inline list_objects(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}", args)

@inline list_objects(args) = list_objects(default_aws_config(), args)


"""
    using AWSSDK.S3.list_objects_v2
    list_objects_v2([::AWSConfig], arguments::Dict)
    list_objects_v2([::AWSConfig]; Bucket=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}?list-type=2", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}?list-type=2", Bucket=, <keyword arguments>)

# ListObjectsV2 Operation

Returns some or all (up to 1000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. Note: ListObjectsV2 is the revised List Objects API and we recommend you use this revised API for new application development.

# Arguments

## `Bucket = ::String` -- *Required*
Name of the bucket to list.


## `delimiter = ::String`
A delimiter is a character you use to group keys.


## `encoding-type = "url"`
Encoding type used by Amazon S3 to encode object keys in the response.


## `max-keys = ::Int`
Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.


## `prefix = ::String`
Limits the response to keys that begin with the specified prefix.


## `continuation-token = ::String`
ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a token. ContinuationToken is obfuscated and is not a real key


## `fetch-owner = ::Bool`
The owner field is not present in listV2 by default, if you want to return owner field with each key in the result then set the fetch owner field to true


## `start-after = ::String`
StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified key. StartAfter can be any key in the bucket


## `*header:* x-amz-request-payer = "requester"`
Confirms that the requester knows that she or he will be charged for the list objects request in V2 style. Bucket owners need not specify this parameter in their requests.




# Returns

`ListObjectsV2Output`

# Exceptions

`NoSuchBucket`.

# Example: To get object list

The following example retrieves object list. The request specifies max keys to limit response to include only 2 object keys. 

Input:
```
[
    "Bucket" => "examplebucket",
    "MaxKeys" => "2"
]
```

Output:
```
Dict(
    "Contents" => [
        Dict(
            "ETag" => ""70ee1738b6b21e2c8a43f3a5ab0eee71"",
            "Key" => "happyface.jpg",
            "LastModified" => "2014-11-21T19:40:05.000Z",
            "Size" => 11,
            "StorageClass" => "STANDARD"
        ),
        Dict(
            "ETag" => ""becf17f89c30367a9a44495d62ed521a-1"",
            "Key" => "test.jpg",
            "LastModified" => "2014-05-02T04:51:50.000Z",
            "Size" => 4192256,
            "StorageClass" => "STANDARD"
        )
    ],
    "IsTruncated" => true,
    "KeyCount" => "2",
    "MaxKeys" => "2",
    "Name" => "examplebucket",
    "NextContinuationToken" => "1w41l63U0xa8q7smH50vCxyTQqdxo69O3EmK28Bi5PcROI4wI/EyIJg==",
    "Prefix" => ""
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/ListObjectsV2)
"""
@inline list_objects_v2(aws::AWSConfig=default_aws_config(); args...) = list_objects_v2(aws, args)

@inline list_objects_v2(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}?list-type=2", args)

@inline list_objects_v2(args) = list_objects_v2(default_aws_config(), args)


"""
    using AWSSDK.S3.list_parts
    list_parts([::AWSConfig], arguments::Dict)
    list_parts([::AWSConfig]; Bucket=, Key=, uploadId=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "GET", "/{Bucket}/{Key+}", arguments::Dict)
    s3([::AWSConfig], "GET", "/{Bucket}/{Key+}", Bucket=, Key=, uploadId=, <keyword arguments>)

# ListParts Operation

Lists the parts that have been uploaded for a specific multipart upload.

# Arguments

## `Bucket = ::String` -- *Required*



## `Key = ::String` -- *Required*



## `max-parts = ::Int`
Sets the maximum number of parts to return.


## `part-number-marker = ::Int`
Specifies the part after which listing should begin. Only parts with higher part numbers will be listed.


## `uploadId = ::String` -- *Required*
Upload ID identifying the multipart upload whose parts are being listed.


## `*header:* x-amz-request-payer = "requester"`





# Returns

`ListPartsOutput`

# Example: To list parts of a multipart upload.

The following example lists parts uploaded for a specific multipart upload.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "bigobject",
    "UploadId" => "example7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LAT2dUN91cOmrEQHDsP3WA60CEg--"
]
```

Output:
```
Dict(
    "Initiator" => Dict(
        "DisplayName" => "owner-display-name",
        "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    ),
    "Owner" => Dict(
        "DisplayName" => "owner-display-name",
        "ID" => "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    ),
    "Parts" => [
        Dict(
            "ETag" => ""d8c2eafd90c266e19ab9dcacc479f8af"",
            "LastModified" => "2016-12-16T00:11:42.000Z",
            "PartNumber" => "1",
            "Size" => 26246026
        ),
        Dict(
            "ETag" => ""d8c2eafd90c266e19ab9dcacc479f8af"",
            "LastModified" => "2016-12-16T00:15:01.000Z",
            "PartNumber" => "2",
            "Size" => 26246026
        )
    ],
    "StorageClass" => "STANDARD"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/ListParts)
"""
@inline list_parts(aws::AWSConfig=default_aws_config(); args...) = list_parts(aws, args)

@inline list_parts(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "GET", "/{Bucket}/{Key+}", args)

@inline list_parts(args) = list_parts(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_accelerate_configuration
    put_bucket_accelerate_configuration([::AWSConfig], arguments::Dict)
    put_bucket_accelerate_configuration([::AWSConfig]; Bucket=, AccelerateConfiguration=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?accelerate", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?accelerate", Bucket=, AccelerateConfiguration=)

# PutBucketAccelerateConfiguration Operation

Sets the accelerate configuration of an existing bucket.

# Arguments

## `Bucket = ::String` -- *Required*
Name of the bucket for which the accelerate configuration is set.


## `AccelerateConfiguration = ["Status" =>  "Enabled" or "Suspended"]` -- *Required*
Specifies the Accelerate Configuration you want to set for the bucket.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketAccelerateConfiguration)
"""
@inline put_bucket_accelerate_configuration(aws::AWSConfig=default_aws_config(); args...) = put_bucket_accelerate_configuration(aws, args)

@inline put_bucket_accelerate_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?accelerate", args)

@inline put_bucket_accelerate_configuration(args) = put_bucket_accelerate_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_acl
    put_bucket_acl([::AWSConfig], arguments::Dict)
    put_bucket_acl([::AWSConfig]; Bucket=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?acl", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?acl", Bucket=, <keyword arguments>)

# PutBucketAcl Operation

Sets the permissions on a bucket using access control lists (ACL).

# Arguments

## `*header:* x-amz-acl = "private", "public-read", "public-read-write" or "authenticated-read"`
The canned ACL to apply to the bucket.


## `AccessControlPolicy = [ ... ]`

```
 AccessControlPolicy = [
        "AccessControlList" =>  [[
            "Grantee" =>  [
                "DisplayName" =>  ::String,
                "EmailAddress" =>  ::String,
                "ID" =>  ::String,
                "xsi:type" => <required> "CanonicalUser", "AmazonCustomerByEmail" or "Group",
                "URI" =>  ::String
            ],
            "Permission" =>  "FULL_CONTROL", "WRITE", "WRITE_ACP", "READ" or "READ_ACP"
        ], ...],
        "Owner" =>  [
            "DisplayName" =>  ::String,
            "ID" =>  ::String
        ]
    ]
```

## `Bucket = ::String` -- *Required*



## `*header:* Content-MD5 = ::String`



## `*header:* x-amz-grant-full-control = ::String`
Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.


## `*header:* x-amz-grant-read = ::String`
Allows grantee to list the objects in the bucket.


## `*header:* x-amz-grant-read-acp = ::String`
Allows grantee to read the bucket ACL.


## `*header:* x-amz-grant-write = ::String`
Allows grantee to create, overwrite, and delete any object in the bucket.


## `*header:* x-amz-grant-write-acp = ::String`
Allows grantee to write the ACL for the applicable bucket.




# Example: Put bucket acl

The following example replaces existing ACL on a bucket. The ACL grants the bucket owner (specified using the owner ID) and write permission to the LogDelivery group. Because this is a replace operation, you must specify all the grants in your request. To incrementally add or remove ACL grants, you might use the console.

Input:
```
[
    "Bucket" => "examplebucket",
    "GrantFullControl" => "id=examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484",
    "GrantWrite" => "uri=http://acs.amazonaws.com/groups/s3/LogDelivery"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketAcl)
"""
@inline put_bucket_acl(aws::AWSConfig=default_aws_config(); args...) = put_bucket_acl(aws, args)

@inline put_bucket_acl(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?acl", args)

@inline put_bucket_acl(args) = put_bucket_acl(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_analytics_configuration
    put_bucket_analytics_configuration([::AWSConfig], arguments::Dict)
    put_bucket_analytics_configuration([::AWSConfig]; Bucket=, id=, AnalyticsConfiguration=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?analytics", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?analytics", Bucket=, id=, AnalyticsConfiguration=)

# PutBucketAnalyticsConfiguration Operation

Sets an analytics configuration for the bucket (specified by the analytics configuration ID).

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket to which an analytics configuration is stored.


## `id = ::String` -- *Required*
The identifier used to represent an analytics configuration.


## `AnalyticsConfiguration = [ ... ]` -- *Required*
The configuration and any analyses for the analytics filter.
```
 AnalyticsConfiguration = [
        "Id" => <required> ::String,
        "Filter" =>  [
            "Prefix" =>  ::String,
            "Tag" =>  [
                "Key" => <required> ::String,
                "Value" => <required> ::String
            ],
            "And" =>  [
                "Prefix" =>  ::String,
                "Tag" =>  [[
                    "Key" => <required> ::String,
                    "Value" => <required> ::String
                ], ...]
            ]
        ],
        "StorageClassAnalysis" => <required> ["DataExport" =>  [
                "OutputSchemaVersion" => <required> "V_1",
                "Destination" => <required> ["S3BucketDestination" => <required> [
                        "Format" => <required> "CSV",
                        "BucketAccountId" =>  ::String,
                        "Bucket" => <required> ::String,
                        "Prefix" =>  ::String
                    ]]
            ]]
    ]
```



See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketAnalyticsConfiguration)
"""
@inline put_bucket_analytics_configuration(aws::AWSConfig=default_aws_config(); args...) = put_bucket_analytics_configuration(aws, args)

@inline put_bucket_analytics_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?analytics", args)

@inline put_bucket_analytics_configuration(args) = put_bucket_analytics_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_cors
    put_bucket_cors([::AWSConfig], arguments::Dict)
    put_bucket_cors([::AWSConfig]; Bucket=, CORSConfiguration=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?cors", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?cors", Bucket=, CORSConfiguration=, <keyword arguments>)

# PutBucketCors Operation

Sets the cors configuration for a bucket.

# Arguments

## `Bucket = ::String` -- *Required*



## `CORSConfiguration = ["CORSRule" => <required> [[ ... ], ...]]` -- *Required*

```
 CORSConfiguration = ["CORSRule" => <required> [[
            "AllowedHeader" =>  [::String, ...],
            "AllowedMethod" => <required> [::String, ...],
            "AllowedOrigin" => <required> [::String, ...],
            "ExposeHeader" =>  [::String, ...],
            "MaxAgeSeconds" =>  ::Int
        ], ...]]
```

## `*header:* Content-MD5 = ::String`





# Example: To set cors configuration on a bucket.

The following example enables PUT, POST, and DELETE requests from www.example.com, and enables GET requests from any domain.

Input:
```
[
    "Bucket" => "",
    "CORSConfiguration" => [
        "CORSRules" => [
            [
                "AllowedHeaders" => [
                    "*"
                ],
                "AllowedMethods" => [
                    "PUT",
                    "POST",
                    "DELETE"
                ],
                "AllowedOrigins" => [
                    "http://www.example.com"
                ],
                "ExposeHeaders" => [
                    "x-amz-server-side-encryption"
                ],
                "MaxAgeSeconds" => 3000
            ],
            [
                "AllowedHeaders" => [
                    "Authorization"
                ],
                "AllowedMethods" => [
                    "GET"
                ],
                "AllowedOrigins" => [
                    "*"
                ],
                "MaxAgeSeconds" => 3000
            ]
        ]
    ],
    "ContentMD5" => ""
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketCors)
"""
@inline put_bucket_cors(aws::AWSConfig=default_aws_config(); args...) = put_bucket_cors(aws, args)

@inline put_bucket_cors(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?cors", args)

@inline put_bucket_cors(args) = put_bucket_cors(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_encryption
    put_bucket_encryption([::AWSConfig], arguments::Dict)
    put_bucket_encryption([::AWSConfig]; Bucket=, ServerSideEncryptionConfiguration=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?encryption", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?encryption", Bucket=, ServerSideEncryptionConfiguration=, <keyword arguments>)

# PutBucketEncryption Operation

Creates a new server-side encryption configuration (or replaces an existing one, if present).

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket for which the server-side encryption configuration is set.


## `*header:* Content-MD5 = ::String`
The base64-encoded 128-bit MD5 digest of the server-side encryption configuration.


## `ServerSideEncryptionConfiguration = ["Rule" => <required> [["ApplyServerSideEncryptionByDefault" =>  [ ... ]], ...]]` -- *Required*

```
 ServerSideEncryptionConfiguration = ["Rule" => <required> [["ApplyServerSideEncryptionByDefault" =>  [
                "SSEAlgorithm" => <required> "AES256" or "aws:kms",
                "KMSMasterKeyID" =>  ::String
            ]], ...]]
```



See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketEncryption)
"""
@inline put_bucket_encryption(aws::AWSConfig=default_aws_config(); args...) = put_bucket_encryption(aws, args)

@inline put_bucket_encryption(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?encryption", args)

@inline put_bucket_encryption(args) = put_bucket_encryption(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_inventory_configuration
    put_bucket_inventory_configuration([::AWSConfig], arguments::Dict)
    put_bucket_inventory_configuration([::AWSConfig]; Bucket=, id=, InventoryConfiguration=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?inventory", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?inventory", Bucket=, id=, InventoryConfiguration=)

# PutBucketInventoryConfiguration Operation

Adds an inventory configuration (identified by the inventory ID) from the bucket.

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket where the inventory configuration will be stored.


## `id = ::String` -- *Required*
The ID used to identify the inventory configuration.


## `InventoryConfiguration = [ ... ]` -- *Required*
Specifies the inventory configuration.
```
 InventoryConfiguration = [
        "Destination" => <required> ["S3BucketDestination" => <required> [
                "AccountId" =>  ::String,
                "Bucket" => <required> ::String,
                "Format" => <required> "CSV" or "ORC",
                "Prefix" =>  ::String,
                "Encryption" =>  [
                    "SSE-S3" =>  [
                        
                    ],
                    "SSE-KMS" =>  ["KeyId" => <required> ::String]
                ]
            ]],
        "IsEnabled" => <required> ::Bool,
        "Filter" =>  ["Prefix" => <required> ::String],
        "Id" => <required> ::String,
        "IncludedObjectVersions" => <required> "All" or "Current",
        "OptionalFields" =>  ["Size", "LastModifiedDate", "StorageClass", "ETag", "IsMultipartUploaded", "ReplicationStatus" or "EncryptionStatus", ...],
        "Schedule" => <required> ["Frequency" => <required> "Daily" or "Weekly"]
    ]
```



See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketInventoryConfiguration)
"""
@inline put_bucket_inventory_configuration(aws::AWSConfig=default_aws_config(); args...) = put_bucket_inventory_configuration(aws, args)

@inline put_bucket_inventory_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?inventory", args)

@inline put_bucket_inventory_configuration(args) = put_bucket_inventory_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_lifecycle
    put_bucket_lifecycle([::AWSConfig], arguments::Dict)
    put_bucket_lifecycle([::AWSConfig]; Bucket=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?lifecycle", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?lifecycle", Bucket=, <keyword arguments>)

# PutBucketLifecycle Operation

Deprecated, see the PutBucketLifecycleConfiguration operation.

# Arguments

## `Bucket = ::String` -- *Required*



## `*header:* Content-MD5 = ::String`



## `LifecycleConfiguration = ["Rule" => <required> [[ ... ], ...]]`

```
 LifecycleConfiguration = ["Rule" => <required> [[
            "Expiration" =>  [
                "Date" =>  timestamp,
                "Days" =>  ::Int,
                "ExpiredObjectDeleteMarker" =>  ::Bool
            ],
            "ID" =>  ::String,
            "Prefix" => <required> ::String,
            "Status" => <required> "Enabled" or "Disabled",
            "Transition" =>  [
                "Date" =>  timestamp,
                "Days" =>  ::Int,
                "StorageClass" =>  "GLACIER", "STANDARD_IA" or "ONEZONE_IA"
            ],
            "NoncurrentVersionTransition" =>  [
                "NoncurrentDays" =>  ::Int,
                "StorageClass" =>  "GLACIER", "STANDARD_IA" or "ONEZONE_IA"
            ],
            "NoncurrentVersionExpiration" =>  ["NoncurrentDays" =>  ::Int],
            "AbortIncompleteMultipartUpload" =>  ["DaysAfterInitiation" =>  ::Int]
        ], ...]]
```



See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketLifecycle)
"""
@inline put_bucket_lifecycle(aws::AWSConfig=default_aws_config(); args...) = put_bucket_lifecycle(aws, args)

@inline put_bucket_lifecycle(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?lifecycle", args)

@inline put_bucket_lifecycle(args) = put_bucket_lifecycle(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_lifecycle_configuration
    put_bucket_lifecycle_configuration([::AWSConfig], arguments::Dict)
    put_bucket_lifecycle_configuration([::AWSConfig]; Bucket=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?lifecycle", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?lifecycle", Bucket=, <keyword arguments>)

# PutBucketLifecycleConfiguration Operation

Sets lifecycle configuration for your bucket. If a lifecycle configuration exists, it replaces it.

# Arguments

## `Bucket = ::String` -- *Required*



## `LifecycleConfiguration = ["Rule" => <required> [[ ... ], ...]]`

```
 LifecycleConfiguration = ["Rule" => <required> [[
            "Expiration" =>  [
                "Date" =>  timestamp,
                "Days" =>  ::Int,
                "ExpiredObjectDeleteMarker" =>  ::Bool
            ],
            "ID" =>  ::String,
            "Prefix" =>  ::String,
            "Filter" =>  [
                "Prefix" =>  ::String,
                "Tag" =>  [
                    "Key" => <required> ::String,
                    "Value" => <required> ::String
                ],
                "And" =>  [
                    "Prefix" =>  ::String,
                    "Tag" =>  [[
                        "Key" => <required> ::String,
                        "Value" => <required> ::String
                    ], ...]
                ]
            ],
            "Status" => <required> "Enabled" or "Disabled",
            "Transition" =>  [[
                "Date" =>  timestamp,
                "Days" =>  ::Int,
                "StorageClass" =>  "GLACIER", "STANDARD_IA" or "ONEZONE_IA"
            ], ...],
            "NoncurrentVersionTransition" =>  [[
                "NoncurrentDays" =>  ::Int,
                "StorageClass" =>  "GLACIER", "STANDARD_IA" or "ONEZONE_IA"
            ], ...],
            "NoncurrentVersionExpiration" =>  ["NoncurrentDays" =>  ::Int],
            "AbortIncompleteMultipartUpload" =>  ["DaysAfterInitiation" =>  ::Int]
        ], ...]]
```



# Example: Put bucket lifecycle

The following example replaces existing lifecycle configuration, if any, on the specified bucket. 

Input:
```
[
    "Bucket" => "examplebucket",
    "LifecycleConfiguration" => [
        "Rules" => [
            [
                "Expiration" => [
                    "Days" => 3650
                ],
                "Filter" => [
                    "Prefix" => "documents/"
                ],
                "ID" => "TestOnly",
                "Status" => "Enabled",
                "Transitions" => [
                    [
                        "Days" => 365,
                        "StorageClass" => "GLACIER"
                    ]
                ]
            ]
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketLifecycleConfiguration)
"""
@inline put_bucket_lifecycle_configuration(aws::AWSConfig=default_aws_config(); args...) = put_bucket_lifecycle_configuration(aws, args)

@inline put_bucket_lifecycle_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?lifecycle", args)

@inline put_bucket_lifecycle_configuration(args) = put_bucket_lifecycle_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_logging
    put_bucket_logging([::AWSConfig], arguments::Dict)
    put_bucket_logging([::AWSConfig]; Bucket=, BucketLoggingStatus=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?logging", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?logging", Bucket=, BucketLoggingStatus=, <keyword arguments>)

# PutBucketLogging Operation

Set the logging parameters for a bucket and to specify permissions for who can view and modify the logging parameters. To set the logging status of a bucket, you must be the bucket owner.

# Arguments

## `Bucket = ::String` -- *Required*



## `BucketLoggingStatus = ["LoggingEnabled" =>  [ ... ]]` -- *Required*

```
 BucketLoggingStatus = ["LoggingEnabled" =>  [
            "TargetBucket" => <required> ::String,
            "TargetGrants" =>  [[
                "Grantee" =>  [
                    "DisplayName" =>  ::String,
                    "EmailAddress" =>  ::String,
                    "ID" =>  ::String,
                    "xsi:type" => <required> "CanonicalUser", "AmazonCustomerByEmail" or "Group",
                    "URI" =>  ::String
                ],
                "Permission" =>  "FULL_CONTROL", "READ" or "WRITE"
            ], ...],
            "TargetPrefix" => <required> ::String
        ]]
```

## `*header:* Content-MD5 = ::String`





# Example: Set logging configuration for a bucket

The following example sets logging policy on a bucket. For the Log Delivery group to deliver logs to the destination bucket, it needs permission for the READ_ACP action which the policy grants.

Input:
```
[
    "Bucket" => "sourcebucket",
    "BucketLoggingStatus" => [
        "LoggingEnabled" => [
            "TargetBucket" => "targetbucket",
            "TargetGrants" => [
                [
                    "Grantee" => [
                        "Type" => "Group",
                        "URI" => "http://acs.amazonaws.com/groups/global/AllUsers"
                    ],
                    "Permission" => "READ"
                ]
            ],
            "TargetPrefix" => "MyBucketLogs/"
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketLogging)
"""
@inline put_bucket_logging(aws::AWSConfig=default_aws_config(); args...) = put_bucket_logging(aws, args)

@inline put_bucket_logging(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?logging", args)

@inline put_bucket_logging(args) = put_bucket_logging(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_metrics_configuration
    put_bucket_metrics_configuration([::AWSConfig], arguments::Dict)
    put_bucket_metrics_configuration([::AWSConfig]; Bucket=, id=, MetricsConfiguration=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?metrics", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?metrics", Bucket=, id=, MetricsConfiguration=)

# PutBucketMetricsConfiguration Operation

Sets a metrics configuration (specified by the metrics configuration ID) for the bucket.

# Arguments

## `Bucket = ::String` -- *Required*
The name of the bucket for which the metrics configuration is set.


## `id = ::String` -- *Required*
The ID used to identify the metrics configuration.


## `MetricsConfiguration = [ ... ]` -- *Required*
Specifies the metrics configuration.
```
 MetricsConfiguration = [
        "Id" => <required> ::String,
        "Filter" =>  [
            "Prefix" =>  ::String,
            "Tag" =>  [
                "Key" => <required> ::String,
                "Value" => <required> ::String
            ],
            "And" =>  [
                "Prefix" =>  ::String,
                "Tag" =>  [[
                    "Key" => <required> ::String,
                    "Value" => <required> ::String
                ], ...]
            ]
        ]
    ]
```



See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketMetricsConfiguration)
"""
@inline put_bucket_metrics_configuration(aws::AWSConfig=default_aws_config(); args...) = put_bucket_metrics_configuration(aws, args)

@inline put_bucket_metrics_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?metrics", args)

@inline put_bucket_metrics_configuration(args) = put_bucket_metrics_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_notification
    put_bucket_notification([::AWSConfig], arguments::Dict)
    put_bucket_notification([::AWSConfig]; Bucket=, NotificationConfiguration=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?notification", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?notification", Bucket=, NotificationConfiguration=, <keyword arguments>)

# PutBucketNotification Operation

Deprecated, see the PutBucketNotificationConfiguraiton operation.

# Arguments

## `Bucket = ::String` -- *Required*



## `*header:* Content-MD5 = ::String`



## `NotificationConfiguration = [ ... ]` -- *Required*

```
 NotificationConfiguration = [
        "TopicConfiguration" =>  [
            "Id" =>  ::String,
            "Event" =>  ["s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete" or "s3:ObjectRemoved:DeleteMarkerCreated", ...],
            "Event" =>  "s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete" or "s3:ObjectRemoved:DeleteMarkerCreated",
            "Topic" =>  ::String
        ],
        "QueueConfiguration" =>  [
            "Id" =>  ::String,
            "Event" =>  "s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete" or "s3:ObjectRemoved:DeleteMarkerCreated",
            "Event" =>  ["s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete" or "s3:ObjectRemoved:DeleteMarkerCreated", ...],
            "Queue" =>  ::String
        ],
        "CloudFunctionConfiguration" =>  [
            "Id" =>  ::String,
            "Event" =>  "s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete" or "s3:ObjectRemoved:DeleteMarkerCreated",
            "Event" =>  ["s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete" or "s3:ObjectRemoved:DeleteMarkerCreated", ...],
            "CloudFunction" =>  ::String,
            "InvocationRole" =>  ::String
        ]
    ]
```



See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketNotification)
"""
@inline put_bucket_notification(aws::AWSConfig=default_aws_config(); args...) = put_bucket_notification(aws, args)

@inline put_bucket_notification(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?notification", args)

@inline put_bucket_notification(args) = put_bucket_notification(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_notification_configuration
    put_bucket_notification_configuration([::AWSConfig], arguments::Dict)
    put_bucket_notification_configuration([::AWSConfig]; Bucket=, NotificationConfiguration=)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?notification", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?notification", Bucket=, NotificationConfiguration=)

# PutBucketNotificationConfiguration Operation

Enables notifications of specified events for a bucket.

# Arguments

## `Bucket = ::String` -- *Required*



## `NotificationConfiguration = [ ... ]` -- *Required*

```
 NotificationConfiguration = [
        "TopicConfiguration" =>  [[
            "Id" =>  ::String,
            "Topic" => <required> ::String,
            "Event" => <required> ["s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete" or "s3:ObjectRemoved:DeleteMarkerCreated", ...],
            "Filter" =>  ["S3Key" =>  ["FilterRule" =>  [[
                        "Name" =>  "prefix" or "suffix",
                        "Value" =>  ::String
                    ], ...]]]
        ], ...],
        "QueueConfiguration" =>  [[
            "Id" =>  ::String,
            "Queue" => <required> ::String,
            "Event" => <required> ["s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete" or "s3:ObjectRemoved:DeleteMarkerCreated", ...],
            "Filter" =>  ["S3Key" =>  ["FilterRule" =>  [[
                        "Name" =>  "prefix" or "suffix",
                        "Value" =>  ::String
                    ], ...]]]
        ], ...],
        "CloudFunctionConfiguration" =>  [[
            "Id" =>  ::String,
            "CloudFunction" => <required> ::String,
            "Event" => <required> ["s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete" or "s3:ObjectRemoved:DeleteMarkerCreated", ...],
            "Filter" =>  ["S3Key" =>  ["FilterRule" =>  [[
                        "Name" =>  "prefix" or "suffix",
                        "Value" =>  ::String
                    ], ...]]]
        ], ...]
    ]
```



# Example: Set notification configuration for a bucket

The following example sets notification configuration on a bucket to publish the object created events to an SNS topic.

Input:
```
[
    "Bucket" => "examplebucket",
    "NotificationConfiguration" => [
        "TopicConfigurations" => [
            [
                "Events" => [
                    "s3:ObjectCreated:*"
                ],
                "TopicArn" => "arn:aws:sns:us-west-2:123456789012:s3-notification-topic"
            ]
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketNotificationConfiguration)
"""
@inline put_bucket_notification_configuration(aws::AWSConfig=default_aws_config(); args...) = put_bucket_notification_configuration(aws, args)

@inline put_bucket_notification_configuration(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?notification", args)

@inline put_bucket_notification_configuration(args) = put_bucket_notification_configuration(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_policy
    put_bucket_policy([::AWSConfig], arguments::Dict)
    put_bucket_policy([::AWSConfig]; Bucket=, Policy=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?policy", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?policy", Bucket=, Policy=, <keyword arguments>)

# PutBucketPolicy Operation

Replaces a policy on a bucket. If the bucket already has a policy, the one in this request completely replaces it.

# Arguments

## `Bucket = ::String` -- *Required*



## `*header:* Content-MD5 = ::String`



## `*header:* x-amz-confirm-remove-self-bucket-access = ::Bool`
Set this parameter to true to confirm that you want to remove your permissions to change this bucket policy in the future.


## `Policy = ::String` -- *Required*
The bucket policy as a JSON document.




# Example: Set bucket policy

The following example sets a permission policy on a bucket.

Input:
```
[
    "Bucket" => "examplebucket",
    "Policy" => "{"Version": "2012-10-17", "Statement": [{ "Sid": "id-1","Effect": "Allow","Principal": {"AWS": "arn:aws:iam::123456789012:root"}, "Action": [ "s3:PutObject","s3:PutObjectAcl"], "Resource": ["arn:aws:s3:::acl3/*" ] } ]}"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketPolicy)
"""
@inline put_bucket_policy(aws::AWSConfig=default_aws_config(); args...) = put_bucket_policy(aws, args)

@inline put_bucket_policy(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?policy", args)

@inline put_bucket_policy(args) = put_bucket_policy(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_replication
    put_bucket_replication([::AWSConfig], arguments::Dict)
    put_bucket_replication([::AWSConfig]; Bucket=, ReplicationConfiguration=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?replication", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?replication", Bucket=, ReplicationConfiguration=, <keyword arguments>)

# PutBucketReplication Operation

Creates a new replication configuration (or replaces an existing one, if present).

# Arguments

## `Bucket = ::String` -- *Required*



## `*header:* Content-MD5 = ::String`



## `ReplicationConfiguration = [ ... ]` -- *Required*

```
 ReplicationConfiguration = [
        "Role" => <required> ::String,
        "Rule" => <required> [[
            "ID" =>  ::String,
            "Prefix" => <required> ::String,
            "Status" => <required> "Enabled" or "Disabled",
            "SourceSelectionCriteria" =>  ["SseKmsEncryptedObjects" =>  ["Status" => <required> "Enabled" or "Disabled"]],
            "Destination" => <required> [
                "Bucket" => <required> ::String,
                "Account" =>  ::String,
                "StorageClass" =>  "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA" or "ONEZONE_IA",
                "AccessControlTranslation" =>  ["Owner" => <required> "Destination"],
                "EncryptionConfiguration" =>  ["ReplicaKmsKeyID" =>  ::String]
            ]
        ], ...]
    ]
```



# Example: Set replication configuration on a bucket

The following example sets replication configuration on a bucket.

Input:
```
[
    "Bucket" => "examplebucket",
    "ReplicationConfiguration" => [
        "Role" => "arn:aws:iam::123456789012:role/examplerole",
        "Rules" => [
            [
                "Destination" => [
                    "Bucket" => "arn:aws:s3:::destinationbucket",
                    "StorageClass" => "STANDARD"
                ],
                "Prefix" => "",
                "Status" => "Enabled"
            ]
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketReplication)
"""
@inline put_bucket_replication(aws::AWSConfig=default_aws_config(); args...) = put_bucket_replication(aws, args)

@inline put_bucket_replication(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?replication", args)

@inline put_bucket_replication(args) = put_bucket_replication(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_request_payment
    put_bucket_request_payment([::AWSConfig], arguments::Dict)
    put_bucket_request_payment([::AWSConfig]; Bucket=, RequestPaymentConfiguration=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?requestPayment", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?requestPayment", Bucket=, RequestPaymentConfiguration=, <keyword arguments>)

# PutBucketRequestPayment Operation

Sets the request payment configuration for a bucket. By default, the bucket owner pays for downloads from the bucket. This configuration parameter enables the bucket owner (only) to specify that the person requesting the download will be charged for the download. Documentation on requester pays buckets can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html

# Arguments

## `Bucket = ::String` -- *Required*



## `*header:* Content-MD5 = ::String`



## `RequestPaymentConfiguration = ["Payer" => <required> "Requester" or "BucketOwner"]` -- *Required*





# Example: Set request payment configuration on a bucket.

The following example sets request payment configuration on a bucket so that person requesting the download is charged.

Input:
```
[
    "Bucket" => "examplebucket",
    "RequestPaymentConfiguration" => [
        "Payer" => "Requester"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketRequestPayment)
"""
@inline put_bucket_request_payment(aws::AWSConfig=default_aws_config(); args...) = put_bucket_request_payment(aws, args)

@inline put_bucket_request_payment(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?requestPayment", args)

@inline put_bucket_request_payment(args) = put_bucket_request_payment(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_tagging
    put_bucket_tagging([::AWSConfig], arguments::Dict)
    put_bucket_tagging([::AWSConfig]; Bucket=, Tagging=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?tagging", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?tagging", Bucket=, Tagging=, <keyword arguments>)

# PutBucketTagging Operation

Sets the tags for a bucket.

# Arguments

## `Bucket = ::String` -- *Required*



## `*header:* Content-MD5 = ::String`



## `Tagging = ["TagSet" => <required> [[ ... ], ...]]` -- *Required*

```
 Tagging = ["TagSet" => <required> [[
            "Key" => <required> ::String,
            "Value" => <required> ::String
        ], ...]]
```



# Example: Set tags on a bucket

The following example sets tags on a bucket. Any existing tags are replaced.

Input:
```
[
    "Bucket" => "examplebucket",
    "Tagging" => [
        "TagSet" => [
            [
                "Key" => "Key1",
                "Value" => "Value1"
            ],
            [
                "Key" => "Key2",
                "Value" => "Value2"
            ]
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketTagging)
"""
@inline put_bucket_tagging(aws::AWSConfig=default_aws_config(); args...) = put_bucket_tagging(aws, args)

@inline put_bucket_tagging(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?tagging", args)

@inline put_bucket_tagging(args) = put_bucket_tagging(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_versioning
    put_bucket_versioning([::AWSConfig], arguments::Dict)
    put_bucket_versioning([::AWSConfig]; Bucket=, VersioningConfiguration=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?versioning", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?versioning", Bucket=, VersioningConfiguration=, <keyword arguments>)

# PutBucketVersioning Operation

Sets the versioning state of an existing bucket. To set the versioning state, you must be the bucket owner.

# Arguments

## `Bucket = ::String` -- *Required*



## `*header:* Content-MD5 = ::String`



## `*header:* x-amz-mfa = ::String`
The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.


## `VersioningConfiguration = [ ... ]` -- *Required*

```
 VersioningConfiguration = [
        "MfaDelete" =>  "Enabled" or "Disabled",
        "Status" =>  "Enabled" or "Suspended"
    ]
```



# Example: Set versioning configuration on a bucket

The following example sets versioning configuration on bucket. The configuration enables versioning on the bucket.

Input:
```
[
    "Bucket" => "examplebucket",
    "VersioningConfiguration" => [
        "MFADelete" => "Disabled",
        "Status" => "Enabled"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketVersioning)
"""
@inline put_bucket_versioning(aws::AWSConfig=default_aws_config(); args...) = put_bucket_versioning(aws, args)

@inline put_bucket_versioning(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?versioning", args)

@inline put_bucket_versioning(args) = put_bucket_versioning(default_aws_config(), args)


"""
    using AWSSDK.S3.put_bucket_website
    put_bucket_website([::AWSConfig], arguments::Dict)
    put_bucket_website([::AWSConfig]; Bucket=, WebsiteConfiguration=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}?website", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}?website", Bucket=, WebsiteConfiguration=, <keyword arguments>)

# PutBucketWebsite Operation

Set the website configuration for a bucket.

# Arguments

## `Bucket = ::String` -- *Required*



## `*header:* Content-MD5 = ::String`



## `WebsiteConfiguration = [ ... ]` -- *Required*

```
 WebsiteConfiguration = [
        "ErrorDocument" =>  ["Key" => <required> ::String],
        "IndexDocument" =>  ["Suffix" => <required> ::String],
        "RedirectAllRequestsTo" =>  [
            "HostName" => <required> ::String,
            "Protocol" =>  "http" or "https"
        ],
        "RoutingRules" =>  [[
            "Condition" =>  [
                "HttpErrorCodeReturnedEquals" =>  ::String,
                "KeyPrefixEquals" =>  ::String
            ],
            "Redirect" => <required> [
                "HostName" =>  ::String,
                "HttpRedirectCode" =>  ::String,
                "Protocol" =>  "http" or "https",
                "ReplaceKeyPrefixWith" =>  ::String,
                "ReplaceKeyWith" =>  ::String
            ]
        ], ...]
    ]
```



# Example: Set website configuration on a bucket

The following example adds website configuration to a bucket.

Input:
```
[
    "Bucket" => "examplebucket",
    "ContentMD5" => "",
    "WebsiteConfiguration" => [
        "ErrorDocument" => [
            "Key" => "error.html"
        ],
        "IndexDocument" => [
            "Suffix" => "index.html"
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutBucketWebsite)
"""
@inline put_bucket_website(aws::AWSConfig=default_aws_config(); args...) = put_bucket_website(aws, args)

@inline put_bucket_website(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}?website", args)

@inline put_bucket_website(args) = put_bucket_website(default_aws_config(), args)


"""
    using AWSSDK.S3.put_object
    put_object([::AWSConfig], arguments::Dict)
    put_object([::AWSConfig]; Bucket=, Key=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}/{Key+}", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}/{Key+}", Bucket=, Key=, <keyword arguments>)

# PutObject Operation

Adds an object to a bucket.

# Arguments

## `*header:* x-amz-acl = "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read" or "bucket-owner-full-control"`
The canned ACL to apply to the object.


## `Body = blob`
Object data.


## `Bucket = ::String` -- *Required*
Name of the bucket to which the PUT operation was initiated.


## `*header:* Cache-Control = ::String`
Specifies caching behavior along the request/reply chain.


## `*header:* Content-Disposition = ::String`
Specifies presentational information for the object.


## `*header:* Content-Encoding = ::String`
Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.


## `*header:* Content-Language = ::String`
The language the content is in.


## `*header:* Content-Length = ::Int`
Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically.


## `*header:* Content-MD5 = ::String`
The base64-encoded 128-bit MD5 digest of the part data.


## `*header:* Content-Type = ::String`
A standard MIME type describing the format of the object data.


## `*header:* Expires = timestamp`
The date and time at which the object is no longer cacheable.


## `*header:* x-amz-grant-full-control = ::String`
Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.


## `*header:* x-amz-grant-read = ::String`
Allows grantee to read the object data and its metadata.


## `*header:* x-amz-grant-read-acp = ::String`
Allows grantee to read the object ACL.


## `*header:* x-amz-grant-write-acp = ::String`
Allows grantee to write the ACL for the applicable object.


## `Key = ::String` -- *Required*
Object key for which the PUT operation was initiated.


## `*header:* x-amz-meta- = ::Dict{String,String}`
A map of metadata to store with the object in S3.


## `*header:* x-amz-server-side-encryption = "AES256" or "aws:kms"`
The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).


## `*header:* x-amz-storage-class = "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA" or "ONEZONE_IA"`
The type of storage to use for the object. Defaults to 'STANDARD'.


## `*header:* x-amz-website-redirect-location = ::String`
If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.


## `*header:* x-amz-server-side-encryption-customer-algorithm = ::String`
Specifies the algorithm to use to when encrypting the object (e.g., AES256).


## `*header:* x-amz-server-side-encryption-customer-key = blob`
Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.


## `*header:* x-amz-server-side-encryption-customer-key-MD5 = ::String`
Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.


## `*header:* x-amz-server-side-encryption-aws-kms-key-id = ::String`
Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version


## `*header:* x-amz-request-payer = "requester"`



## `*header:* x-amz-tagging = ::String`
The tag-set for the object. The tag-set must be encoded as URL Query parameters




# Returns

`PutObjectOutput`

# Example: To upload an object and specify server-side encryption and object tags

The following example uploads and object. The request specifies the optional server-side encryption option. The request also specifies optional object tags. If the bucket is versioning enabled, S3 returns version ID in response.

Input:
```
[
    "Body" => "filetoupload",
    "Bucket" => "examplebucket",
    "Key" => "exampleobject",
    "ServerSideEncryption" => "AES256",
    "Tagging" => "key1=value1&key2=value2"
]
```

Output:
```
Dict(
    "ETag" => ""6805f2cfc46c0f04559748bb039d69ae"",
    "ServerSideEncryption" => "AES256",
    "VersionId" => "Ri.vC6qVlA4dEnjgRV4ZHsHoFIjqEMNt"
)
```

# Example: To upload an object and specify canned ACL.

The following example uploads and object. The request specifies optional canned ACL (access control list) to all READ access to authenticated users. If the bucket is versioning enabled, S3 returns version ID in response.

Input:
```
[
    "ACL" => "authenticated-read",
    "Body" => "filetoupload",
    "Bucket" => "examplebucket",
    "Key" => "exampleobject"
]
```

Output:
```
Dict(
    "ETag" => ""6805f2cfc46c0f04559748bb039d69ae"",
    "VersionId" => "Kirh.unyZwjQ69YxcQLA8z4F5j3kJJKr"
)
```

# Example: To upload an object

The following example uploads an object to a versioning-enabled bucket. The source file is specified using Windows file syntax. S3 returns VersionId of the newly created object.

Input:
```
[
    "Body" => "HappyFace.jpg",
    "Bucket" => "examplebucket",
    "Key" => "HappyFace.jpg"
]
```

Output:
```
Dict(
    "ETag" => ""6805f2cfc46c0f04559748bb039d69ae"",
    "VersionId" => "tpf3zF08nBplQK1XLOefGskR7mGDwcDk"
)
```

# Example: To create an object.

The following example creates an object. If the bucket is versioning enabled, S3 returns version ID in response.

Input:
```
[
    "Body" => "filetoupload",
    "Bucket" => "examplebucket",
    "Key" => "objectkey"
]
```

Output:
```
Dict(
    "ETag" => ""6805f2cfc46c0f04559748bb039d69ae"",
    "VersionId" => "Bvq0EDKxOcXLJXNo_Lkz37eM3R4pfzyQ"
)
```

# Example: To upload an object and specify optional tags

The following example uploads an object. The request specifies optional object tags. The bucket is versioned, therefore S3 returns version ID of the newly created object.

Input:
```
[
    "Body" => "c:\\HappyFace.jpg",
    "Bucket" => "examplebucket",
    "Key" => "HappyFace.jpg",
    "Tagging" => "key1=value1&key2=value2"
]
```

Output:
```
Dict(
    "ETag" => ""6805f2cfc46c0f04559748bb039d69ae"",
    "VersionId" => "psM2sYY4.o1501dSx8wMvnkOzSBB.V4a"
)
```

# Example: To upload object and specify user-defined metadata

The following example creates an object. The request also specifies optional metadata. If the bucket is versioning enabled, S3 returns version ID in response.

Input:
```
[
    "Body" => "filetoupload",
    "Bucket" => "examplebucket",
    "Key" => "exampleobject",
    "Metadata" => [
        "metadata1" => "value1",
        "metadata2" => "value2"
    ]
]
```

Output:
```
Dict(
    "ETag" => ""6805f2cfc46c0f04559748bb039d69ae"",
    "VersionId" => "pSKidl4pHBiNwukdbcPXAIs.sshFFOc0"
)
```

# Example: To upload an object (specify optional headers)

The following example uploads an object. The request specifies optional request headers to directs S3 to use specific storage class and use server-side encryption.

Input:
```
[
    "Body" => "HappyFace.jpg",
    "Bucket" => "examplebucket",
    "Key" => "HappyFace.jpg",
    "ServerSideEncryption" => "AES256",
    "StorageClass" => "STANDARD_IA"
]
```

Output:
```
Dict(
    "ETag" => ""6805f2cfc46c0f04559748bb039d69ae"",
    "ServerSideEncryption" => "AES256",
    "VersionId" => "CG612hodqujkf8FaaNfp8U..FIhLROcp"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutObject)
"""
@inline put_object(aws::AWSConfig=default_aws_config(); args...) = put_object(aws, args)

@inline put_object(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}/{Key+}", args)

@inline put_object(args) = put_object(default_aws_config(), args)


"""
    using AWSSDK.S3.put_object_acl
    put_object_acl([::AWSConfig], arguments::Dict)
    put_object_acl([::AWSConfig]; Bucket=, Key=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}/{Key+}?acl", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}/{Key+}?acl", Bucket=, Key=, <keyword arguments>)

# PutObjectAcl Operation

uses the acl subresource to set the access control list (ACL) permissions for an object that already exists in a bucket

# Arguments

## `*header:* x-amz-acl = "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read" or "bucket-owner-full-control"`
The canned ACL to apply to the object.


## `AccessControlPolicy = [ ... ]`

```
 AccessControlPolicy = [
        "AccessControlList" =>  [[
            "Grantee" =>  [
                "DisplayName" =>  ::String,
                "EmailAddress" =>  ::String,
                "ID" =>  ::String,
                "xsi:type" => <required> "CanonicalUser", "AmazonCustomerByEmail" or "Group",
                "URI" =>  ::String
            ],
            "Permission" =>  "FULL_CONTROL", "WRITE", "WRITE_ACP", "READ" or "READ_ACP"
        ], ...],
        "Owner" =>  [
            "DisplayName" =>  ::String,
            "ID" =>  ::String
        ]
    ]
```

## `Bucket = ::String` -- *Required*



## `*header:* Content-MD5 = ::String`



## `*header:* x-amz-grant-full-control = ::String`
Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.


## `*header:* x-amz-grant-read = ::String`
Allows grantee to list the objects in the bucket.


## `*header:* x-amz-grant-read-acp = ::String`
Allows grantee to read the bucket ACL.


## `*header:* x-amz-grant-write = ::String`
Allows grantee to create, overwrite, and delete any object in the bucket.


## `*header:* x-amz-grant-write-acp = ::String`
Allows grantee to write the ACL for the applicable bucket.


## `Key = ::String` -- *Required*



## `*header:* x-amz-request-payer = "requester"`



## `versionId = ::String`
VersionId used to reference a specific version of the object.




# Returns

`PutObjectAclOutput`

# Exceptions

`NoSuchKey`.

# Example: To grant permissions using object ACL

The following example adds grants to an object ACL. The first permission grants user1 and user2 FULL_CONTROL and the AllUsers group READ permission.

Input:
```
[
    "AccessControlPolicy" => [

    ],
    "Bucket" => "examplebucket",
    "GrantFullControl" => "emailaddress=user1@example.com,emailaddress=user2@example.com",
    "GrantRead" => "uri=http://acs.amazonaws.com/groups/global/AllUsers",
    "Key" => "HappyFace.jpg"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutObjectAcl)
"""
@inline put_object_acl(aws::AWSConfig=default_aws_config(); args...) = put_object_acl(aws, args)

@inline put_object_acl(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}/{Key+}?acl", args)

@inline put_object_acl(args) = put_object_acl(default_aws_config(), args)


"""
    using AWSSDK.S3.put_object_tagging
    put_object_tagging([::AWSConfig], arguments::Dict)
    put_object_tagging([::AWSConfig]; Bucket=, Key=, Tagging=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}/{Key+}?tagging", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}/{Key+}?tagging", Bucket=, Key=, Tagging=, <keyword arguments>)

# PutObjectTagging Operation

Sets the supplied tag-set to an object that already exists in a bucket

# Arguments

## `Bucket = ::String` -- *Required*



## `Key = ::String` -- *Required*



## `versionId = ::String`



## `*header:* Content-MD5 = ::String`



## `Tagging = ["TagSet" => <required> [[ ... ], ...]]` -- *Required*

```
 Tagging = ["TagSet" => <required> [[
            "Key" => <required> ::String,
            "Value" => <required> ::String
        ], ...]]
```



# Returns

`PutObjectTaggingOutput`

# Example: To add tags to an existing object

The following example adds tags to an existing object.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "HappyFace.jpg",
    "Tagging" => [
        "TagSet" => [
            [
                "Key" => "Key3",
                "Value" => "Value3"
            ],
            [
                "Key" => "Key4",
                "Value" => "Value4"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "VersionId" => "null"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/PutObjectTagging)
"""
@inline put_object_tagging(aws::AWSConfig=default_aws_config(); args...) = put_object_tagging(aws, args)

@inline put_object_tagging(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}/{Key+}?tagging", args)

@inline put_object_tagging(args) = put_object_tagging(default_aws_config(), args)


"""
    using AWSSDK.S3.restore_object
    restore_object([::AWSConfig], arguments::Dict)
    restore_object([::AWSConfig]; Bucket=, Key=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "POST", "/{Bucket}/{Key+}?restore", arguments::Dict)
    s3([::AWSConfig], "POST", "/{Bucket}/{Key+}?restore", Bucket=, Key=, <keyword arguments>)

# RestoreObject Operation

Restores an archived copy of an object back into Amazon S3

# Arguments

## `Bucket = ::String` -- *Required*



## `Key = ::String` -- *Required*



## `versionId = ::String`



## `RestoreRequest = [ ... ]`

```
 RestoreRequest = [
        "Days" =>  ::Int,
        "GlacierJobParameters" =>  ["Tier" => <required> "Standard", "Bulk" or "Expedited"],
        "Type" =>  "SELECT",
        "Tier" =>  "Standard", "Bulk" or "Expedited",
        "Description" =>  ::String,
        "SelectParameters" =>  [
            "InputSerialization" => <required> [
                "CSV" =>  [
                    "FileHeaderInfo" =>  "USE", "IGNORE" or "NONE",
                    "Comments" =>  ::String,
                    "QuoteEscapeCharacter" =>  ::String,
                    "RecordDelimiter" =>  ::String,
                    "FieldDelimiter" =>  ::String,
                    "QuoteCharacter" =>  ::String,
                    "AllowQuotedRecordDelimiter" =>  ::Bool
                ],
                "CompressionType" =>  "NONE", "GZIP" or "BZIP2",
                "JSON" =>  ["Type" =>  "DOCUMENT" or "LINES"]
            ],
            "ExpressionType" => <required> "SQL",
            "Expression" => <required> ::String,
            "OutputSerialization" => <required> [
                "CSV" =>  [
                    "QuoteFields" =>  "ALWAYS" or "ASNEEDED",
                    "QuoteEscapeCharacter" =>  ::String,
                    "RecordDelimiter" =>  ::String,
                    "FieldDelimiter" =>  ::String,
                    "QuoteCharacter" =>  ::String
                ],
                "JSON" =>  ["RecordDelimiter" =>  ::String]
            ]
        ],
        "OutputLocation" =>  ["S3" =>  [
                "BucketName" => <required> ::String,
                "Prefix" => <required> ::String,
                "Encryption" =>  [
                    "EncryptionType" => <required> "AES256" or "aws:kms",
                    "KMSKeyId" =>  ::String,
                    "KMSContext" =>  ::String
                ],
                "CannedACL" =>  "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read" or "bucket-owner-full-control",
                "AccessControlList" =>  [[
                    "Grantee" =>  [
                        "DisplayName" =>  ::String,
                        "EmailAddress" =>  ::String,
                        "ID" =>  ::String,
                        "xsi:type" => <required> "CanonicalUser", "AmazonCustomerByEmail" or "Group",
                        "URI" =>  ::String
                    ],
                    "Permission" =>  "FULL_CONTROL", "WRITE", "WRITE_ACP", "READ" or "READ_ACP"
                ], ...],
                "Tagging" =>  ["TagSet" => <required> [[
                        "Key" => <required> ::String,
                        "Value" => <required> ::String
                    ], ...]],
                "UserMetadata" =>  [[
                    "Name" =>  ::String,
                    "Value" =>  ::String
                ], ...],
                "StorageClass" =>  "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA" or "ONEZONE_IA"
            ]]
    ]
```

## `*header:* x-amz-request-payer = "requester"`





# Returns

`RestoreObjectOutput`

# Exceptions

`ObjectAlreadyInActiveTierError`.

# Example: To restore an archived object

The following example restores for one day an archived copy of an object back into Amazon S3 bucket.

Input:
```
[
    "Bucket" => "examplebucket",
    "Key" => "archivedobjectkey",
    "RestoreRequest" => [
        "Days" => 1,
        "GlacierJobParameters" => [
            "Tier" => "Expedited"
        ]
    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/RestoreObject)
"""
@inline restore_object(aws::AWSConfig=default_aws_config(); args...) = restore_object(aws, args)

@inline restore_object(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "POST", "/{Bucket}/{Key+}?restore", args)

@inline restore_object(args) = restore_object(default_aws_config(), args)


"""
    using AWSSDK.S3.select_object_content
    select_object_content([::AWSConfig], arguments::Dict)
    select_object_content([::AWSConfig]; Bucket=, Key=, Expression=, ExpressionType=, InputSerialization=, OutputSerialization=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "POST", "/{Bucket}/{Key+}?select&select-type=2", arguments::Dict)
    s3([::AWSConfig], "POST", "/{Bucket}/{Key+}?select&select-type=2", Bucket=, Key=, Expression=, ExpressionType=, InputSerialization=, OutputSerialization=, <keyword arguments>)

# SelectObjectContent Operation

This operation filters the contents of an Amazon S3 object based on a simple Structured Query Language (SQL) statement. In the request, along with the SQL expression, you must also specify a data serialization format (JSON or CSV) of the object. Amazon S3 uses this to parse object data into records, and returns only records that match the specified SQL expression. You must also specify the data serialization format for the response.

# Arguments

## `Bucket = ::String` -- *Required*
The S3 Bucket.


## `Key = ::String` -- *Required*
The Object Key.


## `*header:* x-amz-server-side-encryption-customer-algorithm = ::String`
The SSE Algorithm used to encrypt the object. For more information, go to [Server-Side Encryption (Using Customer-Provided Encryption Keys](http://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).


## `*header:* x-amz-server-side-encryption-customer-key = blob`
The SSE Customer Key. For more information, go to [Server-Side Encryption (Using Customer-Provided Encryption Keys](http://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).


## `*header:* x-amz-server-side-encryption-customer-key-MD5 = ::String`
The SSE Customer Key MD5. For more information, go to [Server-Side Encryption (Using Customer-Provided Encryption Keys](http://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html).


## `Expression = ::String` -- *Required*
The expression that is used to query the object.


## `ExpressionType = "SQL"` -- *Required*
The type of the provided expression (e.g., SQL).


## `RequestProgress = ["Enabled" =>  ::Bool]`
Specifies if periodic request progress information should be enabled.


## `InputSerialization = [ ... ]` -- *Required*
Describes the format of the data in the object that is being queried.
```
 InputSerialization = [
        "CSV" =>  [
            "FileHeaderInfo" =>  "USE", "IGNORE" or "NONE",
            "Comments" =>  ::String,
            "QuoteEscapeCharacter" =>  ::String,
            "RecordDelimiter" =>  ::String,
            "FieldDelimiter" =>  ::String,
            "QuoteCharacter" =>  ::String,
            "AllowQuotedRecordDelimiter" =>  ::Bool
        ],
        "CompressionType" =>  "NONE", "GZIP" or "BZIP2",
        "JSON" =>  ["Type" =>  "DOCUMENT" or "LINES"]
    ]
```

## `OutputSerialization = [ ... ]` -- *Required*
Describes the format of the data that you want Amazon S3 to return in response.
```
 OutputSerialization = [
        "CSV" =>  [
            "QuoteFields" =>  "ALWAYS" or "ASNEEDED",
            "QuoteEscapeCharacter" =>  ::String,
            "RecordDelimiter" =>  ::String,
            "FieldDelimiter" =>  ::String,
            "QuoteCharacter" =>  ::String
        ],
        "JSON" =>  ["RecordDelimiter" =>  ::String]
    ]
```



# Returns

`SelectObjectContentOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/SelectObjectContent)
"""
@inline select_object_content(aws::AWSConfig=default_aws_config(); args...) = select_object_content(aws, args)

@inline select_object_content(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "POST", "/{Bucket}/{Key+}?select&select-type=2", args)

@inline select_object_content(args) = select_object_content(default_aws_config(), args)


"""
    using AWSSDK.S3.upload_part
    upload_part([::AWSConfig], arguments::Dict)
    upload_part([::AWSConfig]; Bucket=, Key=, partNumber=, uploadId=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}/{Key+}", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}/{Key+}", Bucket=, Key=, partNumber=, uploadId=, <keyword arguments>)

# UploadPart Operation

Uploads a part in a multipart upload.

**Note:** After you initiate multipart upload and upload one or more parts, you must either complete or abort multipart upload in order to stop getting charged for storage of the uploaded parts. Only after you either complete or abort multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts storage.

# Arguments

## `Body = blob`
Object data.


## `Bucket = ::String` -- *Required*
Name of the bucket to which the multipart upload was initiated.


## `*header:* Content-Length = ::Int`
Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically.


## `*header:* Content-MD5 = ::String`
The base64-encoded 128-bit MD5 digest of the part data.


## `Key = ::String` -- *Required*
Object key for which the multipart upload was initiated.


## `partNumber = ::Int` -- *Required*
Part number of part being uploaded. This is a positive integer between 1 and 10,000.


## `uploadId = ::String` -- *Required*
Upload ID identifying the multipart upload whose part is being uploaded.


## `*header:* x-amz-server-side-encryption-customer-algorithm = ::String`
Specifies the algorithm to use to when encrypting the object (e.g., AES256).


## `*header:* x-amz-server-side-encryption-customer-key = blob`
Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header. This must be the same encryption key specified in the initiate multipart upload request.


## `*header:* x-amz-server-side-encryption-customer-key-MD5 = ::String`
Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.


## `*header:* x-amz-request-payer = "requester"`





# Returns

`UploadPartOutput`

# Example: To upload a part

The following example uploads part 1 of a multipart upload. The example specifies a file name for the part data. The Upload ID is same that is returned by the initiate multipart upload.

Input:
```
[
    "Body" => "fileToUpload",
    "Bucket" => "examplebucket",
    "Key" => "examplelargeobject",
    "PartNumber" => "1",
    "UploadId" => "xadcOB_7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LAT2dUN91cOmrEQHDsP3WA60CEg--"
]
```

Output:
```
Dict(
    "ETag" => ""d8c2eafd90c266e19ab9dcacc479f8af""
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/UploadPart)
"""
@inline upload_part(aws::AWSConfig=default_aws_config(); args...) = upload_part(aws, args)

@inline upload_part(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}/{Key+}", args)

@inline upload_part(args) = upload_part(default_aws_config(), args)


"""
    using AWSSDK.S3.upload_part_copy
    upload_part_copy([::AWSConfig], arguments::Dict)
    upload_part_copy([::AWSConfig]; Bucket=, *header:* x-amz-copy-source=, Key=, partNumber=, uploadId=, <keyword arguments>)

    using AWSCore.Services.s3
    s3([::AWSConfig], "PUT", "/{Bucket}/{Key+}", arguments::Dict)
    s3([::AWSConfig], "PUT", "/{Bucket}/{Key+}", Bucket=, *header:* x-amz-copy-source=, Key=, partNumber=, uploadId=, <keyword arguments>)

# UploadPartCopy Operation

Uploads a part by copying data from an existing object as data source.

# Arguments

## `Bucket = ::String` -- *Required*



## `*header:* x-amz-copy-source = ::String` -- *Required*
The name of the source bucket and key name of the source object, separated by a slash (/). Must be URL-encoded.


## `*header:* x-amz-copy-source-if-match = ::String`
Copies the object if its entity tag (ETag) matches the specified tag.


## `*header:* x-amz-copy-source-if-modified-since = timestamp`
Copies the object if it has been modified since the specified time.


## `*header:* x-amz-copy-source-if-none-match = ::String`
Copies the object if its entity tag (ETag) is different than the specified ETag.


## `*header:* x-amz-copy-source-if-unmodified-since = timestamp`
Copies the object if it hasn't been modified since the specified time.


## `*header:* x-amz-copy-source-range = ::String`
The range of bytes to copy from the source object. The range value must use the form bytes=first-last, where the first and last are the zero-based byte offsets to copy. For example, bytes=0-9 indicates that you want to copy the first ten bytes of the source. You can copy a range only if the source object is greater than 5 GB.


## `Key = ::String` -- *Required*



## `partNumber = ::Int` -- *Required*
Part number of part being copied. This is a positive integer between 1 and 10,000.


## `uploadId = ::String` -- *Required*
Upload ID identifying the multipart upload whose part is being copied.


## `*header:* x-amz-server-side-encryption-customer-algorithm = ::String`
Specifies the algorithm to use to when encrypting the object (e.g., AES256).


## `*header:* x-amz-server-side-encryption-customer-key = blob`
Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header. This must be the same encryption key specified in the initiate multipart upload request.


## `*header:* x-amz-server-side-encryption-customer-key-MD5 = ::String`
Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.


## `*header:* x-amz-copy-source-server-side-encryption-customer-algorithm = ::String`
Specifies the algorithm to use when decrypting the source object (e.g., AES256).


## `*header:* x-amz-copy-source-server-side-encryption-customer-key = blob`
Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.


## `*header:* x-amz-copy-source-server-side-encryption-customer-key-MD5 = ::String`
Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.


## `*header:* x-amz-request-payer = "requester"`





# Returns

`UploadPartCopyOutput`

# Example: To upload a part by copying byte range from an existing object as data source

The following example uploads a part of a multipart upload by copying a specified byte range from an existing object as data source.

Input:
```
[
    "Bucket" => "examplebucket",
    "CopySource" => "/bucketname/sourceobjectkey",
    "CopySourceRange" => "bytes=1-100000",
    "Key" => "examplelargeobject",
    "PartNumber" => "2",
    "UploadId" => "exampleuoh_10OhKhT7YukE9bjzTPRiuaCotmZM_pFngJFir9OZNrSr5cWa3cq3LZSUsfjI4FI7PkP91We7Nrw--"
]
```

Output:
```
Dict(
    "CopyPartResult" => Dict(
        "ETag" => ""65d16d19e65a7508a51f043180edcc36"",
        "LastModified" => "2016-12-29T21:44:28.000Z"
    )
)
```

# Example: To upload a part by copying data from an existing object as data source

The following example uploads a part of a multipart upload by copying data from an existing object as data source.

Input:
```
[
    "Bucket" => "examplebucket",
    "CopySource" => "/bucketname/sourceobjectkey",
    "Key" => "examplelargeobject",
    "PartNumber" => "1",
    "UploadId" => "exampleuoh_10OhKhT7YukE9bjzTPRiuaCotmZM_pFngJFir9OZNrSr5cWa3cq3LZSUsfjI4FI7PkP91We7Nrw--"
]
```

Output:
```
Dict(
    "CopyPartResult" => Dict(
        "ETag" => ""b0c6f0e7e054ab8fa2536a2677f8734d"",
        "LastModified" => "2016-12-29T21:24:43.000Z"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/UploadPartCopy)
"""
@inline upload_part_copy(aws::AWSConfig=default_aws_config(); args...) = upload_part_copy(aws, args)

@inline upload_part_copy(aws::AWSConfig, args) = AWSCore.Services.s3(aws, "PUT", "/{Bucket}/{Key+}", args)

@inline upload_part_copy(args) = upload_part_copy(default_aws_config(), args)




end # module S3


#==============================================================================#
# End of file
#==============================================================================#
