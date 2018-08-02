#==============================================================================#
# RDS.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/rds-2014-10-31.normal.json
#==============================================================================#

__precompile__()

module RDS

using AWSCore


"""
    using AWSSDK.RDS.add_role_to_dbcluster
    add_role_to_dbcluster([::AWSConfig], arguments::Dict)
    add_role_to_dbcluster([::AWSConfig]; DBClusterIdentifier=, RoleArn=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "AddRoleToDBCluster", arguments::Dict)
    rds([::AWSConfig], "AddRoleToDBCluster", DBClusterIdentifier=, RoleArn=)

# AddRoleToDBCluster Operation

Associates an Identity and Access Management (IAM) role from an Aurora DB cluster. For more information, see [Authorizing Amazon Aurora to Access Other AWS Services On Your Behalf](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Authorizing.AWSServices.html).

# Arguments

## `DBClusterIdentifier = ::String` -- *Required*
The name of the DB cluster to associate the IAM role with.


## `RoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM role to associate with the Aurora DB cluster, for example `arn:aws:iam::123456789012:role/AuroraAccessRole`.




# Exceptions

`DBClusterNotFoundFault`, `DBClusterRoleAlreadyExistsFault`, `InvalidDBClusterStateFault` or `DBClusterRoleQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddRoleToDBCluster)
"""
@inline add_role_to_dbcluster(aws::AWSConfig=default_aws_config(); args...) = add_role_to_dbcluster(aws, args)

@inline add_role_to_dbcluster(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "AddRoleToDBCluster", args)

@inline add_role_to_dbcluster(args) = add_role_to_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.RDS.add_source_identifier_to_subscription
    add_source_identifier_to_subscription([::AWSConfig], arguments::Dict)
    add_source_identifier_to_subscription([::AWSConfig]; SubscriptionName=, SourceIdentifier=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "AddSourceIdentifierToSubscription", arguments::Dict)
    rds([::AWSConfig], "AddSourceIdentifierToSubscription", SubscriptionName=, SourceIdentifier=)

# AddSourceIdentifierToSubscription Operation

Adds a source identifier to an existing RDS event notification subscription.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the RDS event notification subscription you want to add a source identifier to.


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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddSourceIdentifierToSubscription)
"""
@inline add_source_identifier_to_subscription(aws::AWSConfig=default_aws_config(); args...) = add_source_identifier_to_subscription(aws, args)

@inline add_source_identifier_to_subscription(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "AddSourceIdentifierToSubscription", args)

@inline add_source_identifier_to_subscription(args) = add_source_identifier_to_subscription(default_aws_config(), args)


"""
    using AWSSDK.RDS.add_tags_to_resource
    add_tags_to_resource([::AWSConfig], arguments::Dict)
    add_tags_to_resource([::AWSConfig]; ResourceName=, Tags=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "AddTagsToResource", arguments::Dict)
    rds([::AWSConfig], "AddTagsToResource", ResourceName=, Tags=)

# AddTagsToResource Operation

Adds metadata tags to an Amazon RDS resource. These tags can also be used with cost allocation reporting to track cost associated with Amazon RDS resources, or used in a Condition statement in an IAM policy for Amazon RDS.

For an overview on tagging Amazon RDS resources, see [Tagging Amazon RDS Resources](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html).

# Arguments

## `ResourceName = ::String` -- *Required*
The Amazon RDS resource that the tags are added to. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see [Constructing an RDS Amazon Resource Name (ARN)](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing).


## `Tags = [[ ... ], ...]` -- *Required*
The tags to be assigned to the Amazon RDS resource.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Exceptions

`DBInstanceNotFoundFault`, `DBSnapshotNotFoundFault` or `DBClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddTagsToResource)
"""
@inline add_tags_to_resource(aws::AWSConfig=default_aws_config(); args...) = add_tags_to_resource(aws, args)

@inline add_tags_to_resource(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "AddTagsToResource", args)

@inline add_tags_to_resource(args) = add_tags_to_resource(default_aws_config(), args)


"""
    using AWSSDK.RDS.apply_pending_maintenance_action
    apply_pending_maintenance_action([::AWSConfig], arguments::Dict)
    apply_pending_maintenance_action([::AWSConfig]; ResourceIdentifier=, ApplyAction=, OptInType=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ApplyPendingMaintenanceAction", arguments::Dict)
    rds([::AWSConfig], "ApplyPendingMaintenanceAction", ResourceIdentifier=, ApplyAction=, OptInType=)

# ApplyPendingMaintenanceAction Operation

Applies a pending maintenance action to a resource (for example, to a DB instance).

# Arguments

## `ResourceIdentifier = ::String` -- *Required*
The RDS Amazon Resource Name (ARN) of the resource that the pending maintenance action applies to. For information about creating an ARN, see [Constructing an RDS Amazon Resource Name (ARN)](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing).


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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ApplyPendingMaintenanceAction)
"""
@inline apply_pending_maintenance_action(aws::AWSConfig=default_aws_config(); args...) = apply_pending_maintenance_action(aws, args)

@inline apply_pending_maintenance_action(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ApplyPendingMaintenanceAction", args)

@inline apply_pending_maintenance_action(args) = apply_pending_maintenance_action(default_aws_config(), args)


"""
    using AWSSDK.RDS.authorize_dbsecurity_group_ingress
    authorize_dbsecurity_group_ingress([::AWSConfig], arguments::Dict)
    authorize_dbsecurity_group_ingress([::AWSConfig]; DBSecurityGroupName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "AuthorizeDBSecurityGroupIngress", arguments::Dict)
    rds([::AWSConfig], "AuthorizeDBSecurityGroupIngress", DBSecurityGroupName=, <keyword arguments>)

# AuthorizeDBSecurityGroupIngress Operation

Enables ingress to a DBSecurityGroup using one of two forms of authorization. First, EC2 or VPC security groups can be added to the DBSecurityGroup if the application using the database is running on EC2 or VPC instances. Second, IP ranges are available if the application accessing your database is running on the Internet. Required parameters for this API are one of CIDR range, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or EC2SecurityGroupId for non-VPC).

**Note**
> You can't authorize ingress from an EC2 security group in one AWS Region to an Amazon RDS DB instance in another. You can't authorize ingress from a VPC security group in one VPC to an Amazon RDS DB instance in another.

For an overview of CIDR ranges, go to the [Wikipedia Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

# Arguments

## `DBSecurityGroupName = ::String` -- *Required*
The name of the DB security group to add authorization to.


## `CIDRIP = ::String`
The IP range to authorize.


## `EC2SecurityGroupName = ::String`
Name of the EC2 security group to authorize. For VPC DB security groups, `EC2SecurityGroupId` must be provided. Otherwise, `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or `EC2SecurityGroupId` must be provided.


## `EC2SecurityGroupId = ::String`
Id of the EC2 security group to authorize. For VPC DB security groups, `EC2SecurityGroupId` must be provided. Otherwise, `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or `EC2SecurityGroupId` must be provided.


## `EC2SecurityGroupOwnerId = ::String`
AWS account number of the owner of the EC2 security group specified in the `EC2SecurityGroupName` parameter. The AWS Access Key ID is not an acceptable value. For VPC DB security groups, `EC2SecurityGroupId` must be provided. Otherwise, `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or `EC2SecurityGroupId` must be provided.




# Returns

`AuthorizeDBSecurityGroupIngressResult`

# Exceptions

`DBSecurityGroupNotFoundFault`, `InvalidDBSecurityGroupStateFault`, `AuthorizationAlreadyExistsFault` or `AuthorizationQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AuthorizeDBSecurityGroupIngress)
"""
@inline authorize_dbsecurity_group_ingress(aws::AWSConfig=default_aws_config(); args...) = authorize_dbsecurity_group_ingress(aws, args)

@inline authorize_dbsecurity_group_ingress(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "AuthorizeDBSecurityGroupIngress", args)

@inline authorize_dbsecurity_group_ingress(args) = authorize_dbsecurity_group_ingress(default_aws_config(), args)


"""
    using AWSSDK.RDS.backtrack_dbcluster
    backtrack_dbcluster([::AWSConfig], arguments::Dict)
    backtrack_dbcluster([::AWSConfig]; DBClusterIdentifier=, BacktrackTo=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "BacktrackDBCluster", arguments::Dict)
    rds([::AWSConfig], "BacktrackDBCluster", DBClusterIdentifier=, BacktrackTo=, <keyword arguments>)

# BacktrackDBCluster Operation

Backtracks a DB cluster to a specific time, without creating a new DB cluster.

For more information on backtracking, see [Backtracking an Aurora DB Cluster](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Managing.Backtrack.html) in the *Amazon RDS User Guide.*

# Arguments

## `DBClusterIdentifier = ::String` -- *Required*
The DB cluster identifier of the DB cluster to be backtracked. This parameter is stored as a lowercase string.

Constraints:

*   Must contain from 1 to 63 alphanumeric characters or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

Example: `my-cluster1`


## `BacktrackTo = timestamp` -- *Required*
The timestamp of the time to backtrack the DB cluster to, specified in ISO 8601 format. For more information about ISO 8601, see the [ISO8601 Wikipedia page.](http://en.wikipedia.org/wiki/ISO_8601)

**Note**
> If the specified time is not a consistent time for the DB cluster, Aurora automatically chooses the nearest possible consistent time for the DB cluster.

Constraints:

*   Must contain a valid ISO 8601 timestamp.

*   Cannot contain a timestamp set in the future.

Example: `2017-07-08T18:00Z`


## `Force = ::Bool`
A value that, if specified, forces the DB cluster to backtrack when binary logging is enabled. Otherwise, an error occurs when binary logging is enabled.


## `UseEarliestTimeOnPointInTimeUnavailable = ::Bool`
If *BacktrackTo* is set to a timestamp earlier than the earliest backtrack time, this value backtracks the DB cluster to the earliest possible backtrack time. Otherwise, an error occurs.




# Returns

`DBClusterBacktrack`

# Exceptions

`DBClusterNotFoundFault` or `InvalidDBClusterStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/BacktrackDBCluster)
"""
@inline backtrack_dbcluster(aws::AWSConfig=default_aws_config(); args...) = backtrack_dbcluster(aws, args)

@inline backtrack_dbcluster(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "BacktrackDBCluster", args)

@inline backtrack_dbcluster(args) = backtrack_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.RDS.copy_dbcluster_parameter_group
    copy_dbcluster_parameter_group([::AWSConfig], arguments::Dict)
    copy_dbcluster_parameter_group([::AWSConfig]; SourceDBClusterParameterGroupIdentifier=, TargetDBClusterParameterGroupIdentifier=, TargetDBClusterParameterGroupDescription=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CopyDBClusterParameterGroup", arguments::Dict)
    rds([::AWSConfig], "CopyDBClusterParameterGroup", SourceDBClusterParameterGroupIdentifier=, TargetDBClusterParameterGroupIdentifier=, TargetDBClusterParameterGroupDescription=, <keyword arguments>)

# CopyDBClusterParameterGroup Operation

Copies the specified DB cluster parameter group.

# Arguments

## `SourceDBClusterParameterGroupIdentifier = ::String` -- *Required*
The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group. For information about creating an ARN, see [Constructing an RDS Amazon Resource Name (ARN)](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing).

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBClusterParameterGroup)
"""
@inline copy_dbcluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = copy_dbcluster_parameter_group(aws, args)

@inline copy_dbcluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CopyDBClusterParameterGroup", args)

@inline copy_dbcluster_parameter_group(args) = copy_dbcluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.copy_dbcluster_snapshot
    copy_dbcluster_snapshot([::AWSConfig], arguments::Dict)
    copy_dbcluster_snapshot([::AWSConfig]; SourceDBClusterSnapshotIdentifier=, TargetDBClusterSnapshotIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CopyDBClusterSnapshot", arguments::Dict)
    rds([::AWSConfig], "CopyDBClusterSnapshot", SourceDBClusterSnapshotIdentifier=, TargetDBClusterSnapshotIdentifier=, <keyword arguments>)

# CopyDBClusterSnapshot Operation

Copies a snapshot of a DB cluster.

To copy a DB cluster snapshot from a shared manual DB cluster snapshot, `SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name (ARN) of the shared DB cluster snapshot.

You can copy an encrypted DB cluster snapshot from another AWS Region. In that case, the AWS Region where you call the `CopyDBClusterSnapshot` action is the destination AWS Region for the encrypted DB cluster snapshot to be copied to. To copy an encrypted DB cluster snapshot from another AWS Region, you must provide the following values:

*   `KmsKeyId` - The AWS Key Management System (AWS KMS) key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region.

*   `PreSignedUrl` - A URL that contains a Signature Version 4 signed request for the `CopyDBClusterSnapshot` action to be called in the source AWS Region where the DB cluster snapshot is copied from. The pre-signed URL must be a valid request for the `CopyDBClusterSnapshot` API action that can be executed in the source AWS Region that contains the encrypted DB cluster snapshot to be copied.

    The pre-signed URL request must contain the following parameter values:

    *   `KmsKeyId` - The KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. This is the same identifier for both the `CopyDBClusterSnapshot` action that is called in the destination AWS Region, and the action contained in the pre-signed URL.

    *   `DestinationRegion` - The name of the AWS Region that the DB cluster snapshot will be created in.

    *   `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 AWS Region, then your `SourceDBClusterSnapshotIdentifier` looks like the following example: `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115`.

    To learn how to generate a Signature Version 4 signed request, see [Authenticating Requests: Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) and [Signature Version 4 Signing Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

*   `TargetDBClusterSnapshotIdentifier` - The identifier for the new copy of the DB cluster snapshot in the destination AWS Region.

*   `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the ARN format for the source AWS Region and is the same value as the `SourceDBClusterSnapshotIdentifier` in the pre-signed URL.

To cancel the copy operation once it is in progress, delete the target DB cluster snapshot identified by `TargetDBClusterSnapshotIdentifier` while that DB cluster snapshot is in "copying" status.

For more information on copying encrypted DB cluster snapshots from one AWS Region to another, see [Copying a DB Cluster Snapshot in the Same Account, Either in the Same Region or Across Regions](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopyDBClusterSnapshot.CrossRegion) in the *Amazon RDS User Guide.*

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

# Arguments

## `SourceDBClusterSnapshotIdentifier = ::String` -- *Required*
The identifier of the DB cluster snapshot to copy. This parameter is not case-sensitive.

You can't copy an encrypted, shared DB cluster snapshot from one AWS Region to another.

Constraints:

*   Must specify a valid system snapshot in the "available" state.

*   If the source snapshot is in the same AWS Region as the copy, specify a valid DB snapshot identifier.

*   If the source snapshot is in a different AWS Region than the copy, specify a valid DB cluster snapshot ARN. For more information, go to [Copying a DB Snapshot or DB Cluster Snapshot](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html).

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

If you copy an encrypted DB cluster snapshot from your AWS account, you can specify a value for `KmsKeyId` to encrypt the copy with a new KMS encryption key. If you don't specify a value for `KmsKeyId`, then the copy of the DB cluster snapshot is encrypted with the same KMS key as the source DB cluster snapshot.

If you copy an encrypted DB cluster snapshot that is shared from another AWS account, then you must specify a value for `KmsKeyId`.

To copy an encrypted DB cluster snapshot to another AWS Region, you must set `KmsKeyId` to the KMS key ID you want to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. KMS encryption keys are specific to the AWS Region that they are created in, and you can't use encryption keys from one AWS Region in another AWS Region.

If you copy an unencrypted DB cluster snapshot and specify a value for the `KmsKeyId` parameter, an error is returned.


## `PreSignedUrl = ::String`
The URL that contains a Signature Version 4 signed request for the `CopyDBClusterSnapshot` API action in the AWS Region that contains the source DB cluster snapshot to copy. The `PreSignedUrl` parameter must be used when copying an encrypted DB cluster snapshot from another AWS Region.

The pre-signed URL must be a valid request for the `CopyDBSClusterSnapshot` API action that can be executed in the source AWS Region that contains the encrypted DB cluster snapshot to be copied. The pre-signed URL request must contain the following parameter values:

*   `KmsKeyId` - The AWS KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. This is the same identifier for both the `CopyDBClusterSnapshot` action that is called in the destination AWS Region, and the action contained in the pre-signed URL.

*   `DestinationRegion` - The name of the AWS Region that the DB cluster snapshot will be created in.

*   `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 AWS Region, then your `SourceDBClusterSnapshotIdentifier` looks like the following example: `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115`.

To learn how to generate a Signature Version 4 signed request, see [Authenticating Requests: Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) and [Signature Version 4 Signing Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

**Note**
> If you supply a value for this operation's `SourceRegion` parameter, a pre-signed URL will be calculated on your behalf.


## `CopyTags = ::Bool`
True to copy all tags from the source DB cluster snapshot to the target DB cluster snapshot, and otherwise false. The default is false.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `SourceRegion = ::String`
The ID of the region that contains the snapshot to be copied.




# Returns

`CopyDBClusterSnapshotResult`

# Exceptions

`DBClusterSnapshotAlreadyExistsFault`, `DBClusterSnapshotNotFoundFault`, `InvalidDBClusterStateFault`, `InvalidDBClusterSnapshotStateFault`, `SnapshotQuotaExceededFault` or `KMSKeyNotAccessibleFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBClusterSnapshot)
"""
@inline copy_dbcluster_snapshot(aws::AWSConfig=default_aws_config(); args...) = copy_dbcluster_snapshot(aws, args)

@inline copy_dbcluster_snapshot(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CopyDBClusterSnapshot", args)

@inline copy_dbcluster_snapshot(args) = copy_dbcluster_snapshot(default_aws_config(), args)


"""
    using AWSSDK.RDS.copy_dbparameter_group
    copy_dbparameter_group([::AWSConfig], arguments::Dict)
    copy_dbparameter_group([::AWSConfig]; SourceDBParameterGroupIdentifier=, TargetDBParameterGroupIdentifier=, TargetDBParameterGroupDescription=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CopyDBParameterGroup", arguments::Dict)
    rds([::AWSConfig], "CopyDBParameterGroup", SourceDBParameterGroupIdentifier=, TargetDBParameterGroupIdentifier=, TargetDBParameterGroupDescription=, <keyword arguments>)

# CopyDBParameterGroup Operation

Copies the specified DB parameter group.

# Arguments

## `SourceDBParameterGroupIdentifier = ::String` -- *Required*
The identifier or ARN for the source DB parameter group. For information about creating an ARN, see [Constructing an RDS Amazon Resource Name (ARN)](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing).

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBParameterGroup)
"""
@inline copy_dbparameter_group(aws::AWSConfig=default_aws_config(); args...) = copy_dbparameter_group(aws, args)

@inline copy_dbparameter_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CopyDBParameterGroup", args)

@inline copy_dbparameter_group(args) = copy_dbparameter_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.copy_dbsnapshot
    copy_dbsnapshot([::AWSConfig], arguments::Dict)
    copy_dbsnapshot([::AWSConfig]; SourceDBSnapshotIdentifier=, TargetDBSnapshotIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CopyDBSnapshot", arguments::Dict)
    rds([::AWSConfig], "CopyDBSnapshot", SourceDBSnapshotIdentifier=, TargetDBSnapshotIdentifier=, <keyword arguments>)

# CopyDBSnapshot Operation

Copies the specified DB snapshot. The source DB snapshot must be in the "available" state.

You can copy a snapshot from one AWS Region to another. In that case, the AWS Region where you call the `CopyDBSnapshot` action is the destination AWS Region for the DB snapshot copy.

For more information about copying snapshots, see [Copying a DB Snapshot](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopyDBSnapshot.html) in the *Amazon RDS User Guide.*

# Arguments

## `SourceDBSnapshotIdentifier = ::String` -- *Required*
The identifier for the source DB snapshot.

If the source snapshot is in the same AWS Region as the copy, specify a valid DB snapshot identifier. For example, you might specify `rds:mysql-instance1-snapshot-20130805`.

If the source snapshot is in a different AWS Region than the copy, specify a valid DB snapshot ARN. For example, you might specify `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805`.

If you are copying from a shared manual DB snapshot, this parameter must be the Amazon Resource Name (ARN) of the shared DB snapshot.

If you are copying an encrypted snapshot this parameter must be in the ARN format for the source AWS Region, and must match the `SourceDBSnapshotIdentifier` in the `PreSignedUrl` parameter.

Constraints:

*   Must specify a valid system snapshot in the "available" state.

Example: `rds:mydb-2012-04-02-00-01`

Example: `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805`


## `TargetDBSnapshotIdentifier = ::String` -- *Required*
The identifier for the copy of the snapshot.

Constraints:

*   Cannot be null, empty, or blank

*   Must contain from 1 to 255 letters, numbers, or hyphens

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

Example: `my-db-snapshot`


## `KmsKeyId = ::String`
The AWS KMS key ID for an encrypted DB snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.

If you copy an encrypted DB snapshot from your AWS account, you can specify a value for this parameter to encrypt the copy with a new KMS encryption key. If you don't specify a value for this parameter, then the copy of the DB snapshot is encrypted with the same KMS key as the source DB snapshot.

If you copy an encrypted DB snapshot that is shared from another AWS account, then you must specify a value for this parameter.

If you specify this parameter when you copy an unencrypted snapshot, the copy is encrypted.

If you copy an encrypted snapshot to a different AWS Region, then you must specify a KMS key for the destination AWS Region. KMS encryption keys are specific to the AWS Region that they are created in, and you can't use encryption keys from one AWS Region in another AWS Region.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `CopyTags = ::Bool`
True to copy all tags from the source DB snapshot to the target DB snapshot, and otherwise false. The default is false.


## `PreSignedUrl = ::String`
The URL that contains a Signature Version 4 signed request for the `CopyDBSnapshot` API action in the source AWS Region that contains the source DB snapshot to copy.

You must specify this parameter when you copy an encrypted DB snapshot from another AWS Region by using the Amazon RDS API. You can specify the `--source-region` option instead of this parameter when you copy an encrypted DB snapshot from another AWS Region by using the AWS CLI.

The presigned URL must be a valid request for the `CopyDBSnapshot` API action that can be executed in the source AWS Region that contains the encrypted DB snapshot to be copied. The presigned URL request must contain the following parameter values:

*   `DestinationRegion` - The AWS Region that the encrypted DB snapshot is copied to. This AWS Region is the same one where the `CopyDBSnapshot` action is called that contains this presigned URL.

    For example, if you copy an encrypted DB snapshot from the us-west-2 AWS Region to the us-east-1 AWS Region, then you call the `CopyDBSnapshot` action in the us-east-1 AWS Region and provide a presigned URL that contains a call to the `CopyDBSnapshot` action in the us-west-2 AWS Region. For this example, the `DestinationRegion` in the presigned URL must be set to the us-east-1 AWS Region.

*   `KmsKeyId` - The AWS KMS key identifier for the key to use to encrypt the copy of the DB snapshot in the destination AWS Region. This is the same identifier for both the `CopyDBSnapshot` action that is called in the destination AWS Region, and the action contained in the presigned URL.

*   `SourceDBSnapshotIdentifier` - The DB snapshot identifier for the encrypted snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB snapshot from the us-west-2 AWS Region, then your `SourceDBSnapshotIdentifier` looks like the following example: `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115`.

To learn how to generate a Signature Version 4 signed request, see [Authenticating Requests: Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) and [Signature Version 4 Signing Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

**Note**
> If you supply a value for this operation's `SourceRegion` parameter, a pre-signed URL will be calculated on your behalf.


## `OptionGroupName = ::String`
The name of an option group to associate with the copy of the snapshot.

Specify this option if you are copying a snapshot from one AWS Region to another, and your DB instance uses a nondefault option group. If your source DB instance uses Transparent Data Encryption for Oracle or Microsoft SQL Server, you must specify this option when copying across AWS Regions. For more information, see [Option Group Considerations](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options).


## `SourceRegion = ::String`
The ID of the region that contains the snapshot to be copied.




# Returns

`CopyDBSnapshotResult`

# Exceptions

`DBSnapshotAlreadyExistsFault`, `DBSnapshotNotFoundFault`, `InvalidDBSnapshotStateFault`, `SnapshotQuotaExceededFault` or `KMSKeyNotAccessibleFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBSnapshot)
"""
@inline copy_dbsnapshot(aws::AWSConfig=default_aws_config(); args...) = copy_dbsnapshot(aws, args)

@inline copy_dbsnapshot(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CopyDBSnapshot", args)

@inline copy_dbsnapshot(args) = copy_dbsnapshot(default_aws_config(), args)


"""
    using AWSSDK.RDS.copy_option_group
    copy_option_group([::AWSConfig], arguments::Dict)
    copy_option_group([::AWSConfig]; SourceOptionGroupIdentifier=, TargetOptionGroupIdentifier=, TargetOptionGroupDescription=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CopyOptionGroup", arguments::Dict)
    rds([::AWSConfig], "CopyOptionGroup", SourceOptionGroupIdentifier=, TargetOptionGroupIdentifier=, TargetOptionGroupDescription=, <keyword arguments>)

# CopyOptionGroup Operation

Copies the specified option group.

# Arguments

## `SourceOptionGroupIdentifier = ::String` -- *Required*
The identifier or ARN for the source option group. For information about creating an ARN, see [Constructing an RDS Amazon Resource Name (ARN)](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing).

Constraints:

*   Must specify a valid option group.

*   If the source option group is in the same AWS Region as the copy, specify a valid option group identifier, for example `my-option-group`, or a valid ARN.

*   If the source option group is in a different AWS Region than the copy, specify a valid option group ARN, for example `arn:aws:rds:us-west-2:123456789012:og:special-options`.


## `TargetOptionGroupIdentifier = ::String` -- *Required*
The identifier for the copied option group.

Constraints:

*   Cannot be null, empty, or blank

*   Must contain from 1 to 255 letters, numbers, or hyphens

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

Example: `my-option-group`


## `TargetOptionGroupDescription = ::String` -- *Required*
The description for the copied option group.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CopyOptionGroupResult`

# Exceptions

`OptionGroupAlreadyExistsFault`, `OptionGroupNotFoundFault` or `OptionGroupQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyOptionGroup)
"""
@inline copy_option_group(aws::AWSConfig=default_aws_config(); args...) = copy_option_group(aws, args)

@inline copy_option_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CopyOptionGroup", args)

@inline copy_option_group(args) = copy_option_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.create_dbcluster
    create_dbcluster([::AWSConfig], arguments::Dict)
    create_dbcluster([::AWSConfig]; DBClusterIdentifier=, Engine=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CreateDBCluster", arguments::Dict)
    rds([::AWSConfig], "CreateDBCluster", DBClusterIdentifier=, Engine=, <keyword arguments>)

# CreateDBCluster Operation

Creates a new Amazon Aurora DB cluster.

You can use the `ReplicationSourceIdentifier` parameter to create the DB cluster as a Read Replica of another DB cluster or Amazon RDS MySQL DB instance. For cross-region replication where the DB cluster identified by `ReplicationSourceIdentifier` is encrypted, you must also specify the `PreSignedUrl` parameter.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

# Arguments

## `AvailabilityZones = [::String, ...]`
A list of EC2 Availability Zones that instances in the DB cluster can be created in. For information on AWS Regions and Availability Zones, see [Regions and Availability Zones](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html).


## `BackupRetentionPeriod = ::Int`
The number of days for which automated backups are retained. You must specify a minimum value of 1.

Default: 1

Constraints:

*   Must be a value from 1 to 35


## `CharacterSetName = ::String`
A value that indicates that the DB cluster should be associated with the specified CharacterSet.


## `DatabaseName = ::String`
The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon RDS will not create a database in the DB cluster you are creating.


## `DBClusterIdentifier = ::String` -- *Required*
The DB cluster identifier. This parameter is stored as a lowercase string.

Constraints:

*   Must contain from 1 to 63 letters, numbers, or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

Example: `my-cluster1`


## `DBClusterParameterGroupName = ::String`
The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, `default.aurora5.6` is used.

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

Valid Values: `aurora` (for MySQL 5.6-compatible Aurora), `aurora-mysql` (for MySQL 5.7-compatible Aurora), and `aurora-postgresql`


## `EngineVersion = ::String`
The version number of the database engine to use.

**Aurora MySQL**

Example: `5.6.10a`, `5.7.12`

**Aurora PostgreSQL**

Example: `9.6.3`


## `Port = ::Int`
The port number on which the instances in the DB cluster accept connections.

Default: `3306` if engine is set as aurora or `5432` if set to aurora-postgresql.


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

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see [Adjusting the Preferred Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html) in the *Amazon RDS User Guide.*

Constraints:

*   Must be in the format `hh24:mi-hh24:mi`.

*   Must be in Universal Coordinated Time (UTC).

*   Must not conflict with the preferred maintenance window.

*   Must be at least 30 minutes.


## `PreferredMaintenanceWindow = ::String`
The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).

Format: `ddd:hh24:mi-ddd:hh24:mi`

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see [Adjusting the Preferred Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html) in the *Amazon RDS User Guide.*

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

*   If `ReplicationSourceIdentifier` identifies an encrypted source, then Amazon RDS will use the encryption key used to encrypt the source. Otherwise, Amazon RDS will use your default encryption key.

*   If the `StorageEncrypted` parameter is true and `ReplicationSourceIdentifier` is not specified, then Amazon RDS will use your default encryption key.

AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.

If you create a Read Replica of an encrypted DB cluster in another AWS Region, you must set `KmsKeyId` to a KMS key ID that is valid in the destination AWS Region. This key is used to encrypt the Read Replica in that AWS Region.


## `PreSignedUrl = ::String`
A URL that contains a Signature Version 4 signed request for the `CreateDBCluster` action to be called in the source AWS Region where the DB cluster is replicated from. You only need to specify `PreSignedUrl` when you are performing cross-region replication from an encrypted DB cluster.

The pre-signed URL must be a valid request for the `CreateDBCluster` API action that can be executed in the source AWS Region that contains the encrypted DB cluster to be copied.

The pre-signed URL request must contain the following parameter values:

*   `KmsKeyId` - The AWS KMS key identifier for the key to use to encrypt the copy of the DB cluster in the destination AWS Region. This should refer to the same KMS key for both the `CreateDBCluster` action that is called in the destination AWS Region, and the action contained in the pre-signed URL.

*   `DestinationRegion` - The name of the AWS Region that Aurora Read Replica will be created in.

*   `ReplicationSourceIdentifier` - The DB cluster identifier for the encrypted DB cluster to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster from the us-west-2 AWS Region, then your `ReplicationSourceIdentifier` would look like Example: `arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1`.

To learn how to generate a Signature Version 4 signed request, see [Authenticating Requests: Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) and [Signature Version 4 Signing Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

**Note**
> If you supply a value for this operation's `SourceRegion` parameter, a pre-signed URL will be calculated on your behalf.


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

Default: `false`


## `BacktrackWindow = ::Int`
The target backtrack window, in seconds. To disable backtracking, set this value to 0.

Default: 0

Constraints:

*   If specified, this value must be set to a number from 0 to 259,200 (72 hours).


## `EnableCloudwatchLogsExports = [::String, ...]`
The list of log types that need to be enabled for exporting to CloudWatch Logs.


## `SourceRegion = ::String`
The ID of the region that contains the source for the read replica.




# Returns

`CreateDBClusterResult`

# Exceptions

`DBClusterAlreadyExistsFault`, `InsufficientStorageClusterCapacityFault`, `DBClusterQuotaExceededFault`, `StorageQuotaExceededFault`, `DBSubnetGroupNotFoundFault`, `InvalidVPCNetworkStateFault`, `InvalidDBClusterStateFault`, `InvalidDBSubnetGroupStateFault`, `InvalidSubnet`, `InvalidDBInstanceStateFault`, `DBClusterParameterGroupNotFoundFault`, `KMSKeyNotAccessibleFault`, `DBClusterNotFoundFault`, `DBInstanceNotFoundFault` or `DBSubnetGroupDoesNotCoverEnoughAZs`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBCluster)
"""
@inline create_dbcluster(aws::AWSConfig=default_aws_config(); args...) = create_dbcluster(aws, args)

@inline create_dbcluster(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CreateDBCluster", args)

@inline create_dbcluster(args) = create_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.RDS.create_dbcluster_parameter_group
    create_dbcluster_parameter_group([::AWSConfig], arguments::Dict)
    create_dbcluster_parameter_group([::AWSConfig]; DBClusterParameterGroupName=, DBParameterGroupFamily=, Description=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CreateDBClusterParameterGroup", arguments::Dict)
    rds([::AWSConfig], "CreateDBClusterParameterGroup", DBClusterParameterGroupName=, DBParameterGroupFamily=, Description=, <keyword arguments>)

# CreateDBClusterParameterGroup Operation

Creates a new DB cluster parameter group.

Parameters in a DB cluster parameter group apply to all of the instances in a DB cluster.

A DB cluster parameter group is initially created with the default parameters for the database engine used by instances in the DB cluster. To provide custom values for any of the parameters, you must modify the group after creating it using [ModifyDBClusterParameterGroup](@ref). Once you've created a DB cluster parameter group, you need to associate it with your DB cluster using [ModifyDBCluster](@ref). When you associate a new DB cluster parameter group with a running DB cluster, you need to reboot the DB instances in the DB cluster without failover for the new DB cluster parameter group and associated settings to take effect.

**Important**
> After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the DB cluster parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the `character_set_database` parameter. You can use the *Parameter Groups* option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or the [DescribeDBClusterParameters](@ref) command to verify that your DB cluster parameter group has been created or modified.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

# Arguments

## `DBClusterParameterGroupName = ::String` -- *Required*
The name of the DB cluster parameter group.

Constraints:

*   Must match the name of an existing DBClusterParameterGroup.

**Note**
> This value is stored as a lowercase string.


## `DBParameterGroupFamily = ::String` -- *Required*
The DB cluster parameter group family name. A DB cluster parameter group can be associated with one and only one DB cluster parameter group family, and can be applied only to a DB cluster running a database engine and engine version compatible with that DB cluster parameter group family.

**Aurora MySQL**

Example: `aurora5.6`, `aurora-mysql5.7`

**Aurora PostgreSQL**

Example: `aurora-postgresql9.6`


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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBClusterParameterGroup)
"""
@inline create_dbcluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = create_dbcluster_parameter_group(aws, args)

@inline create_dbcluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CreateDBClusterParameterGroup", args)

@inline create_dbcluster_parameter_group(args) = create_dbcluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.create_dbcluster_snapshot
    create_dbcluster_snapshot([::AWSConfig], arguments::Dict)
    create_dbcluster_snapshot([::AWSConfig]; DBClusterSnapshotIdentifier=, DBClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CreateDBClusterSnapshot", arguments::Dict)
    rds([::AWSConfig], "CreateDBClusterSnapshot", DBClusterSnapshotIdentifier=, DBClusterIdentifier=, <keyword arguments>)

# CreateDBClusterSnapshot Operation

Creates a snapshot of a DB cluster. For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBClusterSnapshot)
"""
@inline create_dbcluster_snapshot(aws::AWSConfig=default_aws_config(); args...) = create_dbcluster_snapshot(aws, args)

@inline create_dbcluster_snapshot(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CreateDBClusterSnapshot", args)

@inline create_dbcluster_snapshot(args) = create_dbcluster_snapshot(default_aws_config(), args)


"""
    using AWSSDK.RDS.create_dbinstance
    create_dbinstance([::AWSConfig], arguments::Dict)
    create_dbinstance([::AWSConfig]; DBInstanceIdentifier=, DBInstanceClass=, Engine=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CreateDBInstance", arguments::Dict)
    rds([::AWSConfig], "CreateDBInstance", DBInstanceIdentifier=, DBInstanceClass=, Engine=, <keyword arguments>)

# CreateDBInstance Operation

Creates a new DB instance.

# Arguments

## `DBName = ::String`
The meaning of this parameter differs according to the database engine you use.

Type: String

**MySQL**

The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance.

Constraints:

*   Must contain 1 to 64 letters or numbers.

*   Cannot be a word reserved by the specified database engine

**MariaDB**

The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance.

Constraints:

*   Must contain 1 to 64 letters or numbers.

*   Cannot be a word reserved by the specified database engine

**PostgreSQL**

The name of the database to create when the DB instance is created. If this parameter is not specified, the default "postgres" database is created in the DB instance.

Constraints:

*   Must contain 1 to 63 letters, numbers, or underscores.

*   Must begin with a letter or an underscore. Subsequent characters can be letters, underscores, or digits (0-9).

*   Cannot be a word reserved by the specified database engine

**Oracle**

The Oracle System ID (SID) of the created DB instance. If you specify `null`, the default value `ORCL` is used. You can't specify the string NULL, or any other reserved word, for `DBName`.

Default: `ORCL`

Constraints:

*   Cannot be longer than 8 characters

**SQL Server**

Not applicable. Must be null.

**Amazon Aurora**

The name of the database to create when the primary instance of the DB cluster is created. If this parameter is not specified, no database is created in the DB instance.

Constraints:

*   Must contain 1 to 64 letters or numbers.

*   Cannot be a word reserved by the specified database engine


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

**Amazon Aurora**

Not applicable. Aurora cluster volumes automatically grow as the amount of data in your database increases, though you are only charged for the space that you use in an Aurora cluster volume.

**MySQL**

Constraints to the amount of storage for each storage type are the following:

*   General Purpose (SSD) storage (gp2): Must be an integer from 20 to 16384.

*   Provisioned IOPS storage (io1): Must be an integer from 100 to 16384.

*   Magnetic storage (standard): Must be an integer from 5 to 3072.

**MariaDB**

Constraints to the amount of storage for each storage type are the following:

*   General Purpose (SSD) storage (gp2): Must be an integer from 20 to 16384.

*   Provisioned IOPS storage (io1): Must be an integer from 100 to 16384.

*   Magnetic storage (standard): Must be an integer from 5 to 3072.

**PostgreSQL**

Constraints to the amount of storage for each storage type are the following:

*   General Purpose (SSD) storage (gp2): Must be an integer from 20 to 16384.

*   Provisioned IOPS storage (io1): Must be an integer from 100 to 16384.

*   Magnetic storage (standard): Must be an integer from 5 to 3072.

**Oracle**

Constraints to the amount of storage for each storage type are the following:

*   General Purpose (SSD) storage (gp2): Must be an integer from 20 to 16384.

*   Provisioned IOPS storage (io1): Must be an integer from 100 to 16384.

*   Magnetic storage (standard): Must be an integer from 10 to 3072.

**SQL Server**

Constraints to the amount of storage for each storage type are the following:

*   General Purpose (SSD) storage (gp2):

    *   Enterprise and Standard editions: Must be an integer from 200 to 16384.

    *   Web and Express editions: Must be an integer from 20 to 16384.

*   Provisioned IOPS storage (io1):

    *   Enterprise and Standard editions: Must be an integer from 200 to 16384.

    *   Web and Express editions: Must be an integer from 100 to 16384.

*   Magnetic storage (standard):

    *   Enterprise and Standard editions: Must be an integer from 200 to 1024.

    *   Web and Express editions: Must be an integer from 20 to 1024.


## `DBInstanceClass = ::String` -- *Required*
The compute and memory capacity of the DB instance, for example, `db.m4.large`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see [DB Instance Class](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the *Amazon RDS User Guide.*


## `Engine = ::String` -- *Required*
The name of the database engine to be used for this instance.

Not every database engine is available for every AWS Region.

Valid Values:

*   `aurora` (for MySQL 5.6-compatible Aurora)

*   `aurora-mysql` (for MySQL 5.7-compatible Aurora)

*   `aurora-postgresql`

*   `mariadb`

*   `mysql`

*   `oracle-ee`

*   `oracle-se2`

*   `oracle-se1`

*   `oracle-se`

*   `postgres`

*   `sqlserver-ee`

*   `sqlserver-se`

*   `sqlserver-ex`

*   `sqlserver-web`


## `MasterUsername = ::String`
The name for the master user.

**Amazon Aurora**

Not applicable. The name for the master user is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

**MariaDB**

Constraints:

*   Required for MariaDB.

*   Must be 1 to 16 letters or numbers.

*   Cannot be a reserved word for the chosen database engine.

**Microsoft SQL Server**

Constraints:

*   Required for SQL Server.

*   Must be 1 to 128 letters or numbers.

*   The first character must be a letter.

*   Cannot be a reserved word for the chosen database engine.

**MySQL**

Constraints:

*   Required for MySQL.

*   Must be 1 to 16 letters or numbers.

*   First character must be a letter.

*   Cannot be a reserved word for the chosen database engine.

**Oracle**

Constraints:

*   Required for Oracle.

*   Must be 1 to 30 letters or numbers.

*   First character must be a letter.

*   Cannot be a reserved word for the chosen database engine.

**PostgreSQL**

Constraints:

*   Required for PostgreSQL.

*   Must be 1 to 63 letters or numbers.

*   First character must be a letter.

*   Cannot be a reserved word for the chosen database engine.


## `MasterUserPassword = ::String`
The password for the master user. The password can include any printable ASCII character except "/", \"\"\", or "@".

**Amazon Aurora**

Not applicable. The password for the master user is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

**MariaDB**

Constraints: Must contain from 8 to 41 characters.

**Microsoft SQL Server**

Constraints: Must contain from 8 to 128 characters.

**MySQL**

Constraints: Must contain from 8 to 41 characters.

**Oracle**

Constraints: Must contain from 8 to 30 characters.

**PostgreSQL**

Constraints: Must contain from 8 to 128 characters.


## `DBSecurityGroups = [::String, ...]`
A list of DB security groups to associate with this DB instance.

Default: The default DB security group for the database engine.


## `VpcSecurityGroupIds = [::String, ...]`
A list of EC2 VPC security groups to associate with this DB instance.

**Amazon Aurora**

Not applicable. The associated list of EC2 VPC security groups is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

Default: The default EC2 VPC security group for the DB subnet group's VPC.


## `AvailabilityZone = ::String`
The EC2 Availability Zone that the DB instance is created in. For information on AWS Regions and Availability Zones, see [Regions and Availability Zones](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html).

Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.

Example: `us-east-1d`

Constraint: The AvailabilityZone parameter can't be specified if the MultiAZ parameter is set to `true`. The specified Availability Zone must be in the same AWS Region as the current endpoint.


## `DBSubnetGroupName = ::String`
A DB subnet group to associate with this DB instance.

If there is no DB subnet group, then it is a non-VPC DB instance.


## `PreferredMaintenanceWindow = ::String`
The time range each week during which system maintenance can occur, in Universal Coordinated Time (UTC). For more information, see [Amazon RDS Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance).

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
The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.

**Amazon Aurora**

Not applicable. The retention period for automated backups is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

Default: 1

Constraints:

*   Must be a value from 0 to 35

*   Cannot be set to 0 if the DB instance is a source to Read Replicas


## `PreferredBackupWindow = ::String`
The daily time range during which automated backups are created if automated backups are enabled, using the `BackupRetentionPeriod` parameter. For more information, see [The Backup Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow).

**Amazon Aurora**

Not applicable. The daily time range for creating automated backups is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see [Adjusting the Preferred DB Instance Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow).

Constraints:

*   Must be in the format `hh24:mi-hh24:mi`.

*   Must be in Universal Coordinated Time (UTC).

*   Must not conflict with the preferred maintenance window.

*   Must be at least 30 minutes.


## `Port = ::Int`
The port number on which the database accepts connections.

**MySQL**

Default: `3306`

Valid Values: `1150-65535`

Type: Integer

**MariaDB**

Default: `3306`

Valid Values: `1150-65535`

Type: Integer

**PostgreSQL**

Default: `5432`

Valid Values: `1150-65535`

Type: Integer

**Oracle**

Default: `1521`

Valid Values: `1150-65535`

**SQL Server**

Default: `1433`

Valid Values: `1150-65535` except for `1434`, `3389`, `47001`, `49152`, and `49152` through `49156`.

**Amazon Aurora**

Default: `3306`

Valid Values: `1150-65535`

Type: Integer


## `MultiAZ = ::Bool`
Specifies if the DB instance is a Multi-AZ deployment. You can't set the AvailabilityZone parameter if the MultiAZ parameter is set to true.


## `EngineVersion = ::String`
The version number of the database engine to use.

For a list of valid engine versions, call [DescribeDBEngineVersions](@ref).

The following are the database engines and links to information about the major and minor versions that are available with Amazon RDS. Not every database engine is available for every AWS Region.

**Amazon Aurora**

Not applicable. The version number of the database engine to be used by the DB instance is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

**MariaDB**

See [MariaDB on Amazon RDS Versions](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt) in the *Amazon RDS User Guide.*

**Microsoft SQL Server**

See [Version and Feature Support on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.FeatureSupport) in the *Amazon RDS User Guide.*

**MySQL**

See [MySQL on Amazon RDS Versions](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt) in the *Amazon RDS User Guide.*

**Oracle**

See [Oracle Database Engine Release Notes](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html) in the *Amazon RDS User Guide.*

**PostgreSQL**

See [Supported PostgreSQL Database Versions](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts.General.DBVersions) in the *Amazon RDS User Guide.*


## `AutoMinorVersionUpgrade = ::Bool`
Indicates that minor engine upgrades are applied automatically to the DB instance during the maintenance window.

Default: `true`


## `LicenseModel = ::String`
License model information for this DB instance.

Valid values: `license-included` | `bring-your-own-license` | `general-public-license`


## `Iops = ::Int`
The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance. For information about valid Iops values, see see [Amazon RDS Provisioned IOPS Storage to Improve Performance](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS).

Constraints: Must be a multiple between 1 and 50 of the storage amount for the DB instance. Must also be an integer multiple of 1000. For example, if the size of your DB instance is 500 GiB, then your `Iops` value can be 2000, 3000, 4000, or 5000.


## `OptionGroupName = ::String`
Indicates that the DB instance should be associated with the specified option group.

Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance


## `CharacterSetName = ::String`
For supported engines, indicates that the DB instance should be associated with the specified CharacterSet.

**Amazon Aurora**

Not applicable. The character set is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).


## `PubliclyAccessible = ::Bool`
Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.

Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.

*   **Default VPC:** true

*   **VPC:** false

If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance is publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance is private.


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

Valid values: `standard | gp2 | io1`

If you specify `io1`, you must also include a value for the `Iops` parameter.

Default: `io1` if the `Iops` parameter is specified, otherwise `standard`


## `TdeCredentialArn = ::String`
The ARN from the key store with which to associate the instance for TDE encryption.


## `TdeCredentialPassword = ::String`
The password for the given ARN from the key store in order to access the device.


## `StorageEncrypted = ::Bool`
Specifies whether the DB instance is encrypted.

**Amazon Aurora**

Not applicable. The encryption for DB instances is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

Default: false


## `KmsKeyId = ::String`
The AWS KMS key identifier for an encrypted DB instance.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key.

**Amazon Aurora**

Not applicable. The KMS key identifier is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

If the `StorageEncrypted` parameter is true, and you do not specify a value for the `KmsKeyId` parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.


## `Domain = ::String`
Specify the Active Directory Domain to create the instance in.


## `CopyTagsToSnapshot = ::Bool`
True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise false. The default is false.


## `MonitoringInterval = ::Int`
The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.

If `MonitoringRoleArn` is specified, then you must also set `MonitoringInterval` to a value other than 0.

Valid Values: `0, 1, 5, 10, 15, 30, 60`


## `MonitoringRoleArn = ::String`
The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, `arn:aws:iam:123456789012:role/emaccess`. For information on creating a monitoring role, go to [Setting Up and Enabling Enhanced Monitoring](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling).

If `MonitoringInterval` is set to a value other than 0, then you must supply a `MonitoringRoleArn` value.


## `DomainIAMRoleName = ::String`
Specify the name of the IAM role to be used when making API calls to the Directory Service.


## `PromotionTier = ::Int`
A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see [Fault Tolerance for an Aurora DB Cluster](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance).

Default: 1

Valid Values: 0 - 15


## `Timezone = ::String`
The time zone of the DB instance. The time zone parameter is currently supported only by [Microsoft SQL Server](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone).


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

You can enable IAM database authentication for the following database engines:

**Amazon Aurora**

Not applicable. Mapping AWS IAM accounts to database accounts is managed by the DB cluster. For more information, see [CreateDBCluster](@ref).

**MySQL**

*   For MySQL 5.6, minor version 5.6.34 or higher

*   For MySQL 5.7, minor version 5.7.16 or higher

Default: `false`


## `EnablePerformanceInsights = ::Bool`
True to enable Performance Insights for the DB instance, and otherwise false.

For more information, see [Using Amazon Performance Insights](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html) in the *Amazon Relational Database Service User Guide*.


## `PerformanceInsightsKMSKeyId = ::String`
The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.


## `PerformanceInsightsRetentionPeriod = ::Int`
The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).


## `EnableCloudwatchLogsExports = [::String, ...]`
The list of log types that need to be enabled for exporting to CloudWatch Logs.


## `ProcessorFeatures = [[ ... ], ...]`
The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
```
 ProcessorFeatures = [[
        "Name" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateDBInstanceResult`

# Exceptions

`DBInstanceAlreadyExistsFault`, `InsufficientDBInstanceCapacityFault`, `DBParameterGroupNotFoundFault`, `DBSecurityGroupNotFoundFault`, `InstanceQuotaExceededFault`, `StorageQuotaExceededFault`, `DBSubnetGroupNotFoundFault`, `DBSubnetGroupDoesNotCoverEnoughAZs`, `InvalidDBClusterStateFault`, `InvalidSubnet`, `InvalidVPCNetworkStateFault`, `ProvisionedIopsNotAvailableInAZFault`, `OptionGroupNotFoundFault`, `DBClusterNotFoundFault`, `StorageTypeNotSupportedFault`, `AuthorizationNotFoundFault`, `KMSKeyNotAccessibleFault` or `DomainNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBInstance)
"""
@inline create_dbinstance(aws::AWSConfig=default_aws_config(); args...) = create_dbinstance(aws, args)

@inline create_dbinstance(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CreateDBInstance", args)

@inline create_dbinstance(args) = create_dbinstance(default_aws_config(), args)


"""
    using AWSSDK.RDS.create_dbinstance_read_replica
    create_dbinstance_read_replica([::AWSConfig], arguments::Dict)
    create_dbinstance_read_replica([::AWSConfig]; DBInstanceIdentifier=, SourceDBInstanceIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CreateDBInstanceReadReplica", arguments::Dict)
    rds([::AWSConfig], "CreateDBInstanceReadReplica", DBInstanceIdentifier=, SourceDBInstanceIdentifier=, <keyword arguments>)

# CreateDBInstanceReadReplica Operation

Creates a new DB instance that acts as a Read Replica for an existing source DB instance. You can create a Read Replica for a DB instance running MySQL, MariaDB, or PostgreSQL. For more information, see [Working with PostgreSQL, MySQL, and MariaDB Read Replicas](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html).

Amazon Aurora doesn't support this action. You must call the `CreateDBInstance` action to create a DB instance for an Aurora DB cluster.

All Read Replica DB instances are created with backups disabled. All other DB instance attributes (including DB security groups and DB parameter groups) are inherited from the source DB instance, except as specified following.

**Important**
> Your source DB instance must have backup retention enabled.

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
The DB instance identifier of the Read Replica. This identifier is the unique key that identifies a DB instance. This parameter is stored as a lowercase string.


## `SourceDBInstanceIdentifier = ::String` -- *Required*
The identifier of the DB instance that will act as the source for the Read Replica. Each DB instance can have up to five Read Replicas.

Constraints:

*   Must be the identifier of an existing MySQL, MariaDB, or PostgreSQL DB instance.

*   Can specify a DB instance that is a MySQL Read Replica only if the source is running MySQL 5.6.

*   Can specify a DB instance that is a PostgreSQL DB instance only if the source is running PostgreSQL 9.3.5 or later (9.4.7 and higher for cross-region replication).

*   The specified DB instance must have automatic backups enabled, its backup retention period must be greater than 0.

*   If the source DB instance is in the same AWS Region as the Read Replica, specify a valid DB instance identifier.

*   If the source DB instance is in a different AWS Region than the Read Replica, specify a valid DB instance ARN. For more information, go to [Constructing a Amazon RDS Amazon Resource Name (ARN)](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing).


## `DBInstanceClass = ::String`
The compute and memory capacity of the Read Replica, for example, `db.m4.large`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see [DB Instance Class](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the *Amazon RDS User Guide.*

Default: Inherits from the source DB instance.


## `AvailabilityZone = ::String`
The Amazon EC2 Availability Zone that the Read Replica is created in.

Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.

Example: `us-east-1d`


## `Port = ::Int`
The port number that the DB instance uses for connections.

Default: Inherits from the source DB instance

Valid Values: `1150-65535`


## `MultiAZ = ::Bool`
Specifies whether the Read Replica is in a Multi-AZ deployment.

You can create a Read Replica as a Multi-AZ DB instance. RDS creates a standby of your replica in another Availability Zone for failover support for the replica. Creating your Read Replica as a Multi-AZ DB instance is independent of whether the source database is a Multi-AZ DB instance.


## `AutoMinorVersionUpgrade = ::Bool`
Indicates that minor engine upgrades are applied automatically to the Read Replica during the maintenance window.

Default: Inherits from the source DB instance


## `Iops = ::Int`
The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.


## `OptionGroupName = ::String`
The option group the DB instance is associated with. If omitted, the default option group for the engine specified is used.


## `PubliclyAccessible = ::Bool`
Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.

Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.

*   **Default VPC:**true

*   **VPC:**false

If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance is publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance is private.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `DBSubnetGroupName = ::String`
Specifies a DB subnet group for the DB instance. The new DB instance is created in the VPC associated with the DB subnet group. If no DB subnet group is specified, then the new DB instance is not created in a VPC.

Constraints:

*   Can only be specified if the source DB instance identifier specifies a DB instance in another AWS Region.

*   If supplied, must match the name of an existing DBSubnetGroup.

*   The specified DB subnet group must be in the same AWS Region in which the operation is running.

*   All Read Replicas in one AWS Region that are created from the same source DB instance must either:>

    *   Specify DB subnet groups from the same VPC. All these Read Replicas are created in the same VPC.

    *   Not specify a DB subnet group. All these Read Replicas are created outside of any VPC.

Example: `mySubnetgroup`


## `StorageType = ::String`
Specifies the storage type to be associated with the Read Replica.

Valid values: `standard | gp2 | io1`

If you specify `io1`, you must also include a value for the `Iops` parameter.

Default: `io1` if the `Iops` parameter is specified, otherwise `standard`


## `CopyTagsToSnapshot = ::Bool`
True to copy all tags from the Read Replica to snapshots of the Read Replica, and otherwise false. The default is false.


## `MonitoringInterval = ::Int`
The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the Read Replica. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.

If `MonitoringRoleArn` is specified, then you must also set `MonitoringInterval` to a value other than 0.

Valid Values: `0, 1, 5, 10, 15, 30, 60`


## `MonitoringRoleArn = ::String`
The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, `arn:aws:iam:123456789012:role/emaccess`. For information on creating a monitoring role, go to [To create an IAM role for Amazon RDS Enhanced Monitoring](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole).

If `MonitoringInterval` is set to a value other than 0, then you must supply a `MonitoringRoleArn` value.


## `KmsKeyId = ::String`
The AWS KMS key ID for an encrypted Read Replica. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.

If you specify this parameter when you create a Read Replica from an unencrypted DB instance, the Read Replica is encrypted.

If you create an encrypted Read Replica in the same AWS Region as the source DB instance, then you do not have to specify a value for this parameter. The Read Replica is encrypted with the same KMS key as the source DB instance.

If you create an encrypted Read Replica in a different AWS Region, then you must specify a KMS key for the destination AWS Region. KMS encryption keys are specific to the AWS Region that they are created in, and you can't use encryption keys from one AWS Region in another AWS Region.


## `PreSignedUrl = ::String`
The URL that contains a Signature Version 4 signed request for the `CreateDBInstanceReadReplica` API action in the source AWS Region that contains the source DB instance.

You must specify this parameter when you create an encrypted Read Replica from another AWS Region by using the Amazon RDS API. You can specify the `--source-region` option instead of this parameter when you create an encrypted Read Replica from another AWS Region by using the AWS CLI.

The presigned URL must be a valid request for the `CreateDBInstanceReadReplica` API action that can be executed in the source AWS Region that contains the encrypted source DB instance. The presigned URL request must contain the following parameter values:

*   `DestinationRegion` - The AWS Region that the encrypted Read Replica is created in. This AWS Region is the same one where the `CreateDBInstanceReadReplica` action is called that contains this presigned URL.

    For example, if you create an encrypted DB instance in the us-west-1 AWS Region, from a source DB instance in the us-east-2 AWS Region, then you call the `CreateDBInstanceReadReplica` action in the us-east-1 AWS Region and provide a presigned URL that contains a call to the `CreateDBInstanceReadReplica` action in the us-west-2 AWS Region. For this example, the `DestinationRegion` in the presigned URL must be set to the us-east-1 AWS Region.

*   `KmsKeyId` - The AWS KMS key identifier for the key to use to encrypt the Read Replica in the destination AWS Region. This is the same identifier for both the `CreateDBInstanceReadReplica` action that is called in the destination AWS Region, and the action contained in the presigned URL.

*   `SourceDBInstanceIdentifier` - The DB instance identifier for the encrypted DB instance to be replicated. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are creating an encrypted Read Replica from a DB instance in the us-west-2 AWS Region, then your `SourceDBInstanceIdentifier` looks like the following example: `arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115`.

To learn how to generate a Signature Version 4 signed request, see [Authenticating Requests: Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) and [Signature Version 4 Signing Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

**Note**
> If you supply a value for this operation's `SourceRegion` parameter, a pre-signed URL will be calculated on your behalf.


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

You can enable IAM database authentication for the following database engines

*   For MySQL 5.6, minor version 5.6.34 or higher

*   For MySQL 5.7, minor version 5.7.16 or higher

*   Aurora 5.6 or higher.

Default: `false`


## `EnablePerformanceInsights = ::Bool`
True to enable Performance Insights for the read replica, and otherwise false.

For more information, see [Using Amazon Performance Insights](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html) in the *Amazon Relational Database Service User Guide*.


## `PerformanceInsightsKMSKeyId = ::String`
The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.


## `PerformanceInsightsRetentionPeriod = ::Int`
The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).


## `EnableCloudwatchLogsExports = [::String, ...]`
The list of logs that the new DB instance is to export to CloudWatch Logs.


## `ProcessorFeatures = [[ ... ], ...]`
The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
```
 ProcessorFeatures = [[
        "Name" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `UseDefaultProcessorFeatures = ::Bool`
A value that specifies that the DB instance class of the DB instance uses its default processor features.


## `SourceRegion = ::String`
The ID of the region that contains the source for the read replica.




# Returns

`CreateDBInstanceReadReplicaResult`

# Exceptions

`DBInstanceAlreadyExistsFault`, `InsufficientDBInstanceCapacityFault`, `DBParameterGroupNotFoundFault`, `DBSecurityGroupNotFoundFault`, `InstanceQuotaExceededFault`, `StorageQuotaExceededFault`, `DBInstanceNotFoundFault`, `InvalidDBInstanceStateFault`, `DBSubnetGroupNotFoundFault`, `DBSubnetGroupDoesNotCoverEnoughAZs`, `InvalidSubnet`, `InvalidVPCNetworkStateFault`, `ProvisionedIopsNotAvailableInAZFault`, `OptionGroupNotFoundFault`, `DBSubnetGroupNotAllowedFault`, `InvalidDBSubnetGroupFault`, `StorageTypeNotSupportedFault` or `KMSKeyNotAccessibleFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBInstanceReadReplica)
"""
@inline create_dbinstance_read_replica(aws::AWSConfig=default_aws_config(); args...) = create_dbinstance_read_replica(aws, args)

@inline create_dbinstance_read_replica(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CreateDBInstanceReadReplica", args)

@inline create_dbinstance_read_replica(args) = create_dbinstance_read_replica(default_aws_config(), args)


"""
    using AWSSDK.RDS.create_dbparameter_group
    create_dbparameter_group([::AWSConfig], arguments::Dict)
    create_dbparameter_group([::AWSConfig]; DBParameterGroupName=, DBParameterGroupFamily=, Description=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CreateDBParameterGroup", arguments::Dict)
    rds([::AWSConfig], "CreateDBParameterGroup", DBParameterGroupName=, DBParameterGroupFamily=, Description=, <keyword arguments>)

# CreateDBParameterGroup Operation

Creates a new DB parameter group.

A DB parameter group is initially created with the default parameters for the database engine used by the DB instance. To provide custom values for any of the parameters, you must modify the group after creating it using *ModifyDBParameterGroup*. Once you've created a DB parameter group, you need to associate it with your DB instance using *ModifyDBInstance*. When you associate a new DB parameter group with a running DB instance, you need to reboot the DB instance without failover for the new DB parameter group and associated settings to take effect.

**Important**
> After you create a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the `character_set_database` parameter. You can use the *Parameter Groups* option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or the *DescribeDBParameters* command to verify that your DB parameter group has been created or modified.

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

To list all of the available parameter group families, use the following command:

`aws rds describe-db-engine-versions --query "DBEngineVersions[].DBParameterGroupFamily"`

**Note**
> The output contains duplicates.


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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBParameterGroup)
"""
@inline create_dbparameter_group(aws::AWSConfig=default_aws_config(); args...) = create_dbparameter_group(aws, args)

@inline create_dbparameter_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CreateDBParameterGroup", args)

@inline create_dbparameter_group(args) = create_dbparameter_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.create_dbsecurity_group
    create_dbsecurity_group([::AWSConfig], arguments::Dict)
    create_dbsecurity_group([::AWSConfig]; DBSecurityGroupName=, DBSecurityGroupDescription=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CreateDBSecurityGroup", arguments::Dict)
    rds([::AWSConfig], "CreateDBSecurityGroup", DBSecurityGroupName=, DBSecurityGroupDescription=, <keyword arguments>)

# CreateDBSecurityGroup Operation

Creates a new DB security group. DB security groups control access to a DB instance.

**Note**
> A DB security group controls access to EC2-Classic DB instances that are not in a VPC.

# Arguments

## `DBSecurityGroupName = ::String` -- *Required*
The name for the DB security group. This value is stored as a lowercase string.

Constraints:

*   Must be 1 to 255 letters, numbers, or hyphens.

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

*   Must not be "Default"

Example: `mysecuritygroup`


## `DBSecurityGroupDescription = ::String` -- *Required*
The description for the DB security group.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateDBSecurityGroupResult`

# Exceptions

`DBSecurityGroupAlreadyExistsFault`, `DBSecurityGroupQuotaExceededFault` or `DBSecurityGroupNotSupportedFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBSecurityGroup)
"""
@inline create_dbsecurity_group(aws::AWSConfig=default_aws_config(); args...) = create_dbsecurity_group(aws, args)

@inline create_dbsecurity_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CreateDBSecurityGroup", args)

@inline create_dbsecurity_group(args) = create_dbsecurity_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.create_dbsnapshot
    create_dbsnapshot([::AWSConfig], arguments::Dict)
    create_dbsnapshot([::AWSConfig]; DBSnapshotIdentifier=, DBInstanceIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CreateDBSnapshot", arguments::Dict)
    rds([::AWSConfig], "CreateDBSnapshot", DBSnapshotIdentifier=, DBInstanceIdentifier=, <keyword arguments>)

# CreateDBSnapshot Operation

Creates a DBSnapshot. The source DBInstance must be in "available" state.

# Arguments

## `DBSnapshotIdentifier = ::String` -- *Required*
The identifier for the DB snapshot.

Constraints:

*   Cannot be null, empty, or blank

*   Must contain from 1 to 255 letters, numbers, or hyphens

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

Example: `my-snapshot-id`


## `DBInstanceIdentifier = ::String` -- *Required*
The identifier of the DB instance that you want to create the snapshot of.

Constraints:

*   Must match the identifier of an existing DBInstance.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateDBSnapshotResult`

# Exceptions

`DBSnapshotAlreadyExistsFault`, `InvalidDBInstanceStateFault`, `DBInstanceNotFoundFault` or `SnapshotQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBSnapshot)
"""
@inline create_dbsnapshot(aws::AWSConfig=default_aws_config(); args...) = create_dbsnapshot(aws, args)

@inline create_dbsnapshot(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CreateDBSnapshot", args)

@inline create_dbsnapshot(args) = create_dbsnapshot(default_aws_config(), args)


"""
    using AWSSDK.RDS.create_dbsubnet_group
    create_dbsubnet_group([::AWSConfig], arguments::Dict)
    create_dbsubnet_group([::AWSConfig]; DBSubnetGroupName=, DBSubnetGroupDescription=, SubnetIds=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CreateDBSubnetGroup", arguments::Dict)
    rds([::AWSConfig], "CreateDBSubnetGroup", DBSubnetGroupName=, DBSubnetGroupDescription=, SubnetIds=, <keyword arguments>)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBSubnetGroup)
"""
@inline create_dbsubnet_group(aws::AWSConfig=default_aws_config(); args...) = create_dbsubnet_group(aws, args)

@inline create_dbsubnet_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CreateDBSubnetGroup", args)

@inline create_dbsubnet_group(args) = create_dbsubnet_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.create_event_subscription
    create_event_subscription([::AWSConfig], arguments::Dict)
    create_event_subscription([::AWSConfig]; SubscriptionName=, SnsTopicArn=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CreateEventSubscription", arguments::Dict)
    rds([::AWSConfig], "CreateEventSubscription", SubscriptionName=, SnsTopicArn=, <keyword arguments>)

# CreateEventSubscription Operation

Creates an RDS event notification subscription. This action requires a topic ARN (Amazon Resource Name) created by either the RDS console, the SNS console, or the SNS API. To obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console.

You can specify the type of source (SourceType) you want to be notified of, provide a list of RDS sources (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. For example, you can specify SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and EventCategories = Availability, Backup.

If you specify both the SourceType and SourceIds, such as SourceType = db-instance and SourceIdentifier = myDBInstance1, you are notified of all the db-instance events for the specified source. If you specify a SourceType but do not specify a SourceIdentifier, you receive notice of the events for that source type for all your RDS sources. If you do not specify either the SourceType nor the SourceIdentifier, you are notified of events generated from all RDS sources belonging to your customer account.

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
A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType in the [Events](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html) topic in the Amazon RDS User Guide or by using the **DescribeEventCategories** action.


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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateEventSubscription)
"""
@inline create_event_subscription(aws::AWSConfig=default_aws_config(); args...) = create_event_subscription(aws, args)

@inline create_event_subscription(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CreateEventSubscription", args)

@inline create_event_subscription(args) = create_event_subscription(default_aws_config(), args)


"""
    using AWSSDK.RDS.create_option_group
    create_option_group([::AWSConfig], arguments::Dict)
    create_option_group([::AWSConfig]; OptionGroupName=, EngineName=, MajorEngineVersion=, OptionGroupDescription=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "CreateOptionGroup", arguments::Dict)
    rds([::AWSConfig], "CreateOptionGroup", OptionGroupName=, EngineName=, MajorEngineVersion=, OptionGroupDescription=, <keyword arguments>)

# CreateOptionGroup Operation

Creates a new option group. You can create up to 20 option groups.

# Arguments

## `OptionGroupName = ::String` -- *Required*
Specifies the name of the option group to be created.

Constraints:

*   Must be 1 to 255 letters, numbers, or hyphens

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

Example: `myoptiongroup`


## `EngineName = ::String` -- *Required*
Specifies the name of the engine that this option group should be associated with.


## `MajorEngineVersion = ::String` -- *Required*
Specifies the major version of the engine that this option group should be associated with.


## `OptionGroupDescription = ::String` -- *Required*
The description of the option group.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateOptionGroupResult`

# Exceptions

`OptionGroupAlreadyExistsFault` or `OptionGroupQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateOptionGroup)
"""
@inline create_option_group(aws::AWSConfig=default_aws_config(); args...) = create_option_group(aws, args)

@inline create_option_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "CreateOptionGroup", args)

@inline create_option_group(args) = create_option_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.delete_dbcluster
    delete_dbcluster([::AWSConfig], arguments::Dict)
    delete_dbcluster([::AWSConfig]; DBClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DeleteDBCluster", arguments::Dict)
    rds([::AWSConfig], "DeleteDBCluster", DBClusterIdentifier=, <keyword arguments>)

# DeleteDBCluster Operation

The DeleteDBCluster action deletes a previously provisioned DB cluster. When you delete a DB cluster, all automated backups for that DB cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified DB cluster are not deleted.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBCluster)
"""
@inline delete_dbcluster(aws::AWSConfig=default_aws_config(); args...) = delete_dbcluster(aws, args)

@inline delete_dbcluster(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DeleteDBCluster", args)

@inline delete_dbcluster(args) = delete_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.RDS.delete_dbcluster_parameter_group
    delete_dbcluster_parameter_group([::AWSConfig], arguments::Dict)
    delete_dbcluster_parameter_group([::AWSConfig]; DBClusterParameterGroupName=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DeleteDBClusterParameterGroup", arguments::Dict)
    rds([::AWSConfig], "DeleteDBClusterParameterGroup", DBClusterParameterGroupName=)

# DeleteDBClusterParameterGroup Operation

Deletes a specified DB cluster parameter group. The DB cluster parameter group to be deleted can't be associated with any DB clusters.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

# Arguments

## `DBClusterParameterGroupName = ::String` -- *Required*
The name of the DB cluster parameter group.

Constraints:

*   Must be the name of an existing DB cluster parameter group.

*   You can't delete a default DB cluster parameter group.

*   Cannot be associated with any DB clusters.




# Exceptions

`InvalidDBParameterGroupStateFault` or `DBParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterParameterGroup)
"""
@inline delete_dbcluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = delete_dbcluster_parameter_group(aws, args)

@inline delete_dbcluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DeleteDBClusterParameterGroup", args)

@inline delete_dbcluster_parameter_group(args) = delete_dbcluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.delete_dbcluster_snapshot
    delete_dbcluster_snapshot([::AWSConfig], arguments::Dict)
    delete_dbcluster_snapshot([::AWSConfig]; DBClusterSnapshotIdentifier=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DeleteDBClusterSnapshot", arguments::Dict)
    rds([::AWSConfig], "DeleteDBClusterSnapshot", DBClusterSnapshotIdentifier=)

# DeleteDBClusterSnapshot Operation

Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is terminated.

**Note**
> The DB cluster snapshot must be in the `available` state to be deleted.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

# Arguments

## `DBClusterSnapshotIdentifier = ::String` -- *Required*
The identifier of the DB cluster snapshot to delete.

Constraints: Must be the name of an existing DB cluster snapshot in the `available` state.




# Returns

`DeleteDBClusterSnapshotResult`

# Exceptions

`InvalidDBClusterSnapshotStateFault` or `DBClusterSnapshotNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterSnapshot)
"""
@inline delete_dbcluster_snapshot(aws::AWSConfig=default_aws_config(); args...) = delete_dbcluster_snapshot(aws, args)

@inline delete_dbcluster_snapshot(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DeleteDBClusterSnapshot", args)

@inline delete_dbcluster_snapshot(args) = delete_dbcluster_snapshot(default_aws_config(), args)


"""
    using AWSSDK.RDS.delete_dbinstance
    delete_dbinstance([::AWSConfig], arguments::Dict)
    delete_dbinstance([::AWSConfig]; DBInstanceIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DeleteDBInstance", arguments::Dict)
    rds([::AWSConfig], "DeleteDBInstance", DBInstanceIdentifier=, <keyword arguments>)

# DeleteDBInstance Operation

The DeleteDBInstance action deletes a previously provisioned DB instance. When you delete a DB instance, all automated backups for that instance are deleted and can't be recovered. Manual DB snapshots of the DB instance to be deleted by `DeleteDBInstance` are not deleted.

If you request a final DB snapshot the status of the Amazon RDS DB instance is `deleting` until the DB snapshot is created. The API action `DescribeDBInstance` is used to monitor the status of this operation. The action can't be canceled or reverted once submitted.

Note that when a DB instance is in a failure state and has a status of `failed`, `incompatible-restore`, or `incompatible-network`, you can only delete it when the `SkipFinalSnapshot` parameter is set to `true`.

If the specified DB instance is part of an Amazon Aurora DB cluster, you can't delete the DB instance if both of the following conditions are true:

*   The DB cluster is a Read Replica of another Amazon Aurora DB cluster.

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBInstance)
"""
@inline delete_dbinstance(aws::AWSConfig=default_aws_config(); args...) = delete_dbinstance(aws, args)

@inline delete_dbinstance(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DeleteDBInstance", args)

@inline delete_dbinstance(args) = delete_dbinstance(default_aws_config(), args)


"""
    using AWSSDK.RDS.delete_dbparameter_group
    delete_dbparameter_group([::AWSConfig], arguments::Dict)
    delete_dbparameter_group([::AWSConfig]; DBParameterGroupName=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DeleteDBParameterGroup", arguments::Dict)
    rds([::AWSConfig], "DeleteDBParameterGroup", DBParameterGroupName=)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBParameterGroup)
"""
@inline delete_dbparameter_group(aws::AWSConfig=default_aws_config(); args...) = delete_dbparameter_group(aws, args)

@inline delete_dbparameter_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DeleteDBParameterGroup", args)

@inline delete_dbparameter_group(args) = delete_dbparameter_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.delete_dbsecurity_group
    delete_dbsecurity_group([::AWSConfig], arguments::Dict)
    delete_dbsecurity_group([::AWSConfig]; DBSecurityGroupName=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DeleteDBSecurityGroup", arguments::Dict)
    rds([::AWSConfig], "DeleteDBSecurityGroup", DBSecurityGroupName=)

# DeleteDBSecurityGroup Operation

Deletes a DB security group.

**Note**
> The specified DB security group must not be associated with any DB instances.

# Arguments

## `DBSecurityGroupName = ::String` -- *Required*
The name of the DB security group to delete.

**Note**
> You can't delete the default DB security group.

Constraints:

*   Must be 1 to 255 letters, numbers, or hyphens.

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

*   Must not be "Default"




# Exceptions

`InvalidDBSecurityGroupStateFault` or `DBSecurityGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBSecurityGroup)
"""
@inline delete_dbsecurity_group(aws::AWSConfig=default_aws_config(); args...) = delete_dbsecurity_group(aws, args)

@inline delete_dbsecurity_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DeleteDBSecurityGroup", args)

@inline delete_dbsecurity_group(args) = delete_dbsecurity_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.delete_dbsnapshot
    delete_dbsnapshot([::AWSConfig], arguments::Dict)
    delete_dbsnapshot([::AWSConfig]; DBSnapshotIdentifier=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DeleteDBSnapshot", arguments::Dict)
    rds([::AWSConfig], "DeleteDBSnapshot", DBSnapshotIdentifier=)

# DeleteDBSnapshot Operation

Deletes a DBSnapshot. If the snapshot is being copied, the copy operation is terminated.

**Note**
> The DBSnapshot must be in the `available` state to be deleted.

# Arguments

## `DBSnapshotIdentifier = ::String` -- *Required*
The DBSnapshot identifier.

Constraints: Must be the name of an existing DB snapshot in the `available` state.




# Returns

`DeleteDBSnapshotResult`

# Exceptions

`InvalidDBSnapshotStateFault` or `DBSnapshotNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBSnapshot)
"""
@inline delete_dbsnapshot(aws::AWSConfig=default_aws_config(); args...) = delete_dbsnapshot(aws, args)

@inline delete_dbsnapshot(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DeleteDBSnapshot", args)

@inline delete_dbsnapshot(args) = delete_dbsnapshot(default_aws_config(), args)


"""
    using AWSSDK.RDS.delete_dbsubnet_group
    delete_dbsubnet_group([::AWSConfig], arguments::Dict)
    delete_dbsubnet_group([::AWSConfig]; DBSubnetGroupName=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DeleteDBSubnetGroup", arguments::Dict)
    rds([::AWSConfig], "DeleteDBSubnetGroup", DBSubnetGroupName=)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBSubnetGroup)
"""
@inline delete_dbsubnet_group(aws::AWSConfig=default_aws_config(); args...) = delete_dbsubnet_group(aws, args)

@inline delete_dbsubnet_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DeleteDBSubnetGroup", args)

@inline delete_dbsubnet_group(args) = delete_dbsubnet_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.delete_event_subscription
    delete_event_subscription([::AWSConfig], arguments::Dict)
    delete_event_subscription([::AWSConfig]; SubscriptionName=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DeleteEventSubscription", arguments::Dict)
    rds([::AWSConfig], "DeleteEventSubscription", SubscriptionName=)

# DeleteEventSubscription Operation

Deletes an RDS event notification subscription.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the RDS event notification subscription you want to delete.




# Returns

`DeleteEventSubscriptionResult`

# Exceptions

`SubscriptionNotFoundFault` or `InvalidEventSubscriptionStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteEventSubscription)
"""
@inline delete_event_subscription(aws::AWSConfig=default_aws_config(); args...) = delete_event_subscription(aws, args)

@inline delete_event_subscription(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DeleteEventSubscription", args)

@inline delete_event_subscription(args) = delete_event_subscription(default_aws_config(), args)


"""
    using AWSSDK.RDS.delete_option_group
    delete_option_group([::AWSConfig], arguments::Dict)
    delete_option_group([::AWSConfig]; OptionGroupName=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DeleteOptionGroup", arguments::Dict)
    rds([::AWSConfig], "DeleteOptionGroup", OptionGroupName=)

# DeleteOptionGroup Operation

Deletes an existing option group.

# Arguments

## `OptionGroupName = ::String` -- *Required*
The name of the option group to be deleted.

**Note**
> You can't delete default option groups.




# Exceptions

`OptionGroupNotFoundFault` or `InvalidOptionGroupStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteOptionGroup)
"""
@inline delete_option_group(aws::AWSConfig=default_aws_config(); args...) = delete_option_group(aws, args)

@inline delete_option_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DeleteOptionGroup", args)

@inline delete_option_group(args) = delete_option_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_account_attributes
    describe_account_attributes([::AWSConfig], arguments::Dict)
    describe_account_attributes([::AWSConfig]; )

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeAccountAttributes", arguments::Dict)
    rds([::AWSConfig], "DescribeAccountAttributes", )

# DescribeAccountAttributes Operation

Lists all of the attributes for a customer account. The attributes include Amazon RDS quotas for the account, such as the number of DB instances allowed. The description for a quota includes the quota name, current usage toward that quota, and the quota's maximum value.

This command doesn't take any parameters.

# Arguments



# Returns

`AccountAttributesMessage`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeAccountAttributes)
"""
@inline describe_account_attributes(aws::AWSConfig=default_aws_config(); args...) = describe_account_attributes(aws, args)

@inline describe_account_attributes(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeAccountAttributes", args)

@inline describe_account_attributes(args) = describe_account_attributes(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_certificates
    describe_certificates([::AWSConfig], arguments::Dict)
    describe_certificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeCertificates", arguments::Dict)
    rds([::AWSConfig], "DescribeCertificates", <keyword arguments>)

# DescribeCertificates Operation

Lists the set of CA certificates provided by Amazon RDS for this AWS account.

# Arguments

## `CertificateIdentifier = ::String`
The user-supplied certificate identifier. If this parameter is specified, information for only the identified certificate is returned. This parameter isn't case-sensitive.

Constraints:

*   Must match an existing CertificateIdentifier.


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
An optional pagination token provided by a previous [DescribeCertificates](@ref) request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`CertificateMessage`

# Exceptions

`CertificateNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeCertificates)
"""
@inline describe_certificates(aws::AWSConfig=default_aws_config(); args...) = describe_certificates(aws, args)

@inline describe_certificates(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeCertificates", args)

@inline describe_certificates(args) = describe_certificates(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbcluster_backtracks
    describe_dbcluster_backtracks([::AWSConfig], arguments::Dict)
    describe_dbcluster_backtracks([::AWSConfig]; DBClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBClusterBacktracks", arguments::Dict)
    rds([::AWSConfig], "DescribeDBClusterBacktracks", DBClusterIdentifier=, <keyword arguments>)

# DescribeDBClusterBacktracks Operation

Returns information about backtracks for a DB cluster.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

# Arguments

## `DBClusterIdentifier = ::String` -- *Required*
The DB cluster identifier of the DB cluster to be described. This parameter is stored as a lowercase string.

Constraints:

*   Must contain from 1 to 63 alphanumeric characters or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

Example: `my-cluster1`


## `BacktrackIdentifier = ::String`
If specified, this value is the backtrack identifier of the backtrack to be described.

Constraints:

*   Must contain a valid universally unique identifier (UUID). For more information about UUIDs, see [A Universally Unique Identifier (UUID) URN Namespace](http://www.ietf.org/rfc/rfc4122.txt).

Example: `123e4567-e89b-12d3-a456-426655440000`


## `Filters = [[ ... ], ...]`
A filter that specifies one or more DB clusters to describe. Supported filters include the following:

*   `db-cluster-backtrack-id` - Accepts backtrack identifiers. The results list includes information about only the backtracks identified by these identifiers.

*   `db-cluster-backtrack-status` - Accepts any of the following backtrack status values:

    *   `applying`

    *   `completed`

    *   `failed`

    *   `pending`

    The results list includes information about only the backtracks identified by these values. For more information about backtrack status values, see [DBClusterBacktrack](@ref).
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
An optional pagination token provided by a previous [DescribeDBClusterBacktracks](@ref) request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DBClusterBacktrackMessage`

# Exceptions

`DBClusterNotFoundFault` or `DBClusterBacktrackNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterBacktracks)
"""
@inline describe_dbcluster_backtracks(aws::AWSConfig=default_aws_config(); args...) = describe_dbcluster_backtracks(aws, args)

@inline describe_dbcluster_backtracks(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBClusterBacktracks", args)

@inline describe_dbcluster_backtracks(args) = describe_dbcluster_backtracks(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbcluster_parameter_groups
    describe_dbcluster_parameter_groups([::AWSConfig], arguments::Dict)
    describe_dbcluster_parameter_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBClusterParameterGroups", arguments::Dict)
    rds([::AWSConfig], "DescribeDBClusterParameterGroups", <keyword arguments>)

# DescribeDBClusterParameterGroups Operation

Returns a list of `DBClusterParameterGroup` descriptions. If a `DBClusterParameterGroupName` parameter is specified, the list will contain only the description of the specified DB cluster parameter group.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterParameterGroups)
"""
@inline describe_dbcluster_parameter_groups(aws::AWSConfig=default_aws_config(); args...) = describe_dbcluster_parameter_groups(aws, args)

@inline describe_dbcluster_parameter_groups(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBClusterParameterGroups", args)

@inline describe_dbcluster_parameter_groups(args) = describe_dbcluster_parameter_groups(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbcluster_parameters
    describe_dbcluster_parameters([::AWSConfig], arguments::Dict)
    describe_dbcluster_parameters([::AWSConfig]; DBClusterParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBClusterParameters", arguments::Dict)
    rds([::AWSConfig], "DescribeDBClusterParameters", DBClusterParameterGroupName=, <keyword arguments>)

# DescribeDBClusterParameters Operation

Returns the detailed parameter list for a particular DB cluster parameter group.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterParameters)
"""
@inline describe_dbcluster_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_dbcluster_parameters(aws, args)

@inline describe_dbcluster_parameters(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBClusterParameters", args)

@inline describe_dbcluster_parameters(args) = describe_dbcluster_parameters(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbcluster_snapshot_attributes
    describe_dbcluster_snapshot_attributes([::AWSConfig], arguments::Dict)
    describe_dbcluster_snapshot_attributes([::AWSConfig]; DBClusterSnapshotIdentifier=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBClusterSnapshotAttributes", arguments::Dict)
    rds([::AWSConfig], "DescribeDBClusterSnapshotAttributes", DBClusterSnapshotIdentifier=)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterSnapshotAttributes)
"""
@inline describe_dbcluster_snapshot_attributes(aws::AWSConfig=default_aws_config(); args...) = describe_dbcluster_snapshot_attributes(aws, args)

@inline describe_dbcluster_snapshot_attributes(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBClusterSnapshotAttributes", args)

@inline describe_dbcluster_snapshot_attributes(args) = describe_dbcluster_snapshot_attributes(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbcluster_snapshots
    describe_dbcluster_snapshots([::AWSConfig], arguments::Dict)
    describe_dbcluster_snapshots([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBClusterSnapshots", arguments::Dict)
    rds([::AWSConfig], "DescribeDBClusterSnapshots", <keyword arguments>)

# DescribeDBClusterSnapshots Operation

Returns information about DB cluster snapshots. This API action supports pagination.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

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

*   `automated` - Return all DB cluster snapshots that have been automatically taken by Amazon RDS for my AWS account.

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterSnapshots)
"""
@inline describe_dbcluster_snapshots(aws::AWSConfig=default_aws_config(); args...) = describe_dbcluster_snapshots(aws, args)

@inline describe_dbcluster_snapshots(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBClusterSnapshots", args)

@inline describe_dbcluster_snapshots(args) = describe_dbcluster_snapshots(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbclusters
    describe_dbclusters([::AWSConfig], arguments::Dict)
    describe_dbclusters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBClusters", arguments::Dict)
    rds([::AWSConfig], "DescribeDBClusters", <keyword arguments>)

# DescribeDBClusters Operation

Returns information about provisioned Aurora DB clusters. This API supports pagination.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusters)
"""
@inline describe_dbclusters(aws::AWSConfig=default_aws_config(); args...) = describe_dbclusters(aws, args)

@inline describe_dbclusters(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBClusters", args)

@inline describe_dbclusters(args) = describe_dbclusters(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbengine_versions
    describe_dbengine_versions([::AWSConfig], arguments::Dict)
    describe_dbengine_versions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBEngineVersions", arguments::Dict)
    rds([::AWSConfig], "DescribeDBEngineVersions", <keyword arguments>)

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
This parameter is not currently supported.
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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBEngineVersions)
"""
@inline describe_dbengine_versions(aws::AWSConfig=default_aws_config(); args...) = describe_dbengine_versions(aws, args)

@inline describe_dbengine_versions(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBEngineVersions", args)

@inline describe_dbengine_versions(args) = describe_dbengine_versions(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbinstances
    describe_dbinstances([::AWSConfig], arguments::Dict)
    describe_dbinstances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBInstances", arguments::Dict)
    rds([::AWSConfig], "DescribeDBInstances", <keyword arguments>)

# DescribeDBInstances Operation

Returns information about provisioned RDS instances. This API supports pagination.

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBInstances)
"""
@inline describe_dbinstances(aws::AWSConfig=default_aws_config(); args...) = describe_dbinstances(aws, args)

@inline describe_dbinstances(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBInstances", args)

@inline describe_dbinstances(args) = describe_dbinstances(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dblog_files
    describe_dblog_files([::AWSConfig], arguments::Dict)
    describe_dblog_files([::AWSConfig]; DBInstanceIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBLogFiles", arguments::Dict)
    rds([::AWSConfig], "DescribeDBLogFiles", DBInstanceIdentifier=, <keyword arguments>)

# DescribeDBLogFiles Operation

Returns a list of DB log files for the DB instance.

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
The customer-assigned name of the DB instance that contains the log files you want to list.

Constraints:

*   Must match the identifier of an existing DBInstance.


## `FilenameContains = ::String`
Filters the available log files for log file names that contain the specified string.


## `FileLastWritten = ::Int`
Filters the available log files for files written since the specified date, in POSIX timestamp format with milliseconds.


## `FileSize = ::Int`
Filters the available log files for files larger than the specified size.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.


## `Marker = ::String`
The pagination token provided in the previous request. If this parameter is specified the response includes only records beyond the marker, up to MaxRecords.




# Returns

`DescribeDBLogFilesResponse`

# Exceptions

`DBInstanceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBLogFiles)
"""
@inline describe_dblog_files(aws::AWSConfig=default_aws_config(); args...) = describe_dblog_files(aws, args)

@inline describe_dblog_files(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBLogFiles", args)

@inline describe_dblog_files(args) = describe_dblog_files(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbparameter_groups
    describe_dbparameter_groups([::AWSConfig], arguments::Dict)
    describe_dbparameter_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBParameterGroups", arguments::Dict)
    rds([::AWSConfig], "DescribeDBParameterGroups", <keyword arguments>)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBParameterGroups)
"""
@inline describe_dbparameter_groups(aws::AWSConfig=default_aws_config(); args...) = describe_dbparameter_groups(aws, args)

@inline describe_dbparameter_groups(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBParameterGroups", args)

@inline describe_dbparameter_groups(args) = describe_dbparameter_groups(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbparameters
    describe_dbparameters([::AWSConfig], arguments::Dict)
    describe_dbparameters([::AWSConfig]; DBParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBParameters", arguments::Dict)
    rds([::AWSConfig], "DescribeDBParameters", DBParameterGroupName=, <keyword arguments>)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBParameters)
"""
@inline describe_dbparameters(aws::AWSConfig=default_aws_config(); args...) = describe_dbparameters(aws, args)

@inline describe_dbparameters(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBParameters", args)

@inline describe_dbparameters(args) = describe_dbparameters(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbsecurity_groups
    describe_dbsecurity_groups([::AWSConfig], arguments::Dict)
    describe_dbsecurity_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBSecurityGroups", arguments::Dict)
    rds([::AWSConfig], "DescribeDBSecurityGroups", <keyword arguments>)

# DescribeDBSecurityGroups Operation

Returns a list of `DBSecurityGroup` descriptions. If a `DBSecurityGroupName` is specified, the list will contain only the descriptions of the specified DB security group.

# Arguments

## `DBSecurityGroupName = ::String`
The name of the DB security group to return details for.


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
An optional pagination token provided by a previous `DescribeDBSecurityGroups` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DBSecurityGroupMessage`

# Exceptions

`DBSecurityGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSecurityGroups)
"""
@inline describe_dbsecurity_groups(aws::AWSConfig=default_aws_config(); args...) = describe_dbsecurity_groups(aws, args)

@inline describe_dbsecurity_groups(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBSecurityGroups", args)

@inline describe_dbsecurity_groups(args) = describe_dbsecurity_groups(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbsnapshot_attributes
    describe_dbsnapshot_attributes([::AWSConfig], arguments::Dict)
    describe_dbsnapshot_attributes([::AWSConfig]; DBSnapshotIdentifier=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBSnapshotAttributes", arguments::Dict)
    rds([::AWSConfig], "DescribeDBSnapshotAttributes", DBSnapshotIdentifier=)

# DescribeDBSnapshotAttributes Operation

Returns a list of DB snapshot attribute names and values for a manual DB snapshot.

When sharing snapshots with other AWS accounts, `DescribeDBSnapshotAttributes` returns the `restore` attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB snapshot. If `all` is included in the list of values for the `restore` attribute, then the manual DB snapshot is public and can be copied or restored by all AWS accounts.

To add or remove access for an AWS account to copy or restore a manual DB snapshot, or to make the manual DB snapshot public or private, use the [ModifyDBSnapshotAttribute](@ref) API action.

# Arguments

## `DBSnapshotIdentifier = ::String` -- *Required*
The identifier for the DB snapshot to describe the attributes for.




# Returns

`DescribeDBSnapshotAttributesResult`

# Exceptions

`DBSnapshotNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSnapshotAttributes)
"""
@inline describe_dbsnapshot_attributes(aws::AWSConfig=default_aws_config(); args...) = describe_dbsnapshot_attributes(aws, args)

@inline describe_dbsnapshot_attributes(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBSnapshotAttributes", args)

@inline describe_dbsnapshot_attributes(args) = describe_dbsnapshot_attributes(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbsnapshots
    describe_dbsnapshots([::AWSConfig], arguments::Dict)
    describe_dbsnapshots([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBSnapshots", arguments::Dict)
    rds([::AWSConfig], "DescribeDBSnapshots", <keyword arguments>)

# DescribeDBSnapshots Operation

Returns information about DB snapshots. This API action supports pagination.

# Arguments

## `DBInstanceIdentifier = ::String`
The ID of the DB instance to retrieve the list of DB snapshots for. This parameter can't be used in conjunction with `DBSnapshotIdentifier`. This parameter is not case-sensitive.

Constraints:

*   If supplied, must match the identifier of an existing DBInstance.


## `DBSnapshotIdentifier = ::String`
A specific DB snapshot identifier to describe. This parameter can't be used in conjunction with `DBInstanceIdentifier`. This value is stored as a lowercase string.

Constraints:

*   If supplied, must match the identifier of an existing DBSnapshot.

*   If this identifier is for an automated snapshot, the `SnapshotType` parameter must also be specified.


## `SnapshotType = ::String`
The type of snapshots to be returned. You can specify one of the following values:

*   `automated` - Return all DB snapshots that have been automatically taken by Amazon RDS for my AWS account.

*   `manual` - Return all DB snapshots that have been taken by my AWS account.

*   `shared` - Return all manual DB snapshots that have been shared to my AWS account.

*   `public` - Return all DB snapshots that have been marked as public.

If you don't specify a `SnapshotType` value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not included in the returned results by default. You can include shared snapshots with these results by setting the `IncludeShared` parameter to `true`. You can include public snapshots with these results by setting the `IncludePublic` parameter to `true`.

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
An optional pagination token provided by a previous `DescribeDBSnapshots` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.


## `IncludeShared = ::Bool`
True to include shared manual DB snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, and otherwise false. The default is `false`.

You can give an AWS account permission to restore a manual DB snapshot from another AWS account by using the [ModifyDBSnapshotAttribute](@ref) API action.


## `IncludePublic = ::Bool`
True to include manual DB snapshots that are public and can be copied or restored by any AWS account, and otherwise false. The default is false.

You can share a manual DB snapshot as public by using the [ModifyDBSnapshotAttribute](@ref) API.




# Returns

`DBSnapshotMessage`

# Exceptions

`DBSnapshotNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSnapshots)
"""
@inline describe_dbsnapshots(aws::AWSConfig=default_aws_config(); args...) = describe_dbsnapshots(aws, args)

@inline describe_dbsnapshots(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBSnapshots", args)

@inline describe_dbsnapshots(args) = describe_dbsnapshots(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_dbsubnet_groups
    describe_dbsubnet_groups([::AWSConfig], arguments::Dict)
    describe_dbsubnet_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeDBSubnetGroups", arguments::Dict)
    rds([::AWSConfig], "DescribeDBSubnetGroups", <keyword arguments>)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSubnetGroups)
"""
@inline describe_dbsubnet_groups(aws::AWSConfig=default_aws_config(); args...) = describe_dbsubnet_groups(aws, args)

@inline describe_dbsubnet_groups(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeDBSubnetGroups", args)

@inline describe_dbsubnet_groups(args) = describe_dbsubnet_groups(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_engine_default_cluster_parameters
    describe_engine_default_cluster_parameters([::AWSConfig], arguments::Dict)
    describe_engine_default_cluster_parameters([::AWSConfig]; DBParameterGroupFamily=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeEngineDefaultClusterParameters", arguments::Dict)
    rds([::AWSConfig], "DescribeEngineDefaultClusterParameters", DBParameterGroupFamily=, <keyword arguments>)

# DescribeEngineDefaultClusterParameters Operation

Returns the default engine and system parameter information for the cluster database engine.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEngineDefaultClusterParameters)
"""
@inline describe_engine_default_cluster_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_engine_default_cluster_parameters(aws, args)

@inline describe_engine_default_cluster_parameters(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeEngineDefaultClusterParameters", args)

@inline describe_engine_default_cluster_parameters(args) = describe_engine_default_cluster_parameters(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_engine_default_parameters
    describe_engine_default_parameters([::AWSConfig], arguments::Dict)
    describe_engine_default_parameters([::AWSConfig]; DBParameterGroupFamily=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeEngineDefaultParameters", arguments::Dict)
    rds([::AWSConfig], "DescribeEngineDefaultParameters", DBParameterGroupFamily=, <keyword arguments>)

# DescribeEngineDefaultParameters Operation

Returns the default engine and system parameter information for the specified database engine.

# Arguments

## `DBParameterGroupFamily = ::String` -- *Required*
The name of the DB parameter group family.


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
An optional pagination token provided by a previous `DescribeEngineDefaultParameters` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeEngineDefaultParametersResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEngineDefaultParameters)
"""
@inline describe_engine_default_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_engine_default_parameters(aws, args)

@inline describe_engine_default_parameters(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeEngineDefaultParameters", args)

@inline describe_engine_default_parameters(args) = describe_engine_default_parameters(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_event_categories
    describe_event_categories([::AWSConfig], arguments::Dict)
    describe_event_categories([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeEventCategories", arguments::Dict)
    rds([::AWSConfig], "DescribeEventCategories", <keyword arguments>)

# DescribeEventCategories Operation

Displays a list of categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in the [Events](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html) topic in the *Amazon RDS User Guide.*

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEventCategories)
"""
@inline describe_event_categories(aws::AWSConfig=default_aws_config(); args...) = describe_event_categories(aws, args)

@inline describe_event_categories(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeEventCategories", args)

@inline describe_event_categories(args) = describe_event_categories(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_event_subscriptions
    describe_event_subscriptions([::AWSConfig], arguments::Dict)
    describe_event_subscriptions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeEventSubscriptions", arguments::Dict)
    rds([::AWSConfig], "DescribeEventSubscriptions", <keyword arguments>)

# DescribeEventSubscriptions Operation

Lists all the subscription descriptions for a customer account. The description for a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.

If you specify a SubscriptionName, lists the description for that subscription.

# Arguments

## `SubscriptionName = ::String`
The name of the RDS event notification subscription you want to describe.


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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEventSubscriptions)
"""
@inline describe_event_subscriptions(aws::AWSConfig=default_aws_config(); args...) = describe_event_subscriptions(aws, args)

@inline describe_event_subscriptions(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeEventSubscriptions", args)

@inline describe_event_subscriptions(args) = describe_event_subscriptions(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_events
    describe_events([::AWSConfig], arguments::Dict)
    describe_events([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeEvents", arguments::Dict)
    rds([::AWSConfig], "DescribeEvents", <keyword arguments>)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEvents)
"""
@inline describe_events(aws::AWSConfig=default_aws_config(); args...) = describe_events(aws, args)

@inline describe_events(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeEvents", args)

@inline describe_events(args) = describe_events(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_option_group_options
    describe_option_group_options([::AWSConfig], arguments::Dict)
    describe_option_group_options([::AWSConfig]; EngineName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeOptionGroupOptions", arguments::Dict)
    rds([::AWSConfig], "DescribeOptionGroupOptions", EngineName=, <keyword arguments>)

# DescribeOptionGroupOptions Operation

Describes all available options.

# Arguments

## `EngineName = ::String` -- *Required*
A required parameter. Options available for the given engine name are described.


## `MajorEngineVersion = ::String`
If specified, filters the results to include only options for the specified major engine version.


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
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`OptionGroupOptionsMessage`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeOptionGroupOptions)
"""
@inline describe_option_group_options(aws::AWSConfig=default_aws_config(); args...) = describe_option_group_options(aws, args)

@inline describe_option_group_options(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeOptionGroupOptions", args)

@inline describe_option_group_options(args) = describe_option_group_options(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_option_groups
    describe_option_groups([::AWSConfig], arguments::Dict)
    describe_option_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeOptionGroups", arguments::Dict)
    rds([::AWSConfig], "DescribeOptionGroups", <keyword arguments>)

# DescribeOptionGroups Operation

Describes the available option groups.

# Arguments

## `OptionGroupName = ::String`
The name of the option group to describe. Cannot be supplied together with EngineName or MajorEngineVersion.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `Marker = ::String`
An optional pagination token provided by a previous DescribeOptionGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `EngineName = ::String`
Filters the list of option groups to only include groups associated with a specific database engine.


## `MajorEngineVersion = ::String`
Filters the list of option groups to only include groups associated with a specific database engine version. If specified, then EngineName must also be specified.




# Returns

`OptionGroups`

# Exceptions

`OptionGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeOptionGroups)
"""
@inline describe_option_groups(aws::AWSConfig=default_aws_config(); args...) = describe_option_groups(aws, args)

@inline describe_option_groups(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeOptionGroups", args)

@inline describe_option_groups(args) = describe_option_groups(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_orderable_dbinstance_options
    describe_orderable_dbinstance_options([::AWSConfig], arguments::Dict)
    describe_orderable_dbinstance_options([::AWSConfig]; Engine=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeOrderableDBInstanceOptions", arguments::Dict)
    rds([::AWSConfig], "DescribeOrderableDBInstanceOptions", Engine=, <keyword arguments>)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeOrderableDBInstanceOptions)
"""
@inline describe_orderable_dbinstance_options(aws::AWSConfig=default_aws_config(); args...) = describe_orderable_dbinstance_options(aws, args)

@inline describe_orderable_dbinstance_options(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeOrderableDBInstanceOptions", args)

@inline describe_orderable_dbinstance_options(args) = describe_orderable_dbinstance_options(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_pending_maintenance_actions
    describe_pending_maintenance_actions([::AWSConfig], arguments::Dict)
    describe_pending_maintenance_actions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribePendingMaintenanceActions", arguments::Dict)
    rds([::AWSConfig], "DescribePendingMaintenanceActions", <keyword arguments>)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribePendingMaintenanceActions)
"""
@inline describe_pending_maintenance_actions(aws::AWSConfig=default_aws_config(); args...) = describe_pending_maintenance_actions(aws, args)

@inline describe_pending_maintenance_actions(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribePendingMaintenanceActions", args)

@inline describe_pending_maintenance_actions(args) = describe_pending_maintenance_actions(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_reserved_dbinstances
    describe_reserved_dbinstances([::AWSConfig], arguments::Dict)
    describe_reserved_dbinstances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeReservedDBInstances", arguments::Dict)
    rds([::AWSConfig], "DescribeReservedDBInstances", <keyword arguments>)

# DescribeReservedDBInstances Operation

Returns information about reserved DB instances for this account, or about a specified reserved DB instance.

# Arguments

## `ReservedDBInstanceId = ::String`
The reserved DB instance identifier filter value. Specify this parameter to show only the reservation that matches the specified reservation ID.


## `ReservedDBInstancesOfferingId = ::String`
The offering identifier filter value. Specify this parameter to show only purchased reservations matching the specified offering identifier.


## `DBInstanceClass = ::String`
The DB instance class filter value. Specify this parameter to show only those reservations matching the specified DB instances class.


## `Duration = ::String`
The duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.

Valid Values: `1 | 3 | 31536000 | 94608000`


## `ProductDescription = ::String`
The product description filter value. Specify this parameter to show only those reservations matching the specified product description.


## `OfferingType = ::String`
The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.

Valid Values: `"Partial Upfront" | "All Upfront" | "No Upfront"`


## `MultiAZ = ::Bool`
The Multi-AZ filter value. Specify this parameter to show only those reservations matching the specified Multi-AZ parameter.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
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




# Returns

`ReservedDBInstanceMessage`

# Exceptions

`ReservedDBInstanceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeReservedDBInstances)
"""
@inline describe_reserved_dbinstances(aws::AWSConfig=default_aws_config(); args...) = describe_reserved_dbinstances(aws, args)

@inline describe_reserved_dbinstances(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeReservedDBInstances", args)

@inline describe_reserved_dbinstances(args) = describe_reserved_dbinstances(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_reserved_dbinstances_offerings
    describe_reserved_dbinstances_offerings([::AWSConfig], arguments::Dict)
    describe_reserved_dbinstances_offerings([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeReservedDBInstancesOfferings", arguments::Dict)
    rds([::AWSConfig], "DescribeReservedDBInstancesOfferings", <keyword arguments>)

# DescribeReservedDBInstancesOfferings Operation

Lists available reserved DB instance offerings.

# Arguments

## `ReservedDBInstancesOfferingId = ::String`
The offering identifier filter value. Specify this parameter to show only the available offering that matches the specified reservation identifier.

Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`


## `DBInstanceClass = ::String`
The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.


## `Duration = ::String`
Duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.

Valid Values: `1 | 3 | 31536000 | 94608000`


## `ProductDescription = ::String`
Product description filter value. Specify this parameter to show only the available offerings that contain the specified product description.

**Note**
> The results show offerings that partially match the filter value.


## `OfferingType = ::String`
The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.

Valid Values: `"Partial Upfront" | "All Upfront" | "No Upfront"`


## `MultiAZ = ::Bool`
The Multi-AZ filter value. Specify this parameter to show only the available offerings matching the specified Multi-AZ parameter.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
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




# Returns

`ReservedDBInstancesOfferingMessage`

# Exceptions

`ReservedDBInstancesOfferingNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeReservedDBInstancesOfferings)
"""
@inline describe_reserved_dbinstances_offerings(aws::AWSConfig=default_aws_config(); args...) = describe_reserved_dbinstances_offerings(aws, args)

@inline describe_reserved_dbinstances_offerings(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeReservedDBInstancesOfferings", args)

@inline describe_reserved_dbinstances_offerings(args) = describe_reserved_dbinstances_offerings(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_source_regions
    describe_source_regions([::AWSConfig], arguments::Dict)
    describe_source_regions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeSourceRegions", arguments::Dict)
    rds([::AWSConfig], "DescribeSourceRegions", <keyword arguments>)

# DescribeSourceRegions Operation

Returns a list of the source AWS Regions where the current AWS Region can create a Read Replica or copy a DB snapshot from. This API action supports pagination.

# Arguments

## `RegionName = ::String`
The source AWS Region name. For example, `us-east-1`.

Constraints:

*   Must specify a valid AWS Region name.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous [DescribeSourceRegions](@ref) request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.


## `Filters = [[ ... ], ...]`
This parameter is not currently supported.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```



# Returns

`SourceRegionMessage`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeSourceRegions)
"""
@inline describe_source_regions(aws::AWSConfig=default_aws_config(); args...) = describe_source_regions(aws, args)

@inline describe_source_regions(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeSourceRegions", args)

@inline describe_source_regions(args) = describe_source_regions(default_aws_config(), args)


"""
    using AWSSDK.RDS.describe_valid_dbinstance_modifications
    describe_valid_dbinstance_modifications([::AWSConfig], arguments::Dict)
    describe_valid_dbinstance_modifications([::AWSConfig]; DBInstanceIdentifier=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DescribeValidDBInstanceModifications", arguments::Dict)
    rds([::AWSConfig], "DescribeValidDBInstanceModifications", DBInstanceIdentifier=)

# DescribeValidDBInstanceModifications Operation

You can call [DescribeValidDBInstanceModifications](@ref) to learn what modifications you can make to your DB instance. You can use this information when you call [ModifyDBInstance](@ref).

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
The customer identifier or the ARN of your DB instance.




# Returns

`DescribeValidDBInstanceModificationsResult`

# Exceptions

`DBInstanceNotFoundFault` or `InvalidDBInstanceStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeValidDBInstanceModifications)
"""
@inline describe_valid_dbinstance_modifications(aws::AWSConfig=default_aws_config(); args...) = describe_valid_dbinstance_modifications(aws, args)

@inline describe_valid_dbinstance_modifications(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DescribeValidDBInstanceModifications", args)

@inline describe_valid_dbinstance_modifications(args) = describe_valid_dbinstance_modifications(default_aws_config(), args)


"""
    using AWSSDK.RDS.download_dblog_file_portion
    download_dblog_file_portion([::AWSConfig], arguments::Dict)
    download_dblog_file_portion([::AWSConfig]; DBInstanceIdentifier=, LogFileName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "DownloadDBLogFilePortion", arguments::Dict)
    rds([::AWSConfig], "DownloadDBLogFilePortion", DBInstanceIdentifier=, LogFileName=, <keyword arguments>)

# DownloadDBLogFilePortion Operation

Downloads all or a portion of the specified log file, up to 1 MB in size.

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
The customer-assigned name of the DB instance that contains the log files you want to list.

Constraints:

*   Must match the identifier of an existing DBInstance.


## `LogFileName = ::String` -- *Required*
The name of the log file to be downloaded.


## `Marker = ::String`
The pagination token provided in the previous request or "0". If the Marker parameter is specified the response includes only records beyond the marker until the end of the file or up to NumberOfLines.


## `NumberOfLines = ::Int`
The number of lines to download. If the number of lines specified results in a file over 1 MB in size, the file is truncated at 1 MB in size.

If the NumberOfLines parameter is specified, then the block of lines returned can be from the beginning or the end of the log file, depending on the value of the Marker parameter.

*   If neither Marker or NumberOfLines are specified, the entire log file is returned up to a maximum of 10000 lines, starting with the most recent log entries first.

*   If NumberOfLines is specified and Marker is not specified, then the most recent lines from the end of the log file are returned.

*   If Marker is specified as "0", then the specified number of lines from the beginning of the log file are returned.

*   You can download the log file in blocks of lines by specifying the size of the block using the NumberOfLines parameter, and by specifying a value of "0" for the Marker parameter in your first request. Include the Marker value returned in the response as the Marker value for the next request, continuing until the AdditionalDataPending response element returns false.




# Returns

`DownloadDBLogFilePortionDetails`

# Exceptions

`DBInstanceNotFoundFault` or `DBLogFileNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DownloadDBLogFilePortion)
"""
@inline download_dblog_file_portion(aws::AWSConfig=default_aws_config(); args...) = download_dblog_file_portion(aws, args)

@inline download_dblog_file_portion(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "DownloadDBLogFilePortion", args)

@inline download_dblog_file_portion(args) = download_dblog_file_portion(default_aws_config(), args)


"""
    using AWSSDK.RDS.failover_dbcluster
    failover_dbcluster([::AWSConfig], arguments::Dict)
    failover_dbcluster([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "FailoverDBCluster", arguments::Dict)
    rds([::AWSConfig], "FailoverDBCluster", <keyword arguments>)

# FailoverDBCluster Operation

Forces a failover for a DB cluster.

A failover for a DB cluster promotes one of the Aurora Replicas (read-only instances) in the DB cluster to be the primary instance (the cluster writer).

Amazon Aurora will automatically fail over to an Aurora Replica, if one exists, when the primary instance fails. You can force a failover when you want to simulate a failure of a primary instance for testing. Because each instance in a DB cluster has its own endpoint address, you will need to clean up and re-establish any existing connections that use those endpoint addresses when the failover is complete.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

# Arguments

## `DBClusterIdentifier = ::String`
A DB cluster identifier to force a failover for. This parameter is not case-sensitive.

Constraints:

*   Must match the identifier of an existing DBCluster.


## `TargetDBInstanceIdentifier = ::String`
The name of the instance to promote to the primary instance.

You must specify the instance identifier for an Aurora Replica in the DB cluster. For example, `mydbcluster-replica1`.




# Returns

`FailoverDBClusterResult`

# Exceptions

`DBClusterNotFoundFault`, `InvalidDBClusterStateFault` or `InvalidDBInstanceStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/FailoverDBCluster)
"""
@inline failover_dbcluster(aws::AWSConfig=default_aws_config(); args...) = failover_dbcluster(aws, args)

@inline failover_dbcluster(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "FailoverDBCluster", args)

@inline failover_dbcluster(args) = failover_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.RDS.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; ResourceName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ListTagsForResource", arguments::Dict)
    rds([::AWSConfig], "ListTagsForResource", ResourceName=, <keyword arguments>)

# ListTagsForResource Operation

Lists all tags on an Amazon RDS resource.

For an overview on tagging an Amazon RDS resource, see [Tagging Amazon RDS Resources](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html).

# Arguments

## `ResourceName = ::String` -- *Required*
The Amazon RDS resource with tags to be listed. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see [Constructing an RDS Amazon Resource Name (ARN)](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing).


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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ListTagsForResource", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.RDS.modify_dbcluster
    modify_dbcluster([::AWSConfig], arguments::Dict)
    modify_dbcluster([::AWSConfig]; DBClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ModifyDBCluster", arguments::Dict)
    rds([::AWSConfig], "ModifyDBCluster", DBClusterIdentifier=, <keyword arguments>)

# ModifyDBCluster Operation

Modify a setting for an Amazon Aurora DB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

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

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see [Adjusting the Preferred Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html) in the *Amazon RDS User Guide.*

Constraints:

*   Must be in the format `hh24:mi-hh24:mi`.

*   Must be in Universal Coordinated Time (UTC).

*   Must not conflict with the preferred maintenance window.

*   Must be at least 30 minutes.


## `PreferredMaintenanceWindow = ::String`
The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).

Format: `ddd:hh24:mi-ddd:hh24:mi`

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see [Adjusting the Preferred Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html) in the *Amazon RDS User Guide.*

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

Default: `false`


## `BacktrackWindow = ::Int`
The target backtrack window, in seconds. To disable backtracking, set this value to 0.

Default: 0

Constraints:

*   If specified, this value must be set to a number from 0 to 259,200 (72 hours).


## `CloudwatchLogsExportConfiguration = [ ... ]`
The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB cluster.
```
 CloudwatchLogsExportConfiguration = [
        "EnableLogTypes" =>  [::String, ...],
        "DisableLogTypes" =>  [::String, ...]
    ]
```

## `EngineVersion = ::String`
The version number of the database engine to which you want to upgrade. Changing this parameter results in an outage. The change is applied during the next maintenance window unless the ApplyImmediately parameter is set to true.

For a list of valid engine versions, see [CreateDBCluster](@ref), or call [DescribeDBEngineVersions](@ref).




# Returns

`ModifyDBClusterResult`

# Exceptions

`DBClusterNotFoundFault`, `InvalidDBClusterStateFault`, `StorageQuotaExceededFault`, `DBSubnetGroupNotFoundFault`, `InvalidVPCNetworkStateFault`, `InvalidDBSubnetGroupStateFault`, `InvalidSubnet`, `DBClusterParameterGroupNotFoundFault`, `InvalidDBSecurityGroupStateFault`, `InvalidDBInstanceStateFault` or `DBClusterAlreadyExistsFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBCluster)
"""
@inline modify_dbcluster(aws::AWSConfig=default_aws_config(); args...) = modify_dbcluster(aws, args)

@inline modify_dbcluster(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ModifyDBCluster", args)

@inline modify_dbcluster(args) = modify_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.RDS.modify_dbcluster_parameter_group
    modify_dbcluster_parameter_group([::AWSConfig], arguments::Dict)
    modify_dbcluster_parameter_group([::AWSConfig]; DBClusterParameterGroupName=, Parameters=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ModifyDBClusterParameterGroup", arguments::Dict)
    rds([::AWSConfig], "ModifyDBClusterParameterGroup", DBClusterParameterGroupName=, Parameters=)

# ModifyDBClusterParameterGroup Operation

Modifies the parameters of a DB cluster parameter group. To modify more than one parameter, submit a list of the following: `ParameterName`, `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be modified in a single request.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

**Note**
> Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB cluster associated with the parameter group before the change can take effect.

**Important**
> After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the `character_set_database` parameter. You can use the *Parameter Groups* option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or the [DescribeDBClusterParameters](@ref) command to verify that your DB cluster parameter group has been created or modified.

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterParameterGroup)
"""
@inline modify_dbcluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = modify_dbcluster_parameter_group(aws, args)

@inline modify_dbcluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ModifyDBClusterParameterGroup", args)

@inline modify_dbcluster_parameter_group(args) = modify_dbcluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.modify_dbcluster_snapshot_attribute
    modify_dbcluster_snapshot_attribute([::AWSConfig], arguments::Dict)
    modify_dbcluster_snapshot_attribute([::AWSConfig]; DBClusterSnapshotIdentifier=, AttributeName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ModifyDBClusterSnapshotAttribute", arguments::Dict)
    rds([::AWSConfig], "ModifyDBClusterSnapshotAttribute", DBClusterSnapshotIdentifier=, AttributeName=, <keyword arguments>)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterSnapshotAttribute)
"""
@inline modify_dbcluster_snapshot_attribute(aws::AWSConfig=default_aws_config(); args...) = modify_dbcluster_snapshot_attribute(aws, args)

@inline modify_dbcluster_snapshot_attribute(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ModifyDBClusterSnapshotAttribute", args)

@inline modify_dbcluster_snapshot_attribute(args) = modify_dbcluster_snapshot_attribute(default_aws_config(), args)


"""
    using AWSSDK.RDS.modify_dbinstance
    modify_dbinstance([::AWSConfig], arguments::Dict)
    modify_dbinstance([::AWSConfig]; DBInstanceIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ModifyDBInstance", arguments::Dict)
    rds([::AWSConfig], "ModifyDBInstance", DBInstanceIdentifier=, <keyword arguments>)

# ModifyDBInstance Operation

Modifies settings for a DB instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. To learn what modifications you can make to your DB instance, call [DescribeValidDBInstanceModifications](@ref) before you call [ModifyDBInstance](@ref).

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
The DB instance identifier. This value is stored as a lowercase string.

Constraints:

*   Must match the identifier of an existing DBInstance.


## `AllocatedStorage = ::Int`
The new amount of storage (in gibibytes) to allocate for the DB instance.

For MariaDB, MySQL, Oracle, and PostgreSQL, the value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.

For the valid values for allocated storage for each engine, see [CreateDBInstance](@ref).


## `DBInstanceClass = ::String`
The new compute and memory capacity of the DB instance, for example, `db.m4.large`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see [DB Instance Class](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the *Amazon RDS User Guide.*

If you modify the DB instance class, an outage occurs during the change. The change is applied during the next maintenance window, unless `ApplyImmediately` is specified as `true` for this request.

Default: Uses existing setting


## `DBSubnetGroupName = ::String`
The new DB subnet group for the DB instance. You can use this parameter to move your DB instance to a different VPC. If your DB instance is not in a VPC, you can also use this parameter to move your DB instance into a VPC. For more information, see [Updating the VPC for a DB Instance](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC).

Changing the subnet group causes an outage during the change. The change is applied during the next maintenance window, unless you specify `true` for the `ApplyImmediately` parameter.

Constraints: If supplied, must match the name of an existing DBSubnetGroup.

Example: `mySubnetGroup`


## `DBSecurityGroups = [::String, ...]`
A list of DB security groups to authorize on this DB instance. Changing this setting doesn't result in an outage and the change is asynchronously applied as soon as possible.

Constraints:

*   If supplied, must match existing DBSecurityGroups.


## `VpcSecurityGroupIds = [::String, ...]`
A list of EC2 VPC security groups to authorize on this DB instance. This change is asynchronously applied as soon as possible.

**Amazon Aurora**

Not applicable. The associated list of EC2 VPC security groups is managed by the DB cluster. For more information, see [ModifyDBCluster](@ref).

Constraints:

*   If supplied, must match existing VpcSecurityGroupIds.


## `ApplyImmediately = ::Bool`
Specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the `PreferredMaintenanceWindow` setting for the DB instance.

If this parameter is set to `false`, changes to the DB instance are applied during the next maintenance window. Some parameter changes can cause an outage and are applied on the next call to [RebootDBInstance](@ref), or the next failure reboot. Review the table of parameters in [Modifying a DB Instance and Using the Apply Immediately Parameter](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html) to see the impact that setting `ApplyImmediately` to `true` or `false` has for each modified parameter and to determine when the changes are applied.

Default: `false`


## `MasterUserPassword = ::String`
The new password for the master user. The password can include any printable ASCII character except "/", \"\"\", or "@".

Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the `MasterUserPassword` element exists in the `PendingModifiedValues` element of the operation response.

**Amazon Aurora**

Not applicable. The password for the master user is managed by the DB cluster. For more information, see [ModifyDBCluster](@ref).

Default: Uses existing setting

**MariaDB**

Constraints: Must contain from 8 to 41 characters.

**Microsoft SQL Server**

Constraints: Must contain from 8 to 128 characters.

**MySQL**

Constraints: Must contain from 8 to 41 characters.

**Oracle**

Constraints: Must contain from 8 to 30 characters.

**PostgreSQL**

Constraints: Must contain from 8 to 128 characters.

**Note**
> Amazon RDS API actions never return the password, so this action provides a way to regain access to a primary instance user if the password is lost. This includes restoring privileges that might have been accidentally revoked.


## `DBParameterGroupName = ::String`
The name of the DB parameter group to apply to the DB instance. Changing this setting doesn't result in an outage. The parameter group name itself is changed immediately, but the actual parameter changes are not applied until you reboot the instance without failover. The db instance will NOT be rebooted automatically and the parameter changes will NOT be applied during the next maintenance window.

Default: Uses existing setting

Constraints: The DB parameter group must be in the same DB parameter group family as this DB instance.


## `BackupRetentionPeriod = ::Int`
The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.

Changing this parameter can result in an outage if you change from 0 to a non-zero value or from a non-zero value to 0. These changes are applied during the next maintenance window unless the `ApplyImmediately` parameter is set to `true` for this request. If you change the parameter from one non-zero value to another non-zero value, the change is asynchronously applied as soon as possible.

**Amazon Aurora**

Not applicable. The retention period for automated backups is managed by the DB cluster. For more information, see [ModifyDBCluster](@ref).

Default: Uses existing setting

Constraints:

*   Must be a value from 0 to 35

*   Can be specified for a MySQL Read Replica only if the source is running MySQL 5.6

*   Can be specified for a PostgreSQL Read Replica only if the source is running PostgreSQL 9.3.5

*   Cannot be set to 0 if the DB instance is a source to Read Replicas


## `PreferredBackupWindow = ::String`
The daily time range during which automated backups are created if automated backups are enabled, as determined by the `BackupRetentionPeriod` parameter. Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible.

**Amazon Aurora**

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

For information about valid engine versions, see [CreateDBInstance](@ref), or call [DescribeDBEngineVersions](@ref).


## `AllowMajorVersionUpgrade = ::Bool`
Indicates that major version upgrades are allowed. Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible.

Constraints: This parameter must be set to true when specifying a value for the EngineVersion parameter that is a different major version than the DB instance's current version.


## `AutoMinorVersionUpgrade = ::Bool`
Indicates that minor version upgrades are applied automatically to the DB instance during the maintenance window. Changing this parameter doesn't result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to `true` during the maintenance window, and a newer minor version is available, and RDS has enabled auto patching for that engine version.


## `LicenseModel = ::String`
The license model for the DB instance.

Valid values: `license-included` | `bring-your-own-license` | `general-public-license`


## `Iops = ::Int`
The new Provisioned IOPS (I/O operations per second) value for the RDS instance.

Changing this setting doesn't result in an outage and the change is applied during the next maintenance window unless the `ApplyImmediately` parameter is set to `true` for this request. If you are migrating from Provisioned IOPS to standard storage, set this value to 0. The DB instance will require a reboot for the change in storage type to take effect.

If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance is available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance are suspended. No other Amazon RDS operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a Read Replica for the instance, and creating a DB snapshot of the instance.

Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL, the value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.

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

If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance is available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance are suspended. No other Amazon RDS operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a Read Replica for the instance, and creating a DB snapshot of the instance.

Valid values: `standard | gp2 | io1`

Default: `io1` if the `Iops` parameter is specified, otherwise `standard`


## `TdeCredentialArn = ::String`
The ARN from the key store with which to associate the instance for TDE encryption.


## `TdeCredentialPassword = ::String`
The password for the given ARN from the key store in order to access the device.


## `CACertificateIdentifier = ::String`
Indicates the certificate that needs to be associated with the instance.


## `Domain = ::String`
The Active Directory Domain to move the instance to. Specify `none` to remove the instance from its current domain. The domain must be created prior to this operation. Currently only a Microsoft SQL Server instance can be created in a Active Directory Domain.


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

**MySQL**

Default: `3306`

Valid Values: `1150-65535`

**MariaDB**

Default: `3306`

Valid Values: `1150-65535`

**PostgreSQL**

Default: `5432`

Valid Values: `1150-65535`

Type: Integer

**Oracle**

Default: `1521`

Valid Values: `1150-65535`

**SQL Server**

Default: `1433`

Valid Values: `1150-65535` except for `1434`, `3389`, `47001`, `49152`, and `49152` through `49156`.

**Amazon Aurora**

Default: `3306`

Valid Values: `1150-65535`


## `PubliclyAccessible = ::Bool`
Boolean value that indicates if the DB instance has a publicly resolvable DNS name. Set to `True` to make the DB instance Internet-facing with a publicly resolvable DNS name, which resolves to a public IP address. Set to `False` to make the DB instance internal with a DNS name that resolves to a private IP address.

`PubliclyAccessible` only applies to DB instances in a VPC. The DB instance must be part of a public subnet and `PubliclyAccessible` must be true in order for it to be publicly accessible.

Changes to the `PubliclyAccessible` parameter are applied immediately regardless of the value of the `ApplyImmediately` parameter.

Default: false


## `MonitoringRoleArn = ::String`
The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, `arn:aws:iam:123456789012:role/emaccess`. For information on creating a monitoring role, go to [To create an IAM role for Amazon RDS Enhanced Monitoring](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole).

If `MonitoringInterval` is set to a value other than 0, then you must supply a `MonitoringRoleArn` value.


## `DomainIAMRoleName = ::String`
The name of the IAM role to use when making API calls to the Directory Service.


## `PromotionTier = ::Int`
A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see [Fault Tolerance for an Aurora DB Cluster](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance).

Default: 1

Valid Values: 0 - 15


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

You can enable IAM database authentication for the following database engines

**Amazon Aurora**

Not applicable. Mapping AWS IAM accounts to database accounts is managed by the DB cluster. For more information, see [ModifyDBCluster](@ref).

**MySQL**

*   For MySQL 5.6, minor version 5.6.34 or higher

*   For MySQL 5.7, minor version 5.7.16 or higher

Default: `false`


## `EnablePerformanceInsights = ::Bool`
True to enable Performance Insights for the DB instance, and otherwise false.

For more information, see [Using Amazon Performance Insights](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html) in the *Amazon Relational Database Service User Guide*.


## `PerformanceInsightsKMSKeyId = ::String`
The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.


## `PerformanceInsightsRetentionPeriod = ::Int`
The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).


## `CloudwatchLogsExportConfiguration = [ ... ]`
The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB instance.
```
 CloudwatchLogsExportConfiguration = [
        "EnableLogTypes" =>  [::String, ...],
        "DisableLogTypes" =>  [::String, ...]
    ]
```

## `ProcessorFeatures = [[ ... ], ...]`
The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
```
 ProcessorFeatures = [[
        "Name" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `UseDefaultProcessorFeatures = ::Bool`
A value that specifies that the DB instance class of the DB instance uses its default processor features.




# Returns

`ModifyDBInstanceResult`

# Exceptions

`InvalidDBInstanceStateFault`, `InvalidDBSecurityGroupStateFault`, `DBInstanceAlreadyExistsFault`, `DBInstanceNotFoundFault`, `DBSecurityGroupNotFoundFault`, `DBParameterGroupNotFoundFault`, `InsufficientDBInstanceCapacityFault`, `StorageQuotaExceededFault`, `InvalidVPCNetworkStateFault`, `ProvisionedIopsNotAvailableInAZFault`, `OptionGroupNotFoundFault`, `DBUpgradeDependencyFailureFault`, `StorageTypeNotSupportedFault`, `AuthorizationNotFoundFault`, `CertificateNotFoundFault` or `DomainNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBInstance)
"""
@inline modify_dbinstance(aws::AWSConfig=default_aws_config(); args...) = modify_dbinstance(aws, args)

@inline modify_dbinstance(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ModifyDBInstance", args)

@inline modify_dbinstance(args) = modify_dbinstance(default_aws_config(), args)


"""
    using AWSSDK.RDS.modify_dbparameter_group
    modify_dbparameter_group([::AWSConfig], arguments::Dict)
    modify_dbparameter_group([::AWSConfig]; DBParameterGroupName=, Parameters=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ModifyDBParameterGroup", arguments::Dict)
    rds([::AWSConfig], "ModifyDBParameterGroup", DBParameterGroupName=, Parameters=)

# ModifyDBParameterGroup Operation

Modifies the parameters of a DB parameter group. To modify more than one parameter, submit a list of the following: `ParameterName`, `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be modified in a single request.

**Note**
> Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB instance associated with the parameter group before the change can take effect.

**Important**
> After you modify a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon RDS to fully complete the modify action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the `character_set_database` parameter. You can use the *Parameter Groups* option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or the *DescribeDBParameters* command to verify that your DB parameter group has been created or modified.

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBParameterGroup)
"""
@inline modify_dbparameter_group(aws::AWSConfig=default_aws_config(); args...) = modify_dbparameter_group(aws, args)

@inline modify_dbparameter_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ModifyDBParameterGroup", args)

@inline modify_dbparameter_group(args) = modify_dbparameter_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.modify_dbsnapshot
    modify_dbsnapshot([::AWSConfig], arguments::Dict)
    modify_dbsnapshot([::AWSConfig]; DBSnapshotIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ModifyDBSnapshot", arguments::Dict)
    rds([::AWSConfig], "ModifyDBSnapshot", DBSnapshotIdentifier=, <keyword arguments>)

# ModifyDBSnapshot Operation

Updates a manual DB snapshot, which can be encrypted or not encrypted, with a new engine version.

Amazon RDS supports upgrading DB snapshots for MySQL and Oracle.

# Arguments

## `DBSnapshotIdentifier = ::String` -- *Required*
The identifier of the DB snapshot to modify.


## `EngineVersion = ::String`
The engine version to upgrade the DB snapshot to.

The following are the database engines and engine versions that are available when you upgrade a DB snapshot.

**MySQL**

*   `5.5.46` (supported for 5.1 DB snapshots)

**Oracle**

*   `12.1.0.2.v8` (supported for 12.1.0.1 DB snapshots)

*   `11.2.0.4.v12` (supported for 11.2.0.2 DB snapshots)

*   `11.2.0.4.v11` (supported for 11.2.0.3 DB snapshots)


## `OptionGroupName = ::String`
The option group to identify with the upgraded DB snapshot.

You can specify this parameter when you upgrade an Oracle DB snapshot. The same option group considerations apply when upgrading a DB snapshot as when upgrading a DB instance. For more information, see [Option Group Considerations](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Oracle.html#USER_UpgradeDBInstance.Oracle.OGPG.OG).




# Returns

`ModifyDBSnapshotResult`

# Exceptions

`DBSnapshotNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSnapshot)
"""
@inline modify_dbsnapshot(aws::AWSConfig=default_aws_config(); args...) = modify_dbsnapshot(aws, args)

@inline modify_dbsnapshot(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ModifyDBSnapshot", args)

@inline modify_dbsnapshot(args) = modify_dbsnapshot(default_aws_config(), args)


"""
    using AWSSDK.RDS.modify_dbsnapshot_attribute
    modify_dbsnapshot_attribute([::AWSConfig], arguments::Dict)
    modify_dbsnapshot_attribute([::AWSConfig]; DBSnapshotIdentifier=, AttributeName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ModifyDBSnapshotAttribute", arguments::Dict)
    rds([::AWSConfig], "ModifyDBSnapshotAttribute", DBSnapshotIdentifier=, AttributeName=, <keyword arguments>)

# ModifyDBSnapshotAttribute Operation

Adds an attribute and values to, or removes an attribute and values from, a manual DB snapshot.

To share a manual DB snapshot with other AWS accounts, specify `restore` as the `AttributeName` and use the `ValuesToAdd` parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB snapshot. Uses the value `all` to make the manual DB snapshot public, which means it can be copied or restored by all AWS accounts. Do not add the `all` value for any manual DB snapshots that contain private information that you don't want available to all AWS accounts. If the manual DB snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the `ValuesToAdd` parameter. You can't use `all` as a value for that parameter in this case.

To view which AWS accounts have access to copy or restore a manual DB snapshot, or whether a manual DB snapshot public or private, use the [DescribeDBSnapshotAttributes](@ref) API action.

# Arguments

## `DBSnapshotIdentifier = ::String` -- *Required*
The identifier for the DB snapshot to modify the attributes for.


## `AttributeName = ::String` -- *Required*
The name of the DB snapshot attribute to modify.

To manage authorization for other AWS accounts to copy or restore a manual DB snapshot, set this value to `restore`.


## `ValuesToAdd = [::String, ...]`
A list of DB snapshot attributes to add to the attribute specified by `AttributeName`.

To authorize other AWS accounts to copy or restore a manual snapshot, set this list to include one or more AWS account IDs, or `all` to make the manual DB snapshot restorable by any AWS account. Do not add the `all` value for any manual DB snapshots that contain private information that you don't want available to all AWS accounts.


## `ValuesToRemove = [::String, ...]`
A list of DB snapshot attributes to remove from the attribute specified by `AttributeName`.

To remove authorization for other AWS accounts to copy or restore a manual snapshot, set this list to include one or more AWS account identifiers, or `all` to remove authorization for any AWS account to copy or restore the DB snapshot. If you specify `all`, an AWS account whose account ID is explicitly added to the `restore` attribute can still copy or restore the manual DB snapshot.




# Returns

`ModifyDBSnapshotAttributeResult`

# Exceptions

`DBSnapshotNotFoundFault`, `InvalidDBSnapshotStateFault` or `SharedSnapshotQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSnapshotAttribute)
"""
@inline modify_dbsnapshot_attribute(aws::AWSConfig=default_aws_config(); args...) = modify_dbsnapshot_attribute(aws, args)

@inline modify_dbsnapshot_attribute(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ModifyDBSnapshotAttribute", args)

@inline modify_dbsnapshot_attribute(args) = modify_dbsnapshot_attribute(default_aws_config(), args)


"""
    using AWSSDK.RDS.modify_dbsubnet_group
    modify_dbsubnet_group([::AWSConfig], arguments::Dict)
    modify_dbsubnet_group([::AWSConfig]; DBSubnetGroupName=, SubnetIds=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ModifyDBSubnetGroup", arguments::Dict)
    rds([::AWSConfig], "ModifyDBSubnetGroup", DBSubnetGroupName=, SubnetIds=, <keyword arguments>)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSubnetGroup)
"""
@inline modify_dbsubnet_group(aws::AWSConfig=default_aws_config(); args...) = modify_dbsubnet_group(aws, args)

@inline modify_dbsubnet_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ModifyDBSubnetGroup", args)

@inline modify_dbsubnet_group(args) = modify_dbsubnet_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.modify_event_subscription
    modify_event_subscription([::AWSConfig], arguments::Dict)
    modify_event_subscription([::AWSConfig]; SubscriptionName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ModifyEventSubscription", arguments::Dict)
    rds([::AWSConfig], "ModifyEventSubscription", SubscriptionName=, <keyword arguments>)

# ModifyEventSubscription Operation

Modifies an existing RDS event notification subscription. Note that you can't modify the source identifiers using this call; to change source identifiers for a subscription, use the [AddSourceIdentifierToSubscription](@ref) and [RemoveSourceIdentifierFromSubscription](@ref) calls.

You can see a list of the event categories for a given SourceType in the [Events](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html) topic in the Amazon RDS User Guide or by using the **DescribeEventCategories** action.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the RDS event notification subscription.


## `SnsTopicArn = ::String`
The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.


## `SourceType = ::String`
The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.

Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot


## `EventCategories = [::String, ...]`
A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType in the [Events](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html) topic in the Amazon RDS User Guide or by using the **DescribeEventCategories** action.


## `Enabled = ::Bool`
A Boolean value; set to **true** to activate the subscription.




# Returns

`ModifyEventSubscriptionResult`

# Exceptions

`EventSubscriptionQuotaExceededFault`, `SubscriptionNotFoundFault`, `SNSInvalidTopicFault`, `SNSNoAuthorizationFault`, `SNSTopicArnNotFoundFault` or `SubscriptionCategoryNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyEventSubscription)
"""
@inline modify_event_subscription(aws::AWSConfig=default_aws_config(); args...) = modify_event_subscription(aws, args)

@inline modify_event_subscription(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ModifyEventSubscription", args)

@inline modify_event_subscription(args) = modify_event_subscription(default_aws_config(), args)


"""
    using AWSSDK.RDS.modify_option_group
    modify_option_group([::AWSConfig], arguments::Dict)
    modify_option_group([::AWSConfig]; OptionGroupName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ModifyOptionGroup", arguments::Dict)
    rds([::AWSConfig], "ModifyOptionGroup", OptionGroupName=, <keyword arguments>)

# ModifyOptionGroup Operation

Modifies an existing option group.

# Arguments

## `OptionGroupName = ::String` -- *Required*
The name of the option group to be modified.

Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance


## `OptionsToInclude = [[ ... ], ...]`
Options in this list are added to the option group or, if already present, the specified configuration is used to update the existing configuration.
```
 OptionsToInclude = [[
        "OptionName" => <required> ::String,
        "Port" =>  ::Int,
        "OptionVersion" =>  ::String,
        "DBSecurityGroupMemberships" =>  [::String, ...],
        "VpcSecurityGroupMemberships" =>  [::String, ...],
        "OptionSettings" =>  [[
            "Name" =>  ::String,
            "Value" =>  ::String,
            "DefaultValue" =>  ::String,
            "Description" =>  ::String,
            "ApplyType" =>  ::String,
            "DataType" =>  ::String,
            "AllowedValues" =>  ::String,
            "IsModifiable" =>  ::Bool,
            "IsCollection" =>  ::Bool
        ], ...]
    ], ...]
```

## `OptionsToRemove = [::String, ...]`
Options in this list are removed from the option group.


## `ApplyImmediately = ::Bool`
Indicates whether the changes should be applied immediately, or during the next maintenance window for each instance associated with the option group.




# Returns

`ModifyOptionGroupResult`

# Exceptions

`InvalidOptionGroupStateFault` or `OptionGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyOptionGroup)
"""
@inline modify_option_group(aws::AWSConfig=default_aws_config(); args...) = modify_option_group(aws, args)

@inline modify_option_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ModifyOptionGroup", args)

@inline modify_option_group(args) = modify_option_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.promote_read_replica
    promote_read_replica([::AWSConfig], arguments::Dict)
    promote_read_replica([::AWSConfig]; DBInstanceIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "PromoteReadReplica", arguments::Dict)
    rds([::AWSConfig], "PromoteReadReplica", DBInstanceIdentifier=, <keyword arguments>)

# PromoteReadReplica Operation

Promotes a Read Replica DB instance to a standalone DB instance.

**Note**
> *   Backup duration is a function of the amount of changes to the database since the previous backup. If you plan to promote a Read Replica to a standalone instance, we recommend that you enable backups and complete at least one backup prior to promotion. In addition, a Read Replica cannot be promoted to a standalone instance when it is in the `backing-up` status. If you have enabled backups on your Read Replica, configure the automated backup window so that daily backups do not interfere with Read Replica promotion.

*   This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
The DB instance identifier. This value is stored as a lowercase string.

Constraints:

*   Must match the identifier of an existing Read Replica DB instance.

Example: `mydbinstance`


## `BackupRetentionPeriod = ::Int`
The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.

Default: 1

Constraints:

*   Must be a value from 0 to 8


## `PreferredBackupWindow = ::String`
The daily time range during which automated backups are created if automated backups are enabled, using the `BackupRetentionPeriod` parameter.

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see [Adjusting the Preferred Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html) in the *Amazon RDS User Guide.*

Constraints:

*   Must be in the format `hh24:mi-hh24:mi`.

*   Must be in Universal Coordinated Time (UTC).

*   Must not conflict with the preferred maintenance window.

*   Must be at least 30 minutes.




# Returns

`PromoteReadReplicaResult`

# Exceptions

`InvalidDBInstanceStateFault` or `DBInstanceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PromoteReadReplica)
"""
@inline promote_read_replica(aws::AWSConfig=default_aws_config(); args...) = promote_read_replica(aws, args)

@inline promote_read_replica(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "PromoteReadReplica", args)

@inline promote_read_replica(args) = promote_read_replica(default_aws_config(), args)


"""
    using AWSSDK.RDS.promote_read_replica_dbcluster
    promote_read_replica_dbcluster([::AWSConfig], arguments::Dict)
    promote_read_replica_dbcluster([::AWSConfig]; DBClusterIdentifier=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "PromoteReadReplicaDBCluster", arguments::Dict)
    rds([::AWSConfig], "PromoteReadReplicaDBCluster", DBClusterIdentifier=)

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PromoteReadReplicaDBCluster)
"""
@inline promote_read_replica_dbcluster(aws::AWSConfig=default_aws_config(); args...) = promote_read_replica_dbcluster(aws, args)

@inline promote_read_replica_dbcluster(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "PromoteReadReplicaDBCluster", args)

@inline promote_read_replica_dbcluster(args) = promote_read_replica_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.RDS.purchase_reserved_dbinstances_offering
    purchase_reserved_dbinstances_offering([::AWSConfig], arguments::Dict)
    purchase_reserved_dbinstances_offering([::AWSConfig]; ReservedDBInstancesOfferingId=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "PurchaseReservedDBInstancesOffering", arguments::Dict)
    rds([::AWSConfig], "PurchaseReservedDBInstancesOffering", ReservedDBInstancesOfferingId=, <keyword arguments>)

# PurchaseReservedDBInstancesOffering Operation

Purchases a reserved DB instance offering.

# Arguments

## `ReservedDBInstancesOfferingId = ::String` -- *Required*
The ID of the Reserved DB instance offering to purchase.

Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706


## `ReservedDBInstanceId = ::String`
Customer-specified identifier to track this reservation.

Example: myreservationID


## `DBInstanceCount = ::Int`
The number of instances to reserve.

Default: `1`


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`PurchaseReservedDBInstancesOfferingResult`

# Exceptions

`ReservedDBInstancesOfferingNotFoundFault`, `ReservedDBInstanceAlreadyExistsFault` or `ReservedDBInstanceQuotaExceededFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PurchaseReservedDBInstancesOffering)
"""
@inline purchase_reserved_dbinstances_offering(aws::AWSConfig=default_aws_config(); args...) = purchase_reserved_dbinstances_offering(aws, args)

@inline purchase_reserved_dbinstances_offering(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "PurchaseReservedDBInstancesOffering", args)

@inline purchase_reserved_dbinstances_offering(args) = purchase_reserved_dbinstances_offering(default_aws_config(), args)


"""
    using AWSSDK.RDS.reboot_dbinstance
    reboot_dbinstance([::AWSConfig], arguments::Dict)
    reboot_dbinstance([::AWSConfig]; DBInstanceIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "RebootDBInstance", arguments::Dict)
    rds([::AWSConfig], "RebootDBInstance", DBInstanceIdentifier=, <keyword arguments>)

# RebootDBInstance Operation

You might need to reboot your DB instance, usually for maintenance reasons. For example, if you make certain modifications, or if you change the DB parameter group associated with the DB instance, you must reboot the instance for the changes to take effect.

Rebooting a DB instance restarts the database engine service. Rebooting a DB instance results in a momentary outage, during which the DB instance status is set to rebooting.

For more information about rebooting, see [Rebooting a DB Instance](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RebootInstance.html).

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RebootDBInstance)
"""
@inline reboot_dbinstance(aws::AWSConfig=default_aws_config(); args...) = reboot_dbinstance(aws, args)

@inline reboot_dbinstance(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "RebootDBInstance", args)

@inline reboot_dbinstance(args) = reboot_dbinstance(default_aws_config(), args)


"""
    using AWSSDK.RDS.remove_role_from_dbcluster
    remove_role_from_dbcluster([::AWSConfig], arguments::Dict)
    remove_role_from_dbcluster([::AWSConfig]; DBClusterIdentifier=, RoleArn=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "RemoveRoleFromDBCluster", arguments::Dict)
    rds([::AWSConfig], "RemoveRoleFromDBCluster", DBClusterIdentifier=, RoleArn=)

# RemoveRoleFromDBCluster Operation

Disassociates an Identity and Access Management (IAM) role from an Aurora DB cluster. For more information, see [Authorizing Amazon Aurora to Access Other AWS Services On Your Behalf](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Authorizing.AWSServices.html).

# Arguments

## `DBClusterIdentifier = ::String` -- *Required*
The name of the DB cluster to disassociate the IAM role from.


## `RoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM role to disassociate from the Aurora DB cluster, for example `arn:aws:iam::123456789012:role/AuroraAccessRole`.




# Exceptions

`DBClusterNotFoundFault`, `DBClusterRoleNotFoundFault` or `InvalidDBClusterStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveRoleFromDBCluster)
"""
@inline remove_role_from_dbcluster(aws::AWSConfig=default_aws_config(); args...) = remove_role_from_dbcluster(aws, args)

@inline remove_role_from_dbcluster(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "RemoveRoleFromDBCluster", args)

@inline remove_role_from_dbcluster(args) = remove_role_from_dbcluster(default_aws_config(), args)


"""
    using AWSSDK.RDS.remove_source_identifier_from_subscription
    remove_source_identifier_from_subscription([::AWSConfig], arguments::Dict)
    remove_source_identifier_from_subscription([::AWSConfig]; SubscriptionName=, SourceIdentifier=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "RemoveSourceIdentifierFromSubscription", arguments::Dict)
    rds([::AWSConfig], "RemoveSourceIdentifierFromSubscription", SubscriptionName=, SourceIdentifier=)

# RemoveSourceIdentifierFromSubscription Operation

Removes a source identifier from an existing RDS event notification subscription.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the RDS event notification subscription you want to remove a source identifier from.


## `SourceIdentifier = ::String` -- *Required*
The source identifier to be removed from the subscription, such as the **DB instance identifier** for a DB instance or the name of a security group.




# Returns

`RemoveSourceIdentifierFromSubscriptionResult`

# Exceptions

`SubscriptionNotFoundFault` or `SourceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveSourceIdentifierFromSubscription)
"""
@inline remove_source_identifier_from_subscription(aws::AWSConfig=default_aws_config(); args...) = remove_source_identifier_from_subscription(aws, args)

@inline remove_source_identifier_from_subscription(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "RemoveSourceIdentifierFromSubscription", args)

@inline remove_source_identifier_from_subscription(args) = remove_source_identifier_from_subscription(default_aws_config(), args)


"""
    using AWSSDK.RDS.remove_tags_from_resource
    remove_tags_from_resource([::AWSConfig], arguments::Dict)
    remove_tags_from_resource([::AWSConfig]; ResourceName=, TagKeys=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "RemoveTagsFromResource", arguments::Dict)
    rds([::AWSConfig], "RemoveTagsFromResource", ResourceName=, TagKeys=)

# RemoveTagsFromResource Operation

Removes metadata tags from an Amazon RDS resource.

For an overview on tagging an Amazon RDS resource, see [Tagging Amazon RDS Resources](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html).

# Arguments

## `ResourceName = ::String` -- *Required*
The Amazon RDS resource that the tags are removed from. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see [Constructing an RDS Amazon Resource Name (ARN)](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing).


## `TagKeys = [::String, ...]` -- *Required*
The tag key (name) of the tag to be removed.




# Exceptions

`DBInstanceNotFoundFault`, `DBSnapshotNotFoundFault` or `DBClusterNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveTagsFromResource)
"""
@inline remove_tags_from_resource(aws::AWSConfig=default_aws_config(); args...) = remove_tags_from_resource(aws, args)

@inline remove_tags_from_resource(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "RemoveTagsFromResource", args)

@inline remove_tags_from_resource(args) = remove_tags_from_resource(default_aws_config(), args)


"""
    using AWSSDK.RDS.reset_dbcluster_parameter_group
    reset_dbcluster_parameter_group([::AWSConfig], arguments::Dict)
    reset_dbcluster_parameter_group([::AWSConfig]; DBClusterParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ResetDBClusterParameterGroup", arguments::Dict)
    rds([::AWSConfig], "ResetDBClusterParameterGroup", DBClusterParameterGroupName=, <keyword arguments>)

# ResetDBClusterParameterGroup Operation

Modifies the parameters of a DB cluster parameter group to the default value. To reset specific parameters submit a list of the following: `ParameterName` and `ApplyMethod`. To reset the entire DB cluster parameter group, specify the `DBClusterParameterGroupName` and `ResetAllParameters` parameters.

When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to `pending-reboot` to take effect on the next DB instance restart or [RebootDBInstance](@ref) request. You must call [RebootDBInstance](@ref) for every DB instance in your DB cluster that you want the updated static parameter to apply to.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ResetDBClusterParameterGroup)
"""
@inline reset_dbcluster_parameter_group(aws::AWSConfig=default_aws_config(); args...) = reset_dbcluster_parameter_group(aws, args)

@inline reset_dbcluster_parameter_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ResetDBClusterParameterGroup", args)

@inline reset_dbcluster_parameter_group(args) = reset_dbcluster_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.reset_dbparameter_group
    reset_dbparameter_group([::AWSConfig], arguments::Dict)
    reset_dbparameter_group([::AWSConfig]; DBParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "ResetDBParameterGroup", arguments::Dict)
    rds([::AWSConfig], "ResetDBParameterGroup", DBParameterGroupName=, <keyword arguments>)

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

**MySQL**

Valid Values (for Apply method): `immediate` | `pending-reboot`

You can use the immediate value with dynamic parameters only. You can use the `pending-reboot` value for both dynamic and static parameters, and changes are applied when DB instance reboots.

**MariaDB**

Valid Values (for Apply method): `immediate` | `pending-reboot`

You can use the immediate value with dynamic parameters only. You can use the `pending-reboot` value for both dynamic and static parameters, and changes are applied when DB instance reboots.

**Oracle**

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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ResetDBParameterGroup)
"""
@inline reset_dbparameter_group(aws::AWSConfig=default_aws_config(); args...) = reset_dbparameter_group(aws, args)

@inline reset_dbparameter_group(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "ResetDBParameterGroup", args)

@inline reset_dbparameter_group(args) = reset_dbparameter_group(default_aws_config(), args)


"""
    using AWSSDK.RDS.restore_dbcluster_from_s3
    restore_dbcluster_from_s3([::AWSConfig], arguments::Dict)
    restore_dbcluster_from_s3([::AWSConfig]; DBClusterIdentifier=, Engine=, MasterUsername=, MasterUserPassword=, SourceEngine=, SourceEngineVersion=, S3BucketName=, S3IngestionRoleArn=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "RestoreDBClusterFromS3", arguments::Dict)
    rds([::AWSConfig], "RestoreDBClusterFromS3", DBClusterIdentifier=, Engine=, MasterUsername=, MasterUserPassword=, SourceEngine=, SourceEngineVersion=, S3BucketName=, S3IngestionRoleArn=, <keyword arguments>)

# RestoreDBClusterFromS3 Operation

Creates an Amazon Aurora DB cluster from data stored in an Amazon S3 bucket. Amazon RDS must be authorized to access the Amazon S3 bucket and the data must be created using the Percona XtraBackup utility as described in [Migrating Data from MySQL by Using an Amazon S3 Bucket](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Migrate.MySQL.html#Aurora.Migrate.MySQL.S3).

# Arguments

## `AvailabilityZones = [::String, ...]`
A list of EC2 Availability Zones that instances in the restored DB cluster can be created in.


## `BackupRetentionPeriod = ::Int`
The number of days for which automated backups of the restored DB cluster are retained. You must specify a minimum value of 1.

Default: 1

Constraints:

*   Must be a value from 1 to 35


## `CharacterSetName = ::String`
A value that indicates that the restored DB cluster should be associated with the specified CharacterSet.


## `DatabaseName = ::String`
The database name for the restored DB cluster.


## `DBClusterIdentifier = ::String` -- *Required*
The name of the DB cluster to create from the source data in the Amazon S3 bucket. This parameter is isn't case-sensitive.

Constraints:

*   Must contain from 1 to 63 letters, numbers, or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

Example: `my-cluster1`


## `DBClusterParameterGroupName = ::String`
The name of the DB cluster parameter group to associate with the restored DB cluster. If this argument is omitted, `default.aurora5.6` is used.

Constraints:

*   If supplied, must match the name of an existing DBClusterParameterGroup.


## `VpcSecurityGroupIds = [::String, ...]`
A list of EC2 VPC security groups to associate with the restored DB cluster.


## `DBSubnetGroupName = ::String`
A DB subnet group to associate with the restored DB cluster.

Constraints: If supplied, must match the name of an existing DBSubnetGroup.

Example: `mySubnetgroup`


## `Engine = ::String` -- *Required*
The name of the database engine to be used for the restored DB cluster.

Valid Values: `aurora`, `aurora-postgresql`


## `EngineVersion = ::String`
The version number of the database engine to use.

**Aurora MySQL**

Example: `5.6.10a`

**Aurora PostgreSQL**

Example: `9.6.3`


## `Port = ::Int`
The port number on which the instances in the restored DB cluster accept connections.

Default: `3306`


## `MasterUsername = ::String` -- *Required*
The name of the master user for the restored DB cluster.

Constraints:

*   Must be 1 to 16 letters or numbers.

*   First character must be a letter.

*   Cannot be a reserved word for the chosen database engine.


## `MasterUserPassword = ::String` -- *Required*
The password for the master database user. This password can contain any printable ASCII character except "/", \"\"\", or "@".

Constraints: Must contain from 8 to 41 characters.


## `OptionGroupName = ::String`
A value that indicates that the restored DB cluster should be associated with the specified option group.

Permanent options can't be removed from an option group. An option group can't be removed from a DB cluster once it is associated with a DB cluster.


## `PreferredBackupWindow = ::String`
The daily time range during which automated backups are created if automated backups are enabled using the `BackupRetentionPeriod` parameter.

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see [Adjusting the Preferred Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html) in the *Amazon RDS User Guide.*

Constraints:

*   Must be in the format `hh24:mi-hh24:mi`.

*   Must be in Universal Coordinated Time (UTC).

*   Must not conflict with the preferred maintenance window.

*   Must be at least 30 minutes.


## `PreferredMaintenanceWindow = ::String`
The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).

Format: `ddd:hh24:mi-ddd:hh24:mi`

The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see [Adjusting the Preferred Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html) in the *Amazon RDS User Guide.*

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `StorageEncrypted = ::Bool`
Specifies whether the restored DB cluster is encrypted.


## `KmsKeyId = ::String`
The AWS KMS key identifier for an encrypted DB cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KM encryption key.

If the `StorageEncrypted` parameter is true, and you do not specify a value for the `KmsKeyId` parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

Default: `false`


## `SourceEngine = ::String` -- *Required*
The identifier for the database engine that was backed up to create the files stored in the Amazon S3 bucket.

Valid values: `mysql`


## `SourceEngineVersion = ::String` -- *Required*
The version of the database that the backup files were created from.

MySQL version 5.5 and 5.6 are supported.

Example: `5.6.22`


## `S3BucketName = ::String` -- *Required*
The name of the Amazon S3 bucket that contains the data used to create the Amazon Aurora DB cluster.


## `S3Prefix = ::String`
The prefix for all of the file names that contain the data used to create the Amazon Aurora DB cluster. If you do not specify a **SourceS3Prefix** value, then the Amazon Aurora DB cluster is created by using all of the files in the Amazon S3 bucket.


## `S3IngestionRoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon RDS to access the Amazon S3 bucket on your behalf.


## `BacktrackWindow = ::Int`
The target backtrack window, in seconds. To disable backtracking, set this value to 0.

Default: 0

Constraints:

*   If specified, this value must be set to a number from 0 to 259,200 (72 hours).


## `EnableCloudwatchLogsExports = [::String, ...]`
The list of logs that the restored DB cluster is to export to CloudWatch Logs.




# Returns

`RestoreDBClusterFromS3Result`

# Exceptions

`DBClusterAlreadyExistsFault`, `DBClusterQuotaExceededFault`, `StorageQuotaExceededFault`, `DBSubnetGroupNotFoundFault`, `InvalidVPCNetworkStateFault`, `InvalidDBClusterStateFault`, `InvalidDBSubnetGroupStateFault`, `InvalidSubnet`, `InvalidS3BucketFault`, `DBClusterParameterGroupNotFoundFault`, `KMSKeyNotAccessibleFault`, `DBClusterNotFoundFault` or `InsufficientStorageClusterCapacityFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterFromS3)
"""
@inline restore_dbcluster_from_s3(aws::AWSConfig=default_aws_config(); args...) = restore_dbcluster_from_s3(aws, args)

@inline restore_dbcluster_from_s3(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "RestoreDBClusterFromS3", args)

@inline restore_dbcluster_from_s3(args) = restore_dbcluster_from_s3(default_aws_config(), args)


"""
    using AWSSDK.RDS.restore_dbcluster_from_snapshot
    restore_dbcluster_from_snapshot([::AWSConfig], arguments::Dict)
    restore_dbcluster_from_snapshot([::AWSConfig]; DBClusterIdentifier=, SnapshotIdentifier=, Engine=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "RestoreDBClusterFromSnapshot", arguments::Dict)
    rds([::AWSConfig], "RestoreDBClusterFromSnapshot", DBClusterIdentifier=, SnapshotIdentifier=, Engine=, <keyword arguments>)

# RestoreDBClusterFromSnapshot Operation

Creates a new DB cluster from a DB snapshot or DB cluster snapshot.

If a DB snapshot is specified, the target DB cluster is created from the source DB snapshot with a default configuration and default security group.

If a DB cluster snapshot is specified, the target DB cluster is created from the source DB cluster restore point with the same configuration as the original source DB cluster, except that the new DB cluster is created with the default security group.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

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


## `BacktrackWindow = ::Int`
The target backtrack window, in seconds. To disable backtracking, set this value to 0.

Default: 0

Constraints:

*   If specified, this value must be set to a number from 0 to 259,200 (72 hours).


## `EnableCloudwatchLogsExports = [::String, ...]`
The list of logs that the restored DB cluster is to export to CloudWatch Logs.




# Returns

`RestoreDBClusterFromSnapshotResult`

# Exceptions

`DBClusterAlreadyExistsFault`, `DBClusterQuotaExceededFault`, `StorageQuotaExceededFault`, `DBSubnetGroupNotFoundFault`, `DBSnapshotNotFoundFault`, `DBClusterSnapshotNotFoundFault`, `InsufficientDBClusterCapacityFault`, `InsufficientStorageClusterCapacityFault`, `InvalidDBSnapshotStateFault`, `InvalidDBClusterSnapshotStateFault`, `StorageQuotaExceededFault`, `InvalidVPCNetworkStateFault`, `InvalidRestoreFault`, `DBSubnetGroupNotFoundFault`, `InvalidSubnet`, `OptionGroupNotFoundFault`, `KMSKeyNotAccessibleFault` or `DBClusterParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterFromSnapshot)
"""
@inline restore_dbcluster_from_snapshot(aws::AWSConfig=default_aws_config(); args...) = restore_dbcluster_from_snapshot(aws, args)

@inline restore_dbcluster_from_snapshot(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "RestoreDBClusterFromSnapshot", args)

@inline restore_dbcluster_from_snapshot(args) = restore_dbcluster_from_snapshot(default_aws_config(), args)


"""
    using AWSSDK.RDS.restore_dbcluster_to_point_in_time
    restore_dbcluster_to_point_in_time([::AWSConfig], arguments::Dict)
    restore_dbcluster_to_point_in_time([::AWSConfig]; DBClusterIdentifier=, SourceDBClusterIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "RestoreDBClusterToPointInTime", arguments::Dict)
    rds([::AWSConfig], "RestoreDBClusterToPointInTime", DBClusterIdentifier=, SourceDBClusterIdentifier=, <keyword arguments>)

# RestoreDBClusterToPointInTime Operation

Restores a DB cluster to an arbitrary point in time. Users can restore to any point in time before `LatestRestorableTime` for up to `BackupRetentionPeriod` days. The target DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group.

**Note**
> This action only restores the DB cluster, not the DB instances for that DB cluster. You must invoke the [CreateDBInstance](@ref) action to create DB instances for the restored DB cluster, specifying the identifier of the restored DB cluster in `DBClusterIdentifier`. You can create DB instances only after the `RestoreDBClusterToPointInTime` action has completed and the DB cluster is available.

For more information on Amazon Aurora, see [Aurora on Amazon RDS](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html) in the *Amazon RDS User Guide.*

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

Constraints: A value from `1150-65535`.

Default: The default port for the engine.


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


## `BacktrackWindow = ::Int`
The target backtrack window, in seconds. To disable backtracking, set this value to 0.

Default: 0

Constraints:

*   If specified, this value must be set to a number from 0 to 259,200 (72 hours).


## `EnableCloudwatchLogsExports = [::String, ...]`
The list of logs that the restored DB cluster is to export to CloudWatch Logs.




# Returns

`RestoreDBClusterToPointInTimeResult`

# Exceptions

`DBClusterAlreadyExistsFault`, `DBClusterNotFoundFault`, `DBClusterQuotaExceededFault`, `DBClusterSnapshotNotFoundFault`, `DBSubnetGroupNotFoundFault`, `InsufficientDBClusterCapacityFault`, `InsufficientStorageClusterCapacityFault`, `InvalidDBClusterSnapshotStateFault`, `InvalidDBClusterStateFault`, `InvalidDBSnapshotStateFault`, `InvalidRestoreFault`, `InvalidSubnet`, `InvalidVPCNetworkStateFault`, `KMSKeyNotAccessibleFault`, `OptionGroupNotFoundFault`, `StorageQuotaExceededFault` or `DBClusterParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterToPointInTime)
"""
@inline restore_dbcluster_to_point_in_time(aws::AWSConfig=default_aws_config(); args...) = restore_dbcluster_to_point_in_time(aws, args)

@inline restore_dbcluster_to_point_in_time(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "RestoreDBClusterToPointInTime", args)

@inline restore_dbcluster_to_point_in_time(args) = restore_dbcluster_to_point_in_time(default_aws_config(), args)


"""
    using AWSSDK.RDS.restore_dbinstance_from_dbsnapshot
    restore_dbinstance_from_dbsnapshot([::AWSConfig], arguments::Dict)
    restore_dbinstance_from_dbsnapshot([::AWSConfig]; DBInstanceIdentifier=, DBSnapshotIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "RestoreDBInstanceFromDBSnapshot", arguments::Dict)
    rds([::AWSConfig], "RestoreDBInstanceFromDBSnapshot", DBInstanceIdentifier=, DBSnapshotIdentifier=, <keyword arguments>)

# RestoreDBInstanceFromDBSnapshot Operation

Creates a new DB instance from a DB snapshot. The target database is created from the source database restore point with the most of original configuration with the default security group and the default DB parameter group. By default, the new DB instance is created as a single-AZ deployment except when the instance is a SQL Server instance that has an option group that is associated with mirroring; in this case, the instance becomes a mirrored AZ deployment and not a single-AZ deployment.

If your intent is to replace your original DB instance with the new, restored DB instance, then rename your original DB instance before you call the RestoreDBInstanceFromDBSnapshot action. RDS doesn't allow two DB instances with the same name. Once you have renamed your original DB instance with a different identifier, then you can pass the original name of the DB instance as the DBInstanceIdentifier in the call to the RestoreDBInstanceFromDBSnapshot action. The result is that you will replace the original DB instance with the DB instance created from the snapshot.

If you are restoring from a shared manual DB snapshot, the `DBSnapshotIdentifier` must be the ARN of the shared DB snapshot.

**Note**
> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora, use [RestoreDBClusterFromSnapshot](@ref).

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
Name of the DB instance to create from the DB snapshot. This parameter isn't case-sensitive.

Constraints:

*   Must contain from 1 to 63 numbers, letters, or hyphens

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens

Example: `my-snapshot-id`


## `DBSnapshotIdentifier = ::String` -- *Required*
The identifier for the DB snapshot to restore from.

Constraints:

*   Must match the identifier of an existing DBSnapshot.

*   If you are restoring from a shared manual DB snapshot, the `DBSnapshotIdentifier` must be the ARN of the shared DB snapshot.


## `DBInstanceClass = ::String`
The compute and memory capacity of the Amazon RDS DB instance, for example, `db.m4.large`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see [DB Instance Class](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the *Amazon RDS User Guide.*

Default: The same DBInstanceClass as the original DB instance.


## `Port = ::Int`
The port number on which the database accepts connections.

Default: The same port as the original DB instance

Constraints: Value must be `1150-65535`


## `AvailabilityZone = ::String`
The EC2 Availability Zone that the DB instance is created in.

Default: A random, system-chosen Availability Zone.

Constraint: You can't specify the AvailabilityZone parameter if the MultiAZ parameter is set to `true`.

Example: `us-east-1a`


## `DBSubnetGroupName = ::String`
The DB subnet group name to use for the new instance.

Constraints: If supplied, must match the name of an existing DBSubnetGroup.

Example: `mySubnetgroup`


## `MultiAZ = ::Bool`
Specifies if the DB instance is a Multi-AZ deployment.

Constraint: You can't specify the AvailabilityZone parameter if the MultiAZ parameter is set to `true`.


## `PubliclyAccessible = ::Bool`
Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.

Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.

*   **Default VPC:** true

*   **VPC:** false

If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance is publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance is private.


## `AutoMinorVersionUpgrade = ::Bool`
Indicates that minor version upgrades are applied automatically to the DB instance during the maintenance window.


## `LicenseModel = ::String`
License model information for the restored DB instance.

Default: Same as source.

Valid values: `license-included` | `bring-your-own-license` | `general-public-license`


## `DBName = ::String`
The database name for the restored DB instance.

**Note**
> This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB engines.


## `Engine = ::String`
The database engine to use for the new instance.

Default: The same as source

Constraint: Must be compatible with the engine of the source. For example, you can restore a MariaDB 10.1 DB instance from a MySQL 5.6 snapshot.

Valid Values:

*   `mariadb`

*   `mysql`

*   `oracle-ee`

*   `oracle-se2`

*   `oracle-se1`

*   `oracle-se`

*   `postgres`

*   `sqlserver-ee`

*   `sqlserver-se`

*   `sqlserver-ex`

*   `sqlserver-web`


## `Iops = ::Int`
Specifies the amount of provisioned IOPS for the DB instance, expressed in I/O operations per second. If this parameter is not specified, the IOPS value is taken from the backup. If this parameter is set to 0, the new instance is converted to a non-PIOPS instance. The conversion takes additional time, though your DB instance is available for connections before the conversion starts.

The provisioned IOPS value must follow the requirements for your database engine. For more information, see [Amazon RDS Provisioned IOPS Storage to Improve Performance](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS).

Constraints: Must be an integer greater than 1000.


## `OptionGroupName = ::String`
The name of the option group to be used for the restored DB instance.

Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `StorageType = ::String`
Specifies the storage type to be associated with the DB instance.

Valid values: `standard | gp2 | io1`

If you specify `io1`, you must also include a value for the `Iops` parameter.

Default: `io1` if the `Iops` parameter is specified, otherwise `standard`


## `TdeCredentialArn = ::String`
The ARN from the key store with which to associate the instance for TDE encryption.


## `TdeCredentialPassword = ::String`
The password for the given ARN from the key store in order to access the device.


## `Domain = ::String`
Specify the Active Directory Domain to restore the instance in.


## `CopyTagsToSnapshot = ::Bool`
True to copy all tags from the restored DB instance to snapshots of the DB instance, and otherwise false. The default is false.


## `DomainIAMRoleName = ::String`
Specify the name of the IAM role to be used when making API calls to the Directory Service.


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

You can enable IAM database authentication for the following database engines

*   For MySQL 5.6, minor version 5.6.34 or higher

*   For MySQL 5.7, minor version 5.7.16 or higher

Default: `false`


## `EnableCloudwatchLogsExports = [::String, ...]`
The list of logs that the restored DB instance is to export to CloudWatch Logs.


## `ProcessorFeatures = [[ ... ], ...]`
The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
```
 ProcessorFeatures = [[
        "Name" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `UseDefaultProcessorFeatures = ::Bool`
A value that specifies that the DB instance class of the DB instance uses its default processor features.




# Returns

`RestoreDBInstanceFromDBSnapshotResult`

# Exceptions

`DBInstanceAlreadyExistsFault`, `DBSnapshotNotFoundFault`, `InstanceQuotaExceededFault`, `InsufficientDBInstanceCapacityFault`, `InvalidDBSnapshotStateFault`, `StorageQuotaExceededFault`, `InvalidVPCNetworkStateFault`, `InvalidRestoreFault`, `DBSubnetGroupNotFoundFault`, `DBSubnetGroupDoesNotCoverEnoughAZs`, `InvalidSubnet`, `ProvisionedIopsNotAvailableInAZFault`, `OptionGroupNotFoundFault`, `StorageTypeNotSupportedFault`, `AuthorizationNotFoundFault`, `KMSKeyNotAccessibleFault`, `DBSecurityGroupNotFoundFault`, `DomainNotFoundFault` or `DBParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceFromDBSnapshot)
"""
@inline restore_dbinstance_from_dbsnapshot(aws::AWSConfig=default_aws_config(); args...) = restore_dbinstance_from_dbsnapshot(aws, args)

@inline restore_dbinstance_from_dbsnapshot(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "RestoreDBInstanceFromDBSnapshot", args)

@inline restore_dbinstance_from_dbsnapshot(args) = restore_dbinstance_from_dbsnapshot(default_aws_config(), args)


"""
    using AWSSDK.RDS.restore_dbinstance_from_s3
    restore_dbinstance_from_s3([::AWSConfig], arguments::Dict)
    restore_dbinstance_from_s3([::AWSConfig]; DBInstanceIdentifier=, DBInstanceClass=, Engine=, SourceEngine=, SourceEngineVersion=, S3BucketName=, S3IngestionRoleArn=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "RestoreDBInstanceFromS3", arguments::Dict)
    rds([::AWSConfig], "RestoreDBInstanceFromS3", DBInstanceIdentifier=, DBInstanceClass=, Engine=, SourceEngine=, SourceEngineVersion=, S3BucketName=, S3IngestionRoleArn=, <keyword arguments>)

# RestoreDBInstanceFromS3 Operation

Amazon Relational Database Service (Amazon RDS) supports importing MySQL databases by using backup files. You can create a backup of your on-premises database, store it on Amazon Simple Storage Service (Amazon S3), and then restore the backup file onto a new Amazon RDS DB instance running MySQL. For more information, see [Importing Data into an Amazon RDS MySQL DB Instance](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html).

# Arguments

## `DBName = ::String`
The name of the database to create when the DB instance is created. Follow the naming rules specified in [CreateDBInstance](@ref).


## `DBInstanceIdentifier = ::String` -- *Required*
The DB instance identifier. This parameter is stored as a lowercase string.

Constraints:

*   Must contain from 1 to 63 letters, numbers, or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

Example: `mydbinstance`


## `AllocatedStorage = ::Int`
The amount of storage (in gigabytes) to allocate initially for the DB instance. Follow the allocation rules specified in [CreateDBInstance](@ref).

**Note**
> Be sure to allocate enough memory for your new DB instance so that the restore operation can succeed. You can also allocate additional memory for future growth.


## `DBInstanceClass = ::String` -- *Required*
The compute and memory capacity of the DB instance, for example, `db.m4.large`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see [DB Instance Class](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the *Amazon RDS User Guide.*

Importing from Amazon S3 is not supported on the db.t2.micro DB instance class.


## `Engine = ::String` -- *Required*
The name of the database engine to be used for this instance.

Valid Values: `mysql`


## `MasterUsername = ::String`
The name for the master user.

Constraints:

*   Must be 1 to 16 letters or numbers.

*   First character must be a letter.

*   Cannot be a reserved word for the chosen database engine.


## `MasterUserPassword = ::String`
The password for the master user. The password can include any printable ASCII character except "/", \"\"\", or "@".

Constraints: Must contain from 8 to 41 characters.


## `DBSecurityGroups = [::String, ...]`
A list of DB security groups to associate with this DB instance.

Default: The default DB security group for the database engine.


## `VpcSecurityGroupIds = [::String, ...]`
A list of VPC security groups to associate with this DB instance.


## `AvailabilityZone = ::String`
The Availability Zone that the DB instance is created in. For information about AWS Regions and Availability Zones, see [Regions and Availability Zones](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html).

Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.

Example: `us-east-1d`

Constraint: The AvailabilityZone parameter can't be specified if the MultiAZ parameter is set to `true`. The specified Availability Zone must be in the same AWS Region as the current endpoint.


## `DBSubnetGroupName = ::String`
A DB subnet group to associate with this DB instance.


## `PreferredMaintenanceWindow = ::String`
The time range each week during which system maintenance can occur, in Universal Coordinated Time (UTC). For more information, see [Amazon RDS Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance).

Constraints:

*   Must be in the format `ddd:hh24:mi-ddd:hh24:mi`.

*   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

*   Must be in Universal Coordinated Time (UTC).

*   Must not conflict with the preferred backup window.

*   Must be at least 30 minutes.


## `DBParameterGroupName = ::String`
The name of the DB parameter group to associate with this DB instance. If this argument is omitted, the default parameter group for the specified engine is used.


## `BackupRetentionPeriod = ::Int`
The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. For more information, see [CreateDBInstance](@ref).


## `PreferredBackupWindow = ::String`
The time range each day during which automated backups are created if automated backups are enabled. For more information, see [The Backup Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow).

Constraints:

*   Must be in the format `hh24:mi-hh24:mi`.

*   Must be in Universal Coordinated Time (UTC).

*   Must not conflict with the preferred maintenance window.

*   Must be at least 30 minutes.


## `Port = ::Int`
The port number on which the database accepts connections.

Type: Integer

Valid Values: `1150`-`65535`

Default: `3306`


## `MultiAZ = ::Bool`
Specifies whether the DB instance is a Multi-AZ deployment. If MultiAZ is set to `true`, you can't set the AvailabilityZone parameter.


## `EngineVersion = ::String`
The version number of the database engine to use. Choose the latest minor version of your database engine. For information about engine versions, see [CreateDBInstance](@ref), or call [DescribeDBEngineVersions](@ref).


## `AutoMinorVersionUpgrade = ::Bool`
True to indicate that minor engine upgrades are applied automatically to the DB instance during the maintenance window, and otherwise false.

Default: `true`


## `LicenseModel = ::String`
The license model for this DB instance. Use `general-public-license`.


## `Iops = ::Int`
The amount of Provisioned IOPS (input/output operations per second) to allocate initially for the DB instance. For information about valid Iops values, see see [Amazon RDS Provisioned IOPS Storage to Improve Performance](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS).


## `OptionGroupName = ::String`
The name of the option group to associate with this DB instance. If this argument is omitted, the default option group for the specified engine is used.


## `PubliclyAccessible = ::Bool`
Specifies whether the DB instance is publicly accessible or not. For more information, see [CreateDBInstance](@ref).


## `Tags = [[ ... ], ...]`
A list of tags to associate with this DB instance. For more information, see [Tagging Amazon RDS Resources](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html).
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `StorageType = ::String`
Specifies the storage type to be associated with the DB instance.

Valid values: `standard` | `gp2` | `io1`

If you specify `io1`, you must also include a value for the `Iops` parameter.

Default: `io1` if the `Iops` parameter is specified; otherwise `standard`


## `StorageEncrypted = ::Bool`
Specifies whether the new DB instance is encrypted or not.


## `KmsKeyId = ::String`
The AWS KMS key identifier for an encrypted DB instance.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key.

If the `StorageEncrypted` parameter is true, and you do not specify a value for the `KmsKeyId` parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.


## `CopyTagsToSnapshot = ::Bool`
True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise false.

Default: false.


## `MonitoringInterval = ::Int`
The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0.

If `MonitoringRoleArn` is specified, then you must also set `MonitoringInterval` to a value other than 0.

Valid Values: 0, 1, 5, 10, 15, 30, 60

Default: `0`


## `MonitoringRoleArn = ::String`
The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, `arn:aws:iam:123456789012:role/emaccess`. For information on creating a monitoring role, see [Setting Up and Enabling Enhanced Monitoring](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling).

If `MonitoringInterval` is set to a value other than 0, then you must supply a `MonitoringRoleArn` value.


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

Default: `false`


## `SourceEngine = ::String` -- *Required*
The name of the engine of your source database.

Valid Values: `mysql`


## `SourceEngineVersion = ::String` -- *Required*
The engine version of your source database.

Valid Values: `5.6`


## `S3BucketName = ::String` -- *Required*
The name of your Amazon S3 bucket that contains your database backup file.


## `S3Prefix = ::String`
The prefix of your Amazon S3 bucket.


## `S3IngestionRoleArn = ::String` -- *Required*
An AWS Identity and Access Management (IAM) role to allow Amazon RDS to access your Amazon S3 bucket.


## `EnablePerformanceInsights = ::Bool`
True to enable Performance Insights for the DB instance, and otherwise false.

For more information, see [Using Amazon Performance Insights](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html) in the *Amazon Relational Database Service User Guide*.


## `PerformanceInsightsKMSKeyId = ::String`
The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), the KMS key identifier, or the KMS key alias for the KMS encryption key.


## `PerformanceInsightsRetentionPeriod = ::Int`
The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).


## `EnableCloudwatchLogsExports = [::String, ...]`
The list of logs that the restored DB instance is to export to CloudWatch Logs.


## `ProcessorFeatures = [[ ... ], ...]`
The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
```
 ProcessorFeatures = [[
        "Name" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `UseDefaultProcessorFeatures = ::Bool`
A value that specifies that the DB instance class of the DB instance uses its default processor features.




# Returns

`RestoreDBInstanceFromS3Result`

# Exceptions

`DBInstanceAlreadyExistsFault`, `InsufficientDBInstanceCapacityFault`, `DBParameterGroupNotFoundFault`, `DBSecurityGroupNotFoundFault`, `InstanceQuotaExceededFault`, `StorageQuotaExceededFault`, `DBSubnetGroupNotFoundFault`, `DBSubnetGroupDoesNotCoverEnoughAZs`, `InvalidSubnet`, `InvalidVPCNetworkStateFault`, `InvalidS3BucketFault`, `ProvisionedIopsNotAvailableInAZFault`, `OptionGroupNotFoundFault`, `StorageTypeNotSupportedFault`, `AuthorizationNotFoundFault` or `KMSKeyNotAccessibleFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceFromS3)
"""
@inline restore_dbinstance_from_s3(aws::AWSConfig=default_aws_config(); args...) = restore_dbinstance_from_s3(aws, args)

@inline restore_dbinstance_from_s3(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "RestoreDBInstanceFromS3", args)

@inline restore_dbinstance_from_s3(args) = restore_dbinstance_from_s3(default_aws_config(), args)


"""
    using AWSSDK.RDS.restore_dbinstance_to_point_in_time
    restore_dbinstance_to_point_in_time([::AWSConfig], arguments::Dict)
    restore_dbinstance_to_point_in_time([::AWSConfig]; SourceDBInstanceIdentifier=, TargetDBInstanceIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "RestoreDBInstanceToPointInTime", arguments::Dict)
    rds([::AWSConfig], "RestoreDBInstanceToPointInTime", SourceDBInstanceIdentifier=, TargetDBInstanceIdentifier=, <keyword arguments>)

# RestoreDBInstanceToPointInTime Operation

Restores a DB instance to an arbitrary point in time. You can restore to any point in time before the time identified by the LatestRestorableTime property. You can restore to a point up to the number of days specified by the BackupRetentionPeriod property.

The target database is created with most of the original configuration, but in a system-selected Availability Zone, with the default security group, the default subnet group, and the default DB parameter group. By default, the new DB instance is created as a single-AZ deployment except when the instance is a SQL Server instance that has an option group that is associated with mirroring; in this case, the instance becomes a mirrored deployment and not a single-AZ deployment.

**Note**
> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora, use [RestoreDBClusterToPointInTime](@ref).

# Arguments

## `SourceDBInstanceIdentifier = ::String` -- *Required*
The identifier of the source DB instance from which to restore.

Constraints:

*   Must match the identifier of an existing DB instance.


## `TargetDBInstanceIdentifier = ::String` -- *Required*
The name of the new DB instance to be created.

Constraints:

*   Must contain from 1 to 63 letters, numbers, or hyphens

*   First character must be a letter

*   Cannot end with a hyphen or contain two consecutive hyphens


## `RestoreTime = timestamp`
The date and time to restore from.

Valid Values: Value must be a time in Universal Coordinated Time (UTC) format

Constraints:

*   Must be before the latest restorable time for the DB instance

*   Cannot be specified if UseLatestRestorableTime parameter is true

Example: `2009-09-07T23:45:00Z`


## `UseLatestRestorableTime = ::Bool`
Specifies whether (`true`) or not (`false`) the DB instance is restored from the latest backup time.

Default: `false`

Constraints: Cannot be specified if RestoreTime parameter is provided.


## `DBInstanceClass = ::String`
The compute and memory capacity of the Amazon RDS DB instance, for example, `db.m4.large`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see [DB Instance Class](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the *Amazon RDS User Guide.*

Default: The same DBInstanceClass as the original DB instance.


## `Port = ::Int`
The port number on which the database accepts connections.

Constraints: Value must be `1150-65535`

Default: The same port as the original DB instance.


## `AvailabilityZone = ::String`
The EC2 Availability Zone that the DB instance is created in.

Default: A random, system-chosen Availability Zone.

Constraint: You can't specify the AvailabilityZone parameter if the MultiAZ parameter is set to true.

Example: `us-east-1a`


## `DBSubnetGroupName = ::String`
The DB subnet group name to use for the new instance.

Constraints: If supplied, must match the name of an existing DBSubnetGroup.

Example: `mySubnetgroup`


## `MultiAZ = ::Bool`
Specifies if the DB instance is a Multi-AZ deployment.

Constraint: You can't specify the AvailabilityZone parameter if the MultiAZ parameter is set to `true`.


## `PubliclyAccessible = ::Bool`
Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.

Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.

*   **Default VPC:**true

*   **VPC:**false

If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance is publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance is private.


## `AutoMinorVersionUpgrade = ::Bool`
Indicates that minor version upgrades are applied automatically to the DB instance during the maintenance window.


## `LicenseModel = ::String`
License model information for the restored DB instance.

Default: Same as source.

Valid values: `license-included` | `bring-your-own-license` | `general-public-license`


## `DBName = ::String`
The database name for the restored DB instance.

**Note**
> This parameter is not used for the MySQL or MariaDB engines.


## `Engine = ::String`
The database engine to use for the new instance.

Default: The same as source

Constraint: Must be compatible with the engine of the source

Valid Values:

*   `mariadb`

*   `mysql`

*   `oracle-ee`

*   `oracle-se2`

*   `oracle-se1`

*   `oracle-se`

*   `postgres`

*   `sqlserver-ee`

*   `sqlserver-se`

*   `sqlserver-ex`

*   `sqlserver-web`


## `Iops = ::Int`
The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.

Constraints: Must be an integer greater than 1000.

**SQL Server**

Setting the IOPS value for the SQL Server database engine is not supported.


## `OptionGroupName = ::String`
The name of the option group to be used for the restored DB instance.

Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance


## `CopyTagsToSnapshot = ::Bool`
True to copy all tags from the restored DB instance to snapshots of the DB instance, and otherwise false. The default is false.


## `Tags = [[ ... ], ...]`

```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `StorageType = ::String`
Specifies the storage type to be associated with the DB instance.

Valid values: `standard | gp2 | io1`

If you specify `io1`, you must also include a value for the `Iops` parameter.

Default: `io1` if the `Iops` parameter is specified, otherwise `standard`


## `TdeCredentialArn = ::String`
The ARN from the key store with which to associate the instance for TDE encryption.


## `TdeCredentialPassword = ::String`
The password for the given ARN from the key store in order to access the device.


## `Domain = ::String`
Specify the Active Directory Domain to restore the instance in.


## `DomainIAMRoleName = ::String`
Specify the name of the IAM role to be used when making API calls to the Directory Service.


## `EnableIAMDatabaseAuthentication = ::Bool`
True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.

You can enable IAM database authentication for the following database engines

*   For MySQL 5.6, minor version 5.6.34 or higher

*   For MySQL 5.7, minor version 5.7.16 or higher

Default: `false`


## `EnableCloudwatchLogsExports = [::String, ...]`
The list of logs that the restored DB instance is to export to CloudWatch Logs.


## `ProcessorFeatures = [[ ... ], ...]`
The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
```
 ProcessorFeatures = [[
        "Name" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `UseDefaultProcessorFeatures = ::Bool`
A value that specifies that the DB instance class of the DB instance uses its default processor features.




# Returns

`RestoreDBInstanceToPointInTimeResult`

# Exceptions

`DBInstanceAlreadyExistsFault`, `DBInstanceNotFoundFault`, `InstanceQuotaExceededFault`, `InsufficientDBInstanceCapacityFault`, `InvalidDBInstanceStateFault`, `PointInTimeRestoreNotEnabledFault`, `StorageQuotaExceededFault`, `InvalidVPCNetworkStateFault`, `InvalidRestoreFault`, `DBSubnetGroupNotFoundFault`, `DBSubnetGroupDoesNotCoverEnoughAZs`, `InvalidSubnet`, `ProvisionedIopsNotAvailableInAZFault`, `OptionGroupNotFoundFault`, `StorageTypeNotSupportedFault`, `AuthorizationNotFoundFault`, `KMSKeyNotAccessibleFault`, `DBSecurityGroupNotFoundFault`, `DomainNotFoundFault` or `DBParameterGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceToPointInTime)
"""
@inline restore_dbinstance_to_point_in_time(aws::AWSConfig=default_aws_config(); args...) = restore_dbinstance_to_point_in_time(aws, args)

@inline restore_dbinstance_to_point_in_time(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "RestoreDBInstanceToPointInTime", args)

@inline restore_dbinstance_to_point_in_time(args) = restore_dbinstance_to_point_in_time(default_aws_config(), args)


"""
    using AWSSDK.RDS.revoke_dbsecurity_group_ingress
    revoke_dbsecurity_group_ingress([::AWSConfig], arguments::Dict)
    revoke_dbsecurity_group_ingress([::AWSConfig]; DBSecurityGroupName=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "RevokeDBSecurityGroupIngress", arguments::Dict)
    rds([::AWSConfig], "RevokeDBSecurityGroupIngress", DBSecurityGroupName=, <keyword arguments>)

# RevokeDBSecurityGroupIngress Operation

Revokes ingress from a DBSecurityGroup for previously authorized IP ranges or EC2 or VPC Security Groups. Required parameters for this API are one of CIDRIP, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or EC2SecurityGroupId).

# Arguments

## `DBSecurityGroupName = ::String` -- *Required*
The name of the DB security group to revoke ingress from.


## `CIDRIP = ::String`
The IP range to revoke access from. Must be a valid CIDR range. If `CIDRIP` is specified, `EC2SecurityGroupName`, `EC2SecurityGroupId` and `EC2SecurityGroupOwnerId` can't be provided.


## `EC2SecurityGroupName = ::String`
The name of the EC2 security group to revoke access from. For VPC DB security groups, `EC2SecurityGroupId` must be provided. Otherwise, EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or `EC2SecurityGroupId` must be provided.


## `EC2SecurityGroupId = ::String`
The id of the EC2 security group to revoke access from. For VPC DB security groups, `EC2SecurityGroupId` must be provided. Otherwise, EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or `EC2SecurityGroupId` must be provided.


## `EC2SecurityGroupOwnerId = ::String`
The AWS Account Number of the owner of the EC2 security group specified in the `EC2SecurityGroupName` parameter. The AWS Access Key ID is not an acceptable value. For VPC DB security groups, `EC2SecurityGroupId` must be provided. Otherwise, EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or `EC2SecurityGroupId` must be provided.




# Returns

`RevokeDBSecurityGroupIngressResult`

# Exceptions

`DBSecurityGroupNotFoundFault`, `AuthorizationNotFoundFault` or `InvalidDBSecurityGroupStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RevokeDBSecurityGroupIngress)
"""
@inline revoke_dbsecurity_group_ingress(aws::AWSConfig=default_aws_config(); args...) = revoke_dbsecurity_group_ingress(aws, args)

@inline revoke_dbsecurity_group_ingress(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "RevokeDBSecurityGroupIngress", args)

@inline revoke_dbsecurity_group_ingress(args) = revoke_dbsecurity_group_ingress(default_aws_config(), args)


"""
    using AWSSDK.RDS.start_dbinstance
    start_dbinstance([::AWSConfig], arguments::Dict)
    start_dbinstance([::AWSConfig]; DBInstanceIdentifier=)

    using AWSCore.Services.rds
    rds([::AWSConfig], "StartDBInstance", arguments::Dict)
    rds([::AWSConfig], "StartDBInstance", DBInstanceIdentifier=)

# StartDBInstance Operation

Starts a DB instance that was stopped using the AWS console, the stop-db-instance AWS CLI command, or the StopDBInstance action. For more information, see Stopping and Starting a DB instance in the AWS RDS user guide.

**Note**
> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
The user-supplied instance identifier.




# Returns

`StartDBInstanceResult`

# Exceptions

`DBInstanceNotFoundFault`, `InvalidDBInstanceStateFault`, `InsufficientDBInstanceCapacityFault`, `DBSubnetGroupNotFoundFault`, `DBSubnetGroupDoesNotCoverEnoughAZs`, `InvalidDBClusterStateFault`, `InvalidSubnet`, `InvalidVPCNetworkStateFault`, `DBClusterNotFoundFault`, `AuthorizationNotFoundFault` or `KMSKeyNotAccessibleFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBInstance)
"""
@inline start_dbinstance(aws::AWSConfig=default_aws_config(); args...) = start_dbinstance(aws, args)

@inline start_dbinstance(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "StartDBInstance", args)

@inline start_dbinstance(args) = start_dbinstance(default_aws_config(), args)


"""
    using AWSSDK.RDS.stop_dbinstance
    stop_dbinstance([::AWSConfig], arguments::Dict)
    stop_dbinstance([::AWSConfig]; DBInstanceIdentifier=, <keyword arguments>)

    using AWSCore.Services.rds
    rds([::AWSConfig], "StopDBInstance", arguments::Dict)
    rds([::AWSConfig], "StopDBInstance", DBInstanceIdentifier=, <keyword arguments>)

# StopDBInstance Operation

Stops a DB instance. When you stop a DB instance, Amazon RDS retains the DB instance's metadata, including its endpoint, DB parameter group, and option group membership. Amazon RDS also retains the transaction logs so you can do a point-in-time restore if necessary. For more information, see Stopping and Starting a DB instance in the AWS RDS user guide.

**Note**
> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.

# Arguments

## `DBInstanceIdentifier = ::String` -- *Required*
The user-supplied instance identifier.


## `DBSnapshotIdentifier = ::String`
The user-supplied instance identifier of the DB Snapshot created immediately before the DB instance is stopped.




# Returns

`StopDBInstanceResult`

# Exceptions

`DBInstanceNotFoundFault`, `InvalidDBInstanceStateFault`, `DBSnapshotAlreadyExistsFault`, `SnapshotQuotaExceededFault` or `InvalidDBClusterStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBInstance)
"""
@inline stop_dbinstance(aws::AWSConfig=default_aws_config(); args...) = stop_dbinstance(aws, args)

@inline stop_dbinstance(aws::AWSConfig, args) = AWSCore.Services.rds(aws, "StopDBInstance", args)

@inline stop_dbinstance(args) = stop_dbinstance(default_aws_config(), args)




end # module RDS


#==============================================================================#
# End of file
#==============================================================================#
