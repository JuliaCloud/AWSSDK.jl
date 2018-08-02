#==============================================================================#
# CodeCommit.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/codecommit-2015-04-13.normal.json
#==============================================================================#

__precompile__()

module CodeCommit

using AWSCore


"""
    using AWSSDK.CodeCommit.batch_get_repositories
    batch_get_repositories([::AWSConfig], arguments::Dict)
    batch_get_repositories([::AWSConfig]; repositoryNames=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "BatchGetRepositories", arguments::Dict)
    codecommit([::AWSConfig], "BatchGetRepositories", repositoryNames=)

# BatchGetRepositories Operation

Returns information about one or more repositories.

**Note**
> The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.

# Arguments

## `repositoryNames = [::String, ...]` -- *Required*
The names of the repositories to get information about.




# Returns

`BatchGetRepositoriesOutput`

# Exceptions

`RepositoryNamesRequiredException`, `MaximumRepositoryNamesExceededException`, `InvalidRepositoryNameException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchGetRepositories)
"""
@inline batch_get_repositories(aws::AWSConfig=default_aws_config(); args...) = batch_get_repositories(aws, args)

@inline batch_get_repositories(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "BatchGetRepositories", args)

@inline batch_get_repositories(args) = batch_get_repositories(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.create_branch
    create_branch([::AWSConfig], arguments::Dict)
    create_branch([::AWSConfig]; repositoryName=, branchName=, commitId=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "CreateBranch", arguments::Dict)
    codecommit([::AWSConfig], "CreateBranch", repositoryName=, branchName=, commitId=)

# CreateBranch Operation

Creates a new branch in a repository and points the branch to a commit.

**Note**
> Calling the create branch operation does not set a repository's default branch. To do this, call the update default branch operation.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository in which you want to create the new branch.


## `branchName = ::String` -- *Required*
The name of the new branch to create.


## `commitId = ::String` -- *Required*
The ID of the commit to point the new branch to.




# Exceptions

`RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `RepositoryDoesNotExistException`, `BranchNameRequiredException`, `BranchNameExistsException`, `InvalidBranchNameException`, `CommitIdRequiredException`, `CommitDoesNotExistException`, `InvalidCommitIdException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateBranch)
"""
@inline create_branch(aws::AWSConfig=default_aws_config(); args...) = create_branch(aws, args)

@inline create_branch(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "CreateBranch", args)

@inline create_branch(args) = create_branch(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.create_pull_request
    create_pull_request([::AWSConfig], arguments::Dict)
    create_pull_request([::AWSConfig]; title=, targets=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "CreatePullRequest", arguments::Dict)
    codecommit([::AWSConfig], "CreatePullRequest", title=, targets=, <keyword arguments>)

# CreatePullRequest Operation

Creates a pull request in the specified repository.

# Arguments

## `title = ::String` -- *Required*
The title of the pull request. This title will be used to identify the pull request to other users in the repository.


## `description = ::String`
A description of the pull request.


## `targets = [[ ... ], ...]` -- *Required*
The targets for the pull request, including the source of the code to be reviewed (the source branch), and the destination where the creator of the pull request intends the code to be merged after the pull request is closed (the destination branch).
```
 targets = [[
        "repositoryName" => <required> ::String,
        "sourceReference" => <required> ::String,
        "destinationReference" =>  ::String
    ], ...]
```

## `clientRequestToken = ::String`
A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.

**Note**
> The AWS SDKs prepopulate client request tokens. If using an AWS SDK, you do not have to generate an idempotency token, as this will be done for you.




# Returns

`CreatePullRequestOutput`

# Exceptions

`RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `RepositoryDoesNotExistException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException`, `EncryptionKeyUnavailableException`, `ClientRequestTokenRequiredException`, `InvalidClientRequestTokenException`, `IdempotencyParameterMismatchException`, `ReferenceNameRequiredException`, `InvalidReferenceNameException`, `ReferenceDoesNotExistException`, `ReferenceTypeNotSupportedException`, `TitleRequiredException`, `InvalidTitleException`, `InvalidDescriptionException`, `TargetsRequiredException`, `InvalidTargetsException`, `TargetRequiredException`, `InvalidTargetException`, `MultipleRepositoriesInPullRequestException`, `MaximumOpenPullRequestsExceededException` or `SourceAndDestinationAreSameException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreatePullRequest)
"""
@inline create_pull_request(aws::AWSConfig=default_aws_config(); args...) = create_pull_request(aws, args)

@inline create_pull_request(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "CreatePullRequest", args)

@inline create_pull_request(args) = create_pull_request(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.create_repository
    create_repository([::AWSConfig], arguments::Dict)
    create_repository([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "CreateRepository", arguments::Dict)
    codecommit([::AWSConfig], "CreateRepository", repositoryName=, <keyword arguments>)

# CreateRepository Operation

Creates a new, empty repository.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the new repository to be created.

**Note**
> The repository name must be unique across the calling AWS account. In addition, repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. For a full description of the limits on repository names, see [Limits](http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html) in the AWS CodeCommit User Guide. The suffix ".git" is prohibited.


## `repositoryDescription = ::String`
A comment or description about the new repository.

**Note**
> The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.




# Returns

`CreateRepositoryOutput`

# Exceptions

`RepositoryNameExistsException`, `RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `InvalidRepositoryDescriptionException`, `RepositoryLimitExceededException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateRepository)
"""
@inline create_repository(aws::AWSConfig=default_aws_config(); args...) = create_repository(aws, args)

@inline create_repository(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "CreateRepository", args)

@inline create_repository(args) = create_repository(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.delete_branch
    delete_branch([::AWSConfig], arguments::Dict)
    delete_branch([::AWSConfig]; repositoryName=, branchName=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "DeleteBranch", arguments::Dict)
    codecommit([::AWSConfig], "DeleteBranch", repositoryName=, branchName=)

# DeleteBranch Operation

Deletes a branch from a repository, unless that branch is the default branch for the repository.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository that contains the branch to be deleted.


## `branchName = ::String` -- *Required*
The name of the branch to delete.




# Returns

`DeleteBranchOutput`

# Exceptions

`RepositoryNameRequiredException`, `RepositoryDoesNotExistException`, `InvalidRepositoryNameException`, `BranchNameRequiredException`, `InvalidBranchNameException`, `DefaultBranchCannotBeDeletedException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteBranch)
"""
@inline delete_branch(aws::AWSConfig=default_aws_config(); args...) = delete_branch(aws, args)

@inline delete_branch(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "DeleteBranch", args)

@inline delete_branch(args) = delete_branch(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.delete_comment_content
    delete_comment_content([::AWSConfig], arguments::Dict)
    delete_comment_content([::AWSConfig]; commentId=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "DeleteCommentContent", arguments::Dict)
    codecommit([::AWSConfig], "DeleteCommentContent", commentId=)

# DeleteCommentContent Operation

Deletes the content of a comment made on a change, file, or commit in a repository.

# Arguments

## `commentId = ::String` -- *Required*
The unique, system-generated ID of the comment. To get this ID, use [GetCommentsForComparedCommit](@ref) or [GetCommentsForPullRequest](@ref).




# Returns

`DeleteCommentContentOutput`

# Exceptions

`CommentDoesNotExistException`, `CommentIdRequiredException`, `InvalidCommentIdException` or `CommentDeletedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteCommentContent)
"""
@inline delete_comment_content(aws::AWSConfig=default_aws_config(); args...) = delete_comment_content(aws, args)

@inline delete_comment_content(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "DeleteCommentContent", args)

@inline delete_comment_content(args) = delete_comment_content(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.delete_repository
    delete_repository([::AWSConfig], arguments::Dict)
    delete_repository([::AWSConfig]; repositoryName=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "DeleteRepository", arguments::Dict)
    codecommit([::AWSConfig], "DeleteRepository", repositoryName=)

# DeleteRepository Operation

Deletes a repository. If a specified repository was already deleted, a null repository ID will be returned.

**Important**
> Deleting a repository also deletes all associated objects and metadata. After a repository is deleted, all future push calls to the deleted repository will fail.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository to delete.




# Returns

`DeleteRepositoryOutput`

# Exceptions

`RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteRepository)
"""
@inline delete_repository(aws::AWSConfig=default_aws_config(); args...) = delete_repository(aws, args)

@inline delete_repository(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "DeleteRepository", args)

@inline delete_repository(args) = delete_repository(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.describe_pull_request_events
    describe_pull_request_events([::AWSConfig], arguments::Dict)
    describe_pull_request_events([::AWSConfig]; pullRequestId=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "DescribePullRequestEvents", arguments::Dict)
    codecommit([::AWSConfig], "DescribePullRequestEvents", pullRequestId=, <keyword arguments>)

# DescribePullRequestEvents Operation

Returns information about one or more pull request events.

# Arguments

## `pullRequestId = ::String` -- *Required*
The system-generated ID of the pull request. To get this ID, use [ListPullRequests](@ref).


## `pullRequestEventType = "PULL_REQUEST_CREATED", "PULL_REQUEST_STATUS_CHANGED", "PULL_REQUEST_SOURCE_REFERENCE_UPDATED" or "PULL_REQUEST_MERGE_STATE_CHANGED"`
Optional. The pull request event type about which you want to return information.


## `actorArn = ::String`
The Amazon Resource Name (ARN) of the user whose actions resulted in the event. Examples include updating the pull request with additional commits or changing the status of a pull request.


## `nextToken = ::String`
An enumeration token that when provided in a request, returns the next batch of the results.


## `maxResults = ::Int`
A non-negative integer used to limit the number of returned results. The default is 100 events, which is also the maximum number of events that can be returned in a result.




# Returns

`DescribePullRequestEventsOutput`

# Exceptions

`PullRequestDoesNotExistException`, `InvalidPullRequestIdException`, `PullRequestIdRequiredException`, `InvalidPullRequestEventTypeException`, `InvalidActorArnException`, `ActorDoesNotExistException`, `InvalidMaxResultsException`, `InvalidContinuationTokenException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DescribePullRequestEvents)
"""
@inline describe_pull_request_events(aws::AWSConfig=default_aws_config(); args...) = describe_pull_request_events(aws, args)

@inline describe_pull_request_events(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "DescribePullRequestEvents", args)

@inline describe_pull_request_events(args) = describe_pull_request_events(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.get_blob
    get_blob([::AWSConfig], arguments::Dict)
    get_blob([::AWSConfig]; repositoryName=, blobId=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "GetBlob", arguments::Dict)
    codecommit([::AWSConfig], "GetBlob", repositoryName=, blobId=)

# GetBlob Operation

Returns the base-64 encoded content of an individual blob within a repository.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository that contains the blob.


## `blobId = ::String` -- *Required*
The ID of the blob, which is its SHA-1 pointer.




# Returns

`GetBlobOutput`

# Exceptions

`RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `RepositoryDoesNotExistException`, `BlobIdRequiredException`, `InvalidBlobIdException`, `BlobIdDoesNotExistException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException`, `EncryptionKeyUnavailableException` or `FileTooLargeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetBlob)
"""
@inline get_blob(aws::AWSConfig=default_aws_config(); args...) = get_blob(aws, args)

@inline get_blob(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "GetBlob", args)

@inline get_blob(args) = get_blob(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.get_branch
    get_branch([::AWSConfig], arguments::Dict)
    get_branch([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "GetBranch", arguments::Dict)
    codecommit([::AWSConfig], "GetBranch", <keyword arguments>)

# GetBranch Operation

Returns information about a repository branch, including its name and the last commit ID.

# Arguments

## `repositoryName = ::String`
The name of the repository that contains the branch for which you want to retrieve information.


## `branchName = ::String`
The name of the branch for which you want to retrieve information.




# Returns

`GetBranchOutput`

# Exceptions

`RepositoryNameRequiredException`, `RepositoryDoesNotExistException`, `InvalidRepositoryNameException`, `BranchNameRequiredException`, `InvalidBranchNameException`, `BranchDoesNotExistException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetBranch)
"""
@inline get_branch(aws::AWSConfig=default_aws_config(); args...) = get_branch(aws, args)

@inline get_branch(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "GetBranch", args)

@inline get_branch(args) = get_branch(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.get_comment
    get_comment([::AWSConfig], arguments::Dict)
    get_comment([::AWSConfig]; commentId=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "GetComment", arguments::Dict)
    codecommit([::AWSConfig], "GetComment", commentId=)

# GetComment Operation

Returns the content of a comment made on a change, file, or commit in a repository.

# Arguments

## `commentId = ::String` -- *Required*
The unique, system-generated ID of the comment. To get this ID, use [GetCommentsForComparedCommit](@ref) or [GetCommentsForPullRequest](@ref).




# Returns

`GetCommentOutput`

# Exceptions

`CommentDoesNotExistException`, `CommentIdRequiredException`, `InvalidCommentIdException` or `CommentDeletedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetComment)
"""
@inline get_comment(aws::AWSConfig=default_aws_config(); args...) = get_comment(aws, args)

@inline get_comment(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "GetComment", args)

@inline get_comment(args) = get_comment(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.get_comments_for_compared_commit
    get_comments_for_compared_commit([::AWSConfig], arguments::Dict)
    get_comments_for_compared_commit([::AWSConfig]; repositoryName=, afterCommitId=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "GetCommentsForComparedCommit", arguments::Dict)
    codecommit([::AWSConfig], "GetCommentsForComparedCommit", repositoryName=, afterCommitId=, <keyword arguments>)

# GetCommentsForComparedCommit Operation

Returns information about comments made on the comparison between two commits.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository where you want to compare commits.


## `beforeCommitId = ::String`
To establish the directionality of the comparison, the full commit ID of the 'before' commit.


## `afterCommitId = ::String` -- *Required*
To establish the directionality of the comparison, the full commit ID of the 'after' commit.


## `nextToken = ::String`
An enumeration token that when provided in a request, returns the next batch of the results.


## `maxResults = ::Int`
A non-negative integer used to limit the number of returned results. The default is 100 comments, and is configurable up to 500.




# Returns

`GetCommentsForComparedCommitOutput`

# Exceptions

`RepositoryNameRequiredException`, `RepositoryDoesNotExistException`, `InvalidRepositoryNameException`, `CommitIdRequiredException`, `InvalidCommitIdException`, `CommitDoesNotExistException`, `InvalidMaxResultsException`, `InvalidContinuationTokenException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentsForComparedCommit)
"""
@inline get_comments_for_compared_commit(aws::AWSConfig=default_aws_config(); args...) = get_comments_for_compared_commit(aws, args)

@inline get_comments_for_compared_commit(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "GetCommentsForComparedCommit", args)

@inline get_comments_for_compared_commit(args) = get_comments_for_compared_commit(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.get_comments_for_pull_request
    get_comments_for_pull_request([::AWSConfig], arguments::Dict)
    get_comments_for_pull_request([::AWSConfig]; pullRequestId=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "GetCommentsForPullRequest", arguments::Dict)
    codecommit([::AWSConfig], "GetCommentsForPullRequest", pullRequestId=, <keyword arguments>)

# GetCommentsForPullRequest Operation

Returns comments made on a pull request.

# Arguments

## `pullRequestId = ::String` -- *Required*
The system-generated ID of the pull request. To get this ID, use [ListPullRequests](@ref).


## `repositoryName = ::String`
The name of the repository that contains the pull request.


## `beforeCommitId = ::String`
The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.


## `afterCommitId = ::String`
The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made.


## `nextToken = ::String`
An enumeration token that when provided in a request, returns the next batch of the results.


## `maxResults = ::Int`
A non-negative integer used to limit the number of returned results. The default is 100 comments. You can return up to 500 comments with a single request.




# Returns

`GetCommentsForPullRequestOutput`

# Exceptions

`PullRequestIdRequiredException`, `PullRequestDoesNotExistException`, `InvalidPullRequestIdException`, `RepositoryNameRequiredException`, `RepositoryDoesNotExistException`, `InvalidRepositoryNameException`, `CommitIdRequiredException`, `InvalidCommitIdException`, `CommitDoesNotExistException`, `InvalidMaxResultsException`, `InvalidContinuationTokenException`, `RepositoryNotAssociatedWithPullRequestException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentsForPullRequest)
"""
@inline get_comments_for_pull_request(aws::AWSConfig=default_aws_config(); args...) = get_comments_for_pull_request(aws, args)

@inline get_comments_for_pull_request(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "GetCommentsForPullRequest", args)

@inline get_comments_for_pull_request(args) = get_comments_for_pull_request(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.get_commit
    get_commit([::AWSConfig], arguments::Dict)
    get_commit([::AWSConfig]; repositoryName=, commitId=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "GetCommit", arguments::Dict)
    codecommit([::AWSConfig], "GetCommit", repositoryName=, commitId=)

# GetCommit Operation

Returns information about a commit, including commit message and committer information.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository to which the commit was made.


## `commitId = ::String` -- *Required*
The commit ID. Commit IDs are the full SHA of the commit.




# Returns

`GetCommitOutput`

# Exceptions

`RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `RepositoryDoesNotExistException`, `CommitIdRequiredException`, `InvalidCommitIdException`, `CommitIdDoesNotExistException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommit)
"""
@inline get_commit(aws::AWSConfig=default_aws_config(); args...) = get_commit(aws, args)

@inline get_commit(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "GetCommit", args)

@inline get_commit(args) = get_commit(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.get_differences
    get_differences([::AWSConfig], arguments::Dict)
    get_differences([::AWSConfig]; repositoryName=, afterCommitSpecifier=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "GetDifferences", arguments::Dict)
    codecommit([::AWSConfig], "GetDifferences", repositoryName=, afterCommitSpecifier=, <keyword arguments>)

# GetDifferences Operation

Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID or other fully qualified reference). Results can be limited to a specified path.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository where you want to get differences.


## `beforeCommitSpecifier = ::String`
The branch, tag, HEAD, or other fully qualified reference used to identify a commit. For example, the full commit ID. Optional. If not specified, all changes prior to the `afterCommitSpecifier` value will be shown. If you do not use `beforeCommitSpecifier` in your request, consider limiting the results with `maxResults`.


## `afterCommitSpecifier = ::String` -- *Required*
The branch, tag, HEAD, or other fully qualified reference used to identify a commit.


## `beforePath = ::String`
The file path in which to check for differences. Limits the results to this path. Can also be used to specify the previous name of a directory or folder. If `beforePath` and `afterPath` are not specified, differences will be shown for all paths.


## `afterPath = ::String`
The file path in which to check differences. Limits the results to this path. Can also be used to specify the changed name of a directory or folder, if it has changed. If not specified, differences will be shown for all paths.


## `MaxResults = ::Int`
A non-negative integer used to limit the number of returned results.


## `NextToken = ::String`
An enumeration token that when provided in a request, returns the next batch of the results.




# Returns

`GetDifferencesOutput`

# Exceptions

`RepositoryNameRequiredException`, `RepositoryDoesNotExistException`, `InvalidRepositoryNameException`, `InvalidContinuationTokenException`, `InvalidMaxResultsException`, `InvalidCommitIdException`, `CommitRequiredException`, `InvalidCommitException`, `CommitDoesNotExistException`, `InvalidPathException`, `PathDoesNotExistException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetDifferences)
"""
@inline get_differences(aws::AWSConfig=default_aws_config(); args...) = get_differences(aws, args)

@inline get_differences(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "GetDifferences", args)

@inline get_differences(args) = get_differences(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.get_merge_conflicts
    get_merge_conflicts([::AWSConfig], arguments::Dict)
    get_merge_conflicts([::AWSConfig]; repositoryName=, destinationCommitSpecifier=, sourceCommitSpecifier=, mergeOption=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "GetMergeConflicts", arguments::Dict)
    codecommit([::AWSConfig], "GetMergeConflicts", repositoryName=, destinationCommitSpecifier=, sourceCommitSpecifier=, mergeOption=)

# GetMergeConflicts Operation

Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository where the pull request was created.


## `destinationCommitSpecifier = ::String` -- *Required*
The branch, tag, HEAD, or other fully qualified reference used to identify a commit. For example, a branch name or a full commit ID.


## `sourceCommitSpecifier = ::String` -- *Required*
The branch, tag, HEAD, or other fully qualified reference used to identify a commit. For example, a branch name or a full commit ID.


## `mergeOption = "FAST_FORWARD_MERGE"` -- *Required*
The merge option or strategy you want to use to merge the code. The only valid value is FAST_FORWARD_MERGE.




# Returns

`GetMergeConflictsOutput`

# Exceptions

`RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `RepositoryDoesNotExistException`, `MergeOptionRequiredException`, `InvalidMergeOptionException`, `InvalidDestinationCommitSpecifierException`, `InvalidSourceCommitSpecifierException`, `CommitRequiredException`, `CommitDoesNotExistException`, `InvalidCommitException`, `TipsDivergenceExceededException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeConflicts)
"""
@inline get_merge_conflicts(aws::AWSConfig=default_aws_config(); args...) = get_merge_conflicts(aws, args)

@inline get_merge_conflicts(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "GetMergeConflicts", args)

@inline get_merge_conflicts(args) = get_merge_conflicts(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.get_pull_request
    get_pull_request([::AWSConfig], arguments::Dict)
    get_pull_request([::AWSConfig]; pullRequestId=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "GetPullRequest", arguments::Dict)
    codecommit([::AWSConfig], "GetPullRequest", pullRequestId=)

# GetPullRequest Operation

Gets information about a pull request in a specified repository.

# Arguments

## `pullRequestId = ::String` -- *Required*
The system-generated ID of the pull request. To get this ID, use [ListPullRequests](@ref).




# Returns

`GetPullRequestOutput`

# Exceptions

`PullRequestDoesNotExistException`, `InvalidPullRequestIdException`, `PullRequestIdRequiredException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetPullRequest)
"""
@inline get_pull_request(aws::AWSConfig=default_aws_config(); args...) = get_pull_request(aws, args)

@inline get_pull_request(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "GetPullRequest", args)

@inline get_pull_request(args) = get_pull_request(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.get_repository
    get_repository([::AWSConfig], arguments::Dict)
    get_repository([::AWSConfig]; repositoryName=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "GetRepository", arguments::Dict)
    codecommit([::AWSConfig], "GetRepository", repositoryName=)

# GetRepository Operation

Returns information about a repository.

**Note**
> The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository to get information about.




# Returns

`GetRepositoryOutput`

# Exceptions

`RepositoryNameRequiredException`, `RepositoryDoesNotExistException`, `InvalidRepositoryNameException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetRepository)
"""
@inline get_repository(aws::AWSConfig=default_aws_config(); args...) = get_repository(aws, args)

@inline get_repository(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "GetRepository", args)

@inline get_repository(args) = get_repository(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.get_repository_triggers
    get_repository_triggers([::AWSConfig], arguments::Dict)
    get_repository_triggers([::AWSConfig]; repositoryName=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "GetRepositoryTriggers", arguments::Dict)
    codecommit([::AWSConfig], "GetRepositoryTriggers", repositoryName=)

# GetRepositoryTriggers Operation

Gets information about triggers configured for a repository.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository for which the trigger is configured.




# Returns

`GetRepositoryTriggersOutput`

# Exceptions

`RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `RepositoryDoesNotExistException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetRepositoryTriggers)
"""
@inline get_repository_triggers(aws::AWSConfig=default_aws_config(); args...) = get_repository_triggers(aws, args)

@inline get_repository_triggers(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "GetRepositoryTriggers", args)

@inline get_repository_triggers(args) = get_repository_triggers(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.list_branches
    list_branches([::AWSConfig], arguments::Dict)
    list_branches([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "ListBranches", arguments::Dict)
    codecommit([::AWSConfig], "ListBranches", repositoryName=, <keyword arguments>)

# ListBranches Operation

Gets information about one or more branches in a repository.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository that contains the branches.


## `nextToken = ::String`
An enumeration token that allows the operation to batch the results.




# Returns

`ListBranchesOutput`

# Exceptions

`RepositoryNameRequiredException`, `RepositoryDoesNotExistException`, `InvalidRepositoryNameException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException`, `EncryptionKeyUnavailableException` or `InvalidContinuationTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListBranches)
"""
@inline list_branches(aws::AWSConfig=default_aws_config(); args...) = list_branches(aws, args)

@inline list_branches(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "ListBranches", args)

@inline list_branches(args) = list_branches(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.list_pull_requests
    list_pull_requests([::AWSConfig], arguments::Dict)
    list_pull_requests([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "ListPullRequests", arguments::Dict)
    codecommit([::AWSConfig], "ListPullRequests", repositoryName=, <keyword arguments>)

# ListPullRequests Operation

Returns a list of pull requests for a specified repository. The return list can be refined by pull request status or pull request author ARN.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository for which you want to list pull requests.


## `authorArn = ::String`
Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results to pull requests created by that user.


## `pullRequestStatus = "OPEN" or "CLOSED"`
Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.


## `nextToken = ::String`
An enumeration token that when provided in a request, returns the next batch of the results.


## `maxResults = ::Int`
A non-negative integer used to limit the number of returned results.




# Returns

`ListPullRequestsOutput`

# Exceptions

`InvalidPullRequestStatusException`, `InvalidAuthorArnException`, `AuthorDoesNotExistException`, `RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `RepositoryDoesNotExistException`, `InvalidMaxResultsException`, `InvalidContinuationTokenException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListPullRequests)
"""
@inline list_pull_requests(aws::AWSConfig=default_aws_config(); args...) = list_pull_requests(aws, args)

@inline list_pull_requests(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "ListPullRequests", args)

@inline list_pull_requests(args) = list_pull_requests(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.list_repositories
    list_repositories([::AWSConfig], arguments::Dict)
    list_repositories([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "ListRepositories", arguments::Dict)
    codecommit([::AWSConfig], "ListRepositories", <keyword arguments>)

# ListRepositories Operation

Gets information about one or more repositories.

# Arguments

## `nextToken = ::String`
An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved.


## `sortBy = "repositoryName" or "lastModifiedDate"`
The criteria used to sort the results of a list repositories operation.


## `order = "ascending" or "descending"`
The order in which to sort the results of a list repositories operation.




# Returns

`ListRepositoriesOutput`

# Exceptions

`InvalidSortByException`, `InvalidOrderException` or `InvalidContinuationTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListRepositories)
"""
@inline list_repositories(aws::AWSConfig=default_aws_config(); args...) = list_repositories(aws, args)

@inline list_repositories(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "ListRepositories", args)

@inline list_repositories(args) = list_repositories(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.merge_pull_request_by_fast_forward
    merge_pull_request_by_fast_forward([::AWSConfig], arguments::Dict)
    merge_pull_request_by_fast_forward([::AWSConfig]; pullRequestId=, repositoryName=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "MergePullRequestByFastForward", arguments::Dict)
    codecommit([::AWSConfig], "MergePullRequestByFastForward", pullRequestId=, repositoryName=, <keyword arguments>)

# MergePullRequestByFastForward Operation

Closes a pull request and attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the fast-forward merge option.

# Arguments

## `pullRequestId = ::String` -- *Required*
The system-generated ID of the pull request. To get this ID, use [ListPullRequests](@ref).


## `repositoryName = ::String` -- *Required*
The name of the repository where the pull request was created.


## `sourceCommitId = ::String`
The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.




# Returns

`MergePullRequestByFastForwardOutput`

# Exceptions

`ManualMergeRequiredException`, `PullRequestAlreadyClosedException`, `PullRequestDoesNotExistException`, `InvalidPullRequestIdException`, `PullRequestIdRequiredException`, `TipOfSourceReferenceIsDifferentException`, `ReferenceDoesNotExistException`, `InvalidCommitIdException`, `RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `RepositoryDoesNotExistException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergePullRequestByFastForward)
"""
@inline merge_pull_request_by_fast_forward(aws::AWSConfig=default_aws_config(); args...) = merge_pull_request_by_fast_forward(aws, args)

@inline merge_pull_request_by_fast_forward(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "MergePullRequestByFastForward", args)

@inline merge_pull_request_by_fast_forward(args) = merge_pull_request_by_fast_forward(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.post_comment_for_compared_commit
    post_comment_for_compared_commit([::AWSConfig], arguments::Dict)
    post_comment_for_compared_commit([::AWSConfig]; repositoryName=, afterCommitId=, content=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "PostCommentForComparedCommit", arguments::Dict)
    codecommit([::AWSConfig], "PostCommentForComparedCommit", repositoryName=, afterCommitId=, content=, <keyword arguments>)

# PostCommentForComparedCommit Operation

Posts a comment on the comparison between two commits.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository where you want to post a comment on the comparison between commits.


## `beforeCommitId = ::String`
To establish the directionality of the comparison, the full commit ID of the 'before' commit.


## `afterCommitId = ::String` -- *Required*
To establish the directionality of the comparison, the full commit ID of the 'after' commit.


## `location = [ ... ]`
The location of the comparison where you want to comment.
```
 location = [
        "filePath" =>  ::String,
        "filePosition" =>  ::Int,
        "relativeFileVersion" =>  "BEFORE" or "AFTER"
    ]
```

## `content = ::String` -- *Required*
The content of the comment you want to make.


## `clientRequestToken = ::String`
A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.




# Returns

`PostCommentForComparedCommitOutput`

# Exceptions

`RepositoryNameRequiredException`, `RepositoryDoesNotExistException`, `InvalidRepositoryNameException`, `ClientRequestTokenRequiredException`, `InvalidClientRequestTokenException`, `IdempotencyParameterMismatchException`, `CommentContentRequiredException`, `CommentContentSizeLimitExceededException`, `InvalidFileLocationException`, `InvalidRelativeFileVersionEnumException`, `PathRequiredException`, `InvalidFilePositionException`, `CommitIdRequiredException`, `InvalidCommitIdException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException`, `EncryptionKeyUnavailableException`, `BeforeCommitIdAndAfterCommitIdAreSameException`, `CommitDoesNotExistException`, `InvalidPathException` or `PathDoesNotExistException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentForComparedCommit)
"""
@inline post_comment_for_compared_commit(aws::AWSConfig=default_aws_config(); args...) = post_comment_for_compared_commit(aws, args)

@inline post_comment_for_compared_commit(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "PostCommentForComparedCommit", args)

@inline post_comment_for_compared_commit(args) = post_comment_for_compared_commit(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.post_comment_for_pull_request
    post_comment_for_pull_request([::AWSConfig], arguments::Dict)
    post_comment_for_pull_request([::AWSConfig]; pullRequestId=, repositoryName=, beforeCommitId=, afterCommitId=, content=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "PostCommentForPullRequest", arguments::Dict)
    codecommit([::AWSConfig], "PostCommentForPullRequest", pullRequestId=, repositoryName=, beforeCommitId=, afterCommitId=, content=, <keyword arguments>)

# PostCommentForPullRequest Operation

Posts a comment on a pull request.

# Arguments

## `pullRequestId = ::String` -- *Required*
The system-generated ID of the pull request. To get this ID, use [ListPullRequests](@ref).


## `repositoryName = ::String` -- *Required*
The name of the repository where you want to post a comment on a pull request.


## `beforeCommitId = ::String` -- *Required*
The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.


## `afterCommitId = ::String` -- *Required*
The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.


## `location = [ ... ]`
The location of the change where you want to post your comment. If no location is provided, the comment will be posted as a general comment on the pull request difference between the before commit ID and the after commit ID.
```
 location = [
        "filePath" =>  ::String,
        "filePosition" =>  ::Int,
        "relativeFileVersion" =>  "BEFORE" or "AFTER"
    ]
```

## `content = ::String` -- *Required*
The content of your comment on the change.


## `clientRequestToken = ::String`
A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.




# Returns

`PostCommentForPullRequestOutput`

# Exceptions

`PullRequestDoesNotExistException`, `InvalidPullRequestIdException`, `PullRequestIdRequiredException`, `RepositoryNotAssociatedWithPullRequestException`, `RepositoryNameRequiredException`, `RepositoryDoesNotExistException`, `InvalidRepositoryNameException`, `ClientRequestTokenRequiredException`, `InvalidClientRequestTokenException`, `IdempotencyParameterMismatchException`, `CommentContentRequiredException`, `CommentContentSizeLimitExceededException`, `InvalidFileLocationException`, `InvalidRelativeFileVersionEnumException`, `PathRequiredException`, `InvalidFilePositionException`, `CommitIdRequiredException`, `InvalidCommitIdException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException`, `EncryptionKeyUnavailableException`, `CommitDoesNotExistException`, `InvalidPathException`, `PathDoesNotExistException`, `PathRequiredException` or `BeforeCommitIdAndAfterCommitIdAreSameException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentForPullRequest)
"""
@inline post_comment_for_pull_request(aws::AWSConfig=default_aws_config(); args...) = post_comment_for_pull_request(aws, args)

@inline post_comment_for_pull_request(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "PostCommentForPullRequest", args)

@inline post_comment_for_pull_request(args) = post_comment_for_pull_request(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.post_comment_reply
    post_comment_reply([::AWSConfig], arguments::Dict)
    post_comment_reply([::AWSConfig]; inReplyTo=, content=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "PostCommentReply", arguments::Dict)
    codecommit([::AWSConfig], "PostCommentReply", inReplyTo=, content=, <keyword arguments>)

# PostCommentReply Operation

Posts a comment in reply to an existing comment on a comparison between commits or a pull request.

# Arguments

## `inReplyTo = ::String` -- *Required*
The system-generated ID of the comment to which you want to reply. To get this ID, use [GetCommentsForComparedCommit](@ref) or [GetCommentsForPullRequest](@ref).


## `clientRequestToken = ::String`
A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.


## `content = ::String` -- *Required*
The contents of your reply to a comment.




# Returns

`PostCommentReplyOutput`

# Exceptions

`ClientRequestTokenRequiredException`, `InvalidClientRequestTokenException`, `IdempotencyParameterMismatchException`, `CommentContentRequiredException`, `CommentContentSizeLimitExceededException`, `CommentDoesNotExistException`, `CommentIdRequiredException` or `InvalidCommentIdException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentReply)
"""
@inline post_comment_reply(aws::AWSConfig=default_aws_config(); args...) = post_comment_reply(aws, args)

@inline post_comment_reply(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "PostCommentReply", args)

@inline post_comment_reply(args) = post_comment_reply(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.put_file
    put_file([::AWSConfig], arguments::Dict)
    put_file([::AWSConfig]; repositoryName=, branchName=, fileContent=, filePath=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "PutFile", arguments::Dict)
    codecommit([::AWSConfig], "PutFile", repositoryName=, branchName=, fileContent=, filePath=, <keyword arguments>)

# PutFile Operation

Adds or updates a file in an AWS CodeCommit repository.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository where you want to add or update the file.


## `branchName = ::String` -- *Required*
The name of the branch where you want to add or update the file.


## `fileContent = blob` -- *Required*
The content of the file, in binary object format.


## `filePath = ::String` -- *Required*
The name of the file you want to add or update, including the relative path to the file in the repository.

**Note**
> If the path does not currently exist in the repository, the path will be created as part of adding the file.


## `fileMode = "EXECUTABLE", "NORMAL" or "SYMLINK"`
The file mode permissions of the blob. Valid file mode permissions are listed below.


## `parentCommitId = ::String`
The full commit ID of the head commit in the branch where you want to add or update the file. If the commit ID does not match the ID of the head commit at the time of the operation, an error will occur, and the file will not be added or updated.


## `commitMessage = ::String`
A message about why this file was added or updated. While optional, adding a message is strongly encouraged in order to provide a more useful commit history for your repository.


## `name = ::String`
The name of the person adding or updating the file. While optional, adding a name is strongly encouraged in order to provide a more useful commit history for your repository.


## `email = ::String`
An email address for the person adding or updating the file.




# Returns

`PutFileOutput`

# Exceptions

`RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `RepositoryDoesNotExistException`, `ParentCommitIdRequiredException`, `InvalidParentCommitIdException`, `ParentCommitDoesNotExistException`, `ParentCommitIdOutdatedException`, `FileContentRequiredException`, `FileContentSizeLimitExceededException`, `PathRequiredException`, `InvalidPathException`, `BranchNameRequiredException`, `InvalidBranchNameException`, `BranchDoesNotExistException`, `BranchNameIsTagNameException`, `InvalidFileModeException`, `NameLengthExceededException`, `InvalidEmailException`, `CommitMessageLengthExceededException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException`, `EncryptionKeyUnavailableException`, `SameFileContentException`, `FileNameConflictsWithDirectoryNameException` or `DirectoryNameConflictsWithFileNameException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PutFile)
"""
@inline put_file(aws::AWSConfig=default_aws_config(); args...) = put_file(aws, args)

@inline put_file(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "PutFile", args)

@inline put_file(args) = put_file(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.put_repository_triggers
    put_repository_triggers([::AWSConfig], arguments::Dict)
    put_repository_triggers([::AWSConfig]; repositoryName=, triggers=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "PutRepositoryTriggers", arguments::Dict)
    codecommit([::AWSConfig], "PutRepositoryTriggers", repositoryName=, triggers=)

# PutRepositoryTriggers Operation

Replaces all triggers for a repository. This can be used to create or delete triggers.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository where you want to create or update the trigger.


## `triggers = [[ ... ], ...]` -- *Required*
The JSON block of configuration information for each trigger.
```
 triggers = [[
        "name" => <required> ::String,
        "destinationArn" => <required> ::String,
        "customData" =>  ::String,
        "branches" =>  [::String, ...],
        "events" => <required> ["all", "updateReference", "createReference" or "deleteReference", ...]
    ], ...]
```



# Returns

`PutRepositoryTriggersOutput`

# Exceptions

`RepositoryDoesNotExistException`, `RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `RepositoryTriggersListRequiredException`, `MaximumRepositoryTriggersExceededException`, `InvalidRepositoryTriggerNameException`, `InvalidRepositoryTriggerDestinationArnException`, `InvalidRepositoryTriggerRegionException`, `InvalidRepositoryTriggerCustomDataException`, `MaximumBranchesExceededException`, `InvalidRepositoryTriggerBranchNameException`, `InvalidRepositoryTriggerEventsException`, `RepositoryTriggerNameRequiredException`, `RepositoryTriggerDestinationArnRequiredException`, `RepositoryTriggerBranchNameListRequiredException`, `RepositoryTriggerEventsListRequiredException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PutRepositoryTriggers)
"""
@inline put_repository_triggers(aws::AWSConfig=default_aws_config(); args...) = put_repository_triggers(aws, args)

@inline put_repository_triggers(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "PutRepositoryTriggers", args)

@inline put_repository_triggers(args) = put_repository_triggers(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.test_repository_triggers
    test_repository_triggers([::AWSConfig], arguments::Dict)
    test_repository_triggers([::AWSConfig]; repositoryName=, triggers=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "TestRepositoryTriggers", arguments::Dict)
    codecommit([::AWSConfig], "TestRepositoryTriggers", repositoryName=, triggers=)

# TestRepositoryTriggers Operation

Tests the functionality of repository triggers by sending information to the trigger target. If real data is available in the repository, the test will send data from the last commit. If no data is available, sample data will be generated.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository in which to test the triggers.


## `triggers = [[ ... ], ...]` -- *Required*
The list of triggers to test.
```
 triggers = [[
        "name" => <required> ::String,
        "destinationArn" => <required> ::String,
        "customData" =>  ::String,
        "branches" =>  [::String, ...],
        "events" => <required> ["all", "updateReference", "createReference" or "deleteReference", ...]
    ], ...]
```



# Returns

`TestRepositoryTriggersOutput`

# Exceptions

`RepositoryDoesNotExistException`, `RepositoryNameRequiredException`, `InvalidRepositoryNameException`, `RepositoryTriggersListRequiredException`, `MaximumRepositoryTriggersExceededException`, `InvalidRepositoryTriggerNameException`, `InvalidRepositoryTriggerDestinationArnException`, `InvalidRepositoryTriggerRegionException`, `InvalidRepositoryTriggerCustomDataException`, `MaximumBranchesExceededException`, `InvalidRepositoryTriggerBranchNameException`, `InvalidRepositoryTriggerEventsException`, `RepositoryTriggerNameRequiredException`, `RepositoryTriggerDestinationArnRequiredException`, `RepositoryTriggerBranchNameListRequiredException`, `RepositoryTriggerEventsListRequiredException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TestRepositoryTriggers)
"""
@inline test_repository_triggers(aws::AWSConfig=default_aws_config(); args...) = test_repository_triggers(aws, args)

@inline test_repository_triggers(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "TestRepositoryTriggers", args)

@inline test_repository_triggers(args) = test_repository_triggers(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.update_comment
    update_comment([::AWSConfig], arguments::Dict)
    update_comment([::AWSConfig]; commentId=, content=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "UpdateComment", arguments::Dict)
    codecommit([::AWSConfig], "UpdateComment", commentId=, content=)

# UpdateComment Operation

Replaces the contents of a comment.

# Arguments

## `commentId = ::String` -- *Required*
The system-generated ID of the comment you want to update. To get this ID, use [GetCommentsForComparedCommit](@ref) or [GetCommentsForPullRequest](@ref).


## `content = ::String` -- *Required*
The updated content with which you want to replace the existing content of the comment.




# Returns

`UpdateCommentOutput`

# Exceptions

`CommentContentRequiredException`, `CommentContentSizeLimitExceededException`, `CommentDoesNotExistException`, `CommentIdRequiredException`, `InvalidCommentIdException`, `CommentNotCreatedByCallerException` or `CommentDeletedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateComment)
"""
@inline update_comment(aws::AWSConfig=default_aws_config(); args...) = update_comment(aws, args)

@inline update_comment(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "UpdateComment", args)

@inline update_comment(args) = update_comment(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.update_default_branch
    update_default_branch([::AWSConfig], arguments::Dict)
    update_default_branch([::AWSConfig]; repositoryName=, defaultBranchName=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "UpdateDefaultBranch", arguments::Dict)
    codecommit([::AWSConfig], "UpdateDefaultBranch", repositoryName=, defaultBranchName=)

# UpdateDefaultBranch Operation

Sets or changes the default branch name for the specified repository.

**Note**
> If you use this operation to change the default branch name to the current default branch name, a success message is returned even though the default branch did not change.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository to set or change the default branch for.


## `defaultBranchName = ::String` -- *Required*
The name of the branch to set as the default.




# Exceptions

`RepositoryNameRequiredException`, `RepositoryDoesNotExistException`, `InvalidRepositoryNameException`, `BranchNameRequiredException`, `InvalidBranchNameException`, `BranchDoesNotExistException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateDefaultBranch)
"""
@inline update_default_branch(aws::AWSConfig=default_aws_config(); args...) = update_default_branch(aws, args)

@inline update_default_branch(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "UpdateDefaultBranch", args)

@inline update_default_branch(args) = update_default_branch(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.update_pull_request_description
    update_pull_request_description([::AWSConfig], arguments::Dict)
    update_pull_request_description([::AWSConfig]; pullRequestId=, description=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "UpdatePullRequestDescription", arguments::Dict)
    codecommit([::AWSConfig], "UpdatePullRequestDescription", pullRequestId=, description=)

# UpdatePullRequestDescription Operation

Replaces the contents of the description of a pull request.

# Arguments

## `pullRequestId = ::String` -- *Required*
The system-generated ID of the pull request. To get this ID, use [ListPullRequests](@ref).


## `description = ::String` -- *Required*
The updated content of the description for the pull request. This content will replace the existing description.




# Returns

`UpdatePullRequestDescriptionOutput`

# Exceptions

`PullRequestDoesNotExistException`, `InvalidPullRequestIdException`, `PullRequestIdRequiredException`, `InvalidDescriptionException` or `PullRequestAlreadyClosedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestDescription)
"""
@inline update_pull_request_description(aws::AWSConfig=default_aws_config(); args...) = update_pull_request_description(aws, args)

@inline update_pull_request_description(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "UpdatePullRequestDescription", args)

@inline update_pull_request_description(args) = update_pull_request_description(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.update_pull_request_status
    update_pull_request_status([::AWSConfig], arguments::Dict)
    update_pull_request_status([::AWSConfig]; pullRequestId=, pullRequestStatus=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "UpdatePullRequestStatus", arguments::Dict)
    codecommit([::AWSConfig], "UpdatePullRequestStatus", pullRequestId=, pullRequestStatus=)

# UpdatePullRequestStatus Operation

Updates the status of a pull request.

# Arguments

## `pullRequestId = ::String` -- *Required*
The system-generated ID of the pull request. To get this ID, use [ListPullRequests](@ref).


## `pullRequestStatus = "OPEN" or "CLOSED"` -- *Required*
The status of the pull request. The only valid operations are to update the status from `OPEN` to `OPEN`, `OPEN` to `CLOSED` or from from `CLOSED` to `CLOSED`.




# Returns

`UpdatePullRequestStatusOutput`

# Exceptions

`PullRequestDoesNotExistException`, `InvalidPullRequestIdException`, `PullRequestIdRequiredException`, `InvalidPullRequestStatusUpdateException`, `InvalidPullRequestStatusException`, `PullRequestStatusRequiredException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestStatus)
"""
@inline update_pull_request_status(aws::AWSConfig=default_aws_config(); args...) = update_pull_request_status(aws, args)

@inline update_pull_request_status(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "UpdatePullRequestStatus", args)

@inline update_pull_request_status(args) = update_pull_request_status(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.update_pull_request_title
    update_pull_request_title([::AWSConfig], arguments::Dict)
    update_pull_request_title([::AWSConfig]; pullRequestId=, title=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "UpdatePullRequestTitle", arguments::Dict)
    codecommit([::AWSConfig], "UpdatePullRequestTitle", pullRequestId=, title=)

# UpdatePullRequestTitle Operation

Replaces the title of a pull request.

# Arguments

## `pullRequestId = ::String` -- *Required*
The system-generated ID of the pull request. To get this ID, use [ListPullRequests](@ref).


## `title = ::String` -- *Required*
The updated title of the pull request. This will replace the existing title.




# Returns

`UpdatePullRequestTitleOutput`

# Exceptions

`PullRequestDoesNotExistException`, `InvalidPullRequestIdException`, `PullRequestIdRequiredException`, `TitleRequiredException`, `InvalidTitleException` or `PullRequestAlreadyClosedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestTitle)
"""
@inline update_pull_request_title(aws::AWSConfig=default_aws_config(); args...) = update_pull_request_title(aws, args)

@inline update_pull_request_title(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "UpdatePullRequestTitle", args)

@inline update_pull_request_title(args) = update_pull_request_title(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.update_repository_description
    update_repository_description([::AWSConfig], arguments::Dict)
    update_repository_description([::AWSConfig]; repositoryName=, <keyword arguments>)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "UpdateRepositoryDescription", arguments::Dict)
    codecommit([::AWSConfig], "UpdateRepositoryDescription", repositoryName=, <keyword arguments>)

# UpdateRepositoryDescription Operation

Sets or changes the comment or description for a repository.

**Note**
> The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.

# Arguments

## `repositoryName = ::String` -- *Required*
The name of the repository to set or change the comment or description for.


## `repositoryDescription = ::String`
The new comment or description for the specified repository. Repository descriptions are limited to 1,000 characters.




# Exceptions

`RepositoryNameRequiredException`, `RepositoryDoesNotExistException`, `InvalidRepositoryNameException`, `InvalidRepositoryDescriptionException`, `EncryptionIntegrityChecksFailedException`, `EncryptionKeyAccessDeniedException`, `EncryptionKeyDisabledException`, `EncryptionKeyNotFoundException` or `EncryptionKeyUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateRepositoryDescription)
"""
@inline update_repository_description(aws::AWSConfig=default_aws_config(); args...) = update_repository_description(aws, args)

@inline update_repository_description(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "UpdateRepositoryDescription", args)

@inline update_repository_description(args) = update_repository_description(default_aws_config(), args)


"""
    using AWSSDK.CodeCommit.update_repository_name
    update_repository_name([::AWSConfig], arguments::Dict)
    update_repository_name([::AWSConfig]; oldName=, newName=)

    using AWSCore.Services.codecommit
    codecommit([::AWSConfig], "UpdateRepositoryName", arguments::Dict)
    codecommit([::AWSConfig], "UpdateRepositoryName", oldName=, newName=)

# UpdateRepositoryName Operation

Renames a repository. The repository name must be unique across the calling AWS account. In addition, repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. The suffix ".git" is prohibited. For a full description of the limits on repository names, see [Limits](http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html) in the AWS CodeCommit User Guide.

# Arguments

## `oldName = ::String` -- *Required*
The existing name of the repository.


## `newName = ::String` -- *Required*
The new name for the repository.




# Exceptions

`RepositoryDoesNotExistException`, `RepositoryNameExistsException`, `RepositoryNameRequiredException` or `InvalidRepositoryNameException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateRepositoryName)
"""
@inline update_repository_name(aws::AWSConfig=default_aws_config(); args...) = update_repository_name(aws, args)

@inline update_repository_name(aws::AWSConfig, args) = AWSCore.Services.codecommit(aws, "UpdateRepositoryName", args)

@inline update_repository_name(args) = update_repository_name(default_aws_config(), args)




end # module CodeCommit


#==============================================================================#
# End of file
#==============================================================================#
