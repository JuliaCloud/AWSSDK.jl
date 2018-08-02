#==============================================================================#
# Cloud9.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/cloud9-2017-09-23.normal.json
#==============================================================================#

__precompile__()

module Cloud9

using AWSCore


"""
    using AWSSDK.Cloud9.create_environment_ec2
    create_environment_ec2([::AWSConfig], arguments::Dict)
    create_environment_ec2([::AWSConfig]; name=, instanceType=, <keyword arguments>)

    using AWSCore.Services.cloud9
    cloud9([::AWSConfig], "CreateEnvironmentEC2", arguments::Dict)
    cloud9([::AWSConfig], "CreateEnvironmentEC2", name=, instanceType=, <keyword arguments>)

# CreateEnvironmentEC2 Operation

Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.

# Arguments

## `name = ::String` -- *Required*
The name of the environment to create.

This name is visible to other AWS IAM users in the same AWS account.


## `description = ::String`
The description of the environment to create.


## `clientRequestToken = ::String`
A unique, case-sensitive string that helps AWS Cloud9 to ensure this operation completes no more than one time.

For more information, see [Client Tokens](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html) in the *Amazon EC2 API Reference*.


## `instanceType = ::String` -- *Required*
The type of instance to connect to the environment (for example, `t2.micro`).


## `subnetId = ::String`
The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance.


## `automaticStopTimeMinutes = ::Int`
The number of minutes until the running instance is shut down after the environment has last been used.


## `ownerArn = ::String`
The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any AWS IAM principal. If this value is not specified, the ARN defaults to this environment's creator.




# Returns

`CreateEnvironmentEC2Result`

# Exceptions

`BadRequestException`, `ConflictException`, `NotFoundException`, `ForbiddenException`, `TooManyRequestsException`, `LimitExceededException` or `InternalServerErrorException`.

# Example: CreateEnvironmentEC2



Input:
```
[
    "name" => "my-demo-environment",
    "automaticStopTimeMinutes" => 60,
    "description" => "This is my demonstration environment.",
    "instanceType" => "t2.micro",
    "ownerArn" => "arn:aws:iam::123456789012:user/MyDemoUser",
    "subnetId" => "subnet-1fab8aEX"
]
```

Output:
```
Dict(
    "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/CreateEnvironmentEC2)
"""
@inline create_environment_ec2(aws::AWSConfig=default_aws_config(); args...) = create_environment_ec2(aws, args)

@inline create_environment_ec2(aws::AWSConfig, args) = AWSCore.Services.cloud9(aws, "CreateEnvironmentEC2", args)

@inline create_environment_ec2(args) = create_environment_ec2(default_aws_config(), args)


"""
    using AWSSDK.Cloud9.create_environment_membership
    create_environment_membership([::AWSConfig], arguments::Dict)
    create_environment_membership([::AWSConfig]; environmentId=, userArn=, permissions=)

    using AWSCore.Services.cloud9
    cloud9([::AWSConfig], "CreateEnvironmentMembership", arguments::Dict)
    cloud9([::AWSConfig], "CreateEnvironmentMembership", environmentId=, userArn=, permissions=)

# CreateEnvironmentMembership Operation

Adds an environment member to an AWS Cloud9 development environment.

# Arguments

## `environmentId = ::String` -- *Required*
The ID of the environment that contains the environment member you want to add.


## `userArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the environment member you want to add.


## `permissions = "read-write" or "read-only"` -- *Required*
The type of environment member permissions you want to associate with this environment member. Available values include:

*   `read-only`: Has read-only access to the environment.

*   `read-write`: Has read-write access to the environment.




# Returns

`CreateEnvironmentMembershipResult`

# Exceptions

`BadRequestException`, `ConflictException`, `NotFoundException`, `ForbiddenException`, `TooManyRequestsException`, `LimitExceededException` or `InternalServerErrorException`.

# Example: CreateEnvironmentMembership



Input:
```
[
    "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX",
    "permissions" => "read-write",
    "userArn" => "arn:aws:iam::123456789012:user/AnotherDemoUser"
]
```

Output:
```
Dict(
    "membership" => Dict(
        "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX",
        "permissions" => "read-write",
        "userArn" => "arn:aws:iam::123456789012:user/AnotherDemoUser",
        "userId" => "AIDAJ3BA6O2FMJWCWXHEX"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/CreateEnvironmentMembership)
"""
@inline create_environment_membership(aws::AWSConfig=default_aws_config(); args...) = create_environment_membership(aws, args)

@inline create_environment_membership(aws::AWSConfig, args) = AWSCore.Services.cloud9(aws, "CreateEnvironmentMembership", args)

@inline create_environment_membership(args) = create_environment_membership(default_aws_config(), args)


"""
    using AWSSDK.Cloud9.delete_environment
    delete_environment([::AWSConfig], arguments::Dict)
    delete_environment([::AWSConfig]; environmentId=)

    using AWSCore.Services.cloud9
    cloud9([::AWSConfig], "DeleteEnvironment", arguments::Dict)
    cloud9([::AWSConfig], "DeleteEnvironment", environmentId=)

# DeleteEnvironment Operation

Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.

# Arguments

## `environmentId = ::String` -- *Required*
The ID of the environment to delete.




# Returns

`DeleteEnvironmentResult`

# Exceptions

`BadRequestException`, `ConflictException`, `NotFoundException`, `ForbiddenException`, `TooManyRequestsException`, `LimitExceededException` or `InternalServerErrorException`.

# Example: DeleteEnvironment



Input:
```
[
    "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironment)
"""
@inline delete_environment(aws::AWSConfig=default_aws_config(); args...) = delete_environment(aws, args)

@inline delete_environment(aws::AWSConfig, args) = AWSCore.Services.cloud9(aws, "DeleteEnvironment", args)

@inline delete_environment(args) = delete_environment(default_aws_config(), args)


"""
    using AWSSDK.Cloud9.delete_environment_membership
    delete_environment_membership([::AWSConfig], arguments::Dict)
    delete_environment_membership([::AWSConfig]; environmentId=, userArn=)

    using AWSCore.Services.cloud9
    cloud9([::AWSConfig], "DeleteEnvironmentMembership", arguments::Dict)
    cloud9([::AWSConfig], "DeleteEnvironmentMembership", environmentId=, userArn=)

# DeleteEnvironmentMembership Operation

Deletes an environment member from an AWS Cloud9 development environment.

# Arguments

## `environmentId = ::String` -- *Required*
The ID of the environment to delete the environment member from.


## `userArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the environment member to delete from the environment.




# Returns

`DeleteEnvironmentMembershipResult`

# Exceptions

`BadRequestException`, `ConflictException`, `NotFoundException`, `ForbiddenException`, `TooManyRequestsException`, `LimitExceededException` or `InternalServerErrorException`.

# Example: DeleteEnvironmentMembership



Input:
```
[
    "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX",
    "userArn" => "arn:aws:iam::123456789012:user/AnotherDemoUser"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironmentMembership)
"""
@inline delete_environment_membership(aws::AWSConfig=default_aws_config(); args...) = delete_environment_membership(aws, args)

@inline delete_environment_membership(aws::AWSConfig, args) = AWSCore.Services.cloud9(aws, "DeleteEnvironmentMembership", args)

@inline delete_environment_membership(args) = delete_environment_membership(default_aws_config(), args)


"""
    using AWSSDK.Cloud9.describe_environment_memberships
    describe_environment_memberships([::AWSConfig], arguments::Dict)
    describe_environment_memberships([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloud9
    cloud9([::AWSConfig], "DescribeEnvironmentMemberships", arguments::Dict)
    cloud9([::AWSConfig], "DescribeEnvironmentMemberships", <keyword arguments>)

# DescribeEnvironmentMemberships Operation

Gets information about environment members for an AWS Cloud9 development environment.

# Arguments

## `userArn = ::String`
The Amazon Resource Name (ARN) of an individual environment member to get information about. If no value is specified, information about all environment members are returned.


## `environmentId = ::String`
The ID of the environment to get environment member information about.


## `permissions = ["owner", "read-write" or "read-only", ...]`
The type of environment member permissions to get information about. Available values include:

*   `owner`: Owns the environment.

*   `read-only`: Has read-only access to the environment.

*   `read-write`: Has read-write access to the environment.

If no value is specified, information about all environment members are returned.


## `nextToken = ::String`
During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a *next token*. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.


## `maxResults = ::Int`
The maximum number of environment members to get information about.




# Returns

`DescribeEnvironmentMembershipsResult`

# Exceptions

`BadRequestException`, `ConflictException`, `NotFoundException`, `ForbiddenException`, `TooManyRequestsException`, `LimitExceededException` or `InternalServerErrorException`.

# Example: DescribeEnvironmentMemberships1

The following example gets information about all of the environment members for the specified AWS Cloud9 development environment.

Input:
```
[
    "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX"
]
```

Output:
```
Dict(
    "memberships" => [
        Dict(
            "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX",
            "permissions" => "read-write",
            "userArn" => "arn:aws:iam::123456789012:user/AnotherDemoUser",
            "userId" => "AIDAJ3BA6O2FMJWCWXHEX"
        ),
        Dict(
            "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX",
            "permissions" => "owner",
            "userArn" => "arn:aws:iam::123456789012:user/MyDemoUser",
            "userId" => "AIDAJNUEDQAQWFELJDLEX"
        )
    ]
)
```

# Example: DescribeEnvironmentMemberships2

The following example gets information about the owner of the specified AWS Cloud9 development environment.

Input:
```
[
    "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX",
    "permissions" => [
        "owner"
    ]
]
```

Output:
```
Dict(
    "memberships" => [
        Dict(
            "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX",
            "permissions" => "owner",
            "userArn" => "arn:aws:iam::123456789012:user/MyDemoUser",
            "userId" => "AIDAJNUEDQAQWFELJDLEX"
        )
    ]
)
```

# Example: DescribeEnvironmentMemberships3

The following example gets AWS Cloud9 development environment membership information for the specified user.

Input:
```
[
    "userArn" => "arn:aws:iam::123456789012:user/MyDemoUser"
]
```

Output:
```
Dict(
    "memberships" => [
        Dict(
            "environmentId" => "10a75714bd494714929e7f5ec4125aEX",
            "lastAccess" => "2018-01-19T11:06:13Z",
            "permissions" => "owner",
            "userArn" => "arn:aws:iam::123456789012:user/MyDemoUser",
            "userId" => "AIDAJNUEDQAQWFELJDLEX"
        ),
        Dict(
            "environmentId" => "12bfc3cd537f41cb9776f8af5525c9EX",
            "lastAccess" => "2018-01-19T11:39:19Z",
            "permissions" => "owner",
            "userArn" => "arn:aws:iam::123456789012:user/MyDemoUser",
            "userId" => "AIDAJNUEDQAQWFELJDLEX"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentMemberships)
"""
@inline describe_environment_memberships(aws::AWSConfig=default_aws_config(); args...) = describe_environment_memberships(aws, args)

@inline describe_environment_memberships(aws::AWSConfig, args) = AWSCore.Services.cloud9(aws, "DescribeEnvironmentMemberships", args)

@inline describe_environment_memberships(args) = describe_environment_memberships(default_aws_config(), args)


"""
    using AWSSDK.Cloud9.describe_environment_status
    describe_environment_status([::AWSConfig], arguments::Dict)
    describe_environment_status([::AWSConfig]; environmentId=)

    using AWSCore.Services.cloud9
    cloud9([::AWSConfig], "DescribeEnvironmentStatus", arguments::Dict)
    cloud9([::AWSConfig], "DescribeEnvironmentStatus", environmentId=)

# DescribeEnvironmentStatus Operation

Gets status information for an AWS Cloud9 development environment.

# Arguments

## `environmentId = ::String` -- *Required*
The ID of the environment to get status information about.




# Returns

`DescribeEnvironmentStatusResult`

# Exceptions

`BadRequestException`, `ConflictException`, `NotFoundException`, `ForbiddenException`, `TooManyRequestsException`, `LimitExceededException` or `InternalServerErrorException`.

# Example: DescribeEnvironmentStatus



Input:
```
[
    "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX"
]
```

Output:
```
Dict(
    "message" => "Environment is ready to use",
    "status" => "ready"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentStatus)
"""
@inline describe_environment_status(aws::AWSConfig=default_aws_config(); args...) = describe_environment_status(aws, args)

@inline describe_environment_status(aws::AWSConfig, args) = AWSCore.Services.cloud9(aws, "DescribeEnvironmentStatus", args)

@inline describe_environment_status(args) = describe_environment_status(default_aws_config(), args)


"""
    using AWSSDK.Cloud9.describe_environments
    describe_environments([::AWSConfig], arguments::Dict)
    describe_environments([::AWSConfig]; environmentIds=)

    using AWSCore.Services.cloud9
    cloud9([::AWSConfig], "DescribeEnvironments", arguments::Dict)
    cloud9([::AWSConfig], "DescribeEnvironments", environmentIds=)

# DescribeEnvironments Operation

Gets information about AWS Cloud9 development environments.

# Arguments

## `environmentIds = [::String, ...]` -- *Required*
The IDs of individual environments to get information about.




# Returns

`DescribeEnvironmentsResult`

# Exceptions

`BadRequestException`, `ConflictException`, `NotFoundException`, `ForbiddenException`, `TooManyRequestsException`, `LimitExceededException` or `InternalServerErrorException`.

# Example: DescribeEnvironments



Input:
```
[
    "environmentIds" => [
        "8d9967e2f0624182b74e7690ad69ebEX",
        "349c86d4579e4e7298d500ff57a6b2EX"
    ]
]
```

Output:
```
Dict(
    "environments" => [
        Dict(
            "name" => "my-demo-environment",
            "type" => "ec2",
            "arn" => "arn:aws:cloud9:us-east-2:123456789012:environment:8d9967e2f0624182b74e7690ad69ebEX",
            "description" => "This is my demonstration environment.",
            "id" => "8d9967e2f0624182b74e7690ad69ebEX",
            "ownerArn" => "arn:aws:iam::123456789012:user/MyDemoUser"
        ),
        Dict(
            "name" => "another-demo-environment",
            "type" => "ssh",
            "arn" => "arn:aws:cloud9:us-east-2:123456789012:environment:349c86d4579e4e7298d500ff57a6b2EX",
            "id" => "349c86d4579e4e7298d500ff57a6b2EX",
            "ownerArn" => "arn:aws:sts::123456789012:assumed-role/AnotherDemoUser/AnotherDemoUser"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironments)
"""
@inline describe_environments(aws::AWSConfig=default_aws_config(); args...) = describe_environments(aws, args)

@inline describe_environments(aws::AWSConfig, args) = AWSCore.Services.cloud9(aws, "DescribeEnvironments", args)

@inline describe_environments(args) = describe_environments(default_aws_config(), args)


"""
    using AWSSDK.Cloud9.list_environments
    list_environments([::AWSConfig], arguments::Dict)
    list_environments([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloud9
    cloud9([::AWSConfig], "ListEnvironments", arguments::Dict)
    cloud9([::AWSConfig], "ListEnvironments", <keyword arguments>)

# ListEnvironments Operation

Gets a list of AWS Cloud9 development environment identifiers.

# Arguments

## `nextToken = ::String`
During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a *next token*. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.


## `maxResults = ::Int`
The maximum number of environments to get identifiers for.




# Returns

`ListEnvironmentsResult`

# Exceptions

`BadRequestException`, `ConflictException`, `NotFoundException`, `ForbiddenException`, `TooManyRequestsException`, `LimitExceededException` or `InternalServerErrorException`.

# Example: ListEnvironments



Input:
```
[

]
```

Output:
```
Dict(
    "environmentIds" => [
        "349c86d4579e4e7298d500ff57a6b2EX",
        "45a3da47af0840f2b0c0824f5ee232EX"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/ListEnvironments)
"""
@inline list_environments(aws::AWSConfig=default_aws_config(); args...) = list_environments(aws, args)

@inline list_environments(aws::AWSConfig, args) = AWSCore.Services.cloud9(aws, "ListEnvironments", args)

@inline list_environments(args) = list_environments(default_aws_config(), args)


"""
    using AWSSDK.Cloud9.update_environment
    update_environment([::AWSConfig], arguments::Dict)
    update_environment([::AWSConfig]; environmentId=, <keyword arguments>)

    using AWSCore.Services.cloud9
    cloud9([::AWSConfig], "UpdateEnvironment", arguments::Dict)
    cloud9([::AWSConfig], "UpdateEnvironment", environmentId=, <keyword arguments>)

# UpdateEnvironment Operation

Changes the settings of an existing AWS Cloud9 development environment.

# Arguments

## `environmentId = ::String` -- *Required*
The ID of the environment to change settings.


## `name = ::String`
A replacement name for the environment.


## `description = ::String`
Any new or replacement description for the environment.




# Returns

`UpdateEnvironmentResult`

# Exceptions

`BadRequestException`, `ConflictException`, `NotFoundException`, `ForbiddenException`, `TooManyRequestsException`, `LimitExceededException` or `InternalServerErrorException`.

# Example: UpdateEnvironment



Input:
```
[
    "name" => "my-changed-demo-environment",
    "description" => "This is my changed demonstration environment.",
    "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironment)
"""
@inline update_environment(aws::AWSConfig=default_aws_config(); args...) = update_environment(aws, args)

@inline update_environment(aws::AWSConfig, args) = AWSCore.Services.cloud9(aws, "UpdateEnvironment", args)

@inline update_environment(args) = update_environment(default_aws_config(), args)


"""
    using AWSSDK.Cloud9.update_environment_membership
    update_environment_membership([::AWSConfig], arguments::Dict)
    update_environment_membership([::AWSConfig]; environmentId=, userArn=, permissions=)

    using AWSCore.Services.cloud9
    cloud9([::AWSConfig], "UpdateEnvironmentMembership", arguments::Dict)
    cloud9([::AWSConfig], "UpdateEnvironmentMembership", environmentId=, userArn=, permissions=)

# UpdateEnvironmentMembership Operation

Changes the settings of an existing environment member for an AWS Cloud9 development environment.

# Arguments

## `environmentId = ::String` -- *Required*
The ID of the environment for the environment member whose settings you want to change.


## `userArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the environment member whose settings you want to change.


## `permissions = "read-write" or "read-only"` -- *Required*
The replacement type of environment member permissions you want to associate with this environment member. Available values include:

*   `read-only`: Has read-only access to the environment.

*   `read-write`: Has read-write access to the environment.




# Returns

`UpdateEnvironmentMembershipResult`

# Exceptions

`BadRequestException`, `ConflictException`, `NotFoundException`, `ForbiddenException`, `TooManyRequestsException`, `LimitExceededException` or `InternalServerErrorException`.

# Example: UpdateEnvironmentMembership



Input:
```
[
    "environmentId" => "8d9967e2f0624182b74e7690ad69ebEX",
    "permissions" => "read-only",
    "userArn" => "arn:aws:iam::123456789012:user/AnotherDemoUser"
]
```

Output:
```
Dict(
    "membership" => Dict(
        "environmentId" => "8d9967e2f0624182b74e7690ad69eb31",
        "permissions" => "read-only",
        "userArn" => "arn:aws:iam::123456789012:user/AnotherDemoUser",
        "userId" => "AIDAJ3BA6O2FMJWCWXHEX"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironmentMembership)
"""
@inline update_environment_membership(aws::AWSConfig=default_aws_config(); args...) = update_environment_membership(aws, args)

@inline update_environment_membership(aws::AWSConfig, args) = AWSCore.Services.cloud9(aws, "UpdateEnvironmentMembership", args)

@inline update_environment_membership(args) = update_environment_membership(default_aws_config(), args)




end # module Cloud9


#==============================================================================#
# End of file
#==============================================================================#
