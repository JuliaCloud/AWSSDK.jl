#==============================================================================#
# IAM.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/iam-2010-05-08.normal.json
#==============================================================================#

__precompile__()

module IAM

using AWSCore


"""
    using AWSSDK.IAM.add_client_idto_open_idconnect_provider
    add_client_idto_open_idconnect_provider([::AWSConfig], arguments::Dict)
    add_client_idto_open_idconnect_provider([::AWSConfig]; OpenIDConnectProviderArn=, ClientID=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "AddClientIDToOpenIDConnectProvider", arguments::Dict)
    iam([::AWSConfig], "AddClientIDToOpenIDConnectProvider", OpenIDConnectProviderArn=, ClientID=)

# AddClientIDToOpenIDConnectProvider Operation

Adds a new client ID (also known as audience) to the list of client IDs already registered for the specified IAM OpenID Connect (OIDC) provider resource.

This operation is idempotent; it does not fail or return an error if you add an existing client ID to the provider.

# Arguments

## `OpenIDConnectProviderArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC) provider resource to add the client ID to. You can get a list of OIDC provider ARNs by using the [ListOpenIDConnectProviders](@ref) operation.


## `ClientID = ::String` -- *Required*
The client ID (also known as audience) to add to the IAM OpenID Connect provider resource.




# Exceptions

`InvalidInputException`, `NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To add a client ID (audience) to an Open-ID Connect (OIDC) provider

The following add-client-id-to-open-id-connect-provider command adds the client ID my-application-ID to the OIDC provider named server.example.com:

Input:
```
[
    "ClientID" => "my-application-ID",
    "OpenIDConnectProviderArn" => "arn:aws:iam::123456789012:oidc-provider/server.example.com"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AddClientIDToOpenIDConnectProvider)
"""
@inline add_client_idto_open_idconnect_provider(aws::AWSConfig=default_aws_config(); args...) = add_client_idto_open_idconnect_provider(aws, args)

@inline add_client_idto_open_idconnect_provider(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "AddClientIDToOpenIDConnectProvider", args)

@inline add_client_idto_open_idconnect_provider(args) = add_client_idto_open_idconnect_provider(default_aws_config(), args)


"""
    using AWSSDK.IAM.add_role_to_instance_profile
    add_role_to_instance_profile([::AWSConfig], arguments::Dict)
    add_role_to_instance_profile([::AWSConfig]; InstanceProfileName=, RoleName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "AddRoleToInstanceProfile", arguments::Dict)
    iam([::AWSConfig], "AddRoleToInstanceProfile", InstanceProfileName=, RoleName=)

# AddRoleToInstanceProfile Operation

Adds the specified IAM role to the specified instance profile. An instance profile can contain only one role, and this limit cannot be increased. You can remove the existing role and then add a different role to an instance profile. You must then wait for the change to appear across all of AWS because of [eventual consistency](https://en.wikipedia.org/wiki/Eventual_consistency). To force the change, you must [disassociate the instance profile](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIamInstanceProfile.html) and then [associate the instance profile](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AssociateIamInstanceProfile.html), or you can stop your instance and then restart it.

**Note**
> The caller of this API must be granted the `PassRole` permission on the IAM role by a permission policy.

For more information about roles, go to [Working with Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html). For more information about instance profiles, go to [About Instance Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).

# Arguments

## `InstanceProfileName = ::String` -- *Required*
The name of the instance profile to update.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `RoleName = ::String` -- *Required*
The name of the role to add.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `EntityAlreadyExistsException`, `LimitExceededException`, `UnmodifiableEntityException` or `ServiceFailureException`.

# Example: To add a role to an instance profile

The following command adds the role named S3Access to the instance profile named Webserver:

Input:
```
[
    "InstanceProfileName" => "Webserver",
    "RoleName" => "S3Access"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AddRoleToInstanceProfile)
"""
@inline add_role_to_instance_profile(aws::AWSConfig=default_aws_config(); args...) = add_role_to_instance_profile(aws, args)

@inline add_role_to_instance_profile(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "AddRoleToInstanceProfile", args)

@inline add_role_to_instance_profile(args) = add_role_to_instance_profile(default_aws_config(), args)


"""
    using AWSSDK.IAM.add_user_to_group
    add_user_to_group([::AWSConfig], arguments::Dict)
    add_user_to_group([::AWSConfig]; GroupName=, UserName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "AddUserToGroup", arguments::Dict)
    iam([::AWSConfig], "AddUserToGroup", GroupName=, UserName=)

# AddUserToGroup Operation

Adds the specified user to the specified group.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the group to update.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `UserName = ::String` -- *Required*
The name of the user to add.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To add a user to an IAM group

The following command adds an IAM user named Bob to the IAM group named Admins:

Input:
```
[
    "GroupName" => "Admins",
    "UserName" => "Bob"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AddUserToGroup)
"""
@inline add_user_to_group(aws::AWSConfig=default_aws_config(); args...) = add_user_to_group(aws, args)

@inline add_user_to_group(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "AddUserToGroup", args)

@inline add_user_to_group(args) = add_user_to_group(default_aws_config(), args)


"""
    using AWSSDK.IAM.attach_group_policy
    attach_group_policy([::AWSConfig], arguments::Dict)
    attach_group_policy([::AWSConfig]; GroupName=, PolicyArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "AttachGroupPolicy", arguments::Dict)
    iam([::AWSConfig], "AttachGroupPolicy", GroupName=, PolicyArn=)

# AttachGroupPolicy Operation

Attaches the specified managed policy to the specified IAM group.

You use this API to attach a managed policy to a group. To embed an inline policy in a group, use [PutGroupPolicy](@ref).

For more information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `GroupName = ::String` -- *Required*
The name (friendly name, not ARN) of the group to attach the policy to.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM policy you want to attach.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.




# Exceptions

`NoSuchEntityException`, `LimitExceededException`, `InvalidInputException`, `PolicyNotAttachableException` or `ServiceFailureException`.

# Example: To attach a managed policy to an IAM group

The following command attaches the AWS managed policy named ReadOnlyAccess to the IAM group named Finance.

Input:
```
[
    "GroupName" => "Finance",
    "PolicyArn" => "arn:aws:iam::aws:policy/ReadOnlyAccess"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachGroupPolicy)
"""
@inline attach_group_policy(aws::AWSConfig=default_aws_config(); args...) = attach_group_policy(aws, args)

@inline attach_group_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "AttachGroupPolicy", args)

@inline attach_group_policy(args) = attach_group_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.attach_role_policy
    attach_role_policy([::AWSConfig], arguments::Dict)
    attach_role_policy([::AWSConfig]; RoleName=, PolicyArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "AttachRolePolicy", arguments::Dict)
    iam([::AWSConfig], "AttachRolePolicy", RoleName=, PolicyArn=)

# AttachRolePolicy Operation

Attaches the specified managed policy to the specified IAM role. When you attach a managed policy to a role, the managed policy becomes part of the role's permission (access) policy.

**Note**
> You cannot use a managed policy as the role's trust policy. The role's trust policy is created at the same time as the role, using [CreateRole](@ref). You can update a role's trust policy using [UpdateAssumeRolePolicy](@ref).

Use this API to attach a *managed* policy to a role. To embed an inline policy in a role, use [PutRolePolicy](@ref). For more information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `RoleName = ::String` -- *Required*
The name (friendly name, not ARN) of the role to attach the policy to.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM policy you want to attach.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.




# Exceptions

`NoSuchEntityException`, `LimitExceededException`, `InvalidInputException`, `UnmodifiableEntityException`, `PolicyNotAttachableException` or `ServiceFailureException`.

# Example: To attach a managed policy to an IAM role

The following command attaches the AWS managed policy named ReadOnlyAccess to the IAM role named ReadOnlyRole.

Input:
```
[
    "PolicyArn" => "arn:aws:iam::aws:policy/ReadOnlyAccess",
    "RoleName" => "ReadOnlyRole"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachRolePolicy)
"""
@inline attach_role_policy(aws::AWSConfig=default_aws_config(); args...) = attach_role_policy(aws, args)

@inline attach_role_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "AttachRolePolicy", args)

@inline attach_role_policy(args) = attach_role_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.attach_user_policy
    attach_user_policy([::AWSConfig], arguments::Dict)
    attach_user_policy([::AWSConfig]; UserName=, PolicyArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "AttachUserPolicy", arguments::Dict)
    iam([::AWSConfig], "AttachUserPolicy", UserName=, PolicyArn=)

# AttachUserPolicy Operation

Attaches the specified managed policy to the specified user.

You use this API to attach a *managed* policy to a user. To embed an inline policy in a user, use [PutUserPolicy](@ref).

For more information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name (friendly name, not ARN) of the IAM user to attach the policy to.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM policy you want to attach.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.




# Exceptions

`NoSuchEntityException`, `LimitExceededException`, `InvalidInputException`, `PolicyNotAttachableException` or `ServiceFailureException`.

# Example: To attach a managed policy to an IAM user

The following command attaches the AWS managed policy named AdministratorAccess to the IAM user named Alice.

Input:
```
[
    "PolicyArn" => "arn:aws:iam::aws:policy/AdministratorAccess",
    "UserName" => "Alice"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachUserPolicy)
"""
@inline attach_user_policy(aws::AWSConfig=default_aws_config(); args...) = attach_user_policy(aws, args)

@inline attach_user_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "AttachUserPolicy", args)

@inline attach_user_policy(args) = attach_user_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.change_password
    change_password([::AWSConfig], arguments::Dict)
    change_password([::AWSConfig]; OldPassword=, NewPassword=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ChangePassword", arguments::Dict)
    iam([::AWSConfig], "ChangePassword", OldPassword=, NewPassword=)

# ChangePassword Operation

Changes the password of the IAM user who is calling this operation. The AWS account root user password is not affected by this operation.

To change the password for a different user, see [UpdateLoginProfile](@ref). For more information about modifying passwords, see [Managing Passwords](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html) in the *IAM User Guide*.

# Arguments

## `OldPassword = ::String` -- *Required*
The IAM user's current password.


## `NewPassword = ::String` -- *Required*
The new password. The new password must conform to the AWS account's password policy, if one exists.

The [regex pattern](http://wikipedia.org/wiki/regex) that is used to validate this parameter is a string of characters. That string can include almost any printable ASCII character from the space (\\u0020) through the end of the ASCII character range (\\u00FF). You can also include the tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D) characters. Any of these characters are valid in a password. However, many tools, such as the AWS Management Console, might restrict the ability to type certain characters because they have special meaning within that tool.




# Exceptions

`NoSuchEntityException`, `InvalidUserTypeException`, `LimitExceededException`, `EntityTemporarilyUnmodifiableException`, `PasswordPolicyViolationException` or `ServiceFailureException`.

# Example: To change the password for your IAM user

The following command changes the password for the current IAM user.

Input:
```
[
    "NewPassword" => "]35d/{pB9Fo9wJ",
    "OldPassword" => "3s0K_;xh4~8XXI"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ChangePassword)
"""
@inline change_password(aws::AWSConfig=default_aws_config(); args...) = change_password(aws, args)

@inline change_password(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ChangePassword", args)

@inline change_password(args) = change_password(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_access_key
    create_access_key([::AWSConfig], arguments::Dict)
    create_access_key([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreateAccessKey", arguments::Dict)
    iam([::AWSConfig], "CreateAccessKey", <keyword arguments>)

# CreateAccessKey Operation

Creates a new AWS secret access key and corresponding AWS access key ID for the specified user. The default status for new keys is `Active`.

If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. Because this operation works for access keys under the AWS account, you can use this operation to manage AWS account root user credentials. This is true even if the AWS account has no associated users.

For information about limits on the number of keys you can create, see [Limitations on IAM Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *IAM User Guide*.

**Important**
> To ensure the security of your AWS account, the secret access key is accessible only during key and user creation. You must save the key (for example, in a text file) if you want to be able to access it again. If a secret key is lost, you can delete the access keys for the associated user and then create new keys.

# Arguments

## `UserName = ::String`
The name of the IAM user that the new key will belong to.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Returns

`CreateAccessKeyResponse`

# Exceptions

`NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To create an access key for an IAM user

The following command creates an access key (access key ID and secret access key) for the IAM user named Bob.

Input:
```
[
    "UserName" => "Bob"
]
```

Output:
```
Dict(
    "AccessKey" => Dict(
        "AccessKeyId" => "AKIAIOSFODNN7EXAMPLE",
        "CreateDate" => "2015-03-09T18:39:23.411Z",
        "SecretAccessKey" => "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY",
        "Status" => "Active",
        "UserName" => "Bob"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateAccessKey)
"""
@inline create_access_key(aws::AWSConfig=default_aws_config(); args...) = create_access_key(aws, args)

@inline create_access_key(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreateAccessKey", args)

@inline create_access_key(args) = create_access_key(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_account_alias
    create_account_alias([::AWSConfig], arguments::Dict)
    create_account_alias([::AWSConfig]; AccountAlias=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreateAccountAlias", arguments::Dict)
    iam([::AWSConfig], "CreateAccountAlias", AccountAlias=)

# CreateAccountAlias Operation

Creates an alias for your AWS account. For information about using an AWS account alias, see [Using an Alias for Your AWS Account ID](http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html) in the *IAM User Guide*.

# Arguments

## `AccountAlias = ::String` -- *Required*
The account alias to create.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have two dashes in a row.




# Exceptions

`EntityAlreadyExistsException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To create an account alias

The following command associates the alias examplecorp to your AWS account.

Input:
```
[
    "AccountAlias" => "examplecorp"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateAccountAlias)
"""
@inline create_account_alias(aws::AWSConfig=default_aws_config(); args...) = create_account_alias(aws, args)

@inline create_account_alias(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreateAccountAlias", args)

@inline create_account_alias(args) = create_account_alias(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_group
    create_group([::AWSConfig], arguments::Dict)
    create_group([::AWSConfig]; GroupName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreateGroup", arguments::Dict)
    iam([::AWSConfig], "CreateGroup", GroupName=, <keyword arguments>)

# CreateGroup Operation

Creates a new group.

For information about the number of groups you can create, see [Limitations on IAM Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *IAM User Guide*.

# Arguments

## `Path = ::String`
The path to the group. For more information about paths, see [IAM Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the *IAM User Guide*.

This parameter is optional. If it is not included, it defaults to a slash (/).

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `GroupName = ::String` -- *Required*
The name of the group to create. Do not include the path in this value.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-. The group name must be unique within the account. Group names are not distinguished by case. For example, you cannot create groups named both "ADMINS" and "admins".




# Returns

`CreateGroupResponse`

# Exceptions

`LimitExceededException`, `EntityAlreadyExistsException`, `NoSuchEntityException` or `ServiceFailureException`.

# Example: To create an IAM group

The following command creates an IAM group named Admins.

Input:
```
[
    "GroupName" => "Admins"
]
```

Output:
```
Dict(
    "Group" => Dict(
        "Arn" => "arn:aws:iam::123456789012:group/Admins",
        "CreateDate" => "2015-03-09T20:30:24.940Z",
        "GroupId" => "AIDGPMS9RO4H3FEXAMPLE",
        "GroupName" => "Admins",
        "Path" => "/"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateGroup)
"""
@inline create_group(aws::AWSConfig=default_aws_config(); args...) = create_group(aws, args)

@inline create_group(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreateGroup", args)

@inline create_group(args) = create_group(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_instance_profile
    create_instance_profile([::AWSConfig], arguments::Dict)
    create_instance_profile([::AWSConfig]; InstanceProfileName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreateInstanceProfile", arguments::Dict)
    iam([::AWSConfig], "CreateInstanceProfile", InstanceProfileName=, <keyword arguments>)

# CreateInstanceProfile Operation

Creates a new instance profile. For information about instance profiles, go to [About Instance Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).

For information about the number of instance profiles you can create, see [Limitations on IAM Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *IAM User Guide*.

# Arguments

## `InstanceProfileName = ::String` -- *Required*
The name of the instance profile to create.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Path = ::String`
The path to the instance profile. For more information about paths, see [IAM Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the *IAM User Guide*.

This parameter is optional. If it is not included, it defaults to a slash (/).

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.




# Returns

`CreateInstanceProfileResponse`

# Exceptions

`EntityAlreadyExistsException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To create an instance profile

The following command creates an instance profile named Webserver that is ready to have a role attached and then be associated with an EC2 instance.

Input:
```
[
    "InstanceProfileName" => "Webserver"
]
```

Output:
```
Dict(
    "InstanceProfile" => Dict(
        "Arn" => "arn:aws:iam::123456789012:instance-profile/Webserver",
        "CreateDate" => "2015-03-09T20:33:19.626Z",
        "InstanceProfileId" => "AIPAJMBYC7DLSPEXAMPLE",
        "InstanceProfileName" => "Webserver",
        "Path" => "/",
        "Roles" => [

        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateInstanceProfile)
"""
@inline create_instance_profile(aws::AWSConfig=default_aws_config(); args...) = create_instance_profile(aws, args)

@inline create_instance_profile(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreateInstanceProfile", args)

@inline create_instance_profile(args) = create_instance_profile(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_login_profile
    create_login_profile([::AWSConfig], arguments::Dict)
    create_login_profile([::AWSConfig]; UserName=, Password=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreateLoginProfile", arguments::Dict)
    iam([::AWSConfig], "CreateLoginProfile", UserName=, Password=, <keyword arguments>)

# CreateLoginProfile Operation

Creates a password for the specified user, giving the user the ability to access AWS services through the AWS Management Console. For more information about managing passwords, see [Managing Passwords](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html) in the *IAM User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name of the IAM user to create a password for. The user must already exist.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Password = ::String` -- *Required*
The new password for the user.

The [regex pattern](http://wikipedia.org/wiki/regex) that is used to validate this parameter is a string of characters. That string can include almost any printable ASCII character from the space (\\u0020) through the end of the ASCII character range (\\u00FF). You can also include the tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D) characters. Any of these characters are valid in a password. However, many tools, such as the AWS Management Console, might restrict the ability to type certain characters because they have special meaning within that tool.


## `PasswordResetRequired = ::Bool`
Specifies whether the user is required to set a new password on next sign-in.




# Returns

`CreateLoginProfileResponse`

# Exceptions

`EntityAlreadyExistsException`, `NoSuchEntityException`, `PasswordPolicyViolationException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To create an instance profile

The following command changes IAM user Bob's password and sets the flag that required Bob to change the password the next time he signs in.

Input:
```
[
    "Password" => "h]6EszR}vJ*m",
    "PasswordResetRequired" => true,
    "UserName" => "Bob"
]
```

Output:
```
Dict(
    "LoginProfile" => Dict(
        "CreateDate" => "2015-03-10T20:55:40.274Z",
        "PasswordResetRequired" => true,
        "UserName" => "Bob"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateLoginProfile)
"""
@inline create_login_profile(aws::AWSConfig=default_aws_config(); args...) = create_login_profile(aws, args)

@inline create_login_profile(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreateLoginProfile", args)

@inline create_login_profile(args) = create_login_profile(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_open_idconnect_provider
    create_open_idconnect_provider([::AWSConfig], arguments::Dict)
    create_open_idconnect_provider([::AWSConfig]; Url=, ThumbprintList=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreateOpenIDConnectProvider", arguments::Dict)
    iam([::AWSConfig], "CreateOpenIDConnectProvider", Url=, ThumbprintList=, <keyword arguments>)

# CreateOpenIDConnectProvider Operation

Creates an IAM entity to describe an identity provider (IdP) that supports [OpenID Connect (OIDC)](http://openid.net/connect/).

The OIDC provider that you create with this operation can be used as a principal in a role's trust policy. Such a policy establishes a trust relationship between AWS and the OIDC provider.

When you create the IAM OIDC provider, you specify the following:

*   The URL of the OIDC identity provider (IdP) to trust

*   A list of client IDs (also known as audiences) that identify the application or applications that are allowed to authenticate using the OIDC provider

*   A list of thumbprints of the server certificate(s) that the IdP uses.

You get all of this information from the OIDC IdP that you want to use to access AWS.

**Note**
> Because trust for the OIDC provider is derived from the IAM provider that this operation creates, it is best to limit access to the [CreateOpenIDConnectProvider](@ref) operation to highly privileged users.

# Arguments

## `Url = ::String` -- *Required*
The URL of the identity provider. The URL must begin with `https://` and should correspond to the `iss` claim in the provider's OpenID Connect ID tokens. Per the OIDC standard, path components are allowed but query parameters are not. Typically the URL consists of only a hostname, like `https://server.example.org` or `https://example.com`.

You cannot register the same provider multiple times in a single AWS account. If you try to submit a URL that has already been used for an OpenID Connect provider in the AWS account, you will get an error.


## `ClientIDList = [::String, ...]`
A list of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the `client_id` parameter on OAuth requests.)

You can register multiple client IDs with the same provider. For example, you might have multiple applications that use the same OIDC provider. You cannot register more than 100 client IDs with a single IAM OIDC provider.

There is no defined format for a client ID. The `CreateOpenIDConnectProviderRequest` operation accepts client IDs up to 255 characters long.


## `ThumbprintList = [::String, ...]` -- *Required*
A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificates. Typically this list includes only one entry. However, IAM lets you have up to five thumbprints for an OIDC provider. This lets you maintain multiple thumbprints if the identity provider is rotating certificates.

The server certificate thumbprint is the hex-encoded SHA-1 hash value of the X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string.

You must provide at least one thumbprint when creating an IAM OIDC provider. For example, assume that the OIDC provider is `server.example.com` and the provider stores its keys at https://keys.server.example.com/openid-connect. In that case, the thumbprint string would be the hex-encoded SHA-1 hash value of the certificate used by https://keys.server.example.com.

For more information about obtaining the OIDC provider's thumbprint, see [Obtaining the Thumbprint for an OpenID Connect Provider](http://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html) in the *IAM User Guide*.




# Returns

`CreateOpenIDConnectProviderResponse`

# Exceptions

`InvalidInputException`, `EntityAlreadyExistsException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To create an instance profile

The following example defines a new OIDC provider in IAM with a client ID of my-application-id and pointing at the server with a URL of https://server.example.com.

Input:
```
[
    "ClientIDList" => [
        "my-application-id"
    ],
    "ThumbprintList" => [
        "3768084dfb3d2b68b7897bf5f565da8efEXAMPLE"
    ],
    "Url" => "https://server.example.com"
]
```

Output:
```
Dict(
    "OpenIDConnectProviderArn" => "arn:aws:iam::123456789012:oidc-provider/server.example.com"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateOpenIDConnectProvider)
"""
@inline create_open_idconnect_provider(aws::AWSConfig=default_aws_config(); args...) = create_open_idconnect_provider(aws, args)

@inline create_open_idconnect_provider(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreateOpenIDConnectProvider", args)

@inline create_open_idconnect_provider(args) = create_open_idconnect_provider(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_policy
    create_policy([::AWSConfig], arguments::Dict)
    create_policy([::AWSConfig]; PolicyName=, PolicyDocument=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreatePolicy", arguments::Dict)
    iam([::AWSConfig], "CreatePolicy", PolicyName=, PolicyDocument=, <keyword arguments>)

# CreatePolicy Operation

Creates a new managed policy for your AWS account.

This operation creates a policy version with a version identifier of `v1` and sets v1 as the policy's default version. For more information about policy versions, see [Versioning for Managed Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the *IAM User Guide*.

For more information about managed policies in general, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `PolicyName = ::String` -- *Required*
The friendly name of the policy.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Path = ::String`
The path for the policy.

For more information about paths, see [IAM Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the *IAM User Guide*.

This parameter is optional. If it is not included, it defaults to a slash (/).

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `PolicyDocument = ::String` -- *Required*
The JSON policy document that you want to use as the content for the new policy.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)


## `Description = ::String`
A friendly description of the policy.

Typically used to store information about the permissions defined in the policy. For example, "Grants access to production DynamoDB tables."

The policy description is immutable. After a value is assigned, it cannot be changed.




# Returns

`CreatePolicyResponse`

# Exceptions

`InvalidInputException`, `LimitExceededException`, `EntityAlreadyExistsException`, `MalformedPolicyDocumentException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreatePolicy)
"""
@inline create_policy(aws::AWSConfig=default_aws_config(); args...) = create_policy(aws, args)

@inline create_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreatePolicy", args)

@inline create_policy(args) = create_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_policy_version
    create_policy_version([::AWSConfig], arguments::Dict)
    create_policy_version([::AWSConfig]; PolicyArn=, PolicyDocument=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreatePolicyVersion", arguments::Dict)
    iam([::AWSConfig], "CreatePolicyVersion", PolicyArn=, PolicyDocument=, <keyword arguments>)

# CreatePolicyVersion Operation

Creates a new version of the specified managed policy. To update a managed policy, you create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must delete an existing version using [DeletePolicyVersion](@ref) before you create a new version.

Optionally, you can set the new version as the policy's default version. The default version is the version that is in effect for the IAM users, groups, and roles to which the policy is attached.

For more information about managed policy versions, see [Versioning for Managed Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the *IAM User Guide*.

# Arguments

## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM policy to which you want to add a new version.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `PolicyDocument = ::String` -- *Required*
The JSON policy document that you want to use as the content for this new version of the policy.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)


## `SetAsDefault = ::Bool`
Specifies whether to set this version as the policy's default version.

When this parameter is `true`, the new policy version becomes the operative version. That is, it becomes the version that is in effect for the IAM users, groups, and roles that the policy is attached to.

For more information about managed policy versions, see [Versioning for Managed Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the *IAM User Guide*.




# Returns

`CreatePolicyVersionResponse`

# Exceptions

`NoSuchEntityException`, `MalformedPolicyDocumentException`, `InvalidInputException`, `LimitExceededException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreatePolicyVersion)
"""
@inline create_policy_version(aws::AWSConfig=default_aws_config(); args...) = create_policy_version(aws, args)

@inline create_policy_version(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreatePolicyVersion", args)

@inline create_policy_version(args) = create_policy_version(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_role
    create_role([::AWSConfig], arguments::Dict)
    create_role([::AWSConfig]; RoleName=, AssumeRolePolicyDocument=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreateRole", arguments::Dict)
    iam([::AWSConfig], "CreateRole", RoleName=, AssumeRolePolicyDocument=, <keyword arguments>)

# CreateRole Operation

Creates a new role for your AWS account. For more information about roles, go to [IAM Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html). For information about limitations on role names and the number of roles you can create, go to [Limitations on IAM Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *IAM User Guide*.

# Arguments

## `Path = ::String`
The path to the role. For more information about paths, see [IAM Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the *IAM User Guide*.

This parameter is optional. If it is not included, it defaults to a slash (/).

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `RoleName = ::String` -- *Required*
The name of the role to create.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-

Role names are not distinguished by case. For example, you cannot create roles named both "PRODROLE" and "prodrole".


## `AssumeRolePolicyDocument = ::String` -- *Required*
The trust relationship policy document that grants an entity permission to assume the role.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)


## `Description = ::String`
A description of the role.


## `MaxSessionDuration = ::Int`
The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.

Anyone who assumes the role from the AWS CLI or API can use the `DurationSeconds` API parameter or the `duration-seconds` CLI parameter to request a longer session. The `MaxSessionDuration` setting determines the maximum duration that can be requested using the `DurationSeconds` parameter. If users don't specify a value for the `DurationSeconds` parameter, their security credentials are valid for one hour by default. This applies when you use the `AssumeRole*` API operations or the `assume-role*` CLI operations but does not apply when you use those operations to create a console URL. For more information, see [Using IAM Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in the *IAM User Guide*.


## `PermissionsBoundary = ::String`
The ARN of the policy that is used to set the permissions boundary for the role.




# Returns

`CreateRoleResponse`

# Exceptions

`LimitExceededException`, `InvalidInputException`, `EntityAlreadyExistsException`, `MalformedPolicyDocumentException` or `ServiceFailureException`.

# Example: To create an IAM role

The following command creates a role named Test-Role and attaches a trust policy to it that is provided as a URL-encoded JSON string.

Input:
```
[
    "AssumeRolePolicyDocument" => "<URL-encoded-JSON>",
    "Path" => "/",
    "RoleName" => "Test-Role"
]
```

Output:
```
Dict(
    "Role" => Dict(
        "Arn" => "arn:aws:iam::123456789012:role/Test-Role",
        "AssumeRolePolicyDocument" => "<URL-encoded-JSON>",
        "CreateDate" => "2013-06-07T20:43:32.821Z",
        "Path" => "/",
        "RoleId" => "AKIAIOSFODNN7EXAMPLE",
        "RoleName" => "Test-Role"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateRole)
"""
@inline create_role(aws::AWSConfig=default_aws_config(); args...) = create_role(aws, args)

@inline create_role(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreateRole", args)

@inline create_role(args) = create_role(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_samlprovider
    create_samlprovider([::AWSConfig], arguments::Dict)
    create_samlprovider([::AWSConfig]; SAMLMetadataDocument=, Name=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreateSAMLProvider", arguments::Dict)
    iam([::AWSConfig], "CreateSAMLProvider", SAMLMetadataDocument=, Name=)

# CreateSAMLProvider Operation

Creates an IAM resource that describes an identity provider (IdP) that supports SAML 2.0.

The SAML provider resource that you create with this operation can be used as a principal in an IAM role's trust policy. Such a policy can enable federated users who sign-in using the SAML IdP to assume the role. You can create an IAM role that supports Web-based single sign-on (SSO) to the AWS Management Console or one that supports API access to AWS.

When you create the SAML provider resource, you upload a SAML metadata document that you get from your IdP. That document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that the IdP sends. You must generate the metadata document using the identity management software that is used as your organization's IdP.

**Note**
> This operation requires [Signature Version 4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

For more information, see [Enabling SAML 2.0 Federated Users to Access the AWS Management Console](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html) and [About SAML 2.0-based Federation](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html) in the *IAM User Guide*.

# Arguments

## `SAMLMetadataDocument = ::String` -- *Required*
An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.

For more information, see [About SAML 2.0-based Federation](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html) in the *IAM User Guide*


## `Name = ::String` -- *Required*
The name of the provider to create.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Returns

`CreateSAMLProviderResponse`

# Exceptions

`InvalidInputException`, `EntityAlreadyExistsException`, `LimitExceededException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateSAMLProvider)
"""
@inline create_samlprovider(aws::AWSConfig=default_aws_config(); args...) = create_samlprovider(aws, args)

@inline create_samlprovider(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreateSAMLProvider", args)

@inline create_samlprovider(args) = create_samlprovider(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_service_linked_role
    create_service_linked_role([::AWSConfig], arguments::Dict)
    create_service_linked_role([::AWSConfig]; AWSServiceName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreateServiceLinkedRole", arguments::Dict)
    iam([::AWSConfig], "CreateServiceLinkedRole", AWSServiceName=, <keyword arguments>)

# CreateServiceLinkedRole Operation

Creates an IAM role that is linked to a specific AWS service. The service controls the attached policies and when the role can be deleted. This helps ensure that the service is not broken by an unexpectedly changed or deleted role, which could put your AWS resources into an unknown state. Allowing the service to control the role helps improve service stability and proper cleanup when a service and its role are no longer needed.

The name of the role is generated by combining the string that you specify for the `AWSServiceName` parameter with the string that you specify for the `CustomSuffix` parameter. The resulting name must be unique in your account or the request fails.

To attach a policy to this service-linked role, you must make the request using the AWS service that depends on this role.

# Arguments

## `AWSServiceName = ::String` -- *Required*
The AWS service to which this role is attached. You use a string similar to a URL but without the http:// in front. For example: `elasticbeanstalk.amazonaws.com`


## `Description = ::String`
The description of the role.


## `CustomSuffix = ::String`
A string that you provide, which is combined with the service name to form the complete role name. If you make multiple requests for the same service, then you must supply a different `CustomSuffix` for each request. Otherwise the request fails with a duplicate role name error. For example, you could add `-1` or `-debug` to the suffix.




# Returns

`CreateServiceLinkedRoleResponse`

# Exceptions

`InvalidInputException`, `LimitExceededException`, `NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateServiceLinkedRole)
"""
@inline create_service_linked_role(aws::AWSConfig=default_aws_config(); args...) = create_service_linked_role(aws, args)

@inline create_service_linked_role(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreateServiceLinkedRole", args)

@inline create_service_linked_role(args) = create_service_linked_role(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_service_specific_credential
    create_service_specific_credential([::AWSConfig], arguments::Dict)
    create_service_specific_credential([::AWSConfig]; UserName=, ServiceName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreateServiceSpecificCredential", arguments::Dict)
    iam([::AWSConfig], "CreateServiceSpecificCredential", UserName=, ServiceName=)

# CreateServiceSpecificCredential Operation

Generates a set of credentials consisting of a user name and password that can be used to access the service specified in the request. These credentials are generated by IAM, and can be used only for the specified service.

You can have a maximum of two sets of service-specific credentials for each supported service per user.

The only supported service at this time is AWS CodeCommit.

You can reset the password to a new service-generated value by calling [ResetServiceSpecificCredential](@ref).

For more information about service-specific credentials, see [Using IAM with AWS CodeCommit: Git Credentials, SSH Keys, and AWS Access Keys](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html) in the *IAM User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name of the IAM user that is to be associated with the credentials. The new service-specific credentials have the same permissions as the associated user except that they can be used only to access the specified service.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `ServiceName = ::String` -- *Required*
The name of the AWS service that is to be associated with the credentials. The service you specify here is the only service that can be accessed using these credentials.




# Returns

`CreateServiceSpecificCredentialResponse`

# Exceptions

`LimitExceededException`, `NoSuchEntityException` or `ServiceNotSupportedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateServiceSpecificCredential)
"""
@inline create_service_specific_credential(aws::AWSConfig=default_aws_config(); args...) = create_service_specific_credential(aws, args)

@inline create_service_specific_credential(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreateServiceSpecificCredential", args)

@inline create_service_specific_credential(args) = create_service_specific_credential(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_user
    create_user([::AWSConfig], arguments::Dict)
    create_user([::AWSConfig]; UserName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreateUser", arguments::Dict)
    iam([::AWSConfig], "CreateUser", UserName=, <keyword arguments>)

# CreateUser Operation

Creates a new IAM user for your AWS account.

For information about limitations on the number of IAM users you can create, see [Limitations on IAM Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *IAM User Guide*.

# Arguments

## `Path = ::String`
The path for the user name. For more information about paths, see [IAM Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the *IAM User Guide*.

This parameter is optional. If it is not included, it defaults to a slash (/).

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `UserName = ::String` -- *Required*
The name of the user to create.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-. User names are not distinguished by case. For example, you cannot create users named both "TESTUSER" and "testuser".


## `PermissionsBoundary = ::String`
The ARN of the policy that is used to set the permissions boundary for the user.




# Returns

`CreateUserResponse`

# Exceptions

`LimitExceededException`, `EntityAlreadyExistsException`, `NoSuchEntityException` or `ServiceFailureException`.

# Example: To create an IAM user

The following create-user command creates an IAM user named Bob in the current account.

Input:
```
[
    "UserName" => "Bob"
]
```

Output:
```
Dict(
    "User" => Dict(
        "Arn" => "arn:aws:iam::123456789012:user/Bob",
        "CreateDate" => "2013-06-08T03:20:41.270Z",
        "Path" => "/",
        "UserId" => "AKIAIOSFODNN7EXAMPLE",
        "UserName" => "Bob"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateUser)
"""
@inline create_user(aws::AWSConfig=default_aws_config(); args...) = create_user(aws, args)

@inline create_user(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreateUser", args)

@inline create_user(args) = create_user(default_aws_config(), args)


"""
    using AWSSDK.IAM.create_virtual_mfadevice
    create_virtual_mfadevice([::AWSConfig], arguments::Dict)
    create_virtual_mfadevice([::AWSConfig]; VirtualMFADeviceName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "CreateVirtualMFADevice", arguments::Dict)
    iam([::AWSConfig], "CreateVirtualMFADevice", VirtualMFADeviceName=, <keyword arguments>)

# CreateVirtualMFADevice Operation

Creates a new virtual MFA device for the AWS account. After creating the virtual MFA, use [EnableMFADevice](@ref) to attach the MFA device to an IAM user. For more information about creating and working with virtual MFA devices, go to [Using a Virtual MFA Device](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html) in the *IAM User Guide*.

For information about limits on the number of MFA devices you can create, see [Limitations on Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *IAM User Guide*.

**Important**
> The seed information contained in the QR code and the Base32 string should be treated like any other secret access information, such as your AWS access keys or your passwords. After you provision your virtual device, you should ensure that the information is destroyed following secure procedures.

# Arguments

## `Path = ::String`
The path for the virtual MFA device. For more information about paths, see [IAM Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the *IAM User Guide*.

This parameter is optional. If it is not included, it defaults to a slash (/).

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `VirtualMFADeviceName = ::String` -- *Required*
The name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Returns

`CreateVirtualMFADeviceResponse`

# Exceptions

`LimitExceededException`, `EntityAlreadyExistsException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateVirtualMFADevice)
"""
@inline create_virtual_mfadevice(aws::AWSConfig=default_aws_config(); args...) = create_virtual_mfadevice(aws, args)

@inline create_virtual_mfadevice(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "CreateVirtualMFADevice", args)

@inline create_virtual_mfadevice(args) = create_virtual_mfadevice(default_aws_config(), args)


"""
    using AWSSDK.IAM.deactivate_mfadevice
    deactivate_mfadevice([::AWSConfig], arguments::Dict)
    deactivate_mfadevice([::AWSConfig]; UserName=, SerialNumber=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeactivateMFADevice", arguments::Dict)
    iam([::AWSConfig], "DeactivateMFADevice", UserName=, SerialNumber=)

# DeactivateMFADevice Operation

Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled.

For more information about creating and working with virtual MFA devices, go to [Using a Virtual MFA Device](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html) in the *IAM User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name of the user whose MFA device you want to deactivate.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `SerialNumber = ::String` -- *Required*
The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-




# Exceptions

`EntityTemporarilyUnmodifiableException`, `NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeactivateMFADevice)
"""
@inline deactivate_mfadevice(aws::AWSConfig=default_aws_config(); args...) = deactivate_mfadevice(aws, args)

@inline deactivate_mfadevice(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeactivateMFADevice", args)

@inline deactivate_mfadevice(args) = deactivate_mfadevice(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_access_key
    delete_access_key([::AWSConfig], arguments::Dict)
    delete_access_key([::AWSConfig]; AccessKeyId=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteAccessKey", arguments::Dict)
    iam([::AWSConfig], "DeleteAccessKey", AccessKeyId=, <keyword arguments>)

# DeleteAccessKey Operation

Deletes the access key pair associated with the specified IAM user.

If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. Because this operation works for access keys under the AWS account, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.

# Arguments

## `UserName = ::String`
The name of the user whose access key pair you want to delete.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `AccessKeyId = ::String` -- *Required*
The access key ID for the access key ID and secret access key you want to delete.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.




# Exceptions

`NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To delete an access key for an IAM user

The following command deletes one access key (access key ID and secret access key) assigned to the IAM user named Bob.

Input:
```
[
    "AccessKeyId" => "AKIDPMS9RO4H3FEXAMPLE",
    "UserName" => "Bob"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteAccessKey)
"""
@inline delete_access_key(aws::AWSConfig=default_aws_config(); args...) = delete_access_key(aws, args)

@inline delete_access_key(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteAccessKey", args)

@inline delete_access_key(args) = delete_access_key(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_account_alias
    delete_account_alias([::AWSConfig], arguments::Dict)
    delete_account_alias([::AWSConfig]; AccountAlias=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteAccountAlias", arguments::Dict)
    iam([::AWSConfig], "DeleteAccountAlias", AccountAlias=)

# DeleteAccountAlias Operation

Deletes the specified AWS account alias. For information about using an AWS account alias, see [Using an Alias for Your AWS Account ID](http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html) in the *IAM User Guide*.

# Arguments

## `AccountAlias = ::String` -- *Required*
The name of the account alias to delete.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have two dashes in a row.




# Exceptions

`NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To delete an account alias

The following command removes the alias mycompany from the current AWS account:

Input:
```
[
    "AccountAlias" => "mycompany"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteAccountAlias)
"""
@inline delete_account_alias(aws::AWSConfig=default_aws_config(); args...) = delete_account_alias(aws, args)

@inline delete_account_alias(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteAccountAlias", args)

@inline delete_account_alias(args) = delete_account_alias(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_account_password_policy
    delete_account_password_policy([::AWSConfig])
    

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteAccountPasswordPolicy",)
    

# DeleteAccountPasswordPolicy Operation

Deletes the password policy for the AWS account. There are no parameters.

# Exceptions

`NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To delete the current account password policy

The following command removes the password policy from the current AWS account:

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteAccountPasswordPolicy)
"""
@inline delete_account_password_policy(aws::AWSConfig=default_aws_config(); args...) = delete_account_password_policy(aws, args)

@inline delete_account_password_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteAccountPasswordPolicy", args)

@inline delete_account_password_policy(args) = delete_account_password_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_group
    delete_group([::AWSConfig], arguments::Dict)
    delete_group([::AWSConfig]; GroupName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteGroup", arguments::Dict)
    iam([::AWSConfig], "DeleteGroup", GroupName=)

# DeleteGroup Operation

Deletes the specified IAM group. The group must not contain any users or have any attached policies.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the IAM group to delete.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `DeleteConflictException`, `LimitExceededException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteGroup)
"""
@inline delete_group(aws::AWSConfig=default_aws_config(); args...) = delete_group(aws, args)

@inline delete_group(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteGroup", args)

@inline delete_group(args) = delete_group(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_group_policy
    delete_group_policy([::AWSConfig], arguments::Dict)
    delete_group_policy([::AWSConfig]; GroupName=, PolicyName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteGroupPolicy", arguments::Dict)
    iam([::AWSConfig], "DeleteGroupPolicy", GroupName=, PolicyName=)

# DeleteGroupPolicy Operation

Deletes the specified inline policy that is embedded in the specified IAM group.

A group can also have managed policies attached to it. To detach a managed policy from a group, use [DetachGroupPolicy](@ref). For more information about policies, refer to [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `GroupName = ::String` -- *Required*
The name (friendly name, not ARN) identifying the group that the policy is embedded in.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyName = ::String` -- *Required*
The name identifying the policy document to delete.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To delete a policy from an IAM group

The following command deletes the policy named ExamplePolicy from the group named Admins:

Input:
```
[
    "GroupName" => "Admins",
    "PolicyName" => "ExamplePolicy"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteGroupPolicy)
"""
@inline delete_group_policy(aws::AWSConfig=default_aws_config(); args...) = delete_group_policy(aws, args)

@inline delete_group_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteGroupPolicy", args)

@inline delete_group_policy(args) = delete_group_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_instance_profile
    delete_instance_profile([::AWSConfig], arguments::Dict)
    delete_instance_profile([::AWSConfig]; InstanceProfileName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteInstanceProfile", arguments::Dict)
    iam([::AWSConfig], "DeleteInstanceProfile", InstanceProfileName=)

# DeleteInstanceProfile Operation

Deletes the specified instance profile. The instance profile must not have an associated role.

**Important**
> Make sure that you do not have any Amazon EC2 instances running with the instance profile you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.

For more information about instance profiles, go to [About Instance Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).

# Arguments

## `InstanceProfileName = ::String` -- *Required*
The name of the instance profile to delete.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `DeleteConflictException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To delete an instance profile

The following command deletes the instance profile named ExampleInstanceProfile

Input:
```
[
    "InstanceProfileName" => "ExampleInstanceProfile"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteInstanceProfile)
"""
@inline delete_instance_profile(aws::AWSConfig=default_aws_config(); args...) = delete_instance_profile(aws, args)

@inline delete_instance_profile(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteInstanceProfile", args)

@inline delete_instance_profile(args) = delete_instance_profile(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_login_profile
    delete_login_profile([::AWSConfig], arguments::Dict)
    delete_login_profile([::AWSConfig]; UserName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteLoginProfile", arguments::Dict)
    iam([::AWSConfig], "DeleteLoginProfile", UserName=)

# DeleteLoginProfile Operation

Deletes the password for the specified IAM user, which terminates the user's ability to access AWS services through the AWS Management Console.

**Important**
> Deleting a user's password does not prevent a user from accessing AWS through the command line interface or the API. To prevent all user access you must also either make any access keys inactive or delete them. For more information about making keys inactive or deleting them, see [UpdateAccessKey](@ref) and [DeleteAccessKey](@ref).

# Arguments

## `UserName = ::String` -- *Required*
The name of the user whose password you want to delete.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`EntityTemporarilyUnmodifiableException`, `NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To delete a password for an IAM user

The following command deletes the password for the IAM user named Bob.

Input:
```
[
    "UserName" => "Bob"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteLoginProfile)
"""
@inline delete_login_profile(aws::AWSConfig=default_aws_config(); args...) = delete_login_profile(aws, args)

@inline delete_login_profile(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteLoginProfile", args)

@inline delete_login_profile(args) = delete_login_profile(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_open_idconnect_provider
    delete_open_idconnect_provider([::AWSConfig], arguments::Dict)
    delete_open_idconnect_provider([::AWSConfig]; OpenIDConnectProviderArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteOpenIDConnectProvider", arguments::Dict)
    iam([::AWSConfig], "DeleteOpenIDConnectProvider", OpenIDConnectProviderArn=)

# DeleteOpenIDConnectProvider Operation

Deletes an OpenID Connect identity provider (IdP) resource object in IAM.

Deleting an IAM OIDC provider resource does not update any roles that reference the provider as a principal in their trust policies. Any attempt to assume a role that references a deleted provider fails.

This operation is idempotent; it does not fail or return an error if you call the operation for a provider that does not exist.

# Arguments

## `OpenIDConnectProviderArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM OpenID Connect provider resource object to delete. You can get a list of OpenID Connect provider resource ARNs by using the [ListOpenIDConnectProviders](@ref) operation.




# Exceptions

`InvalidInputException`, `NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteOpenIDConnectProvider)
"""
@inline delete_open_idconnect_provider(aws::AWSConfig=default_aws_config(); args...) = delete_open_idconnect_provider(aws, args)

@inline delete_open_idconnect_provider(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteOpenIDConnectProvider", args)

@inline delete_open_idconnect_provider(args) = delete_open_idconnect_provider(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_policy
    delete_policy([::AWSConfig], arguments::Dict)
    delete_policy([::AWSConfig]; PolicyArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeletePolicy", arguments::Dict)
    iam([::AWSConfig], "DeletePolicy", PolicyArn=)

# DeletePolicy Operation

Deletes the specified managed policy.

Before you can delete a managed policy, you must first detach the policy from all users, groups, and roles that it is attached to. In addition you must delete all the policy's versions. The following steps describe the process for deleting a managed policy:

*   Detach the policy from all users, groups, and roles that the policy is attached to, using the [DetachUserPolicy](@ref), [DetachGroupPolicy](@ref), or [DetachRolePolicy](@ref) API operations. To list all the users, groups, and roles that a policy is attached to, use [ListEntitiesForPolicy](@ref).

*   Delete all versions of the policy using [DeletePolicyVersion](@ref). To list the policy's versions, use [ListPolicyVersions](@ref). You cannot use [DeletePolicyVersion](@ref) to delete the version that is marked as the default version. You delete the policy's default version in the next step of the process.

*   Delete the policy (this automatically deletes the policy's default version) using this API.

For information about managed policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM policy you want to delete.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.




# Exceptions

`NoSuchEntityException`, `LimitExceededException`, `InvalidInputException`, `DeleteConflictException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeletePolicy)
"""
@inline delete_policy(aws::AWSConfig=default_aws_config(); args...) = delete_policy(aws, args)

@inline delete_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeletePolicy", args)

@inline delete_policy(args) = delete_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_policy_version
    delete_policy_version([::AWSConfig], arguments::Dict)
    delete_policy_version([::AWSConfig]; PolicyArn=, VersionId=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeletePolicyVersion", arguments::Dict)
    iam([::AWSConfig], "DeletePolicyVersion", PolicyArn=, VersionId=)

# DeletePolicyVersion Operation

Deletes the specified version from the specified managed policy.

You cannot delete the default version from a policy using this API. To delete the default version from a policy, use [DeletePolicy](@ref). To find out which version of a policy is marked as the default version, use [ListPolicyVersions](@ref).

For information about versions for managed policies, see [Versioning for Managed Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the *IAM User Guide*.

# Arguments

## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM policy from which you want to delete a version.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `VersionId = ::String` -- *Required*
The policy version to delete.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.

For more information about managed policy versions, see [Versioning for Managed Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the *IAM User Guide*.




# Exceptions

`NoSuchEntityException`, `LimitExceededException`, `InvalidInputException`, `DeleteConflictException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeletePolicyVersion)
"""
@inline delete_policy_version(aws::AWSConfig=default_aws_config(); args...) = delete_policy_version(aws, args)

@inline delete_policy_version(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeletePolicyVersion", args)

@inline delete_policy_version(args) = delete_policy_version(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_role
    delete_role([::AWSConfig], arguments::Dict)
    delete_role([::AWSConfig]; RoleName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteRole", arguments::Dict)
    iam([::AWSConfig], "DeleteRole", RoleName=)

# DeleteRole Operation

Deletes the specified role. The role must not have any policies attached. For more information about roles, go to [Working with Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).

**Important**
> Make sure that you do not have any Amazon EC2 instances running with the role you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.

# Arguments

## `RoleName = ::String` -- *Required*
The name of the role to delete.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `DeleteConflictException`, `LimitExceededException`, `UnmodifiableEntityException` or `ServiceFailureException`.

# Example: To delete an IAM role

The following command removes the role named Test-Role.

Input:
```
[
    "RoleName" => "Test-Role"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteRole)
"""
@inline delete_role(aws::AWSConfig=default_aws_config(); args...) = delete_role(aws, args)

@inline delete_role(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteRole", args)

@inline delete_role(args) = delete_role(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_role_permissions_boundary
    delete_role_permissions_boundary([::AWSConfig], arguments::Dict)
    delete_role_permissions_boundary([::AWSConfig]; RoleName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteRolePermissionsBoundary", arguments::Dict)
    iam([::AWSConfig], "DeleteRolePermissionsBoundary", RoleName=)

# DeleteRolePermissionsBoundary Operation

Deletes the permissions boundary for the specified IAM role.

**Important**
> Deleting the permissions boundary for a role might increase its permissions by allowing anyone who assumes the role to perform all the actions granted in its permissions policies.

# Arguments

## `RoleName = ::String` -- *Required*
The name (friendly name, not ARN) of the IAM role from which you want to remove the permissions boundary.




# Exceptions

`NoSuchEntityException`, `UnmodifiableEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteRolePermissionsBoundary)
"""
@inline delete_role_permissions_boundary(aws::AWSConfig=default_aws_config(); args...) = delete_role_permissions_boundary(aws, args)

@inline delete_role_permissions_boundary(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteRolePermissionsBoundary", args)

@inline delete_role_permissions_boundary(args) = delete_role_permissions_boundary(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_role_policy
    delete_role_policy([::AWSConfig], arguments::Dict)
    delete_role_policy([::AWSConfig]; RoleName=, PolicyName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteRolePolicy", arguments::Dict)
    iam([::AWSConfig], "DeleteRolePolicy", RoleName=, PolicyName=)

# DeleteRolePolicy Operation

Deletes the specified inline policy that is embedded in the specified IAM role.

A role can also have managed policies attached to it. To detach a managed policy from a role, use [DetachRolePolicy](@ref). For more information about policies, refer to [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `RoleName = ::String` -- *Required*
The name (friendly name, not ARN) identifying the role that the policy is embedded in.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyName = ::String` -- *Required*
The name of the inline policy to delete from the specified IAM role.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `LimitExceededException`, `UnmodifiableEntityException` or `ServiceFailureException`.

# Example: To remove a policy from an IAM role

The following command removes the policy named ExamplePolicy from the role named Test-Role.

Input:
```
[
    "PolicyName" => "ExamplePolicy",
    "RoleName" => "Test-Role"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteRolePolicy)
"""
@inline delete_role_policy(aws::AWSConfig=default_aws_config(); args...) = delete_role_policy(aws, args)

@inline delete_role_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteRolePolicy", args)

@inline delete_role_policy(args) = delete_role_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_samlprovider
    delete_samlprovider([::AWSConfig], arguments::Dict)
    delete_samlprovider([::AWSConfig]; SAMLProviderArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteSAMLProvider", arguments::Dict)
    iam([::AWSConfig], "DeleteSAMLProvider", SAMLProviderArn=)

# DeleteSAMLProvider Operation

Deletes a SAML provider resource in IAM.

Deleting the provider resource from IAM does not update any roles that reference the SAML provider resource's ARN as a principal in their trust policies. Any attempt to assume a role that references a non-existent provider resource ARN fails.

**Note**
> This operation requires [Signature Version 4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

# Arguments

## `SAMLProviderArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the SAML provider to delete.




# Exceptions

`InvalidInputException`, `LimitExceededException`, `NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteSAMLProvider)
"""
@inline delete_samlprovider(aws::AWSConfig=default_aws_config(); args...) = delete_samlprovider(aws, args)

@inline delete_samlprovider(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteSAMLProvider", args)

@inline delete_samlprovider(args) = delete_samlprovider(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_sshpublic_key
    delete_sshpublic_key([::AWSConfig], arguments::Dict)
    delete_sshpublic_key([::AWSConfig]; UserName=, SSHPublicKeyId=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteSSHPublicKey", arguments::Dict)
    iam([::AWSConfig], "DeleteSSHPublicKey", UserName=, SSHPublicKeyId=)

# DeleteSSHPublicKey Operation

Deletes the specified SSH public key.

The SSH public key deleted by this operation is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see [Set up AWS CodeCommit for SSH Connections](http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the *AWS CodeCommit User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name of the IAM user associated with the SSH public key.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `SSHPublicKeyId = ::String` -- *Required*
The unique identifier for the SSH public key.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.




# Exceptions

`NoSuchEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteSSHPublicKey)
"""
@inline delete_sshpublic_key(aws::AWSConfig=default_aws_config(); args...) = delete_sshpublic_key(aws, args)

@inline delete_sshpublic_key(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteSSHPublicKey", args)

@inline delete_sshpublic_key(args) = delete_sshpublic_key(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_server_certificate
    delete_server_certificate([::AWSConfig], arguments::Dict)
    delete_server_certificate([::AWSConfig]; ServerCertificateName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteServerCertificate", arguments::Dict)
    iam([::AWSConfig], "DeleteServerCertificate", ServerCertificateName=)

# DeleteServerCertificate Operation

Deletes the specified server certificate.

For more information about working with server certificates, see [Working with Server Certificates](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the *IAM User Guide*. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.

**Important**
> If you are using a server certificate with Elastic Load Balancing, deleting the certificate could have implications for your application. If Elastic Load Balancing doesn't detect the deletion of bound certificates, it may continue to use the certificates. This could cause Elastic Load Balancing to stop accepting traffic. We recommend that you remove the reference to the certificate from Elastic Load Balancing before using this command to delete the certificate. For more information, go to [DeleteLoadBalancerListeners](http://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html) in the *Elastic Load Balancing API Reference*.

# Arguments

## `ServerCertificateName = ::String` -- *Required*
The name of the server certificate you want to delete.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `DeleteConflictException`, `LimitExceededException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteServerCertificate)
"""
@inline delete_server_certificate(aws::AWSConfig=default_aws_config(); args...) = delete_server_certificate(aws, args)

@inline delete_server_certificate(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteServerCertificate", args)

@inline delete_server_certificate(args) = delete_server_certificate(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_service_linked_role
    delete_service_linked_role([::AWSConfig], arguments::Dict)
    delete_service_linked_role([::AWSConfig]; RoleName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteServiceLinkedRole", arguments::Dict)
    iam([::AWSConfig], "DeleteServiceLinkedRole", RoleName=)

# DeleteServiceLinkedRole Operation

Submits a service-linked role deletion request and returns a `DeletionTaskId`, which you can use to check the status of the deletion. Before you call this operation, confirm that the role has no active sessions and that any resources used by the role in the linked service are deleted. If you call this operation more than once for the same service-linked role and an earlier deletion task is not complete, then the `DeletionTaskId` of the earlier request is returned.

If you submit a deletion request for a service-linked role whose linked service is still accessing a resource, then the deletion task fails. If it fails, the [GetServiceLinkedRoleDeletionStatus](@ref) API operation returns the reason for the failure, usually including the resources that must be deleted. To delete the service-linked role, you must first remove those resources from the linked service and then submit the deletion request again. Resources are specific to the service that is linked to the role. For more information about removing resources from a service, see the [AWS documentation](http://docs.aws.amazon.com/) for your service.

For more information about service-linked roles, see [Roles Terms and Concepts: AWS Service-Linked Role](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role) in the *IAM User Guide*.

# Arguments

## `RoleName = ::String` -- *Required*
The name of the service-linked role to be deleted.




# Returns

`DeleteServiceLinkedRoleResponse`

# Exceptions

`NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteServiceLinkedRole)
"""
@inline delete_service_linked_role(aws::AWSConfig=default_aws_config(); args...) = delete_service_linked_role(aws, args)

@inline delete_service_linked_role(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteServiceLinkedRole", args)

@inline delete_service_linked_role(args) = delete_service_linked_role(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_service_specific_credential
    delete_service_specific_credential([::AWSConfig], arguments::Dict)
    delete_service_specific_credential([::AWSConfig]; ServiceSpecificCredentialId=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteServiceSpecificCredential", arguments::Dict)
    iam([::AWSConfig], "DeleteServiceSpecificCredential", ServiceSpecificCredentialId=, <keyword arguments>)

# DeleteServiceSpecificCredential Operation

Deletes the specified service-specific credential.

# Arguments

## `UserName = ::String`
The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `ServiceSpecificCredentialId = ::String` -- *Required*
The unique identifier of the service-specific credential. You can get this value by calling [ListServiceSpecificCredentials](@ref).

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.




# Exceptions

`NoSuchEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteServiceSpecificCredential)
"""
@inline delete_service_specific_credential(aws::AWSConfig=default_aws_config(); args...) = delete_service_specific_credential(aws, args)

@inline delete_service_specific_credential(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteServiceSpecificCredential", args)

@inline delete_service_specific_credential(args) = delete_service_specific_credential(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_signing_certificate
    delete_signing_certificate([::AWSConfig], arguments::Dict)
    delete_signing_certificate([::AWSConfig]; CertificateId=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteSigningCertificate", arguments::Dict)
    iam([::AWSConfig], "DeleteSigningCertificate", CertificateId=, <keyword arguments>)

# DeleteSigningCertificate Operation

Deletes a signing certificate associated with the specified IAM user.

If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. Because this operation works for access keys under the AWS account, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated IAM users.

# Arguments

## `UserName = ::String`
The name of the user the signing certificate belongs to.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `CertificateId = ::String` -- *Required*
The ID of the signing certificate to delete.

The format of this parameter, as described by its [regex](http://wikipedia.org/wiki/regex) pattern, is a string of characters that can be upper- or lower-cased letters or digits.




# Exceptions

`NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To delete a signing certificate for an IAM user

The following command deletes the specified signing certificate for the IAM user named Anika.

Input:
```
[
    "CertificateId" => "TA7SMP42TDN5Z26OBPJE7EXAMPLE",
    "UserName" => "Anika"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteSigningCertificate)
"""
@inline delete_signing_certificate(aws::AWSConfig=default_aws_config(); args...) = delete_signing_certificate(aws, args)

@inline delete_signing_certificate(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteSigningCertificate", args)

@inline delete_signing_certificate(args) = delete_signing_certificate(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_user
    delete_user([::AWSConfig], arguments::Dict)
    delete_user([::AWSConfig]; UserName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteUser", arguments::Dict)
    iam([::AWSConfig], "DeleteUser", UserName=)

# DeleteUser Operation

Deletes the specified IAM user. The user must not belong to any groups or have any access keys, signing certificates, or attached policies.

# Arguments

## `UserName = ::String` -- *Required*
The name of the user to delete.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`LimitExceededException`, `NoSuchEntityException`, `DeleteConflictException` or `ServiceFailureException`.

# Example: To delete an IAM user

The following command removes the IAM user named Bob from the current account.

Input:
```
[
    "UserName" => "Bob"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteUser)
"""
@inline delete_user(aws::AWSConfig=default_aws_config(); args...) = delete_user(aws, args)

@inline delete_user(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteUser", args)

@inline delete_user(args) = delete_user(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_user_permissions_boundary
    delete_user_permissions_boundary([::AWSConfig], arguments::Dict)
    delete_user_permissions_boundary([::AWSConfig]; UserName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteUserPermissionsBoundary", arguments::Dict)
    iam([::AWSConfig], "DeleteUserPermissionsBoundary", UserName=)

# DeleteUserPermissionsBoundary Operation

Deletes the permissions boundary for the specified IAM user.

**Important**
> Deleting the permissions boundary for a user might increase its permissions by allowing the user to perform all the actions granted in its permissions policies.

# Arguments

## `UserName = ::String` -- *Required*
The name (friendly name, not ARN) of the IAM user from which you want to remove the permissions boundary.




# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteUserPermissionsBoundary)
"""
@inline delete_user_permissions_boundary(aws::AWSConfig=default_aws_config(); args...) = delete_user_permissions_boundary(aws, args)

@inline delete_user_permissions_boundary(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteUserPermissionsBoundary", args)

@inline delete_user_permissions_boundary(args) = delete_user_permissions_boundary(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_user_policy
    delete_user_policy([::AWSConfig], arguments::Dict)
    delete_user_policy([::AWSConfig]; UserName=, PolicyName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteUserPolicy", arguments::Dict)
    iam([::AWSConfig], "DeleteUserPolicy", UserName=, PolicyName=)

# DeleteUserPolicy Operation

Deletes the specified inline policy that is embedded in the specified IAM user.

A user can also have managed policies attached to it. To detach a managed policy from a user, use [DetachUserPolicy](@ref). For more information about policies, refer to [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name (friendly name, not ARN) identifying the user that the policy is embedded in.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyName = ::String` -- *Required*
The name identifying the policy document to delete.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To remove a policy from an IAM user

The following delete-user-policy command removes the specified policy from the IAM user named Juan:

Input:
```
[
    "PolicyName" => "ExamplePolicy",
    "UserName" => "Juan"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteUserPolicy)
"""
@inline delete_user_policy(aws::AWSConfig=default_aws_config(); args...) = delete_user_policy(aws, args)

@inline delete_user_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteUserPolicy", args)

@inline delete_user_policy(args) = delete_user_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.delete_virtual_mfadevice
    delete_virtual_mfadevice([::AWSConfig], arguments::Dict)
    delete_virtual_mfadevice([::AWSConfig]; SerialNumber=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DeleteVirtualMFADevice", arguments::Dict)
    iam([::AWSConfig], "DeleteVirtualMFADevice", SerialNumber=)

# DeleteVirtualMFADevice Operation

Deletes a virtual MFA device.

**Note**
> You must deactivate a user's virtual MFA device before you can delete it. For information about deactivating MFA devices, see [DeactivateMFADevice](@ref).

# Arguments

## `SerialNumber = ::String` -- *Required*
The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the same as the ARN.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-




# Exceptions

`NoSuchEntityException`, `DeleteConflictException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To remove a virtual MFA device

The following delete-virtual-mfa-device command removes the specified MFA device from the current AWS account.

Input:
```
[
    "SerialNumber" => "arn:aws:iam::123456789012:mfa/ExampleName"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteVirtualMFADevice)
"""
@inline delete_virtual_mfadevice(aws::AWSConfig=default_aws_config(); args...) = delete_virtual_mfadevice(aws, args)

@inline delete_virtual_mfadevice(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DeleteVirtualMFADevice", args)

@inline delete_virtual_mfadevice(args) = delete_virtual_mfadevice(default_aws_config(), args)


"""
    using AWSSDK.IAM.detach_group_policy
    detach_group_policy([::AWSConfig], arguments::Dict)
    detach_group_policy([::AWSConfig]; GroupName=, PolicyArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DetachGroupPolicy", arguments::Dict)
    iam([::AWSConfig], "DetachGroupPolicy", GroupName=, PolicyArn=)

# DetachGroupPolicy Operation

Removes the specified managed policy from the specified IAM group.

A group can also have inline policies embedded with it. To delete an inline policy, use the [DeleteGroupPolicy](@ref) API. For information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `GroupName = ::String` -- *Required*
The name (friendly name, not ARN) of the IAM group to detach the policy from.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM policy you want to detach.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.




# Exceptions

`NoSuchEntityException`, `LimitExceededException`, `InvalidInputException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DetachGroupPolicy)
"""
@inline detach_group_policy(aws::AWSConfig=default_aws_config(); args...) = detach_group_policy(aws, args)

@inline detach_group_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DetachGroupPolicy", args)

@inline detach_group_policy(args) = detach_group_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.detach_role_policy
    detach_role_policy([::AWSConfig], arguments::Dict)
    detach_role_policy([::AWSConfig]; RoleName=, PolicyArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DetachRolePolicy", arguments::Dict)
    iam([::AWSConfig], "DetachRolePolicy", RoleName=, PolicyArn=)

# DetachRolePolicy Operation

Removes the specified managed policy from the specified role.

A role can also have inline policies embedded with it. To delete an inline policy, use the [DeleteRolePolicy](@ref) API. For information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `RoleName = ::String` -- *Required*
The name (friendly name, not ARN) of the IAM role to detach the policy from.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM policy you want to detach.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.




# Exceptions

`NoSuchEntityException`, `LimitExceededException`, `InvalidInputException`, `UnmodifiableEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DetachRolePolicy)
"""
@inline detach_role_policy(aws::AWSConfig=default_aws_config(); args...) = detach_role_policy(aws, args)

@inline detach_role_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DetachRolePolicy", args)

@inline detach_role_policy(args) = detach_role_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.detach_user_policy
    detach_user_policy([::AWSConfig], arguments::Dict)
    detach_user_policy([::AWSConfig]; UserName=, PolicyArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "DetachUserPolicy", arguments::Dict)
    iam([::AWSConfig], "DetachUserPolicy", UserName=, PolicyArn=)

# DetachUserPolicy Operation

Removes the specified managed policy from the specified user.

A user can also have inline policies embedded with it. To delete an inline policy, use the [DeleteUserPolicy](@ref) API. For information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name (friendly name, not ARN) of the IAM user to detach the policy from.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM policy you want to detach.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.




# Exceptions

`NoSuchEntityException`, `LimitExceededException`, `InvalidInputException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DetachUserPolicy)
"""
@inline detach_user_policy(aws::AWSConfig=default_aws_config(); args...) = detach_user_policy(aws, args)

@inline detach_user_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "DetachUserPolicy", args)

@inline detach_user_policy(args) = detach_user_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.enable_mfadevice
    enable_mfadevice([::AWSConfig], arguments::Dict)
    enable_mfadevice([::AWSConfig]; UserName=, SerialNumber=, AuthenticationCode1=, AuthenticationCode2=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "EnableMFADevice", arguments::Dict)
    iam([::AWSConfig], "EnableMFADevice", UserName=, SerialNumber=, AuthenticationCode1=, AuthenticationCode2=)

# EnableMFADevice Operation

Enables the specified MFA device and associates it with the specified IAM user. When enabled, the MFA device is required for every subsequent login by the IAM user associated with the device.

# Arguments

## `UserName = ::String` -- *Required*
The name of the IAM user for whom you want to enable the MFA device.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `SerialNumber = ::String` -- *Required*
The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-


## `AuthenticationCode1 = ::String` -- *Required*
An authentication code emitted by the device.

The format for this parameter is a string of six digits.

**Important**
> Submit your request immediately after generating the authentication codes. If you generate the codes and then wait too long to submit the request, the MFA device successfully associates with the user but the MFA device becomes out of sync. This happens because time-based one-time passwords (TOTP) expire after a short period of time. If this happens, you can [resync the device](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html).


## `AuthenticationCode2 = ::String` -- *Required*
A subsequent authentication code emitted by the device.

The format for this parameter is a string of six digits.

**Important**
> Submit your request immediately after generating the authentication codes. If you generate the codes and then wait too long to submit the request, the MFA device successfully associates with the user but the MFA device becomes out of sync. This happens because time-based one-time passwords (TOTP) expire after a short period of time. If this happens, you can [resync the device](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html).




# Exceptions

`EntityAlreadyExistsException`, `EntityTemporarilyUnmodifiableException`, `InvalidAuthenticationCodeException`, `LimitExceededException`, `NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EnableMFADevice)
"""
@inline enable_mfadevice(aws::AWSConfig=default_aws_config(); args...) = enable_mfadevice(aws, args)

@inline enable_mfadevice(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "EnableMFADevice", args)

@inline enable_mfadevice(args) = enable_mfadevice(default_aws_config(), args)


"""
    using AWSSDK.IAM.generate_credential_report
    generate_credential_report([::AWSConfig])
    

    using AWSCore.Services.iam
    iam([::AWSConfig], "GenerateCredentialReport",)
    

# GenerateCredentialReport Operation

Generates a credential report for the AWS account. For more information about the credential report, see [Getting Credential Reports](http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html) in the *IAM User Guide*.

# Returns

`GenerateCredentialReportResponse`

# Exceptions

`LimitExceededException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GenerateCredentialReport)
"""
@inline generate_credential_report(aws::AWSConfig=default_aws_config(); args...) = generate_credential_report(aws, args)

@inline generate_credential_report(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GenerateCredentialReport", args)

@inline generate_credential_report(args) = generate_credential_report(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_access_key_last_used
    get_access_key_last_used([::AWSConfig], arguments::Dict)
    get_access_key_last_used([::AWSConfig]; AccessKeyId=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetAccessKeyLastUsed", arguments::Dict)
    iam([::AWSConfig], "GetAccessKeyLastUsed", AccessKeyId=)

# GetAccessKeyLastUsed Operation

Retrieves information about when the specified access key was last used. The information includes the date and time of last use, along with the AWS service and region that were specified in the last request made with that key.

# Arguments

## `AccessKeyId = ::String` -- *Required*
The identifier of an access key.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.




# Returns

`GetAccessKeyLastUsedResponse`

# Exceptions

`NoSuchEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccessKeyLastUsed)
"""
@inline get_access_key_last_used(aws::AWSConfig=default_aws_config(); args...) = get_access_key_last_used(aws, args)

@inline get_access_key_last_used(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetAccessKeyLastUsed", args)

@inline get_access_key_last_used(args) = get_access_key_last_used(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_account_authorization_details
    get_account_authorization_details([::AWSConfig], arguments::Dict)
    get_account_authorization_details([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetAccountAuthorizationDetails", arguments::Dict)
    iam([::AWSConfig], "GetAccountAuthorizationDetails", <keyword arguments>)

# GetAccountAuthorizationDetails Operation

Retrieves information about all IAM users, groups, roles, and policies in your AWS account, including their relationships to one another. Use this API to obtain a snapshot of the configuration of IAM permissions (users, groups, roles, and policies) in your account.

**Note**
> Policies returned by this API are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.

You can optionally filter the results using the `Filter` parameter. You can paginate the results using the `MaxItems` and `Marker` parameters.

# Arguments

## `Filter = ["User", "Role", "Group", "LocalManagedPolicy" or "AWSManagedPolicy", ...]`
A list of entity types used to filter the results. Only the entities that match the types you specify are included in the output. Use the value `LocalManagedPolicy` to include customer managed policies.

The format for this parameter is a comma-separated (if more than one) list of strings. Each string value in the list must be one of the valid values listed below.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.




# Returns

`GetAccountAuthorizationDetailsResponse`

# Exceptions

`ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountAuthorizationDetails)
"""
@inline get_account_authorization_details(aws::AWSConfig=default_aws_config(); args...) = get_account_authorization_details(aws, args)

@inline get_account_authorization_details(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetAccountAuthorizationDetails", args)

@inline get_account_authorization_details(args) = get_account_authorization_details(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_account_password_policy
    get_account_password_policy([::AWSConfig])
    

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetAccountPasswordPolicy",)
    

# GetAccountPasswordPolicy Operation

Retrieves the password policy for the AWS account. For more information about using a password policy, go to [Managing an IAM Password Policy](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html).

# Returns

`GetAccountPasswordPolicyResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

# Example: To see the current account password policy

The following command displays details about the password policy for the current AWS account.

Output:
```
Dict(
    "PasswordPolicy" => Dict(
        "AllowUsersToChangePassword" => false,
        "ExpirePasswords" => false,
        "HardExpiry" => false,
        "MaxPasswordAge" => 90,
        "MinimumPasswordLength" => 8,
        "PasswordReusePrevention" => 12,
        "RequireLowercaseCharacters" => false,
        "RequireNumbers" => true,
        "RequireSymbols" => true,
        "RequireUppercaseCharacters" => false
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountPasswordPolicy)
"""
@inline get_account_password_policy(aws::AWSConfig=default_aws_config(); args...) = get_account_password_policy(aws, args)

@inline get_account_password_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetAccountPasswordPolicy", args)

@inline get_account_password_policy(args) = get_account_password_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_account_summary
    get_account_summary([::AWSConfig])
    

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetAccountSummary",)
    

# GetAccountSummary Operation

Retrieves information about IAM entity usage and IAM quotas in the AWS account.

For information about limitations on IAM entities, see [Limitations on IAM Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *IAM User Guide*.

# Returns

`GetAccountSummaryResponse`

# Exceptions

`ServiceFailureException`.

# Example: To get information about IAM entity quotas and usage in the current account

The following command returns information about the IAM entity quotas and usage in the current AWS account.

Output:
```
Dict(
    "SummaryMap" => Dict(
        "AccessKeysPerUserQuota" => 2,
        "AccountAccessKeysPresent" => 1,
        "AccountMFAEnabled" => 0,
        "AccountSigningCertificatesPresent" => 0,
        "AttachedPoliciesPerGroupQuota" => 10,
        "AttachedPoliciesPerRoleQuota" => 10,
        "AttachedPoliciesPerUserQuota" => 10,
        "GroupPolicySizeQuota" => 5120,
        "Groups" => 15,
        "GroupsPerUserQuota" => 10,
        "GroupsQuota" => 100,
        "MFADevices" => 6,
        "MFADevicesInUse" => 3,
        "Policies" => 8,
        "PoliciesQuota" => 1000,
        "PolicySizeQuota" => 5120,
        "PolicyVersionsInUse" => 22,
        "PolicyVersionsInUseQuota" => 10000,
        "ServerCertificates" => 1,
        "ServerCertificatesQuota" => 20,
        "SigningCertificatesPerUserQuota" => 2,
        "UserPolicySizeQuota" => 2048,
        "Users" => 27,
        "UsersQuota" => 5000,
        "VersionsPerPolicyQuota" => 5
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountSummary)
"""
@inline get_account_summary(aws::AWSConfig=default_aws_config(); args...) = get_account_summary(aws, args)

@inline get_account_summary(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetAccountSummary", args)

@inline get_account_summary(args) = get_account_summary(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_context_keys_for_custom_policy
    get_context_keys_for_custom_policy([::AWSConfig], arguments::Dict)
    get_context_keys_for_custom_policy([::AWSConfig]; PolicyInputList=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetContextKeysForCustomPolicy", arguments::Dict)
    iam([::AWSConfig], "GetContextKeysForCustomPolicy", PolicyInputList=)

# GetContextKeysForCustomPolicy Operation

Gets a list of all of the context keys referenced in the input policies. The policies are supplied as a list of one or more strings. To get the context keys from policies associated with an IAM user, group, or role, use [GetContextKeysForPrincipalPolicy](@ref).

Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. Context keys can be evaluated by testing against a value specified in an IAM policy. Use `GetContextKeysForCustomPolicy` to understand what key names and values you must supply when you call [SimulateCustomPolicy](@ref). Note that all parameters are shown in unencoded form here for clarity but must be URL encoded to be included as a part of a real HTML request.

# Arguments

## `PolicyInputList = [::String, ...]` -- *Required*
A list of policies for which you want the list of context keys referenced in those policies. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)




# Returns

`GetContextKeysForPolicyResponse`

# Exceptions

`InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetContextKeysForCustomPolicy)
"""
@inline get_context_keys_for_custom_policy(aws::AWSConfig=default_aws_config(); args...) = get_context_keys_for_custom_policy(aws, args)

@inline get_context_keys_for_custom_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetContextKeysForCustomPolicy", args)

@inline get_context_keys_for_custom_policy(args) = get_context_keys_for_custom_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_context_keys_for_principal_policy
    get_context_keys_for_principal_policy([::AWSConfig], arguments::Dict)
    get_context_keys_for_principal_policy([::AWSConfig]; PolicySourceArn=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetContextKeysForPrincipalPolicy", arguments::Dict)
    iam([::AWSConfig], "GetContextKeysForPrincipalPolicy", PolicySourceArn=, <keyword arguments>)

# GetContextKeysForPrincipalPolicy Operation

Gets a list of all of the context keys referenced in all the IAM policies that are attached to the specified IAM entity. The entity can be an IAM user, group, or role. If you specify a user, then the request also includes all of the policies attached to groups that the user is a member of.

You can optionally include a list of one or more additional policies, specified as strings. If you want to include *only* a list of policies by string, use [GetContextKeysForCustomPolicy](@ref) instead.

**Note:** This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use [GetContextKeysForCustomPolicy](@ref) instead.

Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. Context keys can be evaluated by testing against a value in an IAM policy. Use [GetContextKeysForPrincipalPolicy](@ref) to understand what key names and values you must supply when you call [SimulatePrincipalPolicy](@ref).

# Arguments

## `PolicySourceArn = ::String` -- *Required*
The ARN of a user, group, or role whose policies contain the context keys that you want listed. If you specify a user, the list includes context keys that are found in all policies that are attached to the user. The list also includes all groups that the user is a member of. If you pick a group or a role, then it includes only those context keys that are found in policies attached to that entity. Note that all parameters are shown in unencoded form here for clarity, but must be URL encoded to be included as a part of a real HTML request.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `PolicyInputList = [::String, ...]`
An optional list of additional policies for which you want the list of context keys that are referenced.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)




# Returns

`GetContextKeysForPolicyResponse`

# Exceptions

`NoSuchEntityException` or `InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetContextKeysForPrincipalPolicy)
"""
@inline get_context_keys_for_principal_policy(aws::AWSConfig=default_aws_config(); args...) = get_context_keys_for_principal_policy(aws, args)

@inline get_context_keys_for_principal_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetContextKeysForPrincipalPolicy", args)

@inline get_context_keys_for_principal_policy(args) = get_context_keys_for_principal_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_credential_report
    get_credential_report([::AWSConfig])
    

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetCredentialReport",)
    

# GetCredentialReport Operation

Retrieves a credential report for the AWS account. For more information about the credential report, see [Getting Credential Reports](http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html) in the *IAM User Guide*.

# Returns

`GetCredentialReportResponse`

# Exceptions

`CredentialReportNotPresentException`, `CredentialReportExpiredException`, `CredentialReportNotReadyException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetCredentialReport)
"""
@inline get_credential_report(aws::AWSConfig=default_aws_config(); args...) = get_credential_report(aws, args)

@inline get_credential_report(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetCredentialReport", args)

@inline get_credential_report(args) = get_credential_report(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_group
    get_group([::AWSConfig], arguments::Dict)
    get_group([::AWSConfig]; GroupName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetGroup", arguments::Dict)
    iam([::AWSConfig], "GetGroup", GroupName=, <keyword arguments>)

# GetGroup Operation

Returns a list of IAM users that are in the specified IAM group. You can paginate the results using the `MaxItems` and `Marker` parameters.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the group.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`GetGroupResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetGroup)
"""
@inline get_group(aws::AWSConfig=default_aws_config(); args...) = get_group(aws, args)

@inline get_group(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetGroup", args)

@inline get_group(args) = get_group(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_group_policy
    get_group_policy([::AWSConfig], arguments::Dict)
    get_group_policy([::AWSConfig]; GroupName=, PolicyName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetGroupPolicy", arguments::Dict)
    iam([::AWSConfig], "GetGroupPolicy", GroupName=, PolicyName=)

# GetGroupPolicy Operation

Retrieves the specified inline policy document that is embedded in the specified IAM group.

**Note**
> Policies returned by this API are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.

An IAM group can also have managed policies attached to it. To retrieve a managed policy document that is attached to a group, use [GetPolicy](@ref) to determine the policy's default version, then use [GetPolicyVersion](@ref) to retrieve the policy document.

For more information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the group the policy is associated with.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyName = ::String` -- *Required*
The name of the policy document to get.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Returns

`GetGroupPolicyResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetGroupPolicy)
"""
@inline get_group_policy(aws::AWSConfig=default_aws_config(); args...) = get_group_policy(aws, args)

@inline get_group_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetGroupPolicy", args)

@inline get_group_policy(args) = get_group_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_instance_profile
    get_instance_profile([::AWSConfig], arguments::Dict)
    get_instance_profile([::AWSConfig]; InstanceProfileName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetInstanceProfile", arguments::Dict)
    iam([::AWSConfig], "GetInstanceProfile", InstanceProfileName=)

# GetInstanceProfile Operation

Retrieves information about the specified instance profile, including the instance profile's path, GUID, ARN, and role. For more information about instance profiles, see [About Instance Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html) in the *IAM User Guide*.

# Arguments

## `InstanceProfileName = ::String` -- *Required*
The name of the instance profile to get information about.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Returns

`GetInstanceProfileResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

# Example: To get information about an instance profile

The following command gets information about the instance profile named ExampleInstanceProfile.

Input:
```
[
    "InstanceProfileName" => "ExampleInstanceProfile"
]
```

Output:
```
Dict(
    "InstanceProfile" => Dict(
        "Arn" => "arn:aws:iam::336924118301:instance-profile/ExampleInstanceProfile",
        "CreateDate" => "2013-06-12T23:52:02Z",
        "InstanceProfileId" => "AID2MAB8DPLSRHEXAMPLE",
        "InstanceProfileName" => "ExampleInstanceProfile",
        "Path" => "/",
        "Roles" => [
            Dict(
                "Arn" => "arn:aws:iam::336924118301:role/Test-Role",
                "AssumeRolePolicyDocument" => "<URL-encoded-JSON>",
                "CreateDate" => "2013-01-09T06:33:26Z",
                "Path" => "/",
                "RoleId" => "AIDGPMS9RO4H3FEXAMPLE",
                "RoleName" => "Test-Role"
            )
        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetInstanceProfile)
"""
@inline get_instance_profile(aws::AWSConfig=default_aws_config(); args...) = get_instance_profile(aws, args)

@inline get_instance_profile(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetInstanceProfile", args)

@inline get_instance_profile(args) = get_instance_profile(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_login_profile
    get_login_profile([::AWSConfig], arguments::Dict)
    get_login_profile([::AWSConfig]; UserName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetLoginProfile", arguments::Dict)
    iam([::AWSConfig], "GetLoginProfile", UserName=)

# GetLoginProfile Operation

Retrieves the user name and password-creation date for the specified IAM user. If the user has not been assigned a password, the operation returns a 404 (`NoSuchEntity`) error.

# Arguments

## `UserName = ::String` -- *Required*
The name of the user whose login profile you want to retrieve.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Returns

`GetLoginProfileResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

# Example: To get password information for an IAM user

The following command gets information about the password for the IAM user named Anika.

Input:
```
[
    "UserName" => "Anika"
]
```

Output:
```
Dict(
    "LoginProfile" => Dict(
        "CreateDate" => "2012-09-21T23:03:39Z",
        "UserName" => "Anika"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetLoginProfile)
"""
@inline get_login_profile(aws::AWSConfig=default_aws_config(); args...) = get_login_profile(aws, args)

@inline get_login_profile(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetLoginProfile", args)

@inline get_login_profile(args) = get_login_profile(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_open_idconnect_provider
    get_open_idconnect_provider([::AWSConfig], arguments::Dict)
    get_open_idconnect_provider([::AWSConfig]; OpenIDConnectProviderArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetOpenIDConnectProvider", arguments::Dict)
    iam([::AWSConfig], "GetOpenIDConnectProvider", OpenIDConnectProviderArn=)

# GetOpenIDConnectProvider Operation

Returns information about the specified OpenID Connect (OIDC) provider resource object in IAM.

# Arguments

## `OpenIDConnectProviderArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the OIDC provider resource object in IAM to get information for. You can get a list of OIDC provider resource ARNs by using the [ListOpenIDConnectProviders](@ref) operation.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.




# Returns

`GetOpenIDConnectProviderResponse`

# Exceptions

`InvalidInputException`, `NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetOpenIDConnectProvider)
"""
@inline get_open_idconnect_provider(aws::AWSConfig=default_aws_config(); args...) = get_open_idconnect_provider(aws, args)

@inline get_open_idconnect_provider(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetOpenIDConnectProvider", args)

@inline get_open_idconnect_provider(args) = get_open_idconnect_provider(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_policy
    get_policy([::AWSConfig], arguments::Dict)
    get_policy([::AWSConfig]; PolicyArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetPolicy", arguments::Dict)
    iam([::AWSConfig], "GetPolicy", PolicyArn=)

# GetPolicy Operation

Retrieves information about the specified managed policy, including the policy's default version and the total number of IAM users, groups, and roles to which the policy is attached. To retrieve the list of the specific users, groups, and roles that the policy is attached to, use the [ListEntitiesForPolicy](@ref) API. This API returns metadata about the policy. To retrieve the actual policy document for a specific version of the policy, use [GetPolicyVersion](@ref).

This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded with an IAM user, group, or role, use the [GetUserPolicy](@ref), [GetGroupPolicy](@ref), or [GetRolePolicy](@ref) API.

For more information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the managed policy that you want information about.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.




# Returns

`GetPolicyResponse`

# Exceptions

`NoSuchEntityException`, `InvalidInputException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetPolicy)
"""
@inline get_policy(aws::AWSConfig=default_aws_config(); args...) = get_policy(aws, args)

@inline get_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetPolicy", args)

@inline get_policy(args) = get_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_policy_version
    get_policy_version([::AWSConfig], arguments::Dict)
    get_policy_version([::AWSConfig]; PolicyArn=, VersionId=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetPolicyVersion", arguments::Dict)
    iam([::AWSConfig], "GetPolicyVersion", PolicyArn=, VersionId=)

# GetPolicyVersion Operation

Retrieves information about the specified version of the specified managed policy, including the policy document.

**Note**
> Policies returned by this API are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.

To list the available versions for a policy, use [ListPolicyVersions](@ref).

This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded in a user, group, or role, use the [GetUserPolicy](@ref), [GetGroupPolicy](@ref), or [GetRolePolicy](@ref) API.

For more information about the types of policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

For more information about managed policy versions, see [Versioning for Managed Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the *IAM User Guide*.

# Arguments

## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the managed policy that you want information about.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `VersionId = ::String` -- *Required*
Identifies the policy version to retrieve.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.




# Returns

`GetPolicyVersionResponse`

# Exceptions

`NoSuchEntityException`, `InvalidInputException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetPolicyVersion)
"""
@inline get_policy_version(aws::AWSConfig=default_aws_config(); args...) = get_policy_version(aws, args)

@inline get_policy_version(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetPolicyVersion", args)

@inline get_policy_version(args) = get_policy_version(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_role
    get_role([::AWSConfig], arguments::Dict)
    get_role([::AWSConfig]; RoleName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetRole", arguments::Dict)
    iam([::AWSConfig], "GetRole", RoleName=)

# GetRole Operation

Retrieves information about the specified role, including the role's path, GUID, ARN, and the role's trust policy that grants permission to assume the role. For more information about roles, see [Working with Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).

**Note**
> Policies returned by this API are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.

# Arguments

## `RoleName = ::String` -- *Required*
The name of the IAM role to get information about.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Returns

`GetRoleResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

# Example: To get information about an IAM role

The following command gets information about the role named Test-Role.

Input:
```
[
    "RoleName" => "Test-Role"
]
```

Output:
```
Dict(
    "Role" => Dict(
        "Arn" => "arn:aws:iam::123456789012:role/Test-Role",
        "AssumeRolePolicyDocument" => "<URL-encoded-JSON>",
        "CreateDate" => "2013-04-18T05:01:58Z",
        "Path" => "/",
        "RoleId" => "AIDIODR4TAW7CSEXAMPLE",
        "RoleName" => "Test-Role"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetRole)
"""
@inline get_role(aws::AWSConfig=default_aws_config(); args...) = get_role(aws, args)

@inline get_role(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetRole", args)

@inline get_role(args) = get_role(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_role_policy
    get_role_policy([::AWSConfig], arguments::Dict)
    get_role_policy([::AWSConfig]; RoleName=, PolicyName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetRolePolicy", arguments::Dict)
    iam([::AWSConfig], "GetRolePolicy", RoleName=, PolicyName=)

# GetRolePolicy Operation

Retrieves the specified inline policy document that is embedded with the specified IAM role.

**Note**
> Policies returned by this API are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.

An IAM role can also have managed policies attached to it. To retrieve a managed policy document that is attached to a role, use [GetPolicy](@ref) to determine the policy's default version, then use [GetPolicyVersion](@ref) to retrieve the policy document.

For more information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

For more information about roles, see [Using Roles to Delegate Permissions and Federate Identities](http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).

# Arguments

## `RoleName = ::String` -- *Required*
The name of the role associated with the policy.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyName = ::String` -- *Required*
The name of the policy document to get.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Returns

`GetRolePolicyResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetRolePolicy)
"""
@inline get_role_policy(aws::AWSConfig=default_aws_config(); args...) = get_role_policy(aws, args)

@inline get_role_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetRolePolicy", args)

@inline get_role_policy(args) = get_role_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_samlprovider
    get_samlprovider([::AWSConfig], arguments::Dict)
    get_samlprovider([::AWSConfig]; SAMLProviderArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetSAMLProvider", arguments::Dict)
    iam([::AWSConfig], "GetSAMLProvider", SAMLProviderArn=)

# GetSAMLProvider Operation

Returns the SAML provider metadocument that was uploaded when the IAM SAML provider resource object was created or updated.

**Note**
> This operation requires [Signature Version 4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

# Arguments

## `SAMLProviderArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the SAML provider resource object in IAM to get information about.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.




# Returns

`GetSAMLProviderResponse`

# Exceptions

`NoSuchEntityException`, `InvalidInputException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetSAMLProvider)
"""
@inline get_samlprovider(aws::AWSConfig=default_aws_config(); args...) = get_samlprovider(aws, args)

@inline get_samlprovider(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetSAMLProvider", args)

@inline get_samlprovider(args) = get_samlprovider(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_sshpublic_key
    get_sshpublic_key([::AWSConfig], arguments::Dict)
    get_sshpublic_key([::AWSConfig]; UserName=, SSHPublicKeyId=, Encoding=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetSSHPublicKey", arguments::Dict)
    iam([::AWSConfig], "GetSSHPublicKey", UserName=, SSHPublicKeyId=, Encoding=)

# GetSSHPublicKey Operation

Retrieves the specified SSH public key, including metadata about the key.

The SSH public key retrieved by this operation is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see [Set up AWS CodeCommit for SSH Connections](http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the *AWS CodeCommit User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name of the IAM user associated with the SSH public key.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `SSHPublicKeyId = ::String` -- *Required*
The unique identifier for the SSH public key.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.


## `Encoding = "SSH" or "PEM"` -- *Required*
Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.




# Returns

`GetSSHPublicKeyResponse`

# Exceptions

`NoSuchEntityException` or `UnrecognizedPublicKeyEncodingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetSSHPublicKey)
"""
@inline get_sshpublic_key(aws::AWSConfig=default_aws_config(); args...) = get_sshpublic_key(aws, args)

@inline get_sshpublic_key(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetSSHPublicKey", args)

@inline get_sshpublic_key(args) = get_sshpublic_key(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_server_certificate
    get_server_certificate([::AWSConfig], arguments::Dict)
    get_server_certificate([::AWSConfig]; ServerCertificateName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetServerCertificate", arguments::Dict)
    iam([::AWSConfig], "GetServerCertificate", ServerCertificateName=)

# GetServerCertificate Operation

Retrieves information about the specified server certificate stored in IAM.

For more information about working with server certificates, see [Working with Server Certificates](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the *IAM User Guide*. This topic includes a list of AWS services that can use the server certificates that you manage with IAM.

# Arguments

## `ServerCertificateName = ::String` -- *Required*
The name of the server certificate you want to retrieve information about.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Returns

`GetServerCertificateResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServerCertificate)
"""
@inline get_server_certificate(aws::AWSConfig=default_aws_config(); args...) = get_server_certificate(aws, args)

@inline get_server_certificate(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetServerCertificate", args)

@inline get_server_certificate(args) = get_server_certificate(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_service_linked_role_deletion_status
    get_service_linked_role_deletion_status([::AWSConfig], arguments::Dict)
    get_service_linked_role_deletion_status([::AWSConfig]; DeletionTaskId=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetServiceLinkedRoleDeletionStatus", arguments::Dict)
    iam([::AWSConfig], "GetServiceLinkedRoleDeletionStatus", DeletionTaskId=)

# GetServiceLinkedRoleDeletionStatus Operation

Retrieves the status of your service-linked role deletion. After you use the [DeleteServiceLinkedRole](@ref) API operation to submit a service-linked role for deletion, you can use the `DeletionTaskId` parameter in `GetServiceLinkedRoleDeletionStatus` to check the status of the deletion. If the deletion fails, this operation returns the reason that it failed, if that information is returned by the service.

# Arguments

## `DeletionTaskId = ::String` -- *Required*
The deletion task identifier. This identifier is returned by the [DeleteServiceLinkedRole](@ref) operation in the format `task/aws-service-role/<service-principal-name>/<role-name>/<task-uuid>`.




# Returns

`GetServiceLinkedRoleDeletionStatusResponse`

# Exceptions

`NoSuchEntityException`, `InvalidInputException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServiceLinkedRoleDeletionStatus)
"""
@inline get_service_linked_role_deletion_status(aws::AWSConfig=default_aws_config(); args...) = get_service_linked_role_deletion_status(aws, args)

@inline get_service_linked_role_deletion_status(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetServiceLinkedRoleDeletionStatus", args)

@inline get_service_linked_role_deletion_status(args) = get_service_linked_role_deletion_status(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_user
    get_user([::AWSConfig], arguments::Dict)
    get_user([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetUser", arguments::Dict)
    iam([::AWSConfig], "GetUser", <keyword arguments>)

# GetUser Operation

Retrieves information about the specified IAM user, including the user's creation date, path, unique ID, and ARN.

If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID used to sign the request to this API.

# Arguments

## `UserName = ::String`
The name of the user to get information about.

This parameter is optional. If it is not included, it defaults to the user making the request. This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Returns

`GetUserResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

# Example: To get information about an IAM user

The following command gets information about the IAM user named Bob.

Input:
```
[
    "UserName" => "Bob"
]
```

Output:
```
Dict(
    "User" => Dict(
        "Arn" => "arn:aws:iam::123456789012:user/Bob",
        "CreateDate" => "2012-09-21T23:03:13Z",
        "Path" => "/",
        "UserId" => "AKIAIOSFODNN7EXAMPLE",
        "UserName" => "Bob"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetUser)
"""
@inline get_user(aws::AWSConfig=default_aws_config(); args...) = get_user(aws, args)

@inline get_user(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetUser", args)

@inline get_user(args) = get_user(default_aws_config(), args)


"""
    using AWSSDK.IAM.get_user_policy
    get_user_policy([::AWSConfig], arguments::Dict)
    get_user_policy([::AWSConfig]; UserName=, PolicyName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "GetUserPolicy", arguments::Dict)
    iam([::AWSConfig], "GetUserPolicy", UserName=, PolicyName=)

# GetUserPolicy Operation

Retrieves the specified inline policy document that is embedded in the specified IAM user.

**Note**
> Policies returned by this API are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.

An IAM user can also have managed policies attached to it. To retrieve a managed policy document that is attached to a user, use [GetPolicy](@ref) to determine the policy's default version, then use [GetPolicyVersion](@ref) to retrieve the policy document.

For more information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name of the user who the policy is associated with.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyName = ::String` -- *Required*
The name of the policy document to get.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Returns

`GetUserPolicyResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetUserPolicy)
"""
@inline get_user_policy(aws::AWSConfig=default_aws_config(); args...) = get_user_policy(aws, args)

@inline get_user_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "GetUserPolicy", args)

@inline get_user_policy(args) = get_user_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_access_keys
    list_access_keys([::AWSConfig], arguments::Dict)
    list_access_keys([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListAccessKeys", arguments::Dict)
    iam([::AWSConfig], "ListAccessKeys", <keyword arguments>)

# ListAccessKeys Operation

Returns information about the access key IDs associated with the specified IAM user. If there are none, the operation returns an empty list.

Although each user is limited to a small number of keys, you can still paginate the results using the `MaxItems` and `Marker` parameters.

If the `UserName` field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request. Because this operation works for access keys under the AWS account, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.

**Note**
> To ensure the security of your AWS account, the secret access key is accessible only during key and user creation.

# Arguments

## `UserName = ::String`
The name of the user.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListAccessKeysResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

# Example: To list the access key IDs for an IAM user

The following command lists the access keys IDs for the IAM user named Alice.

Input:
```
[
    "UserName" => "Alice"
]
```

Output:
```
Dict(
    "AccessKeyMetadata" => [
        Dict(
            "AccessKeyId" => "AKIA111111111EXAMPLE",
            "CreateDate" => "2016-12-01T22:19:58Z",
            "Status" => "Active",
            "UserName" => "Alice"
        ),
        Dict(
            "AccessKeyId" => "AKIA222222222EXAMPLE",
            "CreateDate" => "2016-12-01T22:20:01Z",
            "Status" => "Active",
            "UserName" => "Alice"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAccessKeys)
"""
@inline list_access_keys(aws::AWSConfig=default_aws_config(); args...) = list_access_keys(aws, args)

@inline list_access_keys(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListAccessKeys", args)

@inline list_access_keys(args) = list_access_keys(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_account_aliases
    list_account_aliases([::AWSConfig], arguments::Dict)
    list_account_aliases([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListAccountAliases", arguments::Dict)
    iam([::AWSConfig], "ListAccountAliases", <keyword arguments>)

# ListAccountAliases Operation

Lists the account alias associated with the AWS account (Note: you can have only one). For information about using an AWS account alias, see [Using an Alias for Your AWS Account ID](http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html) in the *IAM User Guide*.

# Arguments

## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListAccountAliasesResponse`

# Exceptions

`ServiceFailureException`.

# Example: To list account aliases

The following command lists the aliases for the current account.

Input:
```
[

]
```

Output:
```
Dict(
    "AccountAliases" => [
        "exmaple-corporation"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAccountAliases)
"""
@inline list_account_aliases(aws::AWSConfig=default_aws_config(); args...) = list_account_aliases(aws, args)

@inline list_account_aliases(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListAccountAliases", args)

@inline list_account_aliases(args) = list_account_aliases(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_attached_group_policies
    list_attached_group_policies([::AWSConfig], arguments::Dict)
    list_attached_group_policies([::AWSConfig]; GroupName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListAttachedGroupPolicies", arguments::Dict)
    iam([::AWSConfig], "ListAttachedGroupPolicies", GroupName=, <keyword arguments>)

# ListAttachedGroupPolicies Operation

Lists all managed policies that are attached to the specified IAM group.

An IAM group can also have inline policies embedded with it. To list the inline policies for a group, use the [ListGroupPolicies](@ref) API. For information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

You can paginate the results using the `MaxItems` and `Marker` parameters. You can use the `PathPrefix` parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.

# Arguments

## `GroupName = ::String` -- *Required*
The name (friendly name, not ARN) of the group to list attached policies for.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PathPrefix = ::String`
The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListAttachedGroupPoliciesResponse`

# Exceptions

`NoSuchEntityException`, `InvalidInputException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedGroupPolicies)
"""
@inline list_attached_group_policies(aws::AWSConfig=default_aws_config(); args...) = list_attached_group_policies(aws, args)

@inline list_attached_group_policies(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListAttachedGroupPolicies", args)

@inline list_attached_group_policies(args) = list_attached_group_policies(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_attached_role_policies
    list_attached_role_policies([::AWSConfig], arguments::Dict)
    list_attached_role_policies([::AWSConfig]; RoleName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListAttachedRolePolicies", arguments::Dict)
    iam([::AWSConfig], "ListAttachedRolePolicies", RoleName=, <keyword arguments>)

# ListAttachedRolePolicies Operation

Lists all managed policies that are attached to the specified IAM role.

An IAM role can also have inline policies embedded with it. To list the inline policies for a role, use the [ListRolePolicies](@ref) API. For information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

You can paginate the results using the `MaxItems` and `Marker` parameters. You can use the `PathPrefix` parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified role (or none that match the specified path prefix), the operation returns an empty list.

# Arguments

## `RoleName = ::String` -- *Required*
The name (friendly name, not ARN) of the role to list attached policies for.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PathPrefix = ::String`
The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListAttachedRolePoliciesResponse`

# Exceptions

`NoSuchEntityException`, `InvalidInputException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedRolePolicies)
"""
@inline list_attached_role_policies(aws::AWSConfig=default_aws_config(); args...) = list_attached_role_policies(aws, args)

@inline list_attached_role_policies(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListAttachedRolePolicies", args)

@inline list_attached_role_policies(args) = list_attached_role_policies(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_attached_user_policies
    list_attached_user_policies([::AWSConfig], arguments::Dict)
    list_attached_user_policies([::AWSConfig]; UserName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListAttachedUserPolicies", arguments::Dict)
    iam([::AWSConfig], "ListAttachedUserPolicies", UserName=, <keyword arguments>)

# ListAttachedUserPolicies Operation

Lists all managed policies that are attached to the specified IAM user.

An IAM user can also have inline policies embedded with it. To list the inline policies for a user, use the [ListUserPolicies](@ref) API. For information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

You can paginate the results using the `MaxItems` and `Marker` parameters. You can use the `PathPrefix` parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.

# Arguments

## `UserName = ::String` -- *Required*
The name (friendly name, not ARN) of the user to list attached policies for.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PathPrefix = ::String`
The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListAttachedUserPoliciesResponse`

# Exceptions

`NoSuchEntityException`, `InvalidInputException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedUserPolicies)
"""
@inline list_attached_user_policies(aws::AWSConfig=default_aws_config(); args...) = list_attached_user_policies(aws, args)

@inline list_attached_user_policies(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListAttachedUserPolicies", args)

@inline list_attached_user_policies(args) = list_attached_user_policies(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_entities_for_policy
    list_entities_for_policy([::AWSConfig], arguments::Dict)
    list_entities_for_policy([::AWSConfig]; PolicyArn=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListEntitiesForPolicy", arguments::Dict)
    iam([::AWSConfig], "ListEntitiesForPolicy", PolicyArn=, <keyword arguments>)

# ListEntitiesForPolicy Operation

Lists all IAM users, groups, and roles that the specified managed policy is attached to.

You can use the optional `EntityFilter` parameter to limit the results to a particular type of entity (users, groups, or roles). For example, to list only the roles that are attached to the specified policy, set `EntityFilter` to `Role`.

You can paginate the results using the `MaxItems` and `Marker` parameters.

# Arguments

## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM policy for which you want the versions.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `EntityFilter = "User", "Role", "Group", "LocalManagedPolicy" or "AWSManagedPolicy"`
The entity type to use for filtering the results.

For example, when `EntityFilter` is `Role`, only the roles that are attached to the specified policy are returned. This parameter is optional. If it is not included, all attached entities (users, groups, and roles) are returned. The argument for this parameter must be one of the valid values listed below.


## `PathPrefix = ::String`
The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all entities.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `PolicyUsageFilter = "PermissionsPolicy" or "PermissionsBoundary"`
The policy usage method to use for filtering the results.

To list only permissions policies, set `PolicyUsageFilter` to `PermissionsPolicy`. To list only the policies used to set permissions boundaries, set the value to `PermissionsBoundary`.

This parameter is optional. If it is not included, all policies are returned.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListEntitiesForPolicyResponse`

# Exceptions

`NoSuchEntityException`, `InvalidInputException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListEntitiesForPolicy)
"""
@inline list_entities_for_policy(aws::AWSConfig=default_aws_config(); args...) = list_entities_for_policy(aws, args)

@inline list_entities_for_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListEntitiesForPolicy", args)

@inline list_entities_for_policy(args) = list_entities_for_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_group_policies
    list_group_policies([::AWSConfig], arguments::Dict)
    list_group_policies([::AWSConfig]; GroupName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListGroupPolicies", arguments::Dict)
    iam([::AWSConfig], "ListGroupPolicies", GroupName=, <keyword arguments>)

# ListGroupPolicies Operation

Lists the names of the inline policies that are embedded in the specified IAM group.

An IAM group can also have managed policies attached to it. To list the managed policies that are attached to a group, use [ListAttachedGroupPolicies](@ref). For more information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

You can paginate the results using the `MaxItems` and `Marker` parameters. If there are no inline policies embedded with the specified group, the operation returns an empty list.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the group to list policies for.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListGroupPoliciesResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

# Example: To list the in-line policies for an IAM group

The following command lists the names of in-line policies that are embedded in the IAM group named Admins.

Input:
```
[
    "GroupName" => "Admins"
]
```

Output:
```
Dict(
    "PolicyNames" => [
        "AdminRoot",
        "KeyPolicy"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupPolicies)
"""
@inline list_group_policies(aws::AWSConfig=default_aws_config(); args...) = list_group_policies(aws, args)

@inline list_group_policies(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListGroupPolicies", args)

@inline list_group_policies(args) = list_group_policies(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_groups
    list_groups([::AWSConfig], arguments::Dict)
    list_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListGroups", arguments::Dict)
    iam([::AWSConfig], "ListGroups", <keyword arguments>)

# ListGroups Operation

Lists the IAM groups that have the specified path prefix.

You can paginate the results using the `MaxItems` and `Marker` parameters.

# Arguments

## `PathPrefix = ::String`
The path prefix for filtering the results. For example, the prefix `/division_abc/subdivision_xyz/` gets all groups whose path starts with `/division_abc/subdivision_xyz/`.

This parameter is optional. If it is not included, it defaults to a slash (/), listing all groups. This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListGroupsResponse`

# Exceptions

`ServiceFailureException`.

# Example: To list the IAM groups for the current account

The following command lists the IAM groups in the current account:

Input:
```
[

]
```

Output:
```
Dict(
    "Groups" => [
        Dict(
            "Arn" => "arn:aws:iam::123456789012:group/Admins",
            "CreateDate" => "2016-12-15T21:40:08.121Z",
            "GroupId" => "AGPA1111111111EXAMPLE",
            "GroupName" => "Admins",
            "Path" => "/division_abc/subdivision_xyz/"
        ),
        Dict(
            "Arn" => "arn:aws:iam::123456789012:group/division_abc/subdivision_xyz/product_1234/engineering/Test",
            "CreateDate" => "2016-11-30T14:10:01.156Z",
            "GroupId" => "AGP22222222222EXAMPLE",
            "GroupName" => "Test",
            "Path" => "/division_abc/subdivision_xyz/product_1234/engineering/"
        ),
        Dict(
            "Arn" => "arn:aws:iam::123456789012:group/division_abc/subdivision_xyz/product_1234/Managers",
            "CreateDate" => "2016-06-12T20:14:52.032Z",
            "GroupId" => "AGPI3333333333EXAMPLE",
            "GroupName" => "Managers",
            "Path" => "/division_abc/subdivision_xyz/product_1234/"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroups)
"""
@inline list_groups(aws::AWSConfig=default_aws_config(); args...) = list_groups(aws, args)

@inline list_groups(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListGroups", args)

@inline list_groups(args) = list_groups(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_groups_for_user
    list_groups_for_user([::AWSConfig], arguments::Dict)
    list_groups_for_user([::AWSConfig]; UserName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListGroupsForUser", arguments::Dict)
    iam([::AWSConfig], "ListGroupsForUser", UserName=, <keyword arguments>)

# ListGroupsForUser Operation

Lists the IAM groups that the specified IAM user belongs to.

You can paginate the results using the `MaxItems` and `Marker` parameters.

# Arguments

## `UserName = ::String` -- *Required*
The name of the user to list groups for.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListGroupsForUserResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

# Example: To list the groups that an IAM user belongs to

The following command displays the groups that the IAM user named Bob belongs to.

Input:
```
[
    "UserName" => "Bob"
]
```

Output:
```
Dict(
    "Groups" => [
        Dict(
            "Arn" => "arn:aws:iam::123456789012:group/division_abc/subdivision_xyz/product_1234/engineering/Test",
            "CreateDate" => "2016-11-30T14:10:01.156Z",
            "GroupId" => "AGP2111111111EXAMPLE",
            "GroupName" => "Test",
            "Path" => "/division_abc/subdivision_xyz/product_1234/engineering/"
        ),
        Dict(
            "Arn" => "arn:aws:iam::123456789012:group/division_abc/subdivision_xyz/product_1234/Managers",
            "CreateDate" => "2016-06-12T20:14:52.032Z",
            "GroupId" => "AGPI222222222SEXAMPLE",
            "GroupName" => "Managers",
            "Path" => "/division_abc/subdivision_xyz/product_1234/"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupsForUser)
"""
@inline list_groups_for_user(aws::AWSConfig=default_aws_config(); args...) = list_groups_for_user(aws, args)

@inline list_groups_for_user(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListGroupsForUser", args)

@inline list_groups_for_user(args) = list_groups_for_user(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_instance_profiles
    list_instance_profiles([::AWSConfig], arguments::Dict)
    list_instance_profiles([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListInstanceProfiles", arguments::Dict)
    iam([::AWSConfig], "ListInstanceProfiles", <keyword arguments>)

# ListInstanceProfiles Operation

Lists the instance profiles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about instance profiles, go to [About Instance Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).

You can paginate the results using the `MaxItems` and `Marker` parameters.

# Arguments

## `PathPrefix = ::String`
The path prefix for filtering the results. For example, the prefix `/application_abc/component_xyz/` gets all instance profiles whose path starts with `/application_abc/component_xyz/`.

This parameter is optional. If it is not included, it defaults to a slash (/), listing all instance profiles. This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListInstanceProfilesResponse`

# Exceptions

`ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfiles)
"""
@inline list_instance_profiles(aws::AWSConfig=default_aws_config(); args...) = list_instance_profiles(aws, args)

@inline list_instance_profiles(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListInstanceProfiles", args)

@inline list_instance_profiles(args) = list_instance_profiles(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_instance_profiles_for_role
    list_instance_profiles_for_role([::AWSConfig], arguments::Dict)
    list_instance_profiles_for_role([::AWSConfig]; RoleName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListInstanceProfilesForRole", arguments::Dict)
    iam([::AWSConfig], "ListInstanceProfilesForRole", RoleName=, <keyword arguments>)

# ListInstanceProfilesForRole Operation

Lists the instance profiles that have the specified associated IAM role. If there are none, the operation returns an empty list. For more information about instance profiles, go to [About Instance Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).

You can paginate the results using the `MaxItems` and `Marker` parameters.

# Arguments

## `RoleName = ::String` -- *Required*
The name of the role to list instance profiles for.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListInstanceProfilesForRoleResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfilesForRole)
"""
@inline list_instance_profiles_for_role(aws::AWSConfig=default_aws_config(); args...) = list_instance_profiles_for_role(aws, args)

@inline list_instance_profiles_for_role(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListInstanceProfilesForRole", args)

@inline list_instance_profiles_for_role(args) = list_instance_profiles_for_role(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_mfadevices
    list_mfadevices([::AWSConfig], arguments::Dict)
    list_mfadevices([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListMFADevices", arguments::Dict)
    iam([::AWSConfig], "ListMFADevices", <keyword arguments>)

# ListMFADevices Operation

Lists the MFA devices for an IAM user. If the request includes a IAM user name, then this operation lists all the MFA devices associated with the specified user. If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request for this API.

You can paginate the results using the `MaxItems` and `Marker` parameters.

# Arguments

## `UserName = ::String`
The name of the user whose MFA devices you want to list.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListMFADevicesResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListMFADevices)
"""
@inline list_mfadevices(aws::AWSConfig=default_aws_config(); args...) = list_mfadevices(aws, args)

@inline list_mfadevices(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListMFADevices", args)

@inline list_mfadevices(args) = list_mfadevices(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_open_idconnect_providers
    list_open_idconnect_providers([::AWSConfig], arguments::Dict)
    list_open_idconnect_providers([::AWSConfig]; )

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListOpenIDConnectProviders", arguments::Dict)
    iam([::AWSConfig], "ListOpenIDConnectProviders", )

# ListOpenIDConnectProviders Operation

Lists information about the IAM OpenID Connect (OIDC) provider resource objects defined in the AWS account.

# Arguments



# Returns

`ListOpenIDConnectProvidersResponse`

# Exceptions

`ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListOpenIDConnectProviders)
"""
@inline list_open_idconnect_providers(aws::AWSConfig=default_aws_config(); args...) = list_open_idconnect_providers(aws, args)

@inline list_open_idconnect_providers(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListOpenIDConnectProviders", args)

@inline list_open_idconnect_providers(args) = list_open_idconnect_providers(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_policies
    list_policies([::AWSConfig], arguments::Dict)
    list_policies([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListPolicies", arguments::Dict)
    iam([::AWSConfig], "ListPolicies", <keyword arguments>)

# ListPolicies Operation

Lists all the managed policies that are available in your AWS account, including your own customer-defined managed policies and all AWS managed policies.

You can filter the list of policies that is returned using the optional `OnlyAttached`, `Scope`, and `PathPrefix` parameters. For example, to list only the customer managed policies in your AWS account, set `Scope` to `Local`. To list only AWS managed policies, set `Scope` to `AWS`.

You can paginate the results using the `MaxItems` and `Marker` parameters.

For more information about managed policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `Scope = "All", "AWS" or "Local"`
The scope to use for filtering the results.

To list only AWS managed policies, set `Scope` to `AWS`. To list only the customer managed policies in your AWS account, set `Scope` to `Local`.

This parameter is optional. If it is not included, or if it is set to `All`, all policies are returned.


## `OnlyAttached = ::Bool`
A flag to filter the results to only the attached policies.

When `OnlyAttached` is `true`, the returned list contains only the policies that are attached to an IAM user, group, or role. When `OnlyAttached` is `false`, or when the parameter is not included, all policies are returned.


## `PathPrefix = ::String`
The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies. This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `PolicyUsageFilter = "PermissionsPolicy" or "PermissionsBoundary"`
The policy usage method to use for filtering the results.

To list only permissions policies, set `PolicyUsageFilter` to `PermissionsPolicy`. To list only the policies used to set permissions boundaries, set the value to `PermissionsBoundary`.

This parameter is optional. If it is not included, all policies are returned.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListPoliciesResponse`

# Exceptions

`ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPolicies)
"""
@inline list_policies(aws::AWSConfig=default_aws_config(); args...) = list_policies(aws, args)

@inline list_policies(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListPolicies", args)

@inline list_policies(args) = list_policies(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_policy_versions
    list_policy_versions([::AWSConfig], arguments::Dict)
    list_policy_versions([::AWSConfig]; PolicyArn=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListPolicyVersions", arguments::Dict)
    iam([::AWSConfig], "ListPolicyVersions", PolicyArn=, <keyword arguments>)

# ListPolicyVersions Operation

Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version.

For more information about managed policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM policy for which you want the versions.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListPolicyVersionsResponse`

# Exceptions

`NoSuchEntityException`, `InvalidInputException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPolicyVersions)
"""
@inline list_policy_versions(aws::AWSConfig=default_aws_config(); args...) = list_policy_versions(aws, args)

@inline list_policy_versions(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListPolicyVersions", args)

@inline list_policy_versions(args) = list_policy_versions(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_role_policies
    list_role_policies([::AWSConfig], arguments::Dict)
    list_role_policies([::AWSConfig]; RoleName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListRolePolicies", arguments::Dict)
    iam([::AWSConfig], "ListRolePolicies", RoleName=, <keyword arguments>)

# ListRolePolicies Operation

Lists the names of the inline policies that are embedded in the specified IAM role.

An IAM role can also have managed policies attached to it. To list the managed policies that are attached to a role, use [ListAttachedRolePolicies](@ref). For more information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

You can paginate the results using the `MaxItems` and `Marker` parameters. If there are no inline policies embedded with the specified role, the operation returns an empty list.

# Arguments

## `RoleName = ::String` -- *Required*
The name of the role to list policies for.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListRolePoliciesResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRolePolicies)
"""
@inline list_role_policies(aws::AWSConfig=default_aws_config(); args...) = list_role_policies(aws, args)

@inline list_role_policies(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListRolePolicies", args)

@inline list_role_policies(args) = list_role_policies(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_roles
    list_roles([::AWSConfig], arguments::Dict)
    list_roles([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListRoles", arguments::Dict)
    iam([::AWSConfig], "ListRoles", <keyword arguments>)

# ListRoles Operation

Lists the IAM roles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about roles, go to [Working with Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).

You can paginate the results using the `MaxItems` and `Marker` parameters.

# Arguments

## `PathPrefix = ::String`
The path prefix for filtering the results. For example, the prefix `/application_abc/component_xyz/` gets all roles whose path starts with `/application_abc/component_xyz/`.

This parameter is optional. If it is not included, it defaults to a slash (/), listing all roles. This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListRolesResponse`

# Exceptions

`ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRoles)
"""
@inline list_roles(aws::AWSConfig=default_aws_config(); args...) = list_roles(aws, args)

@inline list_roles(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListRoles", args)

@inline list_roles(args) = list_roles(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_samlproviders
    list_samlproviders([::AWSConfig], arguments::Dict)
    list_samlproviders([::AWSConfig]; )

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListSAMLProviders", arguments::Dict)
    iam([::AWSConfig], "ListSAMLProviders", )

# ListSAMLProviders Operation

Lists the SAML provider resource objects defined in IAM in the account.

**Note**
> This operation requires [Signature Version 4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

# Arguments



# Returns

`ListSAMLProvidersResponse`

# Exceptions

`ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSAMLProviders)
"""
@inline list_samlproviders(aws::AWSConfig=default_aws_config(); args...) = list_samlproviders(aws, args)

@inline list_samlproviders(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListSAMLProviders", args)

@inline list_samlproviders(args) = list_samlproviders(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_sshpublic_keys
    list_sshpublic_keys([::AWSConfig], arguments::Dict)
    list_sshpublic_keys([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListSSHPublicKeys", arguments::Dict)
    iam([::AWSConfig], "ListSSHPublicKeys", <keyword arguments>)

# ListSSHPublicKeys Operation

Returns information about the SSH public keys associated with the specified IAM user. If there are none, the operation returns an empty list.

The SSH public keys returned by this operation are used only for authenticating the IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see [Set up AWS CodeCommit for SSH Connections](http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the *AWS CodeCommit User Guide*.

Although each user is limited to a small number of keys, you can still paginate the results using the `MaxItems` and `Marker` parameters.

# Arguments

## `UserName = ::String`
The name of the IAM user to list SSH public keys for. If none is specified, the `UserName` field is determined implicitly based on the AWS access key used to sign the request.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListSSHPublicKeysResponse`

# Exceptions

`NoSuchEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSSHPublicKeys)
"""
@inline list_sshpublic_keys(aws::AWSConfig=default_aws_config(); args...) = list_sshpublic_keys(aws, args)

@inline list_sshpublic_keys(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListSSHPublicKeys", args)

@inline list_sshpublic_keys(args) = list_sshpublic_keys(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_server_certificates
    list_server_certificates([::AWSConfig], arguments::Dict)
    list_server_certificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListServerCertificates", arguments::Dict)
    iam([::AWSConfig], "ListServerCertificates", <keyword arguments>)

# ListServerCertificates Operation

Lists the server certificates stored in IAM that have the specified path prefix. If none exist, the operation returns an empty list.

You can paginate the results using the `MaxItems` and `Marker` parameters.

For more information about working with server certificates, see [Working with Server Certificates](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the *IAM User Guide*. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.

# Arguments

## `PathPrefix = ::String`
The path prefix for filtering the results. For example: `/company/servercerts` would get all server certificates for which the path starts with `/company/servercerts`.

This parameter is optional. If it is not included, it defaults to a slash (/), listing all server certificates. This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListServerCertificatesResponse`

# Exceptions

`ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServerCertificates)
"""
@inline list_server_certificates(aws::AWSConfig=default_aws_config(); args...) = list_server_certificates(aws, args)

@inline list_server_certificates(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListServerCertificates", args)

@inline list_server_certificates(args) = list_server_certificates(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_service_specific_credentials
    list_service_specific_credentials([::AWSConfig], arguments::Dict)
    list_service_specific_credentials([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListServiceSpecificCredentials", arguments::Dict)
    iam([::AWSConfig], "ListServiceSpecificCredentials", <keyword arguments>)

# ListServiceSpecificCredentials Operation

Returns information about the service-specific credentials associated with the specified IAM user. If there are none, the operation returns an empty list. The service-specific credentials returned by this operation are used only for authenticating the IAM user to a specific service. For more information about using service-specific credentials to authenticate to an AWS service, see [Set Up service-specific credentials](http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html) in the AWS CodeCommit User Guide.

# Arguments

## `UserName = ::String`
The name of the user whose service-specific credentials you want information about. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `ServiceName = ::String`
Filters the returned results to only those for the specified AWS service. If not specified, then AWS returns service-specific credentials for all services.




# Returns

`ListServiceSpecificCredentialsResponse`

# Exceptions

`NoSuchEntityException` or `ServiceNotSupportedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServiceSpecificCredentials)
"""
@inline list_service_specific_credentials(aws::AWSConfig=default_aws_config(); args...) = list_service_specific_credentials(aws, args)

@inline list_service_specific_credentials(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListServiceSpecificCredentials", args)

@inline list_service_specific_credentials(args) = list_service_specific_credentials(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_signing_certificates
    list_signing_certificates([::AWSConfig], arguments::Dict)
    list_signing_certificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListSigningCertificates", arguments::Dict)
    iam([::AWSConfig], "ListSigningCertificates", <keyword arguments>)

# ListSigningCertificates Operation

Returns information about the signing certificates associated with the specified IAM user. If there are none, the operation returns an empty list.

Although each user is limited to a small number of signing certificates, you can still paginate the results using the `MaxItems` and `Marker` parameters.

If the `UserName` field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request for this API. Because this operation works for access keys under the AWS account, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.

# Arguments

## `UserName = ::String`
The name of the IAM user whose signing certificates you want to examine.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListSigningCertificatesResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

# Example: To list the signing certificates for an IAM user

The following command lists the signing certificates for the IAM user named Bob.

Input:
```
[
    "UserName" => "Bob"
]
```

Output:
```
Dict(
    "Certificates" => [
        Dict(
            "CertificateBody" => "-----BEGIN CERTIFICATE-----<certificate-body>-----END CERTIFICATE-----",
            "CertificateId" => "TA7SMP42TDN5Z26OBPJE7EXAMPLE",
            "Status" => "Active",
            "UploadDate" => "2013-06-06T21:40:08Z",
            "UserName" => "Bob"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSigningCertificates)
"""
@inline list_signing_certificates(aws::AWSConfig=default_aws_config(); args...) = list_signing_certificates(aws, args)

@inline list_signing_certificates(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListSigningCertificates", args)

@inline list_signing_certificates(args) = list_signing_certificates(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_user_policies
    list_user_policies([::AWSConfig], arguments::Dict)
    list_user_policies([::AWSConfig]; UserName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListUserPolicies", arguments::Dict)
    iam([::AWSConfig], "ListUserPolicies", UserName=, <keyword arguments>)

# ListUserPolicies Operation

Lists the names of the inline policies embedded in the specified IAM user.

An IAM user can also have managed policies attached to it. To list the managed policies that are attached to a user, use [ListAttachedUserPolicies](@ref). For more information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

You can paginate the results using the `MaxItems` and `Marker` parameters. If there are no inline policies embedded with the specified user, the operation returns an empty list.

# Arguments

## `UserName = ::String` -- *Required*
The name of the user to list policies for.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListUserPoliciesResponse`

# Exceptions

`NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUserPolicies)
"""
@inline list_user_policies(aws::AWSConfig=default_aws_config(); args...) = list_user_policies(aws, args)

@inline list_user_policies(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListUserPolicies", args)

@inline list_user_policies(args) = list_user_policies(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_users
    list_users([::AWSConfig], arguments::Dict)
    list_users([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListUsers", arguments::Dict)
    iam([::AWSConfig], "ListUsers", <keyword arguments>)

# ListUsers Operation

Lists the IAM users that have the specified path prefix. If no path prefix is specified, the operation returns all users in the AWS account. If there are none, the operation returns an empty list.

You can paginate the results using the `MaxItems` and `Marker` parameters.

# Arguments

## `PathPrefix = ::String`
The path prefix for filtering the results. For example: `/division_abc/subdivision_xyz/`, which would get all user names whose path starts with `/division_abc/subdivision_xyz/`.

This parameter is optional. If it is not included, it defaults to a slash (/), listing all user names. This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListUsersResponse`

# Exceptions

`ServiceFailureException`.

# Example: To list IAM users

The following command lists the IAM users in the current account.

Input:
```
[

]
```

Output:
```
Dict(
    "Users" => [
        Dict(
            "Arn" => "arn:aws:iam::123456789012:user/division_abc/subdivision_xyz/engineering/Juan",
            "CreateDate" => "2012-09-05T19:38:48Z",
            "PasswordLastUsed" => "2016-09-08T21:47:36Z",
            "Path" => "/division_abc/subdivision_xyz/engineering/",
            "UserId" => "AID2MAB8DPLSRHEXAMPLE",
            "UserName" => "Juan"
        ),
        Dict(
            "Arn" => "arn:aws:iam::123456789012:user/division_abc/subdivision_xyz/engineering/Anika",
            "CreateDate" => "2014-04-09T15:43:45Z",
            "PasswordLastUsed" => "2016-09-24T16:18:07Z",
            "Path" => "/division_abc/subdivision_xyz/engineering/",
            "UserId" => "AIDIODR4TAW7CSEXAMPLE",
            "UserName" => "Anika"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUsers)
"""
@inline list_users(aws::AWSConfig=default_aws_config(); args...) = list_users(aws, args)

@inline list_users(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListUsers", args)

@inline list_users(args) = list_users(default_aws_config(), args)


"""
    using AWSSDK.IAM.list_virtual_mfadevices
    list_virtual_mfadevices([::AWSConfig], arguments::Dict)
    list_virtual_mfadevices([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ListVirtualMFADevices", arguments::Dict)
    iam([::AWSConfig], "ListVirtualMFADevices", <keyword arguments>)

# ListVirtualMFADevices Operation

Lists the virtual MFA devices defined in the AWS account by assignment status. If you do not specify an assignment status, the operation returns a list of all virtual MFA devices. Assignment status can be `Assigned`, `Unassigned`, or `Any`.

You can paginate the results using the `MaxItems` and `Marker` parameters.

# Arguments

## `AssignmentStatus = "Assigned", "Unassigned" or "Any"`
The status (`Unassigned` or `Assigned`) of the devices to list. If you do not specify an `AssignmentStatus`, the operation defaults to `Any` which lists both assigned and unassigned virtual MFA devices.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.




# Returns

`ListVirtualMFADevicesResponse`

# Example: To list virtual MFA devices

The following command lists the virtual MFA devices that have been configured for the current account.

Input:
```
[

]
```

Output:
```
Dict(
    "VirtualMFADevices" => [
        Dict(
            "SerialNumber" => "arn:aws:iam::123456789012:mfa/ExampleMFADevice"
        ),
        Dict(
            "SerialNumber" => "arn:aws:iam::123456789012:mfa/Juan"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListVirtualMFADevices)
"""
@inline list_virtual_mfadevices(aws::AWSConfig=default_aws_config(); args...) = list_virtual_mfadevices(aws, args)

@inline list_virtual_mfadevices(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ListVirtualMFADevices", args)

@inline list_virtual_mfadevices(args) = list_virtual_mfadevices(default_aws_config(), args)


"""
    using AWSSDK.IAM.put_group_policy
    put_group_policy([::AWSConfig], arguments::Dict)
    put_group_policy([::AWSConfig]; GroupName=, PolicyName=, PolicyDocument=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "PutGroupPolicy", arguments::Dict)
    iam([::AWSConfig], "PutGroupPolicy", GroupName=, PolicyName=, PolicyDocument=)

# PutGroupPolicy Operation

Adds or updates an inline policy document that is embedded in the specified IAM group.

A user can also have managed policies attached to it. To attach a managed policy to a group, use [AttachGroupPolicy](@ref). To create a new managed policy, use [CreatePolicy](@ref). For information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

For information about limits on the number of inline policies that you can embed in a group, see [Limitations on IAM Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *IAM User Guide*.

**Note**
> Because policy documents can be large, you should use POST rather than GET when calling `PutGroupPolicy`. For general information about using the Query API with IAM, go to [Making Query Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html) in the *IAM User Guide*.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the group to associate the policy with.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyName = ::String` -- *Required*
The name of the policy document.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyDocument = ::String` -- *Required*
The policy document.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)




# Exceptions

`LimitExceededException`, `MalformedPolicyDocumentException`, `NoSuchEntityException` or `ServiceFailureException`.

# Example: To add a policy to a group

The following command adds a policy named AllPerms to the IAM group named Admins.

Input:
```
[
    "GroupName" => "Admins",
    "PolicyDocument" => "{"Version":"2012-10-17","Statement":{"Effect":"Allow","Action":"*","Resource":"*"}}",
    "PolicyName" => "AllPerms"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutGroupPolicy)
"""
@inline put_group_policy(aws::AWSConfig=default_aws_config(); args...) = put_group_policy(aws, args)

@inline put_group_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "PutGroupPolicy", args)

@inline put_group_policy(args) = put_group_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.put_role_permissions_boundary
    put_role_permissions_boundary([::AWSConfig], arguments::Dict)
    put_role_permissions_boundary([::AWSConfig]; RoleName=, PermissionsBoundary=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "PutRolePermissionsBoundary", arguments::Dict)
    iam([::AWSConfig], "PutRolePermissionsBoundary", RoleName=, PermissionsBoundary=)

# PutRolePermissionsBoundary Operation

Adds or updates the policy that is specified as the IAM role's permissions boundary. You can use an AWS managed policy or a customer managed policy to set the boundary for a role. Use the boundary to control the maximum permissions that the role can have. Setting a permissions boundary is an advanced feature that can affect the permissions for the role.

You cannot set the boundary for a service-linked role.

**Important**
> Policies used as permissions boundaries do not provide permissions. You must also attach a permissions policy to the role. To learn how the effective permissions for a role are evaluated, see [IAM JSON Policy Evaluation Logic](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html) in the IAM User Guide.

# Arguments

## `RoleName = ::String` -- *Required*
The name (friendly name, not ARN) of the IAM role for which you want to set the permissions boundary.


## `PermissionsBoundary = ::String` -- *Required*
The ARN of the policy that is used to set the permissions boundary for the role.




# Exceptions

`NoSuchEntityException`, `InvalidInputException`, `UnmodifiableEntityException`, `PolicyNotAttachableException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutRolePermissionsBoundary)
"""
@inline put_role_permissions_boundary(aws::AWSConfig=default_aws_config(); args...) = put_role_permissions_boundary(aws, args)

@inline put_role_permissions_boundary(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "PutRolePermissionsBoundary", args)

@inline put_role_permissions_boundary(args) = put_role_permissions_boundary(default_aws_config(), args)


"""
    using AWSSDK.IAM.put_role_policy
    put_role_policy([::AWSConfig], arguments::Dict)
    put_role_policy([::AWSConfig]; RoleName=, PolicyName=, PolicyDocument=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "PutRolePolicy", arguments::Dict)
    iam([::AWSConfig], "PutRolePolicy", RoleName=, PolicyName=, PolicyDocument=)

# PutRolePolicy Operation

Adds or updates an inline policy document that is embedded in the specified IAM role.

When you embed an inline policy in a role, the inline policy is used as part of the role's access (permissions) policy. The role's trust policy is created at the same time as the role, using [CreateRole](@ref). You can update a role's trust policy using [UpdateAssumeRolePolicy](@ref). For more information about IAM roles, go to [Using Roles to Delegate Permissions and Federate Identities](http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).

A role can also have a managed policy attached to it. To attach a managed policy to a role, use [AttachRolePolicy](@ref). To create a new managed policy, use [CreatePolicy](@ref). For information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

For information about limits on the number of inline policies that you can embed with a role, see [Limitations on IAM Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *IAM User Guide*.

**Note**
> Because policy documents can be large, you should use POST rather than GET when calling `PutRolePolicy`. For general information about using the Query API with IAM, go to [Making Query Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html) in the *IAM User Guide*.

# Arguments

## `RoleName = ::String` -- *Required*
The name of the role to associate the policy with.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyName = ::String` -- *Required*
The name of the policy document.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyDocument = ::String` -- *Required*
The policy document.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)




# Exceptions

`LimitExceededException`, `MalformedPolicyDocumentException`, `NoSuchEntityException`, `UnmodifiableEntityException` or `ServiceFailureException`.

# Example: To attach a permissions policy to an IAM role

The following command adds a permissions policy to the role named Test-Role.

Input:
```
[
    "PolicyDocument" => "{"Version":"2012-10-17","Statement":{"Effect":"Allow","Action":"s3:*","Resource":"*"}}",
    "PolicyName" => "S3AccessPolicy",
    "RoleName" => "S3Access"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutRolePolicy)
"""
@inline put_role_policy(aws::AWSConfig=default_aws_config(); args...) = put_role_policy(aws, args)

@inline put_role_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "PutRolePolicy", args)

@inline put_role_policy(args) = put_role_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.put_user_permissions_boundary
    put_user_permissions_boundary([::AWSConfig], arguments::Dict)
    put_user_permissions_boundary([::AWSConfig]; UserName=, PermissionsBoundary=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "PutUserPermissionsBoundary", arguments::Dict)
    iam([::AWSConfig], "PutUserPermissionsBoundary", UserName=, PermissionsBoundary=)

# PutUserPermissionsBoundary Operation

Adds or updates the policy that is specified as the IAM user's permissions boundary. You can use an AWS managed policy or a customer managed policy to set the boundary for a user. Use the boundary to control the maximum permissions that the user can have. Setting a permissions boundary is an advanced feature that can affect the permissions for the user.

**Important**
> Policies that are used as permissions boundaries do not provide permissions. You must also attach a permissions policy to the user. To learn how the effective permissions for a user are evaluated, see [IAM JSON Policy Evaluation Logic](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html) in the IAM User Guide.

# Arguments

## `UserName = ::String` -- *Required*
The name (friendly name, not ARN) of the IAM user for which you want to set the permissions boundary.


## `PermissionsBoundary = ::String` -- *Required*
The ARN of the policy that is used to set the permissions boundary for the user.




# Exceptions

`NoSuchEntityException`, `InvalidInputException`, `PolicyNotAttachableException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutUserPermissionsBoundary)
"""
@inline put_user_permissions_boundary(aws::AWSConfig=default_aws_config(); args...) = put_user_permissions_boundary(aws, args)

@inline put_user_permissions_boundary(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "PutUserPermissionsBoundary", args)

@inline put_user_permissions_boundary(args) = put_user_permissions_boundary(default_aws_config(), args)


"""
    using AWSSDK.IAM.put_user_policy
    put_user_policy([::AWSConfig], arguments::Dict)
    put_user_policy([::AWSConfig]; UserName=, PolicyName=, PolicyDocument=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "PutUserPolicy", arguments::Dict)
    iam([::AWSConfig], "PutUserPolicy", UserName=, PolicyName=, PolicyDocument=)

# PutUserPolicy Operation

Adds or updates an inline policy document that is embedded in the specified IAM user.

An IAM user can also have a managed policy attached to it. To attach a managed policy to a user, use [AttachUserPolicy](@ref). To create a new managed policy, use [CreatePolicy](@ref). For information about policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

For information about limits on the number of inline policies that you can embed in a user, see [Limitations on IAM Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *IAM User Guide*.

**Note**
> Because policy documents can be large, you should use POST rather than GET when calling `PutUserPolicy`. For general information about using the Query API with IAM, go to [Making Query Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html) in the *IAM User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name of the user to associate the policy with.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyName = ::String` -- *Required*
The name of the policy document.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyDocument = ::String` -- *Required*
The policy document.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)




# Exceptions

`LimitExceededException`, `MalformedPolicyDocumentException`, `NoSuchEntityException` or `ServiceFailureException`.

# Example: To attach a policy to an IAM user

The following command attaches a policy to the IAM user named Bob.

Input:
```
[
    "PolicyDocument" => "{"Version":"2012-10-17","Statement":{"Effect":"Allow","Action":"*","Resource":"*"}}",
    "PolicyName" => "AllAccessPolicy",
    "UserName" => "Bob"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutUserPolicy)
"""
@inline put_user_policy(aws::AWSConfig=default_aws_config(); args...) = put_user_policy(aws, args)

@inline put_user_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "PutUserPolicy", args)

@inline put_user_policy(args) = put_user_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.remove_client_idfrom_open_idconnect_provider
    remove_client_idfrom_open_idconnect_provider([::AWSConfig], arguments::Dict)
    remove_client_idfrom_open_idconnect_provider([::AWSConfig]; OpenIDConnectProviderArn=, ClientID=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "RemoveClientIDFromOpenIDConnectProvider", arguments::Dict)
    iam([::AWSConfig], "RemoveClientIDFromOpenIDConnectProvider", OpenIDConnectProviderArn=, ClientID=)

# RemoveClientIDFromOpenIDConnectProvider Operation

Removes the specified client ID (also known as audience) from the list of client IDs registered for the specified IAM OpenID Connect (OIDC) provider resource object.

This operation is idempotent; it does not fail or return an error if you try to remove a client ID that does not exist.

# Arguments

## `OpenIDConnectProviderArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM OIDC provider resource to remove the client ID from. You can get a list of OIDC provider ARNs by using the [ListOpenIDConnectProviders](@ref) operation.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `ClientID = ::String` -- *Required*
The client ID (also known as audience) to remove from the IAM OIDC provider resource. For more information about client IDs, see [CreateOpenIDConnectProvider](@ref).




# Exceptions

`InvalidInputException`, `NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RemoveClientIDFromOpenIDConnectProvider)
"""
@inline remove_client_idfrom_open_idconnect_provider(aws::AWSConfig=default_aws_config(); args...) = remove_client_idfrom_open_idconnect_provider(aws, args)

@inline remove_client_idfrom_open_idconnect_provider(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "RemoveClientIDFromOpenIDConnectProvider", args)

@inline remove_client_idfrom_open_idconnect_provider(args) = remove_client_idfrom_open_idconnect_provider(default_aws_config(), args)


"""
    using AWSSDK.IAM.remove_role_from_instance_profile
    remove_role_from_instance_profile([::AWSConfig], arguments::Dict)
    remove_role_from_instance_profile([::AWSConfig]; InstanceProfileName=, RoleName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "RemoveRoleFromInstanceProfile", arguments::Dict)
    iam([::AWSConfig], "RemoveRoleFromInstanceProfile", InstanceProfileName=, RoleName=)

# RemoveRoleFromInstanceProfile Operation

Removes the specified IAM role from the specified EC2 instance profile.

**Important**
> Make sure that you do not have any Amazon EC2 instances running with the role you are about to remove from the instance profile. Removing a role from an instance profile that is associated with a running instance might break any applications running on the instance.

For more information about IAM roles, go to [Working with Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html). For more information about instance profiles, go to [About Instance Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).

# Arguments

## `InstanceProfileName = ::String` -- *Required*
The name of the instance profile to update.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `RoleName = ::String` -- *Required*
The name of the role to remove.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `LimitExceededException`, `UnmodifiableEntityException` or `ServiceFailureException`.

# Example: To remove a role from an instance profile

The following command removes the role named Test-Role from the instance profile named ExampleInstanceProfile.

Input:
```
[
    "InstanceProfileName" => "ExampleInstanceProfile",
    "RoleName" => "Test-Role"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RemoveRoleFromInstanceProfile)
"""
@inline remove_role_from_instance_profile(aws::AWSConfig=default_aws_config(); args...) = remove_role_from_instance_profile(aws, args)

@inline remove_role_from_instance_profile(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "RemoveRoleFromInstanceProfile", args)

@inline remove_role_from_instance_profile(args) = remove_role_from_instance_profile(default_aws_config(), args)


"""
    using AWSSDK.IAM.remove_user_from_group
    remove_user_from_group([::AWSConfig], arguments::Dict)
    remove_user_from_group([::AWSConfig]; GroupName=, UserName=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "RemoveUserFromGroup", arguments::Dict)
    iam([::AWSConfig], "RemoveUserFromGroup", GroupName=, UserName=)

# RemoveUserFromGroup Operation

Removes the specified user from the specified group.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the group to update.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `UserName = ::String` -- *Required*
The name of the user to remove.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To remove a user from an IAM group

The following command removes the user named Bob from the IAM group named Admins.

Input:
```
[
    "GroupName" => "Admins",
    "UserName" => "Bob"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RemoveUserFromGroup)
"""
@inline remove_user_from_group(aws::AWSConfig=default_aws_config(); args...) = remove_user_from_group(aws, args)

@inline remove_user_from_group(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "RemoveUserFromGroup", args)

@inline remove_user_from_group(args) = remove_user_from_group(default_aws_config(), args)


"""
    using AWSSDK.IAM.reset_service_specific_credential
    reset_service_specific_credential([::AWSConfig], arguments::Dict)
    reset_service_specific_credential([::AWSConfig]; ServiceSpecificCredentialId=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ResetServiceSpecificCredential", arguments::Dict)
    iam([::AWSConfig], "ResetServiceSpecificCredential", ServiceSpecificCredentialId=, <keyword arguments>)

# ResetServiceSpecificCredential Operation

Resets the password for a service-specific credential. The new password is AWS generated and cryptographically strong. It cannot be configured by the user. Resetting the password immediately invalidates the previous password associated with this user.

# Arguments

## `UserName = ::String`
The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `ServiceSpecificCredentialId = ::String` -- *Required*
The unique identifier of the service-specific credential.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.




# Returns

`ResetServiceSpecificCredentialResponse`

# Exceptions

`NoSuchEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ResetServiceSpecificCredential)
"""
@inline reset_service_specific_credential(aws::AWSConfig=default_aws_config(); args...) = reset_service_specific_credential(aws, args)

@inline reset_service_specific_credential(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ResetServiceSpecificCredential", args)

@inline reset_service_specific_credential(args) = reset_service_specific_credential(default_aws_config(), args)


"""
    using AWSSDK.IAM.resync_mfadevice
    resync_mfadevice([::AWSConfig], arguments::Dict)
    resync_mfadevice([::AWSConfig]; UserName=, SerialNumber=, AuthenticationCode1=, AuthenticationCode2=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "ResyncMFADevice", arguments::Dict)
    iam([::AWSConfig], "ResyncMFADevice", UserName=, SerialNumber=, AuthenticationCode1=, AuthenticationCode2=)

# ResyncMFADevice Operation

Synchronizes the specified MFA device with its IAM resource object on the AWS servers.

For more information about creating and working with virtual MFA devices, go to [Using a Virtual MFA Device](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html) in the *IAM User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name of the user whose MFA device you want to resynchronize.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `SerialNumber = ::String` -- *Required*
Serial number that uniquely identifies the MFA device.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `AuthenticationCode1 = ::String` -- *Required*
An authentication code emitted by the device.

The format for this parameter is a sequence of six digits.


## `AuthenticationCode2 = ::String` -- *Required*
A subsequent authentication code emitted by the device.

The format for this parameter is a sequence of six digits.




# Exceptions

`InvalidAuthenticationCodeException`, `NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ResyncMFADevice)
"""
@inline resync_mfadevice(aws::AWSConfig=default_aws_config(); args...) = resync_mfadevice(aws, args)

@inline resync_mfadevice(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "ResyncMFADevice", args)

@inline resync_mfadevice(args) = resync_mfadevice(default_aws_config(), args)


"""
    using AWSSDK.IAM.set_default_policy_version
    set_default_policy_version([::AWSConfig], arguments::Dict)
    set_default_policy_version([::AWSConfig]; PolicyArn=, VersionId=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "SetDefaultPolicyVersion", arguments::Dict)
    iam([::AWSConfig], "SetDefaultPolicyVersion", PolicyArn=, VersionId=)

# SetDefaultPolicyVersion Operation

Sets the specified version of the specified policy as the policy's default (operative) version.

This operation affects all users, groups, and roles that the policy is attached to. To list the users, groups, and roles that the policy is attached to, use the [ListEntitiesForPolicy](@ref) API.

For information about managed policies, see [Managed Policies and Inline Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.

# Arguments

## `PolicyArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM policy whose default version you want to set.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `VersionId = ::String` -- *Required*
The version of the policy to set as the default (operative) version.

For more information about managed policy versions, see [Versioning for Managed Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the *IAM User Guide*.




# Exceptions

`NoSuchEntityException`, `InvalidInputException`, `LimitExceededException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SetDefaultPolicyVersion)
"""
@inline set_default_policy_version(aws::AWSConfig=default_aws_config(); args...) = set_default_policy_version(aws, args)

@inline set_default_policy_version(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "SetDefaultPolicyVersion", args)

@inline set_default_policy_version(args) = set_default_policy_version(default_aws_config(), args)


"""
    using AWSSDK.IAM.simulate_custom_policy
    simulate_custom_policy([::AWSConfig], arguments::Dict)
    simulate_custom_policy([::AWSConfig]; PolicyInputList=, ActionNames=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "SimulateCustomPolicy", arguments::Dict)
    iam([::AWSConfig], "SimulateCustomPolicy", PolicyInputList=, ActionNames=, <keyword arguments>)

# SimulateCustomPolicy Operation

Simulate how a set of IAM policies and optionally a resource-based policy works with a list of API operations and AWS resources to determine the policies' effective permissions. The policies are provided as strings.

The simulation does not perform the API operations; it only checks the authorization to determine if the simulated policies allow or deny the operations.

If you want to simulate existing policies attached to an IAM user, group, or role, use [SimulatePrincipalPolicy](@ref) instead.

Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. You can use the `Condition` element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use [GetContextKeysForCustomPolicy](@ref).

If the output is long, you can use `MaxItems` and `Marker` parameters to paginate the results.

# Arguments

## `PolicyInputList = [::String, ...]` -- *Required*
A list of policy documents to include in the simulation. Each document is specified as a string containing the complete, valid JSON text of an IAM policy. Do not include any resource-based policies in this parameter. Any resource-based policy must be submitted with the `ResourcePolicy` parameter. The policies cannot be "scope-down" policies, such as you could include in a call to [GetFederationToken](http://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html) or one of the [AssumeRole](http://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html) API operations. In other words, do not use policies designed to restrict what a user can do while using the temporary credentials.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)


## `ActionNames = [::String, ...]` -- *Required*
A list of names of API operations to evaluate in the simulation. Each operation is evaluated against each resource. Each operation must include the service identifier, such as `iam:CreateUser`.


## `ResourceArns = [::String, ...]`
A list of ARNs of AWS resources to include in the simulation. If this parameter is not provided then the value defaults to `*` (all resources). Each API in the `ActionNames` parameter is evaluated for each resource in this list. The simulation determines the access result (allowed or denied) of each combination and reports it in the response.

The simulation does not automatically retrieve policies for the specified resources. If you want to include a resource policy in the simulation, then you must include the policy as a string in the `ResourcePolicy` parameter.

If you include a `ResourcePolicy`, then it must be applicable to all of the resources included in the simulation or you receive an invalid input error.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `ResourcePolicy = ::String`
A resource-based policy to include in the simulation provided as a string. Each resource in the simulation is treated as if it had this policy attached. You can include only one resource-based policy in a simulation.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)


## `ResourceOwner = ::String`
An ARN representing the AWS account ID that specifies the owner of any simulated resource that does not identify its owner in the resource ARN, such as an S3 bucket or object. If `ResourceOwner` is specified, it is also used as the account owner of any `ResourcePolicy` included in the simulation. If the `ResourceOwner` parameter is not specified, then the owner of the resources and the resource policy defaults to the account of the identity provided in `CallerArn`. This parameter is required only if you specify a resource-based policy and account that owns the resource is different from the account that owns the simulated calling user `CallerArn`.

The ARN for an account uses the following syntax: `arn:aws:iam::*AWS-account-ID*:root`. For example, to represent the account with the 112233445566 ID, use the following ARN: `arn:aws:iam::112233445566-ID:root`.


## `CallerArn = ::String`
The ARN of the IAM user that you want to use as the simulated caller of the API operations. `CallerArn` is required if you include a `ResourcePolicy` so that the policy's `Principal` element has a value to use in evaluating the policy.

You can specify only the ARN of an IAM user. You cannot specify the ARN of an assumed role, federated user, or a service principal.


## `ContextEntries = [[ ... ], ...]`
A list of context keys and corresponding values for the simulation to use. Whenever a context key is evaluated in one of the simulated IAM permission policies, the corresponding value is supplied.
```
 ContextEntries = [[
        "ContextKeyName" =>  ::String,
        "ContextKeyValues" =>  [::String, ...],
        "ContextKeyType" =>  "string", "stringList", "numeric", "numericList", "boolean", "booleanList", "ip", "ipList", "binary", "binaryList", "date" or "dateList"
    ], ...]
```

## `ResourceHandlingOption = ::String`
Specifies the type of simulation to run. Different API operations that support resource-based policies require different combinations of resources. By specifying the type of simulation to run, you enable the policy simulator to enforce the presence of the required resources to ensure reliable simulation results. If your simulation does not match one of the following scenarios, then you can omit this parameter. The following list shows each of the supported scenario values and the resources that you must define to run the simulation.

Each of the EC2 scenarios requires that you specify instance, image, and security-group resources. If your scenario includes an EBS volume, then you must specify that volume as a resource. If the EC2 scenario includes VPC, then you must supply the network-interface resource. If it includes an IP subnet, then you must specify the subnet resource. For more information on the EC2 scenario options, see [Supported Platforms](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html) in the *Amazon EC2 User Guide*.

*   **EC2-Classic-InstanceStore**

    instance, image, security-group

*   **EC2-Classic-EBS**

    instance, image, security-group, volume

*   **EC2-VPC-InstanceStore**

    instance, image, security-group, network-interface

*   **EC2-VPC-InstanceStore-Subnet**

    instance, image, security-group, network-interface, subnet

*   **EC2-VPC-EBS**

    instance, image, security-group, network-interface, volume

*   **EC2-VPC-EBS-Subnet**

    instance, image, security-group, network-interface, subnet, volume


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.




# Returns

`SimulatePolicyResponse`

# Exceptions

`InvalidInputException` or `PolicyEvaluationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SimulateCustomPolicy)
"""
@inline simulate_custom_policy(aws::AWSConfig=default_aws_config(); args...) = simulate_custom_policy(aws, args)

@inline simulate_custom_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "SimulateCustomPolicy", args)

@inline simulate_custom_policy(args) = simulate_custom_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.simulate_principal_policy
    simulate_principal_policy([::AWSConfig], arguments::Dict)
    simulate_principal_policy([::AWSConfig]; PolicySourceArn=, ActionNames=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "SimulatePrincipalPolicy", arguments::Dict)
    iam([::AWSConfig], "SimulatePrincipalPolicy", PolicySourceArn=, ActionNames=, <keyword arguments>)

# SimulatePrincipalPolicy Operation

Simulate how a set of IAM policies attached to an IAM entity works with a list of API operations and AWS resources to determine the policies' effective permissions. The entity can be an IAM user, group, or role. If you specify a user, then the simulation also includes all of the policies that are attached to groups that the user belongs to.

You can optionally include a list of one or more additional policies specified as strings to include in the simulation. If you want to simulate only policies specified as strings, use [SimulateCustomPolicy](@ref) instead.

You can also optionally include one resource-based policy to be evaluated with each of the resources included in the simulation.

The simulation does not perform the API operations, it only checks the authorization to determine if the simulated policies allow or deny the operations.

**Note:** This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use [SimulateCustomPolicy](@ref) instead.

Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. You can use the `Condition` element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use [GetContextKeysForPrincipalPolicy](@ref).

If the output is long, you can use the `MaxItems` and `Marker` parameters to paginate the results.

# Arguments

## `PolicySourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of a user, group, or role whose policies you want to include in the simulation. If you specify a user, group, or role, the simulation includes all policies that are associated with that entity. If you specify a user, the simulation also includes all policies that are attached to any groups the user belongs to.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `PolicyInputList = [::String, ...]`
An optional list of additional policy documents to include in the simulation. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)


## `ActionNames = [::String, ...]` -- *Required*
A list of names of API operations to evaluate in the simulation. Each operation is evaluated for each resource. Each operation must include the service identifier, such as `iam:CreateUser`.


## `ResourceArns = [::String, ...]`
A list of ARNs of AWS resources to include in the simulation. If this parameter is not provided, then the value defaults to `*` (all resources). Each API in the `ActionNames` parameter is evaluated for each resource in this list. The simulation determines the access result (allowed or denied) of each combination and reports it in the response.

The simulation does not automatically retrieve policies for the specified resources. If you want to include a resource policy in the simulation, then you must include the policy as a string in the `ResourcePolicy` parameter.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `ResourcePolicy = ::String`
A resource-based policy to include in the simulation provided as a string. Each resource in the simulation is treated as if it had this policy attached. You can include only one resource-based policy in a simulation.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)


## `ResourceOwner = ::String`
An AWS account ID that specifies the owner of any simulated resource that does not identify its owner in the resource ARN, such as an S3 bucket or object. If `ResourceOwner` is specified, it is also used as the account owner of any `ResourcePolicy` included in the simulation. If the `ResourceOwner` parameter is not specified, then the owner of the resources and the resource policy defaults to the account of the identity provided in `CallerArn`. This parameter is required only if you specify a resource-based policy and account that owns the resource is different from the account that owns the simulated calling user `CallerArn`.


## `CallerArn = ::String`
The ARN of the IAM user that you want to specify as the simulated caller of the API operations. If you do not specify a `CallerArn`, it defaults to the ARN of the user that you specify in `PolicySourceArn`, if you specified a user. If you include both a `PolicySourceArn` (for example, `arn:aws:iam::123456789012:user/David`) and a `CallerArn` (for example, `arn:aws:iam::123456789012:user/Bob`), the result is that you simulate calling the API operations as Bob, as if Bob had David's policies.

You can specify only the ARN of an IAM user. You cannot specify the ARN of an assumed role, federated user, or a service principal.

`CallerArn` is required if you include a `ResourcePolicy` and the `PolicySourceArn` is not the ARN for an IAM user. This is required so that the resource-based policy's `Principal` element has a value to use in evaluating the policy.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `ContextEntries = [[ ... ], ...]`
A list of context keys and corresponding values for the simulation to use. Whenever a context key is evaluated in one of the simulated IAM permission policies, the corresponding value is supplied.
```
 ContextEntries = [[
        "ContextKeyName" =>  ::String,
        "ContextKeyValues" =>  [::String, ...],
        "ContextKeyType" =>  "string", "stringList", "numeric", "numericList", "boolean", "booleanList", "ip", "ipList", "binary", "binaryList", "date" or "dateList"
    ], ...]
```

## `ResourceHandlingOption = ::String`
Specifies the type of simulation to run. Different API operations that support resource-based policies require different combinations of resources. By specifying the type of simulation to run, you enable the policy simulator to enforce the presence of the required resources to ensure reliable simulation results. If your simulation does not match one of the following scenarios, then you can omit this parameter. The following list shows each of the supported scenario values and the resources that you must define to run the simulation.

Each of the EC2 scenarios requires that you specify instance, image, and security-group resources. If your scenario includes an EBS volume, then you must specify that volume as a resource. If the EC2 scenario includes VPC, then you must supply the network-interface resource. If it includes an IP subnet, then you must specify the subnet resource. For more information on the EC2 scenario options, see [Supported Platforms](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html) in the *Amazon EC2 User Guide*.

*   **EC2-Classic-InstanceStore**

    instance, image, security-group

*   **EC2-Classic-EBS**

    instance, image, security-group, volume

*   **EC2-VPC-InstanceStore**

    instance, image, security-group, network-interface

*   **EC2-VPC-InstanceStore-Subnet**

    instance, image, security-group, network-interface, subnet

*   **EC2-VPC-EBS**

    instance, image, security-group, network-interface, volume

*   **EC2-VPC-EBS-Subnet**

    instance, image, security-group, network-interface, subnet, volume


## `MaxItems = ::Int`
(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.

If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true` and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.


## `Marker = ::String`
Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.




# Returns

`SimulatePolicyResponse`

# Exceptions

`NoSuchEntityException`, `InvalidInputException` or `PolicyEvaluationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SimulatePrincipalPolicy)
"""
@inline simulate_principal_policy(aws::AWSConfig=default_aws_config(); args...) = simulate_principal_policy(aws, args)

@inline simulate_principal_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "SimulatePrincipalPolicy", args)

@inline simulate_principal_policy(args) = simulate_principal_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_access_key
    update_access_key([::AWSConfig], arguments::Dict)
    update_access_key([::AWSConfig]; AccessKeyId=, Status=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateAccessKey", arguments::Dict)
    iam([::AWSConfig], "UpdateAccessKey", AccessKeyId=, Status=, <keyword arguments>)

# UpdateAccessKey Operation

Changes the status of the specified access key from Active to Inactive, or vice versa. This operation can be used to disable a user's key as part of a key rotation workflow.

If the `UserName` field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request. Because this operation works for access keys under the AWS account, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.

For information about rotating keys, see [Managing Keys and Certificates](http://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html) in the *IAM User Guide*.

# Arguments

## `UserName = ::String`
The name of the user whose key you want to update.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `AccessKeyId = ::String` -- *Required*
The access key ID of the secret access key you want to update.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.


## `Status = "Active" or "Inactive"` -- *Required*
The status you want to assign to the secret access key. `Active` means that the key can be used for API calls to AWS, while `Inactive` means that the key cannot be used.




# Exceptions

`NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To activate or deactivate an access key for an IAM user

The following command deactivates the specified access key (access key ID and secret access key) for the IAM user named Bob.

Input:
```
[
    "AccessKeyId" => "AKIAIOSFODNN7EXAMPLE",
    "Status" => "Inactive",
    "UserName" => "Bob"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateAccessKey)
"""
@inline update_access_key(aws::AWSConfig=default_aws_config(); args...) = update_access_key(aws, args)

@inline update_access_key(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateAccessKey", args)

@inline update_access_key(args) = update_access_key(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_account_password_policy
    update_account_password_policy([::AWSConfig], arguments::Dict)
    update_account_password_policy([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateAccountPasswordPolicy", arguments::Dict)
    iam([::AWSConfig], "UpdateAccountPasswordPolicy", <keyword arguments>)

# UpdateAccountPasswordPolicy Operation

Updates the password policy settings for the AWS account.

**Note**
> *   This operation does not support partial updates. No parameters are required, but if you do not specify a parameter, that parameter's value reverts to its default value. See the **Request Parameters** section for each parameter's default value. Also note that some parameters do not allow the default parameter to be explicitly set. Instead, to invoke the default value, do not include that parameter when you invoke the operation.

For more information about using a password policy, see [Managing an IAM Password Policy](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html) in the *IAM User Guide*.

# Arguments

## `MinimumPasswordLength = ::Int`
The minimum number of characters allowed in an IAM user password.

If you do not specify a value for this parameter, then the operation uses the default value of `6`.


## `RequireSymbols = ::Bool`
Specifies whether IAM user passwords must contain at least one of the following non-alphanumeric characters:

! @ # \$ % ^ & * ( ) _ + - = [ ] { } | '

If you do not specify a value for this parameter, then the operation uses the default value of `false`. The result is that passwords do not require at least one symbol character.


## `RequireNumbers = ::Bool`
Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).

If you do not specify a value for this parameter, then the operation uses the default value of `false`. The result is that passwords do not require at least one numeric character.


## `RequireUppercaseCharacters = ::Bool`
Specifies whether IAM user passwords must contain at least one uppercase character from the ISO basic Latin alphabet (A to Z).

If you do not specify a value for this parameter, then the operation uses the default value of `false`. The result is that passwords do not require at least one uppercase character.


## `RequireLowercaseCharacters = ::Bool`
Specifies whether IAM user passwords must contain at least one lowercase character from the ISO basic Latin alphabet (a to z).

If you do not specify a value for this parameter, then the operation uses the default value of `false`. The result is that passwords do not require at least one lowercase character.


## `AllowUsersToChangePassword = ::Bool`
Allows all IAM users in your account to use the AWS Management Console to change their own passwords. For more information, see [Letting IAM Users Change Their Own Passwords](http://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html) in the *IAM User Guide*.

If you do not specify a value for this parameter, then the operation uses the default value of `false`. The result is that IAM users in the account do not automatically have permissions to change their own password.


## `MaxPasswordAge = ::Int`
The number of days that an IAM user password is valid.

If you do not specify a value for this parameter, then the operation uses the default value of `0`. The result is that IAM user passwords never expire.


## `PasswordReusePrevention = ::Int`
Specifies the number of previous passwords that IAM users are prevented from reusing.

If you do not specify a value for this parameter, then the operation uses the default value of `0`. The result is that IAM users are not prevented from reusing previous passwords.


## `HardExpiry = ::Bool`
Prevents IAM users from setting a new password after their password has expired. The IAM user cannot be accessed until an administrator resets the password.

If you do not specify a value for this parameter, then the operation uses the default value of `false`. The result is that IAM users can change their passwords after they expire and continue to sign in as the user.




# Exceptions

`NoSuchEntityException`, `MalformedPolicyDocumentException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To set or change the current account password policy

The following command sets the password policy to require a minimum length of eight characters and to require one or more numbers in the password:

Input:
```
[
    "MinimumPasswordLength" => 8,
    "RequireNumbers" => true
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateAccountPasswordPolicy)
"""
@inline update_account_password_policy(aws::AWSConfig=default_aws_config(); args...) = update_account_password_policy(aws, args)

@inline update_account_password_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateAccountPasswordPolicy", args)

@inline update_account_password_policy(args) = update_account_password_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_assume_role_policy
    update_assume_role_policy([::AWSConfig], arguments::Dict)
    update_assume_role_policy([::AWSConfig]; RoleName=, PolicyDocument=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateAssumeRolePolicy", arguments::Dict)
    iam([::AWSConfig], "UpdateAssumeRolePolicy", RoleName=, PolicyDocument=)

# UpdateAssumeRolePolicy Operation

Updates the policy that grants an IAM entity permission to assume a role. This is typically referred to as the "role trust policy". For more information about roles, go to [Using Roles to Delegate Permissions and Federate Identities](http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).

# Arguments

## `RoleName = ::String` -- *Required*
The name of the role to update with the new policy.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `PolicyDocument = ::String` -- *Required*
The policy that grants an entity permission to assume the role.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)




# Exceptions

`NoSuchEntityException`, `MalformedPolicyDocumentException`, `LimitExceededException`, `UnmodifiableEntityException` or `ServiceFailureException`.

# Example: To update the trust policy for an IAM role

The following command updates the role trust policy for the role named Test-Role:

Input:
```
[
    "PolicyDocument" => "{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Principal":{"Service":["ec2.amazonaws.com"]},"Action":["sts:AssumeRole"]}]}",
    "RoleName" => "S3AccessForEC2Instances"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateAssumeRolePolicy)
"""
@inline update_assume_role_policy(aws::AWSConfig=default_aws_config(); args...) = update_assume_role_policy(aws, args)

@inline update_assume_role_policy(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateAssumeRolePolicy", args)

@inline update_assume_role_policy(args) = update_assume_role_policy(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_group
    update_group([::AWSConfig], arguments::Dict)
    update_group([::AWSConfig]; GroupName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateGroup", arguments::Dict)
    iam([::AWSConfig], "UpdateGroup", GroupName=, <keyword arguments>)

# UpdateGroup Operation

Updates the name and/or the path of the specified IAM group.

**Important**
> You should understand the implications of changing a group's path or name. For more information, see [Renaming Users and Groups](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html) in the *IAM User Guide*.

**Note**
> The person making the request (the principal), must have permission to change the role group with the old name and the new name. For example, to change the group named `Managers` to `MGRs`, the principal must have a policy that allows them to update both groups. If the principal has permission to update the `Managers` group, but not the `MGRs` group, then the update fails. For more information about permissions, see [Access Management](http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html).

# Arguments

## `GroupName = ::String` -- *Required*
Name of the IAM group to update. If you're changing the name of the group, this is the original name.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `NewPath = ::String`
New path for the IAM group. Only include this if changing the group's path.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `NewGroupName = ::String`
New name for the IAM group. Only include this if changing the group's name.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `EntityAlreadyExistsException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To rename an IAM group

The following command changes the name of the IAM group Test to Test-1.

Input:
```
[
    "GroupName" => "Test",
    "NewGroupName" => "Test-1"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateGroup)
"""
@inline update_group(aws::AWSConfig=default_aws_config(); args...) = update_group(aws, args)

@inline update_group(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateGroup", args)

@inline update_group(args) = update_group(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_login_profile
    update_login_profile([::AWSConfig], arguments::Dict)
    update_login_profile([::AWSConfig]; UserName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateLoginProfile", arguments::Dict)
    iam([::AWSConfig], "UpdateLoginProfile", UserName=, <keyword arguments>)

# UpdateLoginProfile Operation

Changes the password for the specified IAM user.

IAM users can change their own passwords by calling [ChangePassword](@ref). For more information about modifying passwords, see [Managing Passwords](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html) in the *IAM User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name of the user whose password you want to update.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `Password = ::String`
The new password for the specified IAM user.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)

However, the format can be further restricted by the account administrator by setting a password policy on the AWS account. For more information, see [UpdateAccountPasswordPolicy](@ref).


## `PasswordResetRequired = ::Bool`
Allows this new password to be used only once by requiring the specified IAM user to set a new password on next sign-in.




# Exceptions

`EntityTemporarilyUnmodifiableException`, `NoSuchEntityException`, `PasswordPolicyViolationException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To change the password for an IAM user

The following command creates or changes the password for the IAM user named Bob.

Input:
```
[
    "Password" => "SomeKindOfPassword123!@#",
    "UserName" => "Bob"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateLoginProfile)
"""
@inline update_login_profile(aws::AWSConfig=default_aws_config(); args...) = update_login_profile(aws, args)

@inline update_login_profile(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateLoginProfile", args)

@inline update_login_profile(args) = update_login_profile(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_open_idconnect_provider_thumbprint
    update_open_idconnect_provider_thumbprint([::AWSConfig], arguments::Dict)
    update_open_idconnect_provider_thumbprint([::AWSConfig]; OpenIDConnectProviderArn=, ThumbprintList=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateOpenIDConnectProviderThumbprint", arguments::Dict)
    iam([::AWSConfig], "UpdateOpenIDConnectProviderThumbprint", OpenIDConnectProviderArn=, ThumbprintList=)

# UpdateOpenIDConnectProviderThumbprint Operation

Replaces the existing list of server certificate thumbprints associated with an OpenID Connect (OIDC) provider resource object with a new list of thumbprints.

The list that you pass with this operation completely replaces the existing list of thumbprints. (The lists are not merged.)

Typically, you need to update a thumbprint only when the identity provider's certificate changes, which occurs rarely. However, if the provider's certificate *does* change, any attempt to assume an IAM role that specifies the OIDC provider as a principal fails until the certificate thumbprint is updated.

**Note**
> Because trust for the OIDC provider is derived from the provider's certificate and is validated by the thumbprint, it is best to limit access to the `UpdateOpenIDConnectProviderThumbprint` operation to highly privileged users.

# Arguments

## `OpenIDConnectProviderArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM OIDC provider resource object for which you want to update the thumbprint. You can get a list of OIDC provider ARNs by using the [ListOpenIDConnectProviders](@ref) operation.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.


## `ThumbprintList = [::String, ...]` -- *Required*
A list of certificate thumbprints that are associated with the specified IAM OpenID Connect provider. For more information, see [CreateOpenIDConnectProvider](@ref).




# Exceptions

`InvalidInputException`, `NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateOpenIDConnectProviderThumbprint)
"""
@inline update_open_idconnect_provider_thumbprint(aws::AWSConfig=default_aws_config(); args...) = update_open_idconnect_provider_thumbprint(aws, args)

@inline update_open_idconnect_provider_thumbprint(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateOpenIDConnectProviderThumbprint", args)

@inline update_open_idconnect_provider_thumbprint(args) = update_open_idconnect_provider_thumbprint(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_role
    update_role([::AWSConfig], arguments::Dict)
    update_role([::AWSConfig]; RoleName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateRole", arguments::Dict)
    iam([::AWSConfig], "UpdateRole", RoleName=, <keyword arguments>)

# UpdateRole Operation

Updates the description or maximum session duration setting of a role.

# Arguments

## `RoleName = ::String` -- *Required*
The name of the role that you want to modify.


## `Description = ::String`
The new description that you want to apply to the specified role.


## `MaxSessionDuration = ::Int`
The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.

Anyone who assumes the role from the AWS CLI or API can use the `DurationSeconds` API parameter or the `duration-seconds` CLI parameter to request a longer session. The `MaxSessionDuration` setting determines the maximum duration that can be requested using the `DurationSeconds` parameter. If users don't specify a value for the `DurationSeconds` parameter, their security credentials are valid for one hour by default. This applies when you use the `AssumeRole*` API operations or the `assume-role*` CLI operations but does not apply when you use those operations to create a console URL. For more information, see [Using IAM Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in the *IAM User Guide*.




# Returns

`UpdateRoleResponse`

# Exceptions

`UnmodifiableEntityException`, `NoSuchEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateRole)
"""
@inline update_role(aws::AWSConfig=default_aws_config(); args...) = update_role(aws, args)

@inline update_role(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateRole", args)

@inline update_role(args) = update_role(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_role_description
    update_role_description([::AWSConfig], arguments::Dict)
    update_role_description([::AWSConfig]; RoleName=, Description=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateRoleDescription", arguments::Dict)
    iam([::AWSConfig], "UpdateRoleDescription", RoleName=, Description=)

# UpdateRoleDescription Operation

Use instead.

Modifies only the description of a role. This operation performs the same function as the `Description` parameter in the `UpdateRole` operation.

# Arguments

## `RoleName = ::String` -- *Required*
The name of the role that you want to modify.


## `Description = ::String` -- *Required*
The new description that you want to apply to the specified role.




# Returns

`UpdateRoleDescriptionResponse`

# Exceptions

`NoSuchEntityException`, `UnmodifiableEntityException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateRoleDescription)
"""
@inline update_role_description(aws::AWSConfig=default_aws_config(); args...) = update_role_description(aws, args)

@inline update_role_description(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateRoleDescription", args)

@inline update_role_description(args) = update_role_description(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_samlprovider
    update_samlprovider([::AWSConfig], arguments::Dict)
    update_samlprovider([::AWSConfig]; SAMLMetadataDocument=, SAMLProviderArn=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateSAMLProvider", arguments::Dict)
    iam([::AWSConfig], "UpdateSAMLProvider", SAMLMetadataDocument=, SAMLProviderArn=)

# UpdateSAMLProvider Operation

Updates the metadata document for an existing SAML provider resource object.

**Note**
> This operation requires [Signature Version 4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

# Arguments

## `SAMLMetadataDocument = ::String` -- *Required*
An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.


## `SAMLProviderArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the SAML provider to update.

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *AWS General Reference*.




# Returns

`UpdateSAMLProviderResponse`

# Exceptions

`NoSuchEntityException`, `InvalidInputException`, `LimitExceededException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSAMLProvider)
"""
@inline update_samlprovider(aws::AWSConfig=default_aws_config(); args...) = update_samlprovider(aws, args)

@inline update_samlprovider(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateSAMLProvider", args)

@inline update_samlprovider(args) = update_samlprovider(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_sshpublic_key
    update_sshpublic_key([::AWSConfig], arguments::Dict)
    update_sshpublic_key([::AWSConfig]; UserName=, SSHPublicKeyId=, Status=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateSSHPublicKey", arguments::Dict)
    iam([::AWSConfig], "UpdateSSHPublicKey", UserName=, SSHPublicKeyId=, Status=)

# UpdateSSHPublicKey Operation

Sets the status of an IAM user's SSH public key to active or inactive. SSH public keys that are inactive cannot be used for authentication. This operation can be used to disable a user's SSH public key as part of a key rotation work flow.

The SSH public key affected by this operation is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see [Set up AWS CodeCommit for SSH Connections](http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the *AWS CodeCommit User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name of the IAM user associated with the SSH public key.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `SSHPublicKeyId = ::String` -- *Required*
The unique identifier for the SSH public key.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.


## `Status = "Active" or "Inactive"` -- *Required*
The status to assign to the SSH public key. `Active` means that the key can be used for authentication with an AWS CodeCommit repository. `Inactive` means that the key cannot be used.




# Exceptions

`NoSuchEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSSHPublicKey)
"""
@inline update_sshpublic_key(aws::AWSConfig=default_aws_config(); args...) = update_sshpublic_key(aws, args)

@inline update_sshpublic_key(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateSSHPublicKey", args)

@inline update_sshpublic_key(args) = update_sshpublic_key(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_server_certificate
    update_server_certificate([::AWSConfig], arguments::Dict)
    update_server_certificate([::AWSConfig]; ServerCertificateName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateServerCertificate", arguments::Dict)
    iam([::AWSConfig], "UpdateServerCertificate", ServerCertificateName=, <keyword arguments>)

# UpdateServerCertificate Operation

Updates the name and/or the path of the specified server certificate stored in IAM.

For more information about working with server certificates, see [Working with Server Certificates](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the *IAM User Guide*. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.

**Important**
> You should understand the implications of changing a server certificate's path or name. For more information, see [Renaming a Server Certificate](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts) in the *IAM User Guide*.

**Note**
> The person making the request (the principal), must have permission to change the server certificate with the old name and the new name. For example, to change the certificate named `ProductionCert` to `ProdCert`, the principal must have a policy that allows them to update both certificates. If the principal has permission to update the `ProductionCert` group, but not the `ProdCert` certificate, then the update fails. For more information about permissions, see [Access Management](http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html) in the *IAM User Guide*.

# Arguments

## `ServerCertificateName = ::String` -- *Required*
The name of the server certificate that you want to update.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `NewPath = ::String`
The new path for the server certificate. Include this only if you are updating the server certificate's path.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `NewServerCertificateName = ::String`
The new name for the server certificate. Include this only if you are updating the server certificate's name. The name of the certificate cannot contain any spaces.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `EntityAlreadyExistsException`, `LimitExceededException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateServerCertificate)
"""
@inline update_server_certificate(aws::AWSConfig=default_aws_config(); args...) = update_server_certificate(aws, args)

@inline update_server_certificate(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateServerCertificate", args)

@inline update_server_certificate(args) = update_server_certificate(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_service_specific_credential
    update_service_specific_credential([::AWSConfig], arguments::Dict)
    update_service_specific_credential([::AWSConfig]; ServiceSpecificCredentialId=, Status=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateServiceSpecificCredential", arguments::Dict)
    iam([::AWSConfig], "UpdateServiceSpecificCredential", ServiceSpecificCredentialId=, Status=, <keyword arguments>)

# UpdateServiceSpecificCredential Operation

Sets the status of a service-specific credential to `Active` or `Inactive`. Service-specific credentials that are inactive cannot be used for authentication to the service. This operation can be used to disable a user's service-specific credential as part of a credential rotation work flow.

# Arguments

## `UserName = ::String`
The name of the IAM user associated with the service-specific credential. If you do not specify this value, then the operation assumes the user whose credentials are used to call the operation.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `ServiceSpecificCredentialId = ::String` -- *Required*
The unique identifier of the service-specific credential.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.


## `Status = "Active" or "Inactive"` -- *Required*
The status to be assigned to the service-specific credential.




# Exceptions

`NoSuchEntityException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateServiceSpecificCredential)
"""
@inline update_service_specific_credential(aws::AWSConfig=default_aws_config(); args...) = update_service_specific_credential(aws, args)

@inline update_service_specific_credential(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateServiceSpecificCredential", args)

@inline update_service_specific_credential(args) = update_service_specific_credential(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_signing_certificate
    update_signing_certificate([::AWSConfig], arguments::Dict)
    update_signing_certificate([::AWSConfig]; CertificateId=, Status=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateSigningCertificate", arguments::Dict)
    iam([::AWSConfig], "UpdateSigningCertificate", CertificateId=, Status=, <keyword arguments>)

# UpdateSigningCertificate Operation

Changes the status of the specified user signing certificate from active to disabled, or vice versa. This operation can be used to disable an IAM user's signing certificate as part of a certificate rotation work flow.

If the `UserName` field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request. Because this operation works for access keys under the AWS account, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.

# Arguments

## `UserName = ::String`
The name of the IAM user the signing certificate belongs to.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `CertificateId = ::String` -- *Required*
The ID of the signing certificate you want to update.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.


## `Status = "Active" or "Inactive"` -- *Required*
The status you want to assign to the certificate. `Active` means that the certificate can be used for API calls to AWS `Inactive` means that the certificate cannot be used.




# Exceptions

`NoSuchEntityException`, `LimitExceededException` or `ServiceFailureException`.

# Example: To change the active status of a signing certificate for an IAM user

The following command changes the status of a signing certificate for a user named Bob to Inactive.

Input:
```
[
    "CertificateId" => "TA7SMP42TDN5Z26OBPJE7EXAMPLE",
    "Status" => "Inactive",
    "UserName" => "Bob"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSigningCertificate)
"""
@inline update_signing_certificate(aws::AWSConfig=default_aws_config(); args...) = update_signing_certificate(aws, args)

@inline update_signing_certificate(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateSigningCertificate", args)

@inline update_signing_certificate(args) = update_signing_certificate(default_aws_config(), args)


"""
    using AWSSDK.IAM.update_user
    update_user([::AWSConfig], arguments::Dict)
    update_user([::AWSConfig]; UserName=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UpdateUser", arguments::Dict)
    iam([::AWSConfig], "UpdateUser", UserName=, <keyword arguments>)

# UpdateUser Operation

Updates the name and/or the path of the specified IAM user.

**Important**
> You should understand the implications of changing an IAM user's path or name. For more information, see [Renaming an IAM User](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming) and [Renaming an IAM Group](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html) in the *IAM User Guide*.

**Note**
> To change a user name, the requester must have appropriate permissions on both the source object and the target object. For example, to change Bob to Robert, the entity making the request must have permission on Bob and Robert, or must have permission on all (*). For more information about permissions, see [Permissions and Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html).

# Arguments

## `UserName = ::String` -- *Required*
Name of the user to update. If you're changing the name of the user, this is the original user name.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `NewPath = ::String`
New path for the IAM user. Include this parameter only if you're changing the user's path.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.


## `NewUserName = ::String`
New name for the user. Include this parameter only if you're changing the user's name.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-




# Exceptions

`NoSuchEntityException`, `LimitExceededException`, `EntityAlreadyExistsException`, `EntityTemporarilyUnmodifiableException` or `ServiceFailureException`.

# Example: To change an IAM user's name

The following command changes the name of the IAM user Bob to Robert. It does not change the user's path.

Input:
```
[
    "NewUserName" => "Robert",
    "UserName" => "Bob"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateUser)
"""
@inline update_user(aws::AWSConfig=default_aws_config(); args...) = update_user(aws, args)

@inline update_user(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UpdateUser", args)

@inline update_user(args) = update_user(default_aws_config(), args)


"""
    using AWSSDK.IAM.upload_sshpublic_key
    upload_sshpublic_key([::AWSConfig], arguments::Dict)
    upload_sshpublic_key([::AWSConfig]; UserName=, SSHPublicKeyBody=)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UploadSSHPublicKey", arguments::Dict)
    iam([::AWSConfig], "UploadSSHPublicKey", UserName=, SSHPublicKeyBody=)

# UploadSSHPublicKey Operation

Uploads an SSH public key and associates it with the specified IAM user.

The SSH public key uploaded by this operation can be used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see [Set up AWS CodeCommit for SSH Connections](http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the *AWS CodeCommit User Guide*.

# Arguments

## `UserName = ::String` -- *Required*
The name of the IAM user to associate the SSH public key with.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `SSHPublicKeyBody = ::String` -- *Required*
The SSH public key. The public key must be encoded in ssh-rsa format or PEM format. The miminum bit-length of the public key is 2048 bits. For example, you can generate a 2048-bit key, and the resulting PEM file is 1679 bytes long.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)




# Returns

`UploadSSHPublicKeyResponse`

# Exceptions

`LimitExceededException`, `NoSuchEntityException`, `InvalidPublicKeyException`, `DuplicateSSHPublicKeyException` or `UnrecognizedPublicKeyEncodingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadSSHPublicKey)
"""
@inline upload_sshpublic_key(aws::AWSConfig=default_aws_config(); args...) = upload_sshpublic_key(aws, args)

@inline upload_sshpublic_key(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UploadSSHPublicKey", args)

@inline upload_sshpublic_key(args) = upload_sshpublic_key(default_aws_config(), args)


"""
    using AWSSDK.IAM.upload_server_certificate
    upload_server_certificate([::AWSConfig], arguments::Dict)
    upload_server_certificate([::AWSConfig]; ServerCertificateName=, CertificateBody=, PrivateKey=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UploadServerCertificate", arguments::Dict)
    iam([::AWSConfig], "UploadServerCertificate", ServerCertificateName=, CertificateBody=, PrivateKey=, <keyword arguments>)

# UploadServerCertificate Operation

Uploads a server certificate entity for the AWS account. The server certificate entity includes a public key certificate, a private key, and an optional certificate chain, which should all be PEM-encoded.

We recommend that you use [AWS Certificate Manager](https://aws.amazon.com/certificate-manager/) to provision, manage, and deploy your server certificates. With ACM you can request a certificate, deploy it to AWS resources, and let ACM handle certificate renewals for you. Certificates provided by ACM are free. For more information about using ACM, see the [AWS Certificate Manager User Guide](http://docs.aws.amazon.com/acm/latest/userguide/).

For more information about working with server certificates, see [Working with Server Certificates](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the *IAM User Guide*. This topic includes a list of AWS services that can use the server certificates that you manage with IAM.

For information about the number of server certificates you can upload, see [Limitations on IAM Entities and Objects](http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html) in the *IAM User Guide*.

**Note**
> Because the body of the public key certificate, private key, and the certificate chain can be large, you should use POST rather than GET when calling `UploadServerCertificate`. For information about setting up signatures and authorization through the API, go to [Signing AWS API Requests](http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html) in the *AWS General Reference*. For general information about using the Query API with IAM, go to [Calling the API by Making HTTP Query Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html) in the *IAM User Guide*.

# Arguments

## `Path = ::String`
The path for the server certificate. For more information about paths, see [IAM Identifiers](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the *IAM User Guide*.

This parameter is optional. If it is not included, it defaults to a slash (/). This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\\u0021) through the DEL character (\\u007F), including most punctuation characters, digits, and upper and lowercased letters.

**Note**
> If you are uploading a server certificate specifically for use with Amazon CloudFront distributions, you must specify a path using the `path` parameter. The path must begin with `/cloudfront` and must include a trailing slash (for example, `/cloudfront/test/`).


## `ServerCertificateName = ::String` -- *Required*
The name for the server certificate. Do not include the path in this value. The name of the certificate cannot contain any spaces.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `CertificateBody = ::String` -- *Required*
The contents of the public key certificate in PEM-encoded format.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)


## `PrivateKey = ::String` -- *Required*
The contents of the private key in PEM-encoded format.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)


## `CertificateChain = ::String`
The contents of the certificate chain. This is typically a concatenation of the PEM-encoded public key certificates of the chain.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)




# Returns

`UploadServerCertificateResponse`

# Exceptions

`LimitExceededException`, `EntityAlreadyExistsException`, `MalformedCertificateException`, `KeyPairMismatchException` or `ServiceFailureException`.

# Example: To upload a server certificate to your AWS account

The following upload-server-certificate command uploads a server certificate to your AWS account:

Input:
```
[
    "CertificateBody" => "-----BEGIN CERTIFICATE-----<a very long certificate text string>-----END CERTIFICATE-----",
    "Path" => "/company/servercerts/",
    "PrivateKey" => "-----BEGIN DSA PRIVATE KEY-----<a very long private key string>-----END DSA PRIVATE KEY-----",
    "ServerCertificateName" => "ProdServerCert"
]
```

Output:
```
Dict(
    "ServerCertificateMetadata" => Dict(
        "Arn" => "arn:aws:iam::123456789012:server-certificate/company/servercerts/ProdServerCert",
        "Expiration" => "2012-05-08T01:02:03.004Z",
        "Path" => "/company/servercerts/",
        "ServerCertificateId" => "ASCA1111111111EXAMPLE",
        "ServerCertificateName" => "ProdServerCert",
        "UploadDate" => "2010-05-08T01:02:03.004Z"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadServerCertificate)
"""
@inline upload_server_certificate(aws::AWSConfig=default_aws_config(); args...) = upload_server_certificate(aws, args)

@inline upload_server_certificate(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UploadServerCertificate", args)

@inline upload_server_certificate(args) = upload_server_certificate(default_aws_config(), args)


"""
    using AWSSDK.IAM.upload_signing_certificate
    upload_signing_certificate([::AWSConfig], arguments::Dict)
    upload_signing_certificate([::AWSConfig]; CertificateBody=, <keyword arguments>)

    using AWSCore.Services.iam
    iam([::AWSConfig], "UploadSigningCertificate", arguments::Dict)
    iam([::AWSConfig], "UploadSigningCertificate", CertificateBody=, <keyword arguments>)

# UploadSigningCertificate Operation

Uploads an X.509 signing certificate and associates it with the specified IAM user. Some AWS services use X.509 signing certificates to validate requests that are signed with a corresponding private key. When you upload the certificate, its default status is `Active`.

If the `UserName` field is not specified, the IAM user name is determined implicitly based on the AWS access key ID used to sign the request. Because this operation works for access keys under the AWS account, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.

**Note**
> Because the body of an X.509 certificate can be large, you should use POST rather than GET when calling `UploadSigningCertificate`. For information about setting up signatures and authorization through the API, go to [Signing AWS API Requests](http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html) in the *AWS General Reference*. For general information about using the Query API with IAM, go to [Making Query Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html) in the *IAM User Guide*.

# Arguments

## `UserName = ::String`
The name of the user the signing certificate is for.

This parameter allows (per its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-


## `CertificateBody = ::String` -- *Required*
The contents of the signing certificate.

The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:

*   Any printable ASCII character ranging from the space character (\\u0020) through the end of the ASCII character range

*   The printable characters in the Basic Latin and Latin-1 Supplement character set (through \\u00FF)

*   The special characters tab (\\u0009), line feed (\\u000A), and carriage return (\\u000D)




# Returns

`UploadSigningCertificateResponse`

# Exceptions

`LimitExceededException`, `EntityAlreadyExistsException`, `MalformedCertificateException`, `InvalidCertificateException`, `DuplicateCertificateException`, `NoSuchEntityException` or `ServiceFailureException`.

# Example: To upload a signing certificate for an IAM user

The following command uploads a signing certificate for the IAM user named Bob.

Input:
```
[
    "CertificateBody" => "-----BEGIN CERTIFICATE-----<certificate-body>-----END CERTIFICATE-----",
    "UserName" => "Bob"
]
```

Output:
```
Dict(
    "Certificate" => Dict(
        "CertificateBody" => "-----BEGIN CERTIFICATE-----<certificate-body>-----END CERTIFICATE-----",
        "CertificateId" => "ID123456789012345EXAMPLE",
        "Status" => "Active",
        "UploadDate" => "2015-06-06T21:40:08.121Z",
        "UserName" => "Bob"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadSigningCertificate)
"""
@inline upload_signing_certificate(aws::AWSConfig=default_aws_config(); args...) = upload_signing_certificate(aws, args)

@inline upload_signing_certificate(aws::AWSConfig, args) = AWSCore.Services.iam(aws, "UploadSigningCertificate", args)

@inline upload_signing_certificate(args) = upload_signing_certificate(default_aws_config(), args)




end # module IAM


#==============================================================================#
# End of file
#==============================================================================#
