#==============================================================================#
# Batch.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/batch-2016-08-10.normal.json
#==============================================================================#

__precompile__()

module Batch

using AWSCore


"""
    using AWSSDK.Batch.cancel_job
    cancel_job([::AWSConfig], arguments::Dict)
    cancel_job([::AWSConfig]; jobId=, reason=)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/canceljob", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/canceljob", jobId=, reason=)

# CancelJob Operation

Cancels a job in an AWS Batch job queue. Jobs that are in the `SUBMITTED`, `PENDING`, or `RUNNABLE` state are cancelled. Jobs that have progressed to `STARTING` or `RUNNING` are not cancelled (but the API operation still succeeds, even if no job is cancelled); these jobs must be terminated with the [TerminateJob](@ref) operation.

# Arguments

## `jobId = ::String` -- *Required*
The AWS Batch job ID of the job to cancel.


## `reason = ::String` -- *Required*
A message to attach to the job that explains the reason for canceling it. This message is returned by future [DescribeJobs](@ref) operations on the job. This message is also recorded in the AWS Batch activity logs.




# Returns

`CancelJobResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To cancel a job

This example cancels a job with the specified job ID.

Input:
```
[
    "jobId" => "1d828f65-7a4d-42e8-996d-3b900ed59dc4",
    "reason" => "Cancelling job."
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CancelJob)
"""
@inline cancel_job(aws::AWSConfig=default_aws_config(); args...) = cancel_job(aws, args)

@inline cancel_job(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/canceljob", args)

@inline cancel_job(args) = cancel_job(default_aws_config(), args)


"""
    using AWSSDK.Batch.create_compute_environment
    create_compute_environment([::AWSConfig], arguments::Dict)
    create_compute_environment([::AWSConfig]; computeEnvironmentName=, type=, serviceRole=, <keyword arguments>)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/createcomputeenvironment", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/createcomputeenvironment", computeEnvironmentName=, type=, serviceRole=, <keyword arguments>)

# CreateComputeEnvironment Operation

Creates an AWS Batch compute environment. You can create `MANAGED` or `UNMANAGED` compute environments.

In a managed compute environment, AWS Batch manages the compute resources within the environment, based on the compute resources that you specify. Instances launched into a managed compute environment use a recent, approved version of the Amazon ECS-optimized AMI. You can choose to use Amazon EC2 On-Demand Instances in your managed compute environment, or you can use Amazon EC2 Spot Instances that only launch when the Spot bid price is below a specified percentage of the On-Demand price.

In an unmanaged compute environment, you can manage your own compute resources. This provides more compute resource configuration options, such as using a custom AMI, but you must ensure that your AMI meets the Amazon ECS container instance AMI specification. For more information, see [Container Instance AMIs](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html) in the *Amazon Elastic Container Service Developer Guide*. After you have created your unmanaged compute environment, you can use the [DescribeComputeEnvironments](@ref) operation to find the Amazon ECS cluster that is associated with it and then manually launch your container instances into that Amazon ECS cluster. For more information, see [Launching an Amazon ECS Container Instance](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html) in the *Amazon Elastic Container Service Developer Guide*.

# Arguments

## `computeEnvironmentName = ::String` -- *Required*
The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.


## `type = "MANAGED" or "UNMANAGED"` -- *Required*
The type of the compute environment.


## `state = "ENABLED" or "DISABLED"`
The state of the compute environment. If the state is `ENABLED`, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.


## `computeResources = [ ... ]`
Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments.
```
 computeResources = [
        "type" => <required> "EC2" or "SPOT",
        "minvCpus" => <required> ::Int,
        "maxvCpus" => <required> ::Int,
        "desiredvCpus" =>  ::Int,
        "instanceTypes" => <required> [::String, ...],
        "imageId" =>  ::String,
        "subnets" => <required> [::String, ...],
        "securityGroupIds" => <required> [::String, ...],
        "ec2KeyPair" =>  ::String,
        "instanceRole" => <required> ::String,
        "tags" =>  ::Dict{String,String},
        "bidPercentage" =>  ::Int,
        "spotIamFleetRole" =>  ::String
    ]
```

## `serviceRole = ::String` -- *Required*
The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.

If your specified role has a path other than `/`, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path.

**Note**
> Depending on how you created your AWS Batch service role, its ARN may contain the `service-role` path prefix. When you only specify the name of the service role, AWS Batch assumes that your ARN does not use the `service-role` path prefix. Because of this, we recommend that you specify the full ARN of your service role when you create compute environments.




# Returns

`CreateComputeEnvironmentResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To create a managed EC2 compute environment

This example creates a managed compute environment with specific C4 instance types that are launched on demand. The compute environment is called C4OnDemand.

Input:
```
[
    "type" => "MANAGED",
    "computeEnvironmentName" => "C4OnDemand",
    "computeResources" => [
        "type" => "EC2",
        "desiredvCpus" => 48,
        "ec2KeyPair" => "id_rsa",
        "instanceRole" => "ecsInstanceRole",
        "instanceTypes" => [
            "c4.large",
            "c4.xlarge",
            "c4.2xlarge",
            "c4.4xlarge",
            "c4.8xlarge"
        ],
        "maxvCpus" => 128,
        "minvCpus" => 0,
        "securityGroupIds" => [
            "sg-cf5093b2"
        ],
        "subnets" => [
            "subnet-220c0e0a",
            "subnet-1a95556d",
            "subnet-978f6dce"
        ],
        "tags" => [
            "Name" => "Batch Instance - C4OnDemand"
        ]
    ],
    "serviceRole" => "arn:aws:iam::012345678910:role/AWSBatchServiceRole",
    "state" => "ENABLED"
]
```

Output:
```
Dict(
    "computeEnvironmentArn" => "arn:aws:batch:us-east-1:012345678910:compute-environment/C4OnDemand",
    "computeEnvironmentName" => "C4OnDemand"
)
```

# Example: To create a managed EC2 Spot compute environment

This example creates a managed compute environment with the M4 instance type that is launched when the Spot bid price is at or below 20% of the On-Demand price for the instance type. The compute environment is called M4Spot.

Input:
```
[
    "type" => "MANAGED",
    "computeEnvironmentName" => "M4Spot",
    "computeResources" => [
        "type" => "SPOT",
        "bidPercentage" => 20,
        "desiredvCpus" => 4,
        "ec2KeyPair" => "id_rsa",
        "instanceRole" => "ecsInstanceRole",
        "instanceTypes" => [
            "m4"
        ],
        "maxvCpus" => 128,
        "minvCpus" => 0,
        "securityGroupIds" => [
            "sg-cf5093b2"
        ],
        "spotIamFleetRole" => "arn:aws:iam::012345678910:role/aws-ec2-spot-fleet-role",
        "subnets" => [
            "subnet-220c0e0a",
            "subnet-1a95556d",
            "subnet-978f6dce"
        ],
        "tags" => [
            "Name" => "Batch Instance - M4Spot"
        ]
    ],
    "serviceRole" => "arn:aws:iam::012345678910:role/AWSBatchServiceRole",
    "state" => "ENABLED"
]
```

Output:
```
Dict(
    "computeEnvironmentArn" => "arn:aws:batch:us-east-1:012345678910:compute-environment/M4Spot",
    "computeEnvironmentName" => "M4Spot"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateComputeEnvironment)
"""
@inline create_compute_environment(aws::AWSConfig=default_aws_config(); args...) = create_compute_environment(aws, args)

@inline create_compute_environment(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/createcomputeenvironment", args)

@inline create_compute_environment(args) = create_compute_environment(default_aws_config(), args)


"""
    using AWSSDK.Batch.create_job_queue
    create_job_queue([::AWSConfig], arguments::Dict)
    create_job_queue([::AWSConfig]; jobQueueName=, priority=, computeEnvironmentOrder=, <keyword arguments>)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/createjobqueue", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/createjobqueue", jobQueueName=, priority=, computeEnvironmentOrder=, <keyword arguments>)

# CreateJobQueue Operation

Creates an AWS Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments.

You also set a priority to the job queue that determines the order in which the AWS Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.

# Arguments

## `jobQueueName = ::String` -- *Required*
The name of the job queue.


## `state = "ENABLED" or "DISABLED"`
The state of the job queue. If the job queue state is `ENABLED`, it is able to accept jobs.


## `priority = ::Int` -- *Required*
The priority of the job queue. Job queues with a higher priority (or a higher integer value for the `priority` parameter) are evaluated first when associated with same compute environment. Priority is determined in descending order, for example, a job queue with a priority value of `10` is given scheduling preference over a job queue with a priority value of `1`.


## `computeEnvironmentOrder = [[ ... ], ...]` -- *Required*
The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment should execute a given job. Compute environments must be in the `VALID` state before you can associate them with a job queue. You can associate up to three compute environments with a job queue.
```
 computeEnvironmentOrder = [[
        "order" => <required> ::Int,
        "computeEnvironment" => <required> ::String
    ], ...]
```



# Returns

`CreateJobQueueResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To create a job queue with a single compute environment

This example creates a job queue called LowPriority that uses the M4Spot compute environment.

Input:
```
[
    "computeEnvironmentOrder" => [
        [
            "computeEnvironment" => "M4Spot",
            "order" => 1
        ]
    ],
    "jobQueueName" => "LowPriority",
    "priority" => 1,
    "state" => "ENABLED"
]
```

Output:
```
Dict(
    "jobQueueArn" => "arn:aws:batch:us-east-1:012345678910:job-queue/LowPriority",
    "jobQueueName" => "LowPriority"
)
```

# Example: To create a job queue with multiple compute environments

This example creates a job queue called HighPriority that uses the C4OnDemand compute environment with an order of 1 and the M4Spot compute environment with an order of 2.

Input:
```
[
    "computeEnvironmentOrder" => [
        [
            "computeEnvironment" => "C4OnDemand",
            "order" => 1
        ],
        [
            "computeEnvironment" => "M4Spot",
            "order" => 2
        ]
    ],
    "jobQueueName" => "HighPriority",
    "priority" => 10,
    "state" => "ENABLED"
]
```

Output:
```
Dict(
    "jobQueueArn" => "arn:aws:batch:us-east-1:012345678910:job-queue/HighPriority",
    "jobQueueName" => "HighPriority"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateJobQueue)
"""
@inline create_job_queue(aws::AWSConfig=default_aws_config(); args...) = create_job_queue(aws, args)

@inline create_job_queue(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/createjobqueue", args)

@inline create_job_queue(args) = create_job_queue(default_aws_config(), args)


"""
    using AWSSDK.Batch.delete_compute_environment
    delete_compute_environment([::AWSConfig], arguments::Dict)
    delete_compute_environment([::AWSConfig]; computeEnvironment=)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/deletecomputeenvironment", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/deletecomputeenvironment", computeEnvironment=)

# DeleteComputeEnvironment Operation

Deletes an AWS Batch compute environment.

Before you can delete a compute environment, you must set its state to `DISABLED` with the [UpdateComputeEnvironment](@ref) API operation and disassociate it from any job queues with the [UpdateJobQueue](@ref) API operation.

# Arguments

## `computeEnvironment = ::String` -- *Required*
The name or Amazon Resource Name (ARN) of the compute environment to delete.




# Returns

`DeleteComputeEnvironmentResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To delete a compute environment

This example deletes the P2OnDemand compute environment.

Input:
```
[
    "computeEnvironment" => "P2OnDemand"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeleteComputeEnvironment)
"""
@inline delete_compute_environment(aws::AWSConfig=default_aws_config(); args...) = delete_compute_environment(aws, args)

@inline delete_compute_environment(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/deletecomputeenvironment", args)

@inline delete_compute_environment(args) = delete_compute_environment(default_aws_config(), args)


"""
    using AWSSDK.Batch.delete_job_queue
    delete_job_queue([::AWSConfig], arguments::Dict)
    delete_job_queue([::AWSConfig]; jobQueue=)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/deletejobqueue", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/deletejobqueue", jobQueue=)

# DeleteJobQueue Operation

Deletes the specified job queue. You must first disable submissions for a queue with the [UpdateJobQueue](@ref) operation. All jobs in the queue are terminated when you delete a job queue.

It is not necessary to disassociate compute environments from a queue before submitting a `DeleteJobQueue` request.

# Arguments

## `jobQueue = ::String` -- *Required*
The short name or full Amazon Resource Name (ARN) of the queue to delete.




# Returns

`DeleteJobQueueResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To delete a job queue

This example deletes the GPGPU job queue.

Input:
```
[
    "jobQueue" => "GPGPU"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeleteJobQueue)
"""
@inline delete_job_queue(aws::AWSConfig=default_aws_config(); args...) = delete_job_queue(aws, args)

@inline delete_job_queue(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/deletejobqueue", args)

@inline delete_job_queue(args) = delete_job_queue(default_aws_config(), args)


"""
    using AWSSDK.Batch.deregister_job_definition
    deregister_job_definition([::AWSConfig], arguments::Dict)
    deregister_job_definition([::AWSConfig]; jobDefinition=)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/deregisterjobdefinition", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/deregisterjobdefinition", jobDefinition=)

# DeregisterJobDefinition Operation

Deregisters an AWS Batch job definition.

# Arguments

## `jobDefinition = ::String` -- *Required*
The name and revision (`name:revision`) or full Amazon Resource Name (ARN) of the job definition to deregister.




# Returns

`DeregisterJobDefinitionResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To deregister a job definition

This example deregisters a job definition called sleep10.

Input:
```
[
    "jobDefinition" => "sleep10"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeregisterJobDefinition)
"""
@inline deregister_job_definition(aws::AWSConfig=default_aws_config(); args...) = deregister_job_definition(aws, args)

@inline deregister_job_definition(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/deregisterjobdefinition", args)

@inline deregister_job_definition(args) = deregister_job_definition(default_aws_config(), args)


"""
    using AWSSDK.Batch.describe_compute_environments
    describe_compute_environments([::AWSConfig], arguments::Dict)
    describe_compute_environments([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/describecomputeenvironments", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/describecomputeenvironments", <keyword arguments>)

# DescribeComputeEnvironments Operation

Describes one or more of your compute environments.

If you are using an unmanaged compute environment, you can use the `DescribeComputeEnvironment` operation to determine the `ecsClusterArn` that you should launch your Amazon ECS container instances into.

# Arguments

## `computeEnvironments = [::String, ...]`
A list of up to 100 compute environment names or full Amazon Resource Name (ARN) entries.


## `maxResults = ::Int`
The maximum number of cluster results returned by `DescribeComputeEnvironments` in paginated output. When this parameter is used, `DescribeComputeEnvironments` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeComputeEnvironments` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `DescribeComputeEnvironments` returns up to 100 results and a `nextToken` value if applicable.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `DescribeComputeEnvironments` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.




# Returns

`DescribeComputeEnvironmentsResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To describe a compute environment

This example describes the P2OnDemand compute environment.

Input:
```
[
    "computeEnvironments" => [
        "P2OnDemand"
    ]
]
```

Output:
```
Dict(
    "computeEnvironments" => [
        Dict(
            "type" => "MANAGED",
            "computeEnvironmentArn" => "arn:aws:batch:us-east-1:012345678910:compute-environment/P2OnDemand",
            "computeEnvironmentName" => "P2OnDemand",
            "computeResources" => Dict(
                "type" => "EC2",
                "desiredvCpus" => 48,
                "ec2KeyPair" => "id_rsa",
                "instanceRole" => "ecsInstanceRole",
                "instanceTypes" => [
                    "p2"
                ],
                "maxvCpus" => 128,
                "minvCpus" => 0,
                "securityGroupIds" => [
                    "sg-cf5093b2"
                ],
                "subnets" => [
                    "subnet-220c0e0a",
                    "subnet-1a95556d",
                    "subnet-978f6dce"
                ],
                "tags" => Dict(
                    "Name" => "Batch Instance - P2OnDemand"
                )
            ),
            "ecsClusterArn" => "arn:aws:ecs:us-east-1:012345678910:cluster/P2OnDemand_Batch_2c06f29d-d1fe-3a49-879d-42394c86effc",
            "serviceRole" => "arn:aws:iam::012345678910:role/AWSBatchServiceRole",
            "state" => "ENABLED",
            "status" => "VALID",
            "statusReason" => "ComputeEnvironment Healthy"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeComputeEnvironments)
"""
@inline describe_compute_environments(aws::AWSConfig=default_aws_config(); args...) = describe_compute_environments(aws, args)

@inline describe_compute_environments(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/describecomputeenvironments", args)

@inline describe_compute_environments(args) = describe_compute_environments(default_aws_config(), args)


"""
    using AWSSDK.Batch.describe_job_definitions
    describe_job_definitions([::AWSConfig], arguments::Dict)
    describe_job_definitions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/describejobdefinitions", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/describejobdefinitions", <keyword arguments>)

# DescribeJobDefinitions Operation

Describes a list of job definitions. You can specify a `status` (such as `ACTIVE`) to only return job definitions that match that status.

# Arguments

## `jobDefinitions = [::String, ...]`
A space-separated list of up to 100 job definition names or full Amazon Resource Name (ARN) entries.


## `maxResults = ::Int`
The maximum number of results returned by `DescribeJobDefinitions` in paginated output. When this parameter is used, `DescribeJobDefinitions` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeJobDefinitions` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `DescribeJobDefinitions` returns up to 100 results and a `nextToken` value if applicable.


## `jobDefinitionName = ::String`
The name of the job definition to describe.


## `status = ::String`
The status with which to filter job definitions.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `DescribeJobDefinitions` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.




# Returns

`DescribeJobDefinitionsResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To describe active job definitions

This example describes all of your active job definitions.

Input:
```
[
    "status" => "ACTIVE"
]
```

Output:
```
Dict(
    "jobDefinitions" => [
        Dict(
            "type" => "container",
            "containerProperties" => Dict(
                "command" => [
                    "sleep",
                    "60"
                ],
                "environment" => [

                ],
                "image" => "busybox",
                "memory" => 128,
                "mountPoints" => [

                ],
                "ulimits" => [

                ],
                "vcpus" => 1,
                "volumes" => [

                ]
            ),
            "jobDefinitionArn" => "arn:aws:batch:us-east-1:012345678910:job-definition/sleep60:1",
            "jobDefinitionName" => "sleep60",
            "revision" => 1,
            "status" => "ACTIVE"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobDefinitions)
"""
@inline describe_job_definitions(aws::AWSConfig=default_aws_config(); args...) = describe_job_definitions(aws, args)

@inline describe_job_definitions(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/describejobdefinitions", args)

@inline describe_job_definitions(args) = describe_job_definitions(default_aws_config(), args)


"""
    using AWSSDK.Batch.describe_job_queues
    describe_job_queues([::AWSConfig], arguments::Dict)
    describe_job_queues([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/describejobqueues", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/describejobqueues", <keyword arguments>)

# DescribeJobQueues Operation

Describes one or more of your job queues.

# Arguments

## `jobQueues = [::String, ...]`
A list of up to 100 queue names or full queue Amazon Resource Name (ARN) entries.


## `maxResults = ::Int`
The maximum number of results returned by `DescribeJobQueues` in paginated output. When this parameter is used, `DescribeJobQueues` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeJobQueues` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `DescribeJobQueues` returns up to 100 results and a `nextToken` value if applicable.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `DescribeJobQueues` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.




# Returns

`DescribeJobQueuesResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To describe a job queue

This example describes the HighPriority job queue.

Input:
```
[
    "jobQueues" => [
        "HighPriority"
    ]
]
```

Output:
```
Dict(
    "jobQueues" => [
        Dict(
            "computeEnvironmentOrder" => [
                Dict(
                    "computeEnvironment" => "arn:aws:batch:us-east-1:012345678910:compute-environment/C4OnDemand",
                    "order" => 1
                )
            ],
            "jobQueueArn" => "arn:aws:batch:us-east-1:012345678910:job-queue/HighPriority",
            "jobQueueName" => "HighPriority",
            "priority" => 1,
            "state" => "ENABLED",
            "status" => "VALID",
            "statusReason" => "JobQueue Healthy"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobQueues)
"""
@inline describe_job_queues(aws::AWSConfig=default_aws_config(); args...) = describe_job_queues(aws, args)

@inline describe_job_queues(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/describejobqueues", args)

@inline describe_job_queues(args) = describe_job_queues(default_aws_config(), args)


"""
    using AWSSDK.Batch.describe_jobs
    describe_jobs([::AWSConfig], arguments::Dict)
    describe_jobs([::AWSConfig]; jobs=)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/describejobs", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/describejobs", jobs=)

# DescribeJobs Operation

Describes a list of AWS Batch jobs.

# Arguments

## `jobs = [::String, ...]` -- *Required*
A space-separated list of up to 100 job IDs.




# Returns

`DescribeJobsResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To describe a specific job

This example describes a job with the specified job ID.

Input:
```
[
    "jobs" => [
        "24fa2d7a-64c4-49d2-8b47-f8da4fbde8e9"
    ]
]
```

Output:
```
Dict(
    "jobs" => [
        Dict(
            "container" => Dict(
                "command" => [
                    "sleep",
                    "60"
                ],
                "containerInstanceArn" => "arn:aws:ecs:us-east-1:012345678910:container-instance/5406d7cd-58bd-4b8f-9936-48d7c6b1526c",
                "environment" => [

                ],
                "exitCode" => 0,
                "image" => "busybox",
                "memory" => 128,
                "mountPoints" => [

                ],
                "ulimits" => [

                ],
                "vcpus" => 1,
                "volumes" => [

                ]
            ),
            "createdAt" => 1480460782010,
            "dependsOn" => [

            ],
            "jobDefinition" => "sleep60",
            "jobId" => "24fa2d7a-64c4-49d2-8b47-f8da4fbde8e9",
            "jobName" => "example",
            "jobQueue" => "arn:aws:batch:us-east-1:012345678910:job-queue/HighPriority",
            "parameters" => Dict(

            ),
            "startedAt" => 1480460816500,
            "status" => "SUCCEEDED",
            "stoppedAt" => 1480460880699
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobs)
"""
@inline describe_jobs(aws::AWSConfig=default_aws_config(); args...) = describe_jobs(aws, args)

@inline describe_jobs(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/describejobs", args)

@inline describe_jobs(args) = describe_jobs(default_aws_config(), args)


"""
    using AWSSDK.Batch.list_jobs
    list_jobs([::AWSConfig], arguments::Dict)
    list_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/listjobs", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/listjobs", <keyword arguments>)

# ListJobs Operation

Returns a list of task jobs for a specified job queue. You can filter the results by job status with the `jobStatus` parameter. If you do not specify a status, only `RUNNING` jobs are returned.

# Arguments

## `jobQueue = ::String`
The name or full Amazon Resource Name (ARN) of the job queue with which to list jobs.


## `arrayJobId = ::String`
The job ID for an array job. Specifying an array job ID with this parameter lists all child jobs from within the specified array.


## `jobStatus = "SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED" or "FAILED"`
The job status with which to filter jobs in the specified queue. If you do not specify a status, only `RUNNING` jobs are returned.


## `maxResults = ::Int`
The maximum number of results returned by `ListJobs` in paginated output. When this parameter is used, `ListJobs` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `ListJobs` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `ListJobs` returns up to 100 results and a `nextToken` value if applicable.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `ListJobs` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.




# Returns

`ListJobsResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To list running jobs

This example lists the running jobs in the HighPriority job queue.

Input:
```
[
    "jobQueue" => "HighPriority"
]
```

Output:
```
Dict(
    "jobSummaryList" => [
        Dict(
            "jobId" => "e66ff5fd-a1ff-4640-b1a2-0b0a142f49bb",
            "jobName" => "example"
        )
    ]
)
```

# Example: To list submitted jobs

This example lists jobs in the HighPriority job queue that are in the SUBMITTED job status.

Input:
```
[
    "jobQueue" => "HighPriority",
    "jobStatus" => "SUBMITTED"
]
```

Output:
```
Dict(
    "jobSummaryList" => [
        Dict(
            "jobId" => "68f0c163-fbd4-44e6-9fd1-25b14a434786",
            "jobName" => "example"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ListJobs)
"""
@inline list_jobs(aws::AWSConfig=default_aws_config(); args...) = list_jobs(aws, args)

@inline list_jobs(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/listjobs", args)

@inline list_jobs(args) = list_jobs(default_aws_config(), args)


"""
    using AWSSDK.Batch.register_job_definition
    register_job_definition([::AWSConfig], arguments::Dict)
    register_job_definition([::AWSConfig]; jobDefinitionName=, type=, <keyword arguments>)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/registerjobdefinition", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/registerjobdefinition", jobDefinitionName=, type=, <keyword arguments>)

# RegisterJobDefinition Operation

Registers an AWS Batch job definition.

# Arguments

## `jobDefinitionName = ::String` -- *Required*
The name of the job definition to register. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.


## `type = "container"` -- *Required*
The type of job definition.


## `parameters = ::Dict{String,String}`
Default parameter substitution placeholders to set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a `SubmitJob` request override any corresponding parameter defaults from the job definition.


## `containerProperties = [ ... ]`
An object with various properties specific for container-based jobs. This parameter is required if the `type` parameter is `container`.
```
 containerProperties = [
        "image" => <required> ::String,
        "vcpus" => <required> ::Int,
        "memory" => <required> ::Int,
        "command" =>  [::String, ...],
        "jobRoleArn" =>  ::String,
        "volumes" =>  [[
            "host" =>  ["sourcePath" =>  ::String],
            "name" =>  ::String
        ], ...],
        "environment" =>  [[
            "name" =>  ::String,
            "value" =>  ::String
        ], ...],
        "mountPoints" =>  [[
            "containerPath" =>  ::String,
            "readOnly" =>  ::Bool,
            "sourceVolume" =>  ::String
        ], ...],
        "readonlyRootFilesystem" =>  ::Bool,
        "privileged" =>  ::Bool,
        "ulimits" =>  [[
            "hardLimit" => <required> ::Int,
            "name" => <required> ::String,
            "softLimit" => <required> ::Int
        ], ...],
        "user" =>  ::String
    ]
```

## `retryStrategy = ["attempts" =>  ::Int]`
The retry strategy to use for failed jobs that are submitted with this job definition. Any retry strategy that is specified during a [SubmitJob](@ref) operation overrides the retry strategy defined here. If a job is terminated due to a timeout, it is not retried.


## `timeout = ["attemptDurationSeconds" =>  ::Int]`
The timeout configuration for jobs that are submitted with this job definition, after which AWS Batch terminates your jobs if they have not finished. If a job is terminated due to a timeout, it is not retried. The minimum value for the timeout is 60 seconds. Any timeout configuration that is specified during a [SubmitJob](@ref) operation overrides the timeout configuration defined here. For more information, see [Job Timeouts](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html) in the *Amazon Elastic Container Service Developer Guide*.




# Returns

`RegisterJobDefinitionResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To register a job definition

This example registers a job definition for a simple container job.

Input:
```
[
    "type" => "container",
    "containerProperties" => [
        "command" => [
            "sleep",
            "10"
        ],
        "image" => "busybox",
        "memory" => 128,
        "vcpus" => 1
    ],
    "jobDefinitionName" => "sleep10"
]
```

Output:
```
Dict(
    "jobDefinitionArn" => "arn:aws:batch:us-east-1:012345678910:job-definition/sleep10:1",
    "jobDefinitionName" => "sleep10",
    "revision" => 1
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/RegisterJobDefinition)
"""
@inline register_job_definition(aws::AWSConfig=default_aws_config(); args...) = register_job_definition(aws, args)

@inline register_job_definition(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/registerjobdefinition", args)

@inline register_job_definition(args) = register_job_definition(default_aws_config(), args)


"""
    using AWSSDK.Batch.submit_job
    submit_job([::AWSConfig], arguments::Dict)
    submit_job([::AWSConfig]; jobName=, jobQueue=, jobDefinition=, <keyword arguments>)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/submitjob", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/submitjob", jobName=, jobQueue=, jobDefinition=, <keyword arguments>)

# SubmitJob Operation

Submits an AWS Batch job from a job definition. Parameters specified during [SubmitJob](@ref) override parameters defined in the job definition.

# Arguments

## `jobName = ::String` -- *Required*
The name of the job. The first character must be alphanumeric, and up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.


## `jobQueue = ::String` -- *Required*
The job queue into which the job is submitted. You can specify either the name or the Amazon Resource Name (ARN) of the queue.


## `arrayProperties = ["size" =>  ::Int]`
The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. If you specify array properties for a job, it becomes an array job. For more information, see [Array Jobs](http://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html) in the *AWS Batch User Guide*.


## `dependsOn = [[ ... ], ...]`
A list of dependencies for the job. A job can depend upon a maximum of 20 jobs. You can specify a `SEQUENTIAL` type dependency without specifying a job ID for array jobs so that each child array job completes sequentially, starting at index 0. You can also specify an `N_TO_N` type dependency with a job ID for array jobs so that each index child of this job must wait for the corresponding index child of each dependency to complete before it can begin.
```
 dependsOn = [[
        "jobId" =>  ::String,
        "type" =>  "N_TO_N" or "SEQUENTIAL"
    ], ...]
```

## `jobDefinition = ::String` -- *Required*
The job definition used by this job. This value can be either a `name:revision` or the Amazon Resource Name (ARN) for the job definition.


## `parameters = ::Dict{String,String}`
Additional parameters passed to the job that replace parameter substitution placeholders that are set in the job definition. Parameters are specified as a key and value pair mapping. Parameters in a `SubmitJob` request override any corresponding parameter defaults from the job definition.


## `containerOverrides = [ ... ]`
A list of container overrides in JSON format that specify the name of a container in the specified job definition and the overrides it should receive. You can override the default command for a container (that is specified in the job definition or the Docker image) with a `command` override. You can also override existing environment variables (that are specified in the job definition or Docker image) on a container or add new environment variables to it with an `environment` override.
```
 containerOverrides = [
        "vcpus" =>  ::Int,
        "memory" =>  ::Int,
        "command" =>  [::String, ...],
        "environment" =>  [[
            "name" =>  ::String,
            "value" =>  ::String
        ], ...]
    ]
```

## `retryStrategy = ["attempts" =>  ::Int]`
The retry strategy to use for failed jobs from this [SubmitJob](@ref) operation. When a retry strategy is specified here, it overrides the retry strategy defined in the job definition.


## `timeout = ["attemptDurationSeconds" =>  ::Int]`
The timeout configuration for this [SubmitJob](@ref) operation. You can specify a timeout duration after which AWS Batch terminates your jobs if they have not finished. If a job is terminated due to a timeout, it is not retried. The minimum value for the timeout is 60 seconds. This configuration overrides any timeout configuration specified in the job definition. For array jobs, child jobs have the same timeout configuration as the parent job. For more information, see [Job Timeouts](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html) in the *Amazon Elastic Container Service Developer Guide*.




# Returns

`SubmitJobResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To submit a job to a queue

This example submits a simple container job called example to the HighPriority job queue.

Input:
```
[
    "jobDefinition" => "sleep60",
    "jobName" => "example",
    "jobQueue" => "HighPriority"
]
```

Output:
```
Dict(
    "jobId" => "876da822-4198-45f2-a252-6cea32512ea8",
    "jobName" => "example"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/SubmitJob)
"""
@inline submit_job(aws::AWSConfig=default_aws_config(); args...) = submit_job(aws, args)

@inline submit_job(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/submitjob", args)

@inline submit_job(args) = submit_job(default_aws_config(), args)


"""
    using AWSSDK.Batch.terminate_job
    terminate_job([::AWSConfig], arguments::Dict)
    terminate_job([::AWSConfig]; jobId=, reason=)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/terminatejob", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/terminatejob", jobId=, reason=)

# TerminateJob Operation

Terminates a job in a job queue. Jobs that are in the `STARTING` or `RUNNING` state are terminated, which causes them to transition to `FAILED`. Jobs that have not progressed to the `STARTING` state are cancelled.

# Arguments

## `jobId = ::String` -- *Required*
The AWS Batch job ID of the job to terminate.


## `reason = ::String` -- *Required*
A message to attach to the job that explains the reason for canceling it. This message is returned by future [DescribeJobs](@ref) operations on the job. This message is also recorded in the AWS Batch activity logs.




# Returns

`TerminateJobResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To terminate a job

This example terminates a job with the specified job ID.

Input:
```
[
    "jobId" => "61e743ed-35e4-48da-b2de-5c8333821c84",
    "reason" => "Terminating job."
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/TerminateJob)
"""
@inline terminate_job(aws::AWSConfig=default_aws_config(); args...) = terminate_job(aws, args)

@inline terminate_job(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/terminatejob", args)

@inline terminate_job(args) = terminate_job(default_aws_config(), args)


"""
    using AWSSDK.Batch.update_compute_environment
    update_compute_environment([::AWSConfig], arguments::Dict)
    update_compute_environment([::AWSConfig]; computeEnvironment=, <keyword arguments>)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/updatecomputeenvironment", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/updatecomputeenvironment", computeEnvironment=, <keyword arguments>)

# UpdateComputeEnvironment Operation

Updates an AWS Batch compute environment.

# Arguments

## `computeEnvironment = ::String` -- *Required*
The name or full Amazon Resource Name (ARN) of the compute environment to update.


## `state = "ENABLED" or "DISABLED"`
The state of the compute environment. Compute environments in the `ENABLED` state can accept jobs from a queue and scale in or out automatically based on the workload demand of its associated queues.


## `computeResources = [ ... ]`
Details of the compute resources managed by the compute environment. Required for a managed compute environment.
```
 computeResources = [
        "minvCpus" =>  ::Int,
        "maxvCpus" =>  ::Int,
        "desiredvCpus" =>  ::Int
    ]
```

## `serviceRole = ::String`
The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.

If your specified role has a path other than `/`, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path.

**Note**
> Depending on how you created your AWS Batch service role, its ARN may contain the `service-role` path prefix. When you only specify the name of the service role, AWS Batch assumes that your ARN does not use the `service-role` path prefix. Because of this, we recommend that you specify the full ARN of your service role when you create compute environments.




# Returns

`UpdateComputeEnvironmentResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To update a compute environment

This example disables the P2OnDemand compute environment so it can be deleted.

Input:
```
[
    "computeEnvironment" => "P2OnDemand",
    "state" => "DISABLED"
]
```

Output:
```
Dict(
    "computeEnvironmentArn" => "arn:aws:batch:us-east-1:012345678910:compute-environment/P2OnDemand",
    "computeEnvironmentName" => "P2OnDemand"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdateComputeEnvironment)
"""
@inline update_compute_environment(aws::AWSConfig=default_aws_config(); args...) = update_compute_environment(aws, args)

@inline update_compute_environment(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/updatecomputeenvironment", args)

@inline update_compute_environment(args) = update_compute_environment(default_aws_config(), args)


"""
    using AWSSDK.Batch.update_job_queue
    update_job_queue([::AWSConfig], arguments::Dict)
    update_job_queue([::AWSConfig]; jobQueue=, <keyword arguments>)

    using AWSCore.Services.batch
    batch([::AWSConfig], "POST", "/v1/updatejobqueue", arguments::Dict)
    batch([::AWSConfig], "POST", "/v1/updatejobqueue", jobQueue=, <keyword arguments>)

# UpdateJobQueue Operation

Updates a job queue.

# Arguments

## `jobQueue = ::String` -- *Required*
The name or the Amazon Resource Name (ARN) of the job queue.


## `state = "ENABLED" or "DISABLED"`
Describes the queue's ability to accept new jobs.


## `priority = ::Int`
The priority of the job queue. Job queues with a higher priority (or a higher integer value for the `priority` parameter) are evaluated first when associated with same compute environment. Priority is determined in descending order, for example, a job queue with a priority value of `10` is given scheduling preference over a job queue with a priority value of `1`.


## `computeEnvironmentOrder = [[ ... ], ...]`
Details the set of compute environments mapped to a job queue and their order relative to each other. This is one of the parameters used by the job scheduler to determine which compute environment should execute a given job.
```
 computeEnvironmentOrder = [[
        "order" => <required> ::Int,
        "computeEnvironment" => <required> ::String
    ], ...]
```



# Returns

`UpdateJobQueueResponse`

# Exceptions

`ClientException` or `ServerException`.

# Example: To update a job queue

This example disables a job queue so that it can be deleted.

Input:
```
[
    "jobQueue" => "GPGPU",
    "state" => "DISABLED"
]
```

Output:
```
Dict(
    "jobQueueArn" => "arn:aws:batch:us-east-1:012345678910:job-queue/GPGPU",
    "jobQueueName" => "GPGPU"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdateJobQueue)
"""
@inline update_job_queue(aws::AWSConfig=default_aws_config(); args...) = update_job_queue(aws, args)

@inline update_job_queue(aws::AWSConfig, args) = AWSCore.Services.batch(aws, "POST", "/v1/updatejobqueue", args)

@inline update_job_queue(args) = update_job_queue(default_aws_config(), args)




end # module Batch


#==============================================================================#
# End of file
#==============================================================================#
