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
    using AWSSDK.Iot.accept_certificate_transfer
    accept_certificate_transfer([::AWSConfig], arguments::Dict)
    accept_certificate_transfer([::AWSConfig]; certificateId=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/accept-certificate-transfer/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/accept-certificate-transfer/{certificateId}", certificateId=, <keyword arguments>)

# AcceptCertificateTransfer Operation

Accepts a pending certificate transfer. The default state of the certificate is INACTIVE.

To check for pending certificate transfers, call [ListCertificates](@ref) to enumerate your certificates.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)


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
    using AWSSDK.Iot.add_thing_to_thing_group
    add_thing_to_thing_group([::AWSConfig], arguments::Dict)
    add_thing_to_thing_group([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/thing-groups/addThingToThingGroup", arguments::Dict)
    iot([::AWSConfig], "PUT", "/thing-groups/addThingToThingGroup", <keyword arguments>)

# AddThingToThingGroup Operation

Adds a thing to a thing group.

# Arguments

## `thingGroupName = ::String`
The name of the group to which you are adding a thing.


## `thingGroupArn = ::String`
The ARN of the group to which you are adding a thing.


## `thingName = ::String`
The name of the thing to add to a group.


## `thingArn = ::String`
The ARN of the thing to add to a group.




# Returns

`AddThingToThingGroupResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/AddThingToThingGroup)
"""
@inline add_thing_to_thing_group(aws::AWSConfig=default_aws_config(); args...) = add_thing_to_thing_group(aws, args)

@inline add_thing_to_thing_group(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/thing-groups/addThingToThingGroup", args)

@inline add_thing_to_thing_group(args) = add_thing_to_thing_group(default_aws_config(), args)


"""
    using AWSSDK.Iot.associate_targets_with_job
    associate_targets_with_job([::AWSConfig], arguments::Dict)
    associate_targets_with_job([::AWSConfig]; targets=, jobId=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/jobs/{jobId}/targets", arguments::Dict)
    iot([::AWSConfig], "POST", "/jobs/{jobId}/targets", targets=, jobId=, <keyword arguments>)

# AssociateTargetsWithJob Operation

Associates a group with a continuous job. The following criteria must be met:

*   The job must have been created with the `targetSelection` field set to "CONTINUOUS".

*   The job status must currently be "IN_PROGRESS".

*   The total number of targets associated with a job must not exceed 100.

# Arguments

## `targets = [::String, ...]` -- *Required*
A list of thing group ARNs that define the targets of the job.


## `jobId = ::String` -- *Required*
The unique identifier you assigned to this job when it was created.


## `comment = ::String`
An optional comment string describing why the job was associated with the targets.




# Returns

`AssociateTargetsWithJobResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `LimitExceededException`, `ThrottlingException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/AssociateTargetsWithJob)
"""
@inline associate_targets_with_job(aws::AWSConfig=default_aws_config(); args...) = associate_targets_with_job(aws, args)

@inline associate_targets_with_job(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/jobs/{jobId}/targets", args)

@inline associate_targets_with_job(args) = associate_targets_with_job(default_aws_config(), args)


"""
    using AWSSDK.Iot.attach_policy
    attach_policy([::AWSConfig], arguments::Dict)
    attach_policy([::AWSConfig]; policyName=, target=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/target-policies/{policyName}", arguments::Dict)
    iot([::AWSConfig], "PUT", "/target-policies/{policyName}", policyName=, target=)

# AttachPolicy Operation

Attaches a policy to the specified target.

# Arguments

## `policyName = ::String` -- *Required*
The name of the policy to attach.


## `target = ::String` -- *Required*
The identity to which the policy is attached.




# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/AttachPolicy)
"""
@inline attach_policy(aws::AWSConfig=default_aws_config(); args...) = attach_policy(aws, args)

@inline attach_policy(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/target-policies/{policyName}", args)

@inline attach_policy(args) = attach_policy(default_aws_config(), args)


"""
    using AWSSDK.Iot.attach_principal_policy
    attach_principal_policy([::AWSConfig], arguments::Dict)
    attach_principal_policy([::AWSConfig]; policyName=, *header:* x-amzn-iot-principal=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/principal-policies/{policyName}", arguments::Dict)
    iot([::AWSConfig], "PUT", "/principal-policies/{policyName}", policyName=, *header:* x-amzn-iot-principal=)

# AttachPrincipalPolicy Operation

Attaches the specified policy to the specified principal (certificate or other credential).

**Note:** This API is deprecated. Please use [AttachPolicy](@ref) instead.

# Arguments

## `policyName = ::String` -- *Required*
The policy name.


## `*header:* x-amzn-iot-principal = ::String` -- *Required*
The principal, which can be a certificate ARN (as returned from the CreateCertificate operation) or an Amazon Cognito ID.




# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/AttachPrincipalPolicy)
"""
@inline attach_principal_policy(aws::AWSConfig=default_aws_config(); args...) = attach_principal_policy(aws, args)

@inline attach_principal_policy(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/principal-policies/{policyName}", args)

@inline attach_principal_policy(args) = attach_principal_policy(default_aws_config(), args)


"""
    using AWSSDK.Iot.attach_security_profile
    attach_security_profile([::AWSConfig], arguments::Dict)
    attach_security_profile([::AWSConfig]; securityProfileName=, securityProfileTargetArn=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/security-profiles/{securityProfileName}/targets", arguments::Dict)
    iot([::AWSConfig], "PUT", "/security-profiles/{securityProfileName}/targets", securityProfileName=, securityProfileTargetArn=)

# AttachSecurityProfile Operation

Associates a Device Defender security profile with a thing group or with this account. Each thing group or account can have up to five security profiles associated with it.

# Arguments

## `securityProfileName = ::String` -- *Required*
The security profile that is attached.


## `securityProfileTargetArn = ::String` -- *Required*
The ARN of the target (thing group) to which the security profile is attached.




# Returns

`AttachSecurityProfileResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `LimitExceededException`, `VersionConflictException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/AttachSecurityProfile)
"""
@inline attach_security_profile(aws::AWSConfig=default_aws_config(); args...) = attach_security_profile(aws, args)

@inline attach_security_profile(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/security-profiles/{securityProfileName}/targets", args)

@inline attach_security_profile(args) = attach_security_profile(default_aws_config(), args)


"""
    using AWSSDK.Iot.attach_thing_principal
    attach_thing_principal([::AWSConfig], arguments::Dict)
    attach_thing_principal([::AWSConfig]; thingName=, *header:* x-amzn-principal=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/things/{thingName}/principals", arguments::Dict)
    iot([::AWSConfig], "PUT", "/things/{thingName}/principals", thingName=, *header:* x-amzn-principal=)

# AttachThingPrincipal Operation

Attaches the specified principal to the specified thing.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing.


## `*header:* x-amzn-principal = ::String` -- *Required*
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
    using AWSSDK.Iot.cancel_audit_task
    cancel_audit_task([::AWSConfig], arguments::Dict)
    cancel_audit_task([::AWSConfig]; taskId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/audit/tasks/{taskId}/cancel", arguments::Dict)
    iot([::AWSConfig], "PUT", "/audit/tasks/{taskId}/cancel", taskId=)

# CancelAuditTask Operation

Cancels an audit that is in progress. The audit can be either scheduled or on-demand. If the audit is not in progress, an "InvalidRequestException" occurs.

# Arguments

## `taskId = ::String` -- *Required*
The ID of the audit you want to cancel. You can only cancel an audit that is "IN_PROGRESS".




# Returns

`CancelAuditTaskResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CancelAuditTask)
"""
@inline cancel_audit_task(aws::AWSConfig=default_aws_config(); args...) = cancel_audit_task(aws, args)

@inline cancel_audit_task(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/audit/tasks/{taskId}/cancel", args)

@inline cancel_audit_task(args) = cancel_audit_task(default_aws_config(), args)


"""
    using AWSSDK.Iot.cancel_certificate_transfer
    cancel_certificate_transfer([::AWSConfig], arguments::Dict)
    cancel_certificate_transfer([::AWSConfig]; certificateId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/cancel-certificate-transfer/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/cancel-certificate-transfer/{certificateId}", certificateId=)

# CancelCertificateTransfer Operation

Cancels a pending transfer for the specified certificate.

**Note** Only the transfer source account can use this operation to cancel a transfer. (Transfer destinations can use [RejectCertificateTransfer](@ref) instead.) After transfer, AWS IoT returns the certificate to the source account in the INACTIVE state. After the destination account has accepted the transfer, the transfer cannot be cancelled.

After a certificate transfer is cancelled, the status of the certificate changes from PENDING_TRANSFER to INACTIVE.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)




# Exceptions

`ResourceNotFoundException`, `TransferAlreadyCompletedException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CancelCertificateTransfer)
"""
@inline cancel_certificate_transfer(aws::AWSConfig=default_aws_config(); args...) = cancel_certificate_transfer(aws, args)

@inline cancel_certificate_transfer(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/cancel-certificate-transfer/{certificateId}", args)

@inline cancel_certificate_transfer(args) = cancel_certificate_transfer(default_aws_config(), args)


"""
    using AWSSDK.Iot.cancel_job
    cancel_job([::AWSConfig], arguments::Dict)
    cancel_job([::AWSConfig]; jobId=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/jobs/{jobId}/cancel", arguments::Dict)
    iot([::AWSConfig], "PUT", "/jobs/{jobId}/cancel", jobId=, <keyword arguments>)

# CancelJob Operation

Cancels a job.

# Arguments

## `jobId = ::String` -- *Required*
The unique identifier you assigned to this job when it was created.


## `comment = ::String`
An optional comment string describing why the job was canceled.


## `force = ::Bool`
(Optional) If `true` job executions with status "IN_PROGRESS" and "QUEUED" are canceled, otherwise only job executions with status "QUEUED" are canceled. The default is `false`.

Canceling a job which is "IN_PROGRESS", will cause a device which is executing the job to be unable to update the job execution status. Use caution and ensure that each device executing a job which is canceled is able to recover to a valid state.




# Returns

`CancelJobResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CancelJob)
"""
@inline cancel_job(aws::AWSConfig=default_aws_config(); args...) = cancel_job(aws, args)

@inline cancel_job(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/jobs/{jobId}/cancel", args)

@inline cancel_job(args) = cancel_job(default_aws_config(), args)


"""
    using AWSSDK.Iot.cancel_job_execution
    cancel_job_execution([::AWSConfig], arguments::Dict)
    cancel_job_execution([::AWSConfig]; jobId=, thingName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/things/{thingName}/jobs/{jobId}/cancel", arguments::Dict)
    iot([::AWSConfig], "PUT", "/things/{thingName}/jobs/{jobId}/cancel", jobId=, thingName=, <keyword arguments>)

# CancelJobExecution Operation

Cancels the execution of a job for a given thing.

# Arguments

## `jobId = ::String` -- *Required*
The ID of the job to be canceled.


## `thingName = ::String` -- *Required*
The name of the thing whose execution of the job will be canceled.


## `force = ::Bool`
(Optional) If `true` the job execution will be canceled if it has status IN_PROGRESS or QUEUED, otherwise the job execution will be canceled only if it has status QUEUED. If you attempt to cancel a job execution that is IN_PROGRESS, and you do not set `force` to `true`, then an `InvalidStateTransitionException` will be thrown. The default is `false`.

Canceling a job execution which is "IN_PROGRESS", will cause the device to be unable to update the job execution status. Use caution and ensure that the device is able to recover to a valid state.


## `expectedVersion = ::Int`
(Optional) The expected current version of the job execution. Each time you update the job execution, its version is incremented. If the version of the job execution stored in Jobs does not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain the job execution status data.)


## `statusDetails = ::Dict{String,String}`
A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged. You can specify at most 10 name/value pairs.




# Exceptions

`InvalidRequestException`, `InvalidStateTransitionException`, `ResourceNotFoundException`, `ThrottlingException`, `ServiceUnavailableException` or `VersionConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CancelJobExecution)
"""
@inline cancel_job_execution(aws::AWSConfig=default_aws_config(); args...) = cancel_job_execution(aws, args)

@inline cancel_job_execution(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/things/{thingName}/jobs/{jobId}/cancel", args)

@inline cancel_job_execution(args) = cancel_job_execution(default_aws_config(), args)


"""
    using AWSSDK.Iot.clear_default_authorizer
    clear_default_authorizer([::AWSConfig], arguments::Dict)
    clear_default_authorizer([::AWSConfig]; )

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/default-authorizer", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/default-authorizer", )

# ClearDefaultAuthorizer Operation

Clears the default authorizer.

# Arguments



# Returns

`ClearDefaultAuthorizerResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ClearDefaultAuthorizer)
"""
@inline clear_default_authorizer(aws::AWSConfig=default_aws_config(); args...) = clear_default_authorizer(aws, args)

@inline clear_default_authorizer(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/default-authorizer", args)

@inline clear_default_authorizer(args) = clear_default_authorizer(default_aws_config(), args)


"""
    using AWSSDK.Iot.create_authorizer
    create_authorizer([::AWSConfig], arguments::Dict)
    create_authorizer([::AWSConfig]; authorizerName=, authorizerFunctionArn=, tokenKeyName=, tokenSigningPublicKeys=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/authorizer/{authorizerName}", arguments::Dict)
    iot([::AWSConfig], "POST", "/authorizer/{authorizerName}", authorizerName=, authorizerFunctionArn=, tokenKeyName=, tokenSigningPublicKeys=, <keyword arguments>)

# CreateAuthorizer Operation

Creates an authorizer.

# Arguments

## `authorizerName = ::String` -- *Required*
The authorizer name.


## `authorizerFunctionArn = ::String` -- *Required*
The ARN of the authorizer's Lambda function.


## `tokenKeyName = ::String` -- *Required*
The name of the token key used to extract the token from the HTTP headers.


## `tokenSigningPublicKeys = ::Dict{String,String}` -- *Required*
The public keys used to verify the digital signature returned by your custom authentication service.


## `status = "ACTIVE" or "INACTIVE"`
The status of the create authorizer request.




# Returns

`CreateAuthorizerResponse`

# Exceptions

`ResourceAlreadyExistsException`, `InvalidRequestException`, `LimitExceededException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateAuthorizer)
"""
@inline create_authorizer(aws::AWSConfig=default_aws_config(); args...) = create_authorizer(aws, args)

@inline create_authorizer(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/authorizer/{authorizerName}", args)

@inline create_authorizer(args) = create_authorizer(default_aws_config(), args)


"""
    using AWSSDK.Iot.create_certificate_from_csr
    create_certificate_from_csr([::AWSConfig], arguments::Dict)
    create_certificate_from_csr([::AWSConfig]; certificateSigningRequest=, <keyword arguments>)

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
    using AWSSDK.Iot.create_job
    create_job([::AWSConfig], arguments::Dict)
    create_job([::AWSConfig]; jobId=, targets=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/jobs/{jobId}", arguments::Dict)
    iot([::AWSConfig], "PUT", "/jobs/{jobId}", jobId=, targets=, <keyword arguments>)

# CreateJob Operation

Creates a job.

# Arguments

## `jobId = ::String` -- *Required*
A job identifier which must be unique for your AWS account. We recommend using a UUID. Alpha-numeric characters, "-" and "_" are valid for use here.


## `targets = [::String, ...]` -- *Required*
A list of things and thing groups to which the job should be sent.


## `documentSource = ::String`
An S3 link to the job document.


## `document = ::String`
The job document.


## `description = ::String`
A short text description of the job.


## `presignedUrlConfig = [ ... ]`
Configuration information for pre-signed S3 URLs.
```
 presignedUrlConfig = [
        "roleArn" =>  ::String,
        "expiresInSec" =>  ::Int
    ]
```

## `targetSelection = "CONTINUOUS" or "SNAPSHOT"`
Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing when a change is detected in a target. For example, a job will run on a thing when the thing is added to a target group, even after the job was completed by all things originally in the group.


## `jobExecutionsRolloutConfig = ["maximumPerMinute" =>  ::Int]`
Allows you to create a staged rollout of the job.




# Returns

`CreateJobResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ResourceAlreadyExistsException`, `LimitExceededException`, `ThrottlingException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateJob)
"""
@inline create_job(aws::AWSConfig=default_aws_config(); args...) = create_job(aws, args)

@inline create_job(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/jobs/{jobId}", args)

@inline create_job(args) = create_job(default_aws_config(), args)


"""
    using AWSSDK.Iot.create_keys_and_certificate
    create_keys_and_certificate([::AWSConfig], arguments::Dict)
    create_keys_and_certificate([::AWSConfig]; <keyword arguments>)

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
    using AWSSDK.Iot.create_otaupdate
    create_otaupdate([::AWSConfig], arguments::Dict)
    create_otaupdate([::AWSConfig]; otaUpdateId=, targets=, files=, roleArn=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/otaUpdates/{otaUpdateId}", arguments::Dict)
    iot([::AWSConfig], "POST", "/otaUpdates/{otaUpdateId}", otaUpdateId=, targets=, files=, roleArn=, <keyword arguments>)

# CreateOTAUpdate Operation

Creates an AWS IoT OTAUpdate on a target group of things or groups.

# Arguments

## `otaUpdateId = ::String` -- *Required*
The ID of the OTA update to be created.


## `description = ::String`
The description of the OTA update.


## `targets = [::String, ...]` -- *Required*
The targeted devices to receive OTA updates.


## `targetSelection = "CONTINUOUS" or "SNAPSHOT"`
Specifies whether the update will continue to run (CONTINUOUS), or will be complete after all the things specified as targets have completed the update (SNAPSHOT). If continuous, the update may also be run on a thing when a change is detected in a target. For example, an update will run on a thing when the thing is added to a target group, even after the update was completed by all things originally in the group. Valid values: CONTINUOUS | SNAPSHOT.


## `files = [[ ... ], ...]` -- *Required*
The files to be streamed by the OTA update.
```
 files = [[
        "fileName" =>  ::String,
        "fileVersion" =>  ::String,
        "fileSource" =>  [
            "streamId" =>  ::String,
            "fileId" =>  ::Int
        ],
        "codeSigning" =>  [
            "awsSignerJobId" =>  ::String,
            "customCodeSigning" =>  [
                "signature" =>  [
                    "stream" =>  [
                        "streamId" =>  ::String,
                        "fileId" =>  ::Int
                    ],
                    "inlineDocument" =>  blob
                ],
                "certificateChain" =>  [
                    "stream" =>  [
                        "streamId" =>  ::String,
                        "fileId" =>  ::Int
                    ],
                    "certificateName" =>  ::String,
                    "inlineDocument" =>  ::String
                ],
                "hashAlgorithm" =>  ::String,
                "signatureAlgorithm" =>  ::String
            ]
        ],
        "attributes" =>  ::Dict{String,String}
    ], ...]
```

## `roleArn = ::String` -- *Required*
The IAM role that allows access to the AWS IoT Jobs service.


## `additionalParameters = ::Dict{String,String}`
A list of additional OTA update parameters which are name-value pairs.




# Returns

`CreateOTAUpdateResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ResourceAlreadyExistsException`, `ThrottlingException`, `UnauthorizedException`, `InternalFailureException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateOTAUpdate)
"""
@inline create_otaupdate(aws::AWSConfig=default_aws_config(); args...) = create_otaupdate(aws, args)

@inline create_otaupdate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/otaUpdates/{otaUpdateId}", args)

@inline create_otaupdate(args) = create_otaupdate(default_aws_config(), args)


"""
    using AWSSDK.Iot.create_policy
    create_policy([::AWSConfig], arguments::Dict)
    create_policy([::AWSConfig]; policyName=, policyDocument=)

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
    using AWSSDK.Iot.create_policy_version
    create_policy_version([::AWSConfig], arguments::Dict)
    create_policy_version([::AWSConfig]; policyName=, policyDocument=, <keyword arguments>)

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
The JSON document that describes the policy. Minimum length of 1. Maximum length of 2048, excluding whitespace.


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
    using AWSSDK.Iot.create_role_alias
    create_role_alias([::AWSConfig], arguments::Dict)
    create_role_alias([::AWSConfig]; roleAlias=, roleArn=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/role-aliases/{roleAlias}", arguments::Dict)
    iot([::AWSConfig], "POST", "/role-aliases/{roleAlias}", roleAlias=, roleArn=, <keyword arguments>)

# CreateRoleAlias Operation

Creates a role alias.

# Arguments

## `roleAlias = ::String` -- *Required*
The role alias that points to a role ARN. This allows you to change the role without having to update the device.


## `roleArn = ::String` -- *Required*
The role ARN.


## `credentialDurationSeconds = ::Int`
How long (in seconds) the credentials will be valid.




# Returns

`CreateRoleAliasResponse`

# Exceptions

`ResourceAlreadyExistsException`, `InvalidRequestException`, `LimitExceededException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateRoleAlias)
"""
@inline create_role_alias(aws::AWSConfig=default_aws_config(); args...) = create_role_alias(aws, args)

@inline create_role_alias(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/role-aliases/{roleAlias}", args)

@inline create_role_alias(args) = create_role_alias(default_aws_config(), args)


"""
    using AWSSDK.Iot.create_scheduled_audit
    create_scheduled_audit([::AWSConfig], arguments::Dict)
    create_scheduled_audit([::AWSConfig]; frequency=, targetCheckNames=, scheduledAuditName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/audit/scheduledaudits/{scheduledAuditName}", arguments::Dict)
    iot([::AWSConfig], "POST", "/audit/scheduledaudits/{scheduledAuditName}", frequency=, targetCheckNames=, scheduledAuditName=, <keyword arguments>)

# CreateScheduledAudit Operation

Creates a scheduled audit that is run at a specified time interval.

# Arguments

## `frequency = "DAILY", "WEEKLY", "BIWEEKLY" or "MONTHLY"` -- *Required*
How often the scheduled audit takes place. Can be one of "DAILY", "WEEKLY", "BIWEEKLY" or "MONTHLY". The actual start time of each audit is determined by the system.


## `dayOfMonth = ::String`
The day of the month on which the scheduled audit takes place. Can be "1" through "31" or "LAST". This field is required if the "frequency" parameter is set to "MONTHLY". If days 29-31 are specified, and the month does not have that many days, the audit takes place on the "LAST" day of the month.


## `dayOfWeek = "SUN", "MON", "TUE", "WED", "THU", "FRI" or "SAT"`
The day of the week on which the scheduled audit takes place. Can be one of "SUN", "MON", "TUE", "WED", "THU", "FRI" or "SAT". This field is required if the "frequency" parameter is set to "WEEKLY" or "BIWEEKLY".


## `targetCheckNames = [::String, ...]` -- *Required*
Which checks are performed during the scheduled audit. Checks must be enabled for your account. (Use `DescribeAccountAuditConfiguration` to see the list of all checks including those that are enabled or `UpdateAccountAuditConfiguration` to select which checks are enabled.)


## `scheduledAuditName = ::String` -- *Required*
The name you want to give to the scheduled audit. (Max. 128 chars)




# Returns

`CreateScheduledAuditResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `InternalFailureException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateScheduledAudit)
"""
@inline create_scheduled_audit(aws::AWSConfig=default_aws_config(); args...) = create_scheduled_audit(aws, args)

@inline create_scheduled_audit(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/audit/scheduledaudits/{scheduledAuditName}", args)

@inline create_scheduled_audit(args) = create_scheduled_audit(default_aws_config(), args)


"""
    using AWSSDK.Iot.create_security_profile
    create_security_profile([::AWSConfig], arguments::Dict)
    create_security_profile([::AWSConfig]; securityProfileName=, behaviors=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/security-profiles/{securityProfileName}", arguments::Dict)
    iot([::AWSConfig], "POST", "/security-profiles/{securityProfileName}", securityProfileName=, behaviors=, <keyword arguments>)

# CreateSecurityProfile Operation

Creates a Device Defender security profile.

# Arguments

## `securityProfileName = ::String` -- *Required*
The name you are giving to the security profile.


## `securityProfileDescription = ::String`
A description of the security profile.


## `behaviors = [[ ... ], ...]` -- *Required*
Specifies the behaviors that, when violated by a device (thing), cause an alert.
```
 behaviors = [[
        "name" => <required> ::String,
        "metric" =>  ::String,
        "criteria" =>  [
            "comparisonOperator" =>  "less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set" or "not-in-port-set",
            "value" =>  [
                "count" =>  ::Int,
                "cidrs" =>  [::String, ...],
                "ports" =>  [::Int, ...]
            ],
            "durationSeconds" =>  ::Int
        ]
    ], ...]
```

## `alertTargets = ::Dict{String,String}`
Specifies the destinations to which alerts are sent. (Alerts are always sent to the console.) Alerts are generated when a device (thing) violates a behavior.




# Returns

`CreateSecurityProfileResponse`

# Exceptions

`InvalidRequestException`, `ResourceAlreadyExistsException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateSecurityProfile)
"""
@inline create_security_profile(aws::AWSConfig=default_aws_config(); args...) = create_security_profile(aws, args)

@inline create_security_profile(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/security-profiles/{securityProfileName}", args)

@inline create_security_profile(args) = create_security_profile(default_aws_config(), args)


"""
    using AWSSDK.Iot.create_stream
    create_stream([::AWSConfig], arguments::Dict)
    create_stream([::AWSConfig]; streamId=, files=, roleArn=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/streams/{streamId}", arguments::Dict)
    iot([::AWSConfig], "POST", "/streams/{streamId}", streamId=, files=, roleArn=, <keyword arguments>)

# CreateStream Operation

Creates a stream for delivering one or more large files in chunks over MQTT. A stream transports data bytes in chunks or blocks packaged as MQTT messages from a source like S3. You can have one or more files associated with a stream. The total size of a file associated with the stream cannot exceed more than 2 MB. The stream will be created with version 0. If a stream is created with the same streamID as a stream that existed and was deleted within last 90 days, we will resurrect that old stream by incrementing the version by 1.

# Arguments

## `streamId = ::String` -- *Required*
The stream ID.


## `description = ::String`
A description of the stream.


## `files = [[ ... ], ...]` -- *Required*
The files to stream.
```
 files = [[
        "fileId" =>  ::Int,
        "s3Location" =>  [
            "bucket" => <required> ::String,
            "key" => <required> ::String,
            "version" =>  ::String
        ]
    ], ...]
```

## `roleArn = ::String` -- *Required*
An IAM role that allows the IoT service principal assumes to access your S3 files.




# Returns

`CreateStreamResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ResourceAlreadyExistsException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateStream)
"""
@inline create_stream(aws::AWSConfig=default_aws_config(); args...) = create_stream(aws, args)

@inline create_stream(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/streams/{streamId}", args)

@inline create_stream(args) = create_stream(default_aws_config(), args)


"""
    using AWSSDK.Iot.create_thing
    create_thing([::AWSConfig], arguments::Dict)
    create_thing([::AWSConfig]; thingName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/things/{thingName}", arguments::Dict)
    iot([::AWSConfig], "POST", "/things/{thingName}", thingName=, <keyword arguments>)

# CreateThing Operation

Creates a thing record in the registry.

**Note**
> This is a control plane operation. See [Authorization](http://docs.aws.amazon.com/iot/latest/developerguide/authorization.html) for information about authorizing control plane actions.

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
    using AWSSDK.Iot.create_thing_group
    create_thing_group([::AWSConfig], arguments::Dict)
    create_thing_group([::AWSConfig]; thingGroupName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/thing-groups/{thingGroupName}", arguments::Dict)
    iot([::AWSConfig], "POST", "/thing-groups/{thingGroupName}", thingGroupName=, <keyword arguments>)

# CreateThingGroup Operation

Create a thing group.

**Note**
> This is a control plane operation. See [Authorization](http://docs.aws.amazon.com/iot/latest/developerguide/authorization.html) for information about authorizing control plane actions.

# Arguments

## `thingGroupName = ::String` -- *Required*
The thing group name to create.


## `parentGroupName = ::String`
The name of the parent thing group.


## `thingGroupProperties = [ ... ]`
The thing group properties.
```
 thingGroupProperties = [
        "thingGroupDescription" =>  ::String,
        "attributePayload" =>  [
            "attributes" =>  ::Dict{String,String},
            "merge" =>  ::Bool
        ]
    ]
```



# Returns

`CreateThingGroupResponse`

# Exceptions

`InvalidRequestException`, `ResourceAlreadyExistsException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/CreateThingGroup)
"""
@inline create_thing_group(aws::AWSConfig=default_aws_config(); args...) = create_thing_group(aws, args)

@inline create_thing_group(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/thing-groups/{thingGroupName}", args)

@inline create_thing_group(args) = create_thing_group(default_aws_config(), args)


"""
    using AWSSDK.Iot.create_thing_type
    create_thing_type([::AWSConfig], arguments::Dict)
    create_thing_type([::AWSConfig]; thingTypeName=, <keyword arguments>)

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
    using AWSSDK.Iot.create_topic_rule
    create_topic_rule([::AWSConfig], arguments::Dict)
    create_topic_rule([::AWSConfig]; ruleName=, topicRulePayload=)

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
            ],
            "iotAnalytics" =>  [
                "channelArn" =>  ::String,
                "channelName" =>  ::String,
                "roleArn" =>  ::String
            ],
            "stepFunctions" =>  [
                "executionNamePrefix" =>  ::String,
                "stateMachineName" => <required> ::String,
                "roleArn" => <required> ::String
            ]
        ], ...],
        "ruleDisabled" =>  ::Bool,
        "awsIotSqlVersion" =>  ::String,
        "errorAction" =>  [
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
            ],
            "iotAnalytics" =>  [
                "channelArn" =>  ::String,
                "channelName" =>  ::String,
                "roleArn" =>  ::String
            ],
            "stepFunctions" =>  [
                "executionNamePrefix" =>  ::String,
                "stateMachineName" => <required> ::String,
                "roleArn" => <required> ::String
            ]
        ]
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
    using AWSSDK.Iot.delete_account_audit_configuration
    delete_account_audit_configuration([::AWSConfig], arguments::Dict)
    delete_account_audit_configuration([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/audit/configuration", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/audit/configuration", <keyword arguments>)

# DeleteAccountAuditConfiguration Operation

Restores the default settings for Device Defender audits for this account. Any configuration data you entered is deleted and all audit checks are reset to disabled.

# Arguments

## `deleteScheduledAudits = ::Bool`
If true, all scheduled audits are deleted.




# Returns

`DeleteAccountAuditConfigurationResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteAccountAuditConfiguration)
"""
@inline delete_account_audit_configuration(aws::AWSConfig=default_aws_config(); args...) = delete_account_audit_configuration(aws, args)

@inline delete_account_audit_configuration(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/audit/configuration", args)

@inline delete_account_audit_configuration(args) = delete_account_audit_configuration(default_aws_config(), args)


"""
    using AWSSDK.Iot.delete_authorizer
    delete_authorizer([::AWSConfig], arguments::Dict)
    delete_authorizer([::AWSConfig]; authorizerName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/authorizer/{authorizerName}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/authorizer/{authorizerName}", authorizerName=)

# DeleteAuthorizer Operation

Deletes an authorizer.

# Arguments

## `authorizerName = ::String` -- *Required*
The name of the authorizer to delete.




# Returns

`DeleteAuthorizerResponse`

# Exceptions

`DeleteConflictException`, `ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteAuthorizer)
"""
@inline delete_authorizer(aws::AWSConfig=default_aws_config(); args...) = delete_authorizer(aws, args)

@inline delete_authorizer(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/authorizer/{authorizerName}", args)

@inline delete_authorizer(args) = delete_authorizer(default_aws_config(), args)


"""
    using AWSSDK.Iot.delete_cacertificate
    delete_cacertificate([::AWSConfig], arguments::Dict)
    delete_cacertificate([::AWSConfig]; caCertificateId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/cacertificate/{caCertificateId}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/cacertificate/{caCertificateId}", caCertificateId=)

# DeleteCACertificate Operation

Deletes a registered CA certificate.

# Arguments

## `caCertificateId = ::String` -- *Required*
The ID of the certificate to delete. (The last part of the certificate ARN contains the certificate ID.)




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
    using AWSSDK.Iot.delete_certificate
    delete_certificate([::AWSConfig], arguments::Dict)
    delete_certificate([::AWSConfig]; certificateId=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/certificates/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/certificates/{certificateId}", certificateId=, <keyword arguments>)

# DeleteCertificate Operation

Deletes the specified certificate.

A certificate cannot be deleted if it has a policy attached to it or if its status is set to ACTIVE. To delete a certificate, first use the [DetachPrincipalPolicy](@ref) API to detach all policies. Next, use the [UpdateCertificate](@ref) API to set the certificate to the INACTIVE status.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)


## `forceDelete = ::Bool`
Forces a certificate request to be deleted.




# Exceptions

`CertificateStateException`, `DeleteConflictException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteCertificate)
"""
@inline delete_certificate(aws::AWSConfig=default_aws_config(); args...) = delete_certificate(aws, args)

@inline delete_certificate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/certificates/{certificateId}", args)

@inline delete_certificate(args) = delete_certificate(default_aws_config(), args)


"""
    using AWSSDK.Iot.delete_job
    delete_job([::AWSConfig], arguments::Dict)
    delete_job([::AWSConfig]; jobId=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/jobs/{jobId}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/jobs/{jobId}", jobId=, <keyword arguments>)

# DeleteJob Operation

Deletes a job and its related job executions.

Deleting a job may take time, depending on the number of job executions created for the job and various other factors. While the job is being deleted, the status of the job will be shown as "DELETION_IN_PROGRESS". Attempting to delete or cancel a job whose status is already "DELETION_IN_PROGRESS" will result in an error.

Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time, or a LimitExceededException will occur.

# Arguments

## `jobId = ::String` -- *Required*
The ID of the job to be deleted.

After a job deletion is completed, you may reuse this jobId when you create a new job. However, this is not recommended, and you must ensure that your devices are not using the jobId to refer to the deleted job.


## `force = ::Bool`
(Optional) When true, you can delete a job which is "IN_PROGRESS". Otherwise, you can only delete a job which is in a terminal state ("COMPLETED" or "CANCELED") or an exception will occur. The default is false.

**Note**
> Deleting a job which is "IN_PROGRESS", will cause a device which is executing the job to be unable to access job information or update the job execution status. Use caution and ensure that each device executing a job which is deleted is able to recover to a valid state.




# Exceptions

`InvalidRequestException`, `InvalidStateTransitionException`, `ResourceNotFoundException`, `LimitExceededException`, `ThrottlingException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteJob)
"""
@inline delete_job(aws::AWSConfig=default_aws_config(); args...) = delete_job(aws, args)

@inline delete_job(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/jobs/{jobId}", args)

@inline delete_job(args) = delete_job(default_aws_config(), args)


"""
    using AWSSDK.Iot.delete_job_execution
    delete_job_execution([::AWSConfig], arguments::Dict)
    delete_job_execution([::AWSConfig]; jobId=, thingName=, executionNumber=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}", jobId=, thingName=, executionNumber=, <keyword arguments>)

# DeleteJobExecution Operation

Deletes a job execution.

# Arguments

## `jobId = ::String` -- *Required*
The ID of the job whose execution on a particular device will be deleted.


## `thingName = ::String` -- *Required*
The name of the thing whose job execution will be deleted.


## `executionNumber = ::Int` -- *Required*
The ID of the job execution to be deleted. The `executionNumber` refers to the execution of a particular job on a particular device.

Note that once a job execution is deleted, the `executionNumber` may be reused by IoT, so be sure you get and use the correct value here.


## `force = ::Bool`
(Optional) When true, you can delete a job execution which is "IN_PROGRESS". Otherwise, you can only delete a job execution which is in a terminal state ("SUCCEEDED", "FAILED", "REJECTED", "REMOVED" or "CANCELED") or an exception will occur. The default is false.

**Note**
> Deleting a job execution which is "IN_PROGRESS", will cause the device to be unable to access job information or update the job execution status. Use caution and ensure that the device is able to recover to a valid state.




# Exceptions

`InvalidRequestException`, `InvalidStateTransitionException`, `ResourceNotFoundException`, `ThrottlingException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteJobExecution)
"""
@inline delete_job_execution(aws::AWSConfig=default_aws_config(); args...) = delete_job_execution(aws, args)

@inline delete_job_execution(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}", args)

@inline delete_job_execution(args) = delete_job_execution(default_aws_config(), args)


"""
    using AWSSDK.Iot.delete_otaupdate
    delete_otaupdate([::AWSConfig], arguments::Dict)
    delete_otaupdate([::AWSConfig]; otaUpdateId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/otaUpdates/{otaUpdateId}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/otaUpdates/{otaUpdateId}", otaUpdateId=)

# DeleteOTAUpdate Operation

Delete an OTA update.

# Arguments

## `otaUpdateId = ::String` -- *Required*
The OTA update ID to delete.




# Returns

`DeleteOTAUpdateResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException`, `UnauthorizedException`, `InternalFailureException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteOTAUpdate)
"""
@inline delete_otaupdate(aws::AWSConfig=default_aws_config(); args...) = delete_otaupdate(aws, args)

@inline delete_otaupdate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/otaUpdates/{otaUpdateId}", args)

@inline delete_otaupdate(args) = delete_otaupdate(default_aws_config(), args)


"""
    using AWSSDK.Iot.delete_policy
    delete_policy([::AWSConfig], arguments::Dict)
    delete_policy([::AWSConfig]; policyName=)

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
    using AWSSDK.Iot.delete_policy_version
    delete_policy_version([::AWSConfig], arguments::Dict)
    delete_policy_version([::AWSConfig]; policyName=, policyVersionId=)

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
    using AWSSDK.Iot.delete_registration_code
    delete_registration_code([::AWSConfig], arguments::Dict)
    delete_registration_code([::AWSConfig]; )

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
    using AWSSDK.Iot.delete_role_alias
    delete_role_alias([::AWSConfig], arguments::Dict)
    delete_role_alias([::AWSConfig]; roleAlias=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/role-aliases/{roleAlias}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/role-aliases/{roleAlias}", roleAlias=)

# DeleteRoleAlias Operation

Deletes a role alias

# Arguments

## `roleAlias = ::String` -- *Required*
The role alias to delete.




# Returns

`DeleteRoleAliasResponse`

# Exceptions

`DeleteConflictException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteRoleAlias)
"""
@inline delete_role_alias(aws::AWSConfig=default_aws_config(); args...) = delete_role_alias(aws, args)

@inline delete_role_alias(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/role-aliases/{roleAlias}", args)

@inline delete_role_alias(args) = delete_role_alias(default_aws_config(), args)


"""
    using AWSSDK.Iot.delete_scheduled_audit
    delete_scheduled_audit([::AWSConfig], arguments::Dict)
    delete_scheduled_audit([::AWSConfig]; scheduledAuditName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/audit/scheduledaudits/{scheduledAuditName}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/audit/scheduledaudits/{scheduledAuditName}", scheduledAuditName=)

# DeleteScheduledAudit Operation

Deletes a scheduled audit.

# Arguments

## `scheduledAuditName = ::String` -- *Required*
The name of the scheduled audit you want to delete.




# Returns

`DeleteScheduledAuditResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteScheduledAudit)
"""
@inline delete_scheduled_audit(aws::AWSConfig=default_aws_config(); args...) = delete_scheduled_audit(aws, args)

@inline delete_scheduled_audit(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/audit/scheduledaudits/{scheduledAuditName}", args)

@inline delete_scheduled_audit(args) = delete_scheduled_audit(default_aws_config(), args)


"""
    using AWSSDK.Iot.delete_security_profile
    delete_security_profile([::AWSConfig], arguments::Dict)
    delete_security_profile([::AWSConfig]; securityProfileName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/security-profiles/{securityProfileName}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/security-profiles/{securityProfileName}", securityProfileName=, <keyword arguments>)

# DeleteSecurityProfile Operation

Deletes a Device Defender security profile.

# Arguments

## `securityProfileName = ::String` -- *Required*
The name of the security profile to be deleted.


## `expectedVersion = ::Int`
The expected version of the security profile. A new version is generated whenever the security profile is updated. If you specify a value that is different than the actual version, a `VersionConflictException` is thrown.




# Returns

`DeleteSecurityProfileResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `InternalFailureException` or `VersionConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteSecurityProfile)
"""
@inline delete_security_profile(aws::AWSConfig=default_aws_config(); args...) = delete_security_profile(aws, args)

@inline delete_security_profile(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/security-profiles/{securityProfileName}", args)

@inline delete_security_profile(args) = delete_security_profile(default_aws_config(), args)


"""
    using AWSSDK.Iot.delete_stream
    delete_stream([::AWSConfig], arguments::Dict)
    delete_stream([::AWSConfig]; streamId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/streams/{streamId}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/streams/{streamId}", streamId=)

# DeleteStream Operation

Deletes a stream.

# Arguments

## `streamId = ::String` -- *Required*
The stream ID.




# Returns

`DeleteStreamResponse`

# Exceptions

`ResourceNotFoundException`, `DeleteConflictException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteStream)
"""
@inline delete_stream(aws::AWSConfig=default_aws_config(); args...) = delete_stream(aws, args)

@inline delete_stream(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/streams/{streamId}", args)

@inline delete_stream(args) = delete_stream(default_aws_config(), args)


"""
    using AWSSDK.Iot.delete_thing
    delete_thing([::AWSConfig], arguments::Dict)
    delete_thing([::AWSConfig]; thingName=, <keyword arguments>)

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
    using AWSSDK.Iot.delete_thing_group
    delete_thing_group([::AWSConfig], arguments::Dict)
    delete_thing_group([::AWSConfig]; thingGroupName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/thing-groups/{thingGroupName}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/thing-groups/{thingGroupName}", thingGroupName=, <keyword arguments>)

# DeleteThingGroup Operation

Deletes a thing group.

# Arguments

## `thingGroupName = ::String` -- *Required*
The name of the thing group to delete.


## `expectedVersion = ::Int`
The expected version of the thing group to delete.




# Returns

`DeleteThingGroupResponse`

# Exceptions

`InvalidRequestException`, `VersionConflictException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteThingGroup)
"""
@inline delete_thing_group(aws::AWSConfig=default_aws_config(); args...) = delete_thing_group(aws, args)

@inline delete_thing_group(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/thing-groups/{thingGroupName}", args)

@inline delete_thing_group(args) = delete_thing_group(default_aws_config(), args)


"""
    using AWSSDK.Iot.delete_thing_type
    delete_thing_type([::AWSConfig], arguments::Dict)
    delete_thing_type([::AWSConfig]; thingTypeName=)

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
    using AWSSDK.Iot.delete_topic_rule
    delete_topic_rule([::AWSConfig], arguments::Dict)
    delete_topic_rule([::AWSConfig]; ruleName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/rules/{ruleName}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/rules/{ruleName}", ruleName=)

# DeleteTopicRule Operation

Deletes the rule.

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
    using AWSSDK.Iot.delete_v2logging_level
    delete_v2logging_level([::AWSConfig], arguments::Dict)
    delete_v2logging_level([::AWSConfig]; targetType=, targetName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/v2LoggingLevel", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/v2LoggingLevel", targetType=, targetName=)

# DeleteV2LoggingLevel Operation

Deletes a logging level.

# Arguments

## `targetType = "DEFAULT" or "THING_GROUP"` -- *Required*
The type of resource for which you are configuring logging. Must be `THING_Group`.


## `targetName = ::String` -- *Required*
The name of the resource for which you are configuring logging.




# Exceptions

`InternalException`, `InvalidRequestException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DeleteV2LoggingLevel)
"""
@inline delete_v2logging_level(aws::AWSConfig=default_aws_config(); args...) = delete_v2logging_level(aws, args)

@inline delete_v2logging_level(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/v2LoggingLevel", args)

@inline delete_v2logging_level(args) = delete_v2logging_level(default_aws_config(), args)


"""
    using AWSSDK.Iot.deprecate_thing_type
    deprecate_thing_type([::AWSConfig], arguments::Dict)
    deprecate_thing_type([::AWSConfig]; thingTypeName=, <keyword arguments>)

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
    using AWSSDK.Iot.describe_account_audit_configuration
    describe_account_audit_configuration([::AWSConfig], arguments::Dict)
    describe_account_audit_configuration([::AWSConfig]; )

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/audit/configuration", arguments::Dict)
    iot([::AWSConfig], "GET", "/audit/configuration", )

# DescribeAccountAuditConfiguration Operation

Gets information about the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.

# Arguments



# Returns

`DescribeAccountAuditConfigurationResponse`

# Exceptions

`ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeAccountAuditConfiguration)
"""
@inline describe_account_audit_configuration(aws::AWSConfig=default_aws_config(); args...) = describe_account_audit_configuration(aws, args)

@inline describe_account_audit_configuration(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/audit/configuration", args)

@inline describe_account_audit_configuration(args) = describe_account_audit_configuration(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_audit_task
    describe_audit_task([::AWSConfig], arguments::Dict)
    describe_audit_task([::AWSConfig]; taskId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/audit/tasks/{taskId}", arguments::Dict)
    iot([::AWSConfig], "GET", "/audit/tasks/{taskId}", taskId=)

# DescribeAuditTask Operation

Gets information about a Device Defender audit.

# Arguments

## `taskId = ::String` -- *Required*
The ID of the audit whose information you want to get.




# Returns

`DescribeAuditTaskResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeAuditTask)
"""
@inline describe_audit_task(aws::AWSConfig=default_aws_config(); args...) = describe_audit_task(aws, args)

@inline describe_audit_task(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/audit/tasks/{taskId}", args)

@inline describe_audit_task(args) = describe_audit_task(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_authorizer
    describe_authorizer([::AWSConfig], arguments::Dict)
    describe_authorizer([::AWSConfig]; authorizerName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/authorizer/{authorizerName}", arguments::Dict)
    iot([::AWSConfig], "GET", "/authorizer/{authorizerName}", authorizerName=)

# DescribeAuthorizer Operation

Describes an authorizer.

# Arguments

## `authorizerName = ::String` -- *Required*
The name of the authorizer to describe.




# Returns

`DescribeAuthorizerResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeAuthorizer)
"""
@inline describe_authorizer(aws::AWSConfig=default_aws_config(); args...) = describe_authorizer(aws, args)

@inline describe_authorizer(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/authorizer/{authorizerName}", args)

@inline describe_authorizer(args) = describe_authorizer(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_cacertificate
    describe_cacertificate([::AWSConfig], arguments::Dict)
    describe_cacertificate([::AWSConfig]; caCertificateId=)

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
    using AWSSDK.Iot.describe_certificate
    describe_certificate([::AWSConfig], arguments::Dict)
    describe_certificate([::AWSConfig]; certificateId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/certificates/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "GET", "/certificates/{certificateId}", certificateId=)

# DescribeCertificate Operation

Gets information about the specified certificate.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)




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
    using AWSSDK.Iot.describe_default_authorizer
    describe_default_authorizer([::AWSConfig], arguments::Dict)
    describe_default_authorizer([::AWSConfig]; )

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/default-authorizer", arguments::Dict)
    iot([::AWSConfig], "GET", "/default-authorizer", )

# DescribeDefaultAuthorizer Operation

Describes the default authorizer.

# Arguments



# Returns

`DescribeDefaultAuthorizerResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeDefaultAuthorizer)
"""
@inline describe_default_authorizer(aws::AWSConfig=default_aws_config(); args...) = describe_default_authorizer(aws, args)

@inline describe_default_authorizer(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/default-authorizer", args)

@inline describe_default_authorizer(args) = describe_default_authorizer(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_endpoint
    describe_endpoint([::AWSConfig], arguments::Dict)
    describe_endpoint([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/endpoint", arguments::Dict)
    iot([::AWSConfig], "GET", "/endpoint", <keyword arguments>)

# DescribeEndpoint Operation

Returns a unique endpoint specific to the AWS account making the call.

# Arguments

## `endpointType = ::String`
The endpoint type.




# Returns

`DescribeEndpointResponse`

# Exceptions

`InternalFailureException`, `InvalidRequestException`, `UnauthorizedException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeEndpoint)
"""
@inline describe_endpoint(aws::AWSConfig=default_aws_config(); args...) = describe_endpoint(aws, args)

@inline describe_endpoint(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/endpoint", args)

@inline describe_endpoint(args) = describe_endpoint(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_event_configurations
    describe_event_configurations([::AWSConfig], arguments::Dict)
    describe_event_configurations([::AWSConfig]; )

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/event-configurations", arguments::Dict)
    iot([::AWSConfig], "GET", "/event-configurations", )

# DescribeEventConfigurations Operation

Describes event configurations.

# Arguments



# Returns

`DescribeEventConfigurationsResponse`

# Exceptions

`InternalFailureException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeEventConfigurations)
"""
@inline describe_event_configurations(aws::AWSConfig=default_aws_config(); args...) = describe_event_configurations(aws, args)

@inline describe_event_configurations(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/event-configurations", args)

@inline describe_event_configurations(args) = describe_event_configurations(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_index
    describe_index([::AWSConfig], arguments::Dict)
    describe_index([::AWSConfig]; indexName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/indices/{indexName}", arguments::Dict)
    iot([::AWSConfig], "GET", "/indices/{indexName}", indexName=)

# DescribeIndex Operation

Describes a search index.

# Arguments

## `indexName = ::String` -- *Required*
The index name.




# Returns

`DescribeIndexResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeIndex)
"""
@inline describe_index(aws::AWSConfig=default_aws_config(); args...) = describe_index(aws, args)

@inline describe_index(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/indices/{indexName}", args)

@inline describe_index(args) = describe_index(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_job
    describe_job([::AWSConfig], arguments::Dict)
    describe_job([::AWSConfig]; jobId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/jobs/{jobId}", arguments::Dict)
    iot([::AWSConfig], "GET", "/jobs/{jobId}", jobId=)

# DescribeJob Operation

Describes a job.

# Arguments

## `jobId = ::String` -- *Required*
The unique identifier you assigned to this job when it was created.




# Returns

`DescribeJobResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeJob)
"""
@inline describe_job(aws::AWSConfig=default_aws_config(); args...) = describe_job(aws, args)

@inline describe_job(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/jobs/{jobId}", args)

@inline describe_job(args) = describe_job(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_job_execution
    describe_job_execution([::AWSConfig], arguments::Dict)
    describe_job_execution([::AWSConfig]; jobId=, thingName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/things/{thingName}/jobs/{jobId}", arguments::Dict)
    iot([::AWSConfig], "GET", "/things/{thingName}/jobs/{jobId}", jobId=, thingName=, <keyword arguments>)

# DescribeJobExecution Operation

Describes a job execution.

# Arguments

## `jobId = ::String` -- *Required*
The unique identifier you assigned to this job when it was created.


## `thingName = ::String` -- *Required*
The name of the thing on which the job execution is running.


## `executionNumber = ::Int`
A string (consisting of the digits "0" through "9" which is used to specify a particular job execution on a particular device.




# Returns

`DescribeJobExecutionResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeJobExecution)
"""
@inline describe_job_execution(aws::AWSConfig=default_aws_config(); args...) = describe_job_execution(aws, args)

@inline describe_job_execution(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/things/{thingName}/jobs/{jobId}", args)

@inline describe_job_execution(args) = describe_job_execution(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_role_alias
    describe_role_alias([::AWSConfig], arguments::Dict)
    describe_role_alias([::AWSConfig]; roleAlias=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/role-aliases/{roleAlias}", arguments::Dict)
    iot([::AWSConfig], "GET", "/role-aliases/{roleAlias}", roleAlias=)

# DescribeRoleAlias Operation

Describes a role alias.

# Arguments

## `roleAlias = ::String` -- *Required*
The role alias to describe.




# Returns

`DescribeRoleAliasResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeRoleAlias)
"""
@inline describe_role_alias(aws::AWSConfig=default_aws_config(); args...) = describe_role_alias(aws, args)

@inline describe_role_alias(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/role-aliases/{roleAlias}", args)

@inline describe_role_alias(args) = describe_role_alias(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_scheduled_audit
    describe_scheduled_audit([::AWSConfig], arguments::Dict)
    describe_scheduled_audit([::AWSConfig]; scheduledAuditName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/audit/scheduledaudits/{scheduledAuditName}", arguments::Dict)
    iot([::AWSConfig], "GET", "/audit/scheduledaudits/{scheduledAuditName}", scheduledAuditName=)

# DescribeScheduledAudit Operation

Gets information about a scheduled audit.

# Arguments

## `scheduledAuditName = ::String` -- *Required*
The name of the scheduled audit whose information you want to get.




# Returns

`DescribeScheduledAuditResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeScheduledAudit)
"""
@inline describe_scheduled_audit(aws::AWSConfig=default_aws_config(); args...) = describe_scheduled_audit(aws, args)

@inline describe_scheduled_audit(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/audit/scheduledaudits/{scheduledAuditName}", args)

@inline describe_scheduled_audit(args) = describe_scheduled_audit(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_security_profile
    describe_security_profile([::AWSConfig], arguments::Dict)
    describe_security_profile([::AWSConfig]; securityProfileName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/security-profiles/{securityProfileName}", arguments::Dict)
    iot([::AWSConfig], "GET", "/security-profiles/{securityProfileName}", securityProfileName=)

# DescribeSecurityProfile Operation

Gets information about a Device Defender security profile.

# Arguments

## `securityProfileName = ::String` -- *Required*
The name of the security profile whose information you want to get.




# Returns

`DescribeSecurityProfileResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeSecurityProfile)
"""
@inline describe_security_profile(aws::AWSConfig=default_aws_config(); args...) = describe_security_profile(aws, args)

@inline describe_security_profile(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/security-profiles/{securityProfileName}", args)

@inline describe_security_profile(args) = describe_security_profile(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_stream
    describe_stream([::AWSConfig], arguments::Dict)
    describe_stream([::AWSConfig]; streamId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/streams/{streamId}", arguments::Dict)
    iot([::AWSConfig], "GET", "/streams/{streamId}", streamId=)

# DescribeStream Operation

Gets information about a stream.

# Arguments

## `streamId = ::String` -- *Required*
The stream ID.




# Returns

`DescribeStreamResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeStream)
"""
@inline describe_stream(aws::AWSConfig=default_aws_config(); args...) = describe_stream(aws, args)

@inline describe_stream(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/streams/{streamId}", args)

@inline describe_stream(args) = describe_stream(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_thing
    describe_thing([::AWSConfig], arguments::Dict)
    describe_thing([::AWSConfig]; thingName=)

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
    using AWSSDK.Iot.describe_thing_group
    describe_thing_group([::AWSConfig], arguments::Dict)
    describe_thing_group([::AWSConfig]; thingGroupName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/thing-groups/{thingGroupName}", arguments::Dict)
    iot([::AWSConfig], "GET", "/thing-groups/{thingGroupName}", thingGroupName=)

# DescribeThingGroup Operation

Describe a thing group.

# Arguments

## `thingGroupName = ::String` -- *Required*
The name of the thing group.




# Returns

`DescribeThingGroupResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeThingGroup)
"""
@inline describe_thing_group(aws::AWSConfig=default_aws_config(); args...) = describe_thing_group(aws, args)

@inline describe_thing_group(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/thing-groups/{thingGroupName}", args)

@inline describe_thing_group(args) = describe_thing_group(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_thing_registration_task
    describe_thing_registration_task([::AWSConfig], arguments::Dict)
    describe_thing_registration_task([::AWSConfig]; taskId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/thing-registration-tasks/{taskId}", arguments::Dict)
    iot([::AWSConfig], "GET", "/thing-registration-tasks/{taskId}", taskId=)

# DescribeThingRegistrationTask Operation

Describes a bulk thing provisioning task.

# Arguments

## `taskId = ::String` -- *Required*
The task ID.




# Returns

`DescribeThingRegistrationTaskResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DescribeThingRegistrationTask)
"""
@inline describe_thing_registration_task(aws::AWSConfig=default_aws_config(); args...) = describe_thing_registration_task(aws, args)

@inline describe_thing_registration_task(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/thing-registration-tasks/{taskId}", args)

@inline describe_thing_registration_task(args) = describe_thing_registration_task(default_aws_config(), args)


"""
    using AWSSDK.Iot.describe_thing_type
    describe_thing_type([::AWSConfig], arguments::Dict)
    describe_thing_type([::AWSConfig]; thingTypeName=)

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
    using AWSSDK.Iot.detach_policy
    detach_policy([::AWSConfig], arguments::Dict)
    detach_policy([::AWSConfig]; policyName=, target=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/target-policies/{policyName}", arguments::Dict)
    iot([::AWSConfig], "POST", "/target-policies/{policyName}", policyName=, target=)

# DetachPolicy Operation

Detaches a policy from the specified target.

# Arguments

## `policyName = ::String` -- *Required*
The policy to detach.


## `target = ::String` -- *Required*
The target from which the policy will be detached.




# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DetachPolicy)
"""
@inline detach_policy(aws::AWSConfig=default_aws_config(); args...) = detach_policy(aws, args)

@inline detach_policy(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/target-policies/{policyName}", args)

@inline detach_policy(args) = detach_policy(default_aws_config(), args)


"""
    using AWSSDK.Iot.detach_principal_policy
    detach_principal_policy([::AWSConfig], arguments::Dict)
    detach_principal_policy([::AWSConfig]; policyName=, *header:* x-amzn-iot-principal=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/principal-policies/{policyName}", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/principal-policies/{policyName}", policyName=, *header:* x-amzn-iot-principal=)

# DetachPrincipalPolicy Operation

Removes the specified policy from the specified certificate.

**Note:** This API is deprecated. Please use [DetachPolicy](@ref) instead.

# Arguments

## `policyName = ::String` -- *Required*
The name of the policy to detach.


## `*header:* x-amzn-iot-principal = ::String` -- *Required*
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
    using AWSSDK.Iot.detach_security_profile
    detach_security_profile([::AWSConfig], arguments::Dict)
    detach_security_profile([::AWSConfig]; securityProfileName=, securityProfileTargetArn=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/security-profiles/{securityProfileName}/targets", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/security-profiles/{securityProfileName}/targets", securityProfileName=, securityProfileTargetArn=)

# DetachSecurityProfile Operation

Disassociates a Device Defender security profile from a thing group or from this account.

# Arguments

## `securityProfileName = ::String` -- *Required*
The security profile that is detached.


## `securityProfileTargetArn = ::String` -- *Required*
The ARN of the thing group from which the security profile is detached.




# Returns

`DetachSecurityProfileResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/DetachSecurityProfile)
"""
@inline detach_security_profile(aws::AWSConfig=default_aws_config(); args...) = detach_security_profile(aws, args)

@inline detach_security_profile(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "DELETE", "/security-profiles/{securityProfileName}/targets", args)

@inline detach_security_profile(args) = detach_security_profile(default_aws_config(), args)


"""
    using AWSSDK.Iot.detach_thing_principal
    detach_thing_principal([::AWSConfig], arguments::Dict)
    detach_thing_principal([::AWSConfig]; thingName=, *header:* x-amzn-principal=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "DELETE", "/things/{thingName}/principals", arguments::Dict)
    iot([::AWSConfig], "DELETE", "/things/{thingName}/principals", thingName=, *header:* x-amzn-principal=)

# DetachThingPrincipal Operation

Detaches the specified principal from the specified thing.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing.


## `*header:* x-amzn-principal = ::String` -- *Required*
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
    using AWSSDK.Iot.disable_topic_rule
    disable_topic_rule([::AWSConfig], arguments::Dict)
    disable_topic_rule([::AWSConfig]; ruleName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/rules/{ruleName}/disable", arguments::Dict)
    iot([::AWSConfig], "POST", "/rules/{ruleName}/disable", ruleName=)

# DisableTopicRule Operation

Disables the rule.

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
    using AWSSDK.Iot.enable_topic_rule
    enable_topic_rule([::AWSConfig], arguments::Dict)
    enable_topic_rule([::AWSConfig]; ruleName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/rules/{ruleName}/enable", arguments::Dict)
    iot([::AWSConfig], "POST", "/rules/{ruleName}/enable", ruleName=)

# EnableTopicRule Operation

Enables the rule.

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
    using AWSSDK.Iot.get_effective_policies
    get_effective_policies([::AWSConfig], arguments::Dict)
    get_effective_policies([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/effective-policies", arguments::Dict)
    iot([::AWSConfig], "POST", "/effective-policies", <keyword arguments>)

# GetEffectivePolicies Operation

Gets a list of the policies that have an effect on the authorization behavior of the specified device when it connects to the AWS IoT device gateway.

# Arguments

## `principal = ::String`
The principal.


## `cognitoIdentityPoolId = ::String`
The Cognito identity pool ID.


## `thingName = ::String`
The thing name.




# Returns

`GetEffectivePoliciesResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/GetEffectivePolicies)
"""
@inline get_effective_policies(aws::AWSConfig=default_aws_config(); args...) = get_effective_policies(aws, args)

@inline get_effective_policies(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/effective-policies", args)

@inline get_effective_policies(args) = get_effective_policies(default_aws_config(), args)


"""
    using AWSSDK.Iot.get_indexing_configuration
    get_indexing_configuration([::AWSConfig], arguments::Dict)
    get_indexing_configuration([::AWSConfig]; )

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/indexing/config", arguments::Dict)
    iot([::AWSConfig], "GET", "/indexing/config", )

# GetIndexingConfiguration Operation

Gets the search configuration.

# Arguments



# Returns

`GetIndexingConfigurationResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/GetIndexingConfiguration)
"""
@inline get_indexing_configuration(aws::AWSConfig=default_aws_config(); args...) = get_indexing_configuration(aws, args)

@inline get_indexing_configuration(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/indexing/config", args)

@inline get_indexing_configuration(args) = get_indexing_configuration(default_aws_config(), args)


"""
    using AWSSDK.Iot.get_job_document
    get_job_document([::AWSConfig], arguments::Dict)
    get_job_document([::AWSConfig]; jobId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/jobs/{jobId}/job-document", arguments::Dict)
    iot([::AWSConfig], "GET", "/jobs/{jobId}/job-document", jobId=)

# GetJobDocument Operation

Gets a job document.

# Arguments

## `jobId = ::String` -- *Required*
The unique identifier you assigned to this job when it was created.




# Returns

`GetJobDocumentResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/GetJobDocument)
"""
@inline get_job_document(aws::AWSConfig=default_aws_config(); args...) = get_job_document(aws, args)

@inline get_job_document(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/jobs/{jobId}/job-document", args)

@inline get_job_document(args) = get_job_document(default_aws_config(), args)


"""
    using AWSSDK.Iot.get_logging_options
    get_logging_options([::AWSConfig], arguments::Dict)
    get_logging_options([::AWSConfig]; )

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/loggingOptions", arguments::Dict)
    iot([::AWSConfig], "GET", "/loggingOptions", )

# GetLoggingOptions Operation

Gets the logging options.

NOTE: use of this command is not recommended. Use `GetV2LoggingOptions` instead.

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
    using AWSSDK.Iot.get_otaupdate
    get_otaupdate([::AWSConfig], arguments::Dict)
    get_otaupdate([::AWSConfig]; otaUpdateId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/otaUpdates/{otaUpdateId}", arguments::Dict)
    iot([::AWSConfig], "GET", "/otaUpdates/{otaUpdateId}", otaUpdateId=)

# GetOTAUpdate Operation

Gets an OTA update.

# Arguments

## `otaUpdateId = ::String` -- *Required*
The OTA update ID.




# Returns

`GetOTAUpdateResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `InternalFailureException`, `ServiceUnavailableException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/GetOTAUpdate)
"""
@inline get_otaupdate(aws::AWSConfig=default_aws_config(); args...) = get_otaupdate(aws, args)

@inline get_otaupdate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/otaUpdates/{otaUpdateId}", args)

@inline get_otaupdate(args) = get_otaupdate(default_aws_config(), args)


"""
    using AWSSDK.Iot.get_policy
    get_policy([::AWSConfig], arguments::Dict)
    get_policy([::AWSConfig]; policyName=)

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
    using AWSSDK.Iot.get_policy_version
    get_policy_version([::AWSConfig], arguments::Dict)
    get_policy_version([::AWSConfig]; policyName=, policyVersionId=)

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
    using AWSSDK.Iot.get_registration_code
    get_registration_code([::AWSConfig], arguments::Dict)
    get_registration_code([::AWSConfig]; )

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
    using AWSSDK.Iot.get_topic_rule
    get_topic_rule([::AWSConfig], arguments::Dict)
    get_topic_rule([::AWSConfig]; ruleName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/rules/{ruleName}", arguments::Dict)
    iot([::AWSConfig], "GET", "/rules/{ruleName}", ruleName=)

# GetTopicRule Operation

Gets information about the rule.

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
    using AWSSDK.Iot.get_v2logging_options
    get_v2logging_options([::AWSConfig], arguments::Dict)
    get_v2logging_options([::AWSConfig]; )

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/v2LoggingOptions", arguments::Dict)
    iot([::AWSConfig], "GET", "/v2LoggingOptions", )

# GetV2LoggingOptions Operation

Gets the fine grained logging options.

# Arguments



# Returns

`GetV2LoggingOptionsResponse`

# Exceptions

`InternalException`, `NotConfiguredException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/GetV2LoggingOptions)
"""
@inline get_v2logging_options(aws::AWSConfig=default_aws_config(); args...) = get_v2logging_options(aws, args)

@inline get_v2logging_options(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/v2LoggingOptions", args)

@inline get_v2logging_options(args) = get_v2logging_options(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_active_violations
    list_active_violations([::AWSConfig], arguments::Dict)
    list_active_violations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/active-violations", arguments::Dict)
    iot([::AWSConfig], "GET", "/active-violations", <keyword arguments>)

# ListActiveViolations Operation

Lists the active violations for a given Device Defender security profile.

# Arguments

## `thingName = ::String`
The name of the thing whose active violations are listed.


## `securityProfileName = ::String`
The name of the Device Defender security profile for which violations are listed.


## `nextToken = ::String`
The token for the next set of results.


## `maxResults = ::Int`
The maximum number of results to return at one time.




# Returns

`ListActiveViolationsResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListActiveViolations)
"""
@inline list_active_violations(aws::AWSConfig=default_aws_config(); args...) = list_active_violations(aws, args)

@inline list_active_violations(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/active-violations", args)

@inline list_active_violations(args) = list_active_violations(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_attached_policies
    list_attached_policies([::AWSConfig], arguments::Dict)
    list_attached_policies([::AWSConfig]; target=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/attached-policies/{target}", arguments::Dict)
    iot([::AWSConfig], "POST", "/attached-policies/{target}", target=, <keyword arguments>)

# ListAttachedPolicies Operation

Lists the policies attached to the specified thing group.

# Arguments

## `target = ::String` -- *Required*
The group for which the policies will be listed.


## `recursive = ::Bool`
When true, recursively list attached policies.


## `marker = ::String`
The token to retrieve the next set of results.


## `pageSize = ::Int`
The maximum number of results to be returned per request.




# Returns

`ListAttachedPoliciesResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListAttachedPolicies)
"""
@inline list_attached_policies(aws::AWSConfig=default_aws_config(); args...) = list_attached_policies(aws, args)

@inline list_attached_policies(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/attached-policies/{target}", args)

@inline list_attached_policies(args) = list_attached_policies(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_audit_findings
    list_audit_findings([::AWSConfig], arguments::Dict)
    list_audit_findings([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/audit/findings", arguments::Dict)
    iot([::AWSConfig], "POST", "/audit/findings", <keyword arguments>)

# ListAuditFindings Operation

Lists the findings (results) of a Device Defender audit or of the audits performed during a specified time period. (Findings are retained for 180 days.)

# Arguments

## `taskId = ::String`
A filter to limit results to the audit with the specified ID. You must specify either the taskId or the startTime and endTime, but not both.


## `checkName = ::String`
A filter to limit results to the findings for the specified audit check.


## `resourceIdentifier = [ ... ]`
Information identifying the non-compliant resource.
```
 resourceIdentifier = [
        "deviceCertificateId" =>  ::String,
        "caCertificateId" =>  ::String,
        "cognitoIdentityPoolId" =>  ::String,
        "clientId" =>  ::String,
        "policyVersionIdentifier" =>  [
            "policyName" =>  ::String,
            "policyVersionId" =>  ::String
        ],
        "account" =>  ::String
    ]
```

## `maxResults = ::Int`
The maximum number of results to return at one time. The default is 25.


## `nextToken = ::String`
The token for the next set of results.


## `startTime = timestamp`
A filter to limit results to those found after the specified time. You must specify either the startTime and endTime or the taskId, but not both.


## `endTime = timestamp`
A filter to limit results to those found before the specified time. You must specify either the startTime and endTime or the taskId, but not both.




# Returns

`ListAuditFindingsResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListAuditFindings)
"""
@inline list_audit_findings(aws::AWSConfig=default_aws_config(); args...) = list_audit_findings(aws, args)

@inline list_audit_findings(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/audit/findings", args)

@inline list_audit_findings(args) = list_audit_findings(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_audit_tasks
    list_audit_tasks([::AWSConfig], arguments::Dict)
    list_audit_tasks([::AWSConfig]; startTime=, endTime=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/audit/tasks", arguments::Dict)
    iot([::AWSConfig], "GET", "/audit/tasks", startTime=, endTime=, <keyword arguments>)

# ListAuditTasks Operation

Lists the Device Defender audits that have been performed during a given time period.

# Arguments

## `startTime = timestamp` -- *Required*
The beginning of the time period. Note that audit information is retained for a limited time (180 days). Requesting a start time prior to what is retained results in an "InvalidRequestException".


## `endTime = timestamp` -- *Required*
The end of the time period.


## `taskType = "ON_DEMAND_AUDIT_TASK" or "SCHEDULED_AUDIT_TASK"`
A filter to limit the output to the specified type of audit: can be one of "ON_DEMAND_AUDIT_TASK" or "SCHEDULED__AUDIT_TASK".


## `taskStatus = "IN_PROGRESS", "COMPLETED", "FAILED" or "CANCELED"`
A filter to limit the output to audits with the specified completion status: can be one of "IN_PROGRESS", "COMPLETED", "FAILED" or "CANCELED".


## `nextToken = ::String`
The token for the next set of results.


## `maxResults = ::Int`
The maximum number of results to return at one time. The default is 25.




# Returns

`ListAuditTasksResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListAuditTasks)
"""
@inline list_audit_tasks(aws::AWSConfig=default_aws_config(); args...) = list_audit_tasks(aws, args)

@inline list_audit_tasks(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/audit/tasks", args)

@inline list_audit_tasks(args) = list_audit_tasks(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_authorizers
    list_authorizers([::AWSConfig], arguments::Dict)
    list_authorizers([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/authorizers/", arguments::Dict)
    iot([::AWSConfig], "GET", "/authorizers/", <keyword arguments>)

# ListAuthorizers Operation

Lists the authorizers registered in your account.

# Arguments

## `pageSize = ::Int`
The maximum number of results to return at one time.


## `marker = ::String`
A marker used to get the next set of results.


## `isAscendingOrder = ::Bool`
Return the list of authorizers in ascending alphabetical order.


## `status = "ACTIVE" or "INACTIVE"`
The status of the list authorizers request.




# Returns

`ListAuthorizersResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListAuthorizers)
"""
@inline list_authorizers(aws::AWSConfig=default_aws_config(); args...) = list_authorizers(aws, args)

@inline list_authorizers(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/authorizers/", args)

@inline list_authorizers(args) = list_authorizers(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_cacertificates
    list_cacertificates([::AWSConfig], arguments::Dict)
    list_cacertificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/cacertificates", arguments::Dict)
    iot([::AWSConfig], "GET", "/cacertificates", <keyword arguments>)

# ListCACertificates Operation

Lists the CA certificates registered for your AWS account.

The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.

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
    using AWSSDK.Iot.list_certificates
    list_certificates([::AWSConfig], arguments::Dict)
    list_certificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/certificates", arguments::Dict)
    iot([::AWSConfig], "GET", "/certificates", <keyword arguments>)

# ListCertificates Operation

Lists the certificates registered in your AWS account.

The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.

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
    using AWSSDK.Iot.list_certificates_by_ca
    list_certificates_by_ca([::AWSConfig], arguments::Dict)
    list_certificates_by_ca([::AWSConfig]; caCertificateId=, <keyword arguments>)

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
    using AWSSDK.Iot.list_indices
    list_indices([::AWSConfig], arguments::Dict)
    list_indices([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/indices", arguments::Dict)
    iot([::AWSConfig], "GET", "/indices", <keyword arguments>)

# ListIndices Operation

Lists the search indices.

# Arguments

## `nextToken = ::String`
The token used to get the next set of results, or **null** if there are no additional results.


## `maxResults = ::Int`
The maximum number of results to return at one time.




# Returns

`ListIndicesResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListIndices)
"""
@inline list_indices(aws::AWSConfig=default_aws_config(); args...) = list_indices(aws, args)

@inline list_indices(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/indices", args)

@inline list_indices(args) = list_indices(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_job_executions_for_job
    list_job_executions_for_job([::AWSConfig], arguments::Dict)
    list_job_executions_for_job([::AWSConfig]; jobId=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/jobs/{jobId}/things", arguments::Dict)
    iot([::AWSConfig], "GET", "/jobs/{jobId}/things", jobId=, <keyword arguments>)

# ListJobExecutionsForJob Operation

Lists the job executions for a job.

# Arguments

## `jobId = ::String` -- *Required*
The unique identifier you assigned to this job when it was created.


## `status = "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "REJECTED", "REMOVED" or "CANCELED"`
The status of the job.


## `maxResults = ::Int`
The maximum number of results to be returned per request.


## `nextToken = ::String`
The token to retrieve the next set of results.




# Returns

`ListJobExecutionsForJobResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListJobExecutionsForJob)
"""
@inline list_job_executions_for_job(aws::AWSConfig=default_aws_config(); args...) = list_job_executions_for_job(aws, args)

@inline list_job_executions_for_job(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/jobs/{jobId}/things", args)

@inline list_job_executions_for_job(args) = list_job_executions_for_job(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_job_executions_for_thing
    list_job_executions_for_thing([::AWSConfig], arguments::Dict)
    list_job_executions_for_thing([::AWSConfig]; thingName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/things/{thingName}/jobs", arguments::Dict)
    iot([::AWSConfig], "GET", "/things/{thingName}/jobs", thingName=, <keyword arguments>)

# ListJobExecutionsForThing Operation

Lists the job executions for the specified thing.

# Arguments

## `thingName = ::String` -- *Required*
The thing name.


## `status = "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "REJECTED", "REMOVED" or "CANCELED"`
An optional filter that lets you search for jobs that have the specified status.


## `maxResults = ::Int`
The maximum number of results to be returned per request.


## `nextToken = ::String`
The token to retrieve the next set of results.




# Returns

`ListJobExecutionsForThingResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListJobExecutionsForThing)
"""
@inline list_job_executions_for_thing(aws::AWSConfig=default_aws_config(); args...) = list_job_executions_for_thing(aws, args)

@inline list_job_executions_for_thing(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/things/{thingName}/jobs", args)

@inline list_job_executions_for_thing(args) = list_job_executions_for_thing(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_jobs
    list_jobs([::AWSConfig], arguments::Dict)
    list_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/jobs", arguments::Dict)
    iot([::AWSConfig], "GET", "/jobs", <keyword arguments>)

# ListJobs Operation

Lists jobs.

# Arguments

## `status = "IN_PROGRESS", "CANCELED", "COMPLETED" or "DELETION_IN_PROGRESS"`
An optional filter that lets you search for jobs that have the specified status.


## `targetSelection = "CONTINUOUS" or "SNAPSHOT"`
Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing when a change is detected in a target. For example, a job will run on a thing when the thing is added to a target group, even after the job was completed by all things originally in the group.


## `maxResults = ::Int`
The maximum number of results to return per request.


## `nextToken = ::String`
The token to retrieve the next set of results.


## `thingGroupName = ::String`
A filter that limits the returned jobs to those for the specified group.


## `thingGroupId = ::String`
A filter that limits the returned jobs to those for the specified group.




# Returns

`ListJobsResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListJobs)
"""
@inline list_jobs(aws::AWSConfig=default_aws_config(); args...) = list_jobs(aws, args)

@inline list_jobs(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/jobs", args)

@inline list_jobs(args) = list_jobs(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_otaupdates
    list_otaupdates([::AWSConfig], arguments::Dict)
    list_otaupdates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/otaUpdates", arguments::Dict)
    iot([::AWSConfig], "GET", "/otaUpdates", <keyword arguments>)

# ListOTAUpdates Operation

Lists OTA updates.

# Arguments

## `maxResults = ::Int`
The maximum number of results to return at one time.


## `nextToken = ::String`
A token used to retrieve the next set of results.


## `otaUpdateStatus = "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE" or "CREATE_FAILED"`
The OTA update job status.




# Returns

`ListOTAUpdatesResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `InternalFailureException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListOTAUpdates)
"""
@inline list_otaupdates(aws::AWSConfig=default_aws_config(); args...) = list_otaupdates(aws, args)

@inline list_otaupdates(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/otaUpdates", args)

@inline list_otaupdates(args) = list_otaupdates(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_outgoing_certificates
    list_outgoing_certificates([::AWSConfig], arguments::Dict)
    list_outgoing_certificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/certificates-out-going", arguments::Dict)
    iot([::AWSConfig], "GET", "/certificates-out-going", <keyword arguments>)

# ListOutgoingCertificates Operation

Lists certificates that are being transferred but not yet accepted.

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
    using AWSSDK.Iot.list_policies
    list_policies([::AWSConfig], arguments::Dict)
    list_policies([::AWSConfig]; <keyword arguments>)

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
    using AWSSDK.Iot.list_policy_principals
    list_policy_principals([::AWSConfig], arguments::Dict)
    list_policy_principals([::AWSConfig]; *header:* x-amzn-iot-policy=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/policy-principals", arguments::Dict)
    iot([::AWSConfig], "GET", "/policy-principals", *header:* x-amzn-iot-policy=, <keyword arguments>)

# ListPolicyPrincipals Operation

Lists the principals associated with the specified policy.

**Note:** This API is deprecated. Please use [ListTargetsForPolicy](@ref) instead.

# Arguments

## `*header:* x-amzn-iot-policy = ::String` -- *Required*
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
    using AWSSDK.Iot.list_policy_versions
    list_policy_versions([::AWSConfig], arguments::Dict)
    list_policy_versions([::AWSConfig]; policyName=)

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
    using AWSSDK.Iot.list_principal_policies
    list_principal_policies([::AWSConfig], arguments::Dict)
    list_principal_policies([::AWSConfig]; *header:* x-amzn-iot-principal=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/principal-policies", arguments::Dict)
    iot([::AWSConfig], "GET", "/principal-policies", *header:* x-amzn-iot-principal=, <keyword arguments>)

# ListPrincipalPolicies Operation

Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in [AmazonCognito Identity format](http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax).

**Note:** This API is deprecated. Please use [ListAttachedPolicies](@ref) instead.

# Arguments

## `*header:* x-amzn-iot-principal = ::String` -- *Required*
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
    using AWSSDK.Iot.list_principal_things
    list_principal_things([::AWSConfig], arguments::Dict)
    list_principal_things([::AWSConfig]; *header:* x-amzn-principal=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/principals/things", arguments::Dict)
    iot([::AWSConfig], "GET", "/principals/things", *header:* x-amzn-principal=, <keyword arguments>)

# ListPrincipalThings Operation

Lists the things associated with the specified principal.

# Arguments

## `nextToken = ::String`
The token to retrieve the next set of results.


## `maxResults = ::Int`
The maximum number of results to return in this operation.


## `*header:* x-amzn-principal = ::String` -- *Required*
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
    using AWSSDK.Iot.list_role_aliases
    list_role_aliases([::AWSConfig], arguments::Dict)
    list_role_aliases([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/role-aliases", arguments::Dict)
    iot([::AWSConfig], "GET", "/role-aliases", <keyword arguments>)

# ListRoleAliases Operation

Lists the role aliases registered in your account.

# Arguments

## `pageSize = ::Int`
The maximum number of results to return at one time.


## `marker = ::String`
A marker used to get the next set of results.


## `isAscendingOrder = ::Bool`
Return the list of role aliases in ascending alphabetical order.




# Returns

`ListRoleAliasesResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListRoleAliases)
"""
@inline list_role_aliases(aws::AWSConfig=default_aws_config(); args...) = list_role_aliases(aws, args)

@inline list_role_aliases(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/role-aliases", args)

@inline list_role_aliases(args) = list_role_aliases(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_scheduled_audits
    list_scheduled_audits([::AWSConfig], arguments::Dict)
    list_scheduled_audits([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/audit/scheduledaudits", arguments::Dict)
    iot([::AWSConfig], "GET", "/audit/scheduledaudits", <keyword arguments>)

# ListScheduledAudits Operation

Lists all of your scheduled audits.

# Arguments

## `nextToken = ::String`
The token for the next set of results.


## `maxResults = ::Int`
The maximum number of results to return at one time. The default is 25.




# Returns

`ListScheduledAuditsResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListScheduledAudits)
"""
@inline list_scheduled_audits(aws::AWSConfig=default_aws_config(); args...) = list_scheduled_audits(aws, args)

@inline list_scheduled_audits(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/audit/scheduledaudits", args)

@inline list_scheduled_audits(args) = list_scheduled_audits(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_security_profiles
    list_security_profiles([::AWSConfig], arguments::Dict)
    list_security_profiles([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/security-profiles", arguments::Dict)
    iot([::AWSConfig], "GET", "/security-profiles", <keyword arguments>)

# ListSecurityProfiles Operation

Lists the Device Defender security profiles you have created. You can use filters to list only those security profiles associated with a thing group or only those associated with your account.

# Arguments

## `nextToken = ::String`
The token for the next set of results.


## `maxResults = ::Int`
The maximum number of results to return at one time.




# Returns

`ListSecurityProfilesResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListSecurityProfiles)
"""
@inline list_security_profiles(aws::AWSConfig=default_aws_config(); args...) = list_security_profiles(aws, args)

@inline list_security_profiles(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/security-profiles", args)

@inline list_security_profiles(args) = list_security_profiles(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_security_profiles_for_target
    list_security_profiles_for_target([::AWSConfig], arguments::Dict)
    list_security_profiles_for_target([::AWSConfig]; securityProfileTargetArn=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/security-profiles-for-target", arguments::Dict)
    iot([::AWSConfig], "GET", "/security-profiles-for-target", securityProfileTargetArn=, <keyword arguments>)

# ListSecurityProfilesForTarget Operation

Lists the Device Defender security profiles attached to a target (thing group).

# Arguments

## `nextToken = ::String`
The token for the next set of results.


## `maxResults = ::Int`
The maximum number of results to return at one time.


## `recursive = ::Bool`
If true, return child groups as well.


## `securityProfileTargetArn = ::String` -- *Required*
The ARN of the target (thing group) whose attached security profiles you want to get.




# Returns

`ListSecurityProfilesForTargetResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListSecurityProfilesForTarget)
"""
@inline list_security_profiles_for_target(aws::AWSConfig=default_aws_config(); args...) = list_security_profiles_for_target(aws, args)

@inline list_security_profiles_for_target(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/security-profiles-for-target", args)

@inline list_security_profiles_for_target(args) = list_security_profiles_for_target(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_streams
    list_streams([::AWSConfig], arguments::Dict)
    list_streams([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/streams", arguments::Dict)
    iot([::AWSConfig], "GET", "/streams", <keyword arguments>)

# ListStreams Operation

Lists all of the streams in your AWS account.

# Arguments

## `maxResults = ::Int`
The maximum number of results to return at a time.


## `nextToken = ::String`
A token used to get the next set of results.


## `isAscendingOrder = ::Bool`
Set to true to return the list of streams in ascending order.




# Returns

`ListStreamsResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListStreams)
"""
@inline list_streams(aws::AWSConfig=default_aws_config(); args...) = list_streams(aws, args)

@inline list_streams(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/streams", args)

@inline list_streams(args) = list_streams(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_targets_for_policy
    list_targets_for_policy([::AWSConfig], arguments::Dict)
    list_targets_for_policy([::AWSConfig]; policyName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/policy-targets/{policyName}", arguments::Dict)
    iot([::AWSConfig], "POST", "/policy-targets/{policyName}", policyName=, <keyword arguments>)

# ListTargetsForPolicy Operation

List targets for the specified policy.

# Arguments

## `policyName = ::String` -- *Required*
The policy name.


## `marker = ::String`
A marker used to get the next set of results.


## `pageSize = ::Int`
The maximum number of results to return at one time.




# Returns

`ListTargetsForPolicyResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListTargetsForPolicy)
"""
@inline list_targets_for_policy(aws::AWSConfig=default_aws_config(); args...) = list_targets_for_policy(aws, args)

@inline list_targets_for_policy(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/policy-targets/{policyName}", args)

@inline list_targets_for_policy(args) = list_targets_for_policy(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_targets_for_security_profile
    list_targets_for_security_profile([::AWSConfig], arguments::Dict)
    list_targets_for_security_profile([::AWSConfig]; securityProfileName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/security-profiles/{securityProfileName}/targets", arguments::Dict)
    iot([::AWSConfig], "GET", "/security-profiles/{securityProfileName}/targets", securityProfileName=, <keyword arguments>)

# ListTargetsForSecurityProfile Operation

Lists the targets (thing groups) associated with a given Device Defender security profile.

# Arguments

## `securityProfileName = ::String` -- *Required*
The security profile.


## `nextToken = ::String`
The token for the next set of results.


## `maxResults = ::Int`
The maximum number of results to return at one time.




# Returns

`ListTargetsForSecurityProfileResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListTargetsForSecurityProfile)
"""
@inline list_targets_for_security_profile(aws::AWSConfig=default_aws_config(); args...) = list_targets_for_security_profile(aws, args)

@inline list_targets_for_security_profile(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/security-profiles/{securityProfileName}/targets", args)

@inline list_targets_for_security_profile(args) = list_targets_for_security_profile(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_thing_groups
    list_thing_groups([::AWSConfig], arguments::Dict)
    list_thing_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/thing-groups", arguments::Dict)
    iot([::AWSConfig], "GET", "/thing-groups", <keyword arguments>)

# ListThingGroups Operation

List the thing groups in your account.

# Arguments

## `nextToken = ::String`
The token to retrieve the next set of results.


## `maxResults = ::Int`
The maximum number of results to return at one time.


## `parentGroup = ::String`
A filter that limits the results to those with the specified parent group.


## `namePrefixFilter = ::String`
A filter that limits the results to those with the specified name prefix.


## `recursive = ::Bool`
If true, return child groups as well.




# Returns

`ListThingGroupsResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListThingGroups)
"""
@inline list_thing_groups(aws::AWSConfig=default_aws_config(); args...) = list_thing_groups(aws, args)

@inline list_thing_groups(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/thing-groups", args)

@inline list_thing_groups(args) = list_thing_groups(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_thing_groups_for_thing
    list_thing_groups_for_thing([::AWSConfig], arguments::Dict)
    list_thing_groups_for_thing([::AWSConfig]; thingName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/things/{thingName}/thing-groups", arguments::Dict)
    iot([::AWSConfig], "GET", "/things/{thingName}/thing-groups", thingName=, <keyword arguments>)

# ListThingGroupsForThing Operation

List the thing groups to which the specified thing belongs.

# Arguments

## `thingName = ::String` -- *Required*
The thing name.


## `nextToken = ::String`
The token to retrieve the next set of results.


## `maxResults = ::Int`
The maximum number of results to return at one time.




# Returns

`ListThingGroupsForThingResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListThingGroupsForThing)
"""
@inline list_thing_groups_for_thing(aws::AWSConfig=default_aws_config(); args...) = list_thing_groups_for_thing(aws, args)

@inline list_thing_groups_for_thing(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/things/{thingName}/thing-groups", args)

@inline list_thing_groups_for_thing(args) = list_thing_groups_for_thing(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_thing_principals
    list_thing_principals([::AWSConfig], arguments::Dict)
    list_thing_principals([::AWSConfig]; thingName=)

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
    using AWSSDK.Iot.list_thing_registration_task_reports
    list_thing_registration_task_reports([::AWSConfig], arguments::Dict)
    list_thing_registration_task_reports([::AWSConfig]; taskId=, reportType=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/thing-registration-tasks/{taskId}/reports", arguments::Dict)
    iot([::AWSConfig], "GET", "/thing-registration-tasks/{taskId}/reports", taskId=, reportType=, <keyword arguments>)

# ListThingRegistrationTaskReports Operation

Information about the thing registration tasks.

# Arguments

## `taskId = ::String` -- *Required*
The id of the task.


## `reportType = "ERRORS" or "RESULTS"` -- *Required*
The type of task report.


## `nextToken = ::String`
The token to retrieve the next set of results.


## `maxResults = ::Int`
The maximum number of results to return per request.




# Returns

`ListThingRegistrationTaskReportsResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListThingRegistrationTaskReports)
"""
@inline list_thing_registration_task_reports(aws::AWSConfig=default_aws_config(); args...) = list_thing_registration_task_reports(aws, args)

@inline list_thing_registration_task_reports(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/thing-registration-tasks/{taskId}/reports", args)

@inline list_thing_registration_task_reports(args) = list_thing_registration_task_reports(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_thing_registration_tasks
    list_thing_registration_tasks([::AWSConfig], arguments::Dict)
    list_thing_registration_tasks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/thing-registration-tasks", arguments::Dict)
    iot([::AWSConfig], "GET", "/thing-registration-tasks", <keyword arguments>)

# ListThingRegistrationTasks Operation

List bulk thing provisioning tasks.

# Arguments

## `nextToken = ::String`
The token to retrieve the next set of results.


## `maxResults = ::Int`
The maximum number of results to return at one time.


## `status = "InProgress", "Completed", "Failed", "Cancelled" or "Cancelling"`
The status of the bulk thing provisioning task.




# Returns

`ListThingRegistrationTasksResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListThingRegistrationTasks)
"""
@inline list_thing_registration_tasks(aws::AWSConfig=default_aws_config(); args...) = list_thing_registration_tasks(aws, args)

@inline list_thing_registration_tasks(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/thing-registration-tasks", args)

@inline list_thing_registration_tasks(args) = list_thing_registration_tasks(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_thing_types
    list_thing_types([::AWSConfig], arguments::Dict)
    list_thing_types([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/thing-types", arguments::Dict)
    iot([::AWSConfig], "GET", "/thing-types", <keyword arguments>)

# ListThingTypes Operation

Lists the existing thing types.

# Arguments

## `nextToken = ::String`
The token to retrieve the next set of results.


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
    using AWSSDK.Iot.list_things
    list_things([::AWSConfig], arguments::Dict)
    list_things([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/things", arguments::Dict)
    iot([::AWSConfig], "GET", "/things", <keyword arguments>)

# ListThings Operation

Lists your things. Use the **attributeName** and **attributeValue** parameters to filter your things. For example, calling `ListThings` with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute **Color** with the value **Red**.

# Arguments

## `nextToken = ::String`
The token to retrieve the next set of results.


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
    using AWSSDK.Iot.list_things_in_thing_group
    list_things_in_thing_group([::AWSConfig], arguments::Dict)
    list_things_in_thing_group([::AWSConfig]; thingGroupName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/thing-groups/{thingGroupName}/things", arguments::Dict)
    iot([::AWSConfig], "GET", "/thing-groups/{thingGroupName}/things", thingGroupName=, <keyword arguments>)

# ListThingsInThingGroup Operation

Lists the things in the specified group.

# Arguments

## `thingGroupName = ::String` -- *Required*
The thing group name.


## `recursive = ::Bool`
When true, list things in this thing group and in all child groups as well.


## `nextToken = ::String`
The token to retrieve the next set of results.


## `maxResults = ::Int`
The maximum number of results to return at one time.




# Returns

`ListThingsInThingGroupResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListThingsInThingGroup)
"""
@inline list_things_in_thing_group(aws::AWSConfig=default_aws_config(); args...) = list_things_in_thing_group(aws, args)

@inline list_things_in_thing_group(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/thing-groups/{thingGroupName}/things", args)

@inline list_things_in_thing_group(args) = list_things_in_thing_group(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_topic_rules
    list_topic_rules([::AWSConfig], arguments::Dict)
    list_topic_rules([::AWSConfig]; <keyword arguments>)

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
    using AWSSDK.Iot.list_v2logging_levels
    list_v2logging_levels([::AWSConfig], arguments::Dict)
    list_v2logging_levels([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/v2LoggingLevel", arguments::Dict)
    iot([::AWSConfig], "GET", "/v2LoggingLevel", <keyword arguments>)

# ListV2LoggingLevels Operation

Lists logging levels.

# Arguments

## `targetType = "DEFAULT" or "THING_GROUP"`
The type of resource for which you are configuring logging. Must be `THING_Group`.


## `nextToken = ::String`
The token used to get the next set of results, or **null** if there are no additional results.


## `maxResults = ::Int`
The maximum number of results to return at one time.




# Returns

`ListV2LoggingLevelsResponse`

# Exceptions

`InternalException`, `NotConfiguredException`, `InvalidRequestException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListV2LoggingLevels)
"""
@inline list_v2logging_levels(aws::AWSConfig=default_aws_config(); args...) = list_v2logging_levels(aws, args)

@inline list_v2logging_levels(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/v2LoggingLevel", args)

@inline list_v2logging_levels(args) = list_v2logging_levels(default_aws_config(), args)


"""
    using AWSSDK.Iot.list_violation_events
    list_violation_events([::AWSConfig], arguments::Dict)
    list_violation_events([::AWSConfig]; startTime=, endTime=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "GET", "/violation-events", arguments::Dict)
    iot([::AWSConfig], "GET", "/violation-events", startTime=, endTime=, <keyword arguments>)

# ListViolationEvents Operation

Lists the Device Defender security profile violations discovered during the given time period. You can use filters to limit the results to those alerts issued for a particular security profile, behavior or thing (device).

# Arguments

## `startTime = timestamp` -- *Required*
The start time for the alerts to be listed.


## `endTime = timestamp` -- *Required*
The end time for the alerts to be listed.


## `thingName = ::String`
A filter to limit results to those alerts caused by the specified thing.


## `securityProfileName = ::String`
A filter to limit results to those alerts generated by the specified security profile.


## `nextToken = ::String`
The token for the next set of results.


## `maxResults = ::Int`
The maximum number of results to return at one time.




# Returns

`ListViolationEventsResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ListViolationEvents)
"""
@inline list_violation_events(aws::AWSConfig=default_aws_config(); args...) = list_violation_events(aws, args)

@inline list_violation_events(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "GET", "/violation-events", args)

@inline list_violation_events(args) = list_violation_events(default_aws_config(), args)


"""
    using AWSSDK.Iot.register_cacertificate
    register_cacertificate([::AWSConfig], arguments::Dict)
    register_cacertificate([::AWSConfig]; caCertificate=, verificationCertificate=, <keyword arguments>)

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


## `registrationConfig = [ ... ]`
Information about the registration configuration.
```
 registrationConfig = [
        "templateBody" =>  ::String,
        "roleArn" =>  ::String
    ]
```



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
    using AWSSDK.Iot.register_certificate
    register_certificate([::AWSConfig], arguments::Dict)
    register_certificate([::AWSConfig]; certificatePem=, <keyword arguments>)

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
    using AWSSDK.Iot.register_thing
    register_thing([::AWSConfig], arguments::Dict)
    register_thing([::AWSConfig]; templateBody=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/things", arguments::Dict)
    iot([::AWSConfig], "POST", "/things", templateBody=, <keyword arguments>)

# RegisterThing Operation

Provisions a thing.

# Arguments

## `templateBody = ::String` -- *Required*
The provisioning template. See [Programmatic Provisioning](http://docs.aws.amazon.com/iot/latest/developerguide/programmatic-provisioning.html) for more information.


## `parameters = ::Dict{String,String}`
The parameters for provisioning a thing. See [Programmatic Provisioning](http://docs.aws.amazon.com/iot/latest/developerguide/programmatic-provisioning.html) for more information.




# Returns

`RegisterThingResponse`

# Exceptions

`InternalFailureException`, `ServiceUnavailableException`, `InvalidRequestException`, `UnauthorizedException`, `ThrottlingException`, `ConflictingResourceUpdateException` or `ResourceRegistrationFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/RegisterThing)
"""
@inline register_thing(aws::AWSConfig=default_aws_config(); args...) = register_thing(aws, args)

@inline register_thing(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/things", args)

@inline register_thing(args) = register_thing(default_aws_config(), args)


"""
    using AWSSDK.Iot.reject_certificate_transfer
    reject_certificate_transfer([::AWSConfig], arguments::Dict)
    reject_certificate_transfer([::AWSConfig]; certificateId=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/reject-certificate-transfer/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/reject-certificate-transfer/{certificateId}", certificateId=, <keyword arguments>)

# RejectCertificateTransfer Operation

Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from **PENDING_TRANSFER** to **INACTIVE**.

To check for pending certificate transfers, call [ListCertificates](@ref) to enumerate your certificates.

This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source's account in the INACTIVE state.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)


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
    using AWSSDK.Iot.remove_thing_from_thing_group
    remove_thing_from_thing_group([::AWSConfig], arguments::Dict)
    remove_thing_from_thing_group([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/thing-groups/removeThingFromThingGroup", arguments::Dict)
    iot([::AWSConfig], "PUT", "/thing-groups/removeThingFromThingGroup", <keyword arguments>)

# RemoveThingFromThingGroup Operation

Remove the specified thing from the specified group.

# Arguments

## `thingGroupName = ::String`
The group name.


## `thingGroupArn = ::String`
The group ARN.


## `thingName = ::String`
The name of the thing to remove from the group.


## `thingArn = ::String`
The ARN of the thing to remove from the group.




# Returns

`RemoveThingFromThingGroupResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/RemoveThingFromThingGroup)
"""
@inline remove_thing_from_thing_group(aws::AWSConfig=default_aws_config(); args...) = remove_thing_from_thing_group(aws, args)

@inline remove_thing_from_thing_group(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/thing-groups/removeThingFromThingGroup", args)

@inline remove_thing_from_thing_group(args) = remove_thing_from_thing_group(default_aws_config(), args)


"""
    using AWSSDK.Iot.replace_topic_rule
    replace_topic_rule([::AWSConfig], arguments::Dict)
    replace_topic_rule([::AWSConfig]; ruleName=, topicRulePayload=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/rules/{ruleName}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/rules/{ruleName}", ruleName=, topicRulePayload=)

# ReplaceTopicRule Operation

Replaces the rule. You must specify all parameters for the new rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.

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
            ],
            "iotAnalytics" =>  [
                "channelArn" =>  ::String,
                "channelName" =>  ::String,
                "roleArn" =>  ::String
            ],
            "stepFunctions" =>  [
                "executionNamePrefix" =>  ::String,
                "stateMachineName" => <required> ::String,
                "roleArn" => <required> ::String
            ]
        ], ...],
        "ruleDisabled" =>  ::Bool,
        "awsIotSqlVersion" =>  ::String,
        "errorAction" =>  [
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
            ],
            "iotAnalytics" =>  [
                "channelArn" =>  ::String,
                "channelName" =>  ::String,
                "roleArn" =>  ::String
            ],
            "stepFunctions" =>  [
                "executionNamePrefix" =>  ::String,
                "stateMachineName" => <required> ::String,
                "roleArn" => <required> ::String
            ]
        ]
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
    using AWSSDK.Iot.search_index
    search_index([::AWSConfig], arguments::Dict)
    search_index([::AWSConfig]; queryString=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/indices/search", arguments::Dict)
    iot([::AWSConfig], "POST", "/indices/search", queryString=, <keyword arguments>)

# SearchIndex Operation

The query search index.

# Arguments

## `indexName = ::String`
The search index name.


## `queryString = ::String` -- *Required*
The search query string.


## `nextToken = ::String`
The token used to get the next set of results, or **null** if there are no additional results.


## `maxResults = ::Int`
The maximum number of results to return at one time.


## `queryVersion = ::String`
The query version.




# Returns

`SearchIndexResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException`, `ResourceNotFoundException`, `InvalidQueryException` or `IndexNotReadyException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/SearchIndex)
"""
@inline search_index(aws::AWSConfig=default_aws_config(); args...) = search_index(aws, args)

@inline search_index(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/indices/search", args)

@inline search_index(args) = search_index(default_aws_config(), args)


"""
    using AWSSDK.Iot.set_default_authorizer
    set_default_authorizer([::AWSConfig], arguments::Dict)
    set_default_authorizer([::AWSConfig]; authorizerName=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/default-authorizer", arguments::Dict)
    iot([::AWSConfig], "POST", "/default-authorizer", authorizerName=)

# SetDefaultAuthorizer Operation

Sets the default authorizer. This will be used if a websocket connection is made without specifying an authorizer.

# Arguments

## `authorizerName = ::String` -- *Required*
The authorizer name.




# Returns

`SetDefaultAuthorizerResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceAlreadyExistsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/SetDefaultAuthorizer)
"""
@inline set_default_authorizer(aws::AWSConfig=default_aws_config(); args...) = set_default_authorizer(aws, args)

@inline set_default_authorizer(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/default-authorizer", args)

@inline set_default_authorizer(args) = set_default_authorizer(default_aws_config(), args)


"""
    using AWSSDK.Iot.set_default_policy_version
    set_default_policy_version([::AWSConfig], arguments::Dict)
    set_default_policy_version([::AWSConfig]; policyName=, policyVersionId=)

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
    using AWSSDK.Iot.set_logging_options
    set_logging_options([::AWSConfig], arguments::Dict)
    set_logging_options([::AWSConfig]; loggingOptionsPayload=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/loggingOptions", arguments::Dict)
    iot([::AWSConfig], "POST", "/loggingOptions", loggingOptionsPayload=)

# SetLoggingOptions Operation

Sets the logging options.

NOTE: use of this command is not recommended. Use `SetV2LoggingOptions` instead.

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
    using AWSSDK.Iot.set_v2logging_level
    set_v2logging_level([::AWSConfig], arguments::Dict)
    set_v2logging_level([::AWSConfig]; logTarget=, logLevel=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/v2LoggingLevel", arguments::Dict)
    iot([::AWSConfig], "POST", "/v2LoggingLevel", logTarget=, logLevel=)

# SetV2LoggingLevel Operation

Sets the logging level.

# Arguments

## `logTarget = [ ... ]` -- *Required*
The log target.
```
 logTarget = [
        "targetType" => <required> "DEFAULT" or "THING_GROUP",
        "targetName" =>  ::String
    ]
```

## `logLevel = "DEBUG", "INFO", "ERROR", "WARN" or "DISABLED"` -- *Required*
The log level.




# Exceptions

`InternalException`, `NotConfiguredException`, `InvalidRequestException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/SetV2LoggingLevel)
"""
@inline set_v2logging_level(aws::AWSConfig=default_aws_config(); args...) = set_v2logging_level(aws, args)

@inline set_v2logging_level(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/v2LoggingLevel", args)

@inline set_v2logging_level(args) = set_v2logging_level(default_aws_config(), args)


"""
    using AWSSDK.Iot.set_v2logging_options
    set_v2logging_options([::AWSConfig], arguments::Dict)
    set_v2logging_options([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/v2LoggingOptions", arguments::Dict)
    iot([::AWSConfig], "POST", "/v2LoggingOptions", <keyword arguments>)

# SetV2LoggingOptions Operation

Sets the logging options for the V2 logging service.

# Arguments

## `roleArn = ::String`
The ARN of the role that allows IoT to write to Cloudwatch logs.


## `defaultLogLevel = "DEBUG", "INFO", "ERROR", "WARN" or "DISABLED"`
The default logging level.


## `disableAllLogs = ::Bool`
If true all logs are disabled. The default is false.




# Exceptions

`InternalException`, `InvalidRequestException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/SetV2LoggingOptions)
"""
@inline set_v2logging_options(aws::AWSConfig=default_aws_config(); args...) = set_v2logging_options(aws, args)

@inline set_v2logging_options(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/v2LoggingOptions", args)

@inline set_v2logging_options(args) = set_v2logging_options(default_aws_config(), args)


"""
    using AWSSDK.Iot.start_on_demand_audit_task
    start_on_demand_audit_task([::AWSConfig], arguments::Dict)
    start_on_demand_audit_task([::AWSConfig]; targetCheckNames=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/audit/tasks", arguments::Dict)
    iot([::AWSConfig], "POST", "/audit/tasks", targetCheckNames=)

# StartOnDemandAuditTask Operation

Starts an on-demand Device Defender audit.

# Arguments

## `targetCheckNames = [::String, ...]` -- *Required*
Which checks are performed during the audit. The checks you specify must be enabled for your account or an exception occurs. Use `DescribeAccountAuditConfiguration` to see the list of all checks including those that are enabled or `UpdateAccountAuditConfiguration` to select which checks are enabled.




# Returns

`StartOnDemandAuditTaskResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `InternalFailureException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/StartOnDemandAuditTask)
"""
@inline start_on_demand_audit_task(aws::AWSConfig=default_aws_config(); args...) = start_on_demand_audit_task(aws, args)

@inline start_on_demand_audit_task(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/audit/tasks", args)

@inline start_on_demand_audit_task(args) = start_on_demand_audit_task(default_aws_config(), args)


"""
    using AWSSDK.Iot.start_thing_registration_task
    start_thing_registration_task([::AWSConfig], arguments::Dict)
    start_thing_registration_task([::AWSConfig]; templateBody=, inputFileBucket=, inputFileKey=, roleArn=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/thing-registration-tasks", arguments::Dict)
    iot([::AWSConfig], "POST", "/thing-registration-tasks", templateBody=, inputFileBucket=, inputFileKey=, roleArn=)

# StartThingRegistrationTask Operation

Creates a bulk thing provisioning task.

# Arguments

## `templateBody = ::String` -- *Required*
The provisioning template.


## `inputFileBucket = ::String` -- *Required*
The S3 bucket that contains the input file.


## `inputFileKey = ::String` -- *Required*
The name of input file within the S3 bucket. This file contains a newline delimited JSON file. Each line contains the parameter values to provision one device (thing).


## `roleArn = ::String` -- *Required*
The IAM role ARN that grants permission the input file.




# Returns

`StartThingRegistrationTaskResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/StartThingRegistrationTask)
"""
@inline start_thing_registration_task(aws::AWSConfig=default_aws_config(); args...) = start_thing_registration_task(aws, args)

@inline start_thing_registration_task(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/thing-registration-tasks", args)

@inline start_thing_registration_task(args) = start_thing_registration_task(default_aws_config(), args)


"""
    using AWSSDK.Iot.stop_thing_registration_task
    stop_thing_registration_task([::AWSConfig], arguments::Dict)
    stop_thing_registration_task([::AWSConfig]; taskId=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/thing-registration-tasks/{taskId}/cancel", arguments::Dict)
    iot([::AWSConfig], "PUT", "/thing-registration-tasks/{taskId}/cancel", taskId=)

# StopThingRegistrationTask Operation

Cancels a bulk thing provisioning task.

# Arguments

## `taskId = ::String` -- *Required*
The bulk thing provisioning task ID.




# Returns

`StopThingRegistrationTaskResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/StopThingRegistrationTask)
"""
@inline stop_thing_registration_task(aws::AWSConfig=default_aws_config(); args...) = stop_thing_registration_task(aws, args)

@inline stop_thing_registration_task(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/thing-registration-tasks/{taskId}/cancel", args)

@inline stop_thing_registration_task(args) = stop_thing_registration_task(default_aws_config(), args)


"""
    using AWSSDK.Iot.test_authorization
    test_authorization([::AWSConfig], arguments::Dict)
    test_authorization([::AWSConfig]; authInfos=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/test-authorization", arguments::Dict)
    iot([::AWSConfig], "POST", "/test-authorization", authInfos=, <keyword arguments>)

# TestAuthorization Operation

Tests if a specified principal is authorized to perform an AWS IoT action on a specified resource. Use this to test and debug the authorization behavior of devices that connect to the AWS IoT device gateway.

# Arguments

## `principal = ::String`
The principal.


## `cognitoIdentityPoolId = ::String`
The Cognito identity pool ID.


## `authInfos = [[ ... ], ...]` -- *Required*
A list of authorization info objects. Simulating authorization will create a response for each `authInfo` object in the list.
```
 authInfos = [[
        "actionType" =>  "PUBLISH", "SUBSCRIBE", "RECEIVE" or "CONNECT",
        "resources" =>  [::String, ...]
    ], ...]
```

## `clientId = ::String`
The MQTT client ID.


## `policyNamesToAdd = [::String, ...]`
When testing custom authorization, the policies specified here are treated as if they are attached to the principal being authorized.


## `policyNamesToSkip = [::String, ...]`
When testing custom authorization, the policies specified here are treated as if they are not attached to the principal being authorized.




# Returns

`TestAuthorizationResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/TestAuthorization)
"""
@inline test_authorization(aws::AWSConfig=default_aws_config(); args...) = test_authorization(aws, args)

@inline test_authorization(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/test-authorization", args)

@inline test_authorization(args) = test_authorization(default_aws_config(), args)


"""
    using AWSSDK.Iot.test_invoke_authorizer
    test_invoke_authorizer([::AWSConfig], arguments::Dict)
    test_invoke_authorizer([::AWSConfig]; authorizerName=, token=, tokenSignature=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/authorizer/{authorizerName}/test", arguments::Dict)
    iot([::AWSConfig], "POST", "/authorizer/{authorizerName}/test", authorizerName=, token=, tokenSignature=)

# TestInvokeAuthorizer Operation

Tests a custom authorization behavior by invoking a specified custom authorizer. Use this to test and debug the custom authorization behavior of devices that connect to the AWS IoT device gateway.

# Arguments

## `authorizerName = ::String` -- *Required*
The custom authorizer name.


## `token = ::String` -- *Required*
The token returned by your custom authentication service.


## `tokenSignature = ::String` -- *Required*
The signature made with the token and your custom authentication service's private key.




# Returns

`TestInvokeAuthorizerResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `InvalidResponseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/TestInvokeAuthorizer)
"""
@inline test_invoke_authorizer(aws::AWSConfig=default_aws_config(); args...) = test_invoke_authorizer(aws, args)

@inline test_invoke_authorizer(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/authorizer/{authorizerName}/test", args)

@inline test_invoke_authorizer(args) = test_invoke_authorizer(default_aws_config(), args)


"""
    using AWSSDK.Iot.transfer_certificate
    transfer_certificate([::AWSConfig], arguments::Dict)
    transfer_certificate([::AWSConfig]; certificateId=, targetAwsAccount=, <keyword arguments>)

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
The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)


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
    using AWSSDK.Iot.update_account_audit_configuration
    update_account_audit_configuration([::AWSConfig], arguments::Dict)
    update_account_audit_configuration([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/audit/configuration", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/audit/configuration", <keyword arguments>)

# UpdateAccountAuditConfiguration Operation

Configures or reconfigures the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.

# Arguments

## `roleArn = ::String`
The ARN of the role that grants permission to AWS IoT to access information about your devices, policies, certificates and other items as necessary when performing an audit.


## `auditNotificationTargetConfigurations = ::Dict{String,String}`
Information about the targets to which audit notifications are sent.


## `auditCheckConfigurations = ::Dict{String,String}`
Specifies which audit checks are enabled and disabled for this account. Use `DescribeAccountAuditConfiguration` to see the list of all checks including those that are currently enabled.

Note that some data collection may begin immediately when certain checks are enabled. When a check is disabled, any data collected so far in relation to the check is deleted.

You cannot disable a check if it is used by any scheduled audit. You must first delete the check from the scheduled audit or delete the scheduled audit itself.

On the first call to `UpdateAccountAuditConfiguration` this parameter is required and must specify at least one enabled check.




# Returns

`UpdateAccountAuditConfigurationResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateAccountAuditConfiguration)
"""
@inline update_account_audit_configuration(aws::AWSConfig=default_aws_config(); args...) = update_account_audit_configuration(aws, args)

@inline update_account_audit_configuration(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/audit/configuration", args)

@inline update_account_audit_configuration(args) = update_account_audit_configuration(default_aws_config(), args)


"""
    using AWSSDK.Iot.update_authorizer
    update_authorizer([::AWSConfig], arguments::Dict)
    update_authorizer([::AWSConfig]; authorizerName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/authorizer/{authorizerName}", arguments::Dict)
    iot([::AWSConfig], "PUT", "/authorizer/{authorizerName}", authorizerName=, <keyword arguments>)

# UpdateAuthorizer Operation

Updates an authorizer.

# Arguments

## `authorizerName = ::String` -- *Required*
The authorizer name.


## `authorizerFunctionArn = ::String`
The ARN of the authorizer's Lambda function.


## `tokenKeyName = ::String`
The key used to extract the token from the HTTP headers.


## `tokenSigningPublicKeys = ::Dict{String,String}`
The public keys used to verify the token signature.


## `status = "ACTIVE" or "INACTIVE"`
The status of the update authorizer request.




# Returns

`UpdateAuthorizerResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `LimitExceededException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateAuthorizer)
"""
@inline update_authorizer(aws::AWSConfig=default_aws_config(); args...) = update_authorizer(aws, args)

@inline update_authorizer(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/authorizer/{authorizerName}", args)

@inline update_authorizer(args) = update_authorizer(default_aws_config(), args)


"""
    using AWSSDK.Iot.update_cacertificate
    update_cacertificate([::AWSConfig], arguments::Dict)
    update_cacertificate([::AWSConfig]; caCertificateId=, <keyword arguments>)

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


## `registrationConfig = [ ... ]`
Information about the registration configuration.
```
 registrationConfig = [
        "templateBody" =>  ::String,
        "roleArn" =>  ::String
    ]
```

## `removeAutoRegistration = ::Bool`
If true, remove auto registration.




# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateCACertificate)
"""
@inline update_cacertificate(aws::AWSConfig=default_aws_config(); args...) = update_cacertificate(aws, args)

@inline update_cacertificate(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/cacertificate/{caCertificateId}", args)

@inline update_cacertificate(args) = update_cacertificate(default_aws_config(), args)


"""
    using AWSSDK.Iot.update_certificate
    update_certificate([::AWSConfig], arguments::Dict)
    update_certificate([::AWSConfig]; certificateId=, newStatus=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/certificates/{certificateId}", arguments::Dict)
    iot([::AWSConfig], "PUT", "/certificates/{certificateId}", certificateId=, newStatus=)

# UpdateCertificate Operation

Updates the status of the specified certificate. This operation is idempotent.

Moving a certificate from the ACTIVE state (including REVOKED) will not disconnect currently connected devices, but these devices will be unable to reconnect.

The ACTIVE state is required to authenticate devices connecting to AWS IoT using a certificate.

# Arguments

## `certificateId = ::String` -- *Required*
The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)


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
    using AWSSDK.Iot.update_event_configurations
    update_event_configurations([::AWSConfig], arguments::Dict)
    update_event_configurations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/event-configurations", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/event-configurations", <keyword arguments>)

# UpdateEventConfigurations Operation

Updates the event configurations.

# Arguments

## `eventConfigurations = ::Dict{String,String}`
The new event configuration values.




# Returns

`UpdateEventConfigurationsResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateEventConfigurations)
"""
@inline update_event_configurations(aws::AWSConfig=default_aws_config(); args...) = update_event_configurations(aws, args)

@inline update_event_configurations(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/event-configurations", args)

@inline update_event_configurations(args) = update_event_configurations(default_aws_config(), args)


"""
    using AWSSDK.Iot.update_indexing_configuration
    update_indexing_configuration([::AWSConfig], arguments::Dict)
    update_indexing_configuration([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/indexing/config", arguments::Dict)
    iot([::AWSConfig], "POST", "/indexing/config", <keyword arguments>)

# UpdateIndexingConfiguration Operation

Updates the search configuration.

# Arguments

## `thingIndexingConfiguration = ["thingIndexingMode" =>  "OFF", "REGISTRY" or "REGISTRY_AND_SHADOW"]`
Thing indexing configuration.




# Returns

`UpdateIndexingConfigurationResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateIndexingConfiguration)
"""
@inline update_indexing_configuration(aws::AWSConfig=default_aws_config(); args...) = update_indexing_configuration(aws, args)

@inline update_indexing_configuration(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/indexing/config", args)

@inline update_indexing_configuration(args) = update_indexing_configuration(default_aws_config(), args)


"""
    using AWSSDK.Iot.update_role_alias
    update_role_alias([::AWSConfig], arguments::Dict)
    update_role_alias([::AWSConfig]; roleAlias=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/role-aliases/{roleAlias}", arguments::Dict)
    iot([::AWSConfig], "PUT", "/role-aliases/{roleAlias}", roleAlias=, <keyword arguments>)

# UpdateRoleAlias Operation

Updates a role alias.

# Arguments

## `roleAlias = ::String` -- *Required*
The role alias to update.


## `roleArn = ::String`
The role ARN.


## `credentialDurationSeconds = ::Int`
The number of seconds the credential will be valid.




# Returns

`UpdateRoleAliasResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateRoleAlias)
"""
@inline update_role_alias(aws::AWSConfig=default_aws_config(); args...) = update_role_alias(aws, args)

@inline update_role_alias(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/role-aliases/{roleAlias}", args)

@inline update_role_alias(args) = update_role_alias(default_aws_config(), args)


"""
    using AWSSDK.Iot.update_scheduled_audit
    update_scheduled_audit([::AWSConfig], arguments::Dict)
    update_scheduled_audit([::AWSConfig]; scheduledAuditName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/audit/scheduledaudits/{scheduledAuditName}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/audit/scheduledaudits/{scheduledAuditName}", scheduledAuditName=, <keyword arguments>)

# UpdateScheduledAudit Operation

Updates a scheduled audit, including what checks are performed and how often the audit takes place.

# Arguments

## `frequency = "DAILY", "WEEKLY", "BIWEEKLY" or "MONTHLY"`
How often the scheduled audit takes place. Can be one of "DAILY", "WEEKLY", "BIWEEKLY" or "MONTHLY". The actual start time of each audit is determined by the system.


## `dayOfMonth = ::String`
The day of the month on which the scheduled audit takes place. Can be "1" through "31" or "LAST". This field is required if the "frequency" parameter is set to "MONTHLY". If days 29-31 are specified, and the month does not have that many days, the audit takes place on the "LAST" day of the month.


## `dayOfWeek = "SUN", "MON", "TUE", "WED", "THU", "FRI" or "SAT"`
The day of the week on which the scheduled audit takes place. Can be one of "SUN", "MON", "TUE", "WED", "THU", "FRI" or "SAT". This field is required if the "frequency" parameter is set to "WEEKLY" or "BIWEEKLY".


## `targetCheckNames = [::String, ...]`
Which checks are performed during the scheduled audit. Checks must be enabled for your account. (Use `DescribeAccountAuditConfiguration` to see the list of all checks including those that are enabled or `UpdateAccountAuditConfiguration` to select which checks are enabled.)


## `scheduledAuditName = ::String` -- *Required*
The name of the scheduled audit. (Max. 128 chars)




# Returns

`UpdateScheduledAuditResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateScheduledAudit)
"""
@inline update_scheduled_audit(aws::AWSConfig=default_aws_config(); args...) = update_scheduled_audit(aws, args)

@inline update_scheduled_audit(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/audit/scheduledaudits/{scheduledAuditName}", args)

@inline update_scheduled_audit(args) = update_scheduled_audit(default_aws_config(), args)


"""
    using AWSSDK.Iot.update_security_profile
    update_security_profile([::AWSConfig], arguments::Dict)
    update_security_profile([::AWSConfig]; securityProfileName=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/security-profiles/{securityProfileName}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/security-profiles/{securityProfileName}", securityProfileName=, <keyword arguments>)

# UpdateSecurityProfile Operation

Updates a Device Defender security profile.

# Arguments

## `securityProfileName = ::String` -- *Required*
The name of the security profile you want to update.


## `securityProfileDescription = ::String`
A description of the security profile.


## `behaviors = [[ ... ], ...]`
Specifies the behaviors that, when violated by a device (thing), cause an alert.
```
 behaviors = [[
        "name" => <required> ::String,
        "metric" =>  ::String,
        "criteria" =>  [
            "comparisonOperator" =>  "less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set" or "not-in-port-set",
            "value" =>  [
                "count" =>  ::Int,
                "cidrs" =>  [::String, ...],
                "ports" =>  [::Int, ...]
            ],
            "durationSeconds" =>  ::Int
        ]
    ], ...]
```

## `alertTargets = ::Dict{String,String}`
Where the alerts are sent. (Alerts are always sent to the console.)


## `expectedVersion = ::Int`
The expected version of the security profile. A new version is generated whenever the security profile is updated. If you specify a value that is different than the actual version, a `VersionConflictException` is thrown.




# Returns

`UpdateSecurityProfileResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `VersionConflictException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateSecurityProfile)
"""
@inline update_security_profile(aws::AWSConfig=default_aws_config(); args...) = update_security_profile(aws, args)

@inline update_security_profile(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/security-profiles/{securityProfileName}", args)

@inline update_security_profile(args) = update_security_profile(default_aws_config(), args)


"""
    using AWSSDK.Iot.update_stream
    update_stream([::AWSConfig], arguments::Dict)
    update_stream([::AWSConfig]; streamId=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/streams/{streamId}", arguments::Dict)
    iot([::AWSConfig], "PUT", "/streams/{streamId}", streamId=, <keyword arguments>)

# UpdateStream Operation

Updates an existing stream. The stream version will be incremented by one.

# Arguments

## `streamId = ::String` -- *Required*
The stream ID.


## `description = ::String`
The description of the stream.


## `files = [[ ... ], ...]`
The files associated with the stream.
```
 files = [[
        "fileId" =>  ::Int,
        "s3Location" =>  [
            "bucket" => <required> ::String,
            "key" => <required> ::String,
            "version" =>  ::String
        ]
    ], ...]
```

## `roleArn = ::String`
An IAM role that allows the IoT service principal assumes to access your S3 files.




# Returns

`UpdateStreamResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateStream)
"""
@inline update_stream(aws::AWSConfig=default_aws_config(); args...) = update_stream(aws, args)

@inline update_stream(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/streams/{streamId}", args)

@inline update_stream(args) = update_stream(default_aws_config(), args)


"""
    using AWSSDK.Iot.update_thing
    update_thing([::AWSConfig], arguments::Dict)
    update_thing([::AWSConfig]; thingName=, <keyword arguments>)

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
Remove a thing type association. If **true**, the association is removed.




# Returns

`UpdateThingResponse`

# Exceptions

`InvalidRequestException`, `VersionConflictException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateThing)
"""
@inline update_thing(aws::AWSConfig=default_aws_config(); args...) = update_thing(aws, args)

@inline update_thing(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/things/{thingName}", args)

@inline update_thing(args) = update_thing(default_aws_config(), args)


"""
    using AWSSDK.Iot.update_thing_group
    update_thing_group([::AWSConfig], arguments::Dict)
    update_thing_group([::AWSConfig]; thingGroupName=, thingGroupProperties=, <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PATCH", "/thing-groups/{thingGroupName}", arguments::Dict)
    iot([::AWSConfig], "PATCH", "/thing-groups/{thingGroupName}", thingGroupName=, thingGroupProperties=, <keyword arguments>)

# UpdateThingGroup Operation

Update a thing group.

# Arguments

## `thingGroupName = ::String` -- *Required*
The thing group to update.


## `thingGroupProperties = [ ... ]` -- *Required*
The thing group properties.
```
 thingGroupProperties = [
        "thingGroupDescription" =>  ::String,
        "attributePayload" =>  [
            "attributes" =>  ::Dict{String,String},
            "merge" =>  ::Bool
        ]
    ]
```

## `expectedVersion = ::Int`
The expected version of the thing group. If this does not match the version of the thing group being updated, the update will fail.




# Returns

`UpdateThingGroupResponse`

# Exceptions

`InvalidRequestException`, `VersionConflictException`, `ThrottlingException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateThingGroup)
"""
@inline update_thing_group(aws::AWSConfig=default_aws_config(); args...) = update_thing_group(aws, args)

@inline update_thing_group(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PATCH", "/thing-groups/{thingGroupName}", args)

@inline update_thing_group(args) = update_thing_group(default_aws_config(), args)


"""
    using AWSSDK.Iot.update_thing_groups_for_thing
    update_thing_groups_for_thing([::AWSConfig], arguments::Dict)
    update_thing_groups_for_thing([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iot
    iot([::AWSConfig], "PUT", "/thing-groups/updateThingGroupsForThing", arguments::Dict)
    iot([::AWSConfig], "PUT", "/thing-groups/updateThingGroupsForThing", <keyword arguments>)

# UpdateThingGroupsForThing Operation

Updates the groups to which the thing belongs.

# Arguments

## `thingName = ::String`
The thing whose group memberships will be updated.


## `thingGroupsToAdd = [::String, ...]`
The groups to which the thing will be added.


## `thingGroupsToRemove = [::String, ...]`
The groups from which the thing will be removed.




# Returns

`UpdateThingGroupsForThingResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException`, `InternalFailureException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/UpdateThingGroupsForThing)
"""
@inline update_thing_groups_for_thing(aws::AWSConfig=default_aws_config(); args...) = update_thing_groups_for_thing(aws, args)

@inline update_thing_groups_for_thing(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "PUT", "/thing-groups/updateThingGroupsForThing", args)

@inline update_thing_groups_for_thing(args) = update_thing_groups_for_thing(default_aws_config(), args)


"""
    using AWSSDK.Iot.validate_security_profile_behaviors
    validate_security_profile_behaviors([::AWSConfig], arguments::Dict)
    validate_security_profile_behaviors([::AWSConfig]; behaviors=)

    using AWSCore.Services.iot
    iot([::AWSConfig], "POST", "/security-profile-behaviors/validate", arguments::Dict)
    iot([::AWSConfig], "POST", "/security-profile-behaviors/validate", behaviors=)

# ValidateSecurityProfileBehaviors Operation

Validates a Device Defender security profile behaviors specification.

# Arguments

## `behaviors = [[ ... ], ...]` -- *Required*
Specifies the behaviors that, when violated by a device (thing), cause an alert.
```
 behaviors = [[
        "name" => <required> ::String,
        "metric" =>  ::String,
        "criteria" =>  [
            "comparisonOperator" =>  "less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set" or "not-in-port-set",
            "value" =>  [
                "count" =>  ::Int,
                "cidrs" =>  [::String, ...],
                "ports" =>  [::Int, ...]
            ],
            "durationSeconds" =>  ::Int
        ]
    ], ...]
```



# Returns

`ValidateSecurityProfileBehaviorsResponse`

# Exceptions

`InvalidRequestException`, `ThrottlingException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28/ValidateSecurityProfileBehaviors)
"""
@inline validate_security_profile_behaviors(aws::AWSConfig=default_aws_config(); args...) = validate_security_profile_behaviors(aws, args)

@inline validate_security_profile_behaviors(aws::AWSConfig, args) = AWSCore.Services.iot(aws, "POST", "/security-profile-behaviors/validate", args)

@inline validate_security_profile_behaviors(args) = validate_security_profile_behaviors(default_aws_config(), args)




end # module Iot


#==============================================================================#
# End of file
#==============================================================================#
