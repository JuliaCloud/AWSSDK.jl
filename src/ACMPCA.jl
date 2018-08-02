#==============================================================================#
# ACMPCA.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/acm-pca-2017-08-22.normal.json
#==============================================================================#

__precompile__()

module ACMPCA

using AWSCore


"""
    using AWSSDK.ACMPCA.create_certificate_authority
    create_certificate_authority([::AWSConfig], arguments::Dict)
    create_certificate_authority([::AWSConfig]; CertificateAuthorityConfiguration=, CertificateAuthorityType=, <keyword arguments>)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "CreateCertificateAuthority", arguments::Dict)
    acm_pca([::AWSConfig], "CreateCertificateAuthority", CertificateAuthorityConfiguration=, CertificateAuthorityType=, <keyword arguments>)

# CreateCertificateAuthority Operation

Creates a private subordinate certificate authority (CA). You must specify the CA configuration, the revocation configuration, the CA type, and an optional idempotency token. The CA configuration specifies the name of the algorithm and key size to be used to create the CA private key, the type of signing algorithm that the CA uses to sign, and X.500 subject information. The CRL (certificate revocation list) configuration specifies the CRL expiration period in days (the validity period of the CRL), the Amazon S3 bucket that will contain the CRL, and a CNAME alias for the S3 bucket that is included in certificates issued by the CA. If successful, this operation returns the Amazon Resource Name (ARN) of the CA.

# Arguments

## `CertificateAuthorityConfiguration = [ ... ]` -- *Required*
Name and bit size of the private key algorithm, the name of the signing algorithm, and X.500 certificate subject information.
```
 CertificateAuthorityConfiguration = [
        "KeyAlgorithm" => <required> "RSA_2048", "RSA_4096", "EC_prime256v1" or "EC_secp384r1",
        "SigningAlgorithm" => <required> "SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA" or "SHA512WITHRSA",
        "Subject" => <required> [
            "Country" =>  ::String,
            "Organization" =>  ::String,
            "OrganizationalUnit" =>  ::String,
            "DistinguishedNameQualifier" =>  ::String,
            "State" =>  ::String,
            "CommonName" =>  ::String,
            "SerialNumber" =>  ::String,
            "Locality" =>  ::String,
            "Title" =>  ::String,
            "Surname" =>  ::String,
            "GivenName" =>  ::String,
            "Initials" =>  ::String,
            "Pseudonym" =>  ::String,
            "GenerationQualifier" =>  ::String
        ]
    ]
```

## `RevocationConfiguration = ["CrlConfiguration" =>  [ ... ]]`
Contains a Boolean value that you can use to enable a certification revocation list (CRL) for the CA, the name of the S3 bucket to which ACM PCA will write the CRL, and an optional CNAME alias that you can use to hide the name of your bucket in the **CRL Distribution Points** extension of your CA certificate. For more information, see the [CrlConfiguration](@ref) structure.
```
 RevocationConfiguration = ["CrlConfiguration" =>  [
            "Enabled" => <required> ::Bool,
            "ExpirationInDays" =>  ::Int,
            "CustomCname" =>  ::String,
            "S3BucketName" =>  ::String
        ]]
```

## `CertificateAuthorityType = "SUBORDINATE"` -- *Required*
The type of the certificate authority. Currently, this must be **SUBORDINATE**.


## `IdempotencyToken = ::String`
Alphanumeric string that can be used to distinguish between calls to **CreateCertificateAuthority**. Idempotency tokens time out after five minutes. Therefore, if you call **CreateCertificateAuthority** multiple times with the same idempotency token within a five minute period, ACM PCA recognizes that you are requesting only one certificate. As a result, ACM PCA issues only one. If you change the idempotency token for each call, however, ACM PCA recognizes that you are requesting multiple certificates.




# Returns

`CreateCertificateAuthorityResponse`

# Exceptions

`InvalidArgsException`, `InvalidPolicyException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreateCertificateAuthority)
"""
@inline create_certificate_authority(aws::AWSConfig=default_aws_config(); args...) = create_certificate_authority(aws, args)

@inline create_certificate_authority(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "CreateCertificateAuthority", args)

@inline create_certificate_authority(args) = create_certificate_authority(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.create_certificate_authority_audit_report
    create_certificate_authority_audit_report([::AWSConfig], arguments::Dict)
    create_certificate_authority_audit_report([::AWSConfig]; CertificateAuthorityArn=, S3BucketName=, AuditReportResponseFormat=)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "CreateCertificateAuthorityAuditReport", arguments::Dict)
    acm_pca([::AWSConfig], "CreateCertificateAuthorityAuditReport", CertificateAuthorityArn=, S3BucketName=, AuditReportResponseFormat=)

# CreateCertificateAuthorityAuditReport Operation

Creates an audit report that lists every time that the your CA private key is used. The report is saved in the Amazon S3 bucket that you specify on input. The [IssueCertificate](@ref) and [RevokeCertificate](@ref) operations use the private key. You can generate a new report every 30 minutes.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
Amazon Resource Name (ARN) of the CA to be audited. This is of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*` .


## `S3BucketName = ::String` -- *Required*
Name of the S3 bucket that will contain the audit report.


## `AuditReportResponseFormat = "JSON" or "CSV"` -- *Required*
Format in which to create the report. This can be either **JSON** or **CSV**.




# Returns

`CreateCertificateAuthorityAuditReportResponse`

# Exceptions

`RequestInProgressException`, `RequestFailedException`, `ResourceNotFoundException`, `InvalidArnException`, `InvalidArgsException` or `InvalidStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/CreateCertificateAuthorityAuditReport)
"""
@inline create_certificate_authority_audit_report(aws::AWSConfig=default_aws_config(); args...) = create_certificate_authority_audit_report(aws, args)

@inline create_certificate_authority_audit_report(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "CreateCertificateAuthorityAuditReport", args)

@inline create_certificate_authority_audit_report(args) = create_certificate_authority_audit_report(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.delete_certificate_authority
    delete_certificate_authority([::AWSConfig], arguments::Dict)
    delete_certificate_authority([::AWSConfig]; CertificateAuthorityArn=, <keyword arguments>)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "DeleteCertificateAuthority", arguments::Dict)
    acm_pca([::AWSConfig], "DeleteCertificateAuthority", CertificateAuthorityArn=, <keyword arguments>)

# DeleteCertificateAuthority Operation

Deletes a private certificate authority (CA). You must provide the ARN (Amazon Resource Name) of the private CA that you want to delete. You can find the ARN by calling the [ListCertificateAuthorities](@ref) operation. Before you can delete a CA, you must disable it. Call the [UpdateCertificateAuthority](@ref) operation and set the **CertificateAuthorityStatus** parameter to `DISABLED`.

Additionally, you can delete a CA if you are waiting for it to be created (the **Status** field of the [CertificateAuthority](@ref) is `CREATING`). You can also delete it if the CA has been created but you haven't yet imported the signed certificate (the **Status** is `PENDING_CERTIFICATE`) into ACM PCA.

If the CA is in one of the aforementioned states and you call [DeleteCertificateAuthority](@ref), the CA's status changes to `DELETED`. However, the CA won't be permentantly deleted until the restoration period has passed. By default, if you do not set the `PermanentDeletionTimeInDays` parameter, the CA remains restorable for 30 days. You can set the parameter from 7 to 30 days. The [DescribeCertificateAuthority](@ref) operation returns the time remaining in the restoration window of a Private CA in the `DELETED` state. To restore an eligable CA, call the [RestoreCertificateAuthority](@ref) operation.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) that was returned when you called [CreateCertificateAuthority](@ref). This must have the following form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*` .


## `PermanentDeletionTimeInDays = ::Int`
The number of days to make a CA restorable after it has been deleted. This can be anywhere from 7 to 30 days, with 30 being the default.




# Exceptions

`ConcurrentModificationException`, `ResourceNotFoundException`, `InvalidArnException` or `InvalidStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DeleteCertificateAuthority)
"""
@inline delete_certificate_authority(aws::AWSConfig=default_aws_config(); args...) = delete_certificate_authority(aws, args)

@inline delete_certificate_authority(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "DeleteCertificateAuthority", args)

@inline delete_certificate_authority(args) = delete_certificate_authority(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.describe_certificate_authority
    describe_certificate_authority([::AWSConfig], arguments::Dict)
    describe_certificate_authority([::AWSConfig]; CertificateAuthorityArn=)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "DescribeCertificateAuthority", arguments::Dict)
    acm_pca([::AWSConfig], "DescribeCertificateAuthority", CertificateAuthorityArn=)

# DescribeCertificateAuthority Operation

Lists information about your private certificate authority (CA). You specify the private CA on input by its ARN (Amazon Resource Name). The output contains the status of your CA. This can be any of the following:

*   `CREATING` - ACM PCA is creating your private certificate authority.

*   `PENDING_CERTIFICATE` - The certificate is pending. You must use your on-premises root or subordinate CA to sign your private CA CSR and then import it into PCA.

*   `ACTIVE` - Your private CA is active.

*   `DISABLED` - Your private CA has been disabled.

*   `EXPIRED` - Your private CA certificate has expired.

*   `FAILED` - Your private CA has failed. Your CA can fail because of problems such a network outage or backend AWS failure or other errors. A failed CA can never return to the pending state. You must create a new CA.

*   `DELETED` - Your private CA is within the restoration period, after which it will be permanently deleted. The length of time remaining in the CA's restoration period will also be included in this operation's output.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) that was returned when you called [CreateCertificateAuthority](@ref). This must be of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*` .




# Returns

`DescribeCertificateAuthorityResponse`

# Exceptions

`ResourceNotFoundException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthority)
"""
@inline describe_certificate_authority(aws::AWSConfig=default_aws_config(); args...) = describe_certificate_authority(aws, args)

@inline describe_certificate_authority(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "DescribeCertificateAuthority", args)

@inline describe_certificate_authority(args) = describe_certificate_authority(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.describe_certificate_authority_audit_report
    describe_certificate_authority_audit_report([::AWSConfig], arguments::Dict)
    describe_certificate_authority_audit_report([::AWSConfig]; CertificateAuthorityArn=, AuditReportId=)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "DescribeCertificateAuthorityAuditReport", arguments::Dict)
    acm_pca([::AWSConfig], "DescribeCertificateAuthorityAuditReport", CertificateAuthorityArn=, AuditReportId=)

# DescribeCertificateAuthorityAuditReport Operation

Lists information about a specific audit report created by calling the [CreateCertificateAuthorityAuditReport](@ref) operation. Audit information is created every time the certificate authority (CA) private key is used. The private key is used when you call the [IssueCertificate](@ref) operation or the [RevokeCertificate](@ref) operation.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the private CA. This must be of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*` .


## `AuditReportId = ::String` -- *Required*
The report ID returned by calling the [CreateCertificateAuthorityAuditReport](@ref) operation.




# Returns

`DescribeCertificateAuthorityAuditReportResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidArnException` or `InvalidArgsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/DescribeCertificateAuthorityAuditReport)
"""
@inline describe_certificate_authority_audit_report(aws::AWSConfig=default_aws_config(); args...) = describe_certificate_authority_audit_report(aws, args)

@inline describe_certificate_authority_audit_report(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "DescribeCertificateAuthorityAuditReport", args)

@inline describe_certificate_authority_audit_report(args) = describe_certificate_authority_audit_report(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.get_certificate
    get_certificate([::AWSConfig], arguments::Dict)
    get_certificate([::AWSConfig]; CertificateAuthorityArn=, CertificateArn=)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "GetCertificate", arguments::Dict)
    acm_pca([::AWSConfig], "GetCertificate", CertificateAuthorityArn=, CertificateArn=)

# GetCertificate Operation

Retrieves a certificate from your private CA. The ARN of the certificate is returned when you call the [IssueCertificate](@ref) operation. You must specify both the ARN of your private CA and the ARN of the issued certificate when calling the **GetCertificate** operation. You can retrieve the certificate if it is in the **ISSUED** state. You can call the [CreateCertificateAuthorityAuditReport](@ref) operation to create a report that contains information about all of the certificates issued and revoked by your private CA.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) that was returned when you called [CreateCertificateAuthority](@ref). This must be of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*` .


## `CertificateArn = ::String` -- *Required*
The ARN of the issued certificate. The ARN contains the certificate serial number and must be in the following form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*/certificate/*286535153982981100925020015808220737245*`




# Returns

`GetCertificateResponse`

# Exceptions

`RequestInProgressException`, `RequestFailedException`, `ResourceNotFoundException`, `InvalidArnException` or `InvalidStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificate)
"""
@inline get_certificate(aws::AWSConfig=default_aws_config(); args...) = get_certificate(aws, args)

@inline get_certificate(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "GetCertificate", args)

@inline get_certificate(args) = get_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.get_certificate_authority_certificate
    get_certificate_authority_certificate([::AWSConfig], arguments::Dict)
    get_certificate_authority_certificate([::AWSConfig]; CertificateAuthorityArn=)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "GetCertificateAuthorityCertificate", arguments::Dict)
    acm_pca([::AWSConfig], "GetCertificateAuthorityCertificate", CertificateAuthorityArn=)

# GetCertificateAuthorityCertificate Operation

Retrieves the certificate and certificate chain for your private certificate authority (CA). Both the certificate and the chain are base64 PEM-encoded. The chain does not include the CA certificate. Each certificate in the chain signs the one before it.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of your private CA. This is of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*` .




# Returns

`GetCertificateAuthorityCertificateResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidStateException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateAuthorityCertificate)
"""
@inline get_certificate_authority_certificate(aws::AWSConfig=default_aws_config(); args...) = get_certificate_authority_certificate(aws, args)

@inline get_certificate_authority_certificate(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "GetCertificateAuthorityCertificate", args)

@inline get_certificate_authority_certificate(args) = get_certificate_authority_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.get_certificate_authority_csr
    get_certificate_authority_csr([::AWSConfig], arguments::Dict)
    get_certificate_authority_csr([::AWSConfig]; CertificateAuthorityArn=)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "GetCertificateAuthorityCsr", arguments::Dict)
    acm_pca([::AWSConfig], "GetCertificateAuthorityCsr", CertificateAuthorityArn=)

# GetCertificateAuthorityCsr Operation

Retrieves the certificate signing request (CSR) for your private certificate authority (CA). The CSR is created when you call the [CreateCertificateAuthority](@ref) operation. Take the CSR to your on-premises X.509 infrastructure and sign it by using your root or a subordinate CA. Then import the signed certificate back into ACM PCA by calling the [ImportCertificateAuthorityCertificate](@ref) operation. The CSR is returned as a base64 PEM-encoded string.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) that was returned when you called the [CreateCertificateAuthority](@ref) operation. This must be of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*`




# Returns

`GetCertificateAuthorityCsrResponse`

# Exceptions

`RequestInProgressException`, `RequestFailedException`, `ResourceNotFoundException`, `InvalidArnException` or `InvalidStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/GetCertificateAuthorityCsr)
"""
@inline get_certificate_authority_csr(aws::AWSConfig=default_aws_config(); args...) = get_certificate_authority_csr(aws, args)

@inline get_certificate_authority_csr(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "GetCertificateAuthorityCsr", args)

@inline get_certificate_authority_csr(args) = get_certificate_authority_csr(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.import_certificate_authority_certificate
    import_certificate_authority_certificate([::AWSConfig], arguments::Dict)
    import_certificate_authority_certificate([::AWSConfig]; CertificateAuthorityArn=, Certificate=, CertificateChain=)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "ImportCertificateAuthorityCertificate", arguments::Dict)
    acm_pca([::AWSConfig], "ImportCertificateAuthorityCertificate", CertificateAuthorityArn=, Certificate=, CertificateChain=)

# ImportCertificateAuthorityCertificate Operation

Imports your signed private CA certificate into ACM PCA. Before you can call this operation, you must create the private certificate authority by calling the [CreateCertificateAuthority](@ref) operation. You must then generate a certificate signing request (CSR) by calling the [GetCertificateAuthorityCsr](@ref) operation. Take the CSR to your on-premises CA and use the root certificate or a subordinate certificate to sign it. Create a certificate chain and copy the signed certificate and the certificate chain to your working directory.

**Note**
> Your certificate chain must not include the private CA certificate that you are importing.

**Note**
> Your on-premises CA certificate must be the last certificate in your chain. The subordinate certificate, if any, that your root CA signed must be next to last. The subordinate certificate signed by the preceding subordinate CA must come next, and so on until your chain is built.

**Note**
> The chain must be PEM-encoded.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) that was returned when you called [CreateCertificateAuthority](@ref). This must be of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*`


## `Certificate = blob` -- *Required*
The PEM-encoded certificate for your private CA. This must be signed by using your on-premises CA.


## `CertificateChain = blob` -- *Required*
A PEM-encoded file that contains all of your certificates, other than the certificate you're importing, chaining up to your root CA. Your on-premises root certificate is the last in the chain, and each certificate in the chain signs the one preceding.




# Exceptions

`ConcurrentModificationException`, `RequestInProgressException`, `RequestFailedException`, `ResourceNotFoundException`, `InvalidArnException`, `InvalidStateException`, `MalformedCertificateException` or `CertificateMismatchException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ImportCertificateAuthorityCertificate)
"""
@inline import_certificate_authority_certificate(aws::AWSConfig=default_aws_config(); args...) = import_certificate_authority_certificate(aws, args)

@inline import_certificate_authority_certificate(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "ImportCertificateAuthorityCertificate", args)

@inline import_certificate_authority_certificate(args) = import_certificate_authority_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.issue_certificate
    issue_certificate([::AWSConfig], arguments::Dict)
    issue_certificate([::AWSConfig]; CertificateAuthorityArn=, Csr=, SigningAlgorithm=, Validity=, <keyword arguments>)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "IssueCertificate", arguments::Dict)
    acm_pca([::AWSConfig], "IssueCertificate", CertificateAuthorityArn=, Csr=, SigningAlgorithm=, Validity=, <keyword arguments>)

# IssueCertificate Operation

Uses your private certificate authority (CA) to issue a client certificate. This operation returns the Amazon Resource Name (ARN) of the certificate. You can retrieve the certificate by calling the [GetCertificate](@ref) operation and specifying the ARN.

**Note**
> You cannot use the ACM **ListCertificateAuthorities** operation to retrieve the ARNs of the certificates that you issue by using ACM PCA.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) that was returned when you called [CreateCertificateAuthority](@ref). This must be of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*`


## `Csr = blob` -- *Required*
The certificate signing request (CSR) for the certificate you want to issue. You can use the following OpenSSL command to create the CSR and a 2048 bit RSA private key.

`openssl req -new -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr`

If you have a configuration file, you can use the following OpenSSL command. The `usr_cert` block in the configuration file contains your X509 version 3 extensions.

`openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey rsa:2048 -days -365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr`


## `SigningAlgorithm = "SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA" or "SHA512WITHRSA"` -- *Required*
The name of the algorithm that will be used to sign the certificate to be issued.


## `Validity = [ ... ]` -- *Required*
The type of the validity period.
```
 Validity = [
        "Value" => <required> ::Int,
        "Type" => <required> "END_DATE", "ABSOLUTE", "DAYS", "MONTHS" or "YEARS"
    ]
```

## `IdempotencyToken = ::String`
Custom string that can be used to distinguish between calls to the **IssueCertificate** operation. Idempotency tokens time out after one hour. Therefore, if you call **IssueCertificate** multiple times with the same idempotency token within 5 minutes, ACM PCA recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, PCA recognizes that you are requesting multiple certificates.




# Returns

`IssueCertificateResponse`

# Exceptions

`LimitExceededException`, `ResourceNotFoundException`, `InvalidStateException`, `InvalidArnException`, `InvalidArgsException` or `MalformedCSRException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/IssueCertificate)
"""
@inline issue_certificate(aws::AWSConfig=default_aws_config(); args...) = issue_certificate(aws, args)

@inline issue_certificate(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "IssueCertificate", args)

@inline issue_certificate(args) = issue_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.list_certificate_authorities
    list_certificate_authorities([::AWSConfig], arguments::Dict)
    list_certificate_authorities([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "ListCertificateAuthorities", arguments::Dict)
    acm_pca([::AWSConfig], "ListCertificateAuthorities", <keyword arguments>)

# ListCertificateAuthorities Operation

Lists the private certificate authorities that you created by using the [CreateCertificateAuthority](@ref) operation.

# Arguments

## `NextToken = ::String`
Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of the `NextToken` parameter from the response you just received.


## `MaxResults = ::Int`
Use this parameter when paginating results to specify the maximum number of items to return in the response on each page. If additional items exist beyond the number you specify, the `NextToken` element is sent in the response. Use this `NextToken` value in a subsequent request to retrieve additional items.




# Returns

`ListCertificateAuthoritiesResponse`

# Exceptions

`InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListCertificateAuthorities)
"""
@inline list_certificate_authorities(aws::AWSConfig=default_aws_config(); args...) = list_certificate_authorities(aws, args)

@inline list_certificate_authorities(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "ListCertificateAuthorities", args)

@inline list_certificate_authorities(args) = list_certificate_authorities(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.list_tags
    list_tags([::AWSConfig], arguments::Dict)
    list_tags([::AWSConfig]; CertificateAuthorityArn=, <keyword arguments>)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "ListTags", arguments::Dict)
    acm_pca([::AWSConfig], "ListTags", CertificateAuthorityArn=, <keyword arguments>)

# ListTags Operation

Lists the tags, if any, that are associated with your private CA. Tags are labels that you can use to identify and organize your CAs. Each tag consists of a key and an optional value. Call the [TagCertificateAuthority](@ref) operation to add one or more tags to your CA. Call the [UntagCertificateAuthority](@ref) operation to remove tags.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) that was returned when you called the [CreateCertificateAuthority](@ref) operation. This must be of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*`


## `NextToken = ::String`
Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of **NextToken** from the response you just received.


## `MaxResults = ::Int`
Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the **NextToken** element is sent in the response. Use this **NextToken** value in a subsequent request to retrieve additional items.




# Returns

`ListTagsResponse`

# Exceptions

`ResourceNotFoundException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/ListTags)
"""
@inline list_tags(aws::AWSConfig=default_aws_config(); args...) = list_tags(aws, args)

@inline list_tags(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "ListTags", args)

@inline list_tags(args) = list_tags(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.restore_certificate_authority
    restore_certificate_authority([::AWSConfig], arguments::Dict)
    restore_certificate_authority([::AWSConfig]; CertificateAuthorityArn=)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "RestoreCertificateAuthority", arguments::Dict)
    acm_pca([::AWSConfig], "RestoreCertificateAuthority", CertificateAuthorityArn=)

# RestoreCertificateAuthority Operation

Restores a certificate authority (CA) that is in the `DELETED` state. You can restore a CA during the period that you defined in the **PermanentDeletionTimeInDays** parameter of the [DeleteCertificateAuthority](@ref) operation. Currently, you can specify 7 to 30 days. If you did not specify a **PermanentDeletionTimeInDays** value, by default you can restore the CA at any time in a 30 day period. You can check the time remaining in the restoration period of a private CA in the `DELETED` state by calling the [DescribeCertificateAuthority](@ref) or [ListCertificateAuthorities](@ref) operations. The status of a restored CA is set to its pre-deletion status when the **RestoreCertificateAuthority** operation returns. To change its status to `ACTIVE`, call the [UpdateCertificateAuthority](@ref) operation. If the private CA was in the `PENDING_CERTIFICATE` state at deletion, you must use the [ImportCertificateAuthorityCertificate](@ref) operation to import a certificate authority into the private CA before it can be activated. You cannot restore a CA after the restoration period has ended.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) that was returned when you called the [CreateCertificateAuthority](@ref) operation. This must be of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*`




# Exceptions

`ResourceNotFoundException`, `InvalidStateException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RestoreCertificateAuthority)
"""
@inline restore_certificate_authority(aws::AWSConfig=default_aws_config(); args...) = restore_certificate_authority(aws, args)

@inline restore_certificate_authority(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "RestoreCertificateAuthority", args)

@inline restore_certificate_authority(args) = restore_certificate_authority(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.revoke_certificate
    revoke_certificate([::AWSConfig], arguments::Dict)
    revoke_certificate([::AWSConfig]; CertificateAuthorityArn=, CertificateSerial=, RevocationReason=)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "RevokeCertificate", arguments::Dict)
    acm_pca([::AWSConfig], "RevokeCertificate", CertificateAuthorityArn=, CertificateSerial=, RevocationReason=)

# RevokeCertificate Operation

Revokes a certificate that you issued by calling the [IssueCertificate](@ref) operation. If you enable a certificate revocation list (CRL) when you create or update your private CA, information about the revoked certificates will be included in the CRL. ACM PCA writes the CRL to an S3 bucket that you specify. For more information about revocation, see the [CrlConfiguration](@ref) structure. ACM PCA also writes revocation information to the audit report. For more information, see [CreateCertificateAuthorityAuditReport](@ref).

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
Amazon Resource Name (ARN) of the private CA that issued the certificate to be revoked. This must be of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*`


## `CertificateSerial = ::String` -- *Required*
Serial number of the certificate to be revoked. This must be in hexadecimal format. You can retrieve the serial number by calling [GetCertificate](@ref) with the Amazon Resource Name (ARN) of the certificate you want and the ARN of your private CA. The **GetCertificate** operation retrieves the certificate in the PEM format. You can use the following OpenSSL command to list the certificate in text format and copy the hexadecimal serial number.

`openssl x509 -in *file_path* -text -noout`

You can also copy the serial number from the console or use the [DescribeCertificate](https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html) operation in the *AWS Certificate Manager API Reference*.


## `RevocationReason = "UNSPECIFIED", "KEY_COMPROMISE", "CERTIFICATE_AUTHORITY_COMPROMISE", "AFFILIATION_CHANGED", "SUPERSEDED", "CESSATION_OF_OPERATION", "PRIVILEGE_WITHDRAWN" or "A_A_COMPROMISE"` -- *Required*
Specifies why you revoked the certificate.




# Exceptions

`ConcurrentModificationException`, `InvalidArnException`, `InvalidStateException`, `ResourceNotFoundException`, `RequestAlreadyProcessedException`, `RequestInProgressException` or `RequestFailedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/RevokeCertificate)
"""
@inline revoke_certificate(aws::AWSConfig=default_aws_config(); args...) = revoke_certificate(aws, args)

@inline revoke_certificate(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "RevokeCertificate", args)

@inline revoke_certificate(args) = revoke_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.tag_certificate_authority
    tag_certificate_authority([::AWSConfig], arguments::Dict)
    tag_certificate_authority([::AWSConfig]; CertificateAuthorityArn=, Tags=)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "TagCertificateAuthority", arguments::Dict)
    acm_pca([::AWSConfig], "TagCertificateAuthority", CertificateAuthorityArn=, Tags=)

# TagCertificateAuthority Operation

Adds one or more tags to your private CA. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a key and an optional value. You specify the private CA on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair. You can apply a tag to just one private CA if you want to identify a specific characteristic of that CA, or you can apply the same tag to multiple private CAs if you want to filter for a common relationship among those CAs. To remove one or more tags, use the [UntagCertificateAuthority](@ref) operation. Call the [ListTags](@ref) operation to see what tags are associated with your CA.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) that was returned when you called [CreateCertificateAuthority](@ref). This must be of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*`


## `Tags = [[ ... ], ...]` -- *Required*
List of tags to be associated with the CA.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```



# Exceptions

`ResourceNotFoundException`, `InvalidArnException`, `InvalidStateException`, `InvalidTagException` or `TooManyTagsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/TagCertificateAuthority)
"""
@inline tag_certificate_authority(aws::AWSConfig=default_aws_config(); args...) = tag_certificate_authority(aws, args)

@inline tag_certificate_authority(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "TagCertificateAuthority", args)

@inline tag_certificate_authority(args) = tag_certificate_authority(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.untag_certificate_authority
    untag_certificate_authority([::AWSConfig], arguments::Dict)
    untag_certificate_authority([::AWSConfig]; CertificateAuthorityArn=, Tags=)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "UntagCertificateAuthority", arguments::Dict)
    acm_pca([::AWSConfig], "UntagCertificateAuthority", CertificateAuthorityArn=, Tags=)

# UntagCertificateAuthority Operation

Remove one or more tags from your private CA. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this operation, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value. To add tags to a private CA, use the [TagCertificateAuthority](@ref). Call the [ListTags](@ref) operation to see what tags are associated with your CA.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
The Amazon Resource Name (ARN) that was returned when you called [CreateCertificateAuthority](@ref). This must be of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*`


## `Tags = [[ ... ], ...]` -- *Required*
List of tags to be removed from the CA.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```



# Exceptions

`ResourceNotFoundException`, `InvalidArnException`, `InvalidStateException` or `InvalidTagException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/UntagCertificateAuthority)
"""
@inline untag_certificate_authority(aws::AWSConfig=default_aws_config(); args...) = untag_certificate_authority(aws, args)

@inline untag_certificate_authority(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "UntagCertificateAuthority", args)

@inline untag_certificate_authority(args) = untag_certificate_authority(default_aws_config(), args)


"""
    using AWSSDK.ACMPCA.update_certificate_authority
    update_certificate_authority([::AWSConfig], arguments::Dict)
    update_certificate_authority([::AWSConfig]; CertificateAuthorityArn=, <keyword arguments>)

    using AWSCore.Services.acm_pca
    acm_pca([::AWSConfig], "UpdateCertificateAuthority", arguments::Dict)
    acm_pca([::AWSConfig], "UpdateCertificateAuthority", CertificateAuthorityArn=, <keyword arguments>)

# UpdateCertificateAuthority Operation

Updates the status or configuration of a private certificate authority (CA). Your private CA must be in the `ACTIVE` or `DISABLED` state before you can update it. You can disable a private CA that is in the `ACTIVE` state or make a CA that is in the `DISABLED` state active again.

# Arguments

## `CertificateAuthorityArn = ::String` -- *Required*
Amazon Resource Name (ARN) of the private CA that issued the certificate to be revoked. This must be of the form:

`arn:aws:acm-pca:*region*:*account*:certificate-authority/*12345678-1234-1234-1234-123456789012*`


## `RevocationConfiguration = ["CrlConfiguration" =>  [ ... ]]`
Revocation information for your private CA.
```
 RevocationConfiguration = ["CrlConfiguration" =>  [
            "Enabled" => <required> ::Bool,
            "ExpirationInDays" =>  ::Int,
            "CustomCname" =>  ::String,
            "S3BucketName" =>  ::String
        ]]
```

## `Status = "CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED" or "FAILED"`
Status of your private CA.




# Exceptions

`ConcurrentModificationException`, `ResourceNotFoundException`, `InvalidArgsException`, `InvalidArnException`, `InvalidStateException` or `InvalidPolicyException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-pca-2017-08-22/UpdateCertificateAuthority)
"""
@inline update_certificate_authority(aws::AWSConfig=default_aws_config(); args...) = update_certificate_authority(aws, args)

@inline update_certificate_authority(aws::AWSConfig, args) = AWSCore.Services.acm_pca(aws, "UpdateCertificateAuthority", args)

@inline update_certificate_authority(args) = update_certificate_authority(default_aws_config(), args)




end # module ACMPCA


#==============================================================================#
# End of file
#==============================================================================#
