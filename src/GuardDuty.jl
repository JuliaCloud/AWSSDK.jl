#==============================================================================#
# GuardDuty.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/guardduty-2017-11-28.normal.json
#==============================================================================#

__precompile__()

module GuardDuty

using AWSCore


"""
    using AWSSDK.GuardDuty.accept_invitation
    accept_invitation([::AWSConfig], arguments::Dict)
    accept_invitation([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/master", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/master", detectorId=, <keyword arguments>)

# AcceptInvitation Operation

Accepts the invitation to be monitored by a master GuardDuty account.

# Arguments

## `detectorId = ::String` -- *Required*
The unique ID of the detector of the GuardDuty member account.


## `invitationId = ::String`
This value is used to validate the master account to the member account.


## `masterId = ::String`
The account ID of the master GuardDuty account whose invitation you're accepting.




# Returns

`AcceptInvitationResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AcceptInvitation)
"""
@inline accept_invitation(aws::AWSConfig=default_aws_config(); args...) = accept_invitation(aws, args)

@inline accept_invitation(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/master", args)

@inline accept_invitation(args) = accept_invitation(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.archive_findings
    archive_findings([::AWSConfig], arguments::Dict)
    archive_findings([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings/archive", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings/archive", detectorId=, <keyword arguments>)

# ArchiveFindings Operation

Archives Amazon GuardDuty findings specified by the list of finding IDs.

# Arguments

## `detectorId = ::String` -- *Required*
The ID of the detector that specifies the GuardDuty service whose findings you want to archive.


## `findingIds = [::String, ...]`
IDs of the findings that you want to archive.




# Returns

`ArchiveFindingsResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ArchiveFindings)
"""
@inline archive_findings(aws::AWSConfig=default_aws_config(); args...) = archive_findings(aws, args)

@inline archive_findings(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/findings/archive", args)

@inline archive_findings(args) = archive_findings(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.create_detector
    create_detector([::AWSConfig], arguments::Dict)
    create_detector([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector", <keyword arguments>)

# CreateDetector Operation

Creates a single Amazon GuardDuty detector. A detector is an object that represents the GuardDuty service. A detector must be created in order for GuardDuty to become operational.

# Arguments

## `enable = ::Bool`
A boolean value that specifies whether the detector is to be enabled.




# Returns

`CreateDetectorResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateDetector)
"""
@inline create_detector(aws::AWSConfig=default_aws_config(); args...) = create_detector(aws, args)

@inline create_detector(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector", args)

@inline create_detector(args) = create_detector(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.create_filter
    create_filter([::AWSConfig], arguments::Dict)
    create_filter([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/filter", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/filter", detectorId=, <keyword arguments>)

# CreateFilter Operation

Creates a filter using the specified finding criteria.

# Arguments

## `action = "NOOP" or "ARCHIVE"`
Specifies the action that is to be applied to the findings that match the filter.


## `clientToken = ::String`
The idempotency token for the create request.


## `description = ::String`
The description of the filter.


## `detectorId = ::String` -- *Required*
The unique ID of the detector that you want to update.


## `findingCriteria = ["criterion" =>  ::Dict{String,String}]`
Represents the criteria to be used in the filter for querying findings.


## `name = ::String`
The name of the filter.


## `rank = ::Int`
Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.




# Returns

`CreateFilterResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateFilter)
"""
@inline create_filter(aws::AWSConfig=default_aws_config(); args...) = create_filter(aws, args)

@inline create_filter(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/filter", args)

@inline create_filter(args) = create_filter(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.create_ipset
    create_ipset([::AWSConfig], arguments::Dict)
    create_ipset([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/ipset", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/ipset", detectorId=, <keyword arguments>)

# CreateIPSet Operation

Creates a new IPSet - a list of trusted IP addresses that have been whitelisted for secure communication with AWS infrastructure and applications.

# Arguments

## `activate = ::Bool`
A boolean value that indicates whether GuardDuty is to start using the uploaded IPSet.


## `detectorId = ::String` -- *Required*
The unique ID of the detector that you want to update.


## `format = "TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT" or "FIRE_EYE"`
The format of the file that contains the IPSet.


## `location = ::String`
The URI of the file that contains the IPSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)


## `name = ::String`
The user friendly name to identify the IPSet. This name is displayed in all findings that are triggered by activity that involves IP addresses included in this IPSet.




# Returns

`CreateIPSetResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateIPSet)
"""
@inline create_ipset(aws::AWSConfig=default_aws_config(); args...) = create_ipset(aws, args)

@inline create_ipset(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/ipset", args)

@inline create_ipset(args) = create_ipset(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.create_members
    create_members([::AWSConfig], arguments::Dict)
    create_members([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member", detectorId=, <keyword arguments>)

# CreateMembers Operation

Creates member accounts of the current AWS account by specifying a list of AWS account IDs. The current AWS account can then invite these members to manage GuardDuty in their accounts.

# Arguments

## `accountDetails = [[ ... ], ...]`
A list of account ID and email address pairs of the accounts that you want to associate with the master GuardDuty account.
```
 accountDetails = [[
        "accountId" => <required> ::String,
        "email" => <required> ::String
    ], ...]
```

## `detectorId = ::String` -- *Required*
The unique ID of the detector of the GuardDuty account with which you want to associate member accounts.




# Returns

`CreateMembersResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateMembers)
"""
@inline create_members(aws::AWSConfig=default_aws_config(); args...) = create_members(aws, args)

@inline create_members(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/member", args)

@inline create_members(args) = create_members(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.create_sample_findings
    create_sample_findings([::AWSConfig], arguments::Dict)
    create_sample_findings([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings/create", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings/create", detectorId=, <keyword arguments>)

# CreateSampleFindings Operation

Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.

# Arguments

## `detectorId = ::String` -- *Required*
The ID of the detector to create sample findings for.


## `findingTypes = [::String, ...]`
Types of sample findings that you want to generate.




# Returns

`CreateSampleFindingsResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateSampleFindings)
"""
@inline create_sample_findings(aws::AWSConfig=default_aws_config(); args...) = create_sample_findings(aws, args)

@inline create_sample_findings(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/findings/create", args)

@inline create_sample_findings(args) = create_sample_findings(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.create_threat_intel_set
    create_threat_intel_set([::AWSConfig], arguments::Dict)
    create_threat_intel_set([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/threatintelset", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/threatintelset", detectorId=, <keyword arguments>)

# CreateThreatIntelSet Operation

Create a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets.

# Arguments

## `activate = ::Bool`
A boolean value that indicates whether GuardDuty is to start using the uploaded ThreatIntelSet.


## `detectorId = ::String` -- *Required*
The unique ID of the detector that you want to update.


## `format = "TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT" or "FIRE_EYE"`
The format of the file that contains the ThreatIntelSet.


## `location = ::String`
The URI of the file that contains the ThreatIntelSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).


## `name = ::String`
A user-friendly ThreatIntelSet name that is displayed in all finding generated by activity that involves IP addresses included in this ThreatIntelSet.




# Returns

`CreateThreatIntelSetResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateThreatIntelSet)
"""
@inline create_threat_intel_set(aws::AWSConfig=default_aws_config(); args...) = create_threat_intel_set(aws, args)

@inline create_threat_intel_set(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/threatintelset", args)

@inline create_threat_intel_set(args) = create_threat_intel_set(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.decline_invitations
    decline_invitations([::AWSConfig], arguments::Dict)
    decline_invitations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/invitation/decline", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/invitation/decline", <keyword arguments>)

# DeclineInvitations Operation

Declines invitations sent to the current member account by AWS account specified by their account IDs.

# Arguments

## `accountIds = [::String, ...]`
A list of account IDs of the AWS accounts that sent invitations to the current member account that you want to decline invitations from.




# Returns

`DeclineInvitationsResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeclineInvitations)
"""
@inline decline_invitations(aws::AWSConfig=default_aws_config(); args...) = decline_invitations(aws, args)

@inline decline_invitations(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/invitation/decline", args)

@inline decline_invitations(args) = decline_invitations(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.delete_detector
    delete_detector([::AWSConfig], arguments::Dict)
    delete_detector([::AWSConfig]; detectorId=)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "DELETE", "/detector/{detectorId}", arguments::Dict)
    guardduty([::AWSConfig], "DELETE", "/detector/{detectorId}", detectorId=)

# DeleteDetector Operation

Deletes a Amazon GuardDuty detector specified by the detector ID.

# Arguments

## `detectorId = ::String` -- *Required*
The unique ID that specifies the detector that you want to delete.




# Returns

`DeleteDetectorResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteDetector)
"""
@inline delete_detector(aws::AWSConfig=default_aws_config(); args...) = delete_detector(aws, args)

@inline delete_detector(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "DELETE", "/detector/{detectorId}", args)

@inline delete_detector(args) = delete_detector(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.delete_filter
    delete_filter([::AWSConfig], arguments::Dict)
    delete_filter([::AWSConfig]; detectorId=, filterName=)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "DELETE", "/detector/{detectorId}/filter/{filterName}", arguments::Dict)
    guardduty([::AWSConfig], "DELETE", "/detector/{detectorId}/filter/{filterName}", detectorId=, filterName=)

# DeleteFilter Operation

Deletes the filter specified by the filter name.

# Arguments

## `detectorId = ::String` -- *Required*
The unique ID that specifies the detector where you want to delete a filter.


## `filterName = ::String` -- *Required*
The name of the filter.




# Returns

`DeleteFilterResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteFilter)
"""
@inline delete_filter(aws::AWSConfig=default_aws_config(); args...) = delete_filter(aws, args)

@inline delete_filter(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "DELETE", "/detector/{detectorId}/filter/{filterName}", args)

@inline delete_filter(args) = delete_filter(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.delete_ipset
    delete_ipset([::AWSConfig], arguments::Dict)
    delete_ipset([::AWSConfig]; detectorId=, ipSetId=)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "DELETE", "/detector/{detectorId}/ipset/{ipSetId}", arguments::Dict)
    guardduty([::AWSConfig], "DELETE", "/detector/{detectorId}/ipset/{ipSetId}", detectorId=, ipSetId=)

# DeleteIPSet Operation

Deletes the IPSet specified by the IPSet ID.

# Arguments

## `detectorId = ::String` -- *Required*
The detectorID that specifies the GuardDuty service whose IPSet you want to delete.


## `ipSetId = ::String` -- *Required*
The unique ID that specifies the IPSet that you want to delete.




# Returns

`DeleteIPSetResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteIPSet)
"""
@inline delete_ipset(aws::AWSConfig=default_aws_config(); args...) = delete_ipset(aws, args)

@inline delete_ipset(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "DELETE", "/detector/{detectorId}/ipset/{ipSetId}", args)

@inline delete_ipset(args) = delete_ipset(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.delete_invitations
    delete_invitations([::AWSConfig], arguments::Dict)
    delete_invitations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/invitation/delete", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/invitation/delete", <keyword arguments>)

# DeleteInvitations Operation

Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.

# Arguments

## `accountIds = [::String, ...]`
A list of account IDs of the AWS accounts that sent invitations to the current member account that you want to delete invitations from.




# Returns

`DeleteInvitationsResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteInvitations)
"""
@inline delete_invitations(aws::AWSConfig=default_aws_config(); args...) = delete_invitations(aws, args)

@inline delete_invitations(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/invitation/delete", args)

@inline delete_invitations(args) = delete_invitations(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.delete_members
    delete_members([::AWSConfig], arguments::Dict)
    delete_members([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member/delete", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member/delete", detectorId=, <keyword arguments>)

# DeleteMembers Operation

Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.

# Arguments

## `accountIds = [::String, ...]`
A list of account IDs of the GuardDuty member accounts that you want to delete.


## `detectorId = ::String` -- *Required*
The unique ID of the detector of the GuardDuty account whose members you want to delete.




# Returns

`DeleteMembersResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteMembers)
"""
@inline delete_members(aws::AWSConfig=default_aws_config(); args...) = delete_members(aws, args)

@inline delete_members(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/member/delete", args)

@inline delete_members(args) = delete_members(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.delete_threat_intel_set
    delete_threat_intel_set([::AWSConfig], arguments::Dict)
    delete_threat_intel_set([::AWSConfig]; detectorId=, threatIntelSetId=)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "DELETE", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", arguments::Dict)
    guardduty([::AWSConfig], "DELETE", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", detectorId=, threatIntelSetId=)

# DeleteThreatIntelSet Operation

Deletes ThreatIntelSet specified by the ThreatIntelSet ID.

# Arguments

## `detectorId = ::String` -- *Required*
The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to delete.


## `threatIntelSetId = ::String` -- *Required*
The unique ID that specifies the ThreatIntelSet that you want to delete.




# Returns

`DeleteThreatIntelSetResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteThreatIntelSet)
"""
@inline delete_threat_intel_set(aws::AWSConfig=default_aws_config(); args...) = delete_threat_intel_set(aws, args)

@inline delete_threat_intel_set(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "DELETE", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", args)

@inline delete_threat_intel_set(args) = delete_threat_intel_set(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.disassociate_from_master_account
    disassociate_from_master_account([::AWSConfig], arguments::Dict)
    disassociate_from_master_account([::AWSConfig]; detectorId=)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/master/disassociate", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/master/disassociate", detectorId=)

# DisassociateFromMasterAccount Operation

Disassociates the current GuardDuty member account from its master account.

# Arguments

## `detectorId = ::String` -- *Required*
The unique ID of the detector of the GuardDuty member account.




# Returns

`DisassociateFromMasterAccountResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateFromMasterAccount)
"""
@inline disassociate_from_master_account(aws::AWSConfig=default_aws_config(); args...) = disassociate_from_master_account(aws, args)

@inline disassociate_from_master_account(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/master/disassociate", args)

@inline disassociate_from_master_account(args) = disassociate_from_master_account(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.disassociate_members
    disassociate_members([::AWSConfig], arguments::Dict)
    disassociate_members([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member/disassociate", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member/disassociate", detectorId=, <keyword arguments>)

# DisassociateMembers Operation

Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.

# Arguments

## `accountIds = [::String, ...]`
A list of account IDs of the GuardDuty member accounts that you want to disassociate from master.


## `detectorId = ::String` -- *Required*
The unique ID of the detector of the GuardDuty account whose members you want to disassociate from master.




# Returns

`DisassociateMembersResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateMembers)
"""
@inline disassociate_members(aws::AWSConfig=default_aws_config(); args...) = disassociate_members(aws, args)

@inline disassociate_members(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/member/disassociate", args)

@inline disassociate_members(args) = disassociate_members(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.get_detector
    get_detector([::AWSConfig], arguments::Dict)
    get_detector([::AWSConfig]; detectorId=)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}", arguments::Dict)
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}", detectorId=)

# GetDetector Operation

Retrieves an Amazon GuardDuty detector specified by the detectorId.

# Arguments

## `detectorId = ::String` -- *Required*
The unique ID of the detector that you want to retrieve.




# Returns

`GetDetectorResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetDetector)
"""
@inline get_detector(aws::AWSConfig=default_aws_config(); args...) = get_detector(aws, args)

@inline get_detector(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "GET", "/detector/{detectorId}", args)

@inline get_detector(args) = get_detector(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.get_filter
    get_filter([::AWSConfig], arguments::Dict)
    get_filter([::AWSConfig]; detectorId=, filterName=)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/filter/{filterName}", arguments::Dict)
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/filter/{filterName}", detectorId=, filterName=)

# GetFilter Operation

Returns the details of the filter specified by the filter name.

# Arguments

## `detectorId = ::String` -- *Required*
The detector ID that specifies the GuardDuty service where you want to list the details of the specified filter.


## `filterName = ::String` -- *Required*
The name of the filter whose details you want to get.




# Returns

`GetFilterResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFilter)
"""
@inline get_filter(aws::AWSConfig=default_aws_config(); args...) = get_filter(aws, args)

@inline get_filter(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "GET", "/detector/{detectorId}/filter/{filterName}", args)

@inline get_filter(args) = get_filter(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.get_findings
    get_findings([::AWSConfig], arguments::Dict)
    get_findings([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings/get", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings/get", detectorId=, <keyword arguments>)

# GetFindings Operation

Describes Amazon GuardDuty findings specified by finding IDs.

# Arguments

## `detectorId = ::String` -- *Required*
The ID of the detector that specifies the GuardDuty service whose findings you want to retrieve.


## `findingIds = [::String, ...]`
IDs of the findings that you want to retrieve.


## `sortCriteria = [ ... ]`
Represents the criteria used for sorting findings.
```
 sortCriteria = [
        "attributeName" =>  ::String,
        "orderBy" =>  "ASC" or "DESC"
    ]
```



# Returns

`GetFindingsResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindings)
"""
@inline get_findings(aws::AWSConfig=default_aws_config(); args...) = get_findings(aws, args)

@inline get_findings(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/findings/get", args)

@inline get_findings(args) = get_findings(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.get_findings_statistics
    get_findings_statistics([::AWSConfig], arguments::Dict)
    get_findings_statistics([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings/statistics", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings/statistics", detectorId=, <keyword arguments>)

# GetFindingsStatistics Operation

Lists Amazon GuardDuty findings' statistics for the specified detector ID.

# Arguments

## `detectorId = ::String` -- *Required*
The ID of the detector that specifies the GuardDuty service whose findings' statistics you want to retrieve.


## `findingCriteria = ["criterion" =>  ::Dict{String,String}]`
Represents the criteria used for querying findings.


## `findingStatisticTypes = ["COUNT_BY_SEVERITY", ...]`
Types of finding statistics to retrieve.




# Returns

`GetFindingsStatisticsResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindingsStatistics)
"""
@inline get_findings_statistics(aws::AWSConfig=default_aws_config(); args...) = get_findings_statistics(aws, args)

@inline get_findings_statistics(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/findings/statistics", args)

@inline get_findings_statistics(args) = get_findings_statistics(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.get_ipset
    get_ipset([::AWSConfig], arguments::Dict)
    get_ipset([::AWSConfig]; detectorId=, ipSetId=)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/ipset/{ipSetId}", arguments::Dict)
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/ipset/{ipSetId}", detectorId=, ipSetId=)

# GetIPSet Operation

Retrieves the IPSet specified by the IPSet ID.

# Arguments

## `detectorId = ::String` -- *Required*
The detectorID that specifies the GuardDuty service whose IPSet you want to retrieve.


## `ipSetId = ::String` -- *Required*
The unique ID that specifies the IPSet that you want to describe.




# Returns

`GetIPSetResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetIPSet)
"""
@inline get_ipset(aws::AWSConfig=default_aws_config(); args...) = get_ipset(aws, args)

@inline get_ipset(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "GET", "/detector/{detectorId}/ipset/{ipSetId}", args)

@inline get_ipset(args) = get_ipset(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.get_invitations_count
    get_invitations_count([::AWSConfig], arguments::Dict)
    get_invitations_count([::AWSConfig]; )

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "GET", "/invitation/count", arguments::Dict)
    guardduty([::AWSConfig], "GET", "/invitation/count", )

# GetInvitationsCount Operation

Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.

# Arguments



# Returns

`GetInvitationsCountResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetInvitationsCount)
"""
@inline get_invitations_count(aws::AWSConfig=default_aws_config(); args...) = get_invitations_count(aws, args)

@inline get_invitations_count(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "GET", "/invitation/count", args)

@inline get_invitations_count(args) = get_invitations_count(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.get_master_account
    get_master_account([::AWSConfig], arguments::Dict)
    get_master_account([::AWSConfig]; detectorId=)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/master", arguments::Dict)
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/master", detectorId=)

# GetMasterAccount Operation

Provides the details for the GuardDuty master account to the current GuardDuty member account.

# Arguments

## `detectorId = ::String` -- *Required*
The unique ID of the detector of the GuardDuty member account.




# Returns

`GetMasterAccountResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMasterAccount)
"""
@inline get_master_account(aws::AWSConfig=default_aws_config(); args...) = get_master_account(aws, args)

@inline get_master_account(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "GET", "/detector/{detectorId}/master", args)

@inline get_master_account(args) = get_master_account(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.get_members
    get_members([::AWSConfig], arguments::Dict)
    get_members([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member/get", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member/get", detectorId=, <keyword arguments>)

# GetMembers Operation

Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.

# Arguments

## `accountIds = [::String, ...]`
A list of account IDs of the GuardDuty member accounts that you want to describe.


## `detectorId = ::String` -- *Required*
The unique ID of the detector of the GuardDuty account whose members you want to retrieve.




# Returns

`GetMembersResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMembers)
"""
@inline get_members(aws::AWSConfig=default_aws_config(); args...) = get_members(aws, args)

@inline get_members(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/member/get", args)

@inline get_members(args) = get_members(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.get_threat_intel_set
    get_threat_intel_set([::AWSConfig], arguments::Dict)
    get_threat_intel_set([::AWSConfig]; detectorId=, threatIntelSetId=)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", arguments::Dict)
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", detectorId=, threatIntelSetId=)

# GetThreatIntelSet Operation

Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.

# Arguments

## `detectorId = ::String` -- *Required*
The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to describe.


## `threatIntelSetId = ::String` -- *Required*
The unique ID that specifies the ThreatIntelSet that you want to describe.




# Returns

`GetThreatIntelSetResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetThreatIntelSet)
"""
@inline get_threat_intel_set(aws::AWSConfig=default_aws_config(); args...) = get_threat_intel_set(aws, args)

@inline get_threat_intel_set(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "GET", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", args)

@inline get_threat_intel_set(args) = get_threat_intel_set(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.invite_members
    invite_members([::AWSConfig], arguments::Dict)
    invite_members([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member/invite", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member/invite", detectorId=, <keyword arguments>)

# InviteMembers Operation

Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account.

# Arguments

## `accountIds = [::String, ...]`
A list of account IDs of the accounts that you want to invite to GuardDuty as members.


## `detectorId = ::String` -- *Required*
The unique ID of the detector of the GuardDuty account with which you want to invite members.


## `disableEmailNotification = ::Bool`
A boolean value that specifies whether you want to disable email notification to the accounts that you’re inviting to GuardDuty as members.


## `message = ::String`
The invitation message that you want to send to the accounts that you’re inviting to GuardDuty as members.




# Returns

`InviteMembersResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/InviteMembers)
"""
@inline invite_members(aws::AWSConfig=default_aws_config(); args...) = invite_members(aws, args)

@inline invite_members(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/member/invite", args)

@inline invite_members(args) = invite_members(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.list_detectors
    list_detectors([::AWSConfig], arguments::Dict)
    list_detectors([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "GET", "/detector", arguments::Dict)
    guardduty([::AWSConfig], "GET", "/detector", <keyword arguments>)

# ListDetectors Operation

Lists detectorIds of all the existing Amazon GuardDuty detector resources.

# Arguments

## `maxResults = ::Int`
You can use this parameter to indicate the maximum number of detectors that you want in the response.


## `nextToken = ::String`
You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListDetectors action. For subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.




# Returns

`ListDetectorsResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListDetectors)
"""
@inline list_detectors(aws::AWSConfig=default_aws_config(); args...) = list_detectors(aws, args)

@inline list_detectors(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "GET", "/detector", args)

@inline list_detectors(args) = list_detectors(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.list_filters
    list_filters([::AWSConfig], arguments::Dict)
    list_filters([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/filter", arguments::Dict)
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/filter", detectorId=, <keyword arguments>)

# ListFilters Operation

Returns a paginated list of the current filters.

# Arguments

## `detectorId = ::String` -- *Required*
The ID of the detector that specifies the GuardDuty service where you want to list filters.


## `maxResults = ::Int`
Indicates the maximum number of items that you want in the response. The maximum value is 50.


## `nextToken = ::String`
Paginates results. Set the value of this parameter to NULL on your first call to the ListFilters operation.For subsequent calls to the operation, fill nextToken in the request with the value of nextToken from the previous response to continue listing data.




# Returns

`ListFiltersResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListFilters)
"""
@inline list_filters(aws::AWSConfig=default_aws_config(); args...) = list_filters(aws, args)

@inline list_filters(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "GET", "/detector/{detectorId}/filter", args)

@inline list_filters(args) = list_filters(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.list_findings
    list_findings([::AWSConfig], arguments::Dict)
    list_findings([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings", detectorId=, <keyword arguments>)

# ListFindings Operation

Lists Amazon GuardDuty findings for the specified detector ID.

# Arguments

## `detectorId = ::String` -- *Required*
The ID of the detector that specifies the GuardDuty service whose findings you want to list.


## `findingCriteria = ["criterion" =>  ::Dict{String,String}]`
Represents the criteria used for querying findings.


## `maxResults = ::Int`
You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.


## `nextToken = ::String`
You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListFindings action. For subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.


## `sortCriteria = [ ... ]`
Represents the criteria used for sorting findings.
```
 sortCriteria = [
        "attributeName" =>  ::String,
        "orderBy" =>  "ASC" or "DESC"
    ]
```



# Returns

`ListFindingsResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListFindings)
"""
@inline list_findings(aws::AWSConfig=default_aws_config(); args...) = list_findings(aws, args)

@inline list_findings(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/findings", args)

@inline list_findings(args) = list_findings(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.list_ipsets
    list_ipsets([::AWSConfig], arguments::Dict)
    list_ipsets([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/ipset", arguments::Dict)
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/ipset", detectorId=, <keyword arguments>)

# ListIPSets Operation

Lists the IPSets of the GuardDuty service specified by the detector ID.

# Arguments

## `detectorId = ::String` -- *Required*
The unique ID of the detector that you want to retrieve.


## `maxResults = ::Int`
You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 7. The maximum value is 7.


## `nextToken = ::String`
You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListIPSet action. For subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.




# Returns

`ListIPSetsResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListIPSets)
"""
@inline list_ipsets(aws::AWSConfig=default_aws_config(); args...) = list_ipsets(aws, args)

@inline list_ipsets(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "GET", "/detector/{detectorId}/ipset", args)

@inline list_ipsets(args) = list_ipsets(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.list_invitations
    list_invitations([::AWSConfig], arguments::Dict)
    list_invitations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "GET", "/invitation", arguments::Dict)
    guardduty([::AWSConfig], "GET", "/invitation", <keyword arguments>)

# ListInvitations Operation

Lists all GuardDuty membership invitations that were sent to the current AWS account.

# Arguments

## `maxResults = ::Int`
You can use this parameter to indicate the maximum number of invitations you want in the response. The default value is 50. The maximum value is 50.


## `nextToken = ::String`
You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListInvitations action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.




# Returns

`ListInvitationsResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListInvitations)
"""
@inline list_invitations(aws::AWSConfig=default_aws_config(); args...) = list_invitations(aws, args)

@inline list_invitations(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "GET", "/invitation", args)

@inline list_invitations(args) = list_invitations(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.list_members
    list_members([::AWSConfig], arguments::Dict)
    list_members([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/member", arguments::Dict)
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/member", detectorId=, <keyword arguments>)

# ListMembers Operation

Lists details about all member accounts for the current GuardDuty master account.

# Arguments

## `detectorId = ::String` -- *Required*
The unique ID of the detector of the GuardDuty account whose members you want to list.


## `maxResults = ::Int`
You can use this parameter to indicate the maximum number of items you want in the response. The default value is 1. The maximum value is 50.


## `nextToken = ::String`
You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListMembers action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.


## `onlyAssociated = ::String`
Specifies what member accounts the response is to include based on their relationship status with the master account. The default value is TRUE. If onlyAssociated is set to TRUE, the response will include member accounts whose relationship status with the master is set to Enabled, Disabled. If onlyAssociated is set to FALSE, the response will include all existing member accounts.




# Returns

`ListMembersResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListMembers)
"""
@inline list_members(aws::AWSConfig=default_aws_config(); args...) = list_members(aws, args)

@inline list_members(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "GET", "/detector/{detectorId}/member", args)

@inline list_members(args) = list_members(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.list_threat_intel_sets
    list_threat_intel_sets([::AWSConfig], arguments::Dict)
    list_threat_intel_sets([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/threatintelset", arguments::Dict)
    guardduty([::AWSConfig], "GET", "/detector/{detectorId}/threatintelset", detectorId=, <keyword arguments>)

# ListThreatIntelSets Operation

Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID.

# Arguments

## `detectorId = ::String` -- *Required*
The detectorID that specifies the GuardDuty service whose ThreatIntelSets you want to list.


## `maxResults = ::Int`
You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 7. The maximum value is 7.


## `nextToken = ::String`
Pagination token to start retrieving threat intel sets from.




# Returns

`ListThreatIntelSetsResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListThreatIntelSets)
"""
@inline list_threat_intel_sets(aws::AWSConfig=default_aws_config(); args...) = list_threat_intel_sets(aws, args)

@inline list_threat_intel_sets(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "GET", "/detector/{detectorId}/threatintelset", args)

@inline list_threat_intel_sets(args) = list_threat_intel_sets(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.start_monitoring_members
    start_monitoring_members([::AWSConfig], arguments::Dict)
    start_monitoring_members([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member/start", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member/start", detectorId=, <keyword arguments>)

# StartMonitoringMembers Operation

Re-enables GuardDuty to monitor findings of the member accounts specified by the account IDs. A master GuardDuty account can run this command after disabling GuardDuty from monitoring these members' findings by running StopMonitoringMembers.

# Arguments

## `accountIds = [::String, ...]`
A list of account IDs of the GuardDuty member accounts whose findings you want the master account to monitor.


## `detectorId = ::String` -- *Required*
The unique ID of the detector of the GuardDuty account whom you want to re-enable to monitor members' findings.




# Returns

`StartMonitoringMembersResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StartMonitoringMembers)
"""
@inline start_monitoring_members(aws::AWSConfig=default_aws_config(); args...) = start_monitoring_members(aws, args)

@inline start_monitoring_members(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/member/start", args)

@inline start_monitoring_members(args) = start_monitoring_members(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.stop_monitoring_members
    stop_monitoring_members([::AWSConfig], arguments::Dict)
    stop_monitoring_members([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member/stop", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/member/stop", detectorId=, <keyword arguments>)

# StopMonitoringMembers Operation

Disables GuardDuty from monitoring findings of the member accounts specified by the account IDs. After running this command, a master GuardDuty account can run StartMonitoringMembers to re-enable GuardDuty to monitor these members’ findings.

# Arguments

## `accountIds = [::String, ...]`
A list of account IDs of the GuardDuty member accounts whose findings you want the master account to stop monitoring.


## `detectorId = ::String` -- *Required*
The unique ID of the detector of the GuardDuty account that you want to stop from monitor members' findings.




# Returns

`StopMonitoringMembersResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StopMonitoringMembers)
"""
@inline stop_monitoring_members(aws::AWSConfig=default_aws_config(); args...) = stop_monitoring_members(aws, args)

@inline stop_monitoring_members(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/member/stop", args)

@inline stop_monitoring_members(args) = stop_monitoring_members(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.unarchive_findings
    unarchive_findings([::AWSConfig], arguments::Dict)
    unarchive_findings([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings/unarchive", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings/unarchive", detectorId=, <keyword arguments>)

# UnarchiveFindings Operation

Unarchives Amazon GuardDuty findings specified by the list of finding IDs.

# Arguments

## `detectorId = ::String` -- *Required*
The ID of the detector that specifies the GuardDuty service whose findings you want to unarchive.


## `findingIds = [::String, ...]`
IDs of the findings that you want to unarchive.




# Returns

`UnarchiveFindingsResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UnarchiveFindings)
"""
@inline unarchive_findings(aws::AWSConfig=default_aws_config(); args...) = unarchive_findings(aws, args)

@inline unarchive_findings(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/findings/unarchive", args)

@inline unarchive_findings(args) = unarchive_findings(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.update_detector
    update_detector([::AWSConfig], arguments::Dict)
    update_detector([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}", detectorId=, <keyword arguments>)

# UpdateDetector Operation

Updates an Amazon GuardDuty detector specified by the detectorId.

# Arguments

## `detectorId = ::String` -- *Required*
The unique ID of the detector that you want to update.


## `enable = ::Bool`
Updated boolean value for the detector that specifies whether the detector is enabled.




# Returns

`UpdateDetectorResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateDetector)
"""
@inline update_detector(aws::AWSConfig=default_aws_config(); args...) = update_detector(aws, args)

@inline update_detector(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}", args)

@inline update_detector(args) = update_detector(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.update_filter
    update_filter([::AWSConfig], arguments::Dict)
    update_filter([::AWSConfig]; detectorId=, filterName=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/filter/{filterName}", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/filter/{filterName}", detectorId=, filterName=, <keyword arguments>)

# UpdateFilter Operation

Updates the filter specified by the filter name.

# Arguments

## `action = "NOOP" or "ARCHIVE"`
Specifies the action that is to be applied to the findings that match the filter.


## `description = ::String`
The description of the filter.


## `detectorId = ::String` -- *Required*
The unique ID of the detector that specifies the GuardDuty service where you want to update a filter.


## `filterName = ::String` -- *Required*
The name of the filter.


## `findingCriteria = ["criterion" =>  ::Dict{String,String}]`
Represents the criteria to be used in the filter for querying findings.


## `rank = ::Int`
Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.




# Returns

`UpdateFilterResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFilter)
"""
@inline update_filter(aws::AWSConfig=default_aws_config(); args...) = update_filter(aws, args)

@inline update_filter(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/filter/{filterName}", args)

@inline update_filter(args) = update_filter(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.update_findings_feedback
    update_findings_feedback([::AWSConfig], arguments::Dict)
    update_findings_feedback([::AWSConfig]; detectorId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings/feedback", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/findings/feedback", detectorId=, <keyword arguments>)

# UpdateFindingsFeedback Operation

Marks specified Amazon GuardDuty findings as useful or not useful.

# Arguments

## `comments = ::String`
Additional feedback about the GuardDuty findings.


## `detectorId = ::String` -- *Required*
The ID of the detector that specifies the GuardDuty service whose findings you want to mark as useful or not useful.


## `feedback = "USEFUL" or "NOT_USEFUL"`
Valid values: USEFUL | NOT_USEFUL


## `findingIds = [::String, ...]`
IDs of the findings that you want to mark as useful or not useful.




# Returns

`UpdateFindingsFeedbackResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFindingsFeedback)
"""
@inline update_findings_feedback(aws::AWSConfig=default_aws_config(); args...) = update_findings_feedback(aws, args)

@inline update_findings_feedback(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/findings/feedback", args)

@inline update_findings_feedback(args) = update_findings_feedback(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.update_ipset
    update_ipset([::AWSConfig], arguments::Dict)
    update_ipset([::AWSConfig]; detectorId=, ipSetId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/ipset/{ipSetId}", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/ipset/{ipSetId}", detectorId=, ipSetId=, <keyword arguments>)

# UpdateIPSet Operation

Updates the IPSet specified by the IPSet ID.

# Arguments

## `activate = ::Bool`
The updated boolean value that specifies whether the IPSet is active or not.


## `detectorId = ::String` -- *Required*
The detectorID that specifies the GuardDuty service whose IPSet you want to update.


## `ipSetId = ::String` -- *Required*
The unique ID that specifies the IPSet that you want to update.


## `location = ::String`
The updated URI of the file that contains the IPSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).


## `name = ::String`
The unique ID that specifies the IPSet that you want to update.




# Returns

`UpdateIPSetResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateIPSet)
"""
@inline update_ipset(aws::AWSConfig=default_aws_config(); args...) = update_ipset(aws, args)

@inline update_ipset(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/ipset/{ipSetId}", args)

@inline update_ipset(args) = update_ipset(default_aws_config(), args)


"""
    using AWSSDK.GuardDuty.update_threat_intel_set
    update_threat_intel_set([::AWSConfig], arguments::Dict)
    update_threat_intel_set([::AWSConfig]; detectorId=, threatIntelSetId=, <keyword arguments>)

    using AWSCore.Services.guardduty
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", arguments::Dict)
    guardduty([::AWSConfig], "POST", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", detectorId=, threatIntelSetId=, <keyword arguments>)

# UpdateThreatIntelSet Operation

Updates the ThreatIntelSet specified by ThreatIntelSet ID.

# Arguments

## `activate = ::Bool`
The updated boolean value that specifies whether the ThreateIntelSet is active or not.


## `detectorId = ::String` -- *Required*
The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to update.


## `location = ::String`
The updated URI of the file that contains the ThreateIntelSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)


## `name = ::String`
The unique ID that specifies the ThreatIntelSet that you want to update.


## `threatIntelSetId = ::String` -- *Required*
The unique ID that specifies the ThreatIntelSet that you want to update.




# Returns

`UpdateThreatIntelSetResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateThreatIntelSet)
"""
@inline update_threat_intel_set(aws::AWSConfig=default_aws_config(); args...) = update_threat_intel_set(aws, args)

@inline update_threat_intel_set(aws::AWSConfig, args) = AWSCore.Services.guardduty(aws, "POST", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", args)

@inline update_threat_intel_set(args) = update_threat_intel_set(default_aws_config(), args)




end # module GuardDuty


#==============================================================================#
# End of file
#==============================================================================#
