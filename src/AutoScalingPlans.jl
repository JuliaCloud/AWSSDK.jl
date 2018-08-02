#==============================================================================#
# AutoScalingPlans.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/autoscaling-plans-2018-01-06.normal.json
#==============================================================================#

__precompile__()

module AutoScalingPlans

using AWSCore


"""
    using AWSSDK.AutoScalingPlans.create_scaling_plan
    create_scaling_plan([::AWSConfig], arguments::Dict)
    create_scaling_plan([::AWSConfig]; ScalingPlanName=, ApplicationSource=, ScalingInstructions=)

    using AWSCore.Services.autoscaling_plans
    autoscaling_plans([::AWSConfig], "CreateScalingPlan", arguments::Dict)
    autoscaling_plans([::AWSConfig], "CreateScalingPlan", ScalingPlanName=, ApplicationSource=, ScalingInstructions=)

# CreateScalingPlan Operation

Creates a scaling plan.

A scaling plan contains a set of instructions used to configure dynamic scaling for the scalable resources in your application. AWS Auto Scaling creates target tracking scaling policies based on the scaling instructions in your scaling plan.

# Arguments

## `ScalingPlanName = ::String` -- *Required*
The name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes.


## `ApplicationSource = [ ... ]` -- *Required*
A CloudFormation stack or set of tags. You can create one scaling plan per application source.
```
 ApplicationSource = [
        "CloudFormationStackARN" =>  ::String,
        "TagFilters" =>  [[
            "Key" =>  ::String,
            "Values" =>  [::String, ...]
        ], ...]
    ]
```

## `ScalingInstructions = [[ ... ], ...]` -- *Required*
The scaling instructions.
```
 ScalingInstructions = [[
        "ServiceNamespace" => <required> "autoscaling", "ecs", "ec2", "rds" or "dynamodb",
        "ResourceId" => <required> ::String,
        "ScalableDimension" => <required> "autoscaling:autoScalingGroup:DesiredCapacity", "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "rds:cluster:ReadReplicaCount", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits" or "dynamodb:index:WriteCapacityUnits",
        "MinCapacity" => <required> ::Int,
        "MaxCapacity" => <required> ::Int,
        "TargetTrackingConfigurations" => <required> [[
            "PredefinedScalingMetricSpecification" =>  [
                "PredefinedScalingMetricType" => <required> "ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn" or "EC2SpotFleetRequestAverageNetworkOut",
                "ResourceLabel" =>  ::String
            ],
            "CustomizedScalingMetricSpecification" =>  [
                "MetricName" => <required> ::String,
                "Namespace" => <required> ::String,
                "Dimensions" =>  [[
                    "Name" => <required> ::String,
                    "Value" => <required> ::String
                ], ...],
                "Statistic" => <required> "Average", "Minimum", "Maximum", "SampleCount" or "Sum",
                "Unit" =>  ::String
            ],
            "TargetValue" => <required> double,
            "DisableScaleIn" =>  ::Bool,
            "ScaleOutCooldown" =>  ::Int,
            "ScaleInCooldown" =>  ::Int,
            "EstimatedInstanceWarmup" =>  ::Int
        ], ...]
    ], ...]
```



# Returns

`CreateScalingPlanResponse`

# Exceptions

`ValidationException`, `LimitExceededException`, `ConcurrentUpdateException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/CreateScalingPlan)
"""
@inline create_scaling_plan(aws::AWSConfig=default_aws_config(); args...) = create_scaling_plan(aws, args)

@inline create_scaling_plan(aws::AWSConfig, args) = AWSCore.Services.autoscaling_plans(aws, "CreateScalingPlan", args)

@inline create_scaling_plan(args) = create_scaling_plan(default_aws_config(), args)


"""
    using AWSSDK.AutoScalingPlans.delete_scaling_plan
    delete_scaling_plan([::AWSConfig], arguments::Dict)
    delete_scaling_plan([::AWSConfig]; ScalingPlanName=, ScalingPlanVersion=)

    using AWSCore.Services.autoscaling_plans
    autoscaling_plans([::AWSConfig], "DeleteScalingPlan", arguments::Dict)
    autoscaling_plans([::AWSConfig], "DeleteScalingPlan", ScalingPlanName=, ScalingPlanVersion=)

# DeleteScalingPlan Operation

Deletes the specified scaling plan.

# Arguments

## `ScalingPlanName = ::String` -- *Required*
The name of the scaling plan.


## `ScalingPlanVersion = ::Int` -- *Required*
The version of the scaling plan.




# Returns

`DeleteScalingPlanResponse`

# Exceptions

`ValidationException`, `ObjectNotFoundException`, `ConcurrentUpdateException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DeleteScalingPlan)
"""
@inline delete_scaling_plan(aws::AWSConfig=default_aws_config(); args...) = delete_scaling_plan(aws, args)

@inline delete_scaling_plan(aws::AWSConfig, args) = AWSCore.Services.autoscaling_plans(aws, "DeleteScalingPlan", args)

@inline delete_scaling_plan(args) = delete_scaling_plan(default_aws_config(), args)


"""
    using AWSSDK.AutoScalingPlans.describe_scaling_plan_resources
    describe_scaling_plan_resources([::AWSConfig], arguments::Dict)
    describe_scaling_plan_resources([::AWSConfig]; ScalingPlanName=, ScalingPlanVersion=, <keyword arguments>)

    using AWSCore.Services.autoscaling_plans
    autoscaling_plans([::AWSConfig], "DescribeScalingPlanResources", arguments::Dict)
    autoscaling_plans([::AWSConfig], "DescribeScalingPlanResources", ScalingPlanName=, ScalingPlanVersion=, <keyword arguments>)

# DescribeScalingPlanResources Operation

Describes the scalable resources in the specified scaling plan.

# Arguments

## `ScalingPlanName = ::String` -- *Required*
The name of the scaling plan.


## `ScalingPlanVersion = ::Int` -- *Required*
The version of the scaling plan.


## `MaxResults = ::Int`
The maximum number of scalable resources to return. This value can be between 1 and 50. The default value is 50.


## `NextToken = ::String`
The token for the next set of results.




# Returns

`DescribeScalingPlanResourcesResponse`

# Exceptions

`ValidationException`, `InvalidNextTokenException`, `ConcurrentUpdateException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DescribeScalingPlanResources)
"""
@inline describe_scaling_plan_resources(aws::AWSConfig=default_aws_config(); args...) = describe_scaling_plan_resources(aws, args)

@inline describe_scaling_plan_resources(aws::AWSConfig, args) = AWSCore.Services.autoscaling_plans(aws, "DescribeScalingPlanResources", args)

@inline describe_scaling_plan_resources(args) = describe_scaling_plan_resources(default_aws_config(), args)


"""
    using AWSSDK.AutoScalingPlans.describe_scaling_plans
    describe_scaling_plans([::AWSConfig], arguments::Dict)
    describe_scaling_plans([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.autoscaling_plans
    autoscaling_plans([::AWSConfig], "DescribeScalingPlans", arguments::Dict)
    autoscaling_plans([::AWSConfig], "DescribeScalingPlans", <keyword arguments>)

# DescribeScalingPlans Operation

Describes the specified scaling plans or all of your scaling plans.

# Arguments

## `ScalingPlanNames = [::String, ...]`
The names of the scaling plans (up to 10). If you specify application sources, you cannot specify scaling plan names.


## `ScalingPlanVersion = ::Int`
The version of the scaling plan. If you specify a scaling plan version, you must also specify a scaling plan name.


## `ApplicationSources = [[ ... ], ...]`
The sources for the applications (up to 10). If you specify scaling plan names, you cannot specify application sources.
```
 ApplicationSources = [[
        "CloudFormationStackARN" =>  ::String,
        "TagFilters" =>  [[
            "Key" =>  ::String,
            "Values" =>  [::String, ...]
        ], ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of scalable resources to return. This value can be between 1 and 50. The default value is 50.


## `NextToken = ::String`
The token for the next set of results.




# Returns

`DescribeScalingPlansResponse`

# Exceptions

`ValidationException`, `InvalidNextTokenException`, `ConcurrentUpdateException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/DescribeScalingPlans)
"""
@inline describe_scaling_plans(aws::AWSConfig=default_aws_config(); args...) = describe_scaling_plans(aws, args)

@inline describe_scaling_plans(aws::AWSConfig, args) = AWSCore.Services.autoscaling_plans(aws, "DescribeScalingPlans", args)

@inline describe_scaling_plans(args) = describe_scaling_plans(default_aws_config(), args)


"""
    using AWSSDK.AutoScalingPlans.update_scaling_plan
    update_scaling_plan([::AWSConfig], arguments::Dict)
    update_scaling_plan([::AWSConfig]; ScalingPlanName=, ScalingPlanVersion=, <keyword arguments>)

    using AWSCore.Services.autoscaling_plans
    autoscaling_plans([::AWSConfig], "UpdateScalingPlan", arguments::Dict)
    autoscaling_plans([::AWSConfig], "UpdateScalingPlan", ScalingPlanName=, ScalingPlanVersion=, <keyword arguments>)

# UpdateScalingPlan Operation

Updates the scaling plan for the specified scaling plan.

You cannot update a scaling plan if it is in the process of being created, updated, or deleted.

# Arguments

## `ApplicationSource = [ ... ]`
A CloudFormation stack or set of tags.
```
 ApplicationSource = [
        "CloudFormationStackARN" =>  ::String,
        "TagFilters" =>  [[
            "Key" =>  ::String,
            "Values" =>  [::String, ...]
        ], ...]
    ]
```

## `ScalingPlanName = ::String` -- *Required*
The name of the scaling plan.


## `ScalingInstructions = [[ ... ], ...]`
The scaling instructions.
```
 ScalingInstructions = [[
        "ServiceNamespace" => <required> "autoscaling", "ecs", "ec2", "rds" or "dynamodb",
        "ResourceId" => <required> ::String,
        "ScalableDimension" => <required> "autoscaling:autoScalingGroup:DesiredCapacity", "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "rds:cluster:ReadReplicaCount", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits" or "dynamodb:index:WriteCapacityUnits",
        "MinCapacity" => <required> ::Int,
        "MaxCapacity" => <required> ::Int,
        "TargetTrackingConfigurations" => <required> [[
            "PredefinedScalingMetricSpecification" =>  [
                "PredefinedScalingMetricType" => <required> "ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn" or "EC2SpotFleetRequestAverageNetworkOut",
                "ResourceLabel" =>  ::String
            ],
            "CustomizedScalingMetricSpecification" =>  [
                "MetricName" => <required> ::String,
                "Namespace" => <required> ::String,
                "Dimensions" =>  [[
                    "Name" => <required> ::String,
                    "Value" => <required> ::String
                ], ...],
                "Statistic" => <required> "Average", "Minimum", "Maximum", "SampleCount" or "Sum",
                "Unit" =>  ::String
            ],
            "TargetValue" => <required> double,
            "DisableScaleIn" =>  ::Bool,
            "ScaleOutCooldown" =>  ::Int,
            "ScaleInCooldown" =>  ::Int,
            "EstimatedInstanceWarmup" =>  ::Int
        ], ...]
    ], ...]
```

## `ScalingPlanVersion = ::Int` -- *Required*
The version number.




# Returns

`UpdateScalingPlanResponse`

# Exceptions

`ValidationException`, `ConcurrentUpdateException`, `InternalServiceException` or `ObjectNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-plans-2018-01-06/UpdateScalingPlan)
"""
@inline update_scaling_plan(aws::AWSConfig=default_aws_config(); args...) = update_scaling_plan(aws, args)

@inline update_scaling_plan(aws::AWSConfig, args) = AWSCore.Services.autoscaling_plans(aws, "UpdateScalingPlan", args)

@inline update_scaling_plan(args) = update_scaling_plan(default_aws_config(), args)




end # module AutoScalingPlans


#==============================================================================#
# End of file
#==============================================================================#
