#==============================================================================#
# WorkDocs.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/workdocs-2016-05-01.normal.json
#==============================================================================#

__precompile__()

module WorkDocs

using AWSCore


"""
    using AWSSDK.WorkDocs.abort_document_version_upload
    abort_document_version_upload([::AWSConfig], arguments::Dict)
    abort_document_version_upload([::AWSConfig]; DocumentId=, VersionId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "DELETE", "/api/v1/documents/{DocumentId}/versions/{VersionId}", arguments::Dict)
    workdocs([::AWSConfig], "DELETE", "/api/v1/documents/{DocumentId}/versions/{VersionId}", DocumentId=, VersionId=, <keyword arguments>)

# AbortDocumentVersionUpload Operation

Aborts the upload of the specified document version that was previously initiated by [InitiateDocumentVersionUpload](@ref). The client should make this call only when it no longer intends to upload the document version, or fails to do so.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `DocumentId = ::String` -- *Required*
The ID of the document.


## `VersionId = ::String` -- *Required*
The ID of the version.




# Exceptions

`EntityNotExistsException`, `ProhibitedStateException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/AbortDocumentVersionUpload)
"""
@inline abort_document_version_upload(aws::AWSConfig=default_aws_config(); args...) = abort_document_version_upload(aws, args)

@inline abort_document_version_upload(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "DELETE", "/api/v1/documents/{DocumentId}/versions/{VersionId}", args)

@inline abort_document_version_upload(args) = abort_document_version_upload(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.activate_user
    activate_user([::AWSConfig], arguments::Dict)
    activate_user([::AWSConfig]; UserId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "POST", "/api/v1/users/{UserId}/activation", arguments::Dict)
    workdocs([::AWSConfig], "POST", "/api/v1/users/{UserId}/activation", UserId=, <keyword arguments>)

# ActivateUser Operation

Activates the specified user. Only active users can access Amazon WorkDocs.

# Arguments

## `UserId = ::String` -- *Required*
The ID of the user.


## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.




# Returns

`ActivateUserResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ActivateUser)
"""
@inline activate_user(aws::AWSConfig=default_aws_config(); args...) = activate_user(aws, args)

@inline activate_user(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "POST", "/api/v1/users/{UserId}/activation", args)

@inline activate_user(args) = activate_user(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.add_resource_permissions
    add_resource_permissions([::AWSConfig], arguments::Dict)
    add_resource_permissions([::AWSConfig]; ResourceId=, Principals=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "POST", "/api/v1/resources/{ResourceId}/permissions", arguments::Dict)
    workdocs([::AWSConfig], "POST", "/api/v1/resources/{ResourceId}/permissions", ResourceId=, Principals=, <keyword arguments>)

# AddResourcePermissions Operation

Creates a set of permissions for the specified folder or document. The resource permissions are overwritten if the principals already have different permissions.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `ResourceId = ::String` -- *Required*
The ID of the resource.


## `Principals = [[ ... ], ...]` -- *Required*
The users, groups, or organization being granted permission.
```
 Principals = [[
        "Id" => <required> ::String,
        "Type" => <required> "USER", "GROUP", "INVITE", "ANONYMOUS" or "ORGANIZATION",
        "Role" => <required> "VIEWER", "CONTRIBUTOR", "OWNER" or "COOWNER"
    ], ...]
```

## `NotificationOptions = [ ... ]`
The notification options.
```
 NotificationOptions = [
        "SendEmail" =>  ::Bool,
        "EmailMessage" =>  ::String
    ]
```



# Returns

`AddResourcePermissionsResponse`

# Exceptions

`UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/AddResourcePermissions)
"""
@inline add_resource_permissions(aws::AWSConfig=default_aws_config(); args...) = add_resource_permissions(aws, args)

@inline add_resource_permissions(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "POST", "/api/v1/resources/{ResourceId}/permissions", args)

@inline add_resource_permissions(args) = add_resource_permissions(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.create_comment
    create_comment([::AWSConfig], arguments::Dict)
    create_comment([::AWSConfig]; DocumentId=, VersionId=, Text=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "POST", "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", arguments::Dict)
    workdocs([::AWSConfig], "POST", "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", DocumentId=, VersionId=, Text=, <keyword arguments>)

# CreateComment Operation

Adds a new comment to the specified document version.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `DocumentId = ::String` -- *Required*
The ID of the document.


## `VersionId = ::String` -- *Required*
The ID of the document version.


## `ParentId = ::String`
The ID of the parent comment.


## `ThreadId = ::String`
The ID of the root comment in the thread.


## `Text = ::String` -- *Required*
The text of the comment.


## `Visibility = "PUBLIC" or "PRIVATE"`
The visibility of the comment. Options are either PRIVATE, where the comment is visible only to the comment author and document owner and co-owners, or PUBLIC, where the comment is visible to document owners, co-owners, and contributors.


## `NotifyCollaborators = ::Bool`
Set this parameter to TRUE to send an email out to the document collaborators after the comment is created.




# Returns

`CreateCommentResponse`

# Exceptions

`EntityNotExistsException`, `ProhibitedStateException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException`, `ServiceUnavailableException` or `DocumentLockedForCommentsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateComment)
"""
@inline create_comment(aws::AWSConfig=default_aws_config(); args...) = create_comment(aws, args)

@inline create_comment(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "POST", "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", args)

@inline create_comment(args) = create_comment(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.create_custom_metadata
    create_custom_metadata([::AWSConfig], arguments::Dict)
    create_custom_metadata([::AWSConfig]; ResourceId=, CustomMetadata=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "PUT", "/api/v1/resources/{ResourceId}/customMetadata", arguments::Dict)
    workdocs([::AWSConfig], "PUT", "/api/v1/resources/{ResourceId}/customMetadata", ResourceId=, CustomMetadata=, <keyword arguments>)

# CreateCustomMetadata Operation

Adds one or more custom properties to the specified resource (a folder, document, or version).

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `ResourceId = ::String` -- *Required*
The ID of the resource.


## `versionid = ::String`
The ID of the version, if the custom metadata is being added to a document version.


## `CustomMetadata = ::Dict{String,String}` -- *Required*
Custom metadata in the form of name-value pairs.




# Returns

`CreateCustomMetadataResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `ProhibitedStateException`, `CustomMetadataLimitExceededException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateCustomMetadata)
"""
@inline create_custom_metadata(aws::AWSConfig=default_aws_config(); args...) = create_custom_metadata(aws, args)

@inline create_custom_metadata(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "PUT", "/api/v1/resources/{ResourceId}/customMetadata", args)

@inline create_custom_metadata(args) = create_custom_metadata(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.create_folder
    create_folder([::AWSConfig], arguments::Dict)
    create_folder([::AWSConfig]; ParentFolderId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "POST", "/api/v1/folders", arguments::Dict)
    workdocs([::AWSConfig], "POST", "/api/v1/folders", ParentFolderId=, <keyword arguments>)

# CreateFolder Operation

Creates a folder with the specified name and parent folder.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `Name = ::String`
The name of the new folder.


## `ParentFolderId = ::String` -- *Required*
The ID of the parent folder.




# Returns

`CreateFolderResponse`

# Exceptions

`EntityNotExistsException`, `EntityAlreadyExistsException`, `ProhibitedStateException`, `LimitExceededException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateFolder)
"""
@inline create_folder(aws::AWSConfig=default_aws_config(); args...) = create_folder(aws, args)

@inline create_folder(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "POST", "/api/v1/folders", args)

@inline create_folder(args) = create_folder(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.create_labels
    create_labels([::AWSConfig], arguments::Dict)
    create_labels([::AWSConfig]; ResourceId=, Labels=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "PUT", "/api/v1/resources/{ResourceId}/labels", arguments::Dict)
    workdocs([::AWSConfig], "PUT", "/api/v1/resources/{ResourceId}/labels", ResourceId=, Labels=, <keyword arguments>)

# CreateLabels Operation

Adds the specified list of labels to the given resource (a document or folder)

# Arguments

## `ResourceId = ::String` -- *Required*
The ID of the resource.


## `Labels = [::String, ...]` -- *Required*
List of labels to add to the resource.


## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.




# Returns

`CreateLabelsResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException`, `ServiceUnavailableException` or `TooManyLabelsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateLabels)
"""
@inline create_labels(aws::AWSConfig=default_aws_config(); args...) = create_labels(aws, args)

@inline create_labels(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "PUT", "/api/v1/resources/{ResourceId}/labels", args)

@inline create_labels(args) = create_labels(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.create_notification_subscription
    create_notification_subscription([::AWSConfig], arguments::Dict)
    create_notification_subscription([::AWSConfig]; OrganizationId=, Endpoint=, Protocol=, SubscriptionType=)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "POST", "/api/v1/organizations/{OrganizationId}/subscriptions", arguments::Dict)
    workdocs([::AWSConfig], "POST", "/api/v1/organizations/{OrganizationId}/subscriptions", OrganizationId=, Endpoint=, Protocol=, SubscriptionType=)

# CreateNotificationSubscription Operation

Configure WorkDocs to use Amazon SNS notifications.

The endpoint receives a confirmation message, and must confirm the subscription. For more information, see [Confirm the Subscription](http://docs.aws.amazon.com/sns/latest/dg/SendMessageToHttp.html#SendMessageToHttp.confirm) in the *Amazon Simple Notification Service Developer Guide*.

# Arguments

## `OrganizationId = ::String` -- *Required*
The ID of the organization.


## `Endpoint = ::String` -- *Required*
The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint is a URL that begins with "https://".


## `Protocol = "HTTPS"` -- *Required*
The protocol to use. The supported value is https, which delivers JSON-encoded messages using HTTPS POST.


## `SubscriptionType = "ALL"` -- *Required*
The notification type.




# Returns

`CreateNotificationSubscriptionResponse`

# Exceptions

`UnauthorizedResourceAccessException`, `TooManySubscriptionsException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateNotificationSubscription)
"""
@inline create_notification_subscription(aws::AWSConfig=default_aws_config(); args...) = create_notification_subscription(aws, args)

@inline create_notification_subscription(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "POST", "/api/v1/organizations/{OrganizationId}/subscriptions", args)

@inline create_notification_subscription(args) = create_notification_subscription(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.create_user
    create_user([::AWSConfig], arguments::Dict)
    create_user([::AWSConfig]; Username=, GivenName=, Surname=, Password=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "POST", "/api/v1/users", arguments::Dict)
    workdocs([::AWSConfig], "POST", "/api/v1/users", Username=, GivenName=, Surname=, Password=, <keyword arguments>)

# CreateUser Operation

Creates a user in a Simple AD or Microsoft AD directory. The status of a newly created user is "ACTIVE". New users can access Amazon WorkDocs.

# Arguments

## `OrganizationId = ::String`
The ID of the organization.


## `Username = ::String` -- *Required*
The login name of the user.


## `EmailAddress = ::String`
The email address of the user.


## `GivenName = ::String` -- *Required*
The given name of the user.


## `Surname = ::String` -- *Required*
The surname of the user.


## `Password = ::String` -- *Required*
The password of the user.


## `TimeZoneId = ::String`
The time zone ID of the user.


## `StorageRule = [ ... ]`
The amount of storage for the user.
```
 StorageRule = [
        "StorageAllocatedInBytes" =>  ::Int,
        "StorageType" =>  "UNLIMITED" or "QUOTA"
    ]
```

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.




# Returns

`CreateUserResponse`

# Exceptions

`EntityAlreadyExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateUser)
"""
@inline create_user(aws::AWSConfig=default_aws_config(); args...) = create_user(aws, args)

@inline create_user(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "POST", "/api/v1/users", args)

@inline create_user(args) = create_user(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.deactivate_user
    deactivate_user([::AWSConfig], arguments::Dict)
    deactivate_user([::AWSConfig]; UserId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "DELETE", "/api/v1/users/{UserId}/activation", arguments::Dict)
    workdocs([::AWSConfig], "DELETE", "/api/v1/users/{UserId}/activation", UserId=, <keyword arguments>)

# DeactivateUser Operation

Deactivates the specified user, which revokes the user's access to Amazon WorkDocs.

# Arguments

## `UserId = ::String` -- *Required*
The ID of the user.


## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.




# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeactivateUser)
"""
@inline deactivate_user(aws::AWSConfig=default_aws_config(); args...) = deactivate_user(aws, args)

@inline deactivate_user(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "DELETE", "/api/v1/users/{UserId}/activation", args)

@inline deactivate_user(args) = deactivate_user(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.delete_comment
    delete_comment([::AWSConfig], arguments::Dict)
    delete_comment([::AWSConfig]; DocumentId=, VersionId=, CommentId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "DELETE", "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", arguments::Dict)
    workdocs([::AWSConfig], "DELETE", "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", DocumentId=, VersionId=, CommentId=, <keyword arguments>)

# DeleteComment Operation

Deletes the specified comment from the document version.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `DocumentId = ::String` -- *Required*
The ID of the document.


## `VersionId = ::String` -- *Required*
The ID of the document version.


## `CommentId = ::String` -- *Required*
The ID of the comment.




# Exceptions

`EntityNotExistsException`, `ProhibitedStateException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException`, `ServiceUnavailableException` or `DocumentLockedForCommentsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteComment)
"""
@inline delete_comment(aws::AWSConfig=default_aws_config(); args...) = delete_comment(aws, args)

@inline delete_comment(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "DELETE", "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", args)

@inline delete_comment(args) = delete_comment(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.delete_custom_metadata
    delete_custom_metadata([::AWSConfig], arguments::Dict)
    delete_custom_metadata([::AWSConfig]; ResourceId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "DELETE", "/api/v1/resources/{ResourceId}/customMetadata", arguments::Dict)
    workdocs([::AWSConfig], "DELETE", "/api/v1/resources/{ResourceId}/customMetadata", ResourceId=, <keyword arguments>)

# DeleteCustomMetadata Operation

Deletes custom metadata from the specified resource.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `ResourceId = ::String` -- *Required*
The ID of the resource, either a document or folder.


## `versionId = ::String`
The ID of the version, if the custom metadata is being deleted from a document version.


## `keys = [::String, ...]`
List of properties to remove.


## `deleteAll = ::Bool`
Flag to indicate removal of all custom metadata properties from the specified resource.




# Returns

`DeleteCustomMetadataResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `ProhibitedStateException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteCustomMetadata)
"""
@inline delete_custom_metadata(aws::AWSConfig=default_aws_config(); args...) = delete_custom_metadata(aws, args)

@inline delete_custom_metadata(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "DELETE", "/api/v1/resources/{ResourceId}/customMetadata", args)

@inline delete_custom_metadata(args) = delete_custom_metadata(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.delete_document
    delete_document([::AWSConfig], arguments::Dict)
    delete_document([::AWSConfig]; DocumentId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "DELETE", "/api/v1/documents/{DocumentId}", arguments::Dict)
    workdocs([::AWSConfig], "DELETE", "/api/v1/documents/{DocumentId}", DocumentId=, <keyword arguments>)

# DeleteDocument Operation

Permanently deletes the specified document and its associated metadata.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `DocumentId = ::String` -- *Required*
The ID of the document.




# Exceptions

`EntityNotExistsException`, `ProhibitedStateException`, `ConcurrentModificationException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteDocument)
"""
@inline delete_document(aws::AWSConfig=default_aws_config(); args...) = delete_document(aws, args)

@inline delete_document(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "DELETE", "/api/v1/documents/{DocumentId}", args)

@inline delete_document(args) = delete_document(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.delete_folder
    delete_folder([::AWSConfig], arguments::Dict)
    delete_folder([::AWSConfig]; FolderId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "DELETE", "/api/v1/folders/{FolderId}", arguments::Dict)
    workdocs([::AWSConfig], "DELETE", "/api/v1/folders/{FolderId}", FolderId=, <keyword arguments>)

# DeleteFolder Operation

Permanently deletes the specified folder and its contents.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `FolderId = ::String` -- *Required*
The ID of the folder.




# Exceptions

`EntityNotExistsException`, `ProhibitedStateException`, `ConcurrentModificationException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteFolder)
"""
@inline delete_folder(aws::AWSConfig=default_aws_config(); args...) = delete_folder(aws, args)

@inline delete_folder(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "DELETE", "/api/v1/folders/{FolderId}", args)

@inline delete_folder(args) = delete_folder(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.delete_folder_contents
    delete_folder_contents([::AWSConfig], arguments::Dict)
    delete_folder_contents([::AWSConfig]; FolderId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "DELETE", "/api/v1/folders/{FolderId}/contents", arguments::Dict)
    workdocs([::AWSConfig], "DELETE", "/api/v1/folders/{FolderId}/contents", FolderId=, <keyword arguments>)

# DeleteFolderContents Operation

Deletes the contents of the specified folder.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `FolderId = ::String` -- *Required*
The ID of the folder.




# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteFolderContents)
"""
@inline delete_folder_contents(aws::AWSConfig=default_aws_config(); args...) = delete_folder_contents(aws, args)

@inline delete_folder_contents(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "DELETE", "/api/v1/folders/{FolderId}/contents", args)

@inline delete_folder_contents(args) = delete_folder_contents(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.delete_labels
    delete_labels([::AWSConfig], arguments::Dict)
    delete_labels([::AWSConfig]; ResourceId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "DELETE", "/api/v1/resources/{ResourceId}/labels", arguments::Dict)
    workdocs([::AWSConfig], "DELETE", "/api/v1/resources/{ResourceId}/labels", ResourceId=, <keyword arguments>)

# DeleteLabels Operation

Deletes the specified list of labels from a resource.

# Arguments

## `ResourceId = ::String` -- *Required*
The ID of the resource.


## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `labels = [::String, ...]`
List of labels to delete from the resource.


## `deleteAll = ::Bool`
Flag to request removal of all labels from the specified resource.




# Returns

`DeleteLabelsResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteLabels)
"""
@inline delete_labels(aws::AWSConfig=default_aws_config(); args...) = delete_labels(aws, args)

@inline delete_labels(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "DELETE", "/api/v1/resources/{ResourceId}/labels", args)

@inline delete_labels(args) = delete_labels(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.delete_notification_subscription
    delete_notification_subscription([::AWSConfig], arguments::Dict)
    delete_notification_subscription([::AWSConfig]; SubscriptionId=, OrganizationId=)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "DELETE", "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", arguments::Dict)
    workdocs([::AWSConfig], "DELETE", "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", SubscriptionId=, OrganizationId=)

# DeleteNotificationSubscription Operation

Deletes the specified subscription from the specified organization.

# Arguments

## `SubscriptionId = ::String` -- *Required*
The ID of the subscription.


## `OrganizationId = ::String` -- *Required*
The ID of the organization.




# Exceptions

`UnauthorizedResourceAccessException`, `EntityNotExistsException`, `ServiceUnavailableException` or `ProhibitedStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteNotificationSubscription)
"""
@inline delete_notification_subscription(aws::AWSConfig=default_aws_config(); args...) = delete_notification_subscription(aws, args)

@inline delete_notification_subscription(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "DELETE", "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", args)

@inline delete_notification_subscription(args) = delete_notification_subscription(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.delete_user
    delete_user([::AWSConfig], arguments::Dict)
    delete_user([::AWSConfig]; UserId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "DELETE", "/api/v1/users/{UserId}", arguments::Dict)
    workdocs([::AWSConfig], "DELETE", "/api/v1/users/{UserId}", UserId=, <keyword arguments>)

# DeleteUser Operation

Deletes the specified user from a Simple AD or Microsoft AD directory.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `UserId = ::String` -- *Required*
The ID of the user.




# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteUser)
"""
@inline delete_user(aws::AWSConfig=default_aws_config(); args...) = delete_user(aws, args)

@inline delete_user(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "DELETE", "/api/v1/users/{UserId}", args)

@inline delete_user(args) = delete_user(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.describe_activities
    describe_activities([::AWSConfig], arguments::Dict)
    describe_activities([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/activities", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/activities", <keyword arguments>)

# DescribeActivities Operation

Describes the user activities in a specified time period.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `startTime = timestamp`
The timestamp that determines the starting time of the activities. The response includes the activities performed after the specified timestamp.


## `endTime = timestamp`
The timestamp that determines the end time of the activities. The response includes the activities performed before the specified timestamp.


## `organizationId = ::String`
The ID of the organization. This is a mandatory parameter when using administrative API (SigV4) requests.


## `userId = ::String`
The ID of the user who performed the action. The response includes activities pertaining to this user. This is an optional parameter and is only applicable for administrative API (SigV4) requests.


## `limit = ::Int`
The maximum number of items to return.


## `marker = ::String`
The marker for the next set of results.




# Returns

`DescribeActivitiesResponse`

# Exceptions

`UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `InvalidArgumentException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeActivities)
"""
@inline describe_activities(aws::AWSConfig=default_aws_config(); args...) = describe_activities(aws, args)

@inline describe_activities(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/activities", args)

@inline describe_activities(args) = describe_activities(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.describe_comments
    describe_comments([::AWSConfig], arguments::Dict)
    describe_comments([::AWSConfig]; DocumentId=, VersionId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", DocumentId=, VersionId=, <keyword arguments>)

# DescribeComments Operation

List all the comments for the specified document version.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `DocumentId = ::String` -- *Required*
The ID of the document.


## `VersionId = ::String` -- *Required*
The ID of the document version.


## `limit = ::Int`
The maximum number of items to return.


## `marker = ::String`
The marker for the next set of results. This marker was received from a previous call.




# Returns

`DescribeCommentsResponse`

# Exceptions

`EntityNotExistsException`, `ProhibitedStateException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeComments)
"""
@inline describe_comments(aws::AWSConfig=default_aws_config(); args...) = describe_comments(aws, args)

@inline describe_comments(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", args)

@inline describe_comments(args) = describe_comments(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.describe_document_versions
    describe_document_versions([::AWSConfig], arguments::Dict)
    describe_document_versions([::AWSConfig]; DocumentId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/documents/{DocumentId}/versions", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/documents/{DocumentId}/versions", DocumentId=, <keyword arguments>)

# DescribeDocumentVersions Operation

Retrieves the document versions for the specified document.

By default, only active versions are returned.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `DocumentId = ::String` -- *Required*
The ID of the document.


## `marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `limit = ::Int`
The maximum number of versions to return with this call.


## `include = ::String`
A comma-separated list of values. Specify "INITIALIZED" to include incomplete versions.


## `fields = ::String`
Specify "SOURCE" to include initialized versions and a URL for the source document.




# Returns

`DescribeDocumentVersionsResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `InvalidArgumentException`, `FailedDependencyException`, `ServiceUnavailableException` or `ProhibitedStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeDocumentVersions)
"""
@inline describe_document_versions(aws::AWSConfig=default_aws_config(); args...) = describe_document_versions(aws, args)

@inline describe_document_versions(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/documents/{DocumentId}/versions", args)

@inline describe_document_versions(args) = describe_document_versions(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.describe_folder_contents
    describe_folder_contents([::AWSConfig], arguments::Dict)
    describe_folder_contents([::AWSConfig]; FolderId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/folders/{FolderId}/contents", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/folders/{FolderId}/contents", FolderId=, <keyword arguments>)

# DescribeFolderContents Operation

Describes the contents of the specified folder, including its documents and subfolders.

By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `FolderId = ::String` -- *Required*
The ID of the folder.


## `sort = "DATE" or "NAME"`
The sorting criteria.


## `order = "ASCENDING" or "DESCENDING"`
The order for the contents of the folder.


## `limit = ::Int`
The maximum number of items to return with this call.


## `marker = ::String`
The marker for the next set of results. This marker was received from a previous call.


## `type = "ALL", "DOCUMENT" or "FOLDER"`
The type of items.


## `include = ::String`
The contents to include. Specify "INITIALIZED" to include initialized documents.




# Returns

`DescribeFolderContentsResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedResourceAccessException`, `InvalidArgumentException`, `FailedDependencyException`, `ServiceUnavailableException` or `ProhibitedStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeFolderContents)
"""
@inline describe_folder_contents(aws::AWSConfig=default_aws_config(); args...) = describe_folder_contents(aws, args)

@inline describe_folder_contents(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/folders/{FolderId}/contents", args)

@inline describe_folder_contents(args) = describe_folder_contents(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.describe_groups
    describe_groups([::AWSConfig], arguments::Dict)
    describe_groups([::AWSConfig]; searchQuery=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/groups", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/groups", searchQuery=, <keyword arguments>)

# DescribeGroups Operation

Describes the groups specified by query.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `searchQuery = ::String` -- *Required*
A query to describe groups by group name.


## `organizationId = ::String`
The ID of the organization.


## `marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `limit = ::Int`
The maximum number of items to return with this call.




# Returns

`DescribeGroupsResponse`

# Exceptions

`UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeGroups)
"""
@inline describe_groups(aws::AWSConfig=default_aws_config(); args...) = describe_groups(aws, args)

@inline describe_groups(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/groups", args)

@inline describe_groups(args) = describe_groups(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.describe_notification_subscriptions
    describe_notification_subscriptions([::AWSConfig], arguments::Dict)
    describe_notification_subscriptions([::AWSConfig]; OrganizationId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/organizations/{OrganizationId}/subscriptions", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/organizations/{OrganizationId}/subscriptions", OrganizationId=, <keyword arguments>)

# DescribeNotificationSubscriptions Operation

Lists the specified notification subscriptions.

# Arguments

## `OrganizationId = ::String` -- *Required*
The ID of the organization.


## `marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `limit = ::Int`
The maximum number of items to return with this call.




# Returns

`DescribeNotificationSubscriptionsResponse`

# Exceptions

`UnauthorizedResourceAccessException`, `EntityNotExistsException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeNotificationSubscriptions)
"""
@inline describe_notification_subscriptions(aws::AWSConfig=default_aws_config(); args...) = describe_notification_subscriptions(aws, args)

@inline describe_notification_subscriptions(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/organizations/{OrganizationId}/subscriptions", args)

@inline describe_notification_subscriptions(args) = describe_notification_subscriptions(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.describe_resource_permissions
    describe_resource_permissions([::AWSConfig], arguments::Dict)
    describe_resource_permissions([::AWSConfig]; ResourceId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/resources/{ResourceId}/permissions", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/resources/{ResourceId}/permissions", ResourceId=, <keyword arguments>)

# DescribeResourcePermissions Operation

Describes the permissions of a specified resource.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `ResourceId = ::String` -- *Required*
The ID of the resource.


## `principalId = ::String`
The ID of the principal to filter permissions by.


## `limit = ::Int`
The maximum number of items to return with this call.


## `marker = ::String`
The marker for the next set of results. (You received this marker from a previous call)




# Returns

`DescribeResourcePermissionsResponse`

# Exceptions

`UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeResourcePermissions)
"""
@inline describe_resource_permissions(aws::AWSConfig=default_aws_config(); args...) = describe_resource_permissions(aws, args)

@inline describe_resource_permissions(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/resources/{ResourceId}/permissions", args)

@inline describe_resource_permissions(args) = describe_resource_permissions(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.describe_root_folders
    describe_root_folders([::AWSConfig], arguments::Dict)
    describe_root_folders([::AWSConfig]; *header:* Authentication=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/me/root", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/me/root", *header:* Authentication=, <keyword arguments>)

# DescribeRootFolders Operation

Describes the current user's special folders; the `RootFolder` and the `RecycleBin`. `RootFolder` is the root of user's files and folders and `RecycleBin` is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients.

# Arguments

## `*header:* Authentication = ::String` -- *Required*
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `limit = ::Int`
The maximum number of items to return.


## `marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)




# Returns

`DescribeRootFoldersResponse`

# Exceptions

`UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `InvalidArgumentException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeRootFolders)
"""
@inline describe_root_folders(aws::AWSConfig=default_aws_config(); args...) = describe_root_folders(aws, args)

@inline describe_root_folders(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/me/root", args)

@inline describe_root_folders(args) = describe_root_folders(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.describe_users
    describe_users([::AWSConfig], arguments::Dict)
    describe_users([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/users", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/users", <keyword arguments>)

# DescribeUsers Operation

Describes the specified users. You can describe all users or filter the results (for example, by status or organization).

By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `organizationId = ::String`
The ID of the organization.


## `userIds = ::String`
The IDs of the users.


## `query = ::String`
A query to filter users by user name.


## `include = "ALL" or "ACTIVE_PENDING"`
The state of the users. Specify "ALL" to include inactive users.


## `order = "ASCENDING" or "DESCENDING"`
The order for the results.


## `sort = "USER_NAME", "FULL_NAME", "STORAGE_LIMIT", "USER_STATUS" or "STORAGE_USED"`
The sorting criteria.


## `marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `limit = ::Int`
The maximum number of items to return.


## `fields = ::String`
A comma-separated list of values. Specify "STORAGE_METADATA" to include the user storage quota and utilization information.




# Returns

`DescribeUsersResponse`

# Exceptions

`UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException`, `ServiceUnavailableException` or `InvalidArgumentException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeUsers)
"""
@inline describe_users(aws::AWSConfig=default_aws_config(); args...) = describe_users(aws, args)

@inline describe_users(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/users", args)

@inline describe_users(args) = describe_users(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.get_current_user
    get_current_user([::AWSConfig], arguments::Dict)
    get_current_user([::AWSConfig]; *header:* Authentication=)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/me", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/me", *header:* Authentication=)

# GetCurrentUser Operation

Retrieves details of the current user for whom the authentication token was generated. This is not a valid action for SigV4 (administrative API) clients.

# Arguments

## `*header:* Authentication = ::String` -- *Required*
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.




# Returns

`GetCurrentUserResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetCurrentUser)
"""
@inline get_current_user(aws::AWSConfig=default_aws_config(); args...) = get_current_user(aws, args)

@inline get_current_user(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/me", args)

@inline get_current_user(args) = get_current_user(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.get_document
    get_document([::AWSConfig], arguments::Dict)
    get_document([::AWSConfig]; DocumentId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/documents/{DocumentId}", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/documents/{DocumentId}", DocumentId=, <keyword arguments>)

# GetDocument Operation

Retrieves details of a document.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `DocumentId = ::String` -- *Required*
The ID of the document.


## `includeCustomMetadata = ::Bool`
Set this to `TRUE` to include custom metadata in the response.




# Returns

`GetDocumentResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `InvalidArgumentException`, `FailedDependencyException`, `ServiceUnavailableException` or `InvalidPasswordException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetDocument)
"""
@inline get_document(aws::AWSConfig=default_aws_config(); args...) = get_document(aws, args)

@inline get_document(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/documents/{DocumentId}", args)

@inline get_document(args) = get_document(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.get_document_path
    get_document_path([::AWSConfig], arguments::Dict)
    get_document_path([::AWSConfig]; DocumentId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/documents/{DocumentId}/path", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/documents/{DocumentId}/path", DocumentId=, <keyword arguments>)

# GetDocumentPath Operation

Retrieves the path information (the hierarchy from the root folder) for the requested document.

By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `DocumentId = ::String` -- *Required*
The ID of the document.


## `limit = ::Int`
The maximum number of levels in the hierarchy to return.


## `fields = ::String`
A comma-separated list of values. Specify `NAME` to include the names of the parent folders.


## `marker = ::String`
This value is not supported.




# Returns

`GetDocumentPathResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetDocumentPath)
"""
@inline get_document_path(aws::AWSConfig=default_aws_config(); args...) = get_document_path(aws, args)

@inline get_document_path(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/documents/{DocumentId}/path", args)

@inline get_document_path(args) = get_document_path(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.get_document_version
    get_document_version([::AWSConfig], arguments::Dict)
    get_document_version([::AWSConfig]; DocumentId=, VersionId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/documents/{DocumentId}/versions/{VersionId}", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/documents/{DocumentId}/versions/{VersionId}", DocumentId=, VersionId=, <keyword arguments>)

# GetDocumentVersion Operation

Retrieves version metadata for the specified document.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `DocumentId = ::String` -- *Required*
The ID of the document.


## `VersionId = ::String` -- *Required*
The version ID of the document.


## `fields = ::String`
A comma-separated list of values. Specify "SOURCE" to include a URL for the source document.


## `includeCustomMetadata = ::Bool`
Set this to TRUE to include custom metadata in the response.




# Returns

`GetDocumentVersionResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException`, `ServiceUnavailableException`, `ProhibitedStateException` or `InvalidPasswordException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetDocumentVersion)
"""
@inline get_document_version(aws::AWSConfig=default_aws_config(); args...) = get_document_version(aws, args)

@inline get_document_version(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/documents/{DocumentId}/versions/{VersionId}", args)

@inline get_document_version(args) = get_document_version(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.get_folder
    get_folder([::AWSConfig], arguments::Dict)
    get_folder([::AWSConfig]; FolderId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/folders/{FolderId}", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/folders/{FolderId}", FolderId=, <keyword arguments>)

# GetFolder Operation

Retrieves the metadata of the specified folder.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `FolderId = ::String` -- *Required*
The ID of the folder.


## `includeCustomMetadata = ::Bool`
Set to TRUE to include custom metadata in the response.




# Returns

`GetFolderResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `InvalidArgumentException`, `FailedDependencyException`, `ServiceUnavailableException` or `ProhibitedStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetFolder)
"""
@inline get_folder(aws::AWSConfig=default_aws_config(); args...) = get_folder(aws, args)

@inline get_folder(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/folders/{FolderId}", args)

@inline get_folder(args) = get_folder(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.get_folder_path
    get_folder_path([::AWSConfig], arguments::Dict)
    get_folder_path([::AWSConfig]; FolderId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "GET", "/api/v1/folders/{FolderId}/path", arguments::Dict)
    workdocs([::AWSConfig], "GET", "/api/v1/folders/{FolderId}/path", FolderId=, <keyword arguments>)

# GetFolderPath Operation

Retrieves the path information (the hierarchy from the root folder) for the specified folder.

By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `FolderId = ::String` -- *Required*
The ID of the folder.


## `limit = ::Int`
The maximum number of levels in the hierarchy to return.


## `fields = ::String`
A comma-separated list of values. Specify "NAME" to include the names of the parent folders.


## `marker = ::String`
This value is not supported.




# Returns

`GetFolderPathResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetFolderPath)
"""
@inline get_folder_path(aws::AWSConfig=default_aws_config(); args...) = get_folder_path(aws, args)

@inline get_folder_path(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "GET", "/api/v1/folders/{FolderId}/path", args)

@inline get_folder_path(args) = get_folder_path(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.initiate_document_version_upload
    initiate_document_version_upload([::AWSConfig], arguments::Dict)
    initiate_document_version_upload([::AWSConfig]; ParentFolderId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "POST", "/api/v1/documents", arguments::Dict)
    workdocs([::AWSConfig], "POST", "/api/v1/documents", ParentFolderId=, <keyword arguments>)

# InitiateDocumentVersionUpload Operation

Creates a new document object and version object.

The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call [UpdateDocumentVersion](@ref).

To cancel the document upload, call [AbortDocumentVersionUpload](@ref).

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `Id = ::String`
The ID of the document.


## `Name = ::String`
The name of the document.


## `ContentCreatedTimestamp = timestamp`
The timestamp when the content of the document was originally created.


## `ContentModifiedTimestamp = timestamp`
The timestamp when the content of the document was modified.


## `ContentType = ::String`
The content type of the document.


## `DocumentSizeInBytes = ::Int`
The size of the document, in bytes.


## `ParentFolderId = ::String` -- *Required*
The ID of the parent folder.




# Returns

`InitiateDocumentVersionUploadResponse`

# Exceptions

`EntityNotExistsException`, `EntityAlreadyExistsException`, `StorageLimitExceededException`, `StorageLimitWillExceedException`, `ProhibitedStateException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException`, `ServiceUnavailableException`, `DraftUploadOutOfSyncException` or `ResourceAlreadyCheckedOutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/InitiateDocumentVersionUpload)
"""
@inline initiate_document_version_upload(aws::AWSConfig=default_aws_config(); args...) = initiate_document_version_upload(aws, args)

@inline initiate_document_version_upload(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "POST", "/api/v1/documents", args)

@inline initiate_document_version_upload(args) = initiate_document_version_upload(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.remove_all_resource_permissions
    remove_all_resource_permissions([::AWSConfig], arguments::Dict)
    remove_all_resource_permissions([::AWSConfig]; ResourceId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "DELETE", "/api/v1/resources/{ResourceId}/permissions", arguments::Dict)
    workdocs([::AWSConfig], "DELETE", "/api/v1/resources/{ResourceId}/permissions", ResourceId=, <keyword arguments>)

# RemoveAllResourcePermissions Operation

Removes all the permissions from the specified resource.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `ResourceId = ::String` -- *Required*
The ID of the resource.




# Exceptions

`UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/RemoveAllResourcePermissions)
"""
@inline remove_all_resource_permissions(aws::AWSConfig=default_aws_config(); args...) = remove_all_resource_permissions(aws, args)

@inline remove_all_resource_permissions(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "DELETE", "/api/v1/resources/{ResourceId}/permissions", args)

@inline remove_all_resource_permissions(args) = remove_all_resource_permissions(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.remove_resource_permission
    remove_resource_permission([::AWSConfig], arguments::Dict)
    remove_resource_permission([::AWSConfig]; ResourceId=, PrincipalId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "DELETE", "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", arguments::Dict)
    workdocs([::AWSConfig], "DELETE", "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", ResourceId=, PrincipalId=, <keyword arguments>)

# RemoveResourcePermission Operation

Removes the permission for the specified principal from the specified resource.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `ResourceId = ::String` -- *Required*
The ID of the resource.


## `PrincipalId = ::String` -- *Required*
The principal ID of the resource.


## `type = "USER", "GROUP", "INVITE", "ANONYMOUS" or "ORGANIZATION"`
The principal type of the resource.




# Exceptions

`UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/RemoveResourcePermission)
"""
@inline remove_resource_permission(aws::AWSConfig=default_aws_config(); args...) = remove_resource_permission(aws, args)

@inline remove_resource_permission(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "DELETE", "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", args)

@inline remove_resource_permission(args) = remove_resource_permission(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.update_document
    update_document([::AWSConfig], arguments::Dict)
    update_document([::AWSConfig]; DocumentId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "PATCH", "/api/v1/documents/{DocumentId}", arguments::Dict)
    workdocs([::AWSConfig], "PATCH", "/api/v1/documents/{DocumentId}", DocumentId=, <keyword arguments>)

# UpdateDocument Operation

Updates the specified attributes of a document. The user must have access to both the document and its parent folder, if applicable.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `DocumentId = ::String` -- *Required*
The ID of the document.


## `Name = ::String`
The name of the document.


## `ParentFolderId = ::String`
The ID of the parent folder.


## `ResourceState = "ACTIVE", "RESTORING", "RECYCLING" or "RECYCLED"`
The resource state of the document. Only ACTIVE and RECYCLED are supported.




# Exceptions

`EntityNotExistsException`, `EntityAlreadyExistsException`, `LimitExceededException`, `ProhibitedStateException`, `ConcurrentModificationException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateDocument)
"""
@inline update_document(aws::AWSConfig=default_aws_config(); args...) = update_document(aws, args)

@inline update_document(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "PATCH", "/api/v1/documents/{DocumentId}", args)

@inline update_document(args) = update_document(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.update_document_version
    update_document_version([::AWSConfig], arguments::Dict)
    update_document_version([::AWSConfig]; DocumentId=, VersionId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "PATCH", "/api/v1/documents/{DocumentId}/versions/{VersionId}", arguments::Dict)
    workdocs([::AWSConfig], "PATCH", "/api/v1/documents/{DocumentId}/versions/{VersionId}", DocumentId=, VersionId=, <keyword arguments>)

# UpdateDocumentVersion Operation

Changes the status of the document version to ACTIVE.

Amazon WorkDocs also sets its document container to ACTIVE. This is the last step in a document upload, after the client uploads the document to an S3-presigned URL returned by [InitiateDocumentVersionUpload](@ref).

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `DocumentId = ::String` -- *Required*
The ID of the document.


## `VersionId = ::String` -- *Required*
The version ID of the document.


## `VersionStatus = "ACTIVE"`
The status of the version.




# Exceptions

`EntityNotExistsException`, `ProhibitedStateException`, `ConcurrentModificationException`, `InvalidOperationException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateDocumentVersion)
"""
@inline update_document_version(aws::AWSConfig=default_aws_config(); args...) = update_document_version(aws, args)

@inline update_document_version(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "PATCH", "/api/v1/documents/{DocumentId}/versions/{VersionId}", args)

@inline update_document_version(args) = update_document_version(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.update_folder
    update_folder([::AWSConfig], arguments::Dict)
    update_folder([::AWSConfig]; FolderId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "PATCH", "/api/v1/folders/{FolderId}", arguments::Dict)
    workdocs([::AWSConfig], "PATCH", "/api/v1/folders/{FolderId}", FolderId=, <keyword arguments>)

# UpdateFolder Operation

Updates the specified attributes of the specified folder. The user must have access to both the folder and its parent folder, if applicable.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `FolderId = ::String` -- *Required*
The ID of the folder.


## `Name = ::String`
The name of the folder.


## `ParentFolderId = ::String`
The ID of the parent folder.


## `ResourceState = "ACTIVE", "RESTORING", "RECYCLING" or "RECYCLED"`
The resource state of the folder. Only ACTIVE and RECYCLED are accepted values from the API.




# Exceptions

`EntityNotExistsException`, `EntityAlreadyExistsException`, `ProhibitedStateException`, `ConcurrentModificationException`, `LimitExceededException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `FailedDependencyException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateFolder)
"""
@inline update_folder(aws::AWSConfig=default_aws_config(); args...) = update_folder(aws, args)

@inline update_folder(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "PATCH", "/api/v1/folders/{FolderId}", args)

@inline update_folder(args) = update_folder(default_aws_config(), args)


"""
    using AWSSDK.WorkDocs.update_user
    update_user([::AWSConfig], arguments::Dict)
    update_user([::AWSConfig]; UserId=, <keyword arguments>)

    using AWSCore.Services.workdocs
    workdocs([::AWSConfig], "PATCH", "/api/v1/users/{UserId}", arguments::Dict)
    workdocs([::AWSConfig], "PATCH", "/api/v1/users/{UserId}", UserId=, <keyword arguments>)

# UpdateUser Operation

Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site.

# Arguments

## `*header:* Authentication = ::String`
Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.


## `UserId = ::String` -- *Required*
The ID of the user.


## `GivenName = ::String`
The given name of the user.


## `Surname = ::String`
The surname of the user.


## `Type = "USER", "ADMIN", "POWERUSER", "MINIMALUSER" or "WORKSPACESUSER"`
The type of the user.


## `StorageRule = [ ... ]`
The amount of storage for the user.
```
 StorageRule = [
        "StorageAllocatedInBytes" =>  ::Int,
        "StorageType" =>  "UNLIMITED" or "QUOTA"
    ]
```

## `TimeZoneId = ::String`
The time zone ID of the user.


## `Locale = "en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR" or "default"`
The locale of the user.


## `GrantPoweruserPrivileges = "TRUE" or "FALSE"`
Boolean value to determine whether the user is granted Poweruser privileges.




# Returns

`UpdateUserResponse`

# Exceptions

`EntityNotExistsException`, `UnauthorizedOperationException`, `UnauthorizedResourceAccessException`, `IllegalUserStateException`, `FailedDependencyException`, `ServiceUnavailableException`, `DeactivatingLastSystemUserException` or `InvalidArgumentException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateUser)
"""
@inline update_user(aws::AWSConfig=default_aws_config(); args...) = update_user(aws, args)

@inline update_user(aws::AWSConfig, args) = AWSCore.Services.workdocs(aws, "PATCH", "/api/v1/users/{UserId}", args)

@inline update_user(args) = update_user(default_aws_config(), args)




end # module WorkDocs


#==============================================================================#
# End of file
#==============================================================================#
