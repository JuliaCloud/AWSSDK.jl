#==============================================================================#
# Connect.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/connect-2017-08-08.normal.json
#==============================================================================#

__precompile__()

module Connect

using AWSCore


"""
    using AWSSDK.Connect.create_user
    create_user([::AWSConfig], arguments::Dict)
    create_user([::AWSConfig]; Username=, PhoneConfig=, SecurityProfileIds=, RoutingProfileId=, InstanceId=, <keyword arguments>)

    using AWSCore.Services.connect
    connect([::AWSConfig], "PUT", "/users/{InstanceId}", arguments::Dict)
    connect([::AWSConfig], "PUT", "/users/{InstanceId}", Username=, PhoneConfig=, SecurityProfileIds=, RoutingProfileId=, InstanceId=, <keyword arguments>)

# CreateUser Operation

Creates a new user account in your Amazon Connect instance.

# Arguments

## `Username = ::String` -- *Required*
The user name in Amazon Connect for the user to create.


## `Password = ::String`
The password for the user account to create. This is required if you are using Amazon Connect for identity management. If you are using SAML for identity management and include this parameter, an `InvalidRequestException` is returned.


## `IdentityInfo = [ ... ]`
Information about the user, including email address, first name, and last name.
```
 IdentityInfo = [
        "FirstName" =>  ::String,
        "LastName" =>  ::String,
        "Email" =>  ::String
    ]
```

## `PhoneConfig = [ ... ]` -- *Required*
Specifies the phone settings for the user, including AfterContactWorkTimeLimit, AutoAccept, DeskPhoneNumber, and PhoneType.
```
 PhoneConfig = [
        "PhoneType" => <required> "SOFT_PHONE" or "DESK_PHONE",
        "AutoAccept" =>  ::Bool,
        "AfterContactWorkTimeLimit" =>  ::Int,
        "DeskPhoneNumber" =>  ::String
    ]
```

## `DirectoryUserId = ::String`
The unique identifier for the user account in the directory service directory used for identity management. If Amazon Connect is unable to access the existing directory, you can use the `DirectoryUserId` to authenticate users. If you include the parameter, it is assumed that Amazon Connect cannot access the directory. If the parameter is not included, the UserIdentityInfo is used to authenticate users from your existing directory.

This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an `InvalidRequestException` is returned.


## `SecurityProfileIds = [::String, ...]` -- *Required*
The unique identifier of the security profile to assign to the user created.


## `RoutingProfileId = ::String` -- *Required*
The unique identifier for the routing profile to assign to the user created.


## `HierarchyGroupId = ::String`
The unique identifier for the hierarchy group to assign to the user created.


## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.




# Returns

`CreateUserResponse`

# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `LimitExceededException`, `DuplicateResourceException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUser)
"""
@inline create_user(aws::AWSConfig=default_aws_config(); args...) = create_user(aws, args)

@inline create_user(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "PUT", "/users/{InstanceId}", args)

@inline create_user(args) = create_user(default_aws_config(), args)


"""
    using AWSSDK.Connect.delete_user
    delete_user([::AWSConfig], arguments::Dict)
    delete_user([::AWSConfig]; InstanceId=, UserId=)

    using AWSCore.Services.connect
    connect([::AWSConfig], "DELETE", "/users/{InstanceId}/{UserId}", arguments::Dict)
    connect([::AWSConfig], "DELETE", "/users/{InstanceId}/{UserId}", InstanceId=, UserId=)

# DeleteUser Operation

Deletes a user account from Amazon Connect.

# Arguments

## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.


## `UserId = ::String` -- *Required*
The unique identifier of the user to delete.




# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUser)
"""
@inline delete_user(aws::AWSConfig=default_aws_config(); args...) = delete_user(aws, args)

@inline delete_user(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "DELETE", "/users/{InstanceId}/{UserId}", args)

@inline delete_user(args) = delete_user(default_aws_config(), args)


"""
    using AWSSDK.Connect.describe_user
    describe_user([::AWSConfig], arguments::Dict)
    describe_user([::AWSConfig]; UserId=, InstanceId=)

    using AWSCore.Services.connect
    connect([::AWSConfig], "GET", "/users/{InstanceId}/{UserId}", arguments::Dict)
    connect([::AWSConfig], "GET", "/users/{InstanceId}/{UserId}", UserId=, InstanceId=)

# DescribeUser Operation

Returns a `User` object that contains information about the user account specified by the `UserId`.

# Arguments

## `UserId = ::String` -- *Required*
Unique identifier for the user account to return.


## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.




# Returns

`DescribeUserResponse`

# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUser)
"""
@inline describe_user(aws::AWSConfig=default_aws_config(); args...) = describe_user(aws, args)

@inline describe_user(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "GET", "/users/{InstanceId}/{UserId}", args)

@inline describe_user(args) = describe_user(default_aws_config(), args)


"""
    using AWSSDK.Connect.describe_user_hierarchy_group
    describe_user_hierarchy_group([::AWSConfig], arguments::Dict)
    describe_user_hierarchy_group([::AWSConfig]; HierarchyGroupId=, InstanceId=)

    using AWSCore.Services.connect
    connect([::AWSConfig], "GET", "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}", arguments::Dict)
    connect([::AWSConfig], "GET", "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}", HierarchyGroupId=, InstanceId=)

# DescribeUserHierarchyGroup Operation

Returns a `HierarchyGroup` object that includes information about a hierarchy group in your instance.

# Arguments

## `HierarchyGroupId = ::String` -- *Required*
The identifier for the hierarchy group to return.


## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.




# Returns

`DescribeUserHierarchyGroupResponse`

# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyGroup)
"""
@inline describe_user_hierarchy_group(aws::AWSConfig=default_aws_config(); args...) = describe_user_hierarchy_group(aws, args)

@inline describe_user_hierarchy_group(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "GET", "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}", args)

@inline describe_user_hierarchy_group(args) = describe_user_hierarchy_group(default_aws_config(), args)


"""
    using AWSSDK.Connect.describe_user_hierarchy_structure
    describe_user_hierarchy_structure([::AWSConfig], arguments::Dict)
    describe_user_hierarchy_structure([::AWSConfig]; InstanceId=)

    using AWSCore.Services.connect
    connect([::AWSConfig], "GET", "/user-hierarchy-structure/{InstanceId}", arguments::Dict)
    connect([::AWSConfig], "GET", "/user-hierarchy-structure/{InstanceId}", InstanceId=)

# DescribeUserHierarchyStructure Operation

Returns a `HiearchyGroupStructure` object, which contains data about the levels in the agent hierarchy.

# Arguments

## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.




# Returns

`DescribeUserHierarchyStructureResponse`

# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyStructure)
"""
@inline describe_user_hierarchy_structure(aws::AWSConfig=default_aws_config(); args...) = describe_user_hierarchy_structure(aws, args)

@inline describe_user_hierarchy_structure(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "GET", "/user-hierarchy-structure/{InstanceId}", args)

@inline describe_user_hierarchy_structure(args) = describe_user_hierarchy_structure(default_aws_config(), args)


"""
    using AWSSDK.Connect.get_federation_token
    get_federation_token([::AWSConfig], arguments::Dict)
    get_federation_token([::AWSConfig]; InstanceId=)

    using AWSCore.Services.connect
    connect([::AWSConfig], "GET", "/user/federate/{InstanceId}", arguments::Dict)
    connect([::AWSConfig], "GET", "/user/federate/{InstanceId}", InstanceId=)

# GetFederationToken Operation

Retrieves a token for federation.

# Arguments

## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.




# Returns

`GetFederationTokenResponse`

# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `UserNotFoundException`, `InternalServiceException` or `DuplicateResourceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFederationToken)
"""
@inline get_federation_token(aws::AWSConfig=default_aws_config(); args...) = get_federation_token(aws, args)

@inline get_federation_token(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "GET", "/user/federate/{InstanceId}", args)

@inline get_federation_token(args) = get_federation_token(default_aws_config(), args)


"""
    using AWSSDK.Connect.list_routing_profiles
    list_routing_profiles([::AWSConfig], arguments::Dict)
    list_routing_profiles([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.connect
    connect([::AWSConfig], "GET", "/routing-profiles-summary/{InstanceId}", arguments::Dict)
    connect([::AWSConfig], "GET", "/routing-profiles-summary/{InstanceId}", InstanceId=, <keyword arguments>)

# ListRoutingProfiles Operation

Returns an array of `RoutingProfileSummary` objects that includes information about the routing profiles in your instance.

# Arguments

## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.


## `nextToken = ::String`
The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.


## `maxResults = ::Int`
The maximum number of routing profiles to return in the response.




# Returns

`ListRoutingProfilesResponse`

# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfiles)
"""
@inline list_routing_profiles(aws::AWSConfig=default_aws_config(); args...) = list_routing_profiles(aws, args)

@inline list_routing_profiles(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "GET", "/routing-profiles-summary/{InstanceId}", args)

@inline list_routing_profiles(args) = list_routing_profiles(default_aws_config(), args)


"""
    using AWSSDK.Connect.list_security_profiles
    list_security_profiles([::AWSConfig], arguments::Dict)
    list_security_profiles([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.connect
    connect([::AWSConfig], "GET", "/security-profiles-summary/{InstanceId}", arguments::Dict)
    connect([::AWSConfig], "GET", "/security-profiles-summary/{InstanceId}", InstanceId=, <keyword arguments>)

# ListSecurityProfiles Operation

Returns an array of SecurityProfileSummary objects that contain information about the security profiles in your instance, including the ARN, Id, and Name of the security profile.

# Arguments

## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.


## `nextToken = ::String`
The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.


## `maxResults = ::Int`
The maximum number of security profiles to return.




# Returns

`ListSecurityProfilesResponse`

# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfiles)
"""
@inline list_security_profiles(aws::AWSConfig=default_aws_config(); args...) = list_security_profiles(aws, args)

@inline list_security_profiles(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "GET", "/security-profiles-summary/{InstanceId}", args)

@inline list_security_profiles(args) = list_security_profiles(default_aws_config(), args)


"""
    using AWSSDK.Connect.list_user_hierarchy_groups
    list_user_hierarchy_groups([::AWSConfig], arguments::Dict)
    list_user_hierarchy_groups([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.connect
    connect([::AWSConfig], "GET", "/user-hierarchy-groups-summary/{InstanceId}", arguments::Dict)
    connect([::AWSConfig], "GET", "/user-hierarchy-groups-summary/{InstanceId}", InstanceId=, <keyword arguments>)

# ListUserHierarchyGroups Operation

Returns a `UserHierarchyGroupSummaryList`, which is an array of `HierarchyGroupSummary` objects that contain information about the hierarchy groups in your instance.

# Arguments

## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.


## `nextToken = ::String`
The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.


## `maxResults = ::Int`
The maximum number of hierarchy groups to return.




# Returns

`ListUserHierarchyGroupsResponse`

# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUserHierarchyGroups)
"""
@inline list_user_hierarchy_groups(aws::AWSConfig=default_aws_config(); args...) = list_user_hierarchy_groups(aws, args)

@inline list_user_hierarchy_groups(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "GET", "/user-hierarchy-groups-summary/{InstanceId}", args)

@inline list_user_hierarchy_groups(args) = list_user_hierarchy_groups(default_aws_config(), args)


"""
    using AWSSDK.Connect.list_users
    list_users([::AWSConfig], arguments::Dict)
    list_users([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.connect
    connect([::AWSConfig], "GET", "/users-summary/{InstanceId}", arguments::Dict)
    connect([::AWSConfig], "GET", "/users-summary/{InstanceId}", InstanceId=, <keyword arguments>)

# ListUsers Operation

Returns a `UserSummaryList`, which is an array of `UserSummary` objects.

# Arguments

## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.


## `nextToken = ::String`
The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.


## `maxResults = ::Int`
The maximum number of results to return in the response.




# Returns

`ListUsersResponse`

# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUsers)
"""
@inline list_users(aws::AWSConfig=default_aws_config(); args...) = list_users(aws, args)

@inline list_users(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "GET", "/users-summary/{InstanceId}", args)

@inline list_users(args) = list_users(default_aws_config(), args)


"""
    using AWSSDK.Connect.start_outbound_voice_contact
    start_outbound_voice_contact([::AWSConfig], arguments::Dict)
    start_outbound_voice_contact([::AWSConfig]; DestinationPhoneNumber=, ContactFlowId=, InstanceId=, <keyword arguments>)

    using AWSCore.Services.connect
    connect([::AWSConfig], "PUT", "/contact/outbound-voice", arguments::Dict)
    connect([::AWSConfig], "PUT", "/contact/outbound-voice", DestinationPhoneNumber=, ContactFlowId=, InstanceId=, <keyword arguments>)

# StartOutboundVoiceContact Operation

The `StartOutboundVoiceContact` operation initiates a contact flow to place an outbound call to a customer.

There is a throttling limit placed on usage of the API that includes a RateLimit of 2 per second, and a BurstLimit of 5 per second.

If you are using an IAM account, it must have permission to the `connect:StartOutboundVoiceContact` action.

# Arguments

## `DestinationPhoneNumber = ::String` -- *Required*
The phone number of the customer in E.164 format.


## `ContactFlowId = ::String` -- *Required*
The identifier for the contact flow to connect the outbound call to.

To find the `ContactFlowId`, open the contact flow you want to use in the Amazon Connect contact flow editor. The ID for the contact flow is displayed in the address bar as part of the URL. For example, the contact flow ID is the set of characters at the end of the URL, after 'contact-flow/' such as `78ea8fd5-2659-4f2b-b528-699760ccfc1b`.


## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.


## `ClientToken = ::String`
A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. The token is valid for 7 days after creation. If a contact is already started, the contact ID is returned. If the contact is disconnected, a new contact is started.


## `SourcePhoneNumber = ::String`
The phone number, in E.164 format, associated with your Amazon Connect instance to use for the outbound call.


## `QueueId = ::String`
The queue to add the call to. If you specify a queue, the phone displayed for caller ID is the phone number specified in the queue. If you do not specify a queue, the queue used will be the queue defined in the contact flow.

To find the `QueueId`, open the queue you want to use in the Amazon Connect Queue editor. The ID for the queue is displayed in the address bar as part of the URL. For example, the queue ID is the set of characters at the end of the URL, after 'queue/' such as `queue/aeg40574-2d01-51c3-73d6-bf8624d2168c`.


## `Attributes = ::Dict{String,String}`
Specify a custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in contact flows just like any other contact attributes.

There can be up to 32,768 UTF-8 bytes across all key-value pairs. Attribute keys can include only alphanumeric, dash, and underscore characters.

For example, if you want play a greeting when the customer answers the call, you can pass the customer name in attributes similar to the following:




# Returns

`StartOutboundVoiceContactResponse`

# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `InternalServiceException`, `LimitExceededException`, `DestinationNotAllowedException` or `OutboundContactNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundVoiceContact)
"""
@inline start_outbound_voice_contact(aws::AWSConfig=default_aws_config(); args...) = start_outbound_voice_contact(aws, args)

@inline start_outbound_voice_contact(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "PUT", "/contact/outbound-voice", args)

@inline start_outbound_voice_contact(args) = start_outbound_voice_contact(default_aws_config(), args)


"""
    using AWSSDK.Connect.stop_contact
    stop_contact([::AWSConfig], arguments::Dict)
    stop_contact([::AWSConfig]; ContactId=, InstanceId=)

    using AWSCore.Services.connect
    connect([::AWSConfig], "POST", "/contact/stop", arguments::Dict)
    connect([::AWSConfig], "POST", "/contact/stop", ContactId=, InstanceId=)

# StopContact Operation

Ends the contact initiated by the `StartOutboundVoiceContact` operation.

If you are using an IAM account, it must have permission to the `connect:StopContact` action.

# Arguments

## `ContactId = ::String` -- *Required*
The unique identifier of the contact to end.


## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.




# Returns

`StopContactResponse`

# Exceptions

`InvalidRequestException`, `ContactNotFoundException`, `InvalidParameterException`, `ResourceNotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContact)
"""
@inline stop_contact(aws::AWSConfig=default_aws_config(); args...) = stop_contact(aws, args)

@inline stop_contact(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "POST", "/contact/stop", args)

@inline stop_contact(args) = stop_contact(default_aws_config(), args)


"""
    using AWSSDK.Connect.update_user_hierarchy
    update_user_hierarchy([::AWSConfig], arguments::Dict)
    update_user_hierarchy([::AWSConfig]; UserId=, InstanceId=, <keyword arguments>)

    using AWSCore.Services.connect
    connect([::AWSConfig], "POST", "/users/{InstanceId}/{UserId}/hierarchy", arguments::Dict)
    connect([::AWSConfig], "POST", "/users/{InstanceId}/{UserId}/hierarchy", UserId=, InstanceId=, <keyword arguments>)

# UpdateUserHierarchy Operation

Assigns the specified hierarchy group to the user.

# Arguments

## `HierarchyGroupId = ::String`
The identifier for the hierarchy group to assign to the user.


## `UserId = ::String` -- *Required*
The identifier of the user account to assign the hierarchy group to.


## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.




# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchy)
"""
@inline update_user_hierarchy(aws::AWSConfig=default_aws_config(); args...) = update_user_hierarchy(aws, args)

@inline update_user_hierarchy(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "POST", "/users/{InstanceId}/{UserId}/hierarchy", args)

@inline update_user_hierarchy(args) = update_user_hierarchy(default_aws_config(), args)


"""
    using AWSSDK.Connect.update_user_identity_info
    update_user_identity_info([::AWSConfig], arguments::Dict)
    update_user_identity_info([::AWSConfig]; IdentityInfo=, UserId=, InstanceId=)

    using AWSCore.Services.connect
    connect([::AWSConfig], "POST", "/users/{InstanceId}/{UserId}/identity-info", arguments::Dict)
    connect([::AWSConfig], "POST", "/users/{InstanceId}/{UserId}/identity-info", IdentityInfo=, UserId=, InstanceId=)

# UpdateUserIdentityInfo Operation

Updates the identity information for the specified user in a `UserIdentityInfo` object, including email, first name, and last name.

# Arguments

## `IdentityInfo = [ ... ]` -- *Required*
A `UserIdentityInfo` object.
```
 IdentityInfo = [
        "FirstName" =>  ::String,
        "LastName" =>  ::String,
        "Email" =>  ::String
    ]
```

## `UserId = ::String` -- *Required*
The identifier for the user account to update identity information for.


## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.




# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserIdentityInfo)
"""
@inline update_user_identity_info(aws::AWSConfig=default_aws_config(); args...) = update_user_identity_info(aws, args)

@inline update_user_identity_info(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "POST", "/users/{InstanceId}/{UserId}/identity-info", args)

@inline update_user_identity_info(args) = update_user_identity_info(default_aws_config(), args)


"""
    using AWSSDK.Connect.update_user_phone_config
    update_user_phone_config([::AWSConfig], arguments::Dict)
    update_user_phone_config([::AWSConfig]; PhoneConfig=, UserId=, InstanceId=)

    using AWSCore.Services.connect
    connect([::AWSConfig], "POST", "/users/{InstanceId}/{UserId}/phone-config", arguments::Dict)
    connect([::AWSConfig], "POST", "/users/{InstanceId}/{UserId}/phone-config", PhoneConfig=, UserId=, InstanceId=)

# UpdateUserPhoneConfig Operation

Updates the phone configuration settings in the `UserPhoneConfig` object for the specified user.

# Arguments

## `PhoneConfig = [ ... ]` -- *Required*
A `UserPhoneConfig` object that contains settings for `AfterContactWorkTimeLimit`, `AutoAccept`, `DeskPhoneNumber`, and `PhoneType` to assign to the user.
```
 PhoneConfig = [
        "PhoneType" => <required> "SOFT_PHONE" or "DESK_PHONE",
        "AutoAccept" =>  ::Bool,
        "AfterContactWorkTimeLimit" =>  ::Int,
        "DeskPhoneNumber" =>  ::String
    ]
```

## `UserId = ::String` -- *Required*
The identifier for the user account to change phone settings for.


## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.




# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserPhoneConfig)
"""
@inline update_user_phone_config(aws::AWSConfig=default_aws_config(); args...) = update_user_phone_config(aws, args)

@inline update_user_phone_config(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "POST", "/users/{InstanceId}/{UserId}/phone-config", args)

@inline update_user_phone_config(args) = update_user_phone_config(default_aws_config(), args)


"""
    using AWSSDK.Connect.update_user_routing_profile
    update_user_routing_profile([::AWSConfig], arguments::Dict)
    update_user_routing_profile([::AWSConfig]; RoutingProfileId=, UserId=, InstanceId=)

    using AWSCore.Services.connect
    connect([::AWSConfig], "POST", "/users/{InstanceId}/{UserId}/routing-profile", arguments::Dict)
    connect([::AWSConfig], "POST", "/users/{InstanceId}/{UserId}/routing-profile", RoutingProfileId=, UserId=, InstanceId=)

# UpdateUserRoutingProfile Operation

Assigns the specified routing profile to a user.

# Arguments

## `RoutingProfileId = ::String` -- *Required*
The identifier of the routing profile to assign to the user.


## `UserId = ::String` -- *Required*
The identifier for the user account to assign the routing profile to.


## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.




# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserRoutingProfile)
"""
@inline update_user_routing_profile(aws::AWSConfig=default_aws_config(); args...) = update_user_routing_profile(aws, args)

@inline update_user_routing_profile(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "POST", "/users/{InstanceId}/{UserId}/routing-profile", args)

@inline update_user_routing_profile(args) = update_user_routing_profile(default_aws_config(), args)


"""
    using AWSSDK.Connect.update_user_security_profiles
    update_user_security_profiles([::AWSConfig], arguments::Dict)
    update_user_security_profiles([::AWSConfig]; SecurityProfileIds=, UserId=, InstanceId=)

    using AWSCore.Services.connect
    connect([::AWSConfig], "POST", "/users/{InstanceId}/{UserId}/security-profiles", arguments::Dict)
    connect([::AWSConfig], "POST", "/users/{InstanceId}/{UserId}/security-profiles", SecurityProfileIds=, UserId=, InstanceId=)

# UpdateUserSecurityProfiles Operation

Update the security profiles assigned to the user.

# Arguments

## `SecurityProfileIds = [::String, ...]` -- *Required*
The identifiers for the security profiles to assign to the user.


## `UserId = ::String` -- *Required*
The identifier of the user account to assign the security profiles.


## `InstanceId = ::String` -- *Required*
The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.




# Exceptions

`InvalidRequestException`, `InvalidParameterException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserSecurityProfiles)
"""
@inline update_user_security_profiles(aws::AWSConfig=default_aws_config(); args...) = update_user_security_profiles(aws, args)

@inline update_user_security_profiles(aws::AWSConfig, args) = AWSCore.Services.connect(aws, "POST", "/users/{InstanceId}/{UserId}/security-profiles", args)

@inline update_user_security_profiles(args) = update_user_security_profiles(default_aws_config(), args)




end # module Connect


#==============================================================================#
# End of file
#==============================================================================#
