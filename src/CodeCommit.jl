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
