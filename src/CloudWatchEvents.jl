#==============================================================================#
# CloudWatchEvents.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/events-2015-10-07.normal.json
#==============================================================================#

__precompile__()

module CloudWatchEvents

using AWSCore


"""
    using AWSSDK.CloudWatchEvents.delete_rule
    delete_rule([::AWSConfig], arguments::Dict)
    delete_rule([::AWSConfig]; Name=)

    using AWSCore.Services.events
    events([::AWSConfig], "DeleteRule", arguments::Dict)
    events([::AWSConfig], "DeleteRule", Name=)

# DeleteRule Operation

Deletes the specified rule.

You must remove all targets from a rule using [RemoveTargets](@ref) before you can delete the rule.

When you delete a rule, incoming events might continue to match to the deleted rule. Please allow a short period of time for changes to take effect.

# Arguments

## `Name = ::String` -- *Required*
The name of the rule.




# Exceptions

`ConcurrentModificationException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteRule)
"""
@inline delete_rule(aws::AWSConfig=default_aws_config(); args...) = delete_rule(aws, args)

@inline delete_rule(aws::AWSConfig, args) = AWSCore.Services.events(aws, "DeleteRule", args)

@inline delete_rule(args) = delete_rule(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.describe_event_bus
    describe_event_bus([::AWSConfig], arguments::Dict)
    describe_event_bus([::AWSConfig]; )

    using AWSCore.Services.events
    events([::AWSConfig], "DescribeEventBus", arguments::Dict)
    events([::AWSConfig], "DescribeEventBus", )

# DescribeEventBus Operation

Displays the external AWS accounts that are permitted to write events to your account using your account's event bus, and the associated policy. To enable your account to receive events from other accounts, use [PutPermission](@ref).

# Arguments



# Returns

`DescribeEventBusResponse`

# Exceptions

`ResourceNotFoundException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeEventBus)
"""
@inline describe_event_bus(aws::AWSConfig=default_aws_config(); args...) = describe_event_bus(aws, args)

@inline describe_event_bus(aws::AWSConfig, args) = AWSCore.Services.events(aws, "DescribeEventBus", args)

@inline describe_event_bus(args) = describe_event_bus(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.describe_rule
    describe_rule([::AWSConfig], arguments::Dict)
    describe_rule([::AWSConfig]; Name=)

    using AWSCore.Services.events
    events([::AWSConfig], "DescribeRule", arguments::Dict)
    events([::AWSConfig], "DescribeRule", Name=)

# DescribeRule Operation

Describes the specified rule.

# Arguments

## `Name = ::String` -- *Required*
The name of the rule.




# Returns

`DescribeRuleResponse`

# Exceptions

`ResourceNotFoundException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeRule)
"""
@inline describe_rule(aws::AWSConfig=default_aws_config(); args...) = describe_rule(aws, args)

@inline describe_rule(aws::AWSConfig, args) = AWSCore.Services.events(aws, "DescribeRule", args)

@inline describe_rule(args) = describe_rule(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.disable_rule
    disable_rule([::AWSConfig], arguments::Dict)
    disable_rule([::AWSConfig]; Name=)

    using AWSCore.Services.events
    events([::AWSConfig], "DisableRule", arguments::Dict)
    events([::AWSConfig], "DisableRule", Name=)

# DisableRule Operation

Disables the specified rule. A disabled rule won't match any events, and won't self-trigger if it has a schedule expression.

When you disable a rule, incoming events might continue to match to the disabled rule. Please allow a short period of time for changes to take effect.

# Arguments

## `Name = ::String` -- *Required*
The name of the rule.




# Exceptions

`ResourceNotFoundException`, `ConcurrentModificationException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DisableRule)
"""
@inline disable_rule(aws::AWSConfig=default_aws_config(); args...) = disable_rule(aws, args)

@inline disable_rule(aws::AWSConfig, args) = AWSCore.Services.events(aws, "DisableRule", args)

@inline disable_rule(args) = disable_rule(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.enable_rule
    enable_rule([::AWSConfig], arguments::Dict)
    enable_rule([::AWSConfig]; Name=)

    using AWSCore.Services.events
    events([::AWSConfig], "EnableRule", arguments::Dict)
    events([::AWSConfig], "EnableRule", Name=)

# EnableRule Operation

Enables the specified rule. If the rule does not exist, the operation fails.

When you enable a rule, incoming events might not immediately start matching to a newly enabled rule. Please allow a short period of time for changes to take effect.

# Arguments

## `Name = ::String` -- *Required*
The name of the rule.




# Exceptions

`ResourceNotFoundException`, `ConcurrentModificationException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/EnableRule)
"""
@inline enable_rule(aws::AWSConfig=default_aws_config(); args...) = enable_rule(aws, args)

@inline enable_rule(aws::AWSConfig, args) = AWSCore.Services.events(aws, "EnableRule", args)

@inline enable_rule(args) = enable_rule(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.list_rule_names_by_target
    list_rule_names_by_target([::AWSConfig], arguments::Dict)
    list_rule_names_by_target([::AWSConfig]; TargetArn=, <keyword arguments>)

    using AWSCore.Services.events
    events([::AWSConfig], "ListRuleNamesByTarget", arguments::Dict)
    events([::AWSConfig], "ListRuleNamesByTarget", TargetArn=, <keyword arguments>)

# ListRuleNamesByTarget Operation

Lists the rules for the specified target. You can see which of the rules in Amazon CloudWatch Events can invoke a specific target in your account.

# Arguments

## `TargetArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the target resource.


## `NextToken = ::String`
The token returned by a previous call to retrieve the next set of results.


## `Limit = ::Int`
The maximum number of results to return.




# Returns

`ListRuleNamesByTargetResponse`

# Exceptions

`InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRuleNamesByTarget)
"""
@inline list_rule_names_by_target(aws::AWSConfig=default_aws_config(); args...) = list_rule_names_by_target(aws, args)

@inline list_rule_names_by_target(aws::AWSConfig, args) = AWSCore.Services.events(aws, "ListRuleNamesByTarget", args)

@inline list_rule_names_by_target(args) = list_rule_names_by_target(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.list_rules
    list_rules([::AWSConfig], arguments::Dict)
    list_rules([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.events
    events([::AWSConfig], "ListRules", arguments::Dict)
    events([::AWSConfig], "ListRules", <keyword arguments>)

# ListRules Operation

Lists your Amazon CloudWatch Events rules. You can either list all the rules or you can provide a prefix to match to the rule names.

# Arguments

## `NamePrefix = ::String`
The prefix matching the rule name.


## `NextToken = ::String`
The token returned by a previous call to retrieve the next set of results.


## `Limit = ::Int`
The maximum number of results to return.




# Returns

`ListRulesResponse`

# Exceptions

`InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRules)
"""
@inline list_rules(aws::AWSConfig=default_aws_config(); args...) = list_rules(aws, args)

@inline list_rules(aws::AWSConfig, args) = AWSCore.Services.events(aws, "ListRules", args)

@inline list_rules(args) = list_rules(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.list_targets_by_rule
    list_targets_by_rule([::AWSConfig], arguments::Dict)
    list_targets_by_rule([::AWSConfig]; Rule=, <keyword arguments>)

    using AWSCore.Services.events
    events([::AWSConfig], "ListTargetsByRule", arguments::Dict)
    events([::AWSConfig], "ListTargetsByRule", Rule=, <keyword arguments>)

# ListTargetsByRule Operation

Lists the targets assigned to the specified rule.

# Arguments

## `Rule = ::String` -- *Required*
The name of the rule.


## `NextToken = ::String`
The token returned by a previous call to retrieve the next set of results.


## `Limit = ::Int`
The maximum number of results to return.




# Returns

`ListTargetsByRuleResponse`

# Exceptions

`ResourceNotFoundException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListTargetsByRule)
"""
@inline list_targets_by_rule(aws::AWSConfig=default_aws_config(); args...) = list_targets_by_rule(aws, args)

@inline list_targets_by_rule(aws::AWSConfig, args) = AWSCore.Services.events(aws, "ListTargetsByRule", args)

@inline list_targets_by_rule(args) = list_targets_by_rule(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.put_events
    put_events([::AWSConfig], arguments::Dict)
    put_events([::AWSConfig]; Entries=)

    using AWSCore.Services.events
    events([::AWSConfig], "PutEvents", arguments::Dict)
    events([::AWSConfig], "PutEvents", Entries=)

# PutEvents Operation

Sends custom events to Amazon CloudWatch Events so that they can be matched to rules.

# Arguments

## `Entries = [[ ... ], ...]` -- *Required*
The entry that defines an event in your system. You can specify several parameters for the entry such as the source and type of the event, resources associated with the event, and so on.
```
 Entries = [[
        "Time" =>  timestamp,
        "Source" =>  ::String,
        "Resources" =>  [::String, ...],
        "DetailType" =>  ::String,
        "Detail" =>  ::String
    ], ...]
```



# Returns

`PutEventsResponse`

# Exceptions

`InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEvents)
"""
@inline put_events(aws::AWSConfig=default_aws_config(); args...) = put_events(aws, args)

@inline put_events(aws::AWSConfig, args) = AWSCore.Services.events(aws, "PutEvents", args)

@inline put_events(args) = put_events(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.put_permission
    put_permission([::AWSConfig], arguments::Dict)
    put_permission([::AWSConfig]; Action=, Principal=, StatementId=)

    using AWSCore.Services.events
    events([::AWSConfig], "PutPermission", arguments::Dict)
    events([::AWSConfig], "PutPermission", Action=, Principal=, StatementId=)

# PutPermission Operation

Running `PutPermission` permits the specified AWS account to put events to your account's default *event bus*. CloudWatch Events rules in your account are triggered by these events arriving to your default event bus.

For another account to send events to your account, that external account must have a CloudWatch Events rule with your account's default event bus as a target.

To enable multiple AWS accounts to put events to your default event bus, run `PutPermission` once for each of these accounts.

The permission policy on the default event bus cannot exceed 10KB in size.

# Arguments

## `Action = ::String` -- *Required*
The action that you are enabling the other account to perform. Currently, this must be `events:PutEvents`.


## `Principal = ::String` -- *Required*
The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify "*" to permit any account to put events to your default event bus.

If you specify "*", avoid creating rules that may match undesirable events. To create more secure rules, make sure that the event pattern for each rule contains an `account` field with a specific account ID from which to receive events. Rules with an account field do not match any events sent from other accounts.


## `StatementId = ::String` -- *Required*
An identifier string for the external account that you are granting permissions to. If you later want to revoke the permission for this external account, specify this `StatementId` when you run [RemovePermission](@ref).




# Exceptions

`ResourceNotFoundException`, `PolicyLengthExceededException`, `InternalException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutPermission)
"""
@inline put_permission(aws::AWSConfig=default_aws_config(); args...) = put_permission(aws, args)

@inline put_permission(aws::AWSConfig, args) = AWSCore.Services.events(aws, "PutPermission", args)

@inline put_permission(args) = put_permission(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.put_rule
    put_rule([::AWSConfig], arguments::Dict)
    put_rule([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.events
    events([::AWSConfig], "PutRule", arguments::Dict)
    events([::AWSConfig], "PutRule", Name=, <keyword arguments>)

# PutRule Operation

Creates or updates the specified rule. Rules are enabled by default, or based on value of the state. You can disable a rule using [DisableRule](@ref).

If you are updating an existing rule, the rule is completely replaced with what you specify in this `PutRule` command. If you omit arguments in `PutRule`, the old values for those arguments are not kept. Instead, they are replaced with null values.

When you create or update a rule, incoming events might not immediately start matching to new or updated rules. Please allow a short period of time for changes to take effect.

A rule must contain at least an EventPattern or ScheduleExpression. Rules with EventPatterns are triggered when a matching event is observed. Rules with ScheduleExpressions self-trigger based on the given schedule. A rule can have both an EventPattern and a ScheduleExpression, in which case the rule triggers on matching events as well as on a schedule.

Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match.

# Arguments

## `Name = ::String` -- *Required*
The name of the rule that you are creating or updating.


## `ScheduleExpression = ::String`
The scheduling expression. For example, "cron(0 20 * * ? *)" or "rate(5 minutes)".


## `EventPattern = ::String`
The event pattern. For more information, see [Events and Event Patterns](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html) in the *Amazon CloudWatch Events User Guide*.


## `State = "ENABLED" or "DISABLED"`
Indicates whether the rule is enabled or disabled.


## `Description = ::String`
A description of the rule.


## `RoleArn = ::String`
The Amazon Resource Name (ARN) of the IAM role associated with the rule.




# Returns

`PutRuleResponse`

# Exceptions

`InvalidEventPatternException`, `LimitExceededException`, `ConcurrentModificationException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutRule)
"""
@inline put_rule(aws::AWSConfig=default_aws_config(); args...) = put_rule(aws, args)

@inline put_rule(aws::AWSConfig, args) = AWSCore.Services.events(aws, "PutRule", args)

@inline put_rule(args) = put_rule(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.put_targets
    put_targets([::AWSConfig], arguments::Dict)
    put_targets([::AWSConfig]; Rule=, Targets=)

    using AWSCore.Services.events
    events([::AWSConfig], "PutTargets", arguments::Dict)
    events([::AWSConfig], "PutTargets", Rule=, Targets=)

# PutTargets Operation

Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule.

Targets are the resources that are invoked when a rule is triggered.

You can configure the following as targets for CloudWatch Events:

*   EC2 instances

*   AWS Lambda functions

*   Streams in Amazon Kinesis Streams

*   Delivery streams in Amazon Kinesis Firehose

*   Amazon ECS tasks

*   AWS Step Functions state machines

*   AWS Batch jobs

*   Pipelines in Amazon Code Pipeline

*   Amazon Inspector assessment templates

*   Amazon SNS topics

*   Amazon SQS queues, including FIFO queues

*   The default event bus of another AWS account

Note that creating rules with built-in targets is supported only in the AWS Management Console.

For some target types, `PutTargets` provides target-specific parameters. If the target is an Amazon Kinesis stream, you can optionally specify which shard the event goes to by using the `KinesisParameters` argument. To invoke a command on multiple EC2 instances with one rule, you can use the `RunCommandParameters` field.

To be able to make API calls against the resources that you own, Amazon CloudWatch Events needs the appropriate permissions. For AWS Lambda and Amazon SNS resources, CloudWatch Events relies on resource-based policies. For EC2 instances, Amazon Kinesis streams, and AWS Step Functions state machines, CloudWatch Events relies on IAM roles that you specify in the `RoleARN` argument in `PutTargets`. For more information, see [Authentication and Access Control](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/auth-and-access-control-cwe.html) in the *Amazon CloudWatch Events User Guide*.

If another AWS account is in the same region and has granted you permission (using `PutPermission`), you can send events to that account by setting that account's event bus as a target of the rules in your account. To send the matched events to the other account, specify that account's event bus as the `Arn` when you run `PutTargets`. If your account sends events to another account, your account is charged for each sent event. Each event sent to antoher account is charged as a custom event. The account receiving the event is not charged. For more information on pricing, see [Amazon CloudWatch Pricing](https://aws.amazon.com/cloudwatch/pricing/).

For more information about enabling cross-account events, see [PutPermission](@ref).

**Input**, **InputPath** and **InputTransformer** are mutually exclusive and optional parameters of a target. When a rule is triggered due to a matched event:

*   If none of the following arguments are specified for a target, then the entire event is passed to the target in JSON form (unless the target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing from the event is passed to the target).

*   If **Input** is specified in the form of valid JSON, then the matched event is overridden with this constant.

*   If **InputPath** is specified in the form of JSONPath (for example, `\$.detail`), then only the part of the event specified in the path is passed to the target (for example, only the detail part of the event is passed).

*   If **InputTransformer** is specified, then one or more specified JSONPaths are extracted from the event and used as values in a template that you specify as the input to the target.

When you specify `InputPath` or `InputTransformer`, you must use JSON dot notation, not bracket notation.

When you add targets to a rule and the associated rule triggers soon after, new or updated targets might not be immediately invoked. Please allow a short period of time for changes to take effect.

This action can partially fail if too many requests are made at the same time. If that happens, `FailedEntryCount` is non-zero in the response and each entry in `FailedEntries` provides the ID of the failed target and the error code.

# Arguments

## `Rule = ::String` -- *Required*
The name of the rule.


## `Targets = [[ ... ], ...]` -- *Required*
The targets to update or add to the rule.
```
 Targets = [[
        "Id" => <required> ::String,
        "Arn" => <required> ::String,
        "RoleArn" =>  ::String,
        "Input" =>  ::String,
        "InputPath" =>  ::String,
        "InputTransformer" =>  [
            "InputPathsMap" =>  ::Dict{String,String},
            "InputTemplate" => <required> ::String
        ],
        "KinesisParameters" =>  ["PartitionKeyPath" => <required> ::String],
        "RunCommandParameters" =>  ["RunCommandTargets" => <required> [[
                "Key" => <required> ::String,
                "Values" => <required> [::String, ...]
            ], ...]],
        "EcsParameters" =>  [
            "TaskDefinitionArn" => <required> ::String,
            "TaskCount" =>  ::Int
        ],
        "BatchParameters" =>  [
            "JobDefinition" => <required> ::String,
            "JobName" => <required> ::String,
            "ArrayProperties" =>  ["Size" =>  ::Int],
            "RetryStrategy" =>  ["Attempts" =>  ::Int]
        ],
        "SqsParameters" =>  ["MessageGroupId" =>  ::String]
    ], ...]
```



# Returns

`PutTargetsResponse`

# Exceptions

`ResourceNotFoundException`, `ConcurrentModificationException`, `LimitExceededException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutTargets)
"""
@inline put_targets(aws::AWSConfig=default_aws_config(); args...) = put_targets(aws, args)

@inline put_targets(aws::AWSConfig, args) = AWSCore.Services.events(aws, "PutTargets", args)

@inline put_targets(args) = put_targets(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.remove_permission
    remove_permission([::AWSConfig], arguments::Dict)
    remove_permission([::AWSConfig]; StatementId=)

    using AWSCore.Services.events
    events([::AWSConfig], "RemovePermission", arguments::Dict)
    events([::AWSConfig], "RemovePermission", StatementId=)

# RemovePermission Operation

Revokes the permission of another AWS account to be able to put events to your default event bus. Specify the account to revoke by the `StatementId` value that you associated with the account when you granted it permission with `PutPermission`. You can find the `StatementId` by using [DescribeEventBus](@ref).

# Arguments

## `StatementId = ::String` -- *Required*
The statement ID corresponding to the account that is no longer allowed to put events to the default event bus.




# Exceptions

`ResourceNotFoundException`, `InternalException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemovePermission)
"""
@inline remove_permission(aws::AWSConfig=default_aws_config(); args...) = remove_permission(aws, args)

@inline remove_permission(aws::AWSConfig, args) = AWSCore.Services.events(aws, "RemovePermission", args)

@inline remove_permission(args) = remove_permission(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.remove_targets
    remove_targets([::AWSConfig], arguments::Dict)
    remove_targets([::AWSConfig]; Rule=, Ids=)

    using AWSCore.Services.events
    events([::AWSConfig], "RemoveTargets", arguments::Dict)
    events([::AWSConfig], "RemoveTargets", Rule=, Ids=)

# RemoveTargets Operation

Removes the specified targets from the specified rule. When the rule is triggered, those targets are no longer be invoked.

When you remove a target, when the associated rule triggers, removed targets might continue to be invoked. Please allow a short period of time for changes to take effect.

This action can partially fail if too many requests are made at the same time. If that happens, `FailedEntryCount` is non-zero in the response and each entry in `FailedEntries` provides the ID of the failed target and the error code.

# Arguments

## `Rule = ::String` -- *Required*
The name of the rule.


## `Ids = [::String, ...]` -- *Required*
The IDs of the targets to remove from the rule.




# Returns

`RemoveTargetsResponse`

# Exceptions

`ResourceNotFoundException`, `ConcurrentModificationException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemoveTargets)
"""
@inline remove_targets(aws::AWSConfig=default_aws_config(); args...) = remove_targets(aws, args)

@inline remove_targets(aws::AWSConfig, args) = AWSCore.Services.events(aws, "RemoveTargets", args)

@inline remove_targets(args) = remove_targets(default_aws_config(), args)


"""
    using AWSSDK.CloudWatchEvents.test_event_pattern
    test_event_pattern([::AWSConfig], arguments::Dict)
    test_event_pattern([::AWSConfig]; EventPattern=, Event=)

    using AWSCore.Services.events
    events([::AWSConfig], "TestEventPattern", arguments::Dict)
    events([::AWSConfig], "TestEventPattern", EventPattern=, Event=)

# TestEventPattern Operation

Tests whether the specified event pattern matches the provided event.

Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match.

# Arguments

## `EventPattern = ::String` -- *Required*
The event pattern. For more information, see [Events and Event Patterns](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html) in the *Amazon CloudWatch Events User Guide*.


## `Event = ::String` -- *Required*
The event, in JSON format, to test against the event pattern.




# Returns

`TestEventPatternResponse`

# Exceptions

`InvalidEventPatternException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/TestEventPattern)
"""
@inline test_event_pattern(aws::AWSConfig=default_aws_config(); args...) = test_event_pattern(aws, args)

@inline test_event_pattern(aws::AWSConfig, args) = AWSCore.Services.events(aws, "TestEventPattern", args)

@inline test_event_pattern(args) = test_event_pattern(default_aws_config(), args)




end # module CloudWatchEvents


#==============================================================================#
# End of file
#==============================================================================#
