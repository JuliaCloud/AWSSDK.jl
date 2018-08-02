#==============================================================================#
# ECS.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/ecs-2014-11-13.normal.json
#==============================================================================#

__precompile__()

module ECS

using AWSCore


"""
    using AWSSDK.ECS.create_cluster
    create_cluster([::AWSConfig], arguments::Dict)
    create_cluster([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "CreateCluster", arguments::Dict)
    ecs([::AWSConfig], "CreateCluster", <keyword arguments>)

# CreateCluster Operation

Creates a new Amazon ECS cluster. By default, your account receives a `default` cluster when you launch your first container instance. However, you can create your own cluster with a unique name with the `CreateCluster` action.

**Note**
> When you call the [CreateCluster](@ref) API operation, Amazon ECS attempts to create the service-linked role for your account so that required resources in other AWS services can be managed on your behalf. However, if the IAM user that makes the call does not have permissions to create the service-linked role, it is not created. For more information, see [Using Service-Linked Roles for Amazon ECS](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html) in the *Amazon Elastic Container Service Developer Guide*.

# Arguments

## `clusterName = ::String`
The name of your cluster. If you do not specify a name for your cluster, you create a cluster named `default`. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.




# Returns

`CreateClusterResponse`

# Exceptions

`ServerException`, `ClientException` or `InvalidParameterException`.

# Example: To create a new cluster

This example creates a cluster in your default region.

Input:
```
[
    "clusterName" => "my_cluster"
]
```

Output:
```
Dict(
    "cluster" => Dict(
        "activeServicesCount" => 0,
        "clusterArn" => "arn:aws:ecs:us-east-1:012345678910:cluster/my_cluster",
        "clusterName" => "my_cluster",
        "pendingTasksCount" => 0,
        "registeredContainerInstancesCount" => 0,
        "runningTasksCount" => 0,
        "status" => "ACTIVE"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateCluster)
"""
@inline create_cluster(aws::AWSConfig=default_aws_config(); args...) = create_cluster(aws, args)

@inline create_cluster(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "CreateCluster", args)

@inline create_cluster(args) = create_cluster(default_aws_config(), args)


"""
    using AWSSDK.ECS.create_service
    create_service([::AWSConfig], arguments::Dict)
    create_service([::AWSConfig]; serviceName=, taskDefinition=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "CreateService", arguments::Dict)
    ecs([::AWSConfig], "CreateService", serviceName=, taskDefinition=, <keyword arguments>)

# CreateService Operation

Runs and maintains a desired number of tasks from a specified task definition. If the number of tasks running in a service drops below `desiredCount`, Amazon ECS spawns another copy of the task in the specified cluster. To update an existing service, see [UpdateService](@ref).

In addition to maintaining the desired count of tasks in your service, you can optionally run your service behind a load balancer. The load balancer distributes traffic across the tasks that are associated with the service. For more information, see [Service Load Balancing](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html) in the *Amazon Elastic Container Service Developer Guide*.

You can optionally specify a deployment configuration for your service. During a deployment, the service scheduler uses the `minimumHealthyPercent` and `maximumPercent` parameters to determine the deployment strategy. The deployment is triggered by changing the task definition or the desired count of a service with an [UpdateService](@ref) operation.

The `minimumHealthyPercent` represents a lower limit on the number of your service's tasks that must remain in the `RUNNING` state during a deployment, as a percentage of the `desiredCount` (rounded up to the nearest integer). This parameter enables you to deploy without using additional cluster capacity. For example, if your service has a `desiredCount` of four tasks and a `minimumHealthyPercent` of 50%, the scheduler can stop two existing tasks to free up cluster capacity before starting two new tasks. Tasks for services that *do not* use a load balancer are considered healthy if they are in the `RUNNING` state. Tasks for services that *do* use a load balancer are considered healthy if they are in the `RUNNING` state and the container instance they are hosted on is reported as healthy by the load balancer. The default value for a replica service for `minimumHealthyPercent` is 50% in the console and 100% for the AWS CLI, the AWS SDKs, and the APIs. The default value for a daemon service for `minimumHealthyPercent` is 0% for the AWS CLI, the AWS SDKs, and the APIs and 50% for the console.

The `maximumPercent` parameter represents an upper limit on the number of your service's tasks that are allowed in the `RUNNING` or `PENDING` state during a deployment, as a percentage of the `desiredCount` (rounded down to the nearest integer). This parameter enables you to define the deployment batch size. For example, if your replica service has a `desiredCount` of four tasks and a `maximumPercent` value of 200%, the scheduler can start four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available). The default value for a replica service for `maximumPercent` is 200%. If you are using a daemon service type, the `maximumPercent` should remain at 100%, which is the default value.

When the service scheduler launches new tasks, it determines task placement in your cluster using the following logic:

*   Determine which of the container instances in your cluster can support your service's task definition (for example, they have the required CPU, memory, ports, and container instance attributes).

*   By default, the service scheduler attempts to balance tasks across Availability Zones in this manner (although you can choose a different placement strategy) with the `placementStrategy` parameter):

    *   Sort the valid container instances, giving priority to instances that have the fewest number of running tasks for this service in their respective Availability Zone. For example, if zone A has one running service task and zones B and C each have zero, valid container instances in either zone B or C are considered optimal for placement.

    *   Place the new service task on a valid container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the fewest number of running tasks for this service.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster on which to run your service. If you do not specify a cluster, the default cluster is assumed.


## `serviceName = ::String` -- *Required*
The name of your service. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a Region or across multiple Regions.


## `taskDefinition = ::String` -- *Required*
The `family` and `revision` (`family:revision`) or full ARN of the task definition to run in your service. If a `revision` is not specified, the latest `ACTIVE` revision is used.


## `loadBalancers = [[ ... ], ...]`
A load balancer object representing the load balancer to use with your service. Currently, you are limited to one load balancer or target group per service. After you create a service, the load balancer name or target group ARN, container name, and container port specified in the service definition are immutable.

For Classic Load Balancers, this object must contain the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer. When a task from this service is placed on a container instance, the container instance is registered with the load balancer specified here.

For Application Load Balancers and Network Load Balancers, this object must contain the load balancer target group ARN, the container name (as it appears in a container definition), and the container port to access from the load balancer. When a task from this service is placed on a container instance, the container instance and port combination is registered as a target in the target group specified here.

Services with tasks that use the `awsvpc` network mode (for example, those with the Fargate launch type) only support Application Load Balancers and Network Load Balancers; Classic Load Balancers are not supported. Also, when you create any target groups for these services, you must choose `ip` as the target type, not `instance`, because tasks that use the `awsvpc` network mode are associated with an elastic network interface, not an Amazon EC2 instance.
```
 loadBalancers = [[
        "targetGroupArn" =>  ::String,
        "loadBalancerName" =>  ::String,
        "containerName" =>  ::String,
        "containerPort" =>  ::Int
    ], ...]
```

## `serviceRegistries = [[ ... ], ...]`
The details of the service discovery registries to assign to this service. For more information, see [Service Discovery](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html).

**Note**
> Service discovery is supported for Fargate tasks if using platform version v1.1.0 or later. For more information, see [AWS Fargate Platform Versions](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
```
 serviceRegistries = [[
        "registryArn" =>  ::String,
        "port" =>  ::Int,
        "containerName" =>  ::String,
        "containerPort" =>  ::Int
    ], ...]
```

## `desiredCount = ::Int`
The number of instantiations of the specified task definition to place and keep running on your cluster.


## `clientToken = ::String`
Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Up to 32 ASCII characters are allowed.


## `launchType = "EC2" or "FARGATE"`
The launch type on which to run your service.


## `platformVersion = ::String`
The platform version on which to run your service. If one is not specified, the latest version is used by default.


## `role = ::String`
The name or full Amazon Resource Name (ARN) of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is only permitted if you are using a load balancer with your service and your task definition does not use the `awsvpc` network mode. If you specify the `role` parameter, you must also specify a load balancer object with the `loadBalancers` parameter.

**Important**
> If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here. The service-linked role is required if your task definition uses the `awsvpc` network mode, in which case you should not specify a role here. For more information, see [Using Service-Linked Roles for Amazon ECS](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html) in the *Amazon Elastic Container Service Developer Guide*.

If your specified role has a path other than `/`, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path. For example, if a role with the name `bar` has a path of `/foo/` then you would specify `/foo/bar` as the role name. For more information, see [Friendly Names and Paths](http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names) in the *IAM User Guide*.


## `deploymentConfiguration = [ ... ]`
Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
```
 deploymentConfiguration = [
        "maximumPercent" =>  ::Int,
        "minimumHealthyPercent" =>  ::Int
    ]
```

## `placementConstraints = [[ ... ], ...]`
An array of placement constraint objects to use for tasks in your service. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at run time).
```
 placementConstraints = [[
        "type" =>  "distinctInstance" or "memberOf",
        "expression" =>  ::String
    ], ...]
```

## `placementStrategy = [[ ... ], ...]`
The placement strategy objects to use for tasks in your service. You can specify a maximum of five strategy rules per service.
```
 placementStrategy = [[
        "type" =>  "random", "spread" or "binpack",
        "field" =>  ::String
    ], ...]
```

## `networkConfiguration = ["awsvpcConfiguration" =>  [ ... ]]`
The network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. For more information, see [Task Networking](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html) in the *Amazon Elastic Container Service Developer Guide*.
```
 networkConfiguration = ["awsvpcConfiguration" =>  [
            "subnets" => <required> [::String, ...],
            "securityGroups" =>  [::String, ...],
            "assignPublicIp" =>  "ENABLED" or "DISABLED"
        ]]
```

## `healthCheckGracePeriodSeconds = ::Int`
The period of time, in seconds, that the Amazon ECS service scheduler should ignore unhealthy Elastic Load Balancing target health checks after a task has first started. This is only valid if your service is configured to use a load balancer. If your service's tasks take a while to start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of up to 7,200 seconds during which the ECS service scheduler ignores health check status. This grace period can prevent the ECS service scheduler from marking tasks as unhealthy and stopping them before they have time to come up.


## `schedulingStrategy = "REPLICA" or "DAEMON"`
The scheduling strategy to use for the service. For more information, see [Services](http://docs.aws.amazon.com/AmazonECS/latest/developerguideecs_services.html).

There are two service scheduler strategies available:

*   `REPLICA`-The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions.

*   `DAEMON`-The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. When using this strategy, there is no need to specify a desired number of tasks, a task placement strategy, or use Service Auto Scaling policies.

    **Note**
    > Fargate tasks do not support the `DAEMON` scheduling strategy.




# Returns

`CreateServiceResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException`, `ClusterNotFoundException`, `UnsupportedFeatureException`, `PlatformUnknownException`, `PlatformTaskDefinitionIncompatibilityException` or `AccessDeniedException`.

# Example: To create a new service

This example creates a service in your default region called ``ecs-simple-service``. The service uses the ``hello_world`` task definition and it maintains 10 copies of that task.

Input:
```
[
    "desiredCount" => 10,
    "serviceName" => "ecs-simple-service",
    "taskDefinition" => "hello_world"
]
```

Output:
```
Dict(
    "service" => Dict(
        "clusterArn" => "arn:aws:ecs:us-east-1:012345678910:cluster/default",
        "createdAt" => "2016-08-29T16:13:47.298Z",
        "deploymentConfiguration" => Dict(
            "maximumPercent" => 200,
            "minimumHealthyPercent" => 100
        ),
        "deployments" => [
            Dict(
                "createdAt" => "2016-08-29T16:13:47.298Z",
                "desiredCount" => 10,
                "id" => "ecs-svc/9223370564342348388",
                "pendingCount" => 0,
                "runningCount" => 0,
                "status" => "PRIMARY",
                "taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6",
                "updatedAt" => "2016-08-29T16:13:47.298Z"
            ),
            Dict(
                "createdAt" => "2016-08-29T15:52:44.481Z",
                "desiredCount" => 0,
                "id" => "ecs-svc/9223370564343611322",
                "pendingCount" => 0,
                "runningCount" => 0,
                "status" => "ACTIVE",
                "taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6",
                "updatedAt" => "2016-08-29T16:11:38.941Z"
            )
        ],
        "desiredCount" => 10,
        "events" => [

        ],
        "loadBalancers" => [

        ],
        "pendingCount" => 0,
        "runningCount" => 0,
        "serviceArn" => "arn:aws:ecs:us-east-1:012345678910:service/ecs-simple-service",
        "serviceName" => "ecs-simple-service",
        "status" => "ACTIVE",
        "taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6"
    )
)
```

# Example: To create a new service behind a load balancer

This example creates a service in your default region called ``ecs-simple-service-elb``. The service uses the ``ecs-demo`` task definition and it maintains 10 copies of that task. You must reference an existing load balancer in the same region by its name.

Input:
```
[
    "desiredCount" => 10,
    "loadBalancers" => [
        [
            "containerName" => "simple-app",
            "containerPort" => 80,
            "loadBalancerName" => "EC2Contai-EcsElast-15DCDAURT3ZO2"
        ]
    ],
    "role" => "ecsServiceRole",
    "serviceName" => "ecs-simple-service-elb",
    "taskDefinition" => "console-sample-app-static"
]
```

Output:
```
Dict(
    "service" => Dict(
        "clusterArn" => "arn:aws:ecs:us-east-1:012345678910:cluster/default",
        "createdAt" => "2016-08-29T16:02:54.884Z",
        "deploymentConfiguration" => Dict(
            "maximumPercent" => 200,
            "minimumHealthyPercent" => 100
        ),
        "deployments" => [
            Dict(
                "createdAt" => "2016-08-29T16:02:54.884Z",
                "desiredCount" => 10,
                "id" => "ecs-svc/9223370564343000923",
                "pendingCount" => 0,
                "runningCount" => 0,
                "status" => "PRIMARY",
                "taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/console-sample-app-static:6",
                "updatedAt" => "2016-08-29T16:02:54.884Z"
            )
        ],
        "desiredCount" => 10,
        "events" => [

        ],
        "loadBalancers" => [
            Dict(
                "containerName" => "simple-app",
                "containerPort" => 80,
                "loadBalancerName" => "EC2Contai-EcsElast-15DCDAURT3ZO2"
            )
        ],
        "pendingCount" => 0,
        "roleArn" => "arn:aws:iam::012345678910:role/ecsServiceRole",
        "runningCount" => 0,
        "serviceArn" => "arn:aws:ecs:us-east-1:012345678910:service/ecs-simple-service-elb",
        "serviceName" => "ecs-simple-service-elb",
        "status" => "ACTIVE",
        "taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/console-sample-app-static:6"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateService)
"""
@inline create_service(aws::AWSConfig=default_aws_config(); args...) = create_service(aws, args)

@inline create_service(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "CreateService", args)

@inline create_service(args) = create_service(default_aws_config(), args)


"""
    using AWSSDK.ECS.delete_attributes
    delete_attributes([::AWSConfig], arguments::Dict)
    delete_attributes([::AWSConfig]; attributes=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "DeleteAttributes", arguments::Dict)
    ecs([::AWSConfig], "DeleteAttributes", attributes=, <keyword arguments>)

# DeleteAttributes Operation

Deletes one or more custom attributes from an Amazon ECS resource.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to delete attributes. If you do not specify a cluster, the default cluster is assumed.


## `attributes = [[ ... ], ...]` -- *Required*
The attributes to delete from your resource. You can specify up to 10 attributes per request. For custom attributes, specify the attribute name and target ID, but do not specify the value. If you specify the target ID using the short form, you must also specify the target type.
```
 attributes = [[
        "name" => <required> ::String,
        "value" =>  ::String,
        "targetType" =>  "container-instance",
        "targetId" =>  ::String
    ], ...]
```



# Returns

`DeleteAttributesResponse`

# Exceptions

`ClusterNotFoundException`, `TargetNotFoundException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteAttributes)
"""
@inline delete_attributes(aws::AWSConfig=default_aws_config(); args...) = delete_attributes(aws, args)

@inline delete_attributes(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "DeleteAttributes", args)

@inline delete_attributes(args) = delete_attributes(default_aws_config(), args)


"""
    using AWSSDK.ECS.delete_cluster
    delete_cluster([::AWSConfig], arguments::Dict)
    delete_cluster([::AWSConfig]; cluster=)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "DeleteCluster", arguments::Dict)
    ecs([::AWSConfig], "DeleteCluster", cluster=)

# DeleteCluster Operation

Deletes the specified cluster. You must deregister all container instances from this cluster before you may delete it. You can list the container instances in a cluster with [ListContainerInstances](@ref) and deregister them with [DeregisterContainerInstance](@ref).

# Arguments

## `cluster = ::String` -- *Required*
The short name or full Amazon Resource Name (ARN) of the cluster to delete.




# Returns

`DeleteClusterResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException`, `ClusterNotFoundException`, `ClusterContainsContainerInstancesException`, `ClusterContainsServicesException` or `ClusterContainsTasksException`.

# Example: To delete an empty cluster

This example deletes an empty cluster in your default region.

Input:
```
[
    "cluster" => "my_cluster"
]
```

Output:
```
Dict(
    "cluster" => Dict(
        "activeServicesCount" => 0,
        "clusterArn" => "arn:aws:ecs:us-east-1:012345678910:cluster/my_cluster",
        "clusterName" => "my_cluster",
        "pendingTasksCount" => 0,
        "registeredContainerInstancesCount" => 0,
        "runningTasksCount" => 0,
        "status" => "INACTIVE"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteCluster)
"""
@inline delete_cluster(aws::AWSConfig=default_aws_config(); args...) = delete_cluster(aws, args)

@inline delete_cluster(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "DeleteCluster", args)

@inline delete_cluster(args) = delete_cluster(default_aws_config(), args)


"""
    using AWSSDK.ECS.delete_service
    delete_service([::AWSConfig], arguments::Dict)
    delete_service([::AWSConfig]; service=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "DeleteService", arguments::Dict)
    ecs([::AWSConfig], "DeleteService", service=, <keyword arguments>)

# DeleteService Operation

Deletes a specified service within a cluster. You can delete a service if you have no running tasks in it and the desired task count is zero. If the service is actively maintaining tasks, you cannot delete it, and you must update the service to a desired task count of zero. For more information, see [UpdateService](@ref).

**Note**
> When you delete a service, if there are still running tasks that require cleanup, the service status moves from `ACTIVE` to `DRAINING`, and the service is no longer visible in the console or in [ListServices](@ref) API operations. After the tasks have stopped, then the service status moves from `DRAINING` to `INACTIVE`. Services in the `DRAINING` or `INACTIVE` status can still be viewed with [DescribeServices](@ref) API operations. However, in the future, `INACTIVE` services may be cleaned up and purged from Amazon ECS record keeping, and [DescribeServices](@ref) API operations on those services return a `ServiceNotFoundException` error.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to delete. If you do not specify a cluster, the default cluster is assumed.


## `service = ::String` -- *Required*
The name of the service to delete.


## `force = ::Bool`
If `true`, allows you to delete a service even if it has not been scaled down to zero tasks. It is only necessary to use this if the service is using the `REPLICA` scheduling strategy.




# Returns

`DeleteServiceResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException`, `ClusterNotFoundException` or `ServiceNotFoundException`.

# Example: To delete a service

This example deletes the my-http-service service. The service must have a desired count and running count of 0 before you can delete it.

Input:
```
[
    "service" => "my-http-service"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteService)
"""
@inline delete_service(aws::AWSConfig=default_aws_config(); args...) = delete_service(aws, args)

@inline delete_service(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "DeleteService", args)

@inline delete_service(args) = delete_service(default_aws_config(), args)


"""
    using AWSSDK.ECS.deregister_container_instance
    deregister_container_instance([::AWSConfig], arguments::Dict)
    deregister_container_instance([::AWSConfig]; containerInstance=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "DeregisterContainerInstance", arguments::Dict)
    ecs([::AWSConfig], "DeregisterContainerInstance", containerInstance=, <keyword arguments>)

# DeregisterContainerInstance Operation

Deregisters an Amazon ECS container instance from the specified cluster. This instance is no longer available to run tasks.

If you intend to use the container instance for some other purpose after deregistration, you should stop all of the tasks running on the container instance before deregistration. That prevents any orphaned tasks from consuming resources.

Deregistering a container instance removes the instance from a cluster, but it does not terminate the EC2 instance; if you are finished using the instance, be sure to terminate it in the Amazon EC2 console to stop billing.

**Note**
> If you terminate a running container instance, Amazon ECS automatically deregisters the instance from your cluster (stopped container instances or instances with disconnected agents are not automatically deregistered when terminated).

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to deregister. If you do not specify a cluster, the default cluster is assumed.


## `containerInstance = ::String` -- *Required*
The container instance ID or full ARN of the container instance to deregister. The ARN contains the `arn:aws:ecs` namespace, followed by the Region of the container instance, the AWS account ID of the container instance owner, the `container-instance` namespace, and then the container instance ID. For example, `arn:aws:ecs:*region*:*aws_account_id*:container-instance/*container_instance_ID*` .


## `force = ::Bool`
Forces the deregistration of the container instance. If you have tasks running on the container instance when you deregister it with the `force` option, these tasks remain running until you terminate the instance or the tasks stop through some other means, but they are orphaned (no longer monitored or accounted for by Amazon ECS). If an orphaned task on your container instance is part of an Amazon ECS service, then the service scheduler starts another copy of that task, on a different container instance if possible.

Any containers in orphaned service tasks that are registered with a Classic Load Balancer or an Application Load Balancer target group are deregistered. They begin connection draining according to the settings on the load balancer or target group.




# Returns

`DeregisterContainerInstanceResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException` or `ClusterNotFoundException`.

# Example: To deregister a container instance from a cluster

This example deregisters a container instance from the specified cluster in your default region. If there are still tasks running on the container instance, you must either stop those tasks before deregistering, or use the force option.

Input:
```
[
    "cluster" => "default",
    "containerInstance" => "container_instance_UUID",
    "force" => true
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterContainerInstance)
"""
@inline deregister_container_instance(aws::AWSConfig=default_aws_config(); args...) = deregister_container_instance(aws, args)

@inline deregister_container_instance(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "DeregisterContainerInstance", args)

@inline deregister_container_instance(args) = deregister_container_instance(default_aws_config(), args)


"""
    using AWSSDK.ECS.deregister_task_definition
    deregister_task_definition([::AWSConfig], arguments::Dict)
    deregister_task_definition([::AWSConfig]; taskDefinition=)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "DeregisterTaskDefinition", arguments::Dict)
    ecs([::AWSConfig], "DeregisterTaskDefinition", taskDefinition=)

# DeregisterTaskDefinition Operation

Deregisters the specified task definition by family and revision. Upon deregistration, the task definition is marked as `INACTIVE`. Existing tasks and services that reference an `INACTIVE` task definition continue to run without disruption. Existing services that reference an `INACTIVE` task definition can still scale up or down by modifying the service's desired count.

You cannot use an `INACTIVE` task definition to run new tasks or create new services, and you cannot update an existing service to reference an `INACTIVE` task definition (although there may be up to a 10-minute window following deregistration where these restrictions have not yet taken effect).

**Note**
> At this time, `INACTIVE` task definitions remain discoverable in your account indefinitely; however, this behavior is subject to change in the future, so you should not rely on `INACTIVE` task definitions persisting beyond the lifecycle of any associated tasks and services.

# Arguments

## `taskDefinition = ::String` -- *Required*
The `family` and `revision` (`family:revision`) or full Amazon Resource Name (ARN) of the task definition to deregister. You must specify a `revision`.




# Returns

`DeregisterTaskDefinitionResponse`

# Exceptions

`ServerException`, `ClientException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterTaskDefinition)
"""
@inline deregister_task_definition(aws::AWSConfig=default_aws_config(); args...) = deregister_task_definition(aws, args)

@inline deregister_task_definition(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "DeregisterTaskDefinition", args)

@inline deregister_task_definition(args) = deregister_task_definition(default_aws_config(), args)


"""
    using AWSSDK.ECS.describe_clusters
    describe_clusters([::AWSConfig], arguments::Dict)
    describe_clusters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "DescribeClusters", arguments::Dict)
    ecs([::AWSConfig], "DescribeClusters", <keyword arguments>)

# DescribeClusters Operation

Describes one or more of your clusters.

# Arguments

## `clusters = [::String, ...]`
A list of up to 100 cluster names or full cluster Amazon Resource Name (ARN) entries. If you do not specify a cluster, the default cluster is assumed.


## `include = ["STATISTICS", ...]`
Additional information about your clusters to be separated by launch type, including:

*   runningEC2TasksCount

*   runningFargateTasksCount

*   pendingEC2TasksCount

*   pendingFargateTasksCount

*   activeEC2ServiceCount

*   activeFargateServiceCount

*   drainingEC2ServiceCount

*   drainingFargateServiceCount




# Returns

`DescribeClustersResponse`

# Exceptions

`ServerException`, `ClientException` or `InvalidParameterException`.

# Example: To describe a cluster

This example provides a description of the specified cluster in your default region.

Input:
```
[
    "clusters" => [
        "default"
    ]
]
```

Output:
```
Dict(
    "clusters" => [
        Dict(
            "clusterArn" => "arn:aws:ecs:us-east-1:aws_account_id:cluster/default",
            "clusterName" => "default",
            "status" => "ACTIVE"
        )
    ],
    "failures" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeClusters)
"""
@inline describe_clusters(aws::AWSConfig=default_aws_config(); args...) = describe_clusters(aws, args)

@inline describe_clusters(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "DescribeClusters", args)

@inline describe_clusters(args) = describe_clusters(default_aws_config(), args)


"""
    using AWSSDK.ECS.describe_container_instances
    describe_container_instances([::AWSConfig], arguments::Dict)
    describe_container_instances([::AWSConfig]; containerInstances=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "DescribeContainerInstances", arguments::Dict)
    ecs([::AWSConfig], "DescribeContainerInstances", containerInstances=, <keyword arguments>)

# DescribeContainerInstances Operation

Describes Amazon Elastic Container Service container instances. Returns metadata about registered and remaining resources on each container instance requested.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to describe. If you do not specify a cluster, the default cluster is assumed.


## `containerInstances = [::String, ...]` -- *Required*
A list of up to 100 container instance IDs or full Amazon Resource Name (ARN) entries.




# Returns

`DescribeContainerInstancesResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException` or `ClusterNotFoundException`.

# Example: To describe container instance

This example provides a description of the specified container instance in your default region, using the container instance UUID as an identifier.

Input:
```
[
    "cluster" => "default",
    "containerInstances" => [
        "f2756532-8f13-4d53-87c9-aed50dc94cd7"
    ]
]
```

Output:
```
Dict(
    "containerInstances" => [
        Dict(
            "agentConnected" => true,
            "containerInstanceArn" => "arn:aws:ecs:us-east-1:012345678910:container-instance/f2756532-8f13-4d53-87c9-aed50dc94cd7",
            "ec2InstanceId" => "i-807f3249",
            "pendingTasksCount" => 0,
            "registeredResources" => [
                Dict(
                    "name" => "CPU",
                    "type" => "INTEGER",
                    "doubleValue" => 0.0,
                    "integerValue" => 2048,
                    "longValue" => 0
                ),
                Dict(
                    "name" => "MEMORY",
                    "type" => "INTEGER",
                    "doubleValue" => 0.0,
                    "integerValue" => 3768,
                    "longValue" => 0
                ),
                Dict(
                    "name" => "PORTS",
                    "type" => "STRINGSET",
                    "doubleValue" => 0.0,
                    "integerValue" => 0,
                    "longValue" => 0,
                    "stringSetValue" => [
                        "2376",
                        "22",
                        "51678",
                        "2375"
                    ]
                )
            ],
            "remainingResources" => [
                Dict(
                    "name" => "CPU",
                    "type" => "INTEGER",
                    "doubleValue" => 0.0,
                    "integerValue" => 1948,
                    "longValue" => 0
                ),
                Dict(
                    "name" => "MEMORY",
                    "type" => "INTEGER",
                    "doubleValue" => 0.0,
                    "integerValue" => 3668,
                    "longValue" => 0
                ),
                Dict(
                    "name" => "PORTS",
                    "type" => "STRINGSET",
                    "doubleValue" => 0.0,
                    "integerValue" => 0,
                    "longValue" => 0,
                    "stringSetValue" => [
                        "2376",
                        "22",
                        "80",
                        "51678",
                        "2375"
                    ]
                )
            ],
            "runningTasksCount" => 1,
            "status" => "ACTIVE"
        )
    ],
    "failures" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeContainerInstances)
"""
@inline describe_container_instances(aws::AWSConfig=default_aws_config(); args...) = describe_container_instances(aws, args)

@inline describe_container_instances(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "DescribeContainerInstances", args)

@inline describe_container_instances(args) = describe_container_instances(default_aws_config(), args)


"""
    using AWSSDK.ECS.describe_services
    describe_services([::AWSConfig], arguments::Dict)
    describe_services([::AWSConfig]; services=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "DescribeServices", arguments::Dict)
    ecs([::AWSConfig], "DescribeServices", services=, <keyword arguments>)

# DescribeServices Operation

Describes the specified services running in your cluster.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN)the cluster that hosts the service to describe. If you do not specify a cluster, the default cluster is assumed.


## `services = [::String, ...]` -- *Required*
A list of services to describe. You may specify up to 10 services to describe in a single operation.




# Returns

`DescribeServicesResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException` or `ClusterNotFoundException`.

# Example: To describe a service

This example provides descriptive information about the service named ``ecs-simple-service``.

Input:
```
[
    "services" => [
        "ecs-simple-service"
    ]
]
```

Output:
```
Dict(
    "failures" => [

    ],
    "services" => [
        Dict(
            "clusterArn" => "arn:aws:ecs:us-east-1:012345678910:cluster/default",
            "createdAt" => "2016-08-29T16:25:52.130Z",
            "deploymentConfiguration" => Dict(
                "maximumPercent" => 200,
                "minimumHealthyPercent" => 100
            ),
            "deployments" => [
                Dict(
                    "createdAt" => "2016-08-29T16:25:52.130Z",
                    "desiredCount" => 1,
                    "id" => "ecs-svc/9223370564341623665",
                    "pendingCount" => 0,
                    "runningCount" => 0,
                    "status" => "PRIMARY",
                    "taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6",
                    "updatedAt" => "2016-08-29T16:25:52.130Z"
                )
            ],
            "desiredCount" => 1,
            "events" => [
                Dict(
                    "createdAt" => "2016-08-29T16:25:58.520Z",
                    "id" => "38c285e5-d335-4b68-8b15-e46dedc8e88d",
                    "message" => "(service ecs-simple-service) was unable to place a task because no container instance met all of its requirements. The closest matching (container-instance 3f4de1c5-ffdd-4954-af7e-75b4be0c8841) is already using a port required by your task. For more information, see the Troubleshooting section of the Amazon ECS Developer Guide."
                )
            ],
            "loadBalancers" => [

            ],
            "pendingCount" => 0,
            "runningCount" => 0,
            "serviceArn" => "arn:aws:ecs:us-east-1:012345678910:service/ecs-simple-service",
            "serviceName" => "ecs-simple-service",
            "status" => "ACTIVE",
            "taskDefinition" => "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServices)
"""
@inline describe_services(aws::AWSConfig=default_aws_config(); args...) = describe_services(aws, args)

@inline describe_services(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "DescribeServices", args)

@inline describe_services(args) = describe_services(default_aws_config(), args)


"""
    using AWSSDK.ECS.describe_task_definition
    describe_task_definition([::AWSConfig], arguments::Dict)
    describe_task_definition([::AWSConfig]; taskDefinition=)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "DescribeTaskDefinition", arguments::Dict)
    ecs([::AWSConfig], "DescribeTaskDefinition", taskDefinition=)

# DescribeTaskDefinition Operation

Describes a task definition. You can specify a `family` and `revision` to find information about a specific task definition, or you can simply specify the family to find the latest `ACTIVE` revision in that family.

**Note**
> You can only describe `INACTIVE` task definitions while an active task or service references them.

# Arguments

## `taskDefinition = ::String` -- *Required*
The `family` for the latest `ACTIVE` revision, `family` and `revision` (`family:revision`) for a specific revision in the family, or full Amazon Resource Name (ARN) of the task definition to describe.




# Returns

`DescribeTaskDefinitionResponse`

# Exceptions

`ServerException`, `ClientException` or `InvalidParameterException`.

# Example: To describe a task definition

This example provides a description of the specified task definition.

Input:
```
[
    "taskDefinition" => "hello_world:8"
]
```

Output:
```
Dict(
    "taskDefinition" => Dict(
        "containerDefinitions" => [
            Dict(
                "name" => "wordpress",
                "cpu" => 10,
                "environment" => [

                ],
                "essential" => true,
                "image" => "wordpress",
                "links" => [
                    "mysql"
                ],
                "memory" => 500,
                "mountPoints" => [

                ],
                "portMappings" => [
                    Dict(
                        "containerPort" => 80,
                        "hostPort" => 80
                    )
                ],
                "volumesFrom" => [

                ]
            ),
            Dict(
                "name" => "mysql",
                "cpu" => 10,
                "environment" => [
                    Dict(
                        "name" => "MYSQL_ROOT_PASSWORD",
                        "value" => "password"
                    )
                ],
                "essential" => true,
                "image" => "mysql",
                "memory" => 500,
                "mountPoints" => [

                ],
                "portMappings" => [

                ],
                "volumesFrom" => [

                ]
            )
        ],
        "family" => "hello_world",
        "revision" => 8,
        "taskDefinitionArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/hello_world:8",
        "volumes" => [

        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTaskDefinition)
"""
@inline describe_task_definition(aws::AWSConfig=default_aws_config(); args...) = describe_task_definition(aws, args)

@inline describe_task_definition(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "DescribeTaskDefinition", args)

@inline describe_task_definition(args) = describe_task_definition(default_aws_config(), args)


"""
    using AWSSDK.ECS.describe_tasks
    describe_tasks([::AWSConfig], arguments::Dict)
    describe_tasks([::AWSConfig]; tasks=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "DescribeTasks", arguments::Dict)
    ecs([::AWSConfig], "DescribeTasks", tasks=, <keyword arguments>)

# DescribeTasks Operation

Describes a specified task or tasks.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to describe. If you do not specify a cluster, the default cluster is assumed.


## `tasks = [::String, ...]` -- *Required*
A list of up to 100 task IDs or full ARN entries.




# Returns

`DescribeTasksResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException` or `ClusterNotFoundException`.

# Example: To describe a task

This example provides a description of the specified task, using the task UUID as an identifier.

Input:
```
[
    "tasks" => [
        "c5cba4eb-5dad-405e-96db-71ef8eefe6a8"
    ]
]
```

Output:
```
Dict(
    "failures" => [

    ],
    "tasks" => [
        Dict(
            "clusterArn" => "arn:aws:ecs:<region>:<aws_account_id>:cluster/default",
            "containerInstanceArn" => "arn:aws:ecs:<region>:<aws_account_id>:container-instance/18f9eda5-27d7-4c19-b133-45adc516e8fb",
            "containers" => [
                Dict(
                    "name" => "ecs-demo",
                    "containerArn" => "arn:aws:ecs:<region>:<aws_account_id>:container/7c01765b-c588-45b3-8290-4ba38bd6c5a6",
                    "lastStatus" => "RUNNING",
                    "networkBindings" => [
                        Dict(
                            "bindIP" => "0.0.0.0",
                            "containerPort" => 80,
                            "hostPort" => 80
                        )
                    ],
                    "taskArn" => "arn:aws:ecs:<region>:<aws_account_id>:task/c5cba4eb-5dad-405e-96db-71ef8eefe6a8"
                )
            ],
            "desiredStatus" => "RUNNING",
            "lastStatus" => "RUNNING",
            "overrides" => Dict(
                "containerOverrides" => [
                    Dict(
                        "name" => "ecs-demo"
                    )
                ]
            ),
            "startedBy" => "ecs-svc/9223370608528463088",
            "taskArn" => "arn:aws:ecs:<region>:<aws_account_id>:task/c5cba4eb-5dad-405e-96db-71ef8eefe6a8",
            "taskDefinitionArn" => "arn:aws:ecs:<region>:<aws_account_id>:task-definition/amazon-ecs-sample:1"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTasks)
"""
@inline describe_tasks(aws::AWSConfig=default_aws_config(); args...) = describe_tasks(aws, args)

@inline describe_tasks(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "DescribeTasks", args)

@inline describe_tasks(args) = describe_tasks(default_aws_config(), args)


"""
    using AWSSDK.ECS.discover_poll_endpoint
    discover_poll_endpoint([::AWSConfig], arguments::Dict)
    discover_poll_endpoint([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "DiscoverPollEndpoint", arguments::Dict)
    ecs([::AWSConfig], "DiscoverPollEndpoint", <keyword arguments>)

# DiscoverPollEndpoint Operation

 
**Note**
> This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.

Returns an endpoint for the Amazon ECS agent to poll for updates.

# Arguments

## `containerInstance = ::String`
The container instance ID or full ARN of the container instance. The ARN contains the `arn:aws:ecs` namespace, followed by the Region of the container instance, the AWS account ID of the container instance owner, the `container-instance` namespace, and then the container instance ID. For example, `arn:aws:ecs:*region*:*aws_account_id*:container-instance/*container_instance_ID*` .


## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that the container instance belongs to.




# Returns

`DiscoverPollEndpointResponse`

# Exceptions

`ServerException` or `ClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DiscoverPollEndpoint)
"""
@inline discover_poll_endpoint(aws::AWSConfig=default_aws_config(); args...) = discover_poll_endpoint(aws, args)

@inline discover_poll_endpoint(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "DiscoverPollEndpoint", args)

@inline discover_poll_endpoint(args) = discover_poll_endpoint(default_aws_config(), args)


"""
    using AWSSDK.ECS.list_attributes
    list_attributes([::AWSConfig], arguments::Dict)
    list_attributes([::AWSConfig]; targetType=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "ListAttributes", arguments::Dict)
    ecs([::AWSConfig], "ListAttributes", targetType=, <keyword arguments>)

# ListAttributes Operation

Lists the attributes for Amazon ECS resources within a specified target type and cluster. When you specify a target type and cluster, `ListAttributes` returns a list of attribute objects, one for each attribute on each resource. You can filter the list of results to a single attribute name to only return results that have that name. You can also filter the results by attribute name and value, for example, to see which container instances in a cluster are running a Linux AMI (`ecs.os-type=linux`).

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster to list attributes. If you do not specify a cluster, the default cluster is assumed.


## `targetType = "container-instance"` -- *Required*
The type of the target with which to list attributes.


## `attributeName = ::String`
The name of the attribute with which to filter the results.


## `attributeValue = ::String`
The value of the attribute with which to filter results. You must also specify an attribute name to use this parameter.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `ListAttributes` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.


## `maxResults = ::Int`
The maximum number of cluster results returned by `ListAttributes` in paginated output. When this parameter is used, `ListAttributes` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `ListAttributes` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `ListAttributes` returns up to 100 results and a `nextToken` value if applicable.




# Returns

`ListAttributesResponse`

# Exceptions

`ClusterNotFoundException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListAttributes)
"""
@inline list_attributes(aws::AWSConfig=default_aws_config(); args...) = list_attributes(aws, args)

@inline list_attributes(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "ListAttributes", args)

@inline list_attributes(args) = list_attributes(default_aws_config(), args)


"""
    using AWSSDK.ECS.list_clusters
    list_clusters([::AWSConfig], arguments::Dict)
    list_clusters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "ListClusters", arguments::Dict)
    ecs([::AWSConfig], "ListClusters", <keyword arguments>)

# ListClusters Operation

Returns a list of existing clusters.

# Arguments

## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `ListClusters` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.


## `maxResults = ::Int`
The maximum number of cluster results returned by `ListClusters` in paginated output. When this parameter is used, `ListClusters` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `ListClusters` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `ListClusters` returns up to 100 results and a `nextToken` value if applicable.




# Returns

`ListClustersResponse`

# Exceptions

`ServerException`, `ClientException` or `InvalidParameterException`.

# Example: To list your available clusters

This example lists all of your available clusters in your default region.

Input:
```
[

]
```

Output:
```
Dict(
    "clusterArns" => [
        "arn:aws:ecs:us-east-1:<aws_account_id>:cluster/test",
        "arn:aws:ecs:us-east-1:<aws_account_id>:cluster/default"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListClusters)
"""
@inline list_clusters(aws::AWSConfig=default_aws_config(); args...) = list_clusters(aws, args)

@inline list_clusters(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "ListClusters", args)

@inline list_clusters(args) = list_clusters(default_aws_config(), args)


"""
    using AWSSDK.ECS.list_container_instances
    list_container_instances([::AWSConfig], arguments::Dict)
    list_container_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "ListContainerInstances", arguments::Dict)
    ecs([::AWSConfig], "ListContainerInstances", <keyword arguments>)

# ListContainerInstances Operation

Returns a list of container instances in a specified cluster. You can filter the results of a `ListContainerInstances` operation with cluster query language statements inside the `filter` parameter. For more information, see [Cluster Query Language](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html) in the *Amazon Elastic Container Service Developer Guide*.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to list. If you do not specify a cluster, the default cluster is assumed.


## `filter = ::String`
You can filter the results of a `ListContainerInstances` operation with cluster query language statements. For more information, see [Cluster Query Language](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html) in the *Amazon Elastic Container Service Developer Guide*.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `ListContainerInstances` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.


## `maxResults = ::Int`
The maximum number of container instance results returned by `ListContainerInstances` in paginated output. When this parameter is used, `ListContainerInstances` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `ListContainerInstances` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `ListContainerInstances` returns up to 100 results and a `nextToken` value if applicable.


## `status = "ACTIVE" or "DRAINING"`
Filters the container instances by status. For example, if you specify the `DRAINING` status, the results include only container instances that have been set to `DRAINING` using [UpdateContainerInstancesState](@ref). If you do not specify this parameter, the default is to include container instances set to `ACTIVE` and `DRAINING`.




# Returns

`ListContainerInstancesResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException` or `ClusterNotFoundException`.

# Example: To list your available container instances in a cluster

This example lists all of your available container instances in the specified cluster in your default region.

Input:
```
[
    "cluster" => "default"
]
```

Output:
```
Dict(
    "containerInstanceArns" => [
        "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/f6bbb147-5370-4ace-8c73-c7181ded911f",
        "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/ffe3d344-77e2-476c-a4d0-bf560ad50acb"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListContainerInstances)
"""
@inline list_container_instances(aws::AWSConfig=default_aws_config(); args...) = list_container_instances(aws, args)

@inline list_container_instances(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "ListContainerInstances", args)

@inline list_container_instances(args) = list_container_instances(default_aws_config(), args)


"""
    using AWSSDK.ECS.list_services
    list_services([::AWSConfig], arguments::Dict)
    list_services([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "ListServices", arguments::Dict)
    ecs([::AWSConfig], "ListServices", <keyword arguments>)

# ListServices Operation

Lists the services that are running in a specified cluster.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that hosts the services to list. If you do not specify a cluster, the default cluster is assumed.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `ListServices` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.


## `maxResults = ::Int`
The maximum number of service results returned by `ListServices` in paginated output. When this parameter is used, `ListServices` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `ListServices` request with the returned `nextToken` value. This value can be between 1 and 10. If this parameter is not used, then `ListServices` returns up to 10 results and a `nextToken` value if applicable.


## `launchType = "EC2" or "FARGATE"`
The launch type for the services to list.


## `schedulingStrategy = "REPLICA" or "DAEMON"`
The scheduling strategy for services to list.




# Returns

`ListServicesResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException` or `ClusterNotFoundException`.

# Example: To list the services in a cluster

This example lists the services running in the default cluster for an account.

Input:
```
[

]
```

Output:
```
Dict(
    "serviceArns" => [
        "arn:aws:ecs:us-east-1:012345678910:service/my-http-service"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServices)
"""
@inline list_services(aws::AWSConfig=default_aws_config(); args...) = list_services(aws, args)

@inline list_services(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "ListServices", args)

@inline list_services(args) = list_services(default_aws_config(), args)


"""
    using AWSSDK.ECS.list_task_definition_families
    list_task_definition_families([::AWSConfig], arguments::Dict)
    list_task_definition_families([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "ListTaskDefinitionFamilies", arguments::Dict)
    ecs([::AWSConfig], "ListTaskDefinitionFamilies", <keyword arguments>)

# ListTaskDefinitionFamilies Operation

Returns a list of task definition families that are registered to your account (which may include task definition families that no longer have any `ACTIVE` task definition revisions).

You can filter out task definition families that do not contain any `ACTIVE` task definition revisions by setting the `status` parameter to `ACTIVE`. You can also filter the results with the `familyPrefix` parameter.

# Arguments

## `familyPrefix = ::String`
The `familyPrefix` is a string that is used to filter the results of `ListTaskDefinitionFamilies`. If you specify a `familyPrefix`, only task definition family names that begin with the `familyPrefix` string are returned.


## `status = "ACTIVE", "INACTIVE" or "ALL"`
The task definition family status with which to filter the `ListTaskDefinitionFamilies` results. By default, both `ACTIVE` and `INACTIVE` task definition families are listed. If this parameter is set to `ACTIVE`, only task definition families that have an `ACTIVE` task definition revision are returned. If this parameter is set to `INACTIVE`, only task definition families that do not have any `ACTIVE` task definition revisions are returned. If you paginate the resulting output, be sure to keep the `status` value constant in each subsequent request.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `ListTaskDefinitionFamilies` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.


## `maxResults = ::Int`
The maximum number of task definition family results returned by `ListTaskDefinitionFamilies` in paginated output. When this parameter is used, `ListTaskDefinitions` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `ListTaskDefinitionFamilies` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `ListTaskDefinitionFamilies` returns up to 100 results and a `nextToken` value if applicable.




# Returns

`ListTaskDefinitionFamiliesResponse`

# Exceptions

`ServerException`, `ClientException` or `InvalidParameterException`.

# Example: To list your registered task definition families

This example lists all of your registered task definition families.

Input:
```
[

]
```

Output:
```
Dict(
    "families" => [
        "node-js-app",
        "web-timer",
        "hpcc",
        "hpcc-c4-8xlarge"
    ]
)
```

# Example: To filter your registered task definition families

This example lists the task definition revisions that start with "hpcc".

Input:
```
[
    "familyPrefix" => "hpcc"
]
```

Output:
```
Dict(
    "families" => [
        "hpcc",
        "hpcc-c4-8xlarge"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitionFamilies)
"""
@inline list_task_definition_families(aws::AWSConfig=default_aws_config(); args...) = list_task_definition_families(aws, args)

@inline list_task_definition_families(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "ListTaskDefinitionFamilies", args)

@inline list_task_definition_families(args) = list_task_definition_families(default_aws_config(), args)


"""
    using AWSSDK.ECS.list_task_definitions
    list_task_definitions([::AWSConfig], arguments::Dict)
    list_task_definitions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "ListTaskDefinitions", arguments::Dict)
    ecs([::AWSConfig], "ListTaskDefinitions", <keyword arguments>)

# ListTaskDefinitions Operation

Returns a list of task definitions that are registered to your account. You can filter the results by family name with the `familyPrefix` parameter or by status with the `status` parameter.

# Arguments

## `familyPrefix = ::String`
The full family name with which to filter the `ListTaskDefinitions` results. Specifying a `familyPrefix` limits the listed task definitions to task definition revisions that belong to that family.


## `status = "ACTIVE" or "INACTIVE"`
The task definition status with which to filter the `ListTaskDefinitions` results. By default, only `ACTIVE` task definitions are listed. By setting this parameter to `INACTIVE`, you can view task definitions that are `INACTIVE` as long as an active task or service still references them. If you paginate the resulting output, be sure to keep the `status` value constant in each subsequent request.


## `sort = "ASC" or "DESC"`
The order in which to sort the results. Valid values are `ASC` and `DESC`. By default (`ASC`), task definitions are listed lexicographically by family name and in ascending numerical order by revision so that the newest task definitions in a family are listed last. Setting this parameter to `DESC` reverses the sort order on family name and revision so that the newest task definitions in a family are listed first.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `ListTaskDefinitions` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.


## `maxResults = ::Int`
The maximum number of task definition results returned by `ListTaskDefinitions` in paginated output. When this parameter is used, `ListTaskDefinitions` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `ListTaskDefinitions` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `ListTaskDefinitions` returns up to 100 results and a `nextToken` value if applicable.




# Returns

`ListTaskDefinitionsResponse`

# Exceptions

`ServerException`, `ClientException` or `InvalidParameterException`.

# Example: To list your registered task definitions

This example lists all of your registered task definitions.

Input:
```
[

]
```

Output:
```
Dict(
    "taskDefinitionArns" => [
        "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep300:2",
        "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:1",
        "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:3",
        "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:4",
        "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:5",
        "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:6"
    ]
)
```

# Example: To list the registered task definitions in a family

This example lists the task definition revisions of a specified family.

Input:
```
[
    "familyPrefix" => "wordpress"
]
```

Output:
```
Dict(
    "taskDefinitionArns" => [
        "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:3",
        "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:4",
        "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:5",
        "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:6"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitions)
"""
@inline list_task_definitions(aws::AWSConfig=default_aws_config(); args...) = list_task_definitions(aws, args)

@inline list_task_definitions(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "ListTaskDefinitions", args)

@inline list_task_definitions(args) = list_task_definitions(default_aws_config(), args)


"""
    using AWSSDK.ECS.list_tasks
    list_tasks([::AWSConfig], arguments::Dict)
    list_tasks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "ListTasks", arguments::Dict)
    ecs([::AWSConfig], "ListTasks", <keyword arguments>)

# ListTasks Operation

Returns a list of tasks for a specified cluster. You can filter the results by family name, by a particular container instance, or by the desired status of the task with the `family`, `containerInstance`, and `desiredStatus` parameters.

Recently stopped tasks might appear in the returned results. Currently, stopped tasks appear in the returned results for at least one hour.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that hosts the tasks to list. If you do not specify a cluster, the default cluster is assumed.


## `containerInstance = ::String`
The container instance ID or full ARN of the container instance with which to filter the `ListTasks` results. Specifying a `containerInstance` limits the results to tasks that belong to that container instance.


## `family = ::String`
The name of the family with which to filter the `ListTasks` results. Specifying a `family` limits the results to tasks that belong to that family.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `ListTasks` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.


## `maxResults = ::Int`
The maximum number of task results returned by `ListTasks` in paginated output. When this parameter is used, `ListTasks` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `ListTasks` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `ListTasks` returns up to 100 results and a `nextToken` value if applicable.


## `startedBy = ::String`
The `startedBy` value with which to filter the task results. Specifying a `startedBy` value limits the results to tasks that were started with that value.


## `serviceName = ::String`
The name of the service with which to filter the `ListTasks` results. Specifying a `serviceName` limits the results to tasks that belong to that service.


## `desiredStatus = "RUNNING", "PENDING" or "STOPPED"`
The task desired status with which to filter the `ListTasks` results. Specifying a `desiredStatus` of `STOPPED` limits the results to tasks that Amazon ECS has set the desired status to `STOPPED`, which can be useful for debugging tasks that are not starting properly or have died or finished. The default status filter is `RUNNING`, which shows tasks that Amazon ECS has set the desired status to `RUNNING`.

**Note**
> Although you can filter results based on a desired status of `PENDING`, this does not return any results because Amazon ECS never sets the desired status of a task to that value (only a task's `lastStatus` may have a value of `PENDING`).


## `launchType = "EC2" or "FARGATE"`
The launch type for services to list.




# Returns

`ListTasksResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException`, `ClusterNotFoundException` or `ServiceNotFoundException`.

# Example: To list the tasks in a cluster

This example lists all of the tasks in a cluster.

Input:
```
[
    "cluster" => "default"
]
```

Output:
```
Dict(
    "taskArns" => [
        "arn:aws:ecs:us-east-1:012345678910:task/0cc43cdb-3bee-4407-9c26-c0e6ea5bee84",
        "arn:aws:ecs:us-east-1:012345678910:task/6b809ef6-c67e-4467-921f-ee261c15a0a1"
    ]
)
```

# Example: To list the tasks on a particular container instance

This example lists the tasks of a specified container instance. Specifying a ``containerInstance`` value limits  the  results  to  tasks  that belong to that container instance.

Input:
```
[
    "cluster" => "default",
    "containerInstance" => "f6bbb147-5370-4ace-8c73-c7181ded911f"
]
```

Output:
```
Dict(
    "taskArns" => [
        "arn:aws:ecs:us-east-1:012345678910:task/0cc43cdb-3bee-4407-9c26-c0e6ea5bee84"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTasks)
"""
@inline list_tasks(aws::AWSConfig=default_aws_config(); args...) = list_tasks(aws, args)

@inline list_tasks(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "ListTasks", args)

@inline list_tasks(args) = list_tasks(default_aws_config(), args)


"""
    using AWSSDK.ECS.put_attributes
    put_attributes([::AWSConfig], arguments::Dict)
    put_attributes([::AWSConfig]; attributes=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "PutAttributes", arguments::Dict)
    ecs([::AWSConfig], "PutAttributes", attributes=, <keyword arguments>)

# PutAttributes Operation

Create or update an attribute on an Amazon ECS resource. If the attribute does not exist, it is created. If the attribute exists, its value is replaced with the specified value. To delete an attribute, use [DeleteAttributes](@ref). For more information, see [Attributes](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes) in the *Amazon Elastic Container Service Developer Guide*.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to apply attributes. If you do not specify a cluster, the default cluster is assumed.


## `attributes = [[ ... ], ...]` -- *Required*
The attributes to apply to your resource. You can specify up to 10 custom attributes per resource. You can specify up to 10 attributes in a single call.
```
 attributes = [[
        "name" => <required> ::String,
        "value" =>  ::String,
        "targetType" =>  "container-instance",
        "targetId" =>  ::String
    ], ...]
```



# Returns

`PutAttributesResponse`

# Exceptions

`ClusterNotFoundException`, `TargetNotFoundException`, `AttributeLimitExceededException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAttributes)
"""
@inline put_attributes(aws::AWSConfig=default_aws_config(); args...) = put_attributes(aws, args)

@inline put_attributes(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "PutAttributes", args)

@inline put_attributes(args) = put_attributes(default_aws_config(), args)


"""
    using AWSSDK.ECS.register_container_instance
    register_container_instance([::AWSConfig], arguments::Dict)
    register_container_instance([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "RegisterContainerInstance", arguments::Dict)
    ecs([::AWSConfig], "RegisterContainerInstance", <keyword arguments>)

# RegisterContainerInstance Operation

 
**Note**
> This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.

Registers an EC2 instance into the specified cluster. This instance becomes available to place containers on.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster with which to register your container instance. If you do not specify a cluster, the default cluster is assumed.


## `instanceIdentityDocument = ::String`
The instance identity document for the EC2 instance to register. This document can be found by running the following command from the instance: `curl http://169.254.169.254/latest/dynamic/instance-identity/document/`


## `instanceIdentityDocumentSignature = ::String`
The instance identity document signature for the EC2 instance to register. This signature can be found by running the following command from the instance: `curl http://169.254.169.254/latest/dynamic/instance-identity/signature/`


## `totalResources = [[ ... ], ...]`
The resources available on the instance.
```
 totalResources = [[
        "name" =>  ::String,
        "type" =>  ::String,
        "doubleValue" =>  double,
        "longValue" =>  ::Int,
        "integerValue" =>  ::Int,
        "stringSetValue" =>  [::String, ...]
    ], ...]
```

## `versionInfo = [ ... ]`
The version information for the Amazon ECS container agent and Docker daemon running on the container instance.
```
 versionInfo = [
        "agentVersion" =>  ::String,
        "agentHash" =>  ::String,
        "dockerVersion" =>  ::String
    ]
```

## `containerInstanceArn = ::String`
The ARN of the container instance (if it was previously registered).


## `attributes = [[ ... ], ...]`
The container instance attributes that this container instance supports.
```
 attributes = [[
        "name" => <required> ::String,
        "value" =>  ::String,
        "targetType" =>  "container-instance",
        "targetId" =>  ::String
    ], ...]
```



# Returns

`RegisterContainerInstanceResponse`

# Exceptions

`ServerException`, `ClientException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterContainerInstance)
"""
@inline register_container_instance(aws::AWSConfig=default_aws_config(); args...) = register_container_instance(aws, args)

@inline register_container_instance(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "RegisterContainerInstance", args)

@inline register_container_instance(args) = register_container_instance(default_aws_config(), args)


"""
    using AWSSDK.ECS.register_task_definition
    register_task_definition([::AWSConfig], arguments::Dict)
    register_task_definition([::AWSConfig]; family=, containerDefinitions=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "RegisterTaskDefinition", arguments::Dict)
    ecs([::AWSConfig], "RegisterTaskDefinition", family=, containerDefinitions=, <keyword arguments>)

# RegisterTaskDefinition Operation

Registers a new task definition from the supplied `family` and `containerDefinitions`. Optionally, you can add data volumes to your containers with the `volumes` parameter. For more information about task definition parameters and defaults, see [Amazon ECS Task Definitions](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html) in the *Amazon Elastic Container Service Developer Guide*.

You can specify an IAM role for your task with the `taskRoleArn` parameter. When you specify an IAM role for a task, its containers can then use the latest versions of the AWS CLI or SDKs to make API requests to the AWS services that are specified in the IAM policy associated with the role. For more information, see [IAM Roles for Tasks](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html) in the *Amazon Elastic Container Service Developer Guide*.

You can specify a Docker networking mode for the containers in your task definition with the `networkMode` parameter. The available network modes correspond to those described in [Network settings](https://docs.docker.com/engine/reference/run/#/network-settings) in the Docker run reference. If you specify the `awsvpc` network mode, the task is allocated an elastic network interface, and you must specify a [NetworkConfiguration](@ref) when you create a service or run a task with the task definition. For more information, see [Task Networking](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html) in the *Amazon Elastic Container Service Developer Guide*.

# Arguments

## `family = ::String` -- *Required*
You must specify a `family` for a task definition, which allows you to track multiple versions of the same task definition. The `family` is used as a name for your task definition. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.


## `taskRoleArn = ::String`
The short name or full Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role. For more information, see [IAM Roles for Tasks](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html) in the *Amazon Elastic Container Service Developer Guide*.


## `executionRoleArn = ::String`
The Amazon Resource Name (ARN) of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.


## `networkMode = "bridge", "host", "awsvpc" or "none"`
The Docker networking mode to use for the containers in the task. The valid values are `none`, `bridge`, `awsvpc`, and `host`. The default Docker network mode is `bridge`. If using the Fargate launch type, the `awsvpc` network mode is required. If using the EC2 launch type, any network mode can be used. If the network mode is set to `none`, you can't specify port mappings in your container definitions, and the task's containers do not have external connectivity. The `host` and `awsvpc` network modes offer the highest networking performance for containers because they use the EC2 network stack instead of the virtualized network stack provided by the `bridge` mode.

With the `host` and `awsvpc` network modes, exposed container ports are mapped directly to the corresponding host port (for the `host` network mode) or the attached elastic network interface port (for the `awsvpc` network mode), so you cannot take advantage of dynamic host port mappings.

If the network mode is `awsvpc`, the task is allocated an Elastic Network Interface, and you must specify a [NetworkConfiguration](@ref) when you create a service or run a task with the task definition. For more information, see [Task Networking](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html) in the *Amazon Elastic Container Service Developer Guide*.

If the network mode is `host`, you can't run multiple instantiations of the same task on a single container instance when port mappings are used.

Docker for Windows uses different network modes than Docker for Linux. When you register a task definition with Windows containers, you must not specify a network mode.

For more information, see [Network settings](https://docs.docker.com/engine/reference/run/#network-settings) in the *Docker run reference*.


## `containerDefinitions = [[ ... ], ...]` -- *Required*
A list of container definitions in JSON format that describe the different containers that make up your task.
```
 containerDefinitions = [[
        "name" =>  ::String,
        "image" =>  ::String,
        "repositoryCredentials" =>  ["credentialsParameter" => <required> ::String],
        "cpu" =>  ::Int,
        "memory" =>  ::Int,
        "memoryReservation" =>  ::Int,
        "links" =>  [::String, ...],
        "portMappings" =>  [[
            "containerPort" =>  ::Int,
            "hostPort" =>  ::Int,
            "protocol" =>  "tcp" or "udp"
        ], ...],
        "essential" =>  ::Bool,
        "entryPoint" =>  [::String, ...],
        "command" =>  [::String, ...],
        "environment" =>  [[
            "name" =>  ::String,
            "value" =>  ::String
        ], ...],
        "mountPoints" =>  [[
            "sourceVolume" =>  ::String,
            "containerPath" =>  ::String,
            "readOnly" =>  ::Bool
        ], ...],
        "volumesFrom" =>  [[
            "sourceContainer" =>  ::String,
            "readOnly" =>  ::Bool
        ], ...],
        "linuxParameters" =>  [
            "capabilities" =>  [
                "add" =>  [::String, ...],
                "drop" =>  [::String, ...]
            ],
            "devices" =>  [[
                "hostPath" => <required> ::String,
                "containerPath" =>  ::String,
                "permissions" =>  ["read", "write" or "mknod", ...]
            ], ...],
            "initProcessEnabled" =>  ::Bool,
            "sharedMemorySize" =>  ::Int,
            "tmpfs" =>  [[
                "containerPath" => <required> ::String,
                "size" => <required> ::Int,
                "mountOptions" =>  [::String, ...]
            ], ...]
        ],
        "hostname" =>  ::String,
        "user" =>  ::String,
        "workingDirectory" =>  ::String,
        "disableNetworking" =>  ::Bool,
        "privileged" =>  ::Bool,
        "readonlyRootFilesystem" =>  ::Bool,
        "dnsServers" =>  [::String, ...],
        "dnsSearchDomains" =>  [::String, ...],
        "extraHosts" =>  [[
            "hostname" => <required> ::String,
            "ipAddress" => <required> ::String
        ], ...],
        "dockerSecurityOptions" =>  [::String, ...],
        "dockerLabels" =>  ::Dict{String,String},
        "ulimits" =>  [[
            "name" => <required> "core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending" or "stack",
            "softLimit" => <required> ::Int,
            "hardLimit" => <required> ::Int
        ], ...],
        "logConfiguration" =>  [
            "logDriver" => <required> "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs" or "splunk",
            "options" =>  ::Dict{String,String}
        ],
        "healthCheck" =>  [
            "command" => <required> [::String, ...],
            "interval" =>  ::Int,
            "timeout" =>  ::Int,
            "retries" =>  ::Int,
            "startPeriod" =>  ::Int
        ]
    ], ...]
```

## `volumes = [[ ... ], ...]`
A list of volume definitions in JSON format that containers in your task may use.
```
 volumes = [[
        "name" =>  ::String,
        "host" =>  ["sourcePath" =>  ::String]
    ], ...]
```

## `placementConstraints = [[ ... ], ...]`
An array of placement constraint objects to use for the task. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at run time).
```
 placementConstraints = [[
        "type" =>  "memberOf",
        "expression" =>  ::String
    ], ...]
```

## `requiresCompatibilities = ["EC2" or "FARGATE", ...]`
The launch type required by the task. If no value is specified, it defaults to `EC2`.


## `cpu = ::String`
The number of CPU units used by the task. It can be expressed as an integer using CPU units, for example `1024`, or as a string using vCPUs, for example `1 vCPU` or `1 vcpu`, in a task definition. String values are converted to an integer indicating the CPU units when the task definition is registered.

**Note**
> Task-level CPU and memory parameters are ignored for Windows containers. We recommend specifying container-level resources for Windows containers.

If using the EC2 launch type, this field is optional. Supported values are between `128` CPU units (`0.125` vCPUs) and `10240` CPU units (`10` vCPUs).

If using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of supported values for the `memory` parameter:

*   256 (.25 vCPU) - Available `memory` values: 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB)

*   512 (.5 vCPU) - Available `memory` values: 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)

*   1024 (1 vCPU) - Available `memory` values: 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)

*   2048 (2 vCPU) - Available `memory` values: Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)

*   4096 (4 vCPU) - Available `memory` values: Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)


## `memory = ::String`
The amount of memory (in MiB) used by the task. It can be expressed as an integer using MiB, for example `1024`, or as a string using GB, for example `1GB` or `1 GB`, in a task definition. String values are converted to an integer indicating the MiB when the task definition is registered.

**Note**
> Task-level CPU and memory parameters are ignored for Windows containers. We recommend specifying container-level resources for Windows containers.

If using the EC2 launch type, this field is optional.

If using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of supported values for the `cpu` parameter:

*   512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available `cpu` values: 256 (.25 vCPU)

*   1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available `cpu` values: 512 (.5 vCPU)

*   2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB) - Available `cpu` values: 1024 (1 vCPU)

*   Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) - Available `cpu` values: 2048 (2 vCPU)

*   Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) - Available `cpu` values: 4096 (4 vCPU)




# Returns

`RegisterTaskDefinitionResponse`

# Exceptions

`ServerException`, `ClientException` or `InvalidParameterException`.

# Example: To register a task definition

This example registers a task definition to the specified family.

Input:
```
[
    "containerDefinitions" => [
        [
            "name" => "sleep",
            "command" => [
                "sleep",
                "360"
            ],
            "cpu" => 10,
            "essential" => true,
            "image" => "busybox",
            "memory" => 10
        ]
    ],
    "family" => "sleep360",
    "taskRoleArn" => "",
    "volumes" => [

    ]
]
```

Output:
```
Dict(
    "taskDefinition" => Dict(
        "containerDefinitions" => [
            Dict(
                "name" => "sleep",
                "command" => [
                    "sleep",
                    "360"
                ],
                "cpu" => 10,
                "environment" => [

                ],
                "essential" => true,
                "image" => "busybox",
                "memory" => 10,
                "mountPoints" => [

                ],
                "portMappings" => [

                ],
                "volumesFrom" => [

                ]
            )
        ],
        "family" => "sleep360",
        "revision" => 1,
        "taskDefinitionArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:19",
        "volumes" => [

        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterTaskDefinition)
"""
@inline register_task_definition(aws::AWSConfig=default_aws_config(); args...) = register_task_definition(aws, args)

@inline register_task_definition(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "RegisterTaskDefinition", args)

@inline register_task_definition(args) = register_task_definition(default_aws_config(), args)


"""
    using AWSSDK.ECS.run_task
    run_task([::AWSConfig], arguments::Dict)
    run_task([::AWSConfig]; taskDefinition=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "RunTask", arguments::Dict)
    ecs([::AWSConfig], "RunTask", taskDefinition=, <keyword arguments>)

# RunTask Operation

Starts a new task using the specified task definition.

You can allow Amazon ECS to place tasks for you, or you can customize how Amazon ECS places tasks using placement constraints and placement strategies. For more information, see [Scheduling Tasks](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html) in the *Amazon Elastic Container Service Developer Guide*.

Alternatively, you can use [StartTask](@ref) to use your own scheduler or place tasks manually on specific container instances.

The Amazon ECS API follows an eventual consistency model, due to the distributed nature of the system supporting the API. This means that the result of an API command you run that affects your Amazon ECS resources might not be immediately visible to all subsequent commands you run. You should keep this in mind when you carry out an API command that immediately follows a previous API command.

To manage eventual consistency, you can do the following:

*   Confirm the state of the resource before you run a command to modify it. Run the DescribeTasks command using an exponential backoff algorithm to ensure that you allow enough time for the previous command to propagate through the system. To do this, run the DescribeTasks command repeatedly, starting with a couple of seconds of wait time and increasing gradually up to five minutes of wait time.

*   Add wait time between subsequent commands, even if the DescribeTasks command returns an accurate response. Apply an exponential backoff algorithm starting with a couple of seconds of wait time, and increase gradually up to about five minutes of wait time.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster on which to run your task. If you do not specify a cluster, the default cluster is assumed.


## `taskDefinition = ::String` -- *Required*
The `family` and `revision` (`family:revision`) or full ARN of the task definition to run. If a `revision` is not specified, the latest `ACTIVE` revision is used.


## `overrides = [ ... ]`
A list of container overrides in JSON format that specify the name of a container in the specified task definition and the overrides it should receive. You can override the default command for a container (that is specified in the task definition or Docker image) with a `command` override. You can also override existing environment variables (that are specified in the task definition or Docker image) on a container or add new environment variables to it with an `environment` override.

**Note**
> A total of 8192 characters are allowed for overrides. This limit includes the JSON formatting characters of the override structure.
```
 overrides = [
        "containerOverrides" =>  [[
            "name" =>  ::String,
            "command" =>  [::String, ...],
            "environment" =>  [[
                "name" =>  ::String,
                "value" =>  ::String
            ], ...],
            "cpu" =>  ::Int,
            "memory" =>  ::Int,
            "memoryReservation" =>  ::Int
        ], ...],
        "taskRoleArn" =>  ::String,
        "executionRoleArn" =>  ::String
    ]
```

## `count = ::Int`
The number of instantiations of the specified task to place on your cluster. You can specify up to 10 tasks per call.


## `startedBy = ::String`
An optional tag specified when a task is started. For example if you automatically trigger a task to run a batch process job, you could apply a unique identifier for that job to your task with the `startedBy` parameter. You can then identify which tasks belong to that job by filtering the results of a [ListTasks](@ref) call with the `startedBy` value. Up to 36 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.

If a task is started by an Amazon ECS service, then the `startedBy` parameter contains the deployment ID of the service that starts it.


## `group = ::String`
The name of the task group to associate with the task. The default value is the family name of the task definition (for example, family:my-family-name).


## `placementConstraints = [[ ... ], ...]`
An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at run time).
```
 placementConstraints = [[
        "type" =>  "distinctInstance" or "memberOf",
        "expression" =>  ::String
    ], ...]
```

## `placementStrategy = [[ ... ], ...]`
The placement strategy objects to use for the task. You can specify a maximum of five strategy rules per task.
```
 placementStrategy = [[
        "type" =>  "random", "spread" or "binpack",
        "field" =>  ::String
    ], ...]
```

## `launchType = "EC2" or "FARGATE"`
The launch type on which to run your task.


## `platformVersion = ::String`
The platform version on which to run your task. If one is not specified, the latest version is used by default.


## `networkConfiguration = ["awsvpcConfiguration" =>  [ ... ]]`
The network configuration for the task. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. For more information, see [Task Networking](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html) in the *Amazon Elastic Container Service Developer Guide*.
```
 networkConfiguration = ["awsvpcConfiguration" =>  [
            "subnets" => <required> [::String, ...],
            "securityGroups" =>  [::String, ...],
            "assignPublicIp" =>  "ENABLED" or "DISABLED"
        ]]
```



# Returns

`RunTaskResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException`, `ClusterNotFoundException`, `UnsupportedFeatureException`, `PlatformUnknownException`, `PlatformTaskDefinitionIncompatibilityException`, `AccessDeniedException` or `BlockedException`.

# Example: To run a task on your default cluster

This example runs the specified task definition on your default cluster.

Input:
```
[
    "cluster" => "default",
    "taskDefinition" => "sleep360:1"
]
```

Output:
```
Dict(
    "tasks" => [
        Dict(
            "containerInstanceArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/ffe3d344-77e2-476c-a4d0-bf560ad50acb",
            "containers" => [
                Dict(
                    "name" => "sleep",
                    "containerArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:container/58591c8e-be29-4ddf-95aa-ee459d4c59fd",
                    "lastStatus" => "PENDING",
                    "taskArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:task/a9f21ea7-c9f5-44b1-b8e6-b31f50ed33c0"
                )
            ],
            "desiredStatus" => "RUNNING",
            "lastStatus" => "PENDING",
            "overrides" => Dict(
                "containerOverrides" => [
                    Dict(
                        "name" => "sleep"
                    )
                ]
            ),
            "taskArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:task/a9f21ea7-c9f5-44b1-b8e6-b31f50ed33c0",
            "taskDefinitionArn" => "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:1"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RunTask)
"""
@inline run_task(aws::AWSConfig=default_aws_config(); args...) = run_task(aws, args)

@inline run_task(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "RunTask", args)

@inline run_task(args) = run_task(default_aws_config(), args)


"""
    using AWSSDK.ECS.start_task
    start_task([::AWSConfig], arguments::Dict)
    start_task([::AWSConfig]; taskDefinition=, containerInstances=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "StartTask", arguments::Dict)
    ecs([::AWSConfig], "StartTask", taskDefinition=, containerInstances=, <keyword arguments>)

# StartTask Operation

Starts a new task from the specified task definition on the specified container instance or instances.

Alternatively, you can use [RunTask](@ref) to place tasks for you. For more information, see [Scheduling Tasks](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html) in the *Amazon Elastic Container Service Developer Guide*.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster on which to start your task. If you do not specify a cluster, the default cluster is assumed.


## `taskDefinition = ::String` -- *Required*
The `family` and `revision` (`family:revision`) or full ARN of the task definition to start. If a `revision` is not specified, the latest `ACTIVE` revision is used.


## `overrides = [ ... ]`
A list of container overrides in JSON format that specify the name of a container in the specified task definition and the overrides it should receive. You can override the default command for a container (that is specified in the task definition or Docker image) with a `command` override. You can also override existing environment variables (that are specified in the task definition or Docker image) on a container or add new environment variables to it with an `environment` override.

**Note**
> A total of 8192 characters are allowed for overrides. This limit includes the JSON formatting characters of the override structure.
```
 overrides = [
        "containerOverrides" =>  [[
            "name" =>  ::String,
            "command" =>  [::String, ...],
            "environment" =>  [[
                "name" =>  ::String,
                "value" =>  ::String
            ], ...],
            "cpu" =>  ::Int,
            "memory" =>  ::Int,
            "memoryReservation" =>  ::Int
        ], ...],
        "taskRoleArn" =>  ::String,
        "executionRoleArn" =>  ::String
    ]
```

## `containerInstances = [::String, ...]` -- *Required*
The container instance IDs or full ARN entries for the container instances on which you would like to place your task. You can specify up to 10 container instances.


## `startedBy = ::String`
An optional tag specified when a task is started. For example if you automatically trigger a task to run a batch process job, you could apply a unique identifier for that job to your task with the `startedBy` parameter. You can then identify which tasks belong to that job by filtering the results of a [ListTasks](@ref) call with the `startedBy` value. Up to 36 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.

If a task is started by an Amazon ECS service, then the `startedBy` parameter contains the deployment ID of the service that starts it.


## `group = ::String`
The name of the task group to associate with the task. The default value is the family name of the task definition (for example, family:my-family-name).


## `networkConfiguration = ["awsvpcConfiguration" =>  [ ... ]]`
The VPC subnet and security group configuration for tasks that receive their own elastic network interface by using the `awsvpc` networking mode.
```
 networkConfiguration = ["awsvpcConfiguration" =>  [
            "subnets" => <required> [::String, ...],
            "securityGroups" =>  [::String, ...],
            "assignPublicIp" =>  "ENABLED" or "DISABLED"
        ]]
```



# Returns

`StartTaskResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException` or `ClusterNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StartTask)
"""
@inline start_task(aws::AWSConfig=default_aws_config(); args...) = start_task(aws, args)

@inline start_task(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "StartTask", args)

@inline start_task(args) = start_task(default_aws_config(), args)


"""
    using AWSSDK.ECS.stop_task
    stop_task([::AWSConfig], arguments::Dict)
    stop_task([::AWSConfig]; task=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "StopTask", arguments::Dict)
    ecs([::AWSConfig], "StopTask", task=, <keyword arguments>)

# StopTask Operation

Stops a running task.

When [StopTask](@ref) is called on a task, the equivalent of `docker stop` is issued to the containers running in the task. This results in a `SIGTERM` and a default 30-second timeout, after which `SIGKILL` is sent and the containers are forcibly stopped. If the container handles the `SIGTERM` gracefully and exits within 30 seconds from receiving it, no `SIGKILL` is sent.

**Note**
> The default 30-second timeout can be configured on the Amazon ECS container agent with the `ECS_CONTAINER_STOP_TIMEOUT` variable. For more information, see [Amazon ECS Container Agent Configuration](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html) in the *Amazon Elastic Container Service Developer Guide*.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to stop. If you do not specify a cluster, the default cluster is assumed.


## `task = ::String` -- *Required*
The task ID or full ARN entry of the task to stop.


## `reason = ::String`
An optional message specified when a task is stopped. For example, if you are using a custom scheduler, you can use this parameter to specify the reason for stopping the task here, and the message appears in subsequent [DescribeTasks](@ref) API operations on this task. Up to 255 characters are allowed in this message.




# Returns

`StopTaskResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException` or `ClusterNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StopTask)
"""
@inline stop_task(aws::AWSConfig=default_aws_config(); args...) = stop_task(aws, args)

@inline stop_task(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "StopTask", args)

@inline stop_task(args) = stop_task(default_aws_config(), args)


"""
    using AWSSDK.ECS.submit_container_state_change
    submit_container_state_change([::AWSConfig], arguments::Dict)
    submit_container_state_change([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "SubmitContainerStateChange", arguments::Dict)
    ecs([::AWSConfig], "SubmitContainerStateChange", <keyword arguments>)

# SubmitContainerStateChange Operation

 
**Note**
> This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.

Sent to acknowledge that a container changed states.

# Arguments

## `cluster = ::String`
The short name or full ARN of the cluster that hosts the container.


## `task = ::String`
The task ID or full Amazon Resource Name (ARN) of the task that hosts the container.


## `containerName = ::String`
The name of the container.


## `status = ::String`
The status of the state change request.


## `exitCode = ::Int`
The exit code returned for the state change request.


## `reason = ::String`
The reason for the state change request.


## `networkBindings = [[ ... ], ...]`
The network bindings of the container.
```
 networkBindings = [[
        "bindIP" =>  ::String,
        "containerPort" =>  ::Int,
        "hostPort" =>  ::Int,
        "protocol" =>  "tcp" or "udp"
    ], ...]
```



# Returns

`SubmitContainerStateChangeResponse`

# Exceptions

`ServerException`, `ClientException` or `AccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitContainerStateChange)
"""
@inline submit_container_state_change(aws::AWSConfig=default_aws_config(); args...) = submit_container_state_change(aws, args)

@inline submit_container_state_change(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "SubmitContainerStateChange", args)

@inline submit_container_state_change(args) = submit_container_state_change(default_aws_config(), args)


"""
    using AWSSDK.ECS.submit_task_state_change
    submit_task_state_change([::AWSConfig], arguments::Dict)
    submit_task_state_change([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "SubmitTaskStateChange", arguments::Dict)
    ecs([::AWSConfig], "SubmitTaskStateChange", <keyword arguments>)

# SubmitTaskStateChange Operation

 
**Note**
> This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.

Sent to acknowledge that a task changed states.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task.


## `task = ::String`
The task ID or full ARN of the task in the state change request.


## `status = ::String`
The status of the state change request.


## `reason = ::String`
The reason for the state change request.


## `containers = [[ ... ], ...]`
Any containers associated with the state change request.
```
 containers = [[
        "containerName" =>  ::String,
        "exitCode" =>  ::Int,
        "networkBindings" =>  [[
            "bindIP" =>  ::String,
            "containerPort" =>  ::Int,
            "hostPort" =>  ::Int,
            "protocol" =>  "tcp" or "udp"
        ], ...],
        "reason" =>  ::String,
        "status" =>  ::String
    ], ...]
```

## `attachments = [[ ... ], ...]`
Any attachments associated with the state change request.
```
 attachments = [[
        "attachmentArn" => <required> ::String,
        "status" => <required> ::String
    ], ...]
```

## `pullStartedAt = timestamp`
The Unix time stamp for when the container image pull began.


## `pullStoppedAt = timestamp`
The Unix time stamp for when the container image pull completed.


## `executionStoppedAt = timestamp`
The Unix time stamp for when the task execution stopped.




# Returns

`SubmitTaskStateChangeResponse`

# Exceptions

`ServerException`, `ClientException` or `AccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitTaskStateChange)
"""
@inline submit_task_state_change(aws::AWSConfig=default_aws_config(); args...) = submit_task_state_change(aws, args)

@inline submit_task_state_change(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "SubmitTaskStateChange", args)

@inline submit_task_state_change(args) = submit_task_state_change(default_aws_config(), args)


"""
    using AWSSDK.ECS.update_container_agent
    update_container_agent([::AWSConfig], arguments::Dict)
    update_container_agent([::AWSConfig]; containerInstance=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "UpdateContainerAgent", arguments::Dict)
    ecs([::AWSConfig], "UpdateContainerAgent", containerInstance=, <keyword arguments>)

# UpdateContainerAgent Operation

Updates the Amazon ECS container agent on a specified container instance. Updating the Amazon ECS container agent does not interrupt running tasks or services on the container instance. The process for updating the agent differs depending on whether your container instance was launched with the Amazon ECS-optimized AMI or another operating system.

`UpdateContainerAgent` requires the Amazon ECS-optimized AMI or Amazon Linux with the `ecs-init` service installed and running. For help updating the Amazon ECS container agent on other operating systems, see [Manually Updating the Amazon ECS Container Agent](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent) in the *Amazon Elastic Container Service Developer Guide*.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that your container instance is running on. If you do not specify a cluster, the default cluster is assumed.


## `containerInstance = ::String` -- *Required*
The container instance ID or full ARN entries for the container instance on which you would like to update the Amazon ECS container agent.




# Returns

`UpdateContainerAgentResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException`, `ClusterNotFoundException`, `UpdateInProgressException`, `NoUpdateAvailableException` or `MissingVersionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerAgent)
"""
@inline update_container_agent(aws::AWSConfig=default_aws_config(); args...) = update_container_agent(aws, args)

@inline update_container_agent(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "UpdateContainerAgent", args)

@inline update_container_agent(args) = update_container_agent(default_aws_config(), args)


"""
    using AWSSDK.ECS.update_container_instances_state
    update_container_instances_state([::AWSConfig], arguments::Dict)
    update_container_instances_state([::AWSConfig]; containerInstances=, status=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "UpdateContainerInstancesState", arguments::Dict)
    ecs([::AWSConfig], "UpdateContainerInstancesState", containerInstances=, status=, <keyword arguments>)

# UpdateContainerInstancesState Operation

Modifies the status of an Amazon ECS container instance.

You can change the status of a container instance to `DRAINING` to manually remove an instance from a cluster, for example to perform system updates, update the Docker daemon, or scale down the cluster size.

When you set a container instance to `DRAINING`, Amazon ECS prevents new tasks from being scheduled for placement on the container instance and replacement service tasks are started on other container instances in the cluster if the resources are available. Service tasks on the container instance that are in the `PENDING` state are stopped immediately.

Service tasks on the container instance that are in the `RUNNING` state are stopped and replaced according to the service's deployment configuration parameters, `minimumHealthyPercent` and `maximumPercent`. You can change the deployment configuration of your service using [UpdateService](@ref).

*   If `minimumHealthyPercent` is below 100%, the scheduler can ignore `desiredCount` temporarily during task replacement. For example, `desiredCount` is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks before starting two new tasks. If the minimum is 100%, the service scheduler can't remove existing tasks until the replacement tasks are considered healthy. Tasks for services that do not use a load balancer are considered healthy if they are in the `RUNNING` state. Tasks for services that use a load balancer are considered healthy if they are in the `RUNNING` state and the container instance they are hosted on is reported as healthy by the load balancer.

*   The `maximumPercent` parameter represents an upper limit on the number of running tasks during task replacement, which enables you to define the replacement batch size. For example, if `desiredCount` of four tasks, a maximum of 200% starts four new tasks before stopping the four tasks to be drained (provided that the cluster resources required to do this are available). If the maximum is 100%, then replacement tasks can't start until the draining tasks have stopped.

Any `PENDING` or `RUNNING` tasks that do not belong to a service are not affected; you must wait for them to finish or stop them manually.

A container instance has completed draining when it has no more `RUNNING` tasks. You can verify this using [ListTasks](@ref).

When you set a container instance to `ACTIVE`, the Amazon ECS scheduler can begin scheduling tasks on the instance again.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to update. If you do not specify a cluster, the default cluster is assumed.


## `containerInstances = [::String, ...]` -- *Required*
A list of container instance IDs or full ARN entries.


## `status = "ACTIVE" or "DRAINING"` -- *Required*
The container instance state with which to update the container instance.




# Returns

`UpdateContainerInstancesStateResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException` or `ClusterNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerInstancesState)
"""
@inline update_container_instances_state(aws::AWSConfig=default_aws_config(); args...) = update_container_instances_state(aws, args)

@inline update_container_instances_state(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "UpdateContainerInstancesState", args)

@inline update_container_instances_state(args) = update_container_instances_state(default_aws_config(), args)


"""
    using AWSSDK.ECS.update_service
    update_service([::AWSConfig], arguments::Dict)
    update_service([::AWSConfig]; service=, <keyword arguments>)

    using AWSCore.Services.ecs
    ecs([::AWSConfig], "UpdateService", arguments::Dict)
    ecs([::AWSConfig], "UpdateService", service=, <keyword arguments>)

# UpdateService Operation

Modifies the desired count, deployment configuration, network configuration, or task definition used in a service.

You can add to or subtract from the number of instantiations of a task definition in a service by specifying the cluster that the service is running in and a new `desiredCount` parameter.

If you have updated the Docker image of your application, you can create a new task definition with that image and deploy it to your service. The service scheduler uses the minimum healthy percent and maximum percent parameters (in the service's deployment configuration) to determine the deployment strategy.

**Note**
> If your updated Docker image uses the same tag as what is in the existing task definition for your service (for example, `my_image:latest`), you do not need to create a new revision of your task definition. You can update the service using the `forceNewDeployment` option. The new tasks launched by the deployment pull the current image/tag combination from your repository when they start.

You can also update the deployment configuration of a service. When a deployment is triggered by updating the task definition of a service, the service scheduler uses the deployment configuration parameters, `minimumHealthyPercent` and `maximumPercent`, to determine the deployment strategy.

*   If `minimumHealthyPercent` is below 100%, the scheduler can ignore `desiredCount` temporarily during a deployment. For example, if `desiredCount` is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks before starting two new tasks. Tasks for services that do not use a load balancer are considered healthy if they are in the `RUNNING` state. Tasks for services that use a load balancer are considered healthy if they are in the `RUNNING` state and the container instance they are hosted on is reported as healthy by the load balancer.

*   The `maximumPercent` parameter represents an upper limit on the number of running tasks during a deployment, which enables you to define the deployment batch size. For example, if `desiredCount` is four tasks, a maximum of 200% starts four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available).

When [UpdateService](@ref) stops a task during a deployment, the equivalent of `docker stop` is issued to the containers running in the task. This results in a `SIGTERM` and a 30-second timeout, after which `SIGKILL` is sent and the containers are forcibly stopped. If the container handles the `SIGTERM` gracefully and exits within 30 seconds from receiving it, no `SIGKILL` is sent.

When the service scheduler launches new tasks, it determines task placement in your cluster with the following logic:

*   Determine which of the container instances in your cluster can support your service's task definition (for example, they have the required CPU, memory, ports, and container instance attributes).

*   By default, the service scheduler attempts to balance tasks across Availability Zones in this manner (although you can choose a different placement strategy):

    *   Sort the valid container instances by the fewest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have zero, valid container instances in either zone B or C are considered optimal for placement.

    *   Place the new service task on a valid container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the fewest number of running tasks for this service.

When the service scheduler stops running tasks, it attempts to maintain balance across the Availability Zones in your cluster using the following logic:

*   Sort the container instances by the largest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have two, container instances in either zone B or C are considered optimal for termination.

*   Stop the task on a container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the largest number of running tasks for this service.

# Arguments

## `cluster = ::String`
The short name or full Amazon Resource Name (ARN) of the cluster that your service is running on. If you do not specify a cluster, the default cluster is assumed.


## `service = ::String` -- *Required*
The name of the service to update.


## `desiredCount = ::Int`
The number of instantiations of the task to place and keep running in your service.


## `taskDefinition = ::String`
The `family` and `revision` (`family:revision`) or full ARN of the task definition to run in your service. If a `revision` is not specified, the latest `ACTIVE` revision is used. If you modify the task definition with `UpdateService`, Amazon ECS spawns a task with the new version of the task definition and then stops an old task after the new version is running.


## `deploymentConfiguration = [ ... ]`
Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
```
 deploymentConfiguration = [
        "maximumPercent" =>  ::Int,
        "minimumHealthyPercent" =>  ::Int
    ]
```

## `networkConfiguration = ["awsvpcConfiguration" =>  [ ... ]]`
The network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own elastic network interface, and it is not supported for other network modes. For more information, see [Task Networking](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html) in the *Amazon Elastic Container Service Developer Guide*.

**Note**
> Updating a service to add a subnet to a list of existing subnets does not trigger a service deployment. For example, if your network configuration change is to keep the existing subnets and simply add another subnet to the network configuration, this does not trigger a new service deployment.
```
 networkConfiguration = ["awsvpcConfiguration" =>  [
            "subnets" => <required> [::String, ...],
            "securityGroups" =>  [::String, ...],
            "assignPublicIp" =>  "ENABLED" or "DISABLED"
        ]]
```

## `platformVersion = ::String`
The platform version that your service should run.


## `forceNewDeployment = ::Bool`
Whether to force a new deployment of the service. Deployments are not forced by default. You can use this option to trigger a new deployment with no service definition changes. For example, you can update a service's tasks to use a newer Docker image with the same image/tag combination (`my_image:latest`) or to roll Fargate tasks onto a newer platform version.


## `healthCheckGracePeriodSeconds = ::Int`
The period of time, in seconds, that the Amazon ECS service scheduler should ignore unhealthy Elastic Load Balancing target health checks after a task has first started. This is only valid if your service is configured to use a load balancer. If your service's tasks take a while to start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of up to 1,800 seconds during which the ECS service scheduler ignores the Elastic Load Balancing health check status. This grace period can prevent the ECS service scheduler from marking tasks as unhealthy and stopping them before they have time to come up.




# Returns

`UpdateServiceResponse`

# Exceptions

`ServerException`, `ClientException`, `InvalidParameterException`, `ClusterNotFoundException`, `ServiceNotFoundException`, `ServiceNotActiveException`, `PlatformUnknownException`, `PlatformTaskDefinitionIncompatibilityException` or `AccessDeniedException`.

# Example: To change the task definition used in a service

This example updates the my-http-service service to use the amazon-ecs-sample task definition.

Input:
```
[
    "service" => "my-http-service",
    "taskDefinition" => "amazon-ecs-sample"
]
```

Output:
```
Dict(

)
```

# Example: To change the number of tasks in a service

This example updates the desired count of the my-http-service service to 10.

Input:
```
[
    "desiredCount" => 10,
    "service" => "my-http-service"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateService)
"""
@inline update_service(aws::AWSConfig=default_aws_config(); args...) = update_service(aws, args)

@inline update_service(aws::AWSConfig, args) = AWSCore.Services.ecs(aws, "UpdateService", args)

@inline update_service(args) = update_service(default_aws_config(), args)




end # module ECS


#==============================================================================#
# End of file
#==============================================================================#
