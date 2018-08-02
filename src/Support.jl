#==============================================================================#
# Support.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/support-2013-04-15.normal.json
#==============================================================================#

__precompile__()

module Support

using AWSCore


"""
    using AWSSDK.Support.add_attachments_to_set
    add_attachments_to_set([::AWSConfig], arguments::Dict)
    add_attachments_to_set([::AWSConfig]; attachments=, <keyword arguments>)

    using AWSCore.Services.support
    support([::AWSConfig], "AddAttachmentsToSet", arguments::Dict)
    support([::AWSConfig], "AddAttachmentsToSet", attachments=, <keyword arguments>)

# AddAttachmentsToSet Operation

Adds one or more attachments to an attachment set. If an `attachmentSetId` is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an `attachmentSetId` is specified, the attachments are added to the specified set, if it exists.

An attachment set is a temporary container for attachments that are to be added to a case or case communication. The set is available for one hour after it is created; the `expiryTime` returned in the response indicates when the set expires. The maximum number of attachments in a set is 3, and the maximum size of any attachment in the set is 5 MB.

# Arguments

## `attachmentSetId = ::String`
The ID of the attachment set. If an `attachmentSetId` is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an `attachmentSetId` is specified, the attachments are added to the specified set, if it exists.


## `attachments = [[ ... ], ...]` -- *Required*
One or more attachments to add to the set. The limit is 3 attachments per set, and the size limit is 5 MB per attachment.
```
 attachments = [[
        "fileName" =>  ::String,
        "data" =>  blob
    ], ...]
```



# Returns

`AddAttachmentsToSetResponse`

# Exceptions

`InternalServerError`, `AttachmentSetIdNotFound`, `AttachmentSetExpired`, `AttachmentSetSizeLimitExceeded` or `AttachmentLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/AddAttachmentsToSet)
"""
@inline add_attachments_to_set(aws::AWSConfig=default_aws_config(); args...) = add_attachments_to_set(aws, args)

@inline add_attachments_to_set(aws::AWSConfig, args) = AWSCore.Services.support(aws, "AddAttachmentsToSet", args)

@inline add_attachments_to_set(args) = add_attachments_to_set(default_aws_config(), args)


"""
    using AWSSDK.Support.add_communication_to_case
    add_communication_to_case([::AWSConfig], arguments::Dict)
    add_communication_to_case([::AWSConfig]; communicationBody=, <keyword arguments>)

    using AWSCore.Services.support
    support([::AWSConfig], "AddCommunicationToCase", arguments::Dict)
    support([::AWSConfig], "AddCommunicationToCase", communicationBody=, <keyword arguments>)

# AddCommunicationToCase Operation

Adds additional customer communication to an AWS Support case. You use the `caseId` value to identify the case to add communication to. You can list a set of email addresses to copy on the communication using the `ccEmailAddresses` value. The `communicationBody` value contains the text of the communication.

The response indicates the success or failure of the request.

This operation implements a subset of the features of the AWS Support Center.

# Arguments

## `caseId = ::String`
The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-*12345678910-2013-c4c1d2bf33c5cf47*


## `communicationBody = ::String` -- *Required*
The body of an email communication to add to the support case.


## `ccEmailAddresses = [::String, ...]`
The email addresses in the CC line of an email to be added to the support case.


## `attachmentSetId = ::String`
The ID of a set of one or more attachments for the communication to add to the case. Create the set by calling [AddAttachmentsToSet](@ref)




# Returns

`AddCommunicationToCaseResponse`

# Exceptions

`InternalServerError`, `CaseIdNotFound`, `AttachmentSetIdNotFound` or `AttachmentSetExpired`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/AddCommunicationToCase)
"""
@inline add_communication_to_case(aws::AWSConfig=default_aws_config(); args...) = add_communication_to_case(aws, args)

@inline add_communication_to_case(aws::AWSConfig, args) = AWSCore.Services.support(aws, "AddCommunicationToCase", args)

@inline add_communication_to_case(args) = add_communication_to_case(default_aws_config(), args)


"""
    using AWSSDK.Support.create_case
    create_case([::AWSConfig], arguments::Dict)
    create_case([::AWSConfig]; subject=, communicationBody=, <keyword arguments>)

    using AWSCore.Services.support
    support([::AWSConfig], "CreateCase", arguments::Dict)
    support([::AWSConfig], "CreateCase", subject=, communicationBody=, <keyword arguments>)

# CreateCase Operation

Creates a new case in the AWS Support Center. This operation is modeled on the behavior of the AWS Support Center [Create Case](https://console.aws.amazon.com/support/home#/case/create) page. Its parameters require you to specify the following information:

*   **issueType.** The type of issue for the case. You can specify either "customer-service" or "technical." If you do not indicate a value, the default is "technical."

*   **serviceCode.** The code for an AWS service. You obtain the `serviceCode` by calling [DescribeServices](@ref).

*   **categoryCode.** The category for the service defined for the `serviceCode` value. You also obtain the category code for a service by calling [DescribeServices](@ref). Each AWS service defines its own set of category codes.

*   **severityCode.** A value that indicates the urgency of the case, which in turn determines the response time according to your service level agreement with AWS Support. You obtain the SeverityCode by calling [DescribeSeverityLevels](@ref).

*   **subject.** The **Subject** field on the AWS Support Center [Create Case](https://console.aws.amazon.com/support/home#/case/create) page.

*   **communicationBody.** The **Description** field on the AWS Support Center [Create Case](https://console.aws.amazon.com/support/home#/case/create) page.

*   **attachmentSetId.** The ID of a set of attachments that has been created by using [AddAttachmentsToSet](@ref).

*   **language.** The human language in which AWS Support handles the case. English and Japanese are currently supported.

*   **ccEmailAddresses.** The AWS Support Center **CC** field on the [Create Case](https://console.aws.amazon.com/support/home#/case/create) page. You can list email addresses to be copied on any correspondence about the case. The account that opens the case is already identified by passing the AWS Credentials in the HTTP POST method or in a method or function call from one of the programming languages supported by an [AWS SDK](http://aws.amazon.com/tools/).

**Note**
> To add additional communication or attachments to an existing case, use [AddCommunicationToCase](@ref).

A successful [CreateCase](@ref) request returns an AWS Support case number. Case numbers are used by the [DescribeCases](@ref) operation to retrieve existing AWS Support cases.

# Arguments

## `subject = ::String` -- *Required*
The title of the AWS Support case.


## `serviceCode = ::String`
The code for the AWS service returned by the call to [DescribeServices](@ref).


## `severityCode = ::String`
The code for the severity level returned by the call to [DescribeSeverityLevels](@ref).

**Note**
> The availability of severity levels depends on each customer's support subscription. In other words, your subscription may not necessarily require the urgent level of response time.


## `categoryCode = ::String`
The category of problem for the AWS Support case.


## `communicationBody = ::String` -- *Required*
The communication body text when you create an AWS Support case by calling [CreateCase](@ref).


## `ccEmailAddresses = [::String, ...]`
A list of email addresses that AWS Support copies on case correspondence.


## `language = ::String`
The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.


## `issueType = ::String`
The type of issue for the case. You can specify either "customer-service" or "technical." If you do not indicate a value, the default is "technical."


## `attachmentSetId = ::String`
The ID of a set of one or more attachments for the case. Create the set by using [AddAttachmentsToSet](@ref).




# Returns

`CreateCaseResponse`

# Exceptions

`InternalServerError`, `CaseCreationLimitExceeded`, `AttachmentSetIdNotFound` or `AttachmentSetExpired`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/CreateCase)
"""
@inline create_case(aws::AWSConfig=default_aws_config(); args...) = create_case(aws, args)

@inline create_case(aws::AWSConfig, args) = AWSCore.Services.support(aws, "CreateCase", args)

@inline create_case(args) = create_case(default_aws_config(), args)


"""
    using AWSSDK.Support.describe_attachment
    describe_attachment([::AWSConfig], arguments::Dict)
    describe_attachment([::AWSConfig]; attachmentId=)

    using AWSCore.Services.support
    support([::AWSConfig], "DescribeAttachment", arguments::Dict)
    support([::AWSConfig], "DescribeAttachment", attachmentId=)

# DescribeAttachment Operation

Returns the attachment that has the specified ID. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the [AttachmentDetails](@ref) objects that are returned by the [DescribeCommunications](@ref) operation.

# Arguments

## `attachmentId = ::String` -- *Required*
The ID of the attachment to return. Attachment IDs are returned by the [DescribeCommunications](@ref) operation.




# Returns

`DescribeAttachmentResponse`

# Exceptions

`InternalServerError`, `DescribeAttachmentLimitExceeded` or `AttachmentIdNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeAttachment)
"""
@inline describe_attachment(aws::AWSConfig=default_aws_config(); args...) = describe_attachment(aws, args)

@inline describe_attachment(aws::AWSConfig, args) = AWSCore.Services.support(aws, "DescribeAttachment", args)

@inline describe_attachment(args) = describe_attachment(default_aws_config(), args)


"""
    using AWSSDK.Support.describe_cases
    describe_cases([::AWSConfig], arguments::Dict)
    describe_cases([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.support
    support([::AWSConfig], "DescribeCases", arguments::Dict)
    support([::AWSConfig], "DescribeCases", <keyword arguments>)

# DescribeCases Operation

Returns a list of cases that you specify by passing one or more case IDs. In addition, you can filter the cases by date by setting values for the `afterTime` and `beforeTime` request parameters. You can set values for the `includeResolvedCases` and `includeCommunications` request parameters to control how much information is returned.

Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error.

The response returns the following in JSON format:

*   One or more [CaseDetails](@ref) data types.

*   One or more `nextToken` values, which specify where to paginate the returned records represented by the `CaseDetails` objects.

# Arguments

## `caseIdList = [::String, ...]`
A list of ID numbers of the support cases you want returned. The maximum number of cases is 100.


## `displayId = ::String`
The ID displayed for a case in the AWS Support Center user interface.


## `afterTime = ::String`
The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.


## `beforeTime = ::String`
The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.


## `includeResolvedCases = ::Bool`
Specifies whether resolved support cases should be included in the [DescribeCases](@ref) results. The default is *false*.


## `nextToken = ::String`
A resumption point for pagination.


## `maxResults = ::Int`
The maximum number of results to return before paginating.


## `language = ::String`
The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.


## `includeCommunications = ::Bool`
Specifies whether communications should be included in the [DescribeCases](@ref) results. The default is *true*.




# Returns

`DescribeCasesResponse`

# Exceptions

`InternalServerError` or `CaseIdNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeCases)
"""
@inline describe_cases(aws::AWSConfig=default_aws_config(); args...) = describe_cases(aws, args)

@inline describe_cases(aws::AWSConfig, args) = AWSCore.Services.support(aws, "DescribeCases", args)

@inline describe_cases(args) = describe_cases(default_aws_config(), args)


"""
    using AWSSDK.Support.describe_communications
    describe_communications([::AWSConfig], arguments::Dict)
    describe_communications([::AWSConfig]; caseId=, <keyword arguments>)

    using AWSCore.Services.support
    support([::AWSConfig], "DescribeCommunications", arguments::Dict)
    support([::AWSConfig], "DescribeCommunications", caseId=, <keyword arguments>)

# DescribeCommunications Operation

Returns communications (and attachments) for one or more support cases. You can use the `afterTime` and `beforeTime` parameters to filter by date. You can use the `caseId` parameter to restrict the results to a particular case.

Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error.

You can use the `maxResults` and `nextToken` parameters to control the pagination of the result set. Set `maxResults` to the number of cases you want displayed on each page, and use `nextToken` to specify the resumption of pagination.

# Arguments

## `caseId = ::String` -- *Required*
The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-*12345678910-2013-c4c1d2bf33c5cf47*


## `beforeTime = ::String`
The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.


## `afterTime = ::String`
The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.


## `nextToken = ::String`
A resumption point for pagination.


## `maxResults = ::Int`
The maximum number of results to return before paginating.




# Returns

`DescribeCommunicationsResponse`

# Exceptions

`InternalServerError` or `CaseIdNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeCommunications)
"""
@inline describe_communications(aws::AWSConfig=default_aws_config(); args...) = describe_communications(aws, args)

@inline describe_communications(aws::AWSConfig, args) = AWSCore.Services.support(aws, "DescribeCommunications", args)

@inline describe_communications(args) = describe_communications(default_aws_config(), args)


"""
    using AWSSDK.Support.describe_services
    describe_services([::AWSConfig], arguments::Dict)
    describe_services([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.support
    support([::AWSConfig], "DescribeServices", arguments::Dict)
    support([::AWSConfig], "DescribeServices", <keyword arguments>)

# DescribeServices Operation

Returns the current list of AWS services and a list of service categories that applies to each one. You then use service names and categories in your [CreateCase](@ref) requests. Each AWS service has its own set of categories.

The service codes and category codes correspond to the values that are displayed in the **Service** and **Category** drop-down lists on the AWS Support Center [Create Case](https://console.aws.amazon.com/support/home#/case/create) page. The values in those fields, however, do not necessarily match the service codes and categories returned by the `DescribeServices` request. Always use the service codes and categories obtained programmatically. This practice ensures that you always have the most recent set of service and category codes.

# Arguments

## `serviceCodeList = [::String, ...]`
A JSON-formatted list of service codes available for AWS services.


## `language = ::String`
The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.




# Returns

`DescribeServicesResponse`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeServices)
"""
@inline describe_services(aws::AWSConfig=default_aws_config(); args...) = describe_services(aws, args)

@inline describe_services(aws::AWSConfig, args) = AWSCore.Services.support(aws, "DescribeServices", args)

@inline describe_services(args) = describe_services(default_aws_config(), args)


"""
    using AWSSDK.Support.describe_severity_levels
    describe_severity_levels([::AWSConfig], arguments::Dict)
    describe_severity_levels([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.support
    support([::AWSConfig], "DescribeSeverityLevels", arguments::Dict)
    support([::AWSConfig], "DescribeSeverityLevels", <keyword arguments>)

# DescribeSeverityLevels Operation

Returns the list of severity levels that you can assign to an AWS Support case. The severity level for a case is also a field in the [CaseDetails](@ref) data type included in any [CreateCase](@ref) request.

# Arguments

## `language = ::String`
The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.




# Returns

`DescribeSeverityLevelsResponse`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeSeverityLevels)
"""
@inline describe_severity_levels(aws::AWSConfig=default_aws_config(); args...) = describe_severity_levels(aws, args)

@inline describe_severity_levels(aws::AWSConfig, args) = AWSCore.Services.support(aws, "DescribeSeverityLevels", args)

@inline describe_severity_levels(args) = describe_severity_levels(default_aws_config(), args)


"""
    using AWSSDK.Support.describe_trusted_advisor_check_refresh_statuses
    describe_trusted_advisor_check_refresh_statuses([::AWSConfig], arguments::Dict)
    describe_trusted_advisor_check_refresh_statuses([::AWSConfig]; checkIds=)

    using AWSCore.Services.support
    support([::AWSConfig], "DescribeTrustedAdvisorCheckRefreshStatuses", arguments::Dict)
    support([::AWSConfig], "DescribeTrustedAdvisorCheckRefreshStatuses", checkIds=)

# DescribeTrustedAdvisorCheckRefreshStatuses Operation

Returns the refresh status of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling [DescribeTrustedAdvisorChecks](@ref).

**Note**
> Some checks are refreshed automatically, and their refresh statuses cannot be retrieved by using this operation. Use of the `DescribeTrustedAdvisorCheckRefreshStatuses` operation for these checks causes an `InvalidParameterValue` error.

# Arguments

## `checkIds = [::String, ...]` -- *Required*
The IDs of the Trusted Advisor checks to get the status of. **Note:** Specifying the check ID of a check that is automatically refreshed causes an `InvalidParameterValue` error.




# Returns

`DescribeTrustedAdvisorCheckRefreshStatusesResponse`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorCheckRefreshStatuses)
"""
@inline describe_trusted_advisor_check_refresh_statuses(aws::AWSConfig=default_aws_config(); args...) = describe_trusted_advisor_check_refresh_statuses(aws, args)

@inline describe_trusted_advisor_check_refresh_statuses(aws::AWSConfig, args) = AWSCore.Services.support(aws, "DescribeTrustedAdvisorCheckRefreshStatuses", args)

@inline describe_trusted_advisor_check_refresh_statuses(args) = describe_trusted_advisor_check_refresh_statuses(default_aws_config(), args)


"""
    using AWSSDK.Support.describe_trusted_advisor_check_result
    describe_trusted_advisor_check_result([::AWSConfig], arguments::Dict)
    describe_trusted_advisor_check_result([::AWSConfig]; checkId=, <keyword arguments>)

    using AWSCore.Services.support
    support([::AWSConfig], "DescribeTrustedAdvisorCheckResult", arguments::Dict)
    support([::AWSConfig], "DescribeTrustedAdvisorCheckResult", checkId=, <keyword arguments>)

# DescribeTrustedAdvisorCheckResult Operation

Returns the results of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling [DescribeTrustedAdvisorChecks](@ref).

The response contains a [TrustedAdvisorCheckResult](@ref) object, which contains these three objects:

*   [TrustedAdvisorCategorySpecificSummary](@ref)

*   [TrustedAdvisorResourceDetail](@ref)

*   [TrustedAdvisorResourcesSummary](@ref)

In addition, the response contains these fields:

*   **status.** The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".

*   **timestamp.** The time of the last refresh of the check.

*   **checkId.** The unique identifier for the check.

# Arguments

## `checkId = ::String` -- *Required*
The unique identifier for the Trusted Advisor check.


## `language = ::String`
The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.




# Returns

`DescribeTrustedAdvisorCheckResultResponse`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorCheckResult)
"""
@inline describe_trusted_advisor_check_result(aws::AWSConfig=default_aws_config(); args...) = describe_trusted_advisor_check_result(aws, args)

@inline describe_trusted_advisor_check_result(aws::AWSConfig, args) = AWSCore.Services.support(aws, "DescribeTrustedAdvisorCheckResult", args)

@inline describe_trusted_advisor_check_result(args) = describe_trusted_advisor_check_result(default_aws_config(), args)


"""
    using AWSSDK.Support.describe_trusted_advisor_check_summaries
    describe_trusted_advisor_check_summaries([::AWSConfig], arguments::Dict)
    describe_trusted_advisor_check_summaries([::AWSConfig]; checkIds=)

    using AWSCore.Services.support
    support([::AWSConfig], "DescribeTrustedAdvisorCheckSummaries", arguments::Dict)
    support([::AWSConfig], "DescribeTrustedAdvisorCheckSummaries", checkIds=)

# DescribeTrustedAdvisorCheckSummaries Operation

Returns the summaries of the results of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling [DescribeTrustedAdvisorChecks](@ref).

The response contains an array of [TrustedAdvisorCheckSummary](@ref) objects.

# Arguments

## `checkIds = [::String, ...]` -- *Required*
The IDs of the Trusted Advisor checks.




# Returns

`DescribeTrustedAdvisorCheckSummariesResponse`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorCheckSummaries)
"""
@inline describe_trusted_advisor_check_summaries(aws::AWSConfig=default_aws_config(); args...) = describe_trusted_advisor_check_summaries(aws, args)

@inline describe_trusted_advisor_check_summaries(aws::AWSConfig, args) = AWSCore.Services.support(aws, "DescribeTrustedAdvisorCheckSummaries", args)

@inline describe_trusted_advisor_check_summaries(args) = describe_trusted_advisor_check_summaries(default_aws_config(), args)


"""
    using AWSSDK.Support.describe_trusted_advisor_checks
    describe_trusted_advisor_checks([::AWSConfig], arguments::Dict)
    describe_trusted_advisor_checks([::AWSConfig]; language=)

    using AWSCore.Services.support
    support([::AWSConfig], "DescribeTrustedAdvisorChecks", arguments::Dict)
    support([::AWSConfig], "DescribeTrustedAdvisorChecks", language=)

# DescribeTrustedAdvisorChecks Operation

Returns information about all available Trusted Advisor checks, including name, ID, category, description, and metadata. You must specify a language code; English ("en") and Japanese ("ja") are currently supported. The response contains a [TrustedAdvisorCheckDescription](@ref) for each check.

# Arguments

## `language = ::String` -- *Required*
The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.




# Returns

`DescribeTrustedAdvisorChecksResponse`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/DescribeTrustedAdvisorChecks)
"""
@inline describe_trusted_advisor_checks(aws::AWSConfig=default_aws_config(); args...) = describe_trusted_advisor_checks(aws, args)

@inline describe_trusted_advisor_checks(aws::AWSConfig, args) = AWSCore.Services.support(aws, "DescribeTrustedAdvisorChecks", args)

@inline describe_trusted_advisor_checks(args) = describe_trusted_advisor_checks(default_aws_config(), args)


"""
    using AWSSDK.Support.refresh_trusted_advisor_check
    refresh_trusted_advisor_check([::AWSConfig], arguments::Dict)
    refresh_trusted_advisor_check([::AWSConfig]; checkId=)

    using AWSCore.Services.support
    support([::AWSConfig], "RefreshTrustedAdvisorCheck", arguments::Dict)
    support([::AWSConfig], "RefreshTrustedAdvisorCheck", checkId=)

# RefreshTrustedAdvisorCheck Operation

Requests a refresh of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling [DescribeTrustedAdvisorChecks](@ref).

**Note**
> Some checks are refreshed automatically, and they cannot be refreshed by using this operation. Use of the `RefreshTrustedAdvisorCheck` operation for these checks causes an `InvalidParameterValue` error.

The response contains a [TrustedAdvisorCheckRefreshStatus](@ref) object, which contains these fields:

*   **status.** The refresh status of the check: "none", "enqueued", "processing", "success", or "abandoned".

*   **millisUntilNextRefreshable.** The amount of time, in milliseconds, until the check is eligible for refresh.

*   **checkId.** The unique identifier for the check.

# Arguments

## `checkId = ::String` -- *Required*
The unique identifier for the Trusted Advisor check to refresh. **Note:** Specifying the check ID of a check that is automatically refreshed causes an `InvalidParameterValue` error.




# Returns

`RefreshTrustedAdvisorCheckResponse`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/RefreshTrustedAdvisorCheck)
"""
@inline refresh_trusted_advisor_check(aws::AWSConfig=default_aws_config(); args...) = refresh_trusted_advisor_check(aws, args)

@inline refresh_trusted_advisor_check(aws::AWSConfig, args) = AWSCore.Services.support(aws, "RefreshTrustedAdvisorCheck", args)

@inline refresh_trusted_advisor_check(args) = refresh_trusted_advisor_check(default_aws_config(), args)


"""
    using AWSSDK.Support.resolve_case
    resolve_case([::AWSConfig], arguments::Dict)
    resolve_case([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.support
    support([::AWSConfig], "ResolveCase", arguments::Dict)
    support([::AWSConfig], "ResolveCase", <keyword arguments>)

# ResolveCase Operation

Takes a `caseId` and returns the initial state of the case along with the state of the case after the call to [ResolveCase](@ref) completed.

# Arguments

## `caseId = ::String`
The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-*12345678910-2013-c4c1d2bf33c5cf47*




# Returns

`ResolveCaseResponse`

# Exceptions

`InternalServerError` or `CaseIdNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/support-2013-04-15/ResolveCase)
"""
@inline resolve_case(aws::AWSConfig=default_aws_config(); args...) = resolve_case(aws, args)

@inline resolve_case(aws::AWSConfig, args) = AWSCore.Services.support(aws, "ResolveCase", args)

@inline resolve_case(args) = resolve_case(default_aws_config(), args)




end # module Support


#==============================================================================#
# End of file
#==============================================================================#
