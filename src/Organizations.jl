#==============================================================================#
# Organizations.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/organizations-2016-11-28.normal.json
#==============================================================================#

__precompile__()

module Organizations

using AWSCore


"""
    using AWSSDK.Organizations.accept_handshake
    accept_handshake([::AWSConfig], arguments::Dict)
    accept_handshake([::AWSConfig]; HandshakeId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "AcceptHandshake", arguments::Dict)
    organizations([::AWSConfig], "AcceptHandshake", HandshakeId=)

# AcceptHandshake Operation

Sends a response to the originator of a handshake agreeing to the action proposed by the handshake request.

This operation can be called only by the following principals when they also have the relevant IAM permissions:

*   **Invitation to join** or **Approve all features request** handshakes: only a principal from the member account.

    The user who calls the API for an invitation to join must have the `organizations:AcceptHandshake` permission. If you enabled all features in the organization, then the user must also have the `iam:CreateServiceLinkedRole` permission so that Organizations can create the required service-linked role named *OrgsServiceLinkedRoleName*. For more information, see [AWS Organizations and Service-Linked Roles](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles) in the *AWS Organizations User Guide*.

*   **Enable all features final confirmation** handshake: only a principal from the master account.

    For more information about invitations, see [Inviting an AWS Account to Join Your Organization](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html) in the *AWS Organizations User Guide*. For more information about requests to enable all features in the organization, see [Enabling All Features in Your Organization](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html) in the *AWS Organizations User Guide*.

After you accept a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.

# Arguments

## `HandshakeId = ::String` -- *Required*
The unique identifier (ID) of the handshake that you want to accept.

The [regex pattern](http://wikipedia.org/wiki/regex) for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.




# Returns

`AcceptHandshakeResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `HandshakeConstraintViolationException`, `HandshakeNotFoundException`, `InvalidHandshakeTransitionException`, `HandshakeAlreadyInStateException`, `InvalidInputException`, `ConcurrentModificationException`, `ServiceException`, `TooManyRequestsException` or `AccessDeniedForDependencyException`.

# Example: To accept a handshake from another account

Bill is the owner of an organization, and he invites Juan's account (222222222222) to join his organization. The following example shows Juan's account accepting the handshake and thus agreeing to the invitation.

Input:
```
[
    "HandshakeId" => "h-examplehandshakeid111"
]
```

Output:
```
Dict(
    "Handshake" => Dict(
        "Action" => "INVITE",
        "Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111",
        "ExpirationTimestamp" => "20170228T1215Z",
        "Id" => "h-examplehandshakeid111",
        "Parties" => [
            Dict(
                "Id" => "o-exampleorgid",
                "Type" => "ORGANIZATION"
            ),
            Dict(
                "Id" => "juan@example.com",
                "Type" => "EMAIL"
            )
        ],
        "RequestedTimestamp" => "20170214T1215Z",
        "Resources" => [
            Dict(
                "Resources" => [
                    Dict(
                        "Type" => "MASTER_EMAIL",
                        "Value" => "bill@amazon.com"
                    ),
                    Dict(
                        "Type" => "MASTER_NAME",
                        "Value" => "Org Master Account"
                    ),
                    Dict(
                        "Type" => "ORGANIZATION_FEATURE_SET",
                        "Value" => "ALL"
                    )
                ],
                "Type" => "ORGANIZATION",
                "Value" => "o-exampleorgid"
            ),
            Dict(
                "Type" => "ACCOUNT",
                "Value" => "222222222222"
            )
        ],
        "State" => "ACCEPTED"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AcceptHandshake)
"""
@inline accept_handshake(aws::AWSConfig=default_aws_config(); args...) = accept_handshake(aws, args)

@inline accept_handshake(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "AcceptHandshake", args)

@inline accept_handshake(args) = accept_handshake(default_aws_config(), args)


"""
    using AWSSDK.Organizations.attach_policy
    attach_policy([::AWSConfig], arguments::Dict)
    attach_policy([::AWSConfig]; PolicyId=, TargetId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "AttachPolicy", arguments::Dict)
    organizations([::AWSConfig], "AttachPolicy", PolicyId=, TargetId=)

# AttachPolicy Operation

Attaches a policy to a root, an organizational unit (OU), or an individual account. How the policy affects accounts depends on the type of policy:

*   **Service control policy (SCP)** - An SCP specifies what permissions can be delegated to users in affected member accounts. The scope of influence for a policy depends on what you attach the policy to:

    *   If you attach an SCP to a root, it affects all accounts in the organization.

    *   If you attach an SCP to an OU, it affects all accounts in that OU and in any child OUs.

    *   If you attach the policy directly to an account, then it affects only that account.

    SCPs essentially are permission "filters". When you attach one SCP to a higher level root or OU, and you also attach a different SCP to a child OU or to an account, the child policy can further restrict only the permissions that pass through the parent filter and are available to the child. An SCP that is attached to a child cannot grant a permission that is not already granted by the parent. For example, imagine that the parent SCP allows permissions A, B, C, D, and E. The child SCP allows C, D, E, F, and G. The result is that the accounts affected by the child SCP are allowed to use only C, D, and E. They cannot use A or B because they were filtered out by the child OU. They also cannot use F and G because they were filtered out by the parent OU. They cannot be granted back by the child SCP; child SCPs can only filter the permissions they receive from the parent SCP.

    AWS Organizations attaches a default SCP named `"FullAWSAccess` to every root, OU, and account. This default SCP allows all services and actions, enabling any new child OU or account to inherit the permissions of the parent root or OU. If you detach the default policy, you must replace it with a policy that specifies the permissions that you want to allow in that OU or account.

    For more information about how Organizations policies permissions work, see [Using Service Control Policies](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html) in the *AWS Organizations User Guide*.

This operation can be called only from the organization's master account.

# Arguments

## `PolicyId = ::String` -- *Required*
The unique identifier (ID) of the policy that you want to attach to the target. You can get the ID for the policy by calling the [ListPolicies](@ref) operation.

The [regex pattern](http://wikipedia.org/wiki/regex) for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.


## `TargetId = ::String` -- *Required*
The unique identifier (ID) of the root, OU, or account that you want to attach the policy to. You can get the ID by calling the [ListRoots](@ref), [ListOrganizationalUnitsForParent](@ref), or [ListAccounts](@ref) operations.

The [regex pattern](http://wikipedia.org/wiki/regex) for a target ID string requires one of the following:

*   Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.

*   Account: a string that consists of exactly 12 digits.

*   Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.




# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ConstraintViolationException`, `DuplicatePolicyAttachmentException`, `InvalidInputException`, `PolicyNotFoundException`, `PolicyTypeNotEnabledException`, `ServiceException`, `TargetNotFoundException` or `TooManyRequestsException`.

# Example: To attach a policy to an OU

The following example shows how to attach a service control policy (SCP) to an OU:


Input:
```
[
    "PolicyId" => "p-examplepolicyid111",
    "TargetId" => "ou-examplerootid111-exampleouid111"
]
```

# Example: To attach a policy to an account

The following example shows how to attach a service control policy (SCP) to an account:


Input:
```
[
    "PolicyId" => "p-examplepolicyid111",
    "TargetId" => "333333333333"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AttachPolicy)
"""
@inline attach_policy(aws::AWSConfig=default_aws_config(); args...) = attach_policy(aws, args)

@inline attach_policy(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "AttachPolicy", args)

@inline attach_policy(args) = attach_policy(default_aws_config(), args)


"""
    using AWSSDK.Organizations.cancel_handshake
    cancel_handshake([::AWSConfig], arguments::Dict)
    cancel_handshake([::AWSConfig]; HandshakeId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "CancelHandshake", arguments::Dict)
    organizations([::AWSConfig], "CancelHandshake", HandshakeId=)

# CancelHandshake Operation

Cancels a handshake. Canceling a handshake sets the handshake state to `CANCELED`.

This operation can be called only from the account that originated the handshake. The recipient of the handshake can't cancel it, but can use [DeclineHandshake](@ref) instead. After a handshake is canceled, the recipient can no longer respond to that handshake.

After you cancel a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.

# Arguments

## `HandshakeId = ::String` -- *Required*
The unique identifier (ID) of the handshake that you want to cancel. You can get the ID from the [ListHandshakesForOrganization](@ref) operation.

The [regex pattern](http://wikipedia.org/wiki/regex) for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.




# Returns

`CancelHandshakeResponse`

# Exceptions

`AccessDeniedException`, `ConcurrentModificationException`, `HandshakeNotFoundException`, `InvalidHandshakeTransitionException`, `HandshakeAlreadyInStateException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To cancel a handshake sent to a member account

Bill previously sent an invitation to Susan's account to join his organization. He changes his mind and decides to cancel the invitation before Susan accepts it. The following example shows Bill's cancellation:


Input:
```
[
    "HandshakeId" => "h-examplehandshakeid111"
]
```

Output:
```
Dict(
    "Handshake" => Dict(
        "Action" => "INVITE",
        "Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111",
        "ExpirationTimestamp" => "20170228T1215Z",
        "Id" => "h-examplehandshakeid111",
        "Parties" => [
            Dict(
                "Id" => "o-exampleorgid",
                "Type" => "ORGANIZATION"
            ),
            Dict(
                "Id" => "susan@example.com",
                "Type" => "EMAIL"
            )
        ],
        "RequestedTimestamp" => "20170214T1215Z",
        "Resources" => [
            Dict(
                "Resources" => [
                    Dict(
                        "Type" => "MASTER_EMAIL",
                        "Value" => "bill@example.com"
                    ),
                    Dict(
                        "Type" => "MASTER_NAME",
                        "Value" => "Master Account"
                    ),
                    Dict(
                        "Type" => "ORGANIZATION_FEATURE_SET",
                        "Value" => "CONSOLIDATED_BILLING"
                    )
                ],
                "Type" => "ORGANIZATION",
                "Value" => "o-exampleorgid"
            ),
            Dict(
                "Type" => "ACCOUNT",
                "Value" => "222222222222"
            ),
            Dict(
                "Type" => "NOTES",
                "Value" => "This is a request for Susan's account to join Bob's organization."
            )
        ],
        "State" => "CANCELED"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CancelHandshake)
"""
@inline cancel_handshake(aws::AWSConfig=default_aws_config(); args...) = cancel_handshake(aws, args)

@inline cancel_handshake(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "CancelHandshake", args)

@inline cancel_handshake(args) = cancel_handshake(default_aws_config(), args)


"""
    using AWSSDK.Organizations.create_account
    create_account([::AWSConfig], arguments::Dict)
    create_account([::AWSConfig]; Email=, AccountName=, <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "CreateAccount", arguments::Dict)
    organizations([::AWSConfig], "CreateAccount", Email=, AccountName=, <keyword arguments>)

# CreateAccount Operation

Creates an AWS account that is automatically a member of the organization whose credentials made the request. This is an asynchronous request that AWS performs in the background. If you want to check the status of the request later, you need the `OperationId` response element from this operation to provide as a parameter to the [DescribeCreateAccountStatus](@ref) operation.

The user who calls the API for an invitation to join must have the `organizations:CreateAccount` permission. If you enabled all features in the organization, then the user must also have the `iam:CreateServiceLinkedRole` permission so that Organizations can create the required service-linked role named *OrgsServiceLinkedRoleName*. For more information, see [AWS Organizations and Service-Linked Roles](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles) in the *AWS Organizations User Guide*.

The user in the master account who calls this API must also have the `iam:CreateRole` permission because AWS Organizations preconfigures the new member account with a role (named `OrganizationAccountAccessRole` by default) that grants users in the master account administrator permissions in the new member account. Principals in the master account can assume the role. AWS Organizations clones the company name and address information for the new account from the organization's master account.

This operation can be called only from the organization's master account.

For more information about creating accounts, see [Creating an AWS Account in Your Organization](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html) in the *AWS Organizations User Guide*.

**Important**
> *   When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required for the account to operate as a standalone account, such as a payment method and signing the End User Licence Agreement (EULA) is *not* automatically collected. If you must remove an account from your organization later, you can do so only after you provide the missing information. Follow the steps at [To leave an organization when all required account information has not yet been provided](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info) in the *AWS Organizations User Guide*.

*   If you get an exception that indicates that you exceeded your account limits for the organization or that the operation failed because your organization is still initializing, wait one hour and then try again. If the error persists after an hour, then contact [AWS Customer Support](https://console.aws.amazon.com/support/home#/).

*   Because `CreateAccount` operates asynchronously, it can return a successful completion message even though account initialization might still be in progress. You might need to wait a few minutes before you can successfully access the account.

**Note**
> When you create a member account with this operation, you can choose whether to create the account with the **IAM User and Role Access to Billing Information** switch enabled. If you enable it, IAM users and roles that have appropriate permissions can view billing information for the account. If you disable this, then only the account root user can access billing information. For information about how to disable this for an account, see [Granting Access to Your Billing Information and Tools](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html).

# Arguments

## `Email = ::String` -- *Required*
The email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account. You must use a valid email address to complete account creation. You cannot access the root user of the account or remove an account that was created with an invalid email address.


## `AccountName = ::String` -- *Required*
The friendly name of the member account.


## `RoleName = ::String`
(Optional)

The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the master account, allowing users in the master account to assume the role, as permitted by the master account administrator. The role has administrator permissions in the new member account.

If you do not specify this parameter, the role name defaults to `OrganizationAccountAccessRole`.

For more information about how to use this role to access the member account, see [Accessing and Administering the Member Accounts in Your Organization](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role) in the *AWS Organizations User Guide*, and steps 2 and 3 in [Tutorial: Delegate Access Across AWS Accounts Using IAM Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html) in the *IAM User Guide*.

The [regex pattern](http://wikipedia.org/wiki/regex) that is used to validate this parameter is a string of characters that can consist of uppercase letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-


## `IamUserAccessToBilling = "ALLOW" or "DENY"`
If set to `ALLOW`, the new account enables IAM users to access account billing information *if* they have the required permissions. If set to `DENY`, then only the root user of the new account can access account billing information. For more information, see [Activating Access to the Billing and Cost Management Console](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate) in the *AWS Billing and Cost Management User Guide*.

If you do not specify this parameter, the value defaults to ALLOW, and IAM users and roles with the required permissions can access billing information for the new account.




# Returns

`CreateAccountResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ConstraintViolationException`, `InvalidInputException`, `FinalizingOrganizationException`, `ServiceException` or `TooManyRequestsException`.

# Example: To create a new account that is automatically part of the organization

The owner of an organization creates a member account in the organization. The following example shows that when the organization owner creates the member account, the account is preconfigured with the name "Production Account" and an owner email address of susan@example.com.  An IAM role is automatically created using the default name because the roleName parameter is not used. AWS Organizations sends Susan a "Welcome to AWS" email:



Input:
```
[
    "AccountName" => "Production Account",
    "Email" => "susan@example.com"
]
```

Output:
```
Dict(
    "CreateAccountStatus" => Dict(
        "Id" => "car-examplecreateaccountrequestid111",
        "State" => "IN_PROGRESS"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateAccount)
"""
@inline create_account(aws::AWSConfig=default_aws_config(); args...) = create_account(aws, args)

@inline create_account(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "CreateAccount", args)

@inline create_account(args) = create_account(default_aws_config(), args)


"""
    using AWSSDK.Organizations.create_organization
    create_organization([::AWSConfig], arguments::Dict)
    create_organization([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "CreateOrganization", arguments::Dict)
    organizations([::AWSConfig], "CreateOrganization", <keyword arguments>)

# CreateOrganization Operation

Creates an AWS organization. The account whose user is calling the CreateOrganization operation automatically becomes the [master account](http://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_getting-started_concepts.html#account) of the new organization.

This operation must be called using credentials from the account that is to become the new organization's master account. The principal must also have the relevant IAM permissions.

By default (or if you set the `FeatureSet` parameter to `ALL`), the new organization is created with all features enabled and service control policies automatically enabled in the root. If you instead choose to create the organization supporting only the consolidated billing features by setting the `FeatureSet` parameter to `CONSOLIDATED_BILLING"`, then no policy types are enabled by default and you cannot use organization policies.

# Arguments

## `FeatureSet = "ALL" or "CONSOLIDATED_BILLING"`
Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.

*   *CONSOLIDATED_BILLING*: All member accounts have their bills consolidated to and paid by the master account. For more information, see [Consolidated Billing](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only) in the *AWS Organizations User Guide*.

*   *ALL*: In addition to all the features supported by the consolidated billing feature set, the master account can also apply any type of policy to any member account in the organization. For more information, see [All features](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all) in the *AWS Organizations User Guide*.




# Returns

`CreateOrganizationResponse`

# Exceptions

`AccessDeniedException`, `AlreadyInOrganizationException`, `ConcurrentModificationException`, `ConstraintViolationException`, `InvalidInputException`, `ServiceException`, `TooManyRequestsException` or `AccessDeniedForDependencyException`.

# Example: To create a new organization with all features enabled

Bill wants to create an organization using credentials from account 111111111111. The following example shows that the account becomes the master account in the new organization. Because he does not specify a feature set, the new organization defaults to all features enabled and service control policies enabled on the root:



Input:
```
[

]
```

Output:
```
Dict(
    "Organization" => Dict(
        "Arn" => "arn:aws:organizations::111111111111:organization/o-exampleorgid",
        "AvailablePolicyTypes" => [
            Dict(
                "Status" => "ENABLED",
                "Type" => "SERVICE_CONTROL_POLICY"
            )
        ],
        "FeatureSet" => "ALL",
        "Id" => "o-exampleorgid",
        "MasterAccountArn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111",
        "MasterAccountEmail" => "bill@example.com",
        "MasterAccountId" => "111111111111"
    )
)
```

# Example: To create a new organization with consolidated billing features only

In the following example, Bill creates an organization using credentials from account 111111111111, and configures the organization to support only the consolidated billing feature set:



Input:
```
[
    "FeatureSet" => "CONSOLIDATED_BILLING"
]
```

Output:
```
Dict(
    "Organization" => Dict(
        "Arn" => "arn:aws:organizations::111111111111:organization/o-exampleorgid",
        "AvailablePolicyTypes" => [

        ],
        "FeatureSet" => "CONSOLIDATED_BILLING",
        "Id" => "o-exampleorgid",
        "MasterAccountArn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111",
        "MasterAccountEmail" => "bill@example.com",
        "MasterAccountId" => "111111111111"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateOrganization)
"""
@inline create_organization(aws::AWSConfig=default_aws_config(); args...) = create_organization(aws, args)

@inline create_organization(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "CreateOrganization", args)

@inline create_organization(args) = create_organization(default_aws_config(), args)


"""
    using AWSSDK.Organizations.create_organizational_unit
    create_organizational_unit([::AWSConfig], arguments::Dict)
    create_organizational_unit([::AWSConfig]; ParentId=, Name=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "CreateOrganizationalUnit", arguments::Dict)
    organizations([::AWSConfig], "CreateOrganizationalUnit", ParentId=, Name=)

# CreateOrganizationalUnit Operation

Creates an organizational unit (OU) within a root or parent OU. An OU is a container for accounts that enables you to organize your accounts to apply policies according to your business requirements. The number of levels deep that you can nest OUs is dependent upon the policy types enabled for that root. For service control policies, the limit is five.

For more information about OUs, see [Managing Organizational Units](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html) in the *AWS Organizations User Guide*.

This operation can be called only from the organization's master account.

# Arguments

## `ParentId = ::String` -- *Required*
The unique identifier (ID) of the parent root or OU in which you want to create the new OU.

The [regex pattern](http://wikipedia.org/wiki/regex) for a parent ID string requires one of the following:

*   Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.

*   Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.


## `Name = ::String` -- *Required*
The friendly name to assign to the new OU.




# Returns

`CreateOrganizationalUnitResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ConstraintViolationException`, `DuplicateOrganizationalUnitException`, `InvalidInputException`, `ParentNotFoundException`, `ServiceException` or `TooManyRequestsException`.

# Example: To create a new organization unit

The following example shows how to create an OU that is named AccountingOU. The new OU is directly under the root.:



Input:
```
[
    "Name" => "AccountingOU",
    "ParentId" => "r-examplerootid111"
]
```

Output:
```
Dict(
    "OrganizationalUnit" => Dict(
        "Arn" => "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111",
        "Id" => "ou-examplerootid111-exampleouid111",
        "Name" => "AccountingOU"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateOrganizationalUnit)
"""
@inline create_organizational_unit(aws::AWSConfig=default_aws_config(); args...) = create_organizational_unit(aws, args)

@inline create_organizational_unit(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "CreateOrganizationalUnit", args)

@inline create_organizational_unit(args) = create_organizational_unit(default_aws_config(), args)


"""
    using AWSSDK.Organizations.create_policy
    create_policy([::AWSConfig], arguments::Dict)
    create_policy([::AWSConfig]; Content=, Description=, Name=, Type=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "CreatePolicy", arguments::Dict)
    organizations([::AWSConfig], "CreatePolicy", Content=, Description=, Name=, Type=)

# CreatePolicy Operation

Creates a policy of a specified type that you can attach to a root, an organizational unit (OU), or an individual AWS account.

For more information about policies and their use, see [Managing Organization Policies](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html).

This operation can be called only from the organization's master account.

# Arguments

## `Content = ::String` -- *Required*
The policy content to add to the new policy. For example, if you create a [service control policy](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html) (SCP), this string must be JSON text that specifies the permissions that admins in attached accounts can delegate to their users, groups, and roles. For more information about the SCP syntax, see [Service Control Policy Syntax](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html) in the *AWS Organizations User Guide*.


## `Description = ::String` -- *Required*
An optional description to assign to the policy.


## `Name = ::String` -- *Required*
The friendly name to assign to the policy.

The [regex pattern](http://wikipedia.org/wiki/regex) that is used to validate this parameter is a string of any of the characters in the ASCII character range.


## `Type = "SERVICE_CONTROL_POLICY"` -- *Required*
The type of policy to create.

**Note**
> In the current release, the only type of policy that you can create is a service control policy (SCP).




# Returns

`CreatePolicyResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ConstraintViolationException`, `DuplicatePolicyException`, `InvalidInputException`, `MalformedPolicyDocumentException`, `PolicyTypeNotAvailableForOrganizationException`, `ServiceException` or `TooManyRequestsException`.

# Example: To create a service control policy

The following example shows how to create a service control policy (SCP) that is named AllowAllS3Actions. The JSON string in the content parameter specifies the content in the policy. The parameter string is escaped with backslashes to ensure that the embedded double quotes in the JSON policy are treated as literals in the parameter, which itself is surrounded by double quotes:



Input:
```
[
    "Content" => "{\"Version\":\"2012-10-17\",\"Statement\":{\"Effect\":\"Allow\",\"Action\":\"s3:*\"}}",
    "Description" => "Enables admins of attached accounts to delegate all S3 permissions",
    "Name" => "AllowAllS3Actions",
    "Type" => "SERVICE_CONTROL_POLICY"
]
```

Output:
```
Dict(
    "Policy" => Dict(
        "Content" => "{"Version":"2012-10-17","Statement":{"Effect":"Allow","Action":"s3:*"}}",
        "PolicySummary" => Dict(
            "Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111",
            "Description" => "Allows delegation of all S3 actions",
            "Name" => "AllowAllS3Actions",
            "Type" => "SERVICE_CONTROL_POLICY"
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreatePolicy)
"""
@inline create_policy(aws::AWSConfig=default_aws_config(); args...) = create_policy(aws, args)

@inline create_policy(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "CreatePolicy", args)

@inline create_policy(args) = create_policy(default_aws_config(), args)


"""
    using AWSSDK.Organizations.decline_handshake
    decline_handshake([::AWSConfig], arguments::Dict)
    decline_handshake([::AWSConfig]; HandshakeId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DeclineHandshake", arguments::Dict)
    organizations([::AWSConfig], "DeclineHandshake", HandshakeId=)

# DeclineHandshake Operation

Declines a handshake request. This sets the handshake state to `DECLINED` and effectively deactivates the request.

This operation can be called only from the account that received the handshake. The originator of the handshake can use [CancelHandshake](@ref) instead. The originator can't reactivate a declined request, but can re-initiate the process with a new handshake request.

After you decline a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.

# Arguments

## `HandshakeId = ::String` -- *Required*
The unique identifier (ID) of the handshake that you want to decline. You can get the ID from the [ListHandshakesForAccount](@ref) operation.

The [regex pattern](http://wikipedia.org/wiki/regex) for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.




# Returns

`DeclineHandshakeResponse`

# Exceptions

`AccessDeniedException`, `ConcurrentModificationException`, `HandshakeNotFoundException`, `InvalidHandshakeTransitionException`, `HandshakeAlreadyInStateException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To decline a handshake sent from the master account

The following example shows Susan declining an invitation to join Bill's organization. The DeclineHandshake operation returns a handshake object, showing that the state is now DECLINED:

Input:
```
[
    "HandshakeId" => "h-examplehandshakeid111"
]
```

Output:
```
Dict(
    "Handshake" => Dict(
        "Action" => "INVITE",
        "Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111",
        "ExpirationTimestamp" => "2016-12-15T19:27:58Z",
        "Id" => "h-examplehandshakeid111",
        "Parties" => [
            Dict(
                "Id" => "222222222222",
                "Type" => "ACCOUNT"
            ),
            Dict(
                "Id" => "o-exampleorgid",
                "Type" => "ORGANIZATION"
            )
        ],
        "RequestedTimestamp" => "2016-11-30T19:27:58Z",
        "Resources" => [
            Dict(
                "Resources" => [
                    Dict(
                        "Type" => "MASTER_EMAIL",
                        "Value" => "bill@example.com"
                    ),
                    Dict(
                        "Type" => "MASTER_NAME",
                        "Value" => "Master Account"
                    )
                ],
                "Type" => "ORGANIZATION",
                "Value" => "o-exampleorgid"
            ),
            Dict(
                "Type" => "ACCOUNT",
                "Value" => "222222222222"
            ),
            Dict(
                "Type" => "NOTES",
                "Value" => "This is an invitation to Susan's account to join the Bill's organization."
            )
        ],
        "State" => "DECLINED"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeclineHandshake)
"""
@inline decline_handshake(aws::AWSConfig=default_aws_config(); args...) = decline_handshake(aws, args)

@inline decline_handshake(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DeclineHandshake", args)

@inline decline_handshake(args) = decline_handshake(default_aws_config(), args)


"""
    using AWSSDK.Organizations.delete_organization
    delete_organization([::AWSConfig])
    

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DeleteOrganization",)
    

# DeleteOrganization Operation

Deletes the organization. You can delete an organization only by using credentials from the master account. The organization must be empty of member accounts, organizational units (OUs), and policies.

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `InvalidInputException`, `OrganizationNotEmptyException`, `ServiceException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeleteOrganization)
"""
@inline delete_organization(aws::AWSConfig=default_aws_config(); args...) = delete_organization(aws, args)

@inline delete_organization(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DeleteOrganization", args)

@inline delete_organization(args) = delete_organization(default_aws_config(), args)


"""
    using AWSSDK.Organizations.delete_organizational_unit
    delete_organizational_unit([::AWSConfig], arguments::Dict)
    delete_organizational_unit([::AWSConfig]; OrganizationalUnitId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DeleteOrganizationalUnit", arguments::Dict)
    organizations([::AWSConfig], "DeleteOrganizationalUnit", OrganizationalUnitId=)

# DeleteOrganizationalUnit Operation

Deletes an organizational unit (OU) from a root or another OU. You must first remove all accounts and child OUs from the OU that you want to delete.

This operation can be called only from the organization's master account.

# Arguments

## `OrganizationalUnitId = ::String` -- *Required*
The unique identifier (ID) of the organizational unit that you want to delete. You can get the ID from the [ListOrganizationalUnitsForParent](@ref) operation.

The [regex pattern](http://wikipedia.org/wiki/regex) for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.




# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `InvalidInputException`, `OrganizationalUnitNotEmptyException`, `OrganizationalUnitNotFoundException`, `ServiceException` or `TooManyRequestsException`.

# Example: To delete an organization unit

The following example shows how to delete an OU. The example assumes that you previously removed all accounts and other OUs from the OU:



Input:
```
[
    "OrganizationalUnitId" => "ou-examplerootid111-exampleouid111"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeleteOrganizationalUnit)
"""
@inline delete_organizational_unit(aws::AWSConfig=default_aws_config(); args...) = delete_organizational_unit(aws, args)

@inline delete_organizational_unit(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DeleteOrganizationalUnit", args)

@inline delete_organizational_unit(args) = delete_organizational_unit(default_aws_config(), args)


"""
    using AWSSDK.Organizations.delete_policy
    delete_policy([::AWSConfig], arguments::Dict)
    delete_policy([::AWSConfig]; PolicyId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DeletePolicy", arguments::Dict)
    organizations([::AWSConfig], "DeletePolicy", PolicyId=)

# DeletePolicy Operation

Deletes the specified policy from your organization. Before you perform this operation, you must first detach the policy from all organizational units (OUs), roots, and accounts.

This operation can be called only from the organization's master account.

# Arguments

## `PolicyId = ::String` -- *Required*
The unique identifier (ID) of the policy that you want to delete. You can get the ID from the [ListPolicies](@ref) or [ListPoliciesForTarget](@ref) operations.

The [regex pattern](http://wikipedia.org/wiki/regex) for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.




# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `InvalidInputException`, `PolicyInUseException`, `PolicyNotFoundException`, `ServiceException` or `TooManyRequestsException`.

# Example: To delete a policy

The following example shows how to delete a policy from an organization. The example assumes that you previously detached the policy from all entities:



Input:
```
[
    "PolicyId" => "p-examplepolicyid111"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeletePolicy)
"""
@inline delete_policy(aws::AWSConfig=default_aws_config(); args...) = delete_policy(aws, args)

@inline delete_policy(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DeletePolicy", args)

@inline delete_policy(args) = delete_policy(default_aws_config(), args)


"""
    using AWSSDK.Organizations.describe_account
    describe_account([::AWSConfig], arguments::Dict)
    describe_account([::AWSConfig]; AccountId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DescribeAccount", arguments::Dict)
    organizations([::AWSConfig], "DescribeAccount", AccountId=)

# DescribeAccount Operation

Retrieves Organizations-related information about the specified account.

This operation can be called only from the organization's master account.

# Arguments

## `AccountId = ::String` -- *Required*
The unique identifier (ID) of the AWS account that you want information about. You can get the ID from the [ListAccounts](@ref) or [ListAccountsForParent](@ref) operations.

The [regex pattern](http://wikipedia.org/wiki/regex) for an account ID string requires exactly 12 digits.




# Returns

`DescribeAccountResponse`

# Exceptions

`AccessDeniedException`, `AccountNotFoundException`, `AWSOrganizationsNotInUseException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To get the details about an account

The following example shows a user in the master account (111111111111) asking for details about account 555555555555:

Input:
```
[
    "AccountId" => "555555555555"
]
```

Output:
```
Dict(
    "Account" => Dict(
        "Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/555555555555",
        "Email" => "anika@example.com",
        "Id" => "555555555555",
        "Name" => "Beta Account"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeAccount)
"""
@inline describe_account(aws::AWSConfig=default_aws_config(); args...) = describe_account(aws, args)

@inline describe_account(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DescribeAccount", args)

@inline describe_account(args) = describe_account(default_aws_config(), args)


"""
    using AWSSDK.Organizations.describe_create_account_status
    describe_create_account_status([::AWSConfig], arguments::Dict)
    describe_create_account_status([::AWSConfig]; CreateAccountRequestId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DescribeCreateAccountStatus", arguments::Dict)
    organizations([::AWSConfig], "DescribeCreateAccountStatus", CreateAccountRequestId=)

# DescribeCreateAccountStatus Operation

Retrieves the current status of an asynchronous request to create an account.

This operation can be called only from the organization's master account.

# Arguments

## `CreateAccountRequestId = ::String` -- *Required*
Specifies the `operationId` that uniquely identifies the request. You can get the ID from the response to an earlier [CreateAccount](@ref) request, or from the [ListCreateAccountStatus](@ref) operation.

The [regex pattern](http://wikipedia.org/wiki/regex) for an create account request ID string requires "car-" followed by from 8 to 32 lower-case letters or digits.




# Returns

`DescribeCreateAccountStatusResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `CreateAccountStatusNotFoundException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To get information about a request to create an account

The following example shows how to request the status about a previous request to create an account in an organization. This operation can be called only by a principal from the organization's master account. In the example, the specified "createAccountRequestId" comes from the response of the original call to "CreateAccount":

Input:
```
[
    "CreateAccountRequestId" => "car-exampleaccountcreationrequestid"
]
```

Output:
```
Dict(
    "CreateAccountStatus" => Dict(
        "AccountId" => "333333333333",
        "Id" => "car-exampleaccountcreationrequestid",
        "State" => "SUCCEEDED"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeCreateAccountStatus)
"""
@inline describe_create_account_status(aws::AWSConfig=default_aws_config(); args...) = describe_create_account_status(aws, args)

@inline describe_create_account_status(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DescribeCreateAccountStatus", args)

@inline describe_create_account_status(args) = describe_create_account_status(default_aws_config(), args)


"""
    using AWSSDK.Organizations.describe_handshake
    describe_handshake([::AWSConfig], arguments::Dict)
    describe_handshake([::AWSConfig]; HandshakeId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DescribeHandshake", arguments::Dict)
    organizations([::AWSConfig], "DescribeHandshake", HandshakeId=)

# DescribeHandshake Operation

Retrieves information about a previously requested handshake. The handshake ID comes from the response to the original [InviteAccountToOrganization](@ref) operation that generated the handshake.

You can access handshakes that are ACCEPTED, DECLINED, or CANCELED for only 30 days after they change to that state. They are then deleted and no longer accessible.

This operation can be called from any account in the organization.

# Arguments

## `HandshakeId = ::String` -- *Required*
The unique identifier (ID) of the handshake that you want information about. You can get the ID from the original call to [InviteAccountToOrganization](@ref), or from a call to [ListHandshakesForAccount](@ref) or [ListHandshakesForOrganization](@ref).

The [regex pattern](http://wikipedia.org/wiki/regex) for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.




# Returns

`DescribeHandshakeResponse`

# Exceptions

`AccessDeniedException`, `ConcurrentModificationException`, `HandshakeNotFoundException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To get information about a handshake

The following example shows you how to request details about a handshake. The handshake ID comes either from the original call to "InviteAccountToOrganization", or from a call to "ListHandshakesForAccount" or "ListHandshakesForOrganization":

Input:
```
[
    "HandshakeId" => "h-examplehandshakeid111"
]
```

Output:
```
Dict(
    "Handshake" => Dict(
        "Action" => "INVITE",
        "Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111",
        "ExpirationTimestamp" => "2016-11-30T17:24:58.046Z",
        "Id" => "h-examplehandshakeid111",
        "Parties" => [
            Dict(
                "Id" => "o-exampleorgid",
                "Type" => "ORGANIZATION"
            ),
            Dict(
                "Id" => "333333333333",
                "Type" => "ACCOUNT"
            )
        ],
        "RequestedTimestamp" => "2016-11-30T17:24:58.046Z",
        "Resources" => [
            Dict(
                "Resources" => [
                    Dict(
                        "Type" => "MASTER_EMAIL",
                        "Value" => "bill@example.com"
                    ),
                    Dict(
                        "Type" => "MASTER_NAME",
                        "Value" => "Master Account"
                    )
                ],
                "Type" => "ORGANIZATION",
                "Value" => "o-exampleorgid"
            ),
            Dict(
                "Type" => "ACCOUNT",
                "Value" => "333333333333"
            )
        ],
        "State" => "OPEN"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeHandshake)
"""
@inline describe_handshake(aws::AWSConfig=default_aws_config(); args...) = describe_handshake(aws, args)

@inline describe_handshake(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DescribeHandshake", args)

@inline describe_handshake(args) = describe_handshake(default_aws_config(), args)


"""
    using AWSSDK.Organizations.describe_organization
    describe_organization([::AWSConfig])
    

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DescribeOrganization",)
    

# DescribeOrganization Operation

Retrieves information about the organization that the user's account belongs to.

This operation can be called from any account in the organization.

**Note**
> Even if a policy type is shown as available in the organization, it can be disabled separately at the root level with [DisablePolicyType](@ref). Use [ListRoots](@ref) to see the status of policy types for a specified root.

# Returns

`DescribeOrganizationResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ServiceException` or `TooManyRequestsException`.

# Example: To get information about an organization

The following example shows how to request information about the current user's organization:/n/n

Output:
```
Dict(
    "Organization" => Dict(
        "Arn" => "arn:aws:organizations::111111111111:organization/o-exampleorgid",
        "AvailablePolicyTypes" => [
            Dict(
                "Status" => "ENABLED",
                "Type" => "SERVICE_CONTROL_POLICY"
            )
        ],
        "FeatureSet" => "ALL",
        "Id" => "o-exampleorgid",
        "MasterAccountArn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111",
        "MasterAccountEmail" => "bill@example.com"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeOrganization)
"""
@inline describe_organization(aws::AWSConfig=default_aws_config(); args...) = describe_organization(aws, args)

@inline describe_organization(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DescribeOrganization", args)

@inline describe_organization(args) = describe_organization(default_aws_config(), args)


"""
    using AWSSDK.Organizations.describe_organizational_unit
    describe_organizational_unit([::AWSConfig], arguments::Dict)
    describe_organizational_unit([::AWSConfig]; OrganizationalUnitId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DescribeOrganizationalUnit", arguments::Dict)
    organizations([::AWSConfig], "DescribeOrganizationalUnit", OrganizationalUnitId=)

# DescribeOrganizationalUnit Operation

Retrieves information about an organizational unit (OU).

This operation can be called only from the organization's master account.

# Arguments

## `OrganizationalUnitId = ::String` -- *Required*
The unique identifier (ID) of the organizational unit that you want details about. You can get the ID from the [ListOrganizationalUnitsForParent](@ref) operation.

The [regex pattern](http://wikipedia.org/wiki/regex) for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.




# Returns

`DescribeOrganizationalUnitResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `InvalidInputException`, `OrganizationalUnitNotFoundException`, `ServiceException` or `TooManyRequestsException`.

# Example: To get information about an organizational unit

The following example shows how to request details about an OU:/n/n

Input:
```
[
    "OrganizationalUnitId" => "ou-examplerootid111-exampleouid111"
]
```

Output:
```
Dict(
    "OrganizationalUnit" => Dict(
        "Arn" => "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111",
        "Id" => "ou-examplerootid111-exampleouid111",
        "Name" => "Accounting Group"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeOrganizationalUnit)
"""
@inline describe_organizational_unit(aws::AWSConfig=default_aws_config(); args...) = describe_organizational_unit(aws, args)

@inline describe_organizational_unit(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DescribeOrganizationalUnit", args)

@inline describe_organizational_unit(args) = describe_organizational_unit(default_aws_config(), args)


"""
    using AWSSDK.Organizations.describe_policy
    describe_policy([::AWSConfig], arguments::Dict)
    describe_policy([::AWSConfig]; PolicyId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DescribePolicy", arguments::Dict)
    organizations([::AWSConfig], "DescribePolicy", PolicyId=)

# DescribePolicy Operation

Retrieves information about a policy.

This operation can be called only from the organization's master account.

# Arguments

## `PolicyId = ::String` -- *Required*
The unique identifier (ID) of the policy that you want details about. You can get the ID from the [ListPolicies](@ref) or [ListPoliciesForTarget](@ref) operations.

The [regex pattern](http://wikipedia.org/wiki/regex) for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.




# Returns

`DescribePolicyResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `InvalidInputException`, `PolicyNotFoundException`, `ServiceException` or `TooManyRequestsException`.

# Example: To get information about a policy

The following example shows how to request information about a policy:/n/n

Input:
```
[
    "PolicyId" => "p-examplepolicyid111"
]
```

Output:
```
Dict(
    "Policy" => Dict(
        "Content" => "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": \"*\",\n      \"Resource\": \"*\"\n    }\n  ]\n}",
        "PolicySummary" => Dict(
            "Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111",
            "AwsManaged" => false,
            "Description" => "Enables admins to delegate S3 permissions",
            "Id" => "p-examplepolicyid111",
            "Name" => "AllowAllS3Actions",
            "Type" => "SERVICE_CONTROL_POLICY"
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribePolicy)
"""
@inline describe_policy(aws::AWSConfig=default_aws_config(); args...) = describe_policy(aws, args)

@inline describe_policy(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DescribePolicy", args)

@inline describe_policy(args) = describe_policy(default_aws_config(), args)


"""
    using AWSSDK.Organizations.detach_policy
    detach_policy([::AWSConfig], arguments::Dict)
    detach_policy([::AWSConfig]; PolicyId=, TargetId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DetachPolicy", arguments::Dict)
    organizations([::AWSConfig], "DetachPolicy", PolicyId=, TargetId=)

# DetachPolicy Operation

Detaches a policy from a target root, organizational unit (OU), or account. If the policy being detached is a service control policy (SCP), the changes to permissions for IAM users and roles in affected accounts are immediate.

**Note:** Every root, OU, and account must have at least one SCP attached. If you want to replace the default `FullAWSAccess` policy with one that limits the permissions that can be delegated, then you must attach the replacement policy before you can remove the default one. This is the authorization strategy of [whitelisting](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_about-scps.html#orgs_policies_whitelist). If you instead attach a second SCP and leave the `FullAWSAccess` SCP still attached, and specify `"Effect": "Deny"` in the second SCP to override the `"Effect": "Allow"` in the `FullAWSAccess` policy (or any other attached SCP), then you are using the authorization strategy of [blacklisting](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_about-scps.html#orgs_policies_blacklist).

This operation can be called only from the organization's master account.

# Arguments

## `PolicyId = ::String` -- *Required*
The unique identifier (ID) of the policy you want to detach. You can get the ID from the [ListPolicies](@ref) or [ListPoliciesForTarget](@ref) operations.

The [regex pattern](http://wikipedia.org/wiki/regex) for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.


## `TargetId = ::String` -- *Required*
The unique identifier (ID) of the root, OU, or account from which you want to detach the policy. You can get the ID from the [ListRoots](@ref), [ListOrganizationalUnitsForParent](@ref), or [ListAccounts](@ref) operations.

The [regex pattern](http://wikipedia.org/wiki/regex) for a target ID string requires one of the following:

*   Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.

*   Account: a string that consists of exactly 12 digits.

*   Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.




# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ConstraintViolationException`, `InvalidInputException`, `PolicyNotAttachedException`, `PolicyNotFoundException`, `ServiceException`, `TargetNotFoundException` or `TooManyRequestsException`.

# Example: To detach a policy from a root, OU, or account

The following example shows how to detach a policy from an OU:/n/n

Input:
```
[
    "PolicyId" => "p-examplepolicyid111",
    "TargetId" => "ou-examplerootid111-exampleouid111"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DetachPolicy)
"""
@inline detach_policy(aws::AWSConfig=default_aws_config(); args...) = detach_policy(aws, args)

@inline detach_policy(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DetachPolicy", args)

@inline detach_policy(args) = detach_policy(default_aws_config(), args)


"""
    using AWSSDK.Organizations.disable_awsservice_access
    disable_awsservice_access([::AWSConfig], arguments::Dict)
    disable_awsservice_access([::AWSConfig]; ServicePrincipal=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DisableAWSServiceAccess", arguments::Dict)
    organizations([::AWSConfig], "DisableAWSServiceAccess", ServicePrincipal=)

# DisableAWSServiceAccess Operation

Disables the integration of an AWS service (the service that is specified by `ServicePrincipal`) with AWS Organizations. When you disable integration, the specified service no longer can create a [service-linked role](http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html) in *new* accounts in your organization. This means the service can't perform operations on your behalf on any new accounts in your organization. The service can still perform operations in older accounts until the service completes its clean-up from AWS Organizations.

**Important**
> 

We recommend that you disable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the other service is aware that it can clean up any resources that are required only for the integration. How the service cleans up its resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.

After you perform the `DisableAWSServiceAccess` operation, the specified service can no longer perform operations in your organization's accounts unless the operations are explicitly permitted by the IAM policies that are attached to your roles.

For more information about integrating other services with AWS Organizations, including the list of services that work with Organizations, see [Integrating AWS Organizations with Other AWS Services](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html) in the *AWS Organizations User Guide*.

This operation can be called only from the organization's master account.

# Arguments

## `ServicePrincipal = ::String` -- *Required*
The service principal name of the AWS service for which you want to disable integration with your organization. This is typically in the form of a URL, such as `*service-abbreviation*.amazonaws.com`.




# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ConstraintViolationException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DisableAWSServiceAccess)
"""
@inline disable_awsservice_access(aws::AWSConfig=default_aws_config(); args...) = disable_awsservice_access(aws, args)

@inline disable_awsservice_access(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DisableAWSServiceAccess", args)

@inline disable_awsservice_access(args) = disable_awsservice_access(default_aws_config(), args)


"""
    using AWSSDK.Organizations.disable_policy_type
    disable_policy_type([::AWSConfig], arguments::Dict)
    disable_policy_type([::AWSConfig]; RootId=, PolicyType=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "DisablePolicyType", arguments::Dict)
    organizations([::AWSConfig], "DisablePolicyType", RootId=, PolicyType=)

# DisablePolicyType Operation

Disables an organizational control policy type in a root. A policy of a certain type can be attached to entities in a root only if that type is enabled in the root. After you perform this operation, you no longer can attach policies of the specified type to that root or to any organizational unit (OU) or account in that root. You can undo this by using the [EnablePolicyType](@ref) operation.

This operation can be called only from the organization's master account.

**Note**
> If you disable a policy type for a root, it still shows as enabled for the organization if all features are enabled in that organization. Use [ListRoots](@ref) to see the status of policy types for a specified root. Use [DescribeOrganization](@ref) to see the status of policy types in the organization.

# Arguments

## `RootId = ::String` -- *Required*
The unique identifier (ID) of the root in which you want to disable a policy type. You can get the ID from the [ListRoots](@ref) operation.

The [regex pattern](http://wikipedia.org/wiki/regex) for a root ID string requires "r-" followed by from 4 to 32 lower-case letters or digits.


## `PolicyType = "SERVICE_CONTROL_POLICY"` -- *Required*
The policy type that you want to disable in this root.




# Returns

`DisablePolicyTypeResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ConstraintViolationException`, `InvalidInputException`, `PolicyTypeNotEnabledException`, `RootNotFoundException`, `ServiceException` or `TooManyRequestsException`.

# Example: To disable a policy type in a root

The following example shows how to disable the service control policy (SCP) policy type in a root. The response shows that the PolicyTypes response element no longer includes SERVICE_CONTROL_POLICY:/n/n

Input:
```
[
    "PolicyType" => "SERVICE_CONTROL_POLICY",
    "RootId" => "r-examplerootid111"
]
```

Output:
```
Dict(
    "Root" => Dict(
        "Arn" => "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111",
        "Id" => "r-examplerootid111",
        "Name" => "Root",
        "PolicyTypes" => [

        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DisablePolicyType)
"""
@inline disable_policy_type(aws::AWSConfig=default_aws_config(); args...) = disable_policy_type(aws, args)

@inline disable_policy_type(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "DisablePolicyType", args)

@inline disable_policy_type(args) = disable_policy_type(default_aws_config(), args)


"""
    using AWSSDK.Organizations.enable_awsservice_access
    enable_awsservice_access([::AWSConfig], arguments::Dict)
    enable_awsservice_access([::AWSConfig]; ServicePrincipal=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "EnableAWSServiceAccess", arguments::Dict)
    organizations([::AWSConfig], "EnableAWSServiceAccess", ServicePrincipal=)

# EnableAWSServiceAccess Operation

Enables the integration of an AWS service (the service that is specified by `ServicePrincipal`) with AWS Organizations. When you enable integration, you allow the specified service to create a [service-linked role](http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html) in all the accounts in your organization. This allows the service to perform operations on your behalf in your organization and its accounts.

**Important**
> We recommend that you enable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the service is aware that it can create the resources that are required for the integration. How the service creates those resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.

For more information about enabling services to integrate with AWS Organizations, see [Integrating AWS Organizations with Other AWS Services](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html) in the *AWS Organizations User Guide*.

This operation can be called only from the organization's master account and only if the organization has [enabled all features](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html).

# Arguments

## `ServicePrincipal = ::String` -- *Required*
The service principal name of the AWS service for which you want to enable integration with your organization. This is typically in the form of a URL, such as `*service-abbreviation*.amazonaws.com`.




# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ConstraintViolationException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnableAWSServiceAccess)
"""
@inline enable_awsservice_access(aws::AWSConfig=default_aws_config(); args...) = enable_awsservice_access(aws, args)

@inline enable_awsservice_access(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "EnableAWSServiceAccess", args)

@inline enable_awsservice_access(args) = enable_awsservice_access(default_aws_config(), args)


"""
    using AWSSDK.Organizations.enable_all_features
    enable_all_features([::AWSConfig], arguments::Dict)
    enable_all_features([::AWSConfig]; )

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "EnableAllFeatures", arguments::Dict)
    organizations([::AWSConfig], "EnableAllFeatures", )

# EnableAllFeatures Operation

Enables all features in an organization. This enables the use of organization policies that can restrict the services and actions that can be called in each account. Until you enable all features, you have access only to consolidated billing, and you can't use any of the advanced account administration features that AWS Organizations supports. For more information, see [Enabling All Features in Your Organization](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html) in the *AWS Organizations User Guide*.

**Important**
> This operation is required only for organizations that were created explicitly with only the consolidated billing features enabled. Calling this operation sends a handshake to every invited account in the organization. The feature set change can be finalized and the additional features enabled only after all administrators in the invited accounts approve the change by accepting the handshake.

After you enable all features, you can separately enable or disable individual policy types in a root using [EnablePolicyType](@ref) and [DisablePolicyType](@ref). To see the status of policy types in a root, use [ListRoots](@ref).

After all invited member accounts accept the handshake, you finalize the feature set change by accepting the handshake that contains `"Action": "ENABLE_ALL_FEATURES"`. This completes the change.

After you enable all features in your organization, the master account in the organization can apply policies on all member accounts. These policies can restrict what users and even administrators in those accounts can do. The master account can apply policies that prevent accounts from leaving the organization. Ensure that your account administrators are aware of this.

This operation can be called only from the organization's master account.

# Arguments



# Returns

`EnableAllFeaturesResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `HandshakeConstraintViolationException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To enable all features in an organization

This example shows the administrator asking all the invited accounts in the organization to approve enabling all features in the organization. AWS Organizations sends an email to the address that is registered with every invited member account asking the owner to approve the change by accepting the handshake that is sent. After all invited member accounts accept the handshake, the organization administrator can finalize the change to enable all features, and those with appropriate permissions can create policies and apply them to roots, OUs, and accounts:/n/n

Input:
```
[

]
```

Output:
```
Dict(
    "Handshake" => Dict(
        "Action" => "ENABLE_ALL_FEATURES",
        "Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/enable_all_features/h-examplehandshakeid111",
        "ExpirationTimestamp" => "2017-02-28T09:35:40.05Z",
        "Id" => "h-examplehandshakeid111",
        "Parties" => [
            Dict(
                "Id" => "o-exampleorgid",
                "Type" => "ORGANIZATION"
            )
        ],
        "RequestedTimestamp" => "2017-02-13T09:35:40.05Z",
        "Resources" => [
            Dict(
                "Type" => "ORGANIZATION",
                "Value" => "o-exampleorgid"
            )
        ],
        "State" => "REQUESTED"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnableAllFeatures)
"""
@inline enable_all_features(aws::AWSConfig=default_aws_config(); args...) = enable_all_features(aws, args)

@inline enable_all_features(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "EnableAllFeatures", args)

@inline enable_all_features(args) = enable_all_features(default_aws_config(), args)


"""
    using AWSSDK.Organizations.enable_policy_type
    enable_policy_type([::AWSConfig], arguments::Dict)
    enable_policy_type([::AWSConfig]; RootId=, PolicyType=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "EnablePolicyType", arguments::Dict)
    organizations([::AWSConfig], "EnablePolicyType", RootId=, PolicyType=)

# EnablePolicyType Operation

Enables a policy type in a root. After you enable a policy type in a root, you can attach policies of that type to the root, any organizational unit (OU), or account in that root. You can undo this by using the [DisablePolicyType](@ref) operation.

This operation can be called only from the organization's master account.

You can enable a policy type in a root only if that policy type is available in the organization. Use [DescribeOrganization](@ref) to view the status of available policy types in the organization.

To view the status of policy type in a root, use [ListRoots](@ref).

# Arguments

## `RootId = ::String` -- *Required*
The unique identifier (ID) of the root in which you want to enable a policy type. You can get the ID from the [ListRoots](@ref) operation.

The [regex pattern](http://wikipedia.org/wiki/regex) for a root ID string requires "r-" followed by from 4 to 32 lower-case letters or digits.


## `PolicyType = "SERVICE_CONTROL_POLICY"` -- *Required*
The policy type that you want to enable.




# Returns

`EnablePolicyTypeResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ConstraintViolationException`, `InvalidInputException`, `PolicyTypeAlreadyEnabledException`, `RootNotFoundException`, `ServiceException`, `TooManyRequestsException` or `PolicyTypeNotAvailableForOrganizationException`.

# Example: To enable a policy type in a root

The following example shows how to enable the service control policy (SCP) policy type in a root. The output shows a root object with a PolicyTypes response element showing that SCPs are now enabled:/n/n

Input:
```
[
    "PolicyType" => "SERVICE_CONTROL_POLICY",
    "RootId" => "r-examplerootid111"
]
```

Output:
```
Dict(
    "Root" => Dict(
        "Arn" => "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111",
        "Id" => "r-examplerootid111",
        "Name" => "Root",
        "PolicyTypes" => [
            Dict(
                "Status" => "ENABLED",
                "Type" => "SERVICE_CONTROL_POLICY"
            )
        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnablePolicyType)
"""
@inline enable_policy_type(aws::AWSConfig=default_aws_config(); args...) = enable_policy_type(aws, args)

@inline enable_policy_type(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "EnablePolicyType", args)

@inline enable_policy_type(args) = enable_policy_type(default_aws_config(), args)


"""
    using AWSSDK.Organizations.invite_account_to_organization
    invite_account_to_organization([::AWSConfig], arguments::Dict)
    invite_account_to_organization([::AWSConfig]; Target=, <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "InviteAccountToOrganization", arguments::Dict)
    organizations([::AWSConfig], "InviteAccountToOrganization", Target=, <keyword arguments>)

# InviteAccountToOrganization Operation

Sends an invitation to another account to join your organization as a member account. Organizations sends email on your behalf to the email address that is associated with the other account's owner. The invitation is implemented as a [Handshake](@ref) whose details are in the response.

**Important**
> *   You can invite AWS accounts only from the same seller as the master account. For example, if your organization's master account was created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS seller in India, then you can only invite other AISPL accounts to your organization. You can't combine accounts from AISPL and AWS, or any other AWS seller. For more information, see [Consolidated Billing in India](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html).

*   If you receive an exception that indicates that you exceeded your account limits for the organization or that the operation failed because your organization is still initializing, wait one hour and then try again. If the error persists after an hour, then contact [AWS Customer Support](https://console.aws.amazon.com/support/home#/).

This operation can be called only from the organization's master account.

# Arguments

## `Target = [ ... ]` -- *Required*
The identifier (ID) of the AWS account that you want to invite to join your organization. This is a JSON object that contains the following elements:

`{ "Type": "ACCOUNT", "Id": "< ***account id number*** >" }`

If you use the AWS CLI, you can submit this as a single string, similar to the following example:

`--target Id=123456789012,Type=ACCOUNT`

If you specify `"Type": "ACCOUNT"`, then you must provide the AWS account ID number as the `Id`. If you specify `"Type": "EMAIL"`, then you must specify the email address that is associated with the account.

`--target Id=bill@example.com,Type=EMAIL`
```
 Target = [
        "Id" => <required> ::String,
        "Type" => <required> "ACCOUNT", "ORGANIZATION" or "EMAIL"
    ]
```

## `Notes = ::String`
Additional information that you want to include in the generated email to the recipient account owner.




# Returns

`InviteAccountToOrganizationResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `HandshakeConstraintViolationException`, `DuplicateHandshakeException`, `InvalidInputException`, `FinalizingOrganizationException`, `ServiceException` or `TooManyRequestsException`.

# Example: To invite an account to join an organization

The following example shows the admin of the master account owned by bill@example.com inviting the account owned by juan@example.com to join an organization.

Input:
```
[
    "Notes" => "This is a request for Juan's account to join Bill's organization",
    "Target" => [
        "Id" => "juan@example.com",
        "Type" => "EMAIL"
    ]
]
```

Output:
```
Dict(
    "Handshake" => Dict(
        "Action" => "INVITE",
        "Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111",
        "ExpirationTimestamp" => "2017-02-16T09:36:05.02Z",
        "Id" => "h-examplehandshakeid111",
        "Parties" => [
            Dict(
                "Id" => "o-exampleorgid",
                "Type" => "ORGANIZATION"
            ),
            Dict(
                "Id" => "juan@example.com",
                "Type" => "EMAIL"
            )
        ],
        "RequestedTimestamp" => "2017-02-01T09:36:05.02Z",
        "Resources" => [
            Dict(
                "Resources" => [
                    Dict(
                        "Type" => "MASTER_EMAIL",
                        "Value" => "bill@amazon.com"
                    ),
                    Dict(
                        "Type" => "MASTER_NAME",
                        "Value" => "Org Master Account"
                    ),
                    Dict(
                        "Type" => "ORGANIZATION_FEATURE_SET",
                        "Value" => "FULL"
                    )
                ],
                "Type" => "ORGANIZATION",
                "Value" => "o-exampleorgid"
            ),
            Dict(
                "Type" => "EMAIL",
                "Value" => "juan@example.com"
            )
        ],
        "State" => "OPEN"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/InviteAccountToOrganization)
"""
@inline invite_account_to_organization(aws::AWSConfig=default_aws_config(); args...) = invite_account_to_organization(aws, args)

@inline invite_account_to_organization(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "InviteAccountToOrganization", args)

@inline invite_account_to_organization(args) = invite_account_to_organization(default_aws_config(), args)


"""
    using AWSSDK.Organizations.leave_organization
    leave_organization([::AWSConfig])
    

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "LeaveOrganization",)
    

# LeaveOrganization Operation

Removes a member account from its parent organization. This version of the operation is performed by the account that wants to leave. To remove a member account as a user in the master account, use [RemoveAccountFromOrganization](@ref) instead.

This operation can be called only from a member account in the organization.

**Important**
> *   The master account in an organization with all features enabled can set service control policies (SCPs) that can restrict what administrators of member accounts can do, including preventing them from successfully calling `LeaveOrganization` and leaving the organization.

*   You can leave an organization as a member account only if the account is configured with the information required to operate as a standalone account. When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required of standalone accounts is *not* automatically collected. For each account that you want to make standalone, you must accept the End User License Agreement (EULA), choose a support plan, provide and verify the required contact information, and provide a current payment method. AWS uses the payment method to charge for any billable (not free tier) AWS activity that occurs while the account is not attached to an organization. Follow the steps at [To leave an organization when all required account information has not yet been provided](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info) in the *AWS Organizations User Guide*.

*   You can leave an organization only after you enable IAM user access to billing in your account. For more information, see [Activating Access to the Billing and Cost Management Console](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate) in the *AWS Billing and Cost Management User Guide*.

# Exceptions

`AccessDeniedException`, `AccountNotFoundException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ConstraintViolationException`, `InvalidInputException`, `MasterCannotLeaveOrganizationException`, `ServiceException` or `TooManyRequestsException`.

# Example: To leave an organization as a member account

TThe following example shows how to remove your member account from an organization:

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/LeaveOrganization)
"""
@inline leave_organization(aws::AWSConfig=default_aws_config(); args...) = leave_organization(aws, args)

@inline leave_organization(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "LeaveOrganization", args)

@inline leave_organization(args) = leave_organization(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_awsservice_access_for_organization
    list_awsservice_access_for_organization([::AWSConfig], arguments::Dict)
    list_awsservice_access_for_organization([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListAWSServiceAccessForOrganization", arguments::Dict)
    organizations([::AWSConfig], "ListAWSServiceAccessForOrganization", <keyword arguments>)

# ListAWSServiceAccessForOrganization Operation

Returns a list of the AWS services that you enabled to integrate with your organization. After a service on this list creates the resources that it requires for the integration, it can perform operations on your organization and its accounts.

For more information about integrating other services with AWS Organizations, including the list of services that currently work with Organizations, see [Integrating AWS Organizations with Other AWS Services](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html) in the *AWS Organizations User Guide*.

This operation can be called only from the organization's master account.

# Arguments

## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListAWSServiceAccessForOrganizationResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConstraintViolationException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAWSServiceAccessForOrganization)
"""
@inline list_awsservice_access_for_organization(aws::AWSConfig=default_aws_config(); args...) = list_awsservice_access_for_organization(aws, args)

@inline list_awsservice_access_for_organization(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListAWSServiceAccessForOrganization", args)

@inline list_awsservice_access_for_organization(args) = list_awsservice_access_for_organization(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_accounts
    list_accounts([::AWSConfig], arguments::Dict)
    list_accounts([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListAccounts", arguments::Dict)
    organizations([::AWSConfig], "ListAccounts", <keyword arguments>)

# ListAccounts Operation

Lists all the accounts in the organization. To request only the accounts in a specified root or organizational unit (OU), use the [ListAccountsForParent](@ref) operation instead.

**Note**
> Always check the `NextToken` response parameter for a `null` value when calling a `List*` operation. These operations can occasionally return an empty set of results even when there are more results available. The `NextToken` response parameter value is `null` *only* when there are no more results to display.

This operation can be called only from the organization's master account.

# Arguments

## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListAccountsResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To retrieve a list of all of the accounts in an organization

The following example shows you how to request a list of the accounts in an organization:

Input:
```
[

]
```

Output:
```
Dict(
    "Accounts" => [
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/111111111111",
            "Email" => "bill@example.com",
            "Id" => "111111111111",
            "JoinedMethod" => "INVITED",
            "JoinedTimestamp" => "20161215T193015Z",
            "Name" => "Master Account",
            "Status" => "ACTIVE"
        ),
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/222222222222",
            "Email" => "alice@example.com",
            "Id" => "222222222222",
            "JoinedMethod" => "INVITED",
            "JoinedTimestamp" => "20161215T210221Z",
            "Name" => "Developer Account",
            "Status" => "ACTIVE"
        ),
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/333333333333",
            "Email" => "juan@example.com",
            "Id" => "333333333333",
            "JoinedMethod" => "INVITED",
            "JoinedTimestamp" => "20161215T210347Z",
            "Name" => "Test Account",
            "Status" => "ACTIVE"
        ),
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/444444444444",
            "Email" => "anika@example.com",
            "Id" => "444444444444",
            "JoinedMethod" => "INVITED",
            "JoinedTimestamp" => "20161215T210332Z",
            "Name" => "Production Account",
            "Status" => "ACTIVE"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAccounts)
"""
@inline list_accounts(aws::AWSConfig=default_aws_config(); args...) = list_accounts(aws, args)

@inline list_accounts(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListAccounts", args)

@inline list_accounts(args) = list_accounts(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_accounts_for_parent
    list_accounts_for_parent([::AWSConfig], arguments::Dict)
    list_accounts_for_parent([::AWSConfig]; ParentId=, <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListAccountsForParent", arguments::Dict)
    organizations([::AWSConfig], "ListAccountsForParent", ParentId=, <keyword arguments>)

# ListAccountsForParent Operation

Lists the accounts in an organization that are contained by the specified target root or organizational unit (OU). If you specify the root, you get a list of all the accounts that are not in any OU. If you specify an OU, you get a list of all the accounts in only that OU, and not in any child OUs. To get a list of all accounts in the organization, use the [ListAccounts](@ref) operation.

**Note**
> Always check the `NextToken` response parameter for a `null` value when calling a `List*` operation. These operations can occasionally return an empty set of results even when there are more results available. The `NextToken` response parameter value is `null` *only* when there are no more results to display.

This operation can be called only from the organization's master account.

# Arguments

## `ParentId = ::String` -- *Required*
The unique identifier (ID) for the parent root or organization unit (OU) whose accounts you want to list.


## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListAccountsForParentResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `InvalidInputException`, `ParentNotFoundException`, `ServiceException` or `TooManyRequestsException`.

# Example: To retrieve a list of all of the accounts in a root or OU

The following example shows how to request a list of the accounts in an OU:/n/n

Input:
```
[
    "ParentId" => "ou-examplerootid111-exampleouid111"
]
```

Output:
```
Dict(
    "Accounts" => [
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/333333333333",
            "Email" => "juan@example.com",
            "Id" => "333333333333",
            "JoinedMethod" => "INVITED",
            "JoinedTimestamp" => 1.481835795536e9,
            "Name" => "Development Account",
            "Status" => "ACTIVE"
        ),
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/444444444444",
            "Email" => "anika@example.com",
            "Id" => "444444444444",
            "JoinedMethod" => "INVITED",
            "JoinedTimestamp" => 1.481835812143e9,
            "Name" => "Test Account",
            "Status" => "ACTIVE"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAccountsForParent)
"""
@inline list_accounts_for_parent(aws::AWSConfig=default_aws_config(); args...) = list_accounts_for_parent(aws, args)

@inline list_accounts_for_parent(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListAccountsForParent", args)

@inline list_accounts_for_parent(args) = list_accounts_for_parent(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_children
    list_children([::AWSConfig], arguments::Dict)
    list_children([::AWSConfig]; ParentId=, ChildType=, <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListChildren", arguments::Dict)
    organizations([::AWSConfig], "ListChildren", ParentId=, ChildType=, <keyword arguments>)

# ListChildren Operation

Lists all of the organizational units (OUs) or accounts that are contained in the specified parent OU or root. This operation, along with [ListParents](@ref) enables you to traverse the tree structure that makes up this root.

**Note**
> Always check the `NextToken` response parameter for a `null` value when calling a `List*` operation. These operations can occasionally return an empty set of results even when there are more results available. The `NextToken` response parameter value is `null` *only* when there are no more results to display.

This operation can be called only from the organization's master account.

# Arguments

## `ParentId = ::String` -- *Required*
The unique identifier (ID) for the parent root or OU whose children you want to list.

The [regex pattern](http://wikipedia.org/wiki/regex) for a parent ID string requires one of the following:

*   Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.

*   Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.


## `ChildType = "ACCOUNT" or "ORGANIZATIONAL_UNIT"` -- *Required*
Filters the output to include only the specified child type.


## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListChildrenResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `InvalidInputException`, `ParentNotFoundException`, `ServiceException` or `TooManyRequestsException`.

# Example: To retrieve a list of all of the child accounts and OUs in a parent root or OU

The following example shows how to request a list of the child OUs in a parent root or OU:/n/n

Input:
```
[
    "ChildType" => "ORGANIZATIONAL_UNIT",
    "ParentId" => "ou-examplerootid111-exampleouid111"
]
```

Output:
```
Dict(
    "Children" => [
        Dict(
            "Id" => "ou-examplerootid111-exampleouid111",
            "Type" => "ORGANIZATIONAL_UNIT"
        ),
        Dict(
            "Id" => "ou-examplerootid111-exampleouid222",
            "Type" => "ORGANIZATIONAL_UNIT"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListChildren)
"""
@inline list_children(aws::AWSConfig=default_aws_config(); args...) = list_children(aws, args)

@inline list_children(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListChildren", args)

@inline list_children(args) = list_children(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_create_account_status
    list_create_account_status([::AWSConfig], arguments::Dict)
    list_create_account_status([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListCreateAccountStatus", arguments::Dict)
    organizations([::AWSConfig], "ListCreateAccountStatus", <keyword arguments>)

# ListCreateAccountStatus Operation

Lists the account creation requests that match the specified status that is currently being tracked for the organization.

**Note**
> Always check the `NextToken` response parameter for a `null` value when calling a `List*` operation. These operations can occasionally return an empty set of results even when there are more results available. The `NextToken` response parameter value is `null` *only* when there are no more results to display.

This operation can be called only from the organization's master account.

# Arguments

## `States = ["IN_PROGRESS", "SUCCEEDED" or "FAILED", ...]`
A list of one or more states that you want included in the response. If this parameter is not present, then all requests are included in the response.


## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListCreateAccountStatusResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To get a list of completed account creation requests made in the organization

The following example shows a user requesting a list of only the completed account creation requests made for the current organization:

Input:
```
[
    "States" => [
        "SUCCEEDED"
    ]
]
```

Output:
```
Dict(
    "CreateAccountStatuses" => [
        Dict(
            "AccountId" => "444444444444",
            "AccountName" => "Developer Test Account",
            "CompletedTimestamp" => "2017-01-15T13:45:23.6Z",
            "Id" => "car-exampleaccountcreationrequestid1",
            "RequestedTimestamp" => "2017-01-15T13:45:23.01Z",
            "State" => "SUCCEEDED"
        )
    ]
)
```

# Example: To get a list of all account creation requests made in the organization

The following example shows a user requesting a list of only the in-progress account creation requests made for the current organization:

Input:
```
[
    "States" => [
        "IN_PROGRESS"
    ]
]
```

Output:
```
Dict(
    "CreateAccountStatuses" => [
        Dict(
            "AccountName" => "Production Account",
            "Id" => "car-exampleaccountcreationrequestid2",
            "RequestedTimestamp" => "2017-01-15T13:45:23.01Z",
            "State" => "IN_PROGRESS"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListCreateAccountStatus)
"""
@inline list_create_account_status(aws::AWSConfig=default_aws_config(); args...) = list_create_account_status(aws, args)

@inline list_create_account_status(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListCreateAccountStatus", args)

@inline list_create_account_status(args) = list_create_account_status(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_handshakes_for_account
    list_handshakes_for_account([::AWSConfig], arguments::Dict)
    list_handshakes_for_account([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListHandshakesForAccount", arguments::Dict)
    organizations([::AWSConfig], "ListHandshakesForAccount", <keyword arguments>)

# ListHandshakesForAccount Operation

Lists the current handshakes that are associated with the account of the requesting user.

Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that they are deleted and no longer accessible.

**Note**
> Always check the `NextToken` response parameter for a `null` value when calling a `List*` operation. These operations can occasionally return an empty set of results even when there are more results available. The `NextToken` response parameter value is `null` *only* when there are no more results to display.

This operation can be called from any account in the organization.

# Arguments

## `Filter = [ ... ]`
Filters the handshakes that you want included in the response. The default is all types. Use the `ActionType` element to limit the output to only a specified type, such as `INVITE`, `ENABLE-FULL-CONTROL`, or `APPROVE-FULL-CONTROL`. Alternatively, for the `ENABLE-FULL-CONTROL` handshake that generates a separate child handshake for each member account, you can specify `ParentHandshakeId` to see only the handshakes that were generated by that parent request.
```
 Filter = [
        "ActionType" =>  "INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES" or "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE",
        "ParentHandshakeId" =>  ::String
    ]
```

## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListHandshakesForAccountResponse`

# Exceptions

`AccessDeniedException`, `ConcurrentModificationException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To retrieve a list of the handshakes sent to an account

The following example shows you how to get a list of handshakes that are associated with the account of the credentials used to call the operation:

Output:
```
Dict(
    "Handshakes" => [
        Dict(
            "Action" => "INVITE",
            "Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111",
            "ExpirationTimestamp" => "2017-01-28T14:35:23.3Z",
            "Id" => "h-examplehandshakeid111",
            "Parties" => [
                Dict(
                    "Id" => "o-exampleorgid",
                    "Type" => "ORGANIZATION"
                ),
                Dict(
                    "Id" => "juan@example.com",
                    "Type" => "EMAIL"
                )
            ],
            "RequestedTimestamp" => "2017-01-13T14:35:23.3Z",
            "Resources" => [
                Dict(
                    "Resources" => [
                        Dict(
                            "Type" => "MASTER_EMAIL",
                            "Value" => "bill@amazon.com"
                        ),
                        Dict(
                            "Type" => "MASTER_NAME",
                            "Value" => "Org Master Account"
                        ),
                        Dict(
                            "Type" => "ORGANIZATION_FEATURE_SET",
                            "Value" => "FULL"
                        )
                    ],
                    "Type" => "ORGANIZATION",
                    "Value" => "o-exampleorgid"
                ),
                Dict(
                    "Type" => "EMAIL",
                    "Value" => "juan@example.com"
                )
            ],
            "State" => "OPEN"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListHandshakesForAccount)
"""
@inline list_handshakes_for_account(aws::AWSConfig=default_aws_config(); args...) = list_handshakes_for_account(aws, args)

@inline list_handshakes_for_account(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListHandshakesForAccount", args)

@inline list_handshakes_for_account(args) = list_handshakes_for_account(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_handshakes_for_organization
    list_handshakes_for_organization([::AWSConfig], arguments::Dict)
    list_handshakes_for_organization([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListHandshakesForOrganization", arguments::Dict)
    organizations([::AWSConfig], "ListHandshakesForOrganization", <keyword arguments>)

# ListHandshakesForOrganization Operation

Lists the handshakes that are associated with the organization that the requesting user is part of. The `ListHandshakesForOrganization` operation returns a list of handshake structures. Each structure contains details and status about a handshake.

Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that they are deleted and no longer accessible.

**Note**
> Always check the `NextToken` response parameter for a `null` value when calling a `List*` operation. These operations can occasionally return an empty set of results even when there are more results available. The `NextToken` response parameter value is `null` *only* when there are no more results to display.

This operation can be called only from the organization's master account.

# Arguments

## `Filter = [ ... ]`
A filter of the handshakes that you want included in the response. The default is all types. Use the `ActionType` element to limit the output to only a specified type, such as `INVITE`, `ENABLE-ALL-FEATURES`, or `APPROVE-ALL-FEATURES`. Alternatively, for the `ENABLE-ALL-FEATURES` handshake that generates a separate child handshake for each member account, you can specify the `ParentHandshakeId` to see only the handshakes that were generated by that parent request.
```
 Filter = [
        "ActionType" =>  "INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES" or "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE",
        "ParentHandshakeId" =>  ::String
    ]
```

## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListHandshakesForOrganizationResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To retrieve a list of the handshakes associated with an organization

The following example shows you how to get a list of handshakes associated with the current organization:

Output:
```
Dict(
    "Handshakes" => [
        Dict(
            "Action" => "INVITE",
            "Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111",
            "ExpirationTimestamp" => "2017-01-28T14:35:23.3Z",
            "Id" => "h-examplehandshakeid111",
            "Parties" => [
                Dict(
                    "Id" => "o-exampleorgid",
                    "Type" => "ORGANIZATION"
                ),
                Dict(
                    "Id" => "juan@example.com",
                    "Type" => "EMAIL"
                )
            ],
            "RequestedTimestamp" => "2017-01-13T14:35:23.3Z",
            "Resources" => [
                Dict(
                    "Resources" => [
                        Dict(
                            "Type" => "MASTER_EMAIL",
                            "Value" => "bill@amazon.com"
                        ),
                        Dict(
                            "Type" => "MASTER_NAME",
                            "Value" => "Org Master Account"
                        ),
                        Dict(
                            "Type" => "ORGANIZATION_FEATURE_SET",
                            "Value" => "FULL"
                        )
                    ],
                    "Type" => "ORGANIZATION",
                    "Value" => "o-exampleorgid"
                ),
                Dict(
                    "Type" => "EMAIL",
                    "Value" => "juan@example.com"
                )
            ],
            "State" => "OPEN"
        ),
        Dict(
            "Action" => "INVITE",
            "Arn" => "arn:aws:organizations::111111111111:handshake/o-exampleorgid/invite/h-examplehandshakeid111",
            "ExpirationTimestamp" => "2017-01-28T14:35:23.3Z",
            "Id" => "h-examplehandshakeid222",
            "Parties" => [
                Dict(
                    "Id" => "o-exampleorgid",
                    "Type" => "ORGANIZATION"
                ),
                Dict(
                    "Id" => "anika@example.com",
                    "Type" => "EMAIL"
                )
            ],
            "RequestedTimestamp" => "2017-01-13T14:35:23.3Z",
            "Resources" => [
                Dict(
                    "Resources" => [
                        Dict(
                            "Type" => "MASTER_EMAIL",
                            "Value" => "bill@example.com"
                        ),
                        Dict(
                            "Type" => "MASTER_NAME",
                            "Value" => "Master Account"
                        )
                    ],
                    "Type" => "ORGANIZATION",
                    "Value" => "o-exampleorgid"
                ),
                Dict(
                    "Type" => "EMAIL",
                    "Value" => "anika@example.com"
                ),
                Dict(
                    "Type" => "NOTES",
                    "Value" => "This is an invitation to Anika's account to join Bill's organization."
                )
            ],
            "State" => "ACCEPTED"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListHandshakesForOrganization)
"""
@inline list_handshakes_for_organization(aws::AWSConfig=default_aws_config(); args...) = list_handshakes_for_organization(aws, args)

@inline list_handshakes_for_organization(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListHandshakesForOrganization", args)

@inline list_handshakes_for_organization(args) = list_handshakes_for_organization(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_organizational_units_for_parent
    list_organizational_units_for_parent([::AWSConfig], arguments::Dict)
    list_organizational_units_for_parent([::AWSConfig]; ParentId=, <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListOrganizationalUnitsForParent", arguments::Dict)
    organizations([::AWSConfig], "ListOrganizationalUnitsForParent", ParentId=, <keyword arguments>)

# ListOrganizationalUnitsForParent Operation

Lists the organizational units (OUs) in a parent organizational unit or root.

**Note**
> Always check the `NextToken` response parameter for a `null` value when calling a `List*` operation. These operations can occasionally return an empty set of results even when there are more results available. The `NextToken` response parameter value is `null` *only* when there are no more results to display.

This operation can be called only from the organization's master account.

# Arguments

## `ParentId = ::String` -- *Required*
The unique identifier (ID) of the root or OU whose child OUs you want to list.

The [regex pattern](http://wikipedia.org/wiki/regex) for a parent ID string requires one of the following:

*   Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.

*   Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.


## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListOrganizationalUnitsForParentResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `InvalidInputException`, `ParentNotFoundException`, `ServiceException` or `TooManyRequestsException`.

# Example: To retrieve a list of all of the child OUs in a parent root or OU

The following example shows how to get a list of OUs in a specified root:/n/n

Input:
```
[
    "ParentId" => "r-examplerootid111"
]
```

Output:
```
Dict(
    "OrganizationalUnits" => [
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examlerootid111-exampleouid111",
            "Id" => "ou-examplerootid111-exampleouid111",
            "Name" => "Development"
        ),
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examlerootid111-exampleouid222",
            "Id" => "ou-examplerootid111-exampleouid222",
            "Name" => "Production"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListOrganizationalUnitsForParent)
"""
@inline list_organizational_units_for_parent(aws::AWSConfig=default_aws_config(); args...) = list_organizational_units_for_parent(aws, args)

@inline list_organizational_units_for_parent(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListOrganizationalUnitsForParent", args)

@inline list_organizational_units_for_parent(args) = list_organizational_units_for_parent(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_parents
    list_parents([::AWSConfig], arguments::Dict)
    list_parents([::AWSConfig]; ChildId=, <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListParents", arguments::Dict)
    organizations([::AWSConfig], "ListParents", ChildId=, <keyword arguments>)

# ListParents Operation

Lists the root or organizational units (OUs) that serve as the immediate parent of the specified child OU or account. This operation, along with [ListChildren](@ref) enables you to traverse the tree structure that makes up this root.

**Note**
> Always check the `NextToken` response parameter for a `null` value when calling a `List*` operation. These operations can occasionally return an empty set of results even when there are more results available. The `NextToken` response parameter value is `null` *only* when there are no more results to display.

This operation can be called only from the organization's master account.

**Note**
> In the current release, a child can have only a single parent.

# Arguments

## `ChildId = ::String` -- *Required*
The unique identifier (ID) of the OU or account whose parent containers you want to list. Do not specify a root.

The [regex pattern](http://wikipedia.org/wiki/regex) for a child ID string requires one of the following:

*   Account: a string that consists of exactly 12 digits.

*   Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.


## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListParentsResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ChildNotFoundException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To retrieve a list of all of the parents of a child OU or account

The following example shows how to list the root or OUs that contain account 444444444444:/n/n

Input:
```
[
    "ChildId" => "444444444444"
]
```

Output:
```
Dict(
    "Parents" => [
        Dict(
            "Id" => "ou-examplerootid111-exampleouid111",
            "Type" => "ORGANIZATIONAL_UNIT"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListParents)
"""
@inline list_parents(aws::AWSConfig=default_aws_config(); args...) = list_parents(aws, args)

@inline list_parents(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListParents", args)

@inline list_parents(args) = list_parents(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_policies
    list_policies([::AWSConfig], arguments::Dict)
    list_policies([::AWSConfig]; Filter=, <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListPolicies", arguments::Dict)
    organizations([::AWSConfig], "ListPolicies", Filter=, <keyword arguments>)

# ListPolicies Operation

Retrieves the list of all policies in an organization of a specified type.

**Note**
> Always check the `NextToken` response parameter for a `null` value when calling a `List*` operation. These operations can occasionally return an empty set of results even when there are more results available. The `NextToken` response parameter value is `null` *only* when there are no more results to display.

This operation can be called only from the organization's master account.

# Arguments

## `Filter = "SERVICE_CONTROL_POLICY"` -- *Required*
Specifies the type of policy that you want to include in the response.


## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListPoliciesResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To retrieve a list policies in the organization

The following example shows how to get a list of service control policies (SCPs):/n/n

Input:
```
[
    "Filter" => "SERVICE_CONTROL_POLICY"
]
```

Output:
```
Dict(
    "Policies" => [
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111",
            "AwsManaged" => false,
            "Description" => "Enables account admins to delegate permissions for any S3 actions to users and roles in their accounts.",
            "Id" => "p-examplepolicyid111",
            "Name" => "AllowAllS3Actions",
            "Type" => "SERVICE_CONTROL_POLICY"
        ),
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid222",
            "AwsManaged" => false,
            "Description" => "Enables account admins to delegate permissions for any EC2 actions to users and roles in their accounts.",
            "Id" => "p-examplepolicyid222",
            "Name" => "AllowAllEC2Actions",
            "Type" => "SERVICE_CONTROL_POLICY"
        ),
        Dict(
            "Arn" => "arn:aws:organizations::aws:policy/service_control_policy/p-FullAWSAccess",
            "AwsManaged" => true,
            "Description" => "Allows access to every operation",
            "Id" => "p-FullAWSAccess",
            "Name" => "FullAWSAccess",
            "Type" => "SERVICE_CONTROL_POLICY"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListPolicies)
"""
@inline list_policies(aws::AWSConfig=default_aws_config(); args...) = list_policies(aws, args)

@inline list_policies(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListPolicies", args)

@inline list_policies(args) = list_policies(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_policies_for_target
    list_policies_for_target([::AWSConfig], arguments::Dict)
    list_policies_for_target([::AWSConfig]; TargetId=, Filter=, <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListPoliciesForTarget", arguments::Dict)
    organizations([::AWSConfig], "ListPoliciesForTarget", TargetId=, Filter=, <keyword arguments>)

# ListPoliciesForTarget Operation

Lists the policies that are directly attached to the specified target root, organizational unit (OU), or account. You must specify the policy type that you want included in the returned list.

**Note**
> Always check the `NextToken` response parameter for a `null` value when calling a `List*` operation. These operations can occasionally return an empty set of results even when there are more results available. The `NextToken` response parameter value is `null` *only* when there are no more results to display.

This operation can be called only from the organization's master account.

# Arguments

## `TargetId = ::String` -- *Required*
The unique identifier (ID) of the root, organizational unit, or account whose policies you want to list.

The [regex pattern](http://wikipedia.org/wiki/regex) for a target ID string requires one of the following:

*   Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.

*   Account: a string that consists of exactly 12 digits.

*   Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.


## `Filter = "SERVICE_CONTROL_POLICY"` -- *Required*
The type of policy that you want to include in the returned list.


## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListPoliciesForTargetResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `InvalidInputException`, `ServiceException`, `TargetNotFoundException` or `TooManyRequestsException`.

# Example: To retrieve a list policies attached to a root, OU, or account

The following example shows how to get a list of all service control policies (SCPs) of the type specified by the Filter parameter, that are directly attached to an account. The returned list does not include policies that apply to the account because of inheritance from its location in an OU hierarchy:/n/n

Input:
```
[
    "Filter" => "SERVICE_CONTROL_POLICY",
    "TargetId" => "444444444444"
]
```

Output:
```
Dict(
    "Policies" => [
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid222",
            "AwsManaged" => false,
            "Description" => "Enables account admins to delegate permissions for any EC2 actions to users and roles in their accounts.",
            "Id" => "p-examplepolicyid222",
            "Name" => "AllowAllEC2Actions",
            "Type" => "SERVICE_CONTROL_POLICY"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListPoliciesForTarget)
"""
@inline list_policies_for_target(aws::AWSConfig=default_aws_config(); args...) = list_policies_for_target(aws, args)

@inline list_policies_for_target(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListPoliciesForTarget", args)

@inline list_policies_for_target(args) = list_policies_for_target(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_roots
    list_roots([::AWSConfig], arguments::Dict)
    list_roots([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListRoots", arguments::Dict)
    organizations([::AWSConfig], "ListRoots", <keyword arguments>)

# ListRoots Operation

Lists the roots that are defined in the current organization.

**Note**
> Always check the `NextToken` response parameter for a `null` value when calling a `List*` operation. These operations can occasionally return an empty set of results even when there are more results available. The `NextToken` response parameter value is `null` *only* when there are no more results to display.

This operation can be called only from the organization's master account.

**Note**
> Policy types can be enabled and disabled in roots. This is distinct from whether they are available in the organization. When you enable all features, you make policy types available for use in that organization. Individual policy types can then be enabled and disabled in a root. To see the availability of a policy type in an organization, use [DescribeOrganization](@ref).

# Arguments

## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListRootsResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `InvalidInputException`, `ServiceException` or `TooManyRequestsException`.

# Example: To retrieve a list of roots in the organization

The following example shows how to get the list of the roots in the current organization:/n/n

Input:
```
[

]
```

Output:
```
Dict(
    "Roots" => [
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111",
            "Id" => "r-examplerootid111",
            "Name" => "Root",
            "PolicyTypes" => [
                Dict(
                    "Status" => "ENABLED",
                    "Type" => "SERVICE_CONTROL_POLICY"
                )
            ]
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListRoots)
"""
@inline list_roots(aws::AWSConfig=default_aws_config(); args...) = list_roots(aws, args)

@inline list_roots(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListRoots", args)

@inline list_roots(args) = list_roots(default_aws_config(), args)


"""
    using AWSSDK.Organizations.list_targets_for_policy
    list_targets_for_policy([::AWSConfig], arguments::Dict)
    list_targets_for_policy([::AWSConfig]; PolicyId=, <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "ListTargetsForPolicy", arguments::Dict)
    organizations([::AWSConfig], "ListTargetsForPolicy", PolicyId=, <keyword arguments>)

# ListTargetsForPolicy Operation

Lists all the roots, organizaitonal units (OUs), and accounts to which the specified policy is attached.

**Note**
> Always check the `NextToken` response parameter for a `null` value when calling a `List*` operation. These operations can occasionally return an empty set of results even when there are more results available. The `NextToken` response parameter value is `null` *only* when there are no more results to display.

This operation can be called only from the organization's master account.

# Arguments

## `PolicyId = ::String` -- *Required*
The unique identifier (ID) of the policy for which you want to know its attachments.

The [regex pattern](http://wikipedia.org/wiki/regex) for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.


## `NextToken = ::String`
Use this parameter if you receive a `NextToken` response in a previous request that indicates that there is more output available. Set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `MaxResults = ::Int`
(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (is not null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.




# Returns

`ListTargetsForPolicyResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `InvalidInputException`, `PolicyNotFoundException`, `ServiceException` or `TooManyRequestsException`.

# Example: To retrieve a list of roots, OUs, and accounts to which a policy is attached

The following example shows how to get the list of roots, OUs, and accounts to which the specified policy is attached:/n/n

Input:
```
[
    "PolicyId" => "p-FullAWSAccess"
]
```

Output:
```
Dict(
    "Targets" => [
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:root/o-exampleorgid/r-examplerootid111",
            "Name" => "Root",
            "TargetId" => "r-examplerootid111",
            "Type" => "ROOT"
        ),
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:account/o-exampleorgid/333333333333;",
            "Name" => "Developer Test Account",
            "TargetId" => "333333333333",
            "Type" => "ACCOUNT"
        ),
        Dict(
            "Arn" => "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111",
            "Name" => "Accounting",
            "TargetId" => "ou-examplerootid111-exampleouid111",
            "Type" => "ORGANIZATIONAL_UNIT"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListTargetsForPolicy)
"""
@inline list_targets_for_policy(aws::AWSConfig=default_aws_config(); args...) = list_targets_for_policy(aws, args)

@inline list_targets_for_policy(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "ListTargetsForPolicy", args)

@inline list_targets_for_policy(args) = list_targets_for_policy(default_aws_config(), args)


"""
    using AWSSDK.Organizations.move_account
    move_account([::AWSConfig], arguments::Dict)
    move_account([::AWSConfig]; AccountId=, SourceParentId=, DestinationParentId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "MoveAccount", arguments::Dict)
    organizations([::AWSConfig], "MoveAccount", AccountId=, SourceParentId=, DestinationParentId=)

# MoveAccount Operation

Moves an account from its current source parent root or organizational unit (OU) to the specified destination parent root or OU.

This operation can be called only from the organization's master account.

# Arguments

## `AccountId = ::String` -- *Required*
The unique identifier (ID) of the account that you want to move.

The [regex pattern](http://wikipedia.org/wiki/regex) for an account ID string requires exactly 12 digits.


## `SourceParentId = ::String` -- *Required*
The unique identifier (ID) of the root or organizational unit that you want to move the account from.

The [regex pattern](http://wikipedia.org/wiki/regex) for a parent ID string requires one of the following:

*   Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.

*   Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.


## `DestinationParentId = ::String` -- *Required*
The unique identifier (ID) of the root or organizational unit that you want to move the account to.

The [regex pattern](http://wikipedia.org/wiki/regex) for a parent ID string requires one of the following:

*   Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.

*   Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.




# Exceptions

`AccessDeniedException`, `InvalidInputException`, `SourceParentNotFoundException`, `DestinationParentNotFoundException`, `DuplicateAccountException`, `AccountNotFoundException`, `TooManyRequestsException`, `ConcurrentModificationException`, `AWSOrganizationsNotInUseException` or `ServiceException`.

# Example: To move an OU or account to another OU or the root

The following example shows how to move a member account from the root to an OU:/n/n

Input:
```
[
    "AccountId" => "333333333333",
    "DestinationParentId" => "ou-examplerootid111-exampleouid111",
    "SourceParentId" => "r-examplerootid111"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/MoveAccount)
"""
@inline move_account(aws::AWSConfig=default_aws_config(); args...) = move_account(aws, args)

@inline move_account(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "MoveAccount", args)

@inline move_account(args) = move_account(default_aws_config(), args)


"""
    using AWSSDK.Organizations.remove_account_from_organization
    remove_account_from_organization([::AWSConfig], arguments::Dict)
    remove_account_from_organization([::AWSConfig]; AccountId=)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "RemoveAccountFromOrganization", arguments::Dict)
    organizations([::AWSConfig], "RemoveAccountFromOrganization", AccountId=)

# RemoveAccountFromOrganization Operation

Removes the specified account from the organization.

The removed account becomes a stand-alone account that is not a member of any organization. It is no longer subject to any policies and is responsible for its own bill payments. The organization's master account is no longer charged for any expenses accrued by the member account after it is removed from the organization.

This operation can be called only from the organization's master account. Member accounts can remove themselves with [LeaveOrganization](@ref) instead.

**Important**
> You can remove an account from your organization only if the account is configured with the information required to operate as a standalone account. When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required of standalone accounts is *not* automatically collected. For an account that you want to make standalone, you must accept the End User License Agreement (EULA), choose a support plan, provide and verify the required contact information, and provide a current payment method. AWS uses the payment method to charge for any billable (not free tier) AWS activity that occurs while the account is not attached to an organization. To remove an account that does not yet have this information, you must sign in as the member account and follow the steps at [To leave an organization when all required account information has not yet been provided](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info) in the *AWS Organizations User Guide*.

# Arguments

## `AccountId = ::String` -- *Required*
The unique identifier (ID) of the member account that you want to remove from the organization.

The [regex pattern](http://wikipedia.org/wiki/regex) for an account ID string requires exactly 12 digits.




# Exceptions

`AccessDeniedException`, `AccountNotFoundException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ConstraintViolationException`, `InvalidInputException`, `MasterCannotLeaveOrganizationException`, `ServiceException` or `TooManyRequestsException`.

# Example: To remove an account from an organization as the master account

The following example shows you how to remove an account from an organization:

Input:
```
[
    "AccountId" => "333333333333"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/RemoveAccountFromOrganization)
"""
@inline remove_account_from_organization(aws::AWSConfig=default_aws_config(); args...) = remove_account_from_organization(aws, args)

@inline remove_account_from_organization(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "RemoveAccountFromOrganization", args)

@inline remove_account_from_organization(args) = remove_account_from_organization(default_aws_config(), args)


"""
    using AWSSDK.Organizations.update_organizational_unit
    update_organizational_unit([::AWSConfig], arguments::Dict)
    update_organizational_unit([::AWSConfig]; OrganizationalUnitId=, <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "UpdateOrganizationalUnit", arguments::Dict)
    organizations([::AWSConfig], "UpdateOrganizationalUnit", OrganizationalUnitId=, <keyword arguments>)

# UpdateOrganizationalUnit Operation

Renames the specified organizational unit (OU). The ID and ARN do not change. The child OUs and accounts remain in place, and any attached policies of the OU remain attached.

This operation can be called only from the organization's master account.

# Arguments

## `OrganizationalUnitId = ::String` -- *Required*
The unique identifier (ID) of the OU that you want to rename. You can get the ID from the [ListOrganizationalUnitsForParent](@ref) operation.

The [regex pattern](http://wikipedia.org/wiki/regex) for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.


## `Name = ::String`
The new name that you want to assign to the OU.

The [regex pattern](http://wikipedia.org/wiki/regex) that is used to validate this parameter is a string of any of the characters in the ASCII character range.




# Returns

`UpdateOrganizationalUnitResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `DuplicateOrganizationalUnitException`, `InvalidInputException`, `OrganizationalUnitNotFoundException`, `ServiceException` or `TooManyRequestsException`.

# Example: To rename an organizational unit

The following example shows how to rename an OU. The output confirms the new name:/n/n

Input:
```
[
    "Name" => "AccountingOU",
    "OrganizationalUnitId" => "ou-examplerootid111-exampleouid111"
]
```

Output:
```
Dict(
    "OrganizationalUnit" => Dict(
        "Arn" => "arn:aws:organizations::111111111111:ou/o-exampleorgid/ou-examplerootid111-exampleouid111",
        "Id" => "ou-examplerootid111-exampleouid111",
        "Name" => "AccountingOU"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/UpdateOrganizationalUnit)
"""
@inline update_organizational_unit(aws::AWSConfig=default_aws_config(); args...) = update_organizational_unit(aws, args)

@inline update_organizational_unit(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "UpdateOrganizationalUnit", args)

@inline update_organizational_unit(args) = update_organizational_unit(default_aws_config(), args)


"""
    using AWSSDK.Organizations.update_policy
    update_policy([::AWSConfig], arguments::Dict)
    update_policy([::AWSConfig]; PolicyId=, <keyword arguments>)

    using AWSCore.Services.organizations
    organizations([::AWSConfig], "UpdatePolicy", arguments::Dict)
    organizations([::AWSConfig], "UpdatePolicy", PolicyId=, <keyword arguments>)

# UpdatePolicy Operation

Updates an existing policy with a new name, description, or content. If any parameter is not supplied, that value remains unchanged. Note that you cannot change a policy's type.

This operation can be called only from the organization's master account.

# Arguments

## `PolicyId = ::String` -- *Required*
The unique identifier (ID) of the policy that you want to update.

The [regex pattern](http://wikipedia.org/wiki/regex) for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.


## `Name = ::String`
If provided, the new name for the policy.

The [regex pattern](http://wikipedia.org/wiki/regex) that is used to validate this parameter is a string of any of the characters in the ASCII character range.


## `Description = ::String`
If provided, the new description for the policy.


## `Content = ::String`
If provided, the new content for the policy. The text must be correctly formatted JSON that complies with the syntax for the policy's type. For more information, see [Service Control Policy Syntax](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html) in the *AWS Organizations User Guide*.




# Returns

`UpdatePolicyResponse`

# Exceptions

`AccessDeniedException`, `AWSOrganizationsNotInUseException`, `ConcurrentModificationException`, `ConstraintViolationException`, `DuplicatePolicyException`, `InvalidInputException`, `MalformedPolicyDocumentException`, `PolicyNotFoundException`, `ServiceException` or `TooManyRequestsException`.

# Example: To update the details of a policy

The following example shows how to rename a policy and give it a new description and new content. The output confirms the new name and description text:/n/n

Input:
```
[
    "Description" => "This description replaces the original.",
    "Name" => "Renamed-Policy",
    "PolicyId" => "p-examplepolicyid111"
]
```

Output:
```
Dict(
    "Policy" => Dict(
        "Content" => "{ "Version": "2012-10-17", "Statement": { "Effect": "Allow", "Action": "ec2:*", "Resource": "*" } }",
        "PolicySummary" => Dict(
            "Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111",
            "AwsManaged" => false,
            "Description" => "This description replaces the original.",
            "Id" => "p-examplepolicyid111",
            "Name" => "Renamed-Policy",
            "Type" => "SERVICE_CONTROL_POLICY"
        )
    )
)
```

# Example: To update the content of a policy

The following example shows how to replace the JSON text of the SCP from the preceding example with a new JSON policy text string that allows S3 actions instead of EC2 actions:/n/n

Input:
```
[
    "Content" => "{ \"Version\": \"2012-10-17\", \"Statement\": {\"Effect\": \"Allow\", \"Action\": \"s3:*\", \"Resource\": \"*\" } }",
    "PolicyId" => "p-examplepolicyid111"
]
```

Output:
```
Dict(
    "Policy" => Dict(
        "Content" => "{ \"Version\": \"2012-10-17\", \"Statement\": { \"Effect\": \"Allow\", \"Action\": \"s3:*\", \"Resource\": \"*\" } }",
        "PolicySummary" => Dict(
            "Arn" => "arn:aws:organizations::111111111111:policy/o-exampleorgid/service_control_policy/p-examplepolicyid111",
            "AwsManaged" => false,
            "Description" => "This description replaces the original.",
            "Id" => "p-examplepolicyid111",
            "Name" => "Renamed-Policy",
            "Type" => "SERVICE_CONTROL_POLICY"
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/UpdatePolicy)
"""
@inline update_policy(aws::AWSConfig=default_aws_config(); args...) = update_policy(aws, args)

@inline update_policy(aws::AWSConfig, args) = AWSCore.Services.organizations(aws, "UpdatePolicy", args)

@inline update_policy(args) = update_policy(default_aws_config(), args)




end # module Organizations


#==============================================================================#
# End of file
#==============================================================================#
