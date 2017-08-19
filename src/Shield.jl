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
    using AWSSDK.Shield.create_protection
    create_protection([::AWSConfig], arguments::Dict)
    create_protection([::AWSConfig]; Name=, ResourceArn=)

    using AWSCore.Services.shield
    shield([::AWSConfig], "CreateProtection", arguments::Dict)
    shield([::AWSConfig], "CreateProtection", Name=, ResourceArn=)

# CreateProtection Operation

Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, or an Amazon Route 53 hosted zone.

# Arguments

## `Name = ::String` -- *Required*
Friendly name for the `Protection` you are creating.


## `ResourceArn = ::String` -- *Required*
The ARN (Amazon Resource Name) of the resource to be protected.




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

Removes AWS Shield Advanced from an account.

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
The time period for the attacks.
```
 StartTime = [
        "FromInclusive" =>  timestamp,
        "ToExclusive" =>  timestamp
    ]
```

## `EndTime = [ ... ]`
The end of the time period for the attacks.
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

`InternalErrorException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtections)
"""

@inline list_protections(aws::AWSConfig=default_aws_config(); args...) = list_protections(aws, args)

@inline list_protections(aws::AWSConfig, args) = AWSCore.Services.shield(aws, "ListProtections", args)

@inline list_protections(args) = list_protections(default_aws_config(), args)




end # module Shield


#==============================================================================#
# End of file
#==============================================================================#
