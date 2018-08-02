#==============================================================================#
# SQS.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/sqs-2012-11-05.normal.json
#==============================================================================#

__precompile__()

module SQS

using AWSCore


"""
    using AWSSDK.SQS.add_permission
    add_permission([::AWSConfig], arguments::Dict)
    add_permission([::AWSConfig]; QueueUrl=, Label=, AWSAccountId=, ActionName=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "AddPermission", arguments::Dict)
    sqs([::AWSConfig], "AddPermission", QueueUrl=, Label=, AWSAccountId=, ActionName=)

# AddPermission Operation

Adds a permission to a queue for a specific [principal](http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P). This allows sharing access to the queue.

When you create a queue, you have full control access rights for the queue. Only you, the owner of the queue, can grant or deny permissions to the queue. For more information about these permissions, see [Shared Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html) in the *Amazon Simple Queue Service Developer Guide*.

**Note**
> `AddPermission` writes an Amazon-SQS-generated policy. If you want to write your own policy, use `[SetQueueAttributes](@ref)` to upload your policy. For more information about writing your own policy, see [Using The Access Policy Language](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AccessPolicyLanguage.html) in the *Amazon Simple Queue Service Developer Guide*.

Some actions take lists of parameters. These lists are specified using the `param.n` notation. Values of `n` are integers starting from 1. For example, a parameter list with two elements looks like this:

`&Attribute.1=this`

`&Attribute.2=that`

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the Amazon SQS queue to which permissions are added.

Queue URLs are case-sensitive.


## `Label = ::String` -- *Required*
The unique identification of the permission you're setting (for example, `AliceSendMessage`). Maximum 80 characters. Allowed characters include alphanumeric characters, hyphens (`-`), and underscores (`_`).


## `AWSAccountId = [::String, ...]` -- *Required*
The AWS account number of the [principal](http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P) who is given permission. The principal must have an AWS account, but does not need to be signed up for Amazon SQS. For information about locating the AWS account identification, see [Your AWS Identifiers](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AWSCredentials.html) in the *Amazon Simple Queue Service Developer Guide*.


## `ActionName = [::String, ...]` -- *Required*
The action the client wants to allow for the specified principal. The following values are valid:

*   `*`

*   `ChangeMessageVisibility`

*   `DeleteMessage`

*   `GetQueueAttributes`

*   `GetQueueUrl`

*   `ReceiveMessage`

*   `SendMessage`

For more information about these actions, see [Understanding Permissions](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html#PermissionTypes) in the *Amazon Simple Queue Service Developer Guide*.

Specifying `SendMessage`, `DeleteMessage`, or `ChangeMessageVisibility` for `ActionName.n` also grants permissions for the corresponding batch versions of those actions: `SendMessageBatch`, `DeleteMessageBatch`, and `ChangeMessageVisibilityBatch`.




# Exceptions

`OverLimit`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/AddPermission)
"""
@inline add_permission(aws::AWSConfig=default_aws_config(); args...) = add_permission(aws, args)

@inline add_permission(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "AddPermission", args)

@inline add_permission(args) = add_permission(default_aws_config(), args)


"""
    using AWSSDK.SQS.change_message_visibility
    change_message_visibility([::AWSConfig], arguments::Dict)
    change_message_visibility([::AWSConfig]; QueueUrl=, ReceiptHandle=, VisibilityTimeout=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "ChangeMessageVisibility", arguments::Dict)
    sqs([::AWSConfig], "ChangeMessageVisibility", QueueUrl=, ReceiptHandle=, VisibilityTimeout=)

# ChangeMessageVisibility Operation

Changes the visibility timeout of a specified message in a queue to a new value. The maximum allowed timeout value is 12 hours. Thus, you can't extend the timeout of a message in an existing queue to more than a total visibility timeout of 12 hours. For more information, see [Visibility Timeout](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html) in the *Amazon Simple Queue Service Developer Guide*.

For example, you have a message with a visibility timeout of 5 minutes. After 3 minutes, you call `ChangeMessageVisiblity` with a timeout of 10 minutes. At that time, the timeout for the message is extended by 10 minutes beyond the time of the `ChangeMessageVisibility` action. This results in a total visibility timeout of 13 minutes. You can continue to call the `ChangeMessageVisibility` to extend the visibility timeout to a maximum of 12 hours. If you try to extend the visibility timeout beyond 12 hours, your request is rejected.

A message is considered to be *in flight* after it's received from a queue by a consumer, but not yet deleted from the queue.

For standard queues, there can be a maximum of 120,000 inflight messages per queue. If you reach this limit, Amazon SQS returns the `OverLimit` error message. To avoid reaching the limit, you should delete messages from the queue after they're processed. You can also increase the number of queues you use to process your messages.

For FIFO queues, there can be a maximum of 20,000 inflight messages per queue. If you reach this limit, Amazon SQS returns no error messages.

**Important**
> If you attempt to set the `VisibilityTimeout` to a value greater than the maximum time left, Amazon SQS returns an error. Amazon SQS doesn't automatically recalculate and increase the timeout to the maximum remaining time.

Unlike with a queue, when you change the visibility timeout for a specific message the timeout value is applied immediately but isn't saved in memory for that message. If you don't delete a message after it is received, the visibility timeout for the message reverts to the original timeout value (not to the value you set using the `ChangeMessageVisibility` action) the next time the message is received.

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the Amazon SQS queue whose message's visibility is changed.

Queue URLs are case-sensitive.


## `ReceiptHandle = ::String` -- *Required*
The receipt handle associated with the message whose visibility timeout is changed. This parameter is returned by the `[ReceiveMessage](@ref)` action.


## `VisibilityTimeout = ::Int` -- *Required*
The new value for the message's visibility timeout (in seconds). Values values: `0` to `43200`. Maximum: 12 hours.




# Exceptions

`MessageNotInflight` or `ReceiptHandleIsInvalid`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ChangeMessageVisibility)
"""
@inline change_message_visibility(aws::AWSConfig=default_aws_config(); args...) = change_message_visibility(aws, args)

@inline change_message_visibility(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "ChangeMessageVisibility", args)

@inline change_message_visibility(args) = change_message_visibility(default_aws_config(), args)


"""
    using AWSSDK.SQS.change_message_visibility_batch
    change_message_visibility_batch([::AWSConfig], arguments::Dict)
    change_message_visibility_batch([::AWSConfig]; QueueUrl=, ChangeMessageVisibilityBatchRequestEntry=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "ChangeMessageVisibilityBatch", arguments::Dict)
    sqs([::AWSConfig], "ChangeMessageVisibilityBatch", QueueUrl=, ChangeMessageVisibilityBatchRequestEntry=)

# ChangeMessageVisibilityBatch Operation

Changes the visibility timeout of multiple messages. This is a batch version of `[ChangeMessageVisibility](@ref).` The result of the action on each message is reported individually in the response. You can send up to 10 `[ChangeMessageVisibility](@ref)` requests with each `ChangeMessageVisibilityBatch` action.

**Important**
> Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of `200`.

**Note**
> Some actions take lists of parameters. These lists are specified using the `param.n` notation. Values of `n` are integers starting from 1. For example, a parameter list with two elements looks like this:

`&Attribute.1=this`

`&Attribute.2=that`

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the Amazon SQS queue whose messages' visibility is changed.

Queue URLs are case-sensitive.


## `ChangeMessageVisibilityBatchRequestEntry = [[ ... ], ...]` -- *Required*
A list of receipt handles of the messages for which the visibility timeout must be changed.
```
 ChangeMessageVisibilityBatchRequestEntry = [[
        "Id" => <required> ::String,
        "ReceiptHandle" => <required> ::String,
        "VisibilityTimeout" =>  ::Int
    ], ...]
```



# Returns

`ChangeMessageVisibilityBatchResult`

# Exceptions

`TooManyEntriesInBatchRequest`, `EmptyBatchRequest`, `BatchEntryIdsNotDistinct` or `InvalidBatchEntryId`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ChangeMessageVisibilityBatch)
"""
@inline change_message_visibility_batch(aws::AWSConfig=default_aws_config(); args...) = change_message_visibility_batch(aws, args)

@inline change_message_visibility_batch(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "ChangeMessageVisibilityBatch", args)

@inline change_message_visibility_batch(args) = change_message_visibility_batch(default_aws_config(), args)


"""
    using AWSSDK.SQS.create_queue
    create_queue([::AWSConfig], arguments::Dict)
    create_queue([::AWSConfig]; QueueName=, <keyword arguments>)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "CreateQueue", arguments::Dict)
    sqs([::AWSConfig], "CreateQueue", QueueName=, <keyword arguments>)

# CreateQueue Operation

Creates a new standard or FIFO queue. You can pass one or more attributes in the request. Keep the following caveats in mind:

*   If you don't specify the `FifoQueue` attribute, Amazon SQS creates a standard queue.

    **Note**
    > You can't change the queue type after you create it and you can't convert an existing standard queue into a FIFO queue. You must either create a new FIFO queue for your application or delete your existing standard queue and recreate it as a FIFO queue. For more information, see [Moving From a Standard Queue to a FIFO Queue](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-moving) in the *Amazon Simple Queue Service Developer Guide*.

*   If you don't provide a value for an attribute, the queue is created with the default value for the attribute.

*   If you delete a queue, you must wait at least 60 seconds before creating a queue with the same name.

To successfully create a new queue, you must provide a queue name that adheres to the [limits related to queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html) and is unique within the scope of your queues.

To get the queue URL, use the `[GetQueueUrl](@ref)` action. `[GetQueueUrl](@ref)` requires only the `QueueName` parameter. be aware of existing queue names:

*   If you provide the name of an existing queue along with the exact names and values of all the queue's attributes, `CreateQueue` returns the queue URL for the existing queue.

*   If the queue name, attribute names, or attribute values don't match an existing queue, `CreateQueue` returns an error.

**Note**
> Some actions take lists of parameters. These lists are specified using the `param.n` notation. Values of `n` are integers starting from 1. For example, a parameter list with two elements looks like this:

`&Attribute.1=this`

`&Attribute.2=that`

# Arguments

## `QueueName = ::String` -- *Required*
The name of the new queue. The following limits apply to this name:

*   A queue name can have up to 80 characters.

*   Valid values: alphanumeric characters, hyphens (`-`), and underscores (`_`).

*   A FIFO queue name must end with the `.fifo` suffix.

Queue names are case-sensitive.


## `Attribute = ::Dict{String,String}`
A map of attributes with their corresponding values.

The following lists the names, descriptions, and values of the special request parameters that the `CreateQueue` action uses:

*   `DelaySeconds` - The length of time, in seconds, for which the delivery of all messages in the queue is delayed. Valid values: An integer from 0 to 900 seconds (15 minutes). The default is 0 (zero).

*   `MaximumMessageSize` - The limit of how many bytes a message can contain before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes (1 KiB) to 262,144 bytes (256 KiB). The default is 262,144 (256 KiB).

*   `MessageRetentionPeriod` - The length of time, in seconds, for which Amazon SQS retains a message. Valid values: An integer from 60 seconds (1 minute) to 1,209,600 seconds (14 days). The default is 345,600 (4 days).

*   `Policy` - The queue's policy. A valid AWS policy. For more information about policy structure, see [Overview of AWS IAM Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html) in the *Amazon IAM User Guide*.

*   `ReceiveMessageWaitTimeSeconds` - The length of time, in seconds, for which a `[ReceiveMessage](@ref)` action waits for a message to arrive. Valid values: An integer from 0 to 20 (seconds). The default is 0 (zero).

*   `RedrivePolicy` - The string that includes the parameters for the dead-letter queue functionality of the source queue. For more information about the redrive policy and dead-letter queues, see [Using Amazon SQS Dead-Letter Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html) in the *Amazon Simple Queue Service Developer Guide*.

    *   `deadLetterTargetArn` - The Amazon Resource Name (ARN) of the dead-letter queue to which Amazon SQS moves messages after the value of `maxReceiveCount` is exceeded.

    *   `maxReceiveCount` - The number of times a message is delivered to the source queue before being moved to the dead-letter queue.

    **Note**
    > The dead-letter queue of a FIFO queue must also be a FIFO queue. Similarly, the dead-letter queue of a standard queue must also be a standard queue.

*   `VisibilityTimeout` - The visibility timeout for the queue. Valid values: An integer from 0 to 43,200 (12 hours). The default is 30. For more information about the visibility timeout, see [Visibility Timeout](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html) in the *Amazon Simple Queue Service Developer Guide*.

The following attributes apply only to [server-side-encryption](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html):

*   `KmsMasterKeyId` - The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see [Key Terms](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms). While the alias of the AWS-managed CMK for Amazon SQS is always `alias/aws/sqs`, the alias of a custom CMK can, for example, be `alias/*MyAlias*` . For more examples, see [KeyId](http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters) in the *AWS Key Management Service API Reference*.

*   `KmsDataKeyReusePeriodSeconds` - The length of time, in seconds, for which Amazon SQS can reuse a [data key](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys) to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes). A shorter time period provides better security but results in more calls to KMS which might incur charges after Free Tier. For more information, see [How Does the Data Key Reuse Period Work?](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work).

The following attributes apply only to [FIFO (first-in-first-out) queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html):

*   `FifoQueue` - Designates a queue as FIFO. Valid values: `true`, `false`. You can provide this attribute only during queue creation. You can't change it for an existing queue. When you set this attribute, you must also provide the `MessageGroupId` for your messages explicitly.

    For more information, see [FIFO Queue Logic](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic) in the *Amazon Simple Queue Service Developer Guide*.

*   `ContentBasedDeduplication` - Enables content-based deduplication. Valid values: `true`, `false`. For more information, see [Exactly-Once Processing](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing) in the *Amazon Simple Queue Service Developer Guide*.

    *   Every message must have a unique `MessageDeduplicationId`,

        *   You may provide a `MessageDeduplicationId` explicitly.

        *   If you aren't able to provide a `MessageDeduplicationId` and you enable `ContentBasedDeduplication` for your queue, Amazon SQS uses a SHA-256 hash to generate the `MessageDeduplicationId` using the body of the message (but not the attributes of the message).

        *   If you don't provide a `MessageDeduplicationId` and the queue doesn't have `ContentBasedDeduplication` set, the action fails with an error.

        *   If the queue has `ContentBasedDeduplication` set, your `MessageDeduplicationId` overrides the generated one.

    *   When `ContentBasedDeduplication` is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.

    *   If you send one message with `ContentBasedDeduplication` enabled and then another message with a `MessageDeduplicationId` that is the same as the one generated for the first `MessageDeduplicationId`, the two messages are treated as duplicates and only one copy of the message is delivered.

Any other valid special request parameters (such as the following) are ignored:

*   `ApproximateNumberOfMessages`

*   `ApproximateNumberOfMessagesDelayed`

*   `ApproximateNumberOfMessagesNotVisible`

*   `CreatedTimestamp`

*   `LastModifiedTimestamp`

*   `QueueArn`




# Returns

`CreateQueueResult`

# Exceptions

`QueueDeletedRecently` or `QueueNameExists`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/CreateQueue)
"""
@inline create_queue(aws::AWSConfig=default_aws_config(); args...) = create_queue(aws, args)

@inline create_queue(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "CreateQueue", args)

@inline create_queue(args) = create_queue(default_aws_config(), args)


"""
    using AWSSDK.SQS.delete_message
    delete_message([::AWSConfig], arguments::Dict)
    delete_message([::AWSConfig]; QueueUrl=, ReceiptHandle=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "DeleteMessage", arguments::Dict)
    sqs([::AWSConfig], "DeleteMessage", QueueUrl=, ReceiptHandle=)

# DeleteMessage Operation

Deletes the specified message from the specified queue. You specify the message by using the message's *receipt handle* and not the *MessageId* you receive when you send the message. Even if the message is locked by another reader due to the visibility timeout setting, it is still deleted from the queue. If you leave a message in the queue for longer than the queue's configured retention period, Amazon SQS automatically deletes the message.

**Note**
> The receipt handle is associated with a specific instance of receiving the message. If you receive a message more than once, the receipt handle you get each time you receive the message is different. If you don't provide the most recently received receipt handle for the message when you use the `DeleteMessage` action, the request succeeds, but the message might not be deleted.

For standard queues, it is possible to receive a message even after you delete it. This might happen on rare occasions if one of the servers storing a copy of the message is unavailable when you send the request to delete the message. The copy remains on the server and might be returned to you on a subsequent receive request. You should ensure that your application is idempotent, so that receiving a message more than once does not cause issues.

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the Amazon SQS queue from which messages are deleted.

Queue URLs are case-sensitive.


## `ReceiptHandle = ::String` -- *Required*
The receipt handle associated with the message to delete.




# Exceptions

`InvalidIdFormat` or `ReceiptHandleIsInvalid`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/DeleteMessage)
"""
@inline delete_message(aws::AWSConfig=default_aws_config(); args...) = delete_message(aws, args)

@inline delete_message(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "DeleteMessage", args)

@inline delete_message(args) = delete_message(default_aws_config(), args)


"""
    using AWSSDK.SQS.delete_message_batch
    delete_message_batch([::AWSConfig], arguments::Dict)
    delete_message_batch([::AWSConfig]; QueueUrl=, DeleteMessageBatchRequestEntry=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "DeleteMessageBatch", arguments::Dict)
    sqs([::AWSConfig], "DeleteMessageBatch", QueueUrl=, DeleteMessageBatchRequestEntry=)

# DeleteMessageBatch Operation

Deletes up to ten messages from the specified queue. This is a batch version of `[DeleteMessage](@ref).` The result of the action on each message is reported individually in the response.

**Important**
> Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of `200`.

**Note**
> Some actions take lists of parameters. These lists are specified using the `param.n` notation. Values of `n` are integers starting from 1. For example, a parameter list with two elements looks like this:

`&Attribute.1=this`

`&Attribute.2=that`

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the Amazon SQS queue from which messages are deleted.

Queue URLs are case-sensitive.


## `DeleteMessageBatchRequestEntry = [[ ... ], ...]` -- *Required*
A list of receipt handles for the messages to be deleted.
```
 DeleteMessageBatchRequestEntry = [[
        "Id" => <required> ::String,
        "ReceiptHandle" => <required> ::String
    ], ...]
```



# Returns

`DeleteMessageBatchResult`

# Exceptions

`TooManyEntriesInBatchRequest`, `EmptyBatchRequest`, `BatchEntryIdsNotDistinct` or `InvalidBatchEntryId`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/DeleteMessageBatch)
"""
@inline delete_message_batch(aws::AWSConfig=default_aws_config(); args...) = delete_message_batch(aws, args)

@inline delete_message_batch(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "DeleteMessageBatch", args)

@inline delete_message_batch(args) = delete_message_batch(default_aws_config(), args)


"""
    using AWSSDK.SQS.delete_queue
    delete_queue([::AWSConfig], arguments::Dict)
    delete_queue([::AWSConfig]; QueueUrl=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "DeleteQueue", arguments::Dict)
    sqs([::AWSConfig], "DeleteQueue", QueueUrl=)

# DeleteQueue Operation

Deletes the queue specified by the `QueueUrl`, regardless of the queue's contents. If the specified queue doesn't exist, Amazon SQS returns a successful response.

**Important**
> Be careful with the `DeleteQueue` action: When you delete a queue, any messages in the queue are no longer available.

When you delete a queue, the deletion process takes up to 60 seconds. Requests you send involving that queue during the 60 seconds might succeed. For example, a `[SendMessage](@ref)` request might succeed, but after 60 seconds the queue and the message you sent no longer exist.

When you delete a queue, you must wait at least 60 seconds before creating a queue with the same name.

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the Amazon SQS queue to delete.

Queue URLs are case-sensitive.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/DeleteQueue)
"""
@inline delete_queue(aws::AWSConfig=default_aws_config(); args...) = delete_queue(aws, args)

@inline delete_queue(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "DeleteQueue", args)

@inline delete_queue(args) = delete_queue(default_aws_config(), args)


"""
    using AWSSDK.SQS.get_queue_attributes
    get_queue_attributes([::AWSConfig], arguments::Dict)
    get_queue_attributes([::AWSConfig]; QueueUrl=, <keyword arguments>)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "GetQueueAttributes", arguments::Dict)
    sqs([::AWSConfig], "GetQueueAttributes", QueueUrl=, <keyword arguments>)

# GetQueueAttributes Operation

Gets attributes for the specified queue.

**Note**
> To determine whether a queue is [FIFO](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html), you can check whether `QueueName` ends with the `.fifo` suffix.

**Note**
> Some actions take lists of parameters. These lists are specified using the `param.n` notation. Values of `n` are integers starting from 1. For example, a parameter list with two elements looks like this:

`&Attribute.1=this`

`&Attribute.2=that`

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the Amazon SQS queue whose attribute information is retrieved.

Queue URLs are case-sensitive.


## `AttributeName = ["All", "Policy", "VisibilityTimeout", "MaximumMessageSize", "MessageRetentionPeriod", "ApproximateNumberOfMessages", "ApproximateNumberOfMessagesNotVisible", "CreatedTimestamp", "LastModifiedTimestamp", "QueueArn", "ApproximateNumberOfMessagesDelayed", "DelaySeconds", "ReceiveMessageWaitTimeSeconds", "RedrivePolicy", "FifoQueue", "ContentBasedDeduplication", "KmsMasterKeyId" or "KmsDataKeyReusePeriodSeconds", ...]`
A list of attributes for which to retrieve information.

**Note**
> In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.

The following attributes are supported:

*   `All` - Returns all values.

*   `ApproximateNumberOfMessages` - Returns the approximate number of visible messages in a queue. For more information, see [Resources Required to Process Messages](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-resources-required-process-messages.html) in the *Amazon Simple Queue Service Developer Guide*.

*   `ApproximateNumberOfMessagesDelayed` - Returns the approximate number of messages that are waiting to be added to the queue.

*   `ApproximateNumberOfMessagesNotVisible` - Returns the approximate number of messages that have not timed-out and aren't deleted. For more information, see [Resources Required to Process Messages](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-resources-required-process-messages.html) in the *Amazon Simple Queue Service Developer Guide*.

*   `CreatedTimestamp` - Returns the time when the queue was created in seconds ([epoch time](http://en.wikipedia.org/wiki/Unix_time)).

*   `DelaySeconds` - Returns the default delay on the queue in seconds.

*   `LastModifiedTimestamp` - Returns the time when the queue was last changed in seconds ([epoch time](http://en.wikipedia.org/wiki/Unix_time)).

*   `MaximumMessageSize` - Returns the limit of how many bytes a message can contain before Amazon SQS rejects it.

*   `MessageRetentionPeriod` - Returns the length of time, in seconds, for which Amazon SQS retains a message.

*   `Policy` - Returns the policy of the queue.

*   `QueueArn` - Returns the Amazon resource name (ARN) of the queue.

*   `ReceiveMessageWaitTimeSeconds` - Returns the length of time, in seconds, for which the `ReceiveMessage` action waits for a message to arrive.

*   `RedrivePolicy` - Returns the string that includes the parameters for dead-letter queue functionality of the source queue. For more information about the redrive policy and dead-letter queues, see [Using Amazon SQS Dead-Letter Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html) in the *Amazon Simple Queue Service Developer Guide*.

    *   `deadLetterTargetArn` - The Amazon Resource Name (ARN) of the dead-letter queue to which Amazon SQS moves messages after the value of `maxReceiveCount` is exceeded.

    *   `maxReceiveCount` - The number of times a message is delivered to the source queue before being moved to the dead-letter queue.

*   `VisibilityTimeout` - Returns the visibility timeout for the queue. For more information about the visibility timeout, see [Visibility Timeout](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html) in the *Amazon Simple Queue Service Developer Guide*.

The following attributes apply only to [server-side-encryption](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html):

*   `KmsMasterKeyId` - Returns the ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see [Key Terms](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms).

*   `KmsDataKeyReusePeriodSeconds` - Returns the length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. For more information, see [How Does the Data Key Reuse Period Work?](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work).

The following attributes apply only to [FIFO (first-in-first-out) queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html):

*   `FifoQueue` - Returns whether the queue is FIFO. For more information, see [FIFO Queue Logic](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic) in the *Amazon Simple Queue Service Developer Guide*.

    **Note**
    > To determine whether a queue is [FIFO](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html), you can check whether `QueueName` ends with the `.fifo` suffix.

*   `ContentBasedDeduplication` - Returns whether content-based deduplication is enabled for the queue. For more information, see [Exactly-Once Processing](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing) in the *Amazon Simple Queue Service Developer Guide*.




# Returns

`GetQueueAttributesResult`

# Exceptions

`InvalidAttributeName`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/GetQueueAttributes)
"""
@inline get_queue_attributes(aws::AWSConfig=default_aws_config(); args...) = get_queue_attributes(aws, args)

@inline get_queue_attributes(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "GetQueueAttributes", args)

@inline get_queue_attributes(args) = get_queue_attributes(default_aws_config(), args)


"""
    using AWSSDK.SQS.get_queue_url
    get_queue_url([::AWSConfig], arguments::Dict)
    get_queue_url([::AWSConfig]; QueueName=, <keyword arguments>)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "GetQueueUrl", arguments::Dict)
    sqs([::AWSConfig], "GetQueueUrl", QueueName=, <keyword arguments>)

# GetQueueUrl Operation

Returns the URL of an existing queue. This action provides a simple way to retrieve the URL of an Amazon SQS queue.

To access a queue that belongs to another AWS account, use the `QueueOwnerAWSAccountId` parameter to specify the account ID of the queue's owner. The queue's owner must grant you permission to access the queue. For more information about shared queue access, see `[AddPermission](@ref)` or see [Shared Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html) in the *Amazon Simple Queue Service Developer Guide*.

# Arguments

## `QueueName = ::String` -- *Required*
The name of the queue whose URL must be fetched. Maximum 80 characters. Valid values: alphanumeric characters, hyphens (`-`), and underscores (`_`).

Queue names are case-sensitive.


## `QueueOwnerAWSAccountId = ::String`
The AWS account ID of the account that created the queue.




# Returns

`GetQueueUrlResult`

# Exceptions

`QueueDoesNotExist`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/GetQueueUrl)
"""
@inline get_queue_url(aws::AWSConfig=default_aws_config(); args...) = get_queue_url(aws, args)

@inline get_queue_url(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "GetQueueUrl", args)

@inline get_queue_url(args) = get_queue_url(default_aws_config(), args)


"""
    using AWSSDK.SQS.list_dead_letter_source_queues
    list_dead_letter_source_queues([::AWSConfig], arguments::Dict)
    list_dead_letter_source_queues([::AWSConfig]; QueueUrl=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "ListDeadLetterSourceQueues", arguments::Dict)
    sqs([::AWSConfig], "ListDeadLetterSourceQueues", QueueUrl=)

# ListDeadLetterSourceQueues Operation

Returns a list of your queues that have the `RedrivePolicy` queue attribute configured with a dead-letter queue.

For more information about using dead-letter queues, see [Using Amazon SQS Dead-Letter Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html) in the *Amazon Simple Queue Service Developer Guide*.

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of a dead-letter queue.

Queue URLs are case-sensitive.




# Returns

`ListDeadLetterSourceQueuesResult`

# Exceptions

`QueueDoesNotExist`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListDeadLetterSourceQueues)
"""
@inline list_dead_letter_source_queues(aws::AWSConfig=default_aws_config(); args...) = list_dead_letter_source_queues(aws, args)

@inline list_dead_letter_source_queues(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "ListDeadLetterSourceQueues", args)

@inline list_dead_letter_source_queues(args) = list_dead_letter_source_queues(default_aws_config(), args)


"""
    using AWSSDK.SQS.list_queue_tags
    list_queue_tags([::AWSConfig], arguments::Dict)
    list_queue_tags([::AWSConfig]; QueueUrl=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "ListQueueTags", arguments::Dict)
    sqs([::AWSConfig], "ListQueueTags", QueueUrl=)

# ListQueueTags Operation

List all cost allocation tags added to the specified Amazon SQS queue. For an overview, see [Tagging Amazon SQS Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-tagging-queues.html) in the *Amazon Simple Queue Service Developer Guide*.

When you use queue tags, keep the following guidelines in mind:

*   Adding more than 50 tags to a queue isn't recommended.

*   Tags don't have any semantic meaning. Amazon SQS interprets tags as character strings.

*   Tags are case-sensitive.

*   A new tag with a key identical to that of an existing tag overwrites the existing tag.

*   Tagging API actions are limited to 5 TPS per AWS account. If your application requires a higher throughput, file a [technical support request](https://console.aws.amazon.com/support/home#/case/create?issueType=technical).

For a full list of tag restrictions, see [Limits Related to Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html) in the *Amazon Simple Queue Service Developer Guide*.

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the queue.




# Returns

`ListQueueTagsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListQueueTags)
"""
@inline list_queue_tags(aws::AWSConfig=default_aws_config(); args...) = list_queue_tags(aws, args)

@inline list_queue_tags(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "ListQueueTags", args)

@inline list_queue_tags(args) = list_queue_tags(default_aws_config(), args)


"""
    using AWSSDK.SQS.list_queues
    list_queues([::AWSConfig], arguments::Dict)
    list_queues([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "ListQueues", arguments::Dict)
    sqs([::AWSConfig], "ListQueues", <keyword arguments>)

# ListQueues Operation

Returns a list of your queues. The maximum number of queues that can be returned is 1,000. If you specify a value for the optional `QueueNamePrefix` parameter, only queues with a name that begins with the specified value are returned.

# Arguments

## `QueueNamePrefix = ::String`
A string to use for filtering the list results. Only those queues whose name begins with the specified string are returned.

Queue names are case-sensitive.




# Returns

`ListQueuesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListQueues)
"""
@inline list_queues(aws::AWSConfig=default_aws_config(); args...) = list_queues(aws, args)

@inline list_queues(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "ListQueues", args)

@inline list_queues(args) = list_queues(default_aws_config(), args)


"""
    using AWSSDK.SQS.purge_queue
    purge_queue([::AWSConfig], arguments::Dict)
    purge_queue([::AWSConfig]; QueueUrl=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "PurgeQueue", arguments::Dict)
    sqs([::AWSConfig], "PurgeQueue", QueueUrl=)

# PurgeQueue Operation

Deletes the messages in a queue specified by the `QueueURL` parameter.

**Important**
> When you use the `PurgeQueue` action, you can't retrieve a message deleted from a queue.

When you purge a queue, the message deletion process takes up to 60 seconds. All messages sent to the queue before calling the `PurgeQueue` action are deleted. Messages sent to the queue while it is being purged might be deleted. While the queue is being purged, messages sent to the queue before `PurgeQueue` is called might be received, but are deleted within the next minute.

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the queue from which the `PurgeQueue` action deletes messages.

Queue URLs are case-sensitive.




# Exceptions

`QueueDoesNotExist` or `PurgeQueueInProgress`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/PurgeQueue)
"""
@inline purge_queue(aws::AWSConfig=default_aws_config(); args...) = purge_queue(aws, args)

@inline purge_queue(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "PurgeQueue", args)

@inline purge_queue(args) = purge_queue(default_aws_config(), args)


"""
    using AWSSDK.SQS.receive_message
    receive_message([::AWSConfig], arguments::Dict)
    receive_message([::AWSConfig]; QueueUrl=, <keyword arguments>)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "ReceiveMessage", arguments::Dict)
    sqs([::AWSConfig], "ReceiveMessage", QueueUrl=, <keyword arguments>)

# ReceiveMessage Operation

Retrieves one or more messages (up to 10), from the specified queue. Using the `WaitTimeSeconds` parameter enables long-poll support. For more information, see [Amazon SQS Long Polling](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html) in the *Amazon Simple Queue Service Developer Guide*.

Short poll is the default behavior where a weighted random set of machines is sampled on a `ReceiveMessage` call. Thus, only the messages on the sampled machines are returned. If the number of messages in the queue is small (fewer than 1,000), you most likely get fewer messages than you requested per `ReceiveMessage` call. If the number of messages in the queue is extremely small, you might not receive any messages in a particular `ReceiveMessage` response. If this happens, repeat the request.

For each message returned, the response includes the following:

*   The message body.

*   An MD5 digest of the message body. For information about MD5, see [RFC1321](https://www.ietf.org/rfc/rfc1321.txt).

*   The `MessageId` you received when you sent the message to the queue.

*   The receipt handle.

*   The message attributes.

*   An MD5 digest of the message attributes.

The receipt handle is the identifier you must provide when deleting the message. For more information, see [Queue and Message Identifiers](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html) in the *Amazon Simple Queue Service Developer Guide*.

You can provide the `VisibilityTimeout` parameter in your request. The parameter is applied to the messages that Amazon SQS returns in the response. If you don't include the parameter, the overall visibility timeout for the queue is used for the returned messages. For more information, see [Visibility Timeout](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html) in the *Amazon Simple Queue Service Developer Guide*.

A message that isn't deleted or a message whose visibility isn't extended before the visibility timeout expires counts as a failed receive. Depending on the configuration of the queue, the message might be sent to the dead-letter queue.

**Note**
> In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the Amazon SQS queue from which messages are received.

Queue URLs are case-sensitive.


## `AttributeName = ["All", "Policy", "VisibilityTimeout", "MaximumMessageSize", "MessageRetentionPeriod", "ApproximateNumberOfMessages", "ApproximateNumberOfMessagesNotVisible", "CreatedTimestamp", "LastModifiedTimestamp", "QueueArn", "ApproximateNumberOfMessagesDelayed", "DelaySeconds", "ReceiveMessageWaitTimeSeconds", "RedrivePolicy", "FifoQueue", "ContentBasedDeduplication", "KmsMasterKeyId" or "KmsDataKeyReusePeriodSeconds", ...]`
A list of attributes that need to be returned along with each message. These attributes include:

*   `All` - Returns all values.

*   `ApproximateFirstReceiveTimestamp` - Returns the time the message was first received from the queue ([epoch time](http://en.wikipedia.org/wiki/Unix_time) in milliseconds).

*   `ApproximateReceiveCount` - Returns the number of times a message has been received from the queue but not deleted.

*   `SenderId`

    *   For an IAM user, returns the IAM user ID, for example `ABCDEFGHI1JKLMNOPQ23R`.

    *   For an IAM role, returns the IAM role ID, for example `ABCDE1F2GH3I4JK5LMNOP:i-a123b456`.

*   `SentTimestamp` - Returns the time the message was sent to the queue ([epoch time](http://en.wikipedia.org/wiki/Unix_time) in milliseconds).

*   `MessageDeduplicationId` - Returns the value provided by the sender that calls the `[SendMessage](@ref)` action.

*   `MessageGroupId` - Returns the value provided by the sender that calls the `[SendMessage](@ref)` action. Messages with the same `MessageGroupId` are returned in sequence.

*   `SequenceNumber` - Returns the value provided by Amazon SQS.

Any other valid special request parameters (such as the following) are ignored:

*   `ApproximateNumberOfMessages`

*   `ApproximateNumberOfMessagesDelayed`

*   `ApproximateNumberOfMessagesNotVisible`

*   `CreatedTimestamp`

*   `ContentBasedDeduplication`

*   `DelaySeconds`

*   `FifoQueue`

*   `LastModifiedTimestamp`

*   `MaximumMessageSize`

*   `MessageRetentionPeriod`

*   `Policy`

*   `QueueArn`,

*   `ReceiveMessageWaitTimeSeconds`

*   `RedrivePolicy`

*   `VisibilityTimeout`


## `MessageAttributeName = [::String, ...]`
The name of the message attribute, where *N* is the index.

*   The name can contain alphanumeric characters and the underscore (`_`), hyphen (`-`), and period (`.`).

*   The name is case-sensitive and must be unique among all attribute names for the message.

*   The name must not start with AWS-reserved prefixes such as `AWS.` or `Amazon.` (or any casing variants).

*   The name must not start or end with a period (`.`), and it should not have periods in succession (`..`).

*   The name can be up to 256 characters long.

When using `ReceiveMessage`, you can send a list of attribute names to receive, or you can return all of the attributes by specifying `All` or `.*` in your request. You can also use all message attributes starting with a prefix, for example `bar.*`.


## `MaxNumberOfMessages = ::Int`
The maximum number of messages to return. Amazon SQS never returns more messages than this value (however, fewer messages might be returned). Valid values are 1 to 10. Default is 1.


## `VisibilityTimeout = ::Int`
The duration (in seconds) that the received messages are hidden from subsequent retrieve requests after being retrieved by a `ReceiveMessage` request.


## `WaitTimeSeconds = ::Int`
The duration (in seconds) for which the call waits for a message to arrive in the queue before returning. If a message is available, the call returns sooner than `WaitTimeSeconds`. If no messages are available and the wait time expires, the call returns successfully with an empty list of messages.


## `ReceiveRequestAttemptId = ::String`
This parameter applies only to FIFO (first-in-first-out) queues.

The token used for deduplication of `ReceiveMessage` calls. If a networking issue occurs after a `ReceiveMessage` action, and instead of a response you receive a generic error, you can retry the same action with an identical `ReceiveRequestAttemptId` to retrieve the same set of messages, even if their visibility timeout has not yet expired.

*   You can use `ReceiveRequestAttemptId` only for 5 minutes after a `ReceiveMessage` action.

*   When you set `FifoQueue`, a caller of the `ReceiveMessage` action can provide a `ReceiveRequestAttemptId` explicitly.

*   If a caller of the `ReceiveMessage` action doesn't provide a `ReceiveRequestAttemptId`, Amazon SQS generates a `ReceiveRequestAttemptId`.

*   You can retry the `ReceiveMessage` action with the same `ReceiveRequestAttemptId` if none of the messages have been modified (deleted or had their visibility changes).

*   During a visibility timeout, subsequent calls with the same `ReceiveRequestAttemptId` return the same messages and receipt handles. If a retry occurs within the deduplication interval, it resets the visibility timeout. For more information, see [Visibility Timeout](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html) in the *Amazon Simple Queue Service Developer Guide*.

    **Important**
    > If a caller of the `ReceiveMessage` action is still processing messages when the visibility timeout expires and messages become visible, another worker reading from the same queue can receive the same messages and therefore process duplicates. Also, if a reader whose message processing time is longer than the visibility timeout tries to delete the processed messages, the action fails with an error.

    To mitigate this effect, ensure that your application observes a safe threshold before the visibility timeout expires and extend the visibility timeout as necessary.

*   While messages with a particular `MessageGroupId` are invisible, no more messages belonging to the same `MessageGroupId` are returned until the visibility timeout expires. You can still receive messages with another `MessageGroupId` as long as it is also visible.

*   If a caller of `ReceiveMessage` can't track the `ReceiveRequestAttemptId`, no retries work until the original visibility timeout expires. As a result, delays might occur but the messages in the queue remain in a strict order.

The length of `ReceiveRequestAttemptId` is 128 characters. `ReceiveRequestAttemptId` can contain alphanumeric characters (`a-z`, `A-Z`, `0-9`) and punctuation (`!"#\$%&'()*+,-./:;<=>?@[\\]^_`{|}~`).

For best practices of using `ReceiveRequestAttemptId`, see [Using the ReceiveRequestAttemptId Request Parameter](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-receiverequestattemptid-request-parameter) in the *Amazon Simple Queue Service Developer Guide*.




# Returns

`ReceiveMessageResult`

# Exceptions

`OverLimit`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ReceiveMessage)
"""
@inline receive_message(aws::AWSConfig=default_aws_config(); args...) = receive_message(aws, args)

@inline receive_message(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "ReceiveMessage", args)

@inline receive_message(args) = receive_message(default_aws_config(), args)


"""
    using AWSSDK.SQS.remove_permission
    remove_permission([::AWSConfig], arguments::Dict)
    remove_permission([::AWSConfig]; QueueUrl=, Label=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "RemovePermission", arguments::Dict)
    sqs([::AWSConfig], "RemovePermission", QueueUrl=, Label=)

# RemovePermission Operation

Revokes any permissions in the queue policy that matches the specified `Label` parameter. Only the owner of the queue can remove permissions.

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the Amazon SQS queue from which permissions are removed.

Queue URLs are case-sensitive.


## `Label = ::String` -- *Required*
The identification of the permission to remove. This is the label added using the `[AddPermission](@ref)` action.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/RemovePermission)
"""
@inline remove_permission(aws::AWSConfig=default_aws_config(); args...) = remove_permission(aws, args)

@inline remove_permission(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "RemovePermission", args)

@inline remove_permission(args) = remove_permission(default_aws_config(), args)


"""
    using AWSSDK.SQS.send_message
    send_message([::AWSConfig], arguments::Dict)
    send_message([::AWSConfig]; QueueUrl=, MessageBody=, <keyword arguments>)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "SendMessage", arguments::Dict)
    sqs([::AWSConfig], "SendMessage", QueueUrl=, MessageBody=, <keyword arguments>)

# SendMessage Operation

Delivers a message to the specified queue.

**Important**
> A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:

`#x9` | `#xA` | `#xD` | `#x20` to `#xD7FF` | `#xE000` to `#xFFFD` | `#x10000` to `#x10FFFF`

Any characters not included in this list will be rejected. For more information, see the [W3C specification for characters](http://www.w3.org/TR/REC-xml/#charsets).

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the Amazon SQS queue to which a message is sent.

Queue URLs are case-sensitive.


## `MessageBody = ::String` -- *Required*
The message to send. The maximum string size is 256 KB.

**Important**
> A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:

`#x9` | `#xA` | `#xD` | `#x20` to `#xD7FF` | `#xE000` to `#xFFFD` | `#x10000` to `#x10FFFF`

Any characters not included in this list will be rejected. For more information, see the [W3C specification for characters](http://www.w3.org/TR/REC-xml/#charsets).


## `DelaySeconds = ::Int`
The length of time, in seconds, for which to delay a specific message. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive `DelaySeconds` value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue applies.

**Note**
> When you set `FifoQueue`, you can't set `DelaySeconds` per message. You can set this parameter only on a queue level.


## `MessageAttribute = ::Dict{String,String}`
Each message attribute consists of a `Name`, `Type`, and `Value`. For more information, see [Message Attribute Items and Validation](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation) in the *Amazon Simple Queue Service Developer Guide*.


## `MessageDeduplicationId = ::String`
This parameter applies only to FIFO (first-in-first-out) queues.

The token used for deduplication of sent messages. If a message with a particular `MessageDeduplicationId` is sent successfully, any messages sent with the same `MessageDeduplicationId` are accepted successfully but aren't delivered during the 5-minute deduplication interval. For more information, see [Exactly-Once Processing](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing) in the *Amazon Simple Queue Service Developer Guide*.

*   Every message must have a unique `MessageDeduplicationId`,

    *   You may provide a `MessageDeduplicationId` explicitly.

    *   If you aren't able to provide a `MessageDeduplicationId` and you enable `ContentBasedDeduplication` for your queue, Amazon SQS uses a SHA-256 hash to generate the `MessageDeduplicationId` using the body of the message (but not the attributes of the message).

    *   If you don't provide a `MessageDeduplicationId` and the queue doesn't have `ContentBasedDeduplication` set, the action fails with an error.

    *   If the queue has `ContentBasedDeduplication` set, your `MessageDeduplicationId` overrides the generated one.

*   When `ContentBasedDeduplication` is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.

*   If you send one message with `ContentBasedDeduplication` enabled and then another message with a `MessageDeduplicationId` that is the same as the one generated for the first `MessageDeduplicationId`, the two messages are treated as duplicates and only one copy of the message is delivered.

**Note**
> The `MessageDeduplicationId` is available to the recipient of the message (this can be useful for troubleshooting delivery issues).

If a message is sent successfully but the acknowledgement is lost and the message is resent with the same `MessageDeduplicationId` after the deduplication interval, Amazon SQS can't detect duplicate messages.

The length of `MessageDeduplicationId` is 128 characters. `MessageDeduplicationId` can contain alphanumeric characters (`a-z`, `A-Z`, `0-9`) and punctuation (`!"#\$%&'()*+,-./:;<=>?@[\\]^_`{|}~`).

For best practices of using `MessageDeduplicationId`, see [Using the MessageDeduplicationId Property](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagededuplicationid-property) in the *Amazon Simple Queue Service Developer Guide*.


## `MessageGroupId = ::String`
This parameter applies only to FIFO (first-in-first-out) queues.

The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use `MessageGroupId` values (for example, session data for multiple users). In this scenario, multiple readers can process the queue, but the session data of each user is processed in a FIFO fashion.

*   You must associate a non-empty `MessageGroupId` with a message. If you don't provide a `MessageGroupId`, the action fails.

*   `ReceiveMessage` might return messages with multiple `MessageGroupId` values. For each `MessageGroupId`, the messages are sorted by time sent. The caller can't specify a `MessageGroupId`.

The length of `MessageGroupId` is 128 characters. Valid values are alphanumeric characters and punctuation `(!"#\$%&'()*+,-./:;<=>?@[\\]^_`{|}~)`.

For best practices of using `MessageGroupId`, see [Using the MessageGroupId Property](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagegroupid-property) in the *Amazon Simple Queue Service Developer Guide*.

**Important**
> `MessageGroupId` is required for FIFO queues. You can't use it for Standard queues.




# Returns

`SendMessageResult`

# Exceptions

`InvalidMessageContents` or `UnsupportedOperation`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SendMessage)
"""
@inline send_message(aws::AWSConfig=default_aws_config(); args...) = send_message(aws, args)

@inline send_message(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "SendMessage", args)

@inline send_message(args) = send_message(default_aws_config(), args)


"""
    using AWSSDK.SQS.send_message_batch
    send_message_batch([::AWSConfig], arguments::Dict)
    send_message_batch([::AWSConfig]; QueueUrl=, SendMessageBatchRequestEntry=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "SendMessageBatch", arguments::Dict)
    sqs([::AWSConfig], "SendMessageBatch", QueueUrl=, SendMessageBatchRequestEntry=)

# SendMessageBatch Operation

Delivers up to ten messages to the specified queue. This is a batch version of `[SendMessage](@ref).` For a FIFO queue, multiple messages within a single batch are enqueued in the order they are sent.

The result of sending each message is reported individually in the response. Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of `200`.

The maximum allowed individual message size and the maximum total payload size (the sum of the individual lengths of all of the batched messages) are both 256 KB (262,144 bytes).

**Important**
> A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:

`#x9` | `#xA` | `#xD` | `#x20` to `#xD7FF` | `#xE000` to `#xFFFD` | `#x10000` to `#x10FFFF`

Any characters not included in this list will be rejected. For more information, see the [W3C specification for characters](http://www.w3.org/TR/REC-xml/#charsets).

If you don't specify the `DelaySeconds` parameter for an entry, Amazon SQS uses the default value for the queue.

**Note**
> Some actions take lists of parameters. These lists are specified using the `param.n` notation. Values of `n` are integers starting from 1. For example, a parameter list with two elements looks like this:

`&Attribute.1=this`

`&Attribute.2=that`

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the Amazon SQS queue to which batched messages are sent.

Queue URLs are case-sensitive.


## `SendMessageBatchRequestEntry = [[ ... ], ...]` -- *Required*
A list of `[SendMessageBatchRequestEntry](@ref)` items.
```
 SendMessageBatchRequestEntry = [[
        "Id" => <required> ::String,
        "MessageBody" => <required> ::String,
        "DelaySeconds" =>  ::Int,
        "MessageAttribute" =>  ::Dict{String,String},
        "MessageDeduplicationId" =>  ::String,
        "MessageGroupId" =>  ::String
    ], ...]
```



# Returns

`SendMessageBatchResult`

# Exceptions

`TooManyEntriesInBatchRequest`, `EmptyBatchRequest`, `BatchEntryIdsNotDistinct`, `BatchRequestTooLong`, `InvalidBatchEntryId` or `UnsupportedOperation`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SendMessageBatch)
"""
@inline send_message_batch(aws::AWSConfig=default_aws_config(); args...) = send_message_batch(aws, args)

@inline send_message_batch(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "SendMessageBatch", args)

@inline send_message_batch(args) = send_message_batch(default_aws_config(), args)


"""
    using AWSSDK.SQS.set_queue_attributes
    set_queue_attributes([::AWSConfig], arguments::Dict)
    set_queue_attributes([::AWSConfig]; QueueUrl=, Attribute=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "SetQueueAttributes", arguments::Dict)
    sqs([::AWSConfig], "SetQueueAttributes", QueueUrl=, Attribute=)

# SetQueueAttributes Operation

Sets the value of one or more queue attributes. When you change a queue's attributes, the change can take up to 60 seconds for most of the attributes to propagate throughout the Amazon SQS system. Changes made to the `MessageRetentionPeriod` attribute can take up to 15 minutes.

**Note**
> In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the Amazon SQS queue whose attributes are set.

Queue URLs are case-sensitive.


## `Attribute = ::Dict{String,String}` -- *Required*
A map of attributes to set.

The following lists the names, descriptions, and values of the special request parameters that the `SetQueueAttributes` action uses:

*   `DelaySeconds` - The length of time, in seconds, for which the delivery of all messages in the queue is delayed. Valid values: An integer from 0 to 900 (15 minutes). The default is 0 (zero).

*   `MaximumMessageSize` - The limit of how many bytes a message can contain before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). The default is 262,144 (256 KiB).

*   `MessageRetentionPeriod` - The length of time, in seconds, for which Amazon SQS retains a message. Valid values: An integer representing seconds, from 60 (1 minute) to 1,209,600 (14 days). The default is 345,600 (4 days).

*   `Policy` - The queue's policy. A valid AWS policy. For more information about policy structure, see [Overview of AWS IAM Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html) in the *Amazon IAM User Guide*.

*   `ReceiveMessageWaitTimeSeconds` - The length of time, in seconds, for which a `[ReceiveMessage](@ref)` action waits for a message to arrive. Valid values: an integer from 0 to 20 (seconds). The default is 0.

*   `RedrivePolicy` - The string that includes the parameters for the dead-letter queue functionality of the source queue. For more information about the redrive policy and dead-letter queues, see [Using Amazon SQS Dead-Letter Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html) in the *Amazon Simple Queue Service Developer Guide*.

    *   `deadLetterTargetArn` - The Amazon Resource Name (ARN) of the dead-letter queue to which Amazon SQS moves messages after the value of `maxReceiveCount` is exceeded.

    *   `maxReceiveCount` - The number of times a message is delivered to the source queue before being moved to the dead-letter queue.

    **Note**
    > The dead-letter queue of a FIFO queue must also be a FIFO queue. Similarly, the dead-letter queue of a standard queue must also be a standard queue.

*   `VisibilityTimeout` - The visibility timeout for the queue. Valid values: an integer from 0 to 43,200 (12 hours). The default is 30. For more information about the visibility timeout, see [Visibility Timeout](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html) in the *Amazon Simple Queue Service Developer Guide*.

The following attributes apply only to [server-side-encryption](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html):

*   `KmsMasterKeyId` - The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see [Key Terms](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms). While the alias of the AWS-managed CMK for Amazon SQS is always `alias/aws/sqs`, the alias of a custom CMK can, for example, be `alias/*MyAlias*` . For more examples, see [KeyId](http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters) in the *AWS Key Management Service API Reference*.

*   `KmsDataKeyReusePeriodSeconds` - The length of time, in seconds, for which Amazon SQS can reuse a [data key](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys) to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes). A shorter time period provides better security but results in more calls to KMS which might incur charges after Free Tier. For more information, see [How Does the Data Key Reuse Period Work?](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work).

The following attribute applies only to [FIFO (first-in-first-out) queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html):

*   `ContentBasedDeduplication` - Enables content-based deduplication. For more information, see [Exactly-Once Processing](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing) in the *Amazon Simple Queue Service Developer Guide*.

    *   Every message must have a unique `MessageDeduplicationId`,

        *   You may provide a `MessageDeduplicationId` explicitly.

        *   If you aren't able to provide a `MessageDeduplicationId` and you enable `ContentBasedDeduplication` for your queue, Amazon SQS uses a SHA-256 hash to generate the `MessageDeduplicationId` using the body of the message (but not the attributes of the message).

        *   If you don't provide a `MessageDeduplicationId` and the queue doesn't have `ContentBasedDeduplication` set, the action fails with an error.

        *   If the queue has `ContentBasedDeduplication` set, your `MessageDeduplicationId` overrides the generated one.

    *   When `ContentBasedDeduplication` is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.

    *   If you send one message with `ContentBasedDeduplication` enabled and then another message with a `MessageDeduplicationId` that is the same as the one generated for the first `MessageDeduplicationId`, the two messages are treated as duplicates and only one copy of the message is delivered.

Any other valid special request parameters (such as the following) are ignored:

*   `ApproximateNumberOfMessages`

*   `ApproximateNumberOfMessagesDelayed`

*   `ApproximateNumberOfMessagesNotVisible`

*   `CreatedTimestamp`

*   `LastModifiedTimestamp`

*   `QueueArn`




# Exceptions

`InvalidAttributeName`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SetQueueAttributes)
"""
@inline set_queue_attributes(aws::AWSConfig=default_aws_config(); args...) = set_queue_attributes(aws, args)

@inline set_queue_attributes(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "SetQueueAttributes", args)

@inline set_queue_attributes(args) = set_queue_attributes(default_aws_config(), args)


"""
    using AWSSDK.SQS.tag_queue
    tag_queue([::AWSConfig], arguments::Dict)
    tag_queue([::AWSConfig]; QueueUrl=, Tags=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "TagQueue", arguments::Dict)
    sqs([::AWSConfig], "TagQueue", QueueUrl=, Tags=)

# TagQueue Operation

Add cost allocation tags to the specified Amazon SQS queue. For an overview, see [Tagging Amazon SQS Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-tagging-queues.html) in the *Amazon Simple Queue Service Developer Guide*.

When you use queue tags, keep the following guidelines in mind:

*   Adding more than 50 tags to a queue isn't recommended.

*   Tags don't have any semantic meaning. Amazon SQS interprets tags as character strings.

*   Tags are case-sensitive.

*   A new tag with a key identical to that of an existing tag overwrites the existing tag.

*   Tagging API actions are limited to 5 TPS per AWS account. If your application requires a higher throughput, file a [technical support request](https://console.aws.amazon.com/support/home#/case/create?issueType=technical).

For a full list of tag restrictions, see [Limits Related to Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html) in the *Amazon Simple Queue Service Developer Guide*.

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the queue.


## `Tags = ::Dict{String,String}` -- *Required*
The list of tags to be added to the specified queue.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/TagQueue)
"""
@inline tag_queue(aws::AWSConfig=default_aws_config(); args...) = tag_queue(aws, args)

@inline tag_queue(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "TagQueue", args)

@inline tag_queue(args) = tag_queue(default_aws_config(), args)


"""
    using AWSSDK.SQS.untag_queue
    untag_queue([::AWSConfig], arguments::Dict)
    untag_queue([::AWSConfig]; QueueUrl=, TagKey=)

    using AWSCore.Services.sqs
    sqs([::AWSConfig], "UntagQueue", arguments::Dict)
    sqs([::AWSConfig], "UntagQueue", QueueUrl=, TagKey=)

# UntagQueue Operation

Remove cost allocation tags from the specified Amazon SQS queue. For an overview, see [Tagging Amazon SQS Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-tagging-queues.html) in the *Amazon Simple Queue Service Developer Guide*.

When you use queue tags, keep the following guidelines in mind:

*   Adding more than 50 tags to a queue isn't recommended.

*   Tags don't have any semantic meaning. Amazon SQS interprets tags as character strings.

*   Tags are case-sensitive.

*   A new tag with a key identical to that of an existing tag overwrites the existing tag.

*   Tagging API actions are limited to 5 TPS per AWS account. If your application requires a higher throughput, file a [technical support request](https://console.aws.amazon.com/support/home#/case/create?issueType=technical).

For a full list of tag restrictions, see [Limits Related to Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html) in the *Amazon Simple Queue Service Developer Guide*.

# Arguments

## `QueueUrl = ::String` -- *Required*
The URL of the queue.


## `TagKey = [::String, ...]` -- *Required*
The list of tags to be removed from the specified queue.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/UntagQueue)
"""
@inline untag_queue(aws::AWSConfig=default_aws_config(); args...) = untag_queue(aws, args)

@inline untag_queue(aws::AWSConfig, args) = AWSCore.Services.sqs(aws, "UntagQueue", args)

@inline untag_queue(args) = untag_queue(default_aws_config(), args)




end # module SQS


#==============================================================================#
# End of file
#==============================================================================#
