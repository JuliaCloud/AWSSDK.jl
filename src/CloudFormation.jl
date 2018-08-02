#==============================================================================#
# CloudFormation.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/cloudformation-2010-05-15.normal.json
#==============================================================================#

__precompile__()

module CloudFormation

using AWSCore


"""
    using AWSSDK.CloudFormation.cancel_update_stack
    cancel_update_stack([::AWSConfig], arguments::Dict)
    cancel_update_stack([::AWSConfig]; StackName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "CancelUpdateStack", arguments::Dict)
    cloudformation([::AWSConfig], "CancelUpdateStack", StackName=, <keyword arguments>)

# CancelUpdateStack Operation

Cancels an update on the specified stack. If the call completes successfully, the stack rolls back the update and reverts to the previous stack configuration.

**Note**
> You can cancel only stacks that are in the UPDATE_IN_PROGRESS state.

# Arguments

## `StackName = ::String` -- *Required*
The name or the unique stack ID that is associated with the stack.


## `ClientRequestToken = ::String`
A unique identifier for this `CancelUpdateStack` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to cancel an update on a stack with the same name. You might retry `CancelUpdateStack` requests to ensure that AWS CloudFormation successfully received them.




# Exceptions

`TokenAlreadyExistsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CancelUpdateStack)
"""
@inline cancel_update_stack(aws::AWSConfig=default_aws_config(); args...) = cancel_update_stack(aws, args)

@inline cancel_update_stack(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "CancelUpdateStack", args)

@inline cancel_update_stack(args) = cancel_update_stack(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.continue_update_rollback
    continue_update_rollback([::AWSConfig], arguments::Dict)
    continue_update_rollback([::AWSConfig]; StackName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "ContinueUpdateRollback", arguments::Dict)
    cloudformation([::AWSConfig], "ContinueUpdateRollback", StackName=, <keyword arguments>)

# ContinueUpdateRollback Operation

For a specified stack that is in the `UPDATE_ROLLBACK_FAILED` state, continues rolling it back to the `UPDATE_ROLLBACK_COMPLETE` state. Depending on the cause of the failure, you can manually [fix the error](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed) and continue the rollback. By continuing the rollback, you can return your stack to a working state (the `UPDATE_ROLLBACK_COMPLETE` state), and then try to update the stack again.

A stack goes into the `UPDATE_ROLLBACK_FAILED` state when AWS CloudFormation cannot roll back all changes after a failed stack update. For example, you might have a stack that is rolling back to an old database instance that was deleted outside of AWS CloudFormation. Because AWS CloudFormation doesn't know the database was deleted, it assumes that the database instance still exists and attempts to roll back to it, causing the update rollback to fail.

# Arguments

## `StackName = ::String` -- *Required*
The name or the unique ID of the stack that you want to continue rolling back.

**Note**
> Don't specify the name of a nested stack (a stack that was created by using the `AWS::CloudFormation::Stack` resource). Instead, use this operation on the parent stack (the stack that contains the `AWS::CloudFormation::Stack` resource).


## `RoleARN = ::String`
The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to roll back the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.

If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.


## `ResourcesToSkip = [::String, ...]`
A list of the logical IDs of the resources that AWS CloudFormation skips during the continue update rollback operation. You can specify only resources that are in the `UPDATE_FAILED` state because a rollback failed. You can't specify resources that are in the `UPDATE_FAILED` state for other reasons, for example, because an update was cancelled. To check why a resource update failed, use the [DescribeStackResources](@ref) action, and view the resource status reason.

**Important**
> Specify this property to skip rolling back resources that AWS CloudFormation can't successfully roll back. We recommend that you [troubleshoot](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed) resources before skipping them. AWS CloudFormation sets the status of the specified resources to `UPDATE_COMPLETE` and continues to roll back the stack. After the rollback is complete, the state of the skipped resources will be inconsistent with the state of the resources in the stack template. Before performing another stack update, you must update the stack or resources to be consistent with each other. If you don't, subsequent stack updates might fail, and the stack will become unrecoverable.

Specify the minimum number of resources required to successfully roll back your stack. For example, a failed resource update might cause dependent resources to fail. In this case, it might not be necessary to skip the dependent resources.

To skip resources that are part of nested stacks, use the following format: `NestedStackName.ResourceLogicalID`. If you want to specify the logical ID of a stack resource (`Type: AWS::CloudFormation::Stack`) in the `ResourcesToSkip` list, then its corresponding embedded stack must be in one of the following states: `DELETE_IN_PROGRESS`, `DELETE_COMPLETE`, or `DELETE_FAILED`.

**Note**
> Don't confuse a child stack's name with its corresponding logical ID defined in the parent stack. For an example of a continue update rollback operation with nested stacks, see [Using ResourcesToSkip to recover a nested stacks hierarchy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks).


## `ClientRequestToken = ::String`
A unique identifier for this `ContinueUpdateRollback` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to continue the rollback to a stack with the same name. You might retry `ContinueUpdateRollback` requests to ensure that AWS CloudFormation successfully received them.




# Returns

`ContinueUpdateRollbackOutput`

# Exceptions

`TokenAlreadyExistsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ContinueUpdateRollback)
"""
@inline continue_update_rollback(aws::AWSConfig=default_aws_config(); args...) = continue_update_rollback(aws, args)

@inline continue_update_rollback(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "ContinueUpdateRollback", args)

@inline continue_update_rollback(args) = continue_update_rollback(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.create_change_set
    create_change_set([::AWSConfig], arguments::Dict)
    create_change_set([::AWSConfig]; StackName=, ChangeSetName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "CreateChangeSet", arguments::Dict)
    cloudformation([::AWSConfig], "CreateChangeSet", StackName=, ChangeSetName=, <keyword arguments>)

# CreateChangeSet Operation

Creates a list of changes that will be applied to a stack so that you can review the changes before executing them. You can create a change set for a stack that doesn't exist or an existing stack. If you create a change set for a stack that doesn't exist, the change set shows all of the resources that AWS CloudFormation will create. If you create a change set for an existing stack, AWS CloudFormation compares the stack's information with the information that you submit in the change set and lists the differences. Use change sets to understand which resources AWS CloudFormation will create or change, and how it will change resources in an existing stack, before you create or update a stack.

To create a change set for a stack that doesn't exist, for the `ChangeSetType` parameter, specify `CREATE`. To create a change set for an existing stack, specify `UPDATE` for the `ChangeSetType` parameter. After the `CreateChangeSet` call successfully completes, AWS CloudFormation starts creating the change set. To check the status of the change set or to review it, use the [DescribeChangeSet](@ref) action.

When you are satisfied with the changes the change set will make, execute the change set by using the [ExecuteChangeSet](@ref) action. AWS CloudFormation doesn't make changes until you execute the change set.

# Arguments

## `StackName = ::String` -- *Required*
The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates the change set by comparing this stack's information with the information that you submit, such as a modified template or different parameter input values.


## `TemplateBody = ::String`
A structure that contains the body of the revised template, with a minimum length of 1 byte and a maximum length of 51,200 bytes. AWS CloudFormation generates the change set by comparing this template with the template of the stack that you specified.

Conditional: You must specify only `TemplateBody` or `TemplateURL`.


## `TemplateURL = ::String`
The location of the file that contains the revised template. The URL must point to a template (max size: 460,800 bytes) that is located in an S3 bucket. AWS CloudFormation generates the change set by comparing this template with the stack that you specified.

Conditional: You must specify only `TemplateBody` or `TemplateURL`.


## `UsePreviousTemplate = ::Bool`
Whether to reuse the template that is associated with the stack to create the change set.


## `Parameters = [[ ... ], ...]`
A list of `Parameter` structures that specify input parameters for the change set. For more information, see the [Parameter](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html) data type.
```
 Parameters = [[
        "ParameterKey" =>  ::String,
        "ParameterValue" =>  ::String,
        "UsePreviousValue" =>  ::Bool,
        "ResolvedValue" =>  ::String
    ], ...]
```

## `Capabilities = ["CAPABILITY_IAM" or "CAPABILITY_NAMED_IAM", ...]`
A list of values that you must specify before AWS CloudFormation can update certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.

The only valid values are `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`. The following resources require you to specify this parameter: [AWS::IAM::AccessKey](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html), [AWS::IAM::Group](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html), [AWS::IAM::InstanceProfile](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html), [AWS::IAM::Policy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html), [AWS::IAM::Role](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html), [AWS::IAM::User](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html), and [AWS::IAM::UserToGroupAddition](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html). If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.

If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify `CAPABILITY_NAMED_IAM`. If you don't specify this parameter, this action returns an `InsufficientCapabilities` error.

For more information, see [Acknowledging IAM Resources in AWS CloudFormation Templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).


## `ResourceTypes = [::String, ...]`
The template resource types that you have permissions to work with if you execute this change set, such as `AWS::EC2::Instance`, `AWS::EC2::*`, or `Custom::MyCustomInstance`.

If the list of resource types doesn't include a resource type that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for condition keys in IAM policies for AWS CloudFormation. For more information, see [Controlling Access with AWS Identity and Access Management](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html) in the AWS CloudFormation User Guide.


## `RoleARN = ::String`
The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.

If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.


## `RollbackConfiguration = [ ... ]`
The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
```
 RollbackConfiguration = [
        "RollbackTriggers" =>  [[
            "Arn" => <required> ::String,
            "Type" => <required> ::String
        ], ...],
        "MonitoringTimeInMinutes" =>  ::Int
    ]
```

## `NotificationARNs = [::String, ...]`
The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics that AWS CloudFormation associates with the stack. To remove all associated notification topics, specify an empty list.


## `Tags = [[ ... ], ...]`
Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to resources in the stack. You can specify a maximum of 50 tags.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `ChangeSetName = ::String` -- *Required*
The name of the change set. The name must be unique among all change sets that are associated with the specified stack.

A change set name can contain only alphanumeric, case sensitive characters and hyphens. It must start with an alphabetic character and cannot exceed 128 characters.


## `ClientToken = ::String`
A unique identifier for this `CreateChangeSet` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another change set with the same name. You might retry `CreateChangeSet` requests to ensure that AWS CloudFormation successfully received them.


## `Description = ::String`
A description to help you identify this change set.


## `ChangeSetType = "CREATE" or "UPDATE"`
The type of change set operation. To create a change set for a new stack, specify `CREATE`. To create a change set for an existing stack, specify `UPDATE`.

If you create a change set for a new stack, AWS Cloudformation creates a stack with a unique stack ID, but no template or resources. The stack will be in the [`REVIEW_IN_PROGRESS`](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995) state until you execute the change set.

By default, AWS CloudFormation specifies `UPDATE`. You can't use the `UPDATE` type to create a change set for a new stack or the `CREATE` type to create a change set for an existing stack.




# Returns

`CreateChangeSetOutput`

# Exceptions

`AlreadyExistsException`, `InsufficientCapabilitiesException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet)
"""
@inline create_change_set(aws::AWSConfig=default_aws_config(); args...) = create_change_set(aws, args)

@inline create_change_set(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "CreateChangeSet", args)

@inline create_change_set(args) = create_change_set(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.create_stack
    create_stack([::AWSConfig], arguments::Dict)
    create_stack([::AWSConfig]; StackName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "CreateStack", arguments::Dict)
    cloudformation([::AWSConfig], "CreateStack", StackName=, <keyword arguments>)

# CreateStack Operation

Creates a stack as specified in the template. After the call completes successfully, the stack creation starts. You can check the status of the stack via the [DescribeStacks](@ref) API.

# Arguments

## `StackName = ::String` -- *Required*
The name that is associated with the stack. The name must be unique in the region in which you are creating the stack.

**Note**
> A stack name can contain only alphanumeric characters (case sensitive) and hyphens. It must start with an alphabetic character and cannot be longer than 128 characters.


## `TemplateBody = ::String`
Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.

Conditional: You must specify either the `TemplateBody` or the `TemplateURL` parameter, but not both.


## `TemplateURL = ::String`
Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, go to the [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.

Conditional: You must specify either the `TemplateBody` or the `TemplateURL` parameter, but not both.


## `Parameters = [[ ... ], ...]`
A list of `Parameter` structures that specify input parameters for the stack. For more information, see the [Parameter](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html) data type.
```
 Parameters = [[
        "ParameterKey" =>  ::String,
        "ParameterValue" =>  ::String,
        "UsePreviousValue" =>  ::Bool,
        "ResolvedValue" =>  ::String
    ], ...]
```

## `DisableRollback = ::Bool`
Set to `true` to disable rollback of the stack if stack creation failed. You can specify either `DisableRollback` or `OnFailure`, but not both.

Default: `false`


## `RollbackConfiguration = [ ... ]`
The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
```
 RollbackConfiguration = [
        "RollbackTriggers" =>  [[
            "Arn" => <required> ::String,
            "Type" => <required> ::String
        ], ...],
        "MonitoringTimeInMinutes" =>  ::Int
    ]
```

## `TimeoutInMinutes = ::Int`
The amount of time that can pass before the stack status becomes CREATE_FAILED; if `DisableRollback` is not set or is set to `false`, the stack will be rolled back.


## `NotificationARNs = [::String, ...]`
The Simple Notification Service (SNS) topic ARNs to publish stack related events. You can find your SNS topic ARNs using the SNS console or your Command Line Interface (CLI).


## `Capabilities = ["CAPABILITY_IAM" or "CAPABILITY_NAMED_IAM", ...]`
A list of values that you must specify before AWS CloudFormation can create certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.

The only valid values are `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`. The following resources require you to specify this parameter: [AWS::IAM::AccessKey](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html), [AWS::IAM::Group](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html), [AWS::IAM::InstanceProfile](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html), [AWS::IAM::Policy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html), [AWS::IAM::Role](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html), [AWS::IAM::User](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html), and [AWS::IAM::UserToGroupAddition](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html). If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.

If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify `CAPABILITY_NAMED_IAM`. If you don't specify this parameter, this action returns an `InsufficientCapabilities` error.

For more information, see [Acknowledging IAM Resources in AWS CloudFormation Templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).


## `ResourceTypes = [::String, ...]`
The template resource types that you have permissions to work with for this create stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`, or `Custom::MyCustomInstance`. Use the following syntax to describe template resource types: `AWS::*` (for all AWS resource), `Custom::*` (for all custom resources), `Custom::*logical_ID*` (for a specific custom resource), `AWS::*service_name*::*` (for all resources of a particular AWS service), and `AWS::*service_name*::*resource_logical_ID*` (for a specific AWS resource).

If the list of resource types doesn't include a resource that you're creating, the stack creation fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies. For more information, see [Controlling Access with AWS Identity and Access Management](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html).


## `RoleARN = ::String`
The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to create the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.

If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.


## `OnFailure = "DO_NOTHING", "ROLLBACK" or "DELETE"`
Determines what action will be taken if stack creation fails. This must be one of: DO_NOTHING, ROLLBACK, or DELETE. You can specify either `OnFailure` or `DisableRollback`, but not both.

Default: `ROLLBACK`


## `StackPolicyBody = ::String`
Structure containing the stack policy body. For more information, go to [Prevent Updates to Stack Resources](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html) in the *AWS CloudFormation User Guide*. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.


## `StackPolicyURL = ::String`
Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same region as the stack. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.


## `Tags = [[ ... ], ...]`
Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to the resources created in the stack. A maximum number of 50 tags can be specified.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `ClientRequestToken = ::String`
A unique identifier for this `CreateStack` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create a stack with the same name. You might retry `CreateStack` requests to ensure that AWS CloudFormation successfully received them.

All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a `CreateStack` operation with the token `token1`, then all the `StackEvents` generated by that operation will have `ClientRequestToken` set as `token1`.

In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format *Console-StackOperation-ID*, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.


## `EnableTerminationProtection = ::Bool`
Whether to enable termination protection on the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see [Protecting a Stack From Being Deleted](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html) in the *AWS CloudFormation User Guide*. Termination protection is disabled on stacks by default.

For [nested stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html), termination protection is set on the root stack and cannot be changed directly on the nested stack.




# Returns

`CreateStackOutput`

# Exceptions

`LimitExceededException`, `AlreadyExistsException`, `TokenAlreadyExistsException` or `InsufficientCapabilitiesException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStack)
"""
@inline create_stack(aws::AWSConfig=default_aws_config(); args...) = create_stack(aws, args)

@inline create_stack(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "CreateStack", args)

@inline create_stack(args) = create_stack(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.create_stack_instances
    create_stack_instances([::AWSConfig], arguments::Dict)
    create_stack_instances([::AWSConfig]; StackSetName=, Accounts=, Regions=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "CreateStackInstances", arguments::Dict)
    cloudformation([::AWSConfig], "CreateStackInstances", StackSetName=, Accounts=, Regions=, <keyword arguments>)

# CreateStackInstances Operation

Creates stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region. `Accounts` and `Regions` are required parameters—you must specify at least one account and one region.

# Arguments

## `StackSetName = ::String` -- *Required*
The name or unique ID of the stack set that you want to create stack instances from.


## `Accounts = [::String, ...]` -- *Required*
The names of one or more AWS accounts that you want to create stack instances in the specified region(s) for.


## `Regions = [::String, ...]` -- *Required*
The names of one or more regions where you want to create stack instances using the specified AWS account(s).


## `ParameterOverrides = [[ ... ], ...]`
A list of stack set parameters whose values you want to override in the selected stack instances.

Any overridden parameter values will be applied to all stack instances in the specified accounts and regions. When specifying parameters and their values, be aware of how AWS CloudFormation sets parameter values during stack instance operations:

*   To override the current value for a parameter, include the parameter and specify its value.

*   To leave a parameter set to its present value, you can do one of the following:

    *   Do not include the parameter in the list.

    *   Include the parameter and specify `UsePreviousValue` as `true`. (You cannot specify both a value and set `UsePreviousValue` to `true`.)

*   To set all overridden parameter back to the values specified in the stack set, specify a parameter list but do not include any parameters.

*   To leave all parameters set to their present values, do not specify this property at all.

During stack set updates, any parameter values overridden for a stack instance are not updated, but retain their overridden value.

You can only override the parameter *values* that are specified in the stack set; to add or delete a parameter itself, use [UpdateStackSet](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update the stack set template.
```
 ParameterOverrides = [[
        "ParameterKey" =>  ::String,
        "ParameterValue" =>  ::String,
        "UsePreviousValue" =>  ::Bool,
        "ResolvedValue" =>  ::String
    ], ...]
```

## `OperationPreferences = [ ... ]`
Preferences for how AWS CloudFormation performs this stack set operation.
```
 OperationPreferences = [
        "RegionOrder" =>  [::String, ...],
        "FailureToleranceCount" =>  ::Int,
        "FailureTolerancePercentage" =>  ::Int,
        "MaxConcurrentCount" =>  ::Int,
        "MaxConcurrentPercentage" =>  ::Int
    ]
```

## `OperationId = ::String`
The unique identifier for this stack set operation.

The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them.

If you don't specify an operation ID, the SDK generates one automatically.

Repeating this stack set operation with a new operation ID retries all stack instances whose status is `OUTDATED`.




# Returns

`CreateStackInstancesOutput`

# Exceptions

`StackSetNotFoundException`, `OperationInProgressException`, `OperationIdAlreadyExistsException`, `StaleRequestException`, `InvalidOperationException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackInstances)
"""
@inline create_stack_instances(aws::AWSConfig=default_aws_config(); args...) = create_stack_instances(aws, args)

@inline create_stack_instances(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "CreateStackInstances", args)

@inline create_stack_instances(args) = create_stack_instances(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.create_stack_set
    create_stack_set([::AWSConfig], arguments::Dict)
    create_stack_set([::AWSConfig]; StackSetName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "CreateStackSet", arguments::Dict)
    cloudformation([::AWSConfig], "CreateStackSet", StackSetName=, <keyword arguments>)

# CreateStackSet Operation

Creates a stack set.

# Arguments

## `StackSetName = ::String` -- *Required*
The name to associate with the stack set. The name must be unique in the region where you create your stack set.

**Note**
> A stack name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and can't be longer than 128 characters.


## `Description = ::String`
A description of the stack set. You can use the description to identify the stack set's purpose or other important information.


## `TemplateBody = ::String`
The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, see [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.

Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.


## `TemplateURL = ::String`
The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that's located in an Amazon S3 bucket. For more information, see [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.

Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.


## `Parameters = [[ ... ], ...]`
The input parameters for the stack set template.
```
 Parameters = [[
        "ParameterKey" =>  ::String,
        "ParameterValue" =>  ::String,
        "UsePreviousValue" =>  ::Bool,
        "ResolvedValue" =>  ::String
    ], ...]
```

## `Capabilities = ["CAPABILITY_IAM" or "CAPABILITY_NAMED_IAM", ...]`
A list of values that you must specify before AWS CloudFormation can create certain stack sets. Some stack set templates might include resources that can affect permissions in your AWS account—for example, by creating new AWS Identity and Access Management (IAM) users. For those stack sets, you must explicitly acknowledge their capabilities by specifying this parameter.

The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. The following resources require you to specify this parameter:

*   AWS::IAM::AccessKey

*   AWS::IAM::Group

*   AWS::IAM::InstanceProfile

*   AWS::IAM::Policy

*   AWS::IAM::Role

*   AWS::IAM::User

*   AWS::IAM::UserToGroupAddition

If your stack template contains these resources, we recommend that you review all permissions that are associated with them and edit their permissions if necessary.

If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM. If you don't specify this parameter, this action returns an `InsufficientCapabilities` error.

For more information, see [Acknowledging IAM Resources in AWS CloudFormation Templates.](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities)


## `Tags = [[ ... ], ...]`
The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. A maximum number of 50 tags can be specified.

If you specify tags as part of a `CreateStackSet` action, AWS CloudFormation checks to see if you have the required IAM permission to tag resources. If you don't, the entire `CreateStackSet` action fails with an `access denied` error, and the stack set is not created.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `AdministrationRoleARN = ::String`
The Amazon Resource Number (ARN) of the IAM role to use to create this stack set.

Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see [Prerequisites: Granting Permissions for Stack Set Operations](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html) in the *AWS CloudFormation User Guide*.


## `ExecutionRoleName = ::String`
The name of the IAM execution role to use to create the stack set. If you do not specify an execution role, AWS CloudFormation uses the `AWSCloudFormationStackSetExecutionRole` role for the stack set operation.

Specify an IAM role only if you are using customized execution roles to control which stack resources users and groups can include in their stack sets.


## `ClientRequestToken = ::String`
A unique identifier for this `CreateStackSet` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another stack set with the same name. You might retry `CreateStackSet` requests to ensure that AWS CloudFormation successfully received them.

If you don't specify an operation ID, the SDK generates one automatically.




# Returns

`CreateStackSetOutput`

# Exceptions

`NameAlreadyExistsException`, `CreatedButModifiedException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackSet)
"""
@inline create_stack_set(aws::AWSConfig=default_aws_config(); args...) = create_stack_set(aws, args)

@inline create_stack_set(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "CreateStackSet", args)

@inline create_stack_set(args) = create_stack_set(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.delete_change_set
    delete_change_set([::AWSConfig], arguments::Dict)
    delete_change_set([::AWSConfig]; ChangeSetName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DeleteChangeSet", arguments::Dict)
    cloudformation([::AWSConfig], "DeleteChangeSet", ChangeSetName=, <keyword arguments>)

# DeleteChangeSet Operation

Deletes the specified change set. Deleting change sets ensures that no one executes the wrong change set.

If the call successfully completes, AWS CloudFormation successfully deleted the change set.

# Arguments

## `ChangeSetName = ::String` -- *Required*
The name or Amazon Resource Name (ARN) of the change set that you want to delete.


## `StackName = ::String`
If you specified the name of a change set to delete, specify the stack name or ID (ARN) that is associated with it.




# Returns

`DeleteChangeSetOutput`

# Exceptions

`InvalidChangeSetStatusException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteChangeSet)
"""
@inline delete_change_set(aws::AWSConfig=default_aws_config(); args...) = delete_change_set(aws, args)

@inline delete_change_set(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DeleteChangeSet", args)

@inline delete_change_set(args) = delete_change_set(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.delete_stack
    delete_stack([::AWSConfig], arguments::Dict)
    delete_stack([::AWSConfig]; StackName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DeleteStack", arguments::Dict)
    cloudformation([::AWSConfig], "DeleteStack", StackName=, <keyword arguments>)

# DeleteStack Operation

Deletes a specified stack. Once the call completes successfully, stack deletion starts. Deleted stacks do not show up in the [DescribeStacks](@ref) API if the deletion has been completed successfully.

# Arguments

## `StackName = ::String` -- *Required*
The name or the unique stack ID that is associated with the stack.


## `RetainResources = [::String, ...]`
For stacks in the `DELETE_FAILED` state, a list of resource logical IDs that are associated with the resources you want to retain. During deletion, AWS CloudFormation deletes the stack but does not delete the retained resources.

Retaining resources is useful when you cannot delete a resource, such as a non-empty S3 bucket, but you want to delete the stack.


## `RoleARN = ::String`
The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to delete the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf.

If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.


## `ClientRequestToken = ::String`
A unique identifier for this `DeleteStack` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to delete a stack with the same name. You might retry `DeleteStack` requests to ensure that AWS CloudFormation successfully received them.

All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a `CreateStack` operation with the token `token1`, then all the `StackEvents` generated by that operation will have `ClientRequestToken` set as `token1`.

In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format *Console-StackOperation-ID*, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.




# Exceptions

`TokenAlreadyExistsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStack)
"""
@inline delete_stack(aws::AWSConfig=default_aws_config(); args...) = delete_stack(aws, args)

@inline delete_stack(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DeleteStack", args)

@inline delete_stack(args) = delete_stack(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.delete_stack_instances
    delete_stack_instances([::AWSConfig], arguments::Dict)
    delete_stack_instances([::AWSConfig]; StackSetName=, Accounts=, Regions=, RetainStacks=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DeleteStackInstances", arguments::Dict)
    cloudformation([::AWSConfig], "DeleteStackInstances", StackSetName=, Accounts=, Regions=, RetainStacks=, <keyword arguments>)

# DeleteStackInstances Operation

Deletes stack instances for the specified accounts, in the specified regions.

# Arguments

## `StackSetName = ::String` -- *Required*
The name or unique ID of the stack set that you want to delete stack instances for.


## `Accounts = [::String, ...]` -- *Required*
The names of the AWS accounts that you want to delete stack instances for.


## `Regions = [::String, ...]` -- *Required*
The regions where you want to delete stack set instances.


## `OperationPreferences = [ ... ]`
Preferences for how AWS CloudFormation performs this stack set operation.
```
 OperationPreferences = [
        "RegionOrder" =>  [::String, ...],
        "FailureToleranceCount" =>  ::Int,
        "FailureTolerancePercentage" =>  ::Int,
        "MaxConcurrentCount" =>  ::Int,
        "MaxConcurrentPercentage" =>  ::Int
    ]
```

## `RetainStacks = ::Bool` -- *Required*
Removes the stack instances from the specified stack set, but doesn't delete the stacks. You can't reassociate a retained stack or add an existing, saved stack to a new stack set.

For more information, see [Stack set operation options](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options).


## `OperationId = ::String`
The unique identifier for this stack set operation.

If you don't specify an operation ID, the SDK generates one automatically.

The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You can retry stack set operation requests to ensure that AWS CloudFormation successfully received them.

Repeating this stack set operation with a new operation ID retries all stack instances whose status is `OUTDATED`.




# Returns

`DeleteStackInstancesOutput`

# Exceptions

`StackSetNotFoundException`, `OperationInProgressException`, `OperationIdAlreadyExistsException`, `StaleRequestException` or `InvalidOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackInstances)
"""
@inline delete_stack_instances(aws::AWSConfig=default_aws_config(); args...) = delete_stack_instances(aws, args)

@inline delete_stack_instances(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DeleteStackInstances", args)

@inline delete_stack_instances(args) = delete_stack_instances(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.delete_stack_set
    delete_stack_set([::AWSConfig], arguments::Dict)
    delete_stack_set([::AWSConfig]; StackSetName=)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DeleteStackSet", arguments::Dict)
    cloudformation([::AWSConfig], "DeleteStackSet", StackSetName=)

# DeleteStackSet Operation

Deletes a stack set. Before you can delete a stack set, all of its member stack instances must be deleted. For more information about how to do this, see [DeleteStackInstances](@ref).

# Arguments

## `StackSetName = ::String` -- *Required*
The name or unique ID of the stack set that you're deleting. You can obtain this value by running [ListStackSets](@ref).




# Returns

`DeleteStackSetOutput`

# Exceptions

`StackSetNotEmptyException` or `OperationInProgressException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackSet)
"""
@inline delete_stack_set(aws::AWSConfig=default_aws_config(); args...) = delete_stack_set(aws, args)

@inline delete_stack_set(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DeleteStackSet", args)

@inline delete_stack_set(args) = delete_stack_set(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.describe_account_limits
    describe_account_limits([::AWSConfig], arguments::Dict)
    describe_account_limits([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DescribeAccountLimits", arguments::Dict)
    cloudformation([::AWSConfig], "DescribeAccountLimits", <keyword arguments>)

# DescribeAccountLimits Operation

Retrieves your account's AWS CloudFormation limits, such as the maximum number of stacks that you can create in your account.

# Arguments

## `NextToken = ::String`
A string that identifies the next page of limits that you want to retrieve.




# Returns

`DescribeAccountLimitsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeAccountLimits)
"""
@inline describe_account_limits(aws::AWSConfig=default_aws_config(); args...) = describe_account_limits(aws, args)

@inline describe_account_limits(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DescribeAccountLimits", args)

@inline describe_account_limits(args) = describe_account_limits(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.describe_change_set
    describe_change_set([::AWSConfig], arguments::Dict)
    describe_change_set([::AWSConfig]; ChangeSetName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DescribeChangeSet", arguments::Dict)
    cloudformation([::AWSConfig], "DescribeChangeSet", ChangeSetName=, <keyword arguments>)

# DescribeChangeSet Operation

Returns the inputs for the change set and a list of changes that AWS CloudFormation will make if you execute the change set. For more information, see [Updating Stacks Using Change Sets](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html) in the AWS CloudFormation User Guide.

# Arguments

## `ChangeSetName = ::String` -- *Required*
The name or Amazon Resource Name (ARN) of the change set that you want to describe.


## `StackName = ::String`
If you specified the name of a change set, specify the stack name or ID (ARN) of the change set you want to describe.


## `NextToken = ::String`
A string (provided by the [DescribeChangeSet](@ref) response output) that identifies the next page of information that you want to retrieve.




# Returns

`DescribeChangeSetOutput`

# Exceptions

`ChangeSetNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeChangeSet)
"""
@inline describe_change_set(aws::AWSConfig=default_aws_config(); args...) = describe_change_set(aws, args)

@inline describe_change_set(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DescribeChangeSet", args)

@inline describe_change_set(args) = describe_change_set(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.describe_stack_events
    describe_stack_events([::AWSConfig], arguments::Dict)
    describe_stack_events([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DescribeStackEvents", arguments::Dict)
    cloudformation([::AWSConfig], "DescribeStackEvents", <keyword arguments>)

# DescribeStackEvents Operation

Returns all stack related events for a specified stack in reverse chronological order. For more information about a stack's event history, go to [Stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html) in the AWS CloudFormation User Guide.

**Note**
> You can list events for stacks that have failed to create or have been deleted by specifying the unique stack identifier (stack ID).

# Arguments

## `StackName = ::String`
The name or the unique stack ID that is associated with the stack, which are not always interchangeable:

*   Running stacks: You can specify either the stack's name or its unique stack ID.

*   Deleted stacks: You must specify the unique stack ID.

Default: There is no default value.


## `NextToken = ::String`
A string that identifies the next page of events that you want to retrieve.




# Returns

`DescribeStackEventsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackEvents)
"""
@inline describe_stack_events(aws::AWSConfig=default_aws_config(); args...) = describe_stack_events(aws, args)

@inline describe_stack_events(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DescribeStackEvents", args)

@inline describe_stack_events(args) = describe_stack_events(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.describe_stack_instance
    describe_stack_instance([::AWSConfig], arguments::Dict)
    describe_stack_instance([::AWSConfig]; StackSetName=, StackInstanceAccount=, StackInstanceRegion=)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DescribeStackInstance", arguments::Dict)
    cloudformation([::AWSConfig], "DescribeStackInstance", StackSetName=, StackInstanceAccount=, StackInstanceRegion=)

# DescribeStackInstance Operation

Returns the stack instance that's associated with the specified stack set, AWS account, and region.

For a list of stack instances that are associated with a specific stack set, use [ListStackInstances](@ref).

# Arguments

## `StackSetName = ::String` -- *Required*
The name or the unique stack ID of the stack set that you want to get stack instance information for.


## `StackInstanceAccount = ::String` -- *Required*
The ID of an AWS account that's associated with this stack instance.


## `StackInstanceRegion = ::String` -- *Required*
The name of a region that's associated with this stack instance.




# Returns

`DescribeStackInstanceOutput`

# Exceptions

`StackSetNotFoundException` or `StackInstanceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackInstance)
"""
@inline describe_stack_instance(aws::AWSConfig=default_aws_config(); args...) = describe_stack_instance(aws, args)

@inline describe_stack_instance(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DescribeStackInstance", args)

@inline describe_stack_instance(args) = describe_stack_instance(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.describe_stack_resource
    describe_stack_resource([::AWSConfig], arguments::Dict)
    describe_stack_resource([::AWSConfig]; StackName=, LogicalResourceId=)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DescribeStackResource", arguments::Dict)
    cloudformation([::AWSConfig], "DescribeStackResource", StackName=, LogicalResourceId=)

# DescribeStackResource Operation

Returns a description of the specified resource in the specified stack.

For deleted stacks, DescribeStackResource returns resource information for up to 90 days after the stack has been deleted.

# Arguments

## `StackName = ::String` -- *Required*
The name or the unique stack ID that is associated with the stack, which are not always interchangeable:

*   Running stacks: You can specify either the stack's name or its unique stack ID.

*   Deleted stacks: You must specify the unique stack ID.

Default: There is no default value.


## `LogicalResourceId = ::String` -- *Required*
The logical name of the resource as specified in the template.

Default: There is no default value.




# Returns

`DescribeStackResourceOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResource)
"""
@inline describe_stack_resource(aws::AWSConfig=default_aws_config(); args...) = describe_stack_resource(aws, args)

@inline describe_stack_resource(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DescribeStackResource", args)

@inline describe_stack_resource(args) = describe_stack_resource(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.describe_stack_resources
    describe_stack_resources([::AWSConfig], arguments::Dict)
    describe_stack_resources([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DescribeStackResources", arguments::Dict)
    cloudformation([::AWSConfig], "DescribeStackResources", <keyword arguments>)

# DescribeStackResources Operation

Returns AWS resource descriptions for running and deleted stacks. If `StackName` is specified, all the associated resources that are part of the stack are returned. If `PhysicalResourceId` is specified, the associated resources of the stack that the resource belongs to are returned.

**Note**
> Only the first 100 resources will be returned. If your stack has more resources than this, you should use `ListStackResources` instead.

For deleted stacks, `DescribeStackResources` returns resource information for up to 90 days after the stack has been deleted.

You must specify either `StackName` or `PhysicalResourceId`, but not both. In addition, you can specify `LogicalResourceId` to filter the returned result. For more information about resources, the `LogicalResourceId` and `PhysicalResourceId`, go to the [AWS CloudFormation User Guide](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/).

**Note**
> A `ValidationError` is returned if you specify both `StackName` and `PhysicalResourceId` in the same request.

# Arguments

## `StackName = ::String`
The name or the unique stack ID that is associated with the stack, which are not always interchangeable:

*   Running stacks: You can specify either the stack's name or its unique stack ID.

*   Deleted stacks: You must specify the unique stack ID.

Default: There is no default value.

Required: Conditional. If you do not specify `StackName`, you must specify `PhysicalResourceId`.


## `LogicalResourceId = ::String`
The logical name of the resource as specified in the template.

Default: There is no default value.


## `PhysicalResourceId = ::String`
The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.

For example, for an Amazon Elastic Compute Cloud (EC2) instance, `PhysicalResourceId` corresponds to the `InstanceId`. You can pass the EC2 `InstanceId` to `DescribeStackResources` to find which stack the instance belongs to and what other resources are part of the stack.

Required: Conditional. If you do not specify `PhysicalResourceId`, you must specify `StackName`.

Default: There is no default value.




# Returns

`DescribeStackResourcesOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResources)
"""
@inline describe_stack_resources(aws::AWSConfig=default_aws_config(); args...) = describe_stack_resources(aws, args)

@inline describe_stack_resources(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DescribeStackResources", args)

@inline describe_stack_resources(args) = describe_stack_resources(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.describe_stack_set
    describe_stack_set([::AWSConfig], arguments::Dict)
    describe_stack_set([::AWSConfig]; StackSetName=)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DescribeStackSet", arguments::Dict)
    cloudformation([::AWSConfig], "DescribeStackSet", StackSetName=)

# DescribeStackSet Operation

Returns the description of the specified stack set.

# Arguments

## `StackSetName = ::String` -- *Required*
The name or unique ID of the stack set whose description you want.




# Returns

`DescribeStackSetOutput`

# Exceptions

`StackSetNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSet)
"""
@inline describe_stack_set(aws::AWSConfig=default_aws_config(); args...) = describe_stack_set(aws, args)

@inline describe_stack_set(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DescribeStackSet", args)

@inline describe_stack_set(args) = describe_stack_set(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.describe_stack_set_operation
    describe_stack_set_operation([::AWSConfig], arguments::Dict)
    describe_stack_set_operation([::AWSConfig]; StackSetName=, OperationId=)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DescribeStackSetOperation", arguments::Dict)
    cloudformation([::AWSConfig], "DescribeStackSetOperation", StackSetName=, OperationId=)

# DescribeStackSetOperation Operation

Returns the description of the specified stack set operation.

# Arguments

## `StackSetName = ::String` -- *Required*
The name or the unique stack ID of the stack set for the stack operation.


## `OperationId = ::String` -- *Required*
The unique ID of the stack set operation.




# Returns

`DescribeStackSetOperationOutput`

# Exceptions

`StackSetNotFoundException` or `OperationNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSetOperation)
"""
@inline describe_stack_set_operation(aws::AWSConfig=default_aws_config(); args...) = describe_stack_set_operation(aws, args)

@inline describe_stack_set_operation(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DescribeStackSetOperation", args)

@inline describe_stack_set_operation(args) = describe_stack_set_operation(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.describe_stacks
    describe_stacks([::AWSConfig], arguments::Dict)
    describe_stacks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "DescribeStacks", arguments::Dict)
    cloudformation([::AWSConfig], "DescribeStacks", <keyword arguments>)

# DescribeStacks Operation

Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.

**Note**
> If the stack does not exist, an `AmazonCloudFormationException` is returned.

# Arguments

## `StackName = ::String`
The name or the unique stack ID that is associated with the stack, which are not always interchangeable:

*   Running stacks: You can specify either the stack's name or its unique stack ID.

*   Deleted stacks: You must specify the unique stack ID.

Default: There is no default value.


## `NextToken = ::String`
A string that identifies the next page of stacks that you want to retrieve.




# Returns

`DescribeStacksOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStacks)
"""
@inline describe_stacks(aws::AWSConfig=default_aws_config(); args...) = describe_stacks(aws, args)

@inline describe_stacks(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "DescribeStacks", args)

@inline describe_stacks(args) = describe_stacks(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.estimate_template_cost
    estimate_template_cost([::AWSConfig], arguments::Dict)
    estimate_template_cost([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "EstimateTemplateCost", arguments::Dict)
    cloudformation([::AWSConfig], "EstimateTemplateCost", <keyword arguments>)

# EstimateTemplateCost Operation

Returns the estimated monthly cost of a template. The return value is an AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.

# Arguments

## `TemplateBody = ::String`
Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.)

Conditional: You must pass `TemplateBody` or `TemplateURL`. If both are passed, only `TemplateBody` is used.


## `TemplateURL = ::String`
Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket. For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.

Conditional: You must pass `TemplateURL` or `TemplateBody`. If both are passed, only `TemplateBody` is used.


## `Parameters = [[ ... ], ...]`
A list of `Parameter` structures that specify input parameters.
```
 Parameters = [[
        "ParameterKey" =>  ::String,
        "ParameterValue" =>  ::String,
        "UsePreviousValue" =>  ::Bool,
        "ResolvedValue" =>  ::String
    ], ...]
```



# Returns

`EstimateTemplateCostOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/EstimateTemplateCost)
"""
@inline estimate_template_cost(aws::AWSConfig=default_aws_config(); args...) = estimate_template_cost(aws, args)

@inline estimate_template_cost(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "EstimateTemplateCost", args)

@inline estimate_template_cost(args) = estimate_template_cost(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.execute_change_set
    execute_change_set([::AWSConfig], arguments::Dict)
    execute_change_set([::AWSConfig]; ChangeSetName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "ExecuteChangeSet", arguments::Dict)
    cloudformation([::AWSConfig], "ExecuteChangeSet", ChangeSetName=, <keyword arguments>)

# ExecuteChangeSet Operation

Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, AWS CloudFormation starts updating the stack. Use the [DescribeStacks](@ref) action to view the status of the update.

When you execute a change set, AWS CloudFormation deletes all other change sets associated with the stack because they aren't valid for the updated stack.

If a stack policy is associated with the stack, AWS CloudFormation enforces the policy during the update. You can't specify a temporary stack policy that overrides the current policy.

# Arguments

## `ChangeSetName = ::String` -- *Required*
The name or ARN of the change set that you want use to update the specified stack.


## `StackName = ::String`
If you specified the name of a change set, specify the stack name or ID (ARN) that is associated with the change set you want to execute.


## `ClientRequestToken = ::String`
A unique identifier for this `ExecuteChangeSet` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to execute a change set to update a stack with the same name. You might retry `ExecuteChangeSet` requests to ensure that AWS CloudFormation successfully received them.




# Returns

`ExecuteChangeSetOutput`

# Exceptions

`InvalidChangeSetStatusException`, `ChangeSetNotFoundException`, `InsufficientCapabilitiesException` or `TokenAlreadyExistsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ExecuteChangeSet)
"""
@inline execute_change_set(aws::AWSConfig=default_aws_config(); args...) = execute_change_set(aws, args)

@inline execute_change_set(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "ExecuteChangeSet", args)

@inline execute_change_set(args) = execute_change_set(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.get_stack_policy
    get_stack_policy([::AWSConfig], arguments::Dict)
    get_stack_policy([::AWSConfig]; StackName=)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "GetStackPolicy", arguments::Dict)
    cloudformation([::AWSConfig], "GetStackPolicy", StackName=)

# GetStackPolicy Operation

Returns the stack policy for a specified stack. If a stack doesn't have a policy, a null value is returned.

# Arguments

## `StackName = ::String` -- *Required*
The name or unique stack ID that is associated with the stack whose policy you want to get.




# Returns

`GetStackPolicyOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetStackPolicy)
"""
@inline get_stack_policy(aws::AWSConfig=default_aws_config(); args...) = get_stack_policy(aws, args)

@inline get_stack_policy(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "GetStackPolicy", args)

@inline get_stack_policy(args) = get_stack_policy(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.get_template
    get_template([::AWSConfig], arguments::Dict)
    get_template([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "GetTemplate", arguments::Dict)
    cloudformation([::AWSConfig], "GetTemplate", <keyword arguments>)

# GetTemplate Operation

Returns the template body for a specified stack. You can get the template for running or deleted stacks.

For deleted stacks, GetTemplate returns the template for up to 90 days after the stack has been deleted.

**Note**
> If the template does not exist, a `ValidationError` is returned.

# Arguments

## `StackName = ::String`
The name or the unique stack ID that is associated with the stack, which are not always interchangeable:

*   Running stacks: You can specify either the stack's name or its unique stack ID.

*   Deleted stacks: You must specify the unique stack ID.

Default: There is no default value.


## `ChangeSetName = ::String`
The name or Amazon Resource Name (ARN) of a change set for which AWS CloudFormation returns the associated template. If you specify a name, you must also specify the `StackName`.


## `TemplateStage = "Original" or "Processed"`
For templates that include transforms, the stage of the template that AWS CloudFormation returns. To get the user-submitted template, specify `Original`. To get the template after AWS CloudFormation has processed all transforms, specify `Processed`.

If the template doesn't include transforms, `Original` and `Processed` return the same template. By default, AWS CloudFormation specifies `Original`.




# Returns

`GetTemplateOutput`

# Exceptions

`ChangeSetNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplate)
"""
@inline get_template(aws::AWSConfig=default_aws_config(); args...) = get_template(aws, args)

@inline get_template(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "GetTemplate", args)

@inline get_template(args) = get_template(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.get_template_summary
    get_template_summary([::AWSConfig], arguments::Dict)
    get_template_summary([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "GetTemplateSummary", arguments::Dict)
    cloudformation([::AWSConfig], "GetTemplateSummary", <keyword arguments>)

# GetTemplateSummary Operation

Returns information about a new or existing template. The `GetTemplateSummary` action is useful for viewing parameter information, such as default parameter values and parameter types, before you create or update a stack or stack set.

You can use the `GetTemplateSummary` action when you submit a template, or you can get template information for a stack set, or a running or deleted stack.

For deleted stacks, `GetTemplateSummary` returns the template information for up to 90 days after the stack has been deleted. If the template does not exist, a `ValidationError` is returned.

# Arguments

## `TemplateBody = ::String`
Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information about templates, see [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.

Conditional: You must specify only one of the following parameters: `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.


## `TemplateURL = ::String`
Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information about templates, see [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.

Conditional: You must specify only one of the following parameters: `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.


## `StackName = ::String`
The name or the stack ID that is associated with the stack, which are not always interchangeable. For running stacks, you can specify either the stack's name or its unique stack ID. For deleted stack, you must specify the unique stack ID.

Conditional: You must specify only one of the following parameters: `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.


## `StackSetName = ::String`
The name or unique ID of the stack set from which the stack was created.

Conditional: You must specify only one of the following parameters: `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.




# Returns

`GetTemplateSummaryOutput`

# Exceptions

`StackSetNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplateSummary)
"""
@inline get_template_summary(aws::AWSConfig=default_aws_config(); args...) = get_template_summary(aws, args)

@inline get_template_summary(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "GetTemplateSummary", args)

@inline get_template_summary(args) = get_template_summary(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.list_change_sets
    list_change_sets([::AWSConfig], arguments::Dict)
    list_change_sets([::AWSConfig]; StackName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "ListChangeSets", arguments::Dict)
    cloudformation([::AWSConfig], "ListChangeSets", StackName=, <keyword arguments>)

# ListChangeSets Operation

Returns the ID and status of each active change set for a stack. For example, AWS CloudFormation lists change sets that are in the `CREATE_IN_PROGRESS` or `CREATE_PENDING` state.

# Arguments

## `StackName = ::String` -- *Required*
The name or the Amazon Resource Name (ARN) of the stack for which you want to list change sets.


## `NextToken = ::String`
A string (provided by the [ListChangeSets](@ref) response output) that identifies the next page of change sets that you want to retrieve.




# Returns

`ListChangeSetsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListChangeSets)
"""
@inline list_change_sets(aws::AWSConfig=default_aws_config(); args...) = list_change_sets(aws, args)

@inline list_change_sets(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "ListChangeSets", args)

@inline list_change_sets(args) = list_change_sets(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.list_exports
    list_exports([::AWSConfig], arguments::Dict)
    list_exports([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "ListExports", arguments::Dict)
    cloudformation([::AWSConfig], "ListExports", <keyword arguments>)

# ListExports Operation

Lists all exported output values in the account and region in which you call this action. Use this action to see the exported output values that you can import into other stacks. To import values, use the [`Fn::ImportValue`](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html) function.

For more information, see [AWS CloudFormation Export Stack Output Values](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html).

# Arguments

## `NextToken = ::String`
A string (provided by the [ListExports](@ref) response output) that identifies the next page of exported output values that you asked to retrieve.




# Returns

`ListExportsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListExports)
"""
@inline list_exports(aws::AWSConfig=default_aws_config(); args...) = list_exports(aws, args)

@inline list_exports(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "ListExports", args)

@inline list_exports(args) = list_exports(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.list_imports
    list_imports([::AWSConfig], arguments::Dict)
    list_imports([::AWSConfig]; ExportName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "ListImports", arguments::Dict)
    cloudformation([::AWSConfig], "ListImports", ExportName=, <keyword arguments>)

# ListImports Operation

Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see [ListExports](@ref).

For more information about importing an exported output value, see the [`Fn::ImportValue`](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html) function.

# Arguments

## `ExportName = ::String` -- *Required*
The name of the exported output value. AWS CloudFormation returns the stack names that are importing this value.


## `NextToken = ::String`
A string (provided by the [ListImports](@ref) response output) that identifies the next page of stacks that are importing the specified exported output value.




# Returns

`ListImportsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListImports)
"""
@inline list_imports(aws::AWSConfig=default_aws_config(); args...) = list_imports(aws, args)

@inline list_imports(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "ListImports", args)

@inline list_imports(args) = list_imports(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.list_stack_instances
    list_stack_instances([::AWSConfig], arguments::Dict)
    list_stack_instances([::AWSConfig]; StackSetName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "ListStackInstances", arguments::Dict)
    cloudformation([::AWSConfig], "ListStackInstances", StackSetName=, <keyword arguments>)

# ListStackInstances Operation

Returns summary information about stack instances that are associated with the specified stack set. You can filter for stack instances that are associated with a specific AWS account name or region.

# Arguments

## `StackSetName = ::String` -- *Required*
The name or unique ID of the stack set that you want to list stack instances for.


## `NextToken = ::String`
If the previous request didn't return all of the remaining results, the response's `NextToken` parameter value is set to a token. To retrieve the next set of results, call `ListStackInstances` again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.


## `MaxResults = ::Int`
The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.


## `StackInstanceAccount = ::String`
The name of the AWS account that you want to list stack instances for.


## `StackInstanceRegion = ::String`
The name of the region where you want to list stack instances.




# Returns

`ListStackInstancesOutput`

# Exceptions

`StackSetNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackInstances)
"""
@inline list_stack_instances(aws::AWSConfig=default_aws_config(); args...) = list_stack_instances(aws, args)

@inline list_stack_instances(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "ListStackInstances", args)

@inline list_stack_instances(args) = list_stack_instances(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.list_stack_resources
    list_stack_resources([::AWSConfig], arguments::Dict)
    list_stack_resources([::AWSConfig]; StackName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "ListStackResources", arguments::Dict)
    cloudformation([::AWSConfig], "ListStackResources", StackName=, <keyword arguments>)

# ListStackResources Operation

Returns descriptions of all resources of the specified stack.

For deleted stacks, ListStackResources returns resource information for up to 90 days after the stack has been deleted.

# Arguments

## `StackName = ::String` -- *Required*
The name or the unique stack ID that is associated with the stack, which are not always interchangeable:

*   Running stacks: You can specify either the stack's name or its unique stack ID.

*   Deleted stacks: You must specify the unique stack ID.

Default: There is no default value.


## `NextToken = ::String`
A string that identifies the next page of stack resources that you want to retrieve.




# Returns

`ListStackResourcesOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackResources)
"""
@inline list_stack_resources(aws::AWSConfig=default_aws_config(); args...) = list_stack_resources(aws, args)

@inline list_stack_resources(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "ListStackResources", args)

@inline list_stack_resources(args) = list_stack_resources(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.list_stack_set_operation_results
    list_stack_set_operation_results([::AWSConfig], arguments::Dict)
    list_stack_set_operation_results([::AWSConfig]; StackSetName=, OperationId=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "ListStackSetOperationResults", arguments::Dict)
    cloudformation([::AWSConfig], "ListStackSetOperationResults", StackSetName=, OperationId=, <keyword arguments>)

# ListStackSetOperationResults Operation

Returns summary information about the results of a stack set operation.

# Arguments

## `StackSetName = ::String` -- *Required*
The name or unique ID of the stack set that you want to get operation results for.


## `OperationId = ::String` -- *Required*
The ID of the stack set operation.


## `NextToken = ::String`
If the previous request didn't return all of the remaining results, the response object's `NextToken` parameter value is set to a token. To retrieve the next set of results, call `ListStackSetOperationResults` again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.


## `MaxResults = ::Int`
The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.




# Returns

`ListStackSetOperationResultsOutput`

# Exceptions

`StackSetNotFoundException` or `OperationNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperationResults)
"""
@inline list_stack_set_operation_results(aws::AWSConfig=default_aws_config(); args...) = list_stack_set_operation_results(aws, args)

@inline list_stack_set_operation_results(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "ListStackSetOperationResults", args)

@inline list_stack_set_operation_results(args) = list_stack_set_operation_results(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.list_stack_set_operations
    list_stack_set_operations([::AWSConfig], arguments::Dict)
    list_stack_set_operations([::AWSConfig]; StackSetName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "ListStackSetOperations", arguments::Dict)
    cloudformation([::AWSConfig], "ListStackSetOperations", StackSetName=, <keyword arguments>)

# ListStackSetOperations Operation

Returns summary information about operations performed on a stack set.

# Arguments

## `StackSetName = ::String` -- *Required*
The name or unique ID of the stack set that you want to get operation summaries for.


## `NextToken = ::String`
If the previous paginated request didn't return all of the remaining results, the response object's `NextToken` parameter value is set to a token. To retrieve the next set of results, call `ListStackSetOperations` again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.


## `MaxResults = ::Int`
The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.




# Returns

`ListStackSetOperationsOutput`

# Exceptions

`StackSetNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperations)
"""
@inline list_stack_set_operations(aws::AWSConfig=default_aws_config(); args...) = list_stack_set_operations(aws, args)

@inline list_stack_set_operations(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "ListStackSetOperations", args)

@inline list_stack_set_operations(args) = list_stack_set_operations(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.list_stack_sets
    list_stack_sets([::AWSConfig], arguments::Dict)
    list_stack_sets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "ListStackSets", arguments::Dict)
    cloudformation([::AWSConfig], "ListStackSets", <keyword arguments>)

# ListStackSets Operation

Returns summary information about stack sets that are associated with the user.

# Arguments

## `NextToken = ::String`
If the previous paginated request didn't return all of the remaining results, the response object's `NextToken` parameter value is set to a token. To retrieve the next set of results, call `ListStackSets` again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.


## `MaxResults = ::Int`
The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.


## `Status = "ACTIVE" or "DELETED"`
The status of the stack sets that you want to get summary information about.




# Returns

`ListStackSetsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSets)
"""
@inline list_stack_sets(aws::AWSConfig=default_aws_config(); args...) = list_stack_sets(aws, args)

@inline list_stack_sets(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "ListStackSets", args)

@inline list_stack_sets(args) = list_stack_sets(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.list_stacks
    list_stacks([::AWSConfig], arguments::Dict)
    list_stacks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "ListStacks", arguments::Dict)
    cloudformation([::AWSConfig], "ListStacks", <keyword arguments>)

# ListStacks Operation

Returns the summary information for stacks whose status matches the specified StackStatusFilter. Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted. If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).

# Arguments

## `NextToken = ::String`
A string that identifies the next page of stacks that you want to retrieve.


## `StackStatusFilter = ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE" or "REVIEW_IN_PROGRESS", ...]`
Stack status to use as a filter. Specify one or more stack status codes to list only stacks with the specified status codes. For a complete list of stack status codes, see the `StackStatus` parameter of the [Stack](@ref) data type.




# Returns

`ListStacksOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStacks)
"""
@inline list_stacks(aws::AWSConfig=default_aws_config(); args...) = list_stacks(aws, args)

@inline list_stacks(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "ListStacks", args)

@inline list_stacks(args) = list_stacks(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.set_stack_policy
    set_stack_policy([::AWSConfig], arguments::Dict)
    set_stack_policy([::AWSConfig]; StackName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "SetStackPolicy", arguments::Dict)
    cloudformation([::AWSConfig], "SetStackPolicy", StackName=, <keyword arguments>)

# SetStackPolicy Operation

Sets a stack policy for a specified stack.

# Arguments

## `StackName = ::String` -- *Required*
The name or unique stack ID that you want to associate a policy with.


## `StackPolicyBody = ::String`
Structure containing the stack policy body. For more information, go to [Prevent Updates to Stack Resources](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html) in the AWS CloudFormation User Guide. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.


## `StackPolicyURL = ::String`
Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same region as the stack. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetStackPolicy)
"""
@inline set_stack_policy(aws::AWSConfig=default_aws_config(); args...) = set_stack_policy(aws, args)

@inline set_stack_policy(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "SetStackPolicy", args)

@inline set_stack_policy(args) = set_stack_policy(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.signal_resource
    signal_resource([::AWSConfig], arguments::Dict)
    signal_resource([::AWSConfig]; StackName=, LogicalResourceId=, UniqueId=, Status=)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "SignalResource", arguments::Dict)
    cloudformation([::AWSConfig], "SignalResource", StackName=, LogicalResourceId=, UniqueId=, Status=)

# SignalResource Operation

Sends a signal to the specified resource with a success or failure status. You can use the SignalResource API in conjunction with a creation policy or update policy. AWS CloudFormation doesn't proceed with a stack creation or update until resources receive the required number of signals or the timeout period is exceeded. The SignalResource API is useful in cases where you want to send signals from anywhere other than an Amazon EC2 instance.

# Arguments

## `StackName = ::String` -- *Required*
The stack name or unique stack ID that includes the resource that you want to signal.


## `LogicalResourceId = ::String` -- *Required*
The logical ID of the resource that you want to signal. The logical ID is the name of the resource that given in the template.


## `UniqueId = ::String` -- *Required*
A unique ID of the signal. When you signal Amazon EC2 instances or Auto Scaling groups, specify the instance ID that you are signaling as the unique ID. If you send multiple signals to a single resource (such as signaling a wait condition), each signal requires a different unique ID.


## `Status = "SUCCESS" or "FAILURE"` -- *Required*
The status of the signal, which is either success or failure. A failure signal causes AWS CloudFormation to immediately fail the stack creation or update.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SignalResource)
"""
@inline signal_resource(aws::AWSConfig=default_aws_config(); args...) = signal_resource(aws, args)

@inline signal_resource(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "SignalResource", args)

@inline signal_resource(args) = signal_resource(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.stop_stack_set_operation
    stop_stack_set_operation([::AWSConfig], arguments::Dict)
    stop_stack_set_operation([::AWSConfig]; StackSetName=, OperationId=)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "StopStackSetOperation", arguments::Dict)
    cloudformation([::AWSConfig], "StopStackSetOperation", StackSetName=, OperationId=)

# StopStackSetOperation Operation

Stops an in-progress operation on a stack set and its associated stack instances.

# Arguments

## `StackSetName = ::String` -- *Required*
The name or unique ID of the stack set that you want to stop the operation for.


## `OperationId = ::String` -- *Required*
The ID of the stack operation.




# Returns

`StopStackSetOperationOutput`

# Exceptions

`StackSetNotFoundException`, `OperationNotFoundException` or `InvalidOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StopStackSetOperation)
"""
@inline stop_stack_set_operation(aws::AWSConfig=default_aws_config(); args...) = stop_stack_set_operation(aws, args)

@inline stop_stack_set_operation(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "StopStackSetOperation", args)

@inline stop_stack_set_operation(args) = stop_stack_set_operation(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.update_stack
    update_stack([::AWSConfig], arguments::Dict)
    update_stack([::AWSConfig]; StackName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "UpdateStack", arguments::Dict)
    cloudformation([::AWSConfig], "UpdateStack", StackName=, <keyword arguments>)

# UpdateStack Operation

Updates a stack as specified in the template. After the call completes successfully, the stack update starts. You can check the status of the stack via the [DescribeStacks](@ref) action.

To get a copy of the template for an existing stack, you can use the [GetTemplate](@ref) action.

For more information about creating an update template, updating a stack, and monitoring the progress of the update, see [Updating a Stack](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html).

# Arguments

## `StackName = ::String` -- *Required*
The name or unique stack ID of the stack to update.


## `TemplateBody = ::String`
Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.)

Conditional: You must specify only one of the following parameters: `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to `true`.


## `TemplateURL = ::String`
Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket. For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.

Conditional: You must specify only one of the following parameters: `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to `true`.


## `UsePreviousTemplate = ::Bool`
Reuse the existing template that is associated with the stack that you are updating.

Conditional: You must specify only one of the following parameters: `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to `true`.


## `StackPolicyDuringUpdateBody = ::String`
Structure containing the temporary overriding stack policy body. You can specify either the `StackPolicyDuringUpdateBody` or the `StackPolicyDuringUpdateURL` parameter, but not both.

If you want to update protected resources, specify a temporary overriding stack policy during this update. If you do not specify a stack policy, the current policy that is associated with the stack will be used.


## `StackPolicyDuringUpdateURL = ::String`
Location of a file containing the temporary overriding stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack. You can specify either the `StackPolicyDuringUpdateBody` or the `StackPolicyDuringUpdateURL` parameter, but not both.

If you want to update protected resources, specify a temporary overriding stack policy during this update. If you do not specify a stack policy, the current policy that is associated with the stack will be used.


## `Parameters = [[ ... ], ...]`
A list of `Parameter` structures that specify input parameters for the stack. For more information, see the [Parameter](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html) data type.
```
 Parameters = [[
        "ParameterKey" =>  ::String,
        "ParameterValue" =>  ::String,
        "UsePreviousValue" =>  ::Bool,
        "ResolvedValue" =>  ::String
    ], ...]
```

## `Capabilities = ["CAPABILITY_IAM" or "CAPABILITY_NAMED_IAM", ...]`
A list of values that you must specify before AWS CloudFormation can update certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.

The only valid values are `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`. The following resources require you to specify this parameter: [AWS::IAM::AccessKey](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html), [AWS::IAM::Group](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html), [AWS::IAM::InstanceProfile](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html), [AWS::IAM::Policy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html), [AWS::IAM::Role](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html), [AWS::IAM::User](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html), and [AWS::IAM::UserToGroupAddition](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html). If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.

If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify `CAPABILITY_NAMED_IAM`. If you don't specify this parameter, this action returns an `InsufficientCapabilities` error.

For more information, see [Acknowledging IAM Resources in AWS CloudFormation Templates](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities).


## `ResourceTypes = [::String, ...]`
The template resource types that you have permissions to work with for this update stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`, or `Custom::MyCustomInstance`.

If the list of resource types doesn't include a resource that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies. For more information, see [Controlling Access with AWS Identity and Access Management](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html).


## `RoleARN = ::String`
The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to update the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.

If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.


## `RollbackConfiguration = [ ... ]`
The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
```
 RollbackConfiguration = [
        "RollbackTriggers" =>  [[
            "Arn" => <required> ::String,
            "Type" => <required> ::String
        ], ...],
        "MonitoringTimeInMinutes" =>  ::Int
    ]
```

## `StackPolicyBody = ::String`
Structure containing a new stack policy body. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.

You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you do not specify a stack policy, the current policy that is associated with the stack is unchanged.


## `StackPolicyURL = ::String`
Location of a file containing the updated stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.

You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you do not specify a stack policy, the current policy that is associated with the stack is unchanged.


## `NotificationARNs = [::String, ...]`
Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that AWS CloudFormation associates with the stack. Specify an empty list to remove all notification topics.


## `Tags = [[ ... ], ...]`
Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to supported resources in the stack. You can specify a maximum number of 50 tags.

If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's tags. If you specify an empty value, AWS CloudFormation removes all associated tags.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `ClientRequestToken = ::String`
A unique identifier for this `UpdateStack` request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to update a stack with the same name. You might retry `UpdateStack` requests to ensure that AWS CloudFormation successfully received them.

All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a `CreateStack` operation with the token `token1`, then all the `StackEvents` generated by that operation will have `ClientRequestToken` set as `token1`.

In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format *Console-StackOperation-ID*, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.




# Returns

`UpdateStackOutput`

# Exceptions

`InsufficientCapabilitiesException` or `TokenAlreadyExistsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStack)
"""
@inline update_stack(aws::AWSConfig=default_aws_config(); args...) = update_stack(aws, args)

@inline update_stack(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "UpdateStack", args)

@inline update_stack(args) = update_stack(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.update_stack_instances
    update_stack_instances([::AWSConfig], arguments::Dict)
    update_stack_instances([::AWSConfig]; StackSetName=, Accounts=, Regions=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "UpdateStackInstances", arguments::Dict)
    cloudformation([::AWSConfig], "UpdateStackInstances", StackSetName=, Accounts=, Regions=, <keyword arguments>)

# UpdateStackInstances Operation

Updates the parameter values for stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region.

You can only update stack instances in regions and accounts where they already exist; to create additional stack instances, use [CreateStackInstances](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html).

During stack set updates, any parameters overridden for a stack instance are not updated, but retain their overridden value.

You can only update the parameter *values* that are specified in the stack set; to add or delete a parameter itself, use [UpdateStackSet](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use [UpdateStackSet](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using `UpdateStackInstances`.

# Arguments

## `StackSetName = ::String` -- *Required*
The name or unique ID of the stack set associated with the stack instances.


## `Accounts = [::String, ...]` -- *Required*
The names of one or more AWS accounts for which you want to update parameter values for stack instances. The overridden parameter values will be applied to all stack instances in the specified accounts and regions.


## `Regions = [::String, ...]` -- *Required*
The names of one or more regions in which you want to update parameter values for stack instances. The overridden parameter values will be applied to all stack instances in the specified accounts and regions.


## `ParameterOverrides = [[ ... ], ...]`
A list of input parameters whose values you want to update for the specified stack instances.

Any overridden parameter values will be applied to all stack instances in the specified accounts and regions. When specifying parameters and their values, be aware of how AWS CloudFormation sets parameter values during stack instance update operations:

*   To override the current value for a parameter, include the parameter and specify its value.

*   To leave a parameter set to its present value, you can do one of the following:

    *   Do not include the parameter in the list.

    *   Include the parameter and specify `UsePreviousValue` as `true`. (You cannot specify both a value and set `UsePreviousValue` to `true`.)

*   To set all overridden parameter back to the values specified in the stack set, specify a parameter list but do not include any parameters.

*   To leave all parameters set to their present values, do not specify this property at all.

During stack set updates, any parameter values overridden for a stack instance are not updated, but retain their overridden value.

You can only override the parameter *values* that are specified in the stack set; to add or delete a parameter itself, use `UpdateStackSet` to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use [UpdateStackSet](http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using `UpdateStackInstances`.
```
 ParameterOverrides = [[
        "ParameterKey" =>  ::String,
        "ParameterValue" =>  ::String,
        "UsePreviousValue" =>  ::Bool,
        "ResolvedValue" =>  ::String
    ], ...]
```

## `OperationPreferences = [ ... ]`
Preferences for how AWS CloudFormation performs this stack set operation.
```
 OperationPreferences = [
        "RegionOrder" =>  [::String, ...],
        "FailureToleranceCount" =>  ::Int,
        "FailureTolerancePercentage" =>  ::Int,
        "MaxConcurrentCount" =>  ::Int,
        "MaxConcurrentPercentage" =>  ::Int
    ]
```

## `OperationId = ::String`
The unique identifier for this stack set operation.

The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them.

If you don't specify an operation ID, the SDK generates one automatically.




# Returns

`UpdateStackInstancesOutput`

# Exceptions

`StackSetNotFoundException`, `StackInstanceNotFoundException`, `OperationInProgressException`, `OperationIdAlreadyExistsException`, `StaleRequestException` or `InvalidOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackInstances)
"""
@inline update_stack_instances(aws::AWSConfig=default_aws_config(); args...) = update_stack_instances(aws, args)

@inline update_stack_instances(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "UpdateStackInstances", args)

@inline update_stack_instances(args) = update_stack_instances(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.update_stack_set
    update_stack_set([::AWSConfig], arguments::Dict)
    update_stack_set([::AWSConfig]; StackSetName=, <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "UpdateStackSet", arguments::Dict)
    cloudformation([::AWSConfig], "UpdateStackSet", StackSetName=, <keyword arguments>)

# UpdateStackSet Operation

Updates the stack set, and associated stack instances in the specified accounts and regions.

Even if the stack set operation created by updating the stack set fails (completely or partially, below or above a specified failure tolerance), the stack set is updated with your changes. Subsequent [CreateStackInstances](@ref) calls on the specified stack set use the updated stack set.

# Arguments

## `StackSetName = ::String` -- *Required*
The name or unique ID of the stack set that you want to update.


## `Description = ::String`
A brief description of updates that you are making.


## `TemplateBody = ::String`
The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, see [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.

Conditional: You must specify only one of the following parameters: `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.


## `TemplateURL = ::String`
The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, see [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.

Conditional: You must specify only one of the following parameters: `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.


## `UsePreviousTemplate = ::Bool`
Use the existing template that's associated with the stack set that you're updating.

Conditional: You must specify only one of the following parameters: `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to true.


## `Parameters = [[ ... ], ...]`
A list of input parameters for the stack set template.
```
 Parameters = [[
        "ParameterKey" =>  ::String,
        "ParameterValue" =>  ::String,
        "UsePreviousValue" =>  ::Bool,
        "ResolvedValue" =>  ::String
    ], ...]
```

## `Capabilities = ["CAPABILITY_IAM" or "CAPABILITY_NAMED_IAM", ...]`
A list of values that you must specify before AWS CloudFormation can create certain stack sets. Some stack set templates might include resources that can affect permissions in your AWS account—for example, by creating new AWS Identity and Access Management (IAM) users. For those stack sets, you must explicitly acknowledge their capabilities by specifying this parameter.

The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. The following resources require you to specify this parameter:

*   AWS::IAM::AccessKey

*   AWS::IAM::Group

*   AWS::IAM::InstanceProfile

*   AWS::IAM::Policy

*   AWS::IAM::Role

*   AWS::IAM::User

*   AWS::IAM::UserToGroupAddition

If your stack template contains these resources, we recommend that you review all permissions that are associated with them and edit their permissions if necessary.

If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM. If you don't specify this parameter, this action returns an `InsufficientCapabilities` error.

For more information, see [Acknowledging IAM Resources in AWS CloudFormation Templates.](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities)


## `Tags = [[ ... ], ...]`
The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. You can specify a maximum number of 50 tags.

If you specify tags for this parameter, those tags replace any list of tags that are currently associated with this stack set. This means:

*   If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's tags.

*   If you specify *any* tags using this parameter, you must specify *all* the tags that you want associated with this stack set, even tags you've specifed before (for example, when creating the stack set or during a previous update of the stack set.). Any tags that you don't include in the updated list of tags are removed from the stack set, and therefore from the stacks and resources as well.

*   If you specify an empty value, AWS CloudFormation removes all currently associated tags.

If you specify new tags as part of an `UpdateStackSet` action, AWS CloudFormation checks to see if you have the required IAM permission to tag resources. If you omit tags that are currently associated with the stack set from the list of tags you specify, AWS CloudFormation assumes that you want to remove those tags from the stack set, and checks to see if you have permission to untag resources. If you don't have the necessary permission(s), the entire `UpdateStackSet` action fails with an `access denied` error, and the stack set is not updated.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `OperationPreferences = [ ... ]`
Preferences for how AWS CloudFormation performs this stack set operation.
```
 OperationPreferences = [
        "RegionOrder" =>  [::String, ...],
        "FailureToleranceCount" =>  ::Int,
        "FailureTolerancePercentage" =>  ::Int,
        "MaxConcurrentCount" =>  ::Int,
        "MaxConcurrentPercentage" =>  ::Int
    ]
```

## `AdministrationRoleARN = ::String`
The Amazon Resource Number (ARN) of the IAM role to use to update this stack set.

Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see [Define Permissions for Multiple Administrators](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html) in the *AWS CloudFormation User Guide*.

If you specify a customized administrator role, AWS CloudFormation uses that role to update the stack. If you do not specify a customized administrator role, AWS CloudFormation performs the update using the role previously associated with the stack set, so long as you have permissions to perform operations on the stack set.


## `ExecutionRoleName = ::String`
The name of the IAM execution role to use to update the stack set. If you do not specify an execution role, AWS CloudFormation uses the `AWSCloudFormationStackSetExecutionRole` role for the stack set operation.

Specify an IAM role only if you are using customized execution roles to control which stack resources users and groups can include in their stack sets.

If you specify a customized execution role, AWS CloudFormation uses that role to update the stack. If you do not specify a customized execution role, AWS CloudFormation performs the update using the role previously associated with the stack set, so long as you have permissions to perform operations on the stack set.


## `OperationId = ::String`
The unique ID for this stack set operation.

The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them.

If you don't specify an operation ID, AWS CloudFormation generates one automatically.

Repeating this stack set operation with a new operation ID retries all stack instances whose status is `OUTDATED`.


## `Accounts = [::String, ...]`
The accounts in which to update associated stack instances. If you specify accounts, you must also specify the regions in which to update stack set instances.

To update *all* the stack instances associated with this stack set, do not specify the `Accounts` or `Regions` properties.

If the stack set update includes changes to the template (that is, if the `TemplateBody` or `TemplateURL` properties are specified), or the `Parameters` property, AWS CloudFormation marks all stack instances with a status of `OUTDATED` prior to updating the stack instances in the specified accounts and regions. If the stack set update does not include changes to the template or parameters, AWS CloudFormation updates the stack instances in the specified accounts and regions, while leaving all other stack instances with their existing stack instance status.


## `Regions = [::String, ...]`
The regions in which to update associated stack instances. If you specify regions, you must also specify accounts in which to update stack set instances.

To update *all* the stack instances associated with this stack set, do not specify the `Accounts` or `Regions` properties.

If the stack set update includes changes to the template (that is, if the `TemplateBody` or `TemplateURL` properties are specified), or the `Parameters` property, AWS CloudFormation marks all stack instances with a status of `OUTDATED` prior to updating the stack instances in the specified accounts and regions. If the stack set update does not include changes to the template or parameters, AWS CloudFormation updates the stack instances in the specified accounts and regions, while leaving all other stack instances with their existing stack instance status.




# Returns

`UpdateStackSetOutput`

# Exceptions

`StackSetNotFoundException`, `OperationInProgressException`, `OperationIdAlreadyExistsException`, `StaleRequestException`, `InvalidOperationException` or `StackInstanceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackSet)
"""
@inline update_stack_set(aws::AWSConfig=default_aws_config(); args...) = update_stack_set(aws, args)

@inline update_stack_set(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "UpdateStackSet", args)

@inline update_stack_set(args) = update_stack_set(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.update_termination_protection
    update_termination_protection([::AWSConfig], arguments::Dict)
    update_termination_protection([::AWSConfig]; EnableTerminationProtection=, StackName=)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "UpdateTerminationProtection", arguments::Dict)
    cloudformation([::AWSConfig], "UpdateTerminationProtection", EnableTerminationProtection=, StackName=)

# UpdateTerminationProtection Operation

Updates termination protection for the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see [Protecting a Stack From Being Deleted](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html) in the *AWS CloudFormation User Guide*.

For [nested stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html), termination protection is set on the root stack and cannot be changed directly on the nested stack.

# Arguments

## `EnableTerminationProtection = ::Bool` -- *Required*
Whether to enable termination protection on the specified stack.


## `StackName = ::String` -- *Required*
The name or unique ID of the stack for which you want to set termination protection.




# Returns

`UpdateTerminationProtectionOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateTerminationProtection)
"""
@inline update_termination_protection(aws::AWSConfig=default_aws_config(); args...) = update_termination_protection(aws, args)

@inline update_termination_protection(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "UpdateTerminationProtection", args)

@inline update_termination_protection(args) = update_termination_protection(default_aws_config(), args)


"""
    using AWSSDK.CloudFormation.validate_template
    validate_template([::AWSConfig], arguments::Dict)
    validate_template([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudformation
    cloudformation([::AWSConfig], "ValidateTemplate", arguments::Dict)
    cloudformation([::AWSConfig], "ValidateTemplate", <keyword arguments>)

# ValidateTemplate Operation

Validates a specified template. AWS CloudFormation first checks if the template is valid JSON. If it isn't, AWS CloudFormation checks if the template is valid YAML. If both these checks fail, AWS CloudFormation returns a template validation error.

# Arguments

## `TemplateBody = ::String`
Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.

Conditional: You must pass `TemplateURL` or `TemplateBody`. If both are passed, only `TemplateBody` is used.


## `TemplateURL = ::String`
Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, go to [Template Anatomy](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the AWS CloudFormation User Guide.

Conditional: You must pass `TemplateURL` or `TemplateBody`. If both are passed, only `TemplateBody` is used.




# Returns

`ValidateTemplateOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ValidateTemplate)
"""
@inline validate_template(aws::AWSConfig=default_aws_config(); args...) = validate_template(aws, args)

@inline validate_template(aws::AWSConfig, args) = AWSCore.Services.cloudformation(aws, "ValidateTemplate", args)

@inline validate_template(args) = validate_template(default_aws_config(), args)




end # module CloudFormation


#==============================================================================#
# End of file
#==============================================================================#
