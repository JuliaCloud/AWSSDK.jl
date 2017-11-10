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

Adds one or more tags to an ACM Certificate. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a `key` and an optional `value`. You specify the certificate on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair.

You can apply a tag to just one certificate if you want to identify a specific characteristic of that certificate, or you can apply the same tag to multiple certificates if you want to filter for a common relationship among those certificates. Similarly, you can apply the same tag to multiple resources if you want to specify a relationship among those resources. For example, you can add the same tag to an ACM Certificate and an Elastic Load Balancing load balancer to indicate that they are both used by the same website. For more information, see [Tagging ACM Certificates](http://docs.aws.amazon.com/acm/latest/userguide/tags.html).

To remove one or more tags, use the [RemoveTagsFromCertificate](@ref) action. To view all of the tags that have been applied to the certificate, use the [ListTagsForCertificate](@ref) action.

# Arguments

## `CertificateArn = ::String` -- *Required*
String that contains the ARN of the ACM Certificate to which the tag is to be applied. This must be of the form:

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

Deletes an ACM Certificate and its associated private key. If this action succeeds, the certificate no longer appears in the list of ACM Certificates that can be displayed by calling the [ListCertificates](@ref) action or be retrieved by calling the [GetCertificate](@ref) action. The certificate will not be available for use by other AWS services.

**Note**
> You cannot delete an ACM Certificate that is being used by another AWS service. To delete a certificate that is in use, the certificate association must first be removed.

# Arguments

## `CertificateArn = ::String` -- *Required*
String that contains the ARN of the ACM Certificate to be deleted. This must be of the form:

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

Returns detailed metadata about the specified ACM Certificate.

# Arguments

## `CertificateArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the ACM Certificate. The ARN must have the following form:

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
    using AWSSDK.ACM.get_certificate
    get_certificate([::AWSConfig], arguments::Dict)
    get_certificate([::AWSConfig]; CertificateArn=)

    using AWSCore.Services.acm
    acm([::AWSConfig], "GetCertificate", arguments::Dict)
    acm([::AWSConfig], "GetCertificate", CertificateArn=)

# GetCertificate Operation

Retrieves an ACM Certificate and certificate chain for the certificate specified by an ARN. The chain is an ordered list of certificates that contains the ACM Certificate, intermediate certificates of subordinate CAs, and the root certificate in that order. The certificate and certificate chain are base64 encoded. If you want to decode the certificate chain to see the individual certificate fields, you can use OpenSSL.

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

Imports an SSL/TLS certificate into AWS Certificate Manager (ACM) to use with [ACM's integrated AWS services](http://docs.aws.amazon.com/acm/latest/userguide/acm-services.html).

**Note**
> ACM does not provide [managed renewal](http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for certificates that you import.

For more information about importing certificates into ACM, including the differences between certificates that you import and those that ACM provides, see [Importing Certificates](http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html) in the *AWS Certificate Manager User Guide*.

To import a certificate, you must provide the certificate and the matching private key. When the certificate is not self-signed, you must also provide a certificate chain. You can omit the certificate chain when importing a self-signed certificate.

The certificate, private key, and certificate chain must be PEM-encoded. For more information about converting these items to PEM format, see [Importing Certificates Troubleshooting](http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html#import-certificate-troubleshooting) in the *AWS Certificate Manager User Guide*.

To import a new certificate, omit the `CertificateArn` field. Include this field only when you want to replace a previously imported certificate.

When you import a certificate by using the CLI or one of the SDKs, you must specify the certificate, chain, and private key parameters as file names preceded by `file://`. For example, you can specify a certificate saved in the `C:\\temp` folder as `C:\\temp\\certificate_to_import.pem`. If you are making an HTTP or HTTPS Query request, include these parameters as BLOBs.

This operation returns the [Amazon Resource Name (ARN)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the imported certificate.

# Arguments

## `CertificateArn = ::String`
The [Amazon Resource Name (ARN)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of an imported certificate to replace. To import a new certificate, omit this field.


## `Certificate = blob` -- *Required*
The certificate to import. It must meet the following requirements:

*   Must be PEM-encoded.

*   Must contain a 1024-bit or 2048-bit RSA public key.

*   Must be valid at the time of import. You cannot import a certificate before its validity period begins (the certificate's `NotBefore` date) or after it expires (the certificate's `NotAfter` date).


## `PrivateKey = blob` -- *Required*
The private key that matches the public key in the certificate. It must meet the following requirements:

*   Must be PEM-encoded.

*   Must be unencrypted. You cannot import a private key that is protected by a password or passphrase.


## `CertificateChain = blob`
The certificate chain. It must be PEM-encoded.




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

Retrieves a list of ACM Certificates and the domain name for each. You can optionally filter the list to return only the certificates that match the specified status.

# Arguments

## `CertificateStatuses = ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED" or "FAILED", ...]`
The status or statuses on which to filter the list of ACM Certificates.


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

Lists the tags that have been applied to the ACM Certificate. Use the certificate's Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM Certificate, use the [AddTagsToCertificate](@ref) action. To delete a tag, use the [RemoveTagsFromCertificate](@ref) action.

# Arguments

## `CertificateArn = ::String` -- *Required*
String that contains the ARN of the ACM Certificate for which you want to list the tags. This has the following form:

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

Remove one or more tags from an ACM Certificate. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this function, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value.

To add tags to a certificate, use the [AddTagsToCertificate](@ref) action. To view all of the tags that have been applied to a specific ACM Certificate, use the [ListTagsForCertificate](@ref) action.

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

Requests an ACM Certificate for use with other AWS services. To request an ACM Certificate, you must specify the fully qualified domain name (FQDN) for your site in the `DomainName` parameter. You can also specify additional FQDNs in the `SubjectAlternativeNames` parameter if users can reach your site by using other names.

For each domain name you specify, email is sent to the domain owner to request approval to issue the certificate. Email is sent to three registered contact addresses in the WHOIS database and to five common system administration addresses formed from the `DomainName` you enter or the optional `ValidationDomain` parameter. For more information, see [Validate Domain Ownership](http://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate.html).

After receiving approval from the domain owner, the ACM Certificate is issued. For more information, see the [AWS Certificate Manager User Guide](http://docs.aws.amazon.com/acm/latest/userguide/).

# Arguments

## `DomainName = ::String` -- *Required*
Fully qualified domain name (FQDN), such as www.example.com, of the site that you want to secure with an ACM Certificate. Use an asterisk (*) to create a wildcard certificate that protects several sites in the same domain. For example, *.example.com protects www.example.com, site.example.com, and images.example.com.

The maximum length of a DNS name is 253 octets. The name is made up of multiple labels separated by periods. No label can be longer than 63 octets. Consider the following examples:

`(63 octets).(63 octets).(63 octets).(61 octets)` is legal because the total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63 octets.

`(64 octets).(63 octets).(63 octets).(61 octets)` is not legal because the total length exceeds 253 octets (64+1+63+1+63+1+61) and the first label exceeds 63 octets.

`(63 octets).(63 octets).(63 octets).(62 octets)` is not legal because the total length of the DNS name (63+1+63+1+63+1+62) exceeds 253 octets.


## `SubjectAlternativeNames = [::String, ...]`
Additional FQDNs to be included in the Subject Alternative Name extension of the ACM Certificate. For example, add the name www.example.net to a certificate for which the `DomainName` field is www.example.com if users can reach your site by using either name. The maximum number of domain names that you can add to an ACM Certificate is 100. However, the initial limit is 10 domain names. If you need more than 10 names, you must request a limit increase. For more information, see [Limits](http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html).


## `IdempotencyToken = ::String`
Customer chosen string that can be used to distinguish between calls to `RequestCertificate`. Idempotency tokens time out after one hour. Therefore, if you call `RequestCertificate` multiple times with the same idempotency token within one hour, ACM recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, ACM recognizes that you are requesting multiple certificates.


## `DomainValidationOptions = [[ ... ], ...]`
The domain name that you want ACM to use to send you emails to validate your ownership of the domain.
```
 DomainValidationOptions = [[
        "DomainName" => <required> ::String,
        "ValidationDomain" => <required> ::String
    ], ...]
```



# Returns

`RequestCertificateResponse`

# Exceptions

`LimitExceededException` or `InvalidDomainValidationOptionsException`.

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

Resends the email that requests domain ownership validation. The domain owner or an authorized representative must approve the ACM Certificate before it can be issued. The certificate can be approved by clicking a link in the mail to navigate to the Amazon certificate approval website and then clicking **I Approve**. However, the validation email can be blocked by spam filters. Therefore, if you do not receive the original mail, you can request that the mail be resent within 72 hours of requesting the ACM Certificate. If more than 72 hours have elapsed since your original request or since your last attempt to resend validation mail, you must request a new certificate. For more information about setting up your contact email addresses, see [Configure Email for your Domain](http://docs.aws.amazon.com/acm/latest/userguide/setup-email.html).

# Arguments

## `CertificateArn = ::String` -- *Required*
String that contains the ARN of the requested certificate. The certificate ARN is generated and returned by the [RequestCertificate](@ref) action as soon as the request is made. By default, using this parameter causes email to be sent to all top-level domains you specified in the certificate request.

The ARN must be of the form:

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




end # module ACM


#==============================================================================#
# End of file
#==============================================================================#
