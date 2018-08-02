#==============================================================================#
# Route53Domains.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/route53domains-2014-05-15.normal.json
#==============================================================================#

__precompile__()

module Route53Domains

using AWSCore


"""
    using AWSSDK.Route53Domains.check_domain_availability
    check_domain_availability([::AWSConfig], arguments::Dict)
    check_domain_availability([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "CheckDomainAvailability", arguments::Dict)
    route53domains([::AWSConfig], "CheckDomainAvailability", DomainName=, <keyword arguments>)

# CheckDomainAvailability Operation

This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must submit another request to determine the availability of the domain name.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to get availability for.

Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.


## `IdnLangCode = ::String`
Reserved for future use.




# Returns

`CheckDomainAvailabilityResponse`

# Exceptions

`InvalidInput` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CheckDomainAvailability)
"""
@inline check_domain_availability(aws::AWSConfig=default_aws_config(); args...) = check_domain_availability(aws, args)

@inline check_domain_availability(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "CheckDomainAvailability", args)

@inline check_domain_availability(args) = check_domain_availability(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.check_domain_transferability
    check_domain_transferability([::AWSConfig], arguments::Dict)
    check_domain_transferability([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "CheckDomainTransferability", arguments::Dict)
    route53domains([::AWSConfig], "CheckDomainTransferability", DomainName=, <keyword arguments>)

# CheckDomainTransferability Operation

Checks whether a domain name can be transferred to Amazon Route 53.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to transfer to Amazon Route 53.

Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.


## `AuthCode = ::String`
If the registrar for the top-level domain (TLD) requires an authorization code to transfer the domain, the code that you got from the current registrar for the domain.




# Returns

`CheckDomainTransferabilityResponse`

# Exceptions

`InvalidInput` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CheckDomainTransferability)
"""
@inline check_domain_transferability(aws::AWSConfig=default_aws_config(); args...) = check_domain_transferability(aws, args)

@inline check_domain_transferability(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "CheckDomainTransferability", args)

@inline check_domain_transferability(args) = check_domain_transferability(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.delete_tags_for_domain
    delete_tags_for_domain([::AWSConfig], arguments::Dict)
    delete_tags_for_domain([::AWSConfig]; DomainName=, TagsToDelete=)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "DeleteTagsForDomain", arguments::Dict)
    route53domains([::AWSConfig], "DeleteTagsForDomain", DomainName=, TagsToDelete=)

# DeleteTagsForDomain Operation

This operation deletes the specified tags for a domain.

All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.

# Arguments

## `DomainName = ::String` -- *Required*
The domain for which you want to delete one or more tags.


## `TagsToDelete = [::String, ...]` -- *Required*
A list of tag keys to delete.




# Returns

`DeleteTagsForDomainResponse`

# Exceptions

`InvalidInput`, `OperationLimitExceeded` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DeleteTagsForDomain)
"""
@inline delete_tags_for_domain(aws::AWSConfig=default_aws_config(); args...) = delete_tags_for_domain(aws, args)

@inline delete_tags_for_domain(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "DeleteTagsForDomain", args)

@inline delete_tags_for_domain(args) = delete_tags_for_domain(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.disable_domain_auto_renew
    disable_domain_auto_renew([::AWSConfig], arguments::Dict)
    disable_domain_auto_renew([::AWSConfig]; DomainName=)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "DisableDomainAutoRenew", arguments::Dict)
    route53domains([::AWSConfig], "DisableDomainAutoRenew", DomainName=)

# DisableDomainAutoRenew Operation

This operation disables automatic renewal of domain registration for the specified domain.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to disable automatic renewal for.




# Returns

`DisableDomainAutoRenewResponse`

# Exceptions

`InvalidInput` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisableDomainAutoRenew)
"""
@inline disable_domain_auto_renew(aws::AWSConfig=default_aws_config(); args...) = disable_domain_auto_renew(aws, args)

@inline disable_domain_auto_renew(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "DisableDomainAutoRenew", args)

@inline disable_domain_auto_renew(args) = disable_domain_auto_renew(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.disable_domain_transfer_lock
    disable_domain_transfer_lock([::AWSConfig], arguments::Dict)
    disable_domain_transfer_lock([::AWSConfig]; DomainName=)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "DisableDomainTransferLock", arguments::Dict)
    route53domains([::AWSConfig], "DisableDomainTransferLock", DomainName=)

# DisableDomainTransferLock Operation

This operation removes the transfer lock on the domain (specifically the `clientTransferProhibited` status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to remove the transfer lock for.




# Returns

`DisableDomainTransferLockResponse`

# Exceptions

`InvalidInput`, `DuplicateRequest`, `TLDRulesViolation`, `OperationLimitExceeded` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisableDomainTransferLock)
"""
@inline disable_domain_transfer_lock(aws::AWSConfig=default_aws_config(); args...) = disable_domain_transfer_lock(aws, args)

@inline disable_domain_transfer_lock(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "DisableDomainTransferLock", args)

@inline disable_domain_transfer_lock(args) = disable_domain_transfer_lock(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.enable_domain_auto_renew
    enable_domain_auto_renew([::AWSConfig], arguments::Dict)
    enable_domain_auto_renew([::AWSConfig]; DomainName=)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "EnableDomainAutoRenew", arguments::Dict)
    route53domains([::AWSConfig], "EnableDomainAutoRenew", DomainName=)

# EnableDomainAutoRenew Operation

This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires. The cost of renewing your domain registration is billed to your AWS account.

The period during which you can renew a domain name varies by TLD. For a list of TLDs and their renewal policies, see ["Renewal, restoration, and deletion times"](http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times) on the website for our registrar associate, Gandi. Amazon Route 53 requires that you renew before the end of the renewal period that is listed on the Gandi website so we can complete processing before the deadline.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to enable automatic renewal for.




# Returns

`EnableDomainAutoRenewResponse`

# Exceptions

`InvalidInput`, `UnsupportedTLD` or `TLDRulesViolation`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/EnableDomainAutoRenew)
"""
@inline enable_domain_auto_renew(aws::AWSConfig=default_aws_config(); args...) = enable_domain_auto_renew(aws, args)

@inline enable_domain_auto_renew(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "EnableDomainAutoRenew", args)

@inline enable_domain_auto_renew(args) = enable_domain_auto_renew(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.enable_domain_transfer_lock
    enable_domain_transfer_lock([::AWSConfig], arguments::Dict)
    enable_domain_transfer_lock([::AWSConfig]; DomainName=)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "EnableDomainTransferLock", arguments::Dict)
    route53domains([::AWSConfig], "EnableDomainTransferLock", DomainName=)

# EnableDomainTransferLock Operation

This operation sets the transfer lock on the domain (specifically the `clientTransferProhibited` status) to prevent domain transfers. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to set the transfer lock for.




# Returns

`EnableDomainTransferLockResponse`

# Exceptions

`InvalidInput`, `DuplicateRequest`, `TLDRulesViolation`, `OperationLimitExceeded` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/EnableDomainTransferLock)
"""
@inline enable_domain_transfer_lock(aws::AWSConfig=default_aws_config(); args...) = enable_domain_transfer_lock(aws, args)

@inline enable_domain_transfer_lock(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "EnableDomainTransferLock", args)

@inline enable_domain_transfer_lock(args) = enable_domain_transfer_lock(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.get_contact_reachability_status
    get_contact_reachability_status([::AWSConfig], arguments::Dict)
    get_contact_reachability_status([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "GetContactReachabilityStatus", arguments::Dict)
    route53domains([::AWSConfig], "GetContactReachabilityStatus", <keyword arguments>)

# GetContactReachabilityStatus Operation

For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded.

If you want us to resend the email, use the `ResendContactReachabilityEmail` operation.

# Arguments

## `domainName = ::String`
The name of the domain for which you want to know whether the registrant contact has confirmed that the email address is valid.




# Returns

`GetContactReachabilityStatusResponse`

# Exceptions

`InvalidInput`, `OperationLimitExceeded` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetContactReachabilityStatus)
"""
@inline get_contact_reachability_status(aws::AWSConfig=default_aws_config(); args...) = get_contact_reachability_status(aws, args)

@inline get_contact_reachability_status(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "GetContactReachabilityStatus", args)

@inline get_contact_reachability_status(args) = get_contact_reachability_status(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.get_domain_detail
    get_domain_detail([::AWSConfig], arguments::Dict)
    get_domain_detail([::AWSConfig]; DomainName=)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "GetDomainDetail", arguments::Dict)
    route53domains([::AWSConfig], "GetDomainDetail", DomainName=)

# GetDomainDetail Operation

This operation returns detailed information about a specified domain that is associated with the current AWS account. Contact information for the domain is also returned as part of the output.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to get detailed information about.




# Returns

`GetDomainDetailResponse`

# Exceptions

`InvalidInput` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetDomainDetail)
"""
@inline get_domain_detail(aws::AWSConfig=default_aws_config(); args...) = get_domain_detail(aws, args)

@inline get_domain_detail(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "GetDomainDetail", args)

@inline get_domain_detail(args) = get_domain_detail(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.get_domain_suggestions
    get_domain_suggestions([::AWSConfig], arguments::Dict)
    get_domain_suggestions([::AWSConfig]; DomainName=, SuggestionCount=, OnlyAvailable=)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "GetDomainSuggestions", arguments::Dict)
    route53domains([::AWSConfig], "GetDomainSuggestions", DomainName=, SuggestionCount=, OnlyAvailable=)

# GetDomainSuggestions Operation

The GetDomainSuggestions operation returns a list of suggested domain names given a string, which can either be a domain name or simply a word or phrase (without spaces).

# Arguments

## `DomainName = ::String` -- *Required*
A domain name that you want to use as the basis for a list of possible domain names. The domain name must contain a top-level domain (TLD), such as .com, that Amazon Route 53 supports. For a list of TLDs, see [Domains that You Can Register with Amazon Route 53](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html) in the *Amazon Route 53 Developer Guide*.


## `SuggestionCount = ::Int` -- *Required*
The number of suggested domain names that you want Amazon Route 53 to return.


## `OnlyAvailable = ::Bool` -- *Required*
If `OnlyAvailable` is `true`, Amazon Route 53 returns only domain names that are available. If `OnlyAvailable` is `false`, Amazon Route 53 returns domain names without checking whether they're available to be registered. To determine whether the domain is available, you can call `checkDomainAvailability` for each suggestion.




# Returns

`GetDomainSuggestionsResponse`

# Exceptions

`InvalidInput` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetDomainSuggestions)
"""
@inline get_domain_suggestions(aws::AWSConfig=default_aws_config(); args...) = get_domain_suggestions(aws, args)

@inline get_domain_suggestions(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "GetDomainSuggestions", args)

@inline get_domain_suggestions(args) = get_domain_suggestions(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.get_operation_detail
    get_operation_detail([::AWSConfig], arguments::Dict)
    get_operation_detail([::AWSConfig]; OperationId=)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "GetOperationDetail", arguments::Dict)
    route53domains([::AWSConfig], "GetOperationDetail", OperationId=)

# GetOperationDetail Operation

This operation returns the current status of an operation that is not completed.

# Arguments

## `OperationId = ::String` -- *Required*
The identifier for the operation for which you want to get the status. Amazon Route 53 returned the identifier in the response to the original request.




# Returns

`GetOperationDetailResponse`

# Exceptions

`InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetOperationDetail)
"""
@inline get_operation_detail(aws::AWSConfig=default_aws_config(); args...) = get_operation_detail(aws, args)

@inline get_operation_detail(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "GetOperationDetail", args)

@inline get_operation_detail(args) = get_operation_detail(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.list_domains
    list_domains([::AWSConfig], arguments::Dict)
    list_domains([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "ListDomains", arguments::Dict)
    route53domains([::AWSConfig], "ListDomains", <keyword arguments>)

# ListDomains Operation

This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.

# Arguments

## `Marker = ::String`
For an initial request for a list of domains, omit this element. If the number of domains that are associated with the current AWS account is greater than the value that you specified for `MaxItems`, you can use `Marker` to return additional domains. Get the value of `NextPageMarker` from the previous response, and submit another request that includes the value of `NextPageMarker` in the `Marker` element.

Constraints: The marker must match the value specified in the previous request.


## `MaxItems = ::Int`
Number of domains to be returned.

Default: 20




# Returns

`ListDomainsResponse`

# Exceptions

`InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListDomains)
"""
@inline list_domains(aws::AWSConfig=default_aws_config(); args...) = list_domains(aws, args)

@inline list_domains(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "ListDomains", args)

@inline list_domains(args) = list_domains(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.list_operations
    list_operations([::AWSConfig], arguments::Dict)
    list_operations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "ListOperations", arguments::Dict)
    route53domains([::AWSConfig], "ListOperations", <keyword arguments>)

# ListOperations Operation

This operation returns the operation IDs of operations that are not yet complete.

# Arguments

## `SubmittedSince = timestamp`
An optional parameter that lets you get information about all the operations that you submitted after a specified date and time. Specify the date and time in Coordinated Universal time (UTC).


## `Marker = ::String`
For an initial request for a list of operations, omit this element. If the number of operations that are not yet complete is greater than the value that you specified for `MaxItems`, you can use `Marker` to return additional operations. Get the value of `NextPageMarker` from the previous response, and submit another request that includes the value of `NextPageMarker` in the `Marker` element.


## `MaxItems = ::Int`
Number of domains to be returned.

Default: 20




# Returns

`ListOperationsResponse`

# Exceptions

`InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListOperations)
"""
@inline list_operations(aws::AWSConfig=default_aws_config(); args...) = list_operations(aws, args)

@inline list_operations(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "ListOperations", args)

@inline list_operations(args) = list_operations(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.list_tags_for_domain
    list_tags_for_domain([::AWSConfig], arguments::Dict)
    list_tags_for_domain([::AWSConfig]; DomainName=)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "ListTagsForDomain", arguments::Dict)
    route53domains([::AWSConfig], "ListTagsForDomain", DomainName=)

# ListTagsForDomain Operation

This operation returns all of the tags that are associated with the specified domain.

All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.

# Arguments

## `DomainName = ::String` -- *Required*
The domain for which you want to get a list of tags.




# Returns

`ListTagsForDomainResponse`

# Exceptions

`InvalidInput`, `OperationLimitExceeded` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListTagsForDomain)
"""
@inline list_tags_for_domain(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_domain(aws, args)

@inline list_tags_for_domain(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "ListTagsForDomain", args)

@inline list_tags_for_domain(args) = list_tags_for_domain(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.register_domain
    register_domain([::AWSConfig], arguments::Dict)
    register_domain([::AWSConfig]; DomainName=, DurationInYears=, AdminContact=, RegistrantContact=, TechContact=, <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "RegisterDomain", arguments::Dict)
    route53domains([::AWSConfig], "RegisterDomain", DomainName=, DurationInYears=, AdminContact=, RegistrantContact=, TechContact=, <keyword arguments>)

# RegisterDomain Operation

This operation registers a domain. Domains are registered either by Amazon Registrar (for .com, .net, and .org domains) or by our registrar associate, Gandi (for all other domains). For some top-level domains (TLDs), this operation requires extra parameters.

When you register a domain, Amazon Route 53 does the following:

*   Creates a Amazon Route 53 hosted zone that has the same name as the domain. Amazon Route 53 assigns four name servers to your hosted zone and automatically updates your domain registration with the names of these name servers.

*   Enables autorenew, so your domain registration will renew automatically each year. We'll notify you in advance of the renewal date so you can choose whether to renew the registration.

*   Optionally enables privacy protection, so WHOIS queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you don't enable privacy protection, WHOIS queries return the information that you entered for the registrant, admin, and tech contacts.

*   If registration is successful, returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant is notified by email.

*   Charges your AWS account an amount based on the top-level domain. For more information, see [Amazon Route 53 Pricing](http://aws.amazon.com/route53/pricing/).

# Arguments

## `DomainName = ::String` -- *Required*
The domain name that you want to register.

Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.


## `IdnLangCode = ::String`
Reserved for future use.


## `DurationInYears = ::Int` -- *Required*
The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain. For the range of valid values for your domain, see [Domains that You Can Register with Amazon Route 53](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html) in the *Amazon Route 53 Developer Guide*.

Default: 1


## `AutoRenew = ::Bool`
Indicates whether the domain will be automatically renewed (`true`) or not (`false`). Autorenewal only takes effect after the account is charged.

Default: `true`


## `AdminContact = [ ... ]` -- *Required*
Provides detailed contact information.
```
 AdminContact = [
        "FirstName" =>  ::String,
        "LastName" =>  ::String,
        "ContactType" =>  "PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY" or "RESELLER",
        "OrganizationName" =>  ::String,
        "AddressLine1" =>  ::String,
        "AddressLine2" =>  ::String,
        "City" =>  ::String,
        "State" =>  ::String,
        "CountryCode" =>  "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM" or "ZW",
        "ZipCode" =>  ::String,
        "PhoneNumber" =>  ::String,
        "Email" =>  ::String,
        "Fax" =>  ::String,
        "ExtraParams" =>  [[
            "Name" => <required> "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE" or "UK_COMPANY_NUMBER",
            "Value" => <required> ::String
        ], ...]
    ]
```

## `RegistrantContact = [ ... ]` -- *Required*
Provides detailed contact information.
```
 RegistrantContact = [
        "FirstName" =>  ::String,
        "LastName" =>  ::String,
        "ContactType" =>  "PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY" or "RESELLER",
        "OrganizationName" =>  ::String,
        "AddressLine1" =>  ::String,
        "AddressLine2" =>  ::String,
        "City" =>  ::String,
        "State" =>  ::String,
        "CountryCode" =>  "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM" or "ZW",
        "ZipCode" =>  ::String,
        "PhoneNumber" =>  ::String,
        "Email" =>  ::String,
        "Fax" =>  ::String,
        "ExtraParams" =>  [[
            "Name" => <required> "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE" or "UK_COMPANY_NUMBER",
            "Value" => <required> ::String
        ], ...]
    ]
```

## `TechContact = [ ... ]` -- *Required*
Provides detailed contact information.
```
 TechContact = [
        "FirstName" =>  ::String,
        "LastName" =>  ::String,
        "ContactType" =>  "PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY" or "RESELLER",
        "OrganizationName" =>  ::String,
        "AddressLine1" =>  ::String,
        "AddressLine2" =>  ::String,
        "City" =>  ::String,
        "State" =>  ::String,
        "CountryCode" =>  "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM" or "ZW",
        "ZipCode" =>  ::String,
        "PhoneNumber" =>  ::String,
        "Email" =>  ::String,
        "Fax" =>  ::String,
        "ExtraParams" =>  [[
            "Name" => <required> "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE" or "UK_COMPANY_NUMBER",
            "Value" => <required> ::String
        ], ...]
    ]
```

## `PrivacyProtectAdminContact = ::Bool`
Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the admin contact.

Default: `true`


## `PrivacyProtectRegistrantContact = ::Bool`
Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the registrant contact (the domain owner).

Default: `true`


## `PrivacyProtectTechContact = ::Bool`
Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the technical contact.

Default: `true`




# Returns

`RegisterDomainResponse`

# Exceptions

`InvalidInput`, `UnsupportedTLD`, `DuplicateRequest`, `TLDRulesViolation`, `DomainLimitExceeded` or `OperationLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RegisterDomain)
"""
@inline register_domain(aws::AWSConfig=default_aws_config(); args...) = register_domain(aws, args)

@inline register_domain(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "RegisterDomain", args)

@inline register_domain(args) = register_domain(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.renew_domain
    renew_domain([::AWSConfig], arguments::Dict)
    renew_domain([::AWSConfig]; DomainName=, CurrentExpiryYear=, <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "RenewDomain", arguments::Dict)
    route53domains([::AWSConfig], "RenewDomain", DomainName=, CurrentExpiryYear=, <keyword arguments>)

# RenewDomain Operation

This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your AWS account.

We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the expiration date if you haven't renewed far enough in advance. For more information about renewing domain registration, see [Renewing Registration for a Domain](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html) in the Amazon Route 53 Developer Guide.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to renew.


## `DurationInYears = ::Int`
The number of years that you want to renew the domain for. The maximum number of years depends on the top-level domain. For the range of valid values for your domain, see [Domains that You Can Register with Amazon Route 53](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html) in the *Amazon Route 53 Developer Guide*.

Default: 1


## `CurrentExpiryYear = ::Int` -- *Required*
The year when the registration for the domain is set to expire. This value must match the current expiration date for the domain.




# Returns

`RenewDomainResponse`

# Exceptions

`InvalidInput`, `UnsupportedTLD`, `DuplicateRequest`, `TLDRulesViolation` or `OperationLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RenewDomain)
"""
@inline renew_domain(aws::AWSConfig=default_aws_config(); args...) = renew_domain(aws, args)

@inline renew_domain(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "RenewDomain", args)

@inline renew_domain(args) = renew_domain(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.resend_contact_reachability_email
    resend_contact_reachability_email([::AWSConfig], arguments::Dict)
    resend_contact_reachability_email([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "ResendContactReachabilityEmail", arguments::Dict)
    route53domains([::AWSConfig], "ResendContactReachabilityEmail", <keyword arguments>)

# ResendContactReachabilityEmail Operation

For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.

# Arguments

## `domainName = ::String`
The name of the domain for which you want Amazon Route 53 to resend a confirmation email to the registrant contact.




# Returns

`ResendContactReachabilityEmailResponse`

# Exceptions

`InvalidInput`, `OperationLimitExceeded` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ResendContactReachabilityEmail)
"""
@inline resend_contact_reachability_email(aws::AWSConfig=default_aws_config(); args...) = resend_contact_reachability_email(aws, args)

@inline resend_contact_reachability_email(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "ResendContactReachabilityEmail", args)

@inline resend_contact_reachability_email(args) = resend_contact_reachability_email(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.retrieve_domain_auth_code
    retrieve_domain_auth_code([::AWSConfig], arguments::Dict)
    retrieve_domain_auth_code([::AWSConfig]; DomainName=)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "RetrieveDomainAuthCode", arguments::Dict)
    route53domains([::AWSConfig], "RetrieveDomainAuthCode", DomainName=)

# RetrieveDomainAuthCode Operation

This operation returns the AuthCode for the domain. To transfer a domain to another registrar, you provide this value to the new registrar.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to get an authorization code for.




# Returns

`RetrieveDomainAuthCodeResponse`

# Exceptions

`InvalidInput` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RetrieveDomainAuthCode)
"""
@inline retrieve_domain_auth_code(aws::AWSConfig=default_aws_config(); args...) = retrieve_domain_auth_code(aws, args)

@inline retrieve_domain_auth_code(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "RetrieveDomainAuthCode", args)

@inline retrieve_domain_auth_code(args) = retrieve_domain_auth_code(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.transfer_domain
    transfer_domain([::AWSConfig], arguments::Dict)
    transfer_domain([::AWSConfig]; DomainName=, DurationInYears=, AdminContact=, RegistrantContact=, TechContact=, <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "TransferDomain", arguments::Dict)
    route53domains([::AWSConfig], "TransferDomain", DomainName=, DurationInYears=, AdminContact=, RegistrantContact=, TechContact=, <keyword arguments>)

# TransferDomain Operation

This operation transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered either with Amazon Registrar (for .com, .net, and .org domains) or with our registrar associate, Gandi (for all other TLDs).

For transfer requirements, a detailed procedure, and information about viewing the status of a domain transfer, see [Transferring Registration for a Domain to Amazon Route 53](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html) in the *Amazon Route 53 Developer Guide*.

If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you consider transferring your DNS service to Amazon Route 53 or to another DNS service provider before you transfer your registration. Some registrars provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar will not renew your domain registration and could end your DNS service at any time.

**Important**
> If the registrar for your domain is also the DNS service provider for the domain and you don't transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.

If the transfer is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the transfer doesn't complete successfully, the domain registrant will be notified by email.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to transfer to Amazon Route 53.

Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.


## `IdnLangCode = ::String`
Reserved for future use.


## `DurationInYears = ::Int` -- *Required*
The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain.

Default: 1


## `Nameservers = [[ ... ], ...]`
Contains details for the host and glue IP addresses.
```
 Nameservers = [[
        "Name" => <required> ::String,
        "GlueIps" =>  [::String, ...]
    ], ...]
```

## `AuthCode = ::String`
The authorization code for the domain. You get this value from the current registrar.


## `AutoRenew = ::Bool`
Indicates whether the domain will be automatically renewed (true) or not (false). Autorenewal only takes effect after the account is charged.

Default: true


## `AdminContact = [ ... ]` -- *Required*
Provides detailed contact information.
```
 AdminContact = [
        "FirstName" =>  ::String,
        "LastName" =>  ::String,
        "ContactType" =>  "PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY" or "RESELLER",
        "OrganizationName" =>  ::String,
        "AddressLine1" =>  ::String,
        "AddressLine2" =>  ::String,
        "City" =>  ::String,
        "State" =>  ::String,
        "CountryCode" =>  "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM" or "ZW",
        "ZipCode" =>  ::String,
        "PhoneNumber" =>  ::String,
        "Email" =>  ::String,
        "Fax" =>  ::String,
        "ExtraParams" =>  [[
            "Name" => <required> "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE" or "UK_COMPANY_NUMBER",
            "Value" => <required> ::String
        ], ...]
    ]
```

## `RegistrantContact = [ ... ]` -- *Required*
Provides detailed contact information.
```
 RegistrantContact = [
        "FirstName" =>  ::String,
        "LastName" =>  ::String,
        "ContactType" =>  "PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY" or "RESELLER",
        "OrganizationName" =>  ::String,
        "AddressLine1" =>  ::String,
        "AddressLine2" =>  ::String,
        "City" =>  ::String,
        "State" =>  ::String,
        "CountryCode" =>  "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM" or "ZW",
        "ZipCode" =>  ::String,
        "PhoneNumber" =>  ::String,
        "Email" =>  ::String,
        "Fax" =>  ::String,
        "ExtraParams" =>  [[
            "Name" => <required> "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE" or "UK_COMPANY_NUMBER",
            "Value" => <required> ::String
        ], ...]
    ]
```

## `TechContact = [ ... ]` -- *Required*
Provides detailed contact information.
```
 TechContact = [
        "FirstName" =>  ::String,
        "LastName" =>  ::String,
        "ContactType" =>  "PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY" or "RESELLER",
        "OrganizationName" =>  ::String,
        "AddressLine1" =>  ::String,
        "AddressLine2" =>  ::String,
        "City" =>  ::String,
        "State" =>  ::String,
        "CountryCode" =>  "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM" or "ZW",
        "ZipCode" =>  ::String,
        "PhoneNumber" =>  ::String,
        "Email" =>  ::String,
        "Fax" =>  ::String,
        "ExtraParams" =>  [[
            "Name" => <required> "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE" or "UK_COMPANY_NUMBER",
            "Value" => <required> ::String
        ], ...]
    ]
```

## `PrivacyProtectAdminContact = ::Bool`
Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the admin contact.

Default: `true`


## `PrivacyProtectRegistrantContact = ::Bool`
Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the registrant contact (domain owner).

Default: `true`


## `PrivacyProtectTechContact = ::Bool`
Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the technical contact.

Default: `true`




# Returns

`TransferDomainResponse`

# Exceptions

`InvalidInput`, `UnsupportedTLD`, `DuplicateRequest`, `TLDRulesViolation`, `DomainLimitExceeded` or `OperationLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/TransferDomain)
"""
@inline transfer_domain(aws::AWSConfig=default_aws_config(); args...) = transfer_domain(aws, args)

@inline transfer_domain(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "TransferDomain", args)

@inline transfer_domain(args) = transfer_domain(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.update_domain_contact
    update_domain_contact([::AWSConfig], arguments::Dict)
    update_domain_contact([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "UpdateDomainContact", arguments::Dict)
    route53domains([::AWSConfig], "UpdateDomainContact", DomainName=, <keyword arguments>)

# UpdateDomainContact Operation

This operation updates the contact information for a particular domain. You must specify information for at least one contact: registrant, administrator, or technical.

If the update is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to update contact information for.


## `AdminContact = [ ... ]`
Provides detailed contact information.
```
 AdminContact = [
        "FirstName" =>  ::String,
        "LastName" =>  ::String,
        "ContactType" =>  "PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY" or "RESELLER",
        "OrganizationName" =>  ::String,
        "AddressLine1" =>  ::String,
        "AddressLine2" =>  ::String,
        "City" =>  ::String,
        "State" =>  ::String,
        "CountryCode" =>  "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM" or "ZW",
        "ZipCode" =>  ::String,
        "PhoneNumber" =>  ::String,
        "Email" =>  ::String,
        "Fax" =>  ::String,
        "ExtraParams" =>  [[
            "Name" => <required> "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE" or "UK_COMPANY_NUMBER",
            "Value" => <required> ::String
        ], ...]
    ]
```

## `RegistrantContact = [ ... ]`
Provides detailed contact information.
```
 RegistrantContact = [
        "FirstName" =>  ::String,
        "LastName" =>  ::String,
        "ContactType" =>  "PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY" or "RESELLER",
        "OrganizationName" =>  ::String,
        "AddressLine1" =>  ::String,
        "AddressLine2" =>  ::String,
        "City" =>  ::String,
        "State" =>  ::String,
        "CountryCode" =>  "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM" or "ZW",
        "ZipCode" =>  ::String,
        "PhoneNumber" =>  ::String,
        "Email" =>  ::String,
        "Fax" =>  ::String,
        "ExtraParams" =>  [[
            "Name" => <required> "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE" or "UK_COMPANY_NUMBER",
            "Value" => <required> ::String
        ], ...]
    ]
```

## `TechContact = [ ... ]`
Provides detailed contact information.
```
 TechContact = [
        "FirstName" =>  ::String,
        "LastName" =>  ::String,
        "ContactType" =>  "PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY" or "RESELLER",
        "OrganizationName" =>  ::String,
        "AddressLine1" =>  ::String,
        "AddressLine2" =>  ::String,
        "City" =>  ::String,
        "State" =>  ::String,
        "CountryCode" =>  "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM" or "ZW",
        "ZipCode" =>  ::String,
        "PhoneNumber" =>  ::String,
        "Email" =>  ::String,
        "Fax" =>  ::String,
        "ExtraParams" =>  [[
            "Name" => <required> "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE" or "UK_COMPANY_NUMBER",
            "Value" => <required> ::String
        ], ...]
    ]
```



# Returns

`UpdateDomainContactResponse`

# Exceptions

`InvalidInput`, `DuplicateRequest`, `TLDRulesViolation`, `OperationLimitExceeded` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainContact)
"""
@inline update_domain_contact(aws::AWSConfig=default_aws_config(); args...) = update_domain_contact(aws, args)

@inline update_domain_contact(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "UpdateDomainContact", args)

@inline update_domain_contact(args) = update_domain_contact(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.update_domain_contact_privacy
    update_domain_contact_privacy([::AWSConfig], arguments::Dict)
    update_domain_contact_privacy([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "UpdateDomainContactPrivacy", arguments::Dict)
    route53domains([::AWSConfig], "UpdateDomainContactPrivacy", DomainName=, <keyword arguments>)

# UpdateDomainContactPrivacy Operation

This operation updates the specified domain contact's privacy setting. When privacy protection is enabled, contact information such as email address is replaced either with contact information for Amazon Registrar (for .com, .net, and .org domains) or with contact information for our registrar associate, Gandi.

This operation affects only the contact information for the specified contact type (registrant, administrator, or tech). If the request succeeds, Amazon Route 53 returns an operation ID that you can use with [GetOperationDetail](@ref) to track the progress and completion of the action. If the request doesn't complete successfully, the domain registrant will be notified by email.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to update the privacy setting for.


## `AdminPrivacy = ::Bool`
Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the admin contact.


## `RegistrantPrivacy = ::Bool`
Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the registrant contact (domain owner).


## `TechPrivacy = ::Bool`
Whether you want to conceal contact information from WHOIS queries. If you specify `true`, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify `false`, WHOIS queries return the information that you entered for the technical contact.




# Returns

`UpdateDomainContactPrivacyResponse`

# Exceptions

`InvalidInput`, `DuplicateRequest`, `TLDRulesViolation`, `OperationLimitExceeded` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainContactPrivacy)
"""
@inline update_domain_contact_privacy(aws::AWSConfig=default_aws_config(); args...) = update_domain_contact_privacy(aws, args)

@inline update_domain_contact_privacy(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "UpdateDomainContactPrivacy", args)

@inline update_domain_contact_privacy(args) = update_domain_contact_privacy(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.update_domain_nameservers
    update_domain_nameservers([::AWSConfig], arguments::Dict)
    update_domain_nameservers([::AWSConfig]; DomainName=, Nameservers=, <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "UpdateDomainNameservers", arguments::Dict)
    route53domains([::AWSConfig], "UpdateDomainNameservers", DomainName=, Nameservers=, <keyword arguments>)

# UpdateDomainNameservers Operation

This operation replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.

If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the domain that you want to change name servers for.


## `FIAuthKey = ::String`
The authorization key for .fi domains


## `Nameservers = [[ ... ], ...]` -- *Required*
A list of new name servers for the domain.
```
 Nameservers = [[
        "Name" => <required> ::String,
        "GlueIps" =>  [::String, ...]
    ], ...]
```



# Returns

`UpdateDomainNameserversResponse`

# Exceptions

`InvalidInput`, `DuplicateRequest`, `TLDRulesViolation`, `OperationLimitExceeded` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainNameservers)
"""
@inline update_domain_nameservers(aws::AWSConfig=default_aws_config(); args...) = update_domain_nameservers(aws, args)

@inline update_domain_nameservers(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "UpdateDomainNameservers", args)

@inline update_domain_nameservers(args) = update_domain_nameservers(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.update_tags_for_domain
    update_tags_for_domain([::AWSConfig], arguments::Dict)
    update_tags_for_domain([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "UpdateTagsForDomain", arguments::Dict)
    route53domains([::AWSConfig], "UpdateTagsForDomain", DomainName=, <keyword arguments>)

# UpdateTagsForDomain Operation

This operation adds or updates tags for a specified domain.

All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.

# Arguments

## `DomainName = ::String` -- *Required*
The domain for which you want to add or update tags.


## `TagsToUpdate = [[ ... ], ...]`
A list of the tag keys and values that you want to add or update. If you specify a key that already exists, the corresponding value will be replaced.
```
 TagsToUpdate = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`UpdateTagsForDomainResponse`

# Exceptions

`InvalidInput`, `OperationLimitExceeded` or `UnsupportedTLD`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateTagsForDomain)
"""
@inline update_tags_for_domain(aws::AWSConfig=default_aws_config(); args...) = update_tags_for_domain(aws, args)

@inline update_tags_for_domain(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "UpdateTagsForDomain", args)

@inline update_tags_for_domain(args) = update_tags_for_domain(default_aws_config(), args)


"""
    using AWSSDK.Route53Domains.view_billing
    view_billing([::AWSConfig], arguments::Dict)
    view_billing([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53domains
    route53domains([::AWSConfig], "ViewBilling", arguments::Dict)
    route53domains([::AWSConfig], "ViewBilling", <keyword arguments>)

# ViewBilling Operation

Returns all the domain-related billing records for the current AWS account for a specified period

# Arguments

## `Start = timestamp`
The beginning date and time for the time period for which you want a list of billing records. Specify the date and time in Coordinated Universal time (UTC).


## `End = timestamp`
The end date and time for the time period for which you want a list of billing records. Specify the date and time in Coordinated Universal time (UTC).


## `Marker = ::String`
For an initial request for a list of billing records, omit this element. If the number of billing records that are associated with the current AWS account during the specified period is greater than the value that you specified for `MaxItems`, you can use `Marker` to return additional billing records. Get the value of `NextPageMarker` from the previous response, and submit another request that includes the value of `NextPageMarker` in the `Marker` element.

Constraints: The marker must match the value of `NextPageMarker` that was returned in the previous response.


## `MaxItems = ::Int`
The number of billing records to be returned.

Default: 20




# Returns

`ViewBillingResponse`

# Exceptions

`InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ViewBilling)
"""
@inline view_billing(aws::AWSConfig=default_aws_config(); args...) = view_billing(aws, args)

@inline view_billing(aws::AWSConfig, args) = AWSCore.Services.route53domains(aws, "ViewBilling", args)

@inline view_billing(args) = view_billing(default_aws_config(), args)




end # module Route53Domains


#==============================================================================#
# End of file
#==============================================================================#
