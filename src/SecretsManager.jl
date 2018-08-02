#==============================================================================#
# SecretsManager.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/secretsmanager-2017-10-17.normal.json
#==============================================================================#

__precompile__()

module SecretsManager

using AWSCore


"""
    using AWSSDK.SecretsManager.cancel_rotate_secret
    cancel_rotate_secret([::AWSConfig], arguments::Dict)
    cancel_rotate_secret([::AWSConfig]; SecretId=)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "CancelRotateSecret", arguments::Dict)
    secretsmanager([::AWSConfig], "CancelRotateSecret", SecretId=)

# CancelRotateSecret Operation

Disables automatic scheduled rotation and cancels the rotation of a secret if one is currently in progress.

To re-enable scheduled rotation, call [RotateSecret](@ref) with `AutomaticallyRotateAfterDays` set to a value greater than 0. This will immediately rotate your secret and then enable the automatic schedule.

**Note**
> If you cancel a rotation that is in progress, it can leave the `VersionStage` labels in an unexpected state. Depending on what step of the rotation was in progress, you might need to remove the staging label `AWSPENDING` from the partially created version, specified by the `SecretVersionId` response value. You should also evaluate the partially rotated new version to see if it should be deleted, which you can do by removing all staging labels from the new version's `VersionStage` field.

To successfully start a rotation, the staging label `AWSPENDING` must be in one of the following states:

*   Not be attached to any version at all

*   Attached to the same version as the staging label `AWSCURRENT`

If the staging label `AWSPENDING` is attached to a different version than the version with `AWSCURRENT` then the attempt to rotate fails.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:CancelRotateSecret

**Related operations**

*   To configure rotation for a secret or to manually trigger a rotation, use [RotateSecret](@ref).

*   To get the rotation configuration details for a secret, use [DescribeSecret](@ref).

*   To list all of the currently available secrets, use [ListSecrets](@ref).

*   To list all of the versions currently associated with a secret, use [ListSecretVersionIds](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
Specifies the secret for which you want to cancel a rotation request. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.




# Returns

`CancelRotateSecretResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `InternalServiceError` or `InvalidRequestException`.

# Example: To cancel scheduled rotation for a secret

The following example shows how to cancel rotation for a secret. The operation sets the RotationEnabled field to false and cancels all scheduled rotations. To resume scheduled rotations, you must re-enable rotation by calling the rotate-secret operation.

Input:
```
[
    "SecretId" => "MyTestDatabaseSecret"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "Name"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/CancelRotateSecret)
"""
@inline cancel_rotate_secret(aws::AWSConfig=default_aws_config(); args...) = cancel_rotate_secret(aws, args)

@inline cancel_rotate_secret(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "CancelRotateSecret", args)

@inline cancel_rotate_secret(args) = cancel_rotate_secret(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.create_secret
    create_secret([::AWSConfig], arguments::Dict)
    create_secret([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "CreateSecret", arguments::Dict)
    secretsmanager([::AWSConfig], "CreateSecret", Name=, <keyword arguments>)

# CreateSecret Operation

Creates a new secret. A secret in Secrets Manager consists of both the protected secret data and the important information needed to manage the secret.

Secrets Manager stores the encrypted secret data in one of a collection of "versions" associated with the secret. Each version contains a copy of the encrypted secret data. Each version is associated with one or more "staging labels" that identify where the version is in the rotation cycle. The `SecretVersionsToStages` field of the secret contains the mapping of staging labels to the active versions of the secret. Versions without a staging label are considered deprecated and are not included in the list.

You provide the secret data to be encrypted by putting text in either the `SecretString` parameter or binary data in the `SecretBinary` parameter, but not both. If you include `SecretString` or `SecretBinary` then Secrets Manager also creates an initial secret version and automatically attaches the staging label `AWSCURRENT` to the new version.

**Note**
> *   If you call an operation that needs to encrypt or decrypt the `SecretString` or `SecretBinary` for a secret in the same account as the calling user and that secret doesn't specify a AWS KMS encryption key, Secrets Manager uses the account's default AWS managed customer master key (CMK) with the alias `aws/secretsmanager`. If this key doesn't already exist in your account then Secrets Manager creates it for you automatically. All users in the same AWS account automatically have access to use the default CMK. Note that if an Secrets Manager API call results in AWS having to create the account's AWS-managed CMK, it can result in a one-time significant delay in returning the result.

*   If the secret is in a different AWS account from the credentials calling an API that requires encryption or decryption of the secret value then you must create and use a custom AWS KMS CMK because you can't access the default CMK for the account using credentials from a different AWS account. Store the ARN of the CMK in the secret when you create the secret or when you update it by including it in the `KMSKeyId`. If you call an API that must encrypt or decrypt `SecretString` or `SecretBinary` using credentials from a different account then the AWS KMS key policy must grant cross-account access to that other account's user or role for both the kms:GenerateDataKey and kms:Decrypt operations.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:CreateSecret

*   kms:GenerateDataKey - needed only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account's default AWS managed CMK for Secrets Manager.

*   kms:Decrypt - needed only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account's default AWS managed CMK for Secrets Manager.

**Related operations**

*   To delete a secret, use [DeleteSecret](@ref).

*   To modify an existing secret, use [UpdateSecret](@ref).

*   To create a new version of a secret, use [PutSecretValue](@ref).

*   To retrieve the encrypted secure string and secure binary values, use [GetSecretValue](@ref).

*   To retrieve all other details for a secret, use [DescribeSecret](@ref). This does not include the encrypted secure string and secure binary values.

*   To retrieve the list of secret versions associated with the current secret, use [DescribeSecret](@ref) and examine the `SecretVersionsToStages` response value.

# Arguments

## `Name = ::String` -- *Required*
Specifies the friendly name of the new secret.

The secret name must be ASCII letters, digits, or the following characters : /_+=.@-


## `ClientRequestToken = ::String`
(Optional) If you include `SecretString` or `SecretBinary`, then an initial version is created as part of the secret, and this parameter specifies a unique identifier for the new version.

**Note**
> If you use the AWS CLI or one of the AWS SDK to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it as the value for this parameter in the request. If you don't use the SDK and instead generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a `ClientRequestToken` yourself for the new version and include that value in the request.

This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during a rotation. We recommend that you generate a [UUID-type](https://wikipedia.org/wiki/Universally_unique_identifier) value to ensure uniqueness of your versions within the specified secret.

*   If the `ClientRequestToken` value isn't already associated with a version of the secret then a new version of the secret is created.

*   If a version with this value already exists and that version's `SecretString` and `SecretBinary` values are the same as those in the request, then the request is ignored (the operation is idempotent).

*   If a version with this value already exists and that version's `SecretString` and `SecretBinary` values are different from those in the request then the request fails because you cannot modify an existing version. Instead, use [PutSecretValue](@ref) to create a new version.

This value becomes the `SecretVersionId` of the new version.


## `Description = ::String`
(Optional) Specifies a user-provided description of the secret.


## `KmsKeyId = ::String`
(Optional) Specifies the ARN, Key ID, or alias of the AWS KMS customer master key (CMK) to be used to encrypt the `SecretString` or `SecretBinary` values in the versions stored in this secret.

You can specify any of the supported ways to identify a AWS KMS key ID. If you need to reference a CMK in a different account, you can use only the key ARN or the alias ARN.

If you don't specify this value, then Secrets Manager defaults to using the AWS account's default CMK (the one named `aws/secretsmanager`). If a AWS KMS CMK with that name doesn't yet exist, then Secrets Manager creates it for you automatically the first time it needs to encrypt a version's `SecretString` or `SecretBinary` fields.

**Important**
> You can use the account's default CMK to encrypt and decrypt only if you call this operation using credentials from the same account that owns the secret. If the secret is in a different account, then you must create a custom CMK and specify the ARN in this field.


## `SecretBinary = blob`
(Optional) Specifies binary data that you want to encrypt and store in the new version of the secret. To use this parameter in the command-line tools, we recommend that you store your binary data in a file and then use the appropriate technique for your tool to pass the contents of the file as a parameter.

Either `SecretString` or `SecretBinary` must have a value, but not both. They cannot both be empty.

This parameter is not available using the Secrets Manager console. It can be accessed only by using the AWS CLI or one of the AWS SDKs.


## `SecretString = ::String`
(Optional) Specifies text data that you want to encrypt and store in this new version of the secret.

Either `SecretString` or `SecretBinary` must have a value, but not both. They cannot both be empty.

If you create a secret by using the Secrets Manager console then Secrets Manager puts the protected secret text in only the `SecretString` parameter. The Secrets Manager console stores the information as a JSON structure of key/value pairs that the Lambda rotation function knows how to parse.

For storing multiple values, we recommend that you use a JSON text string argument and specify key/value pairs. For information on how to format a JSON parameter for the various command line tool environments, see [Using JSON for Parameters](http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json) in the *AWS CLI User Guide*. For example:

`[{"username":"bob"},{"password":"abc123xyz456"}]`

If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text.


## `Tags = [[ ... ], ...]`
(Optional) Specifies a list of user-defined tags that are attached to the secret. Each tag is a "Key" and "Value" pair of strings. This operation only appends tags to the existing list of tags. To remove tags, you must use [UntagResource](@ref).

**Important**
> *   Secrets Manager tag key names are case sensitive. A tag with the key "ABC" is a different tag from one with key "abc".

*   If you check tags in IAM policy `Condition` elements as part of your security strategy, then adding or removing a tag can change permissions. If the successful completion of this operation would result in you losing your permissions for this secret, then this operation is blocked and returns an `Access Denied` error.

This parameter requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see [Using JSON for Parameters](http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json) in the *AWS CLI User Guide*. For example:

`[{"Key":"CostCenter","Value":"12345"},{"Key":"environment","Value":"production"}]`

If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text.

The following basic restrictions apply to tags:

*   Maximum number of tags per secret—50

*   Maximum key length—127 Unicode characters in UTF-8

*   Maximum value length—255 Unicode characters in UTF-8

*   Tag keys and values are case sensitive.

*   Do not use the `aws:` prefix in your tag names or values because it is reserved for AWS use. You can't edit or delete tag names or values with this prefix. Tags with this prefix do not count against your tags per secret limit.

*   If your tagging schema will be used across multiple services and resources, remember that other services might have restrictions on allowed characters. Generally allowed characters are: letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - = . _ : / @.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateSecretResponse`

# Exceptions

`InvalidParameterException`, `InvalidRequestException`, `LimitExceededException`, `EncryptionFailure`, `ResourceExistsException`, `ResourceNotFoundException`, `MalformedPolicyDocumentException`, `InternalServiceError` or `PreconditionNotMetException`.

# Example: To create a basic secret

The following example shows how to create a secret. The credentials stored in the encrypted secret value are retrieved from a file on disk named mycreds.json.

Input:
```
[
    "ClientRequestToken" => "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1",
    "Description" => "My test database secret created with the CLI",
    "Name" => "MyTestDatabaseSecret",
    "SecretString" => "{"username":"david","password":"BnQw!XDWgaEeT9XGTT29"}"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret",
    "VersionId" => "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/CreateSecret)
"""
@inline create_secret(aws::AWSConfig=default_aws_config(); args...) = create_secret(aws, args)

@inline create_secret(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "CreateSecret", args)

@inline create_secret(args) = create_secret(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.delete_resource_policy
    delete_resource_policy([::AWSConfig], arguments::Dict)
    delete_resource_policy([::AWSConfig]; SecretId=)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "DeleteResourcePolicy", arguments::Dict)
    secretsmanager([::AWSConfig], "DeleteResourcePolicy", SecretId=)

# DeleteResourcePolicy Operation

Deletes the resource-based permission policy that's attached to the secret.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:DeleteResourcePolicy

**Related operations**

*   To attach a resource policy to a secret, use [PutResourcePolicy](@ref).

*   To retrieve the current resource-based policy that's attached to a secret, use [GetResourcePolicy](@ref).

*   To list all of the currently available secrets, use [ListSecrets](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
Specifies the secret that you want to delete the attached resource-based policy for. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.




# Returns

`DeleteResourcePolicyResponse`

# Exceptions

`ResourceNotFoundException`, `InternalServiceError` or `InvalidRequestException`.

# Example: To delete the resource-based policy attached to a secret

The following example shows how to delete the resource-based policy that is attached to a secret.

Input:
```
[
    "SecretId" => "MyTestDatabaseSecret"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseMasterSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DeleteResourcePolicy)
"""
@inline delete_resource_policy(aws::AWSConfig=default_aws_config(); args...) = delete_resource_policy(aws, args)

@inline delete_resource_policy(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "DeleteResourcePolicy", args)

@inline delete_resource_policy(args) = delete_resource_policy(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.delete_secret
    delete_secret([::AWSConfig], arguments::Dict)
    delete_secret([::AWSConfig]; SecretId=, <keyword arguments>)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "DeleteSecret", arguments::Dict)
    secretsmanager([::AWSConfig], "DeleteSecret", SecretId=, <keyword arguments>)

# DeleteSecret Operation

Deletes an entire secret and all of its versions. You can optionally include a recovery window during which you can restore the secret. If you don't specify a recovery window value, the operation defaults to 30 days. Secrets Manager attaches a `DeletionDate` stamp to the secret that specifies the end of the recovery window. At the end of the recovery window, Secrets Manager deletes the secret permanently.

At any time before recovery window ends, you can use [RestoreSecret](@ref) to remove the `DeletionDate` and cancel the deletion of the secret.

You cannot access the encrypted secret information in any secret that is scheduled for deletion. If you need to access that information, you must cancel the deletion with [RestoreSecret](@ref) and then retrieve the information.

**Note**
> *   There is no explicit operation to delete a version of a secret. Instead, remove all staging labels from the `VersionStage` field of a version. That marks the version as deprecated and allows Secrets Manager to delete it as needed. Versions that do not have any staging labels do not show up in [ListSecretVersionIds](@ref) unless you specify `IncludeDeprecated`.

*   The permanent secret deletion at the end of the waiting period is performed as a background task with low priority. There is no guarantee of a specific time after the recovery window for the actual delete operation to occur.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:DeleteSecret

**Related operations**

*   To create a secret, use [CreateSecret](@ref).

*   To cancel deletion of a version of a secret before the recovery window has expired, use [RestoreSecret](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
Specifies the secret that you want to delete. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.


## `RecoveryWindowInDays = ::Int`
(Optional) Specifies the number of days that Secrets Manager waits before it can delete the secret.

This value can range from 7 to 30 days. The default value is 30.




# Returns

`DeleteSecretResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `InvalidRequestException` or `InternalServiceError`.

# Example: To delete a secret

The following example shows how to delete a secret. The secret stays in your account in a deprecated and inaccessible state until the recovery window ends. After the date and time in the DeletionDate response field has passed, you can no longer recover this secret with restore-secret.

Input:
```
[
    "RecoveryWindowInDays" => 7,
    "SecretId" => "MyTestDatabaseSecret1"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "DeletionDate" => "1524085349.095",
    "Name" => "MyTestDatabaseSecret"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DeleteSecret)
"""
@inline delete_secret(aws::AWSConfig=default_aws_config(); args...) = delete_secret(aws, args)

@inline delete_secret(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "DeleteSecret", args)

@inline delete_secret(args) = delete_secret(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.describe_secret
    describe_secret([::AWSConfig], arguments::Dict)
    describe_secret([::AWSConfig]; SecretId=)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "DescribeSecret", arguments::Dict)
    secretsmanager([::AWSConfig], "DescribeSecret", SecretId=)

# DescribeSecret Operation

Retrieves the details of a secret. It does not include the encrypted fields. Only those fields that are populated with a value are returned in the response.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:DescribeSecret

**Related operations**

*   To create a secret, use [CreateSecret](@ref).

*   To modify a secret, use [UpdateSecret](@ref).

*   To retrieve the encrypted secret information in a version of the secret, use [GetSecretValue](@ref).

*   To list all of the secrets in the AWS account, use [ListSecrets](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
The identifier of the secret whose details you want to retrieve. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.




# Returns

`DescribeSecretResponse`

# Exceptions

`ResourceNotFoundException` or `InternalServiceError`.

# Example: To retrieve the details of a secret

The following example shows how to get the details about a secret.

Input:
```
[
    "SecretId" => "MyTestDatabaseSecret"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Description" => "My test database secret",
    "KmsKeyId" => "arn:aws:kms:us-west-2:123456789012:key/EXAMPLE1-90ab-cdef-fedc-ba987KMSKEY1",
    "LastAccessedDate" => "1523923200",
    "LastChangedDate" => 1.523477145729e9,
    "LastRotatedDate" => 1.52574725372e9,
    "Name" => "MyTestDatabaseSecret",
    "RotationEnabled" => true,
    "RotationLambdaARN" => "arn:aws:lambda:us-west-2:123456789012:function:MyTestRotationLambda",
    "RotationRules" => Dict(
        "AutomaticallyAfterDays" => 30
    ),
    "Tags" => [
        Dict(
            "Key" => "SecondTag",
            "Value" => "AnotherValue"
        ),
        Dict(
            "Key" => "FirstTag",
            "Value" => "SomeValue"
        )
    ],
    "VersionIdsToStages" => Dict(
        "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE" => [
            "AWSPREVIOUS"
        ],
        "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE" => [
            "AWSCURRENT"
        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DescribeSecret)
"""
@inline describe_secret(aws::AWSConfig=default_aws_config(); args...) = describe_secret(aws, args)

@inline describe_secret(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "DescribeSecret", args)

@inline describe_secret(args) = describe_secret(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.get_random_password
    get_random_password([::AWSConfig], arguments::Dict)
    get_random_password([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "GetRandomPassword", arguments::Dict)
    secretsmanager([::AWSConfig], "GetRandomPassword", <keyword arguments>)

# GetRandomPassword Operation

Generates a random password of the specified complexity. This operation is intended for use in the Lambda rotation function. Per best practice, we recommend that you specify the maximum length and include every character type that the system you are generating a password for can support.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:GetRandomPassword

# Arguments

## `PasswordLength = ::Int`
The desired length of the generated password. The default value if you do not include this parameter is 32 characters.


## `ExcludeCharacters = ::String`
A string that includes characters that should not be included in the generated password. The default is that all characters from the included sets can be used.


## `ExcludeNumbers = ::Bool`
Specifies that the generated password should not include digits. The default if you do not include this switch parameter is that digits can be included.


## `ExcludePunctuation = ::Bool`
Specifies that the generated password should not include punctuation characters. The default if you do not include this switch parameter is that punctuation characters can be included.


## `ExcludeUppercase = ::Bool`
Specifies that the generated password should not include uppercase letters. The default if you do not include this switch parameter is that uppercase letters can be included.


## `ExcludeLowercase = ::Bool`
Specifies that the generated password should not include lowercase letters. The default if you do not include this switch parameter is that lowercase letters can be included.


## `IncludeSpace = ::Bool`
Specifies that the generated password can include the space character. The default if you do not include this switch parameter is that the space character is not included.


## `RequireEachIncludedType = ::Bool`
A boolean value that specifies whether the generated password must include at least one of every allowed character type. The default value is `True` and the operation requires at least one of every character type.




# Returns

`GetRandomPasswordResponse`

# Exceptions

`InvalidParameterException`, `InvalidRequestException` or `InternalServiceError`.

# Example: To generate a random password

The following example shows how to request a randomly generated password. This example includes the optional flags to require spaces and at least one character of each included type. It specifies a length of 20 characters.

Input:
```
[
    "IncludeSpace" => true,
    "PasswordLength" => 20,
    "RequireEachIncludedType" => true
]
```

Output:
```
Dict(
    "RandomPassword" => "N+Z43a,>vx7j O8^*<8i3"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetRandomPassword)
"""
@inline get_random_password(aws::AWSConfig=default_aws_config(); args...) = get_random_password(aws, args)

@inline get_random_password(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "GetRandomPassword", args)

@inline get_random_password(args) = get_random_password(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.get_resource_policy
    get_resource_policy([::AWSConfig], arguments::Dict)
    get_resource_policy([::AWSConfig]; SecretId=)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "GetResourcePolicy", arguments::Dict)
    secretsmanager([::AWSConfig], "GetResourcePolicy", SecretId=)

# GetResourcePolicy Operation

Retrieves the JSON text of the resource-based policy document that's attached to the specified secret. The JSON request string input and response output are shown formatted with white space and line breaks for better readability. Submit your input as a single line JSON string.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:GetResourcePolicy

**Related operations**

*   To attach a resource policy to a secret, use [PutResourcePolicy](@ref).

*   To delete the resource-based policy that's attached to a secret, use [DeleteResourcePolicy](@ref).

*   To list all of the currently available secrets, use [ListSecrets](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
Specifies the secret that you want to retrieve the attached resource-based policy for. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.




# Returns

`GetResourcePolicyResponse`

# Exceptions

`ResourceNotFoundException`, `InternalServiceError` or `InvalidRequestException`.

# Example: To retrieve the resource-based policy attached to a secret

The following example shows how to retrieve the resource-based policy that is attached to a secret.

Input:
```
[
    "SecretId" => "MyTestDatabaseSecret"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret",
    "ResourcePolicy" => "{
"Version":"2012-10-17",
"Statement":[{
"Effect":"Allow",
"Principal":{
"AWS":"arn:aws:iam::123456789012:root"
},
"Action":"secretsmanager:GetSecretValue",
"Resource":"*"
}]
}"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetResourcePolicy)
"""
@inline get_resource_policy(aws::AWSConfig=default_aws_config(); args...) = get_resource_policy(aws, args)

@inline get_resource_policy(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "GetResourcePolicy", args)

@inline get_resource_policy(args) = get_resource_policy(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.get_secret_value
    get_secret_value([::AWSConfig], arguments::Dict)
    get_secret_value([::AWSConfig]; SecretId=, <keyword arguments>)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "GetSecretValue", arguments::Dict)
    secretsmanager([::AWSConfig], "GetSecretValue", SecretId=, <keyword arguments>)

# GetSecretValue Operation

Retrieves the contents of the encrypted fields `SecretString` or `SecretBinary` from the specified version of a secret, whichever contains content.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:GetSecretValue

*   kms:Decrypt - required only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account's default AWS managed CMK for Secrets Manager.

**Related operations**

*   To create a new version of the secret with different encrypted information, use [PutSecretValue](@ref).

*   To retrieve the non-encrypted details for the secret, use [DescribeSecret](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
Specifies the secret containing the version that you want to retrieve. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.


## `VersionId = ::String`
Specifies the unique identifier of the version of the secret that you want to retrieve. If you specify this parameter then don't specify `VersionStage`. If you don't specify either a `VersionStage` or `SecretVersionId` then the default is to perform the operation on the version with the `VersionStage` value of `AWSCURRENT`.

This value is typically a [UUID-type](https://wikipedia.org/wiki/Universally_unique_identifier) value with 32 hexadecimal digits.


## `VersionStage = ::String`
Specifies the secret version that you want to retrieve by the staging label attached to the version.

Staging labels are used to keep track of different versions during the rotation process. If you use this parameter then don't specify `SecretVersionId`. If you don't specify either a `VersionStage` or `SecretVersionId`, then the default is to perform the operation on the version with the `VersionStage` value of `AWSCURRENT`.




# Returns

`GetSecretValueResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `InvalidRequestException`, `DecryptionFailure` or `InternalServiceError`.

# Example: To retrieve the encrypted secret value of a secret

The following example shows how to retrieve the secret string value from the version of the secret that has the AWSPREVIOUS staging label attached. If you want to retrieve the AWSCURRENT version of the secret, then you can omit the VersionStage parameter because it defaults to AWSCURRENT.

Input:
```
[
    "SecretId" => "MyTestDatabaseSecret",
    "VersionStage" => "AWSPREVIOUS"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "CreatedDate" => 1.523477145713e9,
    "Name" => "MyTestDatabaseSecret",
    "SecretString" => "{
  "username":"david",
  "password":"BnQw&XDWgaEeT9XGTT29"
}
",
    "VersionId" => "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1",
    "VersionStages" => [
        "AWSPREVIOUS"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetSecretValue)
"""
@inline get_secret_value(aws::AWSConfig=default_aws_config(); args...) = get_secret_value(aws, args)

@inline get_secret_value(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "GetSecretValue", args)

@inline get_secret_value(args) = get_secret_value(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.list_secret_version_ids
    list_secret_version_ids([::AWSConfig], arguments::Dict)
    list_secret_version_ids([::AWSConfig]; SecretId=, <keyword arguments>)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "ListSecretVersionIds", arguments::Dict)
    secretsmanager([::AWSConfig], "ListSecretVersionIds", SecretId=, <keyword arguments>)

# ListSecretVersionIds Operation

Lists all of the versions attached to the specified secret. The output does not include the `SecretString` or `SecretBinary` fields. By default, the list includes only versions that have at least one staging label in `VersionStage` attached.

**Note**
> Always check the `NextToken` response parameter when calling any of the `List*` operations. These operations can occasionally return an empty or shorter than expected list of results even when there are more results available. When this happens, the `NextToken` response parameter contains a value to pass to the next call to the same API to request the next part of the list.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:ListSecretVersionIds

**Related operations**

*   To list the secrets in an account, use [ListSecrets](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
The identifier for the secret containing the versions you want to list. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.


## `MaxResults = ::Int`
(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, it defaults to a value that's specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (isn't null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Secrets Manager might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.


## `NextToken = ::String`
(Optional) Use this parameter in a request if you receive a `NextToken` response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.


## `IncludeDeprecated = ::Bool`
(Optional) Specifies that you want the results to include versions that do not have any staging labels attached to them. Such versions are considered deprecated and are subject to deletion by Secrets Manager as needed.




# Returns

`ListSecretVersionIdsResponse`

# Exceptions

`InvalidNextTokenException`, `ResourceNotFoundException` or `InternalServiceError`.

# Example: To list all of the secret versions associated with a secret

The following example shows how to retrieve a list of all of the versions of a secret, including those without any staging labels.

Input:
```
[
    "IncludeDeprecated" => true,
    "SecretId" => "MyTestDatabaseSecret"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret",
    "Versions" => [
        Dict(
            "CreatedDate" => 1.523477145713e9,
            "VersionId" => "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE",
            "VersionStages" => [
                "AWSPREVIOUS"
            ]
        ),
        Dict(
            "CreatedDate" => 1.523486221391e9,
            "VersionId" => "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE",
            "VersionStages" => [
                "AWSCURRENT"
            ]
        ),
        Dict(
            "CreatedDate" => 1.51197446236e9,
            "VersionId" => "EXAMPLE3-90ab-cdef-fedc-ba987EXAMPLE;"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ListSecretVersionIds)
"""
@inline list_secret_version_ids(aws::AWSConfig=default_aws_config(); args...) = list_secret_version_ids(aws, args)

@inline list_secret_version_ids(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "ListSecretVersionIds", args)

@inline list_secret_version_ids(args) = list_secret_version_ids(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.list_secrets
    list_secrets([::AWSConfig], arguments::Dict)
    list_secrets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "ListSecrets", arguments::Dict)
    secretsmanager([::AWSConfig], "ListSecrets", <keyword arguments>)

# ListSecrets Operation

Lists all of the secrets that are stored by Secrets Manager in the AWS account. To list the versions currently stored for a specific secret, use [ListSecretVersionIds](@ref). The encrypted fields `SecretString` and `SecretBinary` are not included in the output. To get that information, call the [GetSecretValue](@ref) operation.

**Note**
> Always check the `NextToken` response parameter when calling any of the `List*` operations. These operations can occasionally return an empty or shorter than expected list of results even when there are more results available. When this happens, the `NextToken` response parameter contains a value to pass to the next call to the same API to request the next part of the list.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:ListSecrets

**Related operations**

*   To list the versions attached to a secret, use [ListSecretVersionIds](@ref).

# Arguments

## `MaxResults = ::Int`
(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, it defaults to a value that's specific to the operation. If additional items exist beyond the maximum you specify, the `NextToken` response element is present and has a value (isn't null). Include that value as the `NextToken` request parameter in the next call to the operation to get the next part of the results. Note that Secrets Manager might return fewer results than the maximum even when there are more results available. You should check `NextToken` after every operation to ensure that you receive all of the results.


## `NextToken = ::String`
(Optional) Use this parameter in a request if you receive a `NextToken` response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's `NextToken` response to indicate where the output should continue from.




# Returns

`ListSecretsResponse`

# Exceptions

`InvalidParameterException`, `InvalidNextTokenException` or `InternalServiceError`.

# Example: To list the secrets in your account

The following example shows how to list all of the secrets in your account.

Input:
```
[

]
```

Output:
```
Dict(
    "SecretList" => [
        Dict(
            "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
            "Description" => "My test database secret",
            "LastChangedDate" => 1.523477145729e9,
            "Name" => "MyTestDatabaseSecret",
            "SecretVersionsToStages" => Dict(
                "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE" => [
                    "AWSCURRENT"
                ]
            )
        ),
        Dict(
            "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret1-d4e5f6",
            "Description" => "Another secret created for a different database",
            "LastChangedDate" => 1.523482025685e9,
            "Name" => "MyTestDatabaseSecret1",
            "SecretVersionsToStages" => Dict(
                "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE" => [
                    "AWSCURRENT"
                ]
            )
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ListSecrets)
"""
@inline list_secrets(aws::AWSConfig=default_aws_config(); args...) = list_secrets(aws, args)

@inline list_secrets(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "ListSecrets", args)

@inline list_secrets(args) = list_secrets(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.put_resource_policy
    put_resource_policy([::AWSConfig], arguments::Dict)
    put_resource_policy([::AWSConfig]; SecretId=, ResourcePolicy=)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "PutResourcePolicy", arguments::Dict)
    secretsmanager([::AWSConfig], "PutResourcePolicy", SecretId=, ResourcePolicy=)

# PutResourcePolicy Operation

Attaches the contents of the specified resource-based permission policy to a secret. A resource-based policy is optional. Alternatively, you can use IAM identity-based policies that specify the secret's Amazon Resource Name (ARN) in the policy statement's `Resources` element. You can also use a combination of both identity-based and resource-based policies. The affected users and roles receive the permissions that are permitted by all of the relevant policies. For more information, see [Using Resource-Based Policies for AWS Secrets Manager](http://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). For the complete description of the AWS policy syntax and grammar, see [IAM JSON Policy Reference](http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html) in the *IAM User Guide*.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:PutResourcePolicy

**Related operations**

*   To retrieve the resource policy that's attached to a secret, use [GetResourcePolicy](@ref).

*   To delete the resource-based policy that's attached to a secret, use [DeleteResourcePolicy](@ref).

*   To list all of the currently available secrets, use [ListSecrets](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
Specifies the secret that you want to attach the resource-based policy to. You can specify either the ARN or the friendly name of the secret.


## `ResourcePolicy = ::String` -- *Required*
A JSON-formatted string that's constructed according to the grammar and syntax for an AWS resource-based policy. The policy in the string identifies who can access or manage this secret and its versions. For information on how to format a JSON parameter for the various command line tool environments, see [Using JSON for Parameters](http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json) in the *AWS CLI User Guide*.




# Returns

`PutResourcePolicyResponse`

# Exceptions

`MalformedPolicyDocumentException`, `ResourceNotFoundException`, `InvalidParameterException`, `InternalServiceError` or `InvalidRequestException`.

# Example: To add a resource-based policy to a secret

The following example shows how to add a resource-based policy to a secret.

Input:
```
[
    "ResourcePolicy" => "{
"Version":"2012-10-17",
"Statement":[{
"Effect":"Allow",
"Principal":{
"AWS":"arn:aws:iam::123456789012:root"
},
"Action":"secretsmanager:GetSecretValue",
"Resource":"*"
}]
}",
    "SecretId" => "MyTestDatabaseSecret"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/PutResourcePolicy)
"""
@inline put_resource_policy(aws::AWSConfig=default_aws_config(); args...) = put_resource_policy(aws, args)

@inline put_resource_policy(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "PutResourcePolicy", args)

@inline put_resource_policy(args) = put_resource_policy(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.put_secret_value
    put_secret_value([::AWSConfig], arguments::Dict)
    put_secret_value([::AWSConfig]; SecretId=, <keyword arguments>)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "PutSecretValue", arguments::Dict)
    secretsmanager([::AWSConfig], "PutSecretValue", SecretId=, <keyword arguments>)

# PutSecretValue Operation

Stores a new encrypted secret value in the specified secret. To do this, the operation creates a new version and attaches it to the secret. The version can contain a new `SecretString` value or a new `SecretBinary` value. You can also specify the staging labels that are initially attached to the new version.

**Note**
> The Secrets Manager console uses only the `SecretString` field. To add binary data to a secret with the `SecretBinary` field you must use the AWS CLI or one of the AWS SDKs.

*   If this operation creates the first version for the secret then Secrets Manager automatically attaches the staging label `AWSCURRENT` to the new version.

*   If another version of this secret already exists, then this operation does not automatically move any staging labels other than those that you explicitly specify in the `VersionStages` parameter.

*   If this operation moves the staging label `AWSCURRENT` from another version to this version (because you included it in the `StagingLabels` parameter) then Secrets Manager also automatically moves the staging label `AWSPREVIOUS` to the version that `AWSCURRENT` was removed from.

*   This operation is idempotent. If a version with a `SecretVersionId` with the same value as the `ClientRequestToken` parameter already exists and you specify the same secret data, the operation succeeds but does nothing. However, if the secret data is different, then the operation fails because you cannot modify an existing version; you can only create new ones.

**Note**
> *   If you call an operation that needs to encrypt or decrypt the `SecretString` or `SecretBinary` for a secret in the same account as the calling user and that secret doesn't specify a AWS KMS encryption key, Secrets Manager uses the account's default AWS managed customer master key (CMK) with the alias `aws/secretsmanager`. If this key doesn't already exist in your account then Secrets Manager creates it for you automatically. All users in the same AWS account automatically have access to use the default CMK. Note that if an Secrets Manager API call results in AWS having to create the account's AWS-managed CMK, it can result in a one-time significant delay in returning the result.

*   If the secret is in a different AWS account from the credentials calling an API that requires encryption or decryption of the secret value then you must create and use a custom AWS KMS CMK because you can't access the default CMK for the account using credentials from a different AWS account. Store the ARN of the CMK in the secret when you create the secret or when you update it by including it in the `KMSKeyId`. If you call an API that must encrypt or decrypt `SecretString` or `SecretBinary` using credentials from a different account then the AWS KMS key policy must grant cross-account access to that other account's user or role for both the kms:GenerateDataKey and kms:Decrypt operations.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:PutSecretValue

*   kms:GenerateDataKey - needed only if you use a customer-managed AWS KMS key to encrypt the secret. You do not need this permission to use the account's default AWS managed CMK for Secrets Manager.

**Related operations**

*   To retrieve the encrypted value you store in the version of a secret, use [GetSecretValue](@ref).

*   To create a secret, use [CreateSecret](@ref).

*   To get the details for a secret, use [DescribeSecret](@ref).

*   To list the versions attached to a secret, use [ListSecretVersionIds](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.


## `ClientRequestToken = ::String`
(Optional) Specifies a unique identifier for the new version of the secret.

**Note**
> If you use the AWS CLI or one of the AWS SDK to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that in the request. If you don't use the SDK and instead generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a `ClientRequestToken` yourself for new versions and include that value in the request.

This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during the Lambda rotation function's processing. We recommend that you generate a [UUID-type](https://wikipedia.org/wiki/Universally_unique_identifier) value to ensure uniqueness within the specified secret.

*   If the `ClientRequestToken` value isn't already associated with a version of the secret then a new version of the secret is created.

*   If a version with this value already exists and that version's `SecretString` or `SecretBinary` values are the same as those in the request then the request is ignored (the operation is idempotent).

*   If a version with this value already exists and that version's `SecretString` and `SecretBinary` values are different from those in the request then the request fails because you cannot modify an existing secret version. You can only create new versions to store new secret values.

This value becomes the `SecretVersionId` of the new version.


## `SecretBinary = blob`
(Optional) Specifies binary data that you want to encrypt and store in the new version of the secret. To use this parameter in the command-line tools, we recommend that you store your binary data in a file and then use the appropriate technique for your tool to pass the contents of the file as a parameter. Either `SecretBinary` or `SecretString` must have a value, but not both. They cannot both be empty.

This parameter is not accessible if the secret using the Secrets Manager console.


## `SecretString = ::String`
(Optional) Specifies text data that you want to encrypt and store in this new version of the secret. Either `SecretString` or `SecretBinary` must have a value, but not both. They cannot both be empty.

If you create this secret by using the Secrets Manager console then Secrets Manager puts the protected secret text in only the `SecretString` parameter. The Secrets Manager console stores the information as a JSON structure of key/value pairs that the default Lambda rotation function knows how to parse.

For storing multiple values, we recommend that you use a JSON text string argument and specify key/value pairs. For information on how to format a JSON parameter for the various command line tool environments, see [Using JSON for Parameters](http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json) in the *AWS CLI User Guide*.

For example:

`[{"username":"bob"},{"password":"abc123xyz456"}]`

If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text.


## `VersionStages = [::String, ...]`
(Optional) Specifies a list of staging labels that are attached to this version of the secret. These staging labels are used to track the versions through the rotation process by the Lambda rotation function.

A staging label must be unique to a single version of the secret. If you specify a staging label that's already associated with a different version of the same secret then that staging label is automatically removed from the other version and attached to this version.

If you do not specify a value for `VersionStages` then Secrets Manager automatically moves the staging label `AWSCURRENT` to this new version.




# Returns

`PutSecretValueResponse`

# Exceptions

`InvalidParameterException`, `InvalidRequestException`, `LimitExceededException`, `EncryptionFailure`, `ResourceExistsException`, `ResourceNotFoundException` or `InternalServiceError`.

# Example: To store a secret value in a new version of a secret

The following example shows how to create a new version of the secret. Alternatively, you can use the update-secret command.

Input:
```
[
    "ClientRequestToken" => "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE",
    "SecretId" => "MyTestDatabaseSecret",
    "SecretString" => "{"username":"david","password":"BnQw!XDWgaEeT9XGTT29"}"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret",
    "VersionId" => "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE",
    "VersionStages" => [
        "AWSCURRENT"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/PutSecretValue)
"""
@inline put_secret_value(aws::AWSConfig=default_aws_config(); args...) = put_secret_value(aws, args)

@inline put_secret_value(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "PutSecretValue", args)

@inline put_secret_value(args) = put_secret_value(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.restore_secret
    restore_secret([::AWSConfig], arguments::Dict)
    restore_secret([::AWSConfig]; SecretId=)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "RestoreSecret", arguments::Dict)
    secretsmanager([::AWSConfig], "RestoreSecret", SecretId=)

# RestoreSecret Operation

Cancels the scheduled deletion of a secret by removing the `DeletedDate` time stamp. This makes the secret accessible to query once again.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:RestoreSecret

**Related operations**

*   To delete a secret, use [DeleteSecret](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
Specifies the secret that you want to restore from a previously scheduled deletion. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.




# Returns

`RestoreSecretResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `InvalidRequestException` or `InternalServiceError`.

# Example: To restore a previously deleted secret

The following example shows how to restore a secret that you previously scheduled for deletion.

Input:
```
[
    "SecretId" => "MyTestDatabaseSecret"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RestoreSecret)
"""
@inline restore_secret(aws::AWSConfig=default_aws_config(); args...) = restore_secret(aws, args)

@inline restore_secret(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "RestoreSecret", args)

@inline restore_secret(args) = restore_secret(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.rotate_secret
    rotate_secret([::AWSConfig], arguments::Dict)
    rotate_secret([::AWSConfig]; SecretId=, <keyword arguments>)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "RotateSecret", arguments::Dict)
    secretsmanager([::AWSConfig], "RotateSecret", SecretId=, <keyword arguments>)

# RotateSecret Operation

Configures and starts the asynchronous process of rotating this secret. If you include the configuration parameters, the operation sets those values for the secret and then immediately starts a rotation. If you do not include the configuration parameters, the operation starts a rotation with the values already stored in the secret. After the rotation completes, the protected service and its clients all use the new version of the secret.

This required configuration information includes the ARN of an AWS Lambda function and the time between scheduled rotations. The Lambda rotation function creates a new version of the secret and creates or updates the credentials on the protected service to match. After testing the new credentials, the function marks the new secret with the staging label `AWSCURRENT` so that your clients all immediately begin to use the new version. For more information about rotating secrets and how to configure a Lambda function to rotate the secrets for your protected service, see [Rotating Secrets in AWS Secrets Manager](http://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html) in the *AWS Secrets Manager User Guide*.

The rotation function must end with the versions of the secret in one of two states:

*   The `AWSPENDING` and `AWSCURRENT` staging labels are attached to the same version of the secret, or

*   The `AWSPENDING` staging label is not attached to any version of the secret.

If instead the `AWSPENDING` staging label is present but is not attached to the same version as `AWSCURRENT` then any later invocation of `RotateSecret` assumes that a previous rotation request is still in progress and returns an error.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:RotateSecret

*   lambda:InvokeFunction (on the function specified in the secret's metadata)

**Related operations**

*   To list the secrets in your account, use [ListSecrets](@ref).

*   To get the details for a version of a secret, use [DescribeSecret](@ref).

*   To create a new version of a secret, use [CreateSecret](@ref).

*   To attach staging labels to or remove staging labels from a version of a secret, use [UpdateSecretVersionStage](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
Specifies the secret that you want to rotate. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.


## `ClientRequestToken = ::String`
(Optional) Specifies a unique identifier for the new version of the secret that helps ensure idempotency.

If you use the AWS CLI or one of the AWS SDK to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that in the request for this parameter. If you don't use the SDK and instead generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a `ClientRequestToken` yourself for new versions and include that value in the request.

You only need to specify your own value if you are implementing your own retry logic and want to ensure that a given secret is not created twice. We recommend that you generate a [UUID-type](https://wikipedia.org/wiki/Universally_unique_identifier) value to ensure uniqueness within the specified secret.

Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during the function's processing.

*   If the `ClientRequestToken` value isn't already associated with a version of the secret then a new version of the secret is created.

*   If a version with this value already exists and that version's `SecretString` and `SecretBinary` values are the same as the request, then the request is ignored (the operation is idempotent).

*   If a version with this value already exists and that version's `SecretString` and `SecretBinary` values are different from the request then an error occurs because you cannot modify an existing secret value.

This value becomes the `SecretVersionId` of the new version.


## `RotationLambdaARN = ::String`
(Optional) Specifies the ARN of the Lambda function that can rotate the secret.


## `RotationRules = ["AutomaticallyAfterDays" =>  ::Int]`
A structure that defines the rotation configuration for this secret.




# Returns

`RotateSecretResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `InternalServiceError` or `InvalidRequestException`.

# Example: To configure rotation for a secret

The following example configures rotation for a secret by providing the ARN of a Lambda rotation function (which must already exist) and the number of days between rotation. The first rotation happens immediately upon completion of this command. The rotation function runs asynchronously in the background.

Input:
```
[
    "RotationLambdaARN" => "arn:aws:lambda:us-west-2:123456789012:function:MyTestDatabaseRotationLambda",
    "RotationRules" => [
        "AutomaticallyAfterDays" => 30
    ],
    "SecretId" => "MyTestDatabaseSecret"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret",
    "VersionId" => "EXAMPLE2-90ab-cdef-fedc-ba987SECRET2"
)
```

# Example: To request an immediate rotation for a secret

The following example requests an immediate invocation of the secret's Lambda rotation function. It assumes that the specified secret already has rotation configured. The rotation function runs asynchronously in the background.

Input:
```
[
    "SecretId" => "MyTestDatabaseSecret"
]
```

Output:
```
Dict(
    "SecretARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "SecretName" => "MyTestDatabaseSecret",
    "SecretVersionId" => "EXAMPLE2-90ab-cdef-fedc-ba987SECRET2"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RotateSecret)
"""
@inline rotate_secret(aws::AWSConfig=default_aws_config(); args...) = rotate_secret(aws, args)

@inline rotate_secret(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "RotateSecret", args)

@inline rotate_secret(args) = rotate_secret(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; SecretId=, Tags=)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "TagResource", arguments::Dict)
    secretsmanager([::AWSConfig], "TagResource", SecretId=, Tags=)

# TagResource Operation

Attaches one or more tags, each consisting of a key name and a value, to the specified secret. Tags are part of the secret's overall metadata, and are not associated with any specific version of the secret. This operation only appends tags to the existing list of tags. To remove tags, you must use [UntagResource](@ref).

The following basic restrictions apply to tags:

*   Maximum number of tags per secret—50

*   Maximum key length—127 Unicode characters in UTF-8

*   Maximum value length—255 Unicode characters in UTF-8

*   Tag keys and values are case sensitive.

*   Do not use the `aws:` prefix in your tag names or values because it is reserved for AWS use. You can't edit or delete tag names or values with this prefix. Tags with this prefix do not count against your tags per secret limit.

*   If your tagging schema will be used across multiple services and resources, remember that other services might have restrictions on allowed characters. Generally allowed characters are: letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - = . _ : / @.

**Important**
> If you use tags as part of your security strategy, then adding or removing a tag can change permissions. If successfully completing this operation would result in you losing your permissions for this secret, then the operation is blocked and returns an Access Denied error.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:TagResource

**Related operations**

*   To remove one or more tags from the collection attached to a secret, use [UntagResource](@ref).

*   To view the list of tags attached to a secret, use [DescribeSecret](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
The identifier for the secret that you want to attach tags to. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.


## `Tags = [[ ... ], ...]` -- *Required*
The tags to attach to the secret. Each element in the list consists of a `Key` and a `Value`.

This parameter to the API requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see [Using JSON for Parameters](http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json) in the *AWS CLI User Guide*. For the AWS CLI, you can also use the syntax: `--Tags Key="Key1",Value="Value1",Key="Key2",Value="Value2"[,…]`
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `InvalidParameterException` or `InternalServiceError`.

# Example: To add tags to a secret

The following example shows how to attach two tags each with a Key and Value to a secret. There is no output from this API. To see the result, use the DescribeSecret operation.

Input:
```
[
    "SecretId" => "MyExampleSecret",
    "Tags" => [
        [
            "Key" => "FirstTag",
            "Value" => "SomeValue"
        ],
        [
            "Key" => "SecondTag",
            "Value" => "AnotherValue"
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "TagResource", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; SecretId=, TagKeys=)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "UntagResource", arguments::Dict)
    secretsmanager([::AWSConfig], "UntagResource", SecretId=, TagKeys=)

# UntagResource Operation

Removes one or more tags from the specified secret.

This operation is idempotent. If a requested tag is not attached to the secret, no error is returned and the secret metadata is unchanged.

**Important**
> If you use tags as part of your security strategy, then removing a tag can change permissions. If successfully completing this operation would result in you losing your permissions for this secret, then the operation is blocked and returns an Access Denied error.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:UntagResource

**Related operations**

*   To add one or more tags to the collection attached to a secret, use [TagResource](@ref).

*   To view the list of tags attached to a secret, use [DescribeSecret](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
The identifier for the secret that you want to remove tags from. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.


## `TagKeys = [::String, ...]` -- *Required*
A list of tag key names to remove from the secret. You don't specify the value. Both the key and its associated value are removed.

This parameter to the API requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see [Using JSON for Parameters](http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json) in the *AWS CLI User Guide*.




# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `InvalidParameterException` or `InternalServiceError`.

# Example: To remove tags from a secret

The following example shows how to remove two tags from a secret's metadata. For each, both the tag and the associated value are removed. There is no output from this API. To see the result, use the DescribeSecret operation.

Input:
```
[
    "SecretId" => "MyTestDatabaseSecret",
    "TagKeys" => [
        "FirstTag",
        "SecondTag"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "UntagResource", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.update_secret
    update_secret([::AWSConfig], arguments::Dict)
    update_secret([::AWSConfig]; SecretId=, <keyword arguments>)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "UpdateSecret", arguments::Dict)
    secretsmanager([::AWSConfig], "UpdateSecret", SecretId=, <keyword arguments>)

# UpdateSecret Operation

Modifies many of the details of a secret. If you include a `ClientRequestToken` and either `SecretString` or `SecretBinary` then it also creates a new version attached to the secret.

To modify the rotation configuration of a secret, use [RotateSecret](@ref) instead.

**Note**
> The Secrets Manager console uses only the `SecretString` parameter and therefore limits you to encrypting and storing only a text string. To encrypt and store binary data as part of the version of a secret, you must use either the AWS CLI or one of the AWS SDKs.

*   If a version with a `SecretVersionId` with the same value as the `ClientRequestToken` parameter already exists, the operation generates an error. You cannot modify an existing version, you can only create new ones.

*   If you include `SecretString` or `SecretBinary` to create a new secret version, Secrets Manager automatically attaches the staging label `AWSCURRENT` to the new version.

**Note**
> *   If you call an operation that needs to encrypt or decrypt the `SecretString` or `SecretBinary` for a secret in the same account as the calling user and that secret doesn't specify a AWS KMS encryption key, Secrets Manager uses the account's default AWS managed customer master key (CMK) with the alias `aws/secretsmanager`. If this key doesn't already exist in your account then Secrets Manager creates it for you automatically. All users in the same AWS account automatically have access to use the default CMK. Note that if an Secrets Manager API call results in AWS having to create the account's AWS-managed CMK, it can result in a one-time significant delay in returning the result.

*   If the secret is in a different AWS account from the credentials calling an API that requires encryption or decryption of the secret value then you must create and use a custom AWS KMS CMK because you can't access the default CMK for the account using credentials from a different AWS account. Store the ARN of the CMK in the secret when you create the secret or when you update it by including it in the `KMSKeyId`. If you call an API that must encrypt or decrypt `SecretString` or `SecretBinary` using credentials from a different account then the AWS KMS key policy must grant cross-account access to that other account's user or role for both the kms:GenerateDataKey and kms:Decrypt operations.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:UpdateSecret

*   kms:GenerateDataKey - needed only if you use a custom AWS KMS key to encrypt the secret. You do not need this permission to use the account's AWS managed CMK for Secrets Manager.

*   kms:Decrypt - needed only if you use a custom AWS KMS key to encrypt the secret. You do not need this permission to use the account's AWS managed CMK for Secrets Manager.

**Related operations**

*   To create a new secret, use [CreateSecret](@ref).

*   To add only a new version to an existing secret, use [PutSecretValue](@ref).

*   To get the details for a secret, use [DescribeSecret](@ref).

*   To list the versions contained in a secret, use [ListSecretVersionIds](@ref).

# Arguments

## `SecretId = ::String` -- *Required*
Specifies the secret that you want to update or to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.


## `ClientRequestToken = ::String`
(Optional) If you want to add a new version to the secret, this parameter specifies a unique identifier for the new version that helps ensure idempotency.

If you use the AWS CLI or one of the AWS SDK to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that in the request. If you don't use the SDK and instead generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a `ClientRequestToken` yourself for new versions and include that value in the request.

You typically only need to interact with this value if you implement your own retry logic and want to ensure that a given secret is not created twice. We recommend that you generate a [UUID-type](https://wikipedia.org/wiki/Universally_unique_identifier) value to ensure uniqueness within the specified secret.

Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during the Lambda rotation function's processing.

*   If the `ClientRequestToken` value isn't already associated with a version of the secret then a new version of the secret is created.

*   If a version with this value already exists and that version's `SecretString` and `SecretBinary` values are the same as those in the request then the request is ignored (the operation is idempotent).

*   If a version with this value already exists and that version's `SecretString` and `SecretBinary` values are different from the request then an error occurs because you cannot modify an existing secret value.

This value becomes the `SecretVersionId` of the new version.


## `Description = ::String`
(Optional) Specifies a user-provided description of the secret.


## `KmsKeyId = ::String`
(Optional) Specifies the ARN or alias of the AWS KMS customer master key (CMK) to be used to encrypt the protected text in the versions of this secret.

If you don't specify this value, then Secrets Manager defaults to using the default CMK in the account (the one named `aws/secretsmanager`). If a AWS KMS CMK with that name doesn't exist, then Secrets Manager creates it for you automatically the first time it needs to encrypt a version's `Plaintext` or `PlaintextString` fields.

**Important**
> You can only use the account's default CMK to encrypt and decrypt if you call this operation using credentials from the same account that owns the secret. If the secret is in a different account, then you must create a custom CMK and provide the ARN in this field.


## `SecretBinary = blob`
(Optional) Specifies binary data that you want to encrypt and store in the new version of the secret. To use this parameter in the command-line tools, we recommend that you store your binary data in a file and then use the appropriate technique for your tool to pass the contents of the file as a parameter. Either `SecretBinary` or `SecretString` must have a value, but not both. They cannot both be empty.

This parameter is not accessible using the Secrets Manager console.


## `SecretString = ::String`
(Optional) Specifies text data that you want to encrypt and store in this new version of the secret. Either `SecretBinary` or `SecretString` must have a value, but not both. They cannot both be empty.

If you create this secret by using the Secrets Manager console then Secrets Manager puts the protected secret text in only the `SecretString` parameter. The Secrets Manager console stores the information as a JSON structure of key/value pairs that the default Lambda rotation function knows how to parse.

For storing multiple values, we recommend that you use a JSON text string argument and specify key/value pairs. For information on how to format a JSON parameter for the various command line tool environments, see [Using JSON for Parameters](http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json) in the *AWS CLI User Guide*. For example:

`[{"username":"bob"},{"password":"abc123xyz456"}]`

If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text.




# Returns

`UpdateSecretResponse`

# Exceptions

`InvalidParameterException`, `InvalidRequestException`, `LimitExceededException`, `EncryptionFailure`, `ResourceExistsException`, `ResourceNotFoundException`, `MalformedPolicyDocumentException`, `InternalServiceError` or `PreconditionNotMetException`.

# Example: To update the description of a secret

The following example shows how to modify the description of a secret.

Input:
```
[
    "ClientRequestToken" => "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE",
    "Description" => "This is a new description for the secret.",
    "SecretId" => "MyTestDatabaseSecret"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret"
)
```

# Example: To update the KMS key associated with a secret

This example shows how to update the KMS customer managed key (CMK) used to encrypt the secret value. The KMS CMK must be in the same region as the secret.

Input:
```
[
    "KmsKeyId" => "arn:aws:kms:us-west-2:123456789012:key/EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE",
    "SecretId" => "MyTestDatabaseSecret"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret"
)
```

# Example: To create a new version of the encrypted secret value

The following example shows how to create a new version of the secret by updating the SecretString field. Alternatively, you can use the put-secret-value operation.

Input:
```
[
    "SecretId" => "MyTestDatabaseSecret",
    "SecretString" => "{JSON STRING WITH CREDENTIALS}"
]
```

Output:
```
Dict(
    "ARN" => "aws:arn:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret",
    "VersionId" => "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UpdateSecret)
"""
@inline update_secret(aws::AWSConfig=default_aws_config(); args...) = update_secret(aws, args)

@inline update_secret(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "UpdateSecret", args)

@inline update_secret(args) = update_secret(default_aws_config(), args)


"""
    using AWSSDK.SecretsManager.update_secret_version_stage
    update_secret_version_stage([::AWSConfig], arguments::Dict)
    update_secret_version_stage([::AWSConfig]; SecretId=, VersionStage=, <keyword arguments>)

    using AWSCore.Services.secretsmanager
    secretsmanager([::AWSConfig], "UpdateSecretVersionStage", arguments::Dict)
    secretsmanager([::AWSConfig], "UpdateSecretVersionStage", SecretId=, VersionStage=, <keyword arguments>)

# UpdateSecretVersionStage Operation

Modifies the staging labels attached to a version of a secret. Staging labels are used to track a version as it progresses through the secret rotation process. You can attach a staging label to only one version of a secret at a time. If a staging label to be added is already attached to another version, then it is moved--removed from the other version first and then attached to this one. For more information about staging labels, see [Staging Labels](http://docs.aws.amazon.com/secretsmanager/latest/userguide/terms-concepts.html#term_staging-label) in the *AWS Secrets Manager User Guide*.

The staging labels that you specify in the `VersionStage` parameter are added to the existing list of staging labels--they don't replace it.

You can move the `AWSCURRENT` staging label to this version by including it in this call.

**Note**
> Whenever you move `AWSCURRENT`, Secrets Manager automatically moves the label `AWSPREVIOUS` to the version that `AWSCURRENT` was removed from.

If this action results in the last label being removed from a version, then the version is considered to be 'deprecated' and can be deleted by Secrets Manager.

**Minimum permissions**

To run this command, you must have the following permissions:

*   secretsmanager:UpdateSecretVersionStage

**Related operations**

*   To get the list of staging labels that are currently associated with a version of a secret, use `[DescribeSecret](@ref)` and examine the `SecretVersionsToStages` response value.

# Arguments

## `SecretId = ::String` -- *Required*
Specifies the secret with the version whose list of staging labels you want to modify. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.


## `VersionStage = ::String` -- *Required*
The list of staging labels to add to this version.


## `RemoveFromVersionId = ::String`
(Optional) Specifies the secret version ID of the version that the staging labels are to be removed from.

If you want to move a label to a new version, you do not have to explicitly remove it with this parameter. Adding a label using the `MoveToVersionId` parameter automatically removes it from the old version. However, if you do include both the "MoveTo" and "RemoveFrom" parameters, then the move is successful only if the staging labels are actually present on the "RemoveFrom" version. If a staging label was on a different version than "RemoveFrom", then the request fails.


## `MoveToVersionId = ::String`
(Optional) The secret version ID that you want to add the staging labels to.

If any of the staging labels are already attached to a different version of the secret, then they are removed from that version before adding them to this version.




# Returns

`UpdateSecretVersionStageResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidParameterException`, `InvalidRequestException`, `LimitExceededException` or `InternalServiceError`.

# Example: To add a staging label attached to a version of a secret

The following example shows you how to add a staging label to a version of a secret. You can review the results by running the operation ListSecretVersionIds and viewing the VersionStages response field for the affected version.

Input:
```
[
    "MoveToVersionId" => "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1",
    "SecretId" => "MyTestDatabaseSecret",
    "VersionStage" => "STAGINGLABEL1"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret"
)
```

# Example: To delete a staging label attached to a version of a secret

The following example shows you how to delete a staging label that is attached to a version of a secret. You can review the results by running the operation ListSecretVersionIds and viewing the VersionStages response field for the affected version.

Input:
```
[
    "RemoveFromVersionId" => "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1",
    "SecretId" => "MyTestDatabaseSecret",
    "VersionStage" => "STAGINGLABEL1"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret"
)
```

# Example: To move a staging label from one version of a secret to another

The following example shows you how to move a staging label that is attached to one version of a secret to a different version. You can review the results by running the operation ListSecretVersionIds and viewing the VersionStages response field for the affected version.

Input:
```
[
    "MoveToVersionId" => "EXAMPLE2-90ab-cdef-fedc-ba987SECRET2",
    "RemoveFromVersionId" => "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1",
    "SecretId" => "MyTestDatabaseSecret",
    "VersionStage" => "AWSCURRENT"
]
```

Output:
```
Dict(
    "ARN" => "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    "Name" => "MyTestDatabaseSecret"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UpdateSecretVersionStage)
"""
@inline update_secret_version_stage(aws::AWSConfig=default_aws_config(); args...) = update_secret_version_stage(aws, args)

@inline update_secret_version_stage(aws::AWSConfig, args) = AWSCore.Services.secretsmanager(aws, "UpdateSecretVersionStage", args)

@inline update_secret_version_stage(args) = update_secret_version_stage(default_aws_config(), args)




end # module SecretsManager


#==============================================================================#
# End of file
#==============================================================================#
