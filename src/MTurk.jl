#==============================================================================#
# MTurk.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/mturk-requester-2017-01-17.normal.json
#==============================================================================#

__precompile__()

module MTurk

using AWSCore


"""
    using AWSSDK.MTurk.accept_qualification_request
    accept_qualification_request([::AWSConfig], arguments::Dict)
    accept_qualification_request([::AWSConfig]; QualificationRequestId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "AcceptQualificationRequest", arguments::Dict)
    mturk_requester([::AWSConfig], "AcceptQualificationRequest", QualificationRequestId=, <keyword arguments>)

# AcceptQualificationRequest Operation

The `AcceptQualificationRequest` operation approves a Worker's request for a Qualification.

Only the owner of the Qualification type can grant a Qualification request for that type.

A successful request for the `AcceptQualificationRequest` operation returns with no errors and an empty body.

# Arguments

## `QualificationRequestId = ::String` -- *Required*
The ID of the Qualification request, as returned by the `GetQualificationRequests` operation.


## `IntegerValue = ::Int`
The value of the Qualification. You can omit this value if you are using the presence or absence of the Qualification as the basis for a HIT requirement.




# Returns

`AcceptQualificationRequestResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/AcceptQualificationRequest)
"""
@inline accept_qualification_request(aws::AWSConfig=default_aws_config(); args...) = accept_qualification_request(aws, args)

@inline accept_qualification_request(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "AcceptQualificationRequest", args)

@inline accept_qualification_request(args) = accept_qualification_request(default_aws_config(), args)


"""
    using AWSSDK.MTurk.approve_assignment
    approve_assignment([::AWSConfig], arguments::Dict)
    approve_assignment([::AWSConfig]; AssignmentId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "ApproveAssignment", arguments::Dict)
    mturk_requester([::AWSConfig], "ApproveAssignment", AssignmentId=, <keyword arguments>)

# ApproveAssignment Operation

The `ApproveAssignment` operation approves the results of a completed assignment.

Approving an assignment initiates two payments from the Requester's Amazon.com account

*   The Worker who submitted the results is paid the reward specified in the HIT.

*   Amazon Mechanical Turk fees are debited.

If the Requester's account does not have adequate funds for these payments, the call to ApproveAssignment returns an exception, and the approval is not processed. You can include an optional feedback message with the approval, which the Worker can see in the Status section of the web site.

You can also call this operation for assignments that were previous rejected and approve them by explicitly overriding the previous rejection. This only works on rejected assignments that were submitted within the previous 30 days and only if the assignment's related HIT has not been deleted.

# Arguments

## `AssignmentId = ::String` -- *Required*
The ID of the assignment. The assignment must correspond to a HIT created by the Requester.


## `RequesterFeedback = ::String`
A message for the Worker, which the Worker can see in the Status section of the web site.


## `OverrideRejection = ::Bool`
A flag indicating that an assignment should be approved even if it was previously rejected. Defaults to `False`.




# Returns

`ApproveAssignmentResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ApproveAssignment)
"""
@inline approve_assignment(aws::AWSConfig=default_aws_config(); args...) = approve_assignment(aws, args)

@inline approve_assignment(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "ApproveAssignment", args)

@inline approve_assignment(args) = approve_assignment(default_aws_config(), args)


"""
    using AWSSDK.MTurk.associate_qualification_with_worker
    associate_qualification_with_worker([::AWSConfig], arguments::Dict)
    associate_qualification_with_worker([::AWSConfig]; QualificationTypeId=, WorkerId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "AssociateQualificationWithWorker", arguments::Dict)
    mturk_requester([::AWSConfig], "AssociateQualificationWithWorker", QualificationTypeId=, WorkerId=, <keyword arguments>)

# AssociateQualificationWithWorker Operation

The `AssociateQualificationWithWorker` operation gives a Worker a Qualification. `AssociateQualificationWithWorker` does not require that the Worker submit a Qualification request. It gives the Qualification directly to the Worker.

You can only assign a Qualification of a Qualification type that you created (using the `CreateQualificationType` operation).

**Note**
> Note: `AssociateQualificationWithWorker` does not affect any pending Qualification requests for the Qualification by the Worker. If you assign a Qualification to a Worker, then later grant a Qualification request made by the Worker, the granting of the request may modify the Qualification score. To resolve a pending Qualification request without affecting the Qualification the Worker already has, reject the request with the `RejectQualificationRequest` operation.

# Arguments

## `QualificationTypeId = ::String` -- *Required*
The ID of the Qualification type to use for the assigned Qualification.


## `WorkerId = ::String` -- *Required*
The ID of the Worker to whom the Qualification is being assigned. Worker IDs are included with submitted HIT assignments and Qualification requests.


## `IntegerValue = ::Int`
The value of the Qualification to assign.


## `SendNotification = ::Bool`
Specifies whether to send a notification email message to the Worker saying that the qualification was assigned to the Worker. Note: this is true by default.




# Returns

`AssociateQualificationWithWorkerResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/AssociateQualificationWithWorker)
"""
@inline associate_qualification_with_worker(aws::AWSConfig=default_aws_config(); args...) = associate_qualification_with_worker(aws, args)

@inline associate_qualification_with_worker(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "AssociateQualificationWithWorker", args)

@inline associate_qualification_with_worker(args) = associate_qualification_with_worker(default_aws_config(), args)


"""
    using AWSSDK.MTurk.create_additional_assignments_for_hit
    create_additional_assignments_for_hit([::AWSConfig], arguments::Dict)
    create_additional_assignments_for_hit([::AWSConfig]; HITId=, NumberOfAdditionalAssignments=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "CreateAdditionalAssignmentsForHIT", arguments::Dict)
    mturk_requester([::AWSConfig], "CreateAdditionalAssignmentsForHIT", HITId=, NumberOfAdditionalAssignments=, <keyword arguments>)

# CreateAdditionalAssignmentsForHIT Operation

The `CreateAdditionalAssignmentsForHIT` operation increases the maximum number of assignments of an existing HIT.

To extend the maximum number of assignments, specify the number of additional assignments.

**Note**
> *   HITs created with fewer than 10 assignments cannot be extended to have 10 or more assignments. Attempting to add assignments in a way that brings the total number of assignments for a HIT from fewer than 10 assignments to 10 or more assignments will result in an `AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease` exception.

*   HITs that were created before July 22, 2015 cannot be extended. Attempting to extend HITs that were created before July 22, 2015 will result in an `AWS.MechanicalTurk.HITTooOldForExtension` exception.

# Arguments

## `HITId = ::String` -- *Required*
The ID of the HIT to extend.


## `NumberOfAdditionalAssignments = ::Int` -- *Required*
The number of additional assignments to request for this HIT.


## `UniqueRequestToken = ::String`
A unique identifier for this request, which allows you to retry the call on error without extending the HIT multiple times. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the extend HIT already exists in the system from a previous call using the same `UniqueRequestToken`, subsequent calls will return an error with a message containing the request ID.




# Returns

`CreateAdditionalAssignmentsForHITResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateAdditionalAssignmentsForHIT)
"""
@inline create_additional_assignments_for_hit(aws::AWSConfig=default_aws_config(); args...) = create_additional_assignments_for_hit(aws, args)

@inline create_additional_assignments_for_hit(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "CreateAdditionalAssignmentsForHIT", args)

@inline create_additional_assignments_for_hit(args) = create_additional_assignments_for_hit(default_aws_config(), args)


"""
    using AWSSDK.MTurk.create_hit
    create_hit([::AWSConfig], arguments::Dict)
    create_hit([::AWSConfig]; LifetimeInSeconds=, AssignmentDurationInSeconds=, Reward=, Title=, Description=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "CreateHIT", arguments::Dict)
    mturk_requester([::AWSConfig], "CreateHIT", LifetimeInSeconds=, AssignmentDurationInSeconds=, Reward=, Title=, Description=, <keyword arguments>)

# CreateHIT Operation

The `CreateHIT` operation creates a new Human Intelligence Task (HIT). The new HIT is made available for Workers to find and accept on the Amazon Mechanical Turk website.

This operation allows you to specify a new HIT by passing in values for the properties of the HIT, such as its title, reward amount and number of assignments. When you pass these values to `CreateHIT`, a new HIT is created for you, with a new `HITTypeID`. The HITTypeID can be used to create additional HITs in the future without needing to specify common parameters such as the title, description and reward amount each time.

An alternative way to create HITs is to first generate a HITTypeID using the `CreateHITType` operation and then call the `CreateHITWithHITType` operation. This is the recommended best practice for Requesters who are creating large numbers of HITs.

CreateHIT also supports several ways to provide question data: by providing a value for the `Question` parameter that fully specifies the contents of the HIT, or by providing a `HitLayoutId` and associated `HitLayoutParameters`.

**Note**
> If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see [Amazon Mechanical Turk Pricing](https://requester.mturk.com/pricing).

# Arguments

## `MaxAssignments = ::Int`
The number of times the HIT can be accepted and completed before the HIT becomes unavailable.


## `AutoApprovalDelayInSeconds = ::Int`
The number of seconds after an assignment for the HIT has been submitted, after which the assignment is considered Approved automatically unless the Requester explicitly rejects it.


## `LifetimeInSeconds = ::Int` -- *Required*
An amount of time, in seconds, after which the HIT is no longer available for users to accept. After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches, even if not all of the assignments for the HIT have been accepted.


## `AssignmentDurationInSeconds = ::Int` -- *Required*
The amount of time, in seconds, that a Worker has to complete the HIT after accepting it. If a Worker does not complete the assignment within the specified duration, the assignment is considered abandoned. If the HIT is still active (that is, its lifetime has not elapsed), the assignment becomes available for other users to find and accept.


## `Reward = ::String` -- *Required*
The amount of money the Requester will pay a Worker for successfully completing the HIT.


## `Title = ::String` -- *Required*
The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT title appears in search results, and everywhere the HIT is mentioned.


## `Keywords = ::String`
One or more words or phrases that describe the HIT, separated by commas. These words are used in searches to find HITs.


## `Description = ::String` -- *Required*
A general description of the HIT. A description includes detailed information about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded view of search results, and in the HIT and assignment screens. A good description gives the user enough information to evaluate the HIT before accepting it.


## `Question = ::String`
The data the person completing the HIT uses to produce the results.

Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure, or an HTMLQuestion data structure. The XML question data must not be larger than 64 kilobytes (65,535 bytes) in size, including whitespace.

Either a Question parameter or a HITLayoutId parameter must be provided.


## `RequesterAnnotation = ::String`
An arbitrary data field. The RequesterAnnotation parameter lets your application attach arbitrary data to the HIT for tracking purposes. For example, this parameter could be an identifier internal to the Requester's application that corresponds with the HIT.

The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT. It is not shown to the Worker, or any other Requester.

The RequesterAnnotation parameter may be different for each HIT you submit. It does not affect how your HITs are grouped.


## `QualificationRequirements = [[ ... ], ...]`
Conditions that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met in order for a Worker to accept the HIT. Additionally, other actions can be restricted using the `ActionsGuarded` field on each `QualificationRequirement` structure.
```
 QualificationRequirements = [[
        "QualificationTypeId" => <required> ::String,
        "Comparator" => <required> "LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In" or "NotIn",
        "IntegerValues" =>  [::Int, ...],
        "LocaleValues" =>  [[
            "Country" => <required> ::String,
            "Subdivision" =>  ::String
        ], ...],
        "RequiredToPreview" =>  ::Bool,
        "ActionsGuarded" =>  "Accept", "PreviewAndAccept" or "DiscoverPreviewAndAccept"
    ], ...]
```

## `UniqueRequestToken = ::String`
A unique identifier for this request which allows you to retry the call on error without creating duplicate HITs. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error with a message containing the HITId.

**Note**
> Note: It is your responsibility to ensure uniqueness of the token. The unique token expires after 24 hours. Subsequent calls using the same UniqueRequestToken made after the 24 hour limit could create duplicate HITs.


## `AssignmentReviewPolicy = [ ... ]`
The Assignment-level Review Policy applies to the assignments under the HIT. You can specify for Mechanical Turk to take various actions based on the policy.
```
 AssignmentReviewPolicy = [
        "PolicyName" => <required> ::String,
        "Parameters" =>  [[
            "Key" =>  ::String,
            "Values" =>  [::String, ...],
            "MapEntries" =>  [[
                "Key" =>  ::String,
                "Values" =>  [::String, ...]
            ], ...]
        ], ...]
    ]
```

## `HITReviewPolicy = [ ... ]`
The HIT-level Review Policy applies to the HIT. You can specify for Mechanical Turk to take various actions based on the policy.
```
 HITReviewPolicy = [
        "PolicyName" => <required> ::String,
        "Parameters" =>  [[
            "Key" =>  ::String,
            "Values" =>  [::String, ...],
            "MapEntries" =>  [[
                "Key" =>  ::String,
                "Values" =>  [::String, ...]
            ], ...]
        ], ...]
    ]
```

## `HITLayoutId = ::String`
The HITLayoutId allows you to use a pre-existing HIT design with placeholder values and create an additional HIT by providing those values as HITLayoutParameters.

Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.


## `HITLayoutParameters = [[ ... ], ...]`
If the HITLayoutId is provided, any placeholder values must be filled in with values using the HITLayoutParameter structure. For more information, see HITLayout.
```
 HITLayoutParameters = [[
        "Name" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Returns

`CreateHITResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateHIT)
"""
@inline create_hit(aws::AWSConfig=default_aws_config(); args...) = create_hit(aws, args)

@inline create_hit(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "CreateHIT", args)

@inline create_hit(args) = create_hit(default_aws_config(), args)


"""
    using AWSSDK.MTurk.create_hittype
    create_hittype([::AWSConfig], arguments::Dict)
    create_hittype([::AWSConfig]; AssignmentDurationInSeconds=, Reward=, Title=, Description=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "CreateHITType", arguments::Dict)
    mturk_requester([::AWSConfig], "CreateHITType", AssignmentDurationInSeconds=, Reward=, Title=, Description=, <keyword arguments>)

# CreateHITType Operation

The `CreateHITType` operation creates a new HIT type. This operation allows you to define a standard set of HIT properties to use when creating HITs. If you register a HIT type with values that match an existing HIT type, the HIT type ID of the existing type will be returned.

# Arguments

## `AutoApprovalDelayInSeconds = ::Int`
The number of seconds after an assignment for the HIT has been submitted, after which the assignment is considered Approved automatically unless the Requester explicitly rejects it.


## `AssignmentDurationInSeconds = ::Int` -- *Required*
The amount of time, in seconds, that a Worker has to complete the HIT after accepting it. If a Worker does not complete the assignment within the specified duration, the assignment is considered abandoned. If the HIT is still active (that is, its lifetime has not elapsed), the assignment becomes available for other users to find and accept.


## `Reward = ::String` -- *Required*
The amount of money the Requester will pay a Worker for successfully completing the HIT.


## `Title = ::String` -- *Required*
The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT title appears in search results, and everywhere the HIT is mentioned.


## `Keywords = ::String`
One or more words or phrases that describe the HIT, separated by commas. These words are used in searches to find HITs.


## `Description = ::String` -- *Required*
A general description of the HIT. A description includes detailed information about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded view of search results, and in the HIT and assignment screens. A good description gives the user enough information to evaluate the HIT before accepting it.


## `QualificationRequirements = [[ ... ], ...]`
Conditions that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met in order for a Worker to accept the HIT. Additionally, other actions can be restricted using the `ActionsGuarded` field on each `QualificationRequirement` structure.
```
 QualificationRequirements = [[
        "QualificationTypeId" => <required> ::String,
        "Comparator" => <required> "LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In" or "NotIn",
        "IntegerValues" =>  [::Int, ...],
        "LocaleValues" =>  [[
            "Country" => <required> ::String,
            "Subdivision" =>  ::String
        ], ...],
        "RequiredToPreview" =>  ::Bool,
        "ActionsGuarded" =>  "Accept", "PreviewAndAccept" or "DiscoverPreviewAndAccept"
    ], ...]
```



# Returns

`CreateHITTypeResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateHITType)
"""
@inline create_hittype(aws::AWSConfig=default_aws_config(); args...) = create_hittype(aws, args)

@inline create_hittype(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "CreateHITType", args)

@inline create_hittype(args) = create_hittype(default_aws_config(), args)


"""
    using AWSSDK.MTurk.create_hitwith_hittype
    create_hitwith_hittype([::AWSConfig], arguments::Dict)
    create_hitwith_hittype([::AWSConfig]; HITTypeId=, LifetimeInSeconds=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "CreateHITWithHITType", arguments::Dict)
    mturk_requester([::AWSConfig], "CreateHITWithHITType", HITTypeId=, LifetimeInSeconds=, <keyword arguments>)

# CreateHITWithHITType Operation

The `CreateHITWithHITType` operation creates a new Human Intelligence Task (HIT) using an existing HITTypeID generated by the `CreateHITType` operation.

This is an alternative way to create HITs from the `CreateHIT` operation. This is the recommended best practice for Requesters who are creating large numbers of HITs.

CreateHITWithHITType also supports several ways to provide question data: by providing a value for the `Question` parameter that fully specifies the contents of the HIT, or by providing a `HitLayoutId` and associated `HitLayoutParameters`.

**Note**
> If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see [Amazon Mechanical Turk Pricing](https://requester.mturk.com/pricing).

# Arguments

## `HITTypeId = ::String` -- *Required*
The HIT type ID you want to create this HIT with.


## `MaxAssignments = ::Int`
The number of times the HIT can be accepted and completed before the HIT becomes unavailable.


## `LifetimeInSeconds = ::Int` -- *Required*
An amount of time, in seconds, after which the HIT is no longer available for users to accept. After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches, even if not all of the assignments for the HIT have been accepted.


## `Question = ::String`
The data the person completing the HIT uses to produce the results.

Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure, or an HTMLQuestion data structure. The XML question data must not be larger than 64 kilobytes (65,535 bytes) in size, including whitespace.

Either a Question parameter or a HITLayoutId parameter must be provided.


## `RequesterAnnotation = ::String`
An arbitrary data field. The RequesterAnnotation parameter lets your application attach arbitrary data to the HIT for tracking purposes. For example, this parameter could be an identifier internal to the Requester's application that corresponds with the HIT.

The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT. It is not shown to the Worker, or any other Requester.

The RequesterAnnotation parameter may be different for each HIT you submit. It does not affect how your HITs are grouped.


## `UniqueRequestToken = ::String`
A unique identifier for this request which allows you to retry the call on error without creating duplicate HITs. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error with a message containing the HITId.

**Note**
> Note: It is your responsibility to ensure uniqueness of the token. The unique token expires after 24 hours. Subsequent calls using the same UniqueRequestToken made after the 24 hour limit could create duplicate HITs.


## `AssignmentReviewPolicy = [ ... ]`
The Assignment-level Review Policy applies to the assignments under the HIT. You can specify for Mechanical Turk to take various actions based on the policy.
```
 AssignmentReviewPolicy = [
        "PolicyName" => <required> ::String,
        "Parameters" =>  [[
            "Key" =>  ::String,
            "Values" =>  [::String, ...],
            "MapEntries" =>  [[
                "Key" =>  ::String,
                "Values" =>  [::String, ...]
            ], ...]
        ], ...]
    ]
```

## `HITReviewPolicy = [ ... ]`
The HIT-level Review Policy applies to the HIT. You can specify for Mechanical Turk to take various actions based on the policy.
```
 HITReviewPolicy = [
        "PolicyName" => <required> ::String,
        "Parameters" =>  [[
            "Key" =>  ::String,
            "Values" =>  [::String, ...],
            "MapEntries" =>  [[
                "Key" =>  ::String,
                "Values" =>  [::String, ...]
            ], ...]
        ], ...]
    ]
```

## `HITLayoutId = ::String`
The HITLayoutId allows you to use a pre-existing HIT design with placeholder values and create an additional HIT by providing those values as HITLayoutParameters.

Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.


## `HITLayoutParameters = [[ ... ], ...]`
If the HITLayoutId is provided, any placeholder values must be filled in with values using the HITLayoutParameter structure. For more information, see HITLayout.
```
 HITLayoutParameters = [[
        "Name" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Returns

`CreateHITWithHITTypeResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateHITWithHITType)
"""
@inline create_hitwith_hittype(aws::AWSConfig=default_aws_config(); args...) = create_hitwith_hittype(aws, args)

@inline create_hitwith_hittype(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "CreateHITWithHITType", args)

@inline create_hitwith_hittype(args) = create_hitwith_hittype(default_aws_config(), args)


"""
    using AWSSDK.MTurk.create_qualification_type
    create_qualification_type([::AWSConfig], arguments::Dict)
    create_qualification_type([::AWSConfig]; Name=, Description=, QualificationTypeStatus=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "CreateQualificationType", arguments::Dict)
    mturk_requester([::AWSConfig], "CreateQualificationType", Name=, Description=, QualificationTypeStatus=, <keyword arguments>)

# CreateQualificationType Operation

The `CreateQualificationType` operation creates a new Qualification type, which is represented by a `QualificationType` data structure.

# Arguments

## `Name = ::String` -- *Required*
The name you give to the Qualification type. The type name is used to represent the Qualification to Workers, and to find the type using a Qualification type search. It must be unique across all of your Qualification types.


## `Keywords = ::String`
One or more words or phrases that describe the Qualification type, separated by commas. The keywords of a type make the type easier to find during a search.


## `Description = ::String` -- *Required*
A long description for the Qualification type. On the Amazon Mechanical Turk website, the long description is displayed when a Worker examines a Qualification type.


## `QualificationTypeStatus = "Active" or "Inactive"` -- *Required*
The initial status of the Qualification type.

Constraints: Valid values are: Active | Inactive


## `RetryDelayInSeconds = ::Int`
The number of seconds that a Worker must wait after requesting a Qualification of the Qualification type before the worker can retry the Qualification request.

Constraints: None. If not specified, retries are disabled and Workers can request a Qualification of this type only once, even if the Worker has not been granted the Qualification. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must delete existing retry-enabled Qualification type and then create a new Qualification type with retries disabled.


## `Test = ::String`
The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, `TestDurationInSeconds` must also be specified.

Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.

Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.


## `AnswerKey = ::String`
The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.

Constraints: Must not be longer than 65535 bytes.

Constraints: None. If not specified, you must process Qualification requests manually.


## `TestDurationInSeconds = ::Int`
The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.


## `AutoGranted = ::Bool`
Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.

Constraints: If the Test parameter is specified, this parameter cannot be true.


## `AutoGrantedValue = ::Int`
The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.




# Returns

`CreateQualificationTypeResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateQualificationType)
"""
@inline create_qualification_type(aws::AWSConfig=default_aws_config(); args...) = create_qualification_type(aws, args)

@inline create_qualification_type(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "CreateQualificationType", args)

@inline create_qualification_type(args) = create_qualification_type(default_aws_config(), args)


"""
    using AWSSDK.MTurk.create_worker_block
    create_worker_block([::AWSConfig], arguments::Dict)
    create_worker_block([::AWSConfig]; WorkerId=, Reason=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "CreateWorkerBlock", arguments::Dict)
    mturk_requester([::AWSConfig], "CreateWorkerBlock", WorkerId=, Reason=)

# CreateWorkerBlock Operation

The `CreateWorkerBlock` operation allows you to prevent a Worker from working on your HITs. For example, you can block a Worker who is producing poor quality work. You can block up to 100,000 Workers.

# Arguments

## `WorkerId = ::String` -- *Required*
The ID of the Worker to block.


## `Reason = ::String` -- *Required*
A message explaining the reason for blocking the Worker. This parameter enables you to keep track of your Workers. The Worker does not see this message.




# Returns

`CreateWorkerBlockResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/CreateWorkerBlock)
"""
@inline create_worker_block(aws::AWSConfig=default_aws_config(); args...) = create_worker_block(aws, args)

@inline create_worker_block(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "CreateWorkerBlock", args)

@inline create_worker_block(args) = create_worker_block(default_aws_config(), args)


"""
    using AWSSDK.MTurk.delete_hit
    delete_hit([::AWSConfig], arguments::Dict)
    delete_hit([::AWSConfig]; HITId=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "DeleteHIT", arguments::Dict)
    mturk_requester([::AWSConfig], "DeleteHIT", HITId=)

# DeleteHIT Operation

The `DeleteHIT` operation is used to delete HIT that is no longer needed. Only the Requester who created the HIT can delete it.

You can only dispose of HITs that are in the `Reviewable` state, with all of their submitted assignments already either approved or rejected. If you call the DeleteHIT operation on a HIT that is not in the `Reviewable` state (for example, that has not expired, or still has active assignments), or on a HIT that is Reviewable but without all of its submitted assignments already approved or rejected, the service will return an error.

**Note**
> *   HITs are automatically disposed of after 120 days.

*   After you dispose of a HIT, you can no longer approve the HIT's rejected assignments.

*   Disposed HITs are not returned in results for the ListHITs operation.

*   Disposing HITs can improve the performance of operations such as ListReviewableHITs and ListHITs.

# Arguments

## `HITId = ::String` -- *Required*
The ID of the HIT to be deleted.




# Returns

`DeleteHITResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DeleteHIT)
"""
@inline delete_hit(aws::AWSConfig=default_aws_config(); args...) = delete_hit(aws, args)

@inline delete_hit(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "DeleteHIT", args)

@inline delete_hit(args) = delete_hit(default_aws_config(), args)


"""
    using AWSSDK.MTurk.delete_qualification_type
    delete_qualification_type([::AWSConfig], arguments::Dict)
    delete_qualification_type([::AWSConfig]; QualificationTypeId=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "DeleteQualificationType", arguments::Dict)
    mturk_requester([::AWSConfig], "DeleteQualificationType", QualificationTypeId=)

# DeleteQualificationType Operation

The `DeleteQualificationType` deletes a Qualification type and deletes any HIT types that are associated with the Qualification type.

This operation does not revoke Qualifications already assigned to Workers because the Qualifications might be needed for active HITs. If there are any pending requests for the Qualification type, Amazon Mechanical Turk rejects those requests. After you delete a Qualification type, you can no longer use it to create HITs or HIT types.

**Note**
> DeleteQualificationType must wait for all the HITs that use the deleted Qualification type to be deleted before completing. It may take up to 48 hours before DeleteQualificationType completes and the unique name of the Qualification type is available for reuse with CreateQualificationType.

# Arguments

## `QualificationTypeId = ::String` -- *Required*
The ID of the QualificationType to dispose.




# Returns

`DeleteQualificationTypeResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DeleteQualificationType)
"""
@inline delete_qualification_type(aws::AWSConfig=default_aws_config(); args...) = delete_qualification_type(aws, args)

@inline delete_qualification_type(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "DeleteQualificationType", args)

@inline delete_qualification_type(args) = delete_qualification_type(default_aws_config(), args)


"""
    using AWSSDK.MTurk.delete_worker_block
    delete_worker_block([::AWSConfig], arguments::Dict)
    delete_worker_block([::AWSConfig]; WorkerId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "DeleteWorkerBlock", arguments::Dict)
    mturk_requester([::AWSConfig], "DeleteWorkerBlock", WorkerId=, <keyword arguments>)

# DeleteWorkerBlock Operation

The `DeleteWorkerBlock` operation allows you to reinstate a blocked Worker to work on your HITs. This operation reverses the effects of the CreateWorkerBlock operation. You need the Worker ID to use this operation. If the Worker ID is missing or invalid, this operation fails and returns the message “WorkerId is invalid.” If the specified Worker is not blocked, this operation returns successfully.

# Arguments

## `WorkerId = ::String` -- *Required*
The ID of the Worker to unblock.


## `Reason = ::String`
A message that explains the reason for unblocking the Worker. The Worker does not see this message.




# Returns

`DeleteWorkerBlockResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DeleteWorkerBlock)
"""
@inline delete_worker_block(aws::AWSConfig=default_aws_config(); args...) = delete_worker_block(aws, args)

@inline delete_worker_block(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "DeleteWorkerBlock", args)

@inline delete_worker_block(args) = delete_worker_block(default_aws_config(), args)


"""
    using AWSSDK.MTurk.disassociate_qualification_from_worker
    disassociate_qualification_from_worker([::AWSConfig], arguments::Dict)
    disassociate_qualification_from_worker([::AWSConfig]; WorkerId=, QualificationTypeId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "DisassociateQualificationFromWorker", arguments::Dict)
    mturk_requester([::AWSConfig], "DisassociateQualificationFromWorker", WorkerId=, QualificationTypeId=, <keyword arguments>)

# DisassociateQualificationFromWorker Operation

The `DisassociateQualificationFromWorker` revokes a previously granted Qualification from a user.

You can provide a text message explaining why the Qualification was revoked. The user who had the Qualification can see this message.

# Arguments

## `WorkerId = ::String` -- *Required*
The ID of the Worker who possesses the Qualification to be revoked.


## `QualificationTypeId = ::String` -- *Required*
The ID of the Qualification type of the Qualification to be revoked.


## `Reason = ::String`
A text message that explains why the Qualification was revoked. The user who had the Qualification sees this message.




# Returns

`DisassociateQualificationFromWorkerResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/DisassociateQualificationFromWorker)
"""
@inline disassociate_qualification_from_worker(aws::AWSConfig=default_aws_config(); args...) = disassociate_qualification_from_worker(aws, args)

@inline disassociate_qualification_from_worker(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "DisassociateQualificationFromWorker", args)

@inline disassociate_qualification_from_worker(args) = disassociate_qualification_from_worker(default_aws_config(), args)


"""
    using AWSSDK.MTurk.get_account_balance
    get_account_balance([::AWSConfig], arguments::Dict)
    get_account_balance([::AWSConfig]; )

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "GetAccountBalance", arguments::Dict)
    mturk_requester([::AWSConfig], "GetAccountBalance", )

# GetAccountBalance Operation

The `GetAccountBalance` operation retrieves the amount of money in your Amazon Mechanical Turk account.

# Arguments



# Returns

`GetAccountBalanceResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetAccountBalance)
"""
@inline get_account_balance(aws::AWSConfig=default_aws_config(); args...) = get_account_balance(aws, args)

@inline get_account_balance(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "GetAccountBalance", args)

@inline get_account_balance(args) = get_account_balance(default_aws_config(), args)


"""
    using AWSSDK.MTurk.get_assignment
    get_assignment([::AWSConfig], arguments::Dict)
    get_assignment([::AWSConfig]; AssignmentId=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "GetAssignment", arguments::Dict)
    mturk_requester([::AWSConfig], "GetAssignment", AssignmentId=)

# GetAssignment Operation

The `GetAssignment` operation retrieves the details of the specified Assignment.

# Arguments

## `AssignmentId = ::String` -- *Required*
The ID of the Assignment to be retrieved.




# Returns

`GetAssignmentResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetAssignment)
"""
@inline get_assignment(aws::AWSConfig=default_aws_config(); args...) = get_assignment(aws, args)

@inline get_assignment(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "GetAssignment", args)

@inline get_assignment(args) = get_assignment(default_aws_config(), args)


"""
    using AWSSDK.MTurk.get_file_upload_url
    get_file_upload_url([::AWSConfig], arguments::Dict)
    get_file_upload_url([::AWSConfig]; AssignmentId=, QuestionIdentifier=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "GetFileUploadURL", arguments::Dict)
    mturk_requester([::AWSConfig], "GetFileUploadURL", AssignmentId=, QuestionIdentifier=)

# GetFileUploadURL Operation

The `GetFileUploadURL` operation generates and returns a temporary URL. You use the temporary URL to retrieve a file uploaded by a Worker as an answer to a FileUploadAnswer question for a HIT. The temporary URL is generated the instant the GetFileUploadURL operation is called, and is valid for 60 seconds. You can get a temporary file upload URL any time until the HIT is disposed. After the HIT is disposed, any uploaded files are deleted, and cannot be retrieved. Pending Deprecation on December 12, 2017. The Answer Specification structure will no longer support the `FileUploadAnswer` element to be used for the QuestionForm data structure. Instead, we recommend that Requesters who want to create HITs asking Workers to upload files to use Amazon S3.

# Arguments

## `AssignmentId = ::String` -- *Required*
The ID of the assignment that contains the question with a FileUploadAnswer.


## `QuestionIdentifier = ::String` -- *Required*
The identifier of the question with a FileUploadAnswer, as specified in the QuestionForm of the HIT.




# Returns

`GetFileUploadURLResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetFileUploadURL)
"""
@inline get_file_upload_url(aws::AWSConfig=default_aws_config(); args...) = get_file_upload_url(aws, args)

@inline get_file_upload_url(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "GetFileUploadURL", args)

@inline get_file_upload_url(args) = get_file_upload_url(default_aws_config(), args)


"""
    using AWSSDK.MTurk.get_hit
    get_hit([::AWSConfig], arguments::Dict)
    get_hit([::AWSConfig]; HITId=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "GetHIT", arguments::Dict)
    mturk_requester([::AWSConfig], "GetHIT", HITId=)

# GetHIT Operation

The `GetHIT` operation retrieves the details of the specified HIT.

# Arguments

## `HITId = ::String` -- *Required*
The ID of the HIT to be retrieved.




# Returns

`GetHITResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetHIT)
"""
@inline get_hit(aws::AWSConfig=default_aws_config(); args...) = get_hit(aws, args)

@inline get_hit(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "GetHIT", args)

@inline get_hit(args) = get_hit(default_aws_config(), args)


"""
    using AWSSDK.MTurk.get_qualification_score
    get_qualification_score([::AWSConfig], arguments::Dict)
    get_qualification_score([::AWSConfig]; QualificationTypeId=, WorkerId=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "GetQualificationScore", arguments::Dict)
    mturk_requester([::AWSConfig], "GetQualificationScore", QualificationTypeId=, WorkerId=)

# GetQualificationScore Operation

The `GetQualificationScore` operation returns the value of a Worker's Qualification for a given Qualification type.

To get a Worker's Qualification, you must know the Worker's ID. The Worker's ID is included in the assignment data returned by the `ListAssignmentsForHIT` operation.

Only the owner of a Qualification type can query the value of a Worker's Qualification of that type.

# Arguments

## `QualificationTypeId = ::String` -- *Required*
The ID of the QualificationType.


## `WorkerId = ::String` -- *Required*
The ID of the Worker whose Qualification is being updated.




# Returns

`GetQualificationScoreResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetQualificationScore)
"""
@inline get_qualification_score(aws::AWSConfig=default_aws_config(); args...) = get_qualification_score(aws, args)

@inline get_qualification_score(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "GetQualificationScore", args)

@inline get_qualification_score(args) = get_qualification_score(default_aws_config(), args)


"""
    using AWSSDK.MTurk.get_qualification_type
    get_qualification_type([::AWSConfig], arguments::Dict)
    get_qualification_type([::AWSConfig]; QualificationTypeId=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "GetQualificationType", arguments::Dict)
    mturk_requester([::AWSConfig], "GetQualificationType", QualificationTypeId=)

# GetQualificationType Operation

The `GetQualificationType`operation retrieves information about a Qualification type using its ID.

# Arguments

## `QualificationTypeId = ::String` -- *Required*
The ID of the QualificationType.




# Returns

`GetQualificationTypeResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/GetQualificationType)
"""
@inline get_qualification_type(aws::AWSConfig=default_aws_config(); args...) = get_qualification_type(aws, args)

@inline get_qualification_type(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "GetQualificationType", args)

@inline get_qualification_type(args) = get_qualification_type(default_aws_config(), args)


"""
    using AWSSDK.MTurk.list_assignments_for_hit
    list_assignments_for_hit([::AWSConfig], arguments::Dict)
    list_assignments_for_hit([::AWSConfig]; HITId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "ListAssignmentsForHIT", arguments::Dict)
    mturk_requester([::AWSConfig], "ListAssignmentsForHIT", HITId=, <keyword arguments>)

# ListAssignmentsForHIT Operation

The `ListAssignmentsForHIT` operation retrieves completed assignments for a HIT. You can use this operation to retrieve the results for a HIT.

You can get assignments for a HIT at any time, even if the HIT is not yet Reviewable. If a HIT requested multiple assignments, and has received some results but has not yet become Reviewable, you can still retrieve the partial results with this operation.

Use the AssignmentStatus parameter to control which set of assignments for a HIT are returned. The ListAssignmentsForHIT operation can return submitted assignments awaiting approval, or it can return assignments that have already been approved or rejected. You can set AssignmentStatus=Approved,Rejected to get assignments that have already been approved and rejected together in one result set.

Only the Requester who created the HIT can retrieve the assignments for that HIT.

Results are sorted and divided into numbered pages and the operation returns a single page of results. You can use the parameters of the operation to control sorting and pagination.

# Arguments

## `HITId = ::String` -- *Required*
The ID of the HIT.


## `NextToken = ::String`
Pagination token


## `MaxResults = ::Int`



## `AssignmentStatuses = ["Submitted", "Approved" or "Rejected", ...]`
The status of the assignments to return: Submitted | Approved | Rejected




# Returns

`ListAssignmentsForHITResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListAssignmentsForHIT)
"""
@inline list_assignments_for_hit(aws::AWSConfig=default_aws_config(); args...) = list_assignments_for_hit(aws, args)

@inline list_assignments_for_hit(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "ListAssignmentsForHIT", args)

@inline list_assignments_for_hit(args) = list_assignments_for_hit(default_aws_config(), args)


"""
    using AWSSDK.MTurk.list_bonus_payments
    list_bonus_payments([::AWSConfig], arguments::Dict)
    list_bonus_payments([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "ListBonusPayments", arguments::Dict)
    mturk_requester([::AWSConfig], "ListBonusPayments", <keyword arguments>)

# ListBonusPayments Operation

The `ListBonusPayments` operation retrieves the amounts of bonuses you have paid to Workers for a given HIT or assignment.

# Arguments

## `HITId = ::String`
The ID of the HIT associated with the bonus payments to retrieve. If not specified, all bonus payments for all assignments for the given HIT are returned. Either the HITId parameter or the AssignmentId parameter must be specified


## `AssignmentId = ::String`
The ID of the assignment associated with the bonus payments to retrieve. If specified, only bonus payments for the given assignment are returned. Either the HITId parameter or the AssignmentId parameter must be specified


## `NextToken = ::String`
Pagination token


## `MaxResults = ::Int`





# Returns

`ListBonusPaymentsResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListBonusPayments)
"""
@inline list_bonus_payments(aws::AWSConfig=default_aws_config(); args...) = list_bonus_payments(aws, args)

@inline list_bonus_payments(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "ListBonusPayments", args)

@inline list_bonus_payments(args) = list_bonus_payments(default_aws_config(), args)


"""
    using AWSSDK.MTurk.list_hits
    list_hits([::AWSConfig], arguments::Dict)
    list_hits([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "ListHITs", arguments::Dict)
    mturk_requester([::AWSConfig], "ListHITs", <keyword arguments>)

# ListHITs Operation

The `ListHITs` operation returns all of a Requester's HITs. The operation returns HITs of any status, except for HITs that have been deleted of with the DeleteHIT operation or that have been auto-deleted.

# Arguments

## `NextToken = ::String`
Pagination token


## `MaxResults = ::Int`





# Returns

`ListHITsResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListHITs)
"""
@inline list_hits(aws::AWSConfig=default_aws_config(); args...) = list_hits(aws, args)

@inline list_hits(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "ListHITs", args)

@inline list_hits(args) = list_hits(default_aws_config(), args)


"""
    using AWSSDK.MTurk.list_hits_for_qualification_type
    list_hits_for_qualification_type([::AWSConfig], arguments::Dict)
    list_hits_for_qualification_type([::AWSConfig]; QualificationTypeId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "ListHITsForQualificationType", arguments::Dict)
    mturk_requester([::AWSConfig], "ListHITsForQualificationType", QualificationTypeId=, <keyword arguments>)

# ListHITsForQualificationType Operation

The `ListHITsForQualificationType` operation returns the HITs that use the given Qualification type for a Qualification requirement. The operation returns HITs of any status, except for HITs that have been deleted with the `DeleteHIT` operation or that have been auto-deleted.

# Arguments

## `QualificationTypeId = ::String` -- *Required*
The ID of the Qualification type to use when querying HITs.


## `NextToken = ::String`
Pagination Token


## `MaxResults = ::Int`
Limit the number of results returned.




# Returns

`ListHITsForQualificationTypeResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListHITsForQualificationType)
"""
@inline list_hits_for_qualification_type(aws::AWSConfig=default_aws_config(); args...) = list_hits_for_qualification_type(aws, args)

@inline list_hits_for_qualification_type(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "ListHITsForQualificationType", args)

@inline list_hits_for_qualification_type(args) = list_hits_for_qualification_type(default_aws_config(), args)


"""
    using AWSSDK.MTurk.list_qualification_requests
    list_qualification_requests([::AWSConfig], arguments::Dict)
    list_qualification_requests([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "ListQualificationRequests", arguments::Dict)
    mturk_requester([::AWSConfig], "ListQualificationRequests", <keyword arguments>)

# ListQualificationRequests Operation

The `ListQualificationRequests` operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation.

# Arguments

## `QualificationTypeId = ::String`
The ID of the QualificationType.


## `NextToken = ::String`



## `MaxResults = ::Int`
The maximum number of results to return in a single call.




# Returns

`ListQualificationRequestsResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListQualificationRequests)
"""
@inline list_qualification_requests(aws::AWSConfig=default_aws_config(); args...) = list_qualification_requests(aws, args)

@inline list_qualification_requests(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "ListQualificationRequests", args)

@inline list_qualification_requests(args) = list_qualification_requests(default_aws_config(), args)


"""
    using AWSSDK.MTurk.list_qualification_types
    list_qualification_types([::AWSConfig], arguments::Dict)
    list_qualification_types([::AWSConfig]; MustBeRequestable=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "ListQualificationTypes", arguments::Dict)
    mturk_requester([::AWSConfig], "ListQualificationTypes", MustBeRequestable=, <keyword arguments>)

# ListQualificationTypes Operation

The `ListQualificationTypes` operation returns a list of Qualification types, filtered by an optional search term.

# Arguments

## `Query = ::String`
A text query against all of the searchable attributes of Qualification types.


## `MustBeRequestable = ::Bool` -- *Required*
Specifies that only Qualification types that a user can request through the Amazon Mechanical Turk web site, such as by taking a Qualification test, are returned as results of the search. Some Qualification types, such as those assigned automatically by the system, cannot be requested directly by users. If false, all Qualification types, including those managed by the system, are considered. Valid values are True | False.


## `MustBeOwnedByCaller = ::Bool`
Specifies that only Qualification types that the Requester created are returned. If false, the operation returns all Qualification types.


## `NextToken = ::String`



## `MaxResults = ::Int`
The maximum number of results to return in a single call.




# Returns

`ListQualificationTypesResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListQualificationTypes)
"""
@inline list_qualification_types(aws::AWSConfig=default_aws_config(); args...) = list_qualification_types(aws, args)

@inline list_qualification_types(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "ListQualificationTypes", args)

@inline list_qualification_types(args) = list_qualification_types(default_aws_config(), args)


"""
    using AWSSDK.MTurk.list_review_policy_results_for_hit
    list_review_policy_results_for_hit([::AWSConfig], arguments::Dict)
    list_review_policy_results_for_hit([::AWSConfig]; HITId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "ListReviewPolicyResultsForHIT", arguments::Dict)
    mturk_requester([::AWSConfig], "ListReviewPolicyResultsForHIT", HITId=, <keyword arguments>)

# ListReviewPolicyResultsForHIT Operation

The `ListReviewPolicyResultsForHIT` operation retrieves the computed results and the actions taken in the course of executing your Review Policies for a given HIT. For information about how to specify Review Policies when you call CreateHIT, see Review Policies. The ListReviewPolicyResultsForHIT operation can return results for both Assignment-level and HIT-level review results.

# Arguments

## `HITId = ::String` -- *Required*
The unique identifier of the HIT to retrieve review results for.


## `PolicyLevels = ["Assignment" or "HIT", ...]`
The Policy Level(s) to retrieve review results for - HIT or Assignment. If omitted, the default behavior is to retrieve all data for both policy levels. For a list of all the described policies, see Review Policies.


## `RetrieveActions = ::Bool`
Specify if the operation should retrieve a list of the actions taken executing the Review Policies and their outcomes.


## `RetrieveResults = ::Bool`
Specify if the operation should retrieve a list of the results computed by the Review Policies.


## `NextToken = ::String`
Pagination token


## `MaxResults = ::Int`
Limit the number of results returned.




# Returns

`ListReviewPolicyResultsForHITResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListReviewPolicyResultsForHIT)
"""
@inline list_review_policy_results_for_hit(aws::AWSConfig=default_aws_config(); args...) = list_review_policy_results_for_hit(aws, args)

@inline list_review_policy_results_for_hit(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "ListReviewPolicyResultsForHIT", args)

@inline list_review_policy_results_for_hit(args) = list_review_policy_results_for_hit(default_aws_config(), args)


"""
    using AWSSDK.MTurk.list_reviewable_hits
    list_reviewable_hits([::AWSConfig], arguments::Dict)
    list_reviewable_hits([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "ListReviewableHITs", arguments::Dict)
    mturk_requester([::AWSConfig], "ListReviewableHITs", <keyword arguments>)

# ListReviewableHITs Operation

The `ListReviewableHITs` operation retrieves the HITs with Status equal to Reviewable or Status equal to Reviewing that belong to the Requester calling the operation.

# Arguments

## `HITTypeId = ::String`
The ID of the HIT type of the HITs to consider for the query. If not specified, all HITs for the Reviewer are considered


## `Status = "Reviewable" or "Reviewing"`
Can be either `Reviewable` or `Reviewing`. Reviewable is the default value.


## `NextToken = ::String`
Pagination Token


## `MaxResults = ::Int`
Limit the number of results returned.




# Returns

`ListReviewableHITsResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListReviewableHITs)
"""
@inline list_reviewable_hits(aws::AWSConfig=default_aws_config(); args...) = list_reviewable_hits(aws, args)

@inline list_reviewable_hits(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "ListReviewableHITs", args)

@inline list_reviewable_hits(args) = list_reviewable_hits(default_aws_config(), args)


"""
    using AWSSDK.MTurk.list_worker_blocks
    list_worker_blocks([::AWSConfig], arguments::Dict)
    list_worker_blocks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "ListWorkerBlocks", arguments::Dict)
    mturk_requester([::AWSConfig], "ListWorkerBlocks", <keyword arguments>)

# ListWorkerBlocks Operation

The `ListWorkersBlocks` operation retrieves a list of Workers who are blocked from working on your HITs.

# Arguments

## `NextToken = ::String`
Pagination token


## `MaxResults = ::Int`





# Returns

`ListWorkerBlocksResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListWorkerBlocks)
"""
@inline list_worker_blocks(aws::AWSConfig=default_aws_config(); args...) = list_worker_blocks(aws, args)

@inline list_worker_blocks(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "ListWorkerBlocks", args)

@inline list_worker_blocks(args) = list_worker_blocks(default_aws_config(), args)


"""
    using AWSSDK.MTurk.list_workers_with_qualification_type
    list_workers_with_qualification_type([::AWSConfig], arguments::Dict)
    list_workers_with_qualification_type([::AWSConfig]; QualificationTypeId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "ListWorkersWithQualificationType", arguments::Dict)
    mturk_requester([::AWSConfig], "ListWorkersWithQualificationType", QualificationTypeId=, <keyword arguments>)

# ListWorkersWithQualificationType Operation

The `ListWorkersWithQualificationType` operation returns all of the Workers that have been associated with a given Qualification type.

# Arguments

## `QualificationTypeId = ::String` -- *Required*
The ID of the Qualification type of the Qualifications to return.


## `Status = "Granted" or "Revoked"`
The status of the Qualifications to return. Can be `Granted | Revoked`.


## `NextToken = ::String`
Pagination Token


## `MaxResults = ::Int`
Limit the number of results returned.




# Returns

`ListWorkersWithQualificationTypeResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/ListWorkersWithQualificationType)
"""
@inline list_workers_with_qualification_type(aws::AWSConfig=default_aws_config(); args...) = list_workers_with_qualification_type(aws, args)

@inline list_workers_with_qualification_type(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "ListWorkersWithQualificationType", args)

@inline list_workers_with_qualification_type(args) = list_workers_with_qualification_type(default_aws_config(), args)


"""
    using AWSSDK.MTurk.notify_workers
    notify_workers([::AWSConfig], arguments::Dict)
    notify_workers([::AWSConfig]; Subject=, MessageText=, WorkerIds=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "NotifyWorkers", arguments::Dict)
    mturk_requester([::AWSConfig], "NotifyWorkers", Subject=, MessageText=, WorkerIds=)

# NotifyWorkers Operation

The `NotifyWorkers` operation sends an email to one or more Workers that you specify with the Worker ID. You can specify up to 100 Worker IDs to send the same message with a single call to the NotifyWorkers operation. The NotifyWorkers operation will send a notification email to a Worker only if you have previously approved or rejected work from the Worker.

# Arguments

## `Subject = ::String` -- *Required*
The subject line of the email message to send. Can include up to 200 characters.


## `MessageText = ::String` -- *Required*
The text of the email message to send. Can include up to 4,096 characters


## `WorkerIds = [::String, ...]` -- *Required*
A list of Worker IDs you wish to notify. You can notify upto 100 Workers at a time.




# Returns

`NotifyWorkersResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/NotifyWorkers)
"""
@inline notify_workers(aws::AWSConfig=default_aws_config(); args...) = notify_workers(aws, args)

@inline notify_workers(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "NotifyWorkers", args)

@inline notify_workers(args) = notify_workers(default_aws_config(), args)


"""
    using AWSSDK.MTurk.reject_assignment
    reject_assignment([::AWSConfig], arguments::Dict)
    reject_assignment([::AWSConfig]; AssignmentId=, RequesterFeedback=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "RejectAssignment", arguments::Dict)
    mturk_requester([::AWSConfig], "RejectAssignment", AssignmentId=, RequesterFeedback=)

# RejectAssignment Operation

The `RejectAssignment` operation rejects the results of a completed assignment.

You can include an optional feedback message with the rejection, which the Worker can see in the Status section of the web site. When you include a feedback message with the rejection, it helps the Worker understand why the assignment was rejected, and can improve the quality of the results the Worker submits in the future.

Only the Requester who created the HIT can reject an assignment for the HIT.

# Arguments

## `AssignmentId = ::String` -- *Required*
The ID of the assignment. The assignment must correspond to a HIT created by the Requester.


## `RequesterFeedback = ::String` -- *Required*
A message for the Worker, which the Worker can see in the Status section of the web site.




# Returns

`RejectAssignmentResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/RejectAssignment)
"""
@inline reject_assignment(aws::AWSConfig=default_aws_config(); args...) = reject_assignment(aws, args)

@inline reject_assignment(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "RejectAssignment", args)

@inline reject_assignment(args) = reject_assignment(default_aws_config(), args)


"""
    using AWSSDK.MTurk.reject_qualification_request
    reject_qualification_request([::AWSConfig], arguments::Dict)
    reject_qualification_request([::AWSConfig]; QualificationRequestId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "RejectQualificationRequest", arguments::Dict)
    mturk_requester([::AWSConfig], "RejectQualificationRequest", QualificationRequestId=, <keyword arguments>)

# RejectQualificationRequest Operation

The `RejectQualificationRequest` operation rejects a user's request for a Qualification.

You can provide a text message explaining why the request was rejected. The Worker who made the request can see this message.

# Arguments

## `QualificationRequestId = ::String` -- *Required*
The ID of the Qualification request, as returned by the `ListQualificationRequests` operation.


## `Reason = ::String`
A text message explaining why the request was rejected, to be shown to the Worker who made the request.




# Returns

`RejectQualificationRequestResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/RejectQualificationRequest)
"""
@inline reject_qualification_request(aws::AWSConfig=default_aws_config(); args...) = reject_qualification_request(aws, args)

@inline reject_qualification_request(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "RejectQualificationRequest", args)

@inline reject_qualification_request(args) = reject_qualification_request(default_aws_config(), args)


"""
    using AWSSDK.MTurk.send_bonus
    send_bonus([::AWSConfig], arguments::Dict)
    send_bonus([::AWSConfig]; WorkerId=, BonusAmount=, AssignmentId=, Reason=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "SendBonus", arguments::Dict)
    mturk_requester([::AWSConfig], "SendBonus", WorkerId=, BonusAmount=, AssignmentId=, Reason=, <keyword arguments>)

# SendBonus Operation

The `SendBonus` operation issues a payment of money from your account to a Worker. This payment happens separately from the reward you pay to the Worker when you approve the Worker's assignment. The SendBonus operation requires the Worker's ID and the assignment ID as parameters to initiate payment of the bonus. You must include a message that explains the reason for the bonus payment, as the Worker may not be expecting the payment. Amazon Mechanical Turk collects a fee for bonus payments, similar to the HIT listing fee. This operation fails if your account does not have enough funds to pay for both the bonus and the fees.

# Arguments

## `WorkerId = ::String` -- *Required*
The ID of the Worker being paid the bonus.


## `BonusAmount = ::String` -- *Required*
The Bonus amount is a US Dollar amount specified using a string (for example, "5" represents \$5.00 USD and "101.42" represents \$101.42 USD). Do not include currency symbols or currency codes.


## `AssignmentId = ::String` -- *Required*
The ID of the assignment for which this bonus is paid.


## `Reason = ::String` -- *Required*
A message that explains the reason for the bonus payment. The Worker receiving the bonus can see this message.


## `UniqueRequestToken = ::String`
A unique identifier for this request, which allows you to retry the call on error without granting multiple bonuses. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the bonus already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return an error with a message containing the request ID.




# Returns

`SendBonusResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/SendBonus)
"""
@inline send_bonus(aws::AWSConfig=default_aws_config(); args...) = send_bonus(aws, args)

@inline send_bonus(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "SendBonus", args)

@inline send_bonus(args) = send_bonus(default_aws_config(), args)


"""
    using AWSSDK.MTurk.send_test_event_notification
    send_test_event_notification([::AWSConfig], arguments::Dict)
    send_test_event_notification([::AWSConfig]; Notification=, TestEventType=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "SendTestEventNotification", arguments::Dict)
    mturk_requester([::AWSConfig], "SendTestEventNotification", Notification=, TestEventType=)

# SendTestEventNotification Operation

The `SendTestEventNotification` operation causes Amazon Mechanical Turk to send a notification message as if a HIT event occurred, according to the provided notification specification. This allows you to test notifications without setting up notifications for a real HIT type and trying to trigger them using the website. When you call this operation, the service attempts to send the test notification immediately.

# Arguments

## `Notification = [ ... ]` -- *Required*
The notification specification to test. This value is identical to the value you would provide to the UpdateNotificationSettings operation when you establish the notification specification for a HIT type.
```
 Notification = [
        "Destination" => <required> ::String,
        "Transport" => <required> "Email", "SQS" or "SNS",
        "Version" => <required> ::String,
        "EventTypes" => <required> ["AssignmentAccepted", "AssignmentAbandoned", "AssignmentReturned", "AssignmentSubmitted", "AssignmentRejected", "AssignmentApproved", "HITCreated", "HITExpired", "HITReviewable", "HITExtended", "HITDisposed" or "Ping", ...]
    ]
```

## `TestEventType = "AssignmentAccepted", "AssignmentAbandoned", "AssignmentReturned", "AssignmentSubmitted", "AssignmentRejected", "AssignmentApproved", "HITCreated", "HITExpired", "HITReviewable", "HITExtended", "HITDisposed" or "Ping"` -- *Required*
The event to simulate to test the notification specification. This event is included in the test message even if the notification specification does not include the event type. The notification specification does not filter out the test event.




# Returns

`SendTestEventNotificationResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/SendTestEventNotification)
"""
@inline send_test_event_notification(aws::AWSConfig=default_aws_config(); args...) = send_test_event_notification(aws, args)

@inline send_test_event_notification(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "SendTestEventNotification", args)

@inline send_test_event_notification(args) = send_test_event_notification(default_aws_config(), args)


"""
    using AWSSDK.MTurk.update_expiration_for_hit
    update_expiration_for_hit([::AWSConfig], arguments::Dict)
    update_expiration_for_hit([::AWSConfig]; HITId=, ExpireAt=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "UpdateExpirationForHIT", arguments::Dict)
    mturk_requester([::AWSConfig], "UpdateExpirationForHIT", HITId=, ExpireAt=)

# UpdateExpirationForHIT Operation

The `UpdateExpirationForHIT` operation allows you update the expiration time of a HIT. If you update it to a time in the past, the HIT will be immediately expired.

# Arguments

## `HITId = ::String` -- *Required*
The HIT to update.


## `ExpireAt = timestamp` -- *Required*
The date and time at which you want the HIT to expire




# Returns

`UpdateExpirationForHITResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateExpirationForHIT)
"""
@inline update_expiration_for_hit(aws::AWSConfig=default_aws_config(); args...) = update_expiration_for_hit(aws, args)

@inline update_expiration_for_hit(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "UpdateExpirationForHIT", args)

@inline update_expiration_for_hit(args) = update_expiration_for_hit(default_aws_config(), args)


"""
    using AWSSDK.MTurk.update_hitreview_status
    update_hitreview_status([::AWSConfig], arguments::Dict)
    update_hitreview_status([::AWSConfig]; HITId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "UpdateHITReviewStatus", arguments::Dict)
    mturk_requester([::AWSConfig], "UpdateHITReviewStatus", HITId=, <keyword arguments>)

# UpdateHITReviewStatus Operation

The `UpdateHITReviewStatus` operation updates the status of a HIT. If the status is Reviewable, this operation can update the status to Reviewing, or it can revert a Reviewing HIT back to the Reviewable status.

# Arguments

## `HITId = ::String` -- *Required*
The ID of the HIT to update.


## `Revert = ::Bool`
Specifies how to update the HIT status. Default is `False`.

*   Setting this to false will only transition a HIT from `Reviewable` to `Reviewing`

*   Setting this to true will only transition a HIT from `Reviewing` to `Reviewable`




# Returns

`UpdateHITReviewStatusResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateHITReviewStatus)
"""
@inline update_hitreview_status(aws::AWSConfig=default_aws_config(); args...) = update_hitreview_status(aws, args)

@inline update_hitreview_status(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "UpdateHITReviewStatus", args)

@inline update_hitreview_status(args) = update_hitreview_status(default_aws_config(), args)


"""
    using AWSSDK.MTurk.update_hittype_of_hit
    update_hittype_of_hit([::AWSConfig], arguments::Dict)
    update_hittype_of_hit([::AWSConfig]; HITId=, HITTypeId=)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "UpdateHITTypeOfHIT", arguments::Dict)
    mturk_requester([::AWSConfig], "UpdateHITTypeOfHIT", HITId=, HITTypeId=)

# UpdateHITTypeOfHIT Operation

The `UpdateHITTypeOfHIT` operation allows you to change the HITType properties of a HIT. This operation disassociates the HIT from its old HITType properties and associates it with the new HITType properties. The HIT takes on the properties of the new HITType in place of the old ones.

# Arguments

## `HITId = ::String` -- *Required*
The HIT to update.


## `HITTypeId = ::String` -- *Required*
The ID of the new HIT type.




# Returns

`UpdateHITTypeOfHITResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateHITTypeOfHIT)
"""
@inline update_hittype_of_hit(aws::AWSConfig=default_aws_config(); args...) = update_hittype_of_hit(aws, args)

@inline update_hittype_of_hit(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "UpdateHITTypeOfHIT", args)

@inline update_hittype_of_hit(args) = update_hittype_of_hit(default_aws_config(), args)


"""
    using AWSSDK.MTurk.update_notification_settings
    update_notification_settings([::AWSConfig], arguments::Dict)
    update_notification_settings([::AWSConfig]; HITTypeId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "UpdateNotificationSettings", arguments::Dict)
    mturk_requester([::AWSConfig], "UpdateNotificationSettings", HITTypeId=, <keyword arguments>)

# UpdateNotificationSettings Operation

The `UpdateNotificationSettings` operation creates, updates, disables or re-enables notifications for a HIT type. If you call the UpdateNotificationSettings operation for a HIT type that already has a notification specification, the operation replaces the old specification with a new one. You can call the UpdateNotificationSettings operation to enable or disable notifications for the HIT type, without having to modify the notification specification itself by providing updates to the Active status without specifying a new notification specification. To change the Active status of a HIT type's notifications, the HIT type must already have a notification specification, or one must be provided in the same call to `UpdateNotificationSettings`.

# Arguments

## `HITTypeId = ::String` -- *Required*
The ID of the HIT type whose notification specification is being updated.


## `Notification = [ ... ]`
The notification specification for the HIT type.
```
 Notification = [
        "Destination" => <required> ::String,
        "Transport" => <required> "Email", "SQS" or "SNS",
        "Version" => <required> ::String,
        "EventTypes" => <required> ["AssignmentAccepted", "AssignmentAbandoned", "AssignmentReturned", "AssignmentSubmitted", "AssignmentRejected", "AssignmentApproved", "HITCreated", "HITExpired", "HITReviewable", "HITExtended", "HITDisposed" or "Ping", ...]
    ]
```

## `Active = ::Bool`
Specifies whether notifications are sent for HITs of this HIT type, according to the notification specification. You must specify either the Notification parameter or the Active parameter for the call to UpdateNotificationSettings to succeed.




# Returns

`UpdateNotificationSettingsResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateNotificationSettings)
"""
@inline update_notification_settings(aws::AWSConfig=default_aws_config(); args...) = update_notification_settings(aws, args)

@inline update_notification_settings(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "UpdateNotificationSettings", args)

@inline update_notification_settings(args) = update_notification_settings(default_aws_config(), args)


"""
    using AWSSDK.MTurk.update_qualification_type
    update_qualification_type([::AWSConfig], arguments::Dict)
    update_qualification_type([::AWSConfig]; QualificationTypeId=, <keyword arguments>)

    using AWSCore.Services.mturk_requester
    mturk_requester([::AWSConfig], "UpdateQualificationType", arguments::Dict)
    mturk_requester([::AWSConfig], "UpdateQualificationType", QualificationTypeId=, <keyword arguments>)

# UpdateQualificationType Operation

The `UpdateQualificationType` operation modifies the attributes of an existing Qualification type, which is represented by a QualificationType data structure. Only the owner of a Qualification type can modify its attributes.

Most attributes of a Qualification type can be changed after the type has been created. However, the Name and Keywords fields cannot be modified. The RetryDelayInSeconds parameter can be modified or added to change the delay or to enable retries, but RetryDelayInSeconds cannot be used to disable retries.

You can use this operation to update the test for a Qualification type. The test is updated based on the values specified for the Test, TestDurationInSeconds and AnswerKey parameters. All three parameters specify the updated test. If you are updating the test for a type, you must specify the Test and TestDurationInSeconds parameters. The AnswerKey parameter is optional; omitting it specifies that the updated test does not have an answer key.

If you omit the Test parameter, the test for the Qualification type is unchanged. There is no way to remove a test from a Qualification type that has one. If the type already has a test, you cannot update it to be AutoGranted. If the Qualification type does not have a test and one is provided by an update, the type will henceforth have a test.

If you want to update the test duration or answer key for an existing test without changing the questions, you must specify a Test parameter with the original questions, along with the updated values.

If you provide an updated Test but no AnswerKey, the new test will not have an answer key. Requests for such Qualifications must be granted manually.

You can also update the AutoGranted and AutoGrantedValue attributes of the Qualification type.

# Arguments

## `QualificationTypeId = ::String` -- *Required*
The ID of the Qualification type to update.


## `Description = ::String`
The new description of the Qualification type.


## `QualificationTypeStatus = "Active" or "Inactive"`
The new status of the Qualification type - Active | Inactive


## `Test = ::String`
The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, `TestDurationInSeconds` must also be specified.

Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.

Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.


## `AnswerKey = ::String`
The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.


## `TestDurationInSeconds = ::Int`
The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.


## `RetryDelayInSeconds = ::Int`
The amount of time, in seconds, that Workers must wait after requesting a Qualification of the specified Qualification type before they can retry the Qualification request. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must dispose of the existing retry-enabled Qualification type using DisposeQualificationType and then create a new Qualification type with retries disabled using CreateQualificationType.


## `AutoGranted = ::Bool`
Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.

Constraints: If the Test parameter is specified, this parameter cannot be true.


## `AutoGrantedValue = ::Int`
The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.




# Returns

`UpdateQualificationTypeResponse`

# Exceptions

`ServiceFault` or `RequestError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mturk-requester-2017-01-17/UpdateQualificationType)
"""
@inline update_qualification_type(aws::AWSConfig=default_aws_config(); args...) = update_qualification_type(aws, args)

@inline update_qualification_type(aws::AWSConfig, args) = AWSCore.Services.mturk_requester(aws, "UpdateQualificationType", args)

@inline update_qualification_type(args) = update_qualification_type(default_aws_config(), args)




end # module MTurk


#==============================================================================#
# End of file
#==============================================================================#
