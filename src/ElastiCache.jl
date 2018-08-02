#==============================================================================#
# ElastiCache.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/elasticache-2015-02-02.normal.json
#==============================================================================#

__precompile__()

module ElastiCache

using AWSCore


"""
    using AWSSDK.ElastiCache.add_tags_to_resource
    add_tags_to_resource([::AWSConfig], arguments::Dict)
    add_tags_to_resource([::AWSConfig]; ResourceName=, Tags=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "AddTagsToResource", arguments::Dict)
    elasticache([::AWSConfig], "AddTagsToResource", ResourceName=, Tags=)

# AddTagsToResource Operation

Adds up to 50 cost allocation tags to the named resource. A cost allocation tag is a key-value pair where the key and value are case-sensitive. You can use cost allocation tags to categorize and track your AWS costs.

When you apply tags to your ElastiCache resources, AWS generates a cost allocation report as a comma-separated value (CSV) file with your usage and costs aggregated by your tags. You can apply tags that represent business categories (such as cost centers, application names, or owners) to organize your costs across multiple services. For more information, see [Using Cost Allocation Tags in Amazon ElastiCache](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Tagging.html) in the *ElastiCache User Guide*.

# Arguments

## `ResourceName = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource to which the tags are to be added, for example `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`. ElastiCache resources are *cluster* and *snapshot*.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


## `Tags = [[ ... ], ...]` -- *Required*
A list of cost allocation tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`TagListMessage`

# Exceptions

`CacheClusterNotFoundFault`, `SnapshotNotFoundFault`, `TagQuotaPerResourceExceeded` or `InvalidARNFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AddTagsToResource)
"""
@inline add_tags_to_resource(aws::AWSConfig=default_aws_config(); args...) = add_tags_to_resource(aws, args)

@inline add_tags_to_resource(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "AddTagsToResource", args)

@inline add_tags_to_resource(args) = add_tags_to_resource(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.authorize_cache_security_group_ingress
    authorize_cache_security_group_ingress([::AWSConfig], arguments::Dict)
    authorize_cache_security_group_ingress([::AWSConfig]; CacheSecurityGroupName=, EC2SecurityGroupName=, EC2SecurityGroupOwnerId=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "AuthorizeCacheSecurityGroupIngress", arguments::Dict)
    elasticache([::AWSConfig], "AuthorizeCacheSecurityGroupIngress", CacheSecurityGroupName=, EC2SecurityGroupName=, EC2SecurityGroupOwnerId=)

# AuthorizeCacheSecurityGroupIngress Operation

Allows network ingress to a cache security group. Applications using ElastiCache must be running on Amazon EC2, and Amazon EC2 security groups are used as the authorization mechanism.

**Note**
> You cannot authorize ingress from an Amazon EC2 security group in one region to an ElastiCache cluster in another region.

# Arguments

## `CacheSecurityGroupName = ::String` -- *Required*
The cache security group that allows network ingress.


## `EC2SecurityGroupName = ::String` -- *Required*
The Amazon EC2 security group to be authorized for ingress to the cache security group.


## `EC2SecurityGroupOwnerId = ::String` -- *Required*
The AWS account number of the Amazon EC2 security group owner. Note that this is not the same thing as an AWS access key ID - you must provide a valid AWS account number for this parameter.




# Returns

`AuthorizeCacheSecurityGroupIngressResult`

# Exceptions

`CacheSecurityGroupNotFoundFault`, `InvalidCacheSecurityGroupStateFault`, `AuthorizationAlreadyExistsFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AuthorizeCacheSecurityGroupIngress)
"""
@inline authorize_cache_security_group_ingress(aws::AWSConfig=default_aws_config(); args...) = authorize_cache_security_group_ingress(aws, args)

@inline authorize_cache_security_group_ingress(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "AuthorizeCacheSecurityGroupIngress", args)

@inline authorize_cache_security_group_ingress(args) = authorize_cache_security_group_ingress(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.copy_snapshot
    copy_snapshot([::AWSConfig], arguments::Dict)
    copy_snapshot([::AWSConfig]; SourceSnapshotName=, TargetSnapshotName=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "CopySnapshot", arguments::Dict)
    elasticache([::AWSConfig], "CopySnapshot", SourceSnapshotName=, TargetSnapshotName=, <keyword arguments>)

# CopySnapshot Operation

Makes a copy of an existing snapshot.

**Note**
> This operation is valid for Redis only.

**Important**
> Users or groups that have permissions to use the `CopySnapshot` operation can create their own Amazon S3 buckets and copy snapshots to it. To control access to your snapshots, use an IAM policy to control who has the ability to use the `CopySnapshot` operation. For more information about using IAM to control the use of ElastiCache operations, see [Exporting Snapshots](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html) and [Authentication & Access Control](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/IAM.html).

You could receive the following error messages.

**Error Messages**

*   **Error Message:** The S3 bucket %s is outside of the region.

    **Solution:** Create an Amazon S3 bucket in the same region as your snapshot. For more information, see [Step 1: Create an Amazon S3 Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket) in the ElastiCache User Guide.

*   **Error Message:** The S3 bucket %s does not exist.

    **Solution:** Create an Amazon S3 bucket in the same region as your snapshot. For more information, see [Step 1: Create an Amazon S3 Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket) in the ElastiCache User Guide.

*   **Error Message:** The S3 bucket %s is not owned by the authenticated user.

    **Solution:** Create an Amazon S3 bucket in the same region as your snapshot. For more information, see [Step 1: Create an Amazon S3 Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket) in the ElastiCache User Guide.

*   **Error Message:** The authenticated user does not have sufficient permissions to perform the desired activity.

    **Solution:** Contact your system administrator to get the needed permissions.

*   **Error Message:** The S3 bucket %s already contains an object with key %s.

    **Solution:** Give the `TargetSnapshotName` a new and unique value. If exporting a snapshot, you could alternatively create a new Amazon S3 bucket and use this same value for `TargetSnapshotName`.

*   **Error Message:** ElastiCache has not been granted READ permissions %s on the S3 Bucket.

    **Solution:** Add List and Read permissions on the bucket. For more information, see [Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess) in the ElastiCache User Guide.

*   **Error Message:** ElastiCache has not been granted WRITE permissions %s on the S3 Bucket.

    **Solution:** Add Upload/Delete permissions on the bucket. For more information, see [Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess) in the ElastiCache User Guide.

*   **Error Message:** ElastiCache has not been granted READ_ACP permissions %s on the S3 Bucket.

    **Solution:** Add View Permissions on the bucket. For more information, see [Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess) in the ElastiCache User Guide.

# Arguments

## `SourceSnapshotName = ::String` -- *Required*
The name of an existing snapshot from which to make a copy.


## `TargetSnapshotName = ::String` -- *Required*
A name for the snapshot copy. ElastiCache does not permit overwriting a snapshot, therefore this name must be unique within its context - ElastiCache or an Amazon S3 bucket if exporting.


## `TargetBucket = ::String`
The Amazon S3 bucket to which the snapshot is exported. This parameter is used only when exporting a snapshot for external access.

When using this parameter to export a snapshot, be sure Amazon ElastiCache has the needed permissions to this S3 bucket. For more information, see [Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess) in the *Amazon ElastiCache User Guide*.

For more information, see [Exporting a Snapshot](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html) in the *Amazon ElastiCache User Guide*.




# Returns

`CopySnapshotResult`

# Exceptions

`SnapshotAlreadyExistsFault`, `SnapshotNotFoundFault`, `SnapshotQuotaExceededFault`, `InvalidSnapshotStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CopySnapshot)
"""
@inline copy_snapshot(aws::AWSConfig=default_aws_config(); args...) = copy_snapshot(aws, args)

@inline copy_snapshot(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "CopySnapshot", args)

@inline copy_snapshot(args) = copy_snapshot(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.create_cache_cluster
    create_cache_cluster([::AWSConfig], arguments::Dict)
    create_cache_cluster([::AWSConfig]; CacheClusterId=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "CreateCacheCluster", arguments::Dict)
    elasticache([::AWSConfig], "CreateCacheCluster", CacheClusterId=, <keyword arguments>)

# CreateCacheCluster Operation

Creates a cluster. All nodes in the cluster run the same protocol-compliant cache engine software, either Memcached or Redis.

**Important**
> Due to current limitations on Redis (cluster mode disabled), this operation or parameter is not supported on Redis (cluster mode enabled) replication groups.

# Arguments

## `CacheClusterId = ::String` -- *Required*
The node group (shard) identifier. This parameter is stored as a lowercase string.

**Constraints:**

*   A name must contain from 1 to 20 alphanumeric characters or hyphens.

*   The first character must be a letter.

*   A name cannot end with a hyphen or contain two consecutive hyphens.


## `ReplicationGroupId = ::String`
 
**Important**
> Due to current limitations on Redis (cluster mode disabled), this operation or parameter is not supported on Redis (cluster mode enabled) replication groups.

The ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.

If the specified replication group is Multi-AZ enabled and the Availability Zone is not specified, the cluster is created in Availability Zones that provide the best spread of read replicas across Availability Zones.

**Note**
> This parameter is only valid if the `Engine` parameter is `redis`.


## `AZMode = "single-az" or "cross-az"`
Specifies whether the nodes in this Memcached cluster are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region.

This parameter is only supported for Memcached clusters.

If the `AZMode` and `PreferredAvailabilityZones` are not specified, ElastiCache assumes `single-az` mode.


## `PreferredAvailabilityZone = ::String`
The EC2 Availability Zone in which the cluster is created.

All nodes belonging to this Memcached cluster are placed in the preferred Availability Zone. If you want to create your nodes across multiple Availability Zones, use `PreferredAvailabilityZones`.

Default: System chosen Availability Zone.


## `PreferredAvailabilityZones = [::String, ...]`
A list of the Availability Zones in which cache nodes are created. The order of the zones in the list is not important.

This option is only supported on Memcached.

**Note**
> If you are creating your cluster in an Amazon VPC (recommended) you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group.

The number of Availability Zones listed must equal the value of `NumCacheNodes`.

If you want all the nodes in the same Availability Zone, use `PreferredAvailabilityZone` instead, or repeat the Availability Zone multiple times in the list.

Default: System chosen Availability Zones.


## `NumCacheNodes = ::Int`
The initial number of cache nodes that the cluster has.

For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.

If you need more than 20 nodes for your Memcached cluster, please fill out the ElastiCache Limit Increase Request form at [http://aws.amazon.com/contact-us/elasticache-node-limit-request/](http://aws.amazon.com/contact-us/elasticache-node-limit-request/).


## `CacheNodeType = ::String`
The compute and memory capacity of the nodes in the node group (shard).

The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.

*   General purpose:

    *   Current generation:

        **T2 node types:** `cache.t2.micro`, `cache.t2.small`, `cache.t2.medium`

        **M3 node types:** `cache.m3.medium`, `cache.m3.large`, `cache.m3.xlarge`, `cache.m3.2xlarge`

        **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`, `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`

    *   Previous generation: (not recommended)

        **T1 node types:** `cache.t1.micro`

        **M1 node types:** `cache.m1.small`, `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`

*   Compute optimized:

    *   Previous generation: (not recommended)

        **C1 node types:** `cache.c1.xlarge`

*   Memory optimized:

    *   Current generation:

        **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`, `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`

    *   Previous generation: (not recommended)

        **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`, `cache.m2.4xlarge`

**Notes:**

*   All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).

*   Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances.

*   Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.

*   Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.

For a complete listing of node types and specifications, see [Amazon ElastiCache Product Features and Details](http://aws.amazon.com/elasticache/details) and either [Cache Node Type-Specific Parameters for Memcached](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific) or [Cache Node Type-Specific Parameters for Redis](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific).


## `Engine = ::String`
The name of the cache engine to be used for this cluster.

Valid values for this parameter are: `memcached` | `redis`


## `EngineVersion = ::String`
The version number of the cache engine to be used for this cluster. To view the supported cache engine versions, use the DescribeCacheEngineVersions operation.

**Important:** You can upgrade to a newer engine version (see [Selecting a Cache Engine and Version](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement)), but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cluster or replication group and create it anew with the earlier engine version.


## `CacheParameterGroupName = ::String`
The name of the parameter group to associate with this cluster. If this argument is omitted, the default parameter group for the specified engine is used. You cannot use any parameter group which has `cluster-enabled='yes'` when creating a cluster.


## `CacheSubnetGroupName = ::String`
The name of the subnet group to be used for the cluster.

Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).

**Important**
> If you're going to launch your cluster in an Amazon VPC, you need to create a subnet group before you start creating a cluster. For more information, see [Subnets and Subnet Groups](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SubnetGroups.html).


## `CacheSecurityGroupNames = [::String, ...]`
A list of security group names to associate with this cluster.

Use this parameter only when you are creating a cluster outside of an Amazon Virtual Private Cloud (Amazon VPC).


## `SecurityGroupIds = [::String, ...]`
One or more VPC security groups associated with the cluster.

Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).


## `Tags = [[ ... ], ...]`
A list of cost allocation tags to be added to this resource.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `SnapshotArns = [::String, ...]`
A single-element string list containing an Amazon Resource Name (ARN) that uniquely identifies a Redis RDB snapshot file stored in Amazon S3. The snapshot file is used to populate the node group (shard). The Amazon S3 object name in the ARN cannot contain any commas.

**Note**
> This parameter is only valid if the `Engine` parameter is `redis`.

Example of an Amazon S3 ARN: `arn:aws:s3:::my_bucket/snapshot1.rdb`


## `SnapshotName = ::String`
The name of a Redis snapshot from which to restore data into the new node group (shard). The snapshot status changes to `restoring` while the new node group (shard) is being created.

**Note**
> This parameter is only valid if the `Engine` parameter is `redis`.


## `PreferredMaintenanceWindow = ::String`
Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for `ddd` are:

Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.

Valid values for `ddd` are:

*   `sun`

*   `mon`

*   `tue`

*   `wed`

*   `thu`

*   `fri`

*   `sat`

Example: `sun:23:00-mon:01:30`


## `Port = ::Int`
The port number on which each of the cache nodes accepts connections.


## `NotificationTopicArn = ::String`
The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.

**Note**
> The Amazon SNS topic owner must be the same as the cluster owner.


## `AutoMinorVersionUpgrade = ::Bool`
This parameter is currently disabled.


## `SnapshotRetentionLimit = ::Int`
The number of days for which ElastiCache retains automatic snapshots before deleting them. For example, if you set `SnapshotRetentionLimit` to 5, a snapshot taken today is retained for 5 days before being deleted.

**Note**
> This parameter is only valid if the `Engine` parameter is `redis`.

Default: 0 (i.e., automatic backups are disabled for this cluster).


## `SnapshotWindow = ::String`
The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).

Example: `05:00-09:00`

If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.

**Note**
> This parameter is only valid if the `Engine` parameter is `redis`.


## `AuthToken = ::String`
**Reserved parameter.** The password used to access a password protected server.

This parameter is valid only if:

*   The parameter `TransitEncryptionEnabled` was set to `true` when the cluster was created.

*   The line `requirepass` was added to the database configuration file.

Password constraints:

*   Must be only printable ASCII characters.

*   Must be at least 16 characters and no more than 128 characters in length.

*   Cannot contain any of the following characters: '/', '"', or '@'.

For more information, see [AUTH password](http://redis.io/commands/AUTH) at http://redis.io/commands/AUTH.




# Returns

`CreateCacheClusterResult`

# Exceptions

`ReplicationGroupNotFoundFault`, `InvalidReplicationGroupStateFault`, `CacheClusterAlreadyExistsFault`, `InsufficientCacheClusterCapacityFault`, `CacheSecurityGroupNotFoundFault`, `CacheSubnetGroupNotFoundFault`, `ClusterQuotaForCustomerExceededFault`, `NodeQuotaForClusterExceededFault`, `NodeQuotaForCustomerExceededFault`, `CacheParameterGroupNotFoundFault`, `InvalidVPCNetworkStateFault`, `TagQuotaPerResourceExceeded`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheCluster)
"""
@inline create_cache_cluster(aws::AWSConfig=default_aws_config(); args...) = create_cache_cluster(aws, args)

@inline create_cache_cluster(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "CreateCacheCluster", args)

@inline create_cache_cluster(args) = create_cache_cluster(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.create_cache_parameter_group
    create_cache_parameter_group([::AWSConfig], arguments::Dict)
    create_cache_parameter_group([::AWSConfig]; CacheParameterGroupName=, CacheParameterGroupFamily=, Description=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "CreateCacheParameterGroup", arguments::Dict)
    elasticache([::AWSConfig], "CreateCacheParameterGroup", CacheParameterGroupName=, CacheParameterGroupFamily=, Description=)

# CreateCacheParameterGroup Operation

Creates a new Amazon ElastiCache cache parameter group. An ElastiCache cache parameter group is a collection of parameters and their values that are applied to all of the nodes in any cluster or replication group using the CacheParameterGroup.

A newly created CacheParameterGroup is an exact duplicate of the default parameter group for the CacheParameterGroupFamily. To customize the newly created CacheParameterGroup you can change the values of specific parameters. For more information, see:

*   [ModifyCacheParameterGroup](http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheParameterGroup.html) in the ElastiCache API Reference.

*   [Parameters and Parameter Groups](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/ParameterGroups.html) in the ElastiCache User Guide.

# Arguments

## `CacheParameterGroupName = ::String` -- *Required*
A user-specified name for the cache parameter group.


## `CacheParameterGroupFamily = ::String` -- *Required*
The name of the cache parameter group family that the cache parameter group can be used with.

Valid values are: `memcached1.4` | `redis2.6` | `redis2.8` | `redis3.2`


## `Description = ::String` -- *Required*
A user-specified description for the cache parameter group.




# Returns

`CreateCacheParameterGroupResult`

# Exceptions

`CacheParameterGroupQuotaExceededFault`, `CacheParameterGroupAlreadyExistsFault`, `InvalidCacheParameterGroupStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheParameterGroup)
"""
@inline create_cache_parameter_group(aws::AWSConfig=default_aws_config(); args...) = create_cache_parameter_group(aws, args)

@inline create_cache_parameter_group(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "CreateCacheParameterGroup", args)

@inline create_cache_parameter_group(args) = create_cache_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.create_cache_security_group
    create_cache_security_group([::AWSConfig], arguments::Dict)
    create_cache_security_group([::AWSConfig]; CacheSecurityGroupName=, Description=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "CreateCacheSecurityGroup", arguments::Dict)
    elasticache([::AWSConfig], "CreateCacheSecurityGroup", CacheSecurityGroupName=, Description=)

# CreateCacheSecurityGroup Operation

Creates a new cache security group. Use a cache security group to control access to one or more clusters.

Cache security groups are only used when you are creating a cluster outside of an Amazon Virtual Private Cloud (Amazon VPC). If you are creating a cluster inside of a VPC, use a cache subnet group instead. For more information, see [CreateCacheSubnetGroup](http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html).

# Arguments

## `CacheSecurityGroupName = ::String` -- *Required*
A name for the cache security group. This value is stored as a lowercase string.

Constraints: Must contain no more than 255 alphanumeric characters. Cannot be the word "Default".

Example: `mysecuritygroup`


## `Description = ::String` -- *Required*
A description for the cache security group.




# Returns

`CreateCacheSecurityGroupResult`

# Exceptions

`CacheSecurityGroupAlreadyExistsFault`, `CacheSecurityGroupQuotaExceededFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheSecurityGroup)
"""
@inline create_cache_security_group(aws::AWSConfig=default_aws_config(); args...) = create_cache_security_group(aws, args)

@inline create_cache_security_group(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "CreateCacheSecurityGroup", args)

@inline create_cache_security_group(args) = create_cache_security_group(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.create_cache_subnet_group
    create_cache_subnet_group([::AWSConfig], arguments::Dict)
    create_cache_subnet_group([::AWSConfig]; CacheSubnetGroupName=, CacheSubnetGroupDescription=, SubnetIds=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "CreateCacheSubnetGroup", arguments::Dict)
    elasticache([::AWSConfig], "CreateCacheSubnetGroup", CacheSubnetGroupName=, CacheSubnetGroupDescription=, SubnetIds=)

# CreateCacheSubnetGroup Operation

Creates a new cache subnet group.

Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).

# Arguments

## `CacheSubnetGroupName = ::String` -- *Required*
A name for the cache subnet group. This value is stored as a lowercase string.

Constraints: Must contain no more than 255 alphanumeric characters or hyphens.

Example: `mysubnetgroup`


## `CacheSubnetGroupDescription = ::String` -- *Required*
A description for the cache subnet group.


## `SubnetIds = [::String, ...]` -- *Required*
A list of VPC subnet IDs for the cache subnet group.




# Returns

`CreateCacheSubnetGroupResult`

# Exceptions

`CacheSubnetGroupAlreadyExistsFault`, `CacheSubnetGroupQuotaExceededFault`, `CacheSubnetQuotaExceededFault` or `InvalidSubnet`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheSubnetGroup)
"""
@inline create_cache_subnet_group(aws::AWSConfig=default_aws_config(); args...) = create_cache_subnet_group(aws, args)

@inline create_cache_subnet_group(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "CreateCacheSubnetGroup", args)

@inline create_cache_subnet_group(args) = create_cache_subnet_group(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.create_replication_group
    create_replication_group([::AWSConfig], arguments::Dict)
    create_replication_group([::AWSConfig]; ReplicationGroupId=, ReplicationGroupDescription=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "CreateReplicationGroup", arguments::Dict)
    elasticache([::AWSConfig], "CreateReplicationGroup", ReplicationGroupId=, ReplicationGroupDescription=, <keyword arguments>)

# CreateReplicationGroup Operation

Creates a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group.

A Redis (cluster mode disabled) replication group is a collection of clusters, where one of the clusters is a read/write primary and the others are read-only replicas. Writes to the primary are asynchronously propagated to the replicas.

A Redis (cluster mode enabled) replication group is a collection of 1 to 15 node groups (shards). Each node group (shard) has one read/write primary node and up to 5 read-only replica nodes. Writes to the primary are asynchronously propagated to the replicas. Redis (cluster mode enabled) replication groups partition the data across node groups (shards).

When a Redis (cluster mode disabled) replication group has been successfully created, you can add one or more read replicas to it, up to a total of 5 read replicas. You cannot alter a Redis (cluster mode enabled) replication group after it has been created. However, if you need to increase or decrease the number of node groups (console: shards), you can avail yourself of ElastiCache for Redis' enhanced backup and restore. For more information, see [Restoring From a Backup with Cluster Resizing](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/backups-restoring.html) in the *ElastiCache User Guide*.

**Note**
> This operation is valid for Redis only.

# Arguments

## `ReplicationGroupId = ::String` -- *Required*
The replication group identifier. This parameter is stored as a lowercase string.

Constraints:

*   A name must contain from 1 to 20 alphanumeric characters or hyphens.

*   The first character must be a letter.

*   A name cannot end with a hyphen or contain two consecutive hyphens.


## `ReplicationGroupDescription = ::String` -- *Required*
A user-created description for the replication group.


## `PrimaryClusterId = ::String`
The identifier of the cluster that serves as the primary for this replication group. This cluster must already exist and have a status of `available`.

This parameter is not required if `NumCacheClusters`, `NumNodeGroups`, or `ReplicasPerNodeGroup` is specified.


## `AutomaticFailoverEnabled = ::Bool`
Specifies whether a read-only replica is automatically promoted to read/write primary if the existing primary fails.

If `true`, Multi-AZ is enabled for this replication group. If `false`, Multi-AZ is disabled for this replication group.

`AutomaticFailoverEnabled` must be enabled for Redis (cluster mode enabled) replication groups.

Default: false

Amazon ElastiCache for Redis does not support Multi-AZ with automatic failover on:

*   Redis versions earlier than 2.8.6.

*   Redis (cluster mode disabled): T1 and T2 cache node types.

*   Redis (cluster mode enabled): T1 node types.


## `NumCacheClusters = ::Int`
The number of clusters this replication group initially has.

This parameter is not used if there is more than one node group (shard). You should use `ReplicasPerNodeGroup` instead.

If `AutomaticFailoverEnabled` is `true`, the value of this parameter must be at least 2. If `AutomaticFailoverEnabled` is `false` you can omit this parameter (it will default to 1), or you can explicitly set it to a value between 2 and 6.

The maximum permitted value for `NumCacheClusters` is 6 (primary plus 5 replicas).


## `PreferredCacheClusterAZs = [::String, ...]`
A list of EC2 Availability Zones in which the replication group's clusters are created. The order of the Availability Zones in the list is the order in which clusters are allocated. The primary cluster is created in the first AZ in the list.

This parameter is not used if there is more than one node group (shard). You should use `NodeGroupConfiguration` instead.

**Note**
> If you are creating your replication group in an Amazon VPC (recommended), you can only locate clusters in Availability Zones associated with the subnets in the selected subnet group.

The number of Availability Zones listed must equal the value of `NumCacheClusters`.

Default: system chosen Availability Zones.


## `NumNodeGroups = ::Int`
An optional parameter that specifies the number of node groups (shards) for this Redis (cluster mode enabled) replication group. For Redis (cluster mode disabled) either omit this parameter or set it to 1.

Default: 1


## `ReplicasPerNodeGroup = ::Int`
An optional parameter that specifies the number of replica nodes in each node group (shard). Valid values are 0 to 5.


## `NodeGroupConfiguration = [[ ... ], ...]`
A list of node group (shard) configuration options. Each node group (shard) configuration has the following: Slots, PrimaryAvailabilityZone, ReplicaAvailabilityZones, ReplicaCount.

If you're creating a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group, you can use this parameter to individually configure each node group (shard), or you can omit this parameter.
```
 NodeGroupConfiguration = [[
        "Slots" =>  ::String,
        "ReplicaCount" =>  ::Int,
        "PrimaryAvailabilityZone" =>  ::String,
        "ReplicaAvailabilityZones" =>  [::String, ...]
    ], ...]
```

## `CacheNodeType = ::String`
The compute and memory capacity of the nodes in the node group (shard).

The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.

*   General purpose:

    *   Current generation:

        **T2 node types:** `cache.t2.micro`, `cache.t2.small`, `cache.t2.medium`

        **M3 node types:** `cache.m3.medium`, `cache.m3.large`, `cache.m3.xlarge`, `cache.m3.2xlarge`

        **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`, `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`

    *   Previous generation: (not recommended)

        **T1 node types:** `cache.t1.micro`

        **M1 node types:** `cache.m1.small`, `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`

*   Compute optimized:

    *   Previous generation: (not recommended)

        **C1 node types:** `cache.c1.xlarge`

*   Memory optimized:

    *   Current generation:

        **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`, `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`

    *   Previous generation: (not recommended)

        **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`, `cache.m2.4xlarge`

**Notes:**

*   All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).

*   Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances.

*   Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.

*   Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.

For a complete listing of node types and specifications, see [Amazon ElastiCache Product Features and Details](http://aws.amazon.com/elasticache/details) and either [Cache Node Type-Specific Parameters for Memcached](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific) or [Cache Node Type-Specific Parameters for Redis](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific).


## `Engine = ::String`
The name of the cache engine to be used for the clusters in this replication group.


## `EngineVersion = ::String`
The version number of the cache engine to be used for the clusters in this replication group. To view the supported cache engine versions, use the `DescribeCacheEngineVersions` operation.

**Important:** You can upgrade to a newer engine version (see [Selecting a Cache Engine and Version](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement)) in the *ElastiCache User Guide*, but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cluster or replication group and create it anew with the earlier engine version.


## `CacheParameterGroupName = ::String`
The name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used.

If you are running Redis version 3.2.4 or later, only one node group (shard), and want to use a default parameter group, we recommend that you specify the parameter group by name.

*   To create a Redis (cluster mode disabled) replication group, use `CacheParameterGroupName=default.redis3.2`.

*   To create a Redis (cluster mode enabled) replication group, use `CacheParameterGroupName=default.redis3.2.cluster.on`.


## `CacheSubnetGroupName = ::String`
The name of the cache subnet group to be used for the replication group.

**Important**
> If you're going to launch your cluster in an Amazon VPC, you need to create a subnet group before you start creating a cluster. For more information, see [Subnets and Subnet Groups](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SubnetGroups.html).


## `CacheSecurityGroupNames = [::String, ...]`
A list of cache security group names to associate with this replication group.


## `SecurityGroupIds = [::String, ...]`
One or more Amazon VPC security groups associated with this replication group.

Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud (Amazon VPC).


## `Tags = [[ ... ], ...]`
A list of cost allocation tags to be added to this resource. A tag is a key-value pair. A tag key does not have to be accompanied by a tag value.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `SnapshotArns = [::String, ...]`
A list of Amazon Resource Names (ARN) that uniquely identify the Redis RDB snapshot files stored in Amazon S3. The snapshot files are used to populate the new replication group. The Amazon S3 object name in the ARN cannot contain any commas. The new replication group will have the number of node groups (console: shards) specified by the parameter *NumNodeGroups* or the number of node groups configured by *NodeGroupConfiguration* regardless of the number of ARNs specified here.

Example of an Amazon S3 ARN: `arn:aws:s3:::my_bucket/snapshot1.rdb`


## `SnapshotName = ::String`
The name of a snapshot from which to restore data into the new replication group. The snapshot status changes to `restoring` while the new replication group is being created.


## `PreferredMaintenanceWindow = ::String`
Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for `ddd` are:

Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.

Valid values for `ddd` are:

*   `sun`

*   `mon`

*   `tue`

*   `wed`

*   `thu`

*   `fri`

*   `sat`

Example: `sun:23:00-mon:01:30`


## `Port = ::Int`
The port number on which each member of the replication group accepts connections.


## `NotificationTopicArn = ::String`
The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.

**Note**
> The Amazon SNS topic owner must be the same as the cluster owner.


## `AutoMinorVersionUpgrade = ::Bool`
This parameter is currently disabled.


## `SnapshotRetentionLimit = ::Int`
The number of days for which ElastiCache retains automatic snapshots before deleting them. For example, if you set `SnapshotRetentionLimit` to 5, a snapshot that was taken today is retained for 5 days before being deleted.

Default: 0 (i.e., automatic backups are disabled for this cluster).


## `SnapshotWindow = ::String`
The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).

Example: `05:00-09:00`

If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.


## `AuthToken = ::String`
**Reserved parameter.** The password used to access a password protected server.

This parameter is valid only if:

*   The parameter `TransitEncryptionEnabled` was set to `true` when the cluster was created.

*   The line `requirepass` was added to the database configuration file.

Password constraints:

*   Must be only printable ASCII characters.

*   Must be at least 16 characters and no more than 128 characters in length.

*   Cannot contain any of the following characters: '/', '"', or '@'.

For more information, see [AUTH password](http://redis.io/commands/AUTH) at http://redis.io/commands/AUTH.


## `TransitEncryptionEnabled = ::Bool`
A flag that enables in-transit encryption when set to `true`.

You cannot modify the value of `TransitEncryptionEnabled` after the cluster is created. To enable in-transit encryption on a cluster you must set `TransitEncryptionEnabled` to `true` when you create a cluster.

This parameter is valid only if the `Engine` parameter is `redis`, the `EngineVersion` parameter is `3.2.4` or later, and the cluster is being created in an Amazon VPC.

If you enable in-transit encryption, you must also specify a value for `CacheSubnetGroup`.

Default: `false`


## `AtRestEncryptionEnabled = ::Bool`
A flag that enables encryption at rest when set to `true`.

You cannot modify the value of `AtRestEncryptionEnabled` after the replication group is created. To enable encryption at rest on a replication group you must set `AtRestEncryptionEnabled` to `true` when you create the replication group.

**Note**
> This parameter is valid only if the `Engine` parameter is `redis` and the cluster is being created in an Amazon VPC.

Default: `false`




# Returns

`CreateReplicationGroupResult`

# Exceptions

`CacheClusterNotFoundFault`, `InvalidCacheClusterStateFault`, `ReplicationGroupAlreadyExistsFault`, `InsufficientCacheClusterCapacityFault`, `CacheSecurityGroupNotFoundFault`, `CacheSubnetGroupNotFoundFault`, `ClusterQuotaForCustomerExceededFault`, `NodeQuotaForClusterExceededFault`, `NodeQuotaForCustomerExceededFault`, `CacheParameterGroupNotFoundFault`, `InvalidVPCNetworkStateFault`, `TagQuotaPerResourceExceeded`, `NodeGroupsPerReplicationGroupQuotaExceededFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateReplicationGroup)
"""
@inline create_replication_group(aws::AWSConfig=default_aws_config(); args...) = create_replication_group(aws, args)

@inline create_replication_group(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "CreateReplicationGroup", args)

@inline create_replication_group(args) = create_replication_group(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.create_snapshot
    create_snapshot([::AWSConfig], arguments::Dict)
    create_snapshot([::AWSConfig]; SnapshotName=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "CreateSnapshot", arguments::Dict)
    elasticache([::AWSConfig], "CreateSnapshot", SnapshotName=, <keyword arguments>)

# CreateSnapshot Operation

Creates a copy of an entire cluster or replication group at a specific moment in time.

**Note**
> This operation is valid for Redis only.

# Arguments

## `ReplicationGroupId = ::String`
The identifier of an existing replication group. The snapshot is created from this replication group.


## `CacheClusterId = ::String`
The identifier of an existing cluster. The snapshot is created from this cluster.


## `SnapshotName = ::String` -- *Required*
A name for the snapshot being created.




# Returns

`CreateSnapshotResult`

# Exceptions

`SnapshotAlreadyExistsFault`, `CacheClusterNotFoundFault`, `ReplicationGroupNotFoundFault`, `InvalidCacheClusterStateFault`, `InvalidReplicationGroupStateFault`, `SnapshotQuotaExceededFault`, `SnapshotFeatureNotSupportedFault`, `InvalidParameterCombinationException` or `InvalidParameterValueException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateSnapshot)
"""
@inline create_snapshot(aws::AWSConfig=default_aws_config(); args...) = create_snapshot(aws, args)

@inline create_snapshot(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "CreateSnapshot", args)

@inline create_snapshot(args) = create_snapshot(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.delete_cache_cluster
    delete_cache_cluster([::AWSConfig], arguments::Dict)
    delete_cache_cluster([::AWSConfig]; CacheClusterId=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DeleteCacheCluster", arguments::Dict)
    elasticache([::AWSConfig], "DeleteCacheCluster", CacheClusterId=, <keyword arguments>)

# DeleteCacheCluster Operation

Deletes a previously provisioned cluster. `DeleteCacheCluster` deletes all associated cache nodes, node endpoints and the cluster itself. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the cluster; you cannot cancel or revert this operation.

This operation cannot be used to delete a cluster that is the last read replica of a replication group or node group (shard) that has Multi-AZ mode enabled or a cluster from a Redis (cluster mode enabled) replication group.

**Important**
> Due to current limitations on Redis (cluster mode disabled), this operation or parameter is not supported on Redis (cluster mode enabled) replication groups.

# Arguments

## `CacheClusterId = ::String` -- *Required*
The cluster identifier for the cluster to be deleted. This parameter is not case sensitive.


## `FinalSnapshotIdentifier = ::String`
The user-supplied name of a final cluster snapshot. This is the unique name that identifies the snapshot. ElastiCache creates the snapshot, and then deletes the cluster immediately afterward.




# Returns

`DeleteCacheClusterResult`

# Exceptions

`CacheClusterNotFoundFault`, `InvalidCacheClusterStateFault`, `SnapshotAlreadyExistsFault`, `SnapshotFeatureNotSupportedFault`, `SnapshotQuotaExceededFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheCluster)
"""
@inline delete_cache_cluster(aws::AWSConfig=default_aws_config(); args...) = delete_cache_cluster(aws, args)

@inline delete_cache_cluster(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DeleteCacheCluster", args)

@inline delete_cache_cluster(args) = delete_cache_cluster(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.delete_cache_parameter_group
    delete_cache_parameter_group([::AWSConfig], arguments::Dict)
    delete_cache_parameter_group([::AWSConfig]; CacheParameterGroupName=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DeleteCacheParameterGroup", arguments::Dict)
    elasticache([::AWSConfig], "DeleteCacheParameterGroup", CacheParameterGroupName=)

# DeleteCacheParameterGroup Operation

Deletes the specified cache parameter group. You cannot delete a cache parameter group if it is associated with any cache clusters.

# Arguments

## `CacheParameterGroupName = ::String` -- *Required*
The name of the cache parameter group to delete.

**Note**
> The specified cache security group must not be associated with any clusters.




# Exceptions

`InvalidCacheParameterGroupStateFault`, `CacheParameterGroupNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheParameterGroup)
"""
@inline delete_cache_parameter_group(aws::AWSConfig=default_aws_config(); args...) = delete_cache_parameter_group(aws, args)

@inline delete_cache_parameter_group(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DeleteCacheParameterGroup", args)

@inline delete_cache_parameter_group(args) = delete_cache_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.delete_cache_security_group
    delete_cache_security_group([::AWSConfig], arguments::Dict)
    delete_cache_security_group([::AWSConfig]; CacheSecurityGroupName=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DeleteCacheSecurityGroup", arguments::Dict)
    elasticache([::AWSConfig], "DeleteCacheSecurityGroup", CacheSecurityGroupName=)

# DeleteCacheSecurityGroup Operation

Deletes a cache security group.

**Note**
> You cannot delete a cache security group if it is associated with any clusters.

# Arguments

## `CacheSecurityGroupName = ::String` -- *Required*
The name of the cache security group to delete.

**Note**
> You cannot delete the default security group.




# Exceptions

`InvalidCacheSecurityGroupStateFault`, `CacheSecurityGroupNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheSecurityGroup)
"""
@inline delete_cache_security_group(aws::AWSConfig=default_aws_config(); args...) = delete_cache_security_group(aws, args)

@inline delete_cache_security_group(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DeleteCacheSecurityGroup", args)

@inline delete_cache_security_group(args) = delete_cache_security_group(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.delete_cache_subnet_group
    delete_cache_subnet_group([::AWSConfig], arguments::Dict)
    delete_cache_subnet_group([::AWSConfig]; CacheSubnetGroupName=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DeleteCacheSubnetGroup", arguments::Dict)
    elasticache([::AWSConfig], "DeleteCacheSubnetGroup", CacheSubnetGroupName=)

# DeleteCacheSubnetGroup Operation

Deletes a cache subnet group.

**Note**
> You cannot delete a cache subnet group if it is associated with any clusters.

# Arguments

## `CacheSubnetGroupName = ::String` -- *Required*
The name of the cache subnet group to delete.

Constraints: Must contain no more than 255 alphanumeric characters or hyphens.




# Exceptions

`CacheSubnetGroupInUse` or `CacheSubnetGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheSubnetGroup)
"""
@inline delete_cache_subnet_group(aws::AWSConfig=default_aws_config(); args...) = delete_cache_subnet_group(aws, args)

@inline delete_cache_subnet_group(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DeleteCacheSubnetGroup", args)

@inline delete_cache_subnet_group(args) = delete_cache_subnet_group(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.delete_replication_group
    delete_replication_group([::AWSConfig], arguments::Dict)
    delete_replication_group([::AWSConfig]; ReplicationGroupId=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DeleteReplicationGroup", arguments::Dict)
    elasticache([::AWSConfig], "DeleteReplicationGroup", ReplicationGroupId=, <keyword arguments>)

# DeleteReplicationGroup Operation

Deletes an existing replication group. By default, this operation deletes the entire replication group, including the primary/primaries and all of the read replicas. If the replication group has only one primary, you can optionally delete only the read replicas, while retaining the primary by setting `RetainPrimaryCluster=true`.

When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources; you cannot cancel or revert this operation.

**Note**
> This operation is valid for Redis only.

# Arguments

## `ReplicationGroupId = ::String` -- *Required*
The identifier for the cluster to be deleted. This parameter is not case sensitive.


## `RetainPrimaryCluster = ::Bool`
If set to `true`, all of the read replicas are deleted, but the primary node is retained.


## `FinalSnapshotIdentifier = ::String`
The name of a final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster, rather than one of the replicas; this is to ensure that it captures the freshest data. After the final snapshot is taken, the replication group is immediately deleted.




# Returns

`DeleteReplicationGroupResult`

# Exceptions

`ReplicationGroupNotFoundFault`, `InvalidReplicationGroupStateFault`, `SnapshotAlreadyExistsFault`, `SnapshotFeatureNotSupportedFault`, `SnapshotQuotaExceededFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteReplicationGroup)
"""
@inline delete_replication_group(aws::AWSConfig=default_aws_config(); args...) = delete_replication_group(aws, args)

@inline delete_replication_group(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DeleteReplicationGroup", args)

@inline delete_replication_group(args) = delete_replication_group(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.delete_snapshot
    delete_snapshot([::AWSConfig], arguments::Dict)
    delete_snapshot([::AWSConfig]; SnapshotName=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DeleteSnapshot", arguments::Dict)
    elasticache([::AWSConfig], "DeleteSnapshot", SnapshotName=)

# DeleteSnapshot Operation

Deletes an existing snapshot. When you receive a successful response from this operation, ElastiCache immediately begins deleting the snapshot; you cannot cancel or revert this operation.

**Note**
> This operation is valid for Redis only.

# Arguments

## `SnapshotName = ::String` -- *Required*
The name of the snapshot to be deleted.




# Returns

`DeleteSnapshotResult`

# Exceptions

`SnapshotNotFoundFault`, `InvalidSnapshotStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteSnapshot)
"""
@inline delete_snapshot(aws::AWSConfig=default_aws_config(); args...) = delete_snapshot(aws, args)

@inline delete_snapshot(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DeleteSnapshot", args)

@inline delete_snapshot(args) = delete_snapshot(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.describe_cache_clusters
    describe_cache_clusters([::AWSConfig], arguments::Dict)
    describe_cache_clusters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DescribeCacheClusters", arguments::Dict)
    elasticache([::AWSConfig], "DescribeCacheClusters", <keyword arguments>)

# DescribeCacheClusters Operation

Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cache cluster if a cluster identifier is supplied.

By default, abbreviated information about the clusters is returned. You can use the optional *ShowCacheNodeInfo* flag to retrieve detailed information about the cache nodes associated with the clusters. These details include the DNS address and port for the cache node endpoint.

If the cluster is in the *creating* state, only cluster-level information is displayed until all of the nodes are successfully provisioned.

If the cluster is in the *deleting* state, only cluster-level information is displayed.

If cache nodes are currently being added to the cluster, node endpoint information and creation time for the additional nodes are not displayed until they are completely provisioned. When the cluster state is *available*, the cluster is ready for use.

If cache nodes are currently being removed from the cluster, no endpoint information for the removed nodes is displayed.

# Arguments

## `CacheClusterId = ::String`
The user-supplied cluster identifier. If this parameter is specified, only information about that specific cluster is returned. This parameter isn't case sensitive.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.


## `Marker = ::String`
An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.


## `ShowCacheNodeInfo = ::Bool`
An optional flag that can be included in the `DescribeCacheCluster` request to retrieve information about the individual cache nodes.


## `ShowCacheClustersNotInReplicationGroups = ::Bool`
An optional flag that can be included in the `DescribeCacheCluster` request to show only nodes (API/CLI: clusters) that are not members of a replication group. In practice, this mean Memcached and single node Redis clusters.




# Returns

`CacheClusterMessage`

# Exceptions

`CacheClusterNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheClusters)
"""
@inline describe_cache_clusters(aws::AWSConfig=default_aws_config(); args...) = describe_cache_clusters(aws, args)

@inline describe_cache_clusters(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DescribeCacheClusters", args)

@inline describe_cache_clusters(args) = describe_cache_clusters(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.describe_cache_engine_versions
    describe_cache_engine_versions([::AWSConfig], arguments::Dict)
    describe_cache_engine_versions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DescribeCacheEngineVersions", arguments::Dict)
    elasticache([::AWSConfig], "DescribeCacheEngineVersions", <keyword arguments>)

# DescribeCacheEngineVersions Operation

Returns a list of the available cache engines and their versions.

# Arguments

## `Engine = ::String`
The cache engine to return. Valid values: `memcached` | `redis`


## `EngineVersion = ::String`
The cache engine version to return.

Example: `1.4.14`


## `CacheParameterGroupFamily = ::String`
The name of a specific cache parameter group family to return details for.

Valid values are: `memcached1.4` | `redis2.6` | `redis2.8` | `redis3.2`

Constraints:

*   Must be 1 to 255 alphanumeric characters

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.


## `Marker = ::String`
An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.


## `DefaultOnly = ::Bool`
If `true`, specifies that only the default version of the specified engine or engine and major version combination is to be returned.




# Returns

`CacheEngineVersionMessage`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheEngineVersions)
"""
@inline describe_cache_engine_versions(aws::AWSConfig=default_aws_config(); args...) = describe_cache_engine_versions(aws, args)

@inline describe_cache_engine_versions(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DescribeCacheEngineVersions", args)

@inline describe_cache_engine_versions(args) = describe_cache_engine_versions(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.describe_cache_parameter_groups
    describe_cache_parameter_groups([::AWSConfig], arguments::Dict)
    describe_cache_parameter_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DescribeCacheParameterGroups", arguments::Dict)
    elasticache([::AWSConfig], "DescribeCacheParameterGroups", <keyword arguments>)

# DescribeCacheParameterGroups Operation

Returns a list of cache parameter group descriptions. If a cache parameter group name is specified, the list contains only the descriptions for that group.

# Arguments

## `CacheParameterGroupName = ::String`
The name of a specific cache parameter group to return details for.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.


## `Marker = ::String`
An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`CacheParameterGroupsMessage`

# Exceptions

`CacheParameterGroupNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheParameterGroups)
"""
@inline describe_cache_parameter_groups(aws::AWSConfig=default_aws_config(); args...) = describe_cache_parameter_groups(aws, args)

@inline describe_cache_parameter_groups(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DescribeCacheParameterGroups", args)

@inline describe_cache_parameter_groups(args) = describe_cache_parameter_groups(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.describe_cache_parameters
    describe_cache_parameters([::AWSConfig], arguments::Dict)
    describe_cache_parameters([::AWSConfig]; CacheParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DescribeCacheParameters", arguments::Dict)
    elasticache([::AWSConfig], "DescribeCacheParameters", CacheParameterGroupName=, <keyword arguments>)

# DescribeCacheParameters Operation

Returns the detailed parameter list for a particular cache parameter group.

# Arguments

## `CacheParameterGroupName = ::String` -- *Required*
The name of a specific cache parameter group to return details for.


## `Source = ::String`
The parameter types to return.

Valid values: `user` | `system` | `engine-default`


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.


## `Marker = ::String`
An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`CacheParameterGroupDetails`

# Exceptions

`CacheParameterGroupNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheParameters)
"""
@inline describe_cache_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_cache_parameters(aws, args)

@inline describe_cache_parameters(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DescribeCacheParameters", args)

@inline describe_cache_parameters(args) = describe_cache_parameters(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.describe_cache_security_groups
    describe_cache_security_groups([::AWSConfig], arguments::Dict)
    describe_cache_security_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DescribeCacheSecurityGroups", arguments::Dict)
    elasticache([::AWSConfig], "DescribeCacheSecurityGroups", <keyword arguments>)

# DescribeCacheSecurityGroups Operation

Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only the description of that group.

# Arguments

## `CacheSecurityGroupName = ::String`
The name of the cache security group to return details for.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.


## `Marker = ::String`
An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`CacheSecurityGroupMessage`

# Exceptions

`CacheSecurityGroupNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheSecurityGroups)
"""
@inline describe_cache_security_groups(aws::AWSConfig=default_aws_config(); args...) = describe_cache_security_groups(aws, args)

@inline describe_cache_security_groups(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DescribeCacheSecurityGroups", args)

@inline describe_cache_security_groups(args) = describe_cache_security_groups(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.describe_cache_subnet_groups
    describe_cache_subnet_groups([::AWSConfig], arguments::Dict)
    describe_cache_subnet_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DescribeCacheSubnetGroups", arguments::Dict)
    elasticache([::AWSConfig], "DescribeCacheSubnetGroups", <keyword arguments>)

# DescribeCacheSubnetGroups Operation

Returns a list of cache subnet group descriptions. If a subnet group name is specified, the list contains only the description of that group.

# Arguments

## `CacheSubnetGroupName = ::String`
The name of the cache subnet group to return details for.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.


## `Marker = ::String`
An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`CacheSubnetGroupMessage`

# Exceptions

`CacheSubnetGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheSubnetGroups)
"""
@inline describe_cache_subnet_groups(aws::AWSConfig=default_aws_config(); args...) = describe_cache_subnet_groups(aws, args)

@inline describe_cache_subnet_groups(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DescribeCacheSubnetGroups", args)

@inline describe_cache_subnet_groups(args) = describe_cache_subnet_groups(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.describe_engine_default_parameters
    describe_engine_default_parameters([::AWSConfig], arguments::Dict)
    describe_engine_default_parameters([::AWSConfig]; CacheParameterGroupFamily=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DescribeEngineDefaultParameters", arguments::Dict)
    elasticache([::AWSConfig], "DescribeEngineDefaultParameters", CacheParameterGroupFamily=, <keyword arguments>)

# DescribeEngineDefaultParameters Operation

Returns the default engine and system parameter information for the specified cache engine.

# Arguments

## `CacheParameterGroupFamily = ::String` -- *Required*
The name of the cache parameter group family.

Valid values are: `memcached1.4` | `redis2.6` | `redis2.8` | `redis3.2`


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.


## `Marker = ::String`
An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeEngineDefaultParametersResult`

# Exceptions

`InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeEngineDefaultParameters)
"""
@inline describe_engine_default_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_engine_default_parameters(aws, args)

@inline describe_engine_default_parameters(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DescribeEngineDefaultParameters", args)

@inline describe_engine_default_parameters(args) = describe_engine_default_parameters(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.describe_events
    describe_events([::AWSConfig], arguments::Dict)
    describe_events([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DescribeEvents", arguments::Dict)
    elasticache([::AWSConfig], "DescribeEvents", <keyword arguments>)

# DescribeEvents Operation

Returns events related to clusters, cache security groups, and cache parameter groups. You can obtain events specific to a particular cluster, cache security group, or cache parameter group by providing the name as a parameter.

By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.

# Arguments

## `SourceIdentifier = ::String`
The identifier of the event source for which events are returned. If not specified, all sources are included in the response.


## `SourceType = "cache-cluster", "cache-parameter-group", "cache-security-group", "cache-subnet-group" or "replication-group"`
The event source to retrieve events for. If no value is specified, all events are returned.


## `StartTime = timestamp`
The beginning of the time interval to retrieve events for, specified in ISO 8601 format.

**Example:** 2017-03-30T07:03:49.555Z


## `EndTime = timestamp`
The end of the time interval for which to retrieve events, specified in ISO 8601 format.

**Example:** 2017-03-30T07:03:49.555Z


## `Duration = ::Int`
The number of minutes worth of events to retrieve.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.


## `Marker = ::String`
An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`EventsMessage`

# Exceptions

`InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeEvents)
"""
@inline describe_events(aws::AWSConfig=default_aws_config(); args...) = describe_events(aws, args)

@inline describe_events(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DescribeEvents", args)

@inline describe_events(args) = describe_events(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.describe_replication_groups
    describe_replication_groups([::AWSConfig], arguments::Dict)
    describe_replication_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DescribeReplicationGroups", arguments::Dict)
    elasticache([::AWSConfig], "DescribeReplicationGroups", <keyword arguments>)

# DescribeReplicationGroups Operation

Returns information about a particular replication group. If no identifier is specified, `DescribeReplicationGroups` returns information about all replication groups.

**Note**
> This operation is valid for Redis only.

# Arguments

## `ReplicationGroupId = ::String`
The identifier for the replication group to be described. This parameter is not case sensitive.

If you do not specify this parameter, information about all replication groups is returned.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.


## `Marker = ::String`
An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`ReplicationGroupMessage`

# Exceptions

`ReplicationGroupNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeReplicationGroups)
"""
@inline describe_replication_groups(aws::AWSConfig=default_aws_config(); args...) = describe_replication_groups(aws, args)

@inline describe_replication_groups(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DescribeReplicationGroups", args)

@inline describe_replication_groups(args) = describe_replication_groups(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.describe_reserved_cache_nodes
    describe_reserved_cache_nodes([::AWSConfig], arguments::Dict)
    describe_reserved_cache_nodes([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DescribeReservedCacheNodes", arguments::Dict)
    elasticache([::AWSConfig], "DescribeReservedCacheNodes", <keyword arguments>)

# DescribeReservedCacheNodes Operation

Returns information about reserved cache nodes for this account, or about a specified reserved cache node.

# Arguments

## `ReservedCacheNodeId = ::String`
The reserved cache node identifier filter value. Use this parameter to show only the reservation that matches the specified reservation ID.


## `ReservedCacheNodesOfferingId = ::String`
The offering identifier filter value. Use this parameter to show only purchased reservations matching the specified offering identifier.


## `CacheNodeType = ::String`
The cache node type filter value. Use this parameter to show only those reservations matching the specified cache node type.

The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.

*   General purpose:

    *   Current generation:

        **T2 node types:** `cache.t2.micro`, `cache.t2.small`, `cache.t2.medium`

        **M3 node types:** `cache.m3.medium`, `cache.m3.large`, `cache.m3.xlarge`, `cache.m3.2xlarge`

        **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`, `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`

    *   Previous generation: (not recommended)

        **T1 node types:** `cache.t1.micro`

        **M1 node types:** `cache.m1.small`, `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`

*   Compute optimized:

    *   Previous generation: (not recommended)

        **C1 node types:** `cache.c1.xlarge`

*   Memory optimized:

    *   Current generation:

        **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`, `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`

    *   Previous generation: (not recommended)

        **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`, `cache.m2.4xlarge`

**Notes:**

*   All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).

*   Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances.

*   Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.

*   Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.

For a complete listing of node types and specifications, see [Amazon ElastiCache Product Features and Details](http://aws.amazon.com/elasticache/details) and either [Cache Node Type-Specific Parameters for Memcached](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific) or [Cache Node Type-Specific Parameters for Redis](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific).


## `Duration = ::String`
The duration filter value, specified in years or seconds. Use this parameter to show only reservations for this duration.

Valid Values: `1 | 3 | 31536000 | 94608000`


## `ProductDescription = ::String`
The product description filter value. Use this parameter to show only those reservations matching the specified product description.


## `OfferingType = ::String`
The offering type filter value. Use this parameter to show only the available offerings matching the specified offering type.

Valid values: `"Light Utilization"|"Medium Utilization"|"Heavy Utilization"`


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.


## `Marker = ::String`
An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`ReservedCacheNodeMessage`

# Exceptions

`ReservedCacheNodeNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeReservedCacheNodes)
"""
@inline describe_reserved_cache_nodes(aws::AWSConfig=default_aws_config(); args...) = describe_reserved_cache_nodes(aws, args)

@inline describe_reserved_cache_nodes(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DescribeReservedCacheNodes", args)

@inline describe_reserved_cache_nodes(args) = describe_reserved_cache_nodes(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.describe_reserved_cache_nodes_offerings
    describe_reserved_cache_nodes_offerings([::AWSConfig], arguments::Dict)
    describe_reserved_cache_nodes_offerings([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DescribeReservedCacheNodesOfferings", arguments::Dict)
    elasticache([::AWSConfig], "DescribeReservedCacheNodesOfferings", <keyword arguments>)

# DescribeReservedCacheNodesOfferings Operation

Lists available reserved cache node offerings.

# Arguments

## `ReservedCacheNodesOfferingId = ::String`
The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.

Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`


## `CacheNodeType = ::String`
The cache node type filter value. Use this parameter to show only the available offerings matching the specified cache node type.

The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.

*   General purpose:

    *   Current generation:

        **T2 node types:** `cache.t2.micro`, `cache.t2.small`, `cache.t2.medium`

        **M3 node types:** `cache.m3.medium`, `cache.m3.large`, `cache.m3.xlarge`, `cache.m3.2xlarge`

        **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`, `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`

    *   Previous generation: (not recommended)

        **T1 node types:** `cache.t1.micro`

        **M1 node types:** `cache.m1.small`, `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`

*   Compute optimized:

    *   Previous generation: (not recommended)

        **C1 node types:** `cache.c1.xlarge`

*   Memory optimized:

    *   Current generation:

        **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`, `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`

    *   Previous generation: (not recommended)

        **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`, `cache.m2.4xlarge`

**Notes:**

*   All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).

*   Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances.

*   Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.

*   Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.

For a complete listing of node types and specifications, see [Amazon ElastiCache Product Features and Details](http://aws.amazon.com/elasticache/details) and either [Cache Node Type-Specific Parameters for Memcached](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific) or [Cache Node Type-Specific Parameters for Redis](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific).


## `Duration = ::String`
Duration filter value, specified in years or seconds. Use this parameter to show only reservations for a given duration.

Valid Values: `1 | 3 | 31536000 | 94608000`


## `ProductDescription = ::String`
The product description filter value. Use this parameter to show only the available offerings matching the specified product description.


## `OfferingType = ::String`
The offering type filter value. Use this parameter to show only the available offerings matching the specified offering type.

Valid Values: `"Light Utilization"|"Medium Utilization"|"Heavy Utilization"`


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: minimum 20; maximum 100.


## `Marker = ::String`
An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`ReservedCacheNodesOfferingMessage`

# Exceptions

`ReservedCacheNodesOfferingNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeReservedCacheNodesOfferings)
"""
@inline describe_reserved_cache_nodes_offerings(aws::AWSConfig=default_aws_config(); args...) = describe_reserved_cache_nodes_offerings(aws, args)

@inline describe_reserved_cache_nodes_offerings(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DescribeReservedCacheNodesOfferings", args)

@inline describe_reserved_cache_nodes_offerings(args) = describe_reserved_cache_nodes_offerings(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.describe_snapshots
    describe_snapshots([::AWSConfig], arguments::Dict)
    describe_snapshots([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "DescribeSnapshots", arguments::Dict)
    elasticache([::AWSConfig], "DescribeSnapshots", <keyword arguments>)

# DescribeSnapshots Operation

Returns information about cluster or replication group snapshots. By default, `DescribeSnapshots` lists all of your snapshots; it can optionally describe a single snapshot, or just the snapshots associated with a particular cache cluster.

**Note**
> This operation is valid for Redis only.

# Arguments

## `ReplicationGroupId = ::String`
A user-supplied replication group identifier. If this parameter is specified, only snapshots associated with that specific replication group are described.


## `CacheClusterId = ::String`
A user-supplied cluster identifier. If this parameter is specified, only snapshots associated with that specific cluster are described.


## `SnapshotName = ::String`
A user-supplied name of the snapshot. If this parameter is specified, only this snapshot are described.


## `SnapshotSource = ::String`
If set to `system`, the output shows snapshots that were automatically created by ElastiCache. If set to `user` the output shows snapshots that were manually created. If omitted, the output shows both automatically and manually created snapshots.


## `Marker = ::String`
An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a marker is included in the response so that the remaining results can be retrieved.

Default: 50

Constraints: minimum 20; maximum 50.


## `ShowNodeGroupConfig = ::Bool`
A Boolean value which if true, the node group (shard) configuration is included in the snapshot description.




# Returns

`DescribeSnapshotsListMessage`

# Exceptions

`CacheClusterNotFoundFault`, `SnapshotNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeSnapshots)
"""
@inline describe_snapshots(aws::AWSConfig=default_aws_config(); args...) = describe_snapshots(aws, args)

@inline describe_snapshots(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "DescribeSnapshots", args)

@inline describe_snapshots(args) = describe_snapshots(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.list_allowed_node_type_modifications
    list_allowed_node_type_modifications([::AWSConfig], arguments::Dict)
    list_allowed_node_type_modifications([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "ListAllowedNodeTypeModifications", arguments::Dict)
    elasticache([::AWSConfig], "ListAllowedNodeTypeModifications", <keyword arguments>)

# ListAllowedNodeTypeModifications Operation

Lists all available node types that you can scale your Redis cluster's or replication group's current node type up to.

When you use the `ModifyCacheCluster` or `ModifyReplicationGroup` operations to scale up your cluster or replication group, the value of the `CacheNodeType` parameter must be one of the node types returned by this operation.

# Arguments

## `CacheClusterId = ::String`
The name of the cluster you want to scale up to a larger node instanced type. ElastiCache uses the cluster id to identify the current node type of this cluster and from that to create a list of node types you can scale up to.

**Important**
> You must provide a value for either the `CacheClusterId` or the `ReplicationGroupId`.


## `ReplicationGroupId = ::String`
The name of the replication group want to scale up to a larger node type. ElastiCache uses the replication group id to identify the current node type being used by this replication group, and from that to create a list of node types you can scale up to.

**Important**
> You must provide a value for either the `CacheClusterId` or the `ReplicationGroupId`.




# Returns

`AllowedNodeTypeModificationsMessage`

# Exceptions

`CacheClusterNotFoundFault`, `ReplicationGroupNotFoundFault`, `InvalidParameterCombinationException` or `InvalidParameterValueException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ListAllowedNodeTypeModifications)
"""
@inline list_allowed_node_type_modifications(aws::AWSConfig=default_aws_config(); args...) = list_allowed_node_type_modifications(aws, args)

@inline list_allowed_node_type_modifications(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "ListAllowedNodeTypeModifications", args)

@inline list_allowed_node_type_modifications(args) = list_allowed_node_type_modifications(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; ResourceName=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "ListTagsForResource", arguments::Dict)
    elasticache([::AWSConfig], "ListTagsForResource", ResourceName=)

# ListTagsForResource Operation

Lists all cost allocation tags currently on the named resource. A `cost allocation tag` is a key-value pair where the key is case-sensitive and the value is optional. You can use cost allocation tags to categorize and track your AWS costs.

You can have a maximum of 50 cost allocation tags on an ElastiCache resource. For more information, see [Using Cost Allocation Tags in Amazon ElastiCache](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/BestPractices.html).

# Arguments

## `ResourceName = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource for which you want the list of tags, for example `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).




# Returns

`TagListMessage`

# Exceptions

`CacheClusterNotFoundFault`, `SnapshotNotFoundFault` or `InvalidARNFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "ListTagsForResource", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.modify_cache_cluster
    modify_cache_cluster([::AWSConfig], arguments::Dict)
    modify_cache_cluster([::AWSConfig]; CacheClusterId=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "ModifyCacheCluster", arguments::Dict)
    elasticache([::AWSConfig], "ModifyCacheCluster", CacheClusterId=, <keyword arguments>)

# ModifyCacheCluster Operation

Modifies the settings for a cluster. You can use this operation to change one or more cluster configuration parameters by specifying the parameters and the new values.

# Arguments

## `CacheClusterId = ::String` -- *Required*
The cluster identifier. This value is stored as a lowercase string.


## `NumCacheNodes = ::Int`
The number of cache nodes that the cluster should have. If the value for `NumCacheNodes` is greater than the sum of the number of current cache nodes and the number of cache nodes pending creation (which may be zero), more nodes are added. If the value is less than the number of existing cache nodes, nodes are removed. If the value is equal to the number of current cache nodes, any pending add or remove requests are canceled.

If you are removing cache nodes, you must use the `CacheNodeIdsToRemove` parameter to provide the IDs of the specific cache nodes to remove.

For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.

**Note**
> Adding or removing Memcached cache nodes can be applied immediately or as a pending operation (see `ApplyImmediately`).

A pending operation to modify the number of cache nodes in a cluster during its maintenance window, whether by adding or removing nodes in accordance with the scale out architecture, is not queued. The customer's latest request to add or remove nodes to the cluster overrides any previous pending operations to modify the number of cache nodes in the cluster. For example, a request to remove 2 nodes would override a previous pending operation to remove 3 nodes. Similarly, a request to add 2 nodes would override a previous pending operation to remove 3 nodes and vice versa. As Memcached cache nodes may now be provisioned in different Availability Zones with flexible cache node placement, a request to add nodes does not automatically override a previous pending operation to add nodes. The customer can modify the previous pending operation to add more nodes or explicitly cancel the pending request and retry the new request. To cancel pending operations to modify the number of cache nodes in a cluster, use the `ModifyCacheCluster` request and set `NumCacheNodes` equal to the number of cache nodes currently in the cluster.


## `CacheNodeIdsToRemove = [::String, ...]`
A list of cache node IDs to be removed. A node ID is a numeric identifier (0001, 0002, etc.). This parameter is only valid when `NumCacheNodes` is less than the existing number of cache nodes. The number of cache node IDs supplied in this parameter must match the difference between the existing number of cache nodes in the cluster or pending cache nodes, whichever is greater, and the value of `NumCacheNodes` in the request.

For example: If you have 3 active cache nodes, 7 pending cache nodes, and the number of cache nodes in this `ModifyCacheCluster` call is 5, you must list 2 (7 - 5) cache node IDs to remove.


## `AZMode = "single-az" or "cross-az"`
Specifies whether the new nodes in this Memcached cluster are all created in a single Availability Zone or created across multiple Availability Zones.

Valid values: `single-az` | `cross-az`.

This option is only supported for Memcached clusters.

**Note**
> You cannot specify `single-az` if the Memcached cluster already has cache nodes in different Availability Zones. If `cross-az` is specified, existing Memcached nodes remain in their current Availability Zone.

Only newly created nodes are located in different Availability Zones. For instructions on how to move existing Memcached nodes to different Availability Zones, see the **Availability Zone Considerations** section of [Cache Node Considerations for Memcached](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheNode.Memcached.html).


## `NewAvailabilityZones = [::String, ...]`
The list of Availability Zones where the new Memcached cache nodes are created.

This parameter is only valid when `NumCacheNodes` in the request is greater than the sum of the number of active cache nodes and the number of cache nodes pending creation (which may be zero). The number of Availability Zones supplied in this list must match the cache nodes being added in this request.

This option is only supported on Memcached clusters.

Scenarios:

*   **Scenario 1:** You have 3 active nodes and wish to add 2 nodes. Specify `NumCacheNodes=5` (3 + 2) and optionally specify two Availability Zones for the two new nodes.

*   **Scenario 2:** You have 3 active nodes and 2 nodes pending creation (from the scenario 1 call) and want to add 1 more node. Specify `NumCacheNodes=6` ((3 + 2) + 1) and optionally specify an Availability Zone for the new node.

*   **Scenario 3:** You want to cancel all pending operations. Specify `NumCacheNodes=3` to cancel all pending operations.

The Availability Zone placement of nodes pending creation cannot be modified. If you wish to cancel any nodes pending creation, add 0 nodes by setting `NumCacheNodes` to the number of current nodes.

If `cross-az` is specified, existing Memcached nodes remain in their current Availability Zone. Only newly created nodes can be located in different Availability Zones. For guidance on how to move existing Memcached nodes to different Availability Zones, see the **Availability Zone Considerations** section of [Cache Node Considerations for Memcached](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheNode.Memcached.html).

**Impact of new add/remove requests upon pending requests**

*   Scenario-1

    *   Pending Action: Delete

    *   New Request: Delete

    *   Result: The new delete, pending or immediate, replaces the pending delete.

*   Scenario-2

    *   Pending Action: Delete

    *   New Request: Create

    *   Result: The new create, pending or immediate, replaces the pending delete.

*   Scenario-3

    *   Pending Action: Create

    *   New Request: Delete

    *   Result: The new delete, pending or immediate, replaces the pending create.

*   Scenario-4

    *   Pending Action: Create

    *   New Request: Create

    *   Result: The new create is added to the pending create.

        **Important**
        > **Important:** If the new create request is **Apply Immediately - Yes**, all creates are performed immediately. If the new create request is **Apply Immediately - No**, all creates are pending.


## `CacheSecurityGroupNames = [::String, ...]`
A list of cache security group names to authorize on this cluster. This change is asynchronously applied as soon as possible.

You can use this parameter only with clusters that are created outside of an Amazon Virtual Private Cloud (Amazon VPC).

Constraints: Must contain no more than 255 alphanumeric characters. Must not be "Default".


## `SecurityGroupIds = [::String, ...]`
Specifies the VPC Security Groups associated with the cluster.

This parameter can be used only with clusters that are created in an Amazon Virtual Private Cloud (Amazon VPC).


## `PreferredMaintenanceWindow = ::String`
Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.

Valid values for `ddd` are:

*   `sun`

*   `mon`

*   `tue`

*   `wed`

*   `thu`

*   `fri`

*   `sat`

Example: `sun:23:00-mon:01:30`


## `NotificationTopicArn = ::String`
The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are sent.

**Note**
> The Amazon SNS topic owner must be same as the cluster owner.


## `CacheParameterGroupName = ::String`
The name of the cache parameter group to apply to this cluster. This change is asynchronously applied as soon as possible for parameters when the `ApplyImmediately` parameter is specified as `true` for this request.


## `NotificationTopicStatus = ::String`
The status of the Amazon SNS notification topic. Notifications are sent only if the status is `active`.

Valid values: `active` | `inactive`


## `ApplyImmediately = ::Bool`
If `true`, this parameter causes the modifications in this request and any pending modifications to be applied, asynchronously and as soon as possible, regardless of the `PreferredMaintenanceWindow` setting for the cluster.

If `false`, changes to the cluster are applied on the next maintenance reboot, or the next failure reboot, whichever occurs first.

**Important**
> If you perform a `ModifyCacheCluster` before a pending modification is applied, the pending modification is replaced by the newer modification.

Valid values: `true` | `false`

Default: `false`


## `EngineVersion = ::String`
The upgraded version of the cache engine to be run on the cache nodes.

**Important:** You can upgrade to a newer engine version (see [Selecting a Cache Engine and Version](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement)), but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cluster and create it anew with the earlier engine version.


## `AutoMinorVersionUpgrade = ::Bool`
This parameter is currently disabled.


## `SnapshotRetentionLimit = ::Int`
The number of days for which ElastiCache retains automatic cluster snapshots before deleting them. For example, if you set `SnapshotRetentionLimit` to 5, a snapshot that was taken today is retained for 5 days before being deleted.

**Note**
> If the value of `SnapshotRetentionLimit` is set to zero (0), backups are turned off.


## `SnapshotWindow = ::String`
The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your cluster.


## `CacheNodeType = ::String`
A valid cache node type that you want to scale this cluster up to.




# Returns

`ModifyCacheClusterResult`

# Exceptions

`InvalidCacheClusterStateFault`, `InvalidCacheSecurityGroupStateFault`, `InsufficientCacheClusterCapacityFault`, `CacheClusterNotFoundFault`, `NodeQuotaForClusterExceededFault`, `NodeQuotaForCustomerExceededFault`, `CacheSecurityGroupNotFoundFault`, `CacheParameterGroupNotFoundFault`, `InvalidVPCNetworkStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheCluster)
"""
@inline modify_cache_cluster(aws::AWSConfig=default_aws_config(); args...) = modify_cache_cluster(aws, args)

@inline modify_cache_cluster(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "ModifyCacheCluster", args)

@inline modify_cache_cluster(args) = modify_cache_cluster(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.modify_cache_parameter_group
    modify_cache_parameter_group([::AWSConfig], arguments::Dict)
    modify_cache_parameter_group([::AWSConfig]; CacheParameterGroupName=, ParameterNameValues=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "ModifyCacheParameterGroup", arguments::Dict)
    elasticache([::AWSConfig], "ModifyCacheParameterGroup", CacheParameterGroupName=, ParameterNameValues=)

# ModifyCacheParameterGroup Operation

Modifies the parameters of a cache parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.

# Arguments

## `CacheParameterGroupName = ::String` -- *Required*
The name of the cache parameter group to modify.


## `ParameterNameValues = [[ ... ], ...]` -- *Required*
An array of parameter names and values for the parameter update. You must supply at least one parameter name and value; subsequent arguments are optional. A maximum of 20 parameters may be modified per request.
```
 ParameterNameValues = [[
        "ParameterName" =>  ::String,
        "ParameterValue" =>  ::String
    ], ...]
```



# Returns

`CacheParameterGroupNameMessage`

# Exceptions

`CacheParameterGroupNotFoundFault`, `InvalidCacheParameterGroupStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheParameterGroup)
"""
@inline modify_cache_parameter_group(aws::AWSConfig=default_aws_config(); args...) = modify_cache_parameter_group(aws, args)

@inline modify_cache_parameter_group(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "ModifyCacheParameterGroup", args)

@inline modify_cache_parameter_group(args) = modify_cache_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.modify_cache_subnet_group
    modify_cache_subnet_group([::AWSConfig], arguments::Dict)
    modify_cache_subnet_group([::AWSConfig]; CacheSubnetGroupName=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "ModifyCacheSubnetGroup", arguments::Dict)
    elasticache([::AWSConfig], "ModifyCacheSubnetGroup", CacheSubnetGroupName=, <keyword arguments>)

# ModifyCacheSubnetGroup Operation

Modifies an existing cache subnet group.

# Arguments

## `CacheSubnetGroupName = ::String` -- *Required*
The name for the cache subnet group. This value is stored as a lowercase string.

Constraints: Must contain no more than 255 alphanumeric characters or hyphens.

Example: `mysubnetgroup`


## `CacheSubnetGroupDescription = ::String`
A description of the cache subnet group.


## `SubnetIds = [::String, ...]`
The EC2 subnet IDs for the cache subnet group.




# Returns

`ModifyCacheSubnetGroupResult`

# Exceptions

`CacheSubnetGroupNotFoundFault`, `CacheSubnetQuotaExceededFault`, `SubnetInUse` or `InvalidSubnet`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheSubnetGroup)
"""
@inline modify_cache_subnet_group(aws::AWSConfig=default_aws_config(); args...) = modify_cache_subnet_group(aws, args)

@inline modify_cache_subnet_group(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "ModifyCacheSubnetGroup", args)

@inline modify_cache_subnet_group(args) = modify_cache_subnet_group(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.modify_replication_group
    modify_replication_group([::AWSConfig], arguments::Dict)
    modify_replication_group([::AWSConfig]; ReplicationGroupId=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "ModifyReplicationGroup", arguments::Dict)
    elasticache([::AWSConfig], "ModifyReplicationGroup", ReplicationGroupId=, <keyword arguments>)

# ModifyReplicationGroup Operation

Modifies the settings for a replication group.

**Important**
> Due to current limitations on Redis (cluster mode disabled), this operation or parameter is not supported on Redis (cluster mode enabled) replication groups.

**Note**
> This operation is valid for Redis only.

# Arguments

## `ReplicationGroupId = ::String` -- *Required*
The identifier of the replication group to modify.


## `ReplicationGroupDescription = ::String`
A description for the replication group. Maximum length is 255 characters.


## `PrimaryClusterId = ::String`
For replication groups with a single primary, if this parameter is specified, ElastiCache promotes the specified cluster in the specified replication group to the primary role. The nodes of all other clusters in the replication group are read replicas.


## `SnapshottingClusterId = ::String`
The cluster ID that is used as the daily snapshot source for the replication group. This parameter cannot be set for Redis (cluster mode enabled) replication groups.


## `AutomaticFailoverEnabled = ::Bool`
Determines whether a read replica is automatically promoted to read/write primary if the existing primary encounters a failure.

Valid values: `true` | `false`

Amazon ElastiCache for Redis does not support Multi-AZ with automatic failover on:

*   Redis versions earlier than 2.8.6.

*   Redis (cluster mode disabled): T1 and T2 cache node types.

*   Redis (cluster mode enabled): T1 node types.


## `CacheSecurityGroupNames = [::String, ...]`
A list of cache security group names to authorize for the clusters in this replication group. This change is asynchronously applied as soon as possible.

This parameter can be used only with replication group containing clusters running outside of an Amazon Virtual Private Cloud (Amazon VPC).

Constraints: Must contain no more than 255 alphanumeric characters. Must not be `Default`.


## `SecurityGroupIds = [::String, ...]`
Specifies the VPC Security Groups associated with the clusters in the replication group.

This parameter can be used only with replication group containing clusters running in an Amazon Virtual Private Cloud (Amazon VPC).


## `PreferredMaintenanceWindow = ::String`
Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.

Valid values for `ddd` are:

*   `sun`

*   `mon`

*   `tue`

*   `wed`

*   `thu`

*   `fri`

*   `sat`

Example: `sun:23:00-mon:01:30`


## `NotificationTopicArn = ::String`
The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are sent.

**Note**
> The Amazon SNS topic owner must be same as the replication group owner.


## `CacheParameterGroupName = ::String`
The name of the cache parameter group to apply to all of the clusters in this replication group. This change is asynchronously applied as soon as possible for parameters when the `ApplyImmediately` parameter is specified as `true` for this request.


## `NotificationTopicStatus = ::String`
The status of the Amazon SNS notification topic for the replication group. Notifications are sent only if the status is `active`.

Valid values: `active` | `inactive`


## `ApplyImmediately = ::Bool`
If `true`, this parameter causes the modifications in this request and any pending modifications to be applied, asynchronously and as soon as possible, regardless of the `PreferredMaintenanceWindow` setting for the replication group.

If `false`, changes to the nodes in the replication group are applied on the next maintenance reboot, or the next failure reboot, whichever occurs first.

Valid values: `true` | `false`

Default: `false`


## `EngineVersion = ::String`
The upgraded version of the cache engine to be run on the clusters in the replication group.

**Important:** You can upgrade to a newer engine version (see [Selecting a Cache Engine and Version](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement)), but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing replication group and create it anew with the earlier engine version.


## `AutoMinorVersionUpgrade = ::Bool`
This parameter is currently disabled.


## `SnapshotRetentionLimit = ::Int`
The number of days for which ElastiCache retains automatic node group (shard) snapshots before deleting them. For example, if you set `SnapshotRetentionLimit` to 5, a snapshot that was taken today is retained for 5 days before being deleted.

**Important** If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.


## `SnapshotWindow = ::String`
The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of the node group (shard) specified by `SnapshottingClusterId`.

Example: `05:00-09:00`

If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.


## `CacheNodeType = ::String`
A valid cache node type that you want to scale this replication group to.


## `NodeGroupId = ::String`
The name of the Node Group (called shard in the console).




# Returns

`ModifyReplicationGroupResult`

# Exceptions

`ReplicationGroupNotFoundFault`, `InvalidReplicationGroupStateFault`, `InvalidCacheClusterStateFault`, `InvalidCacheSecurityGroupStateFault`, `InsufficientCacheClusterCapacityFault`, `CacheClusterNotFoundFault`, `NodeQuotaForClusterExceededFault`, `NodeQuotaForCustomerExceededFault`, `CacheSecurityGroupNotFoundFault`, `CacheParameterGroupNotFoundFault`, `InvalidVPCNetworkStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyReplicationGroup)
"""
@inline modify_replication_group(aws::AWSConfig=default_aws_config(); args...) = modify_replication_group(aws, args)

@inline modify_replication_group(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "ModifyReplicationGroup", args)

@inline modify_replication_group(args) = modify_replication_group(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.modify_replication_group_shard_configuration
    modify_replication_group_shard_configuration([::AWSConfig], arguments::Dict)
    modify_replication_group_shard_configuration([::AWSConfig]; ReplicationGroupId=, NodeGroupCount=, ApplyImmediately=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "ModifyReplicationGroupShardConfiguration", arguments::Dict)
    elasticache([::AWSConfig], "ModifyReplicationGroupShardConfiguration", ReplicationGroupId=, NodeGroupCount=, ApplyImmediately=, <keyword arguments>)

# ModifyReplicationGroupShardConfiguration Operation

Performs horizontal scaling on a Redis (cluster mode enabled) cluster with no downtime. Requires Redis engine version 3.2.10 or newer. For information on upgrading your engine to a newer version, see [Upgrading Engine Versions](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/VersionManagement.html) in the Amazon ElastiCache User Guide.

For more information on ElastiCache for Redis online horizontal scaling, see [ElastiCache for Redis Horizontal Scaling](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/redis-cluster-resharding-online.html)

# Arguments

## `ReplicationGroupId = ::String` -- *Required*
The name of the Redis (cluster mode enabled) cluster (replication group) on which the shards are to be configured.


## `NodeGroupCount = ::Int` -- *Required*
The number of node groups (shards) that results from the modification of the shard configuration.


## `ApplyImmediately = ::Bool` -- *Required*
Indicates that the shard reconfiguration process begins immediately. At present, the only permitted value for this parameter is `true`.

Value: true


## `ReshardingConfiguration = [["PreferredAvailabilityZones" =>  [::String, ...]], ...]`
Specifies the preferred availability zones for each node group in the cluster. If the value of `NodeGroupCount` is greater than the current number of node groups (shards), you can use this parameter to specify the preferred availability zones of the cluster's shards. If you omit this parameter ElastiCache selects availability zones for you.

You can specify this parameter only if the value of `NodeGroupCount` is greater than the current number of node groups (shards).


## `NodeGroupsToRemove = [::String, ...]`
If the value of `NodeGroupCount` is less than the current number of node groups (shards), `NodeGroupsToRemove` is a required list of node group ids to remove from the cluster.




# Returns

`ModifyReplicationGroupShardConfigurationResult`

# Exceptions

`ReplicationGroupNotFoundFault`, `InvalidReplicationGroupStateFault`, `InvalidCacheClusterStateFault`, `InvalidVPCNetworkStateFault`, `InsufficientCacheClusterCapacityFault`, `NodeGroupsPerReplicationGroupQuotaExceededFault`, `NodeQuotaForCustomerExceededFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyReplicationGroupShardConfiguration)
"""
@inline modify_replication_group_shard_configuration(aws::AWSConfig=default_aws_config(); args...) = modify_replication_group_shard_configuration(aws, args)

@inline modify_replication_group_shard_configuration(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "ModifyReplicationGroupShardConfiguration", args)

@inline modify_replication_group_shard_configuration(args) = modify_replication_group_shard_configuration(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.purchase_reserved_cache_nodes_offering
    purchase_reserved_cache_nodes_offering([::AWSConfig], arguments::Dict)
    purchase_reserved_cache_nodes_offering([::AWSConfig]; ReservedCacheNodesOfferingId=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "PurchaseReservedCacheNodesOffering", arguments::Dict)
    elasticache([::AWSConfig], "PurchaseReservedCacheNodesOffering", ReservedCacheNodesOfferingId=, <keyword arguments>)

# PurchaseReservedCacheNodesOffering Operation

Allows you to purchase a reserved cache node offering.

# Arguments

## `ReservedCacheNodesOfferingId = ::String` -- *Required*
The ID of the reserved cache node offering to purchase.

Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`


## `ReservedCacheNodeId = ::String`
A customer-specified identifier to track this reservation.

**Note**
> The Reserved Cache Node ID is an unique customer-specified identifier to track this reservation. If this parameter is not specified, ElastiCache automatically generates an identifier for the reservation.

Example: myreservationID


## `CacheNodeCount = ::Int`
The number of cache node instances to reserve.

Default: `1`




# Returns

`PurchaseReservedCacheNodesOfferingResult`

# Exceptions

`ReservedCacheNodesOfferingNotFoundFault`, `ReservedCacheNodeAlreadyExistsFault`, `ReservedCacheNodeQuotaExceededFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/PurchaseReservedCacheNodesOffering)
"""
@inline purchase_reserved_cache_nodes_offering(aws::AWSConfig=default_aws_config(); args...) = purchase_reserved_cache_nodes_offering(aws, args)

@inline purchase_reserved_cache_nodes_offering(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "PurchaseReservedCacheNodesOffering", args)

@inline purchase_reserved_cache_nodes_offering(args) = purchase_reserved_cache_nodes_offering(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.reboot_cache_cluster
    reboot_cache_cluster([::AWSConfig], arguments::Dict)
    reboot_cache_cluster([::AWSConfig]; CacheClusterId=, CacheNodeIdsToReboot=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "RebootCacheCluster", arguments::Dict)
    elasticache([::AWSConfig], "RebootCacheCluster", CacheClusterId=, CacheNodeIdsToReboot=)

# RebootCacheCluster Operation

Reboots some, or all, of the cache nodes within a provisioned cluster. This operation applies any modified cache parameter groups to the cluster. The reboot operation takes place as soon as possible, and results in a momentary outage to the cluster. During the reboot, the cluster status is set to REBOOTING.

The reboot causes the contents of the cache (for each cache node being rebooted) to be lost.

When the reboot is complete, a cluster event is created.

Rebooting a cluster is currently supported on Memcached and Redis (cluster mode disabled) clusters. Rebooting is not supported on Redis (cluster mode enabled) clusters.

If you make changes to parameters that require a Redis (cluster mode enabled) cluster reboot for the changes to be applied, see [Rebooting a Cluster](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Clusters.Rebooting.htm) for an alternate process.

# Arguments

## `CacheClusterId = ::String` -- *Required*
The cluster identifier. This parameter is stored as a lowercase string.


## `CacheNodeIdsToReboot = [::String, ...]` -- *Required*
A list of cache node IDs to reboot. A node ID is a numeric identifier (0001, 0002, etc.). To reboot an entire cluster, specify all of the cache node IDs.




# Returns

`RebootCacheClusterResult`

# Exceptions

`InvalidCacheClusterStateFault` or `CacheClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RebootCacheCluster)
"""
@inline reboot_cache_cluster(aws::AWSConfig=default_aws_config(); args...) = reboot_cache_cluster(aws, args)

@inline reboot_cache_cluster(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "RebootCacheCluster", args)

@inline reboot_cache_cluster(args) = reboot_cache_cluster(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.remove_tags_from_resource
    remove_tags_from_resource([::AWSConfig], arguments::Dict)
    remove_tags_from_resource([::AWSConfig]; ResourceName=, TagKeys=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "RemoveTagsFromResource", arguments::Dict)
    elasticache([::AWSConfig], "RemoveTagsFromResource", ResourceName=, TagKeys=)

# RemoveTagsFromResource Operation

Removes the tags identified by the `TagKeys` list from the named resource.

# Arguments

## `ResourceName = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource from which you want the tags removed, for example `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


## `TagKeys = [::String, ...]` -- *Required*
A list of `TagKeys` identifying the tags you want removed from the named resource.




# Returns

`TagListMessage`

# Exceptions

`CacheClusterNotFoundFault`, `SnapshotNotFoundFault`, `InvalidARNFault` or `TagNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RemoveTagsFromResource)
"""
@inline remove_tags_from_resource(aws::AWSConfig=default_aws_config(); args...) = remove_tags_from_resource(aws, args)

@inline remove_tags_from_resource(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "RemoveTagsFromResource", args)

@inline remove_tags_from_resource(args) = remove_tags_from_resource(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.reset_cache_parameter_group
    reset_cache_parameter_group([::AWSConfig], arguments::Dict)
    reset_cache_parameter_group([::AWSConfig]; CacheParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "ResetCacheParameterGroup", arguments::Dict)
    elasticache([::AWSConfig], "ResetCacheParameterGroup", CacheParameterGroupName=, <keyword arguments>)

# ResetCacheParameterGroup Operation

Modifies the parameters of a cache parameter group to the engine or system default value. You can reset specific parameters by submitting a list of parameter names. To reset the entire cache parameter group, specify the `ResetAllParameters` and `CacheParameterGroupName` parameters.

# Arguments

## `CacheParameterGroupName = ::String` -- *Required*
The name of the cache parameter group to reset.


## `ResetAllParameters = ::Bool`
If `true`, all parameters in the cache parameter group are reset to their default values. If `false`, only the parameters listed by `ParameterNameValues` are reset to their default values.

Valid values: `true` | `false`


## `ParameterNameValues = [[ ... ], ...]`
An array of parameter names to reset to their default values. If `ResetAllParameters` is `true`, do not use `ParameterNameValues`. If `ResetAllParameters` is `false`, you must specify the name of at least one parameter to reset.
```
 ParameterNameValues = [[
        "ParameterName" =>  ::String,
        "ParameterValue" =>  ::String
    ], ...]
```



# Returns

`CacheParameterGroupNameMessage`

# Exceptions

`InvalidCacheParameterGroupStateFault`, `CacheParameterGroupNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ResetCacheParameterGroup)
"""
@inline reset_cache_parameter_group(aws::AWSConfig=default_aws_config(); args...) = reset_cache_parameter_group(aws, args)

@inline reset_cache_parameter_group(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "ResetCacheParameterGroup", args)

@inline reset_cache_parameter_group(args) = reset_cache_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.revoke_cache_security_group_ingress
    revoke_cache_security_group_ingress([::AWSConfig], arguments::Dict)
    revoke_cache_security_group_ingress([::AWSConfig]; CacheSecurityGroupName=, EC2SecurityGroupName=, EC2SecurityGroupOwnerId=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "RevokeCacheSecurityGroupIngress", arguments::Dict)
    elasticache([::AWSConfig], "RevokeCacheSecurityGroupIngress", CacheSecurityGroupName=, EC2SecurityGroupName=, EC2SecurityGroupOwnerId=)

# RevokeCacheSecurityGroupIngress Operation

Revokes ingress from a cache security group. Use this operation to disallow access from an Amazon EC2 security group that had been previously authorized.

# Arguments

## `CacheSecurityGroupName = ::String` -- *Required*
The name of the cache security group to revoke ingress from.


## `EC2SecurityGroupName = ::String` -- *Required*
The name of the Amazon EC2 security group to revoke access from.


## `EC2SecurityGroupOwnerId = ::String` -- *Required*
The AWS account number of the Amazon EC2 security group owner. Note that this is not the same thing as an AWS access key ID - you must provide a valid AWS account number for this parameter.




# Returns

`RevokeCacheSecurityGroupIngressResult`

# Exceptions

`CacheSecurityGroupNotFoundFault`, `AuthorizationNotFoundFault`, `InvalidCacheSecurityGroupStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RevokeCacheSecurityGroupIngress)
"""
@inline revoke_cache_security_group_ingress(aws::AWSConfig=default_aws_config(); args...) = revoke_cache_security_group_ingress(aws, args)

@inline revoke_cache_security_group_ingress(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "RevokeCacheSecurityGroupIngress", args)

@inline revoke_cache_security_group_ingress(args) = revoke_cache_security_group_ingress(default_aws_config(), args)


"""
    using AWSSDK.ElastiCache.test_failover
    test_failover([::AWSConfig], arguments::Dict)
    test_failover([::AWSConfig]; ReplicationGroupId=, NodeGroupId=)

    using AWSCore.Services.elasticache
    elasticache([::AWSConfig], "TestFailover", arguments::Dict)
    elasticache([::AWSConfig], "TestFailover", ReplicationGroupId=, NodeGroupId=)

# TestFailover Operation

Represents the input of a `TestFailover` operation which test automatic failover on a specified node group (called shard in the console) in a replication group (called cluster in the console).

**Note the following**

*   A customer can use this operation to test automatic failover on up to 5 shards (called node groups in the ElastiCache API and AWS CLI) in any rolling 24-hour period.

*   If calling this operation on shards in different clusters (called replication groups in the API and CLI), the calls can be made concurrently.

*   If calling this operation multiple times on different shards in the same Redis (cluster mode enabled) replication group, the first node replacement must complete before a subsequent call can be made.

*   To determine whether the node replacement is complete you can check Events using the Amazon ElastiCache console, the AWS CLI, or the ElastiCache API. Look for the following automatic failover related events, listed here in order of occurrance:

    1.  Replication group message: `Test Failover API called for node group <node-group-id>`

    2.  Cache cluster message: `Failover from master node <primary-node-id> to replica node <node-id> completed`

    3.  Replication group message: `Failover from master node <primary-node-id> to replica node <node-id> completed`

    4.  Cache cluster message: `Recovering cache nodes <node-id>`

    5.  Cache cluster message: `Finished recovery for cache nodes <node-id>`

    For more information see:

    *   [Viewing ElastiCache Events](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/ECEvents.Viewing.html) in the *ElastiCache User Guide*

    *   [DescribeEvents](http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DescribeEvents.html) in the ElastiCache API Reference

Also see, [Testing Multi-AZ with Automatic Failover](http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/AutoFailover.html#auto-failover-test) in the *ElastiCache User Guide*.

# Arguments

## `ReplicationGroupId = ::String` -- *Required*
The name of the replication group (console: cluster) whose automatic failover is being tested by this operation.


## `NodeGroupId = ::String` -- *Required*
The name of the node group (called shard in the console) in this replication group on which automatic failover is to be tested. You may test automatic failover on up to 5 node groups in any rolling 24-hour period.




# Returns

`TestFailoverResult`

# Exceptions

`APICallRateForCustomerExceededFault`, `InvalidCacheClusterStateFault`, `InvalidReplicationGroupStateFault`, `NodeGroupNotFoundFault`, `ReplicationGroupNotFoundFault`, `TestFailoverNotAvailableFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TestFailover)
"""
@inline test_failover(aws::AWSConfig=default_aws_config(); args...) = test_failover(aws, args)

@inline test_failover(aws::AWSConfig, args) = AWSCore.Services.elasticache(aws, "TestFailover", args)

@inline test_failover(args) = test_failover(default_aws_config(), args)




end # module ElastiCache


#==============================================================================#
# End of file
#==============================================================================#
