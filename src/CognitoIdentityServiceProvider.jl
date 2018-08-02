#==============================================================================#
# CognitoIdentityServiceProvider.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/cognito-idp-2016-04-18.normal.json
#==============================================================================#

__precompile__()

module CognitoIdentityServiceProvider

using AWSCore


"""
    using AWSSDK.CognitoIdentityServiceProvider.add_custom_attributes
    add_custom_attributes([::AWSConfig], arguments::Dict)
    add_custom_attributes([::AWSConfig]; UserPoolId=, CustomAttributes=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AddCustomAttributes", arguments::Dict)
    cognito_idp([::AWSConfig], "AddCustomAttributes", UserPoolId=, CustomAttributes=)

# AddCustomAttributes Operation

Adds additional user attributes to the user pool schema.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to add custom attributes.


## `CustomAttributes = [[ ... ], ...]` -- *Required*
An array of custom attributes, such as Mutable and Name.
```
 CustomAttributes = [[
        "Name" =>  ::String,
        "AttributeDataType" =>  "String", "Number", "DateTime" or "Boolean",
        "DeveloperOnlyAttribute" =>  ::Bool,
        "Mutable" =>  ::Bool,
        "Required" =>  ::Bool,
        "NumberAttributeConstraints" =>  [
            "MinValue" =>  ::String,
            "MaxValue" =>  ::String
        ],
        "StringAttributeConstraints" =>  [
            "MinLength" =>  ::String,
            "MaxLength" =>  ::String
        ]
    ], ...]
```



# Returns

`AddCustomAttributesResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserImportInProgressException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AddCustomAttributes)
"""
@inline add_custom_attributes(aws::AWSConfig=default_aws_config(); args...) = add_custom_attributes(aws, args)

@inline add_custom_attributes(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AddCustomAttributes", args)

@inline add_custom_attributes(args) = add_custom_attributes(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_add_user_to_group
    admin_add_user_to_group([::AWSConfig], arguments::Dict)
    admin_add_user_to_group([::AWSConfig]; UserPoolId=, Username=, GroupName=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminAddUserToGroup", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminAddUserToGroup", UserPoolId=, Username=, GroupName=)

# AdminAddUserToGroup Operation

Adds the specified user to the specified group.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `Username = ::String` -- *Required*
The username for the user.


## `GroupName = ::String` -- *Required*
The group name.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminAddUserToGroup)
"""
@inline admin_add_user_to_group(aws::AWSConfig=default_aws_config(); args...) = admin_add_user_to_group(aws, args)

@inline admin_add_user_to_group(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminAddUserToGroup", args)

@inline admin_add_user_to_group(args) = admin_add_user_to_group(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_confirm_sign_up
    admin_confirm_sign_up([::AWSConfig], arguments::Dict)
    admin_confirm_sign_up([::AWSConfig]; UserPoolId=, Username=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminConfirmSignUp", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminConfirmSignUp", UserPoolId=, Username=)

# AdminConfirmSignUp Operation

Confirms user registration as an admin without using a confirmation code. Works on any user.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for which you want to confirm user registration.


## `Username = ::String` -- *Required*
The user name for which you want to confirm user registration.




# Returns

`AdminConfirmSignUpResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `UnexpectedLambdaException`, `UserLambdaValidationException`, `NotAuthorizedException`, `TooManyFailedAttemptsException`, `InvalidLambdaResponseException`, `TooManyRequestsException`, `LimitExceededException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminConfirmSignUp)
"""
@inline admin_confirm_sign_up(aws::AWSConfig=default_aws_config(); args...) = admin_confirm_sign_up(aws, args)

@inline admin_confirm_sign_up(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminConfirmSignUp", args)

@inline admin_confirm_sign_up(args) = admin_confirm_sign_up(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_create_user
    admin_create_user([::AWSConfig], arguments::Dict)
    admin_create_user([::AWSConfig]; UserPoolId=, Username=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminCreateUser", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminCreateUser", UserPoolId=, Username=, <keyword arguments>)

# AdminCreateUser Operation

Creates a new user in the specified user pool.

If `MessageAction` is not set, the default is to send a welcome message via email or phone (SMS).

**Note**
> This message is based on a template that you configured in your call to or . This template includes your custom sign-up instructions and placeholders for user name and temporary password.

Alternatively, you can call AdminCreateUser with “SUPPRESS” for the `MessageAction` parameter, and Amazon Cognito will not send any email.

In either case, the user will be in the `FORCE_CHANGE_PASSWORD` state until they sign in and change their password.

AdminCreateUser requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where the user will be created.


## `Username = ::String` -- *Required*
The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed.


## `UserAttributes = [[ ... ], ...]`
An array of name-value pairs that contain user attributes and attribute values to be set for the user to be created. You can create a user without specifying any attributes other than `Username`. However, any attributes that you specify as required (in or in the **Attributes** tab of the console) must be supplied either by you (in your call to `AdminCreateUser`) or by the user (when he or she signs up in response to your welcome message).

For custom attributes, you must prepend the `custom:` prefix to the attribute name.

To send a message inviting the user to sign up, you must specify the user's email address or phone number. This can be done in your call to AdminCreateUser or in the **Users** tab of the Amazon Cognito console for managing your user pools.

In your call to `AdminCreateUser`, you can set the `email_verified` attribute to `True`, and you can set the `phone_number_verified` attribute to `True`. (You can also do this by calling .)

*   **email**: The email address of the user to whom the message that contains the code and username will be sent. Required if the `email_verified` attribute is set to `True`, or if `"EMAIL"` is specified in the `DesiredDeliveryMediums` parameter.

*   **phone_number**: The phone number of the user to whom the message that contains the code and username will be sent. Required if the `phone_number_verified` attribute is set to `True`, or if `"SMS"` is specified in the `DesiredDeliveryMediums` parameter.
```
 UserAttributes = [[
        "Name" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```

## `ValidationData = [[ ... ], ...]`
The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. For example, you might choose to allow or disallow user sign-up based on the user's domain.

To configure custom validation, you must create a Pre Sign-up Lambda trigger for the user pool as described in the Amazon Cognito Developer Guide. The Lambda trigger receives the validation data and uses it in the validation process.

The user's validation data is not persisted.
```
 ValidationData = [[
        "Name" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```

## `TemporaryPassword = ::String`
The user's temporary password. This password must conform to the password policy that you specified when you created the user pool.

The temporary password is valid only once. To complete the Admin Create User flow, the user must enter the temporary password in the sign-in page along with a new password to be used in all future sign-ins.

This parameter is not required. If you do not specify a value, Amazon Cognito generates one for you.

The temporary password can only be used until the user account expiration limit that you specified when you created the user pool. To reset the account after that time limit, you must call `AdminCreateUser` again, specifying `"RESEND"` for the `MessageAction` parameter.


## `ForceAliasCreation = ::Bool`
This parameter is only used if the `phone_number_verified` or `email_verified` attribute is set to `True`. Otherwise, it is ignored.

If this parameter is set to `True` and the phone number or email address specified in the UserAttributes parameter already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias.

If this parameter is set to `False`, the API throws an `AliasExistsException` error if the alias already exists. The default value is `False`.


## `MessageAction = "RESEND" or "SUPPRESS"`
Set to `"RESEND"` to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to `"SUPPRESS"` to suppress sending the message. Only one value can be specified.


## `DesiredDeliveryMediums = ["SMS" or "EMAIL", ...]`
Specify `"EMAIL"` if email will be used to send the welcome message. Specify `"SMS"` if the phone number will be used. The default value is `"SMS"`. More than one value can be specified.




# Returns

`AdminCreateUserResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `UserNotFoundException`, `UsernameExistsException`, `InvalidPasswordException`, `CodeDeliveryFailureException`, `UnexpectedLambdaException`, `UserLambdaValidationException`, `InvalidLambdaResponseException`, `PreconditionNotMetException`, `InvalidSmsRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException`, `TooManyRequestsException`, `NotAuthorizedException`, `UnsupportedUserStateException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminCreateUser)
"""
@inline admin_create_user(aws::AWSConfig=default_aws_config(); args...) = admin_create_user(aws, args)

@inline admin_create_user(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminCreateUser", args)

@inline admin_create_user(args) = admin_create_user(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_delete_user
    admin_delete_user([::AWSConfig], arguments::Dict)
    admin_delete_user([::AWSConfig]; UserPoolId=, Username=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminDeleteUser", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminDeleteUser", UserPoolId=, Username=)

# AdminDeleteUser Operation

Deletes a user as an administrator. Works on any user.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to delete the user.


## `Username = ::String` -- *Required*
The user name of the user you wish to delete.




# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDeleteUser)
"""
@inline admin_delete_user(aws::AWSConfig=default_aws_config(); args...) = admin_delete_user(aws, args)

@inline admin_delete_user(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminDeleteUser", args)

@inline admin_delete_user(args) = admin_delete_user(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_delete_user_attributes
    admin_delete_user_attributes([::AWSConfig], arguments::Dict)
    admin_delete_user_attributes([::AWSConfig]; UserPoolId=, Username=, UserAttributeNames=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminDeleteUserAttributes", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminDeleteUserAttributes", UserPoolId=, Username=, UserAttributeNames=)

# AdminDeleteUserAttributes Operation

Deletes the user attributes in a user pool as an administrator. Works on any user.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to delete user attributes.


## `Username = ::String` -- *Required*
The user name of the user from which you would like to delete attributes.


## `UserAttributeNames = [::String, ...]` -- *Required*
An array of strings representing the user attribute names you wish to delete.

For custom attributes, you must prepend the `custom:` prefix to the attribute name.




# Returns

`AdminDeleteUserAttributesResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDeleteUserAttributes)
"""
@inline admin_delete_user_attributes(aws::AWSConfig=default_aws_config(); args...) = admin_delete_user_attributes(aws, args)

@inline admin_delete_user_attributes(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminDeleteUserAttributes", args)

@inline admin_delete_user_attributes(args) = admin_delete_user_attributes(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_disable_provider_for_user
    admin_disable_provider_for_user([::AWSConfig], arguments::Dict)
    admin_disable_provider_for_user([::AWSConfig]; UserPoolId=, User=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminDisableProviderForUser", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminDisableProviderForUser", UserPoolId=, User=)

# AdminDisableProviderForUser Operation

Disables the user from signing in with the specified external (SAML or social) identity provider. If the user to disable is a Cognito User Pools native username + password user, they are not permitted to use their password to sign-in. If the user to disable is a linked external IdP user, any link between that user and an existing user is removed. The next time the external user (no longer attached to the previously linked `DestinationUser`) signs in, they must create a new user account. See .

This action is enabled only for admin access and requires developer credentials.

The `ProviderName` must match the value specified when creating an IdP for the pool.

To disable a native username + password user, the `ProviderName` value must be `Cognito` and the `ProviderAttributeName` must be `Cognito_Subject`, with the `ProviderAttributeValue` being the name that is used in the user pool for the user.

The `ProviderAttributeName` must always be `Cognito_Subject` for social identity providers. The `ProviderAttributeValue` must always be the exact subject that was used when the user was originally linked as a source user.

For de-linking a SAML identity, there are two scenarios. If the linked identity has not yet been used to sign-in, the `ProviderAttributeName` and `ProviderAttributeValue` must be the same values that were used for the `SourceUser` when the identities were originally linked in the call. (If the linking was done with `ProviderAttributeName` set to `Cognito_Subject`, the same applies here). However, if the user has already signed in, the `ProviderAttributeName` must be `Cognito_Subject` and `ProviderAttributeValue` must be the subject of the SAML assertion.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `User = [ ... ]` -- *Required*
The user to be disabled.
```
 User = [
        "ProviderName" =>  ::String,
        "ProviderAttributeName" =>  ::String,
        "ProviderAttributeValue" =>  ::String
    ]
```



# Returns

`AdminDisableProviderForUserResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException`, `AliasExistsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableProviderForUser)
"""
@inline admin_disable_provider_for_user(aws::AWSConfig=default_aws_config(); args...) = admin_disable_provider_for_user(aws, args)

@inline admin_disable_provider_for_user(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminDisableProviderForUser", args)

@inline admin_disable_provider_for_user(args) = admin_disable_provider_for_user(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_disable_user
    admin_disable_user([::AWSConfig], arguments::Dict)
    admin_disable_user([::AWSConfig]; UserPoolId=, Username=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminDisableUser", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminDisableUser", UserPoolId=, Username=)

# AdminDisableUser Operation

Disables the specified user as an administrator. Works on any user.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to disable the user.


## `Username = ::String` -- *Required*
The user name of the user you wish to disable.




# Returns

`AdminDisableUserResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminDisableUser)
"""
@inline admin_disable_user(aws::AWSConfig=default_aws_config(); args...) = admin_disable_user(aws, args)

@inline admin_disable_user(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminDisableUser", args)

@inline admin_disable_user(args) = admin_disable_user(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_enable_user
    admin_enable_user([::AWSConfig], arguments::Dict)
    admin_enable_user([::AWSConfig]; UserPoolId=, Username=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminEnableUser", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminEnableUser", UserPoolId=, Username=)

# AdminEnableUser Operation

Enables the specified user as an administrator. Works on any user.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to enable the user.


## `Username = ::String` -- *Required*
The user name of the user you wish to enable.




# Returns

`AdminEnableUserResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminEnableUser)
"""
@inline admin_enable_user(aws::AWSConfig=default_aws_config(); args...) = admin_enable_user(aws, args)

@inline admin_enable_user(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminEnableUser", args)

@inline admin_enable_user(args) = admin_enable_user(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_forget_device
    admin_forget_device([::AWSConfig], arguments::Dict)
    admin_forget_device([::AWSConfig]; UserPoolId=, Username=, DeviceKey=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminForgetDevice", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminForgetDevice", UserPoolId=, Username=, DeviceKey=)

# AdminForgetDevice Operation

Forgets the device, as an administrator.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `Username = ::String` -- *Required*
The user name.


## `DeviceKey = ::String` -- *Required*
The device key.




# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `InvalidUserPoolConfigurationException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminForgetDevice)
"""
@inline admin_forget_device(aws::AWSConfig=default_aws_config(); args...) = admin_forget_device(aws, args)

@inline admin_forget_device(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminForgetDevice", args)

@inline admin_forget_device(args) = admin_forget_device(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_get_device
    admin_get_device([::AWSConfig], arguments::Dict)
    admin_get_device([::AWSConfig]; DeviceKey=, UserPoolId=, Username=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminGetDevice", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminGetDevice", DeviceKey=, UserPoolId=, Username=)

# AdminGetDevice Operation

Gets the device, as an administrator.

Requires developer credentials.

# Arguments

## `DeviceKey = ::String` -- *Required*
The device key.


## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `Username = ::String` -- *Required*
The user name.




# Returns

`AdminGetDeviceResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `InvalidUserPoolConfigurationException`, `TooManyRequestsException`, `InternalErrorException` or `NotAuthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetDevice)
"""
@inline admin_get_device(aws::AWSConfig=default_aws_config(); args...) = admin_get_device(aws, args)

@inline admin_get_device(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminGetDevice", args)

@inline admin_get_device(args) = admin_get_device(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_get_user
    admin_get_user([::AWSConfig], arguments::Dict)
    admin_get_user([::AWSConfig]; UserPoolId=, Username=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminGetUser", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminGetUser", UserPoolId=, Username=)

# AdminGetUser Operation

Gets the specified user by user name in a user pool as an administrator. Works on any user.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to get information about the user.


## `Username = ::String` -- *Required*
The user name of the user you wish to retrieve.




# Returns

`AdminGetUserResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminGetUser)
"""
@inline admin_get_user(aws::AWSConfig=default_aws_config(); args...) = admin_get_user(aws, args)

@inline admin_get_user(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminGetUser", args)

@inline admin_get_user(args) = admin_get_user(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_initiate_auth
    admin_initiate_auth([::AWSConfig], arguments::Dict)
    admin_initiate_auth([::AWSConfig]; UserPoolId=, ClientId=, AuthFlow=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminInitiateAuth", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminInitiateAuth", UserPoolId=, ClientId=, AuthFlow=, <keyword arguments>)

# AdminInitiateAuth Operation

Initiates the authentication flow, as an administrator.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The ID of the Amazon Cognito user pool.


## `ClientId = ::String` -- *Required*
The app client ID.


## `AuthFlow = "USER_SRP_AUTH", "REFRESH_TOKEN_AUTH", "REFRESH_TOKEN", "CUSTOM_AUTH", "ADMIN_NO_SRP_AUTH" or "USER_PASSWORD_AUTH"` -- *Required*
The authentication flow for this call to execute. The API action will depend on this value. For example:

*   `REFRESH_TOKEN_AUTH` will take in a valid refresh token and return new tokens.

*   `USER_SRP_AUTH` will take in `USERNAME` and `SRP_A` and return the SRP variables to be used for next challenge execution.

*   `USER_PASSWORD_AUTH` will take in `USERNAME` and `PASSWORD` and return the next challenge or tokens.

Valid values include:

*   `USER_SRP_AUTH`: Authentication flow for the Secure Remote Password (SRP) protocol.

*   `REFRESH_TOKEN_AUTH`/`REFRESH_TOKEN`: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.

*   `CUSTOM_AUTH`: Custom authentication flow.

*   `ADMIN_NO_SRP_AUTH`: Non-SRP authentication flow; you can pass in the USERNAME and PASSWORD directly if the flow is enabled for calling the app client.

*   `USER_PASSWORD_AUTH`: Non-SRP authentication flow; USERNAME and PASSWORD are passed directly. If a user migration Lambda trigger is set, this flow will invoke the user migration Lambda if the USERNAME is not found in the user pool.


## `AuthParameters = ::Dict{String,String}`
The authentication parameters. These are inputs corresponding to the `AuthFlow` that you are invoking. The required values depend on the value of `AuthFlow`:

*   For `USER_SRP_AUTH`: `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`

*   For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`

*   For `ADMIN_NO_SRP_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app client is configured with client secret), `PASSWORD` (required), `DEVICE_KEY`

*   For `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app client is configured with client secret), `DEVICE_KEY`


## `ClientMetadata = ::Dict{String,String}`
This is a random key-value pair map which can contain any key and will be passed to your PreAuthentication Lambda trigger as-is. It can be used to implement additional validations around authentication.


## `AnalyticsMetadata = ["AnalyticsEndpointId" =>  ::String]`
The analytics metadata for collecting Amazon Pinpoint metrics for `AdminInitiateAuth` calls.


## `ContextData = [ ... ]`
Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
```
 ContextData = [
        "IpAddress" => <required> ::String,
        "ServerName" => <required> ::String,
        "ServerPath" => <required> ::String,
        "HttpHeaders" => <required> [[
            "headerName" =>  ::String,
            "headerValue" =>  ::String
        ], ...],
        "EncodedData" =>  ::String
    ]
```



# Returns

`AdminInitiateAuthResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `TooManyRequestsException`, `InternalErrorException`, `UnexpectedLambdaException`, `InvalidUserPoolConfigurationException`, `UserLambdaValidationException`, `InvalidLambdaResponseException`, `MFAMethodNotFoundException`, `InvalidSmsRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException`, `PasswordResetRequiredException`, `UserNotFoundException` or `UserNotConfirmedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminInitiateAuth)
"""
@inline admin_initiate_auth(aws::AWSConfig=default_aws_config(); args...) = admin_initiate_auth(aws, args)

@inline admin_initiate_auth(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminInitiateAuth", args)

@inline admin_initiate_auth(args) = admin_initiate_auth(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_link_provider_for_user
    admin_link_provider_for_user([::AWSConfig], arguments::Dict)
    admin_link_provider_for_user([::AWSConfig]; UserPoolId=, DestinationUser=, SourceUser=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminLinkProviderForUser", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminLinkProviderForUser", UserPoolId=, DestinationUser=, SourceUser=)

# AdminLinkProviderForUser Operation

Links an existing user account in a user pool (`DestinationUser`) to an identity from an external identity provider (`SourceUser`) based on a specified attribute name and value from the external identity provider. This allows you to create a link from the existing user account to an external federated user identity that has not yet been used to sign in, so that the federated user identity can be used to sign in as the existing user account.

For example, if there is an existing user with a username and password, this API links that user to a federated user identity, so that when the federated user identity is used, the user signs in as the existing user account.

**Important**
> Because this API allows a user with an external federated identity to sign in as an existing user in the user pool, it is critical that it only be used with external identity providers and provider attributes that have been trusted by the application owner.

See also .

This action is enabled only for admin access and requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `DestinationUser = [ ... ]` -- *Required*
The existing user in the user pool to be linked to the external identity provider user account. Can be a native (Username + Password) Cognito User Pools user or a federated user (for example, a SAML or Facebook user). If the user doesn't exist, an exception is thrown. This is the user that is returned when the new user (with the linked identity provider attribute) signs in.

For a native username + password user, the `ProviderAttributeValue` for the `DestinationUser` should be the username in the user pool. For a federated user, it should be the provider-specific `user_id`.

The `ProviderAttributeName` of the `DestinationUser` is ignored.

The `ProviderName` should be set to `Cognito` for users in Cognito user pools.
```
 DestinationUser = [
        "ProviderName" =>  ::String,
        "ProviderAttributeName" =>  ::String,
        "ProviderAttributeValue" =>  ::String
    ]
```

## `SourceUser = [ ... ]` -- *Required*
An external identity provider account for a user who does not currently exist yet in the user pool. This user must be a federated user (for example, a SAML or Facebook user), not another native user.

If the `SourceUser` is a federated social identity provider user (Facebook, Google, or Login with Amazon), you must set the `ProviderAttributeName` to `Cognito_Subject`. For social identity providers, the `ProviderName` will be `Facebook`, `Google`, or `LoginWithAmazon`, and Cognito will automatically parse the Facebook, Google, and Login with Amazon tokens for `id`, `sub`, and `user_id`, respectively. The `ProviderAttributeValue` for the user must be the same value as the `id`, `sub`, or `user_id` value found in the social identity provider token.

For SAML, the `ProviderAttributeName` can be any value that matches a claim in the SAML assertion. If you wish to link SAML users based on the subject of the SAML assertion, you should map the subject to a claim through the SAML identity provider and submit that claim name as the `ProviderAttributeName`. If you set `ProviderAttributeName` to `Cognito_Subject`, Cognito will automatically parse the default unique identifier found in the subject from the SAML token.
```
 SourceUser = [
        "ProviderName" =>  ::String,
        "ProviderAttributeName" =>  ::String,
        "ProviderAttributeValue" =>  ::String
    ]
```



# Returns

`AdminLinkProviderForUserResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException`, `AliasExistsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminLinkProviderForUser)
"""
@inline admin_link_provider_for_user(aws::AWSConfig=default_aws_config(); args...) = admin_link_provider_for_user(aws, args)

@inline admin_link_provider_for_user(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminLinkProviderForUser", args)

@inline admin_link_provider_for_user(args) = admin_link_provider_for_user(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_list_devices
    admin_list_devices([::AWSConfig], arguments::Dict)
    admin_list_devices([::AWSConfig]; UserPoolId=, Username=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminListDevices", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminListDevices", UserPoolId=, Username=, <keyword arguments>)

# AdminListDevices Operation

Lists devices, as an administrator.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `Username = ::String` -- *Required*
The user name.


## `Limit = ::Int`
The limit of the devices request.


## `PaginationToken = ::String`
The pagination token.




# Returns

`AdminListDevicesResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `InvalidUserPoolConfigurationException`, `TooManyRequestsException`, `InternalErrorException` or `NotAuthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListDevices)
"""
@inline admin_list_devices(aws::AWSConfig=default_aws_config(); args...) = admin_list_devices(aws, args)

@inline admin_list_devices(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminListDevices", args)

@inline admin_list_devices(args) = admin_list_devices(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_list_groups_for_user
    admin_list_groups_for_user([::AWSConfig], arguments::Dict)
    admin_list_groups_for_user([::AWSConfig]; Username=, UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminListGroupsForUser", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminListGroupsForUser", Username=, UserPoolId=, <keyword arguments>)

# AdminListGroupsForUser Operation

Lists the groups that the user belongs to.

Requires developer credentials.

# Arguments

## `Username = ::String` -- *Required*
The username for the user.


## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `Limit = ::Int`
The limit of the request to list groups.


## `NextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`AdminListGroupsForUserResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListGroupsForUser)
"""
@inline admin_list_groups_for_user(aws::AWSConfig=default_aws_config(); args...) = admin_list_groups_for_user(aws, args)

@inline admin_list_groups_for_user(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminListGroupsForUser", args)

@inline admin_list_groups_for_user(args) = admin_list_groups_for_user(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_list_user_auth_events
    admin_list_user_auth_events([::AWSConfig], arguments::Dict)
    admin_list_user_auth_events([::AWSConfig]; UserPoolId=, Username=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminListUserAuthEvents", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminListUserAuthEvents", UserPoolId=, Username=, <keyword arguments>)

# AdminListUserAuthEvents Operation

Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `Username = ::String` -- *Required*
The user pool username or an alias.


## `MaxResults = ::Int`
The maximum number of authentication events to return.


## `NextToken = ::String`
A pagination token.




# Returns

`AdminListUserAuthEventsResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException`, `UserPoolAddOnNotEnabledException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminListUserAuthEvents)
"""
@inline admin_list_user_auth_events(aws::AWSConfig=default_aws_config(); args...) = admin_list_user_auth_events(aws, args)

@inline admin_list_user_auth_events(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminListUserAuthEvents", args)

@inline admin_list_user_auth_events(args) = admin_list_user_auth_events(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_remove_user_from_group
    admin_remove_user_from_group([::AWSConfig], arguments::Dict)
    admin_remove_user_from_group([::AWSConfig]; UserPoolId=, Username=, GroupName=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminRemoveUserFromGroup", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminRemoveUserFromGroup", UserPoolId=, Username=, GroupName=)

# AdminRemoveUserFromGroup Operation

Removes the specified user from the specified group.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `Username = ::String` -- *Required*
The username for the user.


## `GroupName = ::String` -- *Required*
The group name.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminRemoveUserFromGroup)
"""
@inline admin_remove_user_from_group(aws::AWSConfig=default_aws_config(); args...) = admin_remove_user_from_group(aws, args)

@inline admin_remove_user_from_group(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminRemoveUserFromGroup", args)

@inline admin_remove_user_from_group(args) = admin_remove_user_from_group(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_reset_user_password
    admin_reset_user_password([::AWSConfig], arguments::Dict)
    admin_reset_user_password([::AWSConfig]; UserPoolId=, Username=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminResetUserPassword", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminResetUserPassword", UserPoolId=, Username=)

# AdminResetUserPassword Operation

Resets the specified user's password in a user pool as an administrator. Works on any user.

When a developer calls this API, the current password is invalidated, so it must be changed. If a user tries to sign in after the API is called, the app will get a PasswordResetRequiredException exception back and should direct the user down the flow to reset the password, which is the same as the forgot password flow. In addition, if the user pool has phone verification selected and a verified phone number exists for the user, or if email verification is selected and a verified email exists for the user, calling this API will also result in sending a message to the end user with the code to change their password.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to reset the user's password.


## `Username = ::String` -- *Required*
The user name of the user whose password you wish to reset.




# Returns

`AdminResetUserPasswordResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `UnexpectedLambdaException`, `UserLambdaValidationException`, `NotAuthorizedException`, `InvalidLambdaResponseException`, `TooManyRequestsException`, `LimitExceededException`, `UserNotFoundException`, `InvalidSmsRoleAccessPolicyException`, `InvalidEmailRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminResetUserPassword)
"""
@inline admin_reset_user_password(aws::AWSConfig=default_aws_config(); args...) = admin_reset_user_password(aws, args)

@inline admin_reset_user_password(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminResetUserPassword", args)

@inline admin_reset_user_password(args) = admin_reset_user_password(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_respond_to_auth_challenge
    admin_respond_to_auth_challenge([::AWSConfig], arguments::Dict)
    admin_respond_to_auth_challenge([::AWSConfig]; UserPoolId=, ClientId=, ChallengeName=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminRespondToAuthChallenge", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminRespondToAuthChallenge", UserPoolId=, ClientId=, ChallengeName=, <keyword arguments>)

# AdminRespondToAuthChallenge Operation

Responds to an authentication challenge, as an administrator.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The ID of the Amazon Cognito user pool.


## `ClientId = ::String` -- *Required*
The app client ID.


## `ChallengeName = "SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH" or "NEW_PASSWORD_REQUIRED"` -- *Required*
The challenge name. For more information, see .


## `ChallengeResponses = ::Dict{String,String}`
The challenge responses. These are inputs corresponding to the value of `ChallengeName`, for example:

*   `SMS_MFA`: `SMS_MFA_CODE`, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).

*   `PASSWORD_VERIFIER`: `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, `TIMESTAMP`, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).

*   `ADMIN_NO_SRP_AUTH`: `PASSWORD`, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).

*   `NEW_PASSWORD_REQUIRED`: `NEW_PASSWORD`, any other required attributes, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).

The value of the `USERNAME` attribute must be the user's actual username, not an alias (such as email address or phone number). To make this easier, the `AdminInitiateAuth` response includes the actual username value in the `USERNAMEUSER_ID_FOR_SRP` attribute, even if you specified an alias in your call to `AdminInitiateAuth`.


## `Session = ::String`
The session which should be passed both ways in challenge-response calls to the service. If `InitiateAuth` or `RespondToAuthChallenge` API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next `RespondToAuthChallenge` API call.


## `AnalyticsMetadata = ["AnalyticsEndpointId" =>  ::String]`
The analytics metadata for collecting Amazon Pinpoint metrics for `AdminRespondToAuthChallenge` calls.


## `ContextData = [ ... ]`
Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
```
 ContextData = [
        "IpAddress" => <required> ::String,
        "ServerName" => <required> ::String,
        "ServerPath" => <required> ::String,
        "HttpHeaders" => <required> [[
            "headerName" =>  ::String,
            "headerValue" =>  ::String
        ], ...],
        "EncodedData" =>  ::String
    ]
```



# Returns

`AdminRespondToAuthChallengeResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `CodeMismatchException`, `ExpiredCodeException`, `UnexpectedLambdaException`, `InvalidPasswordException`, `UserLambdaValidationException`, `InvalidLambdaResponseException`, `TooManyRequestsException`, `InvalidUserPoolConfigurationException`, `InternalErrorException`, `MFAMethodNotFoundException`, `InvalidSmsRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException`, `AliasExistsException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `SoftwareTokenMFANotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminRespondToAuthChallenge)
"""
@inline admin_respond_to_auth_challenge(aws::AWSConfig=default_aws_config(); args...) = admin_respond_to_auth_challenge(aws, args)

@inline admin_respond_to_auth_challenge(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminRespondToAuthChallenge", args)

@inline admin_respond_to_auth_challenge(args) = admin_respond_to_auth_challenge(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_set_user_mfapreference
    admin_set_user_mfapreference([::AWSConfig], arguments::Dict)
    admin_set_user_mfapreference([::AWSConfig]; Username=, UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminSetUserMFAPreference", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminSetUserMFAPreference", Username=, UserPoolId=, <keyword arguments>)

# AdminSetUserMFAPreference Operation

Sets the user's multi-factor authentication (MFA) preference.

# Arguments

## `SMSMfaSettings = [ ... ]`
The SMS text message MFA settings.
```
 SMSMfaSettings = [
        "Enabled" =>  ::Bool,
        "PreferredMfa" =>  ::Bool
    ]
```

## `SoftwareTokenMfaSettings = [ ... ]`
The time-based one-time password software token MFA settings.
```
 SoftwareTokenMfaSettings = [
        "Enabled" =>  ::Bool,
        "PreferredMfa" =>  ::Bool
    ]
```

## `Username = ::String` -- *Required*
The user pool username or alias.


## `UserPoolId = ::String` -- *Required*
The user pool ID.




# Returns

`AdminSetUserMFAPreferenceResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserMFAPreference)
"""
@inline admin_set_user_mfapreference(aws::AWSConfig=default_aws_config(); args...) = admin_set_user_mfapreference(aws, args)

@inline admin_set_user_mfapreference(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminSetUserMFAPreference", args)

@inline admin_set_user_mfapreference(args) = admin_set_user_mfapreference(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_set_user_settings
    admin_set_user_settings([::AWSConfig], arguments::Dict)
    admin_set_user_settings([::AWSConfig]; UserPoolId=, Username=, MFAOptions=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminSetUserSettings", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminSetUserSettings", UserPoolId=, Username=, MFAOptions=)

# AdminSetUserSettings Operation

Sets all the user settings for a specified user name. Works on any user.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to set the user's settings, such as MFA options.


## `Username = ::String` -- *Required*
The user name of the user for whom you wish to set user settings.


## `MFAOptions = [[ ... ], ...]` -- *Required*
Specifies the options for MFA (e.g., email or phone number).
```
 MFAOptions = [[
        "DeliveryMedium" =>  "SMS" or "EMAIL",
        "AttributeName" =>  ::String
    ], ...]
```



# Returns

`AdminSetUserSettingsResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminSetUserSettings)
"""
@inline admin_set_user_settings(aws::AWSConfig=default_aws_config(); args...) = admin_set_user_settings(aws, args)

@inline admin_set_user_settings(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminSetUserSettings", args)

@inline admin_set_user_settings(args) = admin_set_user_settings(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_update_auth_event_feedback
    admin_update_auth_event_feedback([::AWSConfig], arguments::Dict)
    admin_update_auth_event_feedback([::AWSConfig]; UserPoolId=, Username=, EventId=, FeedbackValue=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminUpdateAuthEventFeedback", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminUpdateAuthEventFeedback", UserPoolId=, Username=, EventId=, FeedbackValue=)

# AdminUpdateAuthEventFeedback Operation

Provides feedback for an authentication event as to whether it was from a valid user. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `Username = ::String` -- *Required*
The user pool username.


## `EventId = ::String` -- *Required*
The authentication event ID.


## `FeedbackValue = "Valid" or "Invalid"` -- *Required*
The authentication event feedback value.




# Returns

`AdminUpdateAuthEventFeedbackResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException`, `UserPoolAddOnNotEnabledException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateAuthEventFeedback)
"""
@inline admin_update_auth_event_feedback(aws::AWSConfig=default_aws_config(); args...) = admin_update_auth_event_feedback(aws, args)

@inline admin_update_auth_event_feedback(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminUpdateAuthEventFeedback", args)

@inline admin_update_auth_event_feedback(args) = admin_update_auth_event_feedback(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_update_device_status
    admin_update_device_status([::AWSConfig], arguments::Dict)
    admin_update_device_status([::AWSConfig]; UserPoolId=, Username=, DeviceKey=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminUpdateDeviceStatus", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminUpdateDeviceStatus", UserPoolId=, Username=, DeviceKey=, <keyword arguments>)

# AdminUpdateDeviceStatus Operation

Updates the device status as an administrator.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `Username = ::String` -- *Required*
The user name.


## `DeviceKey = ::String` -- *Required*
The device key.


## `DeviceRememberedStatus = "remembered" or "not_remembered"`
The status indicating whether a device has been remembered or not.




# Returns

`AdminUpdateDeviceStatusResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `InvalidUserPoolConfigurationException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateDeviceStatus)
"""
@inline admin_update_device_status(aws::AWSConfig=default_aws_config(); args...) = admin_update_device_status(aws, args)

@inline admin_update_device_status(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminUpdateDeviceStatus", args)

@inline admin_update_device_status(args) = admin_update_device_status(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_update_user_attributes
    admin_update_user_attributes([::AWSConfig], arguments::Dict)
    admin_update_user_attributes([::AWSConfig]; UserPoolId=, Username=, UserAttributes=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminUpdateUserAttributes", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminUpdateUserAttributes", UserPoolId=, Username=, UserAttributes=)

# AdminUpdateUserAttributes Operation

Updates the specified user's attributes, including developer attributes, as an administrator. Works on any user.

For custom attributes, you must prepend the `custom:` prefix to the attribute name.

In addition to updating user attributes, this API can also be used to mark phone and email as verified.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to update user attributes.


## `Username = ::String` -- *Required*
The user name of the user for whom you want to update user attributes.


## `UserAttributes = [[ ... ], ...]` -- *Required*
An array of name-value pairs representing user attributes.

For custom attributes, you must prepend the `custom:` prefix to the attribute name.
```
 UserAttributes = [[
        "Name" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`AdminUpdateUserAttributesResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `UnexpectedLambdaException`, `UserLambdaValidationException`, `InvalidLambdaResponseException`, `AliasExistsException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUpdateUserAttributes)
"""
@inline admin_update_user_attributes(aws::AWSConfig=default_aws_config(); args...) = admin_update_user_attributes(aws, args)

@inline admin_update_user_attributes(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminUpdateUserAttributes", args)

@inline admin_update_user_attributes(args) = admin_update_user_attributes(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.admin_user_global_sign_out
    admin_user_global_sign_out([::AWSConfig], arguments::Dict)
    admin_user_global_sign_out([::AWSConfig]; UserPoolId=, Username=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AdminUserGlobalSignOut", arguments::Dict)
    cognito_idp([::AWSConfig], "AdminUserGlobalSignOut", UserPoolId=, Username=)

# AdminUserGlobalSignOut Operation

Signs out users from all devices, as an administrator.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `Username = ::String` -- *Required*
The user name.




# Returns

`AdminUserGlobalSignOutResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AdminUserGlobalSignOut)
"""
@inline admin_user_global_sign_out(aws::AWSConfig=default_aws_config(); args...) = admin_user_global_sign_out(aws, args)

@inline admin_user_global_sign_out(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AdminUserGlobalSignOut", args)

@inline admin_user_global_sign_out(args) = admin_user_global_sign_out(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.associate_software_token
    associate_software_token([::AWSConfig], arguments::Dict)
    associate_software_token([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "AssociateSoftwareToken", arguments::Dict)
    cognito_idp([::AWSConfig], "AssociateSoftwareToken", <keyword arguments>)

# AssociateSoftwareToken Operation

Returns a unique generated shared secret key code for the user account. The request takes an access token or a session string, but not both.

# Arguments

## `AccessToken = ::String`
The access token.


## `Session = ::String`
The session which should be passed both ways in challenge-response calls to the service. This allows authentication of the user as part of the MFA setup process.




# Returns

`AssociateSoftwareTokenResponse`

# Exceptions

`InvalidParameterException`, `NotAuthorizedException`, `ResourceNotFoundException`, `InternalErrorException` or `SoftwareTokenMFANotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/AssociateSoftwareToken)
"""
@inline associate_software_token(aws::AWSConfig=default_aws_config(); args...) = associate_software_token(aws, args)

@inline associate_software_token(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "AssociateSoftwareToken", args)

@inline associate_software_token(args) = associate_software_token(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.change_password
    change_password([::AWSConfig], arguments::Dict)
    change_password([::AWSConfig]; PreviousPassword=, ProposedPassword=, AccessToken=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ChangePassword", arguments::Dict)
    cognito_idp([::AWSConfig], "ChangePassword", PreviousPassword=, ProposedPassword=, AccessToken=)

# ChangePassword Operation

Changes the password for a specified user in a user pool.

# Arguments

## `PreviousPassword = ::String` -- *Required*
The old password.


## `ProposedPassword = ::String` -- *Required*
The new password.


## `AccessToken = ::String` -- *Required*
The access token.




# Returns

`ChangePasswordResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `InvalidPasswordException`, `NotAuthorizedException`, `TooManyRequestsException`, `LimitExceededException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ChangePassword)
"""
@inline change_password(aws::AWSConfig=default_aws_config(); args...) = change_password(aws, args)

@inline change_password(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ChangePassword", args)

@inline change_password(args) = change_password(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.confirm_device
    confirm_device([::AWSConfig], arguments::Dict)
    confirm_device([::AWSConfig]; AccessToken=, DeviceKey=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ConfirmDevice", arguments::Dict)
    cognito_idp([::AWSConfig], "ConfirmDevice", AccessToken=, DeviceKey=, <keyword arguments>)

# ConfirmDevice Operation

Confirms tracking of the device. This API call is the call that begins device tracking.

# Arguments

## `AccessToken = ::String` -- *Required*
The access token.


## `DeviceKey = ::String` -- *Required*
The device key.


## `DeviceSecretVerifierConfig = [ ... ]`
The configuration of the device secret verifier.
```
 DeviceSecretVerifierConfig = [
        "PasswordVerifier" =>  ::String,
        "Salt" =>  ::String
    ]
```

## `DeviceName = ::String`
The device name.




# Returns

`ConfirmDeviceResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `InvalidPasswordException`, `InvalidLambdaResponseException`, `UsernameExistsException`, `InvalidUserPoolConfigurationException`, `TooManyRequestsException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmDevice)
"""
@inline confirm_device(aws::AWSConfig=default_aws_config(); args...) = confirm_device(aws, args)

@inline confirm_device(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ConfirmDevice", args)

@inline confirm_device(args) = confirm_device(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.confirm_forgot_password
    confirm_forgot_password([::AWSConfig], arguments::Dict)
    confirm_forgot_password([::AWSConfig]; ClientId=, Username=, ConfirmationCode=, Password=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ConfirmForgotPassword", arguments::Dict)
    cognito_idp([::AWSConfig], "ConfirmForgotPassword", ClientId=, Username=, ConfirmationCode=, Password=, <keyword arguments>)

# ConfirmForgotPassword Operation

Allows a user to enter a confirmation code to reset a forgotten password.

# Arguments

## `ClientId = ::String` -- *Required*
The app client ID of the app associated with the user pool.


## `SecretHash = ::String`
A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.


## `Username = ::String` -- *Required*
The user name of the user for whom you want to enter a code to retrieve a forgotten password.


## `ConfirmationCode = ::String` -- *Required*
The confirmation code sent by a user's request to retrieve a forgotten password. For more information, see


## `Password = ::String` -- *Required*
The password sent by a user's request to retrieve a forgotten password.


## `AnalyticsMetadata = ["AnalyticsEndpointId" =>  ::String]`
The Amazon Pinpoint analytics metadata for collecting metrics for `ConfirmForgotPassword` calls.


## `UserContextData = ["EncodedData" =>  ::String]`
Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.




# Returns

`ConfirmForgotPasswordResponse`

# Exceptions

`ResourceNotFoundException`, `UnexpectedLambdaException`, `UserLambdaValidationException`, `InvalidParameterException`, `InvalidPasswordException`, `NotAuthorizedException`, `CodeMismatchException`, `ExpiredCodeException`, `TooManyFailedAttemptsException`, `InvalidLambdaResponseException`, `TooManyRequestsException`, `LimitExceededException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmForgotPassword)
"""
@inline confirm_forgot_password(aws::AWSConfig=default_aws_config(); args...) = confirm_forgot_password(aws, args)

@inline confirm_forgot_password(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ConfirmForgotPassword", args)

@inline confirm_forgot_password(args) = confirm_forgot_password(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.confirm_sign_up
    confirm_sign_up([::AWSConfig], arguments::Dict)
    confirm_sign_up([::AWSConfig]; ClientId=, Username=, ConfirmationCode=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ConfirmSignUp", arguments::Dict)
    cognito_idp([::AWSConfig], "ConfirmSignUp", ClientId=, Username=, ConfirmationCode=, <keyword arguments>)

# ConfirmSignUp Operation

Confirms registration of a user and handles the existing alias from a previous user.

# Arguments

## `ClientId = ::String` -- *Required*
The ID of the app client associated with the user pool.


## `SecretHash = ::String`
A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.


## `Username = ::String` -- *Required*
The user name of the user whose registration you wish to confirm.


## `ConfirmationCode = ::String` -- *Required*
The confirmation code sent by a user's request to confirm registration.


## `ForceAliasCreation = ::Bool`
Boolean to be specified to force user confirmation irrespective of existing alias. By default set to `False`. If this parameter is set to `True` and the phone number/email used for sign up confirmation already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user being confirmed. If set to `False`, the API will throw an **AliasExistsException** error.


## `AnalyticsMetadata = ["AnalyticsEndpointId" =>  ::String]`
The Amazon Pinpoint analytics metadata for collecting metrics for `ConfirmSignUp` calls.


## `UserContextData = ["EncodedData" =>  ::String]`
Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.




# Returns

`ConfirmSignUpResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `UnexpectedLambdaException`, `UserLambdaValidationException`, `NotAuthorizedException`, `TooManyFailedAttemptsException`, `CodeMismatchException`, `ExpiredCodeException`, `InvalidLambdaResponseException`, `AliasExistsException`, `TooManyRequestsException`, `LimitExceededException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ConfirmSignUp)
"""
@inline confirm_sign_up(aws::AWSConfig=default_aws_config(); args...) = confirm_sign_up(aws, args)

@inline confirm_sign_up(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ConfirmSignUp", args)

@inline confirm_sign_up(args) = confirm_sign_up(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.create_group
    create_group([::AWSConfig], arguments::Dict)
    create_group([::AWSConfig]; GroupName=, UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "CreateGroup", arguments::Dict)
    cognito_idp([::AWSConfig], "CreateGroup", GroupName=, UserPoolId=, <keyword arguments>)

# CreateGroup Operation

Creates a new group in the specified user pool.

Requires developer credentials.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the group. Must be unique.


## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `Description = ::String`
A string containing the description of the group.


## `RoleArn = ::String`
The role ARN for the group.


## `Precedence = ::Int`
A nonnegative integer value that specifies the precedence of this group relative to the other groups that a user can belong to in the user pool. Zero is the highest precedence value. Groups with lower `Precedence` values take precedence over groups with higher or null `Precedence` values. If a user belongs to two or more groups, it is the group with the lowest precedence value whose role ARN will be used in the `cognito:roles` and `cognito:preferred_role` claims in the user's tokens.

Two groups can have the same `Precedence` value. If this happens, neither group takes precedence over the other. If two groups with the same `Precedence` have the same role ARN, that role is used in the `cognito:preferred_role` claim in tokens for users in each group. If the two groups have different role ARNs, the `cognito:preferred_role` claim is not set in users' tokens.

The default `Precedence` value is null.




# Returns

`CreateGroupResponse`

# Exceptions

`InvalidParameterException`, `GroupExistsException`, `ResourceNotFoundException`, `TooManyRequestsException`, `LimitExceededException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateGroup)
"""
@inline create_group(aws::AWSConfig=default_aws_config(); args...) = create_group(aws, args)

@inline create_group(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "CreateGroup", args)

@inline create_group(args) = create_group(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.create_identity_provider
    create_identity_provider([::AWSConfig], arguments::Dict)
    create_identity_provider([::AWSConfig]; UserPoolId=, ProviderName=, ProviderType=, ProviderDetails=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "CreateIdentityProvider", arguments::Dict)
    cognito_idp([::AWSConfig], "CreateIdentityProvider", UserPoolId=, ProviderName=, ProviderType=, ProviderDetails=, <keyword arguments>)

# CreateIdentityProvider Operation

Creates an identity provider for a user pool.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `ProviderName = ::String` -- *Required*
The identity provider name.


## `ProviderType = "SAML", "Facebook", "Google", "LoginWithAmazon" or "OIDC"` -- *Required*
The identity provider type.


## `ProviderDetails = ::Dict{String,String}` -- *Required*
The identity provider details, such as `MetadataURL` and `MetadataFile`.


## `AttributeMapping = ::Dict{String,String}`
A mapping of identity provider attributes to standard and custom user pool attributes.


## `IdpIdentifiers = [::String, ...]`
A list of identity provider identifiers.




# Returns

`CreateIdentityProviderResponse`

# Exceptions

`InvalidParameterException`, `DuplicateProviderException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException`, `LimitExceededException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateIdentityProvider)
"""
@inline create_identity_provider(aws::AWSConfig=default_aws_config(); args...) = create_identity_provider(aws, args)

@inline create_identity_provider(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "CreateIdentityProvider", args)

@inline create_identity_provider(args) = create_identity_provider(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.create_resource_server
    create_resource_server([::AWSConfig], arguments::Dict)
    create_resource_server([::AWSConfig]; UserPoolId=, Identifier=, Name=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "CreateResourceServer", arguments::Dict)
    cognito_idp([::AWSConfig], "CreateResourceServer", UserPoolId=, Identifier=, Name=, <keyword arguments>)

# CreateResourceServer Operation

Creates a new OAuth2.0 resource server and defines custom scopes in it.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `Identifier = ::String` -- *Required*
A unique resource server identifier for the resource server. This could be an HTTPS endpoint where the resource server is located. For example, `https://my-weather-api.example.com`.


## `Name = ::String` -- *Required*
A friendly name for the resource server.


## `Scopes = [[ ... ], ...]`
A list of scopes. Each scope is map, where the keys are `name` and `description`.
```
 Scopes = [[
        "ScopeName" => <required> ::String,
        "ScopeDescription" => <required> ::String
    ], ...]
```



# Returns

`CreateResourceServerResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException`, `LimitExceededException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateResourceServer)
"""
@inline create_resource_server(aws::AWSConfig=default_aws_config(); args...) = create_resource_server(aws, args)

@inline create_resource_server(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "CreateResourceServer", args)

@inline create_resource_server(args) = create_resource_server(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.create_user_import_job
    create_user_import_job([::AWSConfig], arguments::Dict)
    create_user_import_job([::AWSConfig]; JobName=, UserPoolId=, CloudWatchLogsRoleArn=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "CreateUserImportJob", arguments::Dict)
    cognito_idp([::AWSConfig], "CreateUserImportJob", JobName=, UserPoolId=, CloudWatchLogsRoleArn=)

# CreateUserImportJob Operation

Creates the user import job.

# Arguments

## `JobName = ::String` -- *Required*
The job name for the user import job.


## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool that the users are being imported into.


## `CloudWatchLogsRoleArn = ::String` -- *Required*
The role ARN for the Amazon CloudWatch Logging role for the user import job.




# Returns

`CreateUserImportJobResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `PreconditionNotMetException`, `NotAuthorizedException`, `LimitExceededException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserImportJob)
"""
@inline create_user_import_job(aws::AWSConfig=default_aws_config(); args...) = create_user_import_job(aws, args)

@inline create_user_import_job(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "CreateUserImportJob", args)

@inline create_user_import_job(args) = create_user_import_job(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.create_user_pool
    create_user_pool([::AWSConfig], arguments::Dict)
    create_user_pool([::AWSConfig]; PoolName=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "CreateUserPool", arguments::Dict)
    cognito_idp([::AWSConfig], "CreateUserPool", PoolName=, <keyword arguments>)

# CreateUserPool Operation

Creates a new Amazon Cognito user pool and sets the password policy for the pool.

# Arguments

## `PoolName = ::String` -- *Required*
A string used to name the user pool.


## `Policies = ["PasswordPolicy" =>  [ ... ]]`
The policies associated with the new user pool.
```
 Policies = ["PasswordPolicy" =>  [
            "MinimumLength" =>  ::Int,
            "RequireUppercase" =>  ::Bool,
            "RequireLowercase" =>  ::Bool,
            "RequireNumbers" =>  ::Bool,
            "RequireSymbols" =>  ::Bool
        ]]
```

## `LambdaConfig = [ ... ]`
The Lambda trigger configuration information for the new user pool.

**Note**
> In a push model, event sources (such as Amazon S3 and custom applications) need permission to invoke a function. So you will need to make an extra call to add permission for these event sources to invoke your Lambda function.

For more information on using the Lambda API to add permission, see [AddPermission](https://docs.aws.amazon.com/lambda/latest/dg/API_AddPermission.html) .

For adding permission using the AWS CLI, see [add-permission](https://docs.aws.amazon.com/cli/latest/reference/lambda/add-permission.html) .
```
 LambdaConfig = [
        "PreSignUp" =>  ::String,
        "CustomMessage" =>  ::String,
        "PostConfirmation" =>  ::String,
        "PreAuthentication" =>  ::String,
        "PostAuthentication" =>  ::String,
        "DefineAuthChallenge" =>  ::String,
        "CreateAuthChallenge" =>  ::String,
        "VerifyAuthChallengeResponse" =>  ::String,
        "PreTokenGeneration" =>  ::String,
        "UserMigration" =>  ::String
    ]
```

## `AutoVerifiedAttributes = ["phone_number" or "email", ...]`
The attributes to be auto-verified. Possible values: **email**, **phone_number**.


## `AliasAttributes = ["phone_number", "email" or "preferred_username", ...]`
Attributes supported as an alias for this user pool. Possible values: **phone_number**, **email**, or **preferred_username**.


## `UsernameAttributes = ["phone_number" or "email", ...]`
Specifies whether email addresses or phone numbers can be specified as usernames when a user signs up.


## `SmsVerificationMessage = ::String`
A string representing the SMS verification message.


## `EmailVerificationMessage = ::String`
A string representing the email verification message.


## `EmailVerificationSubject = ::String`
A string representing the email verification subject.


## `VerificationMessageTemplate = [ ... ]`
The template for the verification message that the user sees when the app requests permission to access the user's information.
```
 VerificationMessageTemplate = [
        "SmsMessage" =>  ::String,
        "EmailMessage" =>  ::String,
        "EmailSubject" =>  ::String,
        "EmailMessageByLink" =>  ::String,
        "EmailSubjectByLink" =>  ::String,
        "DefaultEmailOption" =>  "CONFIRM_WITH_LINK" or "CONFIRM_WITH_CODE"
    ]
```

## `SmsAuthenticationMessage = ::String`
A string representing the SMS authentication message.


## `MfaConfiguration = "OFF", "ON" or "OPTIONAL"`
Specifies MFA configuration details.


## `DeviceConfiguration = [ ... ]`
The device configuration.
```
 DeviceConfiguration = [
        "ChallengeRequiredOnNewDevice" =>  ::Bool,
        "DeviceOnlyRememberedOnUserPrompt" =>  ::Bool
    ]
```

## `EmailConfiguration = [ ... ]`
The email configuration.
```
 EmailConfiguration = [
        "SourceArn" =>  ::String,
        "ReplyToEmailAddress" =>  ::String
    ]
```

## `SmsConfiguration = [ ... ]`
The SMS configuration.
```
 SmsConfiguration = [
        "SnsCallerArn" => <required> ::String,
        "ExternalId" =>  ::String
    ]
```

## `UserPoolTags = ::Dict{String,String}`
The cost allocation tags for the user pool. For more information, see [Adding Cost Allocation Tags to Your User Pool](http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html)


## `AdminCreateUserConfig = [ ... ]`
The configuration for `AdminCreateUser` requests.
```
 AdminCreateUserConfig = [
        "AllowAdminCreateUserOnly" =>  ::Bool,
        "UnusedAccountValidityDays" =>  ::Int,
        "InviteMessageTemplate" =>  [
            "SMSMessage" =>  ::String,
            "EmailMessage" =>  ::String,
            "EmailSubject" =>  ::String
        ]
    ]
```

## `Schema = [[ ... ], ...]`
An array of schema attributes for the new user pool. These attributes can be standard or custom attributes.
```
 Schema = [[
        "Name" =>  ::String,
        "AttributeDataType" =>  "String", "Number", "DateTime" or "Boolean",
        "DeveloperOnlyAttribute" =>  ::Bool,
        "Mutable" =>  ::Bool,
        "Required" =>  ::Bool,
        "NumberAttributeConstraints" =>  [
            "MinValue" =>  ::String,
            "MaxValue" =>  ::String
        ],
        "StringAttributeConstraints" =>  [
            "MinLength" =>  ::String,
            "MaxLength" =>  ::String
        ]
    ], ...]
```

## `UserPoolAddOns = ["AdvancedSecurityMode" => <required> "OFF", "AUDIT" or "ENFORCED"]`
Used to enable advanced security risk detection. Set the key `AdvancedSecurityMode` to the value "AUDIT".




# Returns

`CreateUserPoolResponse`

# Exceptions

`InvalidParameterException`, `TooManyRequestsException`, `LimitExceededException`, `InvalidSmsRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException`, `InvalidEmailRoleAccessPolicyException`, `NotAuthorizedException`, `UserPoolTaggingException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPool)
"""
@inline create_user_pool(aws::AWSConfig=default_aws_config(); args...) = create_user_pool(aws, args)

@inline create_user_pool(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "CreateUserPool", args)

@inline create_user_pool(args) = create_user_pool(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.create_user_pool_client
    create_user_pool_client([::AWSConfig], arguments::Dict)
    create_user_pool_client([::AWSConfig]; UserPoolId=, ClientName=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "CreateUserPoolClient", arguments::Dict)
    cognito_idp([::AWSConfig], "CreateUserPoolClient", UserPoolId=, ClientName=, <keyword arguments>)

# CreateUserPoolClient Operation

Creates the user pool client.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to create a user pool client.


## `ClientName = ::String` -- *Required*
The client name for the user pool client you would like to create.


## `GenerateSecret = ::Bool`
Boolean to specify whether you want to generate a secret for the user pool client being created.


## `RefreshTokenValidity = ::Int`
The time limit, in days, after which the refresh token is no longer valid and cannot be used.


## `ReadAttributes = [::String, ...]`
The read attributes.


## `WriteAttributes = [::String, ...]`
The write attributes.


## `ExplicitAuthFlows = ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY" or "USER_PASSWORD_AUTH", ...]`
The explicit authentication flows.


## `SupportedIdentityProviders = [::String, ...]`
A list of provider names for the identity providers that are supported on this client.


## `CallbackURLs = [::String, ...]`
A list of allowed redirect (callback) URLs for the identity providers.

A redirect URI must:

*   Be an absolute URI.

*   Be registered with the authorization server.

*   Not use HTTP without TLS (i.e. use HTTPS instead of HTTP).

*   Not include a fragment component.

See [OAuth 2.0 - Redirection Endpoint](https://tools.ietf.org/html/rfc6749#section-3.1.2).


## `LogoutURLs = [::String, ...]`
A list of allowed logout URLs for the identity providers.


## `DefaultRedirectURI = ::String`
The default redirect URI. Must be in the `CallbackURLs` list.

A redirect URI must:

*   Be an absolute URI.

*   Be registered with the authorization server.

*   Not use HTTP without TLS (i.e. use HTTPS instead of HTTP).

*   Not include a fragment component.

See [OAuth 2.0 - Redirection Endpoint](https://tools.ietf.org/html/rfc6749#section-3.1.2).


## `AllowedOAuthFlows = ["code", "implicit" or "client_credentials", ...]`
Set to `code` to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.

Set to `token` to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.


## `AllowedOAuthScopes = [::String, ...]`
A list of allowed `OAuth` scopes. Currently supported values are `"phone"`, `"email"`, `"openid"`, and `"Cognito"`.


## `AllowedOAuthFlowsUserPoolClient = ::Bool`
Set to `True` if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.


## `AnalyticsConfiguration = [ ... ]`
The Amazon Pinpoint analytics configuration for collecting metrics for this user pool.
```
 AnalyticsConfiguration = [
        "ApplicationId" => <required> ::String,
        "RoleArn" => <required> ::String,
        "ExternalId" => <required> ::String,
        "UserDataShared" =>  ::Bool
    ]
```



# Returns

`CreateUserPoolClientResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `TooManyRequestsException`, `LimitExceededException`, `NotAuthorizedException`, `ScopeDoesNotExistException`, `InvalidOAuthFlowException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolClient)
"""
@inline create_user_pool_client(aws::AWSConfig=default_aws_config(); args...) = create_user_pool_client(aws, args)

@inline create_user_pool_client(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "CreateUserPoolClient", args)

@inline create_user_pool_client(args) = create_user_pool_client(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.create_user_pool_domain
    create_user_pool_domain([::AWSConfig], arguments::Dict)
    create_user_pool_domain([::AWSConfig]; Domain=, UserPoolId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "CreateUserPoolDomain", arguments::Dict)
    cognito_idp([::AWSConfig], "CreateUserPoolDomain", Domain=, UserPoolId=)

# CreateUserPoolDomain Operation

Creates a new domain for a user pool.

# Arguments

## `Domain = ::String` -- *Required*
The domain string.


## `UserPoolId = ::String` -- *Required*
The user pool ID.




# Returns

`CreateUserPoolDomainResponse`

# Exceptions

`InvalidParameterException`, `NotAuthorizedException`, `ResourceNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/CreateUserPoolDomain)
"""
@inline create_user_pool_domain(aws::AWSConfig=default_aws_config(); args...) = create_user_pool_domain(aws, args)

@inline create_user_pool_domain(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "CreateUserPoolDomain", args)

@inline create_user_pool_domain(args) = create_user_pool_domain(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.delete_group
    delete_group([::AWSConfig], arguments::Dict)
    delete_group([::AWSConfig]; GroupName=, UserPoolId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DeleteGroup", arguments::Dict)
    cognito_idp([::AWSConfig], "DeleteGroup", GroupName=, UserPoolId=)

# DeleteGroup Operation

Deletes a group. Currently only groups with no members can be deleted.

Requires developer credentials.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the group.


## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.




# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteGroup)
"""
@inline delete_group(aws::AWSConfig=default_aws_config(); args...) = delete_group(aws, args)

@inline delete_group(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DeleteGroup", args)

@inline delete_group(args) = delete_group(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.delete_identity_provider
    delete_identity_provider([::AWSConfig], arguments::Dict)
    delete_identity_provider([::AWSConfig]; UserPoolId=, ProviderName=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DeleteIdentityProvider", arguments::Dict)
    cognito_idp([::AWSConfig], "DeleteIdentityProvider", UserPoolId=, ProviderName=)

# DeleteIdentityProvider Operation

Deletes an identity provider for a user pool.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `ProviderName = ::String` -- *Required*
The identity provider name.




# Exceptions

`InvalidParameterException`, `UnsupportedIdentityProviderException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteIdentityProvider)
"""
@inline delete_identity_provider(aws::AWSConfig=default_aws_config(); args...) = delete_identity_provider(aws, args)

@inline delete_identity_provider(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DeleteIdentityProvider", args)

@inline delete_identity_provider(args) = delete_identity_provider(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.delete_resource_server
    delete_resource_server([::AWSConfig], arguments::Dict)
    delete_resource_server([::AWSConfig]; UserPoolId=, Identifier=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DeleteResourceServer", arguments::Dict)
    cognito_idp([::AWSConfig], "DeleteResourceServer", UserPoolId=, Identifier=)

# DeleteResourceServer Operation

Deletes a resource server.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool that hosts the resource server.


## `Identifier = ::String` -- *Required*
The identifier for the resource server.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteResourceServer)
"""
@inline delete_resource_server(aws::AWSConfig=default_aws_config(); args...) = delete_resource_server(aws, args)

@inline delete_resource_server(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DeleteResourceServer", args)

@inline delete_resource_server(args) = delete_resource_server(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.delete_user
    delete_user([::AWSConfig], arguments::Dict)
    delete_user([::AWSConfig]; AccessToken=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DeleteUser", arguments::Dict)
    cognito_idp([::AWSConfig], "DeleteUser", AccessToken=)

# DeleteUser Operation

Allows a user to delete himself or herself.

# Arguments

## `AccessToken = ::String` -- *Required*
The access token from a request to delete a user.




# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `TooManyRequestsException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUser)
"""
@inline delete_user(aws::AWSConfig=default_aws_config(); args...) = delete_user(aws, args)

@inline delete_user(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DeleteUser", args)

@inline delete_user(args) = delete_user(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.delete_user_attributes
    delete_user_attributes([::AWSConfig], arguments::Dict)
    delete_user_attributes([::AWSConfig]; UserAttributeNames=, AccessToken=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DeleteUserAttributes", arguments::Dict)
    cognito_idp([::AWSConfig], "DeleteUserAttributes", UserAttributeNames=, AccessToken=)

# DeleteUserAttributes Operation

Deletes the attributes for a user.

# Arguments

## `UserAttributeNames = [::String, ...]` -- *Required*
An array of strings representing the user attribute names you wish to delete.

For custom attributes, you must prepend the `custom:` prefix to the attribute name.


## `AccessToken = ::String` -- *Required*
The access token used in the request to delete user attributes.




# Returns

`DeleteUserAttributesResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `TooManyRequestsException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserAttributes)
"""
@inline delete_user_attributes(aws::AWSConfig=default_aws_config(); args...) = delete_user_attributes(aws, args)

@inline delete_user_attributes(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DeleteUserAttributes", args)

@inline delete_user_attributes(args) = delete_user_attributes(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.delete_user_pool
    delete_user_pool([::AWSConfig], arguments::Dict)
    delete_user_pool([::AWSConfig]; UserPoolId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DeleteUserPool", arguments::Dict)
    cognito_idp([::AWSConfig], "DeleteUserPool", UserPoolId=)

# DeleteUserPool Operation

Deletes the specified Amazon Cognito user pool.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool you want to delete.




# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserImportInProgressException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPool)
"""
@inline delete_user_pool(aws::AWSConfig=default_aws_config(); args...) = delete_user_pool(aws, args)

@inline delete_user_pool(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DeleteUserPool", args)

@inline delete_user_pool(args) = delete_user_pool(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.delete_user_pool_client
    delete_user_pool_client([::AWSConfig], arguments::Dict)
    delete_user_pool_client([::AWSConfig]; UserPoolId=, ClientId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DeleteUserPoolClient", arguments::Dict)
    cognito_idp([::AWSConfig], "DeleteUserPoolClient", UserPoolId=, ClientId=)

# DeleteUserPoolClient Operation

Allows the developer to delete the user pool client.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to delete the client.


## `ClientId = ::String` -- *Required*
The app client ID of the app associated with the user pool.




# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolClient)
"""
@inline delete_user_pool_client(aws::AWSConfig=default_aws_config(); args...) = delete_user_pool_client(aws, args)

@inline delete_user_pool_client(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DeleteUserPoolClient", args)

@inline delete_user_pool_client(args) = delete_user_pool_client(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.delete_user_pool_domain
    delete_user_pool_domain([::AWSConfig], arguments::Dict)
    delete_user_pool_domain([::AWSConfig]; Domain=, UserPoolId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DeleteUserPoolDomain", arguments::Dict)
    cognito_idp([::AWSConfig], "DeleteUserPoolDomain", Domain=, UserPoolId=)

# DeleteUserPoolDomain Operation

Deletes a domain for a user pool.

# Arguments

## `Domain = ::String` -- *Required*
The domain string.


## `UserPoolId = ::String` -- *Required*
The user pool ID.




# Returns

`DeleteUserPoolDomainResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DeleteUserPoolDomain)
"""
@inline delete_user_pool_domain(aws::AWSConfig=default_aws_config(); args...) = delete_user_pool_domain(aws, args)

@inline delete_user_pool_domain(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DeleteUserPoolDomain", args)

@inline delete_user_pool_domain(args) = delete_user_pool_domain(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.describe_identity_provider
    describe_identity_provider([::AWSConfig], arguments::Dict)
    describe_identity_provider([::AWSConfig]; UserPoolId=, ProviderName=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DescribeIdentityProvider", arguments::Dict)
    cognito_idp([::AWSConfig], "DescribeIdentityProvider", UserPoolId=, ProviderName=)

# DescribeIdentityProvider Operation

Gets information about a specific identity provider.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `ProviderName = ::String` -- *Required*
The identity provider name.




# Returns

`DescribeIdentityProviderResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeIdentityProvider)
"""
@inline describe_identity_provider(aws::AWSConfig=default_aws_config(); args...) = describe_identity_provider(aws, args)

@inline describe_identity_provider(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DescribeIdentityProvider", args)

@inline describe_identity_provider(args) = describe_identity_provider(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.describe_resource_server
    describe_resource_server([::AWSConfig], arguments::Dict)
    describe_resource_server([::AWSConfig]; UserPoolId=, Identifier=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DescribeResourceServer", arguments::Dict)
    cognito_idp([::AWSConfig], "DescribeResourceServer", UserPoolId=, Identifier=)

# DescribeResourceServer Operation

Describes a resource server.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool that hosts the resource server.


## `Identifier = ::String` -- *Required*
The identifier for the resource server




# Returns

`DescribeResourceServerResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeResourceServer)
"""
@inline describe_resource_server(aws::AWSConfig=default_aws_config(); args...) = describe_resource_server(aws, args)

@inline describe_resource_server(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DescribeResourceServer", args)

@inline describe_resource_server(args) = describe_resource_server(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.describe_risk_configuration
    describe_risk_configuration([::AWSConfig], arguments::Dict)
    describe_risk_configuration([::AWSConfig]; UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DescribeRiskConfiguration", arguments::Dict)
    cognito_idp([::AWSConfig], "DescribeRiskConfiguration", UserPoolId=, <keyword arguments>)

# DescribeRiskConfiguration Operation

Describes the risk configuration.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `ClientId = ::String`
The app client ID.




# Returns

`DescribeRiskConfigurationResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserPoolAddOnNotEnabledException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeRiskConfiguration)
"""
@inline describe_risk_configuration(aws::AWSConfig=default_aws_config(); args...) = describe_risk_configuration(aws, args)

@inline describe_risk_configuration(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DescribeRiskConfiguration", args)

@inline describe_risk_configuration(args) = describe_risk_configuration(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.describe_user_import_job
    describe_user_import_job([::AWSConfig], arguments::Dict)
    describe_user_import_job([::AWSConfig]; UserPoolId=, JobId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DescribeUserImportJob", arguments::Dict)
    cognito_idp([::AWSConfig], "DescribeUserImportJob", UserPoolId=, JobId=)

# DescribeUserImportJob Operation

Describes the user import job.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool that the users are being imported into.


## `JobId = ::String` -- *Required*
The job ID for the user import job.




# Returns

`DescribeUserImportJobResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserImportJob)
"""
@inline describe_user_import_job(aws::AWSConfig=default_aws_config(); args...) = describe_user_import_job(aws, args)

@inline describe_user_import_job(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DescribeUserImportJob", args)

@inline describe_user_import_job(args) = describe_user_import_job(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.describe_user_pool
    describe_user_pool([::AWSConfig], arguments::Dict)
    describe_user_pool([::AWSConfig]; UserPoolId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DescribeUserPool", arguments::Dict)
    cognito_idp([::AWSConfig], "DescribeUserPool", UserPoolId=)

# DescribeUserPool Operation

Returns the configuration information and metadata of the specified user pool.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool you want to describe.




# Returns

`DescribeUserPoolResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserPoolTaggingException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPool)
"""
@inline describe_user_pool(aws::AWSConfig=default_aws_config(); args...) = describe_user_pool(aws, args)

@inline describe_user_pool(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DescribeUserPool", args)

@inline describe_user_pool(args) = describe_user_pool(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.describe_user_pool_client
    describe_user_pool_client([::AWSConfig], arguments::Dict)
    describe_user_pool_client([::AWSConfig]; UserPoolId=, ClientId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DescribeUserPoolClient", arguments::Dict)
    cognito_idp([::AWSConfig], "DescribeUserPoolClient", UserPoolId=, ClientId=)

# DescribeUserPoolClient Operation

Client method for returning the configuration information and metadata of the specified user pool client.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool you want to describe.


## `ClientId = ::String` -- *Required*
The app client ID of the app associated with the user pool.




# Returns

`DescribeUserPoolClientResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolClient)
"""
@inline describe_user_pool_client(aws::AWSConfig=default_aws_config(); args...) = describe_user_pool_client(aws, args)

@inline describe_user_pool_client(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DescribeUserPoolClient", args)

@inline describe_user_pool_client(args) = describe_user_pool_client(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.describe_user_pool_domain
    describe_user_pool_domain([::AWSConfig], arguments::Dict)
    describe_user_pool_domain([::AWSConfig]; Domain=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "DescribeUserPoolDomain", arguments::Dict)
    cognito_idp([::AWSConfig], "DescribeUserPoolDomain", Domain=)

# DescribeUserPoolDomain Operation

Gets information about a domain.

# Arguments

## `Domain = ::String` -- *Required*
The domain string.




# Returns

`DescribeUserPoolDomainResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/DescribeUserPoolDomain)
"""
@inline describe_user_pool_domain(aws::AWSConfig=default_aws_config(); args...) = describe_user_pool_domain(aws, args)

@inline describe_user_pool_domain(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "DescribeUserPoolDomain", args)

@inline describe_user_pool_domain(args) = describe_user_pool_domain(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.forget_device
    forget_device([::AWSConfig], arguments::Dict)
    forget_device([::AWSConfig]; DeviceKey=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ForgetDevice", arguments::Dict)
    cognito_idp([::AWSConfig], "ForgetDevice", DeviceKey=, <keyword arguments>)

# ForgetDevice Operation

Forgets the specified device.

# Arguments

## `AccessToken = ::String`
The access token for the forgotten device request.


## `DeviceKey = ::String` -- *Required*
The device key.




# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `TooManyRequestsException`, `InvalidUserPoolConfigurationException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForgetDevice)
"""
@inline forget_device(aws::AWSConfig=default_aws_config(); args...) = forget_device(aws, args)

@inline forget_device(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ForgetDevice", args)

@inline forget_device(args) = forget_device(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.forgot_password
    forgot_password([::AWSConfig], arguments::Dict)
    forgot_password([::AWSConfig]; ClientId=, Username=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ForgotPassword", arguments::Dict)
    cognito_idp([::AWSConfig], "ForgotPassword", ClientId=, Username=, <keyword arguments>)

# ForgotPassword Operation

Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password. For the `Username` parameter, you can use the username or user alias. If a verified phone number exists for the user, the confirmation code is sent to the phone number. Otherwise, if a verified email exists, the confirmation code is sent to the email. If neither a verified phone number nor a verified email exists, `InvalidParameterException` is thrown. To use the confirmation code for resetting the password, call .

# Arguments

## `ClientId = ::String` -- *Required*
The ID of the client associated with the user pool.


## `SecretHash = ::String`
A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.


## `UserContextData = ["EncodedData" =>  ::String]`
Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.


## `Username = ::String` -- *Required*
The user name of the user for whom you want to enter a code to reset a forgotten password.


## `AnalyticsMetadata = ["AnalyticsEndpointId" =>  ::String]`
The Amazon Pinpoint analytics metadata for collecting metrics for `ForgotPassword` calls.




# Returns

`ForgotPasswordResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `UnexpectedLambdaException`, `UserLambdaValidationException`, `NotAuthorizedException`, `InvalidLambdaResponseException`, `TooManyRequestsException`, `LimitExceededException`, `InvalidSmsRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException`, `InvalidEmailRoleAccessPolicyException`, `CodeDeliveryFailureException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ForgotPassword)
"""
@inline forgot_password(aws::AWSConfig=default_aws_config(); args...) = forgot_password(aws, args)

@inline forgot_password(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ForgotPassword", args)

@inline forgot_password(args) = forgot_password(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.get_csvheader
    get_csvheader([::AWSConfig], arguments::Dict)
    get_csvheader([::AWSConfig]; UserPoolId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "GetCSVHeader", arguments::Dict)
    cognito_idp([::AWSConfig], "GetCSVHeader", UserPoolId=)

# GetCSVHeader Operation

Gets the header information for the .csv file to be used as input for the user import job.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool that the users are to be imported into.




# Returns

`GetCSVHeaderResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetCSVHeader)
"""
@inline get_csvheader(aws::AWSConfig=default_aws_config(); args...) = get_csvheader(aws, args)

@inline get_csvheader(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "GetCSVHeader", args)

@inline get_csvheader(args) = get_csvheader(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.get_device
    get_device([::AWSConfig], arguments::Dict)
    get_device([::AWSConfig]; DeviceKey=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "GetDevice", arguments::Dict)
    cognito_idp([::AWSConfig], "GetDevice", DeviceKey=, <keyword arguments>)

# GetDevice Operation

Gets the device.

# Arguments

## `DeviceKey = ::String` -- *Required*
The device key.


## `AccessToken = ::String`
The access token.




# Returns

`GetDeviceResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `InvalidUserPoolConfigurationException`, `NotAuthorizedException`, `TooManyRequestsException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetDevice)
"""
@inline get_device(aws::AWSConfig=default_aws_config(); args...) = get_device(aws, args)

@inline get_device(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "GetDevice", args)

@inline get_device(args) = get_device(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.get_group
    get_group([::AWSConfig], arguments::Dict)
    get_group([::AWSConfig]; GroupName=, UserPoolId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "GetGroup", arguments::Dict)
    cognito_idp([::AWSConfig], "GetGroup", GroupName=, UserPoolId=)

# GetGroup Operation

Gets a group.

Requires developer credentials.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the group.


## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.




# Returns

`GetGroupResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetGroup)
"""
@inline get_group(aws::AWSConfig=default_aws_config(); args...) = get_group(aws, args)

@inline get_group(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "GetGroup", args)

@inline get_group(args) = get_group(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.get_identity_provider_by_identifier
    get_identity_provider_by_identifier([::AWSConfig], arguments::Dict)
    get_identity_provider_by_identifier([::AWSConfig]; UserPoolId=, IdpIdentifier=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "GetIdentityProviderByIdentifier", arguments::Dict)
    cognito_idp([::AWSConfig], "GetIdentityProviderByIdentifier", UserPoolId=, IdpIdentifier=)

# GetIdentityProviderByIdentifier Operation

Gets the specified identity provider.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `IdpIdentifier = ::String` -- *Required*
The identity provider ID.




# Returns

`GetIdentityProviderByIdentifierResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetIdentityProviderByIdentifier)
"""
@inline get_identity_provider_by_identifier(aws::AWSConfig=default_aws_config(); args...) = get_identity_provider_by_identifier(aws, args)

@inline get_identity_provider_by_identifier(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "GetIdentityProviderByIdentifier", args)

@inline get_identity_provider_by_identifier(args) = get_identity_provider_by_identifier(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.get_signing_certificate
    get_signing_certificate([::AWSConfig], arguments::Dict)
    get_signing_certificate([::AWSConfig]; UserPoolId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "GetSigningCertificate", arguments::Dict)
    cognito_idp([::AWSConfig], "GetSigningCertificate", UserPoolId=)

# GetSigningCertificate Operation

This method takes a user pool ID, and returns the signing certificate.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.




# Returns

`GetSigningCertificateResponse`

# Exceptions

`InternalErrorException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetSigningCertificate)
"""
@inline get_signing_certificate(aws::AWSConfig=default_aws_config(); args...) = get_signing_certificate(aws, args)

@inline get_signing_certificate(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "GetSigningCertificate", args)

@inline get_signing_certificate(args) = get_signing_certificate(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.get_uicustomization
    get_uicustomization([::AWSConfig], arguments::Dict)
    get_uicustomization([::AWSConfig]; UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "GetUICustomization", arguments::Dict)
    cognito_idp([::AWSConfig], "GetUICustomization", UserPoolId=, <keyword arguments>)

# GetUICustomization Operation

Gets the UI Customization information for a particular app client's app UI, if there is something set. If nothing is set for the particular client, but there is an existing pool level customization (app `clientId` will be `ALL`), then that is returned. If nothing is present, then an empty shape is returned.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `ClientId = ::String`
The client ID for the client app.




# Returns

`GetUICustomizationResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUICustomization)
"""
@inline get_uicustomization(aws::AWSConfig=default_aws_config(); args...) = get_uicustomization(aws, args)

@inline get_uicustomization(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "GetUICustomization", args)

@inline get_uicustomization(args) = get_uicustomization(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.get_user
    get_user([::AWSConfig], arguments::Dict)
    get_user([::AWSConfig]; AccessToken=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "GetUser", arguments::Dict)
    cognito_idp([::AWSConfig], "GetUser", AccessToken=)

# GetUser Operation

Gets the user attributes and metadata for a user.

# Arguments

## `AccessToken = ::String` -- *Required*
The access token returned by the server response to get information about the user.




# Returns

`GetUserResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `TooManyRequestsException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUser)
"""
@inline get_user(aws::AWSConfig=default_aws_config(); args...) = get_user(aws, args)

@inline get_user(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "GetUser", args)

@inline get_user(args) = get_user(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.get_user_attribute_verification_code
    get_user_attribute_verification_code([::AWSConfig], arguments::Dict)
    get_user_attribute_verification_code([::AWSConfig]; AccessToken=, AttributeName=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "GetUserAttributeVerificationCode", arguments::Dict)
    cognito_idp([::AWSConfig], "GetUserAttributeVerificationCode", AccessToken=, AttributeName=)

# GetUserAttributeVerificationCode Operation

Gets the user attribute verification code for the specified attribute name.

# Arguments

## `AccessToken = ::String` -- *Required*
The access token returned by the server response to get the user attribute verification code.


## `AttributeName = ::String` -- *Required*
The attribute name returned by the server response to get the user attribute verification code.




# Returns

`GetUserAttributeVerificationCodeResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UnexpectedLambdaException`, `UserLambdaValidationException`, `InvalidLambdaResponseException`, `InvalidSmsRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException`, `InvalidEmailRoleAccessPolicyException`, `CodeDeliveryFailureException`, `LimitExceededException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserAttributeVerificationCode)
"""
@inline get_user_attribute_verification_code(aws::AWSConfig=default_aws_config(); args...) = get_user_attribute_verification_code(aws, args)

@inline get_user_attribute_verification_code(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "GetUserAttributeVerificationCode", args)

@inline get_user_attribute_verification_code(args) = get_user_attribute_verification_code(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.get_user_pool_mfa_config
    get_user_pool_mfa_config([::AWSConfig], arguments::Dict)
    get_user_pool_mfa_config([::AWSConfig]; UserPoolId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "GetUserPoolMfaConfig", arguments::Dict)
    cognito_idp([::AWSConfig], "GetUserPoolMfaConfig", UserPoolId=)

# GetUserPoolMfaConfig Operation

Gets the user pool multi-factor authentication (MFA) configuration.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.




# Returns

`GetUserPoolMfaConfigResponse`

# Exceptions

`InvalidParameterException`, `TooManyRequestsException`, `ResourceNotFoundException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GetUserPoolMfaConfig)
"""
@inline get_user_pool_mfa_config(aws::AWSConfig=default_aws_config(); args...) = get_user_pool_mfa_config(aws, args)

@inline get_user_pool_mfa_config(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "GetUserPoolMfaConfig", args)

@inline get_user_pool_mfa_config(args) = get_user_pool_mfa_config(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.global_sign_out
    global_sign_out([::AWSConfig], arguments::Dict)
    global_sign_out([::AWSConfig]; AccessToken=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "GlobalSignOut", arguments::Dict)
    cognito_idp([::AWSConfig], "GlobalSignOut", AccessToken=)

# GlobalSignOut Operation

Signs out users from all devices.

# Arguments

## `AccessToken = ::String` -- *Required*
The access token.




# Returns

`GlobalSignOutResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `TooManyRequestsException`, `PasswordResetRequiredException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/GlobalSignOut)
"""
@inline global_sign_out(aws::AWSConfig=default_aws_config(); args...) = global_sign_out(aws, args)

@inline global_sign_out(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "GlobalSignOut", args)

@inline global_sign_out(args) = global_sign_out(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.initiate_auth
    initiate_auth([::AWSConfig], arguments::Dict)
    initiate_auth([::AWSConfig]; AuthFlow=, ClientId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "InitiateAuth", arguments::Dict)
    cognito_idp([::AWSConfig], "InitiateAuth", AuthFlow=, ClientId=, <keyword arguments>)

# InitiateAuth Operation

Initiates the authentication flow.

# Arguments

## `AuthFlow = "USER_SRP_AUTH", "REFRESH_TOKEN_AUTH", "REFRESH_TOKEN", "CUSTOM_AUTH", "ADMIN_NO_SRP_AUTH" or "USER_PASSWORD_AUTH"` -- *Required*
The authentication flow for this call to execute. The API action will depend on this value. For example:

*   `REFRESH_TOKEN_AUTH` will take in a valid refresh token and return new tokens.

*   `USER_SRP_AUTH` will take in `USERNAME` and `SRP_A` and return the SRP variables to be used for next challenge execution.

*   `USER_PASSWORD_AUTH` will take in `USERNAME` and `PASSWORD` and return the next challenge or tokens.

Valid values include:

*   `USER_SRP_AUTH`: Authentication flow for the Secure Remote Password (SRP) protocol.

*   `REFRESH_TOKEN_AUTH`/`REFRESH_TOKEN`: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.

*   `CUSTOM_AUTH`: Custom authentication flow.

*   `USER_PASSWORD_AUTH`: Non-SRP authentication flow; USERNAME and PASSWORD are passed directly. If a user migration Lambda trigger is set, this flow will invoke the user migration Lambda if the USERNAME is not found in the user pool.

`ADMIN_NO_SRP_AUTH` is not a valid value.


## `AuthParameters = ::Dict{String,String}`
The authentication parameters. These are inputs corresponding to the `AuthFlow` that you are invoking. The required values depend on the value of `AuthFlow`:

*   For `USER_SRP_AUTH`: `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`

*   For `REFRESH_TOKEN_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`

*   For `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app client is configured with client secret), `DEVICE_KEY`


## `ClientMetadata = ::Dict{String,String}`
This is a random key-value pair map which can contain any key and will be passed to your PreAuthentication Lambda trigger as-is. It can be used to implement additional validations around authentication.


## `ClientId = ::String` -- *Required*
The app client ID.


## `AnalyticsMetadata = ["AnalyticsEndpointId" =>  ::String]`
The Amazon Pinpoint analytics metadata for collecting metrics for `InitiateAuth` calls.


## `UserContextData = ["EncodedData" =>  ::String]`
Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.




# Returns

`InitiateAuthResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `TooManyRequestsException`, `UnexpectedLambdaException`, `InvalidUserPoolConfigurationException`, `UserLambdaValidationException`, `InvalidLambdaResponseException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/InitiateAuth)
"""
@inline initiate_auth(aws::AWSConfig=default_aws_config(); args...) = initiate_auth(aws, args)

@inline initiate_auth(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "InitiateAuth", args)

@inline initiate_auth(args) = initiate_auth(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.list_devices
    list_devices([::AWSConfig], arguments::Dict)
    list_devices([::AWSConfig]; AccessToken=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ListDevices", arguments::Dict)
    cognito_idp([::AWSConfig], "ListDevices", AccessToken=, <keyword arguments>)

# ListDevices Operation

Lists the devices.

# Arguments

## `AccessToken = ::String` -- *Required*
The access tokens for the request to list devices.


## `Limit = ::Int`
The limit of the device request.


## `PaginationToken = ::String`
The pagination token for the list request.




# Returns

`ListDevicesResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `InvalidUserPoolConfigurationException`, `TooManyRequestsException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListDevices)
"""
@inline list_devices(aws::AWSConfig=default_aws_config(); args...) = list_devices(aws, args)

@inline list_devices(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ListDevices", args)

@inline list_devices(args) = list_devices(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.list_groups
    list_groups([::AWSConfig], arguments::Dict)
    list_groups([::AWSConfig]; UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ListGroups", arguments::Dict)
    cognito_idp([::AWSConfig], "ListGroups", UserPoolId=, <keyword arguments>)

# ListGroups Operation

Lists the groups associated with a user pool.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `Limit = ::Int`
The limit of the request to list groups.


## `NextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListGroupsResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListGroups)
"""
@inline list_groups(aws::AWSConfig=default_aws_config(); args...) = list_groups(aws, args)

@inline list_groups(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ListGroups", args)

@inline list_groups(args) = list_groups(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.list_identity_providers
    list_identity_providers([::AWSConfig], arguments::Dict)
    list_identity_providers([::AWSConfig]; UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ListIdentityProviders", arguments::Dict)
    cognito_idp([::AWSConfig], "ListIdentityProviders", UserPoolId=, <keyword arguments>)

# ListIdentityProviders Operation

Lists information about all identity providers for a user pool.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `MaxResults = ::Int`
The maximum number of identity providers to return.


## `NextToken = ::String`
A pagination token.




# Returns

`ListIdentityProvidersResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListIdentityProviders)
"""
@inline list_identity_providers(aws::AWSConfig=default_aws_config(); args...) = list_identity_providers(aws, args)

@inline list_identity_providers(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ListIdentityProviders", args)

@inline list_identity_providers(args) = list_identity_providers(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.list_resource_servers
    list_resource_servers([::AWSConfig], arguments::Dict)
    list_resource_servers([::AWSConfig]; UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ListResourceServers", arguments::Dict)
    cognito_idp([::AWSConfig], "ListResourceServers", UserPoolId=, <keyword arguments>)

# ListResourceServers Operation

Lists the resource servers for a user pool.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `MaxResults = ::Int`
The maximum number of resource servers to return.


## `NextToken = ::String`
A pagination token.




# Returns

`ListResourceServersResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListResourceServers)
"""
@inline list_resource_servers(aws::AWSConfig=default_aws_config(); args...) = list_resource_servers(aws, args)

@inline list_resource_servers(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ListResourceServers", args)

@inline list_resource_servers(args) = list_resource_servers(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.list_user_import_jobs
    list_user_import_jobs([::AWSConfig], arguments::Dict)
    list_user_import_jobs([::AWSConfig]; UserPoolId=, MaxResults=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ListUserImportJobs", arguments::Dict)
    cognito_idp([::AWSConfig], "ListUserImportJobs", UserPoolId=, MaxResults=, <keyword arguments>)

# ListUserImportJobs Operation

Lists the user import jobs.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool that the users are being imported into.


## `MaxResults = ::Int` -- *Required*
The maximum number of import jobs you want the request to return.


## `PaginationToken = ::String`
An identifier that was returned from the previous call to `ListUserImportJobs`, which can be used to return the next set of import jobs in the list.




# Returns

`ListUserImportJobsResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserImportJobs)
"""
@inline list_user_import_jobs(aws::AWSConfig=default_aws_config(); args...) = list_user_import_jobs(aws, args)

@inline list_user_import_jobs(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ListUserImportJobs", args)

@inline list_user_import_jobs(args) = list_user_import_jobs(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.list_user_pool_clients
    list_user_pool_clients([::AWSConfig], arguments::Dict)
    list_user_pool_clients([::AWSConfig]; UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ListUserPoolClients", arguments::Dict)
    cognito_idp([::AWSConfig], "ListUserPoolClients", UserPoolId=, <keyword arguments>)

# ListUserPoolClients Operation

Lists the clients that have been created for the specified user pool.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to list user pool clients.


## `MaxResults = ::Int`
The maximum number of results you want the request to return when listing the user pool clients.


## `NextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListUserPoolClientsResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserPoolClients)
"""
@inline list_user_pool_clients(aws::AWSConfig=default_aws_config(); args...) = list_user_pool_clients(aws, args)

@inline list_user_pool_clients(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ListUserPoolClients", args)

@inline list_user_pool_clients(args) = list_user_pool_clients(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.list_user_pools
    list_user_pools([::AWSConfig], arguments::Dict)
    list_user_pools([::AWSConfig]; MaxResults=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ListUserPools", arguments::Dict)
    cognito_idp([::AWSConfig], "ListUserPools", MaxResults=, <keyword arguments>)

# ListUserPools Operation

Lists the user pools associated with an AWS account.

# Arguments

## `NextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.


## `MaxResults = ::Int` -- *Required*
The maximum number of results you want the request to return when listing the user pools.




# Returns

`ListUserPoolsResponse`

# Exceptions

`InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUserPools)
"""
@inline list_user_pools(aws::AWSConfig=default_aws_config(); args...) = list_user_pools(aws, args)

@inline list_user_pools(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ListUserPools", args)

@inline list_user_pools(args) = list_user_pools(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.list_users
    list_users([::AWSConfig], arguments::Dict)
    list_users([::AWSConfig]; UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ListUsers", arguments::Dict)
    cognito_idp([::AWSConfig], "ListUsers", UserPoolId=, <keyword arguments>)

# ListUsers Operation

Lists the users in the Amazon Cognito user pool.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool on which the search should be performed.


## `AttributesToGet = [::String, ...]`
An array of strings, where each string is the name of a user attribute to be returned for each user in the search results. If the array is null, all attributes are returned.


## `Limit = ::Int`
Maximum number of users to be returned.


## `PaginationToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.


## `Filter = ::String`
A filter string of the form "*AttributeName* *Filter-Type* "*AttributeValue*"". Quotation marks within the filter string must be escaped using the backslash (\\) character. For example, "`family_name` = \\"Reddy\\"".

*   *AttributeName*: The name of the attribute to search for. You can only search for one attribute at a time.

*   *Filter-Type*: For an exact match, use =, for example, "`given_name` = \\"Jon\\"". For a prefix ("starts with") match, use ^=, for example, "`given_name` ^= \\"Jon\\"".

*   *AttributeValue*: The attribute value that must be matched for each user.

If the filter string is empty, `ListUsers` returns all users in the user pool.

You can only search for the following standard attributes:

*   `username` (case-sensitive)

*   `email`

*   `phone_number`

*   `name`

*   `given_name`

*   `family_name`

*   `preferred_username`

*   `cognito:user_status` (called **Enabled** in the Console) (case-sensitive)

*   `status` (case-insensitive)

*   `sub`

Custom attributes are not searchable.

For more information, see [Searching for Users Using the ListUsers API](http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api) and [Examples of Using the ListUsers API](http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples) in the *Amazon Cognito Developer Guide*.




# Returns

`ListUsersResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsers)
"""
@inline list_users(aws::AWSConfig=default_aws_config(); args...) = list_users(aws, args)

@inline list_users(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ListUsers", args)

@inline list_users(args) = list_users(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.list_users_in_group
    list_users_in_group([::AWSConfig], arguments::Dict)
    list_users_in_group([::AWSConfig]; UserPoolId=, GroupName=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ListUsersInGroup", arguments::Dict)
    cognito_idp([::AWSConfig], "ListUsersInGroup", UserPoolId=, GroupName=, <keyword arguments>)

# ListUsersInGroup Operation

Lists the users in the specified group.

Requires developer credentials.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `GroupName = ::String` -- *Required*
The name of the group.


## `Limit = ::Int`
The limit of the request to list users.


## `NextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.




# Returns

`ListUsersInGroupResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ListUsersInGroup)
"""
@inline list_users_in_group(aws::AWSConfig=default_aws_config(); args...) = list_users_in_group(aws, args)

@inline list_users_in_group(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ListUsersInGroup", args)

@inline list_users_in_group(args) = list_users_in_group(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.resend_confirmation_code
    resend_confirmation_code([::AWSConfig], arguments::Dict)
    resend_confirmation_code([::AWSConfig]; ClientId=, Username=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "ResendConfirmationCode", arguments::Dict)
    cognito_idp([::AWSConfig], "ResendConfirmationCode", ClientId=, Username=, <keyword arguments>)

# ResendConfirmationCode Operation

Resends the confirmation (for confirmation of registration) to a specific user in the user pool.

# Arguments

## `ClientId = ::String` -- *Required*
The ID of the client associated with the user pool.


## `SecretHash = ::String`
A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.


## `UserContextData = ["EncodedData" =>  ::String]`
Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.


## `Username = ::String` -- *Required*
The user name of the user to whom you wish to resend a confirmation code.


## `AnalyticsMetadata = ["AnalyticsEndpointId" =>  ::String]`
The Amazon Pinpoint analytics metadata for collecting metrics for `ResendConfirmationCode` calls.




# Returns

`ResendConfirmationCodeResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `UnexpectedLambdaException`, `UserLambdaValidationException`, `NotAuthorizedException`, `InvalidLambdaResponseException`, `TooManyRequestsException`, `LimitExceededException`, `InvalidSmsRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException`, `InvalidEmailRoleAccessPolicyException`, `CodeDeliveryFailureException`, `UserNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/ResendConfirmationCode)
"""
@inline resend_confirmation_code(aws::AWSConfig=default_aws_config(); args...) = resend_confirmation_code(aws, args)

@inline resend_confirmation_code(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "ResendConfirmationCode", args)

@inline resend_confirmation_code(args) = resend_confirmation_code(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.respond_to_auth_challenge
    respond_to_auth_challenge([::AWSConfig], arguments::Dict)
    respond_to_auth_challenge([::AWSConfig]; ClientId=, ChallengeName=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "RespondToAuthChallenge", arguments::Dict)
    cognito_idp([::AWSConfig], "RespondToAuthChallenge", ClientId=, ChallengeName=, <keyword arguments>)

# RespondToAuthChallenge Operation

Responds to the authentication challenge.

# Arguments

## `ClientId = ::String` -- *Required*
The app client ID.


## `ChallengeName = "SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH" or "NEW_PASSWORD_REQUIRED"` -- *Required*
The challenge name. For more information, see .

`ADMIN_NO_SRP_AUTH` is not a valid value.


## `Session = ::String`
The session which should be passed both ways in challenge-response calls to the service. If `InitiateAuth` or `RespondToAuthChallenge` API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next `RespondToAuthChallenge` API call.


## `ChallengeResponses = ::Dict{String,String}`
The challenge responses. These are inputs corresponding to the value of `ChallengeName`, for example:

*   `SMS_MFA`: `SMS_MFA_CODE`, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).

*   `PASSWORD_VERIFIER`: `PASSWORD_CLAIM_SIGNATURE`, `PASSWORD_CLAIM_SECRET_BLOCK`, `TIMESTAMP`, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).

*   `NEW_PASSWORD_REQUIRED`: `NEW_PASSWORD`, any other required attributes, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret).


## `AnalyticsMetadata = ["AnalyticsEndpointId" =>  ::String]`
The Amazon Pinpoint analytics metadata for collecting metrics for `RespondToAuthChallenge` calls.


## `UserContextData = ["EncodedData" =>  ::String]`
Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.




# Returns

`RespondToAuthChallengeResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `CodeMismatchException`, `ExpiredCodeException`, `UnexpectedLambdaException`, `UserLambdaValidationException`, `InvalidPasswordException`, `InvalidLambdaResponseException`, `TooManyRequestsException`, `InvalidUserPoolConfigurationException`, `MFAMethodNotFoundException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException`, `InvalidSmsRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException`, `AliasExistsException`, `InternalErrorException` or `SoftwareTokenMFANotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/RespondToAuthChallenge)
"""
@inline respond_to_auth_challenge(aws::AWSConfig=default_aws_config(); args...) = respond_to_auth_challenge(aws, args)

@inline respond_to_auth_challenge(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "RespondToAuthChallenge", args)

@inline respond_to_auth_challenge(args) = respond_to_auth_challenge(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.set_risk_configuration
    set_risk_configuration([::AWSConfig], arguments::Dict)
    set_risk_configuration([::AWSConfig]; UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "SetRiskConfiguration", arguments::Dict)
    cognito_idp([::AWSConfig], "SetRiskConfiguration", UserPoolId=, <keyword arguments>)

# SetRiskConfiguration Operation

Configures actions on detected risks. To delete the risk configuration for `UserPoolId` or `ClientId`, pass null values for all four configuration types.

To enable Amazon Cognito advanced security features, update the user pool to include the `UserPoolAddOns` key`AdvancedSecurityMode`.

See .

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `ClientId = ::String`
The app client ID. If `ClientId` is null, then the risk configuration is mapped to `userPoolId`. When the client ID is null, the same risk configuration is applied to all the clients in the userPool.

Otherwise, `ClientId` is mapped to the client. When the client ID is not null, the user pool configuration is overridden and the risk configuration for the client is used instead.


## `CompromisedCredentialsRiskConfiguration = [ ... ]`
The compromised credentials risk configuration.
```
 CompromisedCredentialsRiskConfiguration = [
        "EventFilter" =>  ["SIGN_IN", "PASSWORD_CHANGE" or "SIGN_UP", ...],
        "Actions" => <required> ["EventAction" => <required> "BLOCK" or "NO_ACTION"]
    ]
```

## `AccountTakeoverRiskConfiguration = [ ... ]`
The account takeover risk configuration.
```
 AccountTakeoverRiskConfiguration = [
        "NotifyConfiguration" =>  [
            "From" =>  ::String,
            "ReplyTo" =>  ::String,
            "SourceArn" => <required> ::String,
            "BlockEmail" =>  [
                "Subject" => <required> ::String,
                "HtmlBody" =>  ::String,
                "TextBody" =>  ::String
            ],
            "NoActionEmail" =>  [
                "Subject" => <required> ::String,
                "HtmlBody" =>  ::String,
                "TextBody" =>  ::String
            ],
            "MfaEmail" =>  [
                "Subject" => <required> ::String,
                "HtmlBody" =>  ::String,
                "TextBody" =>  ::String
            ]
        ],
        "Actions" => <required> [
            "LowAction" =>  [
                "Notify" => <required> ::Bool,
                "EventAction" => <required> "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED" or "NO_ACTION"
            ],
            "MediumAction" =>  [
                "Notify" => <required> ::Bool,
                "EventAction" => <required> "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED" or "NO_ACTION"
            ],
            "HighAction" =>  [
                "Notify" => <required> ::Bool,
                "EventAction" => <required> "BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED" or "NO_ACTION"
            ]
        ]
    ]
```

## `RiskExceptionConfiguration = [ ... ]`
The configuration to override the risk decision.
```
 RiskExceptionConfiguration = [
        "BlockedIPRangeList" =>  [::String, ...],
        "SkippedIPRangeList" =>  [::String, ...]
    ]
```



# Returns

`SetRiskConfigurationResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserPoolAddOnNotEnabledException`, `CodeDeliveryFailureException`, `InvalidEmailRoleAccessPolicyException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetRiskConfiguration)
"""
@inline set_risk_configuration(aws::AWSConfig=default_aws_config(); args...) = set_risk_configuration(aws, args)

@inline set_risk_configuration(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "SetRiskConfiguration", args)

@inline set_risk_configuration(args) = set_risk_configuration(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.set_uicustomization
    set_uicustomization([::AWSConfig], arguments::Dict)
    set_uicustomization([::AWSConfig]; UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "SetUICustomization", arguments::Dict)
    cognito_idp([::AWSConfig], "SetUICustomization", UserPoolId=, <keyword arguments>)

# SetUICustomization Operation

Sets the UI customization information for a user pool's built-in app UI.

You can specify app UI customization settings for a single client (with a specific `clientId`) or for all clients (by setting the `clientId` to `ALL`). If you specify `ALL`, the default configuration will be used for every client that has no UI customization set previously. If you specify UI customization settings for a particular client, it will no longer fall back to the `ALL` configuration.

**Note**
> To use this API, your user pool must have a domain associated with it. Otherwise, there is no place to host the app's pages, and the service will throw an error.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `ClientId = ::String`
The client ID for the client app.


## `CSS = ::String`
The CSS values in the UI customization.


## `ImageFile = blob`
The uploaded logo image for the UI customization.




# Returns

`SetUICustomizationResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUICustomization)
"""
@inline set_uicustomization(aws::AWSConfig=default_aws_config(); args...) = set_uicustomization(aws, args)

@inline set_uicustomization(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "SetUICustomization", args)

@inline set_uicustomization(args) = set_uicustomization(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.set_user_mfapreference
    set_user_mfapreference([::AWSConfig], arguments::Dict)
    set_user_mfapreference([::AWSConfig]; AccessToken=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "SetUserMFAPreference", arguments::Dict)
    cognito_idp([::AWSConfig], "SetUserMFAPreference", AccessToken=, <keyword arguments>)

# SetUserMFAPreference Operation

Set the user's multi-factor authentication (MFA) method preference.

# Arguments

## `SMSMfaSettings = [ ... ]`
The SMS text message multi-factor authentication (MFA) settings.
```
 SMSMfaSettings = [
        "Enabled" =>  ::Bool,
        "PreferredMfa" =>  ::Bool
    ]
```

## `SoftwareTokenMfaSettings = [ ... ]`
The time-based one-time password software token MFA settings.
```
 SoftwareTokenMfaSettings = [
        "Enabled" =>  ::Bool,
        "PreferredMfa" =>  ::Bool
    ]
```

## `AccessToken = ::String` -- *Required*
The access token.




# Returns

`SetUserMFAPreferenceResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserMFAPreference)
"""
@inline set_user_mfapreference(aws::AWSConfig=default_aws_config(); args...) = set_user_mfapreference(aws, args)

@inline set_user_mfapreference(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "SetUserMFAPreference", args)

@inline set_user_mfapreference(args) = set_user_mfapreference(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.set_user_pool_mfa_config
    set_user_pool_mfa_config([::AWSConfig], arguments::Dict)
    set_user_pool_mfa_config([::AWSConfig]; UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "SetUserPoolMfaConfig", arguments::Dict)
    cognito_idp([::AWSConfig], "SetUserPoolMfaConfig", UserPoolId=, <keyword arguments>)

# SetUserPoolMfaConfig Operation

Set the user pool MFA configuration.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `SmsMfaConfiguration = [ ... ]`
The SMS text message MFA configuration.
```
 SmsMfaConfiguration = [
        "SmsAuthenticationMessage" =>  ::String,
        "SmsConfiguration" =>  [
            "SnsCallerArn" => <required> ::String,
            "ExternalId" =>  ::String
        ]
    ]
```

## `SoftwareTokenMfaConfiguration = ["Enabled" =>  ::Bool]`
The software token MFA configuration.


## `MfaConfiguration = "OFF", "ON" or "OPTIONAL"`
The MFA configuration.




# Returns

`SetUserPoolMfaConfigResponse`

# Exceptions

`InvalidParameterException`, `TooManyRequestsException`, `ResourceNotFoundException`, `InvalidSmsRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserPoolMfaConfig)
"""
@inline set_user_pool_mfa_config(aws::AWSConfig=default_aws_config(); args...) = set_user_pool_mfa_config(aws, args)

@inline set_user_pool_mfa_config(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "SetUserPoolMfaConfig", args)

@inline set_user_pool_mfa_config(args) = set_user_pool_mfa_config(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.set_user_settings
    set_user_settings([::AWSConfig], arguments::Dict)
    set_user_settings([::AWSConfig]; AccessToken=, MFAOptions=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "SetUserSettings", arguments::Dict)
    cognito_idp([::AWSConfig], "SetUserSettings", AccessToken=, MFAOptions=)

# SetUserSettings Operation

Sets the user settings like multi-factor authentication (MFA). If MFA is to be removed for a particular attribute pass the attribute with code delivery as null. If null list is passed, all MFA options are removed.

# Arguments

## `AccessToken = ::String` -- *Required*
The access token for the set user settings request.


## `MFAOptions = [[ ... ], ...]` -- *Required*
Specifies the options for MFA (e.g., email or phone number).
```
 MFAOptions = [[
        "DeliveryMedium" =>  "SMS" or "EMAIL",
        "AttributeName" =>  ::String
    ], ...]
```



# Returns

`SetUserSettingsResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `NotAuthorizedException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SetUserSettings)
"""
@inline set_user_settings(aws::AWSConfig=default_aws_config(); args...) = set_user_settings(aws, args)

@inline set_user_settings(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "SetUserSettings", args)

@inline set_user_settings(args) = set_user_settings(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.sign_up
    sign_up([::AWSConfig], arguments::Dict)
    sign_up([::AWSConfig]; ClientId=, Username=, Password=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "SignUp", arguments::Dict)
    cognito_idp([::AWSConfig], "SignUp", ClientId=, Username=, Password=, <keyword arguments>)

# SignUp Operation

Registers the user in the specified user pool and creates a user name, password, and user attributes.

# Arguments

## `ClientId = ::String` -- *Required*
The ID of the client associated with the user pool.


## `SecretHash = ::String`
A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.


## `Username = ::String` -- *Required*
The user name of the user you wish to register.


## `Password = ::String` -- *Required*
The password of the user you wish to register.


## `UserAttributes = [[ ... ], ...]`
An array of name-value pairs representing user attributes.

For custom attributes, you must prepend the `custom:` prefix to the attribute name.
```
 UserAttributes = [[
        "Name" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```

## `ValidationData = [[ ... ], ...]`
The validation data in the request to register a user.
```
 ValidationData = [[
        "Name" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```

## `AnalyticsMetadata = ["AnalyticsEndpointId" =>  ::String]`
The Amazon Pinpoint analytics metadata for collecting metrics for `SignUp` calls.


## `UserContextData = ["EncodedData" =>  ::String]`
Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.




# Returns

`SignUpResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `UnexpectedLambdaException`, `UserLambdaValidationException`, `NotAuthorizedException`, `InvalidPasswordException`, `InvalidLambdaResponseException`, `UsernameExistsException`, `TooManyRequestsException`, `InternalErrorException`, `InvalidSmsRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException`, `InvalidEmailRoleAccessPolicyException` or `CodeDeliveryFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/SignUp)
"""
@inline sign_up(aws::AWSConfig=default_aws_config(); args...) = sign_up(aws, args)

@inline sign_up(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "SignUp", args)

@inline sign_up(args) = sign_up(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.start_user_import_job
    start_user_import_job([::AWSConfig], arguments::Dict)
    start_user_import_job([::AWSConfig]; UserPoolId=, JobId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "StartUserImportJob", arguments::Dict)
    cognito_idp([::AWSConfig], "StartUserImportJob", UserPoolId=, JobId=)

# StartUserImportJob Operation

Starts the user import.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool that the users are being imported into.


## `JobId = ::String` -- *Required*
The job ID for the user import job.




# Returns

`StartUserImportJobResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `InternalErrorException`, `PreconditionNotMetException` or `NotAuthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StartUserImportJob)
"""
@inline start_user_import_job(aws::AWSConfig=default_aws_config(); args...) = start_user_import_job(aws, args)

@inline start_user_import_job(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "StartUserImportJob", args)

@inline start_user_import_job(args) = start_user_import_job(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.stop_user_import_job
    stop_user_import_job([::AWSConfig], arguments::Dict)
    stop_user_import_job([::AWSConfig]; UserPoolId=, JobId=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "StopUserImportJob", arguments::Dict)
    cognito_idp([::AWSConfig], "StopUserImportJob", UserPoolId=, JobId=)

# StopUserImportJob Operation

Stops the user import job.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool that the users are being imported into.


## `JobId = ::String` -- *Required*
The job ID for the user import job.




# Returns

`StopUserImportJobResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `InternalErrorException`, `PreconditionNotMetException` or `NotAuthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/StopUserImportJob)
"""
@inline stop_user_import_job(aws::AWSConfig=default_aws_config(); args...) = stop_user_import_job(aws, args)

@inline stop_user_import_job(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "StopUserImportJob", args)

@inline stop_user_import_job(args) = stop_user_import_job(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.update_auth_event_feedback
    update_auth_event_feedback([::AWSConfig], arguments::Dict)
    update_auth_event_feedback([::AWSConfig]; UserPoolId=, Username=, EventId=, FeedbackToken=, FeedbackValue=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "UpdateAuthEventFeedback", arguments::Dict)
    cognito_idp([::AWSConfig], "UpdateAuthEventFeedback", UserPoolId=, Username=, EventId=, FeedbackToken=, FeedbackValue=)

# UpdateAuthEventFeedback Operation

Provides the feedback for an authentication event whether it was from a valid user or not. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `Username = ::String` -- *Required*
The user pool username.


## `EventId = ::String` -- *Required*
The event ID.


## `FeedbackToken = ::String` -- *Required*
The feedback token.


## `FeedbackValue = "Valid" or "Invalid"` -- *Required*
The authentication event feedback value.




# Returns

`UpdateAuthEventFeedbackResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserNotFoundException`, `UserPoolAddOnNotEnabledException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateAuthEventFeedback)
"""
@inline update_auth_event_feedback(aws::AWSConfig=default_aws_config(); args...) = update_auth_event_feedback(aws, args)

@inline update_auth_event_feedback(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "UpdateAuthEventFeedback", args)

@inline update_auth_event_feedback(args) = update_auth_event_feedback(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.update_device_status
    update_device_status([::AWSConfig], arguments::Dict)
    update_device_status([::AWSConfig]; AccessToken=, DeviceKey=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "UpdateDeviceStatus", arguments::Dict)
    cognito_idp([::AWSConfig], "UpdateDeviceStatus", AccessToken=, DeviceKey=, <keyword arguments>)

# UpdateDeviceStatus Operation

Updates the device status.

# Arguments

## `AccessToken = ::String` -- *Required*
The access token.


## `DeviceKey = ::String` -- *Required*
The device key.


## `DeviceRememberedStatus = "remembered" or "not_remembered"`
The status of whether a device is remembered.




# Returns

`UpdateDeviceStatusResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `InvalidUserPoolConfigurationException`, `TooManyRequestsException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateDeviceStatus)
"""
@inline update_device_status(aws::AWSConfig=default_aws_config(); args...) = update_device_status(aws, args)

@inline update_device_status(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "UpdateDeviceStatus", args)

@inline update_device_status(args) = update_device_status(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.update_group
    update_group([::AWSConfig], arguments::Dict)
    update_group([::AWSConfig]; GroupName=, UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "UpdateGroup", arguments::Dict)
    cognito_idp([::AWSConfig], "UpdateGroup", GroupName=, UserPoolId=, <keyword arguments>)

# UpdateGroup Operation

Updates the specified group with the specified attributes.

Requires developer credentials.

# Arguments

## `GroupName = ::String` -- *Required*
The name of the group.


## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `Description = ::String`
A string containing the new description of the group.


## `RoleArn = ::String`
The new role ARN for the group. This is used for setting the `cognito:roles` and `cognito:preferred_role` claims in the token.


## `Precedence = ::Int`
The new precedence value for the group. For more information about this parameter, see .




# Returns

`UpdateGroupResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `TooManyRequestsException`, `NotAuthorizedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateGroup)
"""
@inline update_group(aws::AWSConfig=default_aws_config(); args...) = update_group(aws, args)

@inline update_group(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "UpdateGroup", args)

@inline update_group(args) = update_group(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.update_identity_provider
    update_identity_provider([::AWSConfig], arguments::Dict)
    update_identity_provider([::AWSConfig]; UserPoolId=, ProviderName=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "UpdateIdentityProvider", arguments::Dict)
    cognito_idp([::AWSConfig], "UpdateIdentityProvider", UserPoolId=, ProviderName=, <keyword arguments>)

# UpdateIdentityProvider Operation

Updates identity provider information for a user pool.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID.


## `ProviderName = ::String` -- *Required*
The identity provider name.


## `ProviderDetails = ::Dict{String,String}`
The identity provider details to be updated, such as `MetadataURL` and `MetadataFile`.


## `AttributeMapping = ::Dict{String,String}`
The identity provider attribute mapping to be changed.


## `IdpIdentifiers = [::String, ...]`
A list of identity provider identifiers.




# Returns

`UpdateIdentityProviderResponse`

# Exceptions

`InvalidParameterException`, `UnsupportedIdentityProviderException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateIdentityProvider)
"""
@inline update_identity_provider(aws::AWSConfig=default_aws_config(); args...) = update_identity_provider(aws, args)

@inline update_identity_provider(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "UpdateIdentityProvider", args)

@inline update_identity_provider(args) = update_identity_provider(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.update_resource_server
    update_resource_server([::AWSConfig], arguments::Dict)
    update_resource_server([::AWSConfig]; UserPoolId=, Identifier=, Name=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "UpdateResourceServer", arguments::Dict)
    cognito_idp([::AWSConfig], "UpdateResourceServer", UserPoolId=, Identifier=, Name=, <keyword arguments>)

# UpdateResourceServer Operation

Updates the name and scopes of resource server. All other fields are read-only.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool.


## `Identifier = ::String` -- *Required*
The identifier for the resource server.


## `Name = ::String` -- *Required*
The name of the resource server.


## `Scopes = [[ ... ], ...]`
The scope values to be set for the resource server.
```
 Scopes = [[
        "ScopeName" => <required> ::String,
        "ScopeDescription" => <required> ::String
    ], ...]
```



# Returns

`UpdateResourceServerResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateResourceServer)
"""
@inline update_resource_server(aws::AWSConfig=default_aws_config(); args...) = update_resource_server(aws, args)

@inline update_resource_server(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "UpdateResourceServer", args)

@inline update_resource_server(args) = update_resource_server(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.update_user_attributes
    update_user_attributes([::AWSConfig], arguments::Dict)
    update_user_attributes([::AWSConfig]; UserAttributes=, AccessToken=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "UpdateUserAttributes", arguments::Dict)
    cognito_idp([::AWSConfig], "UpdateUserAttributes", UserAttributes=, AccessToken=)

# UpdateUserAttributes Operation

Allows a user to update a specific attribute (one at a time).

# Arguments

## `UserAttributes = [[ ... ], ...]` -- *Required*
An array of name-value pairs representing user attributes.

For custom attributes, you must prepend the `custom:` prefix to the attribute name.
```
 UserAttributes = [[
        "Name" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```

## `AccessToken = ::String` -- *Required*
The access token for the request to update user attributes.




# Returns

`UpdateUserAttributesResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `CodeMismatchException`, `ExpiredCodeException`, `NotAuthorizedException`, `UnexpectedLambdaException`, `UserLambdaValidationException`, `InvalidLambdaResponseException`, `TooManyRequestsException`, `AliasExistsException`, `InvalidSmsRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException`, `InvalidEmailRoleAccessPolicyException`, `CodeDeliveryFailureException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserAttributes)
"""
@inline update_user_attributes(aws::AWSConfig=default_aws_config(); args...) = update_user_attributes(aws, args)

@inline update_user_attributes(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "UpdateUserAttributes", args)

@inline update_user_attributes(args) = update_user_attributes(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.update_user_pool
    update_user_pool([::AWSConfig], arguments::Dict)
    update_user_pool([::AWSConfig]; UserPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "UpdateUserPool", arguments::Dict)
    cognito_idp([::AWSConfig], "UpdateUserPool", UserPoolId=, <keyword arguments>)

# UpdateUserPool Operation

Updates the specified user pool with the specified attributes.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool you want to update.


## `Policies = ["PasswordPolicy" =>  [ ... ]]`
A container with the policies you wish to update in a user pool.
```
 Policies = ["PasswordPolicy" =>  [
            "MinimumLength" =>  ::Int,
            "RequireUppercase" =>  ::Bool,
            "RequireLowercase" =>  ::Bool,
            "RequireNumbers" =>  ::Bool,
            "RequireSymbols" =>  ::Bool
        ]]
```

## `LambdaConfig = [ ... ]`
The AWS Lambda configuration information from the request to update the user pool.
```
 LambdaConfig = [
        "PreSignUp" =>  ::String,
        "CustomMessage" =>  ::String,
        "PostConfirmation" =>  ::String,
        "PreAuthentication" =>  ::String,
        "PostAuthentication" =>  ::String,
        "DefineAuthChallenge" =>  ::String,
        "CreateAuthChallenge" =>  ::String,
        "VerifyAuthChallengeResponse" =>  ::String,
        "PreTokenGeneration" =>  ::String,
        "UserMigration" =>  ::String
    ]
```

## `AutoVerifiedAttributes = ["phone_number" or "email", ...]`
The attributes that are automatically verified when the Amazon Cognito service makes a request to update user pools.


## `SmsVerificationMessage = ::String`
A container with information about the SMS verification message.


## `EmailVerificationMessage = ::String`
The contents of the email verification message.


## `EmailVerificationSubject = ::String`
The subject of the email verification message.


## `VerificationMessageTemplate = [ ... ]`
The template for verification messages.
```
 VerificationMessageTemplate = [
        "SmsMessage" =>  ::String,
        "EmailMessage" =>  ::String,
        "EmailSubject" =>  ::String,
        "EmailMessageByLink" =>  ::String,
        "EmailSubjectByLink" =>  ::String,
        "DefaultEmailOption" =>  "CONFIRM_WITH_LINK" or "CONFIRM_WITH_CODE"
    ]
```

## `SmsAuthenticationMessage = ::String`
The contents of the SMS authentication message.


## `MfaConfiguration = "OFF", "ON" or "OPTIONAL"`
Can be one of the following values:

*   `OFF` - MFA tokens are not required and cannot be specified during user registration.

*   `ON` - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.

*   `OPTIONAL` - Users have the option when registering to create an MFA token.


## `DeviceConfiguration = [ ... ]`
Device configuration.
```
 DeviceConfiguration = [
        "ChallengeRequiredOnNewDevice" =>  ::Bool,
        "DeviceOnlyRememberedOnUserPrompt" =>  ::Bool
    ]
```

## `EmailConfiguration = [ ... ]`
Email configuration.
```
 EmailConfiguration = [
        "SourceArn" =>  ::String,
        "ReplyToEmailAddress" =>  ::String
    ]
```

## `SmsConfiguration = [ ... ]`
SMS configuration.
```
 SmsConfiguration = [
        "SnsCallerArn" => <required> ::String,
        "ExternalId" =>  ::String
    ]
```

## `UserPoolTags = ::Dict{String,String}`
The cost allocation tags for the user pool. For more information, see [Adding Cost Allocation Tags to Your User Pool](http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html)


## `AdminCreateUserConfig = [ ... ]`
The configuration for `AdminCreateUser` requests.
```
 AdminCreateUserConfig = [
        "AllowAdminCreateUserOnly" =>  ::Bool,
        "UnusedAccountValidityDays" =>  ::Int,
        "InviteMessageTemplate" =>  [
            "SMSMessage" =>  ::String,
            "EmailMessage" =>  ::String,
            "EmailSubject" =>  ::String
        ]
    ]
```

## `UserPoolAddOns = ["AdvancedSecurityMode" => <required> "OFF", "AUDIT" or "ENFORCED"]`
Used to enable advanced security risk detection. Set the key `AdvancedSecurityMode` to the value "AUDIT".




# Returns

`UpdateUserPoolResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `ConcurrentModificationException`, `TooManyRequestsException`, `NotAuthorizedException`, `UserImportInProgressException`, `InternalErrorException`, `InvalidSmsRoleAccessPolicyException`, `InvalidSmsRoleTrustRelationshipException`, `UserPoolTaggingException` or `InvalidEmailRoleAccessPolicyException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPool)
"""
@inline update_user_pool(aws::AWSConfig=default_aws_config(); args...) = update_user_pool(aws, args)

@inline update_user_pool(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "UpdateUserPool", args)

@inline update_user_pool(args) = update_user_pool(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.update_user_pool_client
    update_user_pool_client([::AWSConfig], arguments::Dict)
    update_user_pool_client([::AWSConfig]; UserPoolId=, ClientId=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "UpdateUserPoolClient", arguments::Dict)
    cognito_idp([::AWSConfig], "UpdateUserPoolClient", UserPoolId=, ClientId=, <keyword arguments>)

# UpdateUserPoolClient Operation

Allows the developer to update the specified user pool client and password policy.

# Arguments

## `UserPoolId = ::String` -- *Required*
The user pool ID for the user pool where you want to update the user pool client.


## `ClientId = ::String` -- *Required*
The ID of the client associated with the user pool.


## `ClientName = ::String`
The client name from the update user pool client request.


## `RefreshTokenValidity = ::Int`
The time limit, in days, after which the refresh token is no longer valid and cannot be used.


## `ReadAttributes = [::String, ...]`
The read-only attributes of the user pool.


## `WriteAttributes = [::String, ...]`
The writeable attributes of the user pool.


## `ExplicitAuthFlows = ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY" or "USER_PASSWORD_AUTH", ...]`
Explicit authentication flows.


## `SupportedIdentityProviders = [::String, ...]`
A list of provider names for the identity providers that are supported on this client.


## `CallbackURLs = [::String, ...]`
A list of allowed redirect (callback) URLs for the identity providers.

A redirect URI must:

*   Be an absolute URI.

*   Be registered with the authorization server.

*   Not use HTTP without TLS (i.e. use HTTPS instead of HTTP).

*   Not include a fragment component.

See [OAuth 2.0 - Redirection Endpoint](https://tools.ietf.org/html/rfc6749#section-3.1.2).


## `LogoutURLs = [::String, ...]`
A list of allowed logout URLs for the identity providers.


## `DefaultRedirectURI = ::String`
The default redirect URI. Must be in the `CallbackURLs` list.

A redirect URI must:

*   Be an absolute URI.

*   Be registered with the authorization server.

*   Not use HTTP without TLS (i.e. use HTTPS instead of HTTP).

*   Not include a fragment component.

See [OAuth 2.0 - Redirection Endpoint](https://tools.ietf.org/html/rfc6749#section-3.1.2).


## `AllowedOAuthFlows = ["code", "implicit" or "client_credentials", ...]`
Set to `code` to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.

Set to `token` to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.


## `AllowedOAuthScopes = [::String, ...]`
A list of allowed `OAuth` scopes. Currently supported values are `"phone"`, `"email"`, `"openid"`, and `"Cognito"`.


## `AllowedOAuthFlowsUserPoolClient = ::Bool`
Set to TRUE if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.


## `AnalyticsConfiguration = [ ... ]`
The Amazon Pinpoint analytics configuration for collecting metrics for this user pool.
```
 AnalyticsConfiguration = [
        "ApplicationId" => <required> ::String,
        "RoleArn" => <required> ::String,
        "ExternalId" => <required> ::String,
        "UserDataShared" =>  ::Bool
    ]
```



# Returns

`UpdateUserPoolClientResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `ConcurrentModificationException`, `TooManyRequestsException`, `NotAuthorizedException`, `ScopeDoesNotExistException`, `InvalidOAuthFlowException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/UpdateUserPoolClient)
"""
@inline update_user_pool_client(aws::AWSConfig=default_aws_config(); args...) = update_user_pool_client(aws, args)

@inline update_user_pool_client(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "UpdateUserPoolClient", args)

@inline update_user_pool_client(args) = update_user_pool_client(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.verify_software_token
    verify_software_token([::AWSConfig], arguments::Dict)
    verify_software_token([::AWSConfig]; UserCode=, <keyword arguments>)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "VerifySoftwareToken", arguments::Dict)
    cognito_idp([::AWSConfig], "VerifySoftwareToken", UserCode=, <keyword arguments>)

# VerifySoftwareToken Operation

Use this API to register a user's entered TOTP code and mark the user's software token MFA status as "verified" if successful. The request takes an access token or a session string, but not both.

# Arguments

## `AccessToken = ::String`
The access token.


## `Session = ::String`
The session which should be passed both ways in challenge-response calls to the service.


## `UserCode = ::String` -- *Required*
The one time password computed using the secret code returned by


## `FriendlyDeviceName = ::String`
The friendly device name.




# Returns

`VerifySoftwareTokenResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `InvalidUserPoolConfigurationException`, `NotAuthorizedException`, `TooManyRequestsException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException`, `InternalErrorException`, `EnableSoftwareTokenMFAException`, `NotAuthorizedException`, `SoftwareTokenMFANotFoundException` or `CodeMismatchException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifySoftwareToken)
"""
@inline verify_software_token(aws::AWSConfig=default_aws_config(); args...) = verify_software_token(aws, args)

@inline verify_software_token(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "VerifySoftwareToken", args)

@inline verify_software_token(args) = verify_software_token(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentityServiceProvider.verify_user_attribute
    verify_user_attribute([::AWSConfig], arguments::Dict)
    verify_user_attribute([::AWSConfig]; AccessToken=, AttributeName=, Code=)

    using AWSCore.Services.cognito_idp
    cognito_idp([::AWSConfig], "VerifyUserAttribute", arguments::Dict)
    cognito_idp([::AWSConfig], "VerifyUserAttribute", AccessToken=, AttributeName=, Code=)

# VerifyUserAttribute Operation

Verifies the specified user attributes in the user pool.

# Arguments

## `AccessToken = ::String` -- *Required*
Represents the access token of the request to verify user attributes.


## `AttributeName = ::String` -- *Required*
The attribute name in the request to verify user attributes.


## `Code = ::String` -- *Required*
The verification code in the request to verify user attributes.




# Returns

`VerifyUserAttributeResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `CodeMismatchException`, `ExpiredCodeException`, `NotAuthorizedException`, `TooManyRequestsException`, `LimitExceededException`, `PasswordResetRequiredException`, `UserNotFoundException`, `UserNotConfirmedException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-idp-2016-04-18/VerifyUserAttribute)
"""
@inline verify_user_attribute(aws::AWSConfig=default_aws_config(); args...) = verify_user_attribute(aws, args)

@inline verify_user_attribute(aws::AWSConfig, args) = AWSCore.Services.cognito_idp(aws, "VerifyUserAttribute", args)

@inline verify_user_attribute(args) = verify_user_attribute(default_aws_config(), args)




end # module CognitoIdentityServiceProvider


#==============================================================================#
# End of file
#==============================================================================#
