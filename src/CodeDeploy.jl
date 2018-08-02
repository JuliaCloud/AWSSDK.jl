#==============================================================================#
# CodeDeploy.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/codedeploy-2014-10-06.normal.json
#==============================================================================#

__precompile__()

module CodeDeploy

using AWSCore


"""
    using AWSSDK.CodeDeploy.add_tags_to_on_premises_instances
    add_tags_to_on_premises_instances([::AWSConfig], arguments::Dict)
    add_tags_to_on_premises_instances([::AWSConfig]; tags=, instanceNames=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "AddTagsToOnPremisesInstances", arguments::Dict)
    codedeploy([::AWSConfig], "AddTagsToOnPremisesInstances", tags=, instanceNames=)

# AddTagsToOnPremisesInstances Operation

Adds tags to on-premises instances.

# Arguments

## `tags = [[ ... ], ...]` -- *Required*
The tag key-value pairs to add to the on-premises instances.

Keys and values are both required. Keys cannot be null or empty strings. Value-only tags are not allowed.
```
 tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `instanceNames = [::String, ...]` -- *Required*
The names of the on-premises instances to which to add tags.




# Exceptions

`InstanceNameRequiredException`, `InvalidInstanceNameException`, `TagRequiredException`, `InvalidTagException`, `TagLimitExceededException`, `InstanceLimitExceededException` or `InstanceNotRegisteredException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/AddTagsToOnPremisesInstances)
"""
@inline add_tags_to_on_premises_instances(aws::AWSConfig=default_aws_config(); args...) = add_tags_to_on_premises_instances(aws, args)

@inline add_tags_to_on_premises_instances(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "AddTagsToOnPremisesInstances", args)

@inline add_tags_to_on_premises_instances(args) = add_tags_to_on_premises_instances(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.batch_get_application_revisions
    batch_get_application_revisions([::AWSConfig], arguments::Dict)
    batch_get_application_revisions([::AWSConfig]; applicationName=, revisions=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "BatchGetApplicationRevisions", arguments::Dict)
    codedeploy([::AWSConfig], "BatchGetApplicationRevisions", applicationName=, revisions=)

# BatchGetApplicationRevisions Operation

Gets information about one or more application revisions.

# Arguments

## `applicationName = ::String` -- *Required*
The name of an AWS CodeDeploy application about which to get revision information.


## `revisions = [[ ... ], ...]` -- *Required*
Information to get about the application revisions, including type and location.
```
 revisions = [[
        "revisionType" =>  "S3", "GitHub" or "String",
        "s3Location" =>  [
            "bucket" =>  ::String,
            "key" =>  ::String,
            "bundleType" =>  "tar", "tgz", "zip", "YAML" or "JSON",
            "version" =>  ::String,
            "eTag" =>  ::String
        ],
        "gitHubLocation" =>  [
            "repository" =>  ::String,
            "commitId" =>  ::String
        ],
        "string" =>  [
            "content" =>  ::String,
            "sha256" =>  ::String
        ]
    ], ...]
```



# Returns

`BatchGetApplicationRevisionsOutput`

# Exceptions

`ApplicationDoesNotExistException`, `ApplicationNameRequiredException`, `InvalidApplicationNameException`, `RevisionRequiredException`, `InvalidRevisionException` or `BatchLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetApplicationRevisions)
"""
@inline batch_get_application_revisions(aws::AWSConfig=default_aws_config(); args...) = batch_get_application_revisions(aws, args)

@inline batch_get_application_revisions(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "BatchGetApplicationRevisions", args)

@inline batch_get_application_revisions(args) = batch_get_application_revisions(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.batch_get_applications
    batch_get_applications([::AWSConfig], arguments::Dict)
    batch_get_applications([::AWSConfig]; applicationNames=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "BatchGetApplications", arguments::Dict)
    codedeploy([::AWSConfig], "BatchGetApplications", applicationNames=)

# BatchGetApplications Operation

Gets information about one or more applications.

# Arguments

## `applicationNames = [::String, ...]` -- *Required*
A list of application names separated by spaces.




# Returns

`BatchGetApplicationsOutput`

# Exceptions

`ApplicationNameRequiredException`, `InvalidApplicationNameException`, `ApplicationDoesNotExistException` or `BatchLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetApplications)
"""
@inline batch_get_applications(aws::AWSConfig=default_aws_config(); args...) = batch_get_applications(aws, args)

@inline batch_get_applications(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "BatchGetApplications", args)

@inline batch_get_applications(args) = batch_get_applications(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.batch_get_deployment_groups
    batch_get_deployment_groups([::AWSConfig], arguments::Dict)
    batch_get_deployment_groups([::AWSConfig]; applicationName=, deploymentGroupNames=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "BatchGetDeploymentGroups", arguments::Dict)
    codedeploy([::AWSConfig], "BatchGetDeploymentGroups", applicationName=, deploymentGroupNames=)

# BatchGetDeploymentGroups Operation

Gets information about one or more deployment groups.

# Arguments

## `applicationName = ::String` -- *Required*
The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.


## `deploymentGroupNames = [::String, ...]` -- *Required*
The deployment groups' names.




# Returns

`BatchGetDeploymentGroupsOutput`

# Exceptions

`ApplicationNameRequiredException`, `InvalidApplicationNameException`, `ApplicationDoesNotExistException`, `DeploymentGroupNameRequiredException`, `InvalidDeploymentGroupNameException` or `BatchLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentGroups)
"""
@inline batch_get_deployment_groups(aws::AWSConfig=default_aws_config(); args...) = batch_get_deployment_groups(aws, args)

@inline batch_get_deployment_groups(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "BatchGetDeploymentGroups", args)

@inline batch_get_deployment_groups(args) = batch_get_deployment_groups(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.batch_get_deployment_instances
    batch_get_deployment_instances([::AWSConfig], arguments::Dict)
    batch_get_deployment_instances([::AWSConfig]; deploymentId=, instanceIds=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "BatchGetDeploymentInstances", arguments::Dict)
    codedeploy([::AWSConfig], "BatchGetDeploymentInstances", deploymentId=, instanceIds=)

# BatchGetDeploymentInstances Operation

Gets information about one or more instance that are part of a deployment group.

# Arguments

## `deploymentId = ::String` -- *Required*
The unique ID of a deployment.


## `instanceIds = [::String, ...]` -- *Required*
The unique IDs of instances in the deployment group.




# Returns

`BatchGetDeploymentInstancesOutput`

# Exceptions

`DeploymentIdRequiredException`, `DeploymentDoesNotExistException`, `InstanceIdRequiredException`, `InvalidDeploymentIdException`, `InvalidInstanceNameException` or `BatchLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeploymentInstances)
"""
@inline batch_get_deployment_instances(aws::AWSConfig=default_aws_config(); args...) = batch_get_deployment_instances(aws, args)

@inline batch_get_deployment_instances(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "BatchGetDeploymentInstances", args)

@inline batch_get_deployment_instances(args) = batch_get_deployment_instances(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.batch_get_deployments
    batch_get_deployments([::AWSConfig], arguments::Dict)
    batch_get_deployments([::AWSConfig]; deploymentIds=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "BatchGetDeployments", arguments::Dict)
    codedeploy([::AWSConfig], "BatchGetDeployments", deploymentIds=)

# BatchGetDeployments Operation

Gets information about one or more deployments.

# Arguments

## `deploymentIds = [::String, ...]` -- *Required*
A list of deployment IDs, separated by spaces.




# Returns

`BatchGetDeploymentsOutput`

# Exceptions

`DeploymentIdRequiredException`, `InvalidDeploymentIdException` or `BatchLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetDeployments)
"""
@inline batch_get_deployments(aws::AWSConfig=default_aws_config(); args...) = batch_get_deployments(aws, args)

@inline batch_get_deployments(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "BatchGetDeployments", args)

@inline batch_get_deployments(args) = batch_get_deployments(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.batch_get_on_premises_instances
    batch_get_on_premises_instances([::AWSConfig], arguments::Dict)
    batch_get_on_premises_instances([::AWSConfig]; instanceNames=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "BatchGetOnPremisesInstances", arguments::Dict)
    codedeploy([::AWSConfig], "BatchGetOnPremisesInstances", instanceNames=)

# BatchGetOnPremisesInstances Operation

Gets information about one or more on-premises instances.

# Arguments

## `instanceNames = [::String, ...]` -- *Required*
The names of the on-premises instances about which to get information.




# Returns

`BatchGetOnPremisesInstancesOutput`

# Exceptions

`InstanceNameRequiredException`, `InvalidInstanceNameException` or `BatchLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/BatchGetOnPremisesInstances)
"""
@inline batch_get_on_premises_instances(aws::AWSConfig=default_aws_config(); args...) = batch_get_on_premises_instances(aws, args)

@inline batch_get_on_premises_instances(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "BatchGetOnPremisesInstances", args)

@inline batch_get_on_premises_instances(args) = batch_get_on_premises_instances(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.continue_deployment
    continue_deployment([::AWSConfig], arguments::Dict)
    continue_deployment([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "ContinueDeployment", arguments::Dict)
    codedeploy([::AWSConfig], "ContinueDeployment", <keyword arguments>)

# ContinueDeployment Operation

For a blue/green deployment, starts the process of rerouting traffic from instances in the original environment to instances in the replacement environment without waiting for a specified wait time to elapse. (Traffic rerouting, which is achieved by registering instances in the replacement environment with the load balancer, can start as soon as all instances have a status of Ready.)

# Arguments

## `deploymentId = ::String`
The deployment ID of the blue/green deployment for which you want to start rerouting traffic to the replacement environment.




# Exceptions

`DeploymentIdRequiredException`, `DeploymentDoesNotExistException`, `DeploymentAlreadyCompletedException`, `InvalidDeploymentIdException`, `DeploymentIsNotInReadyStateException` or `UnsupportedActionForDeploymentTypeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ContinueDeployment)
"""
@inline continue_deployment(aws::AWSConfig=default_aws_config(); args...) = continue_deployment(aws, args)

@inline continue_deployment(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "ContinueDeployment", args)

@inline continue_deployment(args) = continue_deployment(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.create_application
    create_application([::AWSConfig], arguments::Dict)
    create_application([::AWSConfig]; applicationName=, <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "CreateApplication", arguments::Dict)
    codedeploy([::AWSConfig], "CreateApplication", applicationName=, <keyword arguments>)

# CreateApplication Operation

Creates an application.

# Arguments

## `applicationName = ::String` -- *Required*
The name of the application. This name must be unique with the applicable IAM user or AWS account.


## `computePlatform = "Server" or "Lambda"`
The destination platform type for the deployment (`Lambda` or `Server`).




# Returns

`CreateApplicationOutput`

# Exceptions

`ApplicationNameRequiredException`, `InvalidApplicationNameException`, `ApplicationAlreadyExistsException`, `ApplicationLimitExceededException` or `InvalidComputePlatformException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateApplication)
"""
@inline create_application(aws::AWSConfig=default_aws_config(); args...) = create_application(aws, args)

@inline create_application(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "CreateApplication", args)

@inline create_application(args) = create_application(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.create_deployment
    create_deployment([::AWSConfig], arguments::Dict)
    create_deployment([::AWSConfig]; applicationName=, <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "CreateDeployment", arguments::Dict)
    codedeploy([::AWSConfig], "CreateDeployment", applicationName=, <keyword arguments>)

# CreateDeployment Operation

Deploys an application revision through the specified deployment group.

# Arguments

## `applicationName = ::String` -- *Required*
The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.


## `deploymentGroupName = ::String`
The name of the deployment group.


## `revision = [ ... ]`
The type and location of the revision to deploy.
```
 revision = [
        "revisionType" =>  "S3", "GitHub" or "String",
        "s3Location" =>  [
            "bucket" =>  ::String,
            "key" =>  ::String,
            "bundleType" =>  "tar", "tgz", "zip", "YAML" or "JSON",
            "version" =>  ::String,
            "eTag" =>  ::String
        ],
        "gitHubLocation" =>  [
            "repository" =>  ::String,
            "commitId" =>  ::String
        ],
        "string" =>  [
            "content" =>  ::String,
            "sha256" =>  ::String
        ]
    ]
```

## `deploymentConfigName = ::String`
The name of a deployment configuration associated with the applicable IAM user or AWS account.

If not specified, the value configured in the deployment group will be used as the default. If the deployment group does not have a deployment configuration associated with it, then CodeDeployDefault.OneAtATime will be used by default.


## `description = ::String`
A comment about the deployment.


## `ignoreApplicationStopFailures = ::Bool`
If set to true, then if the deployment causes the ApplicationStop deployment lifecycle event to an instance to fail, the deployment to that instance will not be considered to have failed at that point and will continue on to the BeforeInstall deployment lifecycle event.

If set to false or not specified, then if the deployment causes the ApplicationStop deployment lifecycle event to fail to an instance, the deployment to that instance will stop, and the deployment to that instance will be considered to have failed.


## `targetInstances = [ ... ]`
Information about the instances that will belong to the replacement environment in a blue/green deployment.
```
 targetInstances = [
        "tagFilters" =>  [[
            "Key" =>  ::String,
            "Value" =>  ::String,
            "Type" =>  "KEY_ONLY", "VALUE_ONLY" or "KEY_AND_VALUE"
        ], ...],
        "autoScalingGroups" =>  [::String, ...],
        "ec2TagSet" =>  ["ec2TagSetList" =>  [[[
                "Key" =>  ::String,
                "Value" =>  ::String,
                "Type" =>  "KEY_ONLY", "VALUE_ONLY" or "KEY_AND_VALUE"
            ], ...], ...]]
    ]
```

## `autoRollbackConfiguration = [ ... ]`
Configuration information for an automatic rollback that is added when a deployment is created.
```
 autoRollbackConfiguration = [
        "enabled" =>  ::Bool,
        "events" =>  ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM" or "DEPLOYMENT_STOP_ON_REQUEST", ...]
    ]
```

## `updateOutdatedInstancesOnly = ::Bool`
Indicates whether to deploy to all instances or only to instances that are not running the latest application revision.


## `fileExistsBehavior = "DISALLOW", "OVERWRITE" or "RETAIN"`
Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment.

The fileExistsBehavior parameter takes any of the following values:

*   DISALLOW: The deployment fails. This is also the default behavior if no option is specified.

*   OVERWRITE: The version of the file from the application revision currently being deployed replaces the version already on the instance.

*   RETAIN: The version of the file already on the instance is kept and used as part of the new deployment.




# Returns

`CreateDeploymentOutput`

# Exceptions

`ApplicationNameRequiredException`, `InvalidApplicationNameException`, `ApplicationDoesNotExistException`, `DeploymentGroupNameRequiredException`, `InvalidDeploymentGroupNameException`, `DeploymentGroupDoesNotExistException`, `RevisionRequiredException`, `RevisionDoesNotExistException`, `InvalidRevisionException`, `InvalidDeploymentConfigNameException`, `DeploymentConfigDoesNotExistException`, `DescriptionTooLongException`, `DeploymentLimitExceededException`, `InvalidTargetInstancesException`, `InvalidAutoRollbackConfigException`, `InvalidLoadBalancerInfoException`, `InvalidFileExistsBehaviorException`, `InvalidRoleException`, `InvalidAutoScalingGroupException`, `ThrottlingException`, `InvalidUpdateOutdatedInstancesOnlyValueException`, `InvalidIgnoreApplicationStopFailuresValueException` or `InvalidGitHubAccountTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeployment)
"""
@inline create_deployment(aws::AWSConfig=default_aws_config(); args...) = create_deployment(aws, args)

@inline create_deployment(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "CreateDeployment", args)

@inline create_deployment(args) = create_deployment(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.create_deployment_config
    create_deployment_config([::AWSConfig], arguments::Dict)
    create_deployment_config([::AWSConfig]; deploymentConfigName=, <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "CreateDeploymentConfig", arguments::Dict)
    codedeploy([::AWSConfig], "CreateDeploymentConfig", deploymentConfigName=, <keyword arguments>)

# CreateDeploymentConfig Operation

Creates a deployment configuration.

# Arguments

## `deploymentConfigName = ::String` -- *Required*
The name of the deployment configuration to create.


## `minimumHealthyHosts = [ ... ]`
The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value.

The type parameter takes either of the following values:

*   HOST_COUNT: The value parameter represents the minimum number of healthy instances as an absolute value.

*   FLEET_PERCENT: The value parameter represents the minimum number of healthy instances as a percentage of the total number of instances in the deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instance and rounds up fractional instances.

The value parameter takes an integer.

For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT and a value of 95.
```
 minimumHealthyHosts = [
        "value" =>  ::Int,
        "type" =>  "HOST_COUNT" or "FLEET_PERCENT"
    ]
```

## `trafficRoutingConfig = [ ... ]`
The configuration that specifies how the deployment traffic will be routed.
```
 trafficRoutingConfig = [
        "type" =>  "TimeBasedCanary", "TimeBasedLinear" or "AllAtOnce",
        "timeBasedCanary" =>  [
            "canaryPercentage" =>  ::Int,
            "canaryInterval" =>  ::Int
        ],
        "timeBasedLinear" =>  [
            "linearPercentage" =>  ::Int,
            "linearInterval" =>  ::Int
        ]
    ]
```

## `computePlatform = "Server" or "Lambda"`
The destination platform type for the deployment (`Lambda` or `Server`>).




# Returns

`CreateDeploymentConfigOutput`

# Exceptions

`InvalidDeploymentConfigNameException`, `DeploymentConfigNameRequiredException`, `DeploymentConfigAlreadyExistsException`, `InvalidMinimumHealthyHostValueException`, `DeploymentConfigLimitExceededException`, `InvalidComputePlatformException` or `InvalidTrafficRoutingConfigurationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentConfig)
"""
@inline create_deployment_config(aws::AWSConfig=default_aws_config(); args...) = create_deployment_config(aws, args)

@inline create_deployment_config(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "CreateDeploymentConfig", args)

@inline create_deployment_config(args) = create_deployment_config(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.create_deployment_group
    create_deployment_group([::AWSConfig], arguments::Dict)
    create_deployment_group([::AWSConfig]; applicationName=, deploymentGroupName=, serviceRoleArn=, <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "CreateDeploymentGroup", arguments::Dict)
    codedeploy([::AWSConfig], "CreateDeploymentGroup", applicationName=, deploymentGroupName=, serviceRoleArn=, <keyword arguments>)

# CreateDeploymentGroup Operation

Creates a deployment group to which application revisions will be deployed.

# Arguments

## `applicationName = ::String` -- *Required*
The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.


## `deploymentGroupName = ::String` -- *Required*
The name of a new deployment group for the specified application.


## `deploymentConfigName = ::String`
If specified, the deployment configuration name can be either one of the predefined configurations provided with AWS CodeDeploy or a custom deployment configuration that you create by calling the create deployment configuration operation.

CodeDeployDefault.OneAtATime is the default deployment configuration. It is used if a configuration isn't specified for the deployment or the deployment group.

For more information about the predefined deployment configurations in AWS CodeDeploy, see [Working with Deployment Groups in AWS CodeDeploy](http://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html) in the AWS CodeDeploy User Guide.


## `ec2TagFilters = [[ ... ], ...]`
The Amazon EC2 tags on which to filter. The deployment group will include EC2 instances with any of the specified tags. Cannot be used in the same call as ec2TagSet.
```
 ec2TagFilters = [[
        "Key" =>  ::String,
        "Value" =>  ::String,
        "Type" =>  "KEY_ONLY", "VALUE_ONLY" or "KEY_AND_VALUE"
    ], ...]
```

## `onPremisesInstanceTagFilters = [[ ... ], ...]`
The on-premises instance tags on which to filter. The deployment group will include on-premises instances with any of the specified tags. Cannot be used in the same call as OnPremisesTagSet.
```
 onPremisesInstanceTagFilters = [[
        "Key" =>  ::String,
        "Value" =>  ::String,
        "Type" =>  "KEY_ONLY", "VALUE_ONLY" or "KEY_AND_VALUE"
    ], ...]
```

## `autoScalingGroups = [::String, ...]`
A list of associated Auto Scaling groups.


## `serviceRoleArn = ::String` -- *Required*
A service role ARN that allows AWS CodeDeploy to act on the user's behalf when interacting with AWS services.


## `triggerConfigurations = [[ ... ], ...]`
Information about triggers to create when the deployment group is created. For examples, see [Create a Trigger for an AWS CodeDeploy Event](http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html) in the AWS CodeDeploy User Guide.
```
 triggerConfigurations = [[
        "triggerName" =>  ::String,
        "triggerTargetArn" =>  ::String,
        "triggerEvents" =>  ["DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure" or "InstanceReady", ...]
    ], ...]
```

## `alarmConfiguration = [ ... ]`
Information to add about Amazon CloudWatch alarms when the deployment group is created.
```
 alarmConfiguration = [
        "enabled" =>  ::Bool,
        "ignorePollAlarmFailure" =>  ::Bool,
        "alarms" =>  [["name" =>  ::String], ...]
    ]
```

## `autoRollbackConfiguration = [ ... ]`
Configuration information for an automatic rollback that is added when a deployment group is created.
```
 autoRollbackConfiguration = [
        "enabled" =>  ::Bool,
        "events" =>  ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM" or "DEPLOYMENT_STOP_ON_REQUEST", ...]
    ]
```

## `deploymentStyle = [ ... ]`
Information about the type of deployment, in-place or blue/green, that you want to run and whether to route deployment traffic behind a load balancer.
```
 deploymentStyle = [
        "deploymentType" =>  "IN_PLACE" or "BLUE_GREEN",
        "deploymentOption" =>  "WITH_TRAFFIC_CONTROL" or "WITHOUT_TRAFFIC_CONTROL"
    ]
```

## `blueGreenDeploymentConfiguration = [ ... ]`
Information about blue/green deployment options for a deployment group.
```
 blueGreenDeploymentConfiguration = [
        "terminateBlueInstancesOnDeploymentSuccess" =>  [
            "action" =>  "TERMINATE" or "KEEP_ALIVE",
            "terminationWaitTimeInMinutes" =>  ::Int
        ],
        "deploymentReadyOption" =>  [
            "actionOnTimeout" =>  "CONTINUE_DEPLOYMENT" or "STOP_DEPLOYMENT",
            "waitTimeInMinutes" =>  ::Int
        ],
        "greenFleetProvisioningOption" =>  ["action" =>  "DISCOVER_EXISTING" or "COPY_AUTO_SCALING_GROUP"]
    ]
```

## `loadBalancerInfo = [ ... ]`
Information about the load balancer used in a deployment.
```
 loadBalancerInfo = [
        "elbInfoList" =>  [["name" =>  ::String], ...],
        "targetGroupInfoList" =>  [["name" =>  ::String], ...]
    ]
```

## `ec2TagSet = ["ec2TagSetList" =>  [[[ ... ], ...], ...]]`
Information about groups of tags applied to EC2 instances. The deployment group will include only EC2 instances identified by all the tag groups. Cannot be used in the same call as ec2TagFilters.
```
 ec2TagSet = ["ec2TagSetList" =>  [[[
            "Key" =>  ::String,
            "Value" =>  ::String,
            "Type" =>  "KEY_ONLY", "VALUE_ONLY" or "KEY_AND_VALUE"
        ], ...], ...]]
```

## `onPremisesTagSet = ["onPremisesTagSetList" =>  [[[ ... ], ...], ...]]`
Information about groups of tags applied to on-premises instances. The deployment group will include only on-premises instances identified by all the tag groups. Cannot be used in the same call as onPremisesInstanceTagFilters.
```
 onPremisesTagSet = ["onPremisesTagSetList" =>  [[[
            "Key" =>  ::String,
            "Value" =>  ::String,
            "Type" =>  "KEY_ONLY", "VALUE_ONLY" or "KEY_AND_VALUE"
        ], ...], ...]]
```



# Returns

`CreateDeploymentGroupOutput`

# Exceptions

`ApplicationNameRequiredException`, `InvalidApplicationNameException`, `ApplicationDoesNotExistException`, `DeploymentGroupNameRequiredException`, `InvalidDeploymentGroupNameException`, `DeploymentGroupAlreadyExistsException`, `InvalidEC2TagException`, `InvalidTagException`, `InvalidAutoScalingGroupException`, `InvalidDeploymentConfigNameException`, `DeploymentConfigDoesNotExistException`, `RoleRequiredException`, `InvalidRoleException`, `DeploymentGroupLimitExceededException`, `LifecycleHookLimitExceededException`, `InvalidTriggerConfigException`, `TriggerTargetsLimitExceededException`, `InvalidAlarmConfigException`, `AlarmsLimitExceededException`, `InvalidAutoRollbackConfigException`, `InvalidLoadBalancerInfoException`, `InvalidDeploymentStyleException`, `InvalidBlueGreenDeploymentConfigurationException`, `InvalidEC2TagCombinationException`, `InvalidOnPremisesTagCombinationException`, `TagSetListLimitExceededException` or `InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/CreateDeploymentGroup)
"""
@inline create_deployment_group(aws::AWSConfig=default_aws_config(); args...) = create_deployment_group(aws, args)

@inline create_deployment_group(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "CreateDeploymentGroup", args)

@inline create_deployment_group(args) = create_deployment_group(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.delete_application
    delete_application([::AWSConfig], arguments::Dict)
    delete_application([::AWSConfig]; applicationName=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "DeleteApplication", arguments::Dict)
    codedeploy([::AWSConfig], "DeleteApplication", applicationName=)

# DeleteApplication Operation

Deletes an application.

# Arguments

## `applicationName = ::String` -- *Required*
The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.




# Exceptions

`ApplicationNameRequiredException` or `InvalidApplicationNameException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteApplication)
"""
@inline delete_application(aws::AWSConfig=default_aws_config(); args...) = delete_application(aws, args)

@inline delete_application(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "DeleteApplication", args)

@inline delete_application(args) = delete_application(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.delete_deployment_config
    delete_deployment_config([::AWSConfig], arguments::Dict)
    delete_deployment_config([::AWSConfig]; deploymentConfigName=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "DeleteDeploymentConfig", arguments::Dict)
    codedeploy([::AWSConfig], "DeleteDeploymentConfig", deploymentConfigName=)

# DeleteDeploymentConfig Operation

Deletes a deployment configuration.

**Note**
> A deployment configuration cannot be deleted if it is currently in use. Predefined configurations cannot be deleted.

# Arguments

## `deploymentConfigName = ::String` -- *Required*
The name of a deployment configuration associated with the applicable IAM user or AWS account.




# Exceptions

`InvalidDeploymentConfigNameException`, `DeploymentConfigNameRequiredException`, `DeploymentConfigInUseException` or `InvalidOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteDeploymentConfig)
"""
@inline delete_deployment_config(aws::AWSConfig=default_aws_config(); args...) = delete_deployment_config(aws, args)

@inline delete_deployment_config(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "DeleteDeploymentConfig", args)

@inline delete_deployment_config(args) = delete_deployment_config(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.delete_deployment_group
    delete_deployment_group([::AWSConfig], arguments::Dict)
    delete_deployment_group([::AWSConfig]; applicationName=, deploymentGroupName=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "DeleteDeploymentGroup", arguments::Dict)
    codedeploy([::AWSConfig], "DeleteDeploymentGroup", applicationName=, deploymentGroupName=)

# DeleteDeploymentGroup Operation

Deletes a deployment group.

# Arguments

## `applicationName = ::String` -- *Required*
The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.


## `deploymentGroupName = ::String` -- *Required*
The name of an existing deployment group for the specified application.




# Returns

`DeleteDeploymentGroupOutput`

# Exceptions

`ApplicationNameRequiredException`, `InvalidApplicationNameException`, `DeploymentGroupNameRequiredException`, `InvalidDeploymentGroupNameException` or `InvalidRoleException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteDeploymentGroup)
"""
@inline delete_deployment_group(aws::AWSConfig=default_aws_config(); args...) = delete_deployment_group(aws, args)

@inline delete_deployment_group(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "DeleteDeploymentGroup", args)

@inline delete_deployment_group(args) = delete_deployment_group(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.delete_git_hub_account_token
    delete_git_hub_account_token([::AWSConfig], arguments::Dict)
    delete_git_hub_account_token([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "DeleteGitHubAccountToken", arguments::Dict)
    codedeploy([::AWSConfig], "DeleteGitHubAccountToken", <keyword arguments>)

# DeleteGitHubAccountToken Operation

Deletes a GitHub account connection.

# Arguments

## `tokenName = ::String`
The name of the GitHub account connection to delete.




# Returns

`DeleteGitHubAccountTokenOutput`

# Exceptions

`GitHubAccountTokenNameRequiredException`, `GitHubAccountTokenDoesNotExistException`, `InvalidGitHubAccountTokenNameException`, `ResourceValidationException` or `OperationNotSupportedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeleteGitHubAccountToken)
"""
@inline delete_git_hub_account_token(aws::AWSConfig=default_aws_config(); args...) = delete_git_hub_account_token(aws, args)

@inline delete_git_hub_account_token(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "DeleteGitHubAccountToken", args)

@inline delete_git_hub_account_token(args) = delete_git_hub_account_token(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.deregister_on_premises_instance
    deregister_on_premises_instance([::AWSConfig], arguments::Dict)
    deregister_on_premises_instance([::AWSConfig]; instanceName=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "DeregisterOnPremisesInstance", arguments::Dict)
    codedeploy([::AWSConfig], "DeregisterOnPremisesInstance", instanceName=)

# DeregisterOnPremisesInstance Operation

Deregisters an on-premises instance.

# Arguments

## `instanceName = ::String` -- *Required*
The name of the on-premises instance to deregister.




# Exceptions

`InstanceNameRequiredException` or `InvalidInstanceNameException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/DeregisterOnPremisesInstance)
"""
@inline deregister_on_premises_instance(aws::AWSConfig=default_aws_config(); args...) = deregister_on_premises_instance(aws, args)

@inline deregister_on_premises_instance(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "DeregisterOnPremisesInstance", args)

@inline deregister_on_premises_instance(args) = deregister_on_premises_instance(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.get_application
    get_application([::AWSConfig], arguments::Dict)
    get_application([::AWSConfig]; applicationName=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "GetApplication", arguments::Dict)
    codedeploy([::AWSConfig], "GetApplication", applicationName=)

# GetApplication Operation

Gets information about an application.

# Arguments

## `applicationName = ::String` -- *Required*
The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.




# Returns

`GetApplicationOutput`

# Exceptions

`ApplicationNameRequiredException`, `InvalidApplicationNameException` or `ApplicationDoesNotExistException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetApplication)
"""
@inline get_application(aws::AWSConfig=default_aws_config(); args...) = get_application(aws, args)

@inline get_application(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "GetApplication", args)

@inline get_application(args) = get_application(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.get_application_revision
    get_application_revision([::AWSConfig], arguments::Dict)
    get_application_revision([::AWSConfig]; applicationName=, revision=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "GetApplicationRevision", arguments::Dict)
    codedeploy([::AWSConfig], "GetApplicationRevision", applicationName=, revision=)

# GetApplicationRevision Operation

Gets information about an application revision.

# Arguments

## `applicationName = ::String` -- *Required*
The name of the application that corresponds to the revision.


## `revision = [ ... ]` -- *Required*
Information about the application revision to get, including type and location.
```
 revision = [
        "revisionType" =>  "S3", "GitHub" or "String",
        "s3Location" =>  [
            "bucket" =>  ::String,
            "key" =>  ::String,
            "bundleType" =>  "tar", "tgz", "zip", "YAML" or "JSON",
            "version" =>  ::String,
            "eTag" =>  ::String
        ],
        "gitHubLocation" =>  [
            "repository" =>  ::String,
            "commitId" =>  ::String
        ],
        "string" =>  [
            "content" =>  ::String,
            "sha256" =>  ::String
        ]
    ]
```



# Returns

`GetApplicationRevisionOutput`

# Exceptions

`ApplicationDoesNotExistException`, `ApplicationNameRequiredException`, `InvalidApplicationNameException`, `RevisionDoesNotExistException`, `RevisionRequiredException` or `InvalidRevisionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetApplicationRevision)
"""
@inline get_application_revision(aws::AWSConfig=default_aws_config(); args...) = get_application_revision(aws, args)

@inline get_application_revision(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "GetApplicationRevision", args)

@inline get_application_revision(args) = get_application_revision(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.get_deployment
    get_deployment([::AWSConfig], arguments::Dict)
    get_deployment([::AWSConfig]; deploymentId=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "GetDeployment", arguments::Dict)
    codedeploy([::AWSConfig], "GetDeployment", deploymentId=)

# GetDeployment Operation

Gets information about a deployment.

# Arguments

## `deploymentId = ::String` -- *Required*
A deployment ID associated with the applicable IAM user or AWS account.




# Returns

`GetDeploymentOutput`

# Exceptions

`DeploymentIdRequiredException`, `InvalidDeploymentIdException` or `DeploymentDoesNotExistException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeployment)
"""
@inline get_deployment(aws::AWSConfig=default_aws_config(); args...) = get_deployment(aws, args)

@inline get_deployment(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "GetDeployment", args)

@inline get_deployment(args) = get_deployment(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.get_deployment_config
    get_deployment_config([::AWSConfig], arguments::Dict)
    get_deployment_config([::AWSConfig]; deploymentConfigName=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "GetDeploymentConfig", arguments::Dict)
    codedeploy([::AWSConfig], "GetDeploymentConfig", deploymentConfigName=)

# GetDeploymentConfig Operation

Gets information about a deployment configuration.

# Arguments

## `deploymentConfigName = ::String` -- *Required*
The name of a deployment configuration associated with the applicable IAM user or AWS account.




# Returns

`GetDeploymentConfigOutput`

# Exceptions

`InvalidDeploymentConfigNameException`, `DeploymentConfigNameRequiredException` or `DeploymentConfigDoesNotExistException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentConfig)
"""
@inline get_deployment_config(aws::AWSConfig=default_aws_config(); args...) = get_deployment_config(aws, args)

@inline get_deployment_config(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "GetDeploymentConfig", args)

@inline get_deployment_config(args) = get_deployment_config(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.get_deployment_group
    get_deployment_group([::AWSConfig], arguments::Dict)
    get_deployment_group([::AWSConfig]; applicationName=, deploymentGroupName=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "GetDeploymentGroup", arguments::Dict)
    codedeploy([::AWSConfig], "GetDeploymentGroup", applicationName=, deploymentGroupName=)

# GetDeploymentGroup Operation

Gets information about a deployment group.

# Arguments

## `applicationName = ::String` -- *Required*
The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.


## `deploymentGroupName = ::String` -- *Required*
The name of an existing deployment group for the specified application.




# Returns

`GetDeploymentGroupOutput`

# Exceptions

`ApplicationNameRequiredException`, `InvalidApplicationNameException`, `ApplicationDoesNotExistException`, `DeploymentGroupNameRequiredException`, `InvalidDeploymentGroupNameException` or `DeploymentGroupDoesNotExistException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentGroup)
"""
@inline get_deployment_group(aws::AWSConfig=default_aws_config(); args...) = get_deployment_group(aws, args)

@inline get_deployment_group(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "GetDeploymentGroup", args)

@inline get_deployment_group(args) = get_deployment_group(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.get_deployment_instance
    get_deployment_instance([::AWSConfig], arguments::Dict)
    get_deployment_instance([::AWSConfig]; deploymentId=, instanceId=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "GetDeploymentInstance", arguments::Dict)
    codedeploy([::AWSConfig], "GetDeploymentInstance", deploymentId=, instanceId=)

# GetDeploymentInstance Operation

Gets information about an instance as part of a deployment.

# Arguments

## `deploymentId = ::String` -- *Required*
The unique ID of a deployment.


## `instanceId = ::String` -- *Required*
The unique ID of an instance in the deployment group.




# Returns

`GetDeploymentInstanceOutput`

# Exceptions

`DeploymentIdRequiredException`, `DeploymentDoesNotExistException`, `InstanceIdRequiredException`, `InvalidDeploymentIdException`, `InstanceDoesNotExistException` or `InvalidInstanceNameException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetDeploymentInstance)
"""
@inline get_deployment_instance(aws::AWSConfig=default_aws_config(); args...) = get_deployment_instance(aws, args)

@inline get_deployment_instance(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "GetDeploymentInstance", args)

@inline get_deployment_instance(args) = get_deployment_instance(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.get_on_premises_instance
    get_on_premises_instance([::AWSConfig], arguments::Dict)
    get_on_premises_instance([::AWSConfig]; instanceName=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "GetOnPremisesInstance", arguments::Dict)
    codedeploy([::AWSConfig], "GetOnPremisesInstance", instanceName=)

# GetOnPremisesInstance Operation

Gets information about an on-premises instance.

# Arguments

## `instanceName = ::String` -- *Required*
The name of the on-premises instance about which to get information.




# Returns

`GetOnPremisesInstanceOutput`

# Exceptions

`InstanceNameRequiredException`, `InstanceNotRegisteredException` or `InvalidInstanceNameException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/GetOnPremisesInstance)
"""
@inline get_on_premises_instance(aws::AWSConfig=default_aws_config(); args...) = get_on_premises_instance(aws, args)

@inline get_on_premises_instance(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "GetOnPremisesInstance", args)

@inline get_on_premises_instance(args) = get_on_premises_instance(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.list_application_revisions
    list_application_revisions([::AWSConfig], arguments::Dict)
    list_application_revisions([::AWSConfig]; applicationName=, <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "ListApplicationRevisions", arguments::Dict)
    codedeploy([::AWSConfig], "ListApplicationRevisions", applicationName=, <keyword arguments>)

# ListApplicationRevisions Operation

Lists information about revisions for an application.

# Arguments

## `applicationName = ::String` -- *Required*
The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.


## `sortBy = "registerTime", "firstUsedTime" or "lastUsedTime"`
The column name to use to sort the list results:

*   registerTime: Sort by the time the revisions were registered with AWS CodeDeploy.

*   firstUsedTime: Sort by the time the revisions were first used in a deployment.

*   lastUsedTime: Sort by the time the revisions were last used in a deployment.

If not specified or set to null, the results will be returned in an arbitrary order.


## `sortOrder = "ascending" or "descending"`
The order in which to sort the list results:

*   ascending: ascending order.

*   descending: descending order.

If not specified, the results will be sorted in ascending order.

If set to null, the results will be sorted in an arbitrary order.


## `s3Bucket = ::String`
An Amazon S3 bucket name to limit the search for revisions.

If set to null, all of the user's buckets will be searched.


## `s3KeyPrefix = ::String`
A key prefix for the set of Amazon S3 objects to limit the search for revisions.


## `deployed = "include", "exclude" or "ignore"`
Whether to list revisions based on whether the revision is the target revision of an deployment group:

*   include: List revisions that are target revisions of a deployment group.

*   exclude: Do not list revisions that are target revisions of a deployment group.

*   ignore: List all revisions.


## `nextToken = ::String`
An identifier returned from the previous list application revisions call. It can be used to return the next set of applications in the list.




# Returns

`ListApplicationRevisionsOutput`

# Exceptions

`ApplicationDoesNotExistException`, `ApplicationNameRequiredException`, `InvalidApplicationNameException`, `InvalidSortByException`, `InvalidSortOrderException`, `InvalidBucketNameFilterException`, `InvalidKeyPrefixFilterException`, `BucketNameFilterRequiredException`, `InvalidDeployedStateFilterException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListApplicationRevisions)
"""
@inline list_application_revisions(aws::AWSConfig=default_aws_config(); args...) = list_application_revisions(aws, args)

@inline list_application_revisions(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "ListApplicationRevisions", args)

@inline list_application_revisions(args) = list_application_revisions(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.list_applications
    list_applications([::AWSConfig], arguments::Dict)
    list_applications([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "ListApplications", arguments::Dict)
    codedeploy([::AWSConfig], "ListApplications", <keyword arguments>)

# ListApplications Operation

Lists the applications registered with the applicable IAM user or AWS account.

# Arguments

## `nextToken = ::String`
An identifier returned from the previous list applications call. It can be used to return the next set of applications in the list.




# Returns

`ListApplicationsOutput`

# Exceptions

`InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListApplications)
"""
@inline list_applications(aws::AWSConfig=default_aws_config(); args...) = list_applications(aws, args)

@inline list_applications(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "ListApplications", args)

@inline list_applications(args) = list_applications(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.list_deployment_configs
    list_deployment_configs([::AWSConfig], arguments::Dict)
    list_deployment_configs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "ListDeploymentConfigs", arguments::Dict)
    codedeploy([::AWSConfig], "ListDeploymentConfigs", <keyword arguments>)

# ListDeploymentConfigs Operation

Lists the deployment configurations with the applicable IAM user or AWS account.

# Arguments

## `nextToken = ::String`
An identifier returned from the previous list deployment configurations call. It can be used to return the next set of deployment configurations in the list.




# Returns

`ListDeploymentConfigsOutput`

# Exceptions

`InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentConfigs)
"""
@inline list_deployment_configs(aws::AWSConfig=default_aws_config(); args...) = list_deployment_configs(aws, args)

@inline list_deployment_configs(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "ListDeploymentConfigs", args)

@inline list_deployment_configs(args) = list_deployment_configs(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.list_deployment_groups
    list_deployment_groups([::AWSConfig], arguments::Dict)
    list_deployment_groups([::AWSConfig]; applicationName=, <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "ListDeploymentGroups", arguments::Dict)
    codedeploy([::AWSConfig], "ListDeploymentGroups", applicationName=, <keyword arguments>)

# ListDeploymentGroups Operation

Lists the deployment groups for an application registered with the applicable IAM user or AWS account.

# Arguments

## `applicationName = ::String` -- *Required*
The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.


## `nextToken = ::String`
An identifier returned from the previous list deployment groups call. It can be used to return the next set of deployment groups in the list.




# Returns

`ListDeploymentGroupsOutput`

# Exceptions

`ApplicationNameRequiredException`, `InvalidApplicationNameException`, `ApplicationDoesNotExistException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentGroups)
"""
@inline list_deployment_groups(aws::AWSConfig=default_aws_config(); args...) = list_deployment_groups(aws, args)

@inline list_deployment_groups(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "ListDeploymentGroups", args)

@inline list_deployment_groups(args) = list_deployment_groups(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.list_deployment_instances
    list_deployment_instances([::AWSConfig], arguments::Dict)
    list_deployment_instances([::AWSConfig]; deploymentId=, <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "ListDeploymentInstances", arguments::Dict)
    codedeploy([::AWSConfig], "ListDeploymentInstances", deploymentId=, <keyword arguments>)

# ListDeploymentInstances Operation

Lists the instance for a deployment associated with the applicable IAM user or AWS account.

# Arguments

## `deploymentId = ::String` -- *Required*
The unique ID of a deployment.


## `nextToken = ::String`
An identifier returned from the previous list deployment instances call. It can be used to return the next set of deployment instances in the list.


## `instanceStatusFilter = ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown" or "Ready", ...]`
A subset of instances to list by status:

*   Pending: Include those instance with pending deployments.

*   InProgress: Include those instance where deployments are still in progress.

*   Succeeded: Include those instances with successful deployments.

*   Failed: Include those instance with failed deployments.

*   Skipped: Include those instance with skipped deployments.

*   Unknown: Include those instance with deployments in an unknown state.


## `instanceTypeFilter = ["Blue" or "Green", ...]`
The set of instances in a blue/green deployment, either those in the original environment ("BLUE") or those in the replacement environment ("GREEN"), for which you want to view instance information.




# Returns

`ListDeploymentInstancesOutput`

# Exceptions

`DeploymentIdRequiredException`, `DeploymentDoesNotExistException`, `DeploymentNotStartedException`, `InvalidNextTokenException`, `InvalidDeploymentIdException`, `InvalidInstanceStatusException`, `InvalidInstanceTypeException` or `InvalidDeploymentInstanceTypeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeploymentInstances)
"""
@inline list_deployment_instances(aws::AWSConfig=default_aws_config(); args...) = list_deployment_instances(aws, args)

@inline list_deployment_instances(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "ListDeploymentInstances", args)

@inline list_deployment_instances(args) = list_deployment_instances(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.list_deployments
    list_deployments([::AWSConfig], arguments::Dict)
    list_deployments([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "ListDeployments", arguments::Dict)
    codedeploy([::AWSConfig], "ListDeployments", <keyword arguments>)

# ListDeployments Operation

Lists the deployments in a deployment group for an application registered with the applicable IAM user or AWS account.

# Arguments

## `applicationName = ::String`
The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.


## `deploymentGroupName = ::String`
The name of an existing deployment group for the specified application.


## `includeOnlyStatuses = ["Created", "Queued", "InProgress", "Succeeded", "Failed", "Stopped" or "Ready", ...]`
A subset of deployments to list by status:

*   Created: Include created deployments in the resulting list.

*   Queued: Include queued deployments in the resulting list.

*   In Progress: Include in-progress deployments in the resulting list.

*   Succeeded: Include successful deployments in the resulting list.

*   Failed: Include failed deployments in the resulting list.

*   Stopped: Include stopped deployments in the resulting list.


## `createTimeRange = [ ... ]`
A time range (start and end) for returning a subset of the list of deployments.
```
 createTimeRange = [
        "start" =>  timestamp,
        "end" =>  timestamp
    ]
```

## `nextToken = ::String`
An identifier returned from the previous list deployments call. It can be used to return the next set of deployments in the list.




# Returns

`ListDeploymentsOutput`

# Exceptions

`ApplicationNameRequiredException`, `InvalidApplicationNameException`, `ApplicationDoesNotExistException`, `InvalidDeploymentGroupNameException`, `DeploymentGroupDoesNotExistException`, `DeploymentGroupNameRequiredException`, `InvalidTimeRangeException`, `InvalidDeploymentStatusException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListDeployments)
"""
@inline list_deployments(aws::AWSConfig=default_aws_config(); args...) = list_deployments(aws, args)

@inline list_deployments(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "ListDeployments", args)

@inline list_deployments(args) = list_deployments(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.list_git_hub_account_token_names
    list_git_hub_account_token_names([::AWSConfig], arguments::Dict)
    list_git_hub_account_token_names([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "ListGitHubAccountTokenNames", arguments::Dict)
    codedeploy([::AWSConfig], "ListGitHubAccountTokenNames", <keyword arguments>)

# ListGitHubAccountTokenNames Operation

Lists the names of stored connections to GitHub accounts.

# Arguments

## `nextToken = ::String`
An identifier returned from the previous ListGitHubAccountTokenNames call. It can be used to return the next set of names in the list.




# Returns

`ListGitHubAccountTokenNamesOutput`

# Exceptions

`InvalidNextTokenException`, `ResourceValidationException` or `OperationNotSupportedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListGitHubAccountTokenNames)
"""
@inline list_git_hub_account_token_names(aws::AWSConfig=default_aws_config(); args...) = list_git_hub_account_token_names(aws, args)

@inline list_git_hub_account_token_names(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "ListGitHubAccountTokenNames", args)

@inline list_git_hub_account_token_names(args) = list_git_hub_account_token_names(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.list_on_premises_instances
    list_on_premises_instances([::AWSConfig], arguments::Dict)
    list_on_premises_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "ListOnPremisesInstances", arguments::Dict)
    codedeploy([::AWSConfig], "ListOnPremisesInstances", <keyword arguments>)

# ListOnPremisesInstances Operation

Gets a list of names for one or more on-premises instances.

Unless otherwise specified, both registered and deregistered on-premises instance names will be listed. To list only registered or deregistered on-premises instance names, use the registration status parameter.

# Arguments

## `registrationStatus = "Registered" or "Deregistered"`
The registration status of the on-premises instances:

*   Deregistered: Include deregistered on-premises instances in the resulting list.

*   Registered: Include registered on-premises instances in the resulting list.


## `tagFilters = [[ ... ], ...]`
The on-premises instance tags that will be used to restrict the corresponding on-premises instance names returned.
```
 tagFilters = [[
        "Key" =>  ::String,
        "Value" =>  ::String,
        "Type" =>  "KEY_ONLY", "VALUE_ONLY" or "KEY_AND_VALUE"
    ], ...]
```

## `nextToken = ::String`
An identifier returned from the previous list on-premises instances call. It can be used to return the next set of on-premises instances in the list.




# Returns

`ListOnPremisesInstancesOutput`

# Exceptions

`InvalidRegistrationStatusException`, `InvalidTagFilterException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/ListOnPremisesInstances)
"""
@inline list_on_premises_instances(aws::AWSConfig=default_aws_config(); args...) = list_on_premises_instances(aws, args)

@inline list_on_premises_instances(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "ListOnPremisesInstances", args)

@inline list_on_premises_instances(args) = list_on_premises_instances(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.put_lifecycle_event_hook_execution_status
    put_lifecycle_event_hook_execution_status([::AWSConfig], arguments::Dict)
    put_lifecycle_event_hook_execution_status([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "PutLifecycleEventHookExecutionStatus", arguments::Dict)
    codedeploy([::AWSConfig], "PutLifecycleEventHookExecutionStatus", <keyword arguments>)

# PutLifecycleEventHookExecutionStatus Operation

Sets the result of a Lambda validation function. The function validates one or both lifecycle events (`BeforeAllowTraffic` and `AfterAllowTraffic`) and returns `Succeeded` or `Failed`.

# Arguments

## `deploymentId = ::String`
The ID of the deployment. Pass this ID to a Lambda function that validates a deployment lifecycle event.


## `lifecycleEventHookExecutionId = ::String`
The execution ID of a deployment's lifecycle hook. A deployment lifecycle hook is specified in the `hooks` section of the AppSpec file.


## `status = "Pending", "InProgress", "Succeeded", "Failed", "Skipped" or "Unknown"`
The result of a Lambda function that validates a deployment lifecycle event (`Succeeded` or `Failed`).




# Returns

`PutLifecycleEventHookExecutionStatusOutput`

# Exceptions

`InvalidLifecycleEventHookExecutionStatusException`, `InvalidLifecycleEventHookExecutionIdException`, `LifecycleEventAlreadyCompletedException`, `DeploymentIdRequiredException`, `DeploymentDoesNotExistException`, `InvalidDeploymentIdException` or `UnsupportedActionForDeploymentTypeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/PutLifecycleEventHookExecutionStatus)
"""
@inline put_lifecycle_event_hook_execution_status(aws::AWSConfig=default_aws_config(); args...) = put_lifecycle_event_hook_execution_status(aws, args)

@inline put_lifecycle_event_hook_execution_status(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "PutLifecycleEventHookExecutionStatus", args)

@inline put_lifecycle_event_hook_execution_status(args) = put_lifecycle_event_hook_execution_status(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.register_application_revision
    register_application_revision([::AWSConfig], arguments::Dict)
    register_application_revision([::AWSConfig]; applicationName=, revision=, <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "RegisterApplicationRevision", arguments::Dict)
    codedeploy([::AWSConfig], "RegisterApplicationRevision", applicationName=, revision=, <keyword arguments>)

# RegisterApplicationRevision Operation

Registers with AWS CodeDeploy a revision for the specified application.

# Arguments

## `applicationName = ::String` -- *Required*
The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.


## `description = ::String`
A comment about the revision.


## `revision = [ ... ]` -- *Required*
Information about the application revision to register, including type and location.
```
 revision = [
        "revisionType" =>  "S3", "GitHub" or "String",
        "s3Location" =>  [
            "bucket" =>  ::String,
            "key" =>  ::String,
            "bundleType" =>  "tar", "tgz", "zip", "YAML" or "JSON",
            "version" =>  ::String,
            "eTag" =>  ::String
        ],
        "gitHubLocation" =>  [
            "repository" =>  ::String,
            "commitId" =>  ::String
        ],
        "string" =>  [
            "content" =>  ::String,
            "sha256" =>  ::String
        ]
    ]
```



# Exceptions

`ApplicationDoesNotExistException`, `ApplicationNameRequiredException`, `InvalidApplicationNameException`, `DescriptionTooLongException`, `RevisionRequiredException` or `InvalidRevisionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RegisterApplicationRevision)
"""
@inline register_application_revision(aws::AWSConfig=default_aws_config(); args...) = register_application_revision(aws, args)

@inline register_application_revision(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "RegisterApplicationRevision", args)

@inline register_application_revision(args) = register_application_revision(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.register_on_premises_instance
    register_on_premises_instance([::AWSConfig], arguments::Dict)
    register_on_premises_instance([::AWSConfig]; instanceName=, <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "RegisterOnPremisesInstance", arguments::Dict)
    codedeploy([::AWSConfig], "RegisterOnPremisesInstance", instanceName=, <keyword arguments>)

# RegisterOnPremisesInstance Operation

Registers an on-premises instance.

**Note**
> Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request. You cannot use both.

# Arguments

## `instanceName = ::String` -- *Required*
The name of the on-premises instance to register.


## `iamSessionArn = ::String`
The ARN of the IAM session to associate with the on-premises instance.


## `iamUserArn = ::String`
The ARN of the IAM user to associate with the on-premises instance.




# Exceptions

`InstanceNameAlreadyRegisteredException`, `IamArnRequiredException`, `IamSessionArnAlreadyRegisteredException`, `IamUserArnAlreadyRegisteredException`, `InstanceNameRequiredException`, `IamUserArnRequiredException`, `InvalidInstanceNameException`, `InvalidIamSessionArnException`, `InvalidIamUserArnException` or `MultipleIamArnsProvidedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RegisterOnPremisesInstance)
"""
@inline register_on_premises_instance(aws::AWSConfig=default_aws_config(); args...) = register_on_premises_instance(aws, args)

@inline register_on_premises_instance(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "RegisterOnPremisesInstance", args)

@inline register_on_premises_instance(args) = register_on_premises_instance(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.remove_tags_from_on_premises_instances
    remove_tags_from_on_premises_instances([::AWSConfig], arguments::Dict)
    remove_tags_from_on_premises_instances([::AWSConfig]; tags=, instanceNames=)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "RemoveTagsFromOnPremisesInstances", arguments::Dict)
    codedeploy([::AWSConfig], "RemoveTagsFromOnPremisesInstances", tags=, instanceNames=)

# RemoveTagsFromOnPremisesInstances Operation

Removes one or more tags from one or more on-premises instances.

# Arguments

## `tags = [[ ... ], ...]` -- *Required*
The tag key-value pairs to remove from the on-premises instances.
```
 tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `instanceNames = [::String, ...]` -- *Required*
The names of the on-premises instances from which to remove tags.




# Exceptions

`InstanceNameRequiredException`, `InvalidInstanceNameException`, `TagRequiredException`, `InvalidTagException`, `TagLimitExceededException`, `InstanceLimitExceededException` or `InstanceNotRegisteredException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/RemoveTagsFromOnPremisesInstances)
"""
@inline remove_tags_from_on_premises_instances(aws::AWSConfig=default_aws_config(); args...) = remove_tags_from_on_premises_instances(aws, args)

@inline remove_tags_from_on_premises_instances(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "RemoveTagsFromOnPremisesInstances", args)

@inline remove_tags_from_on_premises_instances(args) = remove_tags_from_on_premises_instances(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.skip_wait_time_for_instance_termination
    skip_wait_time_for_instance_termination([::AWSConfig], arguments::Dict)
    skip_wait_time_for_instance_termination([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "SkipWaitTimeForInstanceTermination", arguments::Dict)
    codedeploy([::AWSConfig], "SkipWaitTimeForInstanceTermination", <keyword arguments>)

# SkipWaitTimeForInstanceTermination Operation

In a blue/green deployment, overrides any specified wait time and starts terminating instances immediately after the traffic routing is completed.

# Arguments

## `deploymentId = ::String`
The ID of the blue/green deployment for which you want to skip the instance termination wait time.




# Exceptions

`DeploymentIdRequiredException`, `DeploymentDoesNotExistException`, `DeploymentAlreadyCompletedException`, `InvalidDeploymentIdException`, `DeploymentNotStartedException` or `UnsupportedActionForDeploymentTypeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/SkipWaitTimeForInstanceTermination)
"""
@inline skip_wait_time_for_instance_termination(aws::AWSConfig=default_aws_config(); args...) = skip_wait_time_for_instance_termination(aws, args)

@inline skip_wait_time_for_instance_termination(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "SkipWaitTimeForInstanceTermination", args)

@inline skip_wait_time_for_instance_termination(args) = skip_wait_time_for_instance_termination(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.stop_deployment
    stop_deployment([::AWSConfig], arguments::Dict)
    stop_deployment([::AWSConfig]; deploymentId=, <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "StopDeployment", arguments::Dict)
    codedeploy([::AWSConfig], "StopDeployment", deploymentId=, <keyword arguments>)

# StopDeployment Operation

Attempts to stop an ongoing deployment.

# Arguments

## `deploymentId = ::String` -- *Required*
The unique ID of a deployment.


## `autoRollbackEnabled = ::Bool`
Indicates, when a deployment is stopped, whether instances that have been updated should be rolled back to the previous version of the application revision.




# Returns

`StopDeploymentOutput`

# Exceptions

`DeploymentIdRequiredException`, `DeploymentDoesNotExistException`, `DeploymentAlreadyCompletedException` or `InvalidDeploymentIdException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/StopDeployment)
"""
@inline stop_deployment(aws::AWSConfig=default_aws_config(); args...) = stop_deployment(aws, args)

@inline stop_deployment(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "StopDeployment", args)

@inline stop_deployment(args) = stop_deployment(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.update_application
    update_application([::AWSConfig], arguments::Dict)
    update_application([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "UpdateApplication", arguments::Dict)
    codedeploy([::AWSConfig], "UpdateApplication", <keyword arguments>)

# UpdateApplication Operation

Changes the name of an application.

# Arguments

## `applicationName = ::String`
The current name of the application you want to change.


## `newApplicationName = ::String`
The new name to give the application.




# Exceptions

`ApplicationNameRequiredException`, `InvalidApplicationNameException`, `ApplicationAlreadyExistsException` or `ApplicationDoesNotExistException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/UpdateApplication)
"""
@inline update_application(aws::AWSConfig=default_aws_config(); args...) = update_application(aws, args)

@inline update_application(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "UpdateApplication", args)

@inline update_application(args) = update_application(default_aws_config(), args)


"""
    using AWSSDK.CodeDeploy.update_deployment_group
    update_deployment_group([::AWSConfig], arguments::Dict)
    update_deployment_group([::AWSConfig]; applicationName=, currentDeploymentGroupName=, <keyword arguments>)

    using AWSCore.Services.codedeploy
    codedeploy([::AWSConfig], "UpdateDeploymentGroup", arguments::Dict)
    codedeploy([::AWSConfig], "UpdateDeploymentGroup", applicationName=, currentDeploymentGroupName=, <keyword arguments>)

# UpdateDeploymentGroup Operation

Changes information about a deployment group.

# Arguments

## `applicationName = ::String` -- *Required*
The application name corresponding to the deployment group to update.


## `currentDeploymentGroupName = ::String` -- *Required*
The current name of the deployment group.


## `newDeploymentGroupName = ::String`
The new name of the deployment group, if you want to change it.


## `deploymentConfigName = ::String`
The replacement deployment configuration name to use, if you want to change it.


## `ec2TagFilters = [[ ... ], ...]`
The replacement set of Amazon EC2 tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.
```
 ec2TagFilters = [[
        "Key" =>  ::String,
        "Value" =>  ::String,
        "Type" =>  "KEY_ONLY", "VALUE_ONLY" or "KEY_AND_VALUE"
    ], ...]
```

## `onPremisesInstanceTagFilters = [[ ... ], ...]`
The replacement set of on-premises instance tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.
```
 onPremisesInstanceTagFilters = [[
        "Key" =>  ::String,
        "Value" =>  ::String,
        "Type" =>  "KEY_ONLY", "VALUE_ONLY" or "KEY_AND_VALUE"
    ], ...]
```

## `autoScalingGroups = [::String, ...]`
The replacement list of Auto Scaling groups to be included in the deployment group, if you want to change them. To keep the Auto Scaling groups, enter their names. To remove Auto Scaling groups, do not enter any Auto Scaling group names.


## `serviceRoleArn = ::String`
A replacement ARN for the service role, if you want to change it.


## `triggerConfigurations = [[ ... ], ...]`
Information about triggers to change when the deployment group is updated. For examples, see [Modify Triggers in an AWS CodeDeploy Deployment Group](http://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html) in the AWS CodeDeploy User Guide.
```
 triggerConfigurations = [[
        "triggerName" =>  ::String,
        "triggerTargetArn" =>  ::String,
        "triggerEvents" =>  ["DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure" or "InstanceReady", ...]
    ], ...]
```

## `alarmConfiguration = [ ... ]`
Information to add or change about Amazon CloudWatch alarms when the deployment group is updated.
```
 alarmConfiguration = [
        "enabled" =>  ::Bool,
        "ignorePollAlarmFailure" =>  ::Bool,
        "alarms" =>  [["name" =>  ::String], ...]
    ]
```

## `autoRollbackConfiguration = [ ... ]`
Information for an automatic rollback configuration that is added or changed when a deployment group is updated.
```
 autoRollbackConfiguration = [
        "enabled" =>  ::Bool,
        "events" =>  ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM" or "DEPLOYMENT_STOP_ON_REQUEST", ...]
    ]
```

## `deploymentStyle = [ ... ]`
Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.
```
 deploymentStyle = [
        "deploymentType" =>  "IN_PLACE" or "BLUE_GREEN",
        "deploymentOption" =>  "WITH_TRAFFIC_CONTROL" or "WITHOUT_TRAFFIC_CONTROL"
    ]
```

## `blueGreenDeploymentConfiguration = [ ... ]`
Information about blue/green deployment options for a deployment group.
```
 blueGreenDeploymentConfiguration = [
        "terminateBlueInstancesOnDeploymentSuccess" =>  [
            "action" =>  "TERMINATE" or "KEEP_ALIVE",
            "terminationWaitTimeInMinutes" =>  ::Int
        ],
        "deploymentReadyOption" =>  [
            "actionOnTimeout" =>  "CONTINUE_DEPLOYMENT" or "STOP_DEPLOYMENT",
            "waitTimeInMinutes" =>  ::Int
        ],
        "greenFleetProvisioningOption" =>  ["action" =>  "DISCOVER_EXISTING" or "COPY_AUTO_SCALING_GROUP"]
    ]
```

## `loadBalancerInfo = [ ... ]`
Information about the load balancer used in a deployment.
```
 loadBalancerInfo = [
        "elbInfoList" =>  [["name" =>  ::String], ...],
        "targetGroupInfoList" =>  [["name" =>  ::String], ...]
    ]
```

## `ec2TagSet = ["ec2TagSetList" =>  [[[ ... ], ...], ...]]`
Information about groups of tags applied to on-premises instances. The deployment group will include only EC2 instances identified by all the tag groups.
```
 ec2TagSet = ["ec2TagSetList" =>  [[[
            "Key" =>  ::String,
            "Value" =>  ::String,
            "Type" =>  "KEY_ONLY", "VALUE_ONLY" or "KEY_AND_VALUE"
        ], ...], ...]]
```

## `onPremisesTagSet = ["onPremisesTagSetList" =>  [[[ ... ], ...], ...]]`
Information about an on-premises instance tag set. The deployment group will include only on-premises instances identified by all the tag groups.
```
 onPremisesTagSet = ["onPremisesTagSetList" =>  [[[
            "Key" =>  ::String,
            "Value" =>  ::String,
            "Type" =>  "KEY_ONLY", "VALUE_ONLY" or "KEY_AND_VALUE"
        ], ...], ...]]
```



# Returns

`UpdateDeploymentGroupOutput`

# Exceptions

`ApplicationNameRequiredException`, `InvalidApplicationNameException`, `ApplicationDoesNotExistException`, `InvalidDeploymentGroupNameException`, `DeploymentGroupAlreadyExistsException`, `DeploymentGroupNameRequiredException`, `DeploymentGroupDoesNotExistException`, `InvalidEC2TagException`, `InvalidTagException`, `InvalidAutoScalingGroupException`, `InvalidDeploymentConfigNameException`, `DeploymentConfigDoesNotExistException`, `InvalidRoleException`, `LifecycleHookLimitExceededException`, `InvalidTriggerConfigException`, `TriggerTargetsLimitExceededException`, `InvalidAlarmConfigException`, `AlarmsLimitExceededException`, `InvalidAutoRollbackConfigException`, `InvalidLoadBalancerInfoException`, `InvalidDeploymentStyleException`, `InvalidBlueGreenDeploymentConfigurationException`, `InvalidEC2TagCombinationException`, `InvalidOnPremisesTagCombinationException`, `TagSetListLimitExceededException` or `InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codedeploy-2014-10-06/UpdateDeploymentGroup)
"""
@inline update_deployment_group(aws::AWSConfig=default_aws_config(); args...) = update_deployment_group(aws, args)

@inline update_deployment_group(aws::AWSConfig, args) = AWSCore.Services.codedeploy(aws, "UpdateDeploymentGroup", args)

@inline update_deployment_group(args) = update_deployment_group(default_aws_config(), args)




end # module CodeDeploy


#==============================================================================#
# End of file
#==============================================================================#
