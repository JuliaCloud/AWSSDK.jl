#==============================================================================#
# ACM.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/acm-2015-12-08.normal.json
#==============================================================================#

__precompile__()

module ACM

using AWSCore


"""
    using AWSSDK.ACM.add_tags_to_certificate
    add_tags_to_certificate([::AWSConfig], arguments::Dict)
    add_tags_to_certificate([::AWSConfig]; CertificateArn=, Tags=)

    using AWSCore.Services.acm
    acm([::AWSConfig], "AddTagsToCertificate", arguments::Dict)
    acm([::AWSConfig], "AddTagsToCertificate", CertificateArn=, Tags=)

# AddTagsToCertificate Operation

Adds one or more tags to an ACM certificate. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a `key` and an optional `value`. You specify the certificate on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair.

You can apply a tag to just one certificate if you want to identify a specific characteristic of that certificate, or you can apply the same tag to multiple certificates if you want to filter for a common relationship among those certificates. Similarly, you can apply the same tag to multiple resources if you want to specify a relationship among those resources. For example, you can add the same tag to an ACM certificate and an Elastic Load Balancing load balancer to indicate that they are both used by the same website. For more information, see [Tagging ACM certificates](http://docs.aws.amazon.com/acm/latest/userguide/tags.html).

To remove one or more tags, use the [RemoveTagsFromCertificate](@ref) action. To view all of the tags that have been applied to the certificate, use the [ListTagsForCertificate](@ref) action.

# Arguments

## `CertificateArn = ::String` -- *Required*
String that contains the ARN of the ACM certificate to which the tag is to be applied. This must be of the form:

`arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


## `Tags = [[ ... ], ...]` -- *Required*
The key-value pair that defines the tag. The tag value is optional.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```



# Exceptions

`ResourceNotFoundException`, `InvalidArnException`, `InvalidTagException` or `TooManyTagsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/AddTagsToCertificate)
"""
@inline add_tags_to_certificate(aws::AWSConfig=default_aws_config(); args...) = add_tags_to_certificate(aws, args)

@inline add_tags_to_certificate(aws::AWSConfig, args) = AWSCore.Services.acm(aws, "AddTagsToCertificate", args)

@inline add_tags_to_certificate(args) = add_tags_to_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACM.delete_certificate
    delete_certificate([::AWSConfig], arguments::Dict)
    delete_certificate([::AWSConfig]; CertificateArn=)

    using AWSCore.Services.acm
    acm([::AWSConfig], "DeleteCertificate", arguments::Dict)
    acm([::AWSConfig], "DeleteCertificate", CertificateArn=)

# DeleteCertificate Operation

Deletes a certificate and its associated private key. If this action succeeds, the certificate no longer appears in the list that can be displayed by calling the [ListCertificates](@ref) action or be retrieved by calling the [GetCertificate](@ref) action. The certificate will not be available for use by AWS services integrated with ACM.

**Note**
> You cannot delete an ACM certificate that is being used by another AWS service. To delete a certificate that is in use, the certificate association must first be removed.

# Arguments

## `CertificateArn = ::String` -- *Required*
String that contains the ARN of the ACM certificate to be deleted. This must be of the form:

`arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).




# Exceptions

`ResourceNotFoundException`, `ResourceInUseException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DeleteCertificate)
"""
@inline delete_certificate(aws::AWSConfig=default_aws_config(); args...) = delete_certificate(aws, args)

@inline delete_certificate(aws::AWSConfig, args) = AWSCore.Services.acm(aws, "DeleteCertificate", args)

@inline delete_certificate(args) = delete_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACM.describe_certificate
    describe_certificate([::AWSConfig], arguments::Dict)
    describe_certificate([::AWSConfig]; CertificateArn=)

    using AWSCore.Services.acm
    acm([::AWSConfig], "DescribeCertificate", arguments::Dict)
    acm([::AWSConfig], "DescribeCertificate", CertificateArn=)

# DescribeCertificate Operation

Returns detailed metadata about the specified ACM certificate.

# Arguments

## `CertificateArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the ACM certificate. The ARN must have the following form:

`arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).




# Returns

`DescribeCertificateResponse`

# Exceptions

`ResourceNotFoundException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/DescribeCertificate)
"""
@inline describe_certificate(aws::AWSConfig=default_aws_config(); args...) = describe_certificate(aws, args)

@inline describe_certificate(aws::AWSConfig, args) = AWSCore.Services.acm(aws, "DescribeCertificate", args)

@inline describe_certificate(args) = describe_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACM.export_certificate
    export_certificate([::AWSConfig], arguments::Dict)
    export_certificate([::AWSConfig]; CertificateArn=, Passphrase=)

    using AWSCore.Services.acm
    acm([::AWSConfig], "ExportCertificate", arguments::Dict)
    acm([::AWSConfig], "ExportCertificate", CertificateArn=, Passphrase=)

# ExportCertificate Operation

Exports a private certificate issued by a private certificate authority (CA) for use anywhere. You can export the certificate, the certificate chain, and the encrypted private key associated with the public key embedded in the certificate. You must store the private key securely. The private key is a 2048 bit RSA key. You must provide a passphrase for the private key when exporting it. You can use the following OpenSSL command to decrypt it later. Provide the passphrase when prompted.

`openssl rsa -in encrypted_key.pem -out decrypted_key.pem`

# Arguments

## `CertificateArn = ::String` -- *Required*
An Amazon Resource Name (ARN) of the issued certificate. This must be of the form:

`arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012`


## `Passphrase = blob` -- *Required*
Passphrase to associate with the encrypted exported private key. If you want to later decrypt the private key, you must have the passphrase. You can use the following OpenSSL command to decrypt a private key:

`openssl rsa -in encrypted_key.pem -out decrypted_key.pem`




# Returns

`ExportCertificateResponse`

# Exceptions

`ResourceNotFoundException`, `RequestInProgressException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ExportCertificate)
"""
@inline export_certificate(aws::AWSConfig=default_aws_config(); args...) = export_certificate(aws, args)

@inline export_certificate(aws::AWSConfig, args) = AWSCore.Services.acm(aws, "ExportCertificate", args)

@inline export_certificate(args) = export_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACM.get_certificate
    get_certificate([::AWSConfig], arguments::Dict)
    get_certificate([::AWSConfig]; CertificateArn=)

    using AWSCore.Services.acm
    acm([::AWSConfig], "GetCertificate", arguments::Dict)
    acm([::AWSConfig], "GetCertificate", CertificateArn=)

# GetCertificate Operation

Retrieves a certificate specified by an ARN and its certificate chain . The chain is an ordered list of certificates that contains the end entity certificate, intermediate certificates of subordinate CAs, and the root certificate in that order. The certificate and certificate chain are base64 encoded. If you want to decode the certificate to see the individual fields, you can use OpenSSL.

# Arguments

## `CertificateArn = ::String` -- *Required*
String that contains a certificate ARN in the following format:

`arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).




# Returns

`GetCertificateResponse`

# Exceptions

`ResourceNotFoundException`, `RequestInProgressException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/GetCertificate)
"""
@inline get_certificate(aws::AWSConfig=default_aws_config(); args...) = get_certificate(aws, args)

@inline get_certificate(aws::AWSConfig, args) = AWSCore.Services.acm(aws, "GetCertificate", args)

@inline get_certificate(args) = get_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACM.import_certificate
    import_certificate([::AWSConfig], arguments::Dict)
    import_certificate([::AWSConfig]; Certificate=, PrivateKey=, <keyword arguments>)

    using AWSCore.Services.acm
    acm([::AWSConfig], "ImportCertificate", arguments::Dict)
    acm([::AWSConfig], "ImportCertificate", Certificate=, PrivateKey=, <keyword arguments>)

# ImportCertificate Operation

Imports a certificate into AWS Certificate Manager (ACM) to use with services that are integrated with ACM. Note that [integrated services](http://docs.aws.amazon.com/acm/latest/userguide/acm-services.html) allow only certificate types and keys they support to be associated with their resources. Further, their support differs depending on whether the certificate is imported into IAM or into ACM. For more information, see the documentation for each service. For more information about importing certificates into ACM, see [Importing Certificates](http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html) in the *AWS Certificate Manager User Guide*.

**Note**
> ACM does not provide [managed renewal](http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for certificates that you import.

Note the following guidelines when importing third party certificates:

*   You must enter the private key that matches the certificate you are importing.

*   The private key must be unencrypted. You cannot import a private key that is protected by a password or a passphrase.

*   If the certificate you are importing is not self-signed, you must enter its certificate chain.

*   If a certificate chain is included, the issuer must be the subject of one of the certificates in the chain.

*   The certificate, private key, and certificate chain must be PEM-encoded.

*   The current time must be between the `Not Before` and `Not After` certificate fields.

*   The `Issuer` field must not be empty.

*   The OCSP authority URL, if present, must not exceed 1000 characters.

*   To import a new certificate, omit the `CertificateArn` argument. Include this argument only when you want to replace a previously imported certificate.

*   When you import a certificate by using the CLI, you must specify the certificate, the certificate chain, and the private key by their file names preceded by `file://`. For example, you can specify a certificate saved in the `C:\\temp` folder as `file://C:\\temp\\certificate_to_import.pem`. If you are making an HTTP or HTTPS Query request, include these arguments as BLOBs.

*   When you import a certificate by using an SDK, you must specify the certificate, the certificate chain, and the private key files in the manner required by the programming language you're using.

This operation returns the [Amazon Resource Name (ARN)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the imported certificate.

# Arguments

## `CertificateArn = ::String`
The [Amazon Resource Name (ARN)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of an imported certificate to replace. To import a new certificate, omit this field.


## `Certificate = blob` -- *Required*
The certificate to import.


## `PrivateKey = blob` -- *Required*
The private key that matches the public key in the certificate.


## `CertificateChain = blob`
The PEM encoded certificate chain.




# Returns

`ImportCertificateResponse`

# Exceptions

`ResourceNotFoundException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ImportCertificate)
"""
@inline import_certificate(aws::AWSConfig=default_aws_config(); args...) = import_certificate(aws, args)

@inline import_certificate(aws::AWSConfig, args) = AWSCore.Services.acm(aws, "ImportCertificate", args)

@inline import_certificate(args) = import_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACM.list_certificates
    list_certificates([::AWSConfig], arguments::Dict)
    list_certificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.acm
    acm([::AWSConfig], "ListCertificates", arguments::Dict)
    acm([::AWSConfig], "ListCertificates", <keyword arguments>)

# ListCertificates Operation

Retrieves a list of certificate ARNs and domain names. You can request that only certificates that match a specific status be listed. You can also filter by specific attributes of the certificate.

# Arguments

## `CertificateStatuses = ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED" or "FAILED", ...]`
Filter the certificate list by status value.


## `Includes = [ ... ]`
Filter the certificate list. For more information, see the [Filters](@ref) structure.
```
 Includes = [
        "extendedKeyUsage" =>  ["TLS_WEB_SERVER_AUTHENTICATION", "TLS_WEB_CLIENT_AUTHENTICATION", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "IPSEC_END_SYSTEM", "IPSEC_TUNNEL", "IPSEC_USER", "ANY", "NONE" or "CUSTOM", ...],
        "keyUsage" =>  ["DIGITAL_SIGNATURE", "NON_REPUDIATION", "KEY_ENCIPHERMENT", "DATA_ENCIPHERMENT", "KEY_AGREEMENT", "CERTIFICATE_SIGNING", "CRL_SIGNING", "ENCIPHER_ONLY", "DECIPHER_ONLY", "ANY" or "CUSTOM", ...],
        "keyTypes" =>  ["RSA_2048", "RSA_1024", "RSA_4096", "EC_prime256v1", "EC_secp384r1" or "EC_secp521r1", ...]
    ]
```

## `NextToken = ::String`
Use this parameter only when paginating results and only in a subsequent request after you receive a response with truncated results. Set it to the value of `NextToken` from the response you just received.


## `MaxItems = ::Int`
Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the `NextToken` element is sent in the response. Use this `NextToken` value in a subsequent request to retrieve additional items.




# Returns

`ListCertificatesResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListCertificates)
"""
@inline list_certificates(aws::AWSConfig=default_aws_config(); args...) = list_certificates(aws, args)

@inline list_certificates(aws::AWSConfig, args) = AWSCore.Services.acm(aws, "ListCertificates", args)

@inline list_certificates(args) = list_certificates(default_aws_config(), args)


"""
    using AWSSDK.ACM.list_tags_for_certificate
    list_tags_for_certificate([::AWSConfig], arguments::Dict)
    list_tags_for_certificate([::AWSConfig]; CertificateArn=)

    using AWSCore.Services.acm
    acm([::AWSConfig], "ListTagsForCertificate", arguments::Dict)
    acm([::AWSConfig], "ListTagsForCertificate", CertificateArn=)

# ListTagsForCertificate Operation

Lists the tags that have been applied to the ACM certificate. Use the certificate's Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM certificate, use the [AddTagsToCertificate](@ref) action. To delete a tag, use the [RemoveTagsFromCertificate](@ref) action.

# Arguments

## `CertificateArn = ::String` -- *Required*
String that contains the ARN of the ACM certificate for which you want to list the tags. This must have the following form:

`arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).




# Returns

`ListTagsForCertificateResponse`

# Exceptions

`ResourceNotFoundException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ListTagsForCertificate)
"""
@inline list_tags_for_certificate(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_certificate(aws, args)

@inline list_tags_for_certificate(aws::AWSConfig, args) = AWSCore.Services.acm(aws, "ListTagsForCertificate", args)

@inline list_tags_for_certificate(args) = list_tags_for_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACM.remove_tags_from_certificate
    remove_tags_from_certificate([::AWSConfig], arguments::Dict)
    remove_tags_from_certificate([::AWSConfig]; CertificateArn=, Tags=)

    using AWSCore.Services.acm
    acm([::AWSConfig], "RemoveTagsFromCertificate", arguments::Dict)
    acm([::AWSConfig], "RemoveTagsFromCertificate", CertificateArn=, Tags=)

# RemoveTagsFromCertificate Operation

Remove one or more tags from an ACM certificate. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this function, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value.

To add tags to a certificate, use the [AddTagsToCertificate](@ref) action. To view all of the tags that have been applied to a specific ACM certificate, use the [ListTagsForCertificate](@ref) action.

# Arguments

## `CertificateArn = ::String` -- *Required*
String that contains the ARN of the ACM Certificate with one or more tags that you want to remove. This must be of the form:

`arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012`

For more information about ARNs, see [Amazon Resource Names (ARNs) and AWS Service Namespaces](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).


## `Tags = [[ ... ], ...]` -- *Required*
The key-value pair that defines the tag to remove.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```



# Exceptions

`ResourceNotFoundException`, `InvalidArnException` or `InvalidTagException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RemoveTagsFromCertificate)
"""
@inline remove_tags_from_certificate(aws::AWSConfig=default_aws_config(); args...) = remove_tags_from_certificate(aws, args)

@inline remove_tags_from_certificate(aws::AWSConfig, args) = AWSCore.Services.acm(aws, "RemoveTagsFromCertificate", args)

@inline remove_tags_from_certificate(args) = remove_tags_from_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACM.request_certificate
    request_certificate([::AWSConfig], arguments::Dict)
    request_certificate([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.acm
    acm([::AWSConfig], "RequestCertificate", arguments::Dict)
    acm([::AWSConfig], "RequestCertificate", DomainName=, <keyword arguments>)

# RequestCertificate Operation

Requests an ACM certificate for use with other AWS services. To request an ACM certificate, you must specify a fully qualified domain name (FQDN) in the `DomainName` parameter. You can also specify additional FQDNs in the `SubjectAlternativeNames` parameter.

If you are requesting a private certificate, domain validation is not required. If you are requesting a public certificate, each domain name that you specify must be validated to verify that you own or control the domain. You can use [DNS validation](http://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html) or [email validation](http://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html). We recommend that you use DNS validation. ACM issues public certificates after receiving approval from the domain owner.

# Arguments

## `DomainName = ::String` -- *Required*
Fully qualified domain name (FQDN), such as www.example.com, that you want to secure with an ACM certificate. Use an asterisk (*) to create a wildcard certificate that protects several sites in the same domain. For example, *.example.com protects www.example.com, site.example.com, and images.example.com.

The first domain name you enter cannot exceed 63 octets, including periods. Each subsequent Subject Alternative Name (SAN), however, can be up to 253 octets in length.


## `ValidationMethod = "EMAIL" or "DNS"`
The method you want to use if you are requesting a public certificate to validate that you own or control domain. You can [validate with DNS](http://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html) or [validate with email](http://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html). We recommend that you use DNS validation.


## `SubjectAlternativeNames = [::String, ...]`
Additional FQDNs to be included in the Subject Alternative Name extension of the ACM certificate. For example, add the name www.example.net to a certificate for which the `DomainName` field is www.example.com if users can reach your site by using either name. The maximum number of domain names that you can add to an ACM certificate is 100. However, the initial limit is 10 domain names. If you need more than 10 names, you must request a limit increase. For more information, see [Limits](http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html).

The maximum length of a SAN DNS name is 253 octets. The name is made up of multiple labels separated by periods. No label can be longer than 63 octets. Consider the following examples:

*   `(63 octets).(63 octets).(63 octets).(61 octets)` is legal because the total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63 octets.

*   `(64 octets).(63 octets).(63 octets).(61 octets)` is not legal because the total length exceeds 253 octets (64+1+63+1+63+1+61) and the first label exceeds 63 octets.

*   `(63 octets).(63 octets).(63 octets).(62 octets)` is not legal because the total length of the DNS name (63+1+63+1+63+1+62) exceeds 253 octets.


## `IdempotencyToken = ::String`
Customer chosen string that can be used to distinguish between calls to `RequestCertificate`. Idempotency tokens time out after one hour. Therefore, if you call `RequestCertificate` multiple times with the same idempotency token within one hour, ACM recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, ACM recognizes that you are requesting multiple certificates.


## `DomainValidationOptions = [[ ... ], ...]`
The domain name that you want ACM to use to send you emails so that you can validate domain ownership.
```
 DomainValidationOptions = [[
        "DomainName" => <required> ::String,
        "ValidationDomain" => <required> ::String
    ], ...]
```

## `Options = ["CertificateTransparencyLoggingPreference" =>  "ENABLED" or "DISABLED"]`
Currently, you can use this parameter to specify whether to add the certificate to a certificate transparency log. Certificate transparency makes it possible to detect SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have not been logged typically produce an error message in a browser. For more information, see [Opting Out of Certificate Transparency Logging](http://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency).


## `CertificateAuthorityArn = ::String`
The Amazon Resource Name (ARN) of the private certificate authority (CA) that will be used to issue the certificate. If you do not provide an ARN and you are trying to request a private certificate, ACM will attempt to issue a public certificate. For more information about private CAs, see the [AWS Certificate Manager Private Certificate Authority (PCA)](http://docs.aws.amazon.com/acm-pca/latest/userguide/PcaWelcome.html) user guide. The ARN must have the following form:

`arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012`




# Returns

`RequestCertificateResponse`

# Exceptions

`LimitExceededException`, `InvalidDomainValidationOptionsException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/RequestCertificate)
"""
@inline request_certificate(aws::AWSConfig=default_aws_config(); args...) = request_certificate(aws, args)

@inline request_certificate(aws::AWSConfig, args) = AWSCore.Services.acm(aws, "RequestCertificate", args)

@inline request_certificate(args) = request_certificate(default_aws_config(), args)


"""
    using AWSSDK.ACM.resend_validation_email
    resend_validation_email([::AWSConfig], arguments::Dict)
    resend_validation_email([::AWSConfig]; CertificateArn=, Domain=, ValidationDomain=)

    using AWSCore.Services.acm
    acm([::AWSConfig], "ResendValidationEmail", arguments::Dict)
    acm([::AWSConfig], "ResendValidationEmail", CertificateArn=, Domain=, ValidationDomain=)

# ResendValidationEmail Operation

Resends the email that requests domain ownership validation. The domain owner or an authorized representative must approve the ACM certificate before it can be issued. The certificate can be approved by clicking a link in the mail to navigate to the Amazon certificate approval website and then clicking **I Approve**. However, the validation email can be blocked by spam filters. Therefore, if you do not receive the original mail, you can request that the mail be resent within 72 hours of requesting the ACM certificate. If more than 72 hours have elapsed since your original request or since your last attempt to resend validation mail, you must request a new certificate. For more information about setting up your contact email addresses, see [Configure Email for your Domain](http://docs.aws.amazon.com/acm/latest/userguide/setup-email.html).

# Arguments

## `CertificateArn = ::String` -- *Required*
String that contains the ARN of the requested certificate. The certificate ARN is generated and returned by the [RequestCertificate](@ref) action as soon as the request is made. By default, using this parameter causes email to be sent to all top-level domains you specified in the certificate request. The ARN must be of the form:

`arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012`


## `Domain = ::String` -- *Required*
The fully qualified domain name (FQDN) of the certificate that needs to be validated.


## `ValidationDomain = ::String` -- *Required*
The base validation domain that will act as the suffix of the email addresses that are used to send the emails. This must be the same as the `Domain` value or a superdomain of the `Domain` value. For example, if you requested a certificate for `site.subdomain.example.com` and specify a **ValidationDomain** of `subdomain.example.com`, ACM sends email to the domain registrant, technical contact, and administrative contact in WHOIS and the following five addresses:

*   admin@subdomain.example.com

*   administrator@subdomain.example.com

*   hostmaster@subdomain.example.com

*   postmaster@subdomain.example.com

*   webmaster@subdomain.example.com




# Exceptions

`ResourceNotFoundException`, `InvalidStateException`, `InvalidArnException` or `InvalidDomainValidationOptionsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/ResendValidationEmail)
"""
@inline resend_validation_email(aws::AWSConfig=default_aws_config(); args...) = resend_validation_email(aws, args)

@inline resend_validation_email(aws::AWSConfig, args) = AWSCore.Services.acm(aws, "ResendValidationEmail", args)

@inline resend_validation_email(args) = resend_validation_email(default_aws_config(), args)


"""
    using AWSSDK.ACM.update_certificate_options
    update_certificate_options([::AWSConfig], arguments::Dict)
    update_certificate_options([::AWSConfig]; CertificateArn=, Options=)

    using AWSCore.Services.acm
    acm([::AWSConfig], "UpdateCertificateOptions", arguments::Dict)
    acm([::AWSConfig], "UpdateCertificateOptions", CertificateArn=, Options=)

# UpdateCertificateOptions Operation

Updates a certificate. Currently, you can use this function to specify whether to opt in to or out of recording your certificate in a certificate transparency log. For more information, see [Opting Out of Certificate Transparency Logging](http://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency).

# Arguments

## `CertificateArn = ::String` -- *Required*
ARN of the requested certificate to update. This must be of the form:

`arn:aws:acm:us-east-1:*account*:certificate/*12345678-1234-1234-1234-123456789012*`


## `Options = ["CertificateTransparencyLoggingPreference" =>  "ENABLED" or "DISABLED"]` -- *Required*
Use to update the options for your certificate. Currently, you can specify whether to add your certificate to a transparency log. Certificate transparency makes it possible to detect SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have not been logged typically produce an error message in a browser.




# Exceptions

`ResourceNotFoundException`, `LimitExceededException`, `InvalidStateException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/acm-2015-12-08/UpdateCertificateOptions)
"""
@inline update_certificate_options(aws::AWSConfig=default_aws_config(); args...) = update_certificate_options(aws, args)

@inline update_certificate_options(aws::AWSConfig, args) = AWSCore.Services.acm(aws, "UpdateCertificateOptions", args)

@inline update_certificate_options(args) = update_certificate_options(default_aws_config(), args)




end # module ACM


#==============================================================================#
# End of file
#==============================================================================#
