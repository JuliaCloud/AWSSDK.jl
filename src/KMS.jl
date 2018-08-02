#==============================================================================#
# KMS.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/kms-2014-11-01.normal.json
#==============================================================================#

__precompile__()

module KMS

using AWSCore


"""
    using AWSSDK.KMS.cancel_key_deletion
    cancel_key_deletion([::AWSConfig], arguments::Dict)
    cancel_key_deletion([::AWSConfig]; KeyId=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "CancelKeyDeletion", arguments::Dict)
    kms([::AWSConfig], "CancelKeyDeletion", KeyId=)

# CancelKeyDeletion Operation

Cancels the deletion of a customer master key (CMK). When this operation is successful, the CMK is set to the `Disabled` state. To enable a CMK, use [EnableKey](@ref). You cannot perform this operation on a CMK in a different AWS account.

For more information about scheduling and canceling deletion of a CMK, see [Deleting Customer Master Keys](http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html) in the *AWS Key Management Service Developer Guide*.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
The unique identifier for the customer master key (CMK) for which to cancel deletion.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).




# Returns

`CancelKeyDeletionResponse`

# Exceptions

`NotFoundException`, `InvalidArnException`, `DependencyTimeoutException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To cancel deletion of a customer master key (CMK)

The following example cancels deletion of the specified CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

Output:
```
Dict(
    "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CancelKeyDeletion)
"""
@inline cancel_key_deletion(aws::AWSConfig=default_aws_config(); args...) = cancel_key_deletion(aws, args)

@inline cancel_key_deletion(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "CancelKeyDeletion", args)

@inline cancel_key_deletion(args) = cancel_key_deletion(default_aws_config(), args)


"""
    using AWSSDK.KMS.create_alias
    create_alias([::AWSConfig], arguments::Dict)
    create_alias([::AWSConfig]; AliasName=, TargetKeyId=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "CreateAlias", arguments::Dict)
    kms([::AWSConfig], "CreateAlias", AliasName=, TargetKeyId=)

# CreateAlias Operation

Creates a display name for a customer-managed customer master key (CMK). You can use an alias to identify a CMK in selected operations, such as [Encrypt](@ref) and [GenerateDataKey](@ref).

Each CMK can have multiple aliases, but each alias points to only one CMK. The alias name must be unique in the AWS account and region. To simplify code that runs in multiple regions, use the same alias name, but point it to a different CMK in each region.

Because an alias is not a property of a CMK, you can delete and change the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the [DescribeKey](@ref) operation. To get the aliases of all CMKs, use the [ListAliases](@ref) operation.

The alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). Alias names cannot begin with **aws/**. That alias name prefix is reserved for AWS managed CMKs.

The alias and the CMK it is mapped to must be in the same AWS account and the same region. You cannot perform this operation on an alias in a different AWS account.

To map an existing alias to a different CMK, call [UpdateAlias](@ref).

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `AliasName = ::String` -- *Required*
Specifies the alias name. This value must begin with `alias/` followed by the alias name, such as `alias/ExampleAlias`. The alias name cannot begin with `aws/`. The `alias/aws/` prefix is reserved for AWS managed CMKs.


## `TargetKeyId = ::String` -- *Required*
Identifies the CMK for which you are creating the alias. This value cannot be an alias.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).




# Exceptions

`DependencyTimeoutException`, `AlreadyExistsException`, `NotFoundException`, `InvalidAliasNameException`, `KMSInternalException`, `LimitExceededException` or `KMSInvalidStateException`.

# Example: To create an alias

The following example creates an alias for the specified customer master key (CMK).

Input:
```
[
    "AliasName" => "alias/ExampleAlias",
    "TargetKeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateAlias)
"""
@inline create_alias(aws::AWSConfig=default_aws_config(); args...) = create_alias(aws, args)

@inline create_alias(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "CreateAlias", args)

@inline create_alias(args) = create_alias(default_aws_config(), args)


"""
    using AWSSDK.KMS.create_grant
    create_grant([::AWSConfig], arguments::Dict)
    create_grant([::AWSConfig]; KeyId=, GranteePrincipal=, Operations=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "CreateGrant", arguments::Dict)
    kms([::AWSConfig], "CreateGrant", KeyId=, GranteePrincipal=, Operations=, <keyword arguments>)

# CreateGrant Operation

Adds a grant to a customer master key (CMK). The grant specifies who can use the CMK and under what conditions. When setting permissions, grants are an alternative to key policies.

To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the `KeyId` parameter. For more information about grants, see [Grants](http://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in the *AWS Key Management Service Developer Guide*.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
The unique identifier for the customer master key (CMK) that the grant applies to.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).


## `GranteePrincipal = ::String` -- *Required*
The principal that is given permission to perform the operations that the grant permits.

To specify the principal, use the [Amazon Resource Name (ARN)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, IAM roles, federated users, and assumed role users. For examples of the ARN syntax to use for specifying a principal, see [AWS Identity and Access Management (IAM)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam) in the Example ARNs section of the *AWS General Reference*.


## `RetiringPrincipal = ::String`
The principal that is given permission to retire the grant by using [RetireGrant](@ref) operation.

To specify the principal, use the [Amazon Resource Name (ARN)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and assumed role users. For examples of the ARN syntax to use for specifying a principal, see [AWS Identity and Access Management (IAM)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam) in the Example ARNs section of the *AWS General Reference*.


## `Operations = ["Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "CreateGrant", "RetireGrant" or "DescribeKey", ...]` -- *Required*
A list of operations that the grant permits.


## `Constraints = [ ... ]`
A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see [Encryption Context](http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html) in the *AWS Key Management Service Developer Guide*.
```
 Constraints = [
        "EncryptionContextSubset" =>  ::Dict{String,String},
        "EncryptionContextEquals" =>  ::Dict{String,String}
    ]
```

## `GrantTokens = [::String, ...]`
A list of grant tokens.

For more information, see [Grant Tokens](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token) in the *AWS Key Management Service Developer Guide*.


## `Name = ::String`
A friendly name for identifying the grant. Use this value to prevent the unintended creation of duplicate grants when retrying this request.

When this value is absent, all `CreateGrant` requests result in a new grant with a unique `GrantId` even if all the supplied parameters are identical. This can result in unintended duplicates when you retry the `CreateGrant` request.

When this value is present, you can retry a `CreateGrant` request with identical parameters; if the grant already exists, the original `GrantId` is returned without creating a new grant. Note that the returned grant token is unique with every `CreateGrant` request, even when a duplicate `GrantId` is returned. All grant tokens obtained in this way can be used interchangeably.




# Returns

`CreateGrantResponse`

# Exceptions

`NotFoundException`, `DisabledException`, `DependencyTimeoutException`, `InvalidArnException`, `KMSInternalException`, `InvalidGrantTokenException`, `LimitExceededException` or `KMSInvalidStateException`.

# Example: To create a grant

The following example creates a grant that allows the specified IAM role to encrypt data with the specified customer master key (CMK).

Input:
```
[
    "GranteePrincipal" => "arn:aws:iam::111122223333:role/ExampleRole",
    "KeyId" => "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    "Operations" => [
        "Encrypt",
        "Decrypt"
    ]
]
```

Output:
```
Dict(
    "GrantId" => "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60",
    "GrantToken" => "AQpAM2RhZTk1MGMyNTk2ZmZmMzEyYWVhOWViN2I1MWM4Mzc0MWFiYjc0ZDE1ODkyNGFlNTIzODZhMzgyZjBlNGY3NiKIAgEBAgB4Pa6VDCWW__MSrqnre1HIN0Grt00ViSSuUjhqOC8OT3YAAADfMIHcBgkqhkiG9w0BBwaggc4wgcsCAQAwgcUGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMmqLyBTAegIn9XlK5AgEQgIGXZQjkBcl1dykDdqZBUQ6L1OfUivQy7JVYO2-ZJP7m6f1g8GzV47HX5phdtONAP7K_HQIflcgpkoCqd_fUnE114mSmiagWkbQ5sqAVV3ov-VeqgrvMe5ZFEWLMSluvBAqdjHEdMIkHMlhlj4ENZbzBfo9Wxk8b8SnwP4kc4gGivedzFXo-dwN8fxjjq_ZZ9JFOj2ijIbj5FyogDCN0drOfi8RORSEuCEmPvjFRMFAwcmwFkN2NPp89amA"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateGrant)
"""
@inline create_grant(aws::AWSConfig=default_aws_config(); args...) = create_grant(aws, args)

@inline create_grant(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "CreateGrant", args)

@inline create_grant(args) = create_grant(default_aws_config(), args)


"""
    using AWSSDK.KMS.create_key
    create_key([::AWSConfig], arguments::Dict)
    create_key([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "CreateKey", arguments::Dict)
    kms([::AWSConfig], "CreateKey", <keyword arguments>)

# CreateKey Operation

Creates a customer master key (CMK) in the caller's AWS account.

You can use a CMK to encrypt small amounts of data (4 KiB or less) directly. But CMKs are more commonly used to encrypt data encryption keys (DEKs), which are used to encrypt raw data. For more information about DEKs and the difference between CMKs and DEKs, see the following:

*   The [GenerateDataKey](@ref) operation

*   [AWS Key Management Service Concepts](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html) in the *AWS Key Management Service Developer Guide*

You cannot use this operation to create a CMK in a different AWS account.

# Arguments

## `Policy = ::String`
The key policy to attach to the CMK.

If you provide a key policy, it must meet the following criteria:

*   If you don't set `BypassPolicyLockoutSafetyCheck` to true, the key policy must allow the principal that is making the `CreateKey` request to make a subsequent [PutKeyPolicy](@ref) request on the CMK. This reduces the risk that the CMK becomes unmanageable. For more information, refer to the scenario in the [Default Key Policy](http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section of the *AWS Key Management Service Developer Guide*.

*   Each statement in the key policy must contain one or more principals. The principals in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal (for example, an IAM user or role), you might need to enforce a delay before including the new principal in a key policy. The reason for this is that the new principal might not be immediately visible to AWS KMS. For more information, see [Changes that I make are not always immediately visible](http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency) in the *AWS Identity and Access Management User Guide*.

If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK. For more information, see [Default Key Policy](http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) in the *AWS Key Management Service Developer Guide*.

The key policy size limit is 32 kilobytes (32768 bytes).


## `Description = ::String`
A description of the CMK.

Use a description that helps you decide whether the CMK is appropriate for a task.


## `KeyUsage = "ENCRYPT_DECRYPT"`
The intended use of the CMK.

You can use CMKs only for symmetric encryption and decryption.


## `Origin = "AWS_KMS" or "EXTERNAL"`
The source of the CMK's key material.

The default is `AWS_KMS`, which means AWS KMS creates the key material. When this parameter is set to `EXTERNAL`, the request creates a CMK without key material so that you can import key material from your existing key management infrastructure. For more information about importing key material into AWS KMS, see [Importing Key Material](http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html) in the *AWS Key Management Service Developer Guide*.

The CMK's `Origin` is immutable and is set when the CMK is created.


## `BypassPolicyLockoutSafetyCheck = ::Bool`
A flag to indicate whether to bypass the key policy lockout safety check.

**Important**
> Setting this value to true increases the risk that the CMK becomes unmanageable. Do not set this value to true indiscriminately.

For more information, refer to the scenario in the [Default Key Policy](http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the *AWS Key Management Service Developer Guide*.

Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent [PutKeyPolicy](@ref) request on the CMK.

The default value is false.


## `Tags = [[ ... ], ...]`
One or more tags. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.

Use this parameter to tag the CMK when it is created. Alternately, you can omit this parameter and instead tag the CMK after it is created using [TagResource](@ref).
```
 Tags = [[
        "TagKey" => <required> ::String,
        "TagValue" => <required> ::String
    ], ...]
```



# Returns

`CreateKeyResponse`

# Exceptions

`MalformedPolicyDocumentException`, `DependencyTimeoutException`, `InvalidArnException`, `UnsupportedOperationException`, `KMSInternalException`, `LimitExceededException` or `TagException`.

# Example: To create a customer master key (CMK)

The following example creates a CMK.

Input:
```
[
    "Tags" => [
        [
            "TagKey" => "CreatedBy",
            "TagValue" => "ExampleUser"
        ]
    ]
]
```

Output:
```
Dict(
    "KeyMetadata" => Dict(
        "AWSAccountId" => "111122223333",
        "Arn" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
        "CreationDate" => "2017-07-05T14:04:55-07:00",
        "Description" => "",
        "Enabled" => true,
        "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab",
        "KeyManager" => "CUSTOMER",
        "KeyState" => "Enabled",
        "KeyUsage" => "ENCRYPT_DECRYPT",
        "Origin" => "AWS_KMS"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/CreateKey)
"""
@inline create_key(aws::AWSConfig=default_aws_config(); args...) = create_key(aws, args)

@inline create_key(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "CreateKey", args)

@inline create_key(args) = create_key(default_aws_config(), args)


"""
    using AWSSDK.KMS.decrypt
    decrypt([::AWSConfig], arguments::Dict)
    decrypt([::AWSConfig]; CiphertextBlob=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "Decrypt", arguments::Dict)
    kms([::AWSConfig], "Decrypt", CiphertextBlob=, <keyword arguments>)

# Decrypt Operation

Decrypts ciphertext. Ciphertext is plaintext that has been previously encrypted by using any of the following operations:

*   [GenerateDataKey](@ref)

*   [GenerateDataKeyWithoutPlaintext](@ref)

*   [Encrypt](@ref)

Whenever possible, use key policies to give users permission to call the Decrypt operation on the CMK, instead of IAM policies. Otherwise, you might create an IAM user policy that gives the user Decrypt permission on all CMKs. This user could decrypt ciphertext that was encrypted by CMKs in other accounts if the key policy for the cross-account CMK permits it. If you must use an IAM policy for `Decrypt` permissions, limit the user to particular CMKs or particular trusted accounts.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `CiphertextBlob = blob` -- *Required*
Ciphertext to be decrypted. The blob includes metadata.


## `EncryptionContext = ::Dict{String,String}`
The encryption context. If this was specified in the [Encrypt](@ref) function, it must be specified here or the decryption operation will fail. For more information, see [Encryption Context](http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html).


## `GrantTokens = [::String, ...]`
A list of grant tokens.

For more information, see [Grant Tokens](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token) in the *AWS Key Management Service Developer Guide*.




# Returns

`DecryptResponse`

# Exceptions

`NotFoundException`, `DisabledException`, `InvalidCiphertextException`, `KeyUnavailableException`, `DependencyTimeoutException`, `InvalidGrantTokenException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To decrypt data

The following example decrypts data that was encrypted with a customer master key (CMK) in AWS KMS.

Input:
```
[
    "CiphertextBlob" => "<binary data>"
]
```

Output:
```
Dict(
    "KeyId" => "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    "Plaintext" => "<binary data>"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/Decrypt)
"""
@inline decrypt(aws::AWSConfig=default_aws_config(); args...) = decrypt(aws, args)

@inline decrypt(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "Decrypt", args)

@inline decrypt(args) = decrypt(default_aws_config(), args)


"""
    using AWSSDK.KMS.delete_alias
    delete_alias([::AWSConfig], arguments::Dict)
    delete_alias([::AWSConfig]; AliasName=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "DeleteAlias", arguments::Dict)
    kms([::AWSConfig], "DeleteAlias", AliasName=)

# DeleteAlias Operation

Deletes the specified alias. You cannot perform this operation on an alias in a different AWS account.

Because an alias is not a property of a CMK, you can delete and change the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the [DescribeKey](@ref) operation. To get the aliases of all CMKs, use the [ListAliases](@ref) operation.

Each CMK can have multiple aliases. To change the alias of a CMK, use [DeleteAlias](@ref) to delete the current alias and [CreateAlias](@ref) to create a new alias. To associate an existing alias with a different customer master key (CMK), call [UpdateAlias](@ref).

# Arguments

## `AliasName = ::String` -- *Required*
The alias to be deleted. The name must start with the word "alias" followed by a forward slash (alias/). Aliases that begin with "alias/aws" are reserved.




# Exceptions

`DependencyTimeoutException`, `NotFoundException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To delete an alias

The following example deletes the specified alias.

Input:
```
[
    "AliasName" => "alias/ExampleAlias"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DeleteAlias)
"""
@inline delete_alias(aws::AWSConfig=default_aws_config(); args...) = delete_alias(aws, args)

@inline delete_alias(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "DeleteAlias", args)

@inline delete_alias(args) = delete_alias(default_aws_config(), args)


"""
    using AWSSDK.KMS.delete_imported_key_material
    delete_imported_key_material([::AWSConfig], arguments::Dict)
    delete_imported_key_material([::AWSConfig]; KeyId=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "DeleteImportedKeyMaterial", arguments::Dict)
    kms([::AWSConfig], "DeleteImportedKeyMaterial", KeyId=)

# DeleteImportedKeyMaterial Operation

Deletes key material that you previously imported. This operation makes the specified customer master key (CMK) unusable. For more information about importing key material into AWS KMS, see [Importing Key Material](http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html) in the *AWS Key Management Service Developer Guide*. You cannot perform this operation on a CMK in a different AWS account.

When the specified CMK is in the `PendingDeletion` state, this operation does not change the CMK's state. Otherwise, it changes the CMK's state to `PendingImport`.

After you delete key material, you can use [ImportKeyMaterial](@ref) to reimport the same key material into the CMK.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
The identifier of the CMK whose key material to delete. The CMK's `Origin` must be `EXTERNAL`.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).




# Exceptions

`InvalidArnException`, `UnsupportedOperationException`, `DependencyTimeoutException`, `NotFoundException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To delete imported key material

The following example deletes the imported key material from the specified customer master key (CMK).

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DeleteImportedKeyMaterial)
"""
@inline delete_imported_key_material(aws::AWSConfig=default_aws_config(); args...) = delete_imported_key_material(aws, args)

@inline delete_imported_key_material(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "DeleteImportedKeyMaterial", args)

@inline delete_imported_key_material(args) = delete_imported_key_material(default_aws_config(), args)


"""
    using AWSSDK.KMS.describe_key
    describe_key([::AWSConfig], arguments::Dict)
    describe_key([::AWSConfig]; KeyId=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "DescribeKey", arguments::Dict)
    kms([::AWSConfig], "DescribeKey", KeyId=, <keyword arguments>)

# DescribeKey Operation

Provides detailed information about the specified customer master key (CMK).

You can use `DescribeKey` on a predefined AWS alias, that is, an AWS alias with no key ID. When you do, AWS KMS associates the alias with an [AWS managed CMK](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys) and returns its `KeyId` and `Arn` in the response.

To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.

# Arguments

## `KeyId = ::String` -- *Required*
Describes the specified customer master key (CMK).

If you specify a predefined AWS alias (an AWS alias with no key ID), KMS associates the alias with an [AWS managed CMK](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys) and returns its `KeyId` and `Arn` in the response.

To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with `"alias/"`. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

*   Alias name: `alias/ExampleAlias`

*   Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref). To get the alias name and alias ARN, use [ListAliases](@ref).


## `GrantTokens = [::String, ...]`
A list of grant tokens.

For more information, see [Grant Tokens](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token) in the *AWS Key Management Service Developer Guide*.




# Returns

`DescribeKeyResponse`

# Exceptions

`NotFoundException`, `InvalidArnException`, `DependencyTimeoutException` or `KMSInternalException`.

# Example: To obtain information about a customer master key (CMK)

The following example returns information (metadata) about the specified CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

Output:
```
Dict(
    "KeyMetadata" => Dict(
        "AWSAccountId" => "111122223333",
        "Arn" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
        "CreationDate" => "2017-07-05T14:04:55-07:00",
        "Description" => "",
        "Enabled" => true,
        "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab",
        "KeyManager" => "CUSTOMER",
        "KeyState" => "Enabled",
        "KeyUsage" => "ENCRYPT_DECRYPT",
        "Origin" => "AWS_KMS"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DescribeKey)
"""
@inline describe_key(aws::AWSConfig=default_aws_config(); args...) = describe_key(aws, args)

@inline describe_key(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "DescribeKey", args)

@inline describe_key(args) = describe_key(default_aws_config(), args)


"""
    using AWSSDK.KMS.disable_key
    disable_key([::AWSConfig], arguments::Dict)
    disable_key([::AWSConfig]; KeyId=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "DisableKey", arguments::Dict)
    kms([::AWSConfig], "DisableKey", KeyId=)

# DisableKey Operation

Sets the state of a customer master key (CMK) to disabled, thereby preventing its use for cryptographic operations. You cannot perform this operation on a CMK in a different AWS account.

For more information about how key state affects the use of a CMK, see [How Key State Affects the Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).




# Exceptions

`NotFoundException`, `InvalidArnException`, `DependencyTimeoutException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To disable a customer master key (CMK)

The following example disables the specified CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisableKey)
"""
@inline disable_key(aws::AWSConfig=default_aws_config(); args...) = disable_key(aws, args)

@inline disable_key(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "DisableKey", args)

@inline disable_key(args) = disable_key(default_aws_config(), args)


"""
    using AWSSDK.KMS.disable_key_rotation
    disable_key_rotation([::AWSConfig], arguments::Dict)
    disable_key_rotation([::AWSConfig]; KeyId=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "DisableKeyRotation", arguments::Dict)
    kms([::AWSConfig], "DisableKeyRotation", KeyId=)

# DisableKeyRotation Operation

Disables [automatic rotation of the key material](http://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html) for the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).




# Exceptions

`NotFoundException`, `DisabledException`, `InvalidArnException`, `DependencyTimeoutException`, `KMSInternalException`, `KMSInvalidStateException` or `UnsupportedOperationException`.

# Example: To disable automatic rotation of key material

The following example disables automatic annual rotation of the key material for the specified CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/DisableKeyRotation)
"""
@inline disable_key_rotation(aws::AWSConfig=default_aws_config(); args...) = disable_key_rotation(aws, args)

@inline disable_key_rotation(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "DisableKeyRotation", args)

@inline disable_key_rotation(args) = disable_key_rotation(default_aws_config(), args)


"""
    using AWSSDK.KMS.enable_key
    enable_key([::AWSConfig], arguments::Dict)
    enable_key([::AWSConfig]; KeyId=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "EnableKey", arguments::Dict)
    kms([::AWSConfig], "EnableKey", KeyId=)

# EnableKey Operation

Sets the state of a customer master key (CMK) to enabled, thereby permitting its use for cryptographic operations. You cannot perform this operation on a CMK in a different AWS account.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).




# Exceptions

`NotFoundException`, `InvalidArnException`, `DependencyTimeoutException`, `KMSInternalException`, `LimitExceededException` or `KMSInvalidStateException`.

# Example: To enable a customer master key (CMK)

The following example enables the specified CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/EnableKey)
"""
@inline enable_key(aws::AWSConfig=default_aws_config(); args...) = enable_key(aws, args)

@inline enable_key(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "EnableKey", args)

@inline enable_key(args) = enable_key(default_aws_config(), args)


"""
    using AWSSDK.KMS.enable_key_rotation
    enable_key_rotation([::AWSConfig], arguments::Dict)
    enable_key_rotation([::AWSConfig]; KeyId=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "EnableKeyRotation", arguments::Dict)
    kms([::AWSConfig], "EnableKeyRotation", KeyId=)

# EnableKeyRotation Operation

Enables [automatic rotation of the key material](http://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html) for the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).




# Exceptions

`NotFoundException`, `DisabledException`, `InvalidArnException`, `DependencyTimeoutException`, `KMSInternalException`, `KMSInvalidStateException` or `UnsupportedOperationException`.

# Example: To enable automatic rotation of key material

The following example enables automatic annual rotation of the key material for the specified CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/EnableKeyRotation)
"""
@inline enable_key_rotation(aws::AWSConfig=default_aws_config(); args...) = enable_key_rotation(aws, args)

@inline enable_key_rotation(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "EnableKeyRotation", args)

@inline enable_key_rotation(args) = enable_key_rotation(default_aws_config(), args)


"""
    using AWSSDK.KMS.encrypt
    encrypt([::AWSConfig], arguments::Dict)
    encrypt([::AWSConfig]; KeyId=, Plaintext=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "Encrypt", arguments::Dict)
    kms([::AWSConfig], "Encrypt", KeyId=, Plaintext=, <keyword arguments>)

# Encrypt Operation

Encrypts plaintext into ciphertext by using a customer master key (CMK). The `Encrypt` operation has two primary use cases:

*   You can encrypt up to 4 kilobytes (4096 bytes) of arbitrary data such as an RSA key, a database password, or other sensitive information.

*   You can use the `Encrypt` operation to move encrypted data from one AWS region to another. In the first region, generate a data key and use the plaintext key to encrypt the data. Then, in the new region, call the `Encrypt` method on same plaintext data key. Now, you can safely move the encrypted data and encrypted data key to the new region, and decrypt in the new region when necessary.

You don't need use this operation to encrypt a data key within a region. The [GenerateDataKey](@ref) and [GenerateDataKeyWithoutPlaintext](@ref) operations return an encrypted data key.

Also, you don't need to use this operation to encrypt data in your application. You can use the plaintext and encrypted data keys that the `GenerateDataKey` operation returns.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key (CMK).

To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with `"alias/"`. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

*   Alias name: `alias/ExampleAlias`

*   Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref). To get the alias name and alias ARN, use [ListAliases](@ref).


## `Plaintext = blob` -- *Required*
Data to be encrypted.


## `EncryptionContext = ::Dict{String,String}`
Name-value pair that specifies the encryption context to be used for authenticated encryption. If used here, the same value must be supplied to the `Decrypt` API or decryption will fail. For more information, see [Encryption Context](http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html).


## `GrantTokens = [::String, ...]`
A list of grant tokens.

For more information, see [Grant Tokens](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token) in the *AWS Key Management Service Developer Guide*.




# Returns

`EncryptResponse`

# Exceptions

`NotFoundException`, `DisabledException`, `KeyUnavailableException`, `DependencyTimeoutException`, `InvalidKeyUsageException`, `InvalidGrantTokenException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To encrypt data

The following example encrypts data with the specified customer master key (CMK).

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab",
    "Plaintext" => "<binary data>"
]
```

Output:
```
Dict(
    "CiphertextBlob" => "<binary data>",
    "KeyId" => "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/Encrypt)
"""
@inline encrypt(aws::AWSConfig=default_aws_config(); args...) = encrypt(aws, args)

@inline encrypt(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "Encrypt", args)

@inline encrypt(args) = encrypt(default_aws_config(), args)


"""
    using AWSSDK.KMS.generate_data_key
    generate_data_key([::AWSConfig], arguments::Dict)
    generate_data_key([::AWSConfig]; KeyId=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "GenerateDataKey", arguments::Dict)
    kms([::AWSConfig], "GenerateDataKey", KeyId=, <keyword arguments>)

# GenerateDataKey Operation

Returns a data encryption key that you can use in your application to encrypt data locally.

You must specify the customer master key (CMK) under which to generate the data key. You must also specify the length of the data key using either the `KeySpec` or `NumberOfBytes` field. You must specify one field or the other, but not both. For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use `KeySpec`. To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.

This operation returns a plaintext copy of the data key in the `Plaintext` field of the response, and an encrypted copy of the data key in the `CiphertextBlob` field. The data key is encrypted under the CMK specified in the `KeyId` field of the request.

We recommend that you use the following pattern to encrypt data locally in your application:

1.  Use this operation (`GenerateDataKey`) to get a data encryption key.

2.  Use the plaintext data encryption key (returned in the `Plaintext` field of the response) to encrypt data locally, then erase the plaintext data key from memory.

3.  Store the encrypted data key (returned in the `CiphertextBlob` field of the response) alongside the locally encrypted data.

To decrypt data locally:

1.  Use the [Decrypt](@ref) operation to decrypt the encrypted data key into a plaintext copy of the data key.

2.  Use the plaintext data key to decrypt data locally, then erase the plaintext data key from memory.

To return only an encrypted copy of the data key, use [GenerateDataKeyWithoutPlaintext](@ref). To return a random byte string that is cryptographically secure, use [GenerateRandom](@ref).

If you use the optional `EncryptionContext` field, you must store at least enough information to be able to reconstruct the full encryption context when you later send the ciphertext to the [Decrypt](@ref) operation. It is a good practice to choose an encryption context that you can reconstruct on the fly to better secure the ciphertext. For more information, see [Encryption Context](http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html) in the *AWS Key Management Service Developer Guide*.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
The identifier of the CMK under which to generate and encrypt the data encryption key.

To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with `"alias/"`. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

*   Alias name: `alias/ExampleAlias`

*   Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref). To get the alias name and alias ARN, use [ListAliases](@ref).


## `EncryptionContext = ::Dict{String,String}`
A set of key-value pairs that represents additional authenticated data.

For more information, see [Encryption Context](http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html) in the *AWS Key Management Service Developer Guide*.


## `NumberOfBytes = ::Int`
The length of the data encryption key in bytes. For example, use the value 64 to generate a 512-bit data key (64 bytes is 512 bits). For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use the `KeySpec` field instead of this one.


## `KeySpec = "AES_256" or "AES_128"`
The length of the data encryption key. Use `AES_128` to generate a 128-bit symmetric key, or `AES_256` to generate a 256-bit symmetric key.


## `GrantTokens = [::String, ...]`
A list of grant tokens.

For more information, see [Grant Tokens](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token) in the *AWS Key Management Service Developer Guide*.




# Returns

`GenerateDataKeyResponse`

# Exceptions

`NotFoundException`, `DisabledException`, `KeyUnavailableException`, `DependencyTimeoutException`, `InvalidKeyUsageException`, `InvalidGrantTokenException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To generate a data key

The following example generates a 256-bit symmetric data encryption key (data key) in two formats. One is the unencrypted (plainext) data key, and the other is the data key encrypted with the specified customer master key (CMK).

Input:
```
[
    "KeyId" => "alias/ExampleAlias",
    "KeySpec" => "AES_256"
]
```

Output:
```
Dict(
    "CiphertextBlob" => "<binary data>",
    "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    "Plaintext" => "<binary data>"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKey)
"""
@inline generate_data_key(aws::AWSConfig=default_aws_config(); args...) = generate_data_key(aws, args)

@inline generate_data_key(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "GenerateDataKey", args)

@inline generate_data_key(args) = generate_data_key(default_aws_config(), args)


"""
    using AWSSDK.KMS.generate_data_key_without_plaintext
    generate_data_key_without_plaintext([::AWSConfig], arguments::Dict)
    generate_data_key_without_plaintext([::AWSConfig]; KeyId=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "GenerateDataKeyWithoutPlaintext", arguments::Dict)
    kms([::AWSConfig], "GenerateDataKeyWithoutPlaintext", KeyId=, <keyword arguments>)

# GenerateDataKeyWithoutPlaintext Operation

Returns a data encryption key encrypted under a customer master key (CMK). This operation is identical to [GenerateDataKey](@ref) but returns only the encrypted copy of the data key.

To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.

This operation is useful in a system that has multiple components with different degrees of trust. For example, consider a system that stores encrypted data in containers. Each container stores the encrypted data and an encrypted copy of the data key. One component of the system, called the *control plane*, creates new containers. When it creates a new container, it uses this operation (`GenerateDataKeyWithoutPlaintext`) to get an encrypted data key and then stores it in the container. Later, a different component of the system, called the *data plane*, puts encrypted data into the containers. To do this, it passes the encrypted data key to the [Decrypt](@ref) operation. It then uses the returned plaintext data key to encrypt data and finally stores the encrypted data in the container. In this system, the control plane never sees the plaintext data key.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
The identifier of the customer master key (CMK) under which to generate and encrypt the data encryption key.

To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with `"alias/"`. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

*   Alias name: `alias/ExampleAlias`

*   Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref). To get the alias name and alias ARN, use [ListAliases](@ref).


## `EncryptionContext = ::Dict{String,String}`
A set of key-value pairs that represents additional authenticated data.

For more information, see [Encryption Context](http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html) in the *AWS Key Management Service Developer Guide*.


## `KeySpec = "AES_256" or "AES_128"`
The length of the data encryption key. Use `AES_128` to generate a 128-bit symmetric key, or `AES_256` to generate a 256-bit symmetric key.


## `NumberOfBytes = ::Int`
The length of the data encryption key in bytes. For example, use the value 64 to generate a 512-bit data key (64 bytes is 512 bits). For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use the `KeySpec` field instead of this one.


## `GrantTokens = [::String, ...]`
A list of grant tokens.

For more information, see [Grant Tokens](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token) in the *AWS Key Management Service Developer Guide*.




# Returns

`GenerateDataKeyWithoutPlaintextResponse`

# Exceptions

`NotFoundException`, `DisabledException`, `KeyUnavailableException`, `DependencyTimeoutException`, `InvalidKeyUsageException`, `InvalidGrantTokenException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To generate an encrypted data key

The following example generates an encrypted copy of a 256-bit symmetric data encryption key (data key). The data key is encrypted with the specified customer master key (CMK).

Input:
```
[
    "KeyId" => "alias/ExampleAlias",
    "KeySpec" => "AES_256"
]
```

Output:
```
Dict(
    "CiphertextBlob" => "<binary data>",
    "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateDataKeyWithoutPlaintext)
"""
@inline generate_data_key_without_plaintext(aws::AWSConfig=default_aws_config(); args...) = generate_data_key_without_plaintext(aws, args)

@inline generate_data_key_without_plaintext(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "GenerateDataKeyWithoutPlaintext", args)

@inline generate_data_key_without_plaintext(args) = generate_data_key_without_plaintext(default_aws_config(), args)


"""
    using AWSSDK.KMS.generate_random
    generate_random([::AWSConfig], arguments::Dict)
    generate_random([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "GenerateRandom", arguments::Dict)
    kms([::AWSConfig], "GenerateRandom", <keyword arguments>)

# GenerateRandom Operation

Returns a random byte string that is cryptographically secure.

For more information about entropy and random number generation, see the [AWS Key Management Service Cryptographic Details](https://d0.awsstatic.com/whitepapers/KMS-Cryptographic-Details.pdf) whitepaper.

# Arguments

## `NumberOfBytes = ::Int`
The length of the byte string.




# Returns

`GenerateRandomResponse`

# Exceptions

`DependencyTimeoutException` or `KMSInternalException`.

# Example: To generate random data

The following example uses AWS KMS to generate 32 bytes of random data.

Input:
```
[
    "NumberOfBytes" => 32
]
```

Output:
```
Dict(
    "Plaintext" => "<binary data>"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GenerateRandom)
"""
@inline generate_random(aws::AWSConfig=default_aws_config(); args...) = generate_random(aws, args)

@inline generate_random(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "GenerateRandom", args)

@inline generate_random(args) = generate_random(default_aws_config(), args)


"""
    using AWSSDK.KMS.get_key_policy
    get_key_policy([::AWSConfig], arguments::Dict)
    get_key_policy([::AWSConfig]; KeyId=, PolicyName=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "GetKeyPolicy", arguments::Dict)
    kms([::AWSConfig], "GetKeyPolicy", KeyId=, PolicyName=)

# GetKeyPolicy Operation

Gets a key policy attached to the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).


## `PolicyName = ::String` -- *Required*
Specifies the name of the key policy. The only valid name is `default`. To get the names of key policies, use [ListKeyPolicies](@ref).




# Returns

`GetKeyPolicyResponse`

# Exceptions

`NotFoundException`, `InvalidArnException`, `DependencyTimeoutException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To retrieve a key policy

The following example retrieves the key policy for the specified customer master key (CMK).

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab",
    "PolicyName" => "default"
]
```

Output:
```
Dict(
    "Policy" => "{
  "Version" : "2012-10-17",
  "Id" : "key-default-1",
  "Statement" : [ {
    "Sid" : "Enable IAM User Permissions",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::111122223333:root"
    },
    "Action" : "kms:*",
    "Resource" : "*"
  } ]
}"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetKeyPolicy)
"""
@inline get_key_policy(aws::AWSConfig=default_aws_config(); args...) = get_key_policy(aws, args)

@inline get_key_policy(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "GetKeyPolicy", args)

@inline get_key_policy(args) = get_key_policy(default_aws_config(), args)


"""
    using AWSSDK.KMS.get_key_rotation_status
    get_key_rotation_status([::AWSConfig], arguments::Dict)
    get_key_rotation_status([::AWSConfig]; KeyId=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "GetKeyRotationStatus", arguments::Dict)
    kms([::AWSConfig], "GetKeyRotationStatus", KeyId=)

# GetKeyRotationStatus Operation

Gets a Boolean value that indicates whether [automatic rotation of the key material](http://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html) is enabled for the specified customer master key (CMK).

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

*   Disabled: The key rotation status does not change when you disable a CMK. However, while the CMK is disabled, AWS KMS does not rotate the backing key.

*   Pending deletion: While a CMK is pending deletion, its key rotation status is `false` and AWS KMS does not rotate the backing key. If you cancel the deletion, the original key rotation status is restored.

To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the `KeyId` parameter.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).




# Returns

`GetKeyRotationStatusResponse`

# Exceptions

`NotFoundException`, `InvalidArnException`, `DependencyTimeoutException`, `KMSInternalException`, `KMSInvalidStateException` or `UnsupportedOperationException`.

# Example: To retrieve the rotation status for a customer master key (CMK)

The following example retrieves the status of automatic annual rotation of the key material for the specified CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

Output:
```
Dict(
    "KeyRotationEnabled" => true
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetKeyRotationStatus)
"""
@inline get_key_rotation_status(aws::AWSConfig=default_aws_config(); args...) = get_key_rotation_status(aws, args)

@inline get_key_rotation_status(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "GetKeyRotationStatus", args)

@inline get_key_rotation_status(args) = get_key_rotation_status(default_aws_config(), args)


"""
    using AWSSDK.KMS.get_parameters_for_import
    get_parameters_for_import([::AWSConfig], arguments::Dict)
    get_parameters_for_import([::AWSConfig]; KeyId=, WrappingAlgorithm=, WrappingKeySpec=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "GetParametersForImport", arguments::Dict)
    kms([::AWSConfig], "GetParametersForImport", KeyId=, WrappingAlgorithm=, WrappingKeySpec=)

# GetParametersForImport Operation

Returns the items you need in order to import key material into AWS KMS from your existing key management infrastructure. For more information about importing key material into AWS KMS, see [Importing Key Material](http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html) in the *AWS Key Management Service Developer Guide*.

You must specify the key ID of the customer master key (CMK) into which you will import key material. This CMK's `Origin` must be `EXTERNAL`. You must also specify the wrapping algorithm and type of wrapping key (public key) that you will use to encrypt the key material. You cannot perform this operation on a CMK in a different AWS account.

This operation returns a public key and an import token. Use the public key to encrypt the key material. Store the import token to send with a subsequent [ImportKeyMaterial](@ref) request. The public key and import token from the same response must be used together. These items are valid for 24 hours. When they expire, they cannot be used for a subsequent [ImportKeyMaterial](@ref) request. To get new ones, send another `GetParametersForImport` request.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
The identifier of the CMK into which you will import key material. The CMK's `Origin` must be `EXTERNAL`.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).


## `WrappingAlgorithm = "RSAES_PKCS1_V1_5", "RSAES_OAEP_SHA_1" or "RSAES_OAEP_SHA_256"` -- *Required*
The algorithm you use to encrypt the key material before importing it with [ImportKeyMaterial](@ref). For more information, see [Encrypt the Key Material](http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-encrypt-key-material.html) in the *AWS Key Management Service Developer Guide*.


## `WrappingKeySpec = "RSA_2048"` -- *Required*
The type of wrapping key (public key) to return in the response. Only 2048-bit RSA public keys are supported.




# Returns

`GetParametersForImportResponse`

# Exceptions

`InvalidArnException`, `UnsupportedOperationException`, `DependencyTimeoutException`, `NotFoundException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To retrieve the public key and import token for a customer master key (CMK)

The following example retrieves the public key and import token for the specified CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab",
    "WrappingAlgorithm" => "RSAES_OAEP_SHA_1",
    "WrappingKeySpec" => "RSA_2048"
]
```

Output:
```
Dict(
    "ImportToken" => "<binary data>",
    "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    "ParametersValidTo" => "2016-12-01T14:52:17-08:00",
    "PublicKey" => "<binary data>"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/GetParametersForImport)
"""
@inline get_parameters_for_import(aws::AWSConfig=default_aws_config(); args...) = get_parameters_for_import(aws, args)

@inline get_parameters_for_import(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "GetParametersForImport", args)

@inline get_parameters_for_import(args) = get_parameters_for_import(default_aws_config(), args)


"""
    using AWSSDK.KMS.import_key_material
    import_key_material([::AWSConfig], arguments::Dict)
    import_key_material([::AWSConfig]; KeyId=, ImportToken=, EncryptedKeyMaterial=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "ImportKeyMaterial", arguments::Dict)
    kms([::AWSConfig], "ImportKeyMaterial", KeyId=, ImportToken=, EncryptedKeyMaterial=, <keyword arguments>)

# ImportKeyMaterial Operation

Imports key material into an existing AWS KMS customer master key (CMK) that was created without key material. You cannot perform this operation on a CMK in a different AWS account. For more information about creating CMKs with no key material and then importing key material, see [Importing Key Material](http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html) in the *AWS Key Management Service Developer Guide*.

Before using this operation, call [GetParametersForImport](@ref). Its response includes a public key and an import token. Use the public key to encrypt the key material. Then, submit the import token from the same `GetParametersForImport` response.

When calling this operation, you must specify the following values:

*   The key ID or key ARN of a CMK with no key material. Its `Origin` must be `EXTERNAL`.

    To create a CMK with no key material, call [CreateKey](@ref) and set the value of its `Origin` parameter to `EXTERNAL`. To get the `Origin` of a CMK, call [DescribeKey](@ref).)

*   The encrypted key material. To get the public key to encrypt the key material, call [GetParametersForImport](@ref).

*   The import token that [GetParametersForImport](@ref) returned. This token and the public key used to encrypt the key material must have come from the same response.

*   Whether the key material expires and if so, when. If you set an expiration date, you can change it only by reimporting the same key material and specifying a new expiration date. If the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. To use the CMK again, you must reimport the same key material.

When this operation is successful, the CMK's key state changes from `PendingImport` to `Enabled`, and you can use the CMK. After you successfully import key material into a CMK, you can reimport the same key material into that CMK, but you cannot import different key material.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
The identifier of the CMK to import the key material into. The CMK's `Origin` must be `EXTERNAL`.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).


## `ImportToken = blob` -- *Required*
The import token that you received in the response to a previous [GetParametersForImport](@ref) request. It must be from the same response that contained the public key that you used to encrypt the key material.


## `EncryptedKeyMaterial = blob` -- *Required*
The encrypted key material to import. It must be encrypted with the public key that you received in the response to a previous [GetParametersForImport](@ref) request, using the wrapping algorithm that you specified in that request.


## `ValidTo = timestamp`
The time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. You must omit this parameter when the `ExpirationModel` parameter is set to `KEY_MATERIAL_DOES_NOT_EXPIRE`. Otherwise it is required.


## `ExpirationModel = "KEY_MATERIAL_EXPIRES" or "KEY_MATERIAL_DOES_NOT_EXPIRE"`
Specifies whether the key material expires. The default is `KEY_MATERIAL_EXPIRES`, in which case you must include the `ValidTo` parameter. When this parameter is set to `KEY_MATERIAL_DOES_NOT_EXPIRE`, you must omit the `ValidTo` parameter.




# Returns

`ImportKeyMaterialResponse`

# Exceptions

`InvalidArnException`, `UnsupportedOperationException`, `DependencyTimeoutException`, `NotFoundException`, `KMSInternalException`, `KMSInvalidStateException`, `InvalidCiphertextException`, `IncorrectKeyMaterialException`, `ExpiredImportTokenException` or `InvalidImportTokenException`.

# Example: To import key material into a customer master key (CMK)

The following example imports key material into the specified CMK.

Input:
```
[
    "EncryptedKeyMaterial" => "<binary data>",
    "ExpirationModel" => "KEY_MATERIAL_DOES_NOT_EXPIRE",
    "ImportToken" => "<binary data>",
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ImportKeyMaterial)
"""
@inline import_key_material(aws::AWSConfig=default_aws_config(); args...) = import_key_material(aws, args)

@inline import_key_material(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "ImportKeyMaterial", args)

@inline import_key_material(args) = import_key_material(default_aws_config(), args)


"""
    using AWSSDK.KMS.list_aliases
    list_aliases([::AWSConfig], arguments::Dict)
    list_aliases([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "ListAliases", arguments::Dict)
    kms([::AWSConfig], "ListAliases", <keyword arguments>)

# ListAliases Operation

Gets a list of aliases in the caller's AWS account and region. You cannot list aliases in other accounts. For more information about aliases, see [CreateAlias](@ref).

By default, the ListAliases command returns all aliases in the account and region. To get only the aliases that point to a particular customer master key (CMK), use the `KeyId` parameter.

The `ListAliases` response can include aliases that you created and associated with your customer managed CMKs, and aliases that AWS created and associated with AWS managed CMKs in your account. You can recognize AWS aliases because their names have the format `aws/<service-name>`, such as `aws/dynamodb`.

The response might also include aliases that have no `TargetKeyId` field. These are predefined aliases that AWS has created but has not yet associated with a CMK. Aliases that AWS creates in your account, including predefined aliases, do not count against your [AWS KMS aliases limit](http://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit).

# Arguments

## `KeyId = ::String`
Lists only aliases that refer to the specified CMK. The value of this parameter can be the ID or Amazon Resource Name (ARN) of a CMK in the caller's account and region. You cannot use an alias name or alias ARN in this value.

This parameter is optional. If you omit it, `ListAliases` returns all aliases in the account and region.


## `Limit = ::Int`
Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.

This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.


## `Marker = ::String`
Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of `NextMarker` from the truncated response you just received.




# Returns

`ListAliasesResponse`

# Exceptions

`DependencyTimeoutException`, `InvalidMarkerException` or `KMSInternalException`.

# Example: To list aliases

The following example lists aliases.

Output:
```
Dict(
    "Aliases" => [
        Dict(
            "AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/aws/acm",
            "AliasName" => "alias/aws/acm",
            "TargetKeyId" => "da03f6f7-d279-427a-9cae-de48d07e5b66"
        ),
        Dict(
            "AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/aws/ebs",
            "AliasName" => "alias/aws/ebs",
            "TargetKeyId" => "25a217e7-7170-4b8c-8bf6-045ea5f70e5b"
        ),
        Dict(
            "AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/aws/rds",
            "AliasName" => "alias/aws/rds",
            "TargetKeyId" => "7ec3104e-c3f2-4b5c-bf42-bfc4772c6685"
        ),
        Dict(
            "AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/aws/redshift",
            "AliasName" => "alias/aws/redshift",
            "TargetKeyId" => "08f7a25a-69e2-4fb5-8f10-393db27326fa"
        ),
        Dict(
            "AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/aws/s3",
            "AliasName" => "alias/aws/s3",
            "TargetKeyId" => "d2b0f1a3-580d-4f79-b836-bc983be8cfa5"
        ),
        Dict(
            "AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/example1",
            "AliasName" => "alias/example1",
            "TargetKeyId" => "4da1e216-62d0-46c5-a7c0-5f3a3d2f8046"
        ),
        Dict(
            "AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/example2",
            "AliasName" => "alias/example2",
            "TargetKeyId" => "f32fef59-2cc2-445b-8573-2d73328acbee"
        ),
        Dict(
            "AliasArn" => "arn:aws:kms:us-east-2:111122223333:alias/example3",
            "AliasName" => "alias/example3",
            "TargetKeyId" => "1374ef38-d34e-4d5f-b2c9-4e0daee38855"
        )
    ],
    "Truncated" => false
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListAliases)
"""
@inline list_aliases(aws::AWSConfig=default_aws_config(); args...) = list_aliases(aws, args)

@inline list_aliases(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "ListAliases", args)

@inline list_aliases(args) = list_aliases(default_aws_config(), args)


"""
    using AWSSDK.KMS.list_grants
    list_grants([::AWSConfig], arguments::Dict)
    list_grants([::AWSConfig]; KeyId=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "ListGrants", arguments::Dict)
    kms([::AWSConfig], "ListGrants", KeyId=, <keyword arguments>)

# ListGrants Operation

Gets a list of all grants for the specified customer master key (CMK).

To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the `KeyId` parameter.

# Arguments

## `Limit = ::Int`
Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.

This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.


## `Marker = ::String`
Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of `NextMarker` from the truncated response you just received.


## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).




# Returns

`ListGrantsResponse`

# Exceptions

`NotFoundException`, `DependencyTimeoutException`, `InvalidMarkerException`, `InvalidArnException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To list grants for a customer master key (CMK)

The following example lists grants for the specified CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

Output:
```
Dict(
    "Grants" => [
        Dict(
            "CreationDate" => "2016-10-25T14:37:41-07:00",
            "GrantId" => "91ad875e49b04a9d1f3bdeb84d821f9db6ea95e1098813f6d47f0c65fbe2a172",
            "GranteePrincipal" => "acm.us-east-2.amazonaws.com",
            "IssuingAccount" => "arn:aws:iam::111122223333:root",
            "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
            "Operations" => [
                "Encrypt",
                "ReEncryptFrom",
                "ReEncryptTo"
            ],
            "RetiringPrincipal" => "acm.us-east-2.amazonaws.com"
        ),
        Dict(
            "CreationDate" => "2016-10-25T14:37:41-07:00",
            "GrantId" => "a5d67d3e207a8fc1f4928749ee3e52eb0440493a8b9cf05bbfad91655b056200",
            "GranteePrincipal" => "acm.us-east-2.amazonaws.com",
            "IssuingAccount" => "arn:aws:iam::111122223333:root",
            "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
            "Operations" => [
                "ReEncryptFrom",
                "ReEncryptTo"
            ],
            "RetiringPrincipal" => "acm.us-east-2.amazonaws.com"
        ),
        Dict(
            "CreationDate" => "2016-10-25T14:37:41-07:00",
            "GrantId" => "c541aaf05d90cb78846a73b346fc43e65be28b7163129488c738e0c9e0628f4f",
            "GranteePrincipal" => "acm.us-east-2.amazonaws.com",
            "IssuingAccount" => "arn:aws:iam::111122223333:root",
            "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
            "Operations" => [
                "Encrypt",
                "ReEncryptFrom",
                "ReEncryptTo"
            ],
            "RetiringPrincipal" => "acm.us-east-2.amazonaws.com"
        ),
        Dict(
            "CreationDate" => "2016-10-25T14:37:41-07:00",
            "GrantId" => "dd2052c67b4c76ee45caf1dc6a1e2d24e8dc744a51b36ae2f067dc540ce0105c",
            "GranteePrincipal" => "acm.us-east-2.amazonaws.com",
            "IssuingAccount" => "arn:aws:iam::111122223333:root",
            "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
            "Operations" => [
                "Encrypt",
                "ReEncryptFrom",
                "ReEncryptTo"
            ],
            "RetiringPrincipal" => "acm.us-east-2.amazonaws.com"
        )
    ],
    "Truncated" => true
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListGrants)
"""
@inline list_grants(aws::AWSConfig=default_aws_config(); args...) = list_grants(aws, args)

@inline list_grants(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "ListGrants", args)

@inline list_grants(args) = list_grants(default_aws_config(), args)


"""
    using AWSSDK.KMS.list_key_policies
    list_key_policies([::AWSConfig], arguments::Dict)
    list_key_policies([::AWSConfig]; KeyId=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "ListKeyPolicies", arguments::Dict)
    kms([::AWSConfig], "ListKeyPolicies", KeyId=, <keyword arguments>)

# ListKeyPolicies Operation

Gets the names of the key policies that are attached to a customer master key (CMK). This operation is designed to get policy names that you can use in a [GetKeyPolicy](@ref) operation. However, the only valid policy name is `default`. You cannot perform this operation on a CMK in a different AWS account.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).


## `Limit = ::Int`
Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.

This value is optional. If you include a value, it must be between 1 and 1000, inclusive. If you do not include a value, it defaults to 100.

Currently only 1 policy can be attached to a key.


## `Marker = ::String`
Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of `NextMarker` from the truncated response you just received.




# Returns

`ListKeyPoliciesResponse`

# Exceptions

`NotFoundException`, `InvalidArnException`, `DependencyTimeoutException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To list key policies for a customer master key (CMK)

The following example lists key policies for the specified CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

Output:
```
Dict(
    "PolicyNames" => [
        "default"
    ],
    "Truncated" => false
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListKeyPolicies)
"""
@inline list_key_policies(aws::AWSConfig=default_aws_config(); args...) = list_key_policies(aws, args)

@inline list_key_policies(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "ListKeyPolicies", args)

@inline list_key_policies(args) = list_key_policies(default_aws_config(), args)


"""
    using AWSSDK.KMS.list_keys
    list_keys([::AWSConfig], arguments::Dict)
    list_keys([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "ListKeys", arguments::Dict)
    kms([::AWSConfig], "ListKeys", <keyword arguments>)

# ListKeys Operation

Gets a list of all customer master keys (CMKs) in the caller's AWS account and region.

# Arguments

## `Limit = ::Int`
Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.

This value is optional. If you include a value, it must be between 1 and 1000, inclusive. If you do not include a value, it defaults to 100.


## `Marker = ::String`
Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of `NextMarker` from the truncated response you just received.




# Returns

`ListKeysResponse`

# Exceptions

`DependencyTimeoutException`, `KMSInternalException` or `InvalidMarkerException`.

# Example: To list customer master keys (CMKs)

The following example lists CMKs.

Output:
```
Dict(
    "Keys" => [
        Dict(
            "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/0d990263-018e-4e65-a703-eff731de951e",
            "KeyId" => "0d990263-018e-4e65-a703-eff731de951e"
        ),
        Dict(
            "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/144be297-0ae1-44ac-9c8f-93cd8c82f841",
            "KeyId" => "144be297-0ae1-44ac-9c8f-93cd8c82f841"
        ),
        Dict(
            "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/21184251-b765-428e-b852-2c7353e72571",
            "KeyId" => "21184251-b765-428e-b852-2c7353e72571"
        ),
        Dict(
            "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/214fe92f-5b03-4ae1-b350-db2a45dbe10c",
            "KeyId" => "214fe92f-5b03-4ae1-b350-db2a45dbe10c"
        ),
        Dict(
            "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/339963f2-e523-49d3-af24-a0fe752aa458",
            "KeyId" => "339963f2-e523-49d3-af24-a0fe752aa458"
        ),
        Dict(
            "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/b776a44b-df37-4438-9be4-a27494e4271a",
            "KeyId" => "b776a44b-df37-4438-9be4-a27494e4271a"
        ),
        Dict(
            "KeyArn" => "arn:aws:kms:us-east-2:111122223333:key/deaf6c9e-cf2c-46a6-bf6d-0b6d487cffbb",
            "KeyId" => "deaf6c9e-cf2c-46a6-bf6d-0b6d487cffbb"
        )
    ],
    "Truncated" => false
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListKeys)
"""
@inline list_keys(aws::AWSConfig=default_aws_config(); args...) = list_keys(aws, args)

@inline list_keys(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "ListKeys", args)

@inline list_keys(args) = list_keys(default_aws_config(), args)


"""
    using AWSSDK.KMS.list_resource_tags
    list_resource_tags([::AWSConfig], arguments::Dict)
    list_resource_tags([::AWSConfig]; KeyId=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "ListResourceTags", arguments::Dict)
    kms([::AWSConfig], "ListResourceTags", KeyId=, <keyword arguments>)

# ListResourceTags Operation

Returns a list of all tags for the specified customer master key (CMK).

You cannot perform this operation on a CMK in a different AWS account.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).


## `Limit = ::Int`
Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.

This value is optional. If you include a value, it must be between 1 and 50, inclusive. If you do not include a value, it defaults to 50.


## `Marker = ::String`
Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of `NextMarker` from the truncated response you just received.

Do not attempt to construct this value. Use only the value of `NextMarker` from the truncated response you just received.




# Returns

`ListResourceTagsResponse`

# Exceptions

`KMSInternalException`, `NotFoundException`, `InvalidArnException` or `InvalidMarkerException`.

# Example: To list tags for a customer master key (CMK)

The following example lists tags for a CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

Output:
```
Dict(
    "Tags" => [
        Dict(
            "TagKey" => "CostCenter",
            "TagValue" => "87654"
        ),
        Dict(
            "TagKey" => "CreatedBy",
            "TagValue" => "ExampleUser"
        ),
        Dict(
            "TagKey" => "Purpose",
            "TagValue" => "Test"
        )
    ],
    "Truncated" => false
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListResourceTags)
"""
@inline list_resource_tags(aws::AWSConfig=default_aws_config(); args...) = list_resource_tags(aws, args)

@inline list_resource_tags(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "ListResourceTags", args)

@inline list_resource_tags(args) = list_resource_tags(default_aws_config(), args)


"""
    using AWSSDK.KMS.list_retirable_grants
    list_retirable_grants([::AWSConfig], arguments::Dict)
    list_retirable_grants([::AWSConfig]; RetiringPrincipal=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "ListRetirableGrants", arguments::Dict)
    kms([::AWSConfig], "ListRetirableGrants", RetiringPrincipal=, <keyword arguments>)

# ListRetirableGrants Operation

Returns a list of all grants for which the grant's `RetiringPrincipal` matches the one specified.

A typical use is to list all grants that you are able to retire. To retire a grant, use [RetireGrant](@ref).

# Arguments

## `Limit = ::Int`
Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.

This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.


## `Marker = ::String`
Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of `NextMarker` from the truncated response you just received.


## `RetiringPrincipal = ::String` -- *Required*
The retiring principal for which to list grants.

To specify the retiring principal, use the [Amazon Resource Name (ARN)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and assumed role users. For examples of the ARN syntax for specifying a principal, see [AWS Identity and Access Management (IAM)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam) in the Example ARNs section of the *Amazon Web Services General Reference*.




# Returns

`ListGrantsResponse`

# Exceptions

`DependencyTimeoutException`, `InvalidMarkerException`, `InvalidArnException`, `NotFoundException` or `KMSInternalException`.

# Example: To list grants that the specified principal can retire

The following example lists the grants that the specified principal (identity) can retire.

Input:
```
[
    "RetiringPrincipal" => "arn:aws:iam::111122223333:role/ExampleRole"
]
```

Output:
```
Dict(
    "Grants" => [
        Dict(
            "CreationDate" => "2016-12-07T11:09:35-08:00",
            "GrantId" => "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60",
            "GranteePrincipal" => "arn:aws:iam::111122223333:role/ExampleRole",
            "IssuingAccount" => "arn:aws:iam::444455556666:root",
            "KeyId" => "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab",
            "Operations" => [
                "Decrypt",
                "Encrypt"
            ],
            "RetiringPrincipal" => "arn:aws:iam::111122223333:role/ExampleRole"
        )
    ],
    "Truncated" => false
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ListRetirableGrants)
"""
@inline list_retirable_grants(aws::AWSConfig=default_aws_config(); args...) = list_retirable_grants(aws, args)

@inline list_retirable_grants(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "ListRetirableGrants", args)

@inline list_retirable_grants(args) = list_retirable_grants(default_aws_config(), args)


"""
    using AWSSDK.KMS.put_key_policy
    put_key_policy([::AWSConfig], arguments::Dict)
    put_key_policy([::AWSConfig]; KeyId=, PolicyName=, Policy=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "PutKeyPolicy", arguments::Dict)
    kms([::AWSConfig], "PutKeyPolicy", KeyId=, PolicyName=, Policy=, <keyword arguments>)

# PutKeyPolicy Operation

Attaches a key policy to the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.

For more information about key policies, see [Key Policies](http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).


## `PolicyName = ::String` -- *Required*
The name of the key policy. The only valid value is `default`.


## `Policy = ::String` -- *Required*
The key policy to attach to the CMK.

The key policy must meet the following criteria:

*   If you don't set `BypassPolicyLockoutSafetyCheck` to true, the key policy must allow the principal that is making the `PutKeyPolicy` request to make a subsequent `PutKeyPolicy` request on the CMK. This reduces the risk that the CMK becomes unmanageable. For more information, refer to the scenario in the [Default Key Policy](http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section of the *AWS Key Management Service Developer Guide*.

*   Each statement in the key policy must contain one or more principals. The principals in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal (for example, an IAM user or role), you might need to enforce a delay before including the new principal in a key policy. The reason for this is that the new principal might not be immediately visible to AWS KMS. For more information, see [Changes that I make are not always immediately visible](http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency) in the *AWS Identity and Access Management User Guide*.

The key policy size limit is 32 kilobytes (32768 bytes).


## `BypassPolicyLockoutSafetyCheck = ::Bool`
A flag to indicate whether to bypass the key policy lockout safety check.

**Important**
> Setting this value to true increases the risk that the CMK becomes unmanageable. Do not set this value to true indiscriminately.

For more information, refer to the scenario in the [Default Key Policy](http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the *AWS Key Management Service Developer Guide*.

Use this parameter only when you intend to prevent the principal that is making the request from making a subsequent `PutKeyPolicy` request on the CMK.

The default value is false.




# Exceptions

`NotFoundException`, `InvalidArnException`, `MalformedPolicyDocumentException`, `DependencyTimeoutException`, `UnsupportedOperationException`, `KMSInternalException`, `LimitExceededException` or `KMSInvalidStateException`.

# Example: To attach a key policy to a customer master key (CMK)

The following example attaches a key policy to the specified CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab",
    "Policy" => "{
    "Version": "2012-10-17",
    "Id": "custom-policy-2016-12-07",
    "Statement": [
        {
            "Sid": "Enable IAM User Permissions",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::111122223333:root"
            },
            "Action": "kms:*",
            "Resource": "*"
        },
        {
            "Sid": "Allow access for Key Administrators",
            "Effect": "Allow",
            "Principal": {
                "AWS": [
                    "arn:aws:iam::111122223333:user/ExampleAdminUser",
                    "arn:aws:iam::111122223333:role/ExampleAdminRole"
                ]
            },
            "Action": [
                "kms:Create*",
                "kms:Describe*",
                "kms:Enable*",
                "kms:List*",
                "kms:Put*",
                "kms:Update*",
                "kms:Revoke*",
                "kms:Disable*",
                "kms:Get*",
                "kms:Delete*",
                "kms:ScheduleKeyDeletion",
                "kms:CancelKeyDeletion"
            ],
            "Resource": "*"
        },
        {
            "Sid": "Allow use of the key",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::111122223333:role/ExamplePowerUserRole"
            },
            "Action": [
                "kms:Encrypt",
                "kms:Decrypt",
                "kms:ReEncrypt*",
                "kms:GenerateDataKey*",
                "kms:DescribeKey"
            ],
            "Resource": "*"
        },
        {
            "Sid": "Allow attachment of persistent resources",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::111122223333:role/ExamplePowerUserRole"
            },
            "Action": [
                "kms:CreateGrant",
                "kms:ListGrants",
                "kms:RevokeGrant"
            ],
            "Resource": "*",
            "Condition": {
                "Bool": {
                    "kms:GrantIsForAWSResource": "true"
                }
            }
        }
    ]
}
",
    "PolicyName" => "default"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/PutKeyPolicy)
"""
@inline put_key_policy(aws::AWSConfig=default_aws_config(); args...) = put_key_policy(aws, args)

@inline put_key_policy(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "PutKeyPolicy", args)

@inline put_key_policy(args) = put_key_policy(default_aws_config(), args)


"""
    using AWSSDK.KMS.re_encrypt
    re_encrypt([::AWSConfig], arguments::Dict)
    re_encrypt([::AWSConfig]; CiphertextBlob=, DestinationKeyId=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "ReEncrypt", arguments::Dict)
    kms([::AWSConfig], "ReEncrypt", CiphertextBlob=, DestinationKeyId=, <keyword arguments>)

# ReEncrypt Operation

Encrypts data on the server side with a new customer master key (CMK) without exposing the plaintext of the data on the client side. The data is first decrypted and then reencrypted. You can also use this operation to change the encryption context of a ciphertext.

You can reencrypt data using CMKs in different AWS accounts.

Unlike other operations, `ReEncrypt` is authorized twice, once as `ReEncryptFrom` on the source CMK and once as `ReEncryptTo` on the destination CMK. We recommend that you include the `"kms:ReEncrypt*"` permission in your [key policies](http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html) to permit reencryption from or to the CMK. This permission is automatically included in the key policy when you create a CMK through the console. But you must include it manually when you create a CMK programmatically or when you set a key policy with the [PutKeyPolicy](@ref) operation.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `CiphertextBlob = blob` -- *Required*
Ciphertext of the data to reencrypt.


## `SourceEncryptionContext = ::Dict{String,String}`
Encryption context used to encrypt and decrypt the data specified in the `CiphertextBlob` parameter.


## `DestinationKeyId = ::String` -- *Required*
A unique identifier for the CMK that is used to reencrypt the data.

To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with `"alias/"`. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

*   Alias name: `alias/ExampleAlias`

*   Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref). To get the alias name and alias ARN, use [ListAliases](@ref).


## `DestinationEncryptionContext = ::Dict{String,String}`
Encryption context to use when the data is reencrypted.


## `GrantTokens = [::String, ...]`
A list of grant tokens.

For more information, see [Grant Tokens](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token) in the *AWS Key Management Service Developer Guide*.




# Returns

`ReEncryptResponse`

# Exceptions

`NotFoundException`, `DisabledException`, `InvalidCiphertextException`, `KeyUnavailableException`, `DependencyTimeoutException`, `InvalidKeyUsageException`, `InvalidGrantTokenException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To reencrypt data

The following example reencrypts data with the specified CMK.

Input:
```
[
    "CiphertextBlob" => "<binary data>",
    "DestinationKeyId" => "0987dcba-09fe-87dc-65ba-ab0987654321"
]
```

Output:
```
Dict(
    "CiphertextBlob" => "<binary data>",
    "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    "SourceKeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ReEncrypt)
"""
@inline re_encrypt(aws::AWSConfig=default_aws_config(); args...) = re_encrypt(aws, args)

@inline re_encrypt(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "ReEncrypt", args)

@inline re_encrypt(args) = re_encrypt(default_aws_config(), args)


"""
    using AWSSDK.KMS.retire_grant
    retire_grant([::AWSConfig], arguments::Dict)
    retire_grant([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "RetireGrant", arguments::Dict)
    kms([::AWSConfig], "RetireGrant", <keyword arguments>)

# RetireGrant Operation

Retires a grant. To clean up, you can retire a grant when you're done using it. You should revoke a grant when you intend to actively deny operations that depend on it. The following are permitted to call this API:

*   The AWS account (root user) under which the grant was created

*   The `RetiringPrincipal`, if present in the grant

*   The `GranteePrincipal`, if `RetireGrant` is an operation specified in the grant

You must identify the grant to retire by its grant token or by a combination of the grant ID and the Amazon Resource Name (ARN) of the customer master key (CMK). A grant token is a unique variable-length base64-encoded string. A grant ID is a 64 character unique identifier of a grant. The [CreateGrant](@ref) operation returns both.

# Arguments

## `GrantToken = ::String`
Token that identifies the grant to be retired.


## `KeyId = ::String`
The Amazon Resource Name (ARN) of the CMK associated with the grant.

For example: `arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab`


## `GrantId = ::String`
Unique identifier of the grant to retire. The grant ID is returned in the response to a `CreateGrant` operation.

*   Grant ID Example - 0123456789012345678901234567890123456789012345678901234567890123




# Exceptions

`InvalidArnException`, `InvalidGrantTokenException`, `InvalidGrantIdException`, `NotFoundException`, `DependencyTimeoutException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To retire a grant

The following example retires a grant.

Input:
```
[
    "GrantId" => "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60",
    "KeyId" => "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/RetireGrant)
"""
@inline retire_grant(aws::AWSConfig=default_aws_config(); args...) = retire_grant(aws, args)

@inline retire_grant(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "RetireGrant", args)

@inline retire_grant(args) = retire_grant(default_aws_config(), args)


"""
    using AWSSDK.KMS.revoke_grant
    revoke_grant([::AWSConfig], arguments::Dict)
    revoke_grant([::AWSConfig]; KeyId=, GrantId=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "RevokeGrant", arguments::Dict)
    kms([::AWSConfig], "RevokeGrant", KeyId=, GrantId=)

# RevokeGrant Operation

Revokes the specified grant for the specified customer master key (CMK). You can revoke a grant to actively deny operations that depend on it.

To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the `KeyId` parameter.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key associated with the grant.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).


## `GrantId = ::String` -- *Required*
Identifier of the grant to be revoked.




# Exceptions

`NotFoundException`, `DependencyTimeoutException`, `InvalidArnException`, `InvalidGrantIdException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To revoke a grant

The following example revokes a grant.

Input:
```
[
    "GrantId" => "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60",
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/RevokeGrant)
"""
@inline revoke_grant(aws::AWSConfig=default_aws_config(); args...) = revoke_grant(aws, args)

@inline revoke_grant(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "RevokeGrant", args)

@inline revoke_grant(args) = revoke_grant(default_aws_config(), args)


"""
    using AWSSDK.KMS.schedule_key_deletion
    schedule_key_deletion([::AWSConfig], arguments::Dict)
    schedule_key_deletion([::AWSConfig]; KeyId=, <keyword arguments>)

    using AWSCore.Services.kms
    kms([::AWSConfig], "ScheduleKeyDeletion", arguments::Dict)
    kms([::AWSConfig], "ScheduleKeyDeletion", KeyId=, <keyword arguments>)

# ScheduleKeyDeletion Operation

Schedules the deletion of a customer master key (CMK). You may provide a waiting period, specified in days, before deletion occurs. If you do not provide a waiting period, the default period of 30 days is used. When this operation is successful, the state of the CMK changes to `PendingDeletion`. Before the waiting period ends, you can use [CancelKeyDeletion](@ref) to cancel the deletion of the CMK. After the waiting period ends, AWS KMS deletes the CMK and all AWS KMS data associated with it, including all aliases that refer to it.

You cannot perform this operation on a CMK in a different AWS account.

**Important**
> Deleting a CMK is a destructive and potentially dangerous operation. When a CMK is deleted, all data that was encrypted under the CMK is rendered unrecoverable. To restrict the use of a CMK without deleting it, use [DisableKey](@ref).

For more information about scheduling a CMK for deletion, see [Deleting Customer Master Keys](http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html) in the *AWS Key Management Service Developer Guide*.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
The unique identifier of the customer master key (CMK) to delete.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).


## `PendingWindowInDays = ::Int`
The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the customer master key (CMK).

This value is optional. If you include a value, it must be between 7 and 30, inclusive. If you do not include a value, it defaults to 30.




# Returns

`ScheduleKeyDeletionResponse`

# Exceptions

`NotFoundException`, `InvalidArnException`, `DependencyTimeoutException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To schedule a customer master key (CMK) for deletion

The following example schedules the specified CMK for deletion.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab",
    "PendingWindowInDays" => 7
]
```

Output:
```
Dict(
    "DeletionDate" => "2016-12-17T16:00:00-08:00",
    "KeyId" => "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/ScheduleKeyDeletion)
"""
@inline schedule_key_deletion(aws::AWSConfig=default_aws_config(); args...) = schedule_key_deletion(aws, args)

@inline schedule_key_deletion(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "ScheduleKeyDeletion", args)

@inline schedule_key_deletion(args) = schedule_key_deletion(default_aws_config(), args)


"""
    using AWSSDK.KMS.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; KeyId=, Tags=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "TagResource", arguments::Dict)
    kms([::AWSConfig], "TagResource", KeyId=, Tags=)

# TagResource Operation

Adds or edits tags for a customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.

Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.

You can only use a tag key once for each CMK. If you use the tag key again, AWS KMS replaces the current tag value with the specified value.

For information about the rules that apply to tag keys and tag values, see [User-Defined Tag Restrictions](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html) in the *AWS Billing and Cost Management User Guide*.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the CMK you are tagging.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).


## `Tags = [[ ... ], ...]` -- *Required*
One or more tags. Each tag consists of a tag key and a tag value.
```
 Tags = [[
        "TagKey" => <required> ::String,
        "TagValue" => <required> ::String
    ], ...]
```



# Exceptions

`KMSInternalException`, `NotFoundException`, `InvalidArnException`, `KMSInvalidStateException`, `LimitExceededException` or `TagException`.

# Example: To tag a customer master key (CMK)

The following example tags a CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab",
    "Tags" => [
        [
            "TagKey" => "Purpose",
            "TagValue" => "Test"
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "TagResource", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.KMS.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; KeyId=, TagKeys=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "UntagResource", arguments::Dict)
    kms([::AWSConfig], "UntagResource", KeyId=, TagKeys=)

# UntagResource Operation

Removes the specified tags from the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.

To remove a tag, specify the tag key. To change the tag value of an existing tag key, use [TagResource](@ref).

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the CMK from which you are removing tags.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).


## `TagKeys = [::String, ...]` -- *Required*
One or more tag keys. Specify only the tag keys, not the tag values.




# Exceptions

`KMSInternalException`, `NotFoundException`, `InvalidArnException`, `KMSInvalidStateException` or `TagException`.

# Example: To remove tags from a customer master key (CMK)

The following example removes tags from a CMK.

Input:
```
[
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab",
    "TagKeys" => [
        "Purpose",
        "CostCenter"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "UntagResource", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.KMS.update_alias
    update_alias([::AWSConfig], arguments::Dict)
    update_alias([::AWSConfig]; AliasName=, TargetKeyId=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "UpdateAlias", arguments::Dict)
    kms([::AWSConfig], "UpdateAlias", AliasName=, TargetKeyId=)

# UpdateAlias Operation

Associates an existing alias with a different customer master key (CMK). Each CMK can have multiple aliases, but the aliases must be unique within the account and region. You cannot perform this operation on an alias in a different AWS account.

This operation works only on existing aliases. To change the alias of a CMK to a new value, use [CreateAlias](@ref) to create a new alias and [DeleteAlias](@ref) to delete the old alias.

Because an alias is not a property of a CMK, you can create, update, and delete the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the [DescribeKey](@ref) operation. To get the aliases of all CMKs in the account, use the [ListAliases](@ref) operation.

An alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). An alias must start with the word `alias` followed by a forward slash (`alias/`). The alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). Alias names cannot begin with `aws`; that alias name prefix is reserved by Amazon Web Services (AWS).

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `AliasName = ::String` -- *Required*
String that contains the name of the alias to be modified. The name must start with the word "alias" followed by a forward slash (alias/). Aliases that begin with "alias/aws" are reserved.


## `TargetKeyId = ::String` -- *Required*
Unique identifier of the customer master key to be mapped to the alias.

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).

To verify that the alias is mapped to the correct CMK, use [ListAliases](@ref).




# Exceptions

`DependencyTimeoutException`, `NotFoundException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To update an alias

The following example updates the specified alias to refer to the specified customer master key (CMK).

Input:
```
[
    "AliasName" => "alias/ExampleAlias",
    "TargetKeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdateAlias)
"""
@inline update_alias(aws::AWSConfig=default_aws_config(); args...) = update_alias(aws, args)

@inline update_alias(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "UpdateAlias", args)

@inline update_alias(args) = update_alias(default_aws_config(), args)


"""
    using AWSSDK.KMS.update_key_description
    update_key_description([::AWSConfig], arguments::Dict)
    update_key_description([::AWSConfig]; KeyId=, Description=)

    using AWSCore.Services.kms
    kms([::AWSConfig], "UpdateKeyDescription", arguments::Dict)
    kms([::AWSConfig], "UpdateKeyDescription", KeyId=, Description=)

# UpdateKeyDescription Operation

Updates the description of a customer master key (CMK). To see the description of a CMK, use [DescribeKey](@ref).

You cannot perform this operation on a CMK in a different AWS account.

The result of this operation varies with the key state of the CMK. For details, see [How Key State Affects Use of a Customer Master Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html) in the *AWS Key Management Service Developer Guide*.

# Arguments

## `KeyId = ::String` -- *Required*
A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

*   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`

*   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`

To get the key ID and key ARN for a CMK, use [ListKeys](@ref) or [DescribeKey](@ref).


## `Description = ::String` -- *Required*
New description for the CMK.




# Exceptions

`NotFoundException`, `InvalidArnException`, `DependencyTimeoutException`, `KMSInternalException` or `KMSInvalidStateException`.

# Example: To update the description of a customer master key (CMK)

The following example updates the description of the specified CMK.

Input:
```
[
    "Description" => "Example description that indicates the intended use of this CMK.",
    "KeyId" => "1234abcd-12ab-34cd-56ef-1234567890ab"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01/UpdateKeyDescription)
"""
@inline update_key_description(aws::AWSConfig=default_aws_config(); args...) = update_key_description(aws, args)

@inline update_key_description(aws::AWSConfig, args) = AWSCore.Services.kms(aws, "UpdateKeyDescription", args)

@inline update_key_description(args) = update_key_description(default_aws_config(), args)




end # module KMS


#==============================================================================#
# End of file
#==============================================================================#
