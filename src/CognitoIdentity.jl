#==============================================================================#
# CognitoIdentity.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/cognito-identity-2014-06-30.normal.json
#==============================================================================#

__precompile__()

module CognitoIdentity

using AWSCore


"""
    using AWSSDK.CognitoIdentity.create_identity_pool
    create_identity_pool([::AWSConfig], arguments::Dict)
    create_identity_pool([::AWSConfig]; IdentityPoolName=, AllowUnauthenticatedIdentities=, <keyword arguments>)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "CreateIdentityPool", arguments::Dict)
    cognito_identity([::AWSConfig], "CreateIdentityPool", IdentityPoolName=, AllowUnauthenticatedIdentities=, <keyword arguments>)

# CreateIdentityPool Operation

Creates a new identity pool. The identity pool is a store of user identity information that is specific to your AWS account. The limit on identity pools is 60 per account. The keys for `SupportedLoginProviders` are as follows:

*   Facebook: `graph.facebook.com`

*   Google: `accounts.google.com`

*   Amazon: `www.amazon.com`

*   Twitter: `api.twitter.com`

*   Digits: `www.digits.com`

You must use AWS Developer credentials to call this API.

# Arguments

## `IdentityPoolName = ::String` -- *Required*
A string that you provide.


## `AllowUnauthenticatedIdentities = ::Bool` -- *Required*
TRUE if the identity pool supports unauthenticated logins.


## `SupportedLoginProviders = ::Dict{String,String}`
Optional key:value pairs mapping provider names to provider app IDs.


## `DeveloperProviderName = ::String`
The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the `DeveloperProviderName`, you can use letters as well as period (`.`), underscore (`_`), and dash (`-`).

Once you have set a developer provider name, you cannot change it. Please take care in setting this parameter.


## `OpenIdConnectProviderARNs = [::String, ...]`
A list of OpendID Connect provider ARNs.


## `CognitoIdentityProviders = [[ ... ], ...]`
An array of Amazon Cognito Identity user pools and their client IDs.
```
 CognitoIdentityProviders = [[
        "ProviderName" =>  ::String,
        "ClientId" =>  ::String,
        "ServerSideTokenCheck" =>  ::Bool
    ], ...]
```

## `SamlProviderARNs = [::String, ...]`
An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.




# Returns

`IdentityPool`

# Exceptions

`InvalidParameterException`, `NotAuthorizedException`, `ResourceConflictException`, `TooManyRequestsException`, `InternalErrorException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/CreateIdentityPool)
"""
@inline create_identity_pool(aws::AWSConfig=default_aws_config(); args...) = create_identity_pool(aws, args)

@inline create_identity_pool(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "CreateIdentityPool", args)

@inline create_identity_pool(args) = create_identity_pool(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.delete_identities
    delete_identities([::AWSConfig], arguments::Dict)
    delete_identities([::AWSConfig]; IdentityIdsToDelete=)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "DeleteIdentities", arguments::Dict)
    cognito_identity([::AWSConfig], "DeleteIdentities", IdentityIdsToDelete=)

# DeleteIdentities Operation

Deletes identities from an identity pool. You can specify a list of 1-60 identities that you want to delete.

You must use AWS Developer credentials to call this API.

# Arguments

## `IdentityIdsToDelete = [::String, ...]` -- *Required*
A list of 1-60 identities that you want to delete.




# Returns

`DeleteIdentitiesResponse`

# Exceptions

`InvalidParameterException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DeleteIdentities)
"""
@inline delete_identities(aws::AWSConfig=default_aws_config(); args...) = delete_identities(aws, args)

@inline delete_identities(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "DeleteIdentities", args)

@inline delete_identities(args) = delete_identities(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.delete_identity_pool
    delete_identity_pool([::AWSConfig], arguments::Dict)
    delete_identity_pool([::AWSConfig]; IdentityPoolId=)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "DeleteIdentityPool", arguments::Dict)
    cognito_identity([::AWSConfig], "DeleteIdentityPool", IdentityPoolId=)

# DeleteIdentityPool Operation

Deletes a user pool. Once a pool is deleted, users will not be able to authenticate with the pool.

You must use AWS Developer credentials to call this API.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
An identity pool ID in the format REGION:GUID.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DeleteIdentityPool)
"""
@inline delete_identity_pool(aws::AWSConfig=default_aws_config(); args...) = delete_identity_pool(aws, args)

@inline delete_identity_pool(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "DeleteIdentityPool", args)

@inline delete_identity_pool(args) = delete_identity_pool(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.describe_identity
    describe_identity([::AWSConfig], arguments::Dict)
    describe_identity([::AWSConfig]; IdentityId=)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "DescribeIdentity", arguments::Dict)
    cognito_identity([::AWSConfig], "DescribeIdentity", IdentityId=)

# DescribeIdentity Operation

Returns metadata related to the given identity, including when the identity was created and any associated linked logins.

You must use AWS Developer credentials to call this API.

# Arguments

## `IdentityId = ::String` -- *Required*
A unique identifier in the format REGION:GUID.




# Returns

`IdentityDescription`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DescribeIdentity)
"""
@inline describe_identity(aws::AWSConfig=default_aws_config(); args...) = describe_identity(aws, args)

@inline describe_identity(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "DescribeIdentity", args)

@inline describe_identity(args) = describe_identity(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.describe_identity_pool
    describe_identity_pool([::AWSConfig], arguments::Dict)
    describe_identity_pool([::AWSConfig]; IdentityPoolId=)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "DescribeIdentityPool", arguments::Dict)
    cognito_identity([::AWSConfig], "DescribeIdentityPool", IdentityPoolId=)

# DescribeIdentityPool Operation

Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users.

You must use AWS Developer credentials to call this API.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
An identity pool ID in the format REGION:GUID.




# Returns

`IdentityPool`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DescribeIdentityPool)
"""
@inline describe_identity_pool(aws::AWSConfig=default_aws_config(); args...) = describe_identity_pool(aws, args)

@inline describe_identity_pool(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "DescribeIdentityPool", args)

@inline describe_identity_pool(args) = describe_identity_pool(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.get_credentials_for_identity
    get_credentials_for_identity([::AWSConfig], arguments::Dict)
    get_credentials_for_identity([::AWSConfig]; IdentityId=, <keyword arguments>)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "GetCredentialsForIdentity", arguments::Dict)
    cognito_identity([::AWSConfig], "GetCredentialsForIdentity", IdentityId=, <keyword arguments>)

# GetCredentialsForIdentity Operation

Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.

This is a public API. You do not need any credentials to call this API.

# Arguments

## `IdentityId = ::String` -- *Required*
A unique identifier in the format REGION:GUID.


## `Logins = ::Dict{String,String}`
A set of optional name-value pairs that map provider names to provider tokens.


## `CustomRoleArn = ::String`
The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were received in the token from the identity provider. For example, a SAML-based identity provider. This parameter is optional for identity providers that do not support role customization.




# Returns

`GetCredentialsForIdentityResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `ResourceConflictException`, `TooManyRequestsException`, `InvalidIdentityPoolConfigurationException`, `InternalErrorException` or `ExternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetCredentialsForIdentity)
"""
@inline get_credentials_for_identity(aws::AWSConfig=default_aws_config(); args...) = get_credentials_for_identity(aws, args)

@inline get_credentials_for_identity(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "GetCredentialsForIdentity", args)

@inline get_credentials_for_identity(args) = get_credentials_for_identity(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.get_id
    get_id([::AWSConfig], arguments::Dict)
    get_id([::AWSConfig]; IdentityPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "GetId", arguments::Dict)
    cognito_identity([::AWSConfig], "GetId", IdentityPoolId=, <keyword arguments>)

# GetId Operation

Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account.

This is a public API. You do not need any credentials to call this API.

# Arguments

## `AccountId = ::String`
A standard AWS account ID (9+ digits).


## `IdentityPoolId = ::String` -- *Required*
An identity pool ID in the format REGION:GUID.


## `Logins = ::Dict{String,String}`
A set of optional name-value pairs that map provider names to provider tokens. The available provider names for `Logins` are as follows:

*   Facebook: `graph.facebook.com`

*   Amazon Cognito Identity Provider: `cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789`

*   Google: `accounts.google.com`

*   Amazon: `www.amazon.com`

*   Twitter: `api.twitter.com`

*   Digits: `www.digits.com`




# Returns

`GetIdResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `ResourceConflictException`, `TooManyRequestsException`, `InternalErrorException`, `LimitExceededException` or `ExternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetId)
"""
@inline get_id(aws::AWSConfig=default_aws_config(); args...) = get_id(aws, args)

@inline get_id(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "GetId", args)

@inline get_id(args) = get_id(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.get_identity_pool_roles
    get_identity_pool_roles([::AWSConfig], arguments::Dict)
    get_identity_pool_roles([::AWSConfig]; IdentityPoolId=)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "GetIdentityPoolRoles", arguments::Dict)
    cognito_identity([::AWSConfig], "GetIdentityPoolRoles", IdentityPoolId=)

# GetIdentityPoolRoles Operation

Gets the roles for an identity pool.

You must use AWS Developer credentials to call this API.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
An identity pool ID in the format REGION:GUID.




# Returns

`GetIdentityPoolRolesResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `ResourceConflictException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetIdentityPoolRoles)
"""
@inline get_identity_pool_roles(aws::AWSConfig=default_aws_config(); args...) = get_identity_pool_roles(aws, args)

@inline get_identity_pool_roles(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "GetIdentityPoolRoles", args)

@inline get_identity_pool_roles(args) = get_identity_pool_roles(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.get_open_id_token
    get_open_id_token([::AWSConfig], arguments::Dict)
    get_open_id_token([::AWSConfig]; IdentityId=, <keyword arguments>)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "GetOpenIdToken", arguments::Dict)
    cognito_identity([::AWSConfig], "GetOpenIdToken", IdentityId=, <keyword arguments>)

# GetOpenIdToken Operation

Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by [GetId](@ref). You can optionally add additional logins for the identity. Supplying multiple logins creates an implicit link.

The OpenId token is valid for 15 minutes.

This is a public API. You do not need any credentials to call this API.

# Arguments

## `IdentityId = ::String` -- *Required*
A unique identifier in the format REGION:GUID.


## `Logins = ::Dict{String,String}`
A set of optional name-value pairs that map provider names to provider tokens. When using graph.facebook.com and www.amazon.com, supply the access_token returned from the provider's authflow. For accounts.google.com, an Amazon Cognito Identity Provider, or any other OpenId Connect provider, always include the `id_token`.




# Returns

`GetOpenIdTokenResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `ResourceConflictException`, `TooManyRequestsException`, `InternalErrorException` or `ExternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetOpenIdToken)
"""
@inline get_open_id_token(aws::AWSConfig=default_aws_config(); args...) = get_open_id_token(aws, args)

@inline get_open_id_token(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "GetOpenIdToken", args)

@inline get_open_id_token(args) = get_open_id_token(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.get_open_id_token_for_developer_identity
    get_open_id_token_for_developer_identity([::AWSConfig], arguments::Dict)
    get_open_id_token_for_developer_identity([::AWSConfig]; IdentityPoolId=, Logins=, <keyword arguments>)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "GetOpenIdTokenForDeveloperIdentity", arguments::Dict)
    cognito_identity([::AWSConfig], "GetOpenIdTokenForDeveloperIdentity", IdentityPoolId=, Logins=, <keyword arguments>)

# GetOpenIdTokenForDeveloperIdentity Operation

Registers (or retrieves) a Cognito `IdentityId` and an OpenID Connect token for a user authenticated by your backend authentication process. Supplying multiple logins will create an implicit linked account. You can only specify one developer provider as part of the `Logins` map, which is linked to the identity pool. The developer provider is the "domain" by which Cognito will refer to your users.

You can use `GetOpenIdTokenForDeveloperIdentity` to create a new identity and to link new logins (that is, user credentials issued by a public provider or developer provider) to an existing identity. When you want to create a new identity, the `IdentityId` should be null. When you want to associate a new login with an existing authenticated/unauthenticated identity, you can do so by providing the existing `IdentityId`. This API will create the identity in the specified `IdentityPoolId`.

You must use AWS Developer credentials to call this API.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
An identity pool ID in the format REGION:GUID.


## `IdentityId = ::String`
A unique identifier in the format REGION:GUID.


## `Logins = ::Dict{String,String}` -- *Required*
A set of optional name-value pairs that map provider names to provider tokens. Each name-value pair represents a user from a public provider or developer provider. If the user is from a developer provider, the name-value pair will follow the syntax `"developer_provider_name": "developer_user_identifier"`. The developer provider is the "domain" by which Cognito will refer to your users; you provided this domain while creating/updating the identity pool. The developer user identifier is an identifier from your backend that uniquely identifies a user. When you create an identity pool, you can specify the supported logins.


## `TokenDuration = ::Int`
The expiration time of the token, in seconds. You can specify a custom expiration time for the token so that you can cache it. If you don't provide an expiration time, the token is valid for 15 minutes. You can exchange the token with Amazon STS for temporary AWS credentials, which are valid for a maximum of one hour. The maximum token duration you can set is 24 hours. You should take care in setting the expiration time for a token, as there are significant security implications: an attacker could use a leaked token to access your AWS resources for the token's duration.




# Returns

`GetOpenIdTokenForDeveloperIdentityResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `ResourceConflictException`, `TooManyRequestsException`, `InternalErrorException` or `DeveloperUserAlreadyRegisteredException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetOpenIdTokenForDeveloperIdentity)
"""
@inline get_open_id_token_for_developer_identity(aws::AWSConfig=default_aws_config(); args...) = get_open_id_token_for_developer_identity(aws, args)

@inline get_open_id_token_for_developer_identity(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "GetOpenIdTokenForDeveloperIdentity", args)

@inline get_open_id_token_for_developer_identity(args) = get_open_id_token_for_developer_identity(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.list_identities
    list_identities([::AWSConfig], arguments::Dict)
    list_identities([::AWSConfig]; IdentityPoolId=, MaxResults=, <keyword arguments>)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "ListIdentities", arguments::Dict)
    cognito_identity([::AWSConfig], "ListIdentities", IdentityPoolId=, MaxResults=, <keyword arguments>)

# ListIdentities Operation

Lists the identities in a pool.

You must use AWS Developer credentials to call this API.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
An identity pool ID in the format REGION:GUID.


## `MaxResults = ::Int` -- *Required*
The maximum number of identities to return.


## `NextToken = ::String`
A pagination token.


## `HideDisabled = ::Bool`
An optional boolean parameter that allows you to hide disabled identities. If omitted, the ListIdentities API will include disabled identities in the response.




# Returns

`ListIdentitiesResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/ListIdentities)
"""
@inline list_identities(aws::AWSConfig=default_aws_config(); args...) = list_identities(aws, args)

@inline list_identities(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "ListIdentities", args)

@inline list_identities(args) = list_identities(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.list_identity_pools
    list_identity_pools([::AWSConfig], arguments::Dict)
    list_identity_pools([::AWSConfig]; MaxResults=, <keyword arguments>)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "ListIdentityPools", arguments::Dict)
    cognito_identity([::AWSConfig], "ListIdentityPools", MaxResults=, <keyword arguments>)

# ListIdentityPools Operation

Lists all of the Cognito identity pools registered for your account.

You must use AWS Developer credentials to call this API.

# Arguments

## `MaxResults = ::Int` -- *Required*
The maximum number of identities to return.


## `NextToken = ::String`
A pagination token.




# Returns

`ListIdentityPoolsResponse`

# Exceptions

`InvalidParameterException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/ListIdentityPools)
"""
@inline list_identity_pools(aws::AWSConfig=default_aws_config(); args...) = list_identity_pools(aws, args)

@inline list_identity_pools(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "ListIdentityPools", args)

@inline list_identity_pools(args) = list_identity_pools(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.lookup_developer_identity
    lookup_developer_identity([::AWSConfig], arguments::Dict)
    lookup_developer_identity([::AWSConfig]; IdentityPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "LookupDeveloperIdentity", arguments::Dict)
    cognito_identity([::AWSConfig], "LookupDeveloperIdentity", IdentityPoolId=, <keyword arguments>)

# LookupDeveloperIdentity Operation

Retrieves the `IdentityID` associated with a `DeveloperUserIdentifier` or the list of `DeveloperUserIdentifier`s associated with an `IdentityId` for an existing identity. Either `IdentityID` or `DeveloperUserIdentifier` must not be null. If you supply only one of these values, the other value will be searched in the database and returned as a part of the response. If you supply both, `DeveloperUserIdentifier` will be matched against `IdentityID`. If the values are verified against the database, the response returns both values and is the same as the request. Otherwise a `ResourceConflictException` is thrown.

You must use AWS Developer credentials to call this API.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
An identity pool ID in the format REGION:GUID.


## `IdentityId = ::String`
A unique identifier in the format REGION:GUID.


## `DeveloperUserIdentifier = ::String`
A unique ID used by your backend authentication process to identify a user. Typically, a developer identity provider would issue many developer user identifiers, in keeping with the number of users.


## `MaxResults = ::Int`
The maximum number of identities to return.


## `NextToken = ::String`
A pagination token. The first call you make will have `NextToken` set to null. After that the service will return `NextToken` values as needed. For example, let's say you make a request with `MaxResults` set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.




# Returns

`LookupDeveloperIdentityResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `ResourceConflictException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/LookupDeveloperIdentity)
"""
@inline lookup_developer_identity(aws::AWSConfig=default_aws_config(); args...) = lookup_developer_identity(aws, args)

@inline lookup_developer_identity(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "LookupDeveloperIdentity", args)

@inline lookup_developer_identity(args) = lookup_developer_identity(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.merge_developer_identities
    merge_developer_identities([::AWSConfig], arguments::Dict)
    merge_developer_identities([::AWSConfig]; SourceUserIdentifier=, DestinationUserIdentifier=, DeveloperProviderName=, IdentityPoolId=)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "MergeDeveloperIdentities", arguments::Dict)
    cognito_identity([::AWSConfig], "MergeDeveloperIdentities", SourceUserIdentifier=, DestinationUserIdentifier=, DeveloperProviderName=, IdentityPoolId=)

# MergeDeveloperIdentities Operation

Merges two users having different `IdentityId`s, existing in the same identity pool, and identified by the same developer provider. You can use this action to request that discrete users be merged and identified as a single user in the Cognito environment. Cognito associates the given source user (`SourceUserIdentifier`) with the `IdentityId` of the `DestinationUserIdentifier`. Only developer-authenticated users can be merged. If the users to be merged are associated with the same public provider, but as two different users, an exception will be thrown.

You must use AWS Developer credentials to call this API.

# Arguments

## `SourceUserIdentifier = ::String` -- *Required*
User identifier for the source user. The value should be a `DeveloperUserIdentifier`.


## `DestinationUserIdentifier = ::String` -- *Required*
User identifier for the destination user. The value should be a `DeveloperUserIdentifier`.


## `DeveloperProviderName = ::String` -- *Required*
The "domain" by which Cognito will refer to your users. This is a (pseudo) domain name that you provide while creating an identity pool. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the `DeveloperProviderName`, you can use letters as well as period (.), underscore (_), and dash (-).


## `IdentityPoolId = ::String` -- *Required*
An identity pool ID in the format REGION:GUID.




# Returns

`MergeDeveloperIdentitiesResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `ResourceConflictException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/MergeDeveloperIdentities)
"""
@inline merge_developer_identities(aws::AWSConfig=default_aws_config(); args...) = merge_developer_identities(aws, args)

@inline merge_developer_identities(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "MergeDeveloperIdentities", args)

@inline merge_developer_identities(args) = merge_developer_identities(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.set_identity_pool_roles
    set_identity_pool_roles([::AWSConfig], arguments::Dict)
    set_identity_pool_roles([::AWSConfig]; IdentityPoolId=, Roles=, <keyword arguments>)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "SetIdentityPoolRoles", arguments::Dict)
    cognito_identity([::AWSConfig], "SetIdentityPoolRoles", IdentityPoolId=, Roles=, <keyword arguments>)

# SetIdentityPoolRoles Operation

Sets the roles for an identity pool. These roles are used when making calls to [GetCredentialsForIdentity](@ref) action.

You must use AWS Developer credentials to call this API.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
An identity pool ID in the format REGION:GUID.


## `Roles = ::Dict{String,String}` -- *Required*
The map of roles associated with this pool. For a given role, the key will be either "authenticated" or "unauthenticated" and the value will be the Role ARN.


## `RoleMappings = ::Dict{String,String}`
How users for a specific identity provider are to mapped to roles. This is a string to [RoleMapping](@ref) object map. The string identifies the identity provider, for example, "graph.facebook.com" or "cognito-idp-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id".

Up to 25 rules can be specified per identity provider.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `ResourceConflictException`, `TooManyRequestsException`, `InternalErrorException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/SetIdentityPoolRoles)
"""
@inline set_identity_pool_roles(aws::AWSConfig=default_aws_config(); args...) = set_identity_pool_roles(aws, args)

@inline set_identity_pool_roles(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "SetIdentityPoolRoles", args)

@inline set_identity_pool_roles(args) = set_identity_pool_roles(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.unlink_developer_identity
    unlink_developer_identity([::AWSConfig], arguments::Dict)
    unlink_developer_identity([::AWSConfig]; IdentityId=, IdentityPoolId=, DeveloperProviderName=, DeveloperUserIdentifier=)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "UnlinkDeveloperIdentity", arguments::Dict)
    cognito_identity([::AWSConfig], "UnlinkDeveloperIdentity", IdentityId=, IdentityPoolId=, DeveloperProviderName=, DeveloperUserIdentifier=)

# UnlinkDeveloperIdentity Operation

Unlinks a `DeveloperUserIdentifier` from an existing identity. Unlinked developer users will be considered new identities next time they are seen. If, for a given Cognito identity, you remove all federated identities as well as the developer user identifier, the Cognito identity becomes inaccessible.

You must use AWS Developer credentials to call this API.

# Arguments

## `IdentityId = ::String` -- *Required*
A unique identifier in the format REGION:GUID.


## `IdentityPoolId = ::String` -- *Required*
An identity pool ID in the format REGION:GUID.


## `DeveloperProviderName = ::String` -- *Required*
The "domain" by which Cognito will refer to your users.


## `DeveloperUserIdentifier = ::String` -- *Required*
A unique ID used by your backend authentication process to identify a user.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `ResourceConflictException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/UnlinkDeveloperIdentity)
"""
@inline unlink_developer_identity(aws::AWSConfig=default_aws_config(); args...) = unlink_developer_identity(aws, args)

@inline unlink_developer_identity(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "UnlinkDeveloperIdentity", args)

@inline unlink_developer_identity(args) = unlink_developer_identity(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.unlink_identity
    unlink_identity([::AWSConfig], arguments::Dict)
    unlink_identity([::AWSConfig]; IdentityId=, Logins=, LoginsToRemove=)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "UnlinkIdentity", arguments::Dict)
    cognito_identity([::AWSConfig], "UnlinkIdentity", IdentityId=, Logins=, LoginsToRemove=)

# UnlinkIdentity Operation

Unlinks a federated identity from an existing account. Unlinked logins will be considered new identities next time they are seen. Removing the last linked login will make this identity inaccessible.

This is a public API. You do not need any credentials to call this API.

# Arguments

## `IdentityId = ::String` -- *Required*
A unique identifier in the format REGION:GUID.


## `Logins = ::Dict{String,String}` -- *Required*
A set of optional name-value pairs that map provider names to provider tokens.


## `LoginsToRemove = [::String, ...]` -- *Required*
Provider names to unlink from this identity.




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `ResourceConflictException`, `TooManyRequestsException`, `InternalErrorException` or `ExternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/UnlinkIdentity)
"""
@inline unlink_identity(aws::AWSConfig=default_aws_config(); args...) = unlink_identity(aws, args)

@inline unlink_identity(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "UnlinkIdentity", args)

@inline unlink_identity(args) = unlink_identity(default_aws_config(), args)


"""
    using AWSSDK.CognitoIdentity.update_identity_pool
    update_identity_pool([::AWSConfig], arguments::Dict)
    update_identity_pool([::AWSConfig]; IdentityPoolId=, IdentityPoolName=, AllowUnauthenticatedIdentities=, <keyword arguments>)

    using AWSCore.Services.cognito_identity
    cognito_identity([::AWSConfig], "UpdateIdentityPool", arguments::Dict)
    cognito_identity([::AWSConfig], "UpdateIdentityPool", IdentityPoolId=, IdentityPoolName=, AllowUnauthenticatedIdentities=, <keyword arguments>)

# UpdateIdentityPool Operation

Updates a user pool.

You must use AWS Developer credentials to call this API.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
An identity pool ID in the format REGION:GUID.


## `IdentityPoolName = ::String` -- *Required*
A string that you provide.


## `AllowUnauthenticatedIdentities = ::Bool` -- *Required*
TRUE if the identity pool supports unauthenticated logins.


## `SupportedLoginProviders = ::Dict{String,String}`
Optional key:value pairs mapping provider names to provider app IDs.


## `DeveloperProviderName = ::String`
The "domain" by which Cognito will refer to your users.


## `OpenIdConnectProviderARNs = [::String, ...]`
A list of OpendID Connect provider ARNs.


## `CognitoIdentityProviders = [[ ... ], ...]`
A list representing an Amazon Cognito Identity User Pool and its client ID.
```
 CognitoIdentityProviders = [[
        "ProviderName" =>  ::String,
        "ClientId" =>  ::String,
        "ServerSideTokenCheck" =>  ::Bool
    ], ...]
```

## `SamlProviderARNs = [::String, ...]`
An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.




# Returns

`IdentityPool`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `ResourceConflictException`, `TooManyRequestsException`, `InternalErrorException`, `ConcurrentModificationException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/UpdateIdentityPool)
"""
@inline update_identity_pool(aws::AWSConfig=default_aws_config(); args...) = update_identity_pool(aws, args)

@inline update_identity_pool(aws::AWSConfig, args) = AWSCore.Services.cognito_identity(aws, "UpdateIdentityPool", args)

@inline update_identity_pool(args) = update_identity_pool(default_aws_config(), args)




end # module CognitoIdentity


#==============================================================================#
# End of file
#==============================================================================#
