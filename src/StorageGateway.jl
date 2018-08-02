#==============================================================================#
# StorageGateway.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/storagegateway-2013-06-30.normal.json
#==============================================================================#

__precompile__()

module StorageGateway

using AWSCore


"""
    using AWSSDK.StorageGateway.activate_gateway
    activate_gateway([::AWSConfig], arguments::Dict)
    activate_gateway([::AWSConfig]; ActivationKey=, GatewayName=, GatewayTimezone=, GatewayRegion=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "ActivateGateway", arguments::Dict)
    storagegateway([::AWSConfig], "ActivateGateway", ActivationKey=, GatewayName=, GatewayTimezone=, GatewayRegion=, <keyword arguments>)

# ActivateGateway Operation

Activates the gateway you previously deployed on your host. In the activation process, you specify information such as the region you want to use for storing snapshots or tapes, the time zone for scheduled snapshots the gateway snapshot schedule window, an activation key, and a name for your gateway. The activation process also associates your gateway with your account; for more information, see [UpdateGatewayInformation](@ref).

**Note**
> You must turn on the gateway VM before you can activate your gateway.

# Arguments

## `ActivationKey = ::String` -- *Required*
Your gateway activation key. You can obtain the activation key by sending an HTTP GET request with redirects enabled to the gateway IP address (port 80). The redirect URL returned in the response provides you the activation key for your gateway in the query string parameter `activationKey`. It may also include other activation-related parameters, however, these are merely defaults -- the arguments you pass to the `ActivateGateway` API call determine the actual configuration of your gateway.

For more information, see https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html in the Storage Gateway User Guide.


## `GatewayName = ::String` -- *Required*
The name you configured for your gateway.


## `GatewayTimezone = ::String` -- *Required*
A value that indicates the time zone you want to set for the gateway. The time zone is of the format "GMT-hr:mm" or "GMT+hr:mm". For example, GMT-4:00 indicates the time is 4 hours behind GMT. GMT+2:00 indicates the time is 2 hours ahead of GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.


## `GatewayRegion = ::String` -- *Required*
A value that indicates the region where you want to store your data. The gateway region specified must be the same region as the region in your `Host` header in the request. For more information about available regions and endpoints for AWS Storage Gateway, see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#sg_region) in the *Amazon Web Services Glossary*.

Valid Values: "us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-west-1", "eu-central-1", "eu-west-2", "eu-west-3", "ap-northeast-1", "ap-northeast-2", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "sa-east-1"


## `GatewayType = ::String`
A value that defines the type of gateway to activate. The type specified is critical to all later functions of the gateway and cannot be changed after activation. The default value is `STORED`.

Valid Values: "STORED", "CACHED", "VTL", "FILE_S3"


## `TapeDriveType = ::String`
The value that indicates the type of tape drive to use for tape gateway. This field is optional.

Valid Values: "IBM-ULT3580-TD5"


## `MediumChangerType = ::String`
The value that indicates the type of medium changer to use for tape gateway. This field is optional.

Valid Values: "STK-L700", "AWS-Gateway-VTL"




# Returns

`ActivateGatewayOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To activate the gateway

Activates the gateway you previously deployed on your host.

Input:
```
[
    "ActivationKey" => "29AV1-3OFV9-VVIUB-NKT0I-LRO6V",
    "GatewayName" => "My_Gateway",
    "GatewayRegion" => "us-east-1",
    "GatewayTimezone" => "GMT-12:00",
    "GatewayType" => "STORED",
    "MediumChangerType" => "AWS-Gateway-VTL",
    "TapeDriveType" => "IBM-ULT3580-TD5"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ActivateGateway)
"""
@inline activate_gateway(aws::AWSConfig=default_aws_config(); args...) = activate_gateway(aws, args)

@inline activate_gateway(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "ActivateGateway", args)

@inline activate_gateway(args) = activate_gateway(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.add_cache
    add_cache([::AWSConfig], arguments::Dict)
    add_cache([::AWSConfig]; GatewayARN=, DiskIds=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "AddCache", arguments::Dict)
    storagegateway([::AWSConfig], "AddCache", GatewayARN=, DiskIds=)

# AddCache Operation

Configures one or more gateway local disks as cache for a gateway. This operation is only supported in the cached volume, tape and file gateway type (see [Storage Gateway Concepts](http://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html)).

In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add cache, and one or more disk IDs that you want to configure as cache.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `DiskIds = [::String, ...]` -- *Required*





# Returns

`AddCacheOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To add a cache

The following example shows a request that activates a gateway-stored volume.

Input:
```
[
    "DiskIds" => [
        "pci-0000:03:00.0-scsi-0:0:0:0",
        "pci-0000:03:00.0-scsi-0:0:1:0"
    ],
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddCache)
"""
@inline add_cache(aws::AWSConfig=default_aws_config(); args...) = add_cache(aws, args)

@inline add_cache(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "AddCache", args)

@inline add_cache(args) = add_cache(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.add_tags_to_resource
    add_tags_to_resource([::AWSConfig], arguments::Dict)
    add_tags_to_resource([::AWSConfig]; ResourceARN=, Tags=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "AddTagsToResource", arguments::Dict)
    storagegateway([::AWSConfig], "AddTagsToResource", ResourceARN=, Tags=)

# AddTagsToResource Operation

Adds one or more tags to the specified resource. You use tags to add metadata to resources, which you can use to categorize these resources. For example, you can categorize resources by purpose, owner, environment, or team. Each tag consists of a key and a value, which you define. You can add tags to the following AWS Storage Gateway resources:

*   Storage gateways of all types

*   Storage Volumes

*   Virtual Tapes

You can create a maximum of 10 tags for each resource. Virtual tapes and storage volumes that are recovered to a new gateway maintain their tags.

# Arguments

## `ResourceARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource you want to add tags to.


## `Tags = [[ ... ], ...]` -- *Required*
The key-value pair that represents the tag you want to add to the resource. The value can be an empty string.

**Note**
> Valid characters for key and value are letters, spaces, and numbers representable in UTF-8 format, and the following special characters: + - = . _ : / @.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Returns

`AddTagsToResourceOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To add tags to resource

Adds one or more tags to the specified resource.

Input:
```
[
    "ResourceARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B",
    "Tags" => [
        [
            "Key" => "Dev Gatgeway Region",
            "Value" => "East Coast"
        ]
    ]
]
```

Output:
```
Dict(
    "ResourceARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddTagsToResource)
"""
@inline add_tags_to_resource(aws::AWSConfig=default_aws_config(); args...) = add_tags_to_resource(aws, args)

@inline add_tags_to_resource(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "AddTagsToResource", args)

@inline add_tags_to_resource(args) = add_tags_to_resource(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.add_upload_buffer
    add_upload_buffer([::AWSConfig], arguments::Dict)
    add_upload_buffer([::AWSConfig]; GatewayARN=, DiskIds=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "AddUploadBuffer", arguments::Dict)
    storagegateway([::AWSConfig], "AddUploadBuffer", GatewayARN=, DiskIds=)

# AddUploadBuffer Operation

Configures one or more gateway local disks as upload buffer for a specified gateway. This operation is supported for the stored volume, cached volume and tape gateway types.

In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add upload buffer, and one or more disk IDs that you want to configure as upload buffer.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `DiskIds = [::String, ...]` -- *Required*





# Returns

`AddUploadBufferOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To add upload buffer on local disk

Configures one or more gateway local disks as upload buffer for a specified gateway.

Input:
```
[
    "DiskIds" => [
        "pci-0000:03:00.0-scsi-0:0:0:0",
        "pci-0000:03:00.0-scsi-0:0:1:0"
    ],
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddUploadBuffer)
"""
@inline add_upload_buffer(aws::AWSConfig=default_aws_config(); args...) = add_upload_buffer(aws, args)

@inline add_upload_buffer(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "AddUploadBuffer", args)

@inline add_upload_buffer(args) = add_upload_buffer(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.add_working_storage
    add_working_storage([::AWSConfig], arguments::Dict)
    add_working_storage([::AWSConfig]; GatewayARN=, DiskIds=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "AddWorkingStorage", arguments::Dict)
    storagegateway([::AWSConfig], "AddWorkingStorage", GatewayARN=, DiskIds=)

# AddWorkingStorage Operation

Configures one or more gateway local disks as working storage for a gateway. This operation is only supported in the stored volume gateway type. This operation is deprecated in cached volume API version 20120630. Use [AddUploadBuffer](@ref) instead.

**Note**
> Working storage is also referred to as upload buffer. You can also use the [AddUploadBuffer](@ref) operation to add upload buffer to a stored volume gateway.

In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add working storage, and one or more disk IDs that you want to configure as working storage.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `DiskIds = [::String, ...]` -- *Required*
An array of strings that identify disks that are to be configured as working storage. Each string have a minimum length of 1 and maximum length of 300. You can get the disk IDs from the [ListLocalDisks](@ref) API.




# Returns

`AddWorkingStorageOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To add storage on local disk

Configures one or more gateway local disks as working storage for a gateway. (Working storage is also referred to as upload buffer.)

Input:
```
[
    "DiskIds" => [
        "pci-0000:03:00.0-scsi-0:0:0:0",
        "pci-0000:03:00.0-scsi-0:0:1:0"
    ],
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddWorkingStorage)
"""
@inline add_working_storage(aws::AWSConfig=default_aws_config(); args...) = add_working_storage(aws, args)

@inline add_working_storage(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "AddWorkingStorage", args)

@inline add_working_storage(args) = add_working_storage(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.cancel_archival
    cancel_archival([::AWSConfig], arguments::Dict)
    cancel_archival([::AWSConfig]; GatewayARN=, TapeARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "CancelArchival", arguments::Dict)
    storagegateway([::AWSConfig], "CancelArchival", GatewayARN=, TapeARN=)

# CancelArchival Operation

Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving process is initiated. This operation is only supported in the tape gateway type.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `TapeARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the virtual tape you want to cancel archiving for.




# Returns

`CancelArchivalOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To cancel virtual tape archiving

Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving process is initiated.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4"
]
```

Output:
```
Dict(
    "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CancelArchival)
"""
@inline cancel_archival(aws::AWSConfig=default_aws_config(); args...) = cancel_archival(aws, args)

@inline cancel_archival(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "CancelArchival", args)

@inline cancel_archival(args) = cancel_archival(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.cancel_retrieval
    cancel_retrieval([::AWSConfig], arguments::Dict)
    cancel_retrieval([::AWSConfig]; GatewayARN=, TapeARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "CancelRetrieval", arguments::Dict)
    storagegateway([::AWSConfig], "CancelRetrieval", GatewayARN=, TapeARN=)

# CancelRetrieval Operation

Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a gateway after the retrieval process is initiated. The virtual tape is returned to the VTS. This operation is only supported in the tape gateway type.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `TapeARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the virtual tape you want to cancel retrieval for.




# Returns

`CancelRetrievalOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To cancel virtual tape retrieval

Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a gateway after the retrieval process is initiated.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4"
]
```

Output:
```
Dict(
    "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CancelRetrieval)
"""
@inline cancel_retrieval(aws::AWSConfig=default_aws_config(); args...) = cancel_retrieval(aws, args)

@inline cancel_retrieval(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "CancelRetrieval", args)

@inline cancel_retrieval(args) = cancel_retrieval(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.create_cachedi_scsivolume
    create_cachedi_scsivolume([::AWSConfig], arguments::Dict)
    create_cachedi_scsivolume([::AWSConfig]; GatewayARN=, VolumeSizeInBytes=, TargetName=, NetworkInterfaceId=, ClientToken=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "CreateCachediSCSIVolume", arguments::Dict)
    storagegateway([::AWSConfig], "CreateCachediSCSIVolume", GatewayARN=, VolumeSizeInBytes=, TargetName=, NetworkInterfaceId=, ClientToken=, <keyword arguments>)

# CreateCachediSCSIVolume Operation

Creates a cached volume on a specified cached volume gateway. This operation is only supported in the cached volume gateway type.

**Note**
> Cache storage must be allocated to the gateway before you can create a cached volume. Use the [AddCache](@ref) operation to add cache storage to a gateway.

In the request, you must specify the gateway, size of the volume in bytes, the iSCSI target name, an IP address on which to expose the target, and a unique client token. In response, the gateway creates the volume and returns information about it. This information includes the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that initiators can use to connect to the volume target.

Optionally, you can provide the ARN for an existing volume as the `SourceVolumeARN` for this cached volume, which creates an exact copy of the existing volume’s latest recovery point. The `VolumeSizeInBytes` value must be equal to or larger than the size of the copied volume, in bytes.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `VolumeSizeInBytes = ::Int` -- *Required*
The size of the volume in bytes.


## `SnapshotId = ::String`
The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new cached volume. Specify this field if you want to create the iSCSI storage volume from a snapshot otherwise do not include this field. To list snapshots for your account use [DescribeSnapshots](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html) in the *Amazon Elastic Compute Cloud API Reference*.


## `TargetName = ::String` -- *Required*
The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. For example, specifying `TargetName` as *myvolume* results in the target ARN of arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume. The target name must be unique across all volumes of a gateway.


## `SourceVolumeARN = ::String`
The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The `VolumeSizeInBytes` value for this new volume must be equal to or larger than the size of the existing volume, in bytes.


## `NetworkInterfaceId = ::String` -- *Required*
The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted. Use [DescribeGatewayInformation](@ref) to get a list of the network interfaces available on a gateway.

Valid Values: A valid IP address.


## `ClientToken = ::String` -- *Required*
A unique identifier that you use to retry a request. If you retry a request, use the same `ClientToken` you specified in the initial request.


## `KMSEncrypted = ::Bool`
True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.


## `KMSKey = ::String`
The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.




# Returns

`CreateCachediSCSIVolumeOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To create a cached iSCSI volume

Creates a cached volume on a specified cached gateway.

Input:
```
[
    "ClientToken" => "cachedvol112233",
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "NetworkInterfaceId" => "10.1.1.1",
    "SnapshotId" => "snap-f47b7b94",
    "TargetName" => "my-volume",
    "VolumeSizeInBytes" => 536870912000
]
```

Output:
```
Dict(
    "TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume",
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateCachediSCSIVolume)
"""
@inline create_cachedi_scsivolume(aws::AWSConfig=default_aws_config(); args...) = create_cachedi_scsivolume(aws, args)

@inline create_cachedi_scsivolume(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "CreateCachediSCSIVolume", args)

@inline create_cachedi_scsivolume(args) = create_cachedi_scsivolume(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.create_nfsfile_share
    create_nfsfile_share([::AWSConfig], arguments::Dict)
    create_nfsfile_share([::AWSConfig]; ClientToken=, GatewayARN=, Role=, LocationARN=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "CreateNFSFileShare", arguments::Dict)
    storagegateway([::AWSConfig], "CreateNFSFileShare", ClientToken=, GatewayARN=, Role=, LocationARN=, <keyword arguments>)

# CreateNFSFileShare Operation

Creates a Network File System (NFS) file share on an existing file gateway. In Storage Gateway, a file share is a file system mount point backed by Amazon S3 cloud storage. Storage Gateway exposes file shares using a NFS interface. This operation is only supported for file gateways.

**Important**
> File gateway requires AWS Security Token Service (AWS STS) to be activated to enable you create a file share. Make sure AWS STS is activated in the region you are creating your file gateway in. If AWS STS is not activated in the region, activate it. For information about how to activate AWS STS, see Activating and Deactivating AWS STS in an AWS Region in the AWS Identity and Access Management User Guide.

File gateway does not support creating hard or symbolic links on a file share.

# Arguments

## `ClientToken = ::String` -- *Required*
A unique string value that you supply that is used by file gateway to ensure idempotent file share creation.


## `NFSFileShareDefaults = [ ... ]`
File share default values. Optional.
```
 NFSFileShareDefaults = [
        "FileMode" =>  ::String,
        "DirectoryMode" =>  ::String,
        "GroupId" =>  ::Int,
        "OwnerId" =>  ::Int
    ]
```

## `GatewayARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the file gateway on which you want to create a file share.


## `KMSEncrypted = ::Bool`
True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.


## `KMSKey = ::String`
The Amazon Resource Name (ARN) AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.


## `Role = ::String` -- *Required*
The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.


## `LocationARN = ::String` -- *Required*
The ARN of the backed storage used for storing file data.


## `DefaultStorageClass = ::String`
The default storage class for objects put into an Amazon S3 bucket by the file gateway. Possible values are `S3_STANDARD`, `S3_STANDARD_IA`, or `S3_ONEZONE_IA`. If this field is not populated, the default value `S3_STANDARD` is used. Optional.


## `ObjectACL = "private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control" or "aws-exec-read"`
A value that sets the access control list permission for objects in the S3 bucket that a file gateway puts objects into. The default value is "private".


## `ClientList = [::String, ...]`
The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks.


## `Squash = ::String`
Maps a user to anonymous user. Valid options are the following:

*   `RootSquash` - Only root is mapped to anonymous user.

*   `NoSquash` - No one is mapped to anonymous user

*   `AllSquash` - Everyone is mapped to anonymous user.


## `ReadOnly = ::Bool`
A value that sets the write status of a file share. This value is true if the write status is read-only, and otherwise false.


## `GuessMIMETypeEnabled = ::Bool`
A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to true to enable MIME type guessing, and otherwise to false. The default value is true.


## `RequesterPays = ::Bool`
A value that sets the access control list permission for objects in the Amazon S3 bucket that a file gateway puts objects into. The default value is `private`.




# Returns

`CreateNFSFileShareOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateNFSFileShare)
"""
@inline create_nfsfile_share(aws::AWSConfig=default_aws_config(); args...) = create_nfsfile_share(aws, args)

@inline create_nfsfile_share(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "CreateNFSFileShare", args)

@inline create_nfsfile_share(args) = create_nfsfile_share(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.create_smbfile_share
    create_smbfile_share([::AWSConfig], arguments::Dict)
    create_smbfile_share([::AWSConfig]; ClientToken=, GatewayARN=, Role=, LocationARN=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "CreateSMBFileShare", arguments::Dict)
    storagegateway([::AWSConfig], "CreateSMBFileShare", ClientToken=, GatewayARN=, Role=, LocationARN=, <keyword arguments>)

# CreateSMBFileShare Operation

Creates a Server Message Block (SMB) file share on an existing file gateway. In Storage Gateway, a file share is a file system mount point backed by Amazon S3 cloud storage. Storage Gateway expose file shares using a SMB interface. This operation is only supported for file gateways.

**Important**
> File gateways require AWS Security Token Service (AWS STS) to be activated to enable you to create a file share. Make sure that AWS STS is activated in the AWS Region you are creating your file gateway in. If AWS STS is not activated in this AWS Region, activate it. For information about how to activate AWS STS, see [Activating and Deactivating AWS STS in an AWS Region](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html) in the *AWS Identity and Access Management User Guide.*

File gateways don't support creating hard or symbolic links on a file share.

# Arguments

## `ClientToken = ::String` -- *Required*
A unique string value that you supply that is used by file gateway to ensure idempotent file share creation.


## `GatewayARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the file gateway on which you want to create a file share.


## `KMSEncrypted = ::Bool`
True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.


## `KMSKey = ::String`
The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.


## `Role = ::String` -- *Required*
The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.


## `LocationARN = ::String` -- *Required*
The ARN of the backed storage used for storing file data.


## `DefaultStorageClass = ::String`
The default storage class for objects put into an Amazon S3 bucket by the file gateway. Possible values are `S3_STANDARD`, `S3_STANDARD_IA`, or `S3_ONEZONE_IA`. If this field is not populated, the default value `S3_STANDARD` is used. Optional.


## `ObjectACL = "private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control" or "aws-exec-read"`
A value that sets the access control list permission for objects in the S3 bucket that a file gateway puts objects into. The default value is "private".


## `ReadOnly = ::Bool`
A value that sets the write status of a file share. This value is true if the write status is read-only, and otherwise false.


## `GuessMIMETypeEnabled = ::Bool`
A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to true to enable MIME type guessing, and otherwise to false. The default value is true.


## `RequesterPays = ::Bool`
A value that sets the access control list permission for objects in the Amazon S3 bucket that a file gateway puts objects into. The default value is `private`.


## `ValidUserList = [::String, ...]`
A list of users or groups in the Active Directory that are allowed to access the file share. A group must be prefixed with the @ character. For example `@group1`. Can only be set if Authentication is set to `ActiveDirectory`.


## `InvalidUserList = [::String, ...]`
A list of users or groups in the Active Directory that are not allowed to access the file share. A group must be prefixed with the @ character. For example `@group1`. Can only be set if Authentication is set to `ActiveDirectory`.


## `Authentication = ::String`
The authentication method that users use to access the file share.

Valid values are `ActiveDirectory` or `GuestAccess`. The default is `ActiveDirectory`.




# Returns

`CreateSMBFileShareOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSMBFileShare)
"""
@inline create_smbfile_share(aws::AWSConfig=default_aws_config(); args...) = create_smbfile_share(aws, args)

@inline create_smbfile_share(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "CreateSMBFileShare", args)

@inline create_smbfile_share(args) = create_smbfile_share(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.create_snapshot
    create_snapshot([::AWSConfig], arguments::Dict)
    create_snapshot([::AWSConfig]; VolumeARN=, SnapshotDescription=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "CreateSnapshot", arguments::Dict)
    storagegateway([::AWSConfig], "CreateSnapshot", VolumeARN=, SnapshotDescription=)

# CreateSnapshot Operation

Initiates a snapshot of a volume.

AWS Storage Gateway provides the ability to back up point-in-time snapshots of your data to Amazon Simple Storage (S3) for durable off-site recovery, as well as import the data to an Amazon Elastic Block Store (EBS) volume in Amazon Elastic Compute Cloud (EC2). You can take snapshots of your gateway volume on a scheduled or ad-hoc basis. This API enables you to take ad-hoc snapshot. For more information, see [Editing a Snapshot Schedule](http://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#SchedulingSnapshot).

In the CreateSnapshot request you identify the volume by providing its Amazon Resource Name (ARN). You must also provide description for the snapshot. When AWS Storage Gateway takes the snapshot of specified volume, the snapshot and description appears in the AWS Storage Gateway Console. In response, AWS Storage Gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot. This operation is only supported in stored and cached volume gateway type.

**Note**
> To list or delete a snapshot, you must use the Amazon EC2 API. For more information, see DescribeSnapshots or DeleteSnapshot in the [EC2 API reference](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Operations.html).

**Important**
> Volume and snapshot IDs are changing to a longer length ID format. For more information, see the important note on the [Welcome](http://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html) page.

# Arguments

## `VolumeARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the volume. Use the [ListVolumes](@ref) operation to return a list of gateway volumes.


## `SnapshotDescription = ::String` -- *Required*
Textual description of the snapshot that appears in the Amazon EC2 console, Elastic Block Store snapshots panel in the **Description** field, and in the AWS Storage Gateway snapshot **Details** pane, **Description** field




# Returns

`CreateSnapshotOutput`

# Exceptions

`InvalidGatewayRequestException`, `InternalServerError` or `ServiceUnavailableError`.

# Example: To create a snapshot of a gateway volume

Initiates an ad-hoc snapshot of a gateway volume.

Input:
```
[
    "SnapshotDescription" => "My root volume snapshot as of 10/03/2017",
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
]
```

Output:
```
Dict(
    "SnapshotId" => "snap-78e22663",
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSnapshot)
"""
@inline create_snapshot(aws::AWSConfig=default_aws_config(); args...) = create_snapshot(aws, args)

@inline create_snapshot(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "CreateSnapshot", args)

@inline create_snapshot(args) = create_snapshot(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.create_snapshot_from_volume_recovery_point
    create_snapshot_from_volume_recovery_point([::AWSConfig], arguments::Dict)
    create_snapshot_from_volume_recovery_point([::AWSConfig]; VolumeARN=, SnapshotDescription=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "CreateSnapshotFromVolumeRecoveryPoint", arguments::Dict)
    storagegateway([::AWSConfig], "CreateSnapshotFromVolumeRecoveryPoint", VolumeARN=, SnapshotDescription=)

# CreateSnapshotFromVolumeRecoveryPoint Operation

Initiates a snapshot of a gateway from a volume recovery point. This operation is only supported in the cached volume gateway type.

A volume recovery point is a point in time at which all data of the volume is consistent and from which you can create a snapshot. To get a list of volume recovery point for cached volume gateway, use [ListVolumeRecoveryPoints](@ref).

In the `CreateSnapshotFromVolumeRecoveryPoint` request, you identify the volume by providing its Amazon Resource Name (ARN). You must also provide a description for the snapshot. When the gateway takes a snapshot of the specified volume, the snapshot and its description appear in the AWS Storage Gateway console. In response, the gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot.

**Note**
> To list or delete a snapshot, you must use the Amazon EC2 API. For more information, in *Amazon Elastic Compute Cloud API Reference*.

# Arguments

## `VolumeARN = ::String` -- *Required*



## `SnapshotDescription = ::String` -- *Required*





# Returns

`CreateSnapshotFromVolumeRecoveryPointOutput`

# Exceptions

`InvalidGatewayRequestException`, `InternalServerError` or `ServiceUnavailableError`.

# Example: To create a snapshot of a gateway volume

Initiates a snapshot of a gateway from a volume recovery point.

Input:
```
[
    "SnapshotDescription" => "My root volume snapshot as of 2017-06-30T10:10:10.000Z",
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
]
```

Output:
```
Dict(
    "SnapshotId" => "snap-78e22663",
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    "VolumeRecoveryPointTime" => "2017-06-30T10:10:10.000Z"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSnapshotFromVolumeRecoveryPoint)
"""
@inline create_snapshot_from_volume_recovery_point(aws::AWSConfig=default_aws_config(); args...) = create_snapshot_from_volume_recovery_point(aws, args)

@inline create_snapshot_from_volume_recovery_point(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "CreateSnapshotFromVolumeRecoveryPoint", args)

@inline create_snapshot_from_volume_recovery_point(args) = create_snapshot_from_volume_recovery_point(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.create_storedi_scsivolume
    create_storedi_scsivolume([::AWSConfig], arguments::Dict)
    create_storedi_scsivolume([::AWSConfig]; GatewayARN=, DiskId=, PreserveExistingData=, TargetName=, NetworkInterfaceId=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "CreateStorediSCSIVolume", arguments::Dict)
    storagegateway([::AWSConfig], "CreateStorediSCSIVolume", GatewayARN=, DiskId=, PreserveExistingData=, TargetName=, NetworkInterfaceId=, <keyword arguments>)

# CreateStorediSCSIVolume Operation

Creates a volume on a specified gateway. This operation is only supported in the stored volume gateway type.

The size of the volume to create is inferred from the disk size. You can choose to preserve existing data on the disk, create volume from an existing snapshot, or create an empty volume. If you choose to create an empty gateway volume, then any existing data on the disk is erased.

In the request you must specify the gateway and the disk information on which you are creating the volume. In response, the gateway creates the volume and returns volume information such as the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that initiators can use to connect to the volume target.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `DiskId = ::String` -- *Required*
The unique identifier for the gateway local disk that is configured as a stored volume. Use [ListLocalDisks](http://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html) to list disk IDs for a gateway.


## `SnapshotId = ::String`
The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new stored volume. Specify this field if you want to create the iSCSI storage volume from a snapshot otherwise do not include this field. To list snapshots for your account use [DescribeSnapshots](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html) in the *Amazon Elastic Compute Cloud API Reference*.


## `PreserveExistingData = ::Bool` -- *Required*
Specify this field as true if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.

Valid Values: true, false


## `TargetName = ::String` -- *Required*
The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. For example, specifying `TargetName` as *myvolume* results in the target ARN of arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume. The target name must be unique across all volumes of a gateway.


## `NetworkInterfaceId = ::String` -- *Required*
The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted. Use [DescribeGatewayInformation](@ref) to get a list of the network interfaces available on a gateway.

Valid Values: A valid IP address.


## `KMSEncrypted = ::Bool`
True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.


## `KMSKey = ::String`
The Amazon Resource Name (ARN) of the KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.




# Returns

`CreateStorediSCSIVolumeOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To create a stored iSCSI volume

Creates a stored volume on a specified stored gateway.

Input:
```
[
    "DiskId" => "pci-0000:03:00.0-scsi-0:0:0:0",
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "NetworkInterfaceId" => "10.1.1.1",
    "PreserveExistingData" => true,
    "SnapshotId" => "snap-f47b7b94",
    "TargetName" => "my-volume"
]
```

Output:
```
Dict(
    "TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume",
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
    "VolumeSizeInBytes" => 1099511627776
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateStorediSCSIVolume)
"""
@inline create_storedi_scsivolume(aws::AWSConfig=default_aws_config(); args...) = create_storedi_scsivolume(aws, args)

@inline create_storedi_scsivolume(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "CreateStorediSCSIVolume", args)

@inline create_storedi_scsivolume(args) = create_storedi_scsivolume(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.create_tape_with_barcode
    create_tape_with_barcode([::AWSConfig], arguments::Dict)
    create_tape_with_barcode([::AWSConfig]; GatewayARN=, TapeSizeInBytes=, TapeBarcode=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "CreateTapeWithBarcode", arguments::Dict)
    storagegateway([::AWSConfig], "CreateTapeWithBarcode", GatewayARN=, TapeSizeInBytes=, TapeBarcode=, <keyword arguments>)

# CreateTapeWithBarcode Operation

Creates a virtual tape by using your own barcode. You write data to the virtual tape and then archive the tape. A barcode is unique and can not be reused if it has already been used on a tape . This applies to barcodes used on deleted tapes. This operation is only supported in the tape gateway type.

**Note**
> Cache storage must be allocated to the gateway before you can create a virtual tape. Use the [AddCache](@ref) operation to add cache storage to a gateway.

# Arguments

## `GatewayARN = ::String` -- *Required*
The unique Amazon Resource Name (ARN) that represents the gateway to associate the virtual tape with. Use the [ListGateways](@ref) operation to return a list of gateways for your account and region.


## `TapeSizeInBytes = ::Int` -- *Required*
The size, in bytes, of the virtual tape that you want to create.

**Note**
> The size must be aligned by gigabyte (1024*1024*1024 byte).


## `TapeBarcode = ::String` -- *Required*
The barcode that you want to assign to the tape.

**Note**
> Barcodes cannot be reused. This includes barcodes used for tapes that have been deleted.


## `KMSEncrypted = ::Bool`
True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.


## `KMSKey = ::String`
The Amazon Resource Name (ARN) of the AWS KMS Key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.




# Returns

`CreateTapeWithBarcodeOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To create a virtual tape using a barcode

Creates a virtual tape by using your own barcode.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    "TapeBarcode" => "TEST12345",
    "TapeSizeInBytes" => 107374182400
]
```

Output:
```
Dict(
    "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST12345"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapeWithBarcode)
"""
@inline create_tape_with_barcode(aws::AWSConfig=default_aws_config(); args...) = create_tape_with_barcode(aws, args)

@inline create_tape_with_barcode(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "CreateTapeWithBarcode", args)

@inline create_tape_with_barcode(args) = create_tape_with_barcode(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.create_tapes
    create_tapes([::AWSConfig], arguments::Dict)
    create_tapes([::AWSConfig]; GatewayARN=, TapeSizeInBytes=, ClientToken=, NumTapesToCreate=, TapeBarcodePrefix=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "CreateTapes", arguments::Dict)
    storagegateway([::AWSConfig], "CreateTapes", GatewayARN=, TapeSizeInBytes=, ClientToken=, NumTapesToCreate=, TapeBarcodePrefix=, <keyword arguments>)

# CreateTapes Operation

Creates one or more virtual tapes. You write data to the virtual tapes and then archive the tapes. This operation is only supported in the tape gateway type.

**Note**
> Cache storage must be allocated to the gateway before you can create virtual tapes. Use the [AddCache](@ref) operation to add cache storage to a gateway.

# Arguments

## `GatewayARN = ::String` -- *Required*
The unique Amazon Resource Name (ARN) that represents the gateway to associate the virtual tapes with. Use the [ListGateways](@ref) operation to return a list of gateways for your account and region.


## `TapeSizeInBytes = ::Int` -- *Required*
The size, in bytes, of the virtual tapes that you want to create.

**Note**
> The size must be aligned by gigabyte (1024*1024*1024 byte).


## `ClientToken = ::String` -- *Required*
A unique identifier that you use to retry a request. If you retry a request, use the same `ClientToken` you specified in the initial request.

**Note**
> Using the same `ClientToken` prevents creating the tape multiple times.


## `NumTapesToCreate = ::Int` -- *Required*
The number of virtual tapes that you want to create.


## `TapeBarcodePrefix = ::String` -- *Required*
A prefix that you append to the barcode of the virtual tape you are creating. This prefix makes the barcode unique.

**Note**
> The prefix must be 1 to 4 characters in length and must be one of the uppercase letters from A to Z.


## `KMSEncrypted = ::Bool`
True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.


## `KMSKey = ::String`
The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.




# Returns

`CreateTapesOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To create a virtual tape

Creates one or more virtual tapes.

Input:
```
[
    "ClientToken" => "77777",
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    "NumTapesToCreate" => 3,
    "TapeBarcodePrefix" => "TEST",
    "TapeSizeInBytes" => 107374182400
]
```

Output:
```
Dict(
    "TapeARNs" => [
        "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST38A29D",
        "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST3AA29F",
        "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST3BA29E"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapes)
"""
@inline create_tapes(aws::AWSConfig=default_aws_config(); args...) = create_tapes(aws, args)

@inline create_tapes(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "CreateTapes", args)

@inline create_tapes(args) = create_tapes(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.delete_bandwidth_rate_limit
    delete_bandwidth_rate_limit([::AWSConfig], arguments::Dict)
    delete_bandwidth_rate_limit([::AWSConfig]; GatewayARN=, BandwidthType=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DeleteBandwidthRateLimit", arguments::Dict)
    storagegateway([::AWSConfig], "DeleteBandwidthRateLimit", GatewayARN=, BandwidthType=)

# DeleteBandwidthRateLimit Operation

Deletes the bandwidth rate limits of a gateway. You can delete either the upload and download bandwidth rate limit, or you can delete both. If you delete only one of the limits, the other limit remains unchanged. To specify which gateway to work with, use the Amazon Resource Name (ARN) of the gateway in your request.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `BandwidthType = ::String` -- *Required*
One of the BandwidthType values that indicates the gateway bandwidth rate limit to delete.

Valid Values: `Upload`, `Download`, `All`.




# Returns

`DeleteBandwidthRateLimitOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To delete bandwidth rate limits of gateway

Deletes the bandwidth rate limits of a gateway; either the upload or download limit, or both.

Input:
```
[
    "BandwidthType" => "All",
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteBandwidthRateLimit)
"""
@inline delete_bandwidth_rate_limit(aws::AWSConfig=default_aws_config(); args...) = delete_bandwidth_rate_limit(aws, args)

@inline delete_bandwidth_rate_limit(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DeleteBandwidthRateLimit", args)

@inline delete_bandwidth_rate_limit(args) = delete_bandwidth_rate_limit(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.delete_chap_credentials
    delete_chap_credentials([::AWSConfig], arguments::Dict)
    delete_chap_credentials([::AWSConfig]; TargetARN=, InitiatorName=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DeleteChapCredentials", arguments::Dict)
    storagegateway([::AWSConfig], "DeleteChapCredentials", TargetARN=, InitiatorName=)

# DeleteChapCredentials Operation

Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair.

# Arguments

## `TargetARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the iSCSI volume target. Use the [DescribeStorediSCSIVolumes](@ref) operation to return to retrieve the TargetARN for specified VolumeARN.


## `InitiatorName = ::String` -- *Required*
The iSCSI initiator that connects to the target.




# Returns

`DeleteChapCredentialsOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To delete CHAP credentials

Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair.

Input:
```
[
    "InitiatorName" => "iqn.1991-05.com.microsoft:computername.domain.example.com",
    "TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
]
```

Output:
```
Dict(
    "InitiatorName" => "iqn.1991-05.com.microsoft:computername.domain.example.com",
    "TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteChapCredentials)
"""
@inline delete_chap_credentials(aws::AWSConfig=default_aws_config(); args...) = delete_chap_credentials(aws, args)

@inline delete_chap_credentials(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DeleteChapCredentials", args)

@inline delete_chap_credentials(args) = delete_chap_credentials(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.delete_file_share
    delete_file_share([::AWSConfig], arguments::Dict)
    delete_file_share([::AWSConfig]; FileShareARN=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DeleteFileShare", arguments::Dict)
    storagegateway([::AWSConfig], "DeleteFileShare", FileShareARN=, <keyword arguments>)

# DeleteFileShare Operation

Deletes a file share from a file gateway. This operation is only supported for file gateways.

# Arguments

## `FileShareARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the file share to be deleted.


## `ForceDelete = ::Bool`
If this value is set to true, the operation deletes a file share immediately and aborts all data uploads to AWS. Otherwise, the file share is not deleted until all data is uploaded to AWS. This process aborts the data upload process, and the file share enters the FORCE_DELETING status.




# Returns

`DeleteFileShareOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteFileShare)
"""
@inline delete_file_share(aws::AWSConfig=default_aws_config(); args...) = delete_file_share(aws, args)

@inline delete_file_share(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DeleteFileShare", args)

@inline delete_file_share(args) = delete_file_share(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.delete_gateway
    delete_gateway([::AWSConfig], arguments::Dict)
    delete_gateway([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DeleteGateway", arguments::Dict)
    storagegateway([::AWSConfig], "DeleteGateway", GatewayARN=)

# DeleteGateway Operation

Deletes a gateway. To specify which gateway to delete, use the Amazon Resource Name (ARN) of the gateway in your request. The operation deletes the gateway; however, it does not delete the gateway virtual machine (VM) from your host computer.

After you delete a gateway, you cannot reactivate it. Completed snapshots of the gateway volumes are not deleted upon deleting the gateway, however, pending snapshots will not complete. After you delete a gateway, your next step is to remove it from your environment.

**Important**
> You no longer pay software charges after the gateway is deleted; however, your existing Amazon EBS snapshots persist and you will continue to be billed for these snapshots. You can choose to remove all remaining Amazon EBS snapshots by canceling your Amazon EC2 subscription.  If you prefer not to cancel your Amazon EC2 subscription, you can delete your snapshots using the Amazon EC2 console. For more information, see the [AWS Storage Gateway Detail Page](http://aws.amazon.com/storagegateway).

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`DeleteGatewayOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To delete a gatgeway

This operation deletes the gateway, but not the gateway's VM from the host computer.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteGateway)
"""
@inline delete_gateway(aws::AWSConfig=default_aws_config(); args...) = delete_gateway(aws, args)

@inline delete_gateway(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DeleteGateway", args)

@inline delete_gateway(args) = delete_gateway(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.delete_snapshot_schedule
    delete_snapshot_schedule([::AWSConfig], arguments::Dict)
    delete_snapshot_schedule([::AWSConfig]; VolumeARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DeleteSnapshotSchedule", arguments::Dict)
    storagegateway([::AWSConfig], "DeleteSnapshotSchedule", VolumeARN=)

# DeleteSnapshotSchedule Operation

Deletes a snapshot of a volume.

You can take snapshots of your gateway volumes on a scheduled or ad hoc basis. This API action enables you to delete a snapshot schedule for a volume. For more information, see [Working with Snapshots](http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html). In the `DeleteSnapshotSchedule` request, you identify the volume by providing its Amazon Resource Name (ARN). This operation is only supported in stored and cached volume gateway types.

**Note**
> To list or delete a snapshot, you must use the Amazon EC2 API. in *Amazon Elastic Compute Cloud API Reference*.

# Arguments

## `VolumeARN = ::String` -- *Required*





# Returns

`DeleteSnapshotScheduleOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To delete a snapshot of a volume

This action enables you to delete a snapshot schedule for a volume.

Input:
```
[
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
]
```

Output:
```
Dict(
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteSnapshotSchedule)
"""
@inline delete_snapshot_schedule(aws::AWSConfig=default_aws_config(); args...) = delete_snapshot_schedule(aws, args)

@inline delete_snapshot_schedule(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DeleteSnapshotSchedule", args)

@inline delete_snapshot_schedule(args) = delete_snapshot_schedule(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.delete_tape
    delete_tape([::AWSConfig], arguments::Dict)
    delete_tape([::AWSConfig]; GatewayARN=, TapeARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DeleteTape", arguments::Dict)
    storagegateway([::AWSConfig], "DeleteTape", GatewayARN=, TapeARN=)

# DeleteTape Operation

Deletes the specified virtual tape. This operation is only supported in the tape gateway type.

# Arguments

## `GatewayARN = ::String` -- *Required*
The unique Amazon Resource Name (ARN) of the gateway that the virtual tape to delete is associated with. Use the [ListGateways](@ref) operation to return a list of gateways for your account and region.


## `TapeARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the virtual tape to delete.




# Returns

`DeleteTapeOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To delete a virtual tape

This example deletes the specified virtual tape.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:204469490176:gateway/sgw-12A3456B",
    "TapeARN" => "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0"
]
```

Output:
```
Dict(
    "TapeARN" => "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTape)
"""
@inline delete_tape(aws::AWSConfig=default_aws_config(); args...) = delete_tape(aws, args)

@inline delete_tape(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DeleteTape", args)

@inline delete_tape(args) = delete_tape(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.delete_tape_archive
    delete_tape_archive([::AWSConfig], arguments::Dict)
    delete_tape_archive([::AWSConfig]; TapeARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DeleteTapeArchive", arguments::Dict)
    storagegateway([::AWSConfig], "DeleteTapeArchive", TapeARN=)

# DeleteTapeArchive Operation

Deletes the specified virtual tape from the virtual tape shelf (VTS). This operation is only supported in the tape gateway type.

# Arguments

## `TapeARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the virtual tape to delete from the virtual tape shelf (VTS).




# Returns

`DeleteTapeArchiveOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To delete a virtual tape from the shelf (VTS)

Deletes the specified virtual tape from the virtual tape shelf (VTS).

Input:
```
[
    "TapeARN" => "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0"
]
```

Output:
```
Dict(
    "TapeARN" => "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTapeArchive)
"""
@inline delete_tape_archive(aws::AWSConfig=default_aws_config(); args...) = delete_tape_archive(aws, args)

@inline delete_tape_archive(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DeleteTapeArchive", args)

@inline delete_tape_archive(args) = delete_tape_archive(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.delete_volume
    delete_volume([::AWSConfig], arguments::Dict)
    delete_volume([::AWSConfig]; VolumeARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DeleteVolume", arguments::Dict)
    storagegateway([::AWSConfig], "DeleteVolume", VolumeARN=)

# DeleteVolume Operation

Deletes the specified storage volume that you previously created using the [CreateCachediSCSIVolume](@ref) or [CreateStorediSCSIVolume](@ref) API. This operation is only supported in the cached volume and stored volume types. For stored volume gateways, the local disk that was configured as the storage volume is not deleted. You can reuse the local disk to create another storage volume.

Before you delete a volume, make sure there are no iSCSI connections to the volume you are deleting. You should also make sure there is no snapshot in progress. You can use the Amazon Elastic Compute Cloud (Amazon EC2) API to query snapshots on the volume you are deleting and check the snapshot status. For more information, go to [DescribeSnapshots](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html) in the *Amazon Elastic Compute Cloud API Reference*.

In the request, you must provide the Amazon Resource Name (ARN) of the storage volume you want to delete.

# Arguments

## `VolumeARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the volume. Use the [ListVolumes](@ref) operation to return a list of gateway volumes.




# Returns

`DeleteVolumeOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To delete a gateway volume

Deletes the specified gateway volume that you previously created using the CreateCachediSCSIVolume or CreateStorediSCSIVolume API.

Input:
```
[
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
]
```

Output:
```
Dict(
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteVolume)
"""
@inline delete_volume(aws::AWSConfig=default_aws_config(); args...) = delete_volume(aws, args)

@inline delete_volume(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DeleteVolume", args)

@inline delete_volume(args) = delete_volume(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_bandwidth_rate_limit
    describe_bandwidth_rate_limit([::AWSConfig], arguments::Dict)
    describe_bandwidth_rate_limit([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeBandwidthRateLimit", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeBandwidthRateLimit", GatewayARN=)

# DescribeBandwidthRateLimit Operation

Returns the bandwidth rate limits of a gateway. By default, these limits are not set, which means no bandwidth rate limiting is in effect.

This operation only returns a value for a bandwidth rate limit only if the limit is set. If no limits are set for the gateway, then this operation returns only the gateway ARN in the response body. To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`DescribeBandwidthRateLimitOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe the bandwidth rate limits of a gateway

Returns a value for a bandwidth rate limit if set. If not set, then only the gateway ARN is returned.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "AverageDownloadRateLimitInBitsPerSec" => 204800,
    "AverageUploadRateLimitInBitsPerSec" => 102400,
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeBandwidthRateLimit)
"""
@inline describe_bandwidth_rate_limit(aws::AWSConfig=default_aws_config(); args...) = describe_bandwidth_rate_limit(aws, args)

@inline describe_bandwidth_rate_limit(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeBandwidthRateLimit", args)

@inline describe_bandwidth_rate_limit(args) = describe_bandwidth_rate_limit(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_cache
    describe_cache([::AWSConfig], arguments::Dict)
    describe_cache([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeCache", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeCache", GatewayARN=)

# DescribeCache Operation

Returns information about the cache of a gateway. This operation is only supported in the cached volume, tape and file gateway types.

The response includes disk IDs that are configured as cache, and it includes the amount of cache allocated and used.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`DescribeCacheOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe cache information

Returns information about the cache of a gateway.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "CacheAllocatedInBytes" => 2199023255552,
    "CacheDirtyPercentage" => 0.07,
    "CacheHitPercentage" => 99.68,
    "CacheMissPercentage" => 0.32,
    "CacheUsedPercentage" => 0.07,
    "DiskIds" => [
        "pci-0000:03:00.0-scsi-0:0:0:0",
        "pci-0000:04:00.0-scsi-0:1:0:0"
    ],
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeCache)
"""
@inline describe_cache(aws::AWSConfig=default_aws_config(); args...) = describe_cache(aws, args)

@inline describe_cache(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeCache", args)

@inline describe_cache(args) = describe_cache(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_cachedi_scsivolumes
    describe_cachedi_scsivolumes([::AWSConfig], arguments::Dict)
    describe_cachedi_scsivolumes([::AWSConfig]; VolumeARNs=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeCachediSCSIVolumes", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeCachediSCSIVolumes", VolumeARNs=)

# DescribeCachediSCSIVolumes Operation

Returns a description of the gateway volumes specified in the request. This operation is only supported in the cached volume gateway types.

The list of gateway volumes in the request must be from one gateway. In the response Amazon Storage Gateway returns volume information sorted by volume Amazon Resource Name (ARN).

# Arguments

## `VolumeARNs = [::String, ...]` -- *Required*





# Returns

`DescribeCachediSCSIVolumesOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe gateway cached iSCSI volumes

Returns a description of the gateway cached iSCSI volumes specified in the request.

Input:
```
[
    "VolumeARNs" => [
        "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
    ]
]
```

Output:
```
Dict(
    "CachediSCSIVolumes" => [
        Dict(
            "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
            "VolumeId" => "vol-1122AABB",
            "VolumeSizeInBytes" => 1099511627776,
            "VolumeStatus" => "AVAILABLE",
            "VolumeType" => "CACHED iSCSI",
            "VolumeiSCSIAttributes" => Dict(
                "ChapEnabled" => true,
                "LunNumber" => 1,
                "NetworkInterfaceId" => "10.243.43.207",
                "NetworkInterfacePort" => 3260,
                "TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
            )
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeCachediSCSIVolumes)
"""
@inline describe_cachedi_scsivolumes(aws::AWSConfig=default_aws_config(); args...) = describe_cachedi_scsivolumes(aws, args)

@inline describe_cachedi_scsivolumes(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeCachediSCSIVolumes", args)

@inline describe_cachedi_scsivolumes(args) = describe_cachedi_scsivolumes(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_chap_credentials
    describe_chap_credentials([::AWSConfig], arguments::Dict)
    describe_chap_credentials([::AWSConfig]; TargetARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeChapCredentials", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeChapCredentials", TargetARN=)

# DescribeChapCredentials Operation

Returns an array of Challenge-Handshake Authentication Protocol (CHAP) credentials information for a specified iSCSI target, one for each target-initiator pair.

# Arguments

## `TargetARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the iSCSI volume target. Use the [DescribeStorediSCSIVolumes](@ref) operation to return to retrieve the TargetARN for specified VolumeARN.




# Returns

`DescribeChapCredentialsOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe CHAP credetnitals for an iSCSI

Returns an array of Challenge-Handshake Authentication Protocol (CHAP) credentials information for a specified iSCSI target, one for each target-initiator pair.

Input:
```
[
    "TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
]
```

Output:
```
Dict(
    "ChapCredentials" => [
        Dict(
            "InitiatorName" => "iqn.1991-05.com.microsoft:computername.domain.example.com",
            "SecretToAuthenticateInitiator" => "111111111111",
            "SecretToAuthenticateTarget" => "222222222222",
            "TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeChapCredentials)
"""
@inline describe_chap_credentials(aws::AWSConfig=default_aws_config(); args...) = describe_chap_credentials(aws, args)

@inline describe_chap_credentials(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeChapCredentials", args)

@inline describe_chap_credentials(args) = describe_chap_credentials(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_gateway_information
    describe_gateway_information([::AWSConfig], arguments::Dict)
    describe_gateway_information([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeGatewayInformation", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeGatewayInformation", GatewayARN=)

# DescribeGatewayInformation Operation

Returns metadata about a gateway such as its name, network interfaces, configured time zone, and the state (whether the gateway is running or not). To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`DescribeGatewayInformationOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe metadata about the gateway

Returns metadata about a gateway such as its name, network interfaces, configured time zone, and the state (whether the gateway is running or not).

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "GatewayId" => "sgw-AABB1122",
    "GatewayName" => "My_Gateway",
    "GatewayNetworkInterfaces" => [
        Dict(
            "Ipv4Address" => "10.35.69.216"
        )
    ],
    "GatewayState" => "STATE_RUNNING",
    "GatewayTimezone" => "GMT-8:00",
    "GatewayType" => "STORED",
    "LastSoftwareUpdate" => "2016-01-02T16:00:00",
    "NextUpdateAvailabilityDate" => "2017-01-02T16:00:00"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeGatewayInformation)
"""
@inline describe_gateway_information(aws::AWSConfig=default_aws_config(); args...) = describe_gateway_information(aws, args)

@inline describe_gateway_information(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeGatewayInformation", args)

@inline describe_gateway_information(args) = describe_gateway_information(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_maintenance_start_time
    describe_maintenance_start_time([::AWSConfig], arguments::Dict)
    describe_maintenance_start_time([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeMaintenanceStartTime", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeMaintenanceStartTime", GatewayARN=)

# DescribeMaintenanceStartTime Operation

Returns your gateway's weekly maintenance start time including the day and time of the week. Note that values are in terms of the gateway's time zone.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`DescribeMaintenanceStartTimeOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe gateway's maintenance start time

Returns your gateway's weekly maintenance start time including the day and time of the week.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "DayOfWeek" => 2,
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "HourOfDay" => 15,
    "MinuteOfHour" => 35,
    "Timezone" => "GMT+7:00"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeMaintenanceStartTime)
"""
@inline describe_maintenance_start_time(aws::AWSConfig=default_aws_config(); args...) = describe_maintenance_start_time(aws, args)

@inline describe_maintenance_start_time(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeMaintenanceStartTime", args)

@inline describe_maintenance_start_time(args) = describe_maintenance_start_time(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_nfsfile_shares
    describe_nfsfile_shares([::AWSConfig], arguments::Dict)
    describe_nfsfile_shares([::AWSConfig]; FileShareARNList=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeNFSFileShares", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeNFSFileShares", FileShareARNList=)

# DescribeNFSFileShares Operation

Gets a description for one or more Network File System (NFS) file shares from a file gateway. This operation is only supported for file gateways.

# Arguments

## `FileShareARNList = [::String, ...]` -- *Required*
An array containing the Amazon Resource Name (ARN) of each file share to be described.




# Returns

`DescribeNFSFileSharesOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeNFSFileShares)
"""
@inline describe_nfsfile_shares(aws::AWSConfig=default_aws_config(); args...) = describe_nfsfile_shares(aws, args)

@inline describe_nfsfile_shares(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeNFSFileShares", args)

@inline describe_nfsfile_shares(args) = describe_nfsfile_shares(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_smbfile_shares
    describe_smbfile_shares([::AWSConfig], arguments::Dict)
    describe_smbfile_shares([::AWSConfig]; FileShareARNList=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeSMBFileShares", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeSMBFileShares", FileShareARNList=)

# DescribeSMBFileShares Operation

Gets a description for one or more Server Message Block (SMB) file shares from a file gateway. This operation is only supported for file gateways.

# Arguments

## `FileShareARNList = [::String, ...]` -- *Required*
An array containing the Amazon Resource Name (ARN) of each file share to be described.




# Returns

`DescribeSMBFileSharesOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSMBFileShares)
"""
@inline describe_smbfile_shares(aws::AWSConfig=default_aws_config(); args...) = describe_smbfile_shares(aws, args)

@inline describe_smbfile_shares(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeSMBFileShares", args)

@inline describe_smbfile_shares(args) = describe_smbfile_shares(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_smbsettings
    describe_smbsettings([::AWSConfig], arguments::Dict)
    describe_smbsettings([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeSMBSettings", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeSMBSettings", GatewayARN=)

# DescribeSMBSettings Operation

Gets a description of a Server Message Block (SMB) file share settings from a file gateway. This operation is only supported for file gateways.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`DescribeSMBSettingsOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSMBSettings)
"""
@inline describe_smbsettings(aws::AWSConfig=default_aws_config(); args...) = describe_smbsettings(aws, args)

@inline describe_smbsettings(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeSMBSettings", args)

@inline describe_smbsettings(args) = describe_smbsettings(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_snapshot_schedule
    describe_snapshot_schedule([::AWSConfig], arguments::Dict)
    describe_snapshot_schedule([::AWSConfig]; VolumeARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeSnapshotSchedule", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeSnapshotSchedule", VolumeARN=)

# DescribeSnapshotSchedule Operation

Describes the snapshot schedule for the specified gateway volume. The snapshot schedule information includes intervals at which snapshots are automatically initiated on the volume. This operation is only supported in the cached volume and stored volume types.

# Arguments

## `VolumeARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the volume. Use the [ListVolumes](@ref) operation to return a list of gateway volumes.




# Returns

`DescribeSnapshotScheduleOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe snapshot schedule for gateway volume

Describes the snapshot schedule for the specified gateway volume including intervals at which snapshots are automatically initiated.

Input:
```
[
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
]
```

Output:
```
Dict(
    "Description" => "sgw-AABB1122:vol-AABB1122:Schedule",
    "RecurrenceInHours" => 24,
    "StartAt" => 6,
    "Timezone" => "GMT+7:00",
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSnapshotSchedule)
"""
@inline describe_snapshot_schedule(aws::AWSConfig=default_aws_config(); args...) = describe_snapshot_schedule(aws, args)

@inline describe_snapshot_schedule(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeSnapshotSchedule", args)

@inline describe_snapshot_schedule(args) = describe_snapshot_schedule(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_storedi_scsivolumes
    describe_storedi_scsivolumes([::AWSConfig], arguments::Dict)
    describe_storedi_scsivolumes([::AWSConfig]; VolumeARNs=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeStorediSCSIVolumes", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeStorediSCSIVolumes", VolumeARNs=)

# DescribeStorediSCSIVolumes Operation

Returns the description of the gateway volumes specified in the request. The list of gateway volumes in the request must be from one gateway. In the response Amazon Storage Gateway returns volume information sorted by volume ARNs. This operation is only supported in stored volume gateway type.

# Arguments

## `VolumeARNs = [::String, ...]` -- *Required*
An array of strings where each string represents the Amazon Resource Name (ARN) of a stored volume. All of the specified stored volumes must from the same gateway. Use [ListVolumes](@ref) to get volume ARNs for a gateway.




# Returns

`DescribeStorediSCSIVolumesOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe the volumes of a gateway

Returns the description of the gateway volumes specified in the request belonging to the same gateway.

Input:
```
[
    "VolumeARNs" => [
        "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
    ]
]
```

Output:
```
Dict(
    "StorediSCSIVolumes" => [
        Dict(
            "PreservedExistingData" => false,
            "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
            "VolumeDiskId" => "pci-0000:03:00.0-scsi-0:0:0:0",
            "VolumeId" => "vol-1122AABB",
            "VolumeProgress" => 23.7,
            "VolumeSizeInBytes" => 1099511627776,
            "VolumeStatus" => "BOOTSTRAPPING",
            "VolumeiSCSIAttributes" => Dict(
                "ChapEnabled" => true,
                "NetworkInterfaceId" => "10.243.43.207",
                "NetworkInterfacePort" => 3260,
                "TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
            )
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeStorediSCSIVolumes)
"""
@inline describe_storedi_scsivolumes(aws::AWSConfig=default_aws_config(); args...) = describe_storedi_scsivolumes(aws, args)

@inline describe_storedi_scsivolumes(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeStorediSCSIVolumes", args)

@inline describe_storedi_scsivolumes(args) = describe_storedi_scsivolumes(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_tape_archives
    describe_tape_archives([::AWSConfig], arguments::Dict)
    describe_tape_archives([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeTapeArchives", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeTapeArchives", <keyword arguments>)

# DescribeTapeArchives Operation

Returns a description of specified virtual tapes in the virtual tape shelf (VTS). This operation is only supported in the tape gateway type.

If a specific `TapeARN` is not specified, AWS Storage Gateway returns a description of all virtual tapes found in the VTS associated with your account.

# Arguments

## `TapeARNs = [::String, ...]`
Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual tapes you want to describe.


## `Marker = ::String`
An opaque string that indicates the position at which to begin describing virtual tapes.


## `Limit = ::Int`
Specifies that the number of virtual tapes descried be limited to the specified number.




# Returns

`DescribeTapeArchivesOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe virtual tapes in the VTS

Returns a description of specified virtual tapes in the virtual tape shelf (VTS).

Input:
```
[
    "Limit" => 123,
    "Marker" => "1",
    "TapeARNs" => [
        "arn:aws:storagegateway:us-east-1:999999999999:tape/AM08A1AD",
        "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4"
    ]
]
```

Output:
```
Dict(
    "Marker" => "1",
    "TapeArchives" => [
        Dict(
            "CompletionTime" => "2016-12-16T13:50Z",
            "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999:tape/AM08A1AD",
            "TapeBarcode" => "AM08A1AD",
            "TapeSizeInBytes" => 107374182400,
            "TapeStatus" => "ARCHIVED"
        ),
        Dict(
            "CompletionTime" => "2016-12-16T13:59Z",
            "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999:tape/AMZN01A2A4",
            "TapeBarcode" => "AMZN01A2A4",
            "TapeSizeInBytes" => 429496729600,
            "TapeStatus" => "ARCHIVED"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapeArchives)
"""
@inline describe_tape_archives(aws::AWSConfig=default_aws_config(); args...) = describe_tape_archives(aws, args)

@inline describe_tape_archives(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeTapeArchives", args)

@inline describe_tape_archives(args) = describe_tape_archives(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_tape_recovery_points
    describe_tape_recovery_points([::AWSConfig], arguments::Dict)
    describe_tape_recovery_points([::AWSConfig]; GatewayARN=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeTapeRecoveryPoints", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeTapeRecoveryPoints", GatewayARN=, <keyword arguments>)

# DescribeTapeRecoveryPoints Operation

Returns a list of virtual tape recovery points that are available for the specified tape gateway.

A recovery point is a point-in-time view of a virtual tape at which all the data on the virtual tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway. This operation is only supported in the tape gateway type.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `Marker = ::String`
An opaque string that indicates the position at which to begin describing the virtual tape recovery points.


## `Limit = ::Int`
Specifies that the number of virtual tape recovery points that are described be limited to the specified number.




# Returns

`DescribeTapeRecoveryPointsOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe virtual tape recovery points

Returns a list of virtual tape recovery points that are available for the specified gateway-VTL.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "Limit" => 1,
    "Marker" => "1"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "Marker" => "1",
    "TapeRecoveryPointInfos" => [
        Dict(
            "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999:tape/AMZN01A2A4",
            "TapeRecoveryPointTime" => "2016-12-16T13:50Z",
            "TapeSizeInBytes" => 1471550497,
            "TapeStatus" => "AVAILABLE"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapeRecoveryPoints)
"""
@inline describe_tape_recovery_points(aws::AWSConfig=default_aws_config(); args...) = describe_tape_recovery_points(aws, args)

@inline describe_tape_recovery_points(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeTapeRecoveryPoints", args)

@inline describe_tape_recovery_points(args) = describe_tape_recovery_points(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_tapes
    describe_tapes([::AWSConfig], arguments::Dict)
    describe_tapes([::AWSConfig]; GatewayARN=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeTapes", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeTapes", GatewayARN=, <keyword arguments>)

# DescribeTapes Operation

Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes. If a `TapeARN` is not specified, returns a description of all virtual tapes associated with the specified gateway. This operation is only supported in the tape gateway type.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `TapeARNs = [::String, ...]`
Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual tapes you want to describe. If this parameter is not specified, Tape gateway returns a description of all virtual tapes associated with the specified gateway.


## `Marker = ::String`
A marker value, obtained in a previous call to `DescribeTapes`. This marker indicates which page of results to retrieve.

If not specified, the first page of results is retrieved.


## `Limit = ::Int`
Specifies that the number of virtual tapes described be limited to the specified number.

**Note**
> Amazon Web Services may impose its own limit, if this field is not set.




# Returns

`DescribeTapesOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe virtual tape(s) associated with gateway

Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes. If a TapeARN is not specified, returns a description of all virtual tapes.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    "Limit" => 2,
    "Marker" => "1",
    "TapeARNs" => [
        "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST04A2A1",
        "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST05A2A0"
    ]
]
```

Output:
```
Dict(
    "Marker" => "1",
    "Tapes" => [
        Dict(
            "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST04A2A1",
            "TapeBarcode" => "TEST04A2A1",
            "TapeSizeInBytes" => 107374182400,
            "TapeStatus" => "AVAILABLE"
        ),
        Dict(
            "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST05A2A0",
            "TapeBarcode" => "TEST05A2A0",
            "TapeSizeInBytes" => 107374182400,
            "TapeStatus" => "AVAILABLE"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapes)
"""
@inline describe_tapes(aws::AWSConfig=default_aws_config(); args...) = describe_tapes(aws, args)

@inline describe_tapes(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeTapes", args)

@inline describe_tapes(args) = describe_tapes(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_upload_buffer
    describe_upload_buffer([::AWSConfig], arguments::Dict)
    describe_upload_buffer([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeUploadBuffer", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeUploadBuffer", GatewayARN=)

# DescribeUploadBuffer Operation

Returns information about the upload buffer of a gateway. This operation is supported for the stored volume, cached volume and tape gateway types.

The response includes disk IDs that are configured as upload buffer space, and it includes the amount of upload buffer space allocated and used.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`DescribeUploadBufferOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe upload buffer of gateway

Returns information about the upload buffer of a gateway including disk IDs and the amount of upload buffer space allocated/used.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "DiskIds" => [
        "pci-0000:03:00.0-scsi-0:0:0:0",
        "pci-0000:04:00.0-scsi-0:1:0:0"
    ],
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "UploadBufferAllocatedInBytes" => 0,
    "UploadBufferUsedInBytes" => 161061273600
)
```

# Example: To describe upload buffer of a gateway

Returns information about the upload buffer of a gateway including disk IDs and the amount of upload buffer space allocated and used.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "DiskIds" => [
        "pci-0000:03:00.0-scsi-0:0:0:0",
        "pci-0000:04:00.0-scsi-0:1:0:0"
    ],
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "UploadBufferAllocatedInBytes" => 161061273600,
    "UploadBufferUsedInBytes" => 0
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeUploadBuffer)
"""
@inline describe_upload_buffer(aws::AWSConfig=default_aws_config(); args...) = describe_upload_buffer(aws, args)

@inline describe_upload_buffer(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeUploadBuffer", args)

@inline describe_upload_buffer(args) = describe_upload_buffer(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_vtldevices
    describe_vtldevices([::AWSConfig], arguments::Dict)
    describe_vtldevices([::AWSConfig]; GatewayARN=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeVTLDevices", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeVTLDevices", GatewayARN=, <keyword arguments>)

# DescribeVTLDevices Operation

Returns a description of virtual tape library (VTL) devices for the specified tape gateway. In the response, AWS Storage Gateway returns VTL device information.

This operation is only supported in the tape gateway type.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `VTLDeviceARNs = [::String, ...]`
An array of strings, where each string represents the Amazon Resource Name (ARN) of a VTL device.

**Note**
> All of the specified VTL devices must be from the same gateway. If no VTL devices are specified, the result will contain all devices on the specified gateway.


## `Marker = ::String`
An opaque string that indicates the position at which to begin describing the VTL devices.


## `Limit = ::Int`
Specifies that the number of VTL devices described be limited to the specified number.




# Returns

`DescribeVTLDevicesOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe virtual tape library (VTL) devices of a single gateway

Returns a description of virtual tape library (VTL) devices for the specified gateway.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    "Limit" => 123,
    "Marker" => "1",
    "VTLDeviceARNs" => [

    ]
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    "Marker" => "1",
    "VTLDevices" => [
        Dict(
            "DeviceiSCSIAttributes" => Dict(
                "ChapEnabled" => false,
                "NetworkInterfaceId" => "10.243.43.207",
                "NetworkInterfacePort" => 3260,
                "TargetARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:sgw-1fad4876-mediachanger"
            ),
            "VTLDeviceARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_MEDIACHANGER_00001",
            "VTLDeviceProductIdentifier" => "L700",
            "VTLDeviceType" => "Medium Changer",
            "VTLDeviceVendor" => "STK"
        ),
        Dict(
            "DeviceiSCSIAttributes" => Dict(
                "ChapEnabled" => false,
                "NetworkInterfaceId" => "10.243.43.209",
                "NetworkInterfacePort" => 3260,
                "TargetARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:sgw-1fad4876-tapedrive-01"
            ),
            "VTLDeviceARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_TAPEDRIVE_00001",
            "VTLDeviceProductIdentifier" => "ULT3580-TD5",
            "VTLDeviceType" => "Tape Drive",
            "VTLDeviceVendor" => "IBM"
        ),
        Dict(
            "DeviceiSCSIAttributes" => Dict(
                "ChapEnabled" => false,
                "NetworkInterfaceId" => "10.243.43.209",
                "NetworkInterfacePort" => 3260,
                "TargetARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:sgw-1fad4876-tapedrive-02"
            ),
            "VTLDeviceARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_TAPEDRIVE_00002",
            "VTLDeviceProductIdentifier" => "ULT3580-TD5",
            "VTLDeviceType" => "Tape Drive",
            "VTLDeviceVendor" => "IBM"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeVTLDevices)
"""
@inline describe_vtldevices(aws::AWSConfig=default_aws_config(); args...) = describe_vtldevices(aws, args)

@inline describe_vtldevices(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeVTLDevices", args)

@inline describe_vtldevices(args) = describe_vtldevices(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.describe_working_storage
    describe_working_storage([::AWSConfig], arguments::Dict)
    describe_working_storage([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DescribeWorkingStorage", arguments::Dict)
    storagegateway([::AWSConfig], "DescribeWorkingStorage", GatewayARN=)

# DescribeWorkingStorage Operation

Returns information about the working storage of a gateway. This operation is only supported in the stored volumes gateway type. This operation is deprecated in cached volumes API version (20120630). Use DescribeUploadBuffer instead.

**Note**
> Working storage is also referred to as upload buffer. You can also use the DescribeUploadBuffer operation to add upload buffer to a stored volume gateway.

The response includes disk IDs that are configured as working storage, and it includes the amount of working storage allocated and used.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`DescribeWorkingStorageOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To describe the working storage of a gateway [Depreciated]

This operation is supported only for the gateway-stored volume architecture. This operation is deprecated in cached-volumes API version (20120630). Use DescribeUploadBuffer instead.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "DiskIds" => [
        "pci-0000:03:00.0-scsi-0:0:0:0",
        "pci-0000:03:00.0-scsi-0:0:1:0"
    ],
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "WorkingStorageAllocatedInBytes" => 2199023255552,
    "WorkingStorageUsedInBytes" => 789207040
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeWorkingStorage)
"""
@inline describe_working_storage(aws::AWSConfig=default_aws_config(); args...) = describe_working_storage(aws, args)

@inline describe_working_storage(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DescribeWorkingStorage", args)

@inline describe_working_storage(args) = describe_working_storage(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.disable_gateway
    disable_gateway([::AWSConfig], arguments::Dict)
    disable_gateway([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "DisableGateway", arguments::Dict)
    storagegateway([::AWSConfig], "DisableGateway", GatewayARN=)

# DisableGateway Operation

Disables a tape gateway when the gateway is no longer functioning. For example, if your gateway VM is damaged, you can disable the gateway so you can recover virtual tapes.

Use this operation for a tape gateway that is not reachable or not functioning. This operation is only supported in the tape gateway type.

**Important**
> Once a gateway is disabled it cannot be enabled.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`DisableGatewayOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To disable a gateway when it is no longer functioning

Disables a gateway when the gateway is no longer functioning. Use this operation for a gateway-VTL that is not reachable or not functioning.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DisableGateway)
"""
@inline disable_gateway(aws::AWSConfig=default_aws_config(); args...) = disable_gateway(aws, args)

@inline disable_gateway(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "DisableGateway", args)

@inline disable_gateway(args) = disable_gateway(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.join_domain
    join_domain([::AWSConfig], arguments::Dict)
    join_domain([::AWSConfig]; GatewayARN=, DomainName=, UserName=, Password=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "JoinDomain", arguments::Dict)
    storagegateway([::AWSConfig], "JoinDomain", GatewayARN=, DomainName=, UserName=, Password=)

# JoinDomain Operation

Adds a file gateway to an Active Directory domain. This operation is only supported for file gateways that support the SMB file protocol.

# Arguments

## `GatewayARN = ::String` -- *Required*
The unique Amazon Resource Name (ARN) of the file gateway you want to add to the Active Directory domain.


## `DomainName = ::String` -- *Required*
The name of the domain that you want the gateway to join.


## `UserName = ::String` -- *Required*
Sets the user name of user who has permission to add the gateway to the Active Directory domain.


## `Password = ::String` -- *Required*
Sets the password of the user who has permission to add the gateway to the Active Directory domain.




# Returns

`JoinDomainOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/JoinDomain)
"""
@inline join_domain(aws::AWSConfig=default_aws_config(); args...) = join_domain(aws, args)

@inline join_domain(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "JoinDomain", args)

@inline join_domain(args) = join_domain(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.list_file_shares
    list_file_shares([::AWSConfig], arguments::Dict)
    list_file_shares([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "ListFileShares", arguments::Dict)
    storagegateway([::AWSConfig], "ListFileShares", <keyword arguments>)

# ListFileShares Operation

Gets a list of the file shares for a specific file gateway, or the list of file shares that belong to the calling user account. This operation is only supported for file gateways.

# Arguments

## `GatewayARN = ::String`
The Amazon resource Name (ARN) of the gateway whose file shares you want to list. If this field is not present, all file shares under your account are listed.


## `Limit = ::Int`
The maximum number of file shares to return in the response. The value must be an integer with a value greater than zero. Optional.


## `Marker = ::String`
Opaque pagination token returned from a previous ListFileShares operation. If present, `Marker` specifies where to continue the list from after a previous call to ListFileShares. Optional.




# Returns

`ListFileSharesOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListFileShares)
"""
@inline list_file_shares(aws::AWSConfig=default_aws_config(); args...) = list_file_shares(aws, args)

@inline list_file_shares(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "ListFileShares", args)

@inline list_file_shares(args) = list_file_shares(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.list_gateways
    list_gateways([::AWSConfig], arguments::Dict)
    list_gateways([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "ListGateways", arguments::Dict)
    storagegateway([::AWSConfig], "ListGateways", <keyword arguments>)

# ListGateways Operation

Lists gateways owned by an AWS account in a region specified in the request. The returned list is ordered by gateway Amazon Resource Name (ARN).

By default, the operation returns a maximum of 100 gateways. This operation supports pagination that allows you to optionally reduce the number of gateways returned in a response.

If you have more gateways than are returned in a response (that is, the response returns only a truncated list of your gateways), the response contains a marker that you can specify in your next request to fetch the next page of gateways.

# Arguments

## `Marker = ::String`
An opaque string that indicates the position at which to begin the returned list of gateways.


## `Limit = ::Int`
Specifies that the list of gateways returned be limited to the specified number of items.




# Returns

`ListGatewaysOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To lists region specific gateways per AWS account

Lists gateways owned by an AWS account in a specified region as requested. Results are sorted by gateway ARN up to a maximum of 100 gateways.

Input:
```
[
    "Limit" => 2,
    "Marker" => "1"
]
```

Output:
```
Dict(
    "Gateways" => [
        Dict(
            "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
        ),
        Dict(
            "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-23A4567C"
        )
    ],
    "Marker" => "1"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListGateways)
"""
@inline list_gateways(aws::AWSConfig=default_aws_config(); args...) = list_gateways(aws, args)

@inline list_gateways(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "ListGateways", args)

@inline list_gateways(args) = list_gateways(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.list_local_disks
    list_local_disks([::AWSConfig], arguments::Dict)
    list_local_disks([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "ListLocalDisks", arguments::Dict)
    storagegateway([::AWSConfig], "ListLocalDisks", GatewayARN=)

# ListLocalDisks Operation

Returns a list of the gateway's local disks. To specify which gateway to describe, you use the Amazon Resource Name (ARN) of the gateway in the body of the request.

The request returns a list of all disks, specifying which are configured as working storage, cache storage, or stored volume or not configured at all. The response includes a `DiskStatus` field. This field can have a value of present (the disk is available to use), missing (the disk is no longer connected to the gateway), or mismatch (the disk node is occupied by a disk that has incorrect metadata or the disk content is corrupted).

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`ListLocalDisksOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To list the gateway's local disks

The request returns a list of all disks, specifying which are configured as working storage, cache storage, or stored volume or not configured at all.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "Disks" => [
        Dict(
            "DiskAllocationType" => "CACHE_STORAGE",
            "DiskId" => "pci-0000:03:00.0-scsi-0:0:0:0",
            "DiskNode" => "SCSI(0:0)",
            "DiskPath" => "/dev/sda",
            "DiskSizeInBytes" => 1099511627776,
            "DiskStatus" => "missing"
        ),
        Dict(
            "DiskAllocationResource" => "",
            "DiskAllocationType" => "UPLOAD_BUFFER",
            "DiskId" => "pci-0000:03:00.0-scsi-0:0:1:0",
            "DiskNode" => "SCSI(0:1)",
            "DiskPath" => "/dev/sdb",
            "DiskSizeInBytes" => 1099511627776,
            "DiskStatus" => "present"
        )
    ],
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListLocalDisks)
"""
@inline list_local_disks(aws::AWSConfig=default_aws_config(); args...) = list_local_disks(aws, args)

@inline list_local_disks(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "ListLocalDisks", args)

@inline list_local_disks(args) = list_local_disks(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; ResourceARN=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "ListTagsForResource", arguments::Dict)
    storagegateway([::AWSConfig], "ListTagsForResource", ResourceARN=, <keyword arguments>)

# ListTagsForResource Operation

Lists the tags that have been added to the specified resource. This operation is only supported in the cached volume, stored volume and tape gateway type.

# Arguments

## `ResourceARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource for which you want to list tags.


## `Marker = ::String`
An opaque string that indicates the position at which to begin returning the list of tags.


## `Limit = ::Int`
Specifies that the list of tags returned be limited to the specified number of items.




# Returns

`ListTagsForResourceOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To list tags that have been added to a resource

Lists the tags that have been added to the specified resource.

Input:
```
[
    "Limit" => 1,
    "Marker" => "1",
    "ResourceARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B"
]
```

Output:
```
Dict(
    "Marker" => "1",
    "ResourceARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B",
    "Tags" => [
        Dict(
            "Key" => "Dev Gatgeway Region",
            "Value" => "East Coast"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "ListTagsForResource", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.list_tapes
    list_tapes([::AWSConfig], arguments::Dict)
    list_tapes([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "ListTapes", arguments::Dict)
    storagegateway([::AWSConfig], "ListTapes", <keyword arguments>)

# ListTapes Operation

Lists virtual tapes in your virtual tape library (VTL) and your virtual tape shelf (VTS). You specify the tapes to list by specifying one or more tape Amazon Resource Names (ARNs). If you don't specify a tape ARN, the operation lists all virtual tapes in both your VTL and VTS.

This operation supports pagination. By default, the operation returns a maximum of up to 100 tapes. You can optionally specify the `Limit` parameter in the body to limit the number of tapes in the response. If the number of tapes returned in the response is truncated, the response includes a `Marker` element that you can use in your subsequent request to retrieve the next set of tapes. This operation is only supported in the tape gateway type.

# Arguments

## `TapeARNs = [::String, ...]`



## `Marker = ::String`
A string that indicates the position at which to begin the returned list of tapes.


## `Limit = ::Int`
An optional number limit for the tapes in the list returned by this call.




# Returns

`ListTapesOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTapes)
"""
@inline list_tapes(aws::AWSConfig=default_aws_config(); args...) = list_tapes(aws, args)

@inline list_tapes(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "ListTapes", args)

@inline list_tapes(args) = list_tapes(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.list_volume_initiators
    list_volume_initiators([::AWSConfig], arguments::Dict)
    list_volume_initiators([::AWSConfig]; VolumeARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "ListVolumeInitiators", arguments::Dict)
    storagegateway([::AWSConfig], "ListVolumeInitiators", VolumeARN=)

# ListVolumeInitiators Operation

Lists iSCSI initiators that are connected to a volume. You can use this operation to determine whether a volume is being used or not. This operation is only supported in the cached volume and stored volume gateway types.

# Arguments

## `VolumeARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the volume. Use the [ListVolumes](@ref) operation to return a list of gateway volumes for the gateway.




# Returns

`ListVolumeInitiatorsOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumeInitiators)
"""
@inline list_volume_initiators(aws::AWSConfig=default_aws_config(); args...) = list_volume_initiators(aws, args)

@inline list_volume_initiators(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "ListVolumeInitiators", args)

@inline list_volume_initiators(args) = list_volume_initiators(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.list_volume_recovery_points
    list_volume_recovery_points([::AWSConfig], arguments::Dict)
    list_volume_recovery_points([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "ListVolumeRecoveryPoints", arguments::Dict)
    storagegateway([::AWSConfig], "ListVolumeRecoveryPoints", GatewayARN=)

# ListVolumeRecoveryPoints Operation

Lists the recovery points for a specified gateway. This operation is only supported in the cached volume gateway type.

Each cache volume has one recovery point. A volume recovery point is a point in time at which all data of the volume is consistent and from which you can create a snapshot or clone a new cached volume from a source volume. To create a snapshot from a volume recovery point use the [CreateSnapshotFromVolumeRecoveryPoint](@ref) operation.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`ListVolumeRecoveryPointsOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To list recovery points for a gateway

Lists the recovery points for a specified gateway in which all data of the volume is consistent and can be used to create a snapshot.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "VolumeRecoveryPointInfos" => [
        Dict(
            "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
            "VolumeRecoveryPointTime" => "2012-09-04T21:08:44.627Z",
            "VolumeSizeInBytes" => 536870912000
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumeRecoveryPoints)
"""
@inline list_volume_recovery_points(aws::AWSConfig=default_aws_config(); args...) = list_volume_recovery_points(aws, args)

@inline list_volume_recovery_points(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "ListVolumeRecoveryPoints", args)

@inline list_volume_recovery_points(args) = list_volume_recovery_points(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.list_volumes
    list_volumes([::AWSConfig], arguments::Dict)
    list_volumes([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "ListVolumes", arguments::Dict)
    storagegateway([::AWSConfig], "ListVolumes", <keyword arguments>)

# ListVolumes Operation

Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN. The response includes only the volume ARNs. If you want additional volume information, use the [DescribeStorediSCSIVolumes](@ref) or the [DescribeCachediSCSIVolumes](@ref) API.

The operation supports pagination. By default, the operation returns a maximum of up to 100 volumes. You can optionally specify the `Limit` field in the body to limit the number of volumes in the response. If the number of volumes returned in the response is truncated, the response includes a Marker field. You can use this Marker value in your subsequent request to retrieve the next set of volumes. This operation is only supported in the cached volume and stored volume gateway types.

# Arguments

## `GatewayARN = ::String`



## `Marker = ::String`
A string that indicates the position at which to begin the returned list of volumes. Obtain the marker from the response of a previous List iSCSI Volumes request.


## `Limit = ::Int`
Specifies that the list of volumes returned be limited to the specified number of items.




# Returns

`ListVolumesOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To list the iSCSI stored volumes of a gateway

Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN up to a maximum of 100 volumes.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "Limit" => 2,
    "Marker" => "1"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "Marker" => "1",
    "VolumeInfos" => [
        Dict(
            "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
            "GatewayId" => "sgw-12A3456B",
            "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB",
            "VolumeId" => "vol-1122AABB",
            "VolumeSizeInBytes" => 107374182400,
            "VolumeType" => "STORED"
        ),
        Dict(
            "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C",
            "GatewayId" => "sgw-gw-13B4567C",
            "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C/volume/vol-3344CCDD",
            "VolumeId" => "vol-1122AABB",
            "VolumeSizeInBytes" => 107374182400,
            "VolumeType" => "STORED"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumes)
"""
@inline list_volumes(aws::AWSConfig=default_aws_config(); args...) = list_volumes(aws, args)

@inline list_volumes(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "ListVolumes", args)

@inline list_volumes(args) = list_volumes(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.notify_when_uploaded
    notify_when_uploaded([::AWSConfig], arguments::Dict)
    notify_when_uploaded([::AWSConfig]; FileShareARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "NotifyWhenUploaded", arguments::Dict)
    storagegateway([::AWSConfig], "NotifyWhenUploaded", FileShareARN=)

# NotifyWhenUploaded Operation

Sends you notification through CloudWatch Events when all files written to your NFS file share have been uploaded to Amazon S3.

AWS Storage Gateway can send a notification through Amazon CloudWatch Events when all files written to your file share up to that point in time have been uploaded to Amazon S3. These files include files written to the NFS file share up to the time that you make a request for notification. When the upload is done, Storage Gateway sends you notification through an Amazon CloudWatch Event. You can configure CloudWatch Events to send the notification through event targets such as Amazon SNS or AWS Lambda function. This operation is only supported for file gateways.

For more information, see Getting File Upload Notification in the Storage Gateway User Guide (https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-upload-notification).

# Arguments

## `FileShareARN = ::String` -- *Required*





# Returns

`NotifyWhenUploadedOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/NotifyWhenUploaded)
"""
@inline notify_when_uploaded(aws::AWSConfig=default_aws_config(); args...) = notify_when_uploaded(aws, args)

@inline notify_when_uploaded(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "NotifyWhenUploaded", args)

@inline notify_when_uploaded(args) = notify_when_uploaded(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.refresh_cache
    refresh_cache([::AWSConfig], arguments::Dict)
    refresh_cache([::AWSConfig]; FileShareARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "RefreshCache", arguments::Dict)
    storagegateway([::AWSConfig], "RefreshCache", FileShareARN=)

# RefreshCache Operation

Refreshes the cache for the specified file share. This operation finds objects in the Amazon S3 bucket that were added, removed or replaced since the gateway last listed the bucket's contents and cached the results. This operation is only supported in the file gateway type.

# Arguments

## `FileShareARN = ::String` -- *Required*





# Returns

`RefreshCacheOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RefreshCache)
"""
@inline refresh_cache(aws::AWSConfig=default_aws_config(); args...) = refresh_cache(aws, args)

@inline refresh_cache(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "RefreshCache", args)

@inline refresh_cache(args) = refresh_cache(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.remove_tags_from_resource
    remove_tags_from_resource([::AWSConfig], arguments::Dict)
    remove_tags_from_resource([::AWSConfig]; ResourceARN=, TagKeys=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "RemoveTagsFromResource", arguments::Dict)
    storagegateway([::AWSConfig], "RemoveTagsFromResource", ResourceARN=, TagKeys=)

# RemoveTagsFromResource Operation

Removes one or more tags from the specified resource. This operation is only supported in the cached volume, stored volume and tape gateway types.

# Arguments

## `ResourceARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource you want to remove the tags from.


## `TagKeys = [::String, ...]` -- *Required*
The keys of the tags you want to remove from the specified resource. A tag is composed of a key/value pair.




# Returns

`RemoveTagsFromResourceOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To remove tags from a resource

Lists the iSCSI stored volumes of a gateway. Removes one or more tags from the specified resource.

Input:
```
[
    "ResourceARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B",
    "TagKeys" => [
        "Dev Gatgeway Region",
        "East Coast"
    ]
]
```

Output:
```
Dict(
    "ResourceARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RemoveTagsFromResource)
"""
@inline remove_tags_from_resource(aws::AWSConfig=default_aws_config(); args...) = remove_tags_from_resource(aws, args)

@inline remove_tags_from_resource(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "RemoveTagsFromResource", args)

@inline remove_tags_from_resource(args) = remove_tags_from_resource(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.reset_cache
    reset_cache([::AWSConfig], arguments::Dict)
    reset_cache([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "ResetCache", arguments::Dict)
    storagegateway([::AWSConfig], "ResetCache", GatewayARN=)

# ResetCache Operation

Resets all cache disks that have encountered a error and makes the disks available for reconfiguration as cache storage. If your cache disk encounters a error, the gateway prevents read and write operations on virtual tapes in the gateway. For example, an error can occur when a disk is corrupted or removed from the gateway. When a cache is reset, the gateway loses its cache storage. At this point you can reconfigure the disks as cache disks. This operation is only supported in the cached volume and tape types.

**Important**
> If the cache disk you are resetting contains data that has not been uploaded to Amazon S3 yet, that data can be lost. After you reset cache disks, there will be no configured cache disks left in the gateway, so you must configure at least one new cache disk for your gateway to function properly.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`ResetCacheOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To reset cache disks in error status

Resets all cache disks that have encountered a error and makes the disks available for reconfiguration as cache storage.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ResetCache)
"""
@inline reset_cache(aws::AWSConfig=default_aws_config(); args...) = reset_cache(aws, args)

@inline reset_cache(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "ResetCache", args)

@inline reset_cache(args) = reset_cache(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.retrieve_tape_archive
    retrieve_tape_archive([::AWSConfig], arguments::Dict)
    retrieve_tape_archive([::AWSConfig]; TapeARN=, GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "RetrieveTapeArchive", arguments::Dict)
    storagegateway([::AWSConfig], "RetrieveTapeArchive", TapeARN=, GatewayARN=)

# RetrieveTapeArchive Operation

Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a tape gateway. Virtual tapes archived in the VTS are not associated with any gateway. However after a tape is retrieved, it is associated with a gateway, even though it is also listed in the VTS, that is, archive. This operation is only supported in the tape gateway type.

Once a tape is successfully retrieved to a gateway, it cannot be retrieved again to another gateway. You must archive the tape again before you can retrieve it to another gateway. This operation is only supported in the tape gateway type.

# Arguments

## `TapeARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the virtual tape you want to retrieve from the virtual tape shelf (VTS).


## `GatewayARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the gateway you want to retrieve the virtual tape to. Use the [ListGateways](@ref) operation to return a list of gateways for your account and region.

You retrieve archived virtual tapes to only one gateway and the gateway must be a tape gateway.




# Returns

`RetrieveTapeArchiveOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To retrieve an archived tape from the VTS

Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a gateway-VTL. Virtual tapes archived in the VTS are not associated with any gateway.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF"
]
```

Output:
```
Dict(
    "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RetrieveTapeArchive)
"""
@inline retrieve_tape_archive(aws::AWSConfig=default_aws_config(); args...) = retrieve_tape_archive(aws, args)

@inline retrieve_tape_archive(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "RetrieveTapeArchive", args)

@inline retrieve_tape_archive(args) = retrieve_tape_archive(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.retrieve_tape_recovery_point
    retrieve_tape_recovery_point([::AWSConfig], arguments::Dict)
    retrieve_tape_recovery_point([::AWSConfig]; TapeARN=, GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "RetrieveTapeRecoveryPoint", arguments::Dict)
    storagegateway([::AWSConfig], "RetrieveTapeRecoveryPoint", TapeARN=, GatewayARN=)

# RetrieveTapeRecoveryPoint Operation

Retrieves the recovery point for the specified virtual tape. This operation is only supported in the tape gateway type.

A recovery point is a point in time view of a virtual tape at which all the data on the tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway.

**Note**
> The virtual tape can be retrieved to only one gateway. The retrieved tape is read-only. The virtual tape can be retrieved to only a tape gateway. There is no charge for retrieving recovery points.

# Arguments

## `TapeARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the virtual tape for which you want to retrieve the recovery point.


## `GatewayARN = ::String` -- *Required*





# Returns

`RetrieveTapeRecoveryPointOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To retrieve the recovery point of a virtual tape

Retrieves the recovery point for the specified virtual tape.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF"
]
```

Output:
```
Dict(
    "TapeARN" => "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RetrieveTapeRecoveryPoint)
"""
@inline retrieve_tape_recovery_point(aws::AWSConfig=default_aws_config(); args...) = retrieve_tape_recovery_point(aws, args)

@inline retrieve_tape_recovery_point(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "RetrieveTapeRecoveryPoint", args)

@inline retrieve_tape_recovery_point(args) = retrieve_tape_recovery_point(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.set_local_console_password
    set_local_console_password([::AWSConfig], arguments::Dict)
    set_local_console_password([::AWSConfig]; GatewayARN=, LocalConsolePassword=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "SetLocalConsolePassword", arguments::Dict)
    storagegateway([::AWSConfig], "SetLocalConsolePassword", GatewayARN=, LocalConsolePassword=)

# SetLocalConsolePassword Operation

Sets the password for your VM local console. When you log in to the local console for the first time, you log in to the VM with the default credentials. We recommend that you set a new password. You don't need to know the default password to set a new password.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `LocalConsolePassword = ::String` -- *Required*
The password you want to set for your VM local console.




# Returns

`SetLocalConsolePasswordOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To set a password for your VM

Sets the password for your VM local console.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
    "LocalConsolePassword" => "PassWordMustBeAtLeast6Chars."
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/SetLocalConsolePassword)
"""
@inline set_local_console_password(aws::AWSConfig=default_aws_config(); args...) = set_local_console_password(aws, args)

@inline set_local_console_password(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "SetLocalConsolePassword", args)

@inline set_local_console_password(args) = set_local_console_password(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.set_smbguest_password
    set_smbguest_password([::AWSConfig], arguments::Dict)
    set_smbguest_password([::AWSConfig]; GatewayARN=, Password=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "SetSMBGuestPassword", arguments::Dict)
    storagegateway([::AWSConfig], "SetSMBGuestPassword", GatewayARN=, Password=)

# SetSMBGuestPassword Operation

Sets the password for the guest user `smbguest`. The `smbguest` user is the user when the authentication method for the file share is set to `GuestAccess`.

# Arguments

## `GatewayARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the file gateway the SMB file share is associated with.


## `Password = ::String` -- *Required*
The password that you want to set for your SMB Server.




# Returns

`SetSMBGuestPasswordOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/SetSMBGuestPassword)
"""
@inline set_smbguest_password(aws::AWSConfig=default_aws_config(); args...) = set_smbguest_password(aws, args)

@inline set_smbguest_password(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "SetSMBGuestPassword", args)

@inline set_smbguest_password(args) = set_smbguest_password(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.shutdown_gateway
    shutdown_gateway([::AWSConfig], arguments::Dict)
    shutdown_gateway([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "ShutdownGateway", arguments::Dict)
    storagegateway([::AWSConfig], "ShutdownGateway", GatewayARN=)

# ShutdownGateway Operation

Shuts down a gateway. To specify which gateway to shut down, use the Amazon Resource Name (ARN) of the gateway in the body of your request.

The operation shuts down the gateway service component running in the gateway's virtual machine (VM) and not the host VM.

**Note**
> If you want to shut down the VM, it is recommended that you first shut down the gateway component in the VM to avoid unpredictable conditions.

After the gateway is shutdown, you cannot call any other API except [StartGateway](@ref), [DescribeGatewayInformation](@ref), and [ListGateways](@ref). For more information, see [ActivateGateway](@ref). Your applications cannot read from or write to the gateway's storage volumes, and there are no snapshots taken.

**Note**
> When you make a shutdown request, you will get a `200 OK` success response immediately. However, it might take some time for the gateway to shut down. You can call the [DescribeGatewayInformation](@ref) API to check the status. For more information, see [ActivateGateway](@ref).

If do not intend to use the gateway again, you must delete the gateway (using [DeleteGateway](@ref)) to no longer pay software charges associated with the gateway.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`ShutdownGatewayOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To shut down a gateway service

This operation shuts down the gateway service component running in the storage gateway's virtual machine (VM) and not the VM.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ShutdownGateway)
"""
@inline shutdown_gateway(aws::AWSConfig=default_aws_config(); args...) = shutdown_gateway(aws, args)

@inline shutdown_gateway(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "ShutdownGateway", args)

@inline shutdown_gateway(args) = shutdown_gateway(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.start_gateway
    start_gateway([::AWSConfig], arguments::Dict)
    start_gateway([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "StartGateway", arguments::Dict)
    storagegateway([::AWSConfig], "StartGateway", GatewayARN=)

# StartGateway Operation

Starts a gateway that you previously shut down (see [ShutdownGateway](@ref)). After the gateway starts, you can then make other API calls, your applications can read from or write to the gateway's storage volumes and you will be able to take snapshot backups.

**Note**
> When you make a request, you will get a 200 OK success response immediately. However, it might take some time for the gateway to be ready. You should call [DescribeGatewayInformation](@ref) and check the status before making any additional API calls. For more information, see [ActivateGateway](@ref).

To specify which gateway to start, use the Amazon Resource Name (ARN) of the gateway in your request.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`StartGatewayOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To start a gateway service

Starts a gateway service that was previously shut down.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/StartGateway)
"""
@inline start_gateway(aws::AWSConfig=default_aws_config(); args...) = start_gateway(aws, args)

@inline start_gateway(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "StartGateway", args)

@inline start_gateway(args) = start_gateway(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.update_bandwidth_rate_limit
    update_bandwidth_rate_limit([::AWSConfig], arguments::Dict)
    update_bandwidth_rate_limit([::AWSConfig]; GatewayARN=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "UpdateBandwidthRateLimit", arguments::Dict)
    storagegateway([::AWSConfig], "UpdateBandwidthRateLimit", GatewayARN=, <keyword arguments>)

# UpdateBandwidthRateLimit Operation

Updates the bandwidth rate limits of a gateway. You can update both the upload and download bandwidth rate limit or specify only one of the two. If you don't set a bandwidth rate limit, the existing rate limit remains.

By default, a gateway's bandwidth rate limits are not set. If you don't set any limit, the gateway does not have any limitations on its bandwidth usage and could potentially use the maximum available bandwidth.

To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in your request.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `AverageUploadRateLimitInBitsPerSec = ::Int`
The average upload bandwidth rate limit in bits per second.


## `AverageDownloadRateLimitInBitsPerSec = ::Int`
The average download bandwidth rate limit in bits per second.




# Returns

`UpdateBandwidthRateLimitOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To update the bandwidth rate limits of a gateway

Updates the bandwidth rate limits of a gateway. Both the upload and download bandwidth rate limit can be set, or either one of the two. If a new limit is not set, the existing rate limit remains.

Input:
```
[
    "AverageDownloadRateLimitInBitsPerSec" => 102400,
    "AverageUploadRateLimitInBitsPerSec" => 51200,
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateBandwidthRateLimit)
"""
@inline update_bandwidth_rate_limit(aws::AWSConfig=default_aws_config(); args...) = update_bandwidth_rate_limit(aws, args)

@inline update_bandwidth_rate_limit(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "UpdateBandwidthRateLimit", args)

@inline update_bandwidth_rate_limit(args) = update_bandwidth_rate_limit(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.update_chap_credentials
    update_chap_credentials([::AWSConfig], arguments::Dict)
    update_chap_credentials([::AWSConfig]; TargetARN=, SecretToAuthenticateInitiator=, InitiatorName=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "UpdateChapCredentials", arguments::Dict)
    storagegateway([::AWSConfig], "UpdateChapCredentials", TargetARN=, SecretToAuthenticateInitiator=, InitiatorName=, <keyword arguments>)

# UpdateChapCredentials Operation

Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target. By default, a gateway does not have CHAP enabled; however, for added security, you might use it.

**Important**
> When you update CHAP credentials, all existing connections on the target are closed and initiators must reconnect with the new credentials.

# Arguments

## `TargetARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the iSCSI volume target. Use the [DescribeStorediSCSIVolumes](@ref) operation to return the TargetARN for specified VolumeARN.


## `SecretToAuthenticateInitiator = ::String` -- *Required*
The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.

**Note**
> The secret key must be between 12 and 16 bytes when encoded in UTF-8.


## `InitiatorName = ::String` -- *Required*
The iSCSI initiator that connects to the target.


## `SecretToAuthenticateTarget = ::String`
The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).

Byte constraints: Minimum bytes of 12. Maximum bytes of 16.

**Note**
> The secret key must be between 12 and 16 bytes when encoded in UTF-8.




# Returns

`UpdateChapCredentialsOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To update CHAP credentials for an iSCSI target

Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target.

Input:
```
[
    "InitiatorName" => "iqn.1991-05.com.microsoft:computername.domain.example.com",
    "SecretToAuthenticateInitiator" => "111111111111",
    "SecretToAuthenticateTarget" => "222222222222",
    "TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
]
```

Output:
```
Dict(
    "InitiatorName" => "iqn.1991-05.com.microsoft:computername.domain.example.com",
    "TargetARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateChapCredentials)
"""
@inline update_chap_credentials(aws::AWSConfig=default_aws_config(); args...) = update_chap_credentials(aws, args)

@inline update_chap_credentials(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "UpdateChapCredentials", args)

@inline update_chap_credentials(args) = update_chap_credentials(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.update_gateway_information
    update_gateway_information([::AWSConfig], arguments::Dict)
    update_gateway_information([::AWSConfig]; GatewayARN=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "UpdateGatewayInformation", arguments::Dict)
    storagegateway([::AWSConfig], "UpdateGatewayInformation", GatewayARN=, <keyword arguments>)

# UpdateGatewayInformation Operation

Updates a gateway's metadata, which includes the gateway's name and time zone. To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in your request.

**Note**
> For Gateways activated after September 2, 2015, the gateway's ARN contains the gateway ID rather than the gateway name. However, changing the name of the gateway has no effect on the gateway's ARN.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `GatewayName = ::String`



## `GatewayTimezone = ::String`





# Returns

`UpdateGatewayInformationOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To update a gateway's metadata

Updates a gateway's metadata, which includes the gateway's name and time zone.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "GatewayName" => "MyGateway2",
    "GatewayTimezone" => "GMT-12:00"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "GatewayName" => ""
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateGatewayInformation)
"""
@inline update_gateway_information(aws::AWSConfig=default_aws_config(); args...) = update_gateway_information(aws, args)

@inline update_gateway_information(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "UpdateGatewayInformation", args)

@inline update_gateway_information(args) = update_gateway_information(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.update_gateway_software_now
    update_gateway_software_now([::AWSConfig], arguments::Dict)
    update_gateway_software_now([::AWSConfig]; GatewayARN=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "UpdateGatewaySoftwareNow", arguments::Dict)
    storagegateway([::AWSConfig], "UpdateGatewaySoftwareNow", GatewayARN=)

# UpdateGatewaySoftwareNow Operation

Updates the gateway virtual machine (VM) software. The request immediately triggers the software update.

**Note**
> When you make this request, you get a `200 OK` success response immediately. However, it might take some time for the update to complete. You can call [DescribeGatewayInformation](@ref) to verify the gateway is in the `STATE_RUNNING` state.

**Important**
> A software update forces a system restart of your gateway. You can minimize the chance of any disruption to your applications by increasing your iSCSI Initiators' timeouts. For more information about increasing iSCSI Initiator timeouts for Windows and Linux, see [Customizing Your Windows iSCSI Settings](http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings) and [Customizing Your Linux iSCSI Settings](http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings), respectively.

# Arguments

## `GatewayARN = ::String` -- *Required*





# Returns

`UpdateGatewaySoftwareNowOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To update a gateway's VM software

Updates the gateway virtual machine (VM) software. The request immediately triggers the software update.

Input:
```
[
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateGatewaySoftwareNow)
"""
@inline update_gateway_software_now(aws::AWSConfig=default_aws_config(); args...) = update_gateway_software_now(aws, args)

@inline update_gateway_software_now(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "UpdateGatewaySoftwareNow", args)

@inline update_gateway_software_now(args) = update_gateway_software_now(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.update_maintenance_start_time
    update_maintenance_start_time([::AWSConfig], arguments::Dict)
    update_maintenance_start_time([::AWSConfig]; GatewayARN=, HourOfDay=, MinuteOfHour=, DayOfWeek=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "UpdateMaintenanceStartTime", arguments::Dict)
    storagegateway([::AWSConfig], "UpdateMaintenanceStartTime", GatewayARN=, HourOfDay=, MinuteOfHour=, DayOfWeek=)

# UpdateMaintenanceStartTime Operation

Updates a gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone.

# Arguments

## `GatewayARN = ::String` -- *Required*



## `HourOfDay = ::Int` -- *Required*
The hour component of the maintenance start time represented as *hh*, where *hh* is the hour (00 to 23). The hour of the day is in the time zone of the gateway.


## `MinuteOfHour = ::Int` -- *Required*
The minute component of the maintenance start time represented as *mm*, where *mm* is the minute (00 to 59). The minute of the hour is in the time zone of the gateway.


## `DayOfWeek = ::Int` -- *Required*
The maintenance start time day of the week represented as an ordinal number from 0 to 6, where 0 represents Sunday and 6 Saturday.




# Returns

`UpdateMaintenanceStartTimeOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To update a gateway's maintenance start time

Updates a gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is in your gateway's time zone.

Input:
```
[
    "DayOfWeek" => 2,
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
    "HourOfDay" => 0,
    "MinuteOfHour" => 30
]
```

Output:
```
Dict(
    "GatewayARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateMaintenanceStartTime)
"""
@inline update_maintenance_start_time(aws::AWSConfig=default_aws_config(); args...) = update_maintenance_start_time(aws, args)

@inline update_maintenance_start_time(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "UpdateMaintenanceStartTime", args)

@inline update_maintenance_start_time(args) = update_maintenance_start_time(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.update_nfsfile_share
    update_nfsfile_share([::AWSConfig], arguments::Dict)
    update_nfsfile_share([::AWSConfig]; FileShareARN=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "UpdateNFSFileShare", arguments::Dict)
    storagegateway([::AWSConfig], "UpdateNFSFileShare", FileShareARN=, <keyword arguments>)

# UpdateNFSFileShare Operation

Updates a Network File System (NFS) file share. This operation is only supported in the file gateway type.

**Note**
> To leave a file share field unchanged, set the corresponding input field to null.

Updates the following file share setting:

*   Default storage class for your S3 bucket

*   Metadata defaults for your S3 bucket

*   Allowed NFS clients for your file share

*   Squash settings

*   Write status of your file share

**Note**
> To leave a file share field unchanged, set the corresponding input field to null. This operation is only supported in file gateways.

# Arguments

## `FileShareARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the file share to be updated.


## `KMSEncrypted = ::Bool`
True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.


## `KMSKey = ::String`
The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.


## `NFSFileShareDefaults = [ ... ]`
The default values for the file share. Optional.
```
 NFSFileShareDefaults = [
        "FileMode" =>  ::String,
        "DirectoryMode" =>  ::String,
        "GroupId" =>  ::Int,
        "OwnerId" =>  ::Int
    ]
```

## `DefaultStorageClass = ::String`
The default storage class for objects put into an Amazon S3 bucket by the file gateway. Possible values are `S3_STANDARD`, `S3_STANDARD_IA`, or `S3_ONEZONE_IA`. If this field is not populated, the default value `S3_STANDARD` is used. Optional.


## `ObjectACL = "private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control" or "aws-exec-read"`
A value that sets the access control list permission for objects in the S3 bucket that a file gateway puts objects into. The default value is "private".


## `ClientList = [::String, ...]`
The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks.


## `Squash = ::String`
The user mapped to anonymous user. Valid options are the following:

*   `RootSquash` - Only root is mapped to anonymous user.

*   `NoSquash` - No one is mapped to anonymous user

*   `AllSquash` - Everyone is mapped to anonymous user.


## `ReadOnly = ::Bool`
A value that sets the write status of a file share. This value is true if the write status is read-only, and otherwise false.


## `GuessMIMETypeEnabled = ::Bool`
A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to true to enable MIME type guessing, and otherwise to false. The default value is true.


## `RequesterPays = ::Bool`
A value that sets the access control list permission for objects in the Amazon S3 bucket that a file gateway puts objects into. The default value is `private`.




# Returns

`UpdateNFSFileShareOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateNFSFileShare)
"""
@inline update_nfsfile_share(aws::AWSConfig=default_aws_config(); args...) = update_nfsfile_share(aws, args)

@inline update_nfsfile_share(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "UpdateNFSFileShare", args)

@inline update_nfsfile_share(args) = update_nfsfile_share(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.update_smbfile_share
    update_smbfile_share([::AWSConfig], arguments::Dict)
    update_smbfile_share([::AWSConfig]; FileShareARN=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "UpdateSMBFileShare", arguments::Dict)
    storagegateway([::AWSConfig], "UpdateSMBFileShare", FileShareARN=, <keyword arguments>)

# UpdateSMBFileShare Operation

Updates a Server Message Block (SMB) file share.

**Note**
> To leave a file share field unchanged, set the corresponding input field to null. This operation is only supported for file gateways.

**Important**
> File gateways require AWS Security Token Service (AWS STS) to be activated to enable you to create a file share. Make sure that AWS STS is activated in the AWS Region you are creating your file gateway in. If AWS STS is not activated in this AWS Region, activate it. For information about how to activate AWS STS, see [Activating and Deactivating AWS STS in an AWS Region](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html) in the *AWS Identity and Access Management User Guide.*

File gateways don't support creating hard or symbolic links on a file share.

# Arguments

## `FileShareARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the SMB file share that you want to update.


## `KMSEncrypted = ::Bool`
True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.


## `KMSKey = ::String`
The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.


## `DefaultStorageClass = ::String`
The default storage class for objects put into an Amazon S3 bucket by the file gateway. Possible values are `S3_STANDARD`, `S3_STANDARD_IA`, or `S3_ONEZONE_IA`. If this field is not populated, the default value `S3_STANDARD` is used. Optional.


## `ObjectACL = "private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control" or "aws-exec-read"`
A value that sets the access control list permission for objects in the S3 bucket that a file gateway puts objects into. The default value is "private".


## `ReadOnly = ::Bool`
A value that sets the write status of a file share. This value is true if the write status is read-only, and otherwise false.


## `GuessMIMETypeEnabled = ::Bool`
A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to true to enable MIME type guessing, and otherwise to false. The default value is true.


## `RequesterPays = ::Bool`
A value that sets the access control list permission for objects in the Amazon S3 bucket that a file gateway puts objects into. The default value is `private`.


## `ValidUserList = [::String, ...]`
A list of users or groups in the Active Directory that are allowed to access the file share. A group must be prefixed with the @ character. For example `@group1`. Can only be set if Authentication is set to `ActiveDirectory`.


## `InvalidUserList = [::String, ...]`
A list of users or groups in the Active Directory that are not allowed to access the file share. A group must be prefixed with the @ character. For example `@group1`. Can only be set if Authentication is set to `ActiveDirectory`.




# Returns

`UpdateSMBFileShareOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSMBFileShare)
"""
@inline update_smbfile_share(aws::AWSConfig=default_aws_config(); args...) = update_smbfile_share(aws, args)

@inline update_smbfile_share(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "UpdateSMBFileShare", args)

@inline update_smbfile_share(args) = update_smbfile_share(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.update_snapshot_schedule
    update_snapshot_schedule([::AWSConfig], arguments::Dict)
    update_snapshot_schedule([::AWSConfig]; VolumeARN=, StartAt=, RecurrenceInHours=, <keyword arguments>)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "UpdateSnapshotSchedule", arguments::Dict)
    storagegateway([::AWSConfig], "UpdateSnapshotSchedule", VolumeARN=, StartAt=, RecurrenceInHours=, <keyword arguments>)

# UpdateSnapshotSchedule Operation

Updates a snapshot schedule configured for a gateway volume. This operation is only supported in the cached volume and stored volume gateway types.

The default snapshot schedule for volume is once every 24 hours, starting at the creation time of the volume. You can use this API to change the snapshot schedule configured for the volume.

In the request you must identify the gateway volume whose snapshot schedule you want to update, and the schedule information, including when you want the snapshot to begin on a day and the frequency (in hours) of snapshots.

# Arguments

## `VolumeARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the volume. Use the [ListVolumes](@ref) operation to return a list of gateway volumes.


## `StartAt = ::Int` -- *Required*
The hour of the day at which the snapshot schedule begins represented as *hh*, where *hh* is the hour (0 to 23). The hour of the day is in the time zone of the gateway.


## `RecurrenceInHours = ::Int` -- *Required*
Frequency of snapshots. Specify the number of hours between snapshots.


## `Description = ::String`
Optional description of the snapshot that overwrites the existing description.




# Returns

`UpdateSnapshotScheduleOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To update a volume snapshot schedule

Updates a snapshot schedule configured for a gateway volume.

Input:
```
[
    "Description" => "Hourly snapshot",
    "RecurrenceInHours" => 1,
    "StartAt" => 0,
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
]
```

Output:
```
Dict(
    "VolumeARN" => "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSnapshotSchedule)
"""
@inline update_snapshot_schedule(aws::AWSConfig=default_aws_config(); args...) = update_snapshot_schedule(aws, args)

@inline update_snapshot_schedule(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "UpdateSnapshotSchedule", args)

@inline update_snapshot_schedule(args) = update_snapshot_schedule(default_aws_config(), args)


"""
    using AWSSDK.StorageGateway.update_vtldevice_type
    update_vtldevice_type([::AWSConfig], arguments::Dict)
    update_vtldevice_type([::AWSConfig]; VTLDeviceARN=, DeviceType=)

    using AWSCore.Services.storagegateway
    storagegateway([::AWSConfig], "UpdateVTLDeviceType", arguments::Dict)
    storagegateway([::AWSConfig], "UpdateVTLDeviceType", VTLDeviceARN=, DeviceType=)

# UpdateVTLDeviceType Operation

Updates the type of medium changer in a tape gateway. When you activate a tape gateway, you select a medium changer type for the tape gateway. This operation enables you to select a different type of medium changer after a tape gateway is activated. This operation is only supported in the tape gateway type.

# Arguments

## `VTLDeviceARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the medium changer you want to select.


## `DeviceType = ::String` -- *Required*
The type of medium changer you want to select.

Valid Values: "STK-L700", "AWS-Gateway-VTL"




# Returns

`UpdateVTLDeviceTypeOutput`

# Exceptions

`InvalidGatewayRequestException` or `InternalServerError`.

# Example: To update a VTL device type

Updates the type of medium changer in a gateway-VTL after a gateway-VTL is activated.

Input:
```
[
    "DeviceType" => "Medium Changer",
    "VTLDeviceARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_MEDIACHANGER_00001"
]
```

Output:
```
Dict(
    "VTLDeviceARN" => "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_MEDIACHANGER_00001"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateVTLDeviceType)
"""
@inline update_vtldevice_type(aws::AWSConfig=default_aws_config(); args...) = update_vtldevice_type(aws, args)

@inline update_vtldevice_type(aws::AWSConfig, args) = AWSCore.Services.storagegateway(aws, "UpdateVTLDeviceType", args)

@inline update_vtldevice_type(args) = update_vtldevice_type(default_aws_config(), args)




end # module StorageGateway


#==============================================================================#
# End of file
#==============================================================================#
