#==============================================================================#
# EFS.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/elasticfilesystem-2015-02-01.normal.json
#==============================================================================#

__precompile__()

module EFS

using AWSCore


"""
    using AWSSDK.EFS.create_file_system
    create_file_system([::AWSConfig], arguments::Dict)
    create_file_system([::AWSConfig]; CreationToken=, <keyword arguments>)

    using AWSCore.Services.elasticfilesystem
    elasticfilesystem([::AWSConfig], "POST", "/2015-02-01/file-systems", arguments::Dict)
    elasticfilesystem([::AWSConfig], "POST", "/2015-02-01/file-systems", CreationToken=, <keyword arguments>)

# CreateFileSystem Operation

Creates a new, empty file system. The operation requires a creation token in the request that Amazon EFS uses to ensure idempotent creation (calling the operation with same creation token has no effect). If a file system does not currently exist that is owned by the caller's AWS account with the specified creation token, this operation does the following:

*   Creates a new, empty file system. The file system will have an Amazon EFS assigned ID, and an initial lifecycle state `creating`.

*   Returns with the description of the created file system.

Otherwise, this operation returns a `FileSystemAlreadyExists` error with the ID of the existing file system.

**Note**
> For basic use cases, you can use a randomly generated UUID for the creation token.

The idempotent operation allows you to retry a `CreateFileSystem` call without risk of creating an extra file system. This can happen when an initial call fails in a way that leaves it uncertain whether or not a file system was actually created. An example might be that a transport level timeout occurred or your connection was reset. As long as you use the same creation token, if the initial call had succeeded in creating a file system, the client can learn of its existence from the `FileSystemAlreadyExists` error.

**Note**
> The `CreateFileSystem` call returns while the file system's lifecycle state is still `creating`. You can check the file system creation status by calling the [DescribeFileSystems](@ref) operation, which among other things returns the file system state.

This operation also takes an optional `PerformanceMode` parameter that you choose for your file system. We recommend `generalPurpose` performance mode for most file systems. File systems using the `maxIO` performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. The performance mode can't be changed after the file system has been created. For more information, see [Amazon EFS: Performance Modes](http://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html).

After the file system is fully created, Amazon EFS sets its lifecycle state to `available`, at which point you can create one or more mount targets for the file system in your VPC. For more information, see [CreateMountTarget](@ref). You mount your Amazon EFS file system on an EC2 instances in your VPC via the mount target. For more information, see [Amazon EFS: How it Works](http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

This operation requires permissions for the `elasticfilesystem:CreateFileSystem` action.

# Arguments

## `CreationToken = ::String` -- *Required*
String of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent creation.


## `PerformanceMode = "generalPurpose" or "maxIO"`
The `PerformanceMode` of the file system. We recommend `generalPurpose` performance mode for most file systems. File systems using the `maxIO` performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. This can't be changed after the file system has been created.


## `Encrypted = ::Bool`
A Boolean value that, if true, creates an encrypted file system. When creating an encrypted file system, you have the option of specifying a [CreateFileSystemRequest\$KmsKeyId](@ref) for an existing AWS Key Management Service (AWS KMS) customer master key (CMK). If you don't specify a CMK, then the default CMK for Amazon EFS, `/aws/elasticfilesystem`, is used to protect the encrypted file system.


## `KmsKeyId = ::String`
The ID of the AWS KMS CMK to be used to protect the encrypted file system. This parameter is only required if you want to use a non-default CMK. If this parameter is not specified, the default CMK for Amazon EFS is used. This ID can be in one of the following formats:

*   Key ID - A unique identifier of the key, for example, `1234abcd-12ab-34cd-56ef-1234567890ab`.

*   ARN - An Amazon Resource Name (ARN) for the key, for example, `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.

*   Key alias - A previously created display name for a key. For example, `alias/projectKey1`.

*   Key alias ARN - An ARN for a key alias, for example, `arn:aws:kms:us-west-2:444455556666:alias/projectKey1`.

If KmsKeyId is specified, the [CreateFileSystemRequest\$Encrypted](@ref) parameter must be set to true.


## `ThroughputMode = "bursting" or "provisioned"`
The throughput mode for the file system to be created. There are two throughput modes to choose from for your file system: bursting and provisioned. You can decrease your file system's throughput in Provisioned Throughput mode or change between the throughput modes as long as it’s been more than 24 hours since the last decrease or throughput mode change.


## `ProvisionedThroughputInMibps = double`
The throughput, measured in MiB/s, that you want to provision for a file system that you're creating. The limit on throughput is 1024 MiB/s. You can get these limits increased by contacting AWS Support. For more information, see [Amazon EFS Limits That You Can Increase](http://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits) in the *Amazon EFS User Guide.*




# Returns

`FileSystemDescription`

# Exceptions

`BadRequest`, `InternalServerError`, `FileSystemAlreadyExists`, `FileSystemLimitExceeded`, `InsufficientThroughputCapacity` or `ThroughputLimitExceeded`.

# Example: To create a new file system

This operation creates a new file system with the default generalpurpose performance mode.

Input:
```
[
    "CreationToken" => "tokenstring",
    "PerformanceMode" => "generalPurpose"
]
```

Output:
```
Dict(
    "CreationTime" => "1481841524.0",
    "CreationToken" => "tokenstring",
    "FileSystemId" => "fs-01234567",
    "LifeCycleState" => "creating",
    "NumberOfMountTargets" => 0,
    "OwnerId" => "012345678912",
    "PerformanceMode" => "generalPurpose",
    "SizeInBytes" => Dict(
        "Value" => 0
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateFileSystem)
"""
@inline create_file_system(aws::AWSConfig=default_aws_config(); args...) = create_file_system(aws, args)

@inline create_file_system(aws::AWSConfig, args) = AWSCore.Services.elasticfilesystem(aws, "POST", "/2015-02-01/file-systems", args)

@inline create_file_system(args) = create_file_system(default_aws_config(), args)


"""
    using AWSSDK.EFS.create_mount_target
    create_mount_target([::AWSConfig], arguments::Dict)
    create_mount_target([::AWSConfig]; FileSystemId=, SubnetId=, <keyword arguments>)

    using AWSCore.Services.elasticfilesystem
    elasticfilesystem([::AWSConfig], "POST", "/2015-02-01/mount-targets", arguments::Dict)
    elasticfilesystem([::AWSConfig], "POST", "/2015-02-01/mount-targets", FileSystemId=, SubnetId=, <keyword arguments>)

# CreateMountTarget Operation

Creates a mount target for a file system. You can then mount the file system on EC2 instances via the mount target.

You can create one mount target in each Availability Zone in your VPC. All EC2 instances in a VPC within a given Availability Zone share a single mount target for a given file system. If you have multiple subnets in an Availability Zone, you create a mount target in one of the subnets. EC2 instances do not need to be in the same subnet as the mount target in order to access their file system. For more information, see [Amazon EFS: How it Works](http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

In the request, you also specify a file system ID for which you are creating the mount target and the file system's lifecycle state must be `available`. For more information, see [DescribeFileSystems](@ref).

In the request, you also provide a subnet ID, which determines the following:

*   VPC in which Amazon EFS creates the mount target

*   Availability Zone in which Amazon EFS creates the mount target

*   IP address range from which Amazon EFS selects the IP address of the mount target (if you don't specify an IP address in the request)

After creating the mount target, Amazon EFS returns a response that includes, a `MountTargetId` and an `IpAddress`. You use this IP address when mounting the file system in an EC2 instance. You can also use the mount target's DNS name when mounting the file system. The EC2 instance on which you mount the file system via the mount target can resolve the mount target's DNS name to its IP address. For more information, see [How it Works: Implementation Overview](http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation).

Note that you can create mount targets for a file system in only one VPC, and there can be only one mount target per Availability Zone. That is, if the file system already has one or more mount targets created for it, the subnet specified in the request to add another mount target must meet the following requirements:

*   Must belong to the same VPC as the subnets of the existing mount targets

*   Must not be in the same Availability Zone as any of the subnets of the existing mount targets

If the request satisfies the requirements, Amazon EFS does the following:

*   Creates a new mount target in the specified subnet.

*   Also creates a new network interface in the subnet as follows:

    *   If the request provides an `IpAddress`, Amazon EFS assigns that IP address to the network interface. Otherwise, Amazon EFS assigns a free address in the subnet (in the same way that the Amazon EC2 `CreateNetworkInterface` call does when a request does not specify a primary private IP address).

    *   If the request provides `SecurityGroups`, this network interface is associated with those security groups. Otherwise, it belongs to the default security group for the subnet's VPC.

    *   Assigns the description `Mount target *fsmt-id* for file system *fs-id*` where `*fsmt-id*` is the mount target ID, and `*fs-id*` is the `FileSystemId`.

    *   Sets the `requesterManaged` property of the network interface to `true`, and the `requesterId` value to `EFS`.

    Each Amazon EFS mount target has one corresponding requester-managed EC2 network interface. After the network interface is created, Amazon EFS sets the `NetworkInterfaceId` field in the mount target's description to the network interface ID, and the `IpAddress` field to its address. If network interface creation fails, the entire `CreateMountTarget` operation fails.

**Note**
> The `CreateMountTarget` call returns only after creating the network interface, but while the mount target state is still `creating`, you can check the mount target creation status by calling the [DescribeMountTargets](@ref) operation, which among other things returns the mount target state.

We recommend you create a mount target in each of the Availability Zones. There are cost considerations for using a file system in an Availability Zone through a mount target created in another Availability Zone. For more information, see [Amazon EFS](http://aws.amazon.com/efs/). In addition, by always using a mount target local to the instance's Availability Zone, you eliminate a partial failure scenario. If the Availability Zone in which your mount target is created goes down, then you won't be able to access your file system through that mount target.

This operation requires permissions for the following action on the file system:

*   `elasticfilesystem:CreateMountTarget`

This operation also requires permissions for the following Amazon EC2 actions:

*   `ec2:DescribeSubnets`

*   `ec2:DescribeNetworkInterfaces`

*   `ec2:CreateNetworkInterface`

# Arguments

## `FileSystemId = ::String` -- *Required*
ID of the file system for which to create the mount target.


## `SubnetId = ::String` -- *Required*
ID of the subnet to add the mount target in.


## `IpAddress = ::String`
Valid IPv4 address within the address range of the specified subnet.


## `SecurityGroups = [::String, ...]`
Up to five VPC security group IDs, of the form `sg-xxxxxxxx`. These must be for the same VPC as subnet specified.




# Returns

`MountTargetDescription`

# Exceptions

`BadRequest`, `InternalServerError`, `FileSystemNotFound`, `IncorrectFileSystemLifeCycleState`, `MountTargetConflict`, `SubnetNotFound`, `NoFreeAddressesInSubnet`, `IpAddressInUse`, `NetworkInterfaceLimitExceeded`, `SecurityGroupLimitExceeded`, `SecurityGroupNotFound` or `UnsupportedAvailabilityZone`.

# Example: To create a new mount target

This operation creates a new mount target for an EFS file system.

Input:
```
[
    "FileSystemId" => "fs-01234567",
    "SubnetId" => "subnet-1234abcd"
]
```

Output:
```
Dict(
    "FileSystemId" => "fs-01234567",
    "IpAddress" => "192.0.0.2",
    "LifeCycleState" => "creating",
    "MountTargetId" => "fsmt-12340abc",
    "NetworkInterfaceId" => "eni-cedf6789",
    "OwnerId" => "012345678912",
    "SubnetId" => "subnet-1234abcd"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateMountTarget)
"""
@inline create_mount_target(aws::AWSConfig=default_aws_config(); args...) = create_mount_target(aws, args)

@inline create_mount_target(aws::AWSConfig, args) = AWSCore.Services.elasticfilesystem(aws, "POST", "/2015-02-01/mount-targets", args)

@inline create_mount_target(args) = create_mount_target(default_aws_config(), args)


"""
    using AWSSDK.EFS.create_tags
    create_tags([::AWSConfig], arguments::Dict)
    create_tags([::AWSConfig]; FileSystemId=, Tags=)

    using AWSCore.Services.elasticfilesystem
    elasticfilesystem([::AWSConfig], "POST", "/2015-02-01/create-tags/{FileSystemId}", arguments::Dict)
    elasticfilesystem([::AWSConfig], "POST", "/2015-02-01/create-tags/{FileSystemId}", FileSystemId=, Tags=)

# CreateTags Operation

Creates or overwrites tags associated with a file system. Each tag is a key-value pair. If a tag key specified in the request already exists on the file system, this operation overwrites its value with the value provided in the request. If you add the `Name` tag to your file system, Amazon EFS returns it in the response to the [DescribeFileSystems](@ref) operation.

This operation requires permission for the `elasticfilesystem:CreateTags` action.

# Arguments

## `FileSystemId = ::String` -- *Required*
ID of the file system whose tags you want to modify (String). This operation modifies the tags only, not the file system.


## `Tags = [[ ... ], ...]` -- *Required*
Array of `Tag` objects to add. Each `Tag` object is a key-value pair.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Exceptions

`BadRequest`, `InternalServerError` or `FileSystemNotFound`.

# Example: To create a new tag

This operation creates a new tag for an EFS file system.

Input:
```
[
    "FileSystemId" => "fs-01234567",
    "Tags" => [
        [
            "Key" => "Name",
            "Value" => "MyFileSystem"
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateTags)
"""
@inline create_tags(aws::AWSConfig=default_aws_config(); args...) = create_tags(aws, args)

@inline create_tags(aws::AWSConfig, args) = AWSCore.Services.elasticfilesystem(aws, "POST", "/2015-02-01/create-tags/{FileSystemId}", args)

@inline create_tags(args) = create_tags(default_aws_config(), args)


"""
    using AWSSDK.EFS.delete_file_system
    delete_file_system([::AWSConfig], arguments::Dict)
    delete_file_system([::AWSConfig]; FileSystemId=)

    using AWSCore.Services.elasticfilesystem
    elasticfilesystem([::AWSConfig], "DELETE", "/2015-02-01/file-systems/{FileSystemId}", arguments::Dict)
    elasticfilesystem([::AWSConfig], "DELETE", "/2015-02-01/file-systems/{FileSystemId}", FileSystemId=)

# DeleteFileSystem Operation

Deletes a file system, permanently severing access to its contents. Upon return, the file system no longer exists and you can't access any contents of the deleted file system.

You can't delete a file system that is in use. That is, if the file system has any mount targets, you must first delete them. For more information, see [DescribeMountTargets](@ref) and [DeleteMountTarget](@ref).

**Note**
> The `DeleteFileSystem` call returns while the file system state is still `deleting`. You can check the file system deletion status by calling the [DescribeFileSystems](@ref) operation, which returns a list of file systems in your account. If you pass file system ID or creation token for the deleted file system, the [DescribeFileSystems](@ref) returns a `404 FileSystemNotFound` error.

This operation requires permissions for the `elasticfilesystem:DeleteFileSystem` action.

# Arguments

## `FileSystemId = ::String` -- *Required*
ID of the file system you want to delete.




# Exceptions

`BadRequest`, `InternalServerError`, `FileSystemNotFound` or `FileSystemInUse`.

# Example: To delete a file system

This operation deletes an EFS file system.

Input:
```
[
    "FileSystemId" => "fs-01234567"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteFileSystem)
"""
@inline delete_file_system(aws::AWSConfig=default_aws_config(); args...) = delete_file_system(aws, args)

@inline delete_file_system(aws::AWSConfig, args) = AWSCore.Services.elasticfilesystem(aws, "DELETE", "/2015-02-01/file-systems/{FileSystemId}", args)

@inline delete_file_system(args) = delete_file_system(default_aws_config(), args)


"""
    using AWSSDK.EFS.delete_mount_target
    delete_mount_target([::AWSConfig], arguments::Dict)
    delete_mount_target([::AWSConfig]; MountTargetId=)

    using AWSCore.Services.elasticfilesystem
    elasticfilesystem([::AWSConfig], "DELETE", "/2015-02-01/mount-targets/{MountTargetId}", arguments::Dict)
    elasticfilesystem([::AWSConfig], "DELETE", "/2015-02-01/mount-targets/{MountTargetId}", MountTargetId=)

# DeleteMountTarget Operation

Deletes the specified mount target.

This operation forcibly breaks any mounts of the file system via the mount target that is being deleted, which might disrupt instances or applications using those mounts. To avoid applications getting cut off abruptly, you might consider unmounting any mounts of the mount target, if feasible. The operation also deletes the associated network interface. Uncommitted writes may be lost, but breaking a mount target using this operation does not corrupt the file system itself. The file system you created remains. You can mount an EC2 instance in your VPC via another mount target.

This operation requires permissions for the following action on the file system:

*   `elasticfilesystem:DeleteMountTarget`

**Note**
> The `DeleteMountTarget` call returns while the mount target state is still `deleting`. You can check the mount target deletion by calling the [DescribeMountTargets](@ref) operation, which returns a list of mount target descriptions for the given file system.

The operation also requires permissions for the following Amazon EC2 action on the mount target's network interface:

*   `ec2:DeleteNetworkInterface`

# Arguments

## `MountTargetId = ::String` -- *Required*
ID of the mount target to delete (String).




# Exceptions

`BadRequest`, `InternalServerError`, `DependencyTimeout` or `MountTargetNotFound`.

# Example: To delete a mount target

This operation deletes a mount target.

Input:
```
[
    "MountTargetId" => "fsmt-12340abc"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteMountTarget)
"""
@inline delete_mount_target(aws::AWSConfig=default_aws_config(); args...) = delete_mount_target(aws, args)

@inline delete_mount_target(aws::AWSConfig, args) = AWSCore.Services.elasticfilesystem(aws, "DELETE", "/2015-02-01/mount-targets/{MountTargetId}", args)

@inline delete_mount_target(args) = delete_mount_target(default_aws_config(), args)


"""
    using AWSSDK.EFS.delete_tags
    delete_tags([::AWSConfig], arguments::Dict)
    delete_tags([::AWSConfig]; FileSystemId=, TagKeys=)

    using AWSCore.Services.elasticfilesystem
    elasticfilesystem([::AWSConfig], "POST", "/2015-02-01/delete-tags/{FileSystemId}", arguments::Dict)
    elasticfilesystem([::AWSConfig], "POST", "/2015-02-01/delete-tags/{FileSystemId}", FileSystemId=, TagKeys=)

# DeleteTags Operation

Deletes the specified tags from a file system. If the `DeleteTags` request includes a tag key that does not exist, Amazon EFS ignores it and doesn't cause an error. For more information about tags and related restrictions, see [Tag Restrictions](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html) in the *AWS Billing and Cost Management User Guide*.

This operation requires permissions for the `elasticfilesystem:DeleteTags` action.

# Arguments

## `FileSystemId = ::String` -- *Required*
ID of the file system whose tags you want to delete (String).


## `TagKeys = [::String, ...]` -- *Required*
List of tag keys to delete.




# Exceptions

`BadRequest`, `InternalServerError` or `FileSystemNotFound`.

# Example: To delete tags for an EFS file system

This operation deletes tags for an EFS file system.

Input:
```
[
    "FileSystemId" => "fs-01234567",
    "TagKeys" => [
        "Name"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteTags)
"""
@inline delete_tags(aws::AWSConfig=default_aws_config(); args...) = delete_tags(aws, args)

@inline delete_tags(aws::AWSConfig, args) = AWSCore.Services.elasticfilesystem(aws, "POST", "/2015-02-01/delete-tags/{FileSystemId}", args)

@inline delete_tags(args) = delete_tags(default_aws_config(), args)


"""
    using AWSSDK.EFS.describe_file_systems
    describe_file_systems([::AWSConfig], arguments::Dict)
    describe_file_systems([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticfilesystem
    elasticfilesystem([::AWSConfig], "GET", "/2015-02-01/file-systems", arguments::Dict)
    elasticfilesystem([::AWSConfig], "GET", "/2015-02-01/file-systems", <keyword arguments>)

# DescribeFileSystems Operation

Returns the description of a specific Amazon EFS file system if either the file system `CreationToken` or the `FileSystemId` is provided. Otherwise, it returns descriptions of all file systems owned by the caller's AWS account in the AWS Region of the endpoint that you're calling.

When retrieving all file system descriptions, you can optionally specify the `MaxItems` parameter to limit the number of descriptions in a response. If more file system descriptions remain, Amazon EFS returns a `NextMarker`, an opaque token, in the response. In this case, you should send a subsequent request with the `Marker` request parameter set to the value of `NextMarker`.

To retrieve a list of your file system descriptions, this operation is used in an iterative process, where `DescribeFileSystems` is called first without the `Marker` and then the operation continues to call it with the `Marker` parameter set to the value of the `NextMarker` from the previous response until the response has no `NextMarker`.

The implementation may return fewer than `MaxItems` file system descriptions while still including a `NextMarker` value.

The order of file systems returned in the response of one `DescribeFileSystems` call and the order of file systems returned across the responses of a multi-call iteration is unspecified.

This operation requires permissions for the `elasticfilesystem:DescribeFileSystems` action.

# Arguments

## `MaxItems = ::Int`
(Optional) Specifies the maximum number of file systems to return in the response (integer). This parameter value must be greater than 0. The number of items that Amazon EFS returns is the minimum of the `MaxItems` parameter specified in the request and the service's internal maximum number of items per page.


## `Marker = ::String`
(Optional) Opaque pagination token returned from a previous `DescribeFileSystems` operation (String). If present, specifies to continue the list from where the returning call had left off.


## `CreationToken = ::String`
(Optional) Restricts the list to the file system with this creation token (String). You specify a creation token when you create an Amazon EFS file system.


## `FileSystemId = ::String`
(Optional) ID of the file system whose description you want to retrieve (String).




# Returns

`DescribeFileSystemsResponse`

# Exceptions

`BadRequest`, `InternalServerError` or `FileSystemNotFound`.

# Example: To describe an EFS file system

This operation describes all of the EFS file systems in an account.

Input:
```
[

]
```

Output:
```
Dict(
    "FileSystems" => [
        Dict(
            "CreationTime" => "1481841524.0",
            "CreationToken" => "tokenstring",
            "FileSystemId" => "fs-01234567",
            "LifeCycleState" => "available",
            "Name" => "MyFileSystem",
            "NumberOfMountTargets" => 1,
            "OwnerId" => "012345678912",
            "PerformanceMode" => "generalPurpose",
            "SizeInBytes" => Dict(
                "Value" => 6144
            )
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeFileSystems)
"""
@inline describe_file_systems(aws::AWSConfig=default_aws_config(); args...) = describe_file_systems(aws, args)

@inline describe_file_systems(aws::AWSConfig, args) = AWSCore.Services.elasticfilesystem(aws, "GET", "/2015-02-01/file-systems", args)

@inline describe_file_systems(args) = describe_file_systems(default_aws_config(), args)


"""
    using AWSSDK.EFS.describe_mount_target_security_groups
    describe_mount_target_security_groups([::AWSConfig], arguments::Dict)
    describe_mount_target_security_groups([::AWSConfig]; MountTargetId=)

    using AWSCore.Services.elasticfilesystem
    elasticfilesystem([::AWSConfig], "GET", "/2015-02-01/mount-targets/{MountTargetId}/security-groups", arguments::Dict)
    elasticfilesystem([::AWSConfig], "GET", "/2015-02-01/mount-targets/{MountTargetId}/security-groups", MountTargetId=)

# DescribeMountTargetSecurityGroups Operation

Returns the security groups currently in effect for a mount target. This operation requires that the network interface of the mount target has been created and the lifecycle state of the mount target is not `deleted`.

This operation requires permissions for the following actions:

*   `elasticfilesystem:DescribeMountTargetSecurityGroups` action on the mount target's file system.

*   `ec2:DescribeNetworkInterfaceAttribute` action on the mount target's network interface.

# Arguments

## `MountTargetId = ::String` -- *Required*
ID of the mount target whose security groups you want to retrieve.




# Returns

`DescribeMountTargetSecurityGroupsResponse`

# Exceptions

`BadRequest`, `InternalServerError`, `MountTargetNotFound` or `IncorrectMountTargetState`.

# Example: To describe the security groups for a mount target

This operation describes all of the security groups for a file system's mount target.

Input:
```
[
    "MountTargetId" => "fsmt-12340abc"
]
```

Output:
```
Dict(
    "SecurityGroups" => [
        "sg-fghi4567"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeMountTargetSecurityGroups)
"""
@inline describe_mount_target_security_groups(aws::AWSConfig=default_aws_config(); args...) = describe_mount_target_security_groups(aws, args)

@inline describe_mount_target_security_groups(aws::AWSConfig, args) = AWSCore.Services.elasticfilesystem(aws, "GET", "/2015-02-01/mount-targets/{MountTargetId}/security-groups", args)

@inline describe_mount_target_security_groups(args) = describe_mount_target_security_groups(default_aws_config(), args)


"""
    using AWSSDK.EFS.describe_mount_targets
    describe_mount_targets([::AWSConfig], arguments::Dict)
    describe_mount_targets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticfilesystem
    elasticfilesystem([::AWSConfig], "GET", "/2015-02-01/mount-targets", arguments::Dict)
    elasticfilesystem([::AWSConfig], "GET", "/2015-02-01/mount-targets", <keyword arguments>)

# DescribeMountTargets Operation

Returns the descriptions of all the current mount targets, or a specific mount target, for a file system. When requesting all of the current mount targets, the order of mount targets returned in the response is unspecified.

This operation requires permissions for the `elasticfilesystem:DescribeMountTargets` action, on either the file system ID that you specify in `FileSystemId`, or on the file system of the mount target that you specify in `MountTargetId`.

# Arguments

## `MaxItems = ::Int`
(Optional) Maximum number of mount targets to return in the response. It must be an integer with a value greater than zero.


## `Marker = ::String`
(Optional) Opaque pagination token returned from a previous `DescribeMountTargets` operation (String). If present, it specifies to continue the list from where the previous returning call left off.


## `FileSystemId = ::String`
(Optional) ID of the file system whose mount targets you want to list (String). It must be included in your request if `MountTargetId` is not included.


## `MountTargetId = ::String`
(Optional) ID of the mount target that you want to have described (String). It must be included in your request if `FileSystemId` is not included.




# Returns

`DescribeMountTargetsResponse`

# Exceptions

`BadRequest`, `InternalServerError`, `FileSystemNotFound` or `MountTargetNotFound`.

# Example: To describe the mount targets for a file system

This operation describes all of a file system's mount targets.

Input:
```
[
    "FileSystemId" => "fs-01234567"
]
```

Output:
```
Dict(
    "MountTargets" => [
        Dict(
            "FileSystemId" => "fs-01234567",
            "IpAddress" => "192.0.0.2",
            "LifeCycleState" => "available",
            "MountTargetId" => "fsmt-12340abc",
            "NetworkInterfaceId" => "eni-cedf6789",
            "OwnerId" => "012345678912",
            "SubnetId" => "subnet-1234abcd"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeMountTargets)
"""
@inline describe_mount_targets(aws::AWSConfig=default_aws_config(); args...) = describe_mount_targets(aws, args)

@inline describe_mount_targets(aws::AWSConfig, args) = AWSCore.Services.elasticfilesystem(aws, "GET", "/2015-02-01/mount-targets", args)

@inline describe_mount_targets(args) = describe_mount_targets(default_aws_config(), args)


"""
    using AWSSDK.EFS.describe_tags
    describe_tags([::AWSConfig], arguments::Dict)
    describe_tags([::AWSConfig]; FileSystemId=, <keyword arguments>)

    using AWSCore.Services.elasticfilesystem
    elasticfilesystem([::AWSConfig], "GET", "/2015-02-01/tags/{FileSystemId}/", arguments::Dict)
    elasticfilesystem([::AWSConfig], "GET", "/2015-02-01/tags/{FileSystemId}/", FileSystemId=, <keyword arguments>)

# DescribeTags Operation

Returns the tags associated with a file system. The order of tags returned in the response of one `DescribeTags` call and the order of tags returned across the responses of a multi-call iteration (when using pagination) is unspecified.

This operation requires permissions for the `elasticfilesystem:DescribeTags` action.

# Arguments

## `MaxItems = ::Int`
(Optional) Maximum number of file system tags to return in the response. It must be an integer with a value greater than zero.


## `Marker = ::String`
(Optional) Opaque pagination token returned from a previous `DescribeTags` operation (String). If present, it specifies to continue the list from where the previous call left off.


## `FileSystemId = ::String` -- *Required*
ID of the file system whose tag set you want to retrieve.




# Returns

`DescribeTagsResponse`

# Exceptions

`BadRequest`, `InternalServerError` or `FileSystemNotFound`.

# Example: To describe the tags for a file system

This operation describes all of a file system's tags.

Input:
```
[
    "FileSystemId" => "fs-01234567"
]
```

Output:
```
Dict(
    "Tags" => [
        Dict(
            "Key" => "Name",
            "Value" => "MyFileSystem"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeTags)
"""
@inline describe_tags(aws::AWSConfig=default_aws_config(); args...) = describe_tags(aws, args)

@inline describe_tags(aws::AWSConfig, args) = AWSCore.Services.elasticfilesystem(aws, "GET", "/2015-02-01/tags/{FileSystemId}/", args)

@inline describe_tags(args) = describe_tags(default_aws_config(), args)


"""
    using AWSSDK.EFS.modify_mount_target_security_groups
    modify_mount_target_security_groups([::AWSConfig], arguments::Dict)
    modify_mount_target_security_groups([::AWSConfig]; MountTargetId=, <keyword arguments>)

    using AWSCore.Services.elasticfilesystem
    elasticfilesystem([::AWSConfig], "PUT", "/2015-02-01/mount-targets/{MountTargetId}/security-groups", arguments::Dict)
    elasticfilesystem([::AWSConfig], "PUT", "/2015-02-01/mount-targets/{MountTargetId}/security-groups", MountTargetId=, <keyword arguments>)

# ModifyMountTargetSecurityGroups Operation

Modifies the set of security groups in effect for a mount target.

When you create a mount target, Amazon EFS also creates a new network interface. For more information, see [CreateMountTarget](@ref). This operation replaces the security groups in effect for the network interface associated with a mount target, with the `SecurityGroups` provided in the request. This operation requires that the network interface of the mount target has been created and the lifecycle state of the mount target is not `deleted`.

The operation requires permissions for the following actions:

*   `elasticfilesystem:ModifyMountTargetSecurityGroups` action on the mount target's file system.

*   `ec2:ModifyNetworkInterfaceAttribute` action on the mount target's network interface.

# Arguments

## `MountTargetId = ::String` -- *Required*
ID of the mount target whose security groups you want to modify.


## `SecurityGroups = [::String, ...]`
Array of up to five VPC security group IDs.




# Exceptions

`BadRequest`, `InternalServerError`, `MountTargetNotFound`, `IncorrectMountTargetState`, `SecurityGroupLimitExceeded` or `SecurityGroupNotFound`.

# Example: To modify the security groups associated with a mount target for a file system

This operation modifies the security groups associated with a mount target for a file system.

Input:
```
[
    "MountTargetId" => "fsmt-12340abc",
    "SecurityGroups" => [
        "sg-abcd1234"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/ModifyMountTargetSecurityGroups)
"""
@inline modify_mount_target_security_groups(aws::AWSConfig=default_aws_config(); args...) = modify_mount_target_security_groups(aws, args)

@inline modify_mount_target_security_groups(aws::AWSConfig, args) = AWSCore.Services.elasticfilesystem(aws, "PUT", "/2015-02-01/mount-targets/{MountTargetId}/security-groups", args)

@inline modify_mount_target_security_groups(args) = modify_mount_target_security_groups(default_aws_config(), args)


"""
    using AWSSDK.EFS.update_file_system
    update_file_system([::AWSConfig], arguments::Dict)
    update_file_system([::AWSConfig]; FileSystemId=, <keyword arguments>)

    using AWSCore.Services.elasticfilesystem
    elasticfilesystem([::AWSConfig], "PUT", "/2015-02-01/file-systems/{FileSystemId}", arguments::Dict)
    elasticfilesystem([::AWSConfig], "PUT", "/2015-02-01/file-systems/{FileSystemId}", FileSystemId=, <keyword arguments>)

# UpdateFileSystem Operation

Updates the throughput mode or the amount of provisioned throughput of an existing file system.

# Arguments

## `FileSystemId = ::String` -- *Required*
The ID of the file system that you want to update.


## `ThroughputMode = "bursting" or "provisioned"`
(Optional) The throughput mode that you want your file system to use. If you're not updating your throughput mode, you don't need to provide this value in your request.


## `ProvisionedThroughputInMibps = double`
(Optional) The amount of throughput, in MiB/s, that you want to provision for your file system. If you're not updating the amount of provisioned throughput for your file system, you don't need to provide this value in your request.




# Returns

`FileSystemDescription`

# Exceptions

`BadRequest`, `FileSystemNotFound`, `IncorrectFileSystemLifeCycleState`, `InsufficientThroughputCapacity`, `InternalServerError`, `ThroughputLimitExceeded` or `TooManyRequests`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/UpdateFileSystem)
"""
@inline update_file_system(aws::AWSConfig=default_aws_config(); args...) = update_file_system(aws, args)

@inline update_file_system(aws::AWSConfig, args) = AWSCore.Services.elasticfilesystem(aws, "PUT", "/2015-02-01/file-systems/{FileSystemId}", args)

@inline update_file_system(args) = update_file_system(default_aws_config(), args)




end # module EFS


#==============================================================================#
# End of file
#==============================================================================#
