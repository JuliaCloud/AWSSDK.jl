#==============================================================================#
# FMS.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/fms-2018-01-01.normal.json
#==============================================================================#

__precompile__()

module FMS

using AWSCore


"""
    using AWSSDK.FMS.associate_admin_account
    associate_admin_account([::AWSConfig], arguments::Dict)
    associate_admin_account([::AWSConfig]; AdminAccount=)

    using AWSCore.Services.fms
    fms([::AWSConfig], "AssociateAdminAccount", arguments::Dict)
    fms([::AWSConfig], "AssociateAdminAccount", AdminAccount=)

# AssociateAdminAccount Operation

Sets the AWS Firewall Manager administrator account. AWS Firewall Manager must be associated with a master account in AWS Organizations or associated with a member account that has the appropriate permissions. If the account ID that you submit is not an AWS Organizations master account, AWS Firewall Manager will set the appropriate permissions for the given member account.

The account that you associate with AWS Firewall Manager is called the AWS Firewall manager administrator account.

# Arguments

## `AdminAccount = ::String` -- *Required*
The AWS account ID to associate with AWS Firewall Manager as the AWS Firewall Manager administrator account. This can be an AWS Organizations master account or a member account. For more information about AWS Organizations and master accounts, see [Managing the AWS Accounts in Your Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html).




# Exceptions

`InvalidOperationException`, `InvalidInputException`, `ResourceNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AssociateAdminAccount)
"""
@inline associate_admin_account(aws::AWSConfig=default_aws_config(); args...) = associate_admin_account(aws, args)

@inline associate_admin_account(aws::AWSConfig, args) = AWSCore.Services.fms(aws, "AssociateAdminAccount", args)

@inline associate_admin_account(args) = associate_admin_account(default_aws_config(), args)


"""
    using AWSSDK.FMS.delete_notification_channel
    delete_notification_channel([::AWSConfig], arguments::Dict)
    delete_notification_channel([::AWSConfig]; )

    using AWSCore.Services.fms
    fms([::AWSConfig], "DeleteNotificationChannel", arguments::Dict)
    fms([::AWSConfig], "DeleteNotificationChannel", )

# DeleteNotificationChannel Operation

Deletes an AWS Firewall Manager association with the IAM role and the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.

# Arguments



# Exceptions

`ResourceNotFoundException`, `InvalidOperationException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeleteNotificationChannel)
"""
@inline delete_notification_channel(aws::AWSConfig=default_aws_config(); args...) = delete_notification_channel(aws, args)

@inline delete_notification_channel(aws::AWSConfig, args) = AWSCore.Services.fms(aws, "DeleteNotificationChannel", args)

@inline delete_notification_channel(args) = delete_notification_channel(default_aws_config(), args)


"""
    using AWSSDK.FMS.delete_policy
    delete_policy([::AWSConfig], arguments::Dict)
    delete_policy([::AWSConfig]; PolicyId=)

    using AWSCore.Services.fms
    fms([::AWSConfig], "DeletePolicy", arguments::Dict)
    fms([::AWSConfig], "DeletePolicy", PolicyId=)

# DeletePolicy Operation

Permanently deletes an AWS Firewall Manager policy.

# Arguments

## `PolicyId = ::String` -- *Required*
The ID of the policy that you want to delete. `PolicyId` is returned by `PutPolicy` and by `ListPolicies`.




# Exceptions

`ResourceNotFoundException`, `InvalidOperationException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeletePolicy)
"""
@inline delete_policy(aws::AWSConfig=default_aws_config(); args...) = delete_policy(aws, args)

@inline delete_policy(aws::AWSConfig, args) = AWSCore.Services.fms(aws, "DeletePolicy", args)

@inline delete_policy(args) = delete_policy(default_aws_config(), args)


"""
    using AWSSDK.FMS.disassociate_admin_account
    disassociate_admin_account([::AWSConfig], arguments::Dict)
    disassociate_admin_account([::AWSConfig]; )

    using AWSCore.Services.fms
    fms([::AWSConfig], "DisassociateAdminAccount", arguments::Dict)
    fms([::AWSConfig], "DisassociateAdminAccount", )

# DisassociateAdminAccount Operation

Disassociates the account that has been set as the AWS Firewall Manager administrator account. You will need to submit an `AssociateAdminAccount` request to set a new account as the AWS Firewall administrator.

# Arguments



# Exceptions

`InvalidOperationException`, `ResourceNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DisassociateAdminAccount)
"""
@inline disassociate_admin_account(aws::AWSConfig=default_aws_config(); args...) = disassociate_admin_account(aws, args)

@inline disassociate_admin_account(aws::AWSConfig, args) = AWSCore.Services.fms(aws, "DisassociateAdminAccount", args)

@inline disassociate_admin_account(args) = disassociate_admin_account(default_aws_config(), args)


"""
    using AWSSDK.FMS.get_admin_account
    get_admin_account([::AWSConfig], arguments::Dict)
    get_admin_account([::AWSConfig]; )

    using AWSCore.Services.fms
    fms([::AWSConfig], "GetAdminAccount", arguments::Dict)
    fms([::AWSConfig], "GetAdminAccount", )

# GetAdminAccount Operation

Returns the AWS Organizations master account that is associated with AWS Firewall Manager as the AWS Firewall Manager administrator.

# Arguments



# Returns

`GetAdminAccountResponse`

# Exceptions

`InvalidOperationException`, `ResourceNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetAdminAccount)
"""
@inline get_admin_account(aws::AWSConfig=default_aws_config(); args...) = get_admin_account(aws, args)

@inline get_admin_account(aws::AWSConfig, args) = AWSCore.Services.fms(aws, "GetAdminAccount", args)

@inline get_admin_account(args) = get_admin_account(default_aws_config(), args)


"""
    using AWSSDK.FMS.get_compliance_detail
    get_compliance_detail([::AWSConfig], arguments::Dict)
    get_compliance_detail([::AWSConfig]; PolicyId=, MemberAccount=)

    using AWSCore.Services.fms
    fms([::AWSConfig], "GetComplianceDetail", arguments::Dict)
    fms([::AWSConfig], "GetComplianceDetail", PolicyId=, MemberAccount=)

# GetComplianceDetail Operation

Returns detailed compliance information about the specified member account. Details include resources that are in and out of compliance with the specified policy. Resources are considered non-compliant if the specified policy has not been applied to them.

# Arguments

## `PolicyId = ::String` -- *Required*
The ID of the policy that you want to get the details for. `PolicyId` is returned by `PutPolicy` and by `ListPolicies`.


## `MemberAccount = ::String` -- *Required*
The AWS account that owns the resources that you want to get the details for.




# Returns

`GetComplianceDetailResponse`

# Exceptions

`ResourceNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetComplianceDetail)
"""
@inline get_compliance_detail(aws::AWSConfig=default_aws_config(); args...) = get_compliance_detail(aws, args)

@inline get_compliance_detail(aws::AWSConfig, args) = AWSCore.Services.fms(aws, "GetComplianceDetail", args)

@inline get_compliance_detail(args) = get_compliance_detail(default_aws_config(), args)


"""
    using AWSSDK.FMS.get_notification_channel
    get_notification_channel([::AWSConfig], arguments::Dict)
    get_notification_channel([::AWSConfig]; )

    using AWSCore.Services.fms
    fms([::AWSConfig], "GetNotificationChannel", arguments::Dict)
    fms([::AWSConfig], "GetNotificationChannel", )

# GetNotificationChannel Operation

Returns information about the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.

# Arguments



# Returns

`GetNotificationChannelResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidOperationException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetNotificationChannel)
"""
@inline get_notification_channel(aws::AWSConfig=default_aws_config(); args...) = get_notification_channel(aws, args)

@inline get_notification_channel(aws::AWSConfig, args) = AWSCore.Services.fms(aws, "GetNotificationChannel", args)

@inline get_notification_channel(args) = get_notification_channel(default_aws_config(), args)


"""
    using AWSSDK.FMS.get_policy
    get_policy([::AWSConfig], arguments::Dict)
    get_policy([::AWSConfig]; PolicyId=)

    using AWSCore.Services.fms
    fms([::AWSConfig], "GetPolicy", arguments::Dict)
    fms([::AWSConfig], "GetPolicy", PolicyId=)

# GetPolicy Operation

Returns information about the specified AWS Firewall Manager policy.

# Arguments

## `PolicyId = ::String` -- *Required*
The ID of the AWS Firewall Manager policy that you want the details for.




# Returns

`GetPolicyResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidOperationException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetPolicy)
"""
@inline get_policy(aws::AWSConfig=default_aws_config(); args...) = get_policy(aws, args)

@inline get_policy(aws::AWSConfig, args) = AWSCore.Services.fms(aws, "GetPolicy", args)

@inline get_policy(args) = get_policy(default_aws_config(), args)


"""
    using AWSSDK.FMS.list_compliance_status
    list_compliance_status([::AWSConfig], arguments::Dict)
    list_compliance_status([::AWSConfig]; PolicyId=, <keyword arguments>)

    using AWSCore.Services.fms
    fms([::AWSConfig], "ListComplianceStatus", arguments::Dict)
    fms([::AWSConfig], "ListComplianceStatus", PolicyId=, <keyword arguments>)

# ListComplianceStatus Operation

Returns an array of `PolicyComplianceStatus` objects in the response. Use `PolicyComplianceStatus` to get a summary of which member accounts are protected by the specified policy.

# Arguments

## `PolicyId = ::String` -- *Required*
The ID of the AWS Firewall Manager policy that you want the details for.


## `NextToken = ::String`
If you specify a value for `MaxResults` and you have more `PolicyComplianceStatus` objects than the number that you specify for `MaxResults`, AWS Firewall Manager returns a `NextToken` value in the response that allows you to list another group of `PolicyComplianceStatus` objects. For the second and subsequent `ListComplianceStatus` requests, specify the value of `NextToken` from the previous response to get information about another batch of `PolicyComplianceStatus` objects.


## `MaxResults = ::Int`
Specifies the number of `PolicyComplianceStatus` objects that you want AWS Firewall Manager to return for this request. If you have more `PolicyComplianceStatus` objects than the number that you specify for `MaxResults`, the response includes a `NextToken` value that you can use to get another batch of `PolicyComplianceStatus` objects.




# Returns

`ListComplianceStatusResponse`

# Exceptions

`ResourceNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListComplianceStatus)
"""
@inline list_compliance_status(aws::AWSConfig=default_aws_config(); args...) = list_compliance_status(aws, args)

@inline list_compliance_status(aws::AWSConfig, args) = AWSCore.Services.fms(aws, "ListComplianceStatus", args)

@inline list_compliance_status(args) = list_compliance_status(default_aws_config(), args)


"""
    using AWSSDK.FMS.list_policies
    list_policies([::AWSConfig], arguments::Dict)
    list_policies([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.fms
    fms([::AWSConfig], "ListPolicies", arguments::Dict)
    fms([::AWSConfig], "ListPolicies", <keyword arguments>)

# ListPolicies Operation

Returns an array of `PolicySummary` objects in the response.

# Arguments

## `NextToken = ::String`
If you specify a value for `MaxResults` and you have more `PolicySummary` objects than the number that you specify for `MaxResults`, AWS Firewall Manager returns a `NextToken` value in the response that allows you to list another group of `PolicySummary` objects. For the second and subsequent `ListPolicies` requests, specify the value of `NextToken` from the previous response to get information about another batch of `PolicySummary` objects.


## `MaxResults = ::Int`
Specifies the number of `PolicySummary` objects that you want AWS Firewall Manager to return for this request. If you have more `PolicySummary` objects than the number that you specify for `MaxResults`, the response includes a `NextToken` value that you can use to get another batch of `PolicySummary` objects.




# Returns

`ListPoliciesResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidOperationException`, `LimitExceededException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListPolicies)
"""
@inline list_policies(aws::AWSConfig=default_aws_config(); args...) = list_policies(aws, args)

@inline list_policies(aws::AWSConfig, args) = AWSCore.Services.fms(aws, "ListPolicies", args)

@inline list_policies(args) = list_policies(default_aws_config(), args)


"""
    using AWSSDK.FMS.put_notification_channel
    put_notification_channel([::AWSConfig], arguments::Dict)
    put_notification_channel([::AWSConfig]; SnsTopicArn=, SnsRoleName=)

    using AWSCore.Services.fms
    fms([::AWSConfig], "PutNotificationChannel", arguments::Dict)
    fms([::AWSConfig], "PutNotificationChannel", SnsTopicArn=, SnsRoleName=)

# PutNotificationChannel Operation

Designates the IAM role and Amazon Simple Notification Service (SNS) topic that AWS Firewall Manager uses to record SNS logs.

# Arguments

## `SnsTopicArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the SNS topic that collects notifications from AWS Firewall Manager.


## `SnsRoleName = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to record AWS Firewall Manager activity.




# Exceptions

`ResourceNotFoundException`, `InvalidOperationException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutNotificationChannel)
"""
@inline put_notification_channel(aws::AWSConfig=default_aws_config(); args...) = put_notification_channel(aws, args)

@inline put_notification_channel(aws::AWSConfig, args) = AWSCore.Services.fms(aws, "PutNotificationChannel", args)

@inline put_notification_channel(args) = put_notification_channel(default_aws_config(), args)


"""
    using AWSSDK.FMS.put_policy
    put_policy([::AWSConfig], arguments::Dict)
    put_policy([::AWSConfig]; Policy=)

    using AWSCore.Services.fms
    fms([::AWSConfig], "PutPolicy", arguments::Dict)
    fms([::AWSConfig], "PutPolicy", Policy=)

# PutPolicy Operation

Creates an AWS Firewall Manager policy.

# Arguments

## `Policy = [ ... ]` -- *Required*
The details of the AWS Firewall Manager policy to be created.
```
 Policy = [
        "PolicyId" =>  ::String,
        "PolicyName" => <required> ::String,
        "PolicyUpdateToken" =>  ::String,
        "SecurityServicePolicyData" => <required> [
            "Type" => <required> "WAF",
            "ManagedServiceData" =>  ::String
        ],
        "ResourceType" => <required> ::String,
        "ResourceTags" =>  [[
            "Key" => <required> ::String,
            "Value" =>  ::String
        ], ...],
        "ExcludeResourceTags" => <required> ::Bool,
        "RemediationEnabled" => <required> ::Bool
    ]
```



# Returns

`PutPolicyResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidOperationException`, `InvalidInputException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutPolicy)
"""
@inline put_policy(aws::AWSConfig=default_aws_config(); args...) = put_policy(aws, args)

@inline put_policy(aws::AWSConfig, args) = AWSCore.Services.fms(aws, "PutPolicy", args)

@inline put_policy(args) = put_policy(default_aws_config(), args)




end # module FMS


#==============================================================================#
# End of file
#==============================================================================#
