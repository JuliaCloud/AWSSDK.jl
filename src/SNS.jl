#==============================================================================#
# SNS.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/sns-2010-03-31.normal.json
#==============================================================================#

__precompile__()

module SNS

using AWSCore


"""
    using AWSSDK.SNS.add_permission
    add_permission([::AWSConfig], arguments::Dict)
    add_permission([::AWSConfig]; TopicArn=, Label=, AWSAccountId=, ActionName=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "AddPermission", arguments::Dict)
    sns([::AWSConfig], "AddPermission", TopicArn=, Label=, AWSAccountId=, ActionName=)

# AddPermission Operation

Adds a statement to a topic's access control policy, granting access for the specified AWS accounts to the specified actions.

# Arguments

## `TopicArn = ::String` -- *Required*
The ARN of the topic whose access control policy you wish to modify.


## `Label = ::String` -- *Required*
A unique identifier for the new policy statement.


## `AWSAccountId = [::String, ...]` -- *Required*
The AWS account IDs of the users (principals) who will be given access to the specified actions. The users must have AWS accounts, but do not need to be signed up for this service.


## `ActionName = [::String, ...]` -- *Required*
The action you want to allow for the specified principal(s).

Valid values: any Amazon SNS action name.




# Exceptions

`InvalidParameterException`, `InternalErrorException`, `AuthorizationErrorException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/AddPermission)
"""
@inline add_permission(aws::AWSConfig=default_aws_config(); args...) = add_permission(aws, args)

@inline add_permission(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "AddPermission", args)

@inline add_permission(args) = add_permission(default_aws_config(), args)


"""
    using AWSSDK.SNS.check_if_phone_number_is_opted_out
    check_if_phone_number_is_opted_out([::AWSConfig], arguments::Dict)
    check_if_phone_number_is_opted_out([::AWSConfig]; phoneNumber=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "CheckIfPhoneNumberIsOptedOut", arguments::Dict)
    sns([::AWSConfig], "CheckIfPhoneNumberIsOptedOut", phoneNumber=)

# CheckIfPhoneNumberIsOptedOut Operation

Accepts a phone number and indicates whether the phone holder has opted out of receiving SMS messages from your account. You cannot send SMS messages to a number that is opted out.

To resume sending messages, you can opt in the number by using the `OptInPhoneNumber` action.

# Arguments

## `phoneNumber = ::String` -- *Required*
The phone number for which you want to check the opt out status.




# Returns

`CheckIfPhoneNumberIsOptedOutResponse`

# Exceptions

`ThrottledException`, `InternalErrorException`, `AuthorizationErrorException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/CheckIfPhoneNumberIsOptedOut)
"""
@inline check_if_phone_number_is_opted_out(aws::AWSConfig=default_aws_config(); args...) = check_if_phone_number_is_opted_out(aws, args)

@inline check_if_phone_number_is_opted_out(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "CheckIfPhoneNumberIsOptedOut", args)

@inline check_if_phone_number_is_opted_out(args) = check_if_phone_number_is_opted_out(default_aws_config(), args)


"""
    using AWSSDK.SNS.confirm_subscription
    confirm_subscription([::AWSConfig], arguments::Dict)
    confirm_subscription([::AWSConfig]; TopicArn=, Token=, <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "ConfirmSubscription", arguments::Dict)
    sns([::AWSConfig], "ConfirmSubscription", TopicArn=, Token=, <keyword arguments>)

# ConfirmSubscription Operation

Verifies an endpoint owner's intent to receive messages by validating the token sent to the endpoint by an earlier `Subscribe` action. If the token is valid, the action creates a new subscription and returns its Amazon Resource Name (ARN). This call requires an AWS signature only when the `AuthenticateOnUnsubscribe` flag is set to "true".

# Arguments

## `TopicArn = ::String` -- *Required*
The ARN of the topic for which you wish to confirm a subscription.


## `Token = ::String` -- *Required*
Short-lived token sent to an endpoint during the `Subscribe` action.


## `AuthenticateOnUnsubscribe = ::String`
Disallows unauthenticated unsubscribes of the subscription. If the value of this parameter is `true` and the request has an AWS signature, then only the topic owner and the subscription owner can unsubscribe the endpoint. The unsubscribe action requires AWS authentication.




# Returns

`ConfirmSubscriptionResponse`

# Exceptions

`SubscriptionLimitExceededException`, `InvalidParameterException`, `NotFoundException`, `InternalErrorException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/ConfirmSubscription)
"""
@inline confirm_subscription(aws::AWSConfig=default_aws_config(); args...) = confirm_subscription(aws, args)

@inline confirm_subscription(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "ConfirmSubscription", args)

@inline confirm_subscription(args) = confirm_subscription(default_aws_config(), args)


"""
    using AWSSDK.SNS.create_platform_application
    create_platform_application([::AWSConfig], arguments::Dict)
    create_platform_application([::AWSConfig]; Name=, Platform=, Attributes=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "CreatePlatformApplication", arguments::Dict)
    sns([::AWSConfig], "CreatePlatformApplication", Name=, Platform=, Attributes=)

# CreatePlatformApplication Operation

Creates a platform application object for one of the supported push notification services, such as APNS and GCM, to which devices and mobile apps may register. You must specify PlatformPrincipal and PlatformCredential attributes when using the `CreatePlatformApplication` action. The PlatformPrincipal is received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is "SSL certificate". For GCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client id". The PlatformCredential is also received from the notification service. For WNS, PlatformPrincipal is "Package Security Identifier". For MPNS, PlatformPrincipal is "TLS certificate". For Baidu, PlatformPrincipal is "API key".

For APNS/APNS_SANDBOX, PlatformCredential is "private key". For GCM, PlatformCredential is "API key". For ADM, PlatformCredential is "client secret". For WNS, PlatformCredential is "secret key". For MPNS, PlatformCredential is "private key". For Baidu, PlatformCredential is "secret key". The PlatformApplicationArn that is returned when using `CreatePlatformApplication` is then used as an attribute for the `CreatePlatformEndpoint` action. For more information, see [Using Amazon SNS Mobile Push Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html). For more information about obtaining the PlatformPrincipal and PlatformCredential for each of the supported push notification services, see [Getting Started with Apple Push Notification Service](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-apns.html), [Getting Started with Amazon Device Messaging](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-adm.html), [Getting Started with Baidu Cloud Push](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-baidu.html), [Getting Started with Google Cloud Messaging for Android](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-gcm.html), [Getting Started with MPNS](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-mpns.html), or [Getting Started with WNS](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-wns.html).

# Arguments

## `Name = ::String` -- *Required*
Application names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, hyphens, and periods, and must be between 1 and 256 characters long.


## `Platform = ::String` -- *Required*
The following platforms are supported: ADM (Amazon Device Messaging), APNS (Apple Push Notification Service), APNS_SANDBOX, and GCM (Google Cloud Messaging).


## `Attributes = ::Dict{String,String}` -- *Required*
For a list of attributes, see [SetPlatformApplicationAttributes](http://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html)




# Returns

`CreatePlatformApplicationResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/CreatePlatformApplication)
"""
@inline create_platform_application(aws::AWSConfig=default_aws_config(); args...) = create_platform_application(aws, args)

@inline create_platform_application(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "CreatePlatformApplication", args)

@inline create_platform_application(args) = create_platform_application(default_aws_config(), args)


"""
    using AWSSDK.SNS.create_platform_endpoint
    create_platform_endpoint([::AWSConfig], arguments::Dict)
    create_platform_endpoint([::AWSConfig]; PlatformApplicationArn=, Token=, <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "CreatePlatformEndpoint", arguments::Dict)
    sns([::AWSConfig], "CreatePlatformEndpoint", PlatformApplicationArn=, Token=, <keyword arguments>)

# CreatePlatformEndpoint Operation

Creates an endpoint for a device and mobile app on one of the supported push notification services, such as GCM and APNS. `CreatePlatformEndpoint` requires the PlatformApplicationArn that is returned from `CreatePlatformApplication`. The EndpointArn that is returned when using `CreatePlatformEndpoint` can then be used by the `Publish` action to send a message to a mobile app or by the `Subscribe` action for subscription to a topic. The `CreatePlatformEndpoint` action is idempotent, so if the requester already owns an endpoint with the same device token and attributes, that endpoint's ARN is returned without creating a new endpoint. For more information, see [Using Amazon SNS Mobile Push Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

When using `CreatePlatformEndpoint` with Baidu, two attributes must be provided: ChannelId and UserId. The token field must also contain the ChannelId. For more information, see [Creating an Amazon SNS Endpoint for Baidu](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html).

# Arguments

## `PlatformApplicationArn = ::String` -- *Required*
PlatformApplicationArn returned from CreatePlatformApplication is used to create a an endpoint.


## `Token = ::String` -- *Required*
Unique identifier created by the notification service for an app on a device. The specific name for Token will vary, depending on which notification service is being used. For example, when using APNS as the notification service, you need the device token. Alternatively, when using GCM or ADM, the device token equivalent is called the registration ID.


## `CustomUserData = ::String`
Arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.


## `Attributes = ::Dict{String,String}`
For a list of attributes, see [SetEndpointAttributes](http://docs.aws.amazon.com/sns/latest/api/API_SetEndpointAttributes.html).




# Returns

`CreateEndpointResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException`, `AuthorizationErrorException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/CreatePlatformEndpoint)
"""
@inline create_platform_endpoint(aws::AWSConfig=default_aws_config(); args...) = create_platform_endpoint(aws, args)

@inline create_platform_endpoint(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "CreatePlatformEndpoint", args)

@inline create_platform_endpoint(args) = create_platform_endpoint(default_aws_config(), args)


"""
    using AWSSDK.SNS.create_topic
    create_topic([::AWSConfig], arguments::Dict)
    create_topic([::AWSConfig]; Name=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "CreateTopic", arguments::Dict)
    sns([::AWSConfig], "CreateTopic", Name=)

# CreateTopic Operation

Creates a topic to which notifications can be published. Users can create at most 100,000 topics. For more information, see [http://aws.amazon.com/sns](http://aws.amazon.com/sns/). This action is idempotent, so if the requester already owns a topic with the specified name, that topic's ARN is returned without creating a new topic.

# Arguments

## `Name = ::String` -- *Required*
The name of the topic you want to create.

Constraints: Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long.




# Returns

`CreateTopicResponse`

# Exceptions

`InvalidParameterException`, `TopicLimitExceededException`, `InternalErrorException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/CreateTopic)
"""
@inline create_topic(aws::AWSConfig=default_aws_config(); args...) = create_topic(aws, args)

@inline create_topic(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "CreateTopic", args)

@inline create_topic(args) = create_topic(default_aws_config(), args)


"""
    using AWSSDK.SNS.delete_endpoint
    delete_endpoint([::AWSConfig], arguments::Dict)
    delete_endpoint([::AWSConfig]; EndpointArn=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "DeleteEndpoint", arguments::Dict)
    sns([::AWSConfig], "DeleteEndpoint", EndpointArn=)

# DeleteEndpoint Operation

Deletes the endpoint for a device and mobile app from Amazon SNS. This action is idempotent. For more information, see [Using Amazon SNS Mobile Push Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

When you delete an endpoint that is also subscribed to a topic, then you must also unsubscribe the endpoint from the topic.

# Arguments

## `EndpointArn = ::String` -- *Required*
EndpointArn of endpoint to delete.




# Exceptions

`InvalidParameterException`, `InternalErrorException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/DeleteEndpoint)
"""
@inline delete_endpoint(aws::AWSConfig=default_aws_config(); args...) = delete_endpoint(aws, args)

@inline delete_endpoint(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "DeleteEndpoint", args)

@inline delete_endpoint(args) = delete_endpoint(default_aws_config(), args)


"""
    using AWSSDK.SNS.delete_platform_application
    delete_platform_application([::AWSConfig], arguments::Dict)
    delete_platform_application([::AWSConfig]; PlatformApplicationArn=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "DeletePlatformApplication", arguments::Dict)
    sns([::AWSConfig], "DeletePlatformApplication", PlatformApplicationArn=)

# DeletePlatformApplication Operation

Deletes a platform application object for one of the supported push notification services, such as APNS and GCM. For more information, see [Using Amazon SNS Mobile Push Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

# Arguments

## `PlatformApplicationArn = ::String` -- *Required*
PlatformApplicationArn of platform application object to delete.




# Exceptions

`InvalidParameterException`, `InternalErrorException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/DeletePlatformApplication)
"""
@inline delete_platform_application(aws::AWSConfig=default_aws_config(); args...) = delete_platform_application(aws, args)

@inline delete_platform_application(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "DeletePlatformApplication", args)

@inline delete_platform_application(args) = delete_platform_application(default_aws_config(), args)


"""
    using AWSSDK.SNS.delete_topic
    delete_topic([::AWSConfig], arguments::Dict)
    delete_topic([::AWSConfig]; TopicArn=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "DeleteTopic", arguments::Dict)
    sns([::AWSConfig], "DeleteTopic", TopicArn=)

# DeleteTopic Operation

Deletes a topic and all its subscriptions. Deleting a topic might prevent some messages previously sent to the topic from being delivered to subscribers. This action is idempotent, so deleting a topic that does not exist does not result in an error.

# Arguments

## `TopicArn = ::String` -- *Required*
The ARN of the topic you want to delete.




# Exceptions

`InvalidParameterException`, `InternalErrorException`, `AuthorizationErrorException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/DeleteTopic)
"""
@inline delete_topic(aws::AWSConfig=default_aws_config(); args...) = delete_topic(aws, args)

@inline delete_topic(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "DeleteTopic", args)

@inline delete_topic(args) = delete_topic(default_aws_config(), args)


"""
    using AWSSDK.SNS.get_endpoint_attributes
    get_endpoint_attributes([::AWSConfig], arguments::Dict)
    get_endpoint_attributes([::AWSConfig]; EndpointArn=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "GetEndpointAttributes", arguments::Dict)
    sns([::AWSConfig], "GetEndpointAttributes", EndpointArn=)

# GetEndpointAttributes Operation

Retrieves the endpoint attributes for a device on one of the supported push notification services, such as GCM and APNS. For more information, see [Using Amazon SNS Mobile Push Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

# Arguments

## `EndpointArn = ::String` -- *Required*
EndpointArn for GetEndpointAttributes input.




# Returns

`GetEndpointAttributesResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException`, `AuthorizationErrorException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/GetEndpointAttributes)
"""
@inline get_endpoint_attributes(aws::AWSConfig=default_aws_config(); args...) = get_endpoint_attributes(aws, args)

@inline get_endpoint_attributes(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "GetEndpointAttributes", args)

@inline get_endpoint_attributes(args) = get_endpoint_attributes(default_aws_config(), args)


"""
    using AWSSDK.SNS.get_platform_application_attributes
    get_platform_application_attributes([::AWSConfig], arguments::Dict)
    get_platform_application_attributes([::AWSConfig]; PlatformApplicationArn=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "GetPlatformApplicationAttributes", arguments::Dict)
    sns([::AWSConfig], "GetPlatformApplicationAttributes", PlatformApplicationArn=)

# GetPlatformApplicationAttributes Operation

Retrieves the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see [Using Amazon SNS Mobile Push Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

# Arguments

## `PlatformApplicationArn = ::String` -- *Required*
PlatformApplicationArn for GetPlatformApplicationAttributesInput.




# Returns

`GetPlatformApplicationAttributesResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException`, `AuthorizationErrorException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/GetPlatformApplicationAttributes)
"""
@inline get_platform_application_attributes(aws::AWSConfig=default_aws_config(); args...) = get_platform_application_attributes(aws, args)

@inline get_platform_application_attributes(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "GetPlatformApplicationAttributes", args)

@inline get_platform_application_attributes(args) = get_platform_application_attributes(default_aws_config(), args)


"""
    using AWSSDK.SNS.get_smsattributes
    get_smsattributes([::AWSConfig], arguments::Dict)
    get_smsattributes([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "GetSMSAttributes", arguments::Dict)
    sns([::AWSConfig], "GetSMSAttributes", <keyword arguments>)

# GetSMSAttributes Operation

Returns the settings for sending SMS messages from your account.

These settings are set with the `SetSMSAttributes` action.

# Arguments

## `attributes = [::String, ...]`
A list of the individual attribute names, such as `MonthlySpendLimit`, for which you want values.

For all attribute names, see [SetSMSAttributes](http://docs.aws.amazon.com/sns/latest/api/API_SetSMSAttributes.html).

If you don't use this parameter, Amazon SNS returns all SMS attributes.




# Returns

`GetSMSAttributesResponse`

# Exceptions

`ThrottledException`, `InternalErrorException`, `AuthorizationErrorException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/GetSMSAttributes)
"""
@inline get_smsattributes(aws::AWSConfig=default_aws_config(); args...) = get_smsattributes(aws, args)

@inline get_smsattributes(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "GetSMSAttributes", args)

@inline get_smsattributes(args) = get_smsattributes(default_aws_config(), args)


"""
    using AWSSDK.SNS.get_subscription_attributes
    get_subscription_attributes([::AWSConfig], arguments::Dict)
    get_subscription_attributes([::AWSConfig]; SubscriptionArn=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "GetSubscriptionAttributes", arguments::Dict)
    sns([::AWSConfig], "GetSubscriptionAttributes", SubscriptionArn=)

# GetSubscriptionAttributes Operation

Returns all of the properties of a subscription.

# Arguments

## `SubscriptionArn = ::String` -- *Required*
The ARN of the subscription whose properties you want to get.




# Returns

`GetSubscriptionAttributesResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException`, `NotFoundException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/GetSubscriptionAttributes)
"""
@inline get_subscription_attributes(aws::AWSConfig=default_aws_config(); args...) = get_subscription_attributes(aws, args)

@inline get_subscription_attributes(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "GetSubscriptionAttributes", args)

@inline get_subscription_attributes(args) = get_subscription_attributes(default_aws_config(), args)


"""
    using AWSSDK.SNS.get_topic_attributes
    get_topic_attributes([::AWSConfig], arguments::Dict)
    get_topic_attributes([::AWSConfig]; TopicArn=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "GetTopicAttributes", arguments::Dict)
    sns([::AWSConfig], "GetTopicAttributes", TopicArn=)

# GetTopicAttributes Operation

Returns all of the properties of a topic. Topic properties returned might differ based on the authorization of the user.

# Arguments

## `TopicArn = ::String` -- *Required*
The ARN of the topic whose properties you want to get.




# Returns

`GetTopicAttributesResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException`, `NotFoundException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/GetTopicAttributes)
"""
@inline get_topic_attributes(aws::AWSConfig=default_aws_config(); args...) = get_topic_attributes(aws, args)

@inline get_topic_attributes(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "GetTopicAttributes", args)

@inline get_topic_attributes(args) = get_topic_attributes(default_aws_config(), args)


"""
    using AWSSDK.SNS.list_endpoints_by_platform_application
    list_endpoints_by_platform_application([::AWSConfig], arguments::Dict)
    list_endpoints_by_platform_application([::AWSConfig]; PlatformApplicationArn=, <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "ListEndpointsByPlatformApplication", arguments::Dict)
    sns([::AWSConfig], "ListEndpointsByPlatformApplication", PlatformApplicationArn=, <keyword arguments>)

# ListEndpointsByPlatformApplication Operation

Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as GCM and APNS. The results for `ListEndpointsByPlatformApplication` are paginated and return a limited list of endpoints, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call `ListEndpointsByPlatformApplication` again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see [Using Amazon SNS Mobile Push Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

This action is throttled at 30 transactions per second (TPS).

# Arguments

## `PlatformApplicationArn = ::String` -- *Required*
PlatformApplicationArn for ListEndpointsByPlatformApplicationInput action.


## `NextToken = ::String`
NextToken string is used when calling ListEndpointsByPlatformApplication action to retrieve additional records that are available after the first page results.




# Returns

`ListEndpointsByPlatformApplicationResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException`, `AuthorizationErrorException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/ListEndpointsByPlatformApplication)
"""
@inline list_endpoints_by_platform_application(aws::AWSConfig=default_aws_config(); args...) = list_endpoints_by_platform_application(aws, args)

@inline list_endpoints_by_platform_application(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "ListEndpointsByPlatformApplication", args)

@inline list_endpoints_by_platform_application(args) = list_endpoints_by_platform_application(default_aws_config(), args)


"""
    using AWSSDK.SNS.list_phone_numbers_opted_out
    list_phone_numbers_opted_out([::AWSConfig], arguments::Dict)
    list_phone_numbers_opted_out([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "ListPhoneNumbersOptedOut", arguments::Dict)
    sns([::AWSConfig], "ListPhoneNumbersOptedOut", <keyword arguments>)

# ListPhoneNumbersOptedOut Operation

Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them.

The results for `ListPhoneNumbersOptedOut` are paginated, and each page returns up to 100 phone numbers. If additional phone numbers are available after the first page of results, then a `NextToken` string will be returned. To receive the next page, you call `ListPhoneNumbersOptedOut` again using the `NextToken` string received from the previous call. When there are no more records to return, `NextToken` will be null.

# Arguments

## `nextToken = ::String`
A `NextToken` string is used when you call the `ListPhoneNumbersOptedOut` action to retrieve additional records that are available after the first page of results.




# Returns

`ListPhoneNumbersOptedOutResponse`

# Exceptions

`ThrottledException`, `InternalErrorException`, `AuthorizationErrorException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/ListPhoneNumbersOptedOut)
"""
@inline list_phone_numbers_opted_out(aws::AWSConfig=default_aws_config(); args...) = list_phone_numbers_opted_out(aws, args)

@inline list_phone_numbers_opted_out(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "ListPhoneNumbersOptedOut", args)

@inline list_phone_numbers_opted_out(args) = list_phone_numbers_opted_out(default_aws_config(), args)


"""
    using AWSSDK.SNS.list_platform_applications
    list_platform_applications([::AWSConfig], arguments::Dict)
    list_platform_applications([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "ListPlatformApplications", arguments::Dict)
    sns([::AWSConfig], "ListPlatformApplications", <keyword arguments>)

# ListPlatformApplications Operation

Lists the platform application objects for the supported push notification services, such as APNS and GCM. The results for `ListPlatformApplications` are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call `ListPlatformApplications` using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see [Using Amazon SNS Mobile Push Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

This action is throttled at 15 transactions per second (TPS).

# Arguments

## `NextToken = ::String`
NextToken string is used when calling ListPlatformApplications action to retrieve additional records that are available after the first page results.




# Returns

`ListPlatformApplicationsResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/ListPlatformApplications)
"""
@inline list_platform_applications(aws::AWSConfig=default_aws_config(); args...) = list_platform_applications(aws, args)

@inline list_platform_applications(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "ListPlatformApplications", args)

@inline list_platform_applications(args) = list_platform_applications(default_aws_config(), args)


"""
    using AWSSDK.SNS.list_subscriptions
    list_subscriptions([::AWSConfig], arguments::Dict)
    list_subscriptions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "ListSubscriptions", arguments::Dict)
    sns([::AWSConfig], "ListSubscriptions", <keyword arguments>)

# ListSubscriptions Operation

Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a `NextToken` is also returned. Use the `NextToken` parameter in a new `ListSubscriptions` call to get further results.

This action is throttled at 30 transactions per second (TPS).

# Arguments

## `NextToken = ::String`
Token returned by the previous `ListSubscriptions` request.




# Returns

`ListSubscriptionsResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/ListSubscriptions)
"""
@inline list_subscriptions(aws::AWSConfig=default_aws_config(); args...) = list_subscriptions(aws, args)

@inline list_subscriptions(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "ListSubscriptions", args)

@inline list_subscriptions(args) = list_subscriptions(default_aws_config(), args)


"""
    using AWSSDK.SNS.list_subscriptions_by_topic
    list_subscriptions_by_topic([::AWSConfig], arguments::Dict)
    list_subscriptions_by_topic([::AWSConfig]; TopicArn=, <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "ListSubscriptionsByTopic", arguments::Dict)
    sns([::AWSConfig], "ListSubscriptionsByTopic", TopicArn=, <keyword arguments>)

# ListSubscriptionsByTopic Operation

Returns a list of the subscriptions to a specific topic. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a `NextToken` is also returned. Use the `NextToken` parameter in a new `ListSubscriptionsByTopic` call to get further results.

This action is throttled at 30 transactions per second (TPS).

# Arguments

## `TopicArn = ::String` -- *Required*
The ARN of the topic for which you wish to find subscriptions.


## `NextToken = ::String`
Token returned by the previous `ListSubscriptionsByTopic` request.




# Returns

`ListSubscriptionsByTopicResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException`, `NotFoundException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/ListSubscriptionsByTopic)
"""
@inline list_subscriptions_by_topic(aws::AWSConfig=default_aws_config(); args...) = list_subscriptions_by_topic(aws, args)

@inline list_subscriptions_by_topic(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "ListSubscriptionsByTopic", args)

@inline list_subscriptions_by_topic(args) = list_subscriptions_by_topic(default_aws_config(), args)


"""
    using AWSSDK.SNS.list_topics
    list_topics([::AWSConfig], arguments::Dict)
    list_topics([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "ListTopics", arguments::Dict)
    sns([::AWSConfig], "ListTopics", <keyword arguments>)

# ListTopics Operation

Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a `NextToken` is also returned. Use the `NextToken` parameter in a new `ListTopics` call to get further results.

This action is throttled at 30 transactions per second (TPS).

# Arguments

## `NextToken = ::String`
Token returned by the previous `ListTopics` request.




# Returns

`ListTopicsResponse`

# Exceptions

`InvalidParameterException`, `InternalErrorException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/ListTopics)
"""
@inline list_topics(aws::AWSConfig=default_aws_config(); args...) = list_topics(aws, args)

@inline list_topics(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "ListTopics", args)

@inline list_topics(args) = list_topics(default_aws_config(), args)


"""
    using AWSSDK.SNS.opt_in_phone_number
    opt_in_phone_number([::AWSConfig], arguments::Dict)
    opt_in_phone_number([::AWSConfig]; phoneNumber=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "OptInPhoneNumber", arguments::Dict)
    sns([::AWSConfig], "OptInPhoneNumber", phoneNumber=)

# OptInPhoneNumber Operation

Use this request to opt in a phone number that is opted out, which enables you to resume sending SMS messages to the number.

You can opt in a phone number only once every 30 days.

# Arguments

## `phoneNumber = ::String` -- *Required*
The phone number to opt in.




# Returns

`OptInPhoneNumberResponse`

# Exceptions

`ThrottledException`, `InternalErrorException`, `AuthorizationErrorException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/OptInPhoneNumber)
"""
@inline opt_in_phone_number(aws::AWSConfig=default_aws_config(); args...) = opt_in_phone_number(aws, args)

@inline opt_in_phone_number(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "OptInPhoneNumber", args)

@inline opt_in_phone_number(args) = opt_in_phone_number(default_aws_config(), args)


"""
    using AWSSDK.SNS.publish
    publish([::AWSConfig], arguments::Dict)
    publish([::AWSConfig]; Message=, <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "Publish", arguments::Dict)
    sns([::AWSConfig], "Publish", Message=, <keyword arguments>)

# Publish Operation

Sends a message to an Amazon SNS topic or sends a text message (SMS message) directly to a phone number.

If you send a message to a topic, Amazon SNS delivers the message to each endpoint that is subscribed to the topic. The format of the message depends on the notification protocol for each subscribed endpoint.

When a `messageId` is returned, the message has been saved and Amazon SNS will attempt to deliver it shortly.

To use the `Publish` action for sending a message to a mobile endpoint, such as an app on a Kindle device or mobile phone, you must specify the EndpointArn for the TargetArn parameter. The EndpointArn is returned when making a call with the `CreatePlatformEndpoint` action.

For more information about formatting messages, see [Send Custom Platform-Specific Payloads in Messages to Mobile Devices](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html).

# Arguments

## `TopicArn = ::String`
The topic you want to publish to.

If you don't specify a value for the `TopicArn` parameter, you must specify a value for the `PhoneNumber` or `TargetArn` parameters.


## `TargetArn = ::String`
Either TopicArn or EndpointArn, but not both.

If you don't specify a value for the `TargetArn` parameter, you must specify a value for the `PhoneNumber` or `TopicArn` parameters.


## `PhoneNumber = ::String`
The phone number to which you want to deliver an SMS message. Use E.164 format.

If you don't specify a value for the `PhoneNumber` parameter, you must specify a value for the `TargetArn` or `TopicArn` parameters.


## `Message = ::String` -- *Required*
The message you want to send.

If you are publishing to a topic and you want to send the same message to all transport protocols, include the text of the message as a String value. If you want to send different messages for each transport protocol, set the value of the `MessageStructure` parameter to `json` and use a JSON object for the `Message` parameter.

Constraints:

*   With the exception of SMS, messages must be UTF-8 encoded strings and at most 256 KB in size (262144 bytes, not 262144 characters).

*   For SMS, each message can contain up to 140 bytes, and the character limit depends on the encoding scheme. For example, an SMS message can contain 160 GSM characters, 140 ASCII characters, or 70 UCS-2 characters. If you publish a message that exceeds the size limit, Amazon SNS sends it as multiple messages, each fitting within the size limit. Messages are not cut off in the middle of a word but on whole-word boundaries. The total size limit for a single SMS publish action is 1600 bytes.

JSON-specific constraints:

*   Keys in the JSON object that correspond to supported transport protocols must have simple JSON string values.

*   The values will be parsed (unescaped) before they are used in outgoing messages.

*   Outbound notifications are JSON encoded (meaning that the characters will be reescaped for sending).

*   Values have a minimum length of 0 (the empty string, "", is allowed).

*   Values have a maximum length bounded by the overall message size (so, including multiple protocols may limit message sizes).

*   Non-string values will cause the key to be ignored.

*   Keys that do not correspond to supported transport protocols are ignored.

*   Duplicate keys are not allowed.

*   Failure to parse or validate any key or value in the message will cause the `Publish` call to return an error (no partial delivery).


## `Subject = ::String`
Optional parameter to be used as the "Subject" line when the message is delivered to email endpoints. This field will also be included, if present, in the standard JSON messages delivered to other endpoints.

Constraints: Subjects must be ASCII text that begins with a letter, number, or punctuation mark; must not include line breaks or control characters; and must be less than 100 characters long.


## `MessageStructure = ::String`
Set `MessageStructure` to `json` if you want to send a different message for each protocol. For example, using one publish action, you can send a short message to your SMS subscribers and a longer message to your email subscribers. If you set `MessageStructure` to `json`, the value of the `Message` parameter must:

*   be a syntactically valid JSON object; and

*   contain at least a top-level JSON key of "default" with a value that is a string.

You can define other top-level keys that define the message you want to send to a specific transport protocol (e.g., "http").

For information about sending different messages for each protocol using the AWS Management Console, go to [Create Different Messages for Each Protocol](http://docs.aws.amazon.com/sns/latest/gsg/Publish.html#sns-message-formatting-by-protocol) in the *Amazon Simple Notification Service Getting Started Guide*.

Valid value: `json`


## `MessageAttributes = ::Dict{String,String}`
Message attributes for Publish action.




# Returns

`PublishResponse`

# Exceptions

`InvalidParameterException`, `InvalidParameterValueException`, `InternalErrorException`, `NotFoundException`, `EndpointDisabledException`, `PlatformApplicationDisabledException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/Publish)
"""
@inline publish(aws::AWSConfig=default_aws_config(); args...) = publish(aws, args)

@inline publish(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "Publish", args)

@inline publish(args) = publish(default_aws_config(), args)


"""
    using AWSSDK.SNS.remove_permission
    remove_permission([::AWSConfig], arguments::Dict)
    remove_permission([::AWSConfig]; TopicArn=, Label=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "RemovePermission", arguments::Dict)
    sns([::AWSConfig], "RemovePermission", TopicArn=, Label=)

# RemovePermission Operation

Removes a statement from a topic's access control policy.

# Arguments

## `TopicArn = ::String` -- *Required*
The ARN of the topic whose access control policy you wish to modify.


## `Label = ::String` -- *Required*
The unique label of the statement you want to remove.




# Exceptions

`InvalidParameterException`, `InternalErrorException`, `AuthorizationErrorException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/RemovePermission)
"""
@inline remove_permission(aws::AWSConfig=default_aws_config(); args...) = remove_permission(aws, args)

@inline remove_permission(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "RemovePermission", args)

@inline remove_permission(args) = remove_permission(default_aws_config(), args)


"""
    using AWSSDK.SNS.set_endpoint_attributes
    set_endpoint_attributes([::AWSConfig], arguments::Dict)
    set_endpoint_attributes([::AWSConfig]; EndpointArn=, Attributes=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "SetEndpointAttributes", arguments::Dict)
    sns([::AWSConfig], "SetEndpointAttributes", EndpointArn=, Attributes=)

# SetEndpointAttributes Operation

Sets the attributes for an endpoint for a device on one of the supported push notification services, such as GCM and APNS. For more information, see [Using Amazon SNS Mobile Push Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

# Arguments

## `EndpointArn = ::String` -- *Required*
EndpointArn used for SetEndpointAttributes action.


## `Attributes = ::Dict{String,String}` -- *Required*
A map of the endpoint attributes. Attributes in this map include the following:

*   `CustomUserData` -- arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.

*   `Enabled` -- flag that enables/disables delivery to the endpoint. Amazon SNS will set this to false when a notification service indicates to Amazon SNS that the endpoint is invalid. Users can set it back to true, typically after updating Token.

*   `Token` -- device token, also referred to as a registration id, for an app and mobile device. This is returned from the notification service when an app and mobile device are registered with the notification service.




# Exceptions

`InvalidParameterException`, `InternalErrorException`, `AuthorizationErrorException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/SetEndpointAttributes)
"""
@inline set_endpoint_attributes(aws::AWSConfig=default_aws_config(); args...) = set_endpoint_attributes(aws, args)

@inline set_endpoint_attributes(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "SetEndpointAttributes", args)

@inline set_endpoint_attributes(args) = set_endpoint_attributes(default_aws_config(), args)


"""
    using AWSSDK.SNS.set_platform_application_attributes
    set_platform_application_attributes([::AWSConfig], arguments::Dict)
    set_platform_application_attributes([::AWSConfig]; PlatformApplicationArn=, Attributes=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "SetPlatformApplicationAttributes", arguments::Dict)
    sns([::AWSConfig], "SetPlatformApplicationAttributes", PlatformApplicationArn=, Attributes=)

# SetPlatformApplicationAttributes Operation

Sets the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see [Using Amazon SNS Mobile Push Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html). For information on configuring attributes for message delivery status, see [Using Amazon SNS Application Attributes for Message Delivery Status](http://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html).

# Arguments

## `PlatformApplicationArn = ::String` -- *Required*
PlatformApplicationArn for SetPlatformApplicationAttributes action.


## `Attributes = ::Dict{String,String}` -- *Required*
A map of the platform application attributes. Attributes in this map include the following:

*   `PlatformCredential` -- The credential received from the notification service. For APNS/APNS_SANDBOX, PlatformCredential is private key. For GCM, PlatformCredential is "API key". For ADM, PlatformCredential is "client secret".

*   `PlatformPrincipal` -- The principal received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is SSL certificate. For GCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client id".

*   `EventEndpointCreated` -- Topic ARN to which EndpointCreated event notifications should be sent.

*   `EventEndpointDeleted` -- Topic ARN to which EndpointDeleted event notifications should be sent.

*   `EventEndpointUpdated` -- Topic ARN to which EndpointUpdate event notifications should be sent.

*   `EventDeliveryFailure` -- Topic ARN to which DeliveryFailure event notifications should be sent upon Direct Publish delivery failure (permanent) to one of the application's endpoints.

*   `SuccessFeedbackRoleArn` -- IAM role ARN used to give Amazon SNS write access to use CloudWatch Logs on your behalf.

*   `FailureFeedbackRoleArn` -- IAM role ARN used to give Amazon SNS write access to use CloudWatch Logs on your behalf.

*   `SuccessFeedbackSampleRate` -- Sample rate percentage (0-100) of successfully delivered messages.




# Exceptions

`InvalidParameterException`, `InternalErrorException`, `AuthorizationErrorException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/SetPlatformApplicationAttributes)
"""
@inline set_platform_application_attributes(aws::AWSConfig=default_aws_config(); args...) = set_platform_application_attributes(aws, args)

@inline set_platform_application_attributes(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "SetPlatformApplicationAttributes", args)

@inline set_platform_application_attributes(args) = set_platform_application_attributes(default_aws_config(), args)


"""
    using AWSSDK.SNS.set_smsattributes
    set_smsattributes([::AWSConfig], arguments::Dict)
    set_smsattributes([::AWSConfig]; attributes=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "SetSMSAttributes", arguments::Dict)
    sns([::AWSConfig], "SetSMSAttributes", attributes=)

# SetSMSAttributes Operation

Use this request to set the default settings for sending SMS messages and receiving daily SMS usage reports.

You can override some of these settings for a single message when you use the `Publish` action with the `MessageAttributes.entry.N` parameter. For more information, see [Sending an SMS Message](http://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html) in the *Amazon SNS Developer Guide*.

# Arguments

## `attributes = ::Dict{String,String}` -- *Required*
The default settings for sending SMS messages from your account. You can set values for the following attribute names:

`MonthlySpendLimit` – The maximum amount in USD that you are willing to spend each month to send SMS messages. When Amazon SNS determines that sending an SMS message would incur a cost that exceeds this limit, it stops sending SMS messages within minutes.

**Important**
> Amazon SNS stops sending SMS messages within minutes of the limit being crossed. During that interval, if you continue to send SMS messages, you will incur costs that exceed your limit.

By default, the spend limit is set to the maximum allowed by Amazon SNS. If you want to raise the limit, submit an [SNS Limit Increase case](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-sns). For **New limit value**, enter your desired monthly spend limit. In the **Use Case Description** field, explain that you are requesting an SMS monthly spend limit increase.

`DeliveryStatusIAMRole` – The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs. For each SMS message that you send, Amazon SNS writes a log that includes the message price, the success or failure status, the reason for failure (if the message failed), the message dwell time, and other information.

`DeliveryStatusSuccessSamplingRate` – The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value can be an integer from 0 - 100. For example, to write logs only for failed deliveries, set this value to `0`. To write logs for 10% of your successful deliveries, set it to `10`.

`DefaultSenderID` – A string, such as your business brand, that is displayed as the sender on the receiving device. Support for sender IDs varies by country. The sender ID can be 1 - 11 alphanumeric characters, and it must contain at least one letter.

`DefaultSMSType` – The type of SMS message that you will send by default. You can assign the following values:

*   `Promotional` – (Default) Noncritical messages, such as marketing messages. Amazon SNS optimizes the message delivery to incur the lowest cost.

*   `Transactional` – Critical messages that support customer transactions, such as one-time passcodes for multi-factor authentication. Amazon SNS optimizes the message delivery to achieve the highest reliability.

`UsageReportS3Bucket` – The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS. Each day, Amazon SNS will deliver a usage report as a CSV file to the bucket. The report includes the following information for each SMS message that was successfully delivered by your account:

*   Time that the message was published (in UTC)

*   Message ID

*   Destination phone number

*   Message type

*   Delivery status

*   Message price (in USD)

*   Part number (a message is split into multiple parts if it is too long for a single message)

*   Total number of parts

To receive the report, the bucket must have a policy that allows the Amazon SNS service principle to perform the `s3:PutObject` and `s3:GetBucketLocation` actions.

For an example bucket policy and usage report, see [Monitoring SMS Activity](http://docs.aws.amazon.com/sns/latest/dg/sms_stats.html) in the *Amazon SNS Developer Guide*.




# Returns

`SetSMSAttributesResponse`

# Exceptions

`InvalidParameterException`, `ThrottledException`, `InternalErrorException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/SetSMSAttributes)
"""
@inline set_smsattributes(aws::AWSConfig=default_aws_config(); args...) = set_smsattributes(aws, args)

@inline set_smsattributes(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "SetSMSAttributes", args)

@inline set_smsattributes(args) = set_smsattributes(default_aws_config(), args)


"""
    using AWSSDK.SNS.set_subscription_attributes
    set_subscription_attributes([::AWSConfig], arguments::Dict)
    set_subscription_attributes([::AWSConfig]; SubscriptionArn=, AttributeName=, <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "SetSubscriptionAttributes", arguments::Dict)
    sns([::AWSConfig], "SetSubscriptionAttributes", SubscriptionArn=, AttributeName=, <keyword arguments>)

# SetSubscriptionAttributes Operation

Allows a subscription owner to set an attribute of the subscription to a new value.

# Arguments

## `SubscriptionArn = ::String` -- *Required*
The ARN of the subscription to modify.


## `AttributeName = ::String` -- *Required*
The name of the attribute you want to set. Only a subset of the subscriptions attributes are mutable.

Valid values: `DeliveryPolicy` | `FilterPolicy` | `RawMessageDelivery`


## `AttributeValue = ::String`
The new value for the attribute in JSON format.




# Exceptions

`InvalidParameterException`, `FilterPolicyLimitExceededException`, `InternalErrorException`, `NotFoundException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/SetSubscriptionAttributes)
"""
@inline set_subscription_attributes(aws::AWSConfig=default_aws_config(); args...) = set_subscription_attributes(aws, args)

@inline set_subscription_attributes(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "SetSubscriptionAttributes", args)

@inline set_subscription_attributes(args) = set_subscription_attributes(default_aws_config(), args)


"""
    using AWSSDK.SNS.set_topic_attributes
    set_topic_attributes([::AWSConfig], arguments::Dict)
    set_topic_attributes([::AWSConfig]; TopicArn=, AttributeName=, <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "SetTopicAttributes", arguments::Dict)
    sns([::AWSConfig], "SetTopicAttributes", TopicArn=, AttributeName=, <keyword arguments>)

# SetTopicAttributes Operation

Allows a topic owner to set an attribute of the topic to a new value.

# Arguments

## `TopicArn = ::String` -- *Required*
The ARN of the topic to modify.


## `AttributeName = ::String` -- *Required*
The name of the attribute you want to set. Only a subset of the topic's attributes are mutable.

Valid values: `Policy` | `DisplayName` | `DeliveryPolicy`


## `AttributeValue = ::String`
The new value for the attribute.




# Exceptions

`InvalidParameterException`, `InternalErrorException`, `NotFoundException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/SetTopicAttributes)
"""
@inline set_topic_attributes(aws::AWSConfig=default_aws_config(); args...) = set_topic_attributes(aws, args)

@inline set_topic_attributes(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "SetTopicAttributes", args)

@inline set_topic_attributes(args) = set_topic_attributes(default_aws_config(), args)


"""
    using AWSSDK.SNS.subscribe
    subscribe([::AWSConfig], arguments::Dict)
    subscribe([::AWSConfig]; TopicArn=, Protocol=, <keyword arguments>)

    using AWSCore.Services.sns
    sns([::AWSConfig], "Subscribe", arguments::Dict)
    sns([::AWSConfig], "Subscribe", TopicArn=, Protocol=, <keyword arguments>)

# Subscribe Operation

Prepares to subscribe an endpoint by sending the endpoint a confirmation message. To actually create a subscription, the endpoint owner must call the `ConfirmSubscription` action with the token from the confirmation message. Confirmation tokens are valid for three days.

This action is throttled at 100 transactions per second (TPS).

# Arguments

## `TopicArn = ::String` -- *Required*
The ARN of the topic you want to subscribe to.


## `Protocol = ::String` -- *Required*
The protocol you want to use. Supported protocols include:

*   `http` -- delivery of JSON-encoded message via HTTP POST

*   `https` -- delivery of JSON-encoded message via HTTPS POST

*   `email` -- delivery of message via SMTP

*   `email-json` -- delivery of JSON-encoded message via SMTP

*   `sms` -- delivery of message via SMS

*   `sqs` -- delivery of JSON-encoded message to an Amazon SQS queue

*   `application` -- delivery of JSON-encoded message to an EndpointArn for a mobile app and device.

*   `lambda` -- delivery of JSON-encoded message to an AWS Lambda function.


## `Endpoint = ::String`
The endpoint that you want to receive notifications. Endpoints vary by protocol:

*   For the `http` protocol, the endpoint is an URL beginning with "http://"

*   For the `https` protocol, the endpoint is a URL beginning with "https://"

*   For the `email` protocol, the endpoint is an email address

*   For the `email-json` protocol, the endpoint is an email address

*   For the `sms` protocol, the endpoint is a phone number of an SMS-enabled device

*   For the `sqs` protocol, the endpoint is the ARN of an Amazon SQS queue

*   For the `application` protocol, the endpoint is the EndpointArn of a mobile app and device.

*   For the `lambda` protocol, the endpoint is the ARN of an AWS Lambda function.


## `Attributes = ::Dict{String,String}`
Assigns attributes to the subscription as a map of key-value pairs. You can assign any attribute that is supported by the `SetSubscriptionAttributes` action.


## `ReturnSubscriptionArn = ::Bool`
Sets whether the response from the `Subscribe` request includes the subscription ARN, even if the subscription is not yet confirmed.

If you set this parameter to `false`, the response includes the ARN for confirmed subscriptions, but it includes an ARN value of "pending subscription" for subscriptions that are not yet confirmed. A subscription becomes confirmed when the subscriber calls the `ConfirmSubscription` action with a confirmation token.

If you set this parameter to `true`, the response includes the ARN in all cases, even if the subscription is not yet confirmed.

The default value is `false`.




# Returns

`SubscribeResponse`

# Exceptions

`SubscriptionLimitExceededException`, `FilterPolicyLimitExceededException`, `InvalidParameterException`, `InternalErrorException`, `NotFoundException` or `AuthorizationErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/Subscribe)
"""
@inline subscribe(aws::AWSConfig=default_aws_config(); args...) = subscribe(aws, args)

@inline subscribe(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "Subscribe", args)

@inline subscribe(args) = subscribe(default_aws_config(), args)


"""
    using AWSSDK.SNS.unsubscribe
    unsubscribe([::AWSConfig], arguments::Dict)
    unsubscribe([::AWSConfig]; SubscriptionArn=)

    using AWSCore.Services.sns
    sns([::AWSConfig], "Unsubscribe", arguments::Dict)
    sns([::AWSConfig], "Unsubscribe", SubscriptionArn=)

# Unsubscribe Operation

Deletes a subscription. If the subscription requires authentication for deletion, only the owner of the subscription or the topic's owner can unsubscribe, and an AWS signature is required. If the `Unsubscribe` call does not require authentication and the requester is not the subscription owner, a final cancellation message is delivered to the endpoint, so that the endpoint owner can easily resubscribe to the topic if the `Unsubscribe` request was unintended.

This action is throttled at 100 transactions per second (TPS).

# Arguments

## `SubscriptionArn = ::String` -- *Required*
The ARN of the subscription to be deleted.




# Exceptions

`InvalidParameterException`, `InternalErrorException`, `AuthorizationErrorException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31/Unsubscribe)
"""
@inline unsubscribe(aws::AWSConfig=default_aws_config(); args...) = unsubscribe(aws, args)

@inline unsubscribe(aws::AWSConfig, args) = AWSCore.Services.sns(aws, "Unsubscribe", args)

@inline unsubscribe(args) = unsubscribe(default_aws_config(), args)




end # module SNS


#==============================================================================#
# End of file
#==============================================================================#
