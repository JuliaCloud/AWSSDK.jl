#==============================================================================#
# DAX.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/dax-2017-04-19.normal.json
#==============================================================================#

__precompile__()

module DAX

using AWSCore


"""
    using AWSSDK.DAX.create_cluster
    create_cluster([::AWSConfig], arguments::Dict)
    create_cluster([::AWSConfig]; ClusterName=, NodeType=, ReplicationFactor=, IamRoleArn=, <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "CreateCluster", arguments::Dict)
    dax([::AWSConfig], "CreateCluster", ClusterName=, NodeType=, ReplicationFactor=, IamRoleArn=, <keyword arguments>)

# CreateCluster Operation

Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.

# Arguments

## `ClusterName = ::String` -- *Required*
The cluster identifier. This parameter is stored as a lowercase string.

**Constraints:**

*   A name must contain from 1 to 20 alphanumeric characters or hyphens.

*   The first character must be a letter.

*   A name cannot end with a hyphen or contain two consecutive hyphens.


## `NodeType = ::String` -- *Required*
The compute and memory capacity of the nodes in the cluster.


## `Description = ::String`
A description of the cluster.


## `ReplicationFactor = ::Int` -- *Required*
The number of nodes in the DAX cluster. A replication factor of 1 will create a single-node cluster, without any read replicas. For additional fault tolerance, you can create a multiple node cluster with one or more read replicas. To do this, set *ReplicationFactor* to 2 or more.

**Note**
> AWS recommends that you have at least two read replicas per cluster.


## `AvailabilityZones = [::String, ...]`
The Availability Zones (AZs) in which the cluster nodes will be created. All nodes belonging to the cluster are placed in these Availability Zones. Use this parameter if you want to distribute the nodes across multiple AZs.


## `SubnetGroupName = ::String`
The name of the subnet group to be used for the replication group.

**Important**
> DAX clusters can only run in an Amazon VPC environment. All of the subnets that you specify in a subnet group must exist in the same VPC.


## `SecurityGroupIds = [::String, ...]`
A list of security group IDs to be assigned to each node in the DAX cluster. (Each of the security group ID is system-generated.)

If this parameter is not specified, DAX assigns the default VPC security group to each node.


## `PreferredMaintenanceWindow = ::String`
Specifies the weekly time range during which maintenance on the DAX cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for `ddd` are:

*   `sun`

*   `mon`

*   `tue`

*   `wed`

*   `thu`

*   `fri`

*   `sat`

Example: `sun:05:00-sun:09:00`

**Note**
> If you don't specify a preferred maintenance window when you create or modify a cache cluster, DAX assigns a 60-minute maintenance window on a randomly selected day of the week.


## `NotificationTopicArn = ::String`
The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications will be sent.

**Note**
> The Amazon SNS topic owner must be same as the DAX cluster owner.


## `IamRoleArn = ::String` -- *Required*
A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.


## `ParameterGroupName = ::String`
The parameter group to be associated with the DAX cluster.


## `Tags = [[ ... ], ...]`
A set of tags to associate with the DAX cluster.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateClusterResponse`

# Exceptions

`ClusterAlreadyExistsFault`, `InvalidClusterStateFault`, `InsufficientClusterCapacityFault`, `SubnetGroupNotFoundFault`, `InvalidParameterGroupStateFault`, `ParameterGroupNotFoundFault`, `ClusterQuotaForCustomerExceededFault`, `NodeQuotaForClusterExceededFault`, `NodeQuotaForCustomerExceededFault`, `InvalidVPCNetworkStateFault`, `TagQuotaPerResourceExceeded`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/CreateCluster)
"""
@inline create_cluster(aws::AWSConfig=default_aws_config(); args...) = create_cluster(aws, args)

@inline create_cluster(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "CreateCluster", args)

@inline create_cluster(args) = create_cluster(default_aws_config(), args)


"""
    using AWSSDK.DAX.create_parameter_group
    create_parameter_group([::AWSConfig], arguments::Dict)
    create_parameter_group([::AWSConfig]; ParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "CreateParameterGroup", arguments::Dict)
    dax([::AWSConfig], "CreateParameterGroup", ParameterGroupName=, <keyword arguments>)

# CreateParameterGroup Operation

Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.

# Arguments

## `ParameterGroupName = ::String` -- *Required*
The name of the parameter group to apply to all of the clusters in this replication group.


## `Description = ::String`
A description of the parameter group.




# Returns

`CreateParameterGroupResponse`

# Exceptions

`ParameterGroupQuotaExceededFault`, `ParameterGroupAlreadyExistsFault`, `InvalidParameterGroupStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/CreateParameterGroup)
"""
@inline create_parameter_group(aws::AWSConfig=default_aws_config(); args...) = create_parameter_group(aws, args)

@inline create_parameter_group(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "CreateParameterGroup", args)

@inline create_parameter_group(args) = create_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.DAX.create_subnet_group
    create_subnet_group([::AWSConfig], arguments::Dict)
    create_subnet_group([::AWSConfig]; SubnetGroupName=, SubnetIds=, <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "CreateSubnetGroup", arguments::Dict)
    dax([::AWSConfig], "CreateSubnetGroup", SubnetGroupName=, SubnetIds=, <keyword arguments>)

# CreateSubnetGroup Operation

Creates a new subnet group.

# Arguments

## `SubnetGroupName = ::String` -- *Required*
A name for the subnet group. This value is stored as a lowercase string.


## `Description = ::String`
A description for the subnet group


## `SubnetIds = [::String, ...]` -- *Required*
A list of VPC subnet IDs for the subnet group.




# Returns

`CreateSubnetGroupResponse`

# Exceptions

`SubnetGroupAlreadyExistsFault`, `SubnetGroupQuotaExceededFault`, `SubnetQuotaExceededFault` or `InvalidSubnet`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/CreateSubnetGroup)
"""
@inline create_subnet_group(aws::AWSConfig=default_aws_config(); args...) = create_subnet_group(aws, args)

@inline create_subnet_group(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "CreateSubnetGroup", args)

@inline create_subnet_group(args) = create_subnet_group(default_aws_config(), args)


"""
    using AWSSDK.DAX.decrease_replication_factor
    decrease_replication_factor([::AWSConfig], arguments::Dict)
    decrease_replication_factor([::AWSConfig]; ClusterName=, NewReplicationFactor=, <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "DecreaseReplicationFactor", arguments::Dict)
    dax([::AWSConfig], "DecreaseReplicationFactor", ClusterName=, NewReplicationFactor=, <keyword arguments>)

# DecreaseReplicationFactor Operation

Removes one or more nodes from a DAX cluster.

**Note**
> You cannot use `DecreaseReplicationFactor` to remove the last node in a DAX cluster. If you need to do this, use `DeleteCluster` instead.

# Arguments

## `ClusterName = ::String` -- *Required*
The name of the DAX cluster from which you want to remove nodes.


## `NewReplicationFactor = ::Int` -- *Required*
The new number of nodes for the DAX cluster.


## `AvailabilityZones = [::String, ...]`
The Availability Zone(s) from which to remove nodes.


## `NodeIdsToRemove = [::String, ...]`
The unique identifiers of the nodes to be removed from the cluster.




# Returns

`DecreaseReplicationFactorResponse`

# Exceptions

`ClusterNotFoundFault`, `NodeNotFoundFault`, `InvalidClusterStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DecreaseReplicationFactor)
"""
@inline decrease_replication_factor(aws::AWSConfig=default_aws_config(); args...) = decrease_replication_factor(aws, args)

@inline decrease_replication_factor(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "DecreaseReplicationFactor", args)

@inline decrease_replication_factor(args) = decrease_replication_factor(default_aws_config(), args)


"""
    using AWSSDK.DAX.delete_cluster
    delete_cluster([::AWSConfig], arguments::Dict)
    delete_cluster([::AWSConfig]; ClusterName=)

    using AWSCore.Services.dax
    dax([::AWSConfig], "DeleteCluster", arguments::Dict)
    dax([::AWSConfig], "DeleteCluster", ClusterName=)

# DeleteCluster Operation

Deletes a previously provisioned DAX cluster. *DeleteCluster* deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.

# Arguments

## `ClusterName = ::String` -- *Required*
The name of the cluster to be deleted.




# Returns

`DeleteClusterResponse`

# Exceptions

`ClusterNotFoundFault`, `InvalidClusterStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DeleteCluster)
"""
@inline delete_cluster(aws::AWSConfig=default_aws_config(); args...) = delete_cluster(aws, args)

@inline delete_cluster(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "DeleteCluster", args)

@inline delete_cluster(args) = delete_cluster(default_aws_config(), args)


"""
    using AWSSDK.DAX.delete_parameter_group
    delete_parameter_group([::AWSConfig], arguments::Dict)
    delete_parameter_group([::AWSConfig]; ParameterGroupName=)

    using AWSCore.Services.dax
    dax([::AWSConfig], "DeleteParameterGroup", arguments::Dict)
    dax([::AWSConfig], "DeleteParameterGroup", ParameterGroupName=)

# DeleteParameterGroup Operation

Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.

# Arguments

## `ParameterGroupName = ::String` -- *Required*
The name of the parameter group to delete.




# Returns

`DeleteParameterGroupResponse`

# Exceptions

`InvalidParameterGroupStateFault`, `ParameterGroupNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DeleteParameterGroup)
"""
@inline delete_parameter_group(aws::AWSConfig=default_aws_config(); args...) = delete_parameter_group(aws, args)

@inline delete_parameter_group(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "DeleteParameterGroup", args)

@inline delete_parameter_group(args) = delete_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.DAX.delete_subnet_group
    delete_subnet_group([::AWSConfig], arguments::Dict)
    delete_subnet_group([::AWSConfig]; SubnetGroupName=)

    using AWSCore.Services.dax
    dax([::AWSConfig], "DeleteSubnetGroup", arguments::Dict)
    dax([::AWSConfig], "DeleteSubnetGroup", SubnetGroupName=)

# DeleteSubnetGroup Operation

Deletes a subnet group.

**Note**
> You cannot delete a subnet group if it is associated with any DAX clusters.

# Arguments

## `SubnetGroupName = ::String` -- *Required*
The name of the subnet group to delete.




# Returns

`DeleteSubnetGroupResponse`

# Exceptions

`SubnetGroupInUseFault` or `SubnetGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DeleteSubnetGroup)
"""
@inline delete_subnet_group(aws::AWSConfig=default_aws_config(); args...) = delete_subnet_group(aws, args)

@inline delete_subnet_group(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "DeleteSubnetGroup", args)

@inline delete_subnet_group(args) = delete_subnet_group(default_aws_config(), args)


"""
    using AWSSDK.DAX.describe_clusters
    describe_clusters([::AWSConfig], arguments::Dict)
    describe_clusters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "DescribeClusters", arguments::Dict)
    dax([::AWSConfig], "DescribeClusters", <keyword arguments>)

# DescribeClusters Operation

Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied.

If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned.

If the cluster is in the DELETING state, only cluster level information will be displayed.

If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is *available*, the cluster is ready for use.

If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.

# Arguments

## `ClusterNames = [::String, ...]`
The names of the DAX clusters being described.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.

The value for `MaxResults` must be between 20 and 100.


## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.




# Returns

`DescribeClustersResponse`

# Exceptions

`ClusterNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeClusters)
"""
@inline describe_clusters(aws::AWSConfig=default_aws_config(); args...) = describe_clusters(aws, args)

@inline describe_clusters(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "DescribeClusters", args)

@inline describe_clusters(args) = describe_clusters(default_aws_config(), args)


"""
    using AWSSDK.DAX.describe_default_parameters
    describe_default_parameters([::AWSConfig], arguments::Dict)
    describe_default_parameters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "DescribeDefaultParameters", arguments::Dict)
    dax([::AWSConfig], "DescribeDefaultParameters", <keyword arguments>)

# DescribeDefaultParameters Operation

Returns the default system parameter information for the DAX caching software.

# Arguments

## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.

The value for `MaxResults` must be between 20 and 100.


## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.




# Returns

`DescribeDefaultParametersResponse`

# Exceptions

`InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeDefaultParameters)
"""
@inline describe_default_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_default_parameters(aws, args)

@inline describe_default_parameters(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "DescribeDefaultParameters", args)

@inline describe_default_parameters(args) = describe_default_parameters(default_aws_config(), args)


"""
    using AWSSDK.DAX.describe_events
    describe_events([::AWSConfig], arguments::Dict)
    describe_events([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "DescribeEvents", arguments::Dict)
    dax([::AWSConfig], "DescribeEvents", <keyword arguments>)

# DescribeEvents Operation

Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter.

By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.

# Arguments

## `SourceName = ::String`
The identifier of the event source for which events will be returned. If not specified, then all sources are included in the response.


## `SourceType = "CLUSTER", "PARAMETER_GROUP" or "SUBNET_GROUP"`
The event source to retrieve events for. If no value is specified, all events are returned.


## `StartTime = timestamp`
The beginning of the time interval to retrieve events for, specified in ISO 8601 format.


## `EndTime = timestamp`
The end of the time interval for which to retrieve events, specified in ISO 8601 format.


## `Duration = ::Int`
The number of minutes' worth of events to retrieve.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.

The value for `MaxResults` must be between 20 and 100.


## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.




# Returns

`DescribeEventsResponse`

# Exceptions

`InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeEvents)
"""
@inline describe_events(aws::AWSConfig=default_aws_config(); args...) = describe_events(aws, args)

@inline describe_events(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "DescribeEvents", args)

@inline describe_events(args) = describe_events(default_aws_config(), args)


"""
    using AWSSDK.DAX.describe_parameter_groups
    describe_parameter_groups([::AWSConfig], arguments::Dict)
    describe_parameter_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "DescribeParameterGroups", arguments::Dict)
    dax([::AWSConfig], "DescribeParameterGroups", <keyword arguments>)

# DescribeParameterGroups Operation

Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.

# Arguments

## `ParameterGroupNames = [::String, ...]`
The names of the parameter groups.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.

The value for `MaxResults` must be between 20 and 100.


## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.




# Returns

`DescribeParameterGroupsResponse`

# Exceptions

`ParameterGroupNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeParameterGroups)
"""
@inline describe_parameter_groups(aws::AWSConfig=default_aws_config(); args...) = describe_parameter_groups(aws, args)

@inline describe_parameter_groups(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "DescribeParameterGroups", args)

@inline describe_parameter_groups(args) = describe_parameter_groups(default_aws_config(), args)


"""
    using AWSSDK.DAX.describe_parameters
    describe_parameters([::AWSConfig], arguments::Dict)
    describe_parameters([::AWSConfig]; ParameterGroupName=, <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "DescribeParameters", arguments::Dict)
    dax([::AWSConfig], "DescribeParameters", ParameterGroupName=, <keyword arguments>)

# DescribeParameters Operation

Returns the detailed parameter list for a particular parameter group.

# Arguments

## `ParameterGroupName = ::String` -- *Required*
The name of the parameter group.


## `Source = ::String`
How the parameter is defined. For example, `system` denotes a system-defined parameter.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.

The value for `MaxResults` must be between 20 and 100.


## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.




# Returns

`DescribeParametersResponse`

# Exceptions

`ParameterGroupNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeParameters)
"""
@inline describe_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_parameters(aws, args)

@inline describe_parameters(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "DescribeParameters", args)

@inline describe_parameters(args) = describe_parameters(default_aws_config(), args)


"""
    using AWSSDK.DAX.describe_subnet_groups
    describe_subnet_groups([::AWSConfig], arguments::Dict)
    describe_subnet_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "DescribeSubnetGroups", arguments::Dict)
    dax([::AWSConfig], "DescribeSubnetGroups", <keyword arguments>)

# DescribeSubnetGroups Operation

Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.

# Arguments

## `SubnetGroupNames = [::String, ...]`
The name of the subnet group.


## `MaxResults = ::Int`
The maximum number of results to include in the response. If more results exist than the specified `MaxResults` value, a token is included in the response so that the remaining results can be retrieved.

The value for `MaxResults` must be between 20 and 100.


## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by `MaxResults`.




# Returns

`DescribeSubnetGroupsResponse`

# Exceptions

`SubnetGroupNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeSubnetGroups)
"""
@inline describe_subnet_groups(aws::AWSConfig=default_aws_config(); args...) = describe_subnet_groups(aws, args)

@inline describe_subnet_groups(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "DescribeSubnetGroups", args)

@inline describe_subnet_groups(args) = describe_subnet_groups(default_aws_config(), args)


"""
    using AWSSDK.DAX.increase_replication_factor
    increase_replication_factor([::AWSConfig], arguments::Dict)
    increase_replication_factor([::AWSConfig]; ClusterName=, NewReplicationFactor=, <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "IncreaseReplicationFactor", arguments::Dict)
    dax([::AWSConfig], "IncreaseReplicationFactor", ClusterName=, NewReplicationFactor=, <keyword arguments>)

# IncreaseReplicationFactor Operation

Adds one or more nodes to a DAX cluster.

# Arguments

## `ClusterName = ::String` -- *Required*
The name of the DAX cluster that will receive additional nodes.


## `NewReplicationFactor = ::Int` -- *Required*
The new number of nodes for the DAX cluster.


## `AvailabilityZones = [::String, ...]`
The Availability Zones (AZs) in which the cluster nodes will be created. All nodes belonging to the cluster are placed in these Availability Zones. Use this parameter if you want to distribute the nodes across multiple AZs.




# Returns

`IncreaseReplicationFactorResponse`

# Exceptions

`ClusterNotFoundFault`, `InvalidClusterStateFault`, `InsufficientClusterCapacityFault`, `InvalidVPCNetworkStateFault`, `NodeQuotaForClusterExceededFault`, `NodeQuotaForCustomerExceededFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/IncreaseReplicationFactor)
"""
@inline increase_replication_factor(aws::AWSConfig=default_aws_config(); args...) = increase_replication_factor(aws, args)

@inline increase_replication_factor(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "IncreaseReplicationFactor", args)

@inline increase_replication_factor(args) = increase_replication_factor(default_aws_config(), args)


"""
    using AWSSDK.DAX.list_tags
    list_tags([::AWSConfig], arguments::Dict)
    list_tags([::AWSConfig]; ResourceName=, <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "ListTags", arguments::Dict)
    dax([::AWSConfig], "ListTags", ResourceName=, <keyword arguments>)

# ListTags Operation

List all of the tags for a DAX cluster. You can call `ListTags` up to 10 times per second, per account.

# Arguments

## `ResourceName = ::String` -- *Required*
The name of the DAX resource to which the tags belong.


## `NextToken = ::String`
An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token.




# Returns

`ListTagsResponse`

# Exceptions

`ClusterNotFoundFault`, `InvalidARNFault`, `InvalidClusterStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/ListTags)
"""
@inline list_tags(aws::AWSConfig=default_aws_config(); args...) = list_tags(aws, args)

@inline list_tags(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "ListTags", args)

@inline list_tags(args) = list_tags(default_aws_config(), args)


"""
    using AWSSDK.DAX.reboot_node
    reboot_node([::AWSConfig], arguments::Dict)
    reboot_node([::AWSConfig]; ClusterName=, NodeId=)

    using AWSCore.Services.dax
    dax([::AWSConfig], "RebootNode", arguments::Dict)
    dax([::AWSConfig], "RebootNode", ClusterName=, NodeId=)

# RebootNode Operation

Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.

# Arguments

## `ClusterName = ::String` -- *Required*
The name of the DAX cluster containing the node to be rebooted.


## `NodeId = ::String` -- *Required*
The system-assigned ID of the node to be rebooted.




# Returns

`RebootNodeResponse`

# Exceptions

`ClusterNotFoundFault`, `NodeNotFoundFault`, `InvalidClusterStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/RebootNode)
"""
@inline reboot_node(aws::AWSConfig=default_aws_config(); args...) = reboot_node(aws, args)

@inline reboot_node(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "RebootNode", args)

@inline reboot_node(args) = reboot_node(default_aws_config(), args)


"""
    using AWSSDK.DAX.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; ResourceName=, Tags=)

    using AWSCore.Services.dax
    dax([::AWSConfig], "TagResource", arguments::Dict)
    dax([::AWSConfig], "TagResource", ResourceName=, Tags=)

# TagResource Operation

Associates a set of tags with a DAX resource. You can call `TagResource` up to 5 times per second, per account.

# Arguments

## `ResourceName = ::String` -- *Required*
The name of the DAX resource to which tags should be added.


## `Tags = [[ ... ], ...]` -- *Required*
The tags to be assigned to the DAX resource.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`TagResourceResponse`

# Exceptions

`ClusterNotFoundFault`, `TagQuotaPerResourceExceeded`, `InvalidARNFault`, `InvalidClusterStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "TagResource", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.DAX.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; ResourceName=, TagKeys=)

    using AWSCore.Services.dax
    dax([::AWSConfig], "UntagResource", arguments::Dict)
    dax([::AWSConfig], "UntagResource", ResourceName=, TagKeys=)

# UntagResource Operation

Removes the association of tags from a DAX resource. You can call `UntagResource` up to 5 times per second, per account.

# Arguments

## `ResourceName = ::String` -- *Required*
The name of the DAX resource from which the tags should be removed.


## `TagKeys = [::String, ...]` -- *Required*
A list of tag keys. If the DAX cluster has any tags with these keys, then the tags are removed from the cluster.




# Returns

`UntagResourceResponse`

# Exceptions

`ClusterNotFoundFault`, `InvalidARNFault`, `TagNotFoundFault`, `InvalidClusterStateFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "UntagResource", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.DAX.update_cluster
    update_cluster([::AWSConfig], arguments::Dict)
    update_cluster([::AWSConfig]; ClusterName=, <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "UpdateCluster", arguments::Dict)
    dax([::AWSConfig], "UpdateCluster", ClusterName=, <keyword arguments>)

# UpdateCluster Operation

Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.

# Arguments

## `ClusterName = ::String` -- *Required*
The name of the DAX cluster to be modified.


## `Description = ::String`
A description of the changes being made to the cluster.


## `PreferredMaintenanceWindow = ::String`
A range of time when maintenance of DAX cluster software will be performed. For example: `sun:01:00-sun:09:00`. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.


## `NotificationTopicArn = ::String`
The Amazon Resource Name (ARN) that identifies the topic.


## `NotificationTopicStatus = ::String`
The current state of the topic.


## `ParameterGroupName = ::String`
The name of a parameter group for this cluster.


## `SecurityGroupIds = [::String, ...]`
A list of user-specified security group IDs to be assigned to each node in the DAX cluster. If this parameter is not specified, DAX assigns the default VPC security group to each node.




# Returns

`UpdateClusterResponse`

# Exceptions

`InvalidClusterStateFault`, `ClusterNotFoundFault`, `InvalidParameterGroupStateFault`, `ParameterGroupNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UpdateCluster)
"""
@inline update_cluster(aws::AWSConfig=default_aws_config(); args...) = update_cluster(aws, args)

@inline update_cluster(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "UpdateCluster", args)

@inline update_cluster(args) = update_cluster(default_aws_config(), args)


"""
    using AWSSDK.DAX.update_parameter_group
    update_parameter_group([::AWSConfig], arguments::Dict)
    update_parameter_group([::AWSConfig]; ParameterGroupName=, ParameterNameValues=)

    using AWSCore.Services.dax
    dax([::AWSConfig], "UpdateParameterGroup", arguments::Dict)
    dax([::AWSConfig], "UpdateParameterGroup", ParameterGroupName=, ParameterNameValues=)

# UpdateParameterGroup Operation

Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.

# Arguments

## `ParameterGroupName = ::String` -- *Required*
The name of the parameter group.


## `ParameterNameValues = [[ ... ], ...]` -- *Required*
An array of name-value pairs for the parameters in the group. Each element in the array represents a single parameter.
```
 ParameterNameValues = [[
        "ParameterName" =>  ::String,
        "ParameterValue" =>  ::String
    ], ...]
```



# Returns

`UpdateParameterGroupResponse`

# Exceptions

`InvalidParameterGroupStateFault`, `ParameterGroupNotFoundFault`, `InvalidParameterValueException` or `InvalidParameterCombinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UpdateParameterGroup)
"""
@inline update_parameter_group(aws::AWSConfig=default_aws_config(); args...) = update_parameter_group(aws, args)

@inline update_parameter_group(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "UpdateParameterGroup", args)

@inline update_parameter_group(args) = update_parameter_group(default_aws_config(), args)


"""
    using AWSSDK.DAX.update_subnet_group
    update_subnet_group([::AWSConfig], arguments::Dict)
    update_subnet_group([::AWSConfig]; SubnetGroupName=, <keyword arguments>)

    using AWSCore.Services.dax
    dax([::AWSConfig], "UpdateSubnetGroup", arguments::Dict)
    dax([::AWSConfig], "UpdateSubnetGroup", SubnetGroupName=, <keyword arguments>)

# UpdateSubnetGroup Operation

Modifies an existing subnet group.

# Arguments

## `SubnetGroupName = ::String` -- *Required*
The name of the subnet group.


## `Description = ::String`
A description of the subnet group.


## `SubnetIds = [::String, ...]`
A list of subnet IDs in the subnet group.




# Returns

`UpdateSubnetGroupResponse`

# Exceptions

`SubnetGroupNotFoundFault`, `SubnetQuotaExceededFault`, `SubnetInUse` or `InvalidSubnet`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UpdateSubnetGroup)
"""
@inline update_subnet_group(aws::AWSConfig=default_aws_config(); args...) = update_subnet_group(aws, args)

@inline update_subnet_group(aws::AWSConfig, args) = AWSCore.Services.dax(aws, "UpdateSubnetGroup", args)

@inline update_subnet_group(args) = update_subnet_group(default_aws_config(), args)




end # module DAX


#==============================================================================#
# End of file
#==============================================================================#
