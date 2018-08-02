#==============================================================================#
# Shield.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/shield-2016-06-02.normal.json
#==============================================================================#

__precompile__()

module Shield

using AWSCore


"""
    using AWSSDK.Shield.associate_drtlog_bucket
    associate_drtlog_bucket([::AWSConfig], arguments::Dict)
    associate_drtlog_bucket([::AWSConfig]; LogBucket=)

    using AWSCore.Services.shield
    shield([::AWSConfig], "AssociateDRTLogBucket", arguments::Dict)
    shield([::AWSConfig], "AssociateDRTLogBucket", LogBucket=)

# AssociateDRTLogBucket Operation

Authorizes the DDoS Response team (DRT) to access the specified Amazon S3 bucket containing your flow logs. You can associate up to 10 Amazon S3 buckets with your subscription.

To use the services of the DRT and make an `AssociateDRTLogBucket` request, you must be subscribed to the [Business Support plan](https://aws.amazon.com/premiumsupport/business-support/) or the [Enterprise Support plan](https://aws.amazon.com/premiumsupport/enterprise-support/).

# Arguments

## `LogBucket = ::String` -- *Required*
The Amazon S3 bucket that contains your flow logs.




# Returns

`AssociateDRTLogBucketResponse`

# Exceptions

`InternalErrorException`, `InvalidOperationException`, `NoAssociatedRoleException`, `LimitsExceededException`, `InvalidParameterException`, `AccessDeniedForDependencyException`, `OptimisticLockException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTLogBucket)
"""
@inline associate_drtlog_bucket(aws::AWSConfig=default_aws_config(); args...) = associate_drtlog_bucket(aws, args)

@inline associate_drtlog_bucket(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "AssociateDRTLogBucket", args)

@inline associate_drtlog_bucket(args) = associate_drtlog_bucket(default_aws_config(), args)


"""
    using AWSSDK.Shield.associate_drtrole
    associate_drtrole([::AWSConfig], arguments::Dict)
    associate_drtrole([::AWSConfig]; RoleArn=)

    using AWSCore.Services.shield
    shield([::AWSConfig], "AssociateDRTRole", arguments::Dict)
    shield([::AWSConfig], "AssociateDRTRole", RoleArn=)

# AssociateDRTRole Operation

Authorizes the DDoS Response team (DRT), using the specified role, to access your AWS account to assist with DDoS attack mitigation during potential attacks. This enables the DRT to inspect your AWS WAF configuration and create or update AWS WAF rules and web ACLs.

You can associate only one `RoleArn` with your subscription. If you submit an `AssociateDRTRole` request for an account that already has an associated role, the new `RoleArn` will replace the existing `RoleArn`.

Prior to making the `AssociateDRTRole` request, you must attach the [AWSShieldDRTAccessPolicy](https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy) managed policy to the role you will specify in the request. For more information see [Attaching and Detaching IAM Policies]( https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html). The role must also trust the service principal `drt.shield.amazonaws.com`. For more information, see [IAM JSON Policy Elements: Principal](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html).

The DRT will have access only to your AWS WAF and Shield resources. By submitting this request, you authorize the DRT to inspect your AWS WAF and Shield configuration and create and update AWS WAF rules and web ACLs on your behalf. The DRT takes these actions only if explicitly authorized by you.

You must have the `iam:PassRole` permission to make an `AssociateDRTRole` request. For more information, see [Granting a User Permissions to Pass a Role to an AWS Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html).

To use the services of the DRT and make an `AssociateDRTRole` request, you must be subscribed to the [Business Support plan](https://aws.amazon.com/premiumsupport/business-support/) or the [Enterprise Support plan](https://aws.amazon.com/premiumsupport/enterprise-support/).

# Arguments

## `RoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the role the DRT will use to access your AWS account.

Prior to making the `AssociateDRTRole` request, you must attach the [AWSShieldDRTAccessPolicy](https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy) managed policy to this role. For more information see [Attaching and Detaching IAM Policies]( https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html).




# Returns

`AssociateDRTRoleResponse`

# Exceptions

`InternalErrorException`, `InvalidOperationException`, `InvalidParameterException`, `AccessDeniedForDependencyException`, `OptimisticLockException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTRole)
"""
@inline associate_drtrole(aws::AWSConfig=default_aws_config(); args...) = associate_drtrole(aws, args)

@inline associate_drtrole(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "AssociateDRTRole", args)

@inline associate_drtrole(args) = associate_drtrole(default_aws_config(), args)


"""
    using AWSSDK.Shield.create_protection
    create_protection([::AWSConfig], arguments::Dict)
    create_protection([::AWSConfig]; Name=, ResourceArn=)

    using AWSCore.Services.shield
    shield([::AWSConfig], "CreateProtection", arguments::Dict)
    shield([::AWSConfig], "CreateProtection", Name=, ResourceArn=)

# CreateProtection Operation

Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, Elastic IP Address, or an Amazon Route 53 hosted zone.

You can add protection to only a single resource with each CreateProtection request. If you want to add protection to multiple resources at once, use the [AWS WAF console](https://console.aws.amazon.com/waf/). For more information see [Getting Started with AWS Shield Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html) and [Add AWS Shield Advanced Protection to more AWS Resources](https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html).

# Arguments

## `Name = ::String` -- *Required*
Friendly name for the `Protection` you are creating.


## `ResourceArn = ::String` -- *Required*
The ARN (Amazon Resource Name) of the resource to be protected.

The ARN should be in one of the following formats:

*   For an Application Load Balancer: `arn:aws:elasticloadbalancing:*region*:*account-id*:loadbalancer/app/*load-balancer-name*/*load-balancer-id*`

*   For an Elastic Load Balancer (Classic Load Balancer): `arn:aws:elasticloadbalancing:*region*:*account-id*:loadbalancer/*load-balancer-name*`

*   For AWS CloudFront distribution: `arn:aws:cloudfront::*account-id*:distribution/*distribution-id*`

*   For Amazon Route 53: `arn:aws:route53::*account-id*:hostedzone/*hosted-zone-id*`

*   For an Elastic IP address: `arn:aws:ec2:*region*:*account-id*:eip-allocation/*allocation-id*`




# Returns

`CreateProtectionResponse`

# Exceptions

`InternalErrorException`, `InvalidResourceException`, `InvalidOperationException`, `LimitsExceededException`, `ResourceAlreadyExistsException`, `OptimisticLockException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateProtection)
"""
@inline create_protection(aws::AWSConfig=default_aws_config(); args...) = create_protection(aws, args)

@inline create_protection(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "CreateProtection", args)

@inline create_protection(args) = create_protection(default_aws_config(), args)


"""
    using AWSSDK.Shield.create_subscription
    create_subscription([::AWSConfig], arguments::Dict)
    create_subscription([::AWSConfig]; )

    using AWSCore.Services.shield
    shield([::AWSConfig], "CreateSubscription", arguments::Dict)
    shield([::AWSConfig], "CreateSubscription", )

# CreateSubscription Operation

Activates AWS Shield Advanced for an account.

As part of this request you can specify `EmergencySettings` that automaticaly grant the DDoS response team (DRT) needed permissions to assist you during a suspected DDoS attack. For more information see [Authorize the DDoS Response Team to Create Rules and Web ACLs on Your Behalf](https://docs.aws.amazon.com/waf/latest/developerguide/authorize-DRT.html).

When you initally create a subscription, your subscription is set to be automatically renewed at the end of the existing subscription period. You can change this by submitting an `UpdateSubscription` request.

# Arguments



# Returns

`CreateSubscriptionResponse`

# Exceptions

`InternalErrorException` or `ResourceAlreadyExistsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateSubscription)
"""
@inline create_subscription(aws::AWSConfig=default_aws_config(); args...) = create_subscription(aws, args)

@inline create_subscription(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "CreateSubscription", args)

@inline create_subscription(args) = create_subscription(default_aws_config(), args)


"""
    using AWSSDK.Shield.delete_protection
    delete_protection([::AWSConfig], arguments::Dict)
    delete_protection([::AWSConfig]; ProtectionId=)

    using AWSCore.Services.shield
    shield([::AWSConfig], "DeleteProtection", arguments::Dict)
    shield([::AWSConfig], "DeleteProtection", ProtectionId=)

# DeleteProtection Operation

Deletes an AWS Shield Advanced [Protection](@ref).

# Arguments

## `ProtectionId = ::String` -- *Required*
The unique identifier (ID) for the [Protection](@ref) object to be deleted.




# Returns

`DeleteProtectionResponse`

# Exceptions

`InternalErrorException`, `ResourceNotFoundException` or `OptimisticLockException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteProtection)
"""
@inline delete_protection(aws::AWSConfig=default_aws_config(); args...) = delete_protection(aws, args)

@inline delete_protection(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "DeleteProtection", args)

@inline delete_protection(args) = delete_protection(default_aws_config(), args)


"""
    using AWSSDK.Shield.delete_subscription
    delete_subscription([::AWSConfig], arguments::Dict)
    delete_subscription([::AWSConfig]; )

    using AWSCore.Services.shield
    shield([::AWSConfig], "DeleteSubscription", arguments::Dict)
    shield([::AWSConfig], "DeleteSubscription", )

# DeleteSubscription Operation

Removes AWS Shield Advanced from an account. AWS Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment.

# Arguments



# Returns

`DeleteSubscriptionResponse`

# Exceptions

`InternalErrorException`, `LockedSubscriptionException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteSubscription)
"""
@inline delete_subscription(aws::AWSConfig=default_aws_config(); args...) = delete_subscription(aws, args)

@inline delete_subscription(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "DeleteSubscription", args)

@inline delete_subscription(args) = delete_subscription(default_aws_config(), args)


"""
    using AWSSDK.Shield.describe_attack
    describe_attack([::AWSConfig], arguments::Dict)
    describe_attack([::AWSConfig]; AttackId=)

    using AWSCore.Services.shield
    shield([::AWSConfig], "DescribeAttack", arguments::Dict)
    shield([::AWSConfig], "DescribeAttack", AttackId=)

# DescribeAttack Operation

Describes the details of a DDoS attack.

# Arguments

## `AttackId = ::String` -- *Required*
The unique identifier (ID) for the attack that to be described.




# Returns

`DescribeAttackResponse`

# Exceptions

`InternalErrorException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeAttack)
"""
@inline describe_attack(aws::AWSConfig=default_aws_config(); args...) = describe_attack(aws, args)

@inline describe_attack(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "DescribeAttack", args)

@inline describe_attack(args) = describe_attack(default_aws_config(), args)


"""
    using AWSSDK.Shield.describe_drtaccess
    describe_drtaccess([::AWSConfig], arguments::Dict)
    describe_drtaccess([::AWSConfig]; )

    using AWSCore.Services.shield
    shield([::AWSConfig], "DescribeDRTAccess", arguments::Dict)
    shield([::AWSConfig], "DescribeDRTAccess", )

# DescribeDRTAccess Operation

Returns the current role and list of Amazon S3 log buckets used by the DDoS Response team (DRT) to access your AWS account while assisting with attack mitigation.

# Arguments



# Returns

`DescribeDRTAccessResponse`

# Exceptions

`InternalErrorException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeDRTAccess)
"""
@inline describe_drtaccess(aws::AWSConfig=default_aws_config(); args...) = describe_drtaccess(aws, args)

@inline describe_drtaccess(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "DescribeDRTAccess", args)

@inline describe_drtaccess(args) = describe_drtaccess(default_aws_config(), args)


"""
    using AWSSDK.Shield.describe_emergency_contact_settings
    describe_emergency_contact_settings([::AWSConfig], arguments::Dict)
    describe_emergency_contact_settings([::AWSConfig]; )

    using AWSCore.Services.shield
    shield([::AWSConfig], "DescribeEmergencyContactSettings", arguments::Dict)
    shield([::AWSConfig], "DescribeEmergencyContactSettings", )

# DescribeEmergencyContactSettings Operation

Lists the email addresses that the DRT can use to contact you during a suspected attack.

# Arguments



# Returns

`DescribeEmergencyContactSettingsResponse`

# Exceptions

`InternalErrorException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeEmergencyContactSettings)
"""
@inline describe_emergency_contact_settings(aws::AWSConfig=default_aws_config(); args...) = describe_emergency_contact_settings(aws, args)

@inline describe_emergency_contact_settings(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "DescribeEmergencyContactSettings", args)

@inline describe_emergency_contact_settings(args) = describe_emergency_contact_settings(default_aws_config(), args)


"""
    using AWSSDK.Shield.describe_protection
    describe_protection([::AWSConfig], arguments::Dict)
    describe_protection([::AWSConfig]; ProtectionId=)

    using AWSCore.Services.shield
    shield([::AWSConfig], "DescribeProtection", arguments::Dict)
    shield([::AWSConfig], "DescribeProtection", ProtectionId=)

# DescribeProtection Operation

Lists the details of a [Protection](@ref) object.

# Arguments

## `ProtectionId = ::String` -- *Required*
The unique identifier (ID) for the [Protection](@ref) object that is described.




# Returns

`DescribeProtectionResponse`

# Exceptions

`InternalErrorException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtection)
"""
@inline describe_protection(aws::AWSConfig=default_aws_config(); args...) = describe_protection(aws, args)

@inline describe_protection(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "DescribeProtection", args)

@inline describe_protection(args) = describe_protection(default_aws_config(), args)


"""
    using AWSSDK.Shield.describe_subscription
    describe_subscription([::AWSConfig], arguments::Dict)
    describe_subscription([::AWSConfig]; )

    using AWSCore.Services.shield
    shield([::AWSConfig], "DescribeSubscription", arguments::Dict)
    shield([::AWSConfig], "DescribeSubscription", )

# DescribeSubscription Operation

Provides details about the AWS Shield Advanced subscription for an account.

# Arguments



# Returns

`DescribeSubscriptionResponse`

# Exceptions

`InternalErrorException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeSubscription)
"""
@inline describe_subscription(aws::AWSConfig=default_aws_config(); args...) = describe_subscription(aws, args)

@inline describe_subscription(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "DescribeSubscription", args)

@inline describe_subscription(args) = describe_subscription(default_aws_config(), args)


"""
    using AWSSDK.Shield.disassociate_drtlog_bucket
    disassociate_drtlog_bucket([::AWSConfig], arguments::Dict)
    disassociate_drtlog_bucket([::AWSConfig]; LogBucket=)

    using AWSCore.Services.shield
    shield([::AWSConfig], "DisassociateDRTLogBucket", arguments::Dict)
    shield([::AWSConfig], "DisassociateDRTLogBucket", LogBucket=)

# DisassociateDRTLogBucket Operation

Removes the DDoS Response team's (DRT) access to the specified Amazon S3 bucket containing your flow logs.

To make a `DisassociateDRTLogBucket` request, you must be subscribed to the [Business Support plan](https://aws.amazon.com/premiumsupport/business-support/) or the [Enterprise Support plan](https://aws.amazon.com/premiumsupport/enterprise-support/). However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a `DisassociateDRTLogBucket` request to remove this access.

# Arguments

## `LogBucket = ::String` -- *Required*
The Amazon S3 bucket that contains your flow logs.




# Returns

`DisassociateDRTLogBucketResponse`

# Exceptions

`InternalErrorException`, `InvalidOperationException`, `NoAssociatedRoleException`, `AccessDeniedForDependencyException`, `OptimisticLockException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateDRTLogBucket)
"""
@inline disassociate_drtlog_bucket(aws::AWSConfig=default_aws_config(); args...) = disassociate_drtlog_bucket(aws, args)

@inline disassociate_drtlog_bucket(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "DisassociateDRTLogBucket", args)

@inline disassociate_drtlog_bucket(args) = disassociate_drtlog_bucket(default_aws_config(), args)


"""
    using AWSSDK.Shield.disassociate_drtrole
    disassociate_drtrole([::AWSConfig], arguments::Dict)
    disassociate_drtrole([::AWSConfig]; )

    using AWSCore.Services.shield
    shield([::AWSConfig], "DisassociateDRTRole", arguments::Dict)
    shield([::AWSConfig], "DisassociateDRTRole", )

# DisassociateDRTRole Operation

Removes the DDoS Response team's (DRT) access to your AWS account.

To make a `DisassociateDRTRole` request, you must be subscribed to the [Business Support plan](https://aws.amazon.com/premiumsupport/business-support/) or the [Enterprise Support plan](https://aws.amazon.com/premiumsupport/enterprise-support/). However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a `DisassociateDRTRole` request to remove this access.

# Arguments



# Returns

`DisassociateDRTRoleResponse`

# Exceptions

`InternalErrorException`, `InvalidOperationException`, `OptimisticLockException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateDRTRole)
"""
@inline disassociate_drtrole(aws::AWSConfig=default_aws_config(); args...) = disassociate_drtrole(aws, args)

@inline disassociate_drtrole(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "DisassociateDRTRole", args)

@inline disassociate_drtrole(args) = disassociate_drtrole(default_aws_config(), args)


"""
    using AWSSDK.Shield.get_subscription_state
    get_subscription_state([::AWSConfig], arguments::Dict)
    get_subscription_state([::AWSConfig]; )

    using AWSCore.Services.shield
    shield([::AWSConfig], "GetSubscriptionState", arguments::Dict)
    shield([::AWSConfig], "GetSubscriptionState", )

# GetSubscriptionState Operation

Returns the `SubscriptionState`, either `Active` or `Inactive`.

# Arguments



# Returns

`GetSubscriptionStateResponse`

# Exceptions

`InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/GetSubscriptionState)
"""
@inline get_subscription_state(aws::AWSConfig=default_aws_config(); args...) = get_subscription_state(aws, args)

@inline get_subscription_state(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "GetSubscriptionState", args)

@inline get_subscription_state(args) = get_subscription_state(default_aws_config(), args)


"""
    using AWSSDK.Shield.list_attacks
    list_attacks([::AWSConfig], arguments::Dict)
    list_attacks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.shield
    shield([::AWSConfig], "ListAttacks", arguments::Dict)
    shield([::AWSConfig], "ListAttacks", <keyword arguments>)

# ListAttacks Operation

Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.

# Arguments

## `ResourceArns = [::String, ...]`
The ARN (Amazon Resource Name) of the resource that was attacked. If this is left blank, all applicable resources for this account will be included.


## `StartTime = [ ... ]`
The start of the time period for the attacks. This is a `timestamp` type. The sample request above indicates a `number` type because the default used by WAF is Unix time in seconds. However any valid [timestamp format](http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types) is allowed.
```
 StartTime = [
        "FromInclusive" =>  timestamp,
        "ToExclusive" =>  timestamp
    ]
```

## `EndTime = [ ... ]`
The end of the time period for the attacks. This is a `timestamp` type. The sample request above indicates a `number` type because the default used by WAF is Unix time in seconds. However any valid [timestamp format](http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types) is allowed.
```
 EndTime = [
        "FromInclusive" =>  timestamp,
        "ToExclusive" =>  timestamp
    ]
```

## `NextToken = ::String`
The `ListAttacksRequest.NextMarker` value from a previous call to `ListAttacksRequest`. Pass null if this is the first call.


## `MaxResults = ::Int`
The maximum number of [AttackSummary](@ref) objects to be returned. If this is left blank, the first 20 results will be returned.




# Returns

`ListAttacksResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException` or `InvalidOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListAttacks)
"""
@inline list_attacks(aws::AWSConfig=default_aws_config(); args...) = list_attacks(aws, args)

@inline list_attacks(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "ListAttacks", args)

@inline list_attacks(args) = list_attacks(default_aws_config(), args)


"""
    using AWSSDK.Shield.list_protections
    list_protections([::AWSConfig], arguments::Dict)
    list_protections([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.shield
    shield([::AWSConfig], "ListProtections", arguments::Dict)
    shield([::AWSConfig], "ListProtections", <keyword arguments>)

# ListProtections Operation

Lists all [Protection](@ref) objects for the account.

# Arguments

## `NextToken = ::String`
The `ListProtectionsRequest.NextToken` value from a previous call to `ListProtections`. Pass null if this is the first call.


## `MaxResults = ::Int`
The maximum number of [Protection](@ref) objects to be returned. If this is left blank the first 20 results will be returned.




# Returns

`ListProtectionsResponse`

# Exceptions

`InternalErrorException`, `ResourceNotFoundException` or `InvalidPaginationTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtections)
"""
@inline list_protections(aws::AWSConfig=default_aws_config(); args...) = list_protections(aws, args)

@inline list_protections(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "ListProtections", args)

@inline list_protections(args) = list_protections(default_aws_config(), args)


"""
    using AWSSDK.Shield.update_emergency_contact_settings
    update_emergency_contact_settings([::AWSConfig], arguments::Dict)
    update_emergency_contact_settings([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.shield
    shield([::AWSConfig], "UpdateEmergencyContactSettings", arguments::Dict)
    shield([::AWSConfig], "UpdateEmergencyContactSettings", <keyword arguments>)

# UpdateEmergencyContactSettings Operation

Updates the details of the list of email addresses that the DRT can use to contact you during a suspected attack.

# Arguments

## `EmergencyContactList = [["EmailAddress" => <required> ::String], ...]`
A list of email addresses that the DRT can use to contact you during a suspected attack.




# Returns

`UpdateEmergencyContactSettingsResponse`

# Exceptions

`InternalErrorException`, `InvalidParameterException`, `OptimisticLockException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateEmergencyContactSettings)
"""
@inline update_emergency_contact_settings(aws::AWSConfig=default_aws_config(); args...) = update_emergency_contact_settings(aws, args)

@inline update_emergency_contact_settings(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "UpdateEmergencyContactSettings", args)

@inline update_emergency_contact_settings(args) = update_emergency_contact_settings(default_aws_config(), args)


"""
    using AWSSDK.Shield.update_subscription
    update_subscription([::AWSConfig], arguments::Dict)
    update_subscription([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.shield
    shield([::AWSConfig], "UpdateSubscription", arguments::Dict)
    shield([::AWSConfig], "UpdateSubscription", <keyword arguments>)

# UpdateSubscription Operation

Updates the details of an existing subscription. Only enter values for parameters you want to change. Empty parameters are not updated.

# Arguments

## `AutoRenew = "ENABLED" or "DISABLED"`
When you initally create a subscription, `AutoRenew` is set to `ENABLED`. If `ENABLED`, the subscription will be automatically renewed at the end of the existing subscription period. You can change this by submitting an `UpdateSubscription` request. If the `UpdateSubscription` request does not included a value for `AutoRenew`, the existing value for `AutoRenew` remains unchanged.




# Returns

`UpdateSubscriptionResponse`

# Exceptions

`InternalErrorException`, `LockedSubscriptionException`, `ResourceNotFoundException`, `InvalidParameterException` or `OptimisticLockException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateSubscription)
"""
@inline update_subscription(aws::AWSConfig=default_aws_config(); args...) = update_subscription(aws, args)

@inline update_subscription(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "UpdateSubscription", args)

@inline update_subscription(args) = update_subscription(default_aws_config(), args)




end # module Shield


#==============================================================================#
# End of file
#==============================================================================#
