#==============================================================================#
# AutoScaling.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/autoscaling-2011-01-01.normal.json
#==============================================================================#

__precompile__()

module AutoScaling

using AWSCore


"""
    using AWSSDK.AutoScaling.attach_instances
    attach_instances([::AWSConfig], arguments::Dict)
    attach_instances([::AWSConfig]; AutoScalingGroupName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "AttachInstances", arguments::Dict)
    autoscaling([::AWSConfig], "AttachInstances", AutoScalingGroupName=, <keyword arguments>)

# AttachInstances Operation

Attaches one or more EC2 instances to the specified Auto Scaling group.

When you attach instances, Auto Scaling increases the desired capacity of the group by the number of instances being attached. If the number of instances being attached plus the desired capacity of the group exceeds the maximum size of the group, the operation fails.

If there is a Classic Load Balancer attached to your Auto Scaling group, the instances are also registered with the load balancer. If there are target groups attached to your Auto Scaling group, the instances are also registered with the target groups.

For more information, see [Attach EC2 Instances to Your Auto Scaling Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/attach-instance-asg.html) in the *Auto Scaling User Guide*.

# Arguments

## `InstanceIds = [::String, ...]`
The IDs of the instances. You can specify up to 20 instances.


## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.




# Exceptions

`ResourceContentionFault` or `ServiceLinkedRoleFailure`.

# Example: To attach an instance to an Auto Scaling group

This example attaches the specified instance to the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "InstanceIds" => [
        "i-93633f9b"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachInstances)
"""
@inline attach_instances(aws::AWSConfig=default_aws_config(); args...) = attach_instances(aws, args)

@inline attach_instances(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "AttachInstances", args)

@inline attach_instances(args) = attach_instances(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.attach_load_balancer_target_groups
    attach_load_balancer_target_groups([::AWSConfig], arguments::Dict)
    attach_load_balancer_target_groups([::AWSConfig]; AutoScalingGroupName=, TargetGroupARNs=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "AttachLoadBalancerTargetGroups", arguments::Dict)
    autoscaling([::AWSConfig], "AttachLoadBalancerTargetGroups", AutoScalingGroupName=, TargetGroupARNs=)

# AttachLoadBalancerTargetGroups Operation

Attaches one or more target groups to the specified Auto Scaling group.

To describe the target groups for an Auto Scaling group, use [DescribeLoadBalancerTargetGroups](@ref). To detach the target group from the Auto Scaling group, use [DetachLoadBalancerTargetGroups](@ref).

For more information, see [Attach a Load Balancer to Your Auto Scaling Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/attach-load-balancer-asg.html) in the *Auto Scaling User Guide*.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `TargetGroupARNs = [::String, ...]` -- *Required*
The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target groups.




# Returns

`AttachLoadBalancerTargetGroupsResultType`

# Exceptions

`ResourceContentionFault` or `ServiceLinkedRoleFailure`.

# Example: To attach a target group to an Auto Scaling group

This example attaches the specified target group to the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "TargetGroupARNs" => [
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancerTargetGroups)
"""
@inline attach_load_balancer_target_groups(aws::AWSConfig=default_aws_config(); args...) = attach_load_balancer_target_groups(aws, args)

@inline attach_load_balancer_target_groups(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "AttachLoadBalancerTargetGroups", args)

@inline attach_load_balancer_target_groups(args) = attach_load_balancer_target_groups(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.attach_load_balancers
    attach_load_balancers([::AWSConfig], arguments::Dict)
    attach_load_balancers([::AWSConfig]; AutoScalingGroupName=, LoadBalancerNames=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "AttachLoadBalancers", arguments::Dict)
    autoscaling([::AWSConfig], "AttachLoadBalancers", AutoScalingGroupName=, LoadBalancerNames=)

# AttachLoadBalancers Operation

Attaches one or more Classic Load Balancers to the specified Auto Scaling group.

To attach an Application Load Balancer instead, see [AttachLoadBalancerTargetGroups](@ref).

To describe the load balancers for an Auto Scaling group, use [DescribeLoadBalancers](@ref). To detach the load balancer from the Auto Scaling group, use [DetachLoadBalancers](@ref).

For more information, see [Attach a Load Balancer to Your Auto Scaling Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/attach-load-balancer-asg.html) in the *Auto Scaling User Guide*.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `LoadBalancerNames = [::String, ...]` -- *Required*
The names of the load balancers. You can specify up to 10 load balancers.




# Returns

`AttachLoadBalancersResultType`

# Exceptions

`ResourceContentionFault` or `ServiceLinkedRoleFailure`.

# Example: To attach a load balancer to an Auto Scaling group

This example attaches the specified load balancer to the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "LoadBalancerNames" => [
        "my-load-balancer"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancers)
"""
@inline attach_load_balancers(aws::AWSConfig=default_aws_config(); args...) = attach_load_balancers(aws, args)

@inline attach_load_balancers(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "AttachLoadBalancers", args)

@inline attach_load_balancers(args) = attach_load_balancers(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.complete_lifecycle_action
    complete_lifecycle_action([::AWSConfig], arguments::Dict)
    complete_lifecycle_action([::AWSConfig]; LifecycleHookName=, AutoScalingGroupName=, LifecycleActionResult=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "CompleteLifecycleAction", arguments::Dict)
    autoscaling([::AWSConfig], "CompleteLifecycleAction", LifecycleHookName=, AutoScalingGroupName=, LifecycleActionResult=, <keyword arguments>)

# CompleteLifecycleAction Operation

Completes the lifecycle action for the specified token or instance with the specified result.

This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:

1.  (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Auto Scaling launches or terminates instances.

2.  (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Auto Scaling to publish lifecycle notifications to the target.

3.  Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.

4.  If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.

5.  **If you finish before the timeout period ends, complete the lifecycle action.**

For more information, see [Auto Scaling Lifecycle](http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html) in the *Auto Scaling User Guide*.

# Arguments

## `LifecycleHookName = ::String` -- *Required*
The name of the lifecycle hook.


## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `LifecycleActionToken = ::String`
A universally unique identifier (UUID) that identifies a specific lifecycle action associated with an instance. Auto Scaling sends this token to the notification target you specified when you created the lifecycle hook.


## `LifecycleActionResult = ::String` -- *Required*
The action for the group to take. This parameter can be either `CONTINUE` or `ABANDON`.


## `InstanceId = ::String`
The ID of the instance.




# Returns

`CompleteLifecycleActionAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To complete the lifecycle action

This example notifies Auto Scaling that the specified lifecycle action is complete so that it can finish launching or terminating the instance.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "LifecycleActionResult" => "CONTINUE",
    "LifecycleActionToken" => "bcd2f1b8-9a78-44d3-8a7a-4dd07d7cf635",
    "LifecycleHookName" => "my-lifecycle-hook"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CompleteLifecycleAction)
"""
@inline complete_lifecycle_action(aws::AWSConfig=default_aws_config(); args...) = complete_lifecycle_action(aws, args)

@inline complete_lifecycle_action(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "CompleteLifecycleAction", args)

@inline complete_lifecycle_action(args) = complete_lifecycle_action(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.create_auto_scaling_group
    create_auto_scaling_group([::AWSConfig], arguments::Dict)
    create_auto_scaling_group([::AWSConfig]; AutoScalingGroupName=, MinSize=, MaxSize=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "CreateAutoScalingGroup", arguments::Dict)
    autoscaling([::AWSConfig], "CreateAutoScalingGroup", AutoScalingGroupName=, MinSize=, MaxSize=, <keyword arguments>)

# CreateAutoScalingGroup Operation

Creates an Auto Scaling group with the specified name and attributes.

If you exceed your maximum limit of Auto Scaling groups, the call fails. For information about viewing this limit, see [DescribeAccountLimits](@ref). For information about updating this limit, see [Auto Scaling Limits](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-account-limits.html) in the *Auto Scaling User Guide*.

For more information, see [Auto Scaling Groups](http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroup.html) in the *Auto Scaling User Guide*.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group. This name must be unique within the scope of your AWS account.


## `LaunchConfigurationName = ::String`
The name of the launch configuration. You must specify one of the following: a launch configuration, a launch template, or an EC2 instance.


## `LaunchTemplate = [ ... ]`
The launch template to use to launch instances. You must specify one of the following: a launch template, a launch configuration, or an EC2 instance.
```
 LaunchTemplate = [
        "LaunchTemplateId" =>  ::String,
        "LaunchTemplateName" =>  ::String,
        "Version" =>  ::String
    ]
```

## `InstanceId = ::String`
The ID of the instance used to create a launch configuration for the group. You must specify one of the following: an EC2 instance, a launch configuration, or a launch template.

When you specify an ID of an instance, Auto Scaling creates a new launch configuration and associates it with the group. This launch configuration derives its attributes from the specified instance, with the exception of the block device mapping.

For more information, see [Create an Auto Scaling Group Using an EC2 Instance](http://docs.aws.amazon.com/autoscaling/latest/userguide/create-asg-from-instance.html) in the *Auto Scaling User Guide*.


## `MinSize = ::Int` -- *Required*
The minimum size of the group.


## `MaxSize = ::Int` -- *Required*
The maximum size of the group.


## `DesiredCapacity = ::Int`
The number of EC2 instances that should be running in the group. This number must be greater than or equal to the minimum size of the group and less than or equal to the maximum size of the group. If you do not specify a desired capacity, the default is the minimum size of the group.


## `DefaultCooldown = ::Int`
The amount of time, in seconds, after a scaling activity completes before another scaling activity can start. The default is 300.

For more information, see [Auto Scaling Cooldowns](http://docs.aws.amazon.com/autoscaling/latest/userguide/Cooldown.html) in the *Auto Scaling User Guide*.


## `AvailabilityZones = [::String, ...]`
One or more Availability Zones for the group. This parameter is optional if you specify one or more subnets.


## `LoadBalancerNames = [::String, ...]`
One or more Classic Load Balancers. To specify an Application Load Balancer, use `TargetGroupARNs` instead.

For more information, see [Using a Load Balancer With an Auto Scaling Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/create-asg-from-instance.html) in the *Auto Scaling User Guide*.


## `TargetGroupARNs = [::String, ...]`
The Amazon Resource Names (ARN) of the target groups.


## `HealthCheckType = ::String`
The service to use for the health checks. The valid values are `EC2` and `ELB`.

By default, health checks use Amazon EC2 instance status checks to determine the health of an instance. For more information, see [Health Checks](http://docs.aws.amazon.com/autoscaling/latest/userguide/healthcheck.html) in the *Auto Scaling User Guide*.


## `HealthCheckGracePeriod = ::Int`
The amount of time, in seconds, that Auto Scaling waits before checking the health status of an EC2 instance that has come into service. During this time, any health check failures for the instance are ignored. The default is 0.

This parameter is required if you are adding an `ELB` health check.

For more information, see [Health Checks](http://docs.aws.amazon.com/autoscaling/latest/userguide/healthcheck.html) in the *Auto Scaling User Guide*.


## `PlacementGroup = ::String`
The name of the placement group into which you'll launch your instances, if any. For more information, see [Placement Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `VPCZoneIdentifier = ::String`
A comma-separated list of subnet identifiers for your virtual private cloud (VPC).

If you specify subnets and Availability Zones with this call, ensure that the subnets' Availability Zones match the Availability Zones specified.

For more information, see [Launching Auto Scaling Instances in a VPC](http://docs.aws.amazon.com/autoscaling/latest/userguide/asg-in-vpc.html) in the *Auto Scaling User Guide*.


## `TerminationPolicies = [::String, ...]`
One or more termination policies used to select the instance to terminate. These policies are executed in the order that they are listed.

For more information, see [Controlling Which Instances Auto Scaling Terminates During Scale In](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-termination.html) in the *Auto Scaling User Guide*.


## `NewInstancesProtectedFromScaleIn = ::Bool`
Indicates whether newly launched instances are protected from termination by Auto Scaling when scaling in.


## `LifecycleHookSpecificationList = [[ ... ], ...]`
One or more lifecycle hooks.
```
 LifecycleHookSpecificationList = [[
        "LifecycleHookName" => <required> ::String,
        "LifecycleTransition" => <required> ::String,
        "NotificationMetadata" =>  ::String,
        "HeartbeatTimeout" =>  ::Int,
        "DefaultResult" =>  ::String,
        "NotificationTargetARN" =>  ::String,
        "RoleARN" =>  ::String
    ], ...]
```

## `Tags = [[ ... ], ...]`
One or more tags.

For more information, see [Tagging Auto Scaling Groups and Instances](http://docs.aws.amazon.com/autoscaling/latest/userguide/autoscaling-tagging.html) in the *Auto Scaling User Guide*.
```
 Tags = [[
        "ResourceId" =>  ::String,
        "ResourceType" =>  ::String,
        "Key" => <required> ::String,
        "Value" =>  ::String,
        "PropagateAtLaunch" =>  ::Bool
    ], ...]
```

## `ServiceLinkedRoleARN = ::String`
The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf. By default, Auto Scaling uses a service-linked role named AWSServiceRoleForAutoScaling, which it creates if it does not exist.




# Exceptions

`AlreadyExistsFault`, `LimitExceededFault`, `ResourceContentionFault` or `ServiceLinkedRoleFailure`.

# Example: To create an Auto Scaling group

This example creates an Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "LaunchConfigurationName" => "my-launch-config",
    "MaxSize" => 3,
    "MinSize" => 1,
    "VPCZoneIdentifier" => "subnet-4176792c"
]
```

# Example: To create an Auto Scaling group with an attached load balancer

This example creates an Auto Scaling group and attaches the specified Classic Load Balancer.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "AvailabilityZones" => [
        "us-west-2c"
    ],
    "HealthCheckGracePeriod" => 120,
    "HealthCheckType" => "ELB",
    "LaunchConfigurationName" => "my-launch-config",
    "LoadBalancerNames" => [
        "my-load-balancer"
    ],
    "MaxSize" => 3,
    "MinSize" => 1
]
```

# Example: To create an Auto Scaling group with an attached target group

This example creates an Auto Scaling group and attaches the specified target group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "HealthCheckGracePeriod" => 120,
    "HealthCheckType" => "ELB",
    "LaunchConfigurationName" => "my-launch-config",
    "MaxSize" => 3,
    "MinSize" => 1,
    "TargetGroupARNs" => [
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    ],
    "VPCZoneIdentifier" => "subnet-4176792c, subnet-65ea5f08"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateAutoScalingGroup)
"""
@inline create_auto_scaling_group(aws::AWSConfig=default_aws_config(); args...) = create_auto_scaling_group(aws, args)

@inline create_auto_scaling_group(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "CreateAutoScalingGroup", args)

@inline create_auto_scaling_group(args) = create_auto_scaling_group(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.create_launch_configuration
    create_launch_configuration([::AWSConfig], arguments::Dict)
    create_launch_configuration([::AWSConfig]; LaunchConfigurationName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "CreateLaunchConfiguration", arguments::Dict)
    autoscaling([::AWSConfig], "CreateLaunchConfiguration", LaunchConfigurationName=, <keyword arguments>)

# CreateLaunchConfiguration Operation

Creates a launch configuration.

If you exceed your maximum limit of launch configurations, the call fails. For information about viewing this limit, see [DescribeAccountLimits](@ref). For information about updating this limit, see [Auto Scaling Limits](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-account-limits.html) in the *Auto Scaling User Guide*.

For more information, see [Launch Configurations](http://docs.aws.amazon.com/autoscaling/latest/userguide/LaunchConfiguration.html) in the *Auto Scaling User Guide*.

# Arguments

## `LaunchConfigurationName = ::String` -- *Required*
The name of the launch configuration. This name must be unique within the scope of your AWS account.


## `ImageId = ::String`
The ID of the Amazon Machine Image (AMI) to use to launch your EC2 instances.

If you do not specify `InstanceId`, you must specify `ImageId`.

For more information, see [Finding an AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `KeyName = ::String`
The name of the key pair. For more information, see [Amazon EC2 Key Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `SecurityGroups = [::String, ...]`
One or more security groups with which to associate the instances.

If your instances are launched in EC2-Classic, you can either specify security group names or the security group IDs. For more information about security groups for EC2-Classic, see [Amazon EC2 Security Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html) in the *Amazon Elastic Compute Cloud User Guide*.

If your instances are launched into a VPC, specify security group IDs. For more information, see [Security Groups for Your VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html) in the *Amazon Virtual Private Cloud User Guide*.


## `ClassicLinkVPCId = ::String`
The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. This parameter is supported only if you are launching EC2-Classic instances. For more information, see [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `ClassicLinkVPCSecurityGroups = [::String, ...]`
The IDs of one or more security groups for the specified ClassicLink-enabled VPC. This parameter is required if you specify a ClassicLink-enabled VPC, and is not supported otherwise. For more information, see [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `UserData = ::String`
The user data to make available to the launched EC2 instances. For more information, see [Instance Metadata and User Data](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `InstanceId = ::String`
The ID of the instance to use to create the launch configuration. The new launch configuration derives attributes from the instance, with the exception of the block device mapping.

If you do not specify `InstanceId`, you must specify both `ImageId` and `InstanceType`.

To create a launch configuration with a block device mapping or override any other instance attributes, specify them as part of the same request.

For more information, see [Create a Launch Configuration Using an EC2 Instance](http://docs.aws.amazon.com/autoscaling/latest/userguide/create-lc-with-instanceID.html) in the *Auto Scaling User Guide*.


## `InstanceType = ::String`
The instance type of the EC2 instance.

If you do not specify `InstanceId`, you must specify `InstanceType`.

For information about available instance types, see [Available Instance Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes) in the *Amazon Elastic Compute Cloud User Guide.*


## `KernelId = ::String`
The ID of the kernel associated with the AMI.


## `RamdiskId = ::String`
The ID of the RAM disk associated with the AMI.


## `BlockDeviceMappings = [[ ... ], ...]`
One or more mappings that specify how block devices are exposed to the instance. For more information, see [Block Device Mapping](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html) in the *Amazon Elastic Compute Cloud User Guide*.
```
 BlockDeviceMappings = [[
        "VirtualName" =>  ::String,
        "DeviceName" => <required> ::String,
        "Ebs" =>  [
            "SnapshotId" =>  ::String,
            "VolumeSize" =>  ::Int,
            "VolumeType" =>  ::String,
            "DeleteOnTermination" =>  ::Bool,
            "Iops" =>  ::Int,
            "Encrypted" =>  ::Bool
        ],
        "NoDevice" =>  ::Bool
    ], ...]
```

## `InstanceMonitoring = ["Enabled" =>  ::Bool]`
Enables detailed monitoring (`true`) or basic monitoring (`false`) for the Auto Scaling instances. The default is `true`.


## `SpotPrice = ::String`
The maximum hourly price to be paid for any Spot Instance launched to fulfill the request. Spot Instances are launched when the price you specify exceeds the current Spot market price. For more information, see [Launching Spot Instances in Your Auto Scaling Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/US-SpotInstances.html) in the *Auto Scaling User Guide*.


## `IamInstanceProfile = ::String`
The name or the Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instance.

EC2 instances launched with an IAM role will automatically have AWS security credentials available. You can use IAM roles with Auto Scaling to automatically enable applications running on your EC2 instances to securely access other AWS resources. For more information, see [Launch Auto Scaling Instances with an IAM Role](http://docs.aws.amazon.com/autoscaling/latest/userguide/us-iam-role.html) in the *Auto Scaling User Guide*.


## `EbsOptimized = ::Bool`
Indicates whether the instance is optimized for Amazon EBS I/O. By default, the instance is not optimized for EBS I/O. The optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization is not available with all instance types. Additional usage charges apply. For more information, see [Amazon EBS-Optimized Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `AssociatePublicIpAddress = ::Bool`
Used for groups that launch instances into a virtual private cloud (VPC). Specifies whether to assign a public IP address to each instance. For more information, see [Launching Auto Scaling Instances in a VPC](http://docs.aws.amazon.com/autoscaling/latest/userguide/asg-in-vpc.html) in the *Auto Scaling User Guide*.

If you specify this parameter, be sure to specify at least one subnet when you create your group.

Default: If the instance is launched into a default subnet, the default is to assign a public IP address. If the instance is launched into a nondefault subnet, the default is not to assign a public IP address.


## `PlacementTenancy = ::String`
The tenancy of the instance. An instance with a tenancy of `dedicated` runs on single-tenant hardware and can only be launched into a VPC.

You must set the value of this parameter to `dedicated` if want to launch Dedicated Instances into a shared tenancy VPC (VPC with instance placement tenancy attribute set to `default`).

If you specify this parameter, be sure to specify at least one subnet when you create your group.

For more information, see [Launching Auto Scaling Instances in a VPC](http://docs.aws.amazon.com/autoscaling/latest/userguide/asg-in-vpc.html) in the *Auto Scaling User Guide*.

Valid values: `default` | `dedicated`




# Exceptions

`AlreadyExistsFault`, `LimitExceededFault` or `ResourceContentionFault`.

# Example: To create a launch configuration

This example creates a launch configuration.

Input:
```
[
    "IamInstanceProfile" => "my-iam-role",
    "ImageId" => "ami-12345678",
    "InstanceType" => "m3.medium",
    "LaunchConfigurationName" => "my-launch-config",
    "SecurityGroups" => [
        "sg-eb2af88e"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateLaunchConfiguration)
"""
@inline create_launch_configuration(aws::AWSConfig=default_aws_config(); args...) = create_launch_configuration(aws, args)

@inline create_launch_configuration(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "CreateLaunchConfiguration", args)

@inline create_launch_configuration(args) = create_launch_configuration(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.create_or_update_tags
    create_or_update_tags([::AWSConfig], arguments::Dict)
    create_or_update_tags([::AWSConfig]; Tags=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "CreateOrUpdateTags", arguments::Dict)
    autoscaling([::AWSConfig], "CreateOrUpdateTags", Tags=)

# CreateOrUpdateTags Operation

Creates or updates tags for the specified Auto Scaling group.

When you specify a tag with a key that already exists, the operation overwrites the previous tag definition, and you do not get an error message.

For more information, see [Tagging Auto Scaling Groups and Instances](http://docs.aws.amazon.com/autoscaling/latest/userguide/autoscaling-tagging.html) in the *Auto Scaling User Guide*.

# Arguments

## `Tags = [[ ... ], ...]` -- *Required*
One or more tags.
```
 Tags = [[
        "ResourceId" =>  ::String,
        "ResourceType" =>  ::String,
        "Key" => <required> ::String,
        "Value" =>  ::String,
        "PropagateAtLaunch" =>  ::Bool
    ], ...]
```



# Exceptions

`LimitExceededFault`, `AlreadyExistsFault`, `ResourceContentionFault` or `ResourceInUseFault`.

# Example: To create or update tags for an Auto Scaling group

This example adds two tags to the specified Auto Scaling group.

Input:
```
[
    "Tags" => [
        [
            "Key" => "Role",
            "PropagateAtLaunch" => true,
            "ResourceId" => "my-auto-scaling-group",
            "ResourceType" => "auto-scaling-group",
            "Value" => "WebServer"
        ],
        [
            "Key" => "Dept",
            "PropagateAtLaunch" => true,
            "ResourceId" => "my-auto-scaling-group",
            "ResourceType" => "auto-scaling-group",
            "Value" => "Research"
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateOrUpdateTags)
"""
@inline create_or_update_tags(aws::AWSConfig=default_aws_config(); args...) = create_or_update_tags(aws, args)

@inline create_or_update_tags(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "CreateOrUpdateTags", args)

@inline create_or_update_tags(args) = create_or_update_tags(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.delete_auto_scaling_group
    delete_auto_scaling_group([::AWSConfig], arguments::Dict)
    delete_auto_scaling_group([::AWSConfig]; AutoScalingGroupName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DeleteAutoScalingGroup", arguments::Dict)
    autoscaling([::AWSConfig], "DeleteAutoScalingGroup", AutoScalingGroupName=, <keyword arguments>)

# DeleteAutoScalingGroup Operation

Deletes the specified Auto Scaling group.

If the group has instances or scaling activities in progress, you must specify the option to force the deletion in order for it to succeed.

If the group has policies, deleting the group deletes the policies, the underlying alarm actions, and any alarm that no longer has an associated action.

To remove instances from the Auto Scaling group before deleting it, call [DetachInstances](@ref) with the list of instances and the option to decrement the desired capacity so that Auto Scaling does not launch replacement instances.

To terminate all instances before deleting the Auto Scaling group, call [UpdateAutoScalingGroup](@ref) and set the minimum size and desired capacity of the Auto Scaling group to zero.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `ForceDelete = ::Bool`
Specifies that the group will be deleted along with all instances associated with the group, without waiting for all instances to be terminated. This parameter also deletes any lifecycle actions associated with the group.




# Exceptions

`ScalingActivityInProgressFault`, `ResourceInUseFault` or `ResourceContentionFault`.

# Example: To delete an Auto Scaling group

This example deletes the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group"
]
```

# Example: To delete an Auto Scaling group and all its instances

This example deletes the specified Auto Scaling group and all its instances.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "ForceDelete" => true
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteAutoScalingGroup)
"""
@inline delete_auto_scaling_group(aws::AWSConfig=default_aws_config(); args...) = delete_auto_scaling_group(aws, args)

@inline delete_auto_scaling_group(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DeleteAutoScalingGroup", args)

@inline delete_auto_scaling_group(args) = delete_auto_scaling_group(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.delete_launch_configuration
    delete_launch_configuration([::AWSConfig], arguments::Dict)
    delete_launch_configuration([::AWSConfig]; LaunchConfigurationName=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DeleteLaunchConfiguration", arguments::Dict)
    autoscaling([::AWSConfig], "DeleteLaunchConfiguration", LaunchConfigurationName=)

# DeleteLaunchConfiguration Operation

Deletes the specified launch configuration.

The launch configuration must not be attached to an Auto Scaling group. When this call completes, the launch configuration is no longer available for use.

# Arguments

## `LaunchConfigurationName = ::String` -- *Required*
The name of the launch configuration.




# Exceptions

`ResourceInUseFault` or `ResourceContentionFault`.

# Example: To delete a launch configuration

This example deletes the specified launch configuration.

Input:
```
[
    "LaunchConfigurationName" => "my-launch-config"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteLaunchConfiguration)
"""
@inline delete_launch_configuration(aws::AWSConfig=default_aws_config(); args...) = delete_launch_configuration(aws, args)

@inline delete_launch_configuration(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DeleteLaunchConfiguration", args)

@inline delete_launch_configuration(args) = delete_launch_configuration(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.delete_lifecycle_hook
    delete_lifecycle_hook([::AWSConfig], arguments::Dict)
    delete_lifecycle_hook([::AWSConfig]; LifecycleHookName=, AutoScalingGroupName=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DeleteLifecycleHook", arguments::Dict)
    autoscaling([::AWSConfig], "DeleteLifecycleHook", LifecycleHookName=, AutoScalingGroupName=)

# DeleteLifecycleHook Operation

Deletes the specified lifecycle hook.

If there are any outstanding lifecycle actions, they are completed first (`ABANDON` for launching instances, `CONTINUE` for terminating instances).

# Arguments

## `LifecycleHookName = ::String` -- *Required*
The name of the lifecycle hook.


## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.




# Returns

`DeleteLifecycleHookAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To delete a lifecycle hook

This example deletes the specified lifecycle hook.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "LifecycleHookName" => "my-lifecycle-hook"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteLifecycleHook)
"""
@inline delete_lifecycle_hook(aws::AWSConfig=default_aws_config(); args...) = delete_lifecycle_hook(aws, args)

@inline delete_lifecycle_hook(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DeleteLifecycleHook", args)

@inline delete_lifecycle_hook(args) = delete_lifecycle_hook(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.delete_notification_configuration
    delete_notification_configuration([::AWSConfig], arguments::Dict)
    delete_notification_configuration([::AWSConfig]; AutoScalingGroupName=, TopicARN=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DeleteNotificationConfiguration", arguments::Dict)
    autoscaling([::AWSConfig], "DeleteNotificationConfiguration", AutoScalingGroupName=, TopicARN=)

# DeleteNotificationConfiguration Operation

Deletes the specified notification.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `TopicARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic.




# Exceptions

`ResourceContentionFault`.

# Example: To delete an Auto Scaling notification

This example deletes the specified notification from the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "TopicARN" => "arn:aws:sns:us-west-2:123456789012:my-sns-topic"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteNotificationConfiguration)
"""
@inline delete_notification_configuration(aws::AWSConfig=default_aws_config(); args...) = delete_notification_configuration(aws, args)

@inline delete_notification_configuration(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DeleteNotificationConfiguration", args)

@inline delete_notification_configuration(args) = delete_notification_configuration(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.delete_policy
    delete_policy([::AWSConfig], arguments::Dict)
    delete_policy([::AWSConfig]; PolicyName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DeletePolicy", arguments::Dict)
    autoscaling([::AWSConfig], "DeletePolicy", PolicyName=, <keyword arguments>)

# DeletePolicy Operation

Deletes the specified Auto Scaling policy.

Deleting a policy deletes the underlying alarm action, but does not delete the alarm, even if it no longer has an associated action.

# Arguments

## `AutoScalingGroupName = ::String`
The name of the Auto Scaling group.


## `PolicyName = ::String` -- *Required*
The name or Amazon Resource Name (ARN) of the policy.




# Exceptions

`ResourceContentionFault` or `ServiceLinkedRoleFailure`.

# Example: To delete an Auto Scaling policy

This example deletes the specified Auto Scaling policy.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "PolicyName" => "ScaleIn"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeletePolicy)
"""
@inline delete_policy(aws::AWSConfig=default_aws_config(); args...) = delete_policy(aws, args)

@inline delete_policy(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DeletePolicy", args)

@inline delete_policy(args) = delete_policy(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.delete_scheduled_action
    delete_scheduled_action([::AWSConfig], arguments::Dict)
    delete_scheduled_action([::AWSConfig]; AutoScalingGroupName=, ScheduledActionName=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DeleteScheduledAction", arguments::Dict)
    autoscaling([::AWSConfig], "DeleteScheduledAction", AutoScalingGroupName=, ScheduledActionName=)

# DeleteScheduledAction Operation

Deletes the specified scheduled action.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `ScheduledActionName = ::String` -- *Required*
The name of the action to delete.




# Exceptions

`ResourceContentionFault`.

# Example: To delete a scheduled action from an Auto Scaling group

This example deletes the specified scheduled action from the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "ScheduledActionName" => "my-scheduled-action"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteScheduledAction)
"""
@inline delete_scheduled_action(aws::AWSConfig=default_aws_config(); args...) = delete_scheduled_action(aws, args)

@inline delete_scheduled_action(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DeleteScheduledAction", args)

@inline delete_scheduled_action(args) = delete_scheduled_action(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.delete_tags
    delete_tags([::AWSConfig], arguments::Dict)
    delete_tags([::AWSConfig]; Tags=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DeleteTags", arguments::Dict)
    autoscaling([::AWSConfig], "DeleteTags", Tags=)

# DeleteTags Operation

Deletes the specified tags.

# Arguments

## `Tags = [[ ... ], ...]` -- *Required*
One or more tags.
```
 Tags = [[
        "ResourceId" =>  ::String,
        "ResourceType" =>  ::String,
        "Key" => <required> ::String,
        "Value" =>  ::String,
        "PropagateAtLaunch" =>  ::Bool
    ], ...]
```



# Exceptions

`ResourceContentionFault` or `ResourceInUseFault`.

# Example: To delete a tag from an Auto Scaling group

This example deletes the specified tag from the specified Auto Scaling group.

Input:
```
[
    "Tags" => [
        [
            "Key" => "Dept",
            "ResourceId" => "my-auto-scaling-group",
            "ResourceType" => "auto-scaling-group",
            "Value" => "Research"
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteTags)
"""
@inline delete_tags(aws::AWSConfig=default_aws_config(); args...) = delete_tags(aws, args)

@inline delete_tags(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DeleteTags", args)

@inline delete_tags(args) = delete_tags(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_account_limits
    describe_account_limits([::AWSConfig])
    

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeAccountLimits",)
    

# DescribeAccountLimits Operation

Describes the current Auto Scaling resource limits for your AWS account.

For information about requesting an increase in these limits, see [Auto Scaling Limits](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-account-limits.html) in the *Auto Scaling User Guide*.

# Returns

`DescribeAccountLimitsAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To describe your Auto Scaling account limits

This example describes the Auto Scaling limits for your AWS account.

Output:
```
Dict(
    "MaxNumberOfAutoScalingGroups" => 20,
    "MaxNumberOfLaunchConfigurations" => 100,
    "NumberOfAutoScalingGroups" => 3,
    "NumberOfLaunchConfigurations" => 5
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAccountLimits)
"""
@inline describe_account_limits(aws::AWSConfig=default_aws_config(); args...) = describe_account_limits(aws, args)

@inline describe_account_limits(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeAccountLimits", args)

@inline describe_account_limits(args) = describe_account_limits(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_adjustment_types
    describe_adjustment_types([::AWSConfig])
    

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeAdjustmentTypes",)
    

# DescribeAdjustmentTypes Operation

Describes the policy adjustment types for use with [PutScalingPolicy](@ref).

# Returns

`DescribeAdjustmentTypesAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To describe the Auto Scaling adjustment types

This example describes the available adjustment types.

Output:
```
Dict(
    "AdjustmentTypes" => [
        Dict(
            "AdjustmentType" => "ChangeInCapacity"
        ),
        Dict(
            "AdjustmentType" => "ExactCapcity"
        ),
        Dict(
            "AdjustmentType" => "PercentChangeInCapacity"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAdjustmentTypes)
"""
@inline describe_adjustment_types(aws::AWSConfig=default_aws_config(); args...) = describe_adjustment_types(aws, args)

@inline describe_adjustment_types(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeAdjustmentTypes", args)

@inline describe_adjustment_types(args) = describe_adjustment_types(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_auto_scaling_groups
    describe_auto_scaling_groups([::AWSConfig], arguments::Dict)
    describe_auto_scaling_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeAutoScalingGroups", arguments::Dict)
    autoscaling([::AWSConfig], "DescribeAutoScalingGroups", <keyword arguments>)

# DescribeAutoScalingGroups Operation

Describes one or more Auto Scaling groups.

# Arguments

## `AutoScalingGroupNames = [::String, ...]`
The names of the Auto Scaling groups. If you omit this parameter, all Auto Scaling groups are described.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxRecords = ::Int`
The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.




# Returns

`AutoScalingGroupsType`

# Exceptions

`InvalidNextToken` or `ResourceContentionFault`.

# Example: To describe an Auto Scaling group

This example describes the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupNames" => [
        "my-auto-scaling-group"
    ]
]
```

Output:
```
Dict(
    "AutoScalingGroups" => [
        Dict(
            "AutoScalingGroupARN" => "arn:aws:autoscaling:us-west-2:123456789012:autoScalingGroup:930d940e-891e-4781-a11a-7b0acd480f03:autoScalingGroupName/my-auto-scaling-group",
            "AutoScalingGroupName" => "my-auto-scaling-group",
            "AvailabilityZones" => [
                "us-west-2c"
            ],
            "CreatedTime" => "2013-08-19T20:53:25.584Z",
            "DefaultCooldown" => 300,
            "DesiredCapacity" => 1,
            "EnabledMetrics" => [

            ],
            "HealthCheckGracePeriod" => 300,
            "HealthCheckType" => "EC2",
            "Instances" => [
                Dict(
                    "AvailabilityZone" => "us-west-2c",
                    "HealthStatus" => "Healthy",
                    "InstanceId" => "i-4ba0837f",
                    "LaunchConfigurationName" => "my-launch-config",
                    "LifecycleState" => "InService",
                    "ProtectedFromScaleIn" => false
                )
            ],
            "LaunchConfigurationName" => "my-launch-config",
            "LoadBalancerNames" => [

            ],
            "MaxSize" => 1,
            "MinSize" => 0,
            "NewInstancesProtectedFromScaleIn" => false,
            "SuspendedProcesses" => [

            ],
            "Tags" => [

            ],
            "TerminationPolicies" => [
                "Default"
            ],
            "VPCZoneIdentifier" => "subnet-12345678"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAutoScalingGroups)
"""
@inline describe_auto_scaling_groups(aws::AWSConfig=default_aws_config(); args...) = describe_auto_scaling_groups(aws, args)

@inline describe_auto_scaling_groups(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeAutoScalingGroups", args)

@inline describe_auto_scaling_groups(args) = describe_auto_scaling_groups(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_auto_scaling_instances
    describe_auto_scaling_instances([::AWSConfig], arguments::Dict)
    describe_auto_scaling_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeAutoScalingInstances", arguments::Dict)
    autoscaling([::AWSConfig], "DescribeAutoScalingInstances", <keyword arguments>)

# DescribeAutoScalingInstances Operation

Describes one or more Auto Scaling instances.

# Arguments

## `InstanceIds = [::String, ...]`
The instances to describe; up to 50 instance IDs. If you omit this parameter, all Auto Scaling instances are described. If you specify an ID that does not exist, it is ignored with no error.


## `MaxRecords = ::Int`
The maximum number of items to return with this call. The default value is 50 and the maximum value is 50.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`AutoScalingInstancesType`

# Exceptions

`InvalidNextToken` or `ResourceContentionFault`.

# Example: To describe one or more Auto Scaling instances

This example describes the specified Auto Scaling instance.

Input:
```
[
    "InstanceIds" => [
        "i-4ba0837f"
    ]
]
```

Output:
```
Dict(
    "AutoScalingInstances" => [
        Dict(
            "AutoScalingGroupName" => "my-auto-scaling-group",
            "AvailabilityZone" => "us-west-2c",
            "HealthStatus" => "HEALTHY",
            "InstanceId" => "i-4ba0837f",
            "LaunchConfigurationName" => "my-launch-config",
            "LifecycleState" => "InService",
            "ProtectedFromScaleIn" => false
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAutoScalingInstances)
"""
@inline describe_auto_scaling_instances(aws::AWSConfig=default_aws_config(); args...) = describe_auto_scaling_instances(aws, args)

@inline describe_auto_scaling_instances(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeAutoScalingInstances", args)

@inline describe_auto_scaling_instances(args) = describe_auto_scaling_instances(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_auto_scaling_notification_types
    describe_auto_scaling_notification_types([::AWSConfig])
    

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeAutoScalingNotificationTypes",)
    

# DescribeAutoScalingNotificationTypes Operation

Describes the notification types that are supported by Auto Scaling.

# Returns

`DescribeAutoScalingNotificationTypesAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To describe the Auto Scaling notification types

This example describes the available notification types.

Output:
```
Dict(
    "AutoScalingNotificationTypes" => [
        "autoscaling:EC2_INSTANCE_LAUNCH",
        "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
        "autoscaling:EC2_INSTANCE_TERMINATE",
        "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
        "autoscaling:TEST_NOTIFICATION"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAutoScalingNotificationTypes)
"""
@inline describe_auto_scaling_notification_types(aws::AWSConfig=default_aws_config(); args...) = describe_auto_scaling_notification_types(aws, args)

@inline describe_auto_scaling_notification_types(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeAutoScalingNotificationTypes", args)

@inline describe_auto_scaling_notification_types(args) = describe_auto_scaling_notification_types(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_launch_configurations
    describe_launch_configurations([::AWSConfig], arguments::Dict)
    describe_launch_configurations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeLaunchConfigurations", arguments::Dict)
    autoscaling([::AWSConfig], "DescribeLaunchConfigurations", <keyword arguments>)

# DescribeLaunchConfigurations Operation

Describes one or more launch configurations.

# Arguments

## `LaunchConfigurationNames = [::String, ...]`
The launch configuration names. If you omit this parameter, all launch configurations are described.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxRecords = ::Int`
The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.




# Returns

`LaunchConfigurationsType`

# Exceptions

`InvalidNextToken` or `ResourceContentionFault`.

# Example: To describe Auto Scaling launch configurations

This example describes the specified launch configuration.

Input:
```
[
    "LaunchConfigurationNames" => [
        "my-launch-config"
    ]
]
```

Output:
```
Dict(
    "LaunchConfigurations" => [
        Dict(
            "AssociatePublicIpAddress" => true,
            "BlockDeviceMappings" => [

            ],
            "CreatedTime" => "2014-05-07T17:39:28.599Z",
            "EbsOptimized" => false,
            "ImageId" => "ami-043a5034",
            "InstanceMonitoring" => Dict(
                "Enabled" => true
            ),
            "InstanceType" => "t1.micro",
            "LaunchConfigurationARN" => "arn:aws:autoscaling:us-west-2:123456789012:launchConfiguration:98d3b196-4cf9-4e88-8ca1-8547c24ced8b:launchConfigurationName/my-launch-config",
            "LaunchConfigurationName" => "my-launch-config",
            "SecurityGroups" => [
                "sg-67ef0308"
            ]
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLaunchConfigurations)
"""
@inline describe_launch_configurations(aws::AWSConfig=default_aws_config(); args...) = describe_launch_configurations(aws, args)

@inline describe_launch_configurations(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeLaunchConfigurations", args)

@inline describe_launch_configurations(args) = describe_launch_configurations(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_lifecycle_hook_types
    describe_lifecycle_hook_types([::AWSConfig])
    

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeLifecycleHookTypes",)
    

# DescribeLifecycleHookTypes Operation

Describes the available types of lifecycle hooks.

# Returns

`DescribeLifecycleHookTypesAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To describe the available types of lifecycle hooks

This example describes the available lifecycle hook types.

Output:
```
Dict(
    "LifecycleHookTypes" => [
        "autoscaling:EC2_INSTANCE_LAUNCHING",
        "autoscaling:EC2_INSTANCE_TERMINATING"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLifecycleHookTypes)
"""
@inline describe_lifecycle_hook_types(aws::AWSConfig=default_aws_config(); args...) = describe_lifecycle_hook_types(aws, args)

@inline describe_lifecycle_hook_types(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeLifecycleHookTypes", args)

@inline describe_lifecycle_hook_types(args) = describe_lifecycle_hook_types(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_lifecycle_hooks
    describe_lifecycle_hooks([::AWSConfig], arguments::Dict)
    describe_lifecycle_hooks([::AWSConfig]; AutoScalingGroupName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeLifecycleHooks", arguments::Dict)
    autoscaling([::AWSConfig], "DescribeLifecycleHooks", AutoScalingGroupName=, <keyword arguments>)

# DescribeLifecycleHooks Operation

Describes the lifecycle hooks for the specified Auto Scaling group.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `LifecycleHookNames = [::String, ...]`
The names of one or more lifecycle hooks. If you omit this parameter, all lifecycle hooks are described.




# Returns

`DescribeLifecycleHooksAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To describe your lifecycle hooks

This example describes the lifecycle hooks for the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group"
]
```

Output:
```
Dict(
    "LifecycleHooks" => [
        Dict(
            "AutoScalingGroupName" => "my-auto-scaling-group",
            "DefaultResult" => "ABANDON",
            "GlobalTimeout" => 172800,
            "HeartbeatTimeout" => 3600,
            "LifecycleHookName" => "my-lifecycle-hook",
            "LifecycleTransition" => "autoscaling:EC2_INSTANCE_LAUNCHING",
            "NotificationTargetARN" => "arn:aws:sns:us-west-2:123456789012:my-sns-topic",
            "RoleARN" => "arn:aws:iam::123456789012:role/my-auto-scaling-role"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLifecycleHooks)
"""
@inline describe_lifecycle_hooks(aws::AWSConfig=default_aws_config(); args...) = describe_lifecycle_hooks(aws, args)

@inline describe_lifecycle_hooks(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeLifecycleHooks", args)

@inline describe_lifecycle_hooks(args) = describe_lifecycle_hooks(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_load_balancer_target_groups
    describe_load_balancer_target_groups([::AWSConfig], arguments::Dict)
    describe_load_balancer_target_groups([::AWSConfig]; AutoScalingGroupName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeLoadBalancerTargetGroups", arguments::Dict)
    autoscaling([::AWSConfig], "DescribeLoadBalancerTargetGroups", AutoScalingGroupName=, <keyword arguments>)

# DescribeLoadBalancerTargetGroups Operation

Describes the target groups for the specified Auto Scaling group.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxRecords = ::Int`
The maximum number of items to return with this call. The default value is 100 and the maximum value is 100.




# Returns

`DescribeLoadBalancerTargetGroupsResponse`

# Exceptions

`ResourceContentionFault`.

# Example: To describe the target groups for an Auto Scaling group

This example describes the target groups attached to the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group"
]
```

Output:
```
Dict(
    "LoadBalancerTargetGroups" => [
        Dict(
            "LoadBalancerTargetGroupARN" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
            "State" => "Added"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLoadBalancerTargetGroups)
"""
@inline describe_load_balancer_target_groups(aws::AWSConfig=default_aws_config(); args...) = describe_load_balancer_target_groups(aws, args)

@inline describe_load_balancer_target_groups(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeLoadBalancerTargetGroups", args)

@inline describe_load_balancer_target_groups(args) = describe_load_balancer_target_groups(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_load_balancers
    describe_load_balancers([::AWSConfig], arguments::Dict)
    describe_load_balancers([::AWSConfig]; AutoScalingGroupName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeLoadBalancers", arguments::Dict)
    autoscaling([::AWSConfig], "DescribeLoadBalancers", AutoScalingGroupName=, <keyword arguments>)

# DescribeLoadBalancers Operation

Describes the load balancers for the specified Auto Scaling group.

Note that this operation describes only Classic Load Balancers. If you have Application Load Balancers, use [DescribeLoadBalancerTargetGroups](@ref) instead.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxRecords = ::Int`
The maximum number of items to return with this call. The default value is 100 and the maximum value is 100.




# Returns

`DescribeLoadBalancersResponse`

# Exceptions

`ResourceContentionFault`.

# Example: To describe the load balancers for an Auto Scaling group

This example describes the load balancers attached to the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group"
]
```

Output:
```
Dict(
    "LoadBalancers" => [
        Dict(
            "LoadBalancerName" => "my-load-balancer",
            "State" => "Added"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLoadBalancers)
"""
@inline describe_load_balancers(aws::AWSConfig=default_aws_config(); args...) = describe_load_balancers(aws, args)

@inline describe_load_balancers(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeLoadBalancers", args)

@inline describe_load_balancers(args) = describe_load_balancers(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_metric_collection_types
    describe_metric_collection_types([::AWSConfig])
    

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeMetricCollectionTypes",)
    

# DescribeMetricCollectionTypes Operation

Describes the available CloudWatch metrics for Auto Scaling.

Note that the `GroupStandbyInstances` metric is not returned by default. You must explicitly request this metric when calling [EnableMetricsCollection](@ref).

# Returns

`DescribeMetricCollectionTypesAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To describe the Auto Scaling metric collection types

This example describes the available metric collection types.

Output:
```
Dict(
    "Granularities" => [
        Dict(
            "Granularity" => "1Minute"
        )
    ],
    "Metrics" => [
        Dict(
            "Metric" => "GroupMinSize"
        ),
        Dict(
            "Metric" => "GroupMaxSize"
        ),
        Dict(
            "Metric" => "GroupDesiredCapacity"
        ),
        Dict(
            "Metric" => "GroupInServiceInstances"
        ),
        Dict(
            "Metric" => "GroupPendingInstances"
        ),
        Dict(
            "Metric" => "GroupTerminatingInstances"
        ),
        Dict(
            "Metric" => "GroupStandbyInstances"
        ),
        Dict(
            "Metric" => "GroupTotalInstances"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeMetricCollectionTypes)
"""
@inline describe_metric_collection_types(aws::AWSConfig=default_aws_config(); args...) = describe_metric_collection_types(aws, args)

@inline describe_metric_collection_types(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeMetricCollectionTypes", args)

@inline describe_metric_collection_types(args) = describe_metric_collection_types(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_notification_configurations
    describe_notification_configurations([::AWSConfig], arguments::Dict)
    describe_notification_configurations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeNotificationConfigurations", arguments::Dict)
    autoscaling([::AWSConfig], "DescribeNotificationConfigurations", <keyword arguments>)

# DescribeNotificationConfigurations Operation

Describes the notification actions associated with the specified Auto Scaling group.

# Arguments

## `AutoScalingGroupNames = [::String, ...]`
The name of the Auto Scaling group.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxRecords = ::Int`
The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.




# Returns

`DescribeNotificationConfigurationsAnswer`

# Exceptions

`InvalidNextToken` or `ResourceContentionFault`.

# Example: To describe Auto Scaling notification configurations

This example describes the notification configurations for the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupNames" => [
        "my-auto-scaling-group"
    ]
]
```

Output:
```
Dict(
    "NotificationConfigurations" => [
        Dict(
            "AutoScalingGroupName" => "my-auto-scaling-group",
            "NotificationType" => "autoscaling:TEST_NOTIFICATION",
            "TopicARN" => "arn:aws:sns:us-west-2:123456789012:my-sns-topic-2"
        ),
        Dict(
            "AutoScalingGroupName" => "my-auto-scaling-group",
            "NotificationType" => "autoscaling:TEST_NOTIFICATION",
            "TopicARN" => "arn:aws:sns:us-west-2:123456789012:my-sns-topic"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeNotificationConfigurations)
"""
@inline describe_notification_configurations(aws::AWSConfig=default_aws_config(); args...) = describe_notification_configurations(aws, args)

@inline describe_notification_configurations(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeNotificationConfigurations", args)

@inline describe_notification_configurations(args) = describe_notification_configurations(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_policies
    describe_policies([::AWSConfig], arguments::Dict)
    describe_policies([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribePolicies", arguments::Dict)
    autoscaling([::AWSConfig], "DescribePolicies", <keyword arguments>)

# DescribePolicies Operation

Describes the policies for the specified Auto Scaling group.

# Arguments

## `AutoScalingGroupName = ::String`
The name of the Auto Scaling group.


## `PolicyNames = [::String, ...]`
The names of one or more policies. If you omit this parameter, all policies are described. If an group name is provided, the results are limited to that group. This list is limited to 50 items. If you specify an unknown policy name, it is ignored with no error.


## `PolicyTypes = [::String, ...]`
One or more policy types. Valid values are `SimpleScaling` and `StepScaling`.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxRecords = ::Int`
The maximum number of items to be returned with each call. The default value is 50 and the maximum value is 100.




# Returns

`PoliciesType`

# Exceptions

`InvalidNextToken`, `ResourceContentionFault` or `ServiceLinkedRoleFailure`.

# Example: To describe Auto Scaling policies

This example describes the policies for the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group"
]
```

Output:
```
Dict(
    "ScalingPolicies" => [
        Dict(
            "AdjustmentType" => "ChangeInCapacity",
            "Alarms" => [

            ],
            "AutoScalingGroupName" => "my-auto-scaling-group",
            "PolicyARN" => "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:2233f3d7-6290-403b-b632-93c553560106:autoScalingGroupName/my-auto-scaling-group:policyName/ScaleIn",
            "PolicyName" => "ScaleIn",
            "ScalingAdjustment" => -1
        ),
        Dict(
            "AdjustmentType" => "PercentChangeInCapacity",
            "Alarms" => [

            ],
            "AutoScalingGroupName" => "my-auto-scaling-group",
            "Cooldown" => 60,
            "MinAdjustmentStep" => 2,
            "PolicyARN" => "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:2b435159-cf77-4e89-8c0e-d63b497baad7:autoScalingGroupName/my-auto-scaling-group:policyName/ScalePercentChange",
            "PolicyName" => "ScalePercentChange",
            "ScalingAdjustment" => 25
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribePolicies)
"""
@inline describe_policies(aws::AWSConfig=default_aws_config(); args...) = describe_policies(aws, args)

@inline describe_policies(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribePolicies", args)

@inline describe_policies(args) = describe_policies(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_scaling_activities
    describe_scaling_activities([::AWSConfig], arguments::Dict)
    describe_scaling_activities([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeScalingActivities", arguments::Dict)
    autoscaling([::AWSConfig], "DescribeScalingActivities", <keyword arguments>)

# DescribeScalingActivities Operation

Describes one or more scaling activities for the specified Auto Scaling group.

# Arguments

## `ActivityIds = [::String, ...]`
The activity IDs of the desired scaling activities. If you omit this parameter, all activities for the past six weeks are described. If you specify an Auto Scaling group, the results are limited to that group. The list of requested activities cannot contain more than 50 items. If unknown activities are requested, they are ignored with no error.


## `AutoScalingGroupName = ::String`
The name of the Auto Scaling group.


## `MaxRecords = ::Int`
The maximum number of items to return with this call. The default value is 100 and the maximum value is 100.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`ActivitiesType`

# Exceptions

`InvalidNextToken` or `ResourceContentionFault`.

# Example: To describe the scaling activities for an Auto Scaling group

This example describes the scaling activities for the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group"
]
```

Output:
```
Dict(
    "Activities" => [
        Dict(
            "ActivityId" => "f9f2d65b-f1f2-43e7-b46d-d86756459699",
            "AutoScalingGroupName" => "my-auto-scaling-group",
            "Cause" => "At 2013-08-19T20:53:25Z a user request created an AutoScalingGroup changing the desired capacity from 0 to 1.  At 2013-08-19T20:53:29Z an instance was started in response to a difference between desired and actual capacity, increasing the capacity from 0 to 1.",
            "Description" => "Launching a new EC2 instance: i-4ba0837f",
            "Details" => "details",
            "EndTime" => "2013-08-19T20:54:02Z",
            "Progress" => 100,
            "StartTime" => "2013-08-19T20:53:29.930Z",
            "StatusCode" => "Successful"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeScalingActivities)
"""
@inline describe_scaling_activities(aws::AWSConfig=default_aws_config(); args...) = describe_scaling_activities(aws, args)

@inline describe_scaling_activities(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeScalingActivities", args)

@inline describe_scaling_activities(args) = describe_scaling_activities(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_scaling_process_types
    describe_scaling_process_types([::AWSConfig])
    

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeScalingProcessTypes",)
    

# DescribeScalingProcessTypes Operation

Describes the scaling process types for use with [ResumeProcesses](@ref) and [SuspendProcesses](@ref).

# Returns

`ProcessesType`

# Exceptions

`ResourceContentionFault`.

# Example: To describe the Auto Scaling process types

This example describes the Auto Scaling process types.

Output:
```
Dict(
    "Processes" => [
        Dict(
            "ProcessName" => "AZRebalance"
        ),
        Dict(
            "ProcessName" => "AddToLoadBalancer"
        ),
        Dict(
            "ProcessName" => "AlarmNotification"
        ),
        Dict(
            "ProcessName" => "HealthCheck"
        ),
        Dict(
            "ProcessName" => "Launch"
        ),
        Dict(
            "ProcessName" => "ReplaceUnhealthy"
        ),
        Dict(
            "ProcessName" => "ScheduledActions"
        ),
        Dict(
            "ProcessName" => "Terminate"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeScalingProcessTypes)
"""
@inline describe_scaling_process_types(aws::AWSConfig=default_aws_config(); args...) = describe_scaling_process_types(aws, args)

@inline describe_scaling_process_types(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeScalingProcessTypes", args)

@inline describe_scaling_process_types(args) = describe_scaling_process_types(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_scheduled_actions
    describe_scheduled_actions([::AWSConfig], arguments::Dict)
    describe_scheduled_actions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeScheduledActions", arguments::Dict)
    autoscaling([::AWSConfig], "DescribeScheduledActions", <keyword arguments>)

# DescribeScheduledActions Operation

Describes the actions scheduled for your Auto Scaling group that haven't run. To describe the actions that have already run, use [DescribeScalingActivities](@ref).

# Arguments

## `AutoScalingGroupName = ::String`
The name of the Auto Scaling group.


## `ScheduledActionNames = [::String, ...]`
Describes one or more scheduled actions. If you omit this parameter, all scheduled actions are described. If you specify an unknown scheduled action, it is ignored with no error.

You can describe up to a maximum of 50 instances with a single call. If there are more items to return, the call returns a token. To get the next set of items, repeat the call with the returned token.


## `StartTime = timestamp`
The earliest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.


## `EndTime = timestamp`
The latest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxRecords = ::Int`
The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.




# Returns

`ScheduledActionsType`

# Exceptions

`InvalidNextToken` or `ResourceContentionFault`.

# Example: To describe scheduled actions

This example describes the scheduled actions for the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group"
]
```

Output:
```
Dict(
    "ScheduledUpdateGroupActions" => [
        Dict(
            "AutoScalingGroupName" => "my-auto-scaling-group",
            "DesiredCapacity" => 4,
            "MaxSize" => 6,
            "MinSize" => 2,
            "Recurrence" => "30 0 1 12 0",
            "ScheduledActionARN" => "arn:aws:autoscaling:us-west-2:123456789012:scheduledUpdateGroupAction:8e86b655-b2e6-4410-8f29-b4f094d6871c:autoScalingGroupName/my-auto-scaling-group:scheduledActionName/my-scheduled-action",
            "ScheduledActionName" => "my-scheduled-action",
            "StartTime" => "2016-12-01T00:30:00Z",
            "Time" => "2016-12-01T00:30:00Z"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeScheduledActions)
"""
@inline describe_scheduled_actions(aws::AWSConfig=default_aws_config(); args...) = describe_scheduled_actions(aws, args)

@inline describe_scheduled_actions(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeScheduledActions", args)

@inline describe_scheduled_actions(args) = describe_scheduled_actions(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_tags
    describe_tags([::AWSConfig], arguments::Dict)
    describe_tags([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeTags", arguments::Dict)
    autoscaling([::AWSConfig], "DescribeTags", <keyword arguments>)

# DescribeTags Operation

Describes the specified tags.

You can use filters to limit the results. For example, you can query for the tags for a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at least one of the specified values for it to be included in the results.

You can also specify multiple filters. The result includes information for a particular tag only if it matches all the filters. If there's no match, no special message is returned.

# Arguments

## `Filters = [[ ... ], ...]`
A filter used to scope the tags to return.
```
 Filters = [[
        "Name" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxRecords = ::Int`
The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.




# Returns

`TagsType`

# Exceptions

`InvalidNextToken` or `ResourceContentionFault`.

# Example: To describe tags

This example describes the tags for the specified Auto Scaling group.

Input:
```
[
    "Filters" => [
        [
            "Name" => "auto-scaling-group",
            "Values" => [
                "my-auto-scaling-group"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "Tags" => [
        Dict(
            "Key" => "Dept",
            "PropagateAtLaunch" => true,
            "ResourceId" => "my-auto-scaling-group",
            "ResourceType" => "auto-scaling-group",
            "Value" => "Research"
        ),
        Dict(
            "Key" => "Role",
            "PropagateAtLaunch" => true,
            "ResourceId" => "my-auto-scaling-group",
            "ResourceType" => "auto-scaling-group",
            "Value" => "WebServer"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeTags)
"""
@inline describe_tags(aws::AWSConfig=default_aws_config(); args...) = describe_tags(aws, args)

@inline describe_tags(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeTags", args)

@inline describe_tags(args) = describe_tags(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.describe_termination_policy_types
    describe_termination_policy_types([::AWSConfig])
    

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DescribeTerminationPolicyTypes",)
    

# DescribeTerminationPolicyTypes Operation

Describes the termination policies supported by Auto Scaling.

# Returns

`DescribeTerminationPolicyTypesAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To describe termination policy types

This example describes the available termination policy types.

Output:
```
Dict(
    "TerminationPolicyTypes" => [
        "ClosestToNextInstanceHour",
        "Default",
        "NewestInstance",
        "OldestInstance",
        "OldestLaunchConfiguration"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeTerminationPolicyTypes)
"""
@inline describe_termination_policy_types(aws::AWSConfig=default_aws_config(); args...) = describe_termination_policy_types(aws, args)

@inline describe_termination_policy_types(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DescribeTerminationPolicyTypes", args)

@inline describe_termination_policy_types(args) = describe_termination_policy_types(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.detach_instances
    detach_instances([::AWSConfig], arguments::Dict)
    detach_instances([::AWSConfig]; AutoScalingGroupName=, ShouldDecrementDesiredCapacity=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DetachInstances", arguments::Dict)
    autoscaling([::AWSConfig], "DetachInstances", AutoScalingGroupName=, ShouldDecrementDesiredCapacity=, <keyword arguments>)

# DetachInstances Operation

Removes one or more instances from the specified Auto Scaling group.

After the instances are detached, you can manage them independent of the Auto Scaling group.

If you do not specify the option to decrement the desired capacity, Auto Scaling launches instances to replace the ones that are detached.

If there is a Classic Load Balancer attached to the Auto Scaling group, the instances are deregistered from the load balancer. If there are target groups attached to the Auto Scaling group, the instances are deregistered from the target groups.

For more information, see [Detach EC2 Instances from Your Auto Scaling Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/detach-instance-asg.html) in the *Auto Scaling User Guide*.

# Arguments

## `InstanceIds = [::String, ...]`
The IDs of the instances. You can specify up to 20 instances.


## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `ShouldDecrementDesiredCapacity = ::Bool` -- *Required*
Indicates whether the Auto Scaling group decrements the desired capacity value by the number of instances detached.




# Returns

`DetachInstancesAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To detach an instance from an Auto Scaling group

This example detaches the specified instance from the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "InstanceIds" => [
        "i-93633f9b"
    ],
    "ShouldDecrementDesiredCapacity" => true
]
```

Output:
```
Dict(
    "Activities" => [
        Dict(
            "ActivityId" => "5091cb52-547a-47ce-a236-c9ccbc2cb2c9",
            "AutoScalingGroupName" => "my-auto-scaling-group",
            "Cause" => "At 2015-04-12T15:02:16Z instance i-93633f9b was detached in response to a user request, shrinking the capacity from 2 to 1.",
            "Description" => "Detaching EC2 instance: i-93633f9b",
            "Details" => "details",
            "Progress" => 50,
            "StartTime" => "2015-04-12T15:02:16.179Z",
            "StatusCode" => "InProgress"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachInstances)
"""
@inline detach_instances(aws::AWSConfig=default_aws_config(); args...) = detach_instances(aws, args)

@inline detach_instances(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DetachInstances", args)

@inline detach_instances(args) = detach_instances(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.detach_load_balancer_target_groups
    detach_load_balancer_target_groups([::AWSConfig], arguments::Dict)
    detach_load_balancer_target_groups([::AWSConfig]; AutoScalingGroupName=, TargetGroupARNs=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DetachLoadBalancerTargetGroups", arguments::Dict)
    autoscaling([::AWSConfig], "DetachLoadBalancerTargetGroups", AutoScalingGroupName=, TargetGroupARNs=)

# DetachLoadBalancerTargetGroups Operation

Detaches one or more target groups from the specified Auto Scaling group.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `TargetGroupARNs = [::String, ...]` -- *Required*
The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target groups.




# Returns

`DetachLoadBalancerTargetGroupsResultType`

# Exceptions

`ResourceContentionFault`.

# Example: To detach a target group from an Auto Scaling group

This example detaches the specified target group from the specified Auto Scaling group

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "TargetGroupARNs" => [
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachLoadBalancerTargetGroups)
"""
@inline detach_load_balancer_target_groups(aws::AWSConfig=default_aws_config(); args...) = detach_load_balancer_target_groups(aws, args)

@inline detach_load_balancer_target_groups(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DetachLoadBalancerTargetGroups", args)

@inline detach_load_balancer_target_groups(args) = detach_load_balancer_target_groups(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.detach_load_balancers
    detach_load_balancers([::AWSConfig], arguments::Dict)
    detach_load_balancers([::AWSConfig]; AutoScalingGroupName=, LoadBalancerNames=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DetachLoadBalancers", arguments::Dict)
    autoscaling([::AWSConfig], "DetachLoadBalancers", AutoScalingGroupName=, LoadBalancerNames=)

# DetachLoadBalancers Operation

Detaches one or more Classic Load Balancers from the specified Auto Scaling group.

Note that this operation detaches only Classic Load Balancers. If you have Application Load Balancers, use [DetachLoadBalancerTargetGroups](@ref) instead.

When you detach a load balancer, it enters the `Removing` state while deregistering the instances in the group. When all instances are deregistered, then you can no longer describe the load balancer using [DescribeLoadBalancers](@ref). Note that the instances remain running.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `LoadBalancerNames = [::String, ...]` -- *Required*
The names of the load balancers. You can specify up to 10 load balancers.




# Returns

`DetachLoadBalancersResultType`

# Exceptions

`ResourceContentionFault`.

# Example: To detach a load balancer from an Auto Scaling group

This example detaches the specified load balancer from the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "LoadBalancerNames" => [
        "my-load-balancer"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachLoadBalancers)
"""
@inline detach_load_balancers(aws::AWSConfig=default_aws_config(); args...) = detach_load_balancers(aws, args)

@inline detach_load_balancers(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DetachLoadBalancers", args)

@inline detach_load_balancers(args) = detach_load_balancers(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.disable_metrics_collection
    disable_metrics_collection([::AWSConfig], arguments::Dict)
    disable_metrics_collection([::AWSConfig]; AutoScalingGroupName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "DisableMetricsCollection", arguments::Dict)
    autoscaling([::AWSConfig], "DisableMetricsCollection", AutoScalingGroupName=, <keyword arguments>)

# DisableMetricsCollection Operation

Disables group metrics for the specified Auto Scaling group.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `Metrics = [::String, ...]`
One or more of the following metrics. If you omit this parameter, all metrics are disabled.

*   `GroupMinSize`

*   `GroupMaxSize`

*   `GroupDesiredCapacity`

*   `GroupInServiceInstances`

*   `GroupPendingInstances`

*   `GroupStandbyInstances`

*   `GroupTerminatingInstances`

*   `GroupTotalInstances`




# Exceptions

`ResourceContentionFault`.

# Example: To disable metrics collection for an Auto Scaling group

This example disables collecting data for the GroupDesiredCapacity metric for the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "Metrics" => [
        "GroupDesiredCapacity"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DisableMetricsCollection)
"""
@inline disable_metrics_collection(aws::AWSConfig=default_aws_config(); args...) = disable_metrics_collection(aws, args)

@inline disable_metrics_collection(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "DisableMetricsCollection", args)

@inline disable_metrics_collection(args) = disable_metrics_collection(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.enable_metrics_collection
    enable_metrics_collection([::AWSConfig], arguments::Dict)
    enable_metrics_collection([::AWSConfig]; AutoScalingGroupName=, Granularity=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "EnableMetricsCollection", arguments::Dict)
    autoscaling([::AWSConfig], "EnableMetricsCollection", AutoScalingGroupName=, Granularity=, <keyword arguments>)

# EnableMetricsCollection Operation

Enables group metrics for the specified Auto Scaling group. For more information, see [Monitoring Your Auto Scaling Groups and Instances](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-monitoring.html) in the *Auto Scaling User Guide*.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `Metrics = [::String, ...]`
One or more of the following metrics. If you omit this parameter, all metrics are enabled.

*   `GroupMinSize`

*   `GroupMaxSize`

*   `GroupDesiredCapacity`

*   `GroupInServiceInstances`

*   `GroupPendingInstances`

*   `GroupStandbyInstances`

*   `GroupTerminatingInstances`

*   `GroupTotalInstances`


## `Granularity = ::String` -- *Required*
The granularity to associate with the metrics to collect. The only valid value is `1Minute`.




# Exceptions

`ResourceContentionFault`.

# Example: To enable metrics collection for an Auto Scaling group

This example enables data collection for the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "Granularity" => "1Minute"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/EnableMetricsCollection)
"""
@inline enable_metrics_collection(aws::AWSConfig=default_aws_config(); args...) = enable_metrics_collection(aws, args)

@inline enable_metrics_collection(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "EnableMetricsCollection", args)

@inline enable_metrics_collection(args) = enable_metrics_collection(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.enter_standby
    enter_standby([::AWSConfig], arguments::Dict)
    enter_standby([::AWSConfig]; AutoScalingGroupName=, ShouldDecrementDesiredCapacity=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "EnterStandby", arguments::Dict)
    autoscaling([::AWSConfig], "EnterStandby", AutoScalingGroupName=, ShouldDecrementDesiredCapacity=, <keyword arguments>)

# EnterStandby Operation

Moves the specified instances into the standby state.

For more information, see [Temporarily Removing Instances from Your Auto Scaling Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-enter-exit-standby.html) in the *Auto Scaling User Guide*.

# Arguments

## `InstanceIds = [::String, ...]`
The IDs of the instances. You can specify up to 20 instances.


## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `ShouldDecrementDesiredCapacity = ::Bool` -- *Required*
Indicates whether to decrement the desired capacity of the Auto Scaling group by the number of instances moved to `Standby` mode.




# Returns

`EnterStandbyAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To move instances into standby mode

This example puts the specified instance into standby mode.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "InstanceIds" => [
        "i-93633f9b"
    ],
    "ShouldDecrementDesiredCapacity" => true
]
```

Output:
```
Dict(
    "Activities" => [
        Dict(
            "ActivityId" => "ffa056b4-6ed3-41ba-ae7c-249dfae6eba1",
            "AutoScalingGroupName" => "my-auto-scaling-group",
            "Cause" => "At 2015-04-12T15:10:23Z instance i-93633f9b was moved to standby in response to a user request, shrinking the capacity from 2 to 1.",
            "Description" => "Moving EC2 instance to Standby: i-93633f9b",
            "Details" => "details",
            "Progress" => 50,
            "StartTime" => "2015-04-12T15:10:23.640Z",
            "StatusCode" => "InProgress"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/EnterStandby)
"""
@inline enter_standby(aws::AWSConfig=default_aws_config(); args...) = enter_standby(aws, args)

@inline enter_standby(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "EnterStandby", args)

@inline enter_standby(args) = enter_standby(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.execute_policy
    execute_policy([::AWSConfig], arguments::Dict)
    execute_policy([::AWSConfig]; PolicyName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "ExecutePolicy", arguments::Dict)
    autoscaling([::AWSConfig], "ExecutePolicy", PolicyName=, <keyword arguments>)

# ExecutePolicy Operation

Executes the specified policy.

# Arguments

## `AutoScalingGroupName = ::String`
The name of the Auto Scaling group.


## `PolicyName = ::String` -- *Required*
The name or ARN of the policy.


## `HonorCooldown = ::Bool`
Indicates whether Auto Scaling waits for the cooldown period to complete before executing the policy.

This parameter is not supported if the policy type is `StepScaling`.

For more information, see [Auto Scaling Cooldowns](http://docs.aws.amazon.com/autoscaling/latest/userguide/Cooldown.html) in the *Auto Scaling User Guide*.


## `MetricValue = double`
The metric value to compare to `BreachThreshold`. This enables you to execute a policy of type `StepScaling` and determine which step adjustment to use. For example, if the breach threshold is 50 and you want to use a step adjustment with a lower bound of 0 and an upper bound of 10, you can set the metric value to 59.

If you specify a metric value that doesn't correspond to a step adjustment for the policy, the call returns an error.

This parameter is required if the policy type is `StepScaling` and not supported otherwise.


## `BreachThreshold = double`
The breach threshold for the alarm.

This parameter is required if the policy type is `StepScaling` and not supported otherwise.




# Exceptions

`ScalingActivityInProgressFault` or `ResourceContentionFault`.

# Example: To execute an Auto Scaling policy

This example executes the specified Auto Scaling policy for the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "HonorCooldown" => true,
    "PolicyName" => "ScaleIn"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ExecutePolicy)
"""
@inline execute_policy(aws::AWSConfig=default_aws_config(); args...) = execute_policy(aws, args)

@inline execute_policy(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "ExecutePolicy", args)

@inline execute_policy(args) = execute_policy(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.exit_standby
    exit_standby([::AWSConfig], arguments::Dict)
    exit_standby([::AWSConfig]; AutoScalingGroupName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "ExitStandby", arguments::Dict)
    autoscaling([::AWSConfig], "ExitStandby", AutoScalingGroupName=, <keyword arguments>)

# ExitStandby Operation

Moves the specified instances out of the standby state.

For more information, see [Temporarily Removing Instances from Your Auto Scaling Group](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-enter-exit-standby.html) in the *Auto Scaling User Guide*.

# Arguments

## `InstanceIds = [::String, ...]`
The IDs of the instances. You can specify up to 20 instances.


## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.




# Returns

`ExitStandbyAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To move instances out of standby mode

This example moves the specified instance out of standby mode.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "InstanceIds" => [
        "i-93633f9b"
    ]
]
```

Output:
```
Dict(
    "Activities" => [
        Dict(
            "ActivityId" => "142928e1-a2dc-453a-9b24-b85ad6735928",
            "AutoScalingGroupName" => "my-auto-scaling-group",
            "Cause" => "At 2015-04-12T15:14:29Z instance i-93633f9b was moved out of standby in response to a user request, increasing the capacity from 1 to 2.",
            "Description" => "Moving EC2 instance out of Standby: i-93633f9b",
            "Details" => "details",
            "Progress" => 30,
            "StartTime" => "2015-04-12T15:14:29.886Z",
            "StatusCode" => "PreInService"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ExitStandby)
"""
@inline exit_standby(aws::AWSConfig=default_aws_config(); args...) = exit_standby(aws, args)

@inline exit_standby(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "ExitStandby", args)

@inline exit_standby(args) = exit_standby(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.put_lifecycle_hook
    put_lifecycle_hook([::AWSConfig], arguments::Dict)
    put_lifecycle_hook([::AWSConfig]; LifecycleHookName=, AutoScalingGroupName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "PutLifecycleHook", arguments::Dict)
    autoscaling([::AWSConfig], "PutLifecycleHook", LifecycleHookName=, AutoScalingGroupName=, <keyword arguments>)

# PutLifecycleHook Operation

Creates or updates a lifecycle hook for the specified Auto Scaling Group.

A lifecycle hook tells Auto Scaling that you want to perform an action on an instance that is not actively in service; for example, either when the instance launches or before the instance terminates.

This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:

1.  (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Auto Scaling launches or terminates instances.

2.  (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Auto Scaling to publish lifecycle notifications to the target.

3.  **Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.**

4.  If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.

5.  If you finish before the timeout period ends, complete the lifecycle action.

For more information, see [Auto Scaling Lifecycle Hooks](http://docs.aws.amazon.com/autoscaling/latest/userguide/lifecycle-hooks.html) in the *Auto Scaling User Guide*.

If you exceed your maximum limit of lifecycle hooks, which by default is 50 per Auto Scaling group, the call fails. For information about updating this limit, see [AWS Service Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) in the *Amazon Web Services General Reference*.

# Arguments

## `LifecycleHookName = ::String` -- *Required*
The name of the lifecycle hook.


## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `LifecycleTransition = ::String`
The instance state to which you want to attach the lifecycle hook. For a list of lifecycle hook types, see [DescribeLifecycleHookTypes](@ref).

This parameter is required for new lifecycle hooks, but optional when updating existing hooks.


## `RoleARN = ::String`
The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.

This parameter is required for new lifecycle hooks, but optional when updating existing hooks.


## `NotificationTargetARN = ::String`
The ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook. This target can be either an SQS queue or an SNS topic. If you specify an empty string, this overrides the current ARN.

This operation uses the JSON format when sending notifications to an Amazon SQS queue, and an email key/value pair format when sending notifications to an Amazon SNS topic.

When you specify a notification target, Auto Scaling sends it a test message. Test messages contains the following additional key/value pair: `"Event": "autoscaling:TEST_NOTIFICATION"`.


## `NotificationMetadata = ::String`
Contains additional information that you want to include any time Auto Scaling sends a message to the notification target.


## `HeartbeatTimeout = ::Int`
The maximum time, in seconds, that can elapse before the lifecycle hook times out. The range is from 30 to 7200 seconds. The default is 3600 seconds (1 hour).

If the lifecycle hook times out, Auto Scaling performs the default action. You can prevent the lifecycle hook from timing out by calling [RecordLifecycleActionHeartbeat](@ref).


## `DefaultResult = ::String`
Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. This parameter can be either `CONTINUE` or `ABANDON`. The default value is `ABANDON`.




# Returns

`PutLifecycleHookAnswer`

# Exceptions

`LimitExceededFault` or `ResourceContentionFault`.

# Example: To create a lifecycle hook

This example creates a lifecycle hook.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "LifecycleHookName" => "my-lifecycle-hook",
    "LifecycleTransition" => "autoscaling:EC2_INSTANCE_LAUNCHING",
    "NotificationTargetARN" => "arn:aws:sns:us-west-2:123456789012:my-sns-topic --role-arn",
    "RoleARN" => "arn:aws:iam::123456789012:role/my-auto-scaling-role"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutLifecycleHook)
"""
@inline put_lifecycle_hook(aws::AWSConfig=default_aws_config(); args...) = put_lifecycle_hook(aws, args)

@inline put_lifecycle_hook(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "PutLifecycleHook", args)

@inline put_lifecycle_hook(args) = put_lifecycle_hook(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.put_notification_configuration
    put_notification_configuration([::AWSConfig], arguments::Dict)
    put_notification_configuration([::AWSConfig]; AutoScalingGroupName=, TopicARN=, NotificationTypes=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "PutNotificationConfiguration", arguments::Dict)
    autoscaling([::AWSConfig], "PutNotificationConfiguration", AutoScalingGroupName=, TopicARN=, NotificationTypes=)

# PutNotificationConfiguration Operation

Configures an Auto Scaling group to send notifications when specified events take place. Subscribers to the specified topic can have messages delivered to an endpoint such as a web server or an email address.

This configuration overwrites any existing configuration.

For more information see [Getting SNS Notifications When Your Auto Scaling Group Scales](http://docs.aws.amazon.com/autoscaling/latest/userguide/ASGettingNotifications.html) in the *Auto Scaling User Guide*.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `TopicARN = ::String` -- *Required*
The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic.


## `NotificationTypes = [::String, ...]` -- *Required*
The type of event that will cause the notification to be sent. For details about notification types supported by Auto Scaling, see [DescribeAutoScalingNotificationTypes](@ref).




# Exceptions

`LimitExceededFault`, `ResourceContentionFault` or `ServiceLinkedRoleFailure`.

# Example: To add an Auto Scaling notification

This example adds the specified notification to the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "NotificationTypes" => [
        "autoscaling:TEST_NOTIFICATION"
    ],
    "TopicARN" => "arn:aws:sns:us-west-2:123456789012:my-sns-topic"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutNotificationConfiguration)
"""
@inline put_notification_configuration(aws::AWSConfig=default_aws_config(); args...) = put_notification_configuration(aws, args)

@inline put_notification_configuration(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "PutNotificationConfiguration", args)

@inline put_notification_configuration(args) = put_notification_configuration(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.put_scaling_policy
    put_scaling_policy([::AWSConfig], arguments::Dict)
    put_scaling_policy([::AWSConfig]; AutoScalingGroupName=, PolicyName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "PutScalingPolicy", arguments::Dict)
    autoscaling([::AWSConfig], "PutScalingPolicy", AutoScalingGroupName=, PolicyName=, <keyword arguments>)

# PutScalingPolicy Operation

Creates or updates a policy for an Auto Scaling group. To update an existing policy, use the existing policy name and set the parameters you want to change. Any existing parameter not changed in an update to an existing policy is not changed in this update request.

If you exceed your maximum limit of step adjustments, which by default is 20 per region, the call fails. For information about updating this limit, see [AWS Service Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) in the *Amazon Web Services General Reference*.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `PolicyName = ::String` -- *Required*
The name of the policy.


## `PolicyType = ::String`
The policy type. The valid values are `SimpleScaling`, `StepScaling`, and `TargetTrackingScaling`. If the policy type is null, the value is treated as `SimpleScaling`.


## `AdjustmentType = ::String`
The adjustment type. The valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.

This parameter is supported if the policy type is `SimpleScaling` or `StepScaling`.

For more information, see [Dynamic Scaling](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-scale-based-on-demand.html) in the *Auto Scaling User Guide*.


## `MinAdjustmentStep = ::Int`
Available for backward compatibility. Use `MinAdjustmentMagnitude` instead.


## `MinAdjustmentMagnitude = ::Int`
The minimum number of instances to scale. If the value of `AdjustmentType` is `PercentChangeInCapacity`, the scaling policy changes the `DesiredCapacity` of the Auto Scaling group by at least this many instances. Otherwise, the error is `ValidationError`.

This parameter is supported if the policy type is `SimpleScaling` or `StepScaling`.


## `ScalingAdjustment = ::Int`
The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity.

This parameter is required if the policy type is `SimpleScaling` and not supported otherwise.


## `Cooldown = ::Int`
The amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start. If this parameter is not specified, the default cooldown period for the group applies.

This parameter is supported if the policy type is `SimpleScaling`.

For more information, see [Auto Scaling Cooldowns](http://docs.aws.amazon.com/autoscaling/latest/userguide/Cooldown.html) in the *Auto Scaling User Guide*.


## `MetricAggregationType = ::String`
The aggregation type for the CloudWatch metrics. The valid values are `Minimum`, `Maximum`, and `Average`. If the aggregation type is null, the value is treated as `Average`.

This parameter is supported if the policy type is `StepScaling`.


## `StepAdjustments = [[ ... ], ...]`
A set of adjustments that enable you to scale based on the size of the alarm breach.

This parameter is required if the policy type is `StepScaling` and not supported otherwise.
```
 StepAdjustments = [[
        "MetricIntervalLowerBound" =>  double,
        "MetricIntervalUpperBound" =>  double,
        "ScalingAdjustment" => <required> ::Int
    ], ...]
```

## `EstimatedInstanceWarmup = ::Int`
The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics. The default is to use the value specified for the default cooldown period for the group.

This parameter is supported if the policy type is `StepScaling` or `TargetTrackingScaling`.


## `TargetTrackingConfiguration = [ ... ]`
A target tracking policy.

This parameter is required if the policy type is `TargetTrackingScaling` and not supported otherwise.
```
 TargetTrackingConfiguration = [
        "PredefinedMetricSpecification" =>  [
            "PredefinedMetricType" => <required> "ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut" or "ALBRequestCountPerTarget",
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
        "TargetValue" => <required> double,
        "DisableScaleIn" =>  ::Bool
    ]
```



# Returns

`PolicyARNType`

# Exceptions

`LimitExceededFault`, `ResourceContentionFault` or `ServiceLinkedRoleFailure`.

# Example: To add a scaling policy to an Auto Scaling group

This example adds the specified policy to the specified Auto Scaling group.

Input:
```
[
    "AdjustmentType" => "ChangeInCapacity",
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "PolicyName" => "ScaleIn",
    "ScalingAdjustment" => -1
]
```

Output:
```
Dict(
    "PolicyARN" => "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:2233f3d7-6290-403b-b632-93c553560106:autoScalingGroupName/my-auto-scaling-group:policyName/ScaleIn"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutScalingPolicy)
"""
@inline put_scaling_policy(aws::AWSConfig=default_aws_config(); args...) = put_scaling_policy(aws, args)

@inline put_scaling_policy(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "PutScalingPolicy", args)

@inline put_scaling_policy(args) = put_scaling_policy(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.put_scheduled_update_group_action
    put_scheduled_update_group_action([::AWSConfig], arguments::Dict)
    put_scheduled_update_group_action([::AWSConfig]; AutoScalingGroupName=, ScheduledActionName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "PutScheduledUpdateGroupAction", arguments::Dict)
    autoscaling([::AWSConfig], "PutScheduledUpdateGroupAction", AutoScalingGroupName=, ScheduledActionName=, <keyword arguments>)

# PutScheduledUpdateGroupAction Operation

Creates or updates a scheduled scaling action for an Auto Scaling group. When updating a scheduled scaling action, if you leave a parameter unspecified, the corresponding value remains unchanged.

For more information, see [Scheduled Scaling](http://docs.aws.amazon.com/autoscaling/latest/userguide/schedule_time.html) in the *Auto Scaling User Guide*.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `ScheduledActionName = ::String` -- *Required*
The name of this scaling action.


## `Time = timestamp`
This parameter is deprecated.


## `StartTime = timestamp`
The time for this action to start, in "YYYY-MM-DDThh:mm:ssZ" format in UTC/GMT only (for example, `2014-06-01T00:00:00Z`).

If you specify `Recurrence` and `StartTime`, Auto Scaling performs the action at this time, and then performs the action based on the specified recurrence.

If you try to schedule your action in the past, Auto Scaling returns an error message.


## `EndTime = timestamp`
The time for the recurring schedule to end. Auto Scaling does not perform the action after this time.


## `Recurrence = ::String`
The recurring schedule for this action, in Unix cron syntax format. For more information, see [Cron](http://en.wikipedia.org/wiki/Cron) in Wikipedia.


## `MinSize = ::Int`
The minimum size for the Auto Scaling group.


## `MaxSize = ::Int`
The maximum size for the Auto Scaling group.


## `DesiredCapacity = ::Int`
The number of EC2 instances that should be running in the group.




# Exceptions

`AlreadyExistsFault`, `LimitExceededFault` or `ResourceContentionFault`.

# Example: To add a scheduled action to an Auto Scaling group

This example adds the specified scheduled action to the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "DesiredCapacity" => 4,
    "EndTime" => "2014-05-12T08:00:00Z",
    "MaxSize" => 6,
    "MinSize" => 2,
    "ScheduledActionName" => "my-scheduled-action",
    "StartTime" => "2014-05-12T08:00:00Z"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutScheduledUpdateGroupAction)
"""
@inline put_scheduled_update_group_action(aws::AWSConfig=default_aws_config(); args...) = put_scheduled_update_group_action(aws, args)

@inline put_scheduled_update_group_action(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "PutScheduledUpdateGroupAction", args)

@inline put_scheduled_update_group_action(args) = put_scheduled_update_group_action(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.record_lifecycle_action_heartbeat
    record_lifecycle_action_heartbeat([::AWSConfig], arguments::Dict)
    record_lifecycle_action_heartbeat([::AWSConfig]; LifecycleHookName=, AutoScalingGroupName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "RecordLifecycleActionHeartbeat", arguments::Dict)
    autoscaling([::AWSConfig], "RecordLifecycleActionHeartbeat", LifecycleHookName=, AutoScalingGroupName=, <keyword arguments>)

# RecordLifecycleActionHeartbeat Operation

Records a heartbeat for the lifecycle action associated with the specified token or instance. This extends the timeout by the length of time defined using [PutLifecycleHook](@ref).

This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:

1.  (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Auto Scaling launches or terminates instances.

2.  (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Auto Scaling to publish lifecycle notifications to the target.

3.  Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.

4.  **If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.**

5.  If you finish before the timeout period ends, complete the lifecycle action.

For more information, see [Auto Scaling Lifecycle](http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html) in the *Auto Scaling User Guide*.

# Arguments

## `LifecycleHookName = ::String` -- *Required*
The name of the lifecycle hook.


## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `LifecycleActionToken = ::String`
A token that uniquely identifies a specific lifecycle action associated with an instance. Auto Scaling sends this token to the notification target you specified when you created the lifecycle hook.


## `InstanceId = ::String`
The ID of the instance.




# Returns

`RecordLifecycleActionHeartbeatAnswer`

# Exceptions

`ResourceContentionFault`.

# Example: To record a lifecycle action heartbeat

This example records a lifecycle action heartbeat to keep the instance in a pending state.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "LifecycleActionToken" => "bcd2f1b8-9a78-44d3-8a7a-4dd07d7cf635",
    "LifecycleHookName" => "my-lifecycle-hook"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/RecordLifecycleActionHeartbeat)
"""
@inline record_lifecycle_action_heartbeat(aws::AWSConfig=default_aws_config(); args...) = record_lifecycle_action_heartbeat(aws, args)

@inline record_lifecycle_action_heartbeat(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "RecordLifecycleActionHeartbeat", args)

@inline record_lifecycle_action_heartbeat(args) = record_lifecycle_action_heartbeat(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.resume_processes
    resume_processes([::AWSConfig], arguments::Dict)
    resume_processes([::AWSConfig]; AutoScalingGroupName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "ResumeProcesses", arguments::Dict)
    autoscaling([::AWSConfig], "ResumeProcesses", AutoScalingGroupName=, <keyword arguments>)

# ResumeProcesses Operation

Resumes the specified suspended Auto Scaling processes, or all suspended process, for the specified Auto Scaling group.

For more information, see [Suspending and Resuming Auto Scaling Processes](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-suspend-resume-processes.html) in the *Auto Scaling User Guide*.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `ScalingProcesses = [::String, ...]`
One or more of the following processes. If you omit this parameter, all processes are specified.

*   `Launch`

*   `Terminate`

*   `HealthCheck`

*   `ReplaceUnhealthy`

*   `AZRebalance`

*   `AlarmNotification`

*   `ScheduledActions`

*   `AddToLoadBalancer`




# Exceptions

`ResourceInUseFault` or `ResourceContentionFault`.

# Example: To resume Auto Scaling processes

This example resumes the specified suspended scaling process for the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "ScalingProcesses" => [
        "AlarmNotification"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ResumeProcesses)
"""
@inline resume_processes(aws::AWSConfig=default_aws_config(); args...) = resume_processes(aws, args)

@inline resume_processes(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "ResumeProcesses", args)

@inline resume_processes(args) = resume_processes(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.set_desired_capacity
    set_desired_capacity([::AWSConfig], arguments::Dict)
    set_desired_capacity([::AWSConfig]; AutoScalingGroupName=, DesiredCapacity=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "SetDesiredCapacity", arguments::Dict)
    autoscaling([::AWSConfig], "SetDesiredCapacity", AutoScalingGroupName=, DesiredCapacity=, <keyword arguments>)

# SetDesiredCapacity Operation

Sets the size of the specified Auto Scaling group.

For more information about desired capacity, see [What Is Auto Scaling?](http://docs.aws.amazon.com/autoscaling/latest/userguide/WhatIsAutoScaling.html) in the *Auto Scaling User Guide*.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `DesiredCapacity = ::Int` -- *Required*
The number of EC2 instances that should be running in the Auto Scaling group.


## `HonorCooldown = ::Bool`
Indicates whether Auto Scaling waits for the cooldown period to complete before initiating a scaling activity to set your Auto Scaling group to its new capacity. By default, Auto Scaling does not honor the cooldown period during manual scaling activities.




# Exceptions

`ScalingActivityInProgressFault` or `ResourceContentionFault`.

# Example: To set the desired capacity for an Auto Scaling group

This example sets the desired capacity for the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "DesiredCapacity" => 2,
    "HonorCooldown" => true
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetDesiredCapacity)
"""
@inline set_desired_capacity(aws::AWSConfig=default_aws_config(); args...) = set_desired_capacity(aws, args)

@inline set_desired_capacity(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "SetDesiredCapacity", args)

@inline set_desired_capacity(args) = set_desired_capacity(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.set_instance_health
    set_instance_health([::AWSConfig], arguments::Dict)
    set_instance_health([::AWSConfig]; InstanceId=, HealthStatus=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "SetInstanceHealth", arguments::Dict)
    autoscaling([::AWSConfig], "SetInstanceHealth", InstanceId=, HealthStatus=, <keyword arguments>)

# SetInstanceHealth Operation

Sets the health status of the specified instance.

For more information, see [Health Checks](http://docs.aws.amazon.com/autoscaling/latest/userguide/healthcheck.html) in the *Auto Scaling User Guide*.

# Arguments

## `InstanceId = ::String` -- *Required*
The ID of the instance.


## `HealthStatus = ::String` -- *Required*
The health status of the instance. Set to `Healthy` if you want the instance to remain in service. Set to `Unhealthy` if you want the instance to be out of service. Auto Scaling will terminate and replace the unhealthy instance.


## `ShouldRespectGracePeriod = ::Bool`
If the Auto Scaling group of the specified instance has a `HealthCheckGracePeriod` specified for the group, by default, this call will respect the grace period. Set this to `False`, if you do not want the call to respect the grace period associated with the group.

For more information, see the description of the health check grace period for [CreateAutoScalingGroup](@ref).




# Exceptions

`ResourceContentionFault`.

# Example: To set the health status of an instance

This example sets the health status of the specified instance to Unhealthy.

Input:
```
[
    "HealthStatus" => "Unhealthy",
    "InstanceId" => "i-93633f9b"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetInstanceHealth)
"""
@inline set_instance_health(aws::AWSConfig=default_aws_config(); args...) = set_instance_health(aws, args)

@inline set_instance_health(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "SetInstanceHealth", args)

@inline set_instance_health(args) = set_instance_health(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.set_instance_protection
    set_instance_protection([::AWSConfig], arguments::Dict)
    set_instance_protection([::AWSConfig]; InstanceIds=, AutoScalingGroupName=, ProtectedFromScaleIn=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "SetInstanceProtection", arguments::Dict)
    autoscaling([::AWSConfig], "SetInstanceProtection", InstanceIds=, AutoScalingGroupName=, ProtectedFromScaleIn=)

# SetInstanceProtection Operation

Updates the instance protection settings of the specified instances.

For more information, see [Instance Protection](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-termination.html#instance-protection) in the *Auto Scaling User Guide*.

# Arguments

## `InstanceIds = [::String, ...]` -- *Required*
One or more instance IDs.


## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `ProtectedFromScaleIn = ::Bool` -- *Required*
Indicates whether the instance is protected from termination by Auto Scaling when scaling in.




# Returns

`SetInstanceProtectionAnswer`

# Exceptions

`LimitExceededFault` or `ResourceContentionFault`.

# Example: To enable instance protection for an instance

This example enables instance protection for the specified instance.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "InstanceIds" => [
        "i-93633f9b"
    ],
    "ProtectedFromScaleIn" => true
]
```

# Example: To disable instance protection for an instance

This example disables instance protection for the specified instance.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "InstanceIds" => [
        "i-93633f9b"
    ],
    "ProtectedFromScaleIn" => false
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetInstanceProtection)
"""
@inline set_instance_protection(aws::AWSConfig=default_aws_config(); args...) = set_instance_protection(aws, args)

@inline set_instance_protection(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "SetInstanceProtection", args)

@inline set_instance_protection(args) = set_instance_protection(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.suspend_processes
    suspend_processes([::AWSConfig], arguments::Dict)
    suspend_processes([::AWSConfig]; AutoScalingGroupName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "SuspendProcesses", arguments::Dict)
    autoscaling([::AWSConfig], "SuspendProcesses", AutoScalingGroupName=, <keyword arguments>)

# SuspendProcesses Operation

Suspends the specified Auto Scaling processes, or all processes, for the specified Auto Scaling group.

Note that if you suspend either the `Launch` or `Terminate` process types, it can prevent other process types from functioning properly.

To resume processes that have been suspended, use [ResumeProcesses](@ref).

For more information, see [Suspending and Resuming Auto Scaling Processes](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-suspend-resume-processes.html) in the *Auto Scaling User Guide*.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `ScalingProcesses = [::String, ...]`
One or more of the following processes. If you omit this parameter, all processes are specified.

*   `Launch`

*   `Terminate`

*   `HealthCheck`

*   `ReplaceUnhealthy`

*   `AZRebalance`

*   `AlarmNotification`

*   `ScheduledActions`

*   `AddToLoadBalancer`




# Exceptions

`ResourceInUseFault` or `ResourceContentionFault`.

# Example: To suspend Auto Scaling processes

This example suspends the specified scaling process for the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "ScalingProcesses" => [
        "AlarmNotification"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SuspendProcesses)
"""
@inline suspend_processes(aws::AWSConfig=default_aws_config(); args...) = suspend_processes(aws, args)

@inline suspend_processes(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "SuspendProcesses", args)

@inline suspend_processes(args) = suspend_processes(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.terminate_instance_in_auto_scaling_group
    terminate_instance_in_auto_scaling_group([::AWSConfig], arguments::Dict)
    terminate_instance_in_auto_scaling_group([::AWSConfig]; InstanceId=, ShouldDecrementDesiredCapacity=)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "TerminateInstanceInAutoScalingGroup", arguments::Dict)
    autoscaling([::AWSConfig], "TerminateInstanceInAutoScalingGroup", InstanceId=, ShouldDecrementDesiredCapacity=)

# TerminateInstanceInAutoScalingGroup Operation

Terminates the specified instance and optionally adjusts the desired group size.

This call simply makes a termination request. The instance is not terminated immediately.

# Arguments

## `InstanceId = ::String` -- *Required*
The ID of the instance.


## `ShouldDecrementDesiredCapacity = ::Bool` -- *Required*
Indicates whether terminating the instance also decrements the size of the Auto Scaling group.




# Returns

`ActivityType`

# Exceptions

`ScalingActivityInProgressFault` or `ResourceContentionFault`.

# Example: To terminate an instance in an Auto Scaling group

This example terminates the specified instance from the specified Auto Scaling group without updating the size of the group. Auto Scaling launches a replacement instance after the specified instance terminates.

Input:
```
[
    "InstanceId" => "i-93633f9b",
    "ShouldDecrementDesiredCapacity" => false
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/TerminateInstanceInAutoScalingGroup)
"""
@inline terminate_instance_in_auto_scaling_group(aws::AWSConfig=default_aws_config(); args...) = terminate_instance_in_auto_scaling_group(aws, args)

@inline terminate_instance_in_auto_scaling_group(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "TerminateInstanceInAutoScalingGroup", args)

@inline terminate_instance_in_auto_scaling_group(args) = terminate_instance_in_auto_scaling_group(default_aws_config(), args)


"""
    using AWSSDK.AutoScaling.update_auto_scaling_group
    update_auto_scaling_group([::AWSConfig], arguments::Dict)
    update_auto_scaling_group([::AWSConfig]; AutoScalingGroupName=, <keyword arguments>)

    using AWSCore.Services.autoscaling
    autoscaling([::AWSConfig], "UpdateAutoScalingGroup", arguments::Dict)
    autoscaling([::AWSConfig], "UpdateAutoScalingGroup", AutoScalingGroupName=, <keyword arguments>)

# UpdateAutoScalingGroup Operation

Updates the configuration for the specified Auto Scaling group.

The new settings take effect on any scaling activities after this call returns. Scaling activities that are currently in progress aren't affected.

To update an Auto Scaling group with a launch configuration with `InstanceMonitoring` set to `false`, you must first disable the collection of group metrics. Otherwise, you will get an error. If you have previously enabled the collection of group metrics, you can disable it using [DisableMetricsCollection](@ref).

Note the following:

*   If you specify a new value for `MinSize` without specifying a value for `DesiredCapacity`, and the new `MinSize` is larger than the current size of the group, we implicitly call [SetDesiredCapacity](@ref) to set the size of the group to the new value of `MinSize`.

*   If you specify a new value for `MaxSize` without specifying a value for `DesiredCapacity`, and the new `MaxSize` is smaller than the current size of the group, we implicitly call [SetDesiredCapacity](@ref) to set the size of the group to the new value of `MaxSize`.

*   All other optional parameters are left unchanged if not specified.

# Arguments

## `AutoScalingGroupName = ::String` -- *Required*
The name of the Auto Scaling group.


## `LaunchConfigurationName = ::String`
The name of the launch configuration. If you specify a launch configuration, you can't specify a launch template.


## `LaunchTemplate = [ ... ]`
The launch template to use to specify the updates. If you specify a launch template, you can't specify a launch configuration.
```
 LaunchTemplate = [
        "LaunchTemplateId" =>  ::String,
        "LaunchTemplateName" =>  ::String,
        "Version" =>  ::String
    ]
```

## `MinSize = ::Int`
The minimum size of the Auto Scaling group.


## `MaxSize = ::Int`
The maximum size of the Auto Scaling group.


## `DesiredCapacity = ::Int`
The number of EC2 instances that should be running in the Auto Scaling group. This number must be greater than or equal to the minimum size of the group and less than or equal to the maximum size of the group.


## `DefaultCooldown = ::Int`
The amount of time, in seconds, after a scaling activity completes before another scaling activity can start. The default is 300.

For more information, see [Auto Scaling Cooldowns](http://docs.aws.amazon.com/autoscaling/latest/userguide/Cooldown.html) in the *Auto Scaling User Guide*.


## `AvailabilityZones = [::String, ...]`
One or more Availability Zones for the group.


## `HealthCheckType = ::String`
The service to use for the health checks. The valid values are `EC2` and `ELB`.


## `HealthCheckGracePeriod = ::Int`
The amount of time, in seconds, that Auto Scaling waits before checking the health status of an EC2 instance that has come into service. The default is 0.

For more information, see [Health Checks](http://docs.aws.amazon.com/autoscaling/latest/userguide/healthcheck.html) in the *Auto Scaling User Guide*.


## `PlacementGroup = ::String`
The name of the placement group into which you'll launch your instances, if any. For more information, see [Placement Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `VPCZoneIdentifier = ::String`
The ID of the subnet, if you are launching into a VPC. You can specify several subnets in a comma-separated list.

When you specify `VPCZoneIdentifier` with `AvailabilityZones`, ensure that the subnets' Availability Zones match the values you specify for `AvailabilityZones`.

For more information, see [Launching Auto Scaling Instances in a VPC](http://docs.aws.amazon.com/autoscaling/latest/userguide/asg-in-vpc.html) in the *Auto Scaling User Guide*.


## `TerminationPolicies = [::String, ...]`
A standalone termination policy or a list of termination policies used to select the instance to terminate. The policies are executed in the order that they are listed.

For more information, see [Controlling Which Instances Auto Scaling Terminates During Scale In](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-termination.html) in the *Auto Scaling User Guide*.


## `NewInstancesProtectedFromScaleIn = ::Bool`
Indicates whether newly launched instances are protected from termination by Auto Scaling when scaling in.


## `ServiceLinkedRoleARN = ::String`
The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf.




# Exceptions

`ScalingActivityInProgressFault`, `ResourceContentionFault` or `ServiceLinkedRoleFailure`.

# Example: To update the launch configuration

This example updates the launch configuration of the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "LaunchConfigurationName" => "new-launch-config"
]
```

# Example: To update the minimum and maximum size

This example updates the minimum size and maximum size of the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "MaxSize" => 3,
    "MinSize" => 1
]
```

# Example: To enable instance protection

This example enables instance protection for the specified Auto Scaling group.

Input:
```
[
    "AutoScalingGroupName" => "my-auto-scaling-group",
    "NewInstancesProtectedFromScaleIn" => true
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/UpdateAutoScalingGroup)
"""
@inline update_auto_scaling_group(aws::AWSConfig=default_aws_config(); args...) = update_auto_scaling_group(aws, args)

@inline update_auto_scaling_group(aws::AWSConfig, args) = AWSCore.Services.autoscaling(aws, "UpdateAutoScalingGroup", args)

@inline update_auto_scaling_group(args) = update_auto_scaling_group(default_aws_config(), args)




end # module AutoScaling


#==============================================================================#
# End of file
#==============================================================================#
