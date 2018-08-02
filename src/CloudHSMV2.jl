#==============================================================================#
# CloudHSMV2.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/cloudhsmv2-2017-04-28.normal.json
#==============================================================================#

__precompile__()

module CloudHSMV2

using AWSCore


"""
    using AWSSDK.CloudHSMV2.copy_backup_to_region
    copy_backup_to_region([::AWSConfig], arguments::Dict)
    copy_backup_to_region([::AWSConfig]; DestinationRegion=, BackupId=)

    using AWSCore.Services.cloudhsmv2
    cloudhsmv2([::AWSConfig], "CopyBackupToRegion", arguments::Dict)
    cloudhsmv2([::AWSConfig], "CopyBackupToRegion", DestinationRegion=, BackupId=)

# CopyBackupToRegion Operation



# Arguments

## `DestinationRegion = ::String` -- *Required*



## `BackupId = ::String` -- *Required*





# Returns

`CopyBackupToRegionResponse`

# Exceptions

`CloudHsmInternalFailureException`, `CloudHsmServiceException`, `CloudHsmResourceNotFoundException`, `CloudHsmInvalidRequestException` or `CloudHsmAccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/CopyBackupToRegion)
"""
@inline copy_backup_to_region(aws::AWSConfig=default_aws_config(); args...) = copy_backup_to_region(aws, args)

@inline copy_backup_to_region(aws::AWSConfig, args) = AWSCore.Services.cloudhsmv2(aws, "CopyBackupToRegion", args)

@inline copy_backup_to_region(args) = copy_backup_to_region(default_aws_config(), args)


"""
    using AWSSDK.CloudHSMV2.create_cluster
    create_cluster([::AWSConfig], arguments::Dict)
    create_cluster([::AWSConfig]; SubnetIds=, HsmType=, <keyword arguments>)

    using AWSCore.Services.cloudhsmv2
    cloudhsmv2([::AWSConfig], "CreateCluster", arguments::Dict)
    cloudhsmv2([::AWSConfig], "CreateCluster", SubnetIds=, HsmType=, <keyword arguments>)

# CreateCluster Operation

Creates a new AWS CloudHSM cluster.

# Arguments

## `SubnetIds = [::String, ...]` -- *Required*
The identifiers (IDs) of the subnets where you are creating the cluster. You must specify at least one subnet. If you specify multiple subnets, they must meet the following criteria:

*   All subnets must be in the same virtual private cloud (VPC).

*   You can specify only one subnet per Availability Zone.


## `HsmType = ::String` -- *Required*
The type of HSM to use in the cluster. Currently the only allowed value is `hsm1.medium`.


## `SourceBackupId = ::String`
The identifier (ID) of the cluster backup to restore. Use this value to restore the cluster from a backup instead of creating a new cluster. To find the backup ID, use [DescribeBackups](@ref).




# Returns

`CreateClusterResponse`

# Exceptions

`CloudHsmInternalFailureException`, `CloudHsmServiceException`, `CloudHsmResourceNotFoundException`, `CloudHsmInvalidRequestException` or `CloudHsmAccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/CreateCluster)
"""
@inline create_cluster(aws::AWSConfig=default_aws_config(); args...) = create_cluster(aws, args)

@inline create_cluster(aws::AWSConfig, args) = AWSCore.Services.cloudhsmv2(aws, "CreateCluster", args)

@inline create_cluster(args) = create_cluster(default_aws_config(), args)


"""
    using AWSSDK.CloudHSMV2.create_hsm
    create_hsm([::AWSConfig], arguments::Dict)
    create_hsm([::AWSConfig]; ClusterId=, AvailabilityZone=, <keyword arguments>)

    using AWSCore.Services.cloudhsmv2
    cloudhsmv2([::AWSConfig], "CreateHsm", arguments::Dict)
    cloudhsmv2([::AWSConfig], "CreateHsm", ClusterId=, AvailabilityZone=, <keyword arguments>)

# CreateHsm Operation

Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster.

# Arguments

## `ClusterId = ::String` -- *Required*
The identifier (ID) of the HSM's cluster. To find the cluster ID, use [DescribeClusters](@ref).


## `AvailabilityZone = ::String` -- *Required*
The Availability Zone where you are creating the HSM. To find the cluster's Availability Zones, use [DescribeClusters](@ref).


## `IpAddress = ::String`
The HSM's IP address. If you specify an IP address, use an available address from the subnet that maps to the Availability Zone where you are creating the HSM. If you don't specify an IP address, one is chosen for you from that subnet.




# Returns

`CreateHsmResponse`

# Exceptions

`CloudHsmInternalFailureException`, `CloudHsmServiceException`, `CloudHsmInvalidRequestException`, `CloudHsmResourceNotFoundException` or `CloudHsmAccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/CreateHsm)
"""
@inline create_hsm(aws::AWSConfig=default_aws_config(); args...) = create_hsm(aws, args)

@inline create_hsm(aws::AWSConfig, args) = AWSCore.Services.cloudhsmv2(aws, "CreateHsm", args)

@inline create_hsm(args) = create_hsm(default_aws_config(), args)


"""
    using AWSSDK.CloudHSMV2.delete_cluster
    delete_cluster([::AWSConfig], arguments::Dict)
    delete_cluster([::AWSConfig]; ClusterId=)

    using AWSCore.Services.cloudhsmv2
    cloudhsmv2([::AWSConfig], "DeleteCluster", arguments::Dict)
    cloudhsmv2([::AWSConfig], "DeleteCluster", ClusterId=)

# DeleteCluster Operation

Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use [DescribeClusters](@ref). To delete an HSM, use [DeleteHsm](@ref).

# Arguments

## `ClusterId = ::String` -- *Required*
The identifier (ID) of the cluster that you are deleting. To find the cluster ID, use [DescribeClusters](@ref).




# Returns

`DeleteClusterResponse`

# Exceptions

`CloudHsmInternalFailureException`, `CloudHsmServiceException`, `CloudHsmResourceNotFoundException`, `CloudHsmInvalidRequestException` or `CloudHsmAccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DeleteCluster)
"""
@inline delete_cluster(aws::AWSConfig=default_aws_config(); args...) = delete_cluster(aws, args)

@inline delete_cluster(aws::AWSConfig, args) = AWSCore.Services.cloudhsmv2(aws, "DeleteCluster", args)

@inline delete_cluster(args) = delete_cluster(default_aws_config(), args)


"""
    using AWSSDK.CloudHSMV2.delete_hsm
    delete_hsm([::AWSConfig], arguments::Dict)
    delete_hsm([::AWSConfig]; ClusterId=, <keyword arguments>)

    using AWSCore.Services.cloudhsmv2
    cloudhsmv2([::AWSConfig], "DeleteHsm", arguments::Dict)
    cloudhsmv2([::AWSConfig], "DeleteHsm", ClusterId=, <keyword arguments>)

# DeleteHsm Operation

Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to specify only one of these values. To find these values, use [DescribeClusters](@ref).

# Arguments

## `ClusterId = ::String` -- *Required*
The identifier (ID) of the cluster that contains the HSM that you are deleting.


## `HsmId = ::String`
The identifier (ID) of the HSM that you are deleting.


## `EniId = ::String`
The identifier (ID) of the elastic network interface (ENI) of the HSM that you are deleting.


## `EniIp = ::String`
The IP address of the elastic network interface (ENI) of the HSM that you are deleting.




# Returns

`DeleteHsmResponse`

# Exceptions

`CloudHsmInternalFailureException`, `CloudHsmServiceException`, `CloudHsmResourceNotFoundException`, `CloudHsmInvalidRequestException` or `CloudHsmAccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DeleteHsm)
"""
@inline delete_hsm(aws::AWSConfig=default_aws_config(); args...) = delete_hsm(aws, args)

@inline delete_hsm(aws::AWSConfig, args) = AWSCore.Services.cloudhsmv2(aws, "DeleteHsm", args)

@inline delete_hsm(args) = delete_hsm(default_aws_config(), args)


"""
    using AWSSDK.CloudHSMV2.describe_backups
    describe_backups([::AWSConfig], arguments::Dict)
    describe_backups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudhsmv2
    cloudhsmv2([::AWSConfig], "DescribeBackups", arguments::Dict)
    cloudhsmv2([::AWSConfig], "DescribeBackups", <keyword arguments>)

# DescribeBackups Operation

Gets information about backups of AWS CloudHSM clusters.

This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a `NextToken` value. Use this value in a subsequent `DescribeBackups` request to get more backups. When you receive a response with no `NextToken` (or an empty or null value), that means there are no more backups to get.

# Arguments

## `NextToken = ::String`
The `NextToken` value that you received in the previous response. Use this value to get more backups.


## `MaxResults = ::Int`
The maximum number of backups to return in the response. When there are more backups than the number you specify, the response contains a `NextToken` value.


## `Filters = ::Dict{String,String}`
One or more filters to limit the items returned in the response.

Use the `backupIds` filter to return only the specified backups. Specify backups by their backup identifier (ID).

Use the `clusterIds` filter to return only the backups for the specified clusters. Specify clusters by their cluster identifier (ID).

Use the `states` filter to return only backups that match the specified state.


## `SortAscending = ::Bool`





# Returns

`DescribeBackupsResponse`

# Exceptions

`CloudHsmInternalFailureException`, `CloudHsmServiceException`, `CloudHsmResourceNotFoundException`, `CloudHsmInvalidRequestException` or `CloudHsmAccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DescribeBackups)
"""
@inline describe_backups(aws::AWSConfig=default_aws_config(); args...) = describe_backups(aws, args)

@inline describe_backups(aws::AWSConfig, args) = AWSCore.Services.cloudhsmv2(aws, "DescribeBackups", args)

@inline describe_backups(args) = describe_backups(default_aws_config(), args)


"""
    using AWSSDK.CloudHSMV2.describe_clusters
    describe_clusters([::AWSConfig], arguments::Dict)
    describe_clusters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudhsmv2
    cloudhsmv2([::AWSConfig], "DescribeClusters", arguments::Dict)
    cloudhsmv2([::AWSConfig], "DescribeClusters", <keyword arguments>)

# DescribeClusters Operation

Gets information about AWS CloudHSM clusters.

This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a `NextToken` value. Use this value in a subsequent `DescribeClusters` request to get more clusters. When you receive a response with no `NextToken` (or an empty or null value), that means there are no more clusters to get.

# Arguments

## `Filters = ::Dict{String,String}`
One or more filters to limit the items returned in the response.

Use the `clusterIds` filter to return only the specified clusters. Specify clusters by their cluster identifier (ID).

Use the `vpcIds` filter to return only the clusters in the specified virtual private clouds (VPCs). Specify VPCs by their VPC identifier (ID).

Use the `states` filter to return only clusters that match the specified state.


## `NextToken = ::String`
The `NextToken` value that you received in the previous response. Use this value to get more clusters.


## `MaxResults = ::Int`
The maximum number of clusters to return in the response. When there are more clusters than the number you specify, the response contains a `NextToken` value.




# Returns

`DescribeClustersResponse`

# Exceptions

`CloudHsmInternalFailureException`, `CloudHsmServiceException`, `CloudHsmInvalidRequestException` or `CloudHsmAccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DescribeClusters)
"""
@inline describe_clusters(aws::AWSConfig=default_aws_config(); args...) = describe_clusters(aws, args)

@inline describe_clusters(aws::AWSConfig, args) = AWSCore.Services.cloudhsmv2(aws, "DescribeClusters", args)

@inline describe_clusters(args) = describe_clusters(default_aws_config(), args)


"""
    using AWSSDK.CloudHSMV2.initialize_cluster
    initialize_cluster([::AWSConfig], arguments::Dict)
    initialize_cluster([::AWSConfig]; ClusterId=, SignedCert=, TrustAnchor=)

    using AWSCore.Services.cloudhsmv2
    cloudhsmv2([::AWSConfig], "InitializeCluster", arguments::Dict)
    cloudhsmv2([::AWSConfig], "InitializeCluster", ClusterId=, SignedCert=, TrustAnchor=)

# InitializeCluster Operation

Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate. Before you can claim a cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA. To get the cluster's CSR, use [DescribeClusters](@ref).

# Arguments

## `ClusterId = ::String` -- *Required*
The identifier (ID) of the cluster that you are claiming. To find the cluster ID, use [DescribeClusters](@ref).


## `SignedCert = ::String` -- *Required*
The cluster certificate issued (signed) by your issuing certificate authority (CA). The certificate must be in PEM format and can contain a maximum of 5000 characters.


## `TrustAnchor = ::String` -- *Required*
The issuing certificate of the issuing certificate authority (CA) that issued (signed) the cluster certificate. This can be a root (self-signed) certificate or a certificate chain that begins with the certificate that issued the cluster certificate and ends with a root certificate. The certificate or certificate chain must be in PEM format and can contain a maximum of 5000 characters.




# Returns

`InitializeClusterResponse`

# Exceptions

`CloudHsmInternalFailureException`, `CloudHsmServiceException`, `CloudHsmResourceNotFoundException`, `CloudHsmInvalidRequestException` or `CloudHsmAccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/InitializeCluster)
"""
@inline initialize_cluster(aws::AWSConfig=default_aws_config(); args...) = initialize_cluster(aws, args)

@inline initialize_cluster(aws::AWSConfig, args) = AWSCore.Services.cloudhsmv2(aws, "InitializeCluster", args)

@inline initialize_cluster(args) = initialize_cluster(default_aws_config(), args)


"""
    using AWSSDK.CloudHSMV2.list_tags
    list_tags([::AWSConfig], arguments::Dict)
    list_tags([::AWSConfig]; ResourceId=, <keyword arguments>)

    using AWSCore.Services.cloudhsmv2
    cloudhsmv2([::AWSConfig], "ListTags", arguments::Dict)
    cloudhsmv2([::AWSConfig], "ListTags", ResourceId=, <keyword arguments>)

# ListTags Operation

Gets a list of tags for the specified AWS CloudHSM cluster.

This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a `NextToken` value. Use this value in a subsequent `ListTags` request to get more tags. When you receive a response with no `NextToken` (or an empty or null value), that means there are no more tags to get.

# Arguments

## `ResourceId = ::String` -- *Required*
The cluster identifier (ID) for the cluster whose tags you are getting. To find the cluster ID, use [DescribeClusters](@ref).


## `NextToken = ::String`
The `NextToken` value that you received in the previous response. Use this value to get more tags.


## `MaxResults = ::Int`
The maximum number of tags to return in the response. When there are more tags than the number you specify, the response contains a `NextToken` value.




# Returns

`ListTagsResponse`

# Exceptions

`CloudHsmInternalFailureException`, `CloudHsmServiceException`, `CloudHsmResourceNotFoundException`, `CloudHsmInvalidRequestException` or `CloudHsmAccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/ListTags)
"""
@inline list_tags(aws::AWSConfig=default_aws_config(); args...) = list_tags(aws, args)

@inline list_tags(aws::AWSConfig, args) = AWSCore.Services.cloudhsmv2(aws, "ListTags", args)

@inline list_tags(args) = list_tags(default_aws_config(), args)


"""
    using AWSSDK.CloudHSMV2.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; ResourceId=, TagList=)

    using AWSCore.Services.cloudhsmv2
    cloudhsmv2([::AWSConfig], "TagResource", arguments::Dict)
    cloudhsmv2([::AWSConfig], "TagResource", ResourceId=, TagList=)

# TagResource Operation

Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.

# Arguments

## `ResourceId = ::String` -- *Required*
The cluster identifier (ID) for the cluster that you are tagging. To find the cluster ID, use [DescribeClusters](@ref).


## `TagList = [[ ... ], ...]` -- *Required*
A list of one or more tags.
```
 TagList = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Returns

`TagResourceResponse`

# Exceptions

`CloudHsmInternalFailureException`, `CloudHsmServiceException`, `CloudHsmResourceNotFoundException`, `CloudHsmInvalidRequestException` or `CloudHsmAccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.cloudhsmv2(aws, "TagResource", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.CloudHSMV2.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; ResourceId=, TagKeyList=)

    using AWSCore.Services.cloudhsmv2
    cloudhsmv2([::AWSConfig], "UntagResource", arguments::Dict)
    cloudhsmv2([::AWSConfig], "UntagResource", ResourceId=, TagKeyList=)

# UntagResource Operation

Removes the specified tag or tags from the specified AWS CloudHSM cluster.

# Arguments

## `ResourceId = ::String` -- *Required*
The cluster identifier (ID) for the cluster whose tags you are removing. To find the cluster ID, use [DescribeClusters](@ref).


## `TagKeyList = [::String, ...]` -- *Required*
A list of one or more tag keys for the tags that you are removing. Specify only the tag keys, not the tag values.




# Returns

`UntagResourceResponse`

# Exceptions

`CloudHsmInternalFailureException`, `CloudHsmServiceException`, `CloudHsmResourceNotFoundException`, `CloudHsmInvalidRequestException` or `CloudHsmAccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.cloudhsmv2(aws, "UntagResource", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)




end # module CloudHSMV2


#==============================================================================#
# End of file
#==============================================================================#
