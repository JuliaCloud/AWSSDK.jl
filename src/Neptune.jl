#==============================================================================#
# Neptune.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/neptune-2014-10-31.normal.json
#==============================================================================#

__precompile__()

module Neptune

using AWSCore


"""
    using AWSSDK.Neptune.add_role_to_dbcluster
    add_role_to_dbcluster([::AWSConfig], arguments::Dict)
    add_role_to_dbcluster([::AWSConfig]; DBClusterIdentifier=, RoleArn=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "AddRoleToDBCluster", arguments::Dict)
    neptune([::AWSConfig], "AddRoleToDBCluster", DBClusterIdentifier=, RoleArn=)

# AddRoleToDBCluster Operation

Associates an Identity and Access Management (IAM) role from an Neptune DB cluster.

# Arguments

## `DBClusterIdentifier = ::String` -- *Required*
The name of the DB cluster to associate the IAM role with.


## `RoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM role to associate with the Neptune DB cluster, for example `arn:aws:iam::123456789012:role/NeptuneAccessRole`.




# Exceptions

`DBClusterNotFoundFault`, `DBClusterRoleAlreadyExistsFault`, `InvalidDBClusterStateFault` or `DBClusterRoleQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/AddRoleToDBCluster)
"""
@inline add_role_to_dbcluster(aws::AWSConfig=default_aws_config(); args...) = add_role_to_dbcluster(aws, args)

@inline add_role_to_dbcluster(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "AddRoleToDBCluster", args)

@inline add_role_to_dbcluster(args) = add_role_to_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.Neptune.add_source_identifier_to_subscription
    add_source_identifier_to_subscription([::AWSConfig], arguments::Dict)
    add_source_identifier_to_subscription([::AWSConfig]; SubscriptionName=, SourceIdentifier=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "AddSourceIdentifierToSubscription", arguments::Dict)
    neptune([::AWSConfig], "AddSourceIdentifierToSubscription", SubscriptionName=, SourceIdentifier=)

# AddSourceIdentifierToSubscription Operation

Adds a source identifier to an existing event notification subscription.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the event notification subscription you want to add a source identifier to.


## `SourceIdentifier = ::String` -- *Required*
The identifier of the event source to be added.

Constraints:

*   If the source type is a DB instance, then a `DBInstanceIdentifier` must be supplied.

*   If the source type is a DB security group, a `DBSecurityGroupName` must be supplied.

*   If the source type is a DB parameter group, a `DBParameterGroupName` must be supplied.

*   If the source type is a DB snapshot, a `DBSnapshotIdentifier` must be supplied.




# Returns

`AddSourceIdentifierToSubscriptionResult`

# Exceptions

`SubscriptionNotFoundFault` or `SourceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/AddSourceIdentifierToSubscription)
"""
@inline add_source_identifier_to_subscription(aws::AWSConfig=default_aws_config(); args...) = add_source_identifier_to_subscription(aws, args)

@inline add_source_identifier_to_subscription(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "AddSourceIdentifierToSubscription", args)

@inline add_source_identifier_to_subscription(args) = add_source_identifier_to_subscription(default_aws_config(), args)


"""
    using AWSSDK.Neptune.add_tags_to_resource
    add_tags_to_resource([::AWSConfig], arguments::Dict)
    add_tags_to_resource([::AWSConfig]; ResourceName=, Tags=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "AddTagsToResource", arguments::Dict)
    neptune([::AWSConfig], "AddTagsToResource", ResourceName=, Tags=)

# AddTagsToResource Operation

Adds metadata tags to an Amazon Neptune resource. These tags can also be used with cost allocation reporting to track cost associated with Amazon Neptune resources, or used in a Condition statement in an IAM policy for Amazon Neptune.

# Arguments

## `ResourceName = ::String` -- *Required*
The Amazon Neptune resource that the tags are added to. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see [Constructing an Amazon Resource Name (ARN)](http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).


## `Tags = [[ ... ], ...]` -- *Required*
The tags to be assigned to the Amazon Neptune resource.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Exceptions

`DBInstanceNotFoundFault`, `DBSnapshotNotFoundFault` or `DBClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/AddTagsToResource)
"""
@inline add_tags_to_resource(aws::AWSConfig=default_aws_config(); args...) = add_tags_to_resource(aws, args)

@inline add_tags_to_resource(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "AddTagsToResource", args)

@inline add_tags_to_resource(args) = add_tags_to_resource(default_aws_config(), args)


"""
    using AWSSDK.Neptune.apply_pending_maintenance_action
    apply_pending_maintenance_action([::AWSConfig], arguments::Dict)
    apply_pending_maintenance_action([::AWSConfig]; ResourceIdentifier=, ApplyAction=, OptInType=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "ApplyPendingMaintenanceAction", arguments::Dict)
    neptune([::AWSConfig], "ApplyPendingMaintenanceAction", ResourceIdentifier=, ApplyAction=, OptInType=)

# ApplyPendingMaintenanceAction Operation

Applies a pending maintenance action to a resource (for example, to a DB instance).

# Arguments

## `ResourceIdentifier = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource that the pending maintenance action applies to. For information about creating an ARN, see [Constructing an Amazon Resource Name (ARN)](http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).


## `ApplyAction = ::String` -- *Required*
The pending maintenance action to apply to this resource.

Valid values: `system-update`, `db-upgrade`


## `OptInType = ::String` -- *Required*
A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in request of type `immediate` can't be undone.

Valid values:

*   `immediate` - Apply the maintenance action immediately.

*   `next-maintenance` - Apply the maintenance action during the next maintenance window for the resource.

*   `undo-opt-in` - Cancel any existing `next-maintenance` opt-in requests.




# Returns

`ApplyPendingMaintenanceActionResult`

# Exceptions

`ResourceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ApplyPendingMaintenanceAction)
"""
@inline apply_pending_maintenance_action(aws::AWSConfig=default_aws_config(); args...) = apply_pending_maintenance_action(aws, args)

@inline apply_pending_maintenance_action(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "ApplyPendingMaintenanceAction", args)

@inline apply_pending_maintenance_action(args) = apply_pending_maintenance_action(default_aws_config(), args)


"""
    using AWSSDK.Neptune.copy_dbcluster_parameter_group
    copy_dbcluster_parameter_group([::AWSConfig], arguments::Dict)
    copy_dbcluster_parameter_group([::AWSConfig]; SourceDBClusterParameterGroupIdentifier=, TargetDBClusterParameterGroupIdentifier=, TargetDBClusterParameterGroupDescription=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "CopyDBClusterParameterGroup", arguments::Dict)
    neptune([::AWSConfig], "CopyDBClusterParameterGroup", SourceDBClusterParameterGroupIdentifier=, TargetDBClusterParameterGroupIdentifier=, TargetDBClusterParameterGroupDescription=, <keyword arguments>)

# CopyDBClusterParameterGroup Operation

Copies the specified DB cluster parameter group.

# Arguments

## `SourceDBClusterParameterGroupIdentifier = ::String` -- *Required*
The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group. For information about creating an ARN, see [Constructing an Amazon Resource Name (ARN)](http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).

Constraints:

*   Must specify a valid DB cluster parameter group.

*   If the source DB cluster parameter group is in the same AWS Region as the copy, specify a valid DB parameter group identifier, for example `my-db-cluster-param-group`, or a valid ARN.

*   If the source DB parameter group is in a different AWS Region than the copy, specify a valid DB cluster parameter group ARN, for example `arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1`.


## `TargetDBClusterParameterGroupIdentifier = ::String` -- *Required*
The identifier for the copied DB cluster parameter group.

Constraints:

*   Cannot be null, empty, or blank

*   Must contain from 1 to 255 letters, numbers, or hyphens

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

Example: `my-cluster-param-group1`


## `TargetDBClusterParameterGroupDescription = ::String` -- *Required*
A description for the copied DB cluster parameter group.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CopyDBClusterParameterGroupResult`

# Exceptions

`DBParameterGroupNotFoundFault`, `DBParameterGroupQuotaExceededFault` or `DBParameterGroupAlreadyExistsFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CopyDBClusterParameterGroup)
"""
@inline copy_dbcluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = copy_dbcluster_parameter_group(aws, args)

@inline copy_dbcluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "CopyDBClusterParameterGroup", args)

@inline copy_dbcluster_parameter_group(args) = copy_dbcluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.copy_dbcluster_snapshot
    copy_dbcluster_snapshot([::AWSConfig], arguments::Dict)
    copy_dbcluster_snapshot([::AWSConfig]; SourceDBClusterSnapshotIdentifier=, TargetDBClusterSnapshotIdentifier=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "CopyDBClusterSnapshot", arguments::Dict)
    neptune([::AWSConfig], "CopyDBClusterSnapshot", SourceDBClusterSnapshotIdentifier=, TargetDBClusterSnapshotIdentifier=, <keyword arguments>)

# CopyDBClusterSnapshot Operation

Copies a snapshot of a DB cluster.

To copy a DB cluster snapshot from a shared manual DB cluster snapshot, `SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name (ARN) of the shared DB cluster snapshot.

You can copy an encrypted DB cluster snapshot from another AWS Region. In that case, the AWS Region where you call the `CopyDBClusterSnapshot` action is the destination AWS Region for the encrypted DB cluster snapshot to be copied to. To copy an encrypted DB cluster snapshot from another AWS Region, you must provide the following values:

*   `KmsKeyId` - The AWS Key Management System (AWS KMS) key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region.

*   `PreSignedUrl` - A URL that contains a Signature Version 4 signed request for the `CopyDBClusterSnapshot` action to be called in the source AWS Region where the DB cluster snapshot is copied from. The pre-signed URL must be a valid request for the `CopyDBClusterSnapshot` API action that can be executed in the source AWS Region that contains the encrypted DB cluster snapshot to be copied.

    The pre-signed URL request must contain the following parameter values:

    *   `KmsKeyId` - The KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. This is the same identifier for both the `CopyDBClusterSnapshot` action that is called in the destination AWS Region, and the action contained in the pre-signed URL.

    *   `DestinationRegion` - The name of the AWS Region that the DB cluster snapshot will be created in.

    *   `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 AWS Region, then your `SourceDBClusterSnapshotIdentifier` looks like the following example: `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:neptune-cluster1-snapshot-20161115`.

    To learn how to generate a Signature Version 4 signed request, see [Authenticating Requests: Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) and [Signature Version 4 Signing Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

*   `TargetDBClusterSnapshotIdentifier` - The identifier for the new copy of the DB cluster snapshot in the destination AWS Region.

*   `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the ARN format for the source AWS Region and is the same value as the `SourceDBClusterSnapshotIdentifier` in the pre-signed URL.

To cancel the copy operation once it is in progress, delete the target DB cluster snapshot identified by `TargetDBClusterSnapshotIdentifier` while that DB cluster snapshot is in "copying" status.

# Arguments

## `SourceDBClusterSnapshotIdentifier = ::String` -- *Required*
The identifier of the DB cluster snapshot to copy. This parameter is not case-sensitive.

You can't copy an encrypted, shared DB cluster snapshot from one AWS Region to another.

Constraints:

*   Must specify a valid system snapshot in the "available" state.

*   If the source snapshot is in the same AWS Region as the copy, specify a valid DB snapshot identifier.

*   If the source snapshot is in a different AWS Region than the copy, specify a valid DB cluster snapshot ARN.

Example: `my-cluster-snapshot1`


## `TargetDBClusterSnapshotIdentifier = ::String` -- *Required*
The identifier of the new DB cluster snapshot to create from the source DB cluster snapshot. This parameter is not case-sensitive.

Constraints:

*   Must contain from 1 to 63 letters, numbers, or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

Example: `my-cluster-snapshot2`


## `KmsKeyId = ::String`
The AWS AWS KMS key ID for an encrypted DB cluster snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.

If you copy an unencrypted DB cluster snapshot and specify a value for the `KmsKeyId` parameter, Amazon Neptune encrypts the target DB cluster snapshot using the specified KMS encryption key.

If you copy an encrypted DB cluster snapshot from your AWS account, you can specify a value for `KmsKeyId` to encrypt the copy with a new KMS encryption key. If you don't specify a value for `KmsKeyId`, then the copy of the DB cluster snapshot is encrypted with the same KMS key as the source DB cluster snapshot.

If you copy an encrypted DB cluster snapshot that is shared from another AWS account, then you must specify a value for `KmsKeyId`.

To copy an encrypted DB cluster snapshot to another AWS Region, you must set `KmsKeyId` to the KMS key ID you want to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. KMS encryption keys are specific to the AWS Region that they are created in, and you can't use encryption keys from one AWS Region in another AWS Region.


## `PreSignedUrl = ::String`
The URL that contains a Signature Version 4 signed request for the `CopyDBClusterSnapshot` API action in the AWS Region that contains the source DB cluster snapshot to copy. The `PreSignedUrl` parameter must be used when copying an encrypted DB cluster snapshot from another AWS Region.

The pre-signed URL must be a valid request for the `CopyDBSClusterSnapshot` API action that can be executed in the source AWS Region that contains the encrypted DB cluster snapshot to be copied. The pre-signed URL request must contain the following parameter values:

*   `KmsKeyId` - The AWS KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. This is the same identifier for both the `CopyDBClusterSnapshot` action that is called in the destination AWS Region, and the action contained in the pre-signed URL.

*   `DestinationRegion` - The name of the AWS Region that the DB cluster snapshot will be created in.

*   `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 AWS Region, then your `SourceDBClusterSnapshotIdentifier` looks like the following example: `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:neptune-cluster1-snapshot-20161115`.

To learn how to generate a Signature Version 4 signed request, see [Authenticating Requests: Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) and [Signature Version 4 Signing Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).


## `CopyTags = ::Bool`
True to copy all tags from the source DB cluster snapshot to the target DB cluster snapshot, and otherwise false. The default is false.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CopyDBClusterSnapshotResult`

# Exceptions

`DBClusterSnapshotAlreadyExistsFault`, `DBClusterSnapshotNotFoundFault`, `InvalidDBClusterStateFault`, `InvalidDBClusterSnapshotStateFault`, `SnapshotQuotaExceededFault` or `KMSKeyNotAccessibleFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CopyDBClusterSnapshot)
"""
@inline copy_dbcluster_snapshot(aws::AWSConfig=default_aws_config(); args...) = copy_dbcluster_snapshot(aws, args)

@inline copy_dbcluster_snapshot(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "CopyDBClusterSnapshot", args)

@inline copy_dbcluster_snapshot(args) = copy_dbcluster_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Neptune.copy_dbparameter_group
    copy_dbparameter_group([::AWSConfig], arguments::Dict)
    copy_dbparameter_group([::AWSConfig]; SourceDBParameterGroupIdentifier=, TargetDBParameterGroupIdentifier=, TargetDBParameterGroupDescription=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "CopyDBParameterGroup", arguments::Dict)
    neptune([::AWSConfig], "CopyDBParameterGroup", SourceDBParameterGroupIdentifier=, TargetDBParameterGroupIdentifier=, TargetDBParameterGroupDescription=, <keyword arguments>)

# CopyDBParameterGroup Operation

Copies the specified DB parameter group.

# Arguments

## `SourceDBParameterGroupIdentifier = ::String` -- *Required*
The identifier or ARN for the source DB parameter group. For information about creating an ARN, see [Constructing an Amazon Resource Name (ARN)](http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).

Constraints:

*   Must specify a valid DB parameter group.

*   Must specify a valid DB parameter group identifier, for example `my-db-param-group`, or a valid ARN.


## `TargetDBParameterGroupIdentifier = ::String` -- *Required*
The identifier for the copied DB parameter group.

Constraints:

*   Cannot be null, empty, or blank

*   Must contain from 1 to 255 letters, numbers, or hyphens

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

Example: `my-db-parameter-group`


## `TargetDBParameterGroupDescription = ::String` -- *Required*
A description for the copied DB parameter group.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CopyDBParameterGroupResult`

# Exceptions

`DBParameterGroupNotFoundFault`, `DBParameterGroupAlreadyExistsFault` or `DBParameterGroupQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CopyDBParameterGroup)
"""
@inline copy_dbparameter_group(aws::AWSConfig=default_aws_config(); args...) = copy_dbparameter_group(aws, args)

@inline copy_dbparameter_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "CopyDBParameterGroup", args)

@inline copy_dbparameter_group(args) = copy_dbparameter_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.create_dbcluster
    create_dbcluster([::AWSConfig], arguments::Dict)
    create_dbcluster([::AWSConfig]; DBClusterIdentifier=, Engine=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "CreateDBCluster", arguments::Dict)
    neptune([::AWSConfig], "CreateDBCluster", DBClusterIdentifier=, Engine=, <keyword arguments>)

# CreateDBCluster Operation

Creates a new Amazon Neptune DB cluster.

You can use the `ReplicationSourceIdentifier` parameter to create the DB cluster as a Read Replica of another DB cluster or Amazon Neptune DB instance. For cross-region replication where the DB cluster identified by `ReplicationSourceIdentifier` is encrypted, you must also specify the `PreSignedUrl` parameter.

# Arguments

## `AvailabilityZones = [::String, ...]`
A list of EC2 Availability Zones that instances in the DB cluster can be created in.


## `BackupRetentionPeriod = ::Int`
The number of days for which automated backups are retained. You must specify a minimum value of 1.

Default: 1

Constraints:

*   Must be a value from 1 to 35


## `CharacterSetName = ::String`
A value that indicates that the DB cluster should be associated with the specified CharacterSet.


## `DatabaseName = ::String`
The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon Neptune will not create a database in the DB cluster you are creating.


## `DBClusterIdentifier = ::String` -- *Required*
The DB cluster identifier. This parameter is stored as a lowercase string.

Constraints:

*   Must contain from 1 to 63 letters, numbers, or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

Example: `my-cluster1`


## `DBClusterParameterGroupName = ::String`
The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, the default is used.

Constraints:

*   If supplied, must match the name of an existing DBClusterParameterGroup.


## `VpcSecurityGroupIds = [::String, ...]`
A list of EC2 VPC security groups to associate with this DB cluster.


## `DBSubnetGroupName = ::String`
A DB subnet group to associate with this DB cluster.

Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.

Example: `mySubnetgroup`


## `Engine = ::String` -- *Required*
The name of the database engine to be used for this DB cluster.

Valid Values: `neptune`


## `EngineVersion = ::String`
The version number of the database engine to use.

Example: `1.0.1`


## `Port = ::Int`
The port number on which the instances in the DB cluster accept connections.

Default: `8182`


## `MasterUsername = ::String`
The name of the master user for the DB cluster.

Constraints:

*   Must be 1 to 16 letters or numbers.

*   First character must be a letter.

*   Cannot be a reserved word for the chosen database engine.


## `MasterUserPassword = ::String`
The password for the master database user. This password can contain any printable ASCII character except "/", \"\"\", or "@".

Constraints: Must contain from 8 to 41 characters.


## `OptionGroupName = ::String`
A value that indicates that the DB cluster should be associated with the specified option group.

Permanent options can't be removed from an option group. The option group can't be removed from a DB cluster once it is associated with a DB cluster.


## `PreferredBackupWindow = ::String`
The daily time range during which automated backups are created if automated backups are enabled using the `BackupRetentionPeriod` parameter.

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see [Adjusting the Preferred Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html) in the *Amazon Neptune User Guide.*

Constraints:

*   Must be in the format `hh24:mi-hh24:mi`.

*   Must be in Universal Coordinated Time (UTC).

*   Must not conflict with the preferred maintenance window.

*   Must be at least 30 minutes.


## `PreferredMaintenanceWindow = ::String`
The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).

Format: `ddd:hh24:mi-ddd:hh24:mi`

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see [Adjusting the Preferred Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html) in the *Amazon Neptune User Guide.*

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.


## `ReplicationSourceIdentifier = ::String`
The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster is created as a Read Replica.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `StorageEncrypted = ::Bool`
Specifies whether the DB cluster is encrypted.


## `KmsKeyId = ::String`
The AWS KMS key identifier for an encrypted DB cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.

If an encryption key is not specified in `KmsKeyId`:

*   If `ReplicationSourceIdentifier` identifies an encrypted source, then Amazon Neptune will use the encryption key used to encrypt the source. Otherwise, Amazon Neptune will use your default encryption key.

*   If the `StorageEncrypted` parameter is true and `ReplicationSourceIdentifier` is not specified, then Amazon Neptune will use your default encryption key.

AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.

If you create a Read Replica of an encrypted DB cluster in another AWS Region, you must set `KmsKeyId` to a KMS key ID that is valid in the destination AWS Region. This key is used to encrypt the Read Replica in that AWS Region.


## `PreSignedUrl = ::String`
A URL that contains a Signature Version 4 signed request for the `CreateDBCluster` action to be called in the source AWS Region where the DB cluster is replicated from. You only need to specify `PreSignedUrl` when you are performing cross-region replication from an encrypted DB cluster.

The pre-signed URL must be a valid request for the `CreateDBCluster` API action that can be executed in the source AWS Region that contains the encrypted DB cluster to be copied.

The pre-signed URL request must contain the following parameter values:

*   `KmsKeyId` - The AWS KMS key identifier for the key to use to encrypt the copy of the DB cluster in the destination AWS Region. This should refer to the same KMS key for both the `CreateDBCluster` action that is called in the destination AWS Region, and the action contained in the pre-signed URL.

*   `DestinationRegion` - The name of the AWS Region that Read Replica will be created in.

*   `ReplicationSourceIdentifier` - The DB cluster identifier for the encrypted DB cluster to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster from the us-west-2 AWS Region, then your `ReplicationSourceIdentifier` would look like Example: `arn:aws:rds:us-west-2:123456789012:cluster:neptune-cluster1`.

To learn how to generate a Signature Version 4 signed request, see [Authenticating Requests: Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) and [Signature Version 4 Signing Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

Default: `false`




# Returns

`CreateDBClusterResult`

# Exceptions

`DBClusterAlreadyExistsFault`, `InsufficientStorageClusterCapacityFault`, `DBClusterQuotaExceededFault`, `StorageQuotaExceededFault`, `DBSubnetGroupNotFoundFault`, `InvalidVPCNetworkStateFault`, `InvalidDBClusterStateFault`, `InvalidDBSubnetGroupStateFault`, `InvalidSubnet`, `InvalidDBInstanceStateFault`, `DBClusterParameterGroupNotFoundFault`, `KMSKeyNotAccessibleFault`, `DBClusterNotFoundFault`, `DBInstanceNotFoundFault` or `DBSubnetGroupDoesNotCoverEnoughAZs`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBCluster)
"""
@inline create_dbcluster(aws::AWSConfig=default_aws_config(); args...) = create_dbcluster(aws, args)

@inline create_dbcluster(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "CreateDBCluster", args)

@inline create_dbcluster(args) = create_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.Neptune.create_dbcluster_parameter_group
    create_dbcluster_parameter_group([::AWSConfig], arguments::Dict)
    create_dbcluster_parameter_group([::AWSConfig]; DBClusterParameterGroupName=, DBParameterGroupFamily=, Description=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "CreateDBClusterParameterGroup", arguments::Dict)
    neptune([::AWSConfig], "CreateDBClusterParameterGroup", DBClusterParameterGroupName=, DBParameterGroupFamily=, Description=, <keyword arguments>)

# CreateDBClusterParameterGroup Operation

Creates a new DB cluster parameter group.

Parameters in a DB cluster parameter group apply to all of the instances in a DB cluster.

A DB cluster parameter group is initially created with the default parameters for the database engine used by instances in the DB cluster. To provide custom values for any of the parameters, you must modify the group after creating it using [ModifyDBClusterParameterGroup](@ref). Once you've created a DB cluster parameter group, you need to associate it with your DB cluster using [ModifyDBCluster](@ref). When you associate a new DB cluster parameter group with a running DB cluster, you need to reboot the DB instances in the DB cluster without failover for the new DB cluster parameter group and associated settings to take effect.

**Important**
> After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the DB cluster parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the `character_set_database` parameter. You can use the *Parameter Groups* option of the [Amazon Neptune console](https://console.aws.amazon.com/rds/) or the [DescribeDBClusterParameters](@ref) command to verify that your DB cluster parameter group has been created or modified.

# Arguments

## `DBClusterParameterGroupName = ::String` -- *Required*
The name of the DB cluster parameter group.

Constraints:

*   Must match the name of an existing DBClusterParameterGroup.

**Note**
> This value is stored as a lowercase string.


## `DBParameterGroupFamily = ::String` -- *Required*
The DB cluster parameter group family name. A DB cluster parameter group can be associated with one and only one DB cluster parameter group family, and can be applied only to a DB cluster running a database engine and engine version compatible with that DB cluster parameter group family.


## `Description = ::String` -- *Required*
The description for the DB cluster parameter group.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateDBClusterParameterGroupResult`

# Exceptions

`DBParameterGroupQuotaExceededFault` or `DBParameterGroupAlreadyExistsFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBClusterParameterGroup)
"""
@inline create_dbcluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = create_dbcluster_parameter_group(aws, args)

@inline create_dbcluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "CreateDBClusterParameterGroup", args)

@inline create_dbcluster_parameter_group(args) = create_dbcluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.create_dbcluster_snapshot
    create_dbcluster_snapshot([::AWSConfig], arguments::Dict)
    create_dbcluster_snapshot([::AWSConfig]; DBClusterSnapshotIdentifier=, DBClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "CreateDBClusterSnapshot", arguments::Dict)
    neptune([::AWSConfig], "CreateDBClusterSnapshot", DBClusterSnapshotIdentifier=, DBClusterIdentifier=, <keyword arguments>)

# CreateDBClusterSnapshot Operation

Creates a snapshot of a DB cluster.

# Arguments

## `DBClusterSnapshotIdentifier = ::String` -- *Required*
The identifier of the DB cluster snapshot. This parameter is stored as a lowercase string.

Constraints:

*   Must contain from 1 to 63 letters, numbers, or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

Example: `my-cluster1-snapshot1`


## `DBClusterIdentifier = ::String` -- *Required*
The identifier of the DB cluster to create a snapshot for. This parameter is not case-sensitive.

Constraints:

*   Must match the identifier of an existing DBCluster.

Example: `my-cluster1`


## `Tags = [[ ... ], ...]`
The tags to be assigned to the DB cluster snapshot.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateDBClusterSnapshotResult`

# Exceptions

`DBClusterSnapshotAlreadyExistsFault`, `InvalidDBClusterStateFault`, `DBClusterNotFoundFault`, `SnapshotQuotaExceededFault` or `InvalidDBClusterSnapshotStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBClusterSnapshot)
"""
@inline create_dbcluster_snapshot(aws::AWSConfig=default_aws_config(); args...) = create_dbcluster_snapshot(aws, args)

@inline create_dbcluster_snapshot(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "CreateDBClusterSnapshot", args)

@inline create_dbcluster_snapshot(args) = create_dbcluster_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Neptune.create_dbinstance
    create_dbinstance([::AWSConfig], arguments::Dict)
    create_dbinstance([::AWSConfig]; DBInstanceIdentifier=, DBInstanceClass=, Engine=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "CreateDBInstance", arguments::Dict)
    neptune([::AWSConfig], "CreateDBInstance", DBInstanceIdentifier=, DBInstanceClass=, Engine=, <keyword arguments>)

# CreateDBInstance Operation

Creates a new DB instance.

# Arguments

## `DBName = ::String`
The database name.

Type: String


## `DBInstanceIdentifier = ::String` -- *Required*
The DB instance identifier. This parameter is stored as a lowercase string.

Constraints:

*   Must contain from 1 to 63 letters, numbers, or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

Example: `mydbinstance`


## `AllocatedStorage = ::Int`
The amount of storage (in gibibytes) to allocate for the DB instance.

Type: Integer

Not applicable. Neptune cluster volumes automatically grow as the amount of data in your database increases, though you are only charged for the space that you use in a Neptune cluster volume.


## `DBInstanceClass = ::String` -- *Required*
The compute and memory capacity of the DB instance, for example, `db.m4.large`. Not all DB instance classes are available in all AWS Regions.


## `Engine = ::String` -- *Required*
The name of the database engine to be used for this instance.

Valid Values: `neptune`


## `MasterUsername = ::String`
The name for the master user. Not used.


## `MasterUserPassword = ::String`
The password for the master user. The password can include any printable ASCII character except "/", \"\"\", or "@".

Not used.


## `DBSecurityGroups = [::String, ...]`
A list of DB security groups to associate with this DB instance.

Default: The default DB security group for the database engine.


## `VpcSecurityGroupIds = [::String, ...]`
A list of EC2 VPC security groups to associate with this DB instance.

Not applicable. The associated list of EC2 VPC security groups is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

Default: The default EC2 VPC security group for the DB subnet group's VPC.


## `AvailabilityZone = ::String`
The EC2 Availability Zone that the DB instance is created in.

Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.

Example: `us-east-1d`

Constraint: The AvailabilityZone parameter can't be specified if the MultiAZ parameter is set to `true`. The specified Availability Zone must be in the same AWS Region as the current endpoint.


## `DBSubnetGroupName = ::String`
A DB subnet group to associate with this DB instance.

If there is no DB subnet group, then it is a non-VPC DB instance.


## `PreferredMaintenanceWindow = ::String`
The time range each week during which system maintenance can occur, in Universal Coordinated Time (UTC).

Format: `ddd:hh24:mi-ddd:hh24:mi`

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.


## `DBParameterGroupName = ::String`
The name of the DB parameter group to associate with this DB instance. If this argument is omitted, the default DBParameterGroup for the specified engine is used.

Constraints:

*   Must be 1 to 255 letters, numbers, or hyphens.

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens


## `BackupRetentionPeriod = ::Int`
The number of days for which automated backups are retained.

Not applicable. The retention period for automated backups is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

Default: 1

Constraints:

*   Must be a value from 0 to 35

*   Cannot be set to 0 if the DB instance is a source to Read Replicas


## `PreferredBackupWindow = ::String`
The daily time range during which automated backups are created.

Not applicable. The daily time range for creating automated backups is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).


## `Port = ::Int`
The port number on which the database accepts connections.

Not applicable. The port is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

Default: `8182`

Type: Integer


## `MultiAZ = ::Bool`
Specifies if the DB instance is a Multi-AZ deployment. You can't set the AvailabilityZone parameter if the MultiAZ parameter is set to true.


## `EngineVersion = ::String`
The version number of the database engine to use.


## `AutoMinorVersionUpgrade = ::Bool`
Indicates that minor engine upgrades are applied automatically to the DB instance during the maintenance window.

Default: `true`


## `LicenseModel = ::String`
License model information for this DB instance.

Valid values: `license-included` | `bring-your-own-license` | `general-public-license`


## `Iops = ::Int`
The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.


## `OptionGroupName = ::String`
Indicates that the DB instance should be associated with the specified option group.

Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance


## `CharacterSetName = ::String`
Indicates that the DB instance should be associated with the specified CharacterSet.

Not applicable. The character set is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).


## `PubliclyAccessible = ::Bool`
This parameter is not supported.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `DBClusterIdentifier = ::String`
The identifier of the DB cluster that the instance will belong to.

For information on creating a DB cluster, see [CreateDBCluster](@ref).

Type: String


## `StorageType = ::String`
Specifies the storage type to be associated with the DB instance.

Not applicable. Storage is managed by the DB Cluster.


## `TdeCredentialArn = ::String`
The ARN from the key store with which to associate the instance for TDE encryption.


## `TdeCredentialPassword = ::String`
The password for the given ARN from the key store in order to access the device.


## `StorageEncrypted = ::Bool`
Specifies whether the DB instance is encrypted.

Not applicable. The encryption for DB instances is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

Default: false


## `KmsKeyId = ::String`
The AWS KMS key identifier for an encrypted DB instance.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key.

Not applicable. The KMS key identifier is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

If the `StorageEncrypted` parameter is true, and you do not specify a value for the `KmsKeyId` parameter, then Amazon Neptune will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.


## `Domain = ::String`
Specify the Active Directory Domain to create the instance in.


## `CopyTagsToSnapshot = ::Bool`
True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise false. The default is false.


## `MonitoringInterval = ::Int`
The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.

If `MonitoringRoleArn` is specified, then you must also set `MonitoringInterval` to a value other than 0.

Valid Values: `0, 1, 5, 10, 15, 30, 60`


## `MonitoringRoleArn = ::String`
The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, `arn:aws:iam:123456789012:role/emaccess`.

If `MonitoringInterval` is set to a value other than 0, then you must supply a `MonitoringRoleArn` value.


## `DomainIAMRoleName = ::String`
Specify the name of the IAM role to be used when making API calls to the Directory Service.


## `PromotionTier = ::Int`
A value that specifies the order in which an Read Replica is promoted to the primary instance after a failure of the existing primary instance.

Default: 1

Valid Values: 0 - 15


## `Timezone = ::String`
The time zone of the DB instance.


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable AWS Identity and Access Management (IAM) authentication for Neptune.

Default: `false`


## `EnablePerformanceInsights = ::Bool`
True to enable Performance Insights for the DB instance, and otherwise false.


## `PerformanceInsightsKMSKeyId = ::String`
The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.


## `EnableCloudwatchLogsExports = [::String, ...]`
The list of log types that need to be enabled for exporting to CloudWatch Logs.




# Returns

`CreateDBInstanceResult`

# Exceptions

`DBInstanceAlreadyExistsFault`, `InsufficientDBInstanceCapacityFault`, `DBParameterGroupNotFoundFault`, `DBSecurityGroupNotFoundFault`, `InstanceQuotaExceededFault`, `StorageQuotaExceededFault`, `DBSubnetGroupNotFoundFault`, `DBSubnetGroupDoesNotCoverEnoughAZs`, `InvalidDBClusterStateFault`, `InvalidSubnet`, `InvalidVPCNetworkStateFault`, `ProvisionedIopsNotAvailableInAZFault`, `OptionGroupNotFoundFault`, `DBClusterNotFoundFault`, `StorageTypeNotSupportedFault`, `AuthorizationNotFoundFault`, `KMSKeyNotAccessibleFault` or `DomainNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBInstance)
"""
@inline create_dbinstance(aws::AWSConfig=default_aws_config(); args...) = create_dbinstance(aws, args)

@inline create_dbinstance(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "CreateDBInstance", args)

@inline create_dbinstance(args) = create_dbinstance(default_aws_config(), args)


"""
    using AWSSDK.Neptune.create_dbparameter_group
    create_dbparameter_group([::AWSConfig], arguments::Dict)
    create_dbparameter_group([::AWSConfig]; DBParameterGroupName=, DBParameterGroupFamily=, Description=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "CreateDBParameterGroup", arguments::Dict)
    neptune([::AWSConfig], "CreateDBParameterGroup", DBParameterGroupName=, DBParameterGroupFamily=, Description=, <keyword arguments>)

# CreateDBParameterGroup Operation

Creates a new DB parameter group.

A DB parameter group is initially created with the default parameters for the database engine used by the DB instance. To provide custom values for any of the parameters, you must modify the group after creating it using *ModifyDBParameterGroup*. Once you've created a DB parameter group, you need to associate it with your DB instance using *ModifyDBInstance*. When you associate a new DB parameter group with a running DB instance, you need to reboot the DB instance without failover for the new DB parameter group and associated settings to take effect.

**Important**
> After you create a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the `character_set_database` parameter. You can use the *Parameter Groups* option of the Amazon Neptune console or the *DescribeDBParameters* command to verify that your DB parameter group has been created or modified.

# Arguments

## `DBParameterGroupName = ::String` -- *Required*
The name of the DB parameter group.

Constraints:

*   Must be 1 to 255 letters, numbers, or hyphens.

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

**Note**
> This value is stored as a lowercase string.


## `DBParameterGroupFamily = ::String` -- *Required*
The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family.


## `Description = ::String` -- *Required*
The description for the DB parameter group.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateDBParameterGroupResult`

# Exceptions

`DBParameterGroupQuotaExceededFault` or `DBParameterGroupAlreadyExistsFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBParameterGroup)
"""
@inline create_dbparameter_group(aws::AWSConfig=default_aws_config(); args...) = create_dbparameter_group(aws, args)

@inline create_dbparameter_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "CreateDBParameterGroup", args)

@inline create_dbparameter_group(args) = create_dbparameter_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.create_dbsubnet_group
    create_dbsubnet_group([::AWSConfig], arguments::Dict)
    create_dbsubnet_group([::AWSConfig]; DBSubnetGroupName=, DBSubnetGroupDescription=, SubnetIds=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "CreateDBSubnetGroup", arguments::Dict)
    neptune([::AWSConfig], "CreateDBSubnetGroup", DBSubnetGroupName=, DBSubnetGroupDescription=, SubnetIds=, <keyword arguments>)

# CreateDBSubnetGroup Operation

Creates a new DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.

# Arguments

## `DBSubnetGroupName = ::String` -- *Required*
The name for the DB subnet group. This value is stored as a lowercase string.

Constraints: Must contain no more than 255 letters, numbers, periods, underscores, spaces, or hyphens. Must not be default.

Example: `mySubnetgroup`


## `DBSubnetGroupDescription = ::String` -- *Required*
The description for the DB subnet group.


## `SubnetIds = [::String, ...]` -- *Required*
The EC2 Subnet IDs for the DB subnet group.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateDBSubnetGroupResult`

# Exceptions

`DBSubnetGroupAlreadyExistsFault`, `DBSubnetGroupQuotaExceededFault`, `DBSubnetQuotaExceededFault`, `DBSubnetGroupDoesNotCoverEnoughAZs` or `InvalidSubnet`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBSubnetGroup)
"""
@inline create_dbsubnet_group(aws::AWSConfig=default_aws_config(); args...) = create_dbsubnet_group(aws, args)

@inline create_dbsubnet_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "CreateDBSubnetGroup", args)

@inline create_dbsubnet_group(args) = create_dbsubnet_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.create_event_subscription
    create_event_subscription([::AWSConfig], arguments::Dict)
    create_event_subscription([::AWSConfig]; SubscriptionName=, SnsTopicArn=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "CreateEventSubscription", arguments::Dict)
    neptune([::AWSConfig], "CreateEventSubscription", SubscriptionName=, SnsTopicArn=, <keyword arguments>)

# CreateEventSubscription Operation

Creates an event notification subscription. This action requires a topic ARN (Amazon Resource Name) created by either the Neptune console, the SNS console, or the SNS API. To obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console.

You can specify the type of source (SourceType) you want to be notified of, provide a list of Neptune sources (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. For example, you can specify SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and EventCategories = Availability, Backup.

If you specify both the SourceType and SourceIds, such as SourceType = db-instance and SourceIdentifier = myDBInstance1, you are notified of all the db-instance events for the specified source. If you specify a SourceType but do not specify a SourceIdentifier, you receive notice of the events for that source type for all your Neptune sources. If you do not specify either the SourceType nor the SourceIdentifier, you are notified of events generated from all Neptune sources belonging to your customer account.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the subscription.

Constraints: The name must be less than 255 characters.


## `SnsTopicArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.


## `SourceType = ::String`
The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.

Valid values: `db-instance` | `db-cluster` | `db-parameter-group` | `db-security-group` | `db-snapshot` | `db-cluster-snapshot`


## `EventCategories = [::String, ...]`
A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType by using the **DescribeEventCategories** action.


## `SourceIds = [::String, ...]`
The list of identifiers of the event sources for which events are returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.

Constraints:

*   If SourceIds are supplied, SourceType must also be provided.

*   If the source type is a DB instance, then a `DBInstanceIdentifier` must be supplied.

*   If the source type is a DB security group, a `DBSecurityGroupName` must be supplied.

*   If the source type is a DB parameter group, a `DBParameterGroupName` must be supplied.

*   If the source type is a DB snapshot, a `DBSnapshotIdentifier` must be supplied.


## `Enabled = ::Bool`
A Boolean value; set to **true** to activate the subscription, set to **false** to create the subscription but not active it.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateEventSubscriptionResult`

# Exceptions

`EventSubscriptionQuotaExceededFault`, `SubscriptionAlreadyExistFault`, `SNSInvalidTopicFault`, `SNSNoAuthorizationFault`, `SNSTopicArnNotFoundFault`, `SubscriptionCategoryNotFoundFault` or `SourceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateEventSubscription)
"""
@inline create_event_subscription(aws::AWSConfig=default_aws_config(); args...) = create_event_subscription(aws, args)

@inline create_event_subscription(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "CreateEventSubscription", args)

@inline create_event_subscription(args) = create_event_subscription(default_aws_config(), args)


"""
    using AWSSDK.Neptune.delete_dbcluster
    delete_dbcluster([::AWSConfig], arguments::Dict)
    delete_dbcluster([::AWSConfig]; DBClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DeleteDBCluster", arguments::Dict)
    neptune([::AWSConfig], "DeleteDBCluster", DBClusterIdentifier=, <keyword arguments>)

# DeleteDBCluster Operation

The DeleteDBCluster action deletes a previously provisioned DB cluster. When you delete a DB cluster, all automated backups for that DB cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified DB cluster are not deleted.

# Arguments

## `DBClusterIdentifier = ::String` -- *Required*
The DB cluster identifier for the DB cluster to be deleted. This parameter isn't case-sensitive.

Constraints:

*   Must match an existing DBClusterIdentifier.


## `SkipFinalSnapshot = ::Bool`
Determines whether a final DB cluster snapshot is created before the DB cluster is deleted. If `true` is specified, no DB cluster snapshot is created. If `false` is specified, a DB cluster snapshot is created before the DB cluster is deleted.

**Note**
> You must specify a `FinalDBSnapshotIdentifier` parameter if `SkipFinalSnapshot` is `false`.

Default: `false`


## `FinalDBSnapshotIdentifier = ::String`
The DB cluster snapshot identifier of the new DB cluster snapshot created when `SkipFinalSnapshot` is set to `false`.

**Note**
> Specifying this parameter and also setting the `SkipFinalShapshot` parameter to true results in an error.

Constraints:

*   Must be 1 to 255 letters, numbers, or hyphens.

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens




# Returns

`DeleteDBClusterResult`

# Exceptions

`DBClusterNotFoundFault`, `InvalidDBClusterStateFault`, `DBClusterSnapshotAlreadyExistsFault`, `SnapshotQuotaExceededFault` or `InvalidDBClusterSnapshotStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBCluster)
"""
@inline delete_dbcluster(aws::AWSConfig=default_aws_config(); args...) = delete_dbcluster(aws, args)

@inline delete_dbcluster(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DeleteDBCluster", args)

@inline delete_dbcluster(args) = delete_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.Neptune.delete_dbcluster_parameter_group
    delete_dbcluster_parameter_group([::AWSConfig], arguments::Dict)
    delete_dbcluster_parameter_group([::AWSConfig]; DBClusterParameterGroupName=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DeleteDBClusterParameterGroup", arguments::Dict)
    neptune([::AWSConfig], "DeleteDBClusterParameterGroup", DBClusterParameterGroupName=)

# DeleteDBClusterParameterGroup Operation

Deletes a specified DB cluster parameter group. The DB cluster parameter group to be deleted can't be associated with any DB clusters.

# Arguments

## `DBClusterParameterGroupName = ::String` -- *Required*
The name of the DB cluster parameter group.

Constraints:

*   Must be the name of an existing DB cluster parameter group.

*   You can't delete a default DB cluster parameter group.

*   Cannot be associated with any DB clusters.




# Exceptions

`InvalidDBParameterGroupStateFault` or `DBParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBClusterParameterGroup)
"""
@inline delete_dbcluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = delete_dbcluster_parameter_group(aws, args)

@inline delete_dbcluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DeleteDBClusterParameterGroup", args)

@inline delete_dbcluster_parameter_group(args) = delete_dbcluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.delete_dbcluster_snapshot
    delete_dbcluster_snapshot([::AWSConfig], arguments::Dict)
    delete_dbcluster_snapshot([::AWSConfig]; DBClusterSnapshotIdentifier=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DeleteDBClusterSnapshot", arguments::Dict)
    neptune([::AWSConfig], "DeleteDBClusterSnapshot", DBClusterSnapshotIdentifier=)

# DeleteDBClusterSnapshot Operation

Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is terminated.

**Note**
> The DB cluster snapshot must be in the `available` state to be deleted.

# Arguments

## `DBClusterSnapshotIdentifier = ::String` -- *Required*
The identifier of the DB cluster snapshot to delete.

Constraints: Must be the name of an existing DB cluster snapshot in the `available` state.




# Returns

`DeleteDBClusterSnapshotResult`

# Exceptions

`InvalidDBClusterSnapshotStateFault` or `DBClusterSnapshotNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBClusterSnapshot)
"""
@inline delete_dbcluster_snapshot(aws::AWSConfig=default_aws_config(); args...) = delete_dbcluster_snapshot(aws, args)

@inline delete_dbcluster_snapshot(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DeleteDBClusterSnapshot", args)

@inline delete_dbcluster_snapshot(args) = delete_dbcluster_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Neptune.delete_dbinstance
    delete_dbinstance([::AWSConfig], arguments::Dict)
    delete_dbinstance([::AWSConfig]; DBInstanceIdentifier=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DeleteDBInstance", arguments::Dict)
    neptune([::AWSConfig], "DeleteDBInstance", DBInstanceIdentifier=, <keyword arguments>)

# DeleteDBInstance Operation

The DeleteDBInstance action deletes a previously provisioned DB instance. When you delete a DB instance, all automated backups for that instance are deleted and can't be recovered. Manual DB snapshots of the DB instance to be deleted by `DeleteDBInstance` are not deleted.

If you request a final DB snapshot the status of the Amazon Neptune DB instance is `deleting` until the DB snapshot is created. The API action `DescribeDBInstance` is used to monitor the status of this operation. The action can't be canceled or reverted once submitted.

Note that when a DB instance is in a failure state and has a status of `failed`, `incompatible-restore`, or `incompatible-network`, you can only delete it when the `SkipFinalSnapshot` parameter is set to `true`.

If the specified DB instance is part of a DB cluster, you can't delete the DB instance if both of the following conditions are true:

*   The DB cluster is a Read Replica of another DB cluster.

*   The DB instance is the only instance in the DB cluster.

To delete a DB instance in this case, first call the [PromoteReadReplicaDBCluster](@ref) API action to promote the DB cluster so it's no longer a Read Replica. After the promotion completes, then call the `DeleteDBInstance` API action to delete the final instance in the DB cluster.

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
The DB instance identifier for the DB instance to be deleted. This parameter isn't case-sensitive.

Constraints:

*   Must match the name of an existing DB instance.


## `SkipFinalSnapshot = ::Bool`
Determines whether a final DB snapshot is created before the DB instance is deleted. If `true` is specified, no DBSnapshot is created. If `false` is specified, a DB snapshot is created before the DB instance is deleted.

Note that when a DB instance is in a failure state and has a status of 'failed', 'incompatible-restore', or 'incompatible-network', it can only be deleted when the SkipFinalSnapshot parameter is set to "true".

Specify `true` when deleting a Read Replica.

**Note**
> The FinalDBSnapshotIdentifier parameter must be specified if SkipFinalSnapshot is `false`.

Default: `false`


## `FinalDBSnapshotIdentifier = ::String`
The DBSnapshotIdentifier of the new DBSnapshot created when SkipFinalSnapshot is set to `false`.

**Note**
> Specifying this parameter and also setting the SkipFinalShapshot parameter to true results in an error.

Constraints:

*   Must be 1 to 255 letters or numbers.

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

*   Cannot be specified when deleting a Read Replica.




# Returns

`DeleteDBInstanceResult`

# Exceptions

`DBInstanceNotFoundFault`, `InvalidDBInstanceStateFault`, `DBSnapshotAlreadyExistsFault`, `SnapshotQuotaExceededFault` or `InvalidDBClusterStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBInstance)
"""
@inline delete_dbinstance(aws::AWSConfig=default_aws_config(); args...) = delete_dbinstance(aws, args)

@inline delete_dbinstance(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DeleteDBInstance", args)

@inline delete_dbinstance(args) = delete_dbinstance(default_aws_config(), args)


"""
    using AWSSDK.Neptune.delete_dbparameter_group
    delete_dbparameter_group([::AWSConfig], arguments::Dict)
    delete_dbparameter_group([::AWSConfig]; DBParameterGroupName=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DeleteDBParameterGroup", arguments::Dict)
    neptune([::AWSConfig], "DeleteDBParameterGroup", DBParameterGroupName=)

# DeleteDBParameterGroup Operation

Deletes a specified DBParameterGroup. The DBParameterGroup to be deleted can't be associated with any DB instances.

# Arguments

## `DBParameterGroupName = ::String` -- *Required*
The name of the DB parameter group.

Constraints:

*   Must be the name of an existing DB parameter group

*   You can't delete a default DB parameter group

*   Cannot be associated with any DB instances




# Exceptions

`InvalidDBParameterGroupStateFault` or `DBParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBParameterGroup)
"""
@inline delete_dbparameter_group(aws::AWSConfig=default_aws_config(); args...) = delete_dbparameter_group(aws, args)

@inline delete_dbparameter_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DeleteDBParameterGroup", args)

@inline delete_dbparameter_group(args) = delete_dbparameter_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.delete_dbsubnet_group
    delete_dbsubnet_group([::AWSConfig], arguments::Dict)
    delete_dbsubnet_group([::AWSConfig]; DBSubnetGroupName=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DeleteDBSubnetGroup", arguments::Dict)
    neptune([::AWSConfig], "DeleteDBSubnetGroup", DBSubnetGroupName=)

# DeleteDBSubnetGroup Operation

Deletes a DB subnet group.

**Note**
> The specified database subnet group must not be associated with any DB instances.

# Arguments

## `DBSubnetGroupName = ::String` -- *Required*
The name of the database subnet group to delete.

**Note**
> You can't delete the default subnet group.

Constraints:

Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.

Example: `mySubnetgroup`




# Exceptions

`InvalidDBSubnetGroupStateFault`, `InvalidDBSubnetStateFault` or `DBSubnetGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBSubnetGroup)
"""
@inline delete_dbsubnet_group(aws::AWSConfig=default_aws_config(); args...) = delete_dbsubnet_group(aws, args)

@inline delete_dbsubnet_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DeleteDBSubnetGroup", args)

@inline delete_dbsubnet_group(args) = delete_dbsubnet_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.delete_event_subscription
    delete_event_subscription([::AWSConfig], arguments::Dict)
    delete_event_subscription([::AWSConfig]; SubscriptionName=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DeleteEventSubscription", arguments::Dict)
    neptune([::AWSConfig], "DeleteEventSubscription", SubscriptionName=)

# DeleteEventSubscription Operation

Deletes an event notification subscription.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the event notification subscription you want to delete.




# Returns

`DeleteEventSubscriptionResult`

# Exceptions

`SubscriptionNotFoundFault` or `InvalidEventSubscriptionStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteEventSubscription)
"""
@inline delete_event_subscription(aws::AWSConfig=default_aws_config(); args...) = delete_event_subscription(aws, args)

@inline delete_event_subscription(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DeleteEventSubscription", args)

@inline delete_event_subscription(args) = delete_event_subscription(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_dbcluster_parameter_groups
    describe_dbcluster_parameter_groups([::AWSConfig], arguments::Dict)
    describe_dbcluster_parameter_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeDBClusterParameterGroups", arguments::Dict)
    neptune([::AWSConfig], "DescribeDBClusterParameterGroups", <keyword arguments>)

# DescribeDBClusterParameterGroups Operation

Returns a list of `DBClusterParameterGroup` descriptions. If a `DBClusterParameterGroupName` parameter is specified, the list will contain only the description of the specified DB cluster parameter group.

# Arguments

## `DBClusterParameterGroupName = ::String`
The name of a specific DB cluster parameter group to return details for.

Constraints:

*   If supplied, must match the name of an existing DBClusterParameterGroup.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous `DescribeDBClusterParameterGroups` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DBClusterParameterGroupsMessage`

# Exceptions

`DBParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterParameterGroups)
"""
@inline describe_dbcluster_parameter_groups(aws::AWSConfig=default_aws_config(); args...) = describe_dbcluster_parameter_groups(aws, args)

@inline describe_dbcluster_parameter_groups(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeDBClusterParameterGroups", args)

@inline describe_dbcluster_parameter_groups(args) = describe_dbcluster_parameter_groups(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_dbcluster_parameters
    describe_dbcluster_parameters([::AWSConfig], arguments::Dict)
    describe_dbcluster_parameters([::AWSConfig]; DBClusterParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeDBClusterParameters", arguments::Dict)
    neptune([::AWSConfig], "DescribeDBClusterParameters", DBClusterParameterGroupName=, <keyword arguments>)

# DescribeDBClusterParameters Operation

Returns the detailed parameter list for a particular DB cluster parameter group.

# Arguments

## `DBClusterParameterGroupName = ::String` -- *Required*
The name of a specific DB cluster parameter group to return parameter details for.

Constraints:

*   If supplied, must match the name of an existing DBClusterParameterGroup.


## `Source = ::String`
A value that indicates to return only parameters for a specific source. Parameter sources can be `engine`, `service`, or `customer`.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous `DescribeDBClusterParameters` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DBClusterParameterGroupDetails`

# Exceptions

`DBParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterParameters)
"""
@inline describe_dbcluster_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_dbcluster_parameters(aws, args)

@inline describe_dbcluster_parameters(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeDBClusterParameters", args)

@inline describe_dbcluster_parameters(args) = describe_dbcluster_parameters(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_dbcluster_snapshot_attributes
    describe_dbcluster_snapshot_attributes([::AWSConfig], arguments::Dict)
    describe_dbcluster_snapshot_attributes([::AWSConfig]; DBClusterSnapshotIdentifier=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeDBClusterSnapshotAttributes", arguments::Dict)
    neptune([::AWSConfig], "DescribeDBClusterSnapshotAttributes", DBClusterSnapshotIdentifier=)

# DescribeDBClusterSnapshotAttributes Operation

Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot.

When sharing snapshots with other AWS accounts, `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If `all` is included in the list of values for the `restore` attribute, then the manual DB cluster snapshot is public and can be copied or restored by all AWS accounts.

To add or remove access for an AWS account to copy or restore a manual DB cluster snapshot, or to make the manual DB cluster snapshot public or private, use the [ModifyDBClusterSnapshotAttribute](@ref) API action.

# Arguments

## `DBClusterSnapshotIdentifier = ::String` -- *Required*
The identifier for the DB cluster snapshot to describe the attributes for.




# Returns

`DescribeDBClusterSnapshotAttributesResult`

# Exceptions

`DBClusterSnapshotNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterSnapshotAttributes)
"""
@inline describe_dbcluster_snapshot_attributes(aws::AWSConfig=default_aws_config(); args...) = describe_dbcluster_snapshot_attributes(aws, args)

@inline describe_dbcluster_snapshot_attributes(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeDBClusterSnapshotAttributes", args)

@inline describe_dbcluster_snapshot_attributes(args) = describe_dbcluster_snapshot_attributes(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_dbcluster_snapshots
    describe_dbcluster_snapshots([::AWSConfig], arguments::Dict)
    describe_dbcluster_snapshots([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeDBClusterSnapshots", arguments::Dict)
    neptune([::AWSConfig], "DescribeDBClusterSnapshots", <keyword arguments>)

# DescribeDBClusterSnapshots Operation

Returns information about DB cluster snapshots. This API action supports pagination.

# Arguments

## `DBClusterIdentifier = ::String`
The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter can't be used in conjunction with the `DBClusterSnapshotIdentifier` parameter. This parameter is not case-sensitive.

Constraints:

*   If supplied, must match the identifier of an existing DBCluster.


## `DBClusterSnapshotIdentifier = ::String`
A specific DB cluster snapshot identifier to describe. This parameter can't be used in conjunction with the `DBClusterIdentifier` parameter. This value is stored as a lowercase string.

Constraints:

*   If supplied, must match the identifier of an existing DBClusterSnapshot.

*   If this identifier is for an automated snapshot, the `SnapshotType` parameter must also be specified.


## `SnapshotType = ::String`
The type of DB cluster snapshots to be returned. You can specify one of the following values:

*   `automated` - Return all DB cluster snapshots that have been automatically taken by Amazon Neptune for my AWS account.

*   `manual` - Return all DB cluster snapshots that have been taken by my AWS account.

*   `shared` - Return all manual DB cluster snapshots that have been shared to my AWS account.

*   `public` - Return all DB cluster snapshots that have been marked as public.

If you don't specify a `SnapshotType` value, then both automated and manual DB cluster snapshots are returned. You can include shared DB cluster snapshots with these results by setting the `IncludeShared` parameter to `true`. You can include public DB cluster snapshots with these results by setting the `IncludePublic` parameter to `true`.

The `IncludeShared` and `IncludePublic` parameters don't apply for `SnapshotType` values of `manual` or `automated`. The `IncludePublic` parameter doesn't apply when `SnapshotType` is set to `shared`. The `IncludeShared` parameter doesn't apply when `SnapshotType` is set to `public`.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous `DescribeDBClusterSnapshots` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.


## `IncludeShared = ::Bool`
True to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, and otherwise false. The default is `false`.

You can give an AWS account permission to restore a manual DB cluster snapshot from another AWS account by the [ModifyDBClusterSnapshotAttribute](@ref) API action.


## `IncludePublic = ::Bool`
True to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account, and otherwise false. The default is `false`. The default is false.

You can share a manual DB cluster snapshot as public by using the [ModifyDBClusterSnapshotAttribute](@ref) API action.




# Returns

`DBClusterSnapshotMessage`

# Exceptions

`DBClusterSnapshotNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterSnapshots)
"""
@inline describe_dbcluster_snapshots(aws::AWSConfig=default_aws_config(); args...) = describe_dbcluster_snapshots(aws, args)

@inline describe_dbcluster_snapshots(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeDBClusterSnapshots", args)

@inline describe_dbcluster_snapshots(args) = describe_dbcluster_snapshots(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_dbclusters
    describe_dbclusters([::AWSConfig], arguments::Dict)
    describe_dbclusters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeDBClusters", arguments::Dict)
    neptune([::AWSConfig], "DescribeDBClusters", <keyword arguments>)

# DescribeDBClusters Operation

Returns information about provisioned DB clusters. This API supports pagination.

# Arguments

## `DBClusterIdentifier = ::String`
The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive.

Constraints:

*   If supplied, must match an existing DBClusterIdentifier.


## `Filters = [[ ... ], ...]`
A filter that specifies one or more DB clusters to describe.

Supported filters:

*   `db-cluster-id` - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous [DescribeDBClusters](@ref) request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DBClusterMessage`

# Exceptions

`DBClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusters)
"""
@inline describe_dbclusters(aws::AWSConfig=default_aws_config(); args...) = describe_dbclusters(aws, args)

@inline describe_dbclusters(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeDBClusters", args)

@inline describe_dbclusters(args) = describe_dbclusters(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_dbengine_versions
    describe_dbengine_versions([::AWSConfig], arguments::Dict)
    describe_dbengine_versions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeDBEngineVersions", arguments::Dict)
    neptune([::AWSConfig], "DescribeDBEngineVersions", <keyword arguments>)

# DescribeDBEngineVersions Operation

Returns a list of the available DB engines.

# Arguments

## `Engine = ::String`
The database engine to return.


## `EngineVersion = ::String`
The database engine version to return.

Example: `5.1.49`


## `DBParameterGroupFamily = ::String`
The name of a specific DB parameter group family to return details for.

Constraints:

*   If supplied, must match an existing DBParameterGroupFamily.


## `Filters = [[ ... ], ...]`
Not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more than the `MaxRecords` value is available, a pagination token called a marker is included in the response so that the following results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.


## `DefaultOnly = ::Bool`
Indicates that only the default version of the specified engine or engine and major version combination is returned.


## `ListSupportedCharacterSets = ::Bool`
If this parameter is specified and the requested engine supports the `CharacterSetName` parameter for `CreateDBInstance`, the response includes a list of supported character sets for each engine version.


## `ListSupportedTimezones = ::Bool`
If this parameter is specified and the requested engine supports the `TimeZone` parameter for `CreateDBInstance`, the response includes a list of supported time zones for each engine version.




# Returns

`DBEngineVersionMessage`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBEngineVersions)
"""
@inline describe_dbengine_versions(aws::AWSConfig=default_aws_config(); args...) = describe_dbengine_versions(aws, args)

@inline describe_dbengine_versions(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeDBEngineVersions", args)

@inline describe_dbengine_versions(args) = describe_dbengine_versions(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_dbinstances
    describe_dbinstances([::AWSConfig], arguments::Dict)
    describe_dbinstances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeDBInstances", arguments::Dict)
    neptune([::AWSConfig], "DescribeDBInstances", <keyword arguments>)

# DescribeDBInstances Operation

Returns information about provisioned instances. This API supports pagination.

# Arguments

## `DBInstanceIdentifier = ::String`
The user-supplied instance identifier. If this parameter is specified, information from only the specific DB instance is returned. This parameter isn't case-sensitive.

Constraints:

*   If supplied, must match the identifier of an existing DBInstance.


## `Filters = [[ ... ], ...]`
A filter that specifies one or more DB instances to describe.

Supported filters:

*   `db-cluster-id` - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB instances associated with the DB clusters identified by these ARNs.

*   `db-instance-id` - Accepts DB instance identifiers and DB instance Amazon Resource Names (ARNs). The results list will only include information about the DB instances identified by these ARNs.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous `DescribeDBInstances` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DBInstanceMessage`

# Exceptions

`DBInstanceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBInstances)
"""
@inline describe_dbinstances(aws::AWSConfig=default_aws_config(); args...) = describe_dbinstances(aws, args)

@inline describe_dbinstances(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeDBInstances", args)

@inline describe_dbinstances(args) = describe_dbinstances(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_dbparameter_groups
    describe_dbparameter_groups([::AWSConfig], arguments::Dict)
    describe_dbparameter_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeDBParameterGroups", arguments::Dict)
    neptune([::AWSConfig], "DescribeDBParameterGroups", <keyword arguments>)

# DescribeDBParameterGroups Operation

Returns a list of `DBParameterGroup` descriptions. If a `DBParameterGroupName` is specified, the list will contain only the description of the specified DB parameter group.

# Arguments

## `DBParameterGroupName = ::String`
The name of a specific DB parameter group to return details for.

Constraints:

*   If supplied, must match the name of an existing DBClusterParameterGroup.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous `DescribeDBParameterGroups` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DBParameterGroupsMessage`

# Exceptions

`DBParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBParameterGroups)
"""
@inline describe_dbparameter_groups(aws::AWSConfig=default_aws_config(); args...) = describe_dbparameter_groups(aws, args)

@inline describe_dbparameter_groups(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeDBParameterGroups", args)

@inline describe_dbparameter_groups(args) = describe_dbparameter_groups(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_dbparameters
    describe_dbparameters([::AWSConfig], arguments::Dict)
    describe_dbparameters([::AWSConfig]; DBParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeDBParameters", arguments::Dict)
    neptune([::AWSConfig], "DescribeDBParameters", DBParameterGroupName=, <keyword arguments>)

# DescribeDBParameters Operation

Returns the detailed parameter list for a particular DB parameter group.

# Arguments

## `DBParameterGroupName = ::String` -- *Required*
The name of a specific DB parameter group to return details for.

Constraints:

*   If supplied, must match the name of an existing DBParameterGroup.


## `Source = ::String`
The parameter types to return.

Default: All parameter types returned

Valid Values: `user | system | engine-default`


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous `DescribeDBParameters` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DBParameterGroupDetails`

# Exceptions

`DBParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBParameters)
"""
@inline describe_dbparameters(aws::AWSConfig=default_aws_config(); args...) = describe_dbparameters(aws, args)

@inline describe_dbparameters(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeDBParameters", args)

@inline describe_dbparameters(args) = describe_dbparameters(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_dbsubnet_groups
    describe_dbsubnet_groups([::AWSConfig], arguments::Dict)
    describe_dbsubnet_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeDBSubnetGroups", arguments::Dict)
    neptune([::AWSConfig], "DescribeDBSubnetGroups", <keyword arguments>)

# DescribeDBSubnetGroups Operation

Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.

For an overview of CIDR ranges, go to the [Wikipedia Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

# Arguments

## `DBSubnetGroupName = ::String`
The name of the DB subnet group to return details for.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous DescribeDBSubnetGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DBSubnetGroupMessage`

# Exceptions

`DBSubnetGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBSubnetGroups)
"""
@inline describe_dbsubnet_groups(aws::AWSConfig=default_aws_config(); args...) = describe_dbsubnet_groups(aws, args)

@inline describe_dbsubnet_groups(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeDBSubnetGroups", args)

@inline describe_dbsubnet_groups(args) = describe_dbsubnet_groups(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_engine_default_cluster_parameters
    describe_engine_default_cluster_parameters([::AWSConfig], arguments::Dict)
    describe_engine_default_cluster_parameters([::AWSConfig]; DBParameterGroupFamily=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeEngineDefaultClusterParameters", arguments::Dict)
    neptune([::AWSConfig], "DescribeEngineDefaultClusterParameters", DBParameterGroupFamily=, <keyword arguments>)

# DescribeEngineDefaultClusterParameters Operation

Returns the default engine and system parameter information for the cluster database engine.

# Arguments

## `DBParameterGroupFamily = ::String` -- *Required*
The name of the DB cluster parameter group family to return engine parameter information for.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous `DescribeEngineDefaultClusterParameters` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeEngineDefaultClusterParametersResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEngineDefaultClusterParameters)
"""
@inline describe_engine_default_cluster_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_engine_default_cluster_parameters(aws, args)

@inline describe_engine_default_cluster_parameters(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeEngineDefaultClusterParameters", args)

@inline describe_engine_default_cluster_parameters(args) = describe_engine_default_cluster_parameters(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_engine_default_parameters
    describe_engine_default_parameters([::AWSConfig], arguments::Dict)
    describe_engine_default_parameters([::AWSConfig]; DBParameterGroupFamily=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeEngineDefaultParameters", arguments::Dict)
    neptune([::AWSConfig], "DescribeEngineDefaultParameters", DBParameterGroupFamily=, <keyword arguments>)

# DescribeEngineDefaultParameters Operation

Returns the default engine and system parameter information for the specified database engine.

# Arguments

## `DBParameterGroupFamily = ::String` -- *Required*
The name of the DB parameter group family.


## `Filters = [[ ... ], ...]`
Not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous `DescribeEngineDefaultParameters` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeEngineDefaultParametersResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEngineDefaultParameters)
"""
@inline describe_engine_default_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_engine_default_parameters(aws, args)

@inline describe_engine_default_parameters(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeEngineDefaultParameters", args)

@inline describe_engine_default_parameters(args) = describe_engine_default_parameters(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_event_categories
    describe_event_categories([::AWSConfig], arguments::Dict)
    describe_event_categories([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeEventCategories", arguments::Dict)
    neptune([::AWSConfig], "DescribeEventCategories", <keyword arguments>)

# DescribeEventCategories Operation

Displays a list of categories for all event source types, or, if specified, for a specified source type.

# Arguments

## `SourceType = ::String`
The type of source that is generating the events.

Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```



# Returns

`EventCategoriesMessage`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEventCategories)
"""
@inline describe_event_categories(aws::AWSConfig=default_aws_config(); args...) = describe_event_categories(aws, args)

@inline describe_event_categories(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeEventCategories", args)

@inline describe_event_categories(args) = describe_event_categories(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_event_subscriptions
    describe_event_subscriptions([::AWSConfig], arguments::Dict)
    describe_event_subscriptions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeEventSubscriptions", arguments::Dict)
    neptune([::AWSConfig], "DescribeEventSubscriptions", <keyword arguments>)

# DescribeEventSubscriptions Operation

Lists all the subscription descriptions for a customer account. The description for a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.

If you specify a SubscriptionName, lists the description for that subscription.

# Arguments

## `SubscriptionName = ::String`
The name of the event notification subscription you want to describe.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords` .




# Returns

`EventSubscriptionsMessage`

# Exceptions

`SubscriptionNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEventSubscriptions)
"""
@inline describe_event_subscriptions(aws::AWSConfig=default_aws_config(); args...) = describe_event_subscriptions(aws, args)

@inline describe_event_subscriptions(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeEventSubscriptions", args)

@inline describe_event_subscriptions(args) = describe_event_subscriptions(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_events
    describe_events([::AWSConfig], arguments::Dict)
    describe_events([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeEvents", arguments::Dict)
    neptune([::AWSConfig], "DescribeEvents", <keyword arguments>)

# DescribeEvents Operation

Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days. Events specific to a particular DB instance, DB security group, database snapshot, or DB parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.

# Arguments

## `SourceIdentifier = ::String`
The identifier of the event source for which events are returned. If not specified, then all sources are included in the response.

Constraints:

*   If SourceIdentifier is supplied, SourceType must also be provided.

*   If the source type is `DBInstance`, then a `DBInstanceIdentifier` must be supplied.

*   If the source type is `DBSecurityGroup`, a `DBSecurityGroupName` must be supplied.

*   If the source type is `DBParameterGroup`, a `DBParameterGroupName` must be supplied.

*   If the source type is `DBSnapshot`, a `DBSnapshotIdentifier` must be supplied.

*   Cannot end with a hyphen or contain two consecutive hyphens.


## `SourceType = "db-instance", "db-parameter-group", "db-security-group", "db-snapshot", "db-cluster" or "db-cluster-snapshot"`
The event source to retrieve events for. If no value is specified, all events are returned.


## `StartTime = timestamp`
The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the [ISO8601 Wikipedia page.](http://en.wikipedia.org/wiki/ISO_8601)

Example: 2009-07-08T18:00Z


## `EndTime = timestamp`
The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the [ISO8601 Wikipedia page.](http://en.wikipedia.org/wiki/ISO_8601)

Example: 2009-07-08T18:00Z


## `Duration = ::Int`
The number of minutes to retrieve events for.

Default: 60


## `EventCategories = [::String, ...]`
A list of event categories that trigger notifications for a event notification subscription.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous DescribeEvents request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`EventsMessage`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEvents)
"""
@inline describe_events(aws::AWSConfig=default_aws_config(); args...) = describe_events(aws, args)

@inline describe_events(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeEvents", args)

@inline describe_events(args) = describe_events(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_orderable_dbinstance_options
    describe_orderable_dbinstance_options([::AWSConfig], arguments::Dict)
    describe_orderable_dbinstance_options([::AWSConfig]; Engine=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeOrderableDBInstanceOptions", arguments::Dict)
    neptune([::AWSConfig], "DescribeOrderableDBInstanceOptions", Engine=, <keyword arguments>)

# DescribeOrderableDBInstanceOptions Operation

Returns a list of orderable DB instance options for the specified engine.

# Arguments

## `Engine = ::String` -- *Required*
The name of the engine to retrieve DB instance options for.


## `EngineVersion = ::String`
The engine version filter value. Specify this parameter to show only the available offerings matching the specified engine version.


## `DBInstanceClass = ::String`
The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.


## `LicenseModel = ::String`
The license model filter value. Specify this parameter to show only the available offerings matching the specified license model.


## `Vpc = ::Bool`
The VPC filter value. Specify this parameter to show only the available VPC or non-VPC offerings.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords` .




# Returns

`OrderableDBInstanceOptionsMessage`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeOrderableDBInstanceOptions)
"""
@inline describe_orderable_dbinstance_options(aws::AWSConfig=default_aws_config(); args...) = describe_orderable_dbinstance_options(aws, args)

@inline describe_orderable_dbinstance_options(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeOrderableDBInstanceOptions", args)

@inline describe_orderable_dbinstance_options(args) = describe_orderable_dbinstance_options(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_pending_maintenance_actions
    describe_pending_maintenance_actions([::AWSConfig], arguments::Dict)
    describe_pending_maintenance_actions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribePendingMaintenanceActions", arguments::Dict)
    neptune([::AWSConfig], "DescribePendingMaintenanceActions", <keyword arguments>)

# DescribePendingMaintenanceActions Operation

Returns a list of resources (for example, DB instances) that have at least one pending maintenance action.

# Arguments

## `ResourceIdentifier = ::String`
The ARN of a resource to return pending maintenance actions for.


## `Filters = [[ ... ], ...]`
A filter that specifies one or more resources to return pending maintenance actions for.

Supported filters:

*   `db-cluster-id` - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include pending maintenance actions for the DB clusters identified by these ARNs.

*   `db-instance-id` - Accepts DB instance identifiers and DB instance ARNs. The results list will only include pending maintenance actions for the DB instances identified by these ARNs.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `Marker = ::String`
An optional pagination token provided by a previous `DescribePendingMaintenanceActions` request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by `MaxRecords`.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.




# Returns

`PendingMaintenanceActionsMessage`

# Exceptions

`ResourceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribePendingMaintenanceActions)
"""
@inline describe_pending_maintenance_actions(aws::AWSConfig=default_aws_config(); args...) = describe_pending_maintenance_actions(aws, args)

@inline describe_pending_maintenance_actions(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribePendingMaintenanceActions", args)

@inline describe_pending_maintenance_actions(args) = describe_pending_maintenance_actions(default_aws_config(), args)


"""
    using AWSSDK.Neptune.describe_valid_dbinstance_modifications
    describe_valid_dbinstance_modifications([::AWSConfig], arguments::Dict)
    describe_valid_dbinstance_modifications([::AWSConfig]; DBInstanceIdentifier=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "DescribeValidDBInstanceModifications", arguments::Dict)
    neptune([::AWSConfig], "DescribeValidDBInstanceModifications", DBInstanceIdentifier=)

# DescribeValidDBInstanceModifications Operation

You can call [DescribeValidDBInstanceModifications](@ref) to learn what modifications you can make to your DB instance. You can use this information when you call [ModifyDBInstance](@ref).

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
The customer identifier or the ARN of your DB instance.




# Returns

`DescribeValidDBInstanceModificationsResult`

# Exceptions

`DBInstanceNotFoundFault` or `InvalidDBInstanceStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeValidDBInstanceModifications)
"""
@inline describe_valid_dbinstance_modifications(aws::AWSConfig=default_aws_config(); args...) = describe_valid_dbinstance_modifications(aws, args)

@inline describe_valid_dbinstance_modifications(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "DescribeValidDBInstanceModifications", args)

@inline describe_valid_dbinstance_modifications(args) = describe_valid_dbinstance_modifications(default_aws_config(), args)


"""
    using AWSSDK.Neptune.failover_dbcluster
    failover_dbcluster([::AWSConfig], arguments::Dict)
    failover_dbcluster([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "FailoverDBCluster", arguments::Dict)
    neptune([::AWSConfig], "FailoverDBCluster", <keyword arguments>)

# FailoverDBCluster Operation

Forces a failover for a DB cluster.

A failover for a DB cluster promotes one of the Read Replicas (read-only instances) in the DB cluster to be the primary instance (the cluster writer).

Amazon Neptune will automatically fail over to a Read Replica, if one exists, when the primary instance fails. You can force a failover when you want to simulate a failure of a primary instance for testing. Because each instance in a DB cluster has its own endpoint address, you will need to clean up and re-establish any existing connections that use those endpoint addresses when the failover is complete.

# Arguments

## `DBClusterIdentifier = ::String`
A DB cluster identifier to force a failover for. This parameter is not case-sensitive.

Constraints:

*   Must match the identifier of an existing DBCluster.


## `TargetDBInstanceIdentifier = ::String`
The name of the instance to promote to the primary instance.

You must specify the instance identifier for an Read Replica in the DB cluster. For example, `mydbcluster-replica1`.




# Returns

`FailoverDBClusterResult`

# Exceptions

`DBClusterNotFoundFault`, `InvalidDBClusterStateFault` or `InvalidDBInstanceStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/FailoverDBCluster)
"""
@inline failover_dbcluster(aws::AWSConfig=default_aws_config(); args...) = failover_dbcluster(aws, args)

@inline failover_dbcluster(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "FailoverDBCluster", args)

@inline failover_dbcluster(args) = failover_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.Neptune.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; ResourceName=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "ListTagsForResource", arguments::Dict)
    neptune([::AWSConfig], "ListTagsForResource", ResourceName=, <keyword arguments>)

# ListTagsForResource Operation

Lists all tags on an Amazon Neptune resource.

# Arguments

## `ResourceName = ::String` -- *Required*
The Amazon Neptune resource with tags to be listed. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see [Constructing an Amazon Resource Name (ARN)](http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```



# Returns

`TagListMessage`

# Exceptions

`DBInstanceNotFoundFault`, `DBSnapshotNotFoundFault` or `DBClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "ListTagsForResource", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.Neptune.modify_dbcluster
    modify_dbcluster([::AWSConfig], arguments::Dict)
    modify_dbcluster([::AWSConfig]; DBClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "ModifyDBCluster", arguments::Dict)
    neptune([::AWSConfig], "ModifyDBCluster", DBClusterIdentifier=, <keyword arguments>)

# ModifyDBCluster Operation

Modify a setting for a DB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.

# Arguments

## `DBClusterIdentifier = ::String` -- *Required*
The DB cluster identifier for the cluster being modified. This parameter is not case-sensitive.

Constraints:

*   Must match the identifier of an existing DBCluster.


## `NewDBClusterIdentifier = ::String`
The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is stored as a lowercase string.

Constraints:

*   Must contain from 1 to 63 letters, numbers, or hyphens

*   The first character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

Example: `my-cluster2`


## `ApplyImmediately = ::Bool`
A value that specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the `PreferredMaintenanceWindow` setting for the DB cluster. If this parameter is set to `false`, changes to the DB cluster are applied during the next maintenance window.

The `ApplyImmediately` parameter only affects the `NewDBClusterIdentifier` and `MasterUserPassword` values. If you set the `ApplyImmediately` parameter value to false, then changes to the `NewDBClusterIdentifier` and `MasterUserPassword` values are applied during the next maintenance window. All other changes are applied immediately, regardless of the value of the `ApplyImmediately` parameter.

Default: `false`


## `BackupRetentionPeriod = ::Int`
The number of days for which automated backups are retained. You must specify a minimum value of 1.

Default: 1

Constraints:

*   Must be a value from 1 to 35


## `DBClusterParameterGroupName = ::String`
The name of the DB cluster parameter group to use for the DB cluster.


## `VpcSecurityGroupIds = [::String, ...]`
A list of VPC security groups that the DB cluster will belong to.


## `Port = ::Int`
The port number on which the DB cluster accepts connections.

Constraints: Value must be `1150-65535`

Default: The same port as the original DB cluster.


## `MasterUserPassword = ::String`
The new password for the master database user. This password can contain any printable ASCII character except "/", \"\"\", or "@".

Constraints: Must contain from 8 to 41 characters.


## `OptionGroupName = ::String`
A value that indicates that the DB cluster should be associated with the specified option group. Changing this parameter doesn't result in an outage except in the following case, and the change is applied during the next maintenance window unless the `ApplyImmediately` parameter is set to `true` for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted.

Permanent options can't be removed from an option group. The option group can't be removed from a DB cluster once it is associated with a DB cluster.


## `PreferredBackupWindow = ::String`
The daily time range during which automated backups are created if automated backups are enabled, using the `BackupRetentionPeriod` parameter.

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region.

Constraints:

*   Must be in the format `hh24:mi-hh24:mi`.

*   Must be in Universal Coordinated Time (UTC).

*   Must not conflict with the preferred maintenance window.

*   Must be at least 30 minutes.


## `PreferredMaintenanceWindow = ::String`
The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).

Format: `ddd:hh24:mi-ddd:hh24:mi`

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

Default: `false`


## `EngineVersion = ::String`
The version number of the database engine to which you want to upgrade. Changing this parameter results in an outage. The change is applied during the next maintenance window unless the ApplyImmediately parameter is set to true.

For a list of valid engine versions, see [CreateDBInstance](@ref), or call [DescribeDBEngineVersions](@ref).




# Returns

`ModifyDBClusterResult`

# Exceptions

`DBClusterNotFoundFault`, `InvalidDBClusterStateFault`, `StorageQuotaExceededFault`, `DBSubnetGroupNotFoundFault`, `InvalidVPCNetworkStateFault`, `InvalidDBSubnetGroupStateFault`, `InvalidSubnet`, `DBClusterParameterGroupNotFoundFault`, `InvalidDBSecurityGroupStateFault`, `InvalidDBInstanceStateFault` or `DBClusterAlreadyExistsFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBCluster)
"""
@inline modify_dbcluster(aws::AWSConfig=default_aws_config(); args...) = modify_dbcluster(aws, args)

@inline modify_dbcluster(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "ModifyDBCluster", args)

@inline modify_dbcluster(args) = modify_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.Neptune.modify_dbcluster_parameter_group
    modify_dbcluster_parameter_group([::AWSConfig], arguments::Dict)
    modify_dbcluster_parameter_group([::AWSConfig]; DBClusterParameterGroupName=, Parameters=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "ModifyDBClusterParameterGroup", arguments::Dict)
    neptune([::AWSConfig], "ModifyDBClusterParameterGroup", DBClusterParameterGroupName=, Parameters=)

# ModifyDBClusterParameterGroup Operation

Modifies the parameters of a DB cluster parameter group. To modify more than one parameter, submit a list of the following: `ParameterName`, `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be modified in a single request.

**Note**
> Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB cluster associated with the parameter group before the change can take effect.

**Important**
> After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the `character_set_database` parameter. You can use the *Parameter Groups* option of the Amazon Neptune console or the [DescribeDBClusterParameters](@ref) command to verify that your DB cluster parameter group has been created or modified.

# Arguments

## `DBClusterParameterGroupName = ::String` -- *Required*
The name of the DB cluster parameter group to modify.


## `Parameters = [[ ... ], ...]` -- *Required*
A list of parameters in the DB cluster parameter group to modify.
```
 Parameters = [[
        "ParameterName" =>  ::String,
        "ParameterValue" =>  ::String,
        "Description" =>  ::String,
        "Source" =>  ::String,
        "ApplyType" =>  ::String,
        "DataType" =>  ::String,
        "AllowedValues" =>  ::String,
        "IsModifiable" =>  ::Bool,
        "MinimumEngineVersion" =>  ::String,
        "ApplyMethod" =>  "immediate" or "pending-reboot"
    ], ...]
```



# Returns

`DBClusterParameterGroupNameMessage`

# Exceptions

`DBParameterGroupNotFoundFault` or `InvalidDBParameterGroupStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBClusterParameterGroup)
"""
@inline modify_dbcluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = modify_dbcluster_parameter_group(aws, args)

@inline modify_dbcluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "ModifyDBClusterParameterGroup", args)

@inline modify_dbcluster_parameter_group(args) = modify_dbcluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.modify_dbcluster_snapshot_attribute
    modify_dbcluster_snapshot_attribute([::AWSConfig], arguments::Dict)
    modify_dbcluster_snapshot_attribute([::AWSConfig]; DBClusterSnapshotIdentifier=, AttributeName=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "ModifyDBClusterSnapshotAttribute", arguments::Dict)
    neptune([::AWSConfig], "ModifyDBClusterSnapshotAttribute", DBClusterSnapshotIdentifier=, AttributeName=, <keyword arguments>)

# ModifyDBClusterSnapshotAttribute Operation

Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot.

To share a manual DB cluster snapshot with other AWS accounts, specify `restore` as the `AttributeName` and use the `ValuesToAdd` parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB cluster snapshot. Use the value `all` to make the manual DB cluster snapshot public, which means that it can be copied or restored by all AWS accounts. Do not add the `all` value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts. If a manual DB cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the `ValuesToAdd` parameter. You can't use `all` as a value for that parameter in this case.

To view which AWS accounts have access to copy or restore a manual DB cluster snapshot, or whether a manual DB cluster snapshot public or private, use the [DescribeDBClusterSnapshotAttributes](@ref) API action.

# Arguments

## `DBClusterSnapshotIdentifier = ::String` -- *Required*
The identifier for the DB cluster snapshot to modify the attributes for.


## `AttributeName = ::String` -- *Required*
The name of the DB cluster snapshot attribute to modify.

To manage authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this value to `restore`.


## `ValuesToAdd = [::String, ...]`
A list of DB cluster snapshot attributes to add to the attribute specified by `AttributeName`.

To authorize other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account IDs, or `all` to make the manual DB cluster snapshot restorable by any AWS account. Do not add the `all` value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts.


## `ValuesToRemove = [::String, ...]`
A list of DB cluster snapshot attributes to remove from the attribute specified by `AttributeName`.

To remove authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account identifiers, or `all` to remove authorization for any AWS account to copy or restore the DB cluster snapshot. If you specify `all`, an AWS account whose account ID is explicitly added to the `restore` attribute can still copy or restore a manual DB cluster snapshot.




# Returns

`ModifyDBClusterSnapshotAttributeResult`

# Exceptions

`DBClusterSnapshotNotFoundFault`, `InvalidDBClusterSnapshotStateFault` or `SharedSnapshotQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBClusterSnapshotAttribute)
"""
@inline modify_dbcluster_snapshot_attribute(aws::AWSConfig=default_aws_config(); args...) = modify_dbcluster_snapshot_attribute(aws, args)

@inline modify_dbcluster_snapshot_attribute(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "ModifyDBClusterSnapshotAttribute", args)

@inline modify_dbcluster_snapshot_attribute(args) = modify_dbcluster_snapshot_attribute(default_aws_config(), args)


"""
    using AWSSDK.Neptune.modify_dbinstance
    modify_dbinstance([::AWSConfig], arguments::Dict)
    modify_dbinstance([::AWSConfig]; DBInstanceIdentifier=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "ModifyDBInstance", arguments::Dict)
    neptune([::AWSConfig], "ModifyDBInstance", DBInstanceIdentifier=, <keyword arguments>)

# ModifyDBInstance Operation

Modifies settings for a DB instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. To learn what modifications you can make to your DB instance, call [DescribeValidDBInstanceModifications](@ref) before you call [ModifyDBInstance](@ref).

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
The DB instance identifier. This value is stored as a lowercase string.

Constraints:

*   Must match the identifier of an existing DBInstance.


## `AllocatedStorage = ::Int`
The new amount of storage (in gibibytes) to allocate for the DB instance.

Not applicable. Storage is managed by the DB Cluster.


## `DBInstanceClass = ::String`
The new compute and memory capacity of the DB instance, for example, `db.m4.large`. Not all DB instance classes are available in all AWS Regions.

If you modify the DB instance class, an outage occurs during the change. The change is applied during the next maintenance window, unless `ApplyImmediately` is specified as `true` for this request.

Default: Uses existing setting


## `DBSubnetGroupName = ::String`
The new DB subnet group for the DB instance. You can use this parameter to move your DB instance to a different VPC.

Changing the subnet group causes an outage during the change. The change is applied during the next maintenance window, unless you specify `true` for the `ApplyImmediately` parameter.

Constraints: If supplied, must match the name of an existing DBSubnetGroup.

Example: `mySubnetGroup`


## `DBSecurityGroups = [::String, ...]`
A list of DB security groups to authorize on this DB instance. Changing this setting doesn't result in an outage and the change is asynchronously applied as soon as possible.

Constraints:

*   If supplied, must match existing DBSecurityGroups.


## `VpcSecurityGroupIds = [::String, ...]`
A list of EC2 VPC security groups to authorize on this DB instance. This change is asynchronously applied as soon as possible.

Not applicable. The associated list of EC2 VPC security groups is managed by the DB cluster. For more information, see [ModifyDBCluster](@ref).

Constraints:

*   If supplied, must match existing VpcSecurityGroupIds.


## `ApplyImmediately = ::Bool`
Specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the `PreferredMaintenanceWindow` setting for the DB instance.

If this parameter is set to `false`, changes to the DB instance are applied during the next maintenance window. Some parameter changes can cause an outage and are applied on the next call to [RebootDBInstance](@ref), or the next failure reboot.

Default: `false`


## `MasterUserPassword = ::String`
The new password for the master user. The password can include any printable ASCII character except "/", \"\"\", or "@".

Not applicable.

Default: Uses existing setting


## `DBParameterGroupName = ::String`
The name of the DB parameter group to apply to the DB instance. Changing this setting doesn't result in an outage. The parameter group name itself is changed immediately, but the actual parameter changes are not applied until you reboot the instance without failover. The db instance will NOT be rebooted automatically and the parameter changes will NOT be applied during the next maintenance window.

Default: Uses existing setting

Constraints: The DB parameter group must be in the same DB parameter group family as this DB instance.


## `BackupRetentionPeriod = ::Int`
The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.

Not applicable. The retention period for automated backups is managed by the DB cluster. For more information, see [ModifyDBCluster](@ref).

Default: Uses existing setting


## `PreferredBackupWindow = ::String`
The daily time range during which automated backups are created if automated backups are enabled.

Not applicable. The daily time range for creating automated backups is managed by the DB cluster. For more information, see [ModifyDBCluster](@ref).

Constraints:

*   Must be in the format hh24:mi-hh24:mi

*   Must be in Universal Time Coordinated (UTC)

*   Must not conflict with the preferred maintenance window

*   Must be at least 30 minutes


## `PreferredMaintenanceWindow = ::String`
The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter doesn't result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If there are pending actions that cause a reboot, and the maintenance window is changed to include the current time, then changing this parameter will cause a reboot of the DB instance. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.

Default: Uses existing setting

Format: ddd:hh24:mi-ddd:hh24:mi

Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun

Constraints: Must be at least 30 minutes


## `MultiAZ = ::Bool`
Specifies if the DB instance is a Multi-AZ deployment. Changing this parameter doesn't result in an outage and the change is applied during the next maintenance window unless the `ApplyImmediately` parameter is set to `true` for this request.


## `EngineVersion = ::String`
The version number of the database engine to upgrade to. Changing this parameter results in an outage and the change is applied during the next maintenance window unless the `ApplyImmediately` parameter is set to `true` for this request.

For major version upgrades, if a nondefault DB parameter group is currently in use, a new DB parameter group in the DB parameter group family for the new engine version must be specified. The new DB parameter group can be the default for that DB parameter group family.


## `AllowMajorVersionUpgrade = ::Bool`
Indicates that major version upgrades are allowed. Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible.

Constraints: This parameter must be set to true when specifying a value for the EngineVersion parameter that is a different major version than the DB instance's current version.


## `AutoMinorVersionUpgrade = ::Bool`
Indicates that minor version upgrades are applied automatically to the DB instance during the maintenance window. Changing this parameter doesn't result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to `true` during the maintenance window, and a newer minor version is available, and Neptune has enabled auto patching for that engine version.


## `LicenseModel = ::String`
The license model for the DB instance.

Valid values: `license-included` | `bring-your-own-license` | `general-public-license`


## `Iops = ::Int`
The new Provisioned IOPS (I/O operations per second) value for the instance.

Changing this setting doesn't result in an outage and the change is applied during the next maintenance window unless the `ApplyImmediately` parameter is set to `true` for this request.

Default: Uses existing setting


## `OptionGroupName = ::String`
Indicates that the DB instance should be associated with the specified option group. Changing this parameter doesn't result in an outage except in the following case and the change is applied during the next maintenance window unless the `ApplyImmediately` parameter is set to `true` for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted.

Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance


## `NewDBInstanceIdentifier = ::String`
The new DB instance identifier for the DB instance when renaming a DB instance. When you change the DB instance identifier, an instance reboot will occur immediately if you set `Apply Immediately` to true, or will occur during the next maintenance window if `Apply Immediately` to false. This value is stored as a lowercase string.

Constraints:

*   Must contain from 1 to 63 letters, numbers, or hyphens.

*   The first character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

Example: `mydbinstance`


## `StorageType = ::String`
Specifies the storage type to be associated with the DB instance.

If you specify Provisioned IOPS (`io1`), you must also include a value for the `Iops` parameter.

If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance is available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance are suspended. No other Amazon Neptune operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a Read Replica for the instance, and creating a DB snapshot of the instance.

Valid values: `standard | gp2 | io1`

Default: `io1` if the `Iops` parameter is specified, otherwise `standard`


## `TdeCredentialArn = ::String`
The ARN from the key store with which to associate the instance for TDE encryption.


## `TdeCredentialPassword = ::String`
The password for the given ARN from the key store in order to access the device.


## `CACertificateIdentifier = ::String`
Indicates the certificate that needs to be associated with the instance.


## `Domain = ::String`
Not supported.


## `CopyTagsToSnapshot = ::Bool`
True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise false. The default is false.


## `MonitoringInterval = ::Int`
The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.

If `MonitoringRoleArn` is specified, then you must also set `MonitoringInterval` to a value other than 0.

Valid Values: `0, 1, 5, 10, 15, 30, 60`


## `DBPortNumber = ::Int`
The port number on which the database accepts connections.

The value of the `DBPortNumber` parameter must not match any of the port values specified for options in the option group for the DB instance.

Your database will restart when you change the `DBPortNumber` value regardless of the value of the `ApplyImmediately` parameter.

Default: `8182`


## `PubliclyAccessible = ::Bool`
This parameter is not supported.


## `MonitoringRoleArn = ::String`
The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, `arn:aws:iam:123456789012:role/emaccess`.

If `MonitoringInterval` is set to a value other than 0, then you must supply a `MonitoringRoleArn` value.


## `DomainIAMRoleName = ::String`
Not supported


## `PromotionTier = ::Int`
A value that specifies the order in which a Read Replica is promoted to the primary instance after a failure of the existing primary instance.

Default: 1

Valid Values: 0 - 15


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

You can enable IAM database authentication for the following database engines

Not applicable. Mapping AWS IAM accounts to database accounts is managed by the DB cluster. For more information, see [ModifyDBCluster](@ref).

Default: `false`


## `EnablePerformanceInsights = ::Bool`
True to enable Performance Insights for the DB instance, and otherwise false.


## `PerformanceInsightsKMSKeyId = ::String`
The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.


## `CloudwatchLogsExportConfiguration = [ ... ]`
The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB instance or DB cluster.
```
 CloudwatchLogsExportConfiguration = [
        "EnableLogTypes" =>  [::String, ...],
        "DisableLogTypes" =>  [::String, ...]
    ]
```



# Returns

`ModifyDBInstanceResult`

# Exceptions

`InvalidDBInstanceStateFault`, `InvalidDBSecurityGroupStateFault`, `DBInstanceAlreadyExistsFault`, `DBInstanceNotFoundFault`, `DBSecurityGroupNotFoundFault`, `DBParameterGroupNotFoundFault`, `InsufficientDBInstanceCapacityFault`, `StorageQuotaExceededFault`, `InvalidVPCNetworkStateFault`, `ProvisionedIopsNotAvailableInAZFault`, `OptionGroupNotFoundFault`, `DBUpgradeDependencyFailureFault`, `StorageTypeNotSupportedFault`, `AuthorizationNotFoundFault`, `CertificateNotFoundFault` or `DomainNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBInstance)
"""
@inline modify_dbinstance(aws::AWSConfig=default_aws_config(); args...) = modify_dbinstance(aws, args)

@inline modify_dbinstance(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "ModifyDBInstance", args)

@inline modify_dbinstance(args) = modify_dbinstance(default_aws_config(), args)


"""
    using AWSSDK.Neptune.modify_dbparameter_group
    modify_dbparameter_group([::AWSConfig], arguments::Dict)
    modify_dbparameter_group([::AWSConfig]; DBParameterGroupName=, Parameters=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "ModifyDBParameterGroup", arguments::Dict)
    neptune([::AWSConfig], "ModifyDBParameterGroup", DBParameterGroupName=, Parameters=)

# ModifyDBParameterGroup Operation

Modifies the parameters of a DB parameter group. To modify more than one parameter, submit a list of the following: `ParameterName`, `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be modified in a single request.

**Note**
> Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB instance associated with the parameter group before the change can take effect.

**Important**
> After you modify a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon Neptune to fully complete the modify action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the `character_set_database` parameter. You can use the *Parameter Groups* option of the Amazon Neptune console or the *DescribeDBParameters* command to verify that your DB parameter group has been created or modified.

# Arguments

## `DBParameterGroupName = ::String` -- *Required*
The name of the DB parameter group.

Constraints:

*   If supplied, must match the name of an existing DBParameterGroup.


## `Parameters = [[ ... ], ...]` -- *Required*
An array of parameter names, values, and the apply method for the parameter update. At least one parameter name, value, and apply method must be supplied; subsequent arguments are optional. A maximum of 20 parameters can be modified in a single request.

Valid Values (for the application method): `immediate | pending-reboot`

**Note**
> You can use the immediate value with dynamic parameters only. You can use the pending-reboot value for both dynamic and static parameters, and changes are applied when you reboot the DB instance without failover.
```
 Parameters = [[
        "ParameterName" =>  ::String,
        "ParameterValue" =>  ::String,
        "Description" =>  ::String,
        "Source" =>  ::String,
        "ApplyType" =>  ::String,
        "DataType" =>  ::String,
        "AllowedValues" =>  ::String,
        "IsModifiable" =>  ::Bool,
        "MinimumEngineVersion" =>  ::String,
        "ApplyMethod" =>  "immediate" or "pending-reboot"
    ], ...]
```



# Returns

`DBParameterGroupNameMessage`

# Exceptions

`DBParameterGroupNotFoundFault` or `InvalidDBParameterGroupStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBParameterGroup)
"""
@inline modify_dbparameter_group(aws::AWSConfig=default_aws_config(); args...) = modify_dbparameter_group(aws, args)

@inline modify_dbparameter_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "ModifyDBParameterGroup", args)

@inline modify_dbparameter_group(args) = modify_dbparameter_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.modify_dbsubnet_group
    modify_dbsubnet_group([::AWSConfig], arguments::Dict)
    modify_dbsubnet_group([::AWSConfig]; DBSubnetGroupName=, SubnetIds=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "ModifyDBSubnetGroup", arguments::Dict)
    neptune([::AWSConfig], "ModifyDBSubnetGroup", DBSubnetGroupName=, SubnetIds=, <keyword arguments>)

# ModifyDBSubnetGroup Operation

Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.

# Arguments

## `DBSubnetGroupName = ::String` -- *Required*
The name for the DB subnet group. This value is stored as a lowercase string. You can't modify the default subnet group.

Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.

Example: `mySubnetgroup`


## `DBSubnetGroupDescription = ::String`
The description for the DB subnet group.


## `SubnetIds = [::String, ...]` -- *Required*
The EC2 subnet IDs for the DB subnet group.




# Returns

`ModifyDBSubnetGroupResult`

# Exceptions

`DBSubnetGroupNotFoundFault`, `DBSubnetQuotaExceededFault`, `SubnetAlreadyInUse`, `DBSubnetGroupDoesNotCoverEnoughAZs` or `InvalidSubnet`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBSubnetGroup)
"""
@inline modify_dbsubnet_group(aws::AWSConfig=default_aws_config(); args...) = modify_dbsubnet_group(aws, args)

@inline modify_dbsubnet_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "ModifyDBSubnetGroup", args)

@inline modify_dbsubnet_group(args) = modify_dbsubnet_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.modify_event_subscription
    modify_event_subscription([::AWSConfig], arguments::Dict)
    modify_event_subscription([::AWSConfig]; SubscriptionName=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "ModifyEventSubscription", arguments::Dict)
    neptune([::AWSConfig], "ModifyEventSubscription", SubscriptionName=, <keyword arguments>)

# ModifyEventSubscription Operation

Modifies an existing event notification subscription. Note that you can't modify the source identifiers using this call; to change source identifiers for a subscription, use the [AddSourceIdentifierToSubscription](@ref) and [RemoveSourceIdentifierFromSubscription](@ref) calls.

You can see a list of the event categories for a given SourceType by using the **DescribeEventCategories** action.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the event notification subscription.


## `SnsTopicArn = ::String`
The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.


## `SourceType = ::String`
The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.

Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot


## `EventCategories = [::String, ...]`
A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType by using the **DescribeEventCategories** action.


## `Enabled = ::Bool`
A Boolean value; set to **true** to activate the subscription.




# Returns

`ModifyEventSubscriptionResult`

# Exceptions

`EventSubscriptionQuotaExceededFault`, `SubscriptionNotFoundFault`, `SNSInvalidTopicFault`, `SNSNoAuthorizationFault`, `SNSTopicArnNotFoundFault` or `SubscriptionCategoryNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyEventSubscription)
"""
@inline modify_event_subscription(aws::AWSConfig=default_aws_config(); args...) = modify_event_subscription(aws, args)

@inline modify_event_subscription(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "ModifyEventSubscription", args)

@inline modify_event_subscription(args) = modify_event_subscription(default_aws_config(), args)


"""
    using AWSSDK.Neptune.promote_read_replica_dbcluster
    promote_read_replica_dbcluster([::AWSConfig], arguments::Dict)
    promote_read_replica_dbcluster([::AWSConfig]; DBClusterIdentifier=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "PromoteReadReplicaDBCluster", arguments::Dict)
    neptune([::AWSConfig], "PromoteReadReplicaDBCluster", DBClusterIdentifier=)

# PromoteReadReplicaDBCluster Operation

Promotes a Read Replica DB cluster to a standalone DB cluster.

# Arguments

## `DBClusterIdentifier = ::String` -- *Required*
The identifier of the DB cluster Read Replica to promote. This parameter is not case-sensitive.

Constraints:

*   Must match the identifier of an existing DBCluster Read Replica.

Example: `my-cluster-replica1`




# Returns

`PromoteReadReplicaDBClusterResult`

# Exceptions

`DBClusterNotFoundFault` or `InvalidDBClusterStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/PromoteReadReplicaDBCluster)
"""
@inline promote_read_replica_dbcluster(aws::AWSConfig=default_aws_config(); args...) = promote_read_replica_dbcluster(aws, args)

@inline promote_read_replica_dbcluster(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "PromoteReadReplicaDBCluster", args)

@inline promote_read_replica_dbcluster(args) = promote_read_replica_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.Neptune.reboot_dbinstance
    reboot_dbinstance([::AWSConfig], arguments::Dict)
    reboot_dbinstance([::AWSConfig]; DBInstanceIdentifier=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "RebootDBInstance", arguments::Dict)
    neptune([::AWSConfig], "RebootDBInstance", DBInstanceIdentifier=, <keyword arguments>)

# RebootDBInstance Operation

You might need to reboot your DB instance, usually for maintenance reasons. For example, if you make certain modifications, or if you change the DB parameter group associated with the DB instance, you must reboot the instance for the changes to take effect.

Rebooting a DB instance restarts the database engine service. Rebooting a DB instance results in a momentary outage, during which the DB instance status is set to rebooting.

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
The DB instance identifier. This parameter is stored as a lowercase string.

Constraints:

*   Must match the identifier of an existing DBInstance.


## `ForceFailover = ::Bool`
When `true`, the reboot is conducted through a MultiAZ failover.

Constraint: You can't specify `true` if the instance is not configured for MultiAZ.




# Returns

`RebootDBInstanceResult`

# Exceptions

`InvalidDBInstanceStateFault` or `DBInstanceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RebootDBInstance)
"""
@inline reboot_dbinstance(aws::AWSConfig=default_aws_config(); args...) = reboot_dbinstance(aws, args)

@inline reboot_dbinstance(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "RebootDBInstance", args)

@inline reboot_dbinstance(args) = reboot_dbinstance(default_aws_config(), args)


"""
    using AWSSDK.Neptune.remove_role_from_dbcluster
    remove_role_from_dbcluster([::AWSConfig], arguments::Dict)
    remove_role_from_dbcluster([::AWSConfig]; DBClusterIdentifier=, RoleArn=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "RemoveRoleFromDBCluster", arguments::Dict)
    neptune([::AWSConfig], "RemoveRoleFromDBCluster", DBClusterIdentifier=, RoleArn=)

# RemoveRoleFromDBCluster Operation

Disassociates an Identity and Access Management (IAM) role from a DB cluster.

# Arguments

## `DBClusterIdentifier = ::String` -- *Required*
The name of the DB cluster to disassociate the IAM role from.


## `RoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM role to disassociate from the DB cluster, for example `arn:aws:iam::123456789012:role/NeptuneAccessRole`.




# Exceptions

`DBClusterNotFoundFault`, `DBClusterRoleNotFoundFault` or `InvalidDBClusterStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RemoveRoleFromDBCluster)
"""
@inline remove_role_from_dbcluster(aws::AWSConfig=default_aws_config(); args...) = remove_role_from_dbcluster(aws, args)

@inline remove_role_from_dbcluster(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "RemoveRoleFromDBCluster", args)

@inline remove_role_from_dbcluster(args) = remove_role_from_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.Neptune.remove_source_identifier_from_subscription
    remove_source_identifier_from_subscription([::AWSConfig], arguments::Dict)
    remove_source_identifier_from_subscription([::AWSConfig]; SubscriptionName=, SourceIdentifier=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "RemoveSourceIdentifierFromSubscription", arguments::Dict)
    neptune([::AWSConfig], "RemoveSourceIdentifierFromSubscription", SubscriptionName=, SourceIdentifier=)

# RemoveSourceIdentifierFromSubscription Operation

Removes a source identifier from an existing event notification subscription.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the event notification subscription you want to remove a source identifier from.


## `SourceIdentifier = ::String` -- *Required*
The source identifier to be removed from the subscription, such as the **DB instance identifier** for a DB instance or the name of a security group.




# Returns

`RemoveSourceIdentifierFromSubscriptionResult`

# Exceptions

`SubscriptionNotFoundFault` or `SourceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RemoveSourceIdentifierFromSubscription)
"""
@inline remove_source_identifier_from_subscription(aws::AWSConfig=default_aws_config(); args...) = remove_source_identifier_from_subscription(aws, args)

@inline remove_source_identifier_from_subscription(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "RemoveSourceIdentifierFromSubscription", args)

@inline remove_source_identifier_from_subscription(args) = remove_source_identifier_from_subscription(default_aws_config(), args)


"""
    using AWSSDK.Neptune.remove_tags_from_resource
    remove_tags_from_resource([::AWSConfig], arguments::Dict)
    remove_tags_from_resource([::AWSConfig]; ResourceName=, TagKeys=)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "RemoveTagsFromResource", arguments::Dict)
    neptune([::AWSConfig], "RemoveTagsFromResource", ResourceName=, TagKeys=)

# RemoveTagsFromResource Operation

Removes metadata tags from an Amazon Neptune resource.

# Arguments

## `ResourceName = ::String` -- *Required*
The Amazon Neptune resource that the tags are removed from. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see [Constructing an Amazon Resource Name (ARN)](http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).


## `TagKeys = [::String, ...]` -- *Required*
The tag key (name) of the tag to be removed.




# Exceptions

`DBInstanceNotFoundFault`, `DBSnapshotNotFoundFault` or `DBClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RemoveTagsFromResource)
"""
@inline remove_tags_from_resource(aws::AWSConfig=default_aws_config(); args...) = remove_tags_from_resource(aws, args)

@inline remove_tags_from_resource(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "RemoveTagsFromResource", args)

@inline remove_tags_from_resource(args) = remove_tags_from_resource(default_aws_config(), args)


"""
    using AWSSDK.Neptune.reset_dbcluster_parameter_group
    reset_dbcluster_parameter_group([::AWSConfig], arguments::Dict)
    reset_dbcluster_parameter_group([::AWSConfig]; DBClusterParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "ResetDBClusterParameterGroup", arguments::Dict)
    neptune([::AWSConfig], "ResetDBClusterParameterGroup", DBClusterParameterGroupName=, <keyword arguments>)

# ResetDBClusterParameterGroup Operation

Modifies the parameters of a DB cluster parameter group to the default value. To reset specific parameters submit a list of the following: `ParameterName` and `ApplyMethod`. To reset the entire DB cluster parameter group, specify the `DBClusterParameterGroupName` and `ResetAllParameters` parameters.

When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to `pending-reboot` to take effect on the next DB instance restart or [RebootDBInstance](@ref) request. You must call [RebootDBInstance](@ref) for every DB instance in your DB cluster that you want the updated static parameter to apply to.

# Arguments

## `DBClusterParameterGroupName = ::String` -- *Required*
The name of the DB cluster parameter group to reset.


## `ResetAllParameters = ::Bool`
A value that is set to `true` to reset all parameters in the DB cluster parameter group to their default values, and `false` otherwise. You can't use this parameter if there is a list of parameter names specified for the `Parameters` parameter.


## `Parameters = [[ ... ], ...]`
A list of parameter names in the DB cluster parameter group to reset to the default values. You can't use this parameter if the `ResetAllParameters` parameter is set to `true`.
```
 Parameters = [[
        "ParameterName" =>  ::String,
        "ParameterValue" =>  ::String,
        "Description" =>  ::String,
        "Source" =>  ::String,
        "ApplyType" =>  ::String,
        "DataType" =>  ::String,
        "AllowedValues" =>  ::String,
        "IsModifiable" =>  ::Bool,
        "MinimumEngineVersion" =>  ::String,
        "ApplyMethod" =>  "immediate" or "pending-reboot"
    ], ...]
```



# Returns

`DBClusterParameterGroupNameMessage`

# Exceptions

`InvalidDBParameterGroupStateFault` or `DBParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ResetDBClusterParameterGroup)
"""
@inline reset_dbcluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = reset_dbcluster_parameter_group(aws, args)

@inline reset_dbcluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "ResetDBClusterParameterGroup", args)

@inline reset_dbcluster_parameter_group(args) = reset_dbcluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.reset_dbparameter_group
    reset_dbparameter_group([::AWSConfig], arguments::Dict)
    reset_dbparameter_group([::AWSConfig]; DBParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "ResetDBParameterGroup", arguments::Dict)
    neptune([::AWSConfig], "ResetDBParameterGroup", DBParameterGroupName=, <keyword arguments>)

# ResetDBParameterGroup Operation

Modifies the parameters of a DB parameter group to the engine/system default value. To reset specific parameters, provide a list of the following: `ParameterName` and `ApplyMethod`. To reset the entire DB parameter group, specify the `DBParameterGroup` name and `ResetAllParameters` parameters. When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to `pending-reboot` to take effect on the next DB instance restart or `RebootDBInstance` request.

# Arguments

## `DBParameterGroupName = ::String` -- *Required*
The name of the DB parameter group.

Constraints:

*   Must match the name of an existing DBParameterGroup.


## `ResetAllParameters = ::Bool`
Specifies whether (`true`) or not (`false`) to reset all parameters in the DB parameter group to default values.

Default: `true`


## `Parameters = [[ ... ], ...]`
To reset the entire DB parameter group, specify the `DBParameterGroup` name and `ResetAllParameters` parameters. To reset specific parameters, provide a list of the following: `ParameterName` and `ApplyMethod`. A maximum of 20 parameters can be modified in a single request.

Valid Values (for Apply method): `pending-reboot`
```
 Parameters = [[
        "ParameterName" =>  ::String,
        "ParameterValue" =>  ::String,
        "Description" =>  ::String,
        "Source" =>  ::String,
        "ApplyType" =>  ::String,
        "DataType" =>  ::String,
        "AllowedValues" =>  ::String,
        "IsModifiable" =>  ::Bool,
        "MinimumEngineVersion" =>  ::String,
        "ApplyMethod" =>  "immediate" or "pending-reboot"
    ], ...]
```



# Returns

`DBParameterGroupNameMessage`

# Exceptions

`InvalidDBParameterGroupStateFault` or `DBParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ResetDBParameterGroup)
"""
@inline reset_dbparameter_group(aws::AWSConfig=default_aws_config(); args...) = reset_dbparameter_group(aws, args)

@inline reset_dbparameter_group(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "ResetDBParameterGroup", args)

@inline reset_dbparameter_group(args) = reset_dbparameter_group(default_aws_config(), args)


"""
    using AWSSDK.Neptune.restore_dbcluster_from_snapshot
    restore_dbcluster_from_snapshot([::AWSConfig], arguments::Dict)
    restore_dbcluster_from_snapshot([::AWSConfig]; DBClusterIdentifier=, SnapshotIdentifier=, Engine=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "RestoreDBClusterFromSnapshot", arguments::Dict)
    neptune([::AWSConfig], "RestoreDBClusterFromSnapshot", DBClusterIdentifier=, SnapshotIdentifier=, Engine=, <keyword arguments>)

# RestoreDBClusterFromSnapshot Operation

Creates a new DB cluster from a DB snapshot or DB cluster snapshot.

If a DB snapshot is specified, the target DB cluster is created from the source DB snapshot with a default configuration and default security group.

If a DB cluster snapshot is specified, the target DB cluster is created from the source DB cluster restore point with the same configuration as the original source DB cluster, except that the new DB cluster is created with the default security group.

# Arguments

## `AvailabilityZones = [::String, ...]`
Provides the list of EC2 Availability Zones that instances in the restored DB cluster can be created in.


## `DBClusterIdentifier = ::String` -- *Required*
The name of the DB cluster to create from the DB snapshot or DB cluster snapshot. This parameter isn't case-sensitive.

Constraints:

*   Must contain from 1 to 63 letters, numbers, or hyphens

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

Example: `my-snapshot-id`


## `SnapshotIdentifier = ::String` -- *Required*
The identifier for the DB snapshot or DB cluster snapshot to restore from.

You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster snapshot. However, you can use only the ARN to specify a DB snapshot.

Constraints:

*   Must match the identifier of an existing Snapshot.


## `Engine = ::String` -- *Required*
The database engine to use for the new DB cluster.

Default: The same as source

Constraint: Must be compatible with the engine of the source


## `EngineVersion = ::String`
The version of the database engine to use for the new DB cluster.


## `Port = ::Int`
The port number on which the new DB cluster accepts connections.

Constraints: Value must be `1150-65535`

Default: The same port as the original DB cluster.


## `DBSubnetGroupName = ::String`
The name of the DB subnet group to use for the new DB cluster.

Constraints: If supplied, must match the name of an existing DBSubnetGroup.

Example: `mySubnetgroup`


## `DatabaseName = ::String`
The database name for the restored DB cluster.


## `OptionGroupName = ::String`
The name of the option group to use for the restored DB cluster.


## `VpcSecurityGroupIds = [::String, ...]`
A list of VPC security groups that the new DB cluster will belong to.


## `Tags = [[ ... ], ...]`
The tags to be assigned to the restored DB cluster.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `KmsKeyId = ::String`
The AWS KMS key identifier to use when restoring an encrypted DB cluster from a DB snapshot or DB cluster snapshot.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.

If you do not specify a value for the `KmsKeyId` parameter, then the following will occur:

*   If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier` is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the DB snapshot or DB cluster snapshot.

*   If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier` is not encrypted, then the restored DB cluster is not encrypted.


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

Default: `false`




# Returns

`RestoreDBClusterFromSnapshotResult`

# Exceptions

`DBClusterAlreadyExistsFault`, `DBClusterQuotaExceededFault`, `StorageQuotaExceededFault`, `DBSubnetGroupNotFoundFault`, `DBSnapshotNotFoundFault`, `DBClusterSnapshotNotFoundFault`, `InsufficientDBClusterCapacityFault`, `InsufficientStorageClusterCapacityFault`, `InvalidDBSnapshotStateFault`, `InvalidDBClusterSnapshotStateFault`, `StorageQuotaExceededFault`, `InvalidVPCNetworkStateFault`, `InvalidRestoreFault`, `DBSubnetGroupNotFoundFault`, `InvalidSubnet`, `OptionGroupNotFoundFault` or `KMSKeyNotAccessibleFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RestoreDBClusterFromSnapshot)
"""
@inline restore_dbcluster_from_snapshot(aws::AWSConfig=default_aws_config(); args...) = restore_dbcluster_from_snapshot(aws, args)

@inline restore_dbcluster_from_snapshot(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "RestoreDBClusterFromSnapshot", args)

@inline restore_dbcluster_from_snapshot(args) = restore_dbcluster_from_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Neptune.restore_dbcluster_to_point_in_time
    restore_dbcluster_to_point_in_time([::AWSConfig], arguments::Dict)
    restore_dbcluster_to_point_in_time([::AWSConfig]; DBClusterIdentifier=, SourceDBClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.neptune
    neptune([::AWSConfig], "RestoreDBClusterToPointInTime", arguments::Dict)
    neptune([::AWSConfig], "RestoreDBClusterToPointInTime", DBClusterIdentifier=, SourceDBClusterIdentifier=, <keyword arguments>)

# RestoreDBClusterToPointInTime Operation

Restores a DB cluster to an arbitrary point in time. Users can restore to any point in time before `LatestRestorableTime` for up to `BackupRetentionPeriod` days. The target DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group.

**Note**
> This action only restores the DB cluster, not the DB instances for that DB cluster. You must invoke the [CreateDBInstance](@ref) action to create DB instances for the restored DB cluster, specifying the identifier of the restored DB cluster in `DBClusterIdentifier`. You can create DB instances only after the `RestoreDBClusterToPointInTime` action has completed and the DB cluster is available.

# Arguments

## `DBClusterIdentifier = ::String` -- *Required*
The name of the new DB cluster to be created.

Constraints:

*   Must contain from 1 to 63 letters, numbers, or hyphens

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens


## `RestoreType = ::String`
The type of restore to be performed. You can specify one of the following values:

*   `full-copy` - The new DB cluster is restored as a full copy of the source DB cluster.

*   `copy-on-write` - The new DB cluster is restored as a clone of the source DB cluster.

Constraints: You can't specify `copy-on-write` if the engine version of the source DB cluster is earlier than 1.11.

If you don't specify a `RestoreType` value, then the new DB cluster is restored as a full copy of the source DB cluster.


## `SourceDBClusterIdentifier = ::String` -- *Required*
The identifier of the source DB cluster from which to restore.

Constraints:

*   Must match the identifier of an existing DBCluster.


## `RestoreToTime = timestamp`
The date and time to restore the DB cluster to.

Valid Values: Value must be a time in Universal Coordinated Time (UTC) format

Constraints:

*   Must be before the latest restorable time for the DB instance

*   Must be specified if `UseLatestRestorableTime` parameter is not provided

*   Cannot be specified if `UseLatestRestorableTime` parameter is true

*   Cannot be specified if `RestoreType` parameter is `copy-on-write`

Example: `2015-03-07T23:45:00Z`


## `UseLatestRestorableTime = ::Bool`
A value that is set to `true` to restore the DB cluster to the latest restorable backup time, and `false` otherwise.

Default: `false`

Constraints: Cannot be specified if `RestoreToTime` parameter is provided.


## `Port = ::Int`
The port number on which the new DB cluster accepts connections.

Constraints: Value must be `1150-65535`

Default: The same port as the original DB cluster.


## `DBSubnetGroupName = ::String`
The DB subnet group name to use for the new DB cluster.

Constraints: If supplied, must match the name of an existing DBSubnetGroup.

Example: `mySubnetgroup`


## `OptionGroupName = ::String`
The name of the option group for the new DB cluster.


## `VpcSecurityGroupIds = [::String, ...]`
A list of VPC security groups that the new DB cluster belongs to.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `KmsKeyId = ::String`
The AWS KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.

You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is different than the KMS key used to encrypt the source DB cluster. The new DB cluster is encrypted with the KMS key identified by the `KmsKeyId` parameter.

If you do not specify a value for the `KmsKeyId` parameter, then the following will occur:

*   If the DB cluster is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the source DB cluster.

*   If the DB cluster is not encrypted, then the restored DB cluster is not encrypted.

If `DBClusterIdentifier` refers to a DB cluster that is not encrypted, then the restore request is rejected.


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

Default: `false`




# Returns

`RestoreDBClusterToPointInTimeResult`

# Exceptions

`DBClusterAlreadyExistsFault`, `DBClusterNotFoundFault`, `DBClusterQuotaExceededFault`, `DBClusterSnapshotNotFoundFault`, `DBSubnetGroupNotFoundFault`, `InsufficientDBClusterCapacityFault`, `InsufficientStorageClusterCapacityFault`, `InvalidDBClusterSnapshotStateFault`, `InvalidDBClusterStateFault`, `InvalidDBSnapshotStateFault`, `InvalidRestoreFault`, `InvalidSubnet`, `InvalidVPCNetworkStateFault`, `KMSKeyNotAccessibleFault`, `OptionGroupNotFoundFault` or `StorageQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RestoreDBClusterToPointInTime)
"""
@inline restore_dbcluster_to_point_in_time(aws::AWSConfig=default_aws_config(); args...) = restore_dbcluster_to_point_in_time(aws, args)

@inline restore_dbcluster_to_point_in_time(aws::AWSConfig, args) = AWSCore.Services.neptune(aws, "RestoreDBClusterToPointInTime", args)

@inline restore_dbcluster_to_point_in_time(args) = restore_dbcluster_to_point_in_time(default_aws_config(), args)




end # module Neptune


#==============================================================================#
# End of file
#==============================================================================#
