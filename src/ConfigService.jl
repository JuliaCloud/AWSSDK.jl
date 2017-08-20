#==============================================================================#
# ConfigService.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/config-2014-11-12.normal.json
#==============================================================================#

__precompile__()

module ConfigService

using AWSCore


"""
    using AWSSDK.ConfigService.delete_config_rule
    delete_config_rule([::AWSConfig], arguments::Dict)
    delete_config_rule([::AWSConfig]; ConfigRuleName=)

    using AWSCore.Services.config
    config([::AWSConfig], "DeleteConfigRule", arguments::Dict)
    config([::AWSConfig], "DeleteConfigRule", ConfigRuleName=)

# DeleteConfigRule Operation

Deletes the specified AWS Config rule and all of its evaluation results.

AWS Config sets the state of a rule to `DELETING` until the deletion is complete. You cannot update a rule while it is in this state. If you make a `PutConfigRule` or `DeleteConfigRule` request for the rule, you will receive a `ResourceInUseException`.

You can check the state of a rule by using the `DescribeConfigRules` request.

# Arguments

## `ConfigRuleName = ::String` -- *Required*
The name of the AWS Config rule that you want to delete.




# Exceptions

`NoSuchConfigRuleException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteConfigRule)
"""

@inline delete_config_rule(aws::AWSConfig=default_aws_config(); args...) = delete_config_rule(aws, args)

@inline delete_config_rule(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DeleteConfigRule", args)

@inline delete_config_rule(args) = delete_config_rule(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.delete_configuration_recorder
    delete_configuration_recorder([::AWSConfig], arguments::Dict)
    delete_configuration_recorder([::AWSConfig]; ConfigurationRecorderName=)

    using AWSCore.Services.config
    config([::AWSConfig], "DeleteConfigurationRecorder", arguments::Dict)
    config([::AWSConfig], "DeleteConfigurationRecorder", ConfigurationRecorderName=)

# DeleteConfigurationRecorder Operation

Deletes the configuration recorder.

After the configuration recorder is deleted, AWS Config will not record resource configuration changes until you create a new configuration recorder.

This action does not delete the configuration information that was previously recorded. You will be able to access the previously recorded information by using the `GetResourceConfigHistory` action, but you will not be able to access this information in the AWS Config console until you create a new configuration recorder.

# Arguments

## `ConfigurationRecorderName = ::String` -- *Required*
The name of the configuration recorder to be deleted. You can retrieve the name of your configuration recorder by using the `DescribeConfigurationRecorders` action.




# Exceptions

`NoSuchConfigurationRecorderException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteConfigurationRecorder)
"""

@inline delete_configuration_recorder(aws::AWSConfig=default_aws_config(); args...) = delete_configuration_recorder(aws, args)

@inline delete_configuration_recorder(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DeleteConfigurationRecorder", args)

@inline delete_configuration_recorder(args) = delete_configuration_recorder(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.delete_delivery_channel
    delete_delivery_channel([::AWSConfig], arguments::Dict)
    delete_delivery_channel([::AWSConfig]; DeliveryChannelName=)

    using AWSCore.Services.config
    config([::AWSConfig], "DeleteDeliveryChannel", arguments::Dict)
    config([::AWSConfig], "DeleteDeliveryChannel", DeliveryChannelName=)

# DeleteDeliveryChannel Operation

Deletes the delivery channel.

Before you can delete the delivery channel, you must stop the configuration recorder by using the [StopConfigurationRecorder](@ref) action.

# Arguments

## `DeliveryChannelName = ::String` -- *Required*
The name of the delivery channel to delete.




# Exceptions

`NoSuchDeliveryChannelException` or `LastDeliveryChannelDeleteFailedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteDeliveryChannel)
"""

@inline delete_delivery_channel(aws::AWSConfig=default_aws_config(); args...) = delete_delivery_channel(aws, args)

@inline delete_delivery_channel(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DeleteDeliveryChannel", args)

@inline delete_delivery_channel(args) = delete_delivery_channel(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.delete_evaluation_results
    delete_evaluation_results([::AWSConfig], arguments::Dict)
    delete_evaluation_results([::AWSConfig]; ConfigRuleName=)

    using AWSCore.Services.config
    config([::AWSConfig], "DeleteEvaluationResults", arguments::Dict)
    config([::AWSConfig], "DeleteEvaluationResults", ConfigRuleName=)

# DeleteEvaluationResults Operation

Deletes the evaluation results for the specified Config rule. You can specify one Config rule per request. After you delete the evaluation results, you can call the [StartConfigRulesEvaluation](@ref) API to start evaluating your AWS resources against the rule.

# Arguments

## `ConfigRuleName = ::String` -- *Required*
The name of the Config rule for which you want to delete the evaluation results.




# Returns

`DeleteEvaluationResultsResponse`

# Exceptions

`NoSuchConfigRuleException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeleteEvaluationResults)
"""

@inline delete_evaluation_results(aws::AWSConfig=default_aws_config(); args...) = delete_evaluation_results(aws, args)

@inline delete_evaluation_results(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DeleteEvaluationResults", args)

@inline delete_evaluation_results(args) = delete_evaluation_results(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.deliver_config_snapshot
    deliver_config_snapshot([::AWSConfig], arguments::Dict)
    deliver_config_snapshot([::AWSConfig]; deliveryChannelName=)

    using AWSCore.Services.config
    config([::AWSConfig], "DeliverConfigSnapshot", arguments::Dict)
    config([::AWSConfig], "DeliverConfigSnapshot", deliveryChannelName=)

# DeliverConfigSnapshot Operation

Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, AWS Config sends following notifications using an Amazon SNS topic that you have specified.

*   Notification of starting the delivery.

*   Notification of delivery completed, if the delivery was successfully completed.

*   Notification of delivery failure, if the delivery failed to complete.

# Arguments

## `deliveryChannelName = ::String` -- *Required*
The name of the delivery channel through which the snapshot is delivered.




# Returns

`DeliverConfigSnapshotResponse`

# Exceptions

`NoSuchDeliveryChannelException`, `NoAvailableConfigurationRecorderException` or `NoRunningConfigurationRecorderException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DeliverConfigSnapshot)
"""

@inline deliver_config_snapshot(aws::AWSConfig=default_aws_config(); args...) = deliver_config_snapshot(aws, args)

@inline deliver_config_snapshot(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DeliverConfigSnapshot", args)

@inline deliver_config_snapshot(args) = deliver_config_snapshot(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.describe_compliance_by_config_rule
    describe_compliance_by_config_rule([::AWSConfig], arguments::Dict)
    describe_compliance_by_config_rule([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "DescribeComplianceByConfigRule", arguments::Dict)
    config([::AWSConfig], "DescribeComplianceByConfigRule", <keyword arguments>)

# DescribeComplianceByConfigRule Operation

Indicates whether the specified AWS Config rules are compliant. If a rule is noncompliant, this action returns the number of AWS resources that do not comply with the rule.

A rule is compliant if all of the evaluated resources comply with it, and it is noncompliant if any of these resources do not comply.

If AWS Config has no current evaluation results for the rule, it returns `INSUFFICIENT_DATA`. This result might indicate one of the following conditions:

*   AWS Config has never invoked an evaluation for the rule. To check whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get the `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.

*   The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the `config:PutEvaluations` permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the `config:PutEvaluations` permission.

*   The rule's AWS Lambda function has returned `NOT_APPLICABLE` for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.

# Arguments

## `ConfigRuleNames = [::String, ...]`
Specify one or more AWS Config rule names to filter the results by rule.


## `ComplianceTypes = ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE" or "INSUFFICIENT_DATA", ...]`
Filters the results by compliance.

The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and `INSUFFICIENT_DATA`.


## `NextToken = ::String`
The `NextToken` string returned on a previous page that you use to get the next page of results in a paginated response.




# Returns

`DescribeComplianceByConfigRuleResponse`

# Exceptions

`InvalidParameterValueException`, `NoSuchConfigRuleException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeComplianceByConfigRule)
"""

@inline describe_compliance_by_config_rule(aws::AWSConfig=default_aws_config(); args...) = describe_compliance_by_config_rule(aws, args)

@inline describe_compliance_by_config_rule(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DescribeComplianceByConfigRule", args)

@inline describe_compliance_by_config_rule(args) = describe_compliance_by_config_rule(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.describe_compliance_by_resource
    describe_compliance_by_resource([::AWSConfig], arguments::Dict)
    describe_compliance_by_resource([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "DescribeComplianceByResource", arguments::Dict)
    config([::AWSConfig], "DescribeComplianceByResource", <keyword arguments>)

# DescribeComplianceByResource Operation

Indicates whether the specified AWS resources are compliant. If a resource is noncompliant, this action returns the number of AWS Config rules that the resource does not comply with.

A resource is compliant if it complies with all the AWS Config rules that evaluate it. It is noncompliant if it does not comply with one or more of these rules.

If AWS Config has no current evaluation results for the resource, it returns `INSUFFICIENT_DATA`. This result might indicate one of the following conditions about the rules that evaluate the resource:

*   AWS Config has never invoked an evaluation for the rule. To check whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get the `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.

*   The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the `config:PutEvaluations` permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the `config:PutEvaluations` permission.

*   The rule's AWS Lambda function has returned `NOT_APPLICABLE` for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.

# Arguments

## `ResourceType = ::String`
The types of AWS resources for which you want compliance information; for example, `AWS::EC2::Instance`. For this action, you can specify that the resource type is an AWS account by specifying `AWS::::Account`.


## `ResourceId = ::String`
The ID of the AWS resource for which you want compliance information. You can specify only one resource ID. If you specify a resource ID, you must also specify a type for `ResourceType`.


## `ComplianceTypes = ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE" or "INSUFFICIENT_DATA", ...]`
Filters the results by compliance.

The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and `INSUFFICIENT_DATA`.


## `Limit = ::Int`
The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.


## `NextToken = ::String`
The `NextToken` string returned on a previous page that you use to get the next page of results in a paginated response.




# Returns

`DescribeComplianceByResourceResponse`

# Exceptions

`InvalidParameterValueException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeComplianceByResource)
"""

@inline describe_compliance_by_resource(aws::AWSConfig=default_aws_config(); args...) = describe_compliance_by_resource(aws, args)

@inline describe_compliance_by_resource(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DescribeComplianceByResource", args)

@inline describe_compliance_by_resource(args) = describe_compliance_by_resource(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.describe_config_rule_evaluation_status
    describe_config_rule_evaluation_status([::AWSConfig], arguments::Dict)
    describe_config_rule_evaluation_status([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "DescribeConfigRuleEvaluationStatus", arguments::Dict)
    config([::AWSConfig], "DescribeConfigRuleEvaluationStatus", <keyword arguments>)

# DescribeConfigRuleEvaluationStatus Operation

Returns status information for each of your AWS managed Config rules. The status includes information such as the last time AWS Config invoked the rule, the last time AWS Config failed to invoke the rule, and the related error for the last failure.

# Arguments

## `ConfigRuleNames = [::String, ...]`
The name of the AWS managed Config rules for which you want status information. If you do not specify any names, AWS Config returns status information for all AWS managed Config rules that you use.


## `NextToken = ::String`
The `NextToken` string returned on a previous page that you use to get the next page of results in a paginated response.


## `Limit = ::Int`
The number of rule evaluation results that you want returned.

This parameter is required if the rule limit for your account is more than the default of 50 rules.

For more information about requesting a rule limit increase, see [AWS Config Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config) in the *AWS General Reference Guide*.




# Returns

`DescribeConfigRuleEvaluationStatusResponse`

# Exceptions

`NoSuchConfigRuleException`, `InvalidParameterValueException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigRuleEvaluationStatus)
"""

@inline describe_config_rule_evaluation_status(aws::AWSConfig=default_aws_config(); args...) = describe_config_rule_evaluation_status(aws, args)

@inline describe_config_rule_evaluation_status(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DescribeConfigRuleEvaluationStatus", args)

@inline describe_config_rule_evaluation_status(args) = describe_config_rule_evaluation_status(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.describe_config_rules
    describe_config_rules([::AWSConfig], arguments::Dict)
    describe_config_rules([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "DescribeConfigRules", arguments::Dict)
    config([::AWSConfig], "DescribeConfigRules", <keyword arguments>)

# DescribeConfigRules Operation

Returns details about your AWS Config rules.

# Arguments

## `ConfigRuleNames = [::String, ...]`
The names of the AWS Config rules for which you want details. If you do not specify any names, AWS Config returns details for all your rules.


## `NextToken = ::String`
The `NextToken` string returned on a previous page that you use to get the next page of results in a paginated response.




# Returns

`DescribeConfigRulesResponse`

# Exceptions

`NoSuchConfigRuleException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigRules)
"""

@inline describe_config_rules(aws::AWSConfig=default_aws_config(); args...) = describe_config_rules(aws, args)

@inline describe_config_rules(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DescribeConfigRules", args)

@inline describe_config_rules(args) = describe_config_rules(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.describe_configuration_recorder_status
    describe_configuration_recorder_status([::AWSConfig], arguments::Dict)
    describe_configuration_recorder_status([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "DescribeConfigurationRecorderStatus", arguments::Dict)
    config([::AWSConfig], "DescribeConfigurationRecorderStatus", <keyword arguments>)

# DescribeConfigurationRecorderStatus Operation

Returns the current status of the specified configuration recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorder associated with the account.

**Note**
> Currently, you can specify only one configuration recorder per region in your account.

# Arguments

## `ConfigurationRecorderNames = [::String, ...]`
The name(s) of the configuration recorder. If the name is not specified, the action returns the current status of all the configuration recorders associated with the account.




# Returns

`DescribeConfigurationRecorderStatusResponse`

# Exceptions

`NoSuchConfigurationRecorderException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationRecorderStatus)
"""

@inline describe_configuration_recorder_status(aws::AWSConfig=default_aws_config(); args...) = describe_configuration_recorder_status(aws, args)

@inline describe_configuration_recorder_status(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DescribeConfigurationRecorderStatus", args)

@inline describe_configuration_recorder_status(args) = describe_configuration_recorder_status(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.describe_configuration_recorders
    describe_configuration_recorders([::AWSConfig], arguments::Dict)
    describe_configuration_recorders([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "DescribeConfigurationRecorders", arguments::Dict)
    config([::AWSConfig], "DescribeConfigurationRecorders", <keyword arguments>)

# DescribeConfigurationRecorders Operation

Returns the details for the specified configuration recorders. If the configuration recorder is not specified, this action returns the details for all configuration recorders associated with the account.

**Note**
> Currently, you can specify only one configuration recorder per region in your account.

# Arguments

## `ConfigurationRecorderNames = [::String, ...]`
A list of configuration recorder names.




# Returns

`DescribeConfigurationRecordersResponse`

# Exceptions

`NoSuchConfigurationRecorderException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeConfigurationRecorders)
"""

@inline describe_configuration_recorders(aws::AWSConfig=default_aws_config(); args...) = describe_configuration_recorders(aws, args)

@inline describe_configuration_recorders(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DescribeConfigurationRecorders", args)

@inline describe_configuration_recorders(args) = describe_configuration_recorders(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.describe_delivery_channel_status
    describe_delivery_channel_status([::AWSConfig], arguments::Dict)
    describe_delivery_channel_status([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "DescribeDeliveryChannelStatus", arguments::Dict)
    config([::AWSConfig], "DescribeDeliveryChannelStatus", <keyword arguments>)

# DescribeDeliveryChannelStatus Operation

Returns the current status of the specified delivery channel. If a delivery channel is not specified, this action returns the current status of all delivery channels associated with the account.

**Note**
> Currently, you can specify only one delivery channel per region in your account.

# Arguments

## `DeliveryChannelNames = [::String, ...]`
A list of delivery channel names.




# Returns

`DescribeDeliveryChannelStatusResponse`

# Exceptions

`NoSuchDeliveryChannelException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeDeliveryChannelStatus)
"""

@inline describe_delivery_channel_status(aws::AWSConfig=default_aws_config(); args...) = describe_delivery_channel_status(aws, args)

@inline describe_delivery_channel_status(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DescribeDeliveryChannelStatus", args)

@inline describe_delivery_channel_status(args) = describe_delivery_channel_status(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.describe_delivery_channels
    describe_delivery_channels([::AWSConfig], arguments::Dict)
    describe_delivery_channels([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "DescribeDeliveryChannels", arguments::Dict)
    config([::AWSConfig], "DescribeDeliveryChannels", <keyword arguments>)

# DescribeDeliveryChannels Operation

Returns details about the specified delivery channel. If a delivery channel is not specified, this action returns the details of all delivery channels associated with the account.

**Note**
> Currently, you can specify only one delivery channel per region in your account.

# Arguments

## `DeliveryChannelNames = [::String, ...]`
A list of delivery channel names.




# Returns

`DescribeDeliveryChannelsResponse`

# Exceptions

`NoSuchDeliveryChannelException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/DescribeDeliveryChannels)
"""

@inline describe_delivery_channels(aws::AWSConfig=default_aws_config(); args...) = describe_delivery_channels(aws, args)

@inline describe_delivery_channels(aws::AWSConfig, args) = AWSCore.Services.config(aws, "DescribeDeliveryChannels", args)

@inline describe_delivery_channels(args) = describe_delivery_channels(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.get_compliance_details_by_config_rule
    get_compliance_details_by_config_rule([::AWSConfig], arguments::Dict)
    get_compliance_details_by_config_rule([::AWSConfig]; ConfigRuleName=, <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "GetComplianceDetailsByConfigRule", arguments::Dict)
    config([::AWSConfig], "GetComplianceDetailsByConfigRule", ConfigRuleName=, <keyword arguments>)

# GetComplianceDetailsByConfigRule Operation

Returns the evaluation results for the specified AWS Config rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.

# Arguments

## `ConfigRuleName = ::String` -- *Required*
The name of the AWS Config rule for which you want compliance information.


## `ComplianceTypes = ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE" or "INSUFFICIENT_DATA", ...]`
Filters the results by compliance.

The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE`.


## `Limit = ::Int`
The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.


## `NextToken = ::String`
The `NextToken` string returned on a previous page that you use to get the next page of results in a paginated response.




# Returns

`GetComplianceDetailsByConfigRuleResponse`

# Exceptions

`InvalidParameterValueException`, `InvalidNextTokenException` or `NoSuchConfigRuleException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceDetailsByConfigRule)
"""

@inline get_compliance_details_by_config_rule(aws::AWSConfig=default_aws_config(); args...) = get_compliance_details_by_config_rule(aws, args)

@inline get_compliance_details_by_config_rule(aws::AWSConfig, args) = AWSCore.Services.config(aws, "GetComplianceDetailsByConfigRule", args)

@inline get_compliance_details_by_config_rule(args) = get_compliance_details_by_config_rule(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.get_compliance_details_by_resource
    get_compliance_details_by_resource([::AWSConfig], arguments::Dict)
    get_compliance_details_by_resource([::AWSConfig]; ResourceType=, ResourceId=, <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "GetComplianceDetailsByResource", arguments::Dict)
    config([::AWSConfig], "GetComplianceDetailsByResource", ResourceType=, ResourceId=, <keyword arguments>)

# GetComplianceDetailsByResource Operation

Returns the evaluation results for the specified AWS resource. The results indicate which AWS Config rules were used to evaluate the resource, when each rule was last used, and whether the resource complies with each rule.

# Arguments

## `ResourceType = ::String` -- *Required*
The type of the AWS resource for which you want compliance information.


## `ResourceId = ::String` -- *Required*
The ID of the AWS resource for which you want compliance information.


## `ComplianceTypes = ["COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE" or "INSUFFICIENT_DATA", ...]`
Filters the results by compliance.

The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE`.


## `NextToken = ::String`
The `NextToken` string returned on a previous page that you use to get the next page of results in a paginated response.




# Returns

`GetComplianceDetailsByResourceResponse`

# Exceptions

`InvalidParameterValueException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceDetailsByResource)
"""

@inline get_compliance_details_by_resource(aws::AWSConfig=default_aws_config(); args...) = get_compliance_details_by_resource(aws, args)

@inline get_compliance_details_by_resource(aws::AWSConfig, args) = AWSCore.Services.config(aws, "GetComplianceDetailsByResource", args)

@inline get_compliance_details_by_resource(args) = get_compliance_details_by_resource(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.get_compliance_summary_by_config_rule
    get_compliance_summary_by_config_rule([::AWSConfig])
    

    using AWSCore.Services.config
    config([::AWSConfig], "GetComplianceSummaryByConfigRule",)
    

# GetComplianceSummaryByConfigRule Operation

Returns the number of AWS Config rules that are compliant and noncompliant, up to a maximum of 25 for each.

# Returns

`GetComplianceSummaryByConfigRuleResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceSummaryByConfigRule)
"""

@inline get_compliance_summary_by_config_rule(aws::AWSConfig=default_aws_config(); args...) = get_compliance_summary_by_config_rule(aws, args)

@inline get_compliance_summary_by_config_rule(aws::AWSConfig, args) = AWSCore.Services.config(aws, "GetComplianceSummaryByConfigRule", args)

@inline get_compliance_summary_by_config_rule(args) = get_compliance_summary_by_config_rule(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.get_compliance_summary_by_resource_type
    get_compliance_summary_by_resource_type([::AWSConfig], arguments::Dict)
    get_compliance_summary_by_resource_type([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "GetComplianceSummaryByResourceType", arguments::Dict)
    config([::AWSConfig], "GetComplianceSummaryByResourceType", <keyword arguments>)

# GetComplianceSummaryByResourceType Operation

Returns the number of resources that are compliant and the number that are noncompliant. You can specify one or more resource types to get these numbers for each resource type. The maximum number returned is 100.

# Arguments

## `ResourceTypes = [::String, ...]`
Specify one or more resource types to get the number of resources that are compliant and the number that are noncompliant for each resource type.

For this request, you can specify an AWS resource type such as `AWS::EC2::Instance`, and you can specify that the resource type is an AWS account by specifying `AWS::::Account`.




# Returns

`GetComplianceSummaryByResourceTypeResponse`

# Exceptions

`InvalidParameterValueException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetComplianceSummaryByResourceType)
"""

@inline get_compliance_summary_by_resource_type(aws::AWSConfig=default_aws_config(); args...) = get_compliance_summary_by_resource_type(aws, args)

@inline get_compliance_summary_by_resource_type(aws::AWSConfig, args) = AWSCore.Services.config(aws, "GetComplianceSummaryByResourceType", args)

@inline get_compliance_summary_by_resource_type(args) = get_compliance_summary_by_resource_type(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.get_discovered_resource_counts
    get_discovered_resource_counts([::AWSConfig], arguments::Dict)
    get_discovered_resource_counts([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "GetDiscoveredResourceCounts", arguments::Dict)
    config([::AWSConfig], "GetDiscoveredResourceCounts", <keyword arguments>)

# GetDiscoveredResourceCounts Operation

Returns the resource types, the number of each resource type, and the total number of resources that AWS Config is recording in this region for your AWS account.

**Example**

1.  AWS Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets.

2.  You make a call to the `GetDiscoveredResourceCounts` action and specify that you want all resource types.

3.  AWS Config returns the following:

    *   The resource types (EC2 instances, IAM users, and S3 buckets)

    *   The number of each resource type (25, 20, and 15)

    *   The total number of all resources (60)

The response is paginated. By default, AWS Config lists 100 [ResourceCount](@ref) objects on each page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.

**Note**
> If you make a call to the [GetDiscoveredResourceCounts](@ref) action, you may not immediately receive resource counts in the following situations:

*   You are a new AWS Config customer

*   You just enabled resource recording

It may take a few minutes for AWS Config to record and count your resources. Wait a few minutes and then retry the [GetDiscoveredResourceCounts](@ref) action.

# Arguments

## `resourceTypes = [::String, ...]`
The comma-separated list that specifies the resource types that you want the AWS Config to return. For example, (`"AWS::EC2::Instance"`, `"AWS::IAM::User"`).

If a value for `resourceTypes` is not specified, AWS Config returns all resource types that AWS Config is recording in the region for your account.

**Note**
> If the configuration recorder is turned off, AWS Config returns an empty list of [ResourceCount](@ref) objects. If the configuration recorder is not recording a specific resource type (for example, S3 buckets), that resource type is not returned in the list of [ResourceCount](@ref) objects.


## `limit = ::Int`
The maximum number of [ResourceCount](@ref) objects returned on each page. The default is 100. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.


## `nextToken = ::String`
The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.




# Returns

`GetDiscoveredResourceCountsResponse`

# Exceptions

`ValidationException`, `InvalidLimitException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetDiscoveredResourceCounts)
"""

@inline get_discovered_resource_counts(aws::AWSConfig=default_aws_config(); args...) = get_discovered_resource_counts(aws, args)

@inline get_discovered_resource_counts(aws::AWSConfig, args) = AWSCore.Services.config(aws, "GetDiscoveredResourceCounts", args)

@inline get_discovered_resource_counts(args) = get_discovered_resource_counts(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.get_resource_config_history
    get_resource_config_history([::AWSConfig], arguments::Dict)
    get_resource_config_history([::AWSConfig]; resourceType=, resourceId=, <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "GetResourceConfigHistory", arguments::Dict)
    config([::AWSConfig], "GetResourceConfigHistory", resourceType=, resourceId=, <keyword arguments>)

# GetResourceConfigHistory Operation

Returns a list of configuration items for the specified resource. The list contains details about each state of the resource during the specified time interval.

The response is paginated. By default, AWS Config returns a limit of 10 configuration items per page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.

**Note**
> Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified `limit`. In such cases, you can make another call, using the `nextToken`.

# Arguments

## `resourceType = "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm" or "AWS::CloudFormation::Stack"` -- *Required*
The resource type.


## `resourceId = ::String` -- *Required*
The ID of the resource (for example., `sg-xxxxxx`).


## `laterTime = timestamp`
The time stamp that indicates a later time. If not specified, current time is taken.


## `earlierTime = timestamp`
The time stamp that indicates an earlier time. If not specified, the action returns paginated results that contain configuration items that start from when the first configuration item was recorded.


## `chronologicalOrder = "Reverse" or "Forward"`
The chronological order for configuration items listed. By default the results are listed in reverse chronological order.


## `limit = ::Int`
The maximum number of configuration items returned on each page. The default is 10. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.


## `nextToken = ::String`
The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.




# Returns

`GetResourceConfigHistoryResponse`

# Exceptions

`ValidationException`, `InvalidTimeRangeException`, `InvalidLimitException`, `InvalidNextTokenException`, `NoAvailableConfigurationRecorderException` or `ResourceNotDiscoveredException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/GetResourceConfigHistory)
"""

@inline get_resource_config_history(aws::AWSConfig=default_aws_config(); args...) = get_resource_config_history(aws, args)

@inline get_resource_config_history(aws::AWSConfig, args) = AWSCore.Services.config(aws, "GetResourceConfigHistory", args)

@inline get_resource_config_history(args) = get_resource_config_history(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.list_discovered_resources
    list_discovered_resources([::AWSConfig], arguments::Dict)
    list_discovered_resources([::AWSConfig]; resourceType=, <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "ListDiscoveredResources", arguments::Dict)
    config([::AWSConfig], "ListDiscoveredResources", resourceType=, <keyword arguments>)

# ListDiscoveredResources Operation

Accepts a resource type and returns a list of resource identifiers for the resources of that type. A resource identifier includes the resource type, ID, and (if available) the custom resource name. The results consist of resources that AWS Config has discovered, including those that AWS Config is not currently recording. You can narrow the results to include only resources that have specific resource IDs or a resource name.

**Note**
> You can specify either resource IDs or a resource name but not both in the same request.

The response is paginated. By default, AWS Config lists 100 resource identifiers on each page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.

# Arguments

## `resourceType = "AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm" or "AWS::CloudFormation::Stack"` -- *Required*
The type of resources that you want AWS Config to list in the response.


## `resourceIds = [::String, ...]`
The IDs of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.


## `resourceName = ::String`
The custom name of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.


## `limit = ::Int`
The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a limit greater than 100. If you specify 0, AWS Config uses the default.


## `includeDeletedResources = ::Bool`
Specifies whether AWS Config includes deleted resources in the results. By default, deleted resources are not included.


## `nextToken = ::String`
The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.




# Returns

`ListDiscoveredResourcesResponse`

# Exceptions

`ValidationException`, `InvalidLimitException`, `InvalidNextTokenException` or `NoAvailableConfigurationRecorderException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/ListDiscoveredResources)
"""

@inline list_discovered_resources(aws::AWSConfig=default_aws_config(); args...) = list_discovered_resources(aws, args)

@inline list_discovered_resources(aws::AWSConfig, args) = AWSCore.Services.config(aws, "ListDiscoveredResources", args)

@inline list_discovered_resources(args) = list_discovered_resources(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.put_config_rule
    put_config_rule([::AWSConfig], arguments::Dict)
    put_config_rule([::AWSConfig]; ConfigRule=)

    using AWSCore.Services.config
    config([::AWSConfig], "PutConfigRule", arguments::Dict)
    config([::AWSConfig], "PutConfigRule", ConfigRule=)

# PutConfigRule Operation

Adds or updates an AWS Config rule for evaluating whether your AWS resources comply with your desired configurations.

You can use this action for custom Config rules and AWS managed Config rules. A custom Config rule is a rule that you develop and maintain. An AWS managed Config rule is a customizable, predefined rule that AWS Config provides.

If you are adding a new custom Config rule, you must first create the AWS Lambda function that the rule invokes to evaluate your resources. When you use the `PutConfigRule` action to add the rule to AWS Config, you must specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function. Specify the ARN for the `SourceIdentifier` key. This key is part of the `Source` object, which is part of the `ConfigRule` object.

If you are adding an AWS managed Config rule, specify the rule's identifier for the `SourceIdentifier` key. To reference AWS managed Config rule identifiers, see [About AWS Managed Config Rules](http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html).

For any new rule that you add, specify the `ConfigRuleName` in the `ConfigRule` object. Do not specify the `ConfigRuleArn` or the `ConfigRuleId`. These values are generated by AWS Config for new rules.

If you are updating a rule that you added previously, you can specify the rule by `ConfigRuleName`, `ConfigRuleId`, or `ConfigRuleArn` in the `ConfigRule` data type that you use in this request.

The maximum number of rules that AWS Config supports is 50.

For more information about requesting a rule limit increase, see [AWS Config Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config) in the *AWS General Reference Guide*.

For more information about developing and using AWS Config rules, see [Evaluating AWS Resource Configurations with AWS Config](http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the *AWS Config Developer Guide*.

# Arguments

## `ConfigRule = [ ... ]` -- *Required*
The rule that you want to add to your account.
```
 ConfigRule = [
        "ConfigRuleName" =>  ::String,
        "ConfigRuleArn" =>  ::String,
        "ConfigRuleId" =>  ::String,
        "Description" =>  ::String,
        "Scope" =>  [
            "ComplianceResourceTypes" =>  [::String, ...],
            "TagKey" =>  ::String,
            "TagValue" =>  ::String,
            "ComplianceResourceId" =>  ::String
        ],
        "Source" => <required> [
            "Owner" => <required> "CUSTOM_LAMBDA" or "AWS",
            "SourceIdentifier" => <required> ::String,
            "SourceDetails" =>  [[
                "EventSource" =>  "aws.config",
                "MessageType" =>  "ConfigurationItemChangeNotification", "ConfigurationSnapshotDeliveryCompleted", "ScheduledNotification" or "OversizedConfigurationItemChangeNotification",
                "MaximumExecutionFrequency" =>  "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours" or "TwentyFour_Hours"
            ], ...]
        ],
        "InputParameters" =>  ::String,
        "MaximumExecutionFrequency" =>  "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours" or "TwentyFour_Hours",
        "ConfigRuleState" =>  "ACTIVE", "DELETING", "DELETING_RESULTS" or "EVALUATING"
    ]
```



# Exceptions

`InvalidParameterValueException`, `MaxNumberOfConfigRulesExceededException`, `ResourceInUseException`, `InsufficientPermissionsException` or `NoAvailableConfigurationRecorderException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConfigRule)
"""

@inline put_config_rule(aws::AWSConfig=default_aws_config(); args...) = put_config_rule(aws, args)

@inline put_config_rule(aws::AWSConfig, args) = AWSCore.Services.config(aws, "PutConfigRule", args)

@inline put_config_rule(args) = put_config_rule(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.put_configuration_recorder
    put_configuration_recorder([::AWSConfig], arguments::Dict)
    put_configuration_recorder([::AWSConfig]; ConfigurationRecorder=)

    using AWSCore.Services.config
    config([::AWSConfig], "PutConfigurationRecorder", arguments::Dict)
    config([::AWSConfig], "PutConfigurationRecorder", ConfigurationRecorder=)

# PutConfigurationRecorder Operation

Creates a new configuration recorder to record the selected resource configurations.

You can use this action to change the role `roleARN` and/or the `recordingGroup` of an existing recorder. To change the role, call the action on the existing configuration recorder and specify a role.

**Note**
> Currently, you can specify only one configuration recorder per region in your account.

If `ConfigurationRecorder` does not have the **recordingGroup** parameter specified, the default is to record all supported resource types.

# Arguments

## `ConfigurationRecorder = [ ... ]` -- *Required*
The configuration recorder object that records each configuration change made to the resources.
```
 ConfigurationRecorder = [
        "name" =>  ::String,
        "roleARN" =>  ::String,
        "recordingGroup" =>  [
            "allSupported" =>  ::Bool,
            "includeGlobalResourceTypes" =>  ::Bool,
            "resourceTypes" =>  ["AWS::EC2::CustomerGateway", "AWS::EC2::EIP", "AWS::EC2::Host", "AWS::EC2::Instance", "AWS::EC2::InternetGateway", "AWS::EC2::NetworkAcl", "AWS::EC2::NetworkInterface", "AWS::EC2::RouteTable", "AWS::EC2::SecurityGroup", "AWS::EC2::Subnet", "AWS::CloudTrail::Trail", "AWS::EC2::Volume", "AWS::EC2::VPC", "AWS::EC2::VPNConnection", "AWS::EC2::VPNGateway", "AWS::IAM::Group", "AWS::IAM::Policy", "AWS::IAM::Role", "AWS::IAM::User", "AWS::ACM::Certificate", "AWS::RDS::DBInstance", "AWS::RDS::DBSubnetGroup", "AWS::RDS::DBSecurityGroup", "AWS::RDS::DBSnapshot", "AWS::RDS::EventSubscription", "AWS::ElasticLoadBalancingV2::LoadBalancer", "AWS::S3::Bucket", "AWS::SSM::ManagedInstanceInventory", "AWS::Redshift::Cluster", "AWS::Redshift::ClusterSnapshot", "AWS::Redshift::ClusterParameterGroup", "AWS::Redshift::ClusterSecurityGroup", "AWS::Redshift::ClusterSubnetGroup", "AWS::Redshift::EventSubscription", "AWS::CloudWatch::Alarm" or "AWS::CloudFormation::Stack", ...]
        ]
    ]
```



# Exceptions

`MaxNumberOfConfigurationRecordersExceededException`, `InvalidConfigurationRecorderNameException`, `InvalidRoleException` or `InvalidRecordingGroupException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutConfigurationRecorder)
"""

@inline put_configuration_recorder(aws::AWSConfig=default_aws_config(); args...) = put_configuration_recorder(aws, args)

@inline put_configuration_recorder(aws::AWSConfig, args) = AWSCore.Services.config(aws, "PutConfigurationRecorder", args)

@inline put_configuration_recorder(args) = put_configuration_recorder(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.put_delivery_channel
    put_delivery_channel([::AWSConfig], arguments::Dict)
    put_delivery_channel([::AWSConfig]; DeliveryChannel=)

    using AWSCore.Services.config
    config([::AWSConfig], "PutDeliveryChannel", arguments::Dict)
    config([::AWSConfig], "PutDeliveryChannel", DeliveryChannel=)

# PutDeliveryChannel Operation

Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic.

Before you can create a delivery channel, you must create a configuration recorder.

You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed.

**Note**
> You can have only one delivery channel per region in your account.

# Arguments

## `DeliveryChannel = [ ... ]` -- *Required*
The configuration delivery channel object that delivers the configuration information to an Amazon S3 bucket, and to an Amazon SNS topic.
```
 DeliveryChannel = [
        "name" =>  ::String,
        "s3BucketName" =>  ::String,
        "s3KeyPrefix" =>  ::String,
        "snsTopicARN" =>  ::String,
        "configSnapshotDeliveryProperties" =>  ["deliveryFrequency" =>  "One_Hour", "Three_Hours", "Six_Hours", "Twelve_Hours" or "TwentyFour_Hours"]
    ]
```



# Exceptions

`MaxNumberOfDeliveryChannelsExceededException`, `NoAvailableConfigurationRecorderException`, `InvalidDeliveryChannelNameException`, `NoSuchBucketException`, `InvalidS3KeyPrefixException`, `InvalidSNSTopicARNException` or `InsufficientDeliveryPolicyException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutDeliveryChannel)
"""

@inline put_delivery_channel(aws::AWSConfig=default_aws_config(); args...) = put_delivery_channel(aws, args)

@inline put_delivery_channel(aws::AWSConfig, args) = AWSCore.Services.config(aws, "PutDeliveryChannel", args)

@inline put_delivery_channel(args) = put_delivery_channel(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.put_evaluations
    put_evaluations([::AWSConfig], arguments::Dict)
    put_evaluations([::AWSConfig]; ResultToken=, <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "PutEvaluations", arguments::Dict)
    config([::AWSConfig], "PutEvaluations", ResultToken=, <keyword arguments>)

# PutEvaluations Operation

Used by an AWS Lambda function to deliver evaluation results to AWS Config. This action is required in every AWS Lambda function that is invoked by an AWS Config rule.

# Arguments

## `Evaluations = [[ ... ], ...]`
The assessments that the AWS Lambda function performs. Each evaluation identifies an AWS resource and indicates whether it complies with the AWS Config rule that invokes the AWS Lambda function.
```
 Evaluations = [[
        "ComplianceResourceType" => <required> ::String,
        "ComplianceResourceId" => <required> ::String,
        "ComplianceType" => <required> "COMPLIANT", "NON_COMPLIANT", "NOT_APPLICABLE" or "INSUFFICIENT_DATA",
        "Annotation" =>  ::String,
        "OrderingTimestamp" => <required> timestamp
    ], ...]
```

## `ResultToken = ::String` -- *Required*
An encrypted token that associates an evaluation with an AWS Config rule. Identifies the rule and the event that triggered the evaluation


## `TestMode = ::Bool`
Use this parameter to specify a test run for `PutEvaluations`. You can verify whether your AWS Lambda function will deliver evaluation results to AWS Config. No updates occur to your existing evaluations, and evaluation results are not sent to AWS Config.

**Note**
> When `TestMode` is `true`, `PutEvaluations` doesn't require a valid value for the `ResultToken` parameter, but the value cannot be null.




# Returns

`PutEvaluationsResponse`

# Exceptions

`InvalidParameterValueException`, `InvalidResultTokenException` or `NoSuchConfigRuleException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/PutEvaluations)
"""

@inline put_evaluations(aws::AWSConfig=default_aws_config(); args...) = put_evaluations(aws, args)

@inline put_evaluations(aws::AWSConfig, args) = AWSCore.Services.config(aws, "PutEvaluations", args)

@inline put_evaluations(args) = put_evaluations(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.start_config_rules_evaluation
    start_config_rules_evaluation([::AWSConfig], arguments::Dict)
    start_config_rules_evaluation([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.config
    config([::AWSConfig], "StartConfigRulesEvaluation", arguments::Dict)
    config([::AWSConfig], "StartConfigRulesEvaluation", <keyword arguments>)

# StartConfigRulesEvaluation Operation

Runs an on-demand evaluation for the specified Config rules against the last known configuration state of the resources. Use `StartConfigRulesEvaluation` when you want to test a rule that you updated is working as expected. `StartConfigRulesEvaluation` does not re-record the latest configuration state for your resources; it re-runs an evaluation against the last known state of your resources.

You can specify up to 25 Config rules per request.

An existing `StartConfigRulesEvaluation` call must complete for the specified rules before you can call the API again. If you chose to have AWS Config stream to an Amazon SNS topic, you will receive a `ConfigRuleEvaluationStarted` notification when the evaluation starts.

**Note**
> You don't need to call the `StartConfigRulesEvaluation` API to run an evaluation for a new rule. When you create a new rule, AWS Config automatically evaluates your resources against the rule.

The `StartConfigRulesEvaluation` API is useful if you want to run on-demand evaluations, such as the following example:

1.  You have a custom rule that evaluates your IAM resources every 24 hours.

2.  You update your Lambda function to add additional conditions to your rule.

3.  Instead of waiting for the next periodic evaluation, you call the `StartConfigRulesEvaluation` API.

4.  AWS Config invokes your Lambda function and evaluates your IAM resources.

5.  Your custom rule will still run periodic evaluations every 24 hours.

# Arguments

## `ConfigRuleNames = [::String, ...]`
The list of names of Config rules that you want to run evaluations for.




# Returns

`StartConfigRulesEvaluationResponse`

# Exceptions

`NoSuchConfigRuleException`, `LimitExceededException`, `ResourceInUseException` or `InvalidParameterValueException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartConfigRulesEvaluation)
"""

@inline start_config_rules_evaluation(aws::AWSConfig=default_aws_config(); args...) = start_config_rules_evaluation(aws, args)

@inline start_config_rules_evaluation(aws::AWSConfig, args) = AWSCore.Services.config(aws, "StartConfigRulesEvaluation", args)

@inline start_config_rules_evaluation(args) = start_config_rules_evaluation(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.start_configuration_recorder
    start_configuration_recorder([::AWSConfig], arguments::Dict)
    start_configuration_recorder([::AWSConfig]; ConfigurationRecorderName=)

    using AWSCore.Services.config
    config([::AWSConfig], "StartConfigurationRecorder", arguments::Dict)
    config([::AWSConfig], "StartConfigurationRecorder", ConfigurationRecorderName=)

# StartConfigurationRecorder Operation

Starts recording configurations of the AWS resources you have selected to record in your AWS account.

You must have created at least one delivery channel to successfully start the configuration recorder.

# Arguments

## `ConfigurationRecorderName = ::String` -- *Required*
The name of the recorder object that records each configuration change made to the resources.




# Exceptions

`NoSuchConfigurationRecorderException` or `NoAvailableDeliveryChannelException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StartConfigurationRecorder)
"""

@inline start_configuration_recorder(aws::AWSConfig=default_aws_config(); args...) = start_configuration_recorder(aws, args)

@inline start_configuration_recorder(aws::AWSConfig, args) = AWSCore.Services.config(aws, "StartConfigurationRecorder", args)

@inline start_configuration_recorder(args) = start_configuration_recorder(default_aws_config(), args)


"""
    using AWSSDK.ConfigService.stop_configuration_recorder
    stop_configuration_recorder([::AWSConfig], arguments::Dict)
    stop_configuration_recorder([::AWSConfig]; ConfigurationRecorderName=)

    using AWSCore.Services.config
    config([::AWSConfig], "StopConfigurationRecorder", arguments::Dict)
    config([::AWSConfig], "StopConfigurationRecorder", ConfigurationRecorderName=)

# StopConfigurationRecorder Operation

Stops recording configurations of the AWS resources you have selected to record in your AWS account.

# Arguments

## `ConfigurationRecorderName = ::String` -- *Required*
The name of the recorder object that records each configuration change made to the resources.




# Exceptions

`NoSuchConfigurationRecorderException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/config-2014-11-12/StopConfigurationRecorder)
"""

@inline stop_configuration_recorder(aws::AWSConfig=default_aws_config(); args...) = stop_configuration_recorder(aws, args)

@inline stop_configuration_recorder(aws::AWSConfig, args) = AWSCore.Services.config(aws, "StopConfigurationRecorder", args)

@inline stop_configuration_recorder(args) = stop_configuration_recorder(default_aws_config(), args)




end # module ConfigService


#==============================================================================#
# End of file
#==============================================================================#
