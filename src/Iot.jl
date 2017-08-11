#==============================================================================#
# Iot.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/iot-2015-05-28.normal.json
#==============================================================================#

__precompile__()

module Iot

using AWSCore


"""
    using AWSSDK.Iot
    Iot.accept_certificate_transfer([::AWSConfig], arguments::Dict)
    Iot.accept_certificate_transfer([::AWSConfig]; certificateId=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/accept-certificate-transfer/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/accept-certificate-transfer/{certificateId}", certificateId=, <keyword arguments>)

# AcceptCertificateTransfer Operation

Accepts a pending certificate transfer. The default state of the certificate is INACTIVE.

To check for pending certificate transfers, call [ListCertificates](@ref) to enumerate your certificates.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate.


## `setAsActive = ::Bool`
Specifies whether the certificate is active.




# Exceptions

`ResourceNotFoundException`, `TransferAlreadyCompletedException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/AcceptCertificateTransfer)
"""

@inline accept_certificate_transfer(aws::AWSConfig=default_aws_config(); args...) = accept_certificate_transfer(aws, args)

@inline accept_certificate_transfer(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/accept-certificate-transfer/{certificateId}", args)

@inline accept_certificate_transfer(args) = accept_certificate_transfer(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.attach_principal_policy([::AWSConfig], arguments::Dict)
    Iot.attach_principal_policy([::AWSConfig]; policyName=, x-amzn-iot-principal=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/principal-policies/{policyName}", arguments::Dict)
    iot([::AWSConfig], "PUT", "/principal-policies/{policyName}", policyName=, x-amzn-iot-principal=)

# AttachPrincipalPolicy Operation

Attaches the specified policy to the specified principal (certificate or other credential).

# Arguments

## `policyName = ::String` -- *Required*
The policy name.


## `x-amzn-iot-principal = ::String` -- *Required*
The principal, which can be a certificate ARN (as returned from the CreateCertificate operation) or an Amazon Cognito ID.




# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/AttachPrincipalPolicy)
"""

@inline attach_principal_policy(aws::AWSConfig=default_aws_config(); args...) = attach_principal_policy(aws, args)

@inline attach_principal_policy(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/principal-policies/{policyName}", args)

@inline attach_principal_policy(args) = attach_principal_policy(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.attach_thing_principal([::AWSConfig], arguments::Dict)
    Iot.attach_thing_principal([::AWSConfig]; thingName=, x-amzn-principal=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/things/{thingName}/principals", arguments::Dict)
    iot([::AWSConfig], "PUT", "/things/{thingName}/principals", thingName=, x-amzn-principal=)

# AttachThingPrincipal Operation

Attaches the specified principal to the specified thing.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing.


## `x-amzn-principal = ::String` -- *Required*
The principal, such as a certificate or other credential.




# Returns

`AttachThingPrincipalResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/AttachThingPrincipal)
"""

@inline attach_thing_principal(aws::AWSConfig=default_aws_config(); args...) = attach_thing_principal(aws, args)

@inline attach_thing_principal(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/things/{thingName}/principals", args)

@inline attach_thing_principal(args) = attach_thing_principal(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.cancel_certificate_transfer([::AWSConfig], arguments::Dict)
    Iot.cancel_certificate_transfer([::AWSConfig]; certificateId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/cancel-certificate-transfer/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/cancel-certificate-transfer/{certificateId}", certificateId=)

# CancelCertificateTransfer Operation

Cancels a pending transfer for the specified certificate.

**Note** Only the transfer source account can use this operation to cancel a transfer. (Transfer destinations can use [RejectCertificateTransfer](@ref) instead.) After transfer, AWS IoT returns the certificate to the source account in the INACTIVE state. After the destination account has accepted the transfer, the transfer cannot be cancelled.

After a certificate transfer is cancelled, the status of the certificate changes from PENDING_TRANSFER to INACTIVE.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate.




# Exceptions

`ResourceNotFoundException`, `TransferAlreadyCompletedException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CancelCertificateTransfer)
"""

@inline cancel_certificate_transfer(aws::AWSConfig=default_aws_config(); args...) = cancel_certificate_transfer(aws, args)

@inline cancel_certificate_transfer(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/cancel-certificate-transfer/{certificateId}", args)

@inline cancel_certificate_transfer(args) = cancel_certificate_transfer(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.create_certificate_from_csr([::AWSConfig], arguments::Dict)
    Iot.create_certificate_from_csr([::AWSConfig]; certificateSigningRequest=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/certificates", arguments::Dict)
    iot([::AWSConfig], "POST", "/certificates", certificateSigningRequest=, <keyword arguments>)

# CreateCertificateFromCsr Operation

Creates an X.509 certificate using the specified certificate signing request.

**Note:** The CSR must include a public key that is either an RSA key with a length of at least 2048 bits or an ECC key from NIST P-256 or NIST P-384 curves.

**Note:** Reusing the same certificate signing request (CSR) results in a distinct certificate.

You can create multiple certificates in a batch by creating a directory, copying multiple .csr files into that directory, and then specifying that directory on the command line. The following commands show how to create a batch of certificates given a batch of CSRs.

Assuming a set of CSRs are located inside of the directory my-csr-directory:

On Linux and OS X, the command is:

\$ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{}

This command lists all of the CSRs in my-csr-directory and pipes each CSR file name to the aws iot create-certificate-from-csr AWS CLI command to create a certificate for the corresponding CSR.

The aws iot create-certificate-from-csr part of the command can also be run in parallel to speed up the certificate creation process:

\$ ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{}

On Windows PowerShell, the command to create certificates for all CSRs in my-csr-directory is:

> ls -Name my-csr-directory | %{aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/\$_}

On a Windows command prompt, the command to create certificates for all CSRs in my-csr-directory is:

> forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr --certificate-signing-request file://@path"

# Arguments

## `certificateSigningRequest = ::String` -- *Required*
The certificate signing request (CSR).


## `setAsActive = ::Bool`
Specifies whether the certificate is active.




# Returns

`CreateCertificateFromCsrResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateCertificateFromCsr)
"""

@inline create_certificate_from_csr(aws::AWSConfig=default_aws_config(); args...) = create_certificate_from_csr(aws, args)

@inline create_certificate_from_csr(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/certificates", args)

@inline create_certificate_from_csr(args) = create_certificate_from_csr(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.create_keys_and_certificate([::AWSConfig], arguments::Dict)
    Iot.create_keys_and_certificate([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/keys-and-certificate", arguments::Dict)
    iot([::AWSConfig], "POST", "/keys-and-certificate", <keyword arguments>)

# CreateKeysAndCertificate Operation

Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued public key.

**Note** This is the only time AWS IoT issues the private key for this certificate, so it is important to keep it in a secure location.

# Arguments

## `setAsActive = ::Bool`
Specifies whether the certificate is active.




# Returns

`CreateKeysAndCertificateResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateKeysAndCertificate)
"""

@inline create_keys_and_certificate(aws::AWSConfig=default_aws_config(); args...) = create_keys_and_certificate(aws, args)

@inline create_keys_and_certificate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/keys-and-certificate", args)

@inline create_keys_and_certificate(args) = create_keys_and_certificate(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.create_policy([::AWSConfig], arguments::Dict)
    Iot.create_policy([::AWSConfig]; policyName=, policyDocument=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/policies/{policyName}", arguments::Dict)
    iot([::AWSConfig], "POST", "/policies/{policyName}", policyName=, policyDocument=)

# CreatePolicy Operation

Creates an AWS IoT policy.

The created policy is the default version for the policy. This operation creates a policy version with a version identifier of **1** and sets **1** as the policy's default version.

# Arguments

## `policyName = ::String` -- *Required*
The policy name.


## `policyDocument = ::String` -- *Required*
The JSON document that describes the policy. **policyDocument** must have a minimum length of 1, with a maximum length of 2048, excluding whitespace.




# Returns

`CreatePolicyResponse`

# Exceptions

`ResourceAlreadyExistsException`, `MalformedPolicyException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreatePolicy)
"""

@inline create_policy(aws::AWSConfig=default_aws_config(); args...) = create_policy(aws, args)

@inline create_policy(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/policies/{policyName}", args)

@inline create_policy(args) = create_policy(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.create_policy_version([::AWSConfig], arguments::Dict)
    Iot.create_policy_version([::AWSConfig]; policyName=, policyDocument=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/policies/{policyName}/version", arguments::Dict)
    iot([::AWSConfig], "POST", "/policies/{policyName}/version", policyName=, policyDocument=, <keyword arguments>)

# CreatePolicyVersion Operation

Creates a new version of the specified AWS IoT policy. To update a policy, create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must use [DeletePolicyVersion](@ref) to delete an existing version before you create a new one.

Optionally, you can set the new version as the policy's default version. The default version is the operative version (that is, the version that is in effect for the certificates to which the policy is attached).

# Arguments

## `policyName = ::String` -- *Required*
The policy name.


## `policyDocument = ::String` -- *Required*
The JSON document that describes the policy. Minimum length of 1\. Maximum length of 2048, excluding whitespaces


## `setAsDefault = ::Bool`
Specifies whether the policy version is set as the default. When this parameter is true, the new policy version becomes the operative version (that is, the version that is in effect for the certificates to which the policy is attached).




# Returns

`CreatePolicyVersionResponse`

# Exceptions

`ResourceNotFoundException`, `MalformedPolicyException`, `VersionsLimitExceededException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreatePolicyVersion)
"""

@inline create_policy_version(aws::AWSConfig=default_aws_config(); args...) = create_policy_version(aws, args)

@inline create_policy_version(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/policies/{policyName}/version", args)

@inline create_policy_version(args) = create_policy_version(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.create_thing([::AWSConfig], arguments::Dict)
    Iot.create_thing([::AWSConfig]; thingName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/things/{thingName}", arguments::Dict)
    iot([::AWSConfig], "POST", "/things/{thingName}", thingName=, <keyword arguments>)

# CreateThing Operation

Creates a thing record in the thing registry.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing to create.


## `thingTypeName = ::String`
The name of the thing type associated with the new thing.


## `attributePayload = [ ... ]`
The attribute payload, which consists of up to three name/value pairs in a JSON document. For example:

`{\\"attributes\\":{\\"string1\\":\\"string2\\"}}`
```
 attributePayload = [
        "attributes" =>  ::Dict{String,String},
        "merge" =>  ::Bool
    ]
```



# Returns

`CreateThingResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException`, `ResourceAlreadyExistsException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateThing)
"""

@inline create_thing(aws::AWSConfig=default_aws_config(); args...) = create_thing(aws, args)

@inline create_thing(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/things/{thingName}", args)

@inline create_thing(args) = create_thing(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.create_thing_type([::AWSConfig], arguments::Dict)
    Iot.create_thing_type([::AWSConfig]; thingTypeName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/thing-types/{thingTypeName}", arguments::Dict)
    iot([::AWSConfig], "POST", "/thing-types/{thingTypeName}", thingTypeName=, <keyword arguments>)

# CreateThingType Operation

Creates a new thing type.

# Arguments

## `thingTypeName = ::String` -- *Required*
The name of the thing type.


## `thingTypeProperties = [ ... ]`
The ThingTypeProperties for the thing type to create. It contains information about the new thing type including a description, and a list of searchable thing attribute names.
```
 thingTypeProperties = [
        "thingTypeDescription" =>  ::String,
        "searchableAttributes" =>  [::String, ...]
    ]
```



# Returns

`CreateThingTypeResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceAlreadyExistsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateThingType)
"""

@inline create_thing_type(aws::AWSConfig=default_aws_config(); args...) = create_thing_type(aws, args)

@inline create_thing_type(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/thing-types/{thingTypeName}", args)

@inline create_thing_type(args) = create_thing_type(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.create_topic_rule([::AWSConfig], arguments::Dict)
    Iot.create_topic_rule([::AWSConfig]; ruleName=, topicRulePayload=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/rules/{ruleName}", arguments::Dict)
    iot([::AWSConfig], "POST", "/rules/{ruleName}", ruleName=, topicRulePayload=)

# CreateTopicRule Operation

Creates a rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.

# Arguments

## `ruleName = ::String` -- *Required*
The name of the rule.


## `topicRulePayload = [ ... ]` -- *Required*
The rule payload.
```
 topicRulePayload = [
        "sql" => <required> ::String,
        "description" =>  ::String,
        "actions" => <required> [[
            "dynamoDB" =>  [
                "tableName" => <required> ::String,
                "roleArn" => <required> ::String,
                "operation" =>  ::String,
                "hashKeyField" => <required> ::String,
                "hashKeyValue" => <required> ::String,
                "hashKeyType" =>  "STRING" or "NUMBER",
                "rangeKeyField" =>  ::String,
                "rangeKeyValue" =>  ::String,
                "rangeKeyType" =>  "STRING" or "NUMBER",
                "payloadField" =>  ::String
            ],
            "dynamoDBv2" =>  [
                "roleArn" =>  ::String,
                "putItem" =>  ["tableName" => <required> ::String]
            ],
            "lambda" =>  ["functionArn" => <required> ::String],
            "sns" =>  [
                "targetArn" => <required> ::String,
                "roleArn" => <required> ::String,
                "messageFormat" =>  "RAW" or "JSON"
            ],
            "sqs" =>  [
                "roleArn" => <required> ::String,
                "queueUrl" => <required> ::String,
                "useBase64" =>  ::Bool
            ],
            "kinesis" =>  [
                "roleArn" => <required> ::String,
                "streamName" => <required> ::String,
                "partitionKey" =>  ::String
            ],
            "republish" =>  [
                "roleArn" => <required> ::String,
                "topic" => <required> ::String
            ],
            "s3" =>  [
                "roleArn" => <required> ::String,
                "bucketName" => <required> ::String,
                "key" => <required> ::String,
                "cannedAcl" =>  "private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control" or "log-delivery-write"
            ],
            "firehose" =>  [
                "roleArn" => <required> ::String,
                "deliveryStreamName" => <required> ::String,
                "separator" =>  ::String
            ],
            "cloudwatchMetric" =>  [
                "roleArn" => <required> ::String,
                "metricNamespace" => <required> ::String,
                "metricName" => <required> ::String,
                "metricValue" => <required> ::String,
                "metricUnit" => <required> ::String,
                "metricTimestamp" =>  ::String
            ],
            "cloudwatchAlarm" =>  [
                "roleArn" => <required> ::String,
                "alarmName" => <required> ::String,
                "stateReason" => <required> ::String,
                "stateValue" => <required> ::String
            ],
            "elasticsearch" =>  [
                "roleArn" => <required> ::String,
                "endpoint" => <required> ::String,
                "index" => <required> ::String,
                "type" => <required> ::String,
                "id" => <required> ::String
            ],
            "salesforce" =>  [
                "token" => <required> ::String,
                "url" => <required> ::String
            ]
        ], ...],
        "ruleDisabled" =>  ::Bool,
        "awsIotSqlVersion" =>  ::String
    ]
```



# Exceptions

`SqlParseException`, `InternalException`, `InvalidRequestException`, `ResourceAlreadyExistsException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateTopicRule)
"""

@inline create_topic_rule(aws::AWSConfig=default_aws_config(); args...) = create_topic_rule(aws, args)

@inline create_topic_rule(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/rules/{ruleName}", args)

@inline create_topic_rule(args) = create_topic_rule(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.delete_cacertificate([::AWSConfig], arguments::Dict)
    Iot.delete_cacertificate([::AWSConfig]; caCertificateId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/cacertificate/{caCertificateId}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/cacertificate/{caCertificateId}", caCertificateId=)

# DeleteCACertificate Operation

Deletes a registered CA certificate.

# Arguments

## `caCertificateId = ::String` -- *Required*
The ID of the certificate to delete.




# Returns

`DeleteCACertificateResponse`

# Exceptions

`InvalidRequestException`, `CertificateStateException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteCACertificate)
"""

@inline delete_cacertificate(aws::AWSConfig=default_aws_config(); args...) = delete_cacertificate(aws, args)

@inline delete_cacertificate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/cacertificate/{caCertificateId}", args)

@inline delete_cacertificate(args) = delete_cacertificate(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.delete_certificate([::AWSConfig], arguments::Dict)
    Iot.delete_certificate([::AWSConfig]; certificateId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/certificates/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/certificates/{certificateId}", certificateId=)

# DeleteCertificate Operation

Deletes the specified certificate.

A certificate cannot be deleted if it has a policy attached to it or if its status is set to ACTIVE. To delete a certificate, first use the [DetachPrincipalPolicy](@ref) API to detach all policies. Next, use the [UpdateCertificate](@ref) API to set the certificate to the INACTIVE status.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate.




# Exceptions

`CertificateStateException`, `DeleteConflictException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteCertificate)
"""

@inline delete_certificate(aws::AWSConfig=default_aws_config(); args...) = delete_certificate(aws, args)

@inline delete_certificate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/certificates/{certificateId}", args)

@inline delete_certificate(args) = delete_certificate(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.delete_policy([::AWSConfig], arguments::Dict)
    Iot.delete_policy([::AWSConfig]; policyName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/policies/{policyName}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/policies/{policyName}", policyName=)

# DeletePolicy Operation

Deletes the specified policy.

A policy cannot be deleted if it has non-default versions or it is attached to any certificate.

To delete a policy, use the DeletePolicyVersion API to delete all non-default versions of the policy; use the DetachPrincipalPolicy API to detach the policy from any certificate; and then use the DeletePolicy API to delete the policy.

When a policy is deleted using DeletePolicy, its default version is deleted with it.

# Arguments

## `policyName = ::String` -- *Required*
The name of the policy to delete.




# Exceptions

`DeleteConflictException`, `ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeletePolicy)
"""

@inline delete_policy(aws::AWSConfig=default_aws_config(); args...) = delete_policy(aws, args)

@inline delete_policy(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/policies/{policyName}", args)

@inline delete_policy(args) = delete_policy(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.delete_policy_version([::AWSConfig], arguments::Dict)
    Iot.delete_policy_version([::AWSConfig]; policyName=, policyVersionId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/policies/{policyName}/version/{policyVersionId}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/policies/{policyName}/version/{policyVersionId}", policyName=, policyVersionId=)

# DeletePolicyVersion Operation

Deletes the specified version of the specified policy. You cannot delete the default version of a policy using this API. To delete the default version of a policy, use [DeletePolicy](@ref). To find out which version of a policy is marked as the default version, use ListPolicyVersions.

# Arguments

## `policyName = ::String` -- *Required*
The name of the policy.


## `policyVersionId = ::String` -- *Required*
The policy version ID.




# Exceptions

`DeleteConflictException`, `ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeletePolicyVersion)
"""

@inline delete_policy_version(aws::AWSConfig=default_aws_config(); args...) = delete_policy_version(aws, args)

@inline delete_policy_version(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/policies/{policyName}/version/{policyVersionId}", args)

@inline delete_policy_version(args) = delete_policy_version(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.delete_registration_code([::AWSConfig], arguments::Dict)
    Iot.delete_registration_code([::AWSConfig]; )

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/registrationcode", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/registrationcode", )

# DeleteRegistrationCode Operation

Deletes a CA certificate registration code.

# Arguments



# Returns

`DeleteRegistrationCodeResponse`

# Exceptions

`ThrottlingException`, `ResourceNotFoundException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteRegistrationCode)
"""

@inline delete_registration_code(aws::AWSConfig=default_aws_config(); args...) = delete_registration_code(aws, args)

@inline delete_registration_code(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/registrationcode", args)

@inline delete_registration_code(args) = delete_registration_code(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.delete_thing([::AWSConfig], arguments::Dict)
    Iot.delete_thing([::AWSConfig]; thingName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/things/{thingName}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/things/{thingName}", thingName=, <keyword arguments>)

# DeleteThing Operation

Deletes the specified thing.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing to delete.


## `expectedVersion = ::Int`
The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the `DeleteThing` request is rejected with a `VersionConflictException`.




# Returns

`DeleteThingResponse`

# Exceptions

`ResourceNotFoundException`, `VersionConflictException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteThing)
"""

@inline delete_thing(aws::AWSConfig=default_aws_config(); args...) = delete_thing(aws, args)

@inline delete_thing(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/things/{thingName}", args)

@inline delete_thing(args) = delete_thing(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.delete_thing_type([::AWSConfig], arguments::Dict)
    Iot.delete_thing_type([::AWSConfig]; thingTypeName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/thing-types/{thingTypeName}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/thing-types/{thingTypeName}", thingTypeName=)

# DeleteThingType Operation

Deletes the specified thing type . You cannot delete a thing type if it has things associated with it. To delete a thing type, first mark it as deprecated by calling [DeprecateThingType](@ref), then remove any associated things by calling [UpdateThing](@ref) to change the thing type on any associated thing, and finally use [DeleteThingType](@ref) to delete the thing type.

# Arguments

## `thingTypeName = ::String` -- *Required*
The name of the thing type.




# Returns

`DeleteThingTypeResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteThingType)
"""

@inline delete_thing_type(aws::AWSConfig=default_aws_config(); args...) = delete_thing_type(aws, args)

@inline delete_thing_type(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/thing-types/{thingTypeName}", args)

@inline delete_thing_type(args) = delete_thing_type(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.delete_topic_rule([::AWSConfig], arguments::Dict)
    Iot.delete_topic_rule([::AWSConfig]; ruleName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/rules/{ruleName}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/rules/{ruleName}", ruleName=)

# DeleteTopicRule Operation

Deletes the specified rule.

# Arguments

## `ruleName = ::String` -- *Required*
The name of the rule.




# Exceptions

`InternalException`, `InvalidRequestException`, `ServiceUnavailableException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteTopicRule)
"""

@inline delete_topic_rule(aws::AWSConfig=default_aws_config(); args...) = delete_topic_rule(aws, args)

@inline delete_topic_rule(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/rules/{ruleName}", args)

@inline delete_topic_rule(args) = delete_topic_rule(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.deprecate_thing_type([::AWSConfig], arguments::Dict)
    Iot.deprecate_thing_type([::AWSConfig]; thingTypeName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/thing-types/{thingTypeName}/deprecate", arguments::Dict)
    iot([::AWSConfig], "POST", "/thing-types/{thingTypeName}/deprecate", thingTypeName=, <keyword arguments>)

# DeprecateThingType Operation

Deprecates a thing type. You can not associate new things with deprecated thing type.

# Arguments

## `thingTypeName = ::String` -- *Required*
The name of the thing type to deprecate.


## `undoDeprecate = ::Bool`
Whether to undeprecate a deprecated thing type. If **true**, the thing type will not be deprecated anymore and you can associate it with things.




# Returns

`DeprecateThingTypeResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeprecateThingType)
"""

@inline deprecate_thing_type(aws::AWSConfig=default_aws_config(); args...) = deprecate_thing_type(aws, args)

@inline deprecate_thing_type(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/thing-types/{thingTypeName}/deprecate", args)

@inline deprecate_thing_type(args) = deprecate_thing_type(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.describe_cacertificate([::AWSConfig], arguments::Dict)
    Iot.describe_cacertificate([::AWSConfig]; caCertificateId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/cacertificate/{caCertificateId}", arguments::Dict)
    iot([::AWSConfig], "GET", "/cacertificate/{caCertificateId}", caCertificateId=)

# DescribeCACertificate Operation

Describes a registered CA certificate.

# Arguments

## `caCertificateId = ::String` -- *Required*
The CA certificate identifier.




# Returns

`DescribeCACertificateResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeCACertificate)
"""

@inline describe_cacertificate(aws::AWSConfig=default_aws_config(); args...) = describe_cacertificate(aws, args)

@inline describe_cacertificate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/cacertificate/{caCertificateId}", args)

@inline describe_cacertificate(args) = describe_cacertificate(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.describe_certificate([::AWSConfig], arguments::Dict)
    Iot.describe_certificate([::AWSConfig]; certificateId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/certificates/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "GET", "/certificates/{certificateId}", certificateId=)

# DescribeCertificate Operation

Gets information about the specified certificate.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate.




# Returns

`DescribeCertificateResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeCertificate)
"""

@inline describe_certificate(aws::AWSConfig=default_aws_config(); args...) = describe_certificate(aws, args)

@inline describe_certificate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/certificates/{certificateId}", args)

@inline describe_certificate(args) = describe_certificate(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.describe_endpoint([::AWSConfig], arguments::Dict)
    Iot.describe_endpoint([::AWSConfig]; )

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/endpoint", arguments::Dict)
    iot([::AWSConfig], "GET", "/endpoint", )

# DescribeEndpoint Operation

Returns a unique endpoint specific to the AWS account making the call.

# Arguments



# Returns

`DescribeEndpointResponse`

# Exceptions

`InternalFailureException`, `UnauthorizedException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeEndpoint)
"""

@inline describe_endpoint(aws::AWSConfig=default_aws_config(); args...) = describe_endpoint(aws, args)

@inline describe_endpoint(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/endpoint", args)

@inline describe_endpoint(args) = describe_endpoint(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.describe_thing([::AWSConfig], arguments::Dict)
    Iot.describe_thing([::AWSConfig]; thingName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/things/{thingName}", arguments::Dict)
    iot([::AWSConfig], "GET", "/things/{thingName}", thingName=)

# DescribeThing Operation

Gets information about the specified thing.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing.




# Returns

`DescribeThingResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeThing)
"""

@inline describe_thing(aws::AWSConfig=default_aws_config(); args...) = describe_thing(aws, args)

@inline describe_thing(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/things/{thingName}", args)

@inline describe_thing(args) = describe_thing(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.describe_thing_type([::AWSConfig], arguments::Dict)
    Iot.describe_thing_type([::AWSConfig]; thingTypeName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/thing-types/{thingTypeName}", arguments::Dict)
    iot([::AWSConfig], "GET", "/thing-types/{thingTypeName}", thingTypeName=)

# DescribeThingType Operation

Gets information about the specified thing type.

# Arguments

## `thingTypeName = ::String` -- *Required*
The name of the thing type.




# Returns

`DescribeThingTypeResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeThingType)
"""

@inline describe_thing_type(aws::AWSConfig=default_aws_config(); args...) = describe_thing_type(aws, args)

@inline describe_thing_type(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/thing-types/{thingTypeName}", args)

@inline describe_thing_type(args) = describe_thing_type(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.detach_principal_policy([::AWSConfig], arguments::Dict)
    Iot.detach_principal_policy([::AWSConfig]; policyName=, x-amzn-iot-principal=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/principal-policies/{policyName}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/principal-policies/{policyName}", policyName=, x-amzn-iot-principal=)

# DetachPrincipalPolicy Operation

Removes the specified policy from the specified certificate.

# Arguments

## `policyName = ::String` -- *Required*
The name of the policy to detach.


## `x-amzn-iot-principal = ::String` -- *Required*
The principal.

If the principal is a certificate, specify the certificate ARN. If the principal is an Amazon Cognito identity, specify the identity ID.




# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DetachPrincipalPolicy)
"""

@inline detach_principal_policy(aws::AWSConfig=default_aws_config(); args...) = detach_principal_policy(aws, args)

@inline detach_principal_policy(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/principal-policies/{policyName}", args)

@inline detach_principal_policy(args) = detach_principal_policy(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.detach_thing_principal([::AWSConfig], arguments::Dict)
    Iot.detach_thing_principal([::AWSConfig]; thingName=, x-amzn-principal=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/things/{thingName}/principals", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/things/{thingName}/principals", thingName=, x-amzn-principal=)

# DetachThingPrincipal Operation

Detaches the specified principal from the specified thing.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing.


## `x-amzn-principal = ::String` -- *Required*
If the principal is a certificate, this value must be ARN of the certificate. If the principal is an Amazon Cognito identity, this value must be the ID of the Amazon Cognito identity.




# Returns

`DetachThingPrincipalResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DetachThingPrincipal)
"""

@inline detach_thing_principal(aws::AWSConfig=default_aws_config(); args...) = detach_thing_principal(aws, args)

@inline detach_thing_principal(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/things/{thingName}/principals", args)

@inline detach_thing_principal(args) = detach_thing_principal(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.disable_topic_rule([::AWSConfig], arguments::Dict)
    Iot.disable_topic_rule([::AWSConfig]; ruleName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/rules/{ruleName}/disable", arguments::Dict)
    iot([::AWSConfig], "POST", "/rules/{ruleName}/disable", ruleName=)

# DisableTopicRule Operation

Disables the specified rule.

# Arguments

## `ruleName = ::String` -- *Required*
The name of the rule to disable.




# Exceptions

`InternalException`, `InvalidRequestException`, `ServiceUnavailableException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DisableTopicRule)
"""

@inline disable_topic_rule(aws::AWSConfig=default_aws_config(); args...) = disable_topic_rule(aws, args)

@inline disable_topic_rule(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/rules/{ruleName}/disable", args)

@inline disable_topic_rule(args) = disable_topic_rule(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.enable_topic_rule([::AWSConfig], arguments::Dict)
    Iot.enable_topic_rule([::AWSConfig]; ruleName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/rules/{ruleName}/enable", arguments::Dict)
    iot([::AWSConfig], "POST", "/rules/{ruleName}/enable", ruleName=)

# EnableTopicRule Operation

Enables the specified rule.

# Arguments

## `ruleName = ::String` -- *Required*
The name of the topic rule to enable.




# Exceptions

`InternalException`, `InvalidRequestException`, `ServiceUnavailableException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/EnableTopicRule)
"""

@inline enable_topic_rule(aws::AWSConfig=default_aws_config(); args...) = enable_topic_rule(aws, args)

@inline enable_topic_rule(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/rules/{ruleName}/enable", args)

@inline enable_topic_rule(args) = enable_topic_rule(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.get_logging_options([::AWSConfig], arguments::Dict)
    Iot.get_logging_options([::AWSConfig]; )

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/loggingOptions", arguments::Dict)
    iot([::AWSConfig], "GET", "/loggingOptions", )

# GetLoggingOptions Operation

Gets the logging options.

# Arguments



# Returns

`GetLoggingOptionsResponse`

# Exceptions

`InternalException`, `InvalidRequestException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/GetLoggingOptions)
"""

@inline get_logging_options(aws::AWSConfig=default_aws_config(); args...) = get_logging_options(aws, args)

@inline get_logging_options(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/loggingOptions", args)

@inline get_logging_options(args) = get_logging_options(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.get_policy([::AWSConfig], arguments::Dict)
    Iot.get_policy([::AWSConfig]; policyName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/policies/{policyName}", arguments::Dict)
    iot([::AWSConfig], "GET", "/policies/{policyName}", policyName=)

# GetPolicy Operation

Gets information about the specified policy with the policy document of the default version.

# Arguments

## `policyName = ::String` -- *Required*
The name of the policy.




# Returns

`GetPolicyResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/GetPolicy)
"""

@inline get_policy(aws::AWSConfig=default_aws_config(); args...) = get_policy(aws, args)

@inline get_policy(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/policies/{policyName}", args)

@inline get_policy(args) = get_policy(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.get_policy_version([::AWSConfig], arguments::Dict)
    Iot.get_policy_version([::AWSConfig]; policyName=, policyVersionId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/policies/{policyName}/version/{policyVersionId}", arguments::Dict)
    iot([::AWSConfig], "GET", "/policies/{policyName}/version/{policyVersionId}", policyName=, policyVersionId=)

# GetPolicyVersion Operation

Gets information about the specified policy version.

# Arguments

## `policyName = ::String` -- *Required*
The name of the policy.


## `policyVersionId = ::String` -- *Required*
The policy version ID.




# Returns

`GetPolicyVersionResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/GetPolicyVersion)
"""

@inline get_policy_version(aws::AWSConfig=default_aws_config(); args...) = get_policy_version(aws, args)

@inline get_policy_version(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/policies/{policyName}/version/{policyVersionId}", args)

@inline get_policy_version(args) = get_policy_version(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.get_registration_code([::AWSConfig], arguments::Dict)
    Iot.get_registration_code([::AWSConfig]; )

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/registrationcode", arguments::Dict)
    iot([::AWSConfig], "GET", "/registrationcode", )

# GetRegistrationCode Operation

Gets a registration code used to register a CA certificate with AWS IoT.

# Arguments



# Returns

`GetRegistrationCodeResponse`

# Exceptions

`ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/GetRegistrationCode)
"""

@inline get_registration_code(aws::AWSConfig=default_aws_config(); args...) = get_registration_code(aws, args)

@inline get_registration_code(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/registrationcode", args)

@inline get_registration_code(args) = get_registration_code(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.get_topic_rule([::AWSConfig], arguments::Dict)
    Iot.get_topic_rule([::AWSConfig]; ruleName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/rules/{ruleName}", arguments::Dict)
    iot([::AWSConfig], "GET", "/rules/{ruleName}", ruleName=)

# GetTopicRule Operation

Gets information about the specified rule.

# Arguments

## `ruleName = ::String` -- *Required*
The name of the rule.




# Returns

`GetTopicRuleResponse`

# Exceptions

`InternalException`, `InvalidRequestException`, `ServiceUnavailableException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/GetTopicRule)
"""

@inline get_topic_rule(aws::AWSConfig=default_aws_config(); args...) = get_topic_rule(aws, args)

@inline get_topic_rule(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/rules/{ruleName}", args)

@inline get_topic_rule(args) = get_topic_rule(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_cacertificates([::AWSConfig], arguments::Dict)
    Iot.list_cacertificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/cacertificates", arguments::Dict)
    iot([::AWSConfig], "GET", "/cacertificates", <keyword arguments>)

# ListCACertificates Operation

Lists the CA certificates registered for your AWS account.

The results are paginated with a default page size of 25\. You can use the returned marker to retrieve additional results.

# Arguments

## `pageSize = ::Int`
The result page size.


## `marker = ::String`
The marker for the next set of results.


## `isAscendingOrder = ::Bool`
Determines the order of the results.




# Returns

`ListCACertificatesResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListCACertificates)
"""

@inline list_cacertificates(aws::AWSConfig=default_aws_config(); args...) = list_cacertificates(aws, args)

@inline list_cacertificates(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/cacertificates", args)

@inline list_cacertificates(args) = list_cacertificates(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_certificates([::AWSConfig], arguments::Dict)
    Iot.list_certificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/certificates", arguments::Dict)
    iot([::AWSConfig], "GET", "/certificates", <keyword arguments>)

# ListCertificates Operation

Lists the certificates registered in your AWS account.

The results are paginated with a default page size of 25\. You can use the returned marker to retrieve additional results.

# Arguments

## `pageSize = ::Int`
The result page size.


## `marker = ::String`
The marker for the next set of results.


## `isAscendingOrder = ::Bool`
Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.




# Returns

`ListCertificatesResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListCertificates)
"""

@inline list_certificates(aws::AWSConfig=default_aws_config(); args...) = list_certificates(aws, args)

@inline list_certificates(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/certificates", args)

@inline list_certificates(args) = list_certificates(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_certificates_by_ca([::AWSConfig], arguments::Dict)
    Iot.list_certificates_by_ca([::AWSConfig]; caCertificateId=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/certificates-by-ca/{caCertificateId}", arguments::Dict)
    iot([::AWSConfig], "GET", "/certificates-by-ca/{caCertificateId}", caCertificateId=, <keyword arguments>)

# ListCertificatesByCA Operation

List the device certificates signed by the specified CA certificate.

# Arguments

## `caCertificateId = ::String` -- *Required*
The ID of the CA certificate. This operation will list all registered device certificate that were signed by this CA certificate.


## `pageSize = ::Int`
The result page size.


## `marker = ::String`
The marker for the next set of results.


## `isAscendingOrder = ::Bool`
Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.




# Returns

`ListCertificatesByCAResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListCertificatesByCA)
"""

@inline list_certificates_by_ca(aws::AWSConfig=default_aws_config(); args...) = list_certificates_by_ca(aws, args)

@inline list_certificates_by_ca(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/certificates-by-ca/{caCertificateId}", args)

@inline list_certificates_by_ca(args) = list_certificates_by_ca(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_outgoing_certificates([::AWSConfig], arguments::Dict)
    Iot.list_outgoing_certificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/certificates-out-going", arguments::Dict)
    iot([::AWSConfig], "GET", "/certificates-out-going", <keyword arguments>)

# ListOutgoingCertificates Operation

Lists certificates that are being transfered but not yet accepted.

# Arguments

## `pageSize = ::Int`
The result page size.


## `marker = ::String`
The marker for the next set of results.


## `isAscendingOrder = ::Bool`
Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.




# Returns

`ListOutgoingCertificatesResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListOutgoingCertificates)
"""

@inline list_outgoing_certificates(aws::AWSConfig=default_aws_config(); args...) = list_outgoing_certificates(aws, args)

@inline list_outgoing_certificates(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/certificates-out-going", args)

@inline list_outgoing_certificates(args) = list_outgoing_certificates(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_policies([::AWSConfig], arguments::Dict)
    Iot.list_policies([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/policies", arguments::Dict)
    iot([::AWSConfig], "GET", "/policies", <keyword arguments>)

# ListPolicies Operation

Lists your policies.

# Arguments

## `marker = ::String`
The marker for the next set of results.


## `pageSize = ::Int`
The result page size.


## `isAscendingOrder = ::Bool`
Specifies the order for results. If true, the results are returned in ascending creation order.




# Returns

`ListPoliciesResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListPolicies)
"""

@inline list_policies(aws::AWSConfig=default_aws_config(); args...) = list_policies(aws, args)

@inline list_policies(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/policies", args)

@inline list_policies(args) = list_policies(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_policy_principals([::AWSConfig], arguments::Dict)
    Iot.list_policy_principals([::AWSConfig]; x-amzn-iot-policy=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/policy-principals", arguments::Dict)
    iot([::AWSConfig], "GET", "/policy-principals", x-amzn-iot-policy=, <keyword arguments>)

# ListPolicyPrincipals Operation

Lists the principals associated with the specified policy.

# Arguments

## `x-amzn-iot-policy = ::String` -- *Required*
The policy name.


## `marker = ::String`
The marker for the next set of results.


## `pageSize = ::Int`
The result page size.


## `isAscendingOrder = ::Bool`
Specifies the order for results. If true, the results are returned in ascending creation order.




# Returns

`ListPolicyPrincipalsResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListPolicyPrincipals)
"""

@inline list_policy_principals(aws::AWSConfig=default_aws_config(); args...) = list_policy_principals(aws, args)

@inline list_policy_principals(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/policy-principals", args)

@inline list_policy_principals(args) = list_policy_principals(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_policy_versions([::AWSConfig], arguments::Dict)
    Iot.list_policy_versions([::AWSConfig]; policyName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/policies/{policyName}/version", arguments::Dict)
    iot([::AWSConfig], "GET", "/policies/{policyName}/version", policyName=)

# ListPolicyVersions Operation

Lists the versions of the specified policy and identifies the default version.

# Arguments

## `policyName = ::String` -- *Required*
The policy name.




# Returns

`ListPolicyVersionsResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListPolicyVersions)
"""

@inline list_policy_versions(aws::AWSConfig=default_aws_config(); args...) = list_policy_versions(aws, args)

@inline list_policy_versions(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/policies/{policyName}/version", args)

@inline list_policy_versions(args) = list_policy_versions(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_principal_policies([::AWSConfig], arguments::Dict)
    Iot.list_principal_policies([::AWSConfig]; x-amzn-iot-principal=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/principal-policies", arguments::Dict)
    iot([::AWSConfig], "GET", "/principal-policies", x-amzn-iot-principal=, <keyword arguments>)

# ListPrincipalPolicies Operation

Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in [AmazonCognito Identity format](http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax).

# Arguments

## `x-amzn-iot-principal = ::String` -- *Required*
The principal.


## `marker = ::String`
The marker for the next set of results.


## `pageSize = ::Int`
The result page size.


## `isAscendingOrder = ::Bool`
Specifies the order for results. If true, results are returned in ascending creation order.




# Returns

`ListPrincipalPoliciesResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListPrincipalPolicies)
"""

@inline list_principal_policies(aws::AWSConfig=default_aws_config(); args...) = list_principal_policies(aws, args)

@inline list_principal_policies(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/principal-policies", args)

@inline list_principal_policies(args) = list_principal_policies(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_principal_things([::AWSConfig], arguments::Dict)
    Iot.list_principal_things([::AWSConfig]; x-amzn-principal=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/principals/things", arguments::Dict)
    iot([::AWSConfig], "GET", "/principals/things", x-amzn-principal=, <keyword arguments>)

# ListPrincipalThings Operation

Lists the things associated with the specified principal.

# Arguments

## `nextToken = ::String`
The token for the next set of results, or **null** if there are no additional results.


## `maxResults = ::Int`
The maximum number of results to return in this operation.


## `x-amzn-principal = ::String` -- *Required*
The principal.




# Returns

`ListPrincipalThingsResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListPrincipalThings)
"""

@inline list_principal_things(aws::AWSConfig=default_aws_config(); args...) = list_principal_things(aws, args)

@inline list_principal_things(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/principals/things", args)

@inline list_principal_things(args) = list_principal_things(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_thing_principals([::AWSConfig], arguments::Dict)
    Iot.list_thing_principals([::AWSConfig]; thingName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/things/{thingName}/principals", arguments::Dict)
    iot([::AWSConfig], "GET", "/things/{thingName}/principals", thingName=)

# ListThingPrincipals Operation

Lists the principals associated with the specified thing.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing.




# Returns

`ListThingPrincipalsResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListThingPrincipals)
"""

@inline list_thing_principals(aws::AWSConfig=default_aws_config(); args...) = list_thing_principals(aws, args)

@inline list_thing_principals(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/things/{thingName}/principals", args)

@inline list_thing_principals(args) = list_thing_principals(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_thing_types([::AWSConfig], arguments::Dict)
    Iot.list_thing_types([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/thing-types", arguments::Dict)
    iot([::AWSConfig], "GET", "/thing-types", <keyword arguments>)

# ListThingTypes Operation

Lists the existing thing types.

# Arguments

## `nextToken = ::String`
The token for the next set of results, or **null** if there are no additional results.


## `maxResults = ::Int`
The maximum number of results to return in this operation.


## `thingTypeName = ::String`
The name of the thing type.




# Returns

`ListThingTypesResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListThingTypes)
"""

@inline list_thing_types(aws::AWSConfig=default_aws_config(); args...) = list_thing_types(aws, args)

@inline list_thing_types(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/thing-types", args)

@inline list_thing_types(args) = list_thing_types(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_things([::AWSConfig], arguments::Dict)
    Iot.list_things([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/things", arguments::Dict)
    iot([::AWSConfig], "GET", "/things", <keyword arguments>)

# ListThings Operation

Lists your things. Use the **attributeName** and **attributeValue** parameters to filter your things. For example, calling `ListThings` with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute **Color** with the value **Red**.

# Arguments

## `nextToken = ::String`
The token for the next set of results, or **null** if there are no additional results.


## `maxResults = ::Int`
The maximum number of results to return in this operation.


## `attributeName = ::String`
The attribute name used to search for things.


## `attributeValue = ::String`
The attribute value used to search for things.


## `thingTypeName = ::String`
The name of the thing type used to search for things.




# Returns

`ListThingsResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListThings)
"""

@inline list_things(aws::AWSConfig=default_aws_config(); args...) = list_things(aws, args)

@inline list_things(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/things", args)

@inline list_things(args) = list_things(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.list_topic_rules([::AWSConfig], arguments::Dict)
    Iot.list_topic_rules([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/rules", arguments::Dict)
    iot([::AWSConfig], "GET", "/rules", <keyword arguments>)

# ListTopicRules Operation

Lists the rules for the specific topic.

# Arguments

## `topic = ::String`
The topic.


## `maxResults = ::Int`
The maximum number of results to return.


## `nextToken = ::String`
A token used to retrieve the next value.


## `ruleDisabled = ::Bool`
Specifies whether the rule is disabled.




# Returns

`ListTopicRulesResponse`

# Exceptions

`InternalException`, `InvalidRequestException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListTopicRules)
"""

@inline list_topic_rules(aws::AWSConfig=default_aws_config(); args...) = list_topic_rules(aws, args)

@inline list_topic_rules(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/rules", args)

@inline list_topic_rules(args) = list_topic_rules(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.register_cacertificate([::AWSConfig], arguments::Dict)
    Iot.register_cacertificate([::AWSConfig]; caCertificate=, verificationCertificate=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/cacertificate", arguments::Dict)
    iot([::AWSConfig], "POST", "/cacertificate", caCertificate=, verificationCertificate=, <keyword arguments>)

# RegisterCACertificate Operation

Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.

# Arguments

## `caCertificate = ::String` -- *Required*
The CA certificate.


## `verificationCertificate = ::String` -- *Required*
The private key verification certificate.


## `setAsActive = ::Bool`
A boolean value that specifies if the CA certificate is set to active.


## `allowAutoRegistration = ::Bool`
Allows this CA certificate to be used for auto registration of device certificates.




# Returns

`RegisterCACertificateResponse`

# Exceptions

`ResourceAlreadyExistsException`, `RegistrationCodeValidationException`, `InvalidRequestException`, `CertificateValidationException`, `ThrottlingException`, `LimitExceededException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/RegisterCACertificate)
"""

@inline register_cacertificate(aws::AWSConfig=default_aws_config(); args...) = register_cacertificate(aws, args)

@inline register_cacertificate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/cacertificate", args)

@inline register_cacertificate(args) = register_cacertificate(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.register_certificate([::AWSConfig], arguments::Dict)
    Iot.register_certificate([::AWSConfig]; certificatePem=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/certificate/register", arguments::Dict)
    iot([::AWSConfig], "POST", "/certificate/register", certificatePem=, <keyword arguments>)

# RegisterCertificate Operation

Registers a device certificate with AWS IoT. If you have more than one CA certificate that has the same subject field, you must specify the CA certificate that was used to sign the device certificate being registered.

# Arguments

## `certificatePem = ::String` -- *Required*
The certificate data, in PEM format.


## `caCertificatePem = ::String`
The CA certificate used to sign the device certificate being registered.


## `setAsActive = ::Bool`
A boolean value that specifies if the CA certificate is set to active.


## `status = "ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE" or "PENDING_ACTIVATION"`
The status of the register certificate request.




# Returns

`RegisterCertificateResponse`

# Exceptions

`ResourceAlreadyExistsException`, `InvalidRequestException`, `CertificateValidationException`, `CertificateStateException`, `CertificateConflictException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/RegisterCertificate)
"""

@inline register_certificate(aws::AWSConfig=default_aws_config(); args...) = register_certificate(aws, args)

@inline register_certificate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/certificate/register", args)

@inline register_certificate(args) = register_certificate(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.reject_certificate_transfer([::AWSConfig], arguments::Dict)
    Iot.reject_certificate_transfer([::AWSConfig]; certificateId=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/reject-certificate-transfer/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/reject-certificate-transfer/{certificateId}", certificateId=, <keyword arguments>)

# RejectCertificateTransfer Operation

Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from **PENDING_TRANSFER** to **INACTIVE**.

To check for pending certificate transfers, call [ListCertificates](@ref) to enumerate your certificates.

This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source's account in the INACTIVE state.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate.


## `rejectReason = ::String`
The reason the certificate transfer was rejected.




# Exceptions

`ResourceNotFoundException`, `TransferAlreadyCompletedException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/RejectCertificateTransfer)
"""

@inline reject_certificate_transfer(aws::AWSConfig=default_aws_config(); args...) = reject_certificate_transfer(aws, args)

@inline reject_certificate_transfer(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/reject-certificate-transfer/{certificateId}", args)

@inline reject_certificate_transfer(args) = reject_certificate_transfer(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.replace_topic_rule([::AWSConfig], arguments::Dict)
    Iot.replace_topic_rule([::AWSConfig]; ruleName=, topicRulePayload=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/rules/{ruleName}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/rules/{ruleName}", ruleName=, topicRulePayload=)

# ReplaceTopicRule Operation

Replaces the specified rule. You must specify all parameters for the new rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.

# Arguments

## `ruleName = ::String` -- *Required*
The name of the rule.


## `topicRulePayload = [ ... ]` -- *Required*
The rule payload.
```
 topicRulePayload = [
        "sql" => <required> ::String,
        "description" =>  ::String,
        "actions" => <required> [[
            "dynamoDB" =>  [
                "tableName" => <required> ::String,
                "roleArn" => <required> ::String,
                "operation" =>  ::String,
                "hashKeyField" => <required> ::String,
                "hashKeyValue" => <required> ::String,
                "hashKeyType" =>  "STRING" or "NUMBER",
                "rangeKeyField" =>  ::String,
                "rangeKeyValue" =>  ::String,
                "rangeKeyType" =>  "STRING" or "NUMBER",
                "payloadField" =>  ::String
            ],
            "dynamoDBv2" =>  [
                "roleArn" =>  ::String,
                "putItem" =>  ["tableName" => <required> ::String]
            ],
            "lambda" =>  ["functionArn" => <required> ::String],
            "sns" =>  [
                "targetArn" => <required> ::String,
                "roleArn" => <required> ::String,
                "messageFormat" =>  "RAW" or "JSON"
            ],
            "sqs" =>  [
                "roleArn" => <required> ::String,
                "queueUrl" => <required> ::String,
                "useBase64" =>  ::Bool
            ],
            "kinesis" =>  [
                "roleArn" => <required> ::String,
                "streamName" => <required> ::String,
                "partitionKey" =>  ::String
            ],
            "republish" =>  [
                "roleArn" => <required> ::String,
                "topic" => <required> ::String
            ],
            "s3" =>  [
                "roleArn" => <required> ::String,
                "bucketName" => <required> ::String,
                "key" => <required> ::String,
                "cannedAcl" =>  "private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control" or "log-delivery-write"
            ],
            "firehose" =>  [
                "roleArn" => <required> ::String,
                "deliveryStreamName" => <required> ::String,
                "separator" =>  ::String
            ],
            "cloudwatchMetric" =>  [
                "roleArn" => <required> ::String,
                "metricNamespace" => <required> ::String,
                "metricName" => <required> ::String,
                "metricValue" => <required> ::String,
                "metricUnit" => <required> ::String,
                "metricTimestamp" =>  ::String
            ],
            "cloudwatchAlarm" =>  [
                "roleArn" => <required> ::String,
                "alarmName" => <required> ::String,
                "stateReason" => <required> ::String,
                "stateValue" => <required> ::String
            ],
            "elasticsearch" =>  [
                "roleArn" => <required> ::String,
                "endpoint" => <required> ::String,
                "index" => <required> ::String,
                "type" => <required> ::String,
                "id" => <required> ::String
            ],
            "salesforce" =>  [
                "token" => <required> ::String,
                "url" => <required> ::String
            ]
        ], ...],
        "ruleDisabled" =>  ::Bool,
        "awsIotSqlVersion" =>  ::String
    ]
```



# Exceptions

`SqlParseException`, `InternalException`, `InvalidRequestException`, `ServiceUnavailableException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ReplaceTopicRule)
"""

@inline replace_topic_rule(aws::AWSConfig=default_aws_config(); args...) = replace_topic_rule(aws, args)

@inline replace_topic_rule(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/rules/{ruleName}", args)

@inline replace_topic_rule(args) = replace_topic_rule(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.set_default_policy_version([::AWSConfig], arguments::Dict)
    Iot.set_default_policy_version([::AWSConfig]; policyName=, policyVersionId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/policies/{policyName}/version/{policyVersionId}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/policies/{policyName}/version/{policyVersionId}", policyName=, policyVersionId=)

# SetDefaultPolicyVersion Operation

Sets the specified version of the specified policy as the policy's default (operative) version. This action affects all certificates to which the policy is attached. To list the principals the policy is attached to, use the ListPrincipalPolicy API.

# Arguments

## `policyName = ::String` -- *Required*
The policy name.


## `policyVersionId = ::String` -- *Required*
The policy version ID.




# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/SetDefaultPolicyVersion)
"""

@inline set_default_policy_version(aws::AWSConfig=default_aws_config(); args...) = set_default_policy_version(aws, args)

@inline set_default_policy_version(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/policies/{policyName}/version/{policyVersionId}", args)

@inline set_default_policy_version(args) = set_default_policy_version(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.set_logging_options([::AWSConfig], arguments::Dict)
    Iot.set_logging_options([::AWSConfig]; loggingOptionsPayload=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/loggingOptions", arguments::Dict)
    iot([::AWSConfig], "POST", "/loggingOptions", loggingOptionsPayload=)

# SetLoggingOptions Operation

Sets the logging options.

# Arguments

## `loggingOptionsPayload = [ ... ]` -- *Required*
The logging options payload.
```
 loggingOptionsPayload = [
        "roleArn" => <required> ::String,
        "logLevel" =>  "DEBUG", "INFO", "ERROR", "WARN" or "DISABLED"
    ]
```



# Exceptions

`InternalException`, `InvalidRequestException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/SetLoggingOptions)
"""

@inline set_logging_options(aws::AWSConfig=default_aws_config(); args...) = set_logging_options(aws, args)

@inline set_logging_options(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/loggingOptions", args)

@inline set_logging_options(args) = set_logging_options(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.transfer_certificate([::AWSConfig], arguments::Dict)
    Iot.transfer_certificate([::AWSConfig]; certificateId=, targetAwsAccount=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/transfer-certificate/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/transfer-certificate/{certificateId}", certificateId=, targetAwsAccount=, <keyword arguments>)

# TransferCertificate Operation

Transfers the specified certificate to the specified AWS account.

You can cancel the transfer until it is acknowledged by the recipient.

No notification is sent to the transfer destination's account. It is up to the caller to notify the transfer target.

The certificate being transferred must not be in the ACTIVE state. You can use the UpdateCertificate API to deactivate it.

The certificate must not have any policies attached to it. You can use the DetachPrincipalPolicy API to detach them.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate.


## `targetAwsAccount = ::String` -- *Required*
The AWS account.


## `transferMessage = ::String`
The transfer message.




# Returns

`TransferCertificateResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `CertificateStateException`, `TransferConflictException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/TransferCertificate)
"""

@inline transfer_certificate(aws::AWSConfig=default_aws_config(); args...) = transfer_certificate(aws, args)

@inline transfer_certificate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/transfer-certificate/{certificateId}", args)

@inline transfer_certificate(args) = transfer_certificate(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.update_cacertificate([::AWSConfig], arguments::Dict)
    Iot.update_cacertificate([::AWSConfig]; caCertificateId=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/cacertificate/{caCertificateId}", arguments::Dict)
    iot([::AWSConfig], "PUT", "/cacertificate/{caCertificateId}", caCertificateId=, <keyword arguments>)

# UpdateCACertificate Operation

Updates a registered CA certificate.

# Arguments

## `caCertificateId = ::String` -- *Required*
The CA certificate identifier.


## `newStatus = "ACTIVE" or "INACTIVE"`
The updated status of the CA certificate.

**Note:** The status value REGISTER_INACTIVE is deprecated and should not be used.


## `newAutoRegistrationStatus = "ENABLE" or "DISABLE"`
The new value for the auto registration status. Valid values are: "ENABLE" or "DISABLE".




# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateCACertificate)
"""

@inline update_cacertificate(aws::AWSConfig=default_aws_config(); args...) = update_cacertificate(aws, args)

@inline update_cacertificate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/cacertificate/{caCertificateId}", args)

@inline update_cacertificate(args) = update_cacertificate(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.update_certificate([::AWSConfig], arguments::Dict)
    Iot.update_certificate([::AWSConfig]; certificateId=, newStatus=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/certificates/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "PUT", "/certificates/{certificateId}", certificateId=, newStatus=)

# UpdateCertificate Operation

Updates the status of the specified certificate. This operation is idempotent.

Moving a certificate from the ACTIVE state (including REVOKED) will not disconnect currently connected devices, but these devices will be unable to reconnect.

The ACTIVE state is required to authenticate devices connecting to AWS IoT using a certificate.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate.


## `newStatus = "ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE" or "PENDING_ACTIVATION"` -- *Required*
The new status.

**Note:** Setting the status to PENDING_TRANSFER will result in an exception being thrown. PENDING_TRANSFER is a status used internally by AWS IoT. It is not intended for developer use.

**Note:** The status value REGISTER_INACTIVE is deprecated and should not be used.




# Exceptions

`ResourceNotFoundException`, `CertificateStateException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateCertificate)
"""

@inline update_certificate(aws::AWSConfig=default_aws_config(); args...) = update_certificate(aws, args)

@inline update_certificate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/certificates/{certificateId}", args)

@inline update_certificate(args) = update_certificate(default_aws_config(), args)


"""
    using AWSSDK.Iot
    Iot.update_thing([::AWSConfig], arguments::Dict)
    Iot.update_thing([::AWSConfig]; thingName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/things/{thingName}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/things/{thingName}", thingName=, <keyword arguments>)

# UpdateThing Operation

Updates the data for a thing.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing to update.


## `thingTypeName = ::String`
The name of the thing type.


## `attributePayload = [ ... ]`
A list of thing attributes, a JSON string containing name-value pairs. For example:

`{\\"attributes\\":{\\"name1\\":\\"value2\\"}}`

This data is used to add new attributes or update existing attributes.
```
 attributePayload = [
        "attributes" =>  ::Dict{String,String},
        "merge" =>  ::Bool
    ]
```

## `expectedVersion = ::Int`
The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the `UpdateThing` request is rejected with a `VersionConflictException`.


## `removeThingType = ::Bool`
Remove a thing type association. If **true**, the assocation is removed.




# Returns

`UpdateThingResponse`

# Exceptions

`InvalidRequestException`, `VersionConflictException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateThing)
"""

@inline update_thing(aws::AWSConfig=default_aws_config(); args...) = update_thing(aws, args)

@inline update_thing(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/things/{thingName}", args)

@inline update_thing(args) = update_thing(default_aws_config(), args)




end # module Iot


#==============================================================================#
# End of file
#==============================================================================#
