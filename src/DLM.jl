#==============================================================================#
# DLM.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/dlm-2018-01-12.normal.json
#==============================================================================#

__precompile__()

module DLM

using AWSCore


"""
    using AWSSDK.DLM.create_lifecycle_policy
    create_lifecycle_policy([::AWSConfig], arguments::Dict)
    create_lifecycle_policy([::AWSConfig]; ExecutionRoleArn=, Description=, State=, PolicyDetails=)

    using AWSCore.Services.dlm
    dlm([::AWSConfig], "POST", "/policies", arguments::Dict)
    dlm([::AWSConfig], "POST", "/policies", ExecutionRoleArn=, Description=, State=, PolicyDetails=)

# CreateLifecyclePolicy Operation

Creates a policy to manage the lifecycle of the specified AWS resources. You can create up to 100 lifecycle policies.

# Arguments

## `ExecutionRoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by the lifecycle policy.


## `Description = ::String` -- *Required*
A description of the lifecycle policy. The characters ^[0-9A-Za-z _-]+\$ are supported.


## `State = "ENABLED" or "DISABLED"` -- *Required*
The desired activation state of the lifecycle policy after creation.


## `PolicyDetails = [ ... ]` -- *Required*
The configuration of the lifecycle policy.

Target tags cannot be re-used across lifecycle policies.
```
 PolicyDetails = [
        "ResourceTypes" =>  ["VOLUME", ...],
        "TargetTags" =>  [[
            "Key" => <required> ::String,
            "Value" => <required> ::String
        ], ...],
        "Schedules" =>  [[
            "Name" =>  ::String,
            "TagsToAdd" =>  [[
                "Key" => <required> ::String,
                "Value" => <required> ::String
            ], ...],
            "CreateRule" =>  [
                "Interval" => <required> ::Int,
                "IntervalUnit" => <required> "HOURS",
                "Times" =>  [::String, ...]
            ],
            "RetainRule" =>  ["Count" => <required> ::Int]
        ], ...]
    ]
```



# Returns

`CreateLifecyclePolicyResponse`

# Exceptions

`InvalidRequestException`, `LimitExceededException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CreateLifecyclePolicy)
"""
@inline create_lifecycle_policy(aws::AWSConfig=default_aws_config(); args...) = create_lifecycle_policy(aws, args)

@inline create_lifecycle_policy(aws::AWSConfig, args) = AWSCore.Services.dlm(aws, "POST", "/policies", args)

@inline create_lifecycle_policy(args) = create_lifecycle_policy(default_aws_config(), args)


"""
    using AWSSDK.DLM.delete_lifecycle_policy
    delete_lifecycle_policy([::AWSConfig], arguments::Dict)
    delete_lifecycle_policy([::AWSConfig]; policyId=)

    using AWSCore.Services.dlm
    dlm([::AWSConfig], "DELETE", "/policies/{policyId}/", arguments::Dict)
    dlm([::AWSConfig], "DELETE", "/policies/{policyId}/", policyId=)

# DeleteLifecyclePolicy Operation

Deletes the specified lifecycle policy and halts the automated operations that the policy specified.

# Arguments

## `policyId = ::String` -- *Required*
The identifier of the lifecycle policy.




# Returns

`DeleteLifecyclePolicyResponse`

# Exceptions

`ResourceNotFoundException`, `InternalServerException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/DeleteLifecyclePolicy)
"""
@inline delete_lifecycle_policy(aws::AWSConfig=default_aws_config(); args...) = delete_lifecycle_policy(aws, args)

@inline delete_lifecycle_policy(aws::AWSConfig, args) = AWSCore.Services.dlm(aws, "DELETE", "/policies/{policyId}/", args)

@inline delete_lifecycle_policy(args) = delete_lifecycle_policy(default_aws_config(), args)


"""
    using AWSSDK.DLM.get_lifecycle_policies
    get_lifecycle_policies([::AWSConfig], arguments::Dict)
    get_lifecycle_policies([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dlm
    dlm([::AWSConfig], "GET", "/policies", arguments::Dict)
    dlm([::AWSConfig], "GET", "/policies", <keyword arguments>)

# GetLifecyclePolicies Operation

Gets summary information about all or the specified data lifecycle policies.

To get complete information about a policy, use [GetLifecyclePolicy](@ref).

# Arguments

## `policyIds = [::String, ...]`
The identifiers of the data lifecycle policies.


## `state = "ENABLED", "DISABLED" or "ERROR"`
The activation state.


## `resourceTypes = ["VOLUME", ...]`
The resource type.


## `targetTags = [::String, ...]`
The target tags.

Tags are strings in the format `key:value`.


## `tagsToAdd = [::String, ...]`
The tags to add to the resources.

Tags are strings in the format `key:value`.

These tags are added in addition to the AWS-added lifecycle tags.




# Returns

`GetLifecyclePoliciesResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `InternalServerException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePolicies)
"""
@inline get_lifecycle_policies(aws::AWSConfig=default_aws_config(); args...) = get_lifecycle_policies(aws, args)

@inline get_lifecycle_policies(aws::AWSConfig, args) = AWSCore.Services.dlm(aws, "GET", "/policies", args)

@inline get_lifecycle_policies(args) = get_lifecycle_policies(default_aws_config(), args)


"""
    using AWSSDK.DLM.get_lifecycle_policy
    get_lifecycle_policy([::AWSConfig], arguments::Dict)
    get_lifecycle_policy([::AWSConfig]; policyId=)

    using AWSCore.Services.dlm
    dlm([::AWSConfig], "GET", "/policies/{policyId}/", arguments::Dict)
    dlm([::AWSConfig], "GET", "/policies/{policyId}/", policyId=)

# GetLifecyclePolicy Operation

Gets detailed information about the specified lifecycle policy.

# Arguments

## `policyId = ::String` -- *Required*
The identifier of the lifecycle policy.




# Returns

`GetLifecyclePolicyResponse`

# Exceptions

`ResourceNotFoundException`, `InternalServerException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePolicy)
"""
@inline get_lifecycle_policy(aws::AWSConfig=default_aws_config(); args...) = get_lifecycle_policy(aws, args)

@inline get_lifecycle_policy(aws::AWSConfig, args) = AWSCore.Services.dlm(aws, "GET", "/policies/{policyId}/", args)

@inline get_lifecycle_policy(args) = get_lifecycle_policy(default_aws_config(), args)


"""
    using AWSSDK.DLM.update_lifecycle_policy
    update_lifecycle_policy([::AWSConfig], arguments::Dict)
    update_lifecycle_policy([::AWSConfig]; policyId=, <keyword arguments>)

    using AWSCore.Services.dlm
    dlm([::AWSConfig], "PATCH", "/policies/{policyId}", arguments::Dict)
    dlm([::AWSConfig], "PATCH", "/policies/{policyId}", policyId=, <keyword arguments>)

# UpdateLifecyclePolicy Operation

Updates the specified lifecycle policy.

# Arguments

## `policyId = ::String` -- *Required*
The identifier of the lifecycle policy.


## `ExecutionRoleArn = ::String`
The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by the lifecycle policy.


## `State = "ENABLED" or "DISABLED"`
The desired activation state of the lifecycle policy after creation.


## `Description = ::String`
A description of the lifecycle policy.


## `PolicyDetails = [ ... ]`
The configuration of the lifecycle policy.

Target tags cannot be re-used across policies.
```
 PolicyDetails = [
        "ResourceTypes" =>  ["VOLUME", ...],
        "TargetTags" =>  [[
            "Key" => <required> ::String,
            "Value" => <required> ::String
        ], ...],
        "Schedules" =>  [[
            "Name" =>  ::String,
            "TagsToAdd" =>  [[
                "Key" => <required> ::String,
                "Value" => <required> ::String
            ], ...],
            "CreateRule" =>  [
                "Interval" => <required> ::Int,
                "IntervalUnit" => <required> "HOURS",
                "Times" =>  [::String, ...]
            ],
            "RetainRule" =>  ["Count" => <required> ::Int]
        ], ...]
    ]
```



# Returns

`UpdateLifecyclePolicyResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `InternalServerException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/UpdateLifecyclePolicy)
"""
@inline update_lifecycle_policy(aws::AWSConfig=default_aws_config(); args...) = update_lifecycle_policy(aws, args)

@inline update_lifecycle_policy(aws::AWSConfig, args) = AWSCore.Services.dlm(aws, "PATCH", "/policies/{policyId}", args)

@inline update_lifecycle_policy(args) = update_lifecycle_policy(default_aws_config(), args)




end # module DLM


#==============================================================================#
# End of file
#==============================================================================#
