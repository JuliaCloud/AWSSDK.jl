#==============================================================================#
# WorkMail.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/workmail-2017-10-01.normal.json
#==============================================================================#

__precompile__()

module WorkMail

using AWSCore


"""
    using AWSSDK.WorkMail.associate_delegate_to_resource
    associate_delegate_to_resource([::AWSConfig], arguments::Dict)
    associate_delegate_to_resource([::AWSConfig]; OrganizationId=, ResourceId=, EntityId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "AssociateDelegateToResource", arguments::Dict)
    workmail([::AWSConfig], "AssociateDelegateToResource", OrganizationId=, ResourceId=, EntityId=)

# AssociateDelegateToResource Operation

Adds a member to the resource's set of delegates.

# Arguments

## `OrganizationId = ::String` -- *Required*
The organization under which the resource exists.


## `ResourceId = ::String` -- *Required*
The resource for which members are associated.


## `EntityId = ::String` -- *Required*
The member (user or group) to associate to the resource.




# Returns

`AssociateDelegateToResourceResponse`

# Exceptions

`EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/AssociateDelegateToResource)
"""
@inline associate_delegate_to_resource(aws::AWSConfig=default_aws_config(); args...) = associate_delegate_to_resource(aws, args)

@inline associate_delegate_to_resource(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "AssociateDelegateToResource", args)

@inline associate_delegate_to_resource(args) = associate_delegate_to_resource(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.associate_member_to_group
    associate_member_to_group([::AWSConfig], arguments::Dict)
    associate_member_to_group([::AWSConfig]; OrganizationId=, GroupId=, MemberId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "AssociateMemberToGroup", arguments::Dict)
    workmail([::AWSConfig], "AssociateMemberToGroup", OrganizationId=, GroupId=, MemberId=)

# AssociateMemberToGroup Operation

Adds a member to the group's set.

# Arguments

## `OrganizationId = ::String` -- *Required*
The organization under which the group exists.


## `GroupId = ::String` -- *Required*
The group for which the member is associated.


## `MemberId = ::String` -- *Required*
The member to associate to the group.




# Returns

`AssociateMemberToGroupResponse`

# Exceptions

`DirectoryServiceAuthenticationFailedException`, `DirectoryUnavailableException`, `EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException`, `OrganizationStateException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/AssociateMemberToGroup)
"""
@inline associate_member_to_group(aws::AWSConfig=default_aws_config(); args...) = associate_member_to_group(aws, args)

@inline associate_member_to_group(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "AssociateMemberToGroup", args)

@inline associate_member_to_group(args) = associate_member_to_group(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.create_alias
    create_alias([::AWSConfig], arguments::Dict)
    create_alias([::AWSConfig]; OrganizationId=, EntityId=, Alias=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "CreateAlias", arguments::Dict)
    workmail([::AWSConfig], "CreateAlias", OrganizationId=, EntityId=, Alias=)

# CreateAlias Operation

Adds an alias to the set of a given member of Amazon WorkMail.

# Arguments

## `OrganizationId = ::String` -- *Required*
The organization under which the member exists.


## `EntityId = ::String` -- *Required*
The alias is added to this Amazon WorkMail entity.


## `Alias = ::String` -- *Required*
The alias to add to the user.




# Returns

`CreateAliasResponse`

# Exceptions

`EmailAddressInUseException`, `EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `MailDomainNotFoundException`, `MailDomainStateException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateAlias)
"""
@inline create_alias(aws::AWSConfig=default_aws_config(); args...) = create_alias(aws, args)

@inline create_alias(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "CreateAlias", args)

@inline create_alias(args) = create_alias(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.create_group
    create_group([::AWSConfig], arguments::Dict)
    create_group([::AWSConfig]; OrganizationId=, Name=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "CreateGroup", arguments::Dict)
    workmail([::AWSConfig], "CreateGroup", OrganizationId=, Name=)

# CreateGroup Operation

Creates a group that can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.

# Arguments

## `OrganizationId = ::String` -- *Required*
The organization under which the group is to be created.


## `Name = ::String` -- *Required*
The name of the group.




# Returns

`CreateGroupResponse`

# Exceptions

`DirectoryServiceAuthenticationFailedException`, `DirectoryUnavailableException`, `InvalidParameterException`, `NameAvailabilityException`, `OrganizationNotFoundException`, `OrganizationStateException`, `ReservedNameException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateGroup)
"""
@inline create_group(aws::AWSConfig=default_aws_config(); args...) = create_group(aws, args)

@inline create_group(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "CreateGroup", args)

@inline create_group(args) = create_group(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.create_resource
    create_resource([::AWSConfig], arguments::Dict)
    create_resource([::AWSConfig]; OrganizationId=, Name=, Type=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "CreateResource", arguments::Dict)
    workmail([::AWSConfig], "CreateResource", OrganizationId=, Name=, Type=)

# CreateResource Operation

Creates a new Amazon WorkMail resource. The available types are equipment and room.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier associated with the organization for which the resource is created.


## `Name = ::String` -- *Required*
The name of the created resource.


## `Type = "ROOM" or "EQUIPMENT"` -- *Required*
The type of the created resource.




# Returns

`CreateResourceResponse`

# Exceptions

`DirectoryServiceAuthenticationFailedException`, `DirectoryUnavailableException`, `InvalidParameterException`, `NameAvailabilityException`, `OrganizationNotFoundException`, `OrganizationStateException` or `ReservedNameException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateResource)
"""
@inline create_resource(aws::AWSConfig=default_aws_config(); args...) = create_resource(aws, args)

@inline create_resource(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "CreateResource", args)

@inline create_resource(args) = create_resource(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.create_user
    create_user([::AWSConfig], arguments::Dict)
    create_user([::AWSConfig]; OrganizationId=, Name=, DisplayName=, Password=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "CreateUser", arguments::Dict)
    workmail([::AWSConfig], "CreateUser", OrganizationId=, Name=, DisplayName=, Password=)

# CreateUser Operation

Creates a user who can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier of the organization for which the user is created.


## `Name = ::String` -- *Required*
The name for the user to be created.


## `DisplayName = ::String` -- *Required*
The display name for the user to be created.


## `Password = ::String` -- *Required*
The password for the user to be created.




# Returns

`CreateUserResponse`

# Exceptions

`DirectoryServiceAuthenticationFailedException`, `DirectoryUnavailableException`, `InvalidParameterException`, `InvalidPasswordException`, `NameAvailabilityException`, `OrganizationNotFoundException`, `OrganizationStateException`, `ReservedNameException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateUser)
"""
@inline create_user(aws::AWSConfig=default_aws_config(); args...) = create_user(aws, args)

@inline create_user(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "CreateUser", args)

@inline create_user(args) = create_user(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.delete_alias
    delete_alias([::AWSConfig], arguments::Dict)
    delete_alias([::AWSConfig]; OrganizationId=, EntityId=, Alias=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "DeleteAlias", arguments::Dict)
    workmail([::AWSConfig], "DeleteAlias", OrganizationId=, EntityId=, Alias=)

# DeleteAlias Operation

Remove the alias from a set of aliases for a given user.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization under which the user exists.


## `EntityId = ::String` -- *Required*
The identifier for the Amazon WorkMail entity to have the aliases removed.


## `Alias = ::String` -- *Required*
The aliases to be removed from the user's set of aliases. Duplicate entries in the list are collapsed into single entries (the list is transformed into a set).




# Returns

`DeleteAliasResponse`

# Exceptions

`EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteAlias)
"""
@inline delete_alias(aws::AWSConfig=default_aws_config(); args...) = delete_alias(aws, args)

@inline delete_alias(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "DeleteAlias", args)

@inline delete_alias(args) = delete_alias(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.delete_group
    delete_group([::AWSConfig], arguments::Dict)
    delete_group([::AWSConfig]; OrganizationId=, GroupId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "DeleteGroup", arguments::Dict)
    workmail([::AWSConfig], "DeleteGroup", OrganizationId=, GroupId=)

# DeleteGroup Operation

Deletes a group from Amazon WorkMail.

# Arguments

## `OrganizationId = ::String` -- *Required*
The organization that contains the group.


## `GroupId = ::String` -- *Required*
The identifier of the group to be deleted.




# Returns

`DeleteGroupResponse`

# Exceptions

`DirectoryServiceAuthenticationFailedException`, `DirectoryUnavailableException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException`, `OrganizationStateException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteGroup)
"""
@inline delete_group(aws::AWSConfig=default_aws_config(); args...) = delete_group(aws, args)

@inline delete_group(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "DeleteGroup", args)

@inline delete_group(args) = delete_group(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.delete_mailbox_permissions
    delete_mailbox_permissions([::AWSConfig], arguments::Dict)
    delete_mailbox_permissions([::AWSConfig]; OrganizationId=, EntityId=, GranteeId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "DeleteMailboxPermissions", arguments::Dict)
    workmail([::AWSConfig], "DeleteMailboxPermissions", OrganizationId=, EntityId=, GranteeId=)

# DeleteMailboxPermissions Operation

Deletes permissions granted to a user or group.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier of the organization under which the entity (user or group) exists.


## `EntityId = ::String` -- *Required*
The identifier of the entity (user or group) for which to delete mailbox permissions.


## `GranteeId = ::String` -- *Required*
The identifier of the entity (user or group) for which to delete granted permissions.




# Returns

`DeleteMailboxPermissionsResponse`

# Exceptions

`EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteMailboxPermissions)
"""
@inline delete_mailbox_permissions(aws::AWSConfig=default_aws_config(); args...) = delete_mailbox_permissions(aws, args)

@inline delete_mailbox_permissions(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "DeleteMailboxPermissions", args)

@inline delete_mailbox_permissions(args) = delete_mailbox_permissions(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.delete_resource
    delete_resource([::AWSConfig], arguments::Dict)
    delete_resource([::AWSConfig]; OrganizationId=, ResourceId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "DeleteResource", arguments::Dict)
    workmail([::AWSConfig], "DeleteResource", OrganizationId=, ResourceId=)

# DeleteResource Operation

Deletes the specified resource.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier associated with the organization for which the resource is deleted.


## `ResourceId = ::String` -- *Required*
The identifier of the resource to be deleted.




# Returns

`DeleteResourceResponse`

# Exceptions

`EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteResource)
"""
@inline delete_resource(aws::AWSConfig=default_aws_config(); args...) = delete_resource(aws, args)

@inline delete_resource(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "DeleteResource", args)

@inline delete_resource(args) = delete_resource(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.delete_user
    delete_user([::AWSConfig], arguments::Dict)
    delete_user([::AWSConfig]; OrganizationId=, UserId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "DeleteUser", arguments::Dict)
    workmail([::AWSConfig], "DeleteUser", OrganizationId=, UserId=)

# DeleteUser Operation

Deletes a user from Amazon WorkMail and all subsequent systems. The action can't be undone. The mailbox is kept as-is for a minimum of 30 days, without any means to restore it.

# Arguments

## `OrganizationId = ::String` -- *Required*
The organization that contains the user.


## `UserId = ::String` -- *Required*
The identifier of the user to be deleted.




# Returns

`DeleteUserResponse`

# Exceptions

`DirectoryServiceAuthenticationFailedException`, `DirectoryUnavailableException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException`, `OrganizationStateException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteUser)
"""
@inline delete_user(aws::AWSConfig=default_aws_config(); args...) = delete_user(aws, args)

@inline delete_user(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "DeleteUser", args)

@inline delete_user(args) = delete_user(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.deregister_from_work_mail
    deregister_from_work_mail([::AWSConfig], arguments::Dict)
    deregister_from_work_mail([::AWSConfig]; OrganizationId=, EntityId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "DeregisterFromWorkMail", arguments::Dict)
    workmail([::AWSConfig], "DeregisterFromWorkMail", OrganizationId=, EntityId=)

# DeregisterFromWorkMail Operation

Mark a user, group, or resource as no longer used in Amazon WorkMail. This action disassociates the mailbox and schedules it for clean-up. Amazon WorkMail keeps mailboxes for 30 days before they are permanently removed. The functionality in the console is *Disable*.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization under which the Amazon WorkMail entity exists.


## `EntityId = ::String` -- *Required*
The identifier for the entity to be updated.




# Returns

`DeregisterFromWorkMailResponse`

# Exceptions

`EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeregisterFromWorkMail)
"""
@inline deregister_from_work_mail(aws::AWSConfig=default_aws_config(); args...) = deregister_from_work_mail(aws, args)

@inline deregister_from_work_mail(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "DeregisterFromWorkMail", args)

@inline deregister_from_work_mail(args) = deregister_from_work_mail(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.describe_group
    describe_group([::AWSConfig], arguments::Dict)
    describe_group([::AWSConfig]; OrganizationId=, GroupId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "DescribeGroup", arguments::Dict)
    workmail([::AWSConfig], "DescribeGroup", OrganizationId=, GroupId=)

# DescribeGroup Operation

Returns the data available for the group.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization under which the group exists.


## `GroupId = ::String` -- *Required*
The identifier for the group to be described.




# Returns

`DescribeGroupResponse`

# Exceptions

`EntityNotFoundException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeGroup)
"""
@inline describe_group(aws::AWSConfig=default_aws_config(); args...) = describe_group(aws, args)

@inline describe_group(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "DescribeGroup", args)

@inline describe_group(args) = describe_group(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.describe_organization
    describe_organization([::AWSConfig], arguments::Dict)
    describe_organization([::AWSConfig]; OrganizationId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "DescribeOrganization", arguments::Dict)
    workmail([::AWSConfig], "DescribeOrganization", OrganizationId=)

# DescribeOrganization Operation

Provides more information regarding a given organization based on its identifier.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization to be described.




# Returns

`DescribeOrganizationResponse`

# Exceptions

`InvalidParameterException` or `OrganizationNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeOrganization)
"""
@inline describe_organization(aws::AWSConfig=default_aws_config(); args...) = describe_organization(aws, args)

@inline describe_organization(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "DescribeOrganization", args)

@inline describe_organization(args) = describe_organization(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.describe_resource
    describe_resource([::AWSConfig], arguments::Dict)
    describe_resource([::AWSConfig]; OrganizationId=, ResourceId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "DescribeResource", arguments::Dict)
    workmail([::AWSConfig], "DescribeResource", OrganizationId=, ResourceId=)

# DescribeResource Operation

Returns the data available for the resource.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier associated with the organization for which the resource is described.


## `ResourceId = ::String` -- *Required*
The identifier of the resource to be described.




# Returns

`DescribeResourceResponse`

# Exceptions

`EntityNotFoundException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeResource)
"""
@inline describe_resource(aws::AWSConfig=default_aws_config(); args...) = describe_resource(aws, args)

@inline describe_resource(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "DescribeResource", args)

@inline describe_resource(args) = describe_resource(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.describe_user
    describe_user([::AWSConfig], arguments::Dict)
    describe_user([::AWSConfig]; OrganizationId=, UserId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "DescribeUser", arguments::Dict)
    workmail([::AWSConfig], "DescribeUser", OrganizationId=, UserId=)

# DescribeUser Operation

Provides information regarding the user.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization under which the user exists.


## `UserId = ::String` -- *Required*
The identifier for the user to be described.




# Returns

`DescribeUserResponse`

# Exceptions

`EntityNotFoundException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeUser)
"""
@inline describe_user(aws::AWSConfig=default_aws_config(); args...) = describe_user(aws, args)

@inline describe_user(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "DescribeUser", args)

@inline describe_user(args) = describe_user(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.disassociate_delegate_from_resource
    disassociate_delegate_from_resource([::AWSConfig], arguments::Dict)
    disassociate_delegate_from_resource([::AWSConfig]; OrganizationId=, ResourceId=, EntityId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "DisassociateDelegateFromResource", arguments::Dict)
    workmail([::AWSConfig], "DisassociateDelegateFromResource", OrganizationId=, ResourceId=, EntityId=)

# DisassociateDelegateFromResource Operation

Removes a member from the resource's set of delegates.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization under which the resource exists.


## `ResourceId = ::String` -- *Required*
The identifier of the resource from which delegates' set members are removed.


## `EntityId = ::String` -- *Required*
The identifier for the member (user, group) to be removed from the resource's delegates.




# Returns

`DisassociateDelegateFromResourceResponse`

# Exceptions

`EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DisassociateDelegateFromResource)
"""
@inline disassociate_delegate_from_resource(aws::AWSConfig=default_aws_config(); args...) = disassociate_delegate_from_resource(aws, args)

@inline disassociate_delegate_from_resource(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "DisassociateDelegateFromResource", args)

@inline disassociate_delegate_from_resource(args) = disassociate_delegate_from_resource(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.disassociate_member_from_group
    disassociate_member_from_group([::AWSConfig], arguments::Dict)
    disassociate_member_from_group([::AWSConfig]; OrganizationId=, GroupId=, MemberId=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "DisassociateMemberFromGroup", arguments::Dict)
    workmail([::AWSConfig], "DisassociateMemberFromGroup", OrganizationId=, GroupId=, MemberId=)

# DisassociateMemberFromGroup Operation

Removes a member from a group.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization under which the group exists.


## `GroupId = ::String` -- *Required*
The identifier for the group from which members are removed.


## `MemberId = ::String` -- *Required*
The identifier for the member to be removed to the group.




# Returns

`DisassociateMemberFromGroupResponse`

# Exceptions

`DirectoryServiceAuthenticationFailedException`, `DirectoryUnavailableException`, `EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException`, `OrganizationStateException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DisassociateMemberFromGroup)
"""
@inline disassociate_member_from_group(aws::AWSConfig=default_aws_config(); args...) = disassociate_member_from_group(aws, args)

@inline disassociate_member_from_group(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "DisassociateMemberFromGroup", args)

@inline disassociate_member_from_group(args) = disassociate_member_from_group(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.list_aliases
    list_aliases([::AWSConfig], arguments::Dict)
    list_aliases([::AWSConfig]; OrganizationId=, EntityId=, <keyword arguments>)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "ListAliases", arguments::Dict)
    workmail([::AWSConfig], "ListAliases", OrganizationId=, EntityId=, <keyword arguments>)

# ListAliases Operation

Creates a paginated call to list the aliases associated with a given entity.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization under which the entity exists.


## `EntityId = ::String` -- *Required*
The identifier for the entity for which to list the aliases.


## `NextToken = ::String`
The token to use to retrieve the next page of results. The first call does not contain any tokens.


## `MaxResults = ::Int`
The maximum number of results to return in a single call.




# Returns

`ListAliasesResponse`

# Exceptions

`EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListAliases)
"""
@inline list_aliases(aws::AWSConfig=default_aws_config(); args...) = list_aliases(aws, args)

@inline list_aliases(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "ListAliases", args)

@inline list_aliases(args) = list_aliases(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.list_group_members
    list_group_members([::AWSConfig], arguments::Dict)
    list_group_members([::AWSConfig]; OrganizationId=, GroupId=, <keyword arguments>)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "ListGroupMembers", arguments::Dict)
    workmail([::AWSConfig], "ListGroupMembers", OrganizationId=, GroupId=, <keyword arguments>)

# ListGroupMembers Operation

Returns an overview of the members of a group.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization under which the group exists.


## `GroupId = ::String` -- *Required*
The identifier for the group to which the members are associated.


## `NextToken = ::String`
The token to use to retrieve the next page of results. The first call does not contain any tokens.


## `MaxResults = ::Int`
The maximum number of results to return in a single call.




# Returns

`ListGroupMembersResponse`

# Exceptions

`EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListGroupMembers)
"""
@inline list_group_members(aws::AWSConfig=default_aws_config(); args...) = list_group_members(aws, args)

@inline list_group_members(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "ListGroupMembers", args)

@inline list_group_members(args) = list_group_members(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.list_groups
    list_groups([::AWSConfig], arguments::Dict)
    list_groups([::AWSConfig]; OrganizationId=, <keyword arguments>)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "ListGroups", arguments::Dict)
    workmail([::AWSConfig], "ListGroups", OrganizationId=, <keyword arguments>)

# ListGroups Operation

Returns summaries of the organization's groups.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization under which the groups exist.


## `NextToken = ::String`
The token to use to retrieve the next page of results. The first call does not contain any tokens.


## `MaxResults = ::Int`
The maximum number of results to return in a single call.




# Returns

`ListGroupsResponse`

# Exceptions

`EntityNotFoundException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListGroups)
"""
@inline list_groups(aws::AWSConfig=default_aws_config(); args...) = list_groups(aws, args)

@inline list_groups(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "ListGroups", args)

@inline list_groups(args) = list_groups(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.list_mailbox_permissions
    list_mailbox_permissions([::AWSConfig], arguments::Dict)
    list_mailbox_permissions([::AWSConfig]; OrganizationId=, EntityId=, <keyword arguments>)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "ListMailboxPermissions", arguments::Dict)
    workmail([::AWSConfig], "ListMailboxPermissions", OrganizationId=, EntityId=, <keyword arguments>)

# ListMailboxPermissions Operation

Lists the mailbox permissions associated with a mailbox.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier of the organization under which the entity (user or group) exists.


## `EntityId = ::String` -- *Required*
The identifier of the entity (user or group) for which to list mailbox permissions.


## `NextToken = ::String`
The token to use to retrieve the next page of results. The first call does not contain any tokens.


## `MaxResults = ::Int`
The maximum number of results to return in a single call.




# Returns

`ListMailboxPermissionsResponse`

# Exceptions

`EntityNotFoundException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListMailboxPermissions)
"""
@inline list_mailbox_permissions(aws::AWSConfig=default_aws_config(); args...) = list_mailbox_permissions(aws, args)

@inline list_mailbox_permissions(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "ListMailboxPermissions", args)

@inline list_mailbox_permissions(args) = list_mailbox_permissions(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.list_organizations
    list_organizations([::AWSConfig], arguments::Dict)
    list_organizations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "ListOrganizations", arguments::Dict)
    workmail([::AWSConfig], "ListOrganizations", <keyword arguments>)

# ListOrganizations Operation

Returns summaries of the customer's non-deleted organizations.

# Arguments

## `NextToken = ::String`
The token to use to retrieve the next page of results. The first call does not contain any tokens.


## `MaxResults = ::Int`
The maximum number of results to return in a single call.




# Returns

`ListOrganizationsResponse`

# Exceptions

`InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListOrganizations)
"""
@inline list_organizations(aws::AWSConfig=default_aws_config(); args...) = list_organizations(aws, args)

@inline list_organizations(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "ListOrganizations", args)

@inline list_organizations(args) = list_organizations(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.list_resource_delegates
    list_resource_delegates([::AWSConfig], arguments::Dict)
    list_resource_delegates([::AWSConfig]; OrganizationId=, ResourceId=, <keyword arguments>)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "ListResourceDelegates", arguments::Dict)
    workmail([::AWSConfig], "ListResourceDelegates", OrganizationId=, ResourceId=, <keyword arguments>)

# ListResourceDelegates Operation

Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization that contains the resource for which delegates are listed.


## `ResourceId = ::String` -- *Required*
The identifier for the resource whose delegates are listed.


## `NextToken = ::String`
The token used to paginate through the delegates associated with a resource.


## `MaxResults = ::Int`
The number of maximum results in a page.




# Returns

`ListResourceDelegatesResponse`

# Exceptions

`EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListResourceDelegates)
"""
@inline list_resource_delegates(aws::AWSConfig=default_aws_config(); args...) = list_resource_delegates(aws, args)

@inline list_resource_delegates(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "ListResourceDelegates", args)

@inline list_resource_delegates(args) = list_resource_delegates(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.list_resources
    list_resources([::AWSConfig], arguments::Dict)
    list_resources([::AWSConfig]; OrganizationId=, <keyword arguments>)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "ListResources", arguments::Dict)
    workmail([::AWSConfig], "ListResources", OrganizationId=, <keyword arguments>)

# ListResources Operation

Returns summaries of the organization's resources.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization under which the resources exist.


## `NextToken = ::String`
The token to use to retrieve the next page of results. The first call does not contain any tokens.


## `MaxResults = ::Int`
The maximum number of results to return in a single call.




# Returns

`ListResourcesResponse`

# Exceptions

`InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListResources)
"""
@inline list_resources(aws::AWSConfig=default_aws_config(); args...) = list_resources(aws, args)

@inline list_resources(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "ListResources", args)

@inline list_resources(args) = list_resources(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.list_users
    list_users([::AWSConfig], arguments::Dict)
    list_users([::AWSConfig]; OrganizationId=, <keyword arguments>)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "ListUsers", arguments::Dict)
    workmail([::AWSConfig], "ListUsers", OrganizationId=, <keyword arguments>)

# ListUsers Operation

Returns summaries of the organization's users.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization under which the users exist.


## `NextToken = ::String`
TBD


## `MaxResults = ::Int`
The maximum number of results to return in a single call.




# Returns

`ListUsersResponse`

# Exceptions

`InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListUsers)
"""
@inline list_users(aws::AWSConfig=default_aws_config(); args...) = list_users(aws, args)

@inline list_users(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "ListUsers", args)

@inline list_users(args) = list_users(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.put_mailbox_permissions
    put_mailbox_permissions([::AWSConfig], arguments::Dict)
    put_mailbox_permissions([::AWSConfig]; OrganizationId=, EntityId=, GranteeId=, PermissionValues=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "PutMailboxPermissions", arguments::Dict)
    workmail([::AWSConfig], "PutMailboxPermissions", OrganizationId=, EntityId=, GranteeId=, PermissionValues=)

# PutMailboxPermissions Operation

Sets permissions for a user or group. This replaces any pre-existing permissions set for the entity.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier of the organization under which the entity (user or group) exists.


## `EntityId = ::String` -- *Required*
The identifier of the entity (user or group) for which to update mailbox permissions.


## `GranteeId = ::String` -- *Required*
The identifier of the entity (user or group) to which to grant the permissions.


## `PermissionValues = ["FULL_ACCESS", "SEND_AS" or "SEND_ON_BEHALF", ...]` -- *Required*
The permissions granted to the grantee. SEND_AS allows the grantee to send email as the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full access to the mailbox, irrespective of other folder-level permissions set on the mailbox.




# Returns

`PutMailboxPermissionsResponse`

# Exceptions

`EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/PutMailboxPermissions)
"""
@inline put_mailbox_permissions(aws::AWSConfig=default_aws_config(); args...) = put_mailbox_permissions(aws, args)

@inline put_mailbox_permissions(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "PutMailboxPermissions", args)

@inline put_mailbox_permissions(args) = put_mailbox_permissions(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.register_to_work_mail
    register_to_work_mail([::AWSConfig], arguments::Dict)
    register_to_work_mail([::AWSConfig]; OrganizationId=, EntityId=, Email=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "RegisterToWorkMail", arguments::Dict)
    workmail([::AWSConfig], "RegisterToWorkMail", OrganizationId=, EntityId=, Email=)

# RegisterToWorkMail Operation

Registers an existing and disabled user, group, or resource/entity for Amazon WorkMail use by associating a mailbox and calendaring capabilities. It performs no change if the entity is enabled and fails if the entity is deleted. This operation results in the accumulation of costs. For more information, see [Pricing](http://aws.amazon.com/workmail/pricing). The equivalent console functionality for this operation is *Enable*. Users can either be created by calling the CreateUser API or they can be synchronized from your directory. For more information, see DeregisterFromWorkMail.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier for the organization under which the Amazon WorkMail entity exists.


## `EntityId = ::String` -- *Required*
The identifier for the entity to be updated.


## `Email = ::String` -- *Required*
The email for the entity to be updated.




# Returns

`RegisterToWorkMailResponse`

# Exceptions

`DirectoryServiceAuthenticationFailedException`, `DirectoryUnavailableException`, `EmailAddressInUseException`, `EntityNotFoundException`, `EntityStateException`, `EntityAlreadyRegisteredException`, `InvalidParameterException`, `MailDomainNotFoundException`, `MailDomainStateException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/RegisterToWorkMail)
"""
@inline register_to_work_mail(aws::AWSConfig=default_aws_config(); args...) = register_to_work_mail(aws, args)

@inline register_to_work_mail(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "RegisterToWorkMail", args)

@inline register_to_work_mail(args) = register_to_work_mail(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.reset_password
    reset_password([::AWSConfig], arguments::Dict)
    reset_password([::AWSConfig]; OrganizationId=, UserId=, Password=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "ResetPassword", arguments::Dict)
    workmail([::AWSConfig], "ResetPassword", OrganizationId=, UserId=, Password=)

# ResetPassword Operation

Allows the administrator to reset the password for a user.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier of the organization that contains the user for which the password is reset.


## `UserId = ::String` -- *Required*
The identifier of the user for whom the password is reset.


## `Password = ::String` -- *Required*
The new password for the user.




# Returns

`ResetPasswordResponse`

# Exceptions

`DirectoryServiceAuthenticationFailedException`, `DirectoryUnavailableException`, `EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `InvalidPasswordException`, `OrganizationNotFoundException`, `OrganizationStateException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ResetPassword)
"""
@inline reset_password(aws::AWSConfig=default_aws_config(); args...) = reset_password(aws, args)

@inline reset_password(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "ResetPassword", args)

@inline reset_password(args) = reset_password(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.update_primary_email_address
    update_primary_email_address([::AWSConfig], arguments::Dict)
    update_primary_email_address([::AWSConfig]; OrganizationId=, EntityId=, Email=)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "UpdatePrimaryEmailAddress", arguments::Dict)
    workmail([::AWSConfig], "UpdatePrimaryEmailAddress", OrganizationId=, EntityId=, Email=)

# UpdatePrimaryEmailAddress Operation

Updates the primary email for an entity. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email) and the email provided in the input is promoted as the primary.

# Arguments

## `OrganizationId = ::String` -- *Required*
The organization that contains the entity to update.


## `EntityId = ::String` -- *Required*
The entity to update (user, group, or resource).


## `Email = ::String` -- *Required*
The value of the email to be updated as primary.




# Returns

`UpdatePrimaryEmailAddressResponse`

# Exceptions

`DirectoryServiceAuthenticationFailedException`, `DirectoryUnavailableException`, `EmailAddressInUseException`, `EntityNotFoundException`, `EntityStateException`, `InvalidParameterException`, `MailDomainNotFoundException`, `MailDomainStateException`, `InvalidParameterException`, `OrganizationNotFoundException`, `OrganizationStateException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdatePrimaryEmailAddress)
"""
@inline update_primary_email_address(aws::AWSConfig=default_aws_config(); args...) = update_primary_email_address(aws, args)

@inline update_primary_email_address(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "UpdatePrimaryEmailAddress", args)

@inline update_primary_email_address(args) = update_primary_email_address(default_aws_config(), args)


"""
    using AWSSDK.WorkMail.update_resource
    update_resource([::AWSConfig], arguments::Dict)
    update_resource([::AWSConfig]; OrganizationId=, ResourceId=, <keyword arguments>)

    using AWSCore.Services.workmail
    workmail([::AWSConfig], "UpdateResource", arguments::Dict)
    workmail([::AWSConfig], "UpdateResource", OrganizationId=, ResourceId=, <keyword arguments>)

# UpdateResource Operation

Updates data for the resource. It must be preceded by a describe call in order to have the latest information. The dataset in the request should be the one expected when performing another describe call.

# Arguments

## `OrganizationId = ::String` -- *Required*
The identifier associated with the organization for which the resource is updated.


## `ResourceId = ::String` -- *Required*
The identifier of the resource to be updated.


## `Name = ::String`
The name of the resource to be updated.


## `BookingOptions = [ ... ]`
The resource's booking options to be updated.
```
 BookingOptions = [
        "AutoAcceptRequests" =>  ::Bool,
        "AutoDeclineRecurringRequests" =>  ::Bool,
        "AutoDeclineConflictingRequests" =>  ::Bool
    ]
```



# Returns

`UpdateResourceResponse`

# Exceptions

`DirectoryUnavailableException`, `EntityNotFoundException`, `EntityStateException`, `InvalidConfigurationException`, `EmailAddressInUseException`, `MailDomainNotFoundException`, `MailDomainStateException`, `NameAvailabilityException`, `OrganizationNotFoundException` or `OrganizationStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdateResource)
"""
@inline update_resource(aws::AWSConfig=default_aws_config(); args...) = update_resource(aws, args)

@inline update_resource(aws::AWSConfig, args) = AWSCore.Services.workmail(aws, "UpdateResource", args)

@inline update_resource(args) = update_resource(default_aws_config(), args)




end # module WorkMail


#==============================================================================#
# End of file
#==============================================================================#
