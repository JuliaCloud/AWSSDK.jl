#==============================================================================#
# EMR.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/elasticmapreduce-2009-03-31.normal.json
#==============================================================================#

__precompile__()

module EMR

using AWSCore


"""
    using AWSSDK.EMR.add_instance_fleet
    add_instance_fleet([::AWSConfig], arguments::Dict)
    add_instance_fleet([::AWSConfig]; ClusterId=, InstanceFleet=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "AddInstanceFleet", arguments::Dict)
    elasticmapreduce([::AWSConfig], "AddInstanceFleet", ClusterId=, InstanceFleet=)

# AddInstanceFleet Operation

Adds an instance fleet to a running cluster.

**Note**
> The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x.

# Arguments

## `ClusterId = ::String` -- *Required*
The unique identifier of the cluster.


## `InstanceFleet = [ ... ]` -- *Required*
Specifies the configuration of the instance fleet.
```
 InstanceFleet = [
        "Name" =>  ::String,
        "InstanceFleetType" => <required> "MASTER", "CORE" or "TASK",
        "TargetOnDemandCapacity" =>  ::Int,
        "TargetSpotCapacity" =>  ::Int,
        "InstanceTypeConfigs" =>  [[
            "InstanceType" => <required> ::String,
            "WeightedCapacity" =>  ::Int,
            "BidPrice" =>  ::String,
            "BidPriceAsPercentageOfOnDemandPrice" =>  double,
            "EbsConfiguration" =>  [
                "EbsBlockDeviceConfigs" =>  [[
                    "VolumeSpecification" => <required> [
                        "VolumeType" => <required> ::String,
                        "Iops" =>  ::Int,
                        "SizeInGB" => <required> ::Int
                    ],
                    "VolumesPerInstance" =>  ::Int
                ], ...],
                "EbsOptimized" =>  ::Bool
            ],
            "Configurations" =>  [[
                "Classification" =>  ::String,
                "Configurations" =>  list,
                "Properties" =>  ::Dict{String,String}
            ], ...]
        ], ...],
        "LaunchSpecifications" =>  ["SpotSpecification" => <required> [
                "TimeoutDurationMinutes" => <required> ::Int,
                "TimeoutAction" => <required> "SWITCH_TO_ON_DEMAND" or "TERMINATE_CLUSTER",
                "BlockDurationMinutes" =>  ::Int
            ]]
    ]
```



# Returns

`AddInstanceFleetOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddInstanceFleet)
"""
@inline add_instance_fleet(aws::AWSConfig=default_aws_config(); args...) = add_instance_fleet(aws, args)

@inline add_instance_fleet(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "AddInstanceFleet", args)

@inline add_instance_fleet(args) = add_instance_fleet(default_aws_config(), args)


"""
    using AWSSDK.EMR.add_instance_groups
    add_instance_groups([::AWSConfig], arguments::Dict)
    add_instance_groups([::AWSConfig]; InstanceGroups=, JobFlowId=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "AddInstanceGroups", arguments::Dict)
    elasticmapreduce([::AWSConfig], "AddInstanceGroups", InstanceGroups=, JobFlowId=)

# AddInstanceGroups Operation

Adds one or more instance groups to a running cluster.

# Arguments

## `InstanceGroups = [[ ... ], ...]` -- *Required*
Instance groups to add.
```
 InstanceGroups = [[
        "Name" =>  ::String,
        "Market" =>  "ON_DEMAND" or "SPOT",
        "InstanceRole" => <required> "MASTER", "CORE" or "TASK",
        "BidPrice" =>  ::String,
        "InstanceType" => <required> ::String,
        "InstanceCount" => <required> ::Int,
        "Configurations" =>  [[
            "Classification" =>  ::String,
            "Configurations" =>  list,
            "Properties" =>  ::Dict{String,String}
        ], ...],
        "EbsConfiguration" =>  [
            "EbsBlockDeviceConfigs" =>  [[
                "VolumeSpecification" => <required> [
                    "VolumeType" => <required> ::String,
                    "Iops" =>  ::Int,
                    "SizeInGB" => <required> ::Int
                ],
                "VolumesPerInstance" =>  ::Int
            ], ...],
            "EbsOptimized" =>  ::Bool
        ],
        "AutoScalingPolicy" =>  [
            "Constraints" => <required> [
                "MinCapacity" => <required> ::Int,
                "MaxCapacity" => <required> ::Int
            ],
            "Rules" => <required> [[
                "Name" => <required> ::String,
                "Description" =>  ::String,
                "Action" => <required> [
                    "Market" =>  "ON_DEMAND" or "SPOT",
                    "SimpleScalingPolicyConfiguration" => <required> [
                        "AdjustmentType" =>  "CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY" or "EXACT_CAPACITY",
                        "ScalingAdjustment" => <required> ::Int,
                        "CoolDown" =>  ::Int
                    ]
                ],
                "Trigger" => <required> ["CloudWatchAlarmDefinition" => <required> [
                        "ComparisonOperator" => <required> "GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN" or "LESS_THAN_OR_EQUAL",
                        "EvaluationPeriods" =>  ::Int,
                        "MetricName" => <required> ::String,
                        "Namespace" =>  ::String,
                        "Period" => <required> ::Int,
                        "Statistic" =>  "SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM" or "MAXIMUM",
                        "Threshold" => <required> double,
                        "Unit" =>  "NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND" or "COUNT_PER_SECOND",
                        "Dimensions" =>  [[
                            "Key" =>  ::String,
                            "Value" =>  ::String
                        ], ...]
                    ]]
            ], ...]
        ]
    ], ...]
```

## `JobFlowId = ::String` -- *Required*
Job flow in which to add the instance groups.




# Returns

`AddInstanceGroupsOutput`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddInstanceGroups)
"""
@inline add_instance_groups(aws::AWSConfig=default_aws_config(); args...) = add_instance_groups(aws, args)

@inline add_instance_groups(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "AddInstanceGroups", args)

@inline add_instance_groups(args) = add_instance_groups(default_aws_config(), args)


"""
    using AWSSDK.EMR.add_job_flow_steps
    add_job_flow_steps([::AWSConfig], arguments::Dict)
    add_job_flow_steps([::AWSConfig]; JobFlowId=, Steps=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "AddJobFlowSteps", arguments::Dict)
    elasticmapreduce([::AWSConfig], "AddJobFlowSteps", JobFlowId=, Steps=)

# AddJobFlowSteps Operation

AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps are allowed in each job flow.

If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using SSH to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see [Add More than 256 Steps to a Cluster](http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html) in the *Amazon EMR Management Guide*.

A step specifies the location of a JAR file stored either on the master node of the cluster or in Amazon S3. Each step is performed by the main function of the main class of the JAR file. The main class can be specified either in the manifest of the JAR or by using the MainFunction parameter of the step.

Amazon EMR executes each step in the order listed. For a step to be considered complete, the main function must exit with a zero exit code and all Hadoop jobs started while the step was running must have completed and run successfully.

You can only add steps to a cluster that is in one of the following states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.

# Arguments

## `JobFlowId = ::String` -- *Required*
A string that uniquely identifies the job flow. This identifier is returned by [RunJobFlow](@ref) and can also be obtained from [ListClusters](@ref).


## `Steps = [[ ... ], ...]` -- *Required*
A list of [StepConfig](@ref) to be executed by the job flow.
```
 Steps = [[
        "Name" => <required> ::String,
        "ActionOnFailure" =>  "TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT" or "CONTINUE",
        "HadoopJarStep" => <required> [
            "Properties" =>  [[
                "Key" =>  ::String,
                "Value" =>  ::String
            ], ...],
            "Jar" => <required> ::String,
            "MainClass" =>  ::String,
            "Args" =>  [::String, ...]
        ]
    ], ...]
```



# Returns

`AddJobFlowStepsOutput`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddJobFlowSteps)
"""
@inline add_job_flow_steps(aws::AWSConfig=default_aws_config(); args...) = add_job_flow_steps(aws, args)

@inline add_job_flow_steps(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "AddJobFlowSteps", args)

@inline add_job_flow_steps(args) = add_job_flow_steps(default_aws_config(), args)


"""
    using AWSSDK.EMR.add_tags
    add_tags([::AWSConfig], arguments::Dict)
    add_tags([::AWSConfig]; ResourceId=, Tags=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "AddTags", arguments::Dict)
    elasticmapreduce([::AWSConfig], "AddTags", ResourceId=, Tags=)

# AddTags Operation

Adds tags to an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see [Tag Clusters](http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).

# Arguments

## `ResourceId = ::String` -- *Required*
The Amazon EMR resource identifier to which tags will be added. This value must be a cluster identifier.


## `Tags = [[ ... ], ...]` -- *Required*
A list of tags to associate with a cluster and propagate to EC2 instances. Tags are user-defined key/value pairs that consist of a required key string with a maximum of 128 characters, and an optional value string with a maximum of 256 characters.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`AddTagsOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddTags)
"""
@inline add_tags(aws::AWSConfig=default_aws_config(); args...) = add_tags(aws, args)

@inline add_tags(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "AddTags", args)

@inline add_tags(args) = add_tags(default_aws_config(), args)


"""
    using AWSSDK.EMR.cancel_steps
    cancel_steps([::AWSConfig], arguments::Dict)
    cancel_steps([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "CancelSteps", arguments::Dict)
    elasticmapreduce([::AWSConfig], "CancelSteps", <keyword arguments>)

# CancelSteps Operation

Cancels a pending step or steps in a running cluster. Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of 256 steps are allowed in each CancelSteps request. CancelSteps is idempotent but asynchronous; it does not guarantee a step will be canceled, even if the request is successfully submitted. You can only cancel steps that are in a `PENDING` state.

# Arguments

## `ClusterId = ::String`
The `ClusterID` for which specified steps will be canceled. Use [RunJobFlow](@ref) and [ListClusters](@ref) to get ClusterIDs.


## `StepIds = [::String, ...]`
The list of `StepIDs` to cancel. Use [ListSteps](@ref) to get steps and their states for the specified cluster.




# Returns

`CancelStepsOutput`

# Exceptions

`InternalServerError` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CancelSteps)
"""
@inline cancel_steps(aws::AWSConfig=default_aws_config(); args...) = cancel_steps(aws, args)

@inline cancel_steps(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "CancelSteps", args)

@inline cancel_steps(args) = cancel_steps(default_aws_config(), args)


"""
    using AWSSDK.EMR.create_security_configuration
    create_security_configuration([::AWSConfig], arguments::Dict)
    create_security_configuration([::AWSConfig]; Name=, SecurityConfiguration=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "CreateSecurityConfiguration", arguments::Dict)
    elasticmapreduce([::AWSConfig], "CreateSecurityConfiguration", Name=, SecurityConfiguration=)

# CreateSecurityConfiguration Operation

Creates a security configuration, which is stored in the service and can be specified when a cluster is created.

# Arguments

## `Name = ::String` -- *Required*
The name of the security configuration.


## `SecurityConfiguration = ::String` -- *Required*
The security configuration details in JSON format. For JSON parameters and examples, see [Use Security Configurations to Set Up Cluster Security](http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html) in the *Amazon EMR Management Guide*.




# Returns

`CreateSecurityConfigurationOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CreateSecurityConfiguration)
"""
@inline create_security_configuration(aws::AWSConfig=default_aws_config(); args...) = create_security_configuration(aws, args)

@inline create_security_configuration(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "CreateSecurityConfiguration", args)

@inline create_security_configuration(args) = create_security_configuration(default_aws_config(), args)


"""
    using AWSSDK.EMR.delete_security_configuration
    delete_security_configuration([::AWSConfig], arguments::Dict)
    delete_security_configuration([::AWSConfig]; Name=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "DeleteSecurityConfiguration", arguments::Dict)
    elasticmapreduce([::AWSConfig], "DeleteSecurityConfiguration", Name=)

# DeleteSecurityConfiguration Operation

Deletes a security configuration.

# Arguments

## `Name = ::String` -- *Required*
The name of the security configuration.




# Returns

`DeleteSecurityConfigurationOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DeleteSecurityConfiguration)
"""
@inline delete_security_configuration(aws::AWSConfig=default_aws_config(); args...) = delete_security_configuration(aws, args)

@inline delete_security_configuration(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "DeleteSecurityConfiguration", args)

@inline delete_security_configuration(args) = delete_security_configuration(default_aws_config(), args)


"""
    using AWSSDK.EMR.describe_cluster
    describe_cluster([::AWSConfig], arguments::Dict)
    describe_cluster([::AWSConfig]; ClusterId=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "DescribeCluster", arguments::Dict)
    elasticmapreduce([::AWSConfig], "DescribeCluster", ClusterId=)

# DescribeCluster Operation

Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on.

# Arguments

## `ClusterId = ::String` -- *Required*
The identifier of the cluster to describe.




# Returns

`DescribeClusterOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeCluster)
"""
@inline describe_cluster(aws::AWSConfig=default_aws_config(); args...) = describe_cluster(aws, args)

@inline describe_cluster(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "DescribeCluster", args)

@inline describe_cluster(args) = describe_cluster(default_aws_config(), args)


"""
    using AWSSDK.EMR.describe_job_flows
    describe_job_flows([::AWSConfig], arguments::Dict)
    describe_job_flows([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "DescribeJobFlows", arguments::Dict)
    elasticmapreduce([::AWSConfig], "DescribeJobFlows", <keyword arguments>)

# DescribeJobFlows Operation

This API is deprecated and will eventually be removed. We recommend you use [ListClusters](@ref), [DescribeCluster](@ref), [ListSteps](@ref), [ListInstanceGroups](@ref) and [ListBootstrapActions](@ref) instead.

DescribeJobFlows returns a list of job flows that match all of the supplied parameters. The parameters can include a list of job flow IDs, job flow states, and restrictions on job flow creation date and time.

Regardless of supplied parameters, only job flows created within the last two months are returned.

If no parameters are supplied, then job flows matching either of the following criteria are returned:

*   Job flows created and completed in the last two weeks

*   Job flows created within the last two months that are in one of the following states: `RUNNING`, `WAITING`, `SHUTTING_DOWN`, `STARTING`

Amazon EMR can return a maximum of 512 job flow descriptions.

# Arguments

## `CreatedAfter = timestamp`
Return only job flows created after this date and time.


## `CreatedBefore = timestamp`
Return only job flows created before this date and time.


## `JobFlowIds = [::String, ...]`
Return only job flows whose job flow ID is contained in this list.


## `JobFlowStates = ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "SHUTTING_DOWN", "TERMINATED", "COMPLETED" or "FAILED", ...]`
Return only job flows whose state is contained in this list.




# Returns

`DescribeJobFlowsOutput`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeJobFlows)
"""
@inline describe_job_flows(aws::AWSConfig=default_aws_config(); args...) = describe_job_flows(aws, args)

@inline describe_job_flows(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "DescribeJobFlows", args)

@inline describe_job_flows(args) = describe_job_flows(default_aws_config(), args)


"""
    using AWSSDK.EMR.describe_security_configuration
    describe_security_configuration([::AWSConfig], arguments::Dict)
    describe_security_configuration([::AWSConfig]; Name=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "DescribeSecurityConfiguration", arguments::Dict)
    elasticmapreduce([::AWSConfig], "DescribeSecurityConfiguration", Name=)

# DescribeSecurityConfiguration Operation

Provides the details of a security configuration by returning the configuration JSON.

# Arguments

## `Name = ::String` -- *Required*
The name of the security configuration.




# Returns

`DescribeSecurityConfigurationOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeSecurityConfiguration)
"""
@inline describe_security_configuration(aws::AWSConfig=default_aws_config(); args...) = describe_security_configuration(aws, args)

@inline describe_security_configuration(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "DescribeSecurityConfiguration", args)

@inline describe_security_configuration(args) = describe_security_configuration(default_aws_config(), args)


"""
    using AWSSDK.EMR.describe_step
    describe_step([::AWSConfig], arguments::Dict)
    describe_step([::AWSConfig]; ClusterId=, StepId=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "DescribeStep", arguments::Dict)
    elasticmapreduce([::AWSConfig], "DescribeStep", ClusterId=, StepId=)

# DescribeStep Operation

Provides more detail about the cluster step.

# Arguments

## `ClusterId = ::String` -- *Required*
The identifier of the cluster with steps to describe.


## `StepId = ::String` -- *Required*
The identifier of the step to describe.




# Returns

`DescribeStepOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeStep)
"""
@inline describe_step(aws::AWSConfig=default_aws_config(); args...) = describe_step(aws, args)

@inline describe_step(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "DescribeStep", args)

@inline describe_step(args) = describe_step(default_aws_config(), args)


"""
    using AWSSDK.EMR.list_bootstrap_actions
    list_bootstrap_actions([::AWSConfig], arguments::Dict)
    list_bootstrap_actions([::AWSConfig]; ClusterId=, <keyword arguments>)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "ListBootstrapActions", arguments::Dict)
    elasticmapreduce([::AWSConfig], "ListBootstrapActions", ClusterId=, <keyword arguments>)

# ListBootstrapActions Operation

Provides information about the bootstrap actions associated with a cluster.

# Arguments

## `ClusterId = ::String` -- *Required*
The cluster identifier for the bootstrap actions to list.


## `Marker = ::String`
The pagination token that indicates the next set of results to retrieve.




# Returns

`ListBootstrapActionsOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListBootstrapActions)
"""
@inline list_bootstrap_actions(aws::AWSConfig=default_aws_config(); args...) = list_bootstrap_actions(aws, args)

@inline list_bootstrap_actions(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "ListBootstrapActions", args)

@inline list_bootstrap_actions(args) = list_bootstrap_actions(default_aws_config(), args)


"""
    using AWSSDK.EMR.list_clusters
    list_clusters([::AWSConfig], arguments::Dict)
    list_clusters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "ListClusters", arguments::Dict)
    elasticmapreduce([::AWSConfig], "ListClusters", <keyword arguments>)

# ListClusters Operation

Provides the status of all clusters visible to this AWS account. Allows you to filter the list of clusters based on certain criteria; for example, filtering by cluster creation date and time or by status. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListClusters calls.

# Arguments

## `CreatedAfter = timestamp`
The creation date and time beginning value filter for listing clusters.


## `CreatedBefore = timestamp`
The creation date and time end value filter for listing clusters.


## `ClusterStates = ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED" or "TERMINATED_WITH_ERRORS", ...]`
The cluster state filters to apply when listing clusters.


## `Marker = ::String`
The pagination token that indicates the next set of results to retrieve.




# Returns

`ListClustersOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListClusters)
"""
@inline list_clusters(aws::AWSConfig=default_aws_config(); args...) = list_clusters(aws, args)

@inline list_clusters(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "ListClusters", args)

@inline list_clusters(args) = list_clusters(default_aws_config(), args)


"""
    using AWSSDK.EMR.list_instance_fleets
    list_instance_fleets([::AWSConfig], arguments::Dict)
    list_instance_fleets([::AWSConfig]; ClusterId=, <keyword arguments>)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "ListInstanceFleets", arguments::Dict)
    elasticmapreduce([::AWSConfig], "ListInstanceFleets", ClusterId=, <keyword arguments>)

# ListInstanceFleets Operation

Lists all available details about the instance fleets in a cluster.

**Note**
> The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.

# Arguments

## `ClusterId = ::String` -- *Required*
The unique identifier of the cluster.


## `Marker = ::String`
The pagination token that indicates the next set of results to retrieve.




# Returns

`ListInstanceFleetsOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstanceFleets)
"""
@inline list_instance_fleets(aws::AWSConfig=default_aws_config(); args...) = list_instance_fleets(aws, args)

@inline list_instance_fleets(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "ListInstanceFleets", args)

@inline list_instance_fleets(args) = list_instance_fleets(default_aws_config(), args)


"""
    using AWSSDK.EMR.list_instance_groups
    list_instance_groups([::AWSConfig], arguments::Dict)
    list_instance_groups([::AWSConfig]; ClusterId=, <keyword arguments>)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "ListInstanceGroups", arguments::Dict)
    elasticmapreduce([::AWSConfig], "ListInstanceGroups", ClusterId=, <keyword arguments>)

# ListInstanceGroups Operation

Provides all available details about the instance groups in a cluster.

# Arguments

## `ClusterId = ::String` -- *Required*
The identifier of the cluster for which to list the instance groups.


## `Marker = ::String`
The pagination token that indicates the next set of results to retrieve.




# Returns

`ListInstanceGroupsOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstanceGroups)
"""
@inline list_instance_groups(aws::AWSConfig=default_aws_config(); args...) = list_instance_groups(aws, args)

@inline list_instance_groups(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "ListInstanceGroups", args)

@inline list_instance_groups(args) = list_instance_groups(default_aws_config(), args)


"""
    using AWSSDK.EMR.list_instances
    list_instances([::AWSConfig], arguments::Dict)
    list_instances([::AWSConfig]; ClusterId=, <keyword arguments>)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "ListInstances", arguments::Dict)
    elasticmapreduce([::AWSConfig], "ListInstances", ClusterId=, <keyword arguments>)

# ListInstances Operation

Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are considered active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.

# Arguments

## `ClusterId = ::String` -- *Required*
The identifier of the cluster for which to list the instances.


## `InstanceGroupId = ::String`
The identifier of the instance group for which to list the instances.


## `InstanceGroupTypes = ["MASTER", "CORE" or "TASK", ...]`
The type of instance group for which to list the instances.


## `InstanceFleetId = ::String`
The unique identifier of the instance fleet.


## `InstanceFleetType = "MASTER", "CORE" or "TASK"`
The node type of the instance fleet. For example MASTER, CORE, or TASK.


## `InstanceStates = ["AWAITING_FULFILLMENT", "PROVISIONING", "BOOTSTRAPPING", "RUNNING" or "TERMINATED", ...]`
A list of instance states that will filter the instances returned with this request.


## `Marker = ::String`
The pagination token that indicates the next set of results to retrieve.




# Returns

`ListInstancesOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstances)
"""
@inline list_instances(aws::AWSConfig=default_aws_config(); args...) = list_instances(aws, args)

@inline list_instances(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "ListInstances", args)

@inline list_instances(args) = list_instances(default_aws_config(), args)


"""
    using AWSSDK.EMR.list_security_configurations
    list_security_configurations([::AWSConfig], arguments::Dict)
    list_security_configurations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "ListSecurityConfigurations", arguments::Dict)
    elasticmapreduce([::AWSConfig], "ListSecurityConfigurations", <keyword arguments>)

# ListSecurityConfigurations Operation

Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.

# Arguments

## `Marker = ::String`
The pagination token that indicates the set of results to retrieve.




# Returns

`ListSecurityConfigurationsOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListSecurityConfigurations)
"""
@inline list_security_configurations(aws::AWSConfig=default_aws_config(); args...) = list_security_configurations(aws, args)

@inline list_security_configurations(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "ListSecurityConfigurations", args)

@inline list_security_configurations(args) = list_security_configurations(default_aws_config(), args)


"""
    using AWSSDK.EMR.list_steps
    list_steps([::AWSConfig], arguments::Dict)
    list_steps([::AWSConfig]; ClusterId=, <keyword arguments>)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "ListSteps", arguments::Dict)
    elasticmapreduce([::AWSConfig], "ListSteps", ClusterId=, <keyword arguments>)

# ListSteps Operation

Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request.

# Arguments

## `ClusterId = ::String` -- *Required*
The identifier of the cluster for which to list the steps.


## `StepStates = ["PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED" or "INTERRUPTED", ...]`
The filter to limit the step list based on certain states.


## `StepIds = [::String, ...]`
The filter to limit the step list based on the identifier of the steps.


## `Marker = ::String`
The pagination token that indicates the next set of results to retrieve.




# Returns

`ListStepsOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListSteps)
"""
@inline list_steps(aws::AWSConfig=default_aws_config(); args...) = list_steps(aws, args)

@inline list_steps(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "ListSteps", args)

@inline list_steps(args) = list_steps(default_aws_config(), args)


"""
    using AWSSDK.EMR.modify_instance_fleet
    modify_instance_fleet([::AWSConfig], arguments::Dict)
    modify_instance_fleet([::AWSConfig]; ClusterId=, InstanceFleet=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "ModifyInstanceFleet", arguments::Dict)
    elasticmapreduce([::AWSConfig], "ModifyInstanceFleet", ClusterId=, InstanceFleet=)

# ModifyInstanceFleet Operation

Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID. The call either succeeds or fails atomically.

**Note**
> The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.

# Arguments

## `ClusterId = ::String` -- *Required*
The unique identifier of the cluster.


## `InstanceFleet = [ ... ]` -- *Required*
The unique identifier of the instance fleet.
```
 InstanceFleet = [
        "InstanceFleetId" => <required> ::String,
        "TargetOnDemandCapacity" =>  ::Int,
        "TargetSpotCapacity" =>  ::Int
    ]
```



# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ModifyInstanceFleet)
"""
@inline modify_instance_fleet(aws::AWSConfig=default_aws_config(); args...) = modify_instance_fleet(aws, args)

@inline modify_instance_fleet(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "ModifyInstanceFleet", args)

@inline modify_instance_fleet(args) = modify_instance_fleet(default_aws_config(), args)


"""
    using AWSSDK.EMR.modify_instance_groups
    modify_instance_groups([::AWSConfig], arguments::Dict)
    modify_instance_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "ModifyInstanceGroups", arguments::Dict)
    elasticmapreduce([::AWSConfig], "ModifyInstanceGroups", <keyword arguments>)

# ModifyInstanceGroups Operation

ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group. The input parameters include the new target instance count for the group and the instance group ID. The call will either succeed or fail atomically.

# Arguments

## `ClusterId = ::String`
The ID of the cluster to which the instance group belongs.


## `InstanceGroups = [[ ... ], ...]`
Instance groups to change.
```
 InstanceGroups = [[
        "InstanceGroupId" => <required> ::String,
        "InstanceCount" =>  ::Int,
        "EC2InstanceIdsToTerminate" =>  [::String, ...],
        "ShrinkPolicy" =>  [
            "DecommissionTimeout" =>  ::Int,
            "InstanceResizePolicy" =>  [
                "InstancesToTerminate" =>  [::String, ...],
                "InstancesToProtect" =>  [::String, ...],
                "InstanceTerminationTimeout" =>  ::Int
            ]
        ]
    ], ...]
```



# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ModifyInstanceGroups)
"""
@inline modify_instance_groups(aws::AWSConfig=default_aws_config(); args...) = modify_instance_groups(aws, args)

@inline modify_instance_groups(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "ModifyInstanceGroups", args)

@inline modify_instance_groups(args) = modify_instance_groups(default_aws_config(), args)


"""
    using AWSSDK.EMR.put_auto_scaling_policy
    put_auto_scaling_policy([::AWSConfig], arguments::Dict)
    put_auto_scaling_policy([::AWSConfig]; ClusterId=, InstanceGroupId=, AutoScalingPolicy=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "PutAutoScalingPolicy", arguments::Dict)
    elasticmapreduce([::AWSConfig], "PutAutoScalingPolicy", ClusterId=, InstanceGroupId=, AutoScalingPolicy=)

# PutAutoScalingPolicy Operation

Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.

# Arguments

## `ClusterId = ::String` -- *Required*
Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.


## `InstanceGroupId = ::String` -- *Required*
Specifies the ID of the instance group to which the automatic scaling policy is applied.


## `AutoScalingPolicy = [ ... ]` -- *Required*
Specifies the definition of the automatic scaling policy.
```
 AutoScalingPolicy = [
        "Constraints" => <required> [
            "MinCapacity" => <required> ::Int,
            "MaxCapacity" => <required> ::Int
        ],
        "Rules" => <required> [[
            "Name" => <required> ::String,
            "Description" =>  ::String,
            "Action" => <required> [
                "Market" =>  "ON_DEMAND" or "SPOT",
                "SimpleScalingPolicyConfiguration" => <required> [
                    "AdjustmentType" =>  "CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY" or "EXACT_CAPACITY",
                    "ScalingAdjustment" => <required> ::Int,
                    "CoolDown" =>  ::Int
                ]
            ],
            "Trigger" => <required> ["CloudWatchAlarmDefinition" => <required> [
                    "ComparisonOperator" => <required> "GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN" or "LESS_THAN_OR_EQUAL",
                    "EvaluationPeriods" =>  ::Int,
                    "MetricName" => <required> ::String,
                    "Namespace" =>  ::String,
                    "Period" => <required> ::Int,
                    "Statistic" =>  "SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM" or "MAXIMUM",
                    "Threshold" => <required> double,
                    "Unit" =>  "NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND" or "COUNT_PER_SECOND",
                    "Dimensions" =>  [[
                        "Key" =>  ::String,
                        "Value" =>  ::String
                    ], ...]
                ]]
        ], ...]
    ]
```



# Returns

`PutAutoScalingPolicyOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutAutoScalingPolicy)
"""
@inline put_auto_scaling_policy(aws::AWSConfig=default_aws_config(); args...) = put_auto_scaling_policy(aws, args)

@inline put_auto_scaling_policy(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "PutAutoScalingPolicy", args)

@inline put_auto_scaling_policy(args) = put_auto_scaling_policy(default_aws_config(), args)


"""
    using AWSSDK.EMR.remove_auto_scaling_policy
    remove_auto_scaling_policy([::AWSConfig], arguments::Dict)
    remove_auto_scaling_policy([::AWSConfig]; ClusterId=, InstanceGroupId=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "RemoveAutoScalingPolicy", arguments::Dict)
    elasticmapreduce([::AWSConfig], "RemoveAutoScalingPolicy", ClusterId=, InstanceGroupId=)

# RemoveAutoScalingPolicy Operation

Removes an automatic scaling policy from a specified instance group within an EMR cluster.

# Arguments

## `ClusterId = ::String` -- *Required*
Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.


## `InstanceGroupId = ::String` -- *Required*
Specifies the ID of the instance group to which the scaling policy is applied.




# Returns

`RemoveAutoScalingPolicyOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveAutoScalingPolicy)
"""
@inline remove_auto_scaling_policy(aws::AWSConfig=default_aws_config(); args...) = remove_auto_scaling_policy(aws, args)

@inline remove_auto_scaling_policy(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "RemoveAutoScalingPolicy", args)

@inline remove_auto_scaling_policy(args) = remove_auto_scaling_policy(default_aws_config(), args)


"""
    using AWSSDK.EMR.remove_tags
    remove_tags([::AWSConfig], arguments::Dict)
    remove_tags([::AWSConfig]; ResourceId=, TagKeys=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "RemoveTags", arguments::Dict)
    elasticmapreduce([::AWSConfig], "RemoveTags", ResourceId=, TagKeys=)

# RemoveTags Operation

Removes tags from an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see [Tag Clusters](http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).

The following example removes the stack tag with value Prod from a cluster:

# Arguments

## `ResourceId = ::String` -- *Required*
The Amazon EMR resource identifier from which tags will be removed. This value must be a cluster identifier.


## `TagKeys = [::String, ...]` -- *Required*
A list of tag keys to remove from a resource.




# Returns

`RemoveTagsOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveTags)
"""
@inline remove_tags(aws::AWSConfig=default_aws_config(); args...) = remove_tags(aws, args)

@inline remove_tags(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "RemoveTags", args)

@inline remove_tags(args) = remove_tags(default_aws_config(), args)


"""
    using AWSSDK.EMR.run_job_flow
    run_job_flow([::AWSConfig], arguments::Dict)
    run_job_flow([::AWSConfig]; Name=, Instances=, <keyword arguments>)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "RunJobFlow", arguments::Dict)
    elasticmapreduce([::AWSConfig], "RunJobFlow", Name=, Instances=, <keyword arguments>)

# RunJobFlow Operation

RunJobFlow creates and starts running a new cluster (job flow). The cluster runs the steps specified. After the steps complete, the cluster stops and the HDFS partition is lost. To prevent loss of data, configure the last step of the job flow to store results in Amazon S3. If the [JobFlowInstancesConfig](@ref) `KeepJobFlowAliveWhenNoSteps` parameter is set to `TRUE`, the cluster transitions to the WAITING state rather than shutting down after the steps have completed.

For additional protection, you can set the [JobFlowInstancesConfig](@ref) `TerminationProtected` parameter to `TRUE` to lock the cluster and prevent it from being terminated by API call, user intervention, or in the event of a job flow error.

A maximum of 256 steps are allowed in each job flow.

If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using the SSH shell to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see [Add More than 256 Steps to a Cluster](http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html) in the *Amazon EMR Management Guide*.

For long running clusters, we recommend that you periodically store your results.

**Note**
> The instance fleets configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain InstanceFleets parameters or InstanceGroups parameters, but not both.

# Arguments

## `Name = ::String` -- *Required*
The name of the job flow.


## `LogUri = ::String`
The location in Amazon S3 to write the log files of the job flow. If a value is not provided, logs are not created.


## `AdditionalInfo = ::String`
A JSON string for selecting additional features.


## `AmiVersion = ::String`
Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR releases 4.0 and later, `ReleaseLabel` is used. To specify a custom AMI, use `CustomAmiID`.


## `ReleaseLabel = ::String`
The Amazon EMR release label, which determines the version of open-source application packages installed on the cluster. Release labels are in the form `emr-x.x.x`, where x.x.x is an Amazon EMR release version, for example, `emr-5.14.0`. For more information about Amazon EMR release versions and included application versions and features, see [http://docs.aws.amazon.com/emr/latest/ReleaseGuide/](http://docs.aws.amazon.com/emr/latest/ReleaseGuide/). The release label applies only to Amazon EMR releases versions 4.x and later. Earlier versions use `AmiVersion`.


## `Instances = [ ... ]` -- *Required*
A specification of the number and type of Amazon EC2 instances.
```
 Instances = [
        "MasterInstanceType" =>  ::String,
        "SlaveInstanceType" =>  ::String,
        "InstanceCount" =>  ::Int,
        "InstanceGroups" =>  [[
            "Name" =>  ::String,
            "Market" =>  "ON_DEMAND" or "SPOT",
            "InstanceRole" => <required> "MASTER", "CORE" or "TASK",
            "BidPrice" =>  ::String,
            "InstanceType" => <required> ::String,
            "InstanceCount" => <required> ::Int,
            "Configurations" =>  [[
                "Classification" =>  ::String,
                "Configurations" =>  list,
                "Properties" =>  ::Dict{String,String}
            ], ...],
            "EbsConfiguration" =>  [
                "EbsBlockDeviceConfigs" =>  [[
                    "VolumeSpecification" => <required> [
                        "VolumeType" => <required> ::String,
                        "Iops" =>  ::Int,
                        "SizeInGB" => <required> ::Int
                    ],
                    "VolumesPerInstance" =>  ::Int
                ], ...],
                "EbsOptimized" =>  ::Bool
            ],
            "AutoScalingPolicy" =>  [
                "Constraints" => <required> [
                    "MinCapacity" => <required> ::Int,
                    "MaxCapacity" => <required> ::Int
                ],
                "Rules" => <required> [[
                    "Name" => <required> ::String,
                    "Description" =>  ::String,
                    "Action" => <required> [
                        "Market" =>  "ON_DEMAND" or "SPOT",
                        "SimpleScalingPolicyConfiguration" => <required> [
                            "AdjustmentType" =>  "CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY" or "EXACT_CAPACITY",
                            "ScalingAdjustment" => <required> ::Int,
                            "CoolDown" =>  ::Int
                        ]
                    ],
                    "Trigger" => <required> ["CloudWatchAlarmDefinition" => <required> [
                            "ComparisonOperator" => <required> "GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN" or "LESS_THAN_OR_EQUAL",
                            "EvaluationPeriods" =>  ::Int,
                            "MetricName" => <required> ::String,
                            "Namespace" =>  ::String,
                            "Period" => <required> ::Int,
                            "Statistic" =>  "SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM" or "MAXIMUM",
                            "Threshold" => <required> double,
                            "Unit" =>  "NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND" or "COUNT_PER_SECOND",
                            "Dimensions" =>  [[
                                "Key" =>  ::String,
                                "Value" =>  ::String
                            ], ...]
                        ]]
                ], ...]
            ]
        ], ...],
        "InstanceFleets" =>  [[
            "Name" =>  ::String,
            "InstanceFleetType" => <required> "MASTER", "CORE" or "TASK",
            "TargetOnDemandCapacity" =>  ::Int,
            "TargetSpotCapacity" =>  ::Int,
            "InstanceTypeConfigs" =>  [[
                "InstanceType" => <required> ::String,
                "WeightedCapacity" =>  ::Int,
                "BidPrice" =>  ::String,
                "BidPriceAsPercentageOfOnDemandPrice" =>  double,
                "EbsConfiguration" =>  [
                    "EbsBlockDeviceConfigs" =>  [[
                        "VolumeSpecification" => <required> [
                            "VolumeType" => <required> ::String,
                            "Iops" =>  ::Int,
                            "SizeInGB" => <required> ::Int
                        ],
                        "VolumesPerInstance" =>  ::Int
                    ], ...],
                    "EbsOptimized" =>  ::Bool
                ],
                "Configurations" =>  [[
                    "Classification" =>  ::String,
                    "Configurations" =>  list,
                    "Properties" =>  ::Dict{String,String}
                ], ...]
            ], ...],
            "LaunchSpecifications" =>  ["SpotSpecification" => <required> [
                    "TimeoutDurationMinutes" => <required> ::Int,
                    "TimeoutAction" => <required> "SWITCH_TO_ON_DEMAND" or "TERMINATE_CLUSTER",
                    "BlockDurationMinutes" =>  ::Int
                ]]
        ], ...],
        "Ec2KeyName" =>  ::String,
        "Placement" =>  [
            "AvailabilityZone" =>  ::String,
            "AvailabilityZones" =>  [::String, ...]
        ],
        "KeepJobFlowAliveWhenNoSteps" =>  ::Bool,
        "TerminationProtected" =>  ::Bool,
        "HadoopVersion" =>  ::String,
        "Ec2SubnetId" =>  ::String,
        "Ec2SubnetIds" =>  [::String, ...],
        "EmrManagedMasterSecurityGroup" =>  ::String,
        "EmrManagedSlaveSecurityGroup" =>  ::String,
        "ServiceAccessSecurityGroup" =>  ::String,
        "AdditionalMasterSecurityGroups" =>  [::String, ...],
        "AdditionalSlaveSecurityGroups" =>  [::String, ...]
    ]
```

## `Steps = [[ ... ], ...]`
A list of steps to run.
```
 Steps = [[
        "Name" => <required> ::String,
        "ActionOnFailure" =>  "TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT" or "CONTINUE",
        "HadoopJarStep" => <required> [
            "Properties" =>  [[
                "Key" =>  ::String,
                "Value" =>  ::String
            ], ...],
            "Jar" => <required> ::String,
            "MainClass" =>  ::String,
            "Args" =>  [::String, ...]
        ]
    ], ...]
```

## `BootstrapActions = [[ ... ], ...]`
A list of bootstrap actions to run before Hadoop starts on the cluster nodes.
```
 BootstrapActions = [[
        "Name" => <required> ::String,
        "ScriptBootstrapAction" => <required> [
            "Path" => <required> ::String,
            "Args" =>  [::String, ...]
        ]
    ], ...]
```

## `SupportedProducts = [::String, ...]`
 
**Note**
> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and later, use Applications.

A list of strings that indicates third-party software to use. For more information, see the [Amazon EMR Developer Guide](http://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf). Currently supported values are:

*   "mapr-m3" - launch the job flow using MapR M3 Edition.

*   "mapr-m5" - launch the job flow using MapR M5 Edition.


## `NewSupportedProducts = [[ ... ], ...]`
 
**Note**
> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and later, use Applications.

A list of strings that indicates third-party software to use with the job flow that accepts a user argument list. EMR accepts and forwards the argument list to the corresponding installation script as bootstrap action arguments. For more information, see "Launch a Job Flow on the MapR Distribution for Hadoop" in the [Amazon EMR Developer Guide](http://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf). Supported values are:

*   "mapr-m3" - launch the cluster using MapR M3 Edition.

*   "mapr-m5" - launch the cluster using MapR M5 Edition.

*   "mapr" with the user arguments specifying "--edition,m3" or "--edition,m5" - launch the job flow using MapR M3 or M5 Edition respectively.

*   "mapr-m7" - launch the cluster using MapR M7 Edition.

*   "hunk" - launch the cluster with the Hunk Big Data Analtics Platform.

*   "hue"- launch the cluster with Hue installed.

*   "spark" - launch the cluster with Apache Spark installed.

*   "ganglia" - launch the cluster with the Ganglia Monitoring System installed.
```
 NewSupportedProducts = [[
        "Name" =>  ::String,
        "Args" =>  [::String, ...]
    ], ...]
```

## `Applications = [[ ... ], ...]`
For Amazon EMR releases 4.0 and later. A list of applications for the cluster. Valid values are: "Hadoop", "Hive", "Mahout", "Pig", and "Spark." They are case insensitive.
```
 Applications = [[
        "Name" =>  ::String,
        "Version" =>  ::String,
        "Args" =>  [::String, ...],
        "AdditionalInfo" =>  ::Dict{String,String}
    ], ...]
```

## `Configurations = [[ ... ], ...]`
For Amazon EMR releases 4.0 and later. The list of configurations supplied for the EMR cluster you are creating.
```
 Configurations = [[
        "Classification" =>  ::String,
        "Configurations" =>  list,
        "Properties" =>  ::Dict{String,String}
    ], ...]
```

## `VisibleToAllUsers = ::Bool`
Whether the cluster is visible to all IAM users of the AWS account associated with the cluster. If this value is set to `true`, all IAM users of that AWS account can view and (if they have the proper policy permissions set) manage the cluster. If it is set to `false`, only the IAM user that created the cluster can view and manage it.


## `JobFlowRole = ::String`
Also called instance profile and EC2 role. An IAM role for an EMR cluster. The EC2 instances of the cluster assume this role. The default role is `EMR_EC2_DefaultRole`. In order to use the default role, you must have already created it using the CLI or console.


## `ServiceRole = ::String`
The IAM role that will be assumed by the Amazon EMR service to access AWS resources on your behalf.


## `Tags = [[ ... ], ...]`
A list of tags to associate with a cluster and propagate to Amazon EC2 instances.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `SecurityConfiguration = ::String`
The name of a security configuration to apply to the cluster.


## `AutoScalingRole = ::String`
An IAM role for automatic scaling policies. The default role is `EMR_AutoScaling_DefaultRole`. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group.


## `ScaleDownBehavior = "TERMINATE_AT_INSTANCE_HOUR" or "TERMINATE_AT_TASK_COMPLETION"`
Specifies the way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. `TERMINATE_AT_INSTANCE_HOUR` indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. `TERMINATE_AT_TASK_COMPLETION` indicates that Amazon EMR blacklists and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. `TERMINATE_AT_TASK_COMPLETION` available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.


## `CustomAmiId = ::String`
Available only in Amazon EMR version 5.7.0 and later. The ID of a custom Amazon EBS-backed Linux AMI. If specified, Amazon EMR uses this AMI when it launches cluster EC2 instances. For more information about custom AMIs in Amazon EMR, see [Using a Custom AMI](http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html) in the *Amazon EMR Management Guide*. If omitted, the cluster uses the base Linux AMI for the `ReleaseLabel` specified. For Amazon EMR versions 2.x and 3.x, use `AmiVersion` instead.

For information about creating a custom AMI, see [Creating an Amazon EBS-Backed Linux AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html) in the *Amazon Elastic Compute Cloud User Guide for Linux Instances*. For information about finding an AMI ID, see [Finding a Linux AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html).


## `EbsRootVolumeSize = ::Int`
The size, in GiB, of the EBS root device volume of the Linux AMI that is used for each EC2 instance. Available in Amazon EMR version 4.x and later.


## `RepoUpgradeOnBoot = "SECURITY" or "NONE"`
Applies only when `CustomAmiID` is used. Specifies which updates from the Amazon Linux AMI package repositories to apply automatically when the instance boots using the AMI. If omitted, the default is `SECURITY`, which indicates that only security updates are applied. If `NONE` is specified, no updates are applied, and all updates must be applied manually.


## `KerberosAttributes = [ ... ]`
Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see [Use Kerberos Authentication](http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html) in the *EMR Management Guide*.
```
 KerberosAttributes = [
        "Realm" => <required> ::String,
        "KdcAdminPassword" => <required> ::String,
        "CrossRealmTrustPrincipalPassword" =>  ::String,
        "ADDomainJoinUser" =>  ::String,
        "ADDomainJoinPassword" =>  ::String
    ]
```



# Returns

`RunJobFlowOutput`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RunJobFlow)
"""
@inline run_job_flow(aws::AWSConfig=default_aws_config(); args...) = run_job_flow(aws, args)

@inline run_job_flow(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "RunJobFlow", args)

@inline run_job_flow(args) = run_job_flow(default_aws_config(), args)


"""
    using AWSSDK.EMR.set_termination_protection
    set_termination_protection([::AWSConfig], arguments::Dict)
    set_termination_protection([::AWSConfig]; JobFlowIds=, TerminationProtected=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "SetTerminationProtection", arguments::Dict)
    elasticmapreduce([::AWSConfig], "SetTerminationProtection", JobFlowIds=, TerminationProtected=)

# SetTerminationProtection Operation

SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error. The cluster still terminates upon successful completion of the job flow. Calling `SetTerminationProtection` on a cluster is similar to calling the Amazon EC2 `DisableAPITermination` API on all EC2 instances in a cluster.

`SetTerminationProtection` is used to prevent accidental termination of a cluster and to ensure that in the event of an error, the instances persist so that you can recover any data stored in their ephemeral instance storage.

To terminate a cluster that has been locked by setting `SetTerminationProtection` to `true`, you must first unlock the job flow by a subsequent call to `SetTerminationProtection` in which you set the value to `false`.

For more information, see[Managing Cluster Termination](http://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html) in the *Amazon EMR Management Guide*.

# Arguments

## `JobFlowIds = [::String, ...]` -- *Required*
A list of strings that uniquely identify the clusters to protect. This identifier is returned by [RunJobFlow](@ref) and can also be obtained from [DescribeJobFlows](@ref) .


## `TerminationProtected = ::Bool` -- *Required*
A Boolean that indicates whether to protect the cluster and prevent the Amazon EC2 instances in the cluster from shutting down due to API calls, user intervention, or job-flow error.




# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SetTerminationProtection)
"""
@inline set_termination_protection(aws::AWSConfig=default_aws_config(); args...) = set_termination_protection(aws, args)

@inline set_termination_protection(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "SetTerminationProtection", args)

@inline set_termination_protection(args) = set_termination_protection(default_aws_config(), args)


"""
    using AWSSDK.EMR.set_visible_to_all_users
    set_visible_to_all_users([::AWSConfig], arguments::Dict)
    set_visible_to_all_users([::AWSConfig]; JobFlowIds=, VisibleToAllUsers=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "SetVisibleToAllUsers", arguments::Dict)
    elasticmapreduce([::AWSConfig], "SetVisibleToAllUsers", JobFlowIds=, VisibleToAllUsers=)

# SetVisibleToAllUsers Operation

Sets whether all AWS Identity and Access Management (IAM) users under your account can access the specified clusters (job flows). This action works on running clusters. You can also set the visibility of a cluster when you launch it using the `VisibleToAllUsers` parameter of [RunJobFlow](@ref). The SetVisibleToAllUsers action can be called only by an IAM user who created the cluster or the AWS account that owns the cluster.

# Arguments

## `JobFlowIds = [::String, ...]` -- *Required*
Identifiers of the job flows to receive the new visibility setting.


## `VisibleToAllUsers = ::Bool` -- *Required*
Whether the specified clusters are visible to all IAM users of the AWS account associated with the cluster. If this value is set to True, all IAM users of that AWS account can view and, if they have the proper IAM policy permissions set, manage the clusters. If it is set to False, only the IAM user that created a cluster can view and manage it.




# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SetVisibleToAllUsers)
"""
@inline set_visible_to_all_users(aws::AWSConfig=default_aws_config(); args...) = set_visible_to_all_users(aws, args)

@inline set_visible_to_all_users(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "SetVisibleToAllUsers", args)

@inline set_visible_to_all_users(args) = set_visible_to_all_users(default_aws_config(), args)


"""
    using AWSSDK.EMR.terminate_job_flows
    terminate_job_flows([::AWSConfig], arguments::Dict)
    terminate_job_flows([::AWSConfig]; JobFlowIds=)

    using AWSCore.Services.elasticmapreduce
    elasticmapreduce([::AWSConfig], "TerminateJobFlows", arguments::Dict)
    elasticmapreduce([::AWSConfig], "TerminateJobFlows", JobFlowIds=)

# TerminateJobFlows Operation

TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut down, any step not yet completed is canceled and the EC2 instances on which the cluster is running are stopped. Any log files not already saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was created.

The maximum number of clusters allowed is 10. The call to `TerminateJobFlows` is asynchronous. Depending on the configuration of the cluster, it may take up to 1-5 minutes for the cluster to completely terminate and release allocated resources, such as Amazon EC2 instances.

# Arguments

## `JobFlowIds = [::String, ...]` -- *Required*
A list of job flows to be shutdown.




# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/TerminateJobFlows)
"""
@inline terminate_job_flows(aws::AWSConfig=default_aws_config(); args...) = terminate_job_flows(aws, args)

@inline terminate_job_flows(aws::AWSConfig, args) = AWSCore.Services.elasticmapreduce(aws, "TerminateJobFlows", args)

@inline terminate_job_flows(args) = terminate_job_flows(default_aws_config(), args)




end # module EMR


#==============================================================================#
# End of file
#==============================================================================#
