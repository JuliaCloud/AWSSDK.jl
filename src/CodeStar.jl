#==============================================================================#
# CodeStar.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/codestar-2017-04-19.normal.json
#==============================================================================#

__precompile__()

module CodeStar

using AWSCore


"""
    using AWSSDK.CodeStar.associate_team_member
    associate_team_member([::AWSConfig], arguments::Dict)
    associate_team_member([::AWSConfig]; projectId=, userArn=, projectRole=, <keyword arguments>)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "AssociateTeamMember", arguments::Dict)
    codestar([::AWSConfig], "AssociateTeamMember", projectId=, userArn=, projectRole=, <keyword arguments>)

# AssociateTeamMember Operation

Adds an IAM user to the team for an AWS CodeStar project.

# Arguments

## `projectId = ::String` -- *Required*
The ID of the project to which you will add the IAM user.


## `clientRequestToken = ::String`
A user- or system-generated token that identifies the entity that requested the team member association to the project. This token can be used to repeat the request.


## `userArn = ::String` -- *Required*
The Amazon Resource Name (ARN) for the IAM user you want to add to the AWS CodeStar project.


## `projectRole = ::String` -- *Required*
The AWS CodeStar project role that will apply to this user. This role determines what actions a user can take in an AWS CodeStar project.


## `remoteAccessAllowed = ::Bool`
Whether the team member is allowed to use an SSH public/private key pair to remotely access project resources, for example Amazon EC2 instances.




# Returns

`AssociateTeamMemberResult`

# Exceptions

`LimitExceededException`, `ProjectNotFoundException`, `TeamMemberAlreadyAssociatedException`, `ValidationException`, `InvalidServiceRoleException`, `ProjectConfigurationException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/AssociateTeamMember)
"""
@inline associate_team_member(aws::AWSConfig=default_aws_config(); args...) = associate_team_member(aws, args)

@inline associate_team_member(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "AssociateTeamMember", args)

@inline associate_team_member(args) = associate_team_member(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.create_project
    create_project([::AWSConfig], arguments::Dict)
    create_project([::AWSConfig]; name=, id=, <keyword arguments>)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "CreateProject", arguments::Dict)
    codestar([::AWSConfig], "CreateProject", name=, id=, <keyword arguments>)

# CreateProject Operation

Reserved for future use. To create a project, use the AWS CodeStar console.

# Arguments

## `name = ::String` -- *Required*
Reserved for future use.


## `id = ::String` -- *Required*
Reserved for future use.


## `description = ::String`
Reserved for future use.


## `clientRequestToken = ::String`
Reserved for future use.




# Returns

`CreateProjectResult`

# Exceptions

`ProjectAlreadyExistsException`, `LimitExceededException`, `ValidationException`, `ProjectCreationFailedException`, `InvalidServiceRoleException`, `ProjectConfigurationException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/CreateProject)
"""
@inline create_project(aws::AWSConfig=default_aws_config(); args...) = create_project(aws, args)

@inline create_project(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "CreateProject", args)

@inline create_project(args) = create_project(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.create_user_profile
    create_user_profile([::AWSConfig], arguments::Dict)
    create_user_profile([::AWSConfig]; userArn=, displayName=, emailAddress=, <keyword arguments>)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "CreateUserProfile", arguments::Dict)
    codestar([::AWSConfig], "CreateUserProfile", userArn=, displayName=, emailAddress=, <keyword arguments>)

# CreateUserProfile Operation

Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.

# Arguments

## `userArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the user in IAM.


## `displayName = ::String` -- *Required*
The name that will be displayed as the friendly name for the user in AWS CodeStar.


## `emailAddress = ::String` -- *Required*
The email address that will be displayed as part of the user's profile in AWS CodeStar.


## `sshPublicKey = ::String`
The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.




# Returns

`CreateUserProfileResult`

# Exceptions

`UserProfileAlreadyExistsException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/CreateUserProfile)
"""
@inline create_user_profile(aws::AWSConfig=default_aws_config(); args...) = create_user_profile(aws, args)

@inline create_user_profile(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "CreateUserProfile", args)

@inline create_user_profile(args) = create_user_profile(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.delete_project
    delete_project([::AWSConfig], arguments::Dict)
    delete_project([::AWSConfig]; id=, <keyword arguments>)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "DeleteProject", arguments::Dict)
    codestar([::AWSConfig], "DeleteProject", id=, <keyword arguments>)

# DeleteProject Operation

Deletes a project, including project resources. Does not delete users associated with the project, but does delete the IAM roles that allowed access to the project.

# Arguments

## `id = ::String` -- *Required*
The ID of the project to be deleted in AWS CodeStar.


## `clientRequestToken = ::String`
A user- or system-generated token that identifies the entity that requested project deletion. This token can be used to repeat the request.


## `deleteStack = ::Bool`
Whether to send a delete request for the primary stack in AWS CloudFormation originally used to generate the project and its resources. This option will delete all AWS resources for the project (except for any buckets in Amazon S3) as well as deleting the project itself. Recommended for most use cases.




# Returns

`DeleteProjectResult`

# Exceptions

`ConcurrentModificationException`, `ValidationException` or `InvalidServiceRoleException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DeleteProject)
"""
@inline delete_project(aws::AWSConfig=default_aws_config(); args...) = delete_project(aws, args)

@inline delete_project(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "DeleteProject", args)

@inline delete_project(args) = delete_project(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.delete_user_profile
    delete_user_profile([::AWSConfig], arguments::Dict)
    delete_user_profile([::AWSConfig]; userArn=)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "DeleteUserProfile", arguments::Dict)
    codestar([::AWSConfig], "DeleteUserProfile", userArn=)

# DeleteUserProfile Operation

Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address. It does not delete the history of that user, for example the history of commits made by that user.

# Arguments

## `userArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the user to delete from AWS CodeStar.




# Returns

`DeleteUserProfileResult`

# Exceptions

`ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DeleteUserProfile)
"""
@inline delete_user_profile(aws::AWSConfig=default_aws_config(); args...) = delete_user_profile(aws, args)

@inline delete_user_profile(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "DeleteUserProfile", args)

@inline delete_user_profile(args) = delete_user_profile(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.describe_project
    describe_project([::AWSConfig], arguments::Dict)
    describe_project([::AWSConfig]; id=)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "DescribeProject", arguments::Dict)
    codestar([::AWSConfig], "DescribeProject", id=)

# DescribeProject Operation

Describes a project and its resources.

# Arguments

## `id = ::String` -- *Required*
The ID of the project.




# Returns

`DescribeProjectResult`

# Exceptions

`ProjectNotFoundException`, `ValidationException`, `InvalidServiceRoleException`, `ProjectConfigurationException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DescribeProject)
"""
@inline describe_project(aws::AWSConfig=default_aws_config(); args...) = describe_project(aws, args)

@inline describe_project(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "DescribeProject", args)

@inline describe_project(args) = describe_project(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.describe_user_profile
    describe_user_profile([::AWSConfig], arguments::Dict)
    describe_user_profile([::AWSConfig]; userArn=)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "DescribeUserProfile", arguments::Dict)
    codestar([::AWSConfig], "DescribeUserProfile", userArn=)

# DescribeUserProfile Operation

Describes a user in AWS CodeStar and the user attributes across all projects.

# Arguments

## `userArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the user.




# Returns

`DescribeUserProfileResult`

# Exceptions

`UserProfileNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DescribeUserProfile)
"""
@inline describe_user_profile(aws::AWSConfig=default_aws_config(); args...) = describe_user_profile(aws, args)

@inline describe_user_profile(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "DescribeUserProfile", args)

@inline describe_user_profile(args) = describe_user_profile(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.disassociate_team_member
    disassociate_team_member([::AWSConfig], arguments::Dict)
    disassociate_team_member([::AWSConfig]; projectId=, userArn=)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "DisassociateTeamMember", arguments::Dict)
    codestar([::AWSConfig], "DisassociateTeamMember", projectId=, userArn=)

# DisassociateTeamMember Operation

Removes a user from a project. Removing a user from a project also removes the IAM policies from that user that allowed access to the project and its resources. Disassociating a team member does not remove that user's profile from AWS CodeStar. It does not remove the user from IAM.

# Arguments

## `projectId = ::String` -- *Required*
The ID of the AWS CodeStar project from which you want to remove a team member.


## `userArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM user or group whom you want to remove from the project.




# Returns

`DisassociateTeamMemberResult`

# Exceptions

`ProjectNotFoundException`, `ValidationException`, `InvalidServiceRoleException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DisassociateTeamMember)
"""
@inline disassociate_team_member(aws::AWSConfig=default_aws_config(); args...) = disassociate_team_member(aws, args)

@inline disassociate_team_member(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "DisassociateTeamMember", args)

@inline disassociate_team_member(args) = disassociate_team_member(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.list_projects
    list_projects([::AWSConfig], arguments::Dict)
    list_projects([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "ListProjects", arguments::Dict)
    codestar([::AWSConfig], "ListProjects", <keyword arguments>)

# ListProjects Operation

Lists all projects in AWS CodeStar associated with your AWS account.

# Arguments

## `nextToken = ::String`
The continuation token to be used to return the next set of results, if the results cannot be returned in one response.


## `maxResults = ::Int`
The maximum amount of data that can be contained in a single set of results.




# Returns

`ListProjectsResult`

# Exceptions

`InvalidNextTokenException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListProjects)
"""
@inline list_projects(aws::AWSConfig=default_aws_config(); args...) = list_projects(aws, args)

@inline list_projects(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "ListProjects", args)

@inline list_projects(args) = list_projects(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.list_resources
    list_resources([::AWSConfig], arguments::Dict)
    list_resources([::AWSConfig]; projectId=, <keyword arguments>)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "ListResources", arguments::Dict)
    codestar([::AWSConfig], "ListResources", projectId=, <keyword arguments>)

# ListResources Operation

Lists resources associated with a project in AWS CodeStar.

# Arguments

## `projectId = ::String` -- *Required*
The ID of the project.


## `nextToken = ::String`
The continuation token for the next set of results, if the results cannot be returned in one response.


## `maxResults = ::Int`
The maximum amount of data that can be contained in a single set of results.




# Returns

`ListResourcesResult`

# Exceptions

`ProjectNotFoundException`, `InvalidNextTokenException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListResources)
"""
@inline list_resources(aws::AWSConfig=default_aws_config(); args...) = list_resources(aws, args)

@inline list_resources(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "ListResources", args)

@inline list_resources(args) = list_resources(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.list_tags_for_project
    list_tags_for_project([::AWSConfig], arguments::Dict)
    list_tags_for_project([::AWSConfig]; id=, <keyword arguments>)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "ListTagsForProject", arguments::Dict)
    codestar([::AWSConfig], "ListTagsForProject", id=, <keyword arguments>)

# ListTagsForProject Operation

Gets the tags for a project.

# Arguments

## `id = ::String` -- *Required*
The ID of the project to get tags for.


## `nextToken = ::String`
Reserved for future use.


## `maxResults = ::Int`
Reserved for future use.




# Returns

`ListTagsForProjectResult`

# Exceptions

`ProjectNotFoundException`, `ValidationException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListTagsForProject)
"""
@inline list_tags_for_project(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_project(aws, args)

@inline list_tags_for_project(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "ListTagsForProject", args)

@inline list_tags_for_project(args) = list_tags_for_project(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.list_team_members
    list_team_members([::AWSConfig], arguments::Dict)
    list_team_members([::AWSConfig]; projectId=, <keyword arguments>)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "ListTeamMembers", arguments::Dict)
    codestar([::AWSConfig], "ListTeamMembers", projectId=, <keyword arguments>)

# ListTeamMembers Operation

Lists all team members associated with a project.

# Arguments

## `projectId = ::String` -- *Required*
The ID of the project for which you want to list team members.


## `nextToken = ::String`
The continuation token for the next set of results, if the results cannot be returned in one response.


## `maxResults = ::Int`
The maximum number of team members you want returned in a response.




# Returns

`ListTeamMembersResult`

# Exceptions

`ProjectNotFoundException`, `InvalidNextTokenException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListTeamMembers)
"""
@inline list_team_members(aws::AWSConfig=default_aws_config(); args...) = list_team_members(aws, args)

@inline list_team_members(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "ListTeamMembers", args)

@inline list_team_members(args) = list_team_members(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.list_user_profiles
    list_user_profiles([::AWSConfig], arguments::Dict)
    list_user_profiles([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "ListUserProfiles", arguments::Dict)
    codestar([::AWSConfig], "ListUserProfiles", <keyword arguments>)

# ListUserProfiles Operation

Lists all the user profiles configured for your AWS account in AWS CodeStar.

# Arguments

## `nextToken = ::String`
The continuation token for the next set of results, if the results cannot be returned in one response.


## `maxResults = ::Int`
The maximum number of results to return in a response.




# Returns

`ListUserProfilesResult`

# Exceptions

`InvalidNextTokenException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListUserProfiles)
"""
@inline list_user_profiles(aws::AWSConfig=default_aws_config(); args...) = list_user_profiles(aws, args)

@inline list_user_profiles(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "ListUserProfiles", args)

@inline list_user_profiles(args) = list_user_profiles(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.tag_project
    tag_project([::AWSConfig], arguments::Dict)
    tag_project([::AWSConfig]; id=, tags=)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "TagProject", arguments::Dict)
    codestar([::AWSConfig], "TagProject", id=, tags=)

# TagProject Operation

Adds tags to a project.

# Arguments

## `id = ::String` -- *Required*
The ID of the project you want to add a tag to.


## `tags = ::Dict{String,String}` -- *Required*
The tags you want to add to the project.




# Returns

`TagProjectResult`

# Exceptions

`ProjectNotFoundException`, `ValidationException`, `LimitExceededException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/TagProject)
"""
@inline tag_project(aws::AWSConfig=default_aws_config(); args...) = tag_project(aws, args)

@inline tag_project(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "TagProject", args)

@inline tag_project(args) = tag_project(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.untag_project
    untag_project([::AWSConfig], arguments::Dict)
    untag_project([::AWSConfig]; id=, tags=)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "UntagProject", arguments::Dict)
    codestar([::AWSConfig], "UntagProject", id=, tags=)

# UntagProject Operation

Removes tags from a project.

# Arguments

## `id = ::String` -- *Required*
The ID of the project to remove tags from.


## `tags = [::String, ...]` -- *Required*
The tags to remove from the project.




# Returns

`UntagProjectResult`

# Exceptions

`ProjectNotFoundException`, `ValidationException`, `LimitExceededException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UntagProject)
"""
@inline untag_project(aws::AWSConfig=default_aws_config(); args...) = untag_project(aws, args)

@inline untag_project(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "UntagProject", args)

@inline untag_project(args) = untag_project(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.update_project
    update_project([::AWSConfig], arguments::Dict)
    update_project([::AWSConfig]; id=, <keyword arguments>)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "UpdateProject", arguments::Dict)
    codestar([::AWSConfig], "UpdateProject", id=, <keyword arguments>)

# UpdateProject Operation

Updates a project in AWS CodeStar.

# Arguments

## `id = ::String` -- *Required*
The ID of the project you want to update.


## `name = ::String`
The name of the project you want to update.


## `description = ::String`
The description of the project, if any.




# Returns

`UpdateProjectResult`

# Exceptions

`ProjectNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UpdateProject)
"""
@inline update_project(aws::AWSConfig=default_aws_config(); args...) = update_project(aws, args)

@inline update_project(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "UpdateProject", args)

@inline update_project(args) = update_project(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.update_team_member
    update_team_member([::AWSConfig], arguments::Dict)
    update_team_member([::AWSConfig]; projectId=, userArn=, <keyword arguments>)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "UpdateTeamMember", arguments::Dict)
    codestar([::AWSConfig], "UpdateTeamMember", projectId=, userArn=, <keyword arguments>)

# UpdateTeamMember Operation

Updates a team member's attributes in an AWS CodeStar project. For example, you can change a team member's role in the project, or change whether they have remote access to project resources.

# Arguments

## `projectId = ::String` -- *Required*
The ID of the project.


## `userArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the user for whom you want to change team membership attributes.


## `projectRole = ::String`
The role assigned to the user in the project. Project roles have different levels of access. For more information, see [Working with Teams](http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html) in the *AWS CodeStar User Guide*.


## `remoteAccessAllowed = ::Bool`
Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile. Even if this is set to True, the user must associate a public key with their profile before the user can access resources.




# Returns

`UpdateTeamMemberResult`

# Exceptions

`LimitExceededException`, `ProjectNotFoundException`, `ValidationException`, `InvalidServiceRoleException`, `ProjectConfigurationException`, `ConcurrentModificationException` or `TeamMemberNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UpdateTeamMember)
"""
@inline update_team_member(aws::AWSConfig=default_aws_config(); args...) = update_team_member(aws, args)

@inline update_team_member(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "UpdateTeamMember", args)

@inline update_team_member(args) = update_team_member(default_aws_config(), args)


"""
    using AWSSDK.CodeStar.update_user_profile
    update_user_profile([::AWSConfig], arguments::Dict)
    update_user_profile([::AWSConfig]; userArn=, <keyword arguments>)

    using AWSCore.Services.codestar
    codestar([::AWSConfig], "UpdateUserProfile", arguments::Dict)
    codestar([::AWSConfig], "UpdateUserProfile", userArn=, <keyword arguments>)

# UpdateUserProfile Operation

Updates a user's profile in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.

# Arguments

## `userArn = ::String` -- *Required*
The name that will be displayed as the friendly name for the user in AWS CodeStar.


## `displayName = ::String`
The name that is displayed as the friendly name for the user in AWS CodeStar.


## `emailAddress = ::String`
The email address that is displayed as part of the user's profile in AWS CodeStar.


## `sshPublicKey = ::String`
The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.




# Returns

`UpdateUserProfileResult`

# Exceptions

`UserProfileNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UpdateUserProfile)
"""
@inline update_user_profile(aws::AWSConfig=default_aws_config(); args...) = update_user_profile(aws, args)

@inline update_user_profile(aws::AWSConfig, args) = AWSCore.Services.codestar(aws, "UpdateUserProfile", args)

@inline update_user_profile(args) = update_user_profile(default_aws_config(), args)




end # module CodeStar


#==============================================================================#
# End of file
#==============================================================================#
