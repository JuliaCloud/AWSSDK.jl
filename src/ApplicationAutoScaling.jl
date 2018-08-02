#==============================================================================#
# ApplicationAutoScaling.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/application-autoscaling-2016-02-06.normal.json
#==============================================================================#

__precompile__()

module ApplicationAutoScaling

using AWSCore


"""
    using AWSSDK.ApplicationAutoScaling.delete_scaling_policy
    delete_scaling_policy([::AWSConfig], arguments::Dict)
    delete_scaling_policy([::AWSConfig]; PolicyName=, ServiceNamespace=, ResourceId=, ScalableDimension=)

    using AWSCore.Services.application_autoscaling
    application_autoscaling([::AWSConfig], "DeleteScalingPolicy", arguments::Dict)
    application_autoscaling([::AWSConfig], "DeleteScalingPolicy", PolicyName=, ServiceNamespace=, ResourceId=, ScalableDimension=)

# DeleteScalingPolicy Operation

Deletes the specified Application Auto Scaling scaling policy.

Deleting a policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action.

To create a scaling policy or update an existing one, see [PutScalingPolicy](@ref).

# Arguments

## `PolicyName = ::String` -- *Required*
The name of the scaling policy.


## `ServiceNamespace = "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker" or "custom-resource"` -- *Required*
The namespace of the AWS service that provides the resource or `custom-resource` for a resource provided by your own application or service. For more information, see [AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the *Amazon Web Services General Reference*.


## `ResourceId = ::String` -- *Required*
The identifier of the resource associated with the scalable target. This string consists of the resource type and unique identifier.

*   ECS service - The resource type is `service` and the unique identifier is the cluster name and service name. Example: `service/default/sample-webapp`.

*   Spot fleet request - The resource type is `spot-fleet-request` and the unique identifier is the Spot fleet request ID. Example: `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.

*   EMR cluster - The resource type is `instancegroup` and the unique identifier is the cluster ID and instance group ID. Example: `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.

*   AppStream 2.0 fleet - The resource type is `fleet` and the unique identifier is the fleet name. Example: `fleet/sample-fleet`.

*   DynamoDB table - The resource type is `table` and the unique identifier is the resource ID. Example: `table/my-table`.

*   DynamoDB global secondary index - The resource type is `index` and the unique identifier is the resource ID. Example: `table/my-table/index/my-table-index`.

*   Aurora DB cluster - The resource type is `cluster` and the unique identifier is the cluster name. Example: `cluster:my-db-cluster`.

*   Amazon SageMaker endpoint variants - The resource type is `variant` and the unique identifier is the resource ID. Example: `endpoint/my-end-point/variant/KMeansClustering`.

*   Custom resources are not supported with a resource type. This parameter must specify the `OutputValue` from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.


## `ScalableDimension = "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount" or "custom-resource:ResourceType:Property"` -- *Required*
The scalable dimension. This string consists of the service namespace, resource type, and scaling property.

*   `ecs:service:DesiredCount` - The desired task count of an ECS service.

*   `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a Spot fleet request.

*   `elasticmapreduce:instancegroup:InstanceCount` - The instance count of an EMR Instance Group.

*   `appstream:fleet:DesiredCapacity` - The desired capacity of an AppStream 2.0 fleet.

*   `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB table.

*   `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB table.

*   `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB global secondary index.

*   `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB global secondary index.

*   `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.

*   `sagemaker:variant:DesiredInstanceCount` - The number of EC2 instances for an Amazon SageMaker model endpoint variant.

*   `custom-resource:ResourceType:Property` - The scalable dimension for a custom resource provided by your own application or service.




# Returns

`DeleteScalingPolicyResponse`

# Exceptions

`ValidationException`, `ObjectNotFoundException`, `ConcurrentUpdateException` or `InternalServiceException`.

# Example: To delete a scaling policy

This example deletes a scaling policy for the Amazon ECS service called web-app, which is running in the default cluster.

Input:
```
[
    "PolicyName" => "web-app-cpu-lt-25",
    "ResourceId" => "service/default/web-app",
    "ScalableDimension" => "ecs:service:DesiredCount",
    "ServiceNamespace" => "ecs"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScalingPolicy)
"""
@inline delete_scaling_policy(aws::AWSConfig=default_aws_config(); args...) = delete_scaling_policy(aws, args)

@inline delete_scaling_policy(aws::AWSConfig, args) = AWSCore.Services.application_autoscaling(aws, "DeleteScalingPolicy", args)

@inline delete_scaling_policy(args) = delete_scaling_policy(default_aws_config(), args)


"""
    using AWSSDK.ApplicationAutoScaling.delete_scheduled_action
    delete_scheduled_action([::AWSConfig], arguments::Dict)
    delete_scheduled_action([::AWSConfig]; ServiceNamespace=, ScheduledActionName=, ResourceId=, <keyword arguments>)

    using AWSCore.Services.application_autoscaling
    application_autoscaling([::AWSConfig], "DeleteScheduledAction", arguments::Dict)
    application_autoscaling([::AWSConfig], "DeleteScheduledAction", ServiceNamespace=, ScheduledActionName=, ResourceId=, <keyword arguments>)

# DeleteScheduledAction Operation

Deletes the specified Application Auto Scaling scheduled action.

# Arguments

## `ServiceNamespace = "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker" or "custom-resource"` -- *Required*
The namespace of the AWS service that provides the resource or `custom-resource` for a resource provided by your own application or service. For more information, see [AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the *Amazon Web Services General Reference*.


## `ScheduledActionName = ::String` -- *Required*
The name of the scheduled action.


## `ResourceId = ::String` -- *Required*
The identifier of the resource associated with the scheduled action. This string consists of the resource type and unique identifier.

*   ECS service - The resource type is `service` and the unique identifier is the cluster name and service name. Example: `service/default/sample-webapp`.

*   Spot fleet request - The resource type is `spot-fleet-request` and the unique identifier is the Spot fleet request ID. Example: `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.

*   EMR cluster - The resource type is `instancegroup` and the unique identifier is the cluster ID and instance group ID. Example: `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.

*   AppStream 2.0 fleet - The resource type is `fleet` and the unique identifier is the fleet name. Example: `fleet/sample-fleet`.

*   DynamoDB table - The resource type is `table` and the unique identifier is the resource ID. Example: `table/my-table`.

*   DynamoDB global secondary index - The resource type is `index` and the unique identifier is the resource ID. Example: `table/my-table/index/my-table-index`.

*   Aurora DB cluster - The resource type is `cluster` and the unique identifier is the cluster name. Example: `cluster:my-db-cluster`.

*   Amazon SageMaker endpoint variants - The resource type is `variant` and the unique identifier is the resource ID. Example: `endpoint/my-end-point/variant/KMeansClustering`.

*   Custom resources are not supported with a resource type. This parameter must specify the `OutputValue` from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.


## `ScalableDimension = "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount" or "custom-resource:ResourceType:Property"`
The scalable dimension. This string consists of the service namespace, resource type, and scaling property.

*   `ecs:service:DesiredCount` - The desired task count of an ECS service.

*   `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a Spot fleet request.

*   `elasticmapreduce:instancegroup:InstanceCount` - The instance count of an EMR Instance Group.

*   `appstream:fleet:DesiredCapacity` - The desired capacity of an AppStream 2.0 fleet.

*   `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB table.

*   `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB table.

*   `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB global secondary index.

*   `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB global secondary index.

*   `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.

*   `sagemaker:variant:DesiredInstanceCount` - The number of EC2 instances for an Amazon SageMaker model endpoint variant.

*   `custom-resource:ResourceType:Property` - The scalable dimension for a custom resource provided by your own application or service.




# Returns

`DeleteScheduledActionResponse`

# Exceptions

`ValidationException`, `ObjectNotFoundException`, `ConcurrentUpdateException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScheduledAction)
"""
@inline delete_scheduled_action(aws::AWSConfig=default_aws_config(); args...) = delete_scheduled_action(aws, args)

@inline delete_scheduled_action(aws::AWSConfig, args) = AWSCore.Services.application_autoscaling(aws, "DeleteScheduledAction", args)

@inline delete_scheduled_action(args) = delete_scheduled_action(default_aws_config(), args)


"""
    using AWSSDK.ApplicationAutoScaling.deregister_scalable_target
    deregister_scalable_target([::AWSConfig], arguments::Dict)
    deregister_scalable_target([::AWSConfig]; ServiceNamespace=, ResourceId=, ScalableDimension=)

    using AWSCore.Services.application_autoscaling
    application_autoscaling([::AWSConfig], "DeregisterScalableTarget", arguments::Dict)
    application_autoscaling([::AWSConfig], "DeregisterScalableTarget", ServiceNamespace=, ResourceId=, ScalableDimension=)

# DeregisterScalableTarget Operation

Deregisters a scalable target.

Deregistering a scalable target deletes the scaling policies that are associated with it.

To create a scalable target or update an existing one, see [RegisterScalableTarget](@ref).

# Arguments

## `ServiceNamespace = "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker" or "custom-resource"` -- *Required*
The namespace of the AWS service that provides the resource or `custom-resource` for a resource provided by your own application or service. For more information, see [AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the *Amazon Web Services General Reference*.


## `ResourceId = ::String` -- *Required*
The identifier of the resource associated with the scalable target. This string consists of the resource type and unique identifier.

*   ECS service - The resource type is `service` and the unique identifier is the cluster name and service name. Example: `service/default/sample-webapp`.

*   Spot fleet request - The resource type is `spot-fleet-request` and the unique identifier is the Spot fleet request ID. Example: `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.

*   EMR cluster - The resource type is `instancegroup` and the unique identifier is the cluster ID and instance group ID. Example: `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.

*   AppStream 2.0 fleet - The resource type is `fleet` and the unique identifier is the fleet name. Example: `fleet/sample-fleet`.

*   DynamoDB table - The resource type is `table` and the unique identifier is the resource ID. Example: `table/my-table`.

*   DynamoDB global secondary index - The resource type is `index` and the unique identifier is the resource ID. Example: `table/my-table/index/my-table-index`.

*   Aurora DB cluster - The resource type is `cluster` and the unique identifier is the cluster name. Example: `cluster:my-db-cluster`.

*   Amazon SageMaker endpoint variants - The resource type is `variant` and the unique identifier is the resource ID. Example: `endpoint/my-end-point/variant/KMeansClustering`.

*   Custom resources are not supported with a resource type. This parameter must specify the `OutputValue` from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.


## `ScalableDimension = "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount" or "custom-resource:ResourceType:Property"` -- *Required*
The scalable dimension associated with the scalable target. This string consists of the service namespace, resource type, and scaling property.

*   `ecs:service:DesiredCount` - The desired task count of an ECS service.

*   `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a Spot fleet request.

*   `elasticmapreduce:instancegroup:InstanceCount` - The instance count of an EMR Instance Group.

*   `appstream:fleet:DesiredCapacity` - The desired capacity of an AppStream 2.0 fleet.

*   `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB table.

*   `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB table.

*   `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB global secondary index.

*   `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB global secondary index.

*   `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.

*   `sagemaker:variant:DesiredInstanceCount` - The number of EC2 instances for an Amazon SageMaker model endpoint variant.

*   `custom-resource:ResourceType:Property` - The scalable dimension for a custom resource provided by your own application or service.




# Returns

`DeregisterScalableTargetResponse`

# Exceptions

`ValidationException`, `ObjectNotFoundException`, `ConcurrentUpdateException` or `InternalServiceException`.

# Example: To deregister a scalable target

This example deregisters a scalable target for an Amazon ECS service called web-app that is running in the default cluster.

Input:
```
[
    "ResourceId" => "service/default/web-app",
    "ScalableDimension" => "ecs:service:DesiredCount",
    "ServiceNamespace" => "ecs"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeregisterScalableTarget)
"""
@inline deregister_scalable_target(aws::AWSConfig=default_aws_config(); args...) = deregister_scalable_target(aws, args)

@inline deregister_scalable_target(aws::AWSConfig, args) = AWSCore.Services.application_autoscaling(aws, "DeregisterScalableTarget", args)

@inline deregister_scalable_target(args) = deregister_scalable_target(default_aws_config(), args)


"""
    using AWSSDK.ApplicationAutoScaling.describe_scalable_targets
    describe_scalable_targets([::AWSConfig], arguments::Dict)
    describe_scalable_targets([::AWSConfig]; ServiceNamespace=, <keyword arguments>)

    using AWSCore.Services.application_autoscaling
    application_autoscaling([::AWSConfig], "DescribeScalableTargets", arguments::Dict)
    application_autoscaling([::AWSConfig], "DescribeScalableTargets", ServiceNamespace=, <keyword arguments>)

# DescribeScalableTargets Operation

Gets information about the scalable targets in the specified namespace.

You can filter the results using the `ResourceIds` and `ScalableDimension` parameters.

To create a scalable target or update an existing one, see [RegisterScalableTarget](@ref). If you are no longer using a scalable target, you can deregister it using [DeregisterScalableTarget](@ref).

# Arguments

## `ServiceNamespace = "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker" or "custom-resource"` -- *Required*
The namespace of the AWS service that provides the resource or `custom-resource` for a resource provided by your own application or service. For more information, see [AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the *Amazon Web Services General Reference*.


## `ResourceIds = [::String, ...]`
The identifier of the resource associated with the scalable target. This string consists of the resource type and unique identifier. If you specify a scalable dimension, you must also specify a resource ID.

*   ECS service - The resource type is `service` and the unique identifier is the cluster name and service name. Example: `service/default/sample-webapp`.

*   Spot fleet request - The resource type is `spot-fleet-request` and the unique identifier is the Spot fleet request ID. Example: `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.

*   EMR cluster - The resource type is `instancegroup` and the unique identifier is the cluster ID and instance group ID. Example: `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.

*   AppStream 2.0 fleet - The resource type is `fleet` and the unique identifier is the fleet name. Example: `fleet/sample-fleet`.

*   DynamoDB table - The resource type is `table` and the unique identifier is the resource ID. Example: `table/my-table`.

*   DynamoDB global secondary index - The resource type is `index` and the unique identifier is the resource ID. Example: `table/my-table/index/my-table-index`.

*   Aurora DB cluster - The resource type is `cluster` and the unique identifier is the cluster name. Example: `cluster:my-db-cluster`.

*   Amazon SageMaker endpoint variants - The resource type is `variant` and the unique identifier is the resource ID. Example: `endpoint/my-end-point/variant/KMeansClustering`.

*   Custom resources are not supported with a resource type. This parameter must specify the `OutputValue` from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.


## `ScalableDimension = "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount" or "custom-resource:ResourceType:Property"`
The scalable dimension associated with the scalable target. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.

*   `ecs:service:DesiredCount` - The desired task count of an ECS service.

*   `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a Spot fleet request.

*   `elasticmapreduce:instancegroup:InstanceCount` - The instance count of an EMR Instance Group.

*   `appstream:fleet:DesiredCapacity` - The desired capacity of an AppStream 2.0 fleet.

*   `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB table.

*   `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB table.

*   `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB global secondary index.

*   `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB global secondary index.

*   `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.

*   `sagemaker:variant:DesiredInstanceCount` - The number of EC2 instances for an Amazon SageMaker model endpoint variant.

*   `custom-resource:ResourceType:Property` - The scalable dimension for a custom resource provided by your own application or service.


## `MaxResults = ::Int`
The maximum number of scalable targets. This value can be between 1 and 50. The default value is 50.

If this parameter is used, the operation returns up to `MaxResults` results at a time, along with a `NextToken` value. To get the next set of results, include the `NextToken` value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a `NextToken` value, if applicable.


## `NextToken = ::String`
The token for the next set of results.




# Returns

`DescribeScalableTargetsResponse`

# Exceptions

`ValidationException`, `InvalidNextTokenException`, `ConcurrentUpdateException` or `InternalServiceException`.

# Example: To describe scalable targets

This example describes the scalable targets for the ecs service namespace.

Input:
```
[
    "ServiceNamespace" => "ecs"
]
```

Output:
```
Dict(
    "ScalableTargets" => [
        Dict(
            "CreationTime" => "2016-05-06T11:21:46.199Z",
            "MaxCapacity" => 10,
            "MinCapacity" => 1,
            "ResourceId" => "service/default/web-app",
            "RoleARN" => "arn:aws:iam::012345678910:role/ApplicationAutoscalingECSRole",
            "ScalableDimension" => "ecs:service:DesiredCount",
            "ServiceNamespace" => "ecs"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalableTargets)
"""
@inline describe_scalable_targets(aws::AWSConfig=default_aws_config(); args...) = describe_scalable_targets(aws, args)

@inline describe_scalable_targets(aws::AWSConfig, args) = AWSCore.Services.application_autoscaling(aws, "DescribeScalableTargets", args)

@inline describe_scalable_targets(args) = describe_scalable_targets(default_aws_config(), args)


"""
    using AWSSDK.ApplicationAutoScaling.describe_scaling_activities
    describe_scaling_activities([::AWSConfig], arguments::Dict)
    describe_scaling_activities([::AWSConfig]; ServiceNamespace=, <keyword arguments>)

    using AWSCore.Services.application_autoscaling
    application_autoscaling([::AWSConfig], "DescribeScalingActivities", arguments::Dict)
    application_autoscaling([::AWSConfig], "DescribeScalingActivities", ServiceNamespace=, <keyword arguments>)

# DescribeScalingActivities Operation

Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks.

You can filter the results using the `ResourceId` and `ScalableDimension` parameters.

Scaling activities are triggered by CloudWatch alarms that are associated with scaling policies. To view the scaling policies for a service namespace, see [DescribeScalingPolicies](@ref). To create a scaling policy or update an existing one, see [PutScalingPolicy](@ref).

# Arguments

## `ServiceNamespace = "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker" or "custom-resource"` -- *Required*
The namespace of the AWS service that provides the resource or `custom-resource` for a resource provided by your own application or service. For more information, see [AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the *Amazon Web Services General Reference*.


## `ResourceId = ::String`
The identifier of the resource associated with the scaling activity. This string consists of the resource type and unique identifier. If you specify a scalable dimension, you must also specify a resource ID.

*   ECS service - The resource type is `service` and the unique identifier is the cluster name and service name. Example: `service/default/sample-webapp`.

*   Spot fleet request - The resource type is `spot-fleet-request` and the unique identifier is the Spot fleet request ID. Example: `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.

*   EMR cluster - The resource type is `instancegroup` and the unique identifier is the cluster ID and instance group ID. Example: `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.

*   AppStream 2.0 fleet - The resource type is `fleet` and the unique identifier is the fleet name. Example: `fleet/sample-fleet`.

*   DynamoDB table - The resource type is `table` and the unique identifier is the resource ID. Example: `table/my-table`.

*   DynamoDB global secondary index - The resource type is `index` and the unique identifier is the resource ID. Example: `table/my-table/index/my-table-index`.

*   Aurora DB cluster - The resource type is `cluster` and the unique identifier is the cluster name. Example: `cluster:my-db-cluster`.

*   Amazon SageMaker endpoint variants - The resource type is `variant` and the unique identifier is the resource ID. Example: `endpoint/my-end-point/variant/KMeansClustering`.

*   Custom resources are not supported with a resource type. This parameter must specify the `OutputValue` from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.


## `ScalableDimension = "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount" or "custom-resource:ResourceType:Property"`
The scalable dimension. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.

*   `ecs:service:DesiredCount` - The desired task count of an ECS service.

*   `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a Spot fleet request.

*   `elasticmapreduce:instancegroup:InstanceCount` - The instance count of an EMR Instance Group.

*   `appstream:fleet:DesiredCapacity` - The desired capacity of an AppStream 2.0 fleet.

*   `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB table.

*   `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB table.

*   `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB global secondary index.

*   `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB global secondary index.

*   `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.

*   `sagemaker:variant:DesiredInstanceCount` - The number of EC2 instances for an Amazon SageMaker model endpoint variant.

*   `custom-resource:ResourceType:Property` - The scalable dimension for a custom resource provided by your own application or service.


## `MaxResults = ::Int`
The maximum number of scalable targets. This value can be between 1 and 50. The default value is 50.

If this parameter is used, the operation returns up to `MaxResults` results at a time, along with a `NextToken` value. To get the next set of results, include the `NextToken` value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a `NextToken` value, if applicable.


## `NextToken = ::String`
The token for the next set of results.




# Returns

`DescribeScalingActivitiesResponse`

# Exceptions

`ValidationException`, `InvalidNextTokenException`, `ConcurrentUpdateException` or `InternalServiceException`.

# Example: To describe scaling activities for a scalable target

This example describes the scaling activities for an Amazon ECS service called web-app that is running in the default cluster.

Input:
```
[
    "ResourceId" => "service/default/web-app",
    "ScalableDimension" => "ecs:service:DesiredCount",
    "ServiceNamespace" => "ecs"
]
```

Output:
```
Dict(
    "ScalingActivities" => [
        Dict(
            "ActivityId" => "e6c5f7d1-dbbb-4a3f-89b2-51f33e766399",
            "Cause" => "monitor alarm web-app-cpu-lt-25 in state ALARM triggered policy web-app-cpu-lt-25",
            "Description" => "Setting desired count to 1.",
            "EndTime" => "2016-05-06T16:04:32.111Z",
            "ResourceId" => "service/default/web-app",
            "ScalableDimension" => "ecs:service:DesiredCount",
            "ServiceNamespace" => "ecs",
            "StartTime" => "2016-05-06T16:03:58.171Z",
            "StatusCode" => "Successful",
            "StatusMessage" => "Successfully set desired count to 1. Change successfully fulfilled by ecs."
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalingActivities)
"""
@inline describe_scaling_activities(aws::AWSConfig=default_aws_config(); args...) = describe_scaling_activities(aws, args)

@inline describe_scaling_activities(aws::AWSConfig, args) = AWSCore.Services.application_autoscaling(aws, "DescribeScalingActivities", args)

@inline describe_scaling_activities(args) = describe_scaling_activities(default_aws_config(), args)


"""
    using AWSSDK.ApplicationAutoScaling.describe_scaling_policies
    describe_scaling_policies([::AWSConfig], arguments::Dict)
    describe_scaling_policies([::AWSConfig]; ServiceNamespace=, <keyword arguments>)

    using AWSCore.Services.application_autoscaling
    application_autoscaling([::AWSConfig], "DescribeScalingPolicies", arguments::Dict)
    application_autoscaling([::AWSConfig], "DescribeScalingPolicies", ServiceNamespace=, <keyword arguments>)

# DescribeScalingPolicies Operation

Describes the scaling policies for the specified service namespace.

You can filter the results using the `ResourceId`, `ScalableDimension`, and `PolicyNames` parameters.

To create a scaling policy or update an existing one, see [PutScalingPolicy](@ref). If you are no longer using a scaling policy, you can delete it using [DeleteScalingPolicy](@ref).

# Arguments

## `PolicyNames = [::String, ...]`
The names of the scaling policies to describe.


## `ServiceNamespace = "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker" or "custom-resource"` -- *Required*
The namespace of the AWS service that provides the resource or `custom-resource` for a resource provided by your own application or service. For more information, see [AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the *Amazon Web Services General Reference*.


## `ResourceId = ::String`
The identifier of the resource associated with the scaling policy. This string consists of the resource type and unique identifier. If you specify a scalable dimension, you must also specify a resource ID.

*   ECS service - The resource type is `service` and the unique identifier is the cluster name and service name. Example: `service/default/sample-webapp`.

*   Spot fleet request - The resource type is `spot-fleet-request` and the unique identifier is the Spot fleet request ID. Example: `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.

*   EMR cluster - The resource type is `instancegroup` and the unique identifier is the cluster ID and instance group ID. Example: `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.

*   AppStream 2.0 fleet - The resource type is `fleet` and the unique identifier is the fleet name. Example: `fleet/sample-fleet`.

*   DynamoDB table - The resource type is `table` and the unique identifier is the resource ID. Example: `table/my-table`.

*   DynamoDB global secondary index - The resource type is `index` and the unique identifier is the resource ID. Example: `table/my-table/index/my-table-index`.

*   Aurora DB cluster - The resource type is `cluster` and the unique identifier is the cluster name. Example: `cluster:my-db-cluster`.

*   Amazon SageMaker endpoint variants - The resource type is `variant` and the unique identifier is the resource ID. Example: `endpoint/my-end-point/variant/KMeansClustering`.

*   Custom resources are not supported with a resource type. This parameter must specify the `OutputValue` from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.


## `ScalableDimension = "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount" or "custom-resource:ResourceType:Property"`
The scalable dimension. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.

*   `ecs:service:DesiredCount` - The desired task count of an ECS service.

*   `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a Spot fleet request.

*   `elasticmapreduce:instancegroup:InstanceCount` - The instance count of an EMR Instance Group.

*   `appstream:fleet:DesiredCapacity` - The desired capacity of an AppStream 2.0 fleet.

*   `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB table.

*   `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB table.

*   `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB global secondary index.

*   `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB global secondary index.

*   `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.

*   `sagemaker:variant:DesiredInstanceCount` - The number of EC2 instances for an Amazon SageMaker model endpoint variant.

*   `custom-resource:ResourceType:Property` - The scalable dimension for a custom resource provided by your own application or service.


## `MaxResults = ::Int`
The maximum number of scalable targets. This value can be between 1 and 50. The default value is 50.

If this parameter is used, the operation returns up to `MaxResults` results at a time, along with a `NextToken` value. To get the next set of results, include the `NextToken` value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a `NextToken` value, if applicable.


## `NextToken = ::String`
The token for the next set of results.




# Returns

`DescribeScalingPoliciesResponse`

# Exceptions

`ValidationException`, `FailedResourceAccessException`, `InvalidNextTokenException`, `ConcurrentUpdateException` or `InternalServiceException`.

# Example: To describe scaling policies

This example describes the scaling policies for the ecs service namespace.

Input:
```
[
    "ServiceNamespace" => "ecs"
]
```

Output:
```
Dict(
    "NextToken" => "",
    "ScalingPolicies" => [
        Dict(
            "Alarms" => [
                Dict(
                    "AlarmARN" => "arn:aws:cloudwatch:us-west-2:012345678910:alarm:web-app-cpu-gt-75",
                    "AlarmName" => "web-app-cpu-gt-75"
                )
            ],
            "CreationTime" => "2016-05-06T12:11:39.230Z",
            "PolicyARN" => "arn:aws:autoscaling:us-west-2:012345678910:scalingPolicy:6d8972f3-efc8-437c-92d1-6270f29a66e7:resource/ecs/service/default/web-app:policyName/web-app-cpu-gt-75",
            "PolicyName" => "web-app-cpu-gt-75",
            "PolicyType" => "StepScaling",
            "ResourceId" => "service/default/web-app",
            "ScalableDimension" => "ecs:service:DesiredCount",
            "ServiceNamespace" => "ecs",
            "StepScalingPolicyConfiguration" => Dict(
                "AdjustmentType" => "PercentChangeInCapacity",
                "Cooldown" => 60,
                "StepAdjustments" => [
                    Dict(
                        "MetricIntervalLowerBound" => 0,
                        "ScalingAdjustment" => 200
                    )
                ]
            )
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalingPolicies)
"""
@inline describe_scaling_policies(aws::AWSConfig=default_aws_config(); args...) = describe_scaling_policies(aws, args)

@inline describe_scaling_policies(aws::AWSConfig, args) = AWSCore.Services.application_autoscaling(aws, "DescribeScalingPolicies", args)

@inline describe_scaling_policies(args) = describe_scaling_policies(default_aws_config(), args)


"""
    using AWSSDK.ApplicationAutoScaling.describe_scheduled_actions
    describe_scheduled_actions([::AWSConfig], arguments::Dict)
    describe_scheduled_actions([::AWSConfig]; ServiceNamespace=, <keyword arguments>)

    using AWSCore.Services.application_autoscaling
    application_autoscaling([::AWSConfig], "DescribeScheduledActions", arguments::Dict)
    application_autoscaling([::AWSConfig], "DescribeScheduledActions", ServiceNamespace=, <keyword arguments>)

# DescribeScheduledActions Operation

Describes the scheduled actions for the specified service namespace.

You can filter the results using the `ResourceId`, `ScalableDimension`, and `ScheduledActionNames` parameters.

To create a scheduled action or update an existing one, see [PutScheduledAction](@ref). If you are no longer using a scheduled action, you can delete it using [DeleteScheduledAction](@ref).

# Arguments

## `ScheduledActionNames = [::String, ...]`
The names of the scheduled actions to describe.


## `ServiceNamespace = "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker" or "custom-resource"` -- *Required*
The namespace of the AWS service that provides the resource or `custom-resource` for a resource provided by your own application or service. For more information, see [AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the *Amazon Web Services General Reference*.


## `ResourceId = ::String`
The identifier of the resource associated with the scheduled action. This string consists of the resource type and unique identifier. If you specify a scalable dimension, you must also specify a resource ID.

*   ECS service - The resource type is `service` and the unique identifier is the cluster name and service name. Example: `service/default/sample-webapp`.

*   Spot fleet request - The resource type is `spot-fleet-request` and the unique identifier is the Spot fleet request ID. Example: `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.

*   EMR cluster - The resource type is `instancegroup` and the unique identifier is the cluster ID and instance group ID. Example: `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.

*   AppStream 2.0 fleet - The resource type is `fleet` and the unique identifier is the fleet name. Example: `fleet/sample-fleet`.

*   DynamoDB table - The resource type is `table` and the unique identifier is the resource ID. Example: `table/my-table`.

*   DynamoDB global secondary index - The resource type is `index` and the unique identifier is the resource ID. Example: `table/my-table/index/my-table-index`.

*   Aurora DB cluster - The resource type is `cluster` and the unique identifier is the cluster name. Example: `cluster:my-db-cluster`.

*   Amazon SageMaker endpoint variants - The resource type is `variant` and the unique identifier is the resource ID. Example: `endpoint/my-end-point/variant/KMeansClustering`.

*   Custom resources are not supported with a resource type. This parameter must specify the `OutputValue` from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.


## `ScalableDimension = "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount" or "custom-resource:ResourceType:Property"`
The scalable dimension. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.

*   `ecs:service:DesiredCount` - The desired task count of an ECS service.

*   `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a Spot fleet request.

*   `elasticmapreduce:instancegroup:InstanceCount` - The instance count of an EMR Instance Group.

*   `appstream:fleet:DesiredCapacity` - The desired capacity of an AppStream 2.0 fleet.

*   `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB table.

*   `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB table.

*   `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB global secondary index.

*   `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB global secondary index.

*   `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.

*   `sagemaker:variant:DesiredInstanceCount` - The number of EC2 instances for an Amazon SageMaker model endpoint variant.

*   `custom-resource:ResourceType:Property` - The scalable dimension for a custom resource provided by your own application or service.


## `MaxResults = ::Int`
The maximum number of scheduled action results. This value can be between 1 and 50. The default value is 50.

If this parameter is used, the operation returns up to `MaxResults` results at a time, along with a `NextToken` value. To get the next set of results, include the `NextToken` value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a `NextToken` value, if applicable.


## `NextToken = ::String`
The token for the next set of results.




# Returns

`DescribeScheduledActionsResponse`

# Exceptions

`ValidationException`, `InvalidNextTokenException`, `ConcurrentUpdateException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScheduledActions)
"""
@inline describe_scheduled_actions(aws::AWSConfig=default_aws_config(); args...) = describe_scheduled_actions(aws, args)

@inline describe_scheduled_actions(aws::AWSConfig, args) = AWSCore.Services.application_autoscaling(aws, "DescribeScheduledActions", args)

@inline describe_scheduled_actions(args) = describe_scheduled_actions(default_aws_config(), args)


"""
    using AWSSDK.ApplicationAutoScaling.put_scaling_policy
    put_scaling_policy([::AWSConfig], arguments::Dict)
    put_scaling_policy([::AWSConfig]; PolicyName=, ServiceNamespace=, ResourceId=, ScalableDimension=, <keyword arguments>)

    using AWSCore.Services.application_autoscaling
    application_autoscaling([::AWSConfig], "PutScalingPolicy", arguments::Dict)
    application_autoscaling([::AWSConfig], "PutScalingPolicy", PolicyName=, ServiceNamespace=, ResourceId=, ScalableDimension=, <keyword arguments>)

# PutScalingPolicy Operation

Creates or updates a policy for an Application Auto Scaling scalable target.

Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy until you register the scalable target using [RegisterScalableTarget](@ref).

To update a policy, specify its policy name and the parameters that you want to change. Any parameters that you don't specify are not changed by this update request.

You can view the scaling policies for a service namespace using [DescribeScalingPolicies](@ref). If you are no longer using a scaling policy, you can delete it using [DeleteScalingPolicy](@ref).

# Arguments

## `PolicyName = ::String` -- *Required*
The name of the scaling policy.


## `ServiceNamespace = "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker" or "custom-resource"` -- *Required*
The namespace of the AWS service that provides the resource or `custom-resource` for a resource provided by your own application or service. For more information, see [AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the *Amazon Web Services General Reference*.


## `ResourceId = ::String` -- *Required*
The identifier of the resource associated with the scaling policy. This string consists of the resource type and unique identifier.

*   ECS service - The resource type is `service` and the unique identifier is the cluster name and service name. Example: `service/default/sample-webapp`.

*   Spot fleet request - The resource type is `spot-fleet-request` and the unique identifier is the Spot fleet request ID. Example: `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.

*   EMR cluster - The resource type is `instancegroup` and the unique identifier is the cluster ID and instance group ID. Example: `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.

*   AppStream 2.0 fleet - The resource type is `fleet` and the unique identifier is the fleet name. Example: `fleet/sample-fleet`.

*   DynamoDB table - The resource type is `table` and the unique identifier is the resource ID. Example: `table/my-table`.

*   DynamoDB global secondary index - The resource type is `index` and the unique identifier is the resource ID. Example: `table/my-table/index/my-table-index`.

*   Aurora DB cluster - The resource type is `cluster` and the unique identifier is the cluster name. Example: `cluster:my-db-cluster`.

*   Amazon SageMaker endpoint variants - The resource type is `variant` and the unique identifier is the resource ID. Example: `endpoint/my-end-point/variant/KMeansClustering`.

*   Custom resources are not supported with a resource type. This parameter must specify the `OutputValue` from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.


## `ScalableDimension = "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount" or "custom-resource:ResourceType:Property"` -- *Required*
The scalable dimension. This string consists of the service namespace, resource type, and scaling property.

*   `ecs:service:DesiredCount` - The desired task count of an ECS service.

*   `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a Spot fleet request.

*   `elasticmapreduce:instancegroup:InstanceCount` - The instance count of an EMR Instance Group.

*   `appstream:fleet:DesiredCapacity` - The desired capacity of an AppStream 2.0 fleet.

*   `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB table.

*   `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB table.

*   `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB global secondary index.

*   `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB global secondary index.

*   `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.

*   `sagemaker:variant:DesiredInstanceCount` - The number of EC2 instances for an Amazon SageMaker model endpoint variant.

*   `custom-resource:ResourceType:Property` - The scalable dimension for a custom resource provided by your own application or service.


## `PolicyType = "StepScaling" or "TargetTrackingScaling"`
The policy type. This parameter is required if you are creating a policy.

For DynamoDB, only `TargetTrackingScaling` is supported. For Amazon ECS, Spot Fleet, and Amazon RDS, both `StepScaling` and `TargetTrackingScaling` are supported. For any other service, only `StepScaling` is supported.


## `StepScalingPolicyConfiguration = [ ... ]`
A step scaling policy.

This parameter is required if you are creating a policy and the policy type is `StepScaling`.
```
 StepScalingPolicyConfiguration = [
        "AdjustmentType" =>  "ChangeInCapacity", "PercentChangeInCapacity" or "ExactCapacity",
        "StepAdjustments" =>  [[
            "MetricIntervalLowerBound" =>  double,
            "MetricIntervalUpperBound" =>  double,
            "ScalingAdjustment" => <required> ::Int
        ], ...],
        "MinAdjustmentMagnitude" =>  ::Int,
        "Cooldown" =>  ::Int,
        "MetricAggregationType" =>  "Average", "Minimum" or "Maximum"
    ]
```

## `TargetTrackingScalingPolicyConfiguration = [ ... ]`
A target tracking policy.

This parameter is required if you are creating a policy and the policy type is `TargetTrackingScaling`.
```
 TargetTrackingScalingPolicyConfiguration = [
        "TargetValue" => <required> double,
        "PredefinedMetricSpecification" =>  [
            "PredefinedMetricType" => <required> "DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut", "SageMakerVariantInvocationsPerInstance", "ECSServiceAverageCPUUtilization" or "ECSServiceAverageMemoryUtilization",
            "ResourceLabel" =>  ::String
        ],
        "CustomizedMetricSpecification" =>  [
            "MetricName" => <required> ::String,
            "Namespace" => <required> ::String,
            "Dimensions" =>  [[
                "Name" => <required> ::String,
                "Value" => <required> ::String
            ], ...],
            "Statistic" => <required> "Average", "Minimum", "Maximum", "SampleCount" or "Sum",
            "Unit" =>  ::String
        ],
        "ScaleOutCooldown" =>  ::Int,
        "ScaleInCooldown" =>  ::Int,
        "DisableScaleIn" =>  ::Bool
    ]
```



# Returns

`PutScalingPolicyResponse`

# Exceptions

`ValidationException`, `LimitExceededException`, `ObjectNotFoundException`, `ConcurrentUpdateException`, `FailedResourceAccessException` or `InternalServiceException`.

# Example: To apply a scaling policy to an Amazon ECS service

This example applies a scaling policy to an Amazon ECS service called web-app in the default cluster. The policy increases the desired count of the service by 200%, with a cool down period of 60 seconds.

Input:
```
[
    "PolicyName" => "web-app-cpu-gt-75",
    "PolicyType" => "StepScaling",
    "ResourceId" => "service/default/web-app",
    "ScalableDimension" => "ecs:service:DesiredCount",
    "ServiceNamespace" => "ecs",
    "StepScalingPolicyConfiguration" => [
        "AdjustmentType" => "PercentChangeInCapacity",
        "Cooldown" => 60,
        "StepAdjustments" => [
            [
                "MetricIntervalLowerBound" => 0,
                "ScalingAdjustment" => 200
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "PolicyARN" => "arn:aws:autoscaling:us-west-2:012345678910:scalingPolicy:6d8972f3-efc8-437c-92d1-6270f29a66e7:resource/ecs/service/default/web-app:policyName/web-app-cpu-gt-75"
)
```

# Example: To apply a scaling policy to an Amazon EC2 Spot fleet

This example applies a scaling policy to an Amazon EC2 Spot fleet. The policy increases the target capacity of the spot fleet by 200%, with a cool down period of 180 seconds.",
   

Input:
```
[
    "PolicyName" => "fleet-cpu-gt-75",
    "PolicyType" => "StepScaling",
    "ResourceId" => "spot-fleet-request/sfr-45e69d8a-be48-4539-bbf3-3464e99c50c3",
    "ScalableDimension" => "ec2:spot-fleet-request:TargetCapacity",
    "ServiceNamespace" => "ec2",
    "StepScalingPolicyConfiguration" => [
        "AdjustmentType" => "PercentChangeInCapacity",
        "Cooldown" => 180,
        "StepAdjustments" => [
            [
                "MetricIntervalLowerBound" => 0,
                "ScalingAdjustment" => 200
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "PolicyARN" => "arn:aws:autoscaling:us-east-1:012345678910:scalingPolicy:89406401-0cb7-4130-b770-d97cca0e446b:resource/ec2/spot-fleet-request/sfr-45e69d8a-be48-4539-bbf3-3464e99c50c3:policyName/fleet-cpu-gt-75"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScalingPolicy)
"""
@inline put_scaling_policy(aws::AWSConfig=default_aws_config(); args...) = put_scaling_policy(aws, args)

@inline put_scaling_policy(aws::AWSConfig, args) = AWSCore.Services.application_autoscaling(aws, "PutScalingPolicy", args)

@inline put_scaling_policy(args) = put_scaling_policy(default_aws_config(), args)


"""
    using AWSSDK.ApplicationAutoScaling.put_scheduled_action
    put_scheduled_action([::AWSConfig], arguments::Dict)
    put_scheduled_action([::AWSConfig]; ServiceNamespace=, ScheduledActionName=, ResourceId=, <keyword arguments>)

    using AWSCore.Services.application_autoscaling
    application_autoscaling([::AWSConfig], "PutScheduledAction", arguments::Dict)
    application_autoscaling([::AWSConfig], "PutScheduledAction", ServiceNamespace=, ScheduledActionName=, ResourceId=, <keyword arguments>)

# PutScheduledAction Operation

Creates or updates a scheduled action for an Application Auto Scaling scalable target.

Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scheduled action applies to the scalable target identified by those three attributes. You cannot create a scheduled action until you register the scalable target using [RegisterScalableTarget](@ref).

To update an action, specify its name and the parameters that you want to change. If you don't specify start and end times, the old values are deleted. Any other parameters that you don't specify are not changed by this update request.

You can view the scheduled actions using [DescribeScheduledActions](@ref). If you are no longer using a scheduled action, you can delete it using [DeleteScheduledAction](@ref).

# Arguments

## `ServiceNamespace = "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker" or "custom-resource"` -- *Required*
The namespace of the AWS service that provides the resource or `custom-resource` for a resource provided by your own application or service. For more information, see [AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the *Amazon Web Services General Reference*.


## `Schedule = ::String`
The schedule for this action. The following formats are supported:

*   At expressions - `at(*yyyy*-*mm*-*dd*T*hh*:*mm*:*ss*)`

*   Rate expressions - `rate(*value* *unit*)`

*   Cron expressions - `cron(*fields*)`

At expressions are useful for one-time schedules. Specify the time, in UTC.

For rate expressions, *value* is a positive integer and *unit* is `minute` | `minutes` | `hour` | `hours` | `day` | `days`.

For more information about cron expressions, see [Cron Expressions](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions) in the *Amazon CloudWatch Events User Guide*.


## `ScheduledActionName = ::String` -- *Required*
The name of the scheduled action.


## `ResourceId = ::String` -- *Required*
The identifier of the resource associated with the scheduled action. This string consists of the resource type and unique identifier.

*   ECS service - The resource type is `service` and the unique identifier is the cluster name and service name. Example: `service/default/sample-webapp`.

*   Spot fleet request - The resource type is `spot-fleet-request` and the unique identifier is the Spot fleet request ID. Example: `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.

*   EMR cluster - The resource type is `instancegroup` and the unique identifier is the cluster ID and instance group ID. Example: `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.

*   AppStream 2.0 fleet - The resource type is `fleet` and the unique identifier is the fleet name. Example: `fleet/sample-fleet`.

*   DynamoDB table - The resource type is `table` and the unique identifier is the resource ID. Example: `table/my-table`.

*   DynamoDB global secondary index - The resource type is `index` and the unique identifier is the resource ID. Example: `table/my-table/index/my-table-index`.

*   Aurora DB cluster - The resource type is `cluster` and the unique identifier is the cluster name. Example: `cluster:my-db-cluster`.

*   Amazon SageMaker endpoint variants - The resource type is `variant` and the unique identifier is the resource ID. Example: `endpoint/my-end-point/variant/KMeansClustering`.

*   Custom resources are not supported with a resource type. This parameter must specify the `OutputValue` from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.


## `ScalableDimension = "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount" or "custom-resource:ResourceType:Property"`
The scalable dimension. This parameter is required if you are creating a scheduled action. This string consists of the service namespace, resource type, and scaling property.

*   `ecs:service:DesiredCount` - The desired task count of an ECS service.

*   `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a Spot fleet request.

*   `elasticmapreduce:instancegroup:InstanceCount` - The instance count of an EMR Instance Group.

*   `appstream:fleet:DesiredCapacity` - The desired capacity of an AppStream 2.0 fleet.

*   `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB table.

*   `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB table.

*   `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB global secondary index.

*   `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB global secondary index.

*   `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.

*   `sagemaker:variant:DesiredInstanceCount` - The number of EC2 instances for an Amazon SageMaker model endpoint variant.

*   `custom-resource:ResourceType:Property` - The scalable dimension for a custom resource provided by your own application or service.


## `StartTime = timestamp`
The date and time for the scheduled action to start.


## `EndTime = timestamp`
The date and time for the scheduled action to end.


## `ScalableTargetAction = [ ... ]`
The new minimum and maximum capacity. You can set both values or just one. During the scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling scales in to the maximum capacity.
```
 ScalableTargetAction = [
        "MinCapacity" =>  ::Int,
        "MaxCapacity" =>  ::Int
    ]
```



# Returns

`PutScheduledActionResponse`

# Exceptions

`ValidationException`, `LimitExceededException`, `ObjectNotFoundException`, `ConcurrentUpdateException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScheduledAction)
"""
@inline put_scheduled_action(aws::AWSConfig=default_aws_config(); args...) = put_scheduled_action(aws, args)

@inline put_scheduled_action(aws::AWSConfig, args) = AWSCore.Services.application_autoscaling(aws, "PutScheduledAction", args)

@inline put_scheduled_action(args) = put_scheduled_action(default_aws_config(), args)


"""
    using AWSSDK.ApplicationAutoScaling.register_scalable_target
    register_scalable_target([::AWSConfig], arguments::Dict)
    register_scalable_target([::AWSConfig]; ServiceNamespace=, ResourceId=, ScalableDimension=, <keyword arguments>)

    using AWSCore.Services.application_autoscaling
    application_autoscaling([::AWSConfig], "RegisterScalableTarget", arguments::Dict)
    application_autoscaling([::AWSConfig], "RegisterScalableTarget", ServiceNamespace=, ResourceId=, ScalableDimension=, <keyword arguments>)

# RegisterScalableTarget Operation

Registers or updates a scalable target. A scalable target is a resource that Application Auto Scaling can scale out or scale in. After you have registered a scalable target, you can use this operation to update the minimum and maximum values for its scalable dimension.

After you register a scalable target, you can create and apply scaling policies using [PutScalingPolicy](@ref). You can view the scaling policies for a service namespace using [DescribeScalableTargets](@ref). If you no longer need a scalable target, you can deregister it using [DeregisterScalableTarget](@ref).

# Arguments

## `ServiceNamespace = "ecs", "elasticmapreduce", "ec2", "appstream", "dynamodb", "rds", "sagemaker" or "custom-resource"` -- *Required*
The namespace of the AWS service that provides the resource or `custom-resource` for a resource provided by your own application or service. For more information, see [AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the *Amazon Web Services General Reference*.


## `ResourceId = ::String` -- *Required*
The identifier of the resource associated with the scalable target. This string consists of the resource type and unique identifier.

*   ECS service - The resource type is `service` and the unique identifier is the cluster name and service name. Example: `service/default/sample-webapp`.

*   Spot fleet request - The resource type is `spot-fleet-request` and the unique identifier is the Spot fleet request ID. Example: `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.

*   EMR cluster - The resource type is `instancegroup` and the unique identifier is the cluster ID and instance group ID. Example: `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.

*   AppStream 2.0 fleet - The resource type is `fleet` and the unique identifier is the fleet name. Example: `fleet/sample-fleet`.

*   DynamoDB table - The resource type is `table` and the unique identifier is the resource ID. Example: `table/my-table`.

*   DynamoDB global secondary index - The resource type is `index` and the unique identifier is the resource ID. Example: `table/my-table/index/my-table-index`.

*   Aurora DB cluster - The resource type is `cluster` and the unique identifier is the cluster name. Example: `cluster:my-db-cluster`.

*   Amazon SageMaker endpoint variants - The resource type is `variant` and the unique identifier is the resource ID. Example: `endpoint/my-end-point/variant/KMeansClustering`.

*   Custom resources are not supported with a resource type. This parameter must specify the `OutputValue` from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.


## `ScalableDimension = "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "elasticmapreduce:instancegroup:InstanceCount", "appstream:fleet:DesiredCapacity", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits", "rds:cluster:ReadReplicaCount", "sagemaker:variant:DesiredInstanceCount" or "custom-resource:ResourceType:Property"` -- *Required*
The scalable dimension associated with the scalable target. This string consists of the service namespace, resource type, and scaling property.

*   `ecs:service:DesiredCount` - The desired task count of an ECS service.

*   `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a Spot fleet request.

*   `elasticmapreduce:instancegroup:InstanceCount` - The instance count of an EMR Instance Group.

*   `appstream:fleet:DesiredCapacity` - The desired capacity of an AppStream 2.0 fleet.

*   `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB table.

*   `dynamodb:table:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB table.

*   `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity for a DynamoDB global secondary index.

*   `dynamodb:index:WriteCapacityUnits` - The provisioned write capacity for a DynamoDB global secondary index.

*   `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.

*   `sagemaker:variant:DesiredInstanceCount` - The number of EC2 instances for an Amazon SageMaker model endpoint variant.

*   `custom-resource:ResourceType:Property` - The scalable dimension for a custom resource provided by your own application or service.


## `MinCapacity = ::Int`
The minimum value to scale to in response to a scale in event. This parameter is required if you are registering a scalable target.


## `MaxCapacity = ::Int`
The maximum value to scale to in response to a scale out event. This parameter is required if you are registering a scalable target.


## `RoleARN = ::String`
Application Auto Scaling creates a service-linked role that grants it permissions to modify the scalable target on your behalf. For more information, see [Service-Linked Roles for Application Auto Scaling](http://docs.aws.amazon.com/autoscaling/application/userguide/application-autoscaling-service-linked-roles.html).

For resources that are not supported using a service-linked role, this parameter is required and must specify the ARN of an IAM role that allows Application Auto Scaling to modify the scalable target on your behalf.




# Returns

`RegisterScalableTargetResponse`

# Exceptions

`ValidationException`, `LimitExceededException`, `ConcurrentUpdateException` or `InternalServiceException`.

# Example: To register an ECS service as a scalable target

This example registers a scalable target from an Amazon ECS service called web-app that is running on the default cluster, with a minimum desired count of 1 task and a maximum desired count of 10 tasks.

Input:
```
[
    "MaxCapacity" => 10,
    "MinCapacity" => 1,
    "ResourceId" => "service/default/web-app",
    "RoleARN" => "arn:aws:iam::012345678910:role/ApplicationAutoscalingECSRole",
    "ScalableDimension" => "ecs:service:DesiredCount",
    "ServiceNamespace" => "ecs"
]
```

# Example: To register an EC2 Spot fleet as a scalable target

This example registers a scalable target from an Amazon EC2 Spot fleet with a minimum target capacity of 1 and a maximum of 10.

Input:
```
[
    "MaxCapacity" => 10,
    "MinCapacity" => 1,
    "ResourceId" => "spot-fleet-request/sfr-45e69d8a-be48-4539-bbf3-3464e99c50c3",
    "RoleARN" => "arn:aws:iam::012345678910:role/ApplicationAutoscalingSpotRole",
    "ScalableDimension" => "ec2:spot-fleet-request:TargetCapacity",
    "ServiceNamespace" => "ec2"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/RegisterScalableTarget)
"""
@inline register_scalable_target(aws::AWSConfig=default_aws_config(); args...) = register_scalable_target(aws, args)

@inline register_scalable_target(aws::AWSConfig, args) = AWSCore.Services.application_autoscaling(aws, "RegisterScalableTarget", args)

@inline register_scalable_target(args) = register_scalable_target(default_aws_config(), args)




end # module ApplicationAutoScaling


#==============================================================================#
# End of file
#==============================================================================#
