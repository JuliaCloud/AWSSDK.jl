#==============================================================================#
# MigrationHub.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/AWSMigrationHub-2017-05-31.normal.json
#==============================================================================#

__precompile__()

module MigrationHub

using AWSCore


"""
    using AWSSDK.MigrationHub.associate_created_artifact
    associate_created_artifact([::AWSConfig], arguments::Dict)
    associate_created_artifact([::AWSConfig]; ProgressUpdateStream=, MigrationTaskName=, CreatedArtifact=, <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "AssociateCreatedArtifact", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "AssociateCreatedArtifact", ProgressUpdateStream=, MigrationTaskName=, CreatedArtifact=, <keyword arguments>)

# AssociateCreatedArtifact Operation

Associates a created artifact of an AWS cloud resource, the target receiving the migration, with the migration task performed by a migration tool. This API has the following traits:

*   Migration tools can call the `AssociateCreatedArtifact` operation to indicate which AWS artifact is associated with a migration task.

*   The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b`.

*   Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or DMS endpoint, etc.

# Arguments

## `ProgressUpdateStream = ::String` -- *Required*
The name of the ProgressUpdateStream.


## `MigrationTaskName = ::String` -- *Required*
Unique identifier that references the migration task.


## `CreatedArtifact = [ ... ]` -- *Required*
An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS instance, etc.)
```
 CreatedArtifact = [
        "Name" => <required> ::String,
        "Description" =>  ::String
    ]
```

## `DryRun = ::Bool`
Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.




# Returns

`AssociateCreatedArtifactResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `DryRunOperation`, `UnauthorizedOperation`, `InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/AssociateCreatedArtifact)
"""
@inline associate_created_artifact(aws::AWSConfig=default_aws_config(); args...) = associate_created_artifact(aws, args)

@inline associate_created_artifact(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "AssociateCreatedArtifact", args)

@inline associate_created_artifact(args) = associate_created_artifact(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.associate_discovered_resource
    associate_discovered_resource([::AWSConfig], arguments::Dict)
    associate_discovered_resource([::AWSConfig]; ProgressUpdateStream=, MigrationTaskName=, DiscoveredResource=, <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "AssociateDiscoveredResource", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "AssociateDiscoveredResource", ProgressUpdateStream=, MigrationTaskName=, DiscoveredResource=, <keyword arguments>)

# AssociateDiscoveredResource Operation

Associates a discovered resource ID from Application Discovery Service (ADS) with a migration task.

# Arguments

## `ProgressUpdateStream = ::String` -- *Required*
The name of the ProgressUpdateStream.


## `MigrationTaskName = ::String` -- *Required*
The identifier given to the MigrationTask.


## `DiscoveredResource = [ ... ]` -- *Required*
Object representing a Resource.
```
 DiscoveredResource = [
        "ConfigurationId" => <required> ::String,
        "Description" =>  ::String
    ]
```

## `DryRun = ::Bool`
Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.




# Returns

`AssociateDiscoveredResourceResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `DryRunOperation`, `UnauthorizedOperation`, `InvalidInputException`, `PolicyErrorException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/AssociateDiscoveredResource)
"""
@inline associate_discovered_resource(aws::AWSConfig=default_aws_config(); args...) = associate_discovered_resource(aws, args)

@inline associate_discovered_resource(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "AssociateDiscoveredResource", args)

@inline associate_discovered_resource(args) = associate_discovered_resource(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.create_progress_update_stream
    create_progress_update_stream([::AWSConfig], arguments::Dict)
    create_progress_update_stream([::AWSConfig]; ProgressUpdateStreamName=, <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "CreateProgressUpdateStream", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "CreateProgressUpdateStream", ProgressUpdateStreamName=, <keyword arguments>)

# CreateProgressUpdateStream Operation

Creates a progress update stream which is an AWS resource used for access control as well as a namespace for migration task names that is implicitly linked to your AWS account. It must uniquely identify the migration tool as it is used for all updates made by the tool; however, it does not need to be unique for each AWS account because it is scoped to the AWS account.

# Arguments

## `ProgressUpdateStreamName = ::String` -- *Required*
The name of the ProgressUpdateStream.


## `DryRun = ::Bool`
Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.




# Returns

`CreateProgressUpdateStreamResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `DryRunOperation`, `UnauthorizedOperation` or `InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/CreateProgressUpdateStream)
"""
@inline create_progress_update_stream(aws::AWSConfig=default_aws_config(); args...) = create_progress_update_stream(aws, args)

@inline create_progress_update_stream(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "CreateProgressUpdateStream", args)

@inline create_progress_update_stream(args) = create_progress_update_stream(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.delete_progress_update_stream
    delete_progress_update_stream([::AWSConfig], arguments::Dict)
    delete_progress_update_stream([::AWSConfig]; ProgressUpdateStreamName=, <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "DeleteProgressUpdateStream", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "DeleteProgressUpdateStream", ProgressUpdateStreamName=, <keyword arguments>)

# DeleteProgressUpdateStream Operation

Deletes a progress update stream, including all of its tasks, which was previously created as an AWS resource used for access control. This API has the following traits:

*   The only parameter needed for `DeleteProgressUpdateStream` is the stream name (same as a `CreateProgressUpdateStream` call).

*   The call will return, and a background process will asynchronously delete the stream and all of its resources (tasks, associated resources, resource attributes, created artifacts).

*   If the stream takes time to be deleted, it might still show up on a `ListProgressUpdateStreams` call.

*   `CreateProgressUpdateStream`, `ImportMigrationTask`, `NotifyMigrationTaskState`, and all Associate[*] APIs realted to the tasks belonging to the stream will throw "InvalidInputException" if the stream of the same name is in the process of being deleted.

*   Once the stream and all of its resources are deleted, `CreateProgressUpdateStream` for a stream of the same name will succeed, and that stream will be an entirely new logical resource (without any resources associated with the old stream).

# Arguments

## `ProgressUpdateStreamName = ::String` -- *Required*
The name of the ProgressUpdateStream.


## `DryRun = ::Bool`
Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.




# Returns

`DeleteProgressUpdateStreamResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `DryRunOperation`, `UnauthorizedOperation`, `InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DeleteProgressUpdateStream)
"""
@inline delete_progress_update_stream(aws::AWSConfig=default_aws_config(); args...) = delete_progress_update_stream(aws, args)

@inline delete_progress_update_stream(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "DeleteProgressUpdateStream", args)

@inline delete_progress_update_stream(args) = delete_progress_update_stream(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.describe_application_state
    describe_application_state([::AWSConfig], arguments::Dict)
    describe_application_state([::AWSConfig]; ApplicationId=)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "DescribeApplicationState", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "DescribeApplicationState", ApplicationId=)

# DescribeApplicationState Operation

Gets the migration status of an application.

# Arguments

## `ApplicationId = ::String` -- *Required*
The configurationId in ADS that uniquely identifies the grouped application.




# Returns

`DescribeApplicationStateResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `InvalidInputException`, `PolicyErrorException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DescribeApplicationState)
"""
@inline describe_application_state(aws::AWSConfig=default_aws_config(); args...) = describe_application_state(aws, args)

@inline describe_application_state(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "DescribeApplicationState", args)

@inline describe_application_state(args) = describe_application_state(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.describe_migration_task
    describe_migration_task([::AWSConfig], arguments::Dict)
    describe_migration_task([::AWSConfig]; ProgressUpdateStream=, MigrationTaskName=)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "DescribeMigrationTask", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "DescribeMigrationTask", ProgressUpdateStream=, MigrationTaskName=)

# DescribeMigrationTask Operation

Retrieves a list of all attributes associated with a specific migration task.

# Arguments

## `ProgressUpdateStream = ::String` -- *Required*
The name of the ProgressUpdateStream.


## `MigrationTaskName = ::String` -- *Required*
The identifier given to the MigrationTask.




# Returns

`DescribeMigrationTaskResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DescribeMigrationTask)
"""
@inline describe_migration_task(aws::AWSConfig=default_aws_config(); args...) = describe_migration_task(aws, args)

@inline describe_migration_task(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "DescribeMigrationTask", args)

@inline describe_migration_task(args) = describe_migration_task(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.disassociate_created_artifact
    disassociate_created_artifact([::AWSConfig], arguments::Dict)
    disassociate_created_artifact([::AWSConfig]; ProgressUpdateStream=, MigrationTaskName=, CreatedArtifactName=, <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "DisassociateCreatedArtifact", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "DisassociateCreatedArtifact", ProgressUpdateStream=, MigrationTaskName=, CreatedArtifactName=, <keyword arguments>)

# DisassociateCreatedArtifact Operation

Disassociates a created artifact of an AWS resource with a migration task performed by a migration tool that was previously associated. This API has the following traits:

*   A migration user can call the `DisassociateCreatedArtifacts` operation to disassociate a created AWS Artifact from a migration task.

*   The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b`.

*   Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or RDS instance, etc.

# Arguments

## `ProgressUpdateStream = ::String` -- *Required*
The name of the ProgressUpdateStream.


## `MigrationTaskName = ::String` -- *Required*
Unique identifier that references the migration task to be disassociated with the artifact.


## `CreatedArtifactName = ::String` -- *Required*
An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS instance, etc.)


## `DryRun = ::Bool`
Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.




# Returns

`DisassociateCreatedArtifactResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `DryRunOperation`, `UnauthorizedOperation`, `InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DisassociateCreatedArtifact)
"""
@inline disassociate_created_artifact(aws::AWSConfig=default_aws_config(); args...) = disassociate_created_artifact(aws, args)

@inline disassociate_created_artifact(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "DisassociateCreatedArtifact", args)

@inline disassociate_created_artifact(args) = disassociate_created_artifact(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.disassociate_discovered_resource
    disassociate_discovered_resource([::AWSConfig], arguments::Dict)
    disassociate_discovered_resource([::AWSConfig]; ProgressUpdateStream=, MigrationTaskName=, ConfigurationId=, <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "DisassociateDiscoveredResource", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "DisassociateDiscoveredResource", ProgressUpdateStream=, MigrationTaskName=, ConfigurationId=, <keyword arguments>)

# DisassociateDiscoveredResource Operation

Disassociate an Application Discovery Service (ADS) discovered resource from a migration task.

# Arguments

## `ProgressUpdateStream = ::String` -- *Required*
The name of the ProgressUpdateStream.


## `MigrationTaskName = ::String` -- *Required*
The identifier given to the MigrationTask.


## `ConfigurationId = ::String` -- *Required*
ConfigurationId of the ADS resource to be disassociated.


## `DryRun = ::Bool`
Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.




# Returns

`DisassociateDiscoveredResourceResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `DryRunOperation`, `UnauthorizedOperation`, `InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DisassociateDiscoveredResource)
"""
@inline disassociate_discovered_resource(aws::AWSConfig=default_aws_config(); args...) = disassociate_discovered_resource(aws, args)

@inline disassociate_discovered_resource(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "DisassociateDiscoveredResource", args)

@inline disassociate_discovered_resource(args) = disassociate_discovered_resource(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.import_migration_task
    import_migration_task([::AWSConfig], arguments::Dict)
    import_migration_task([::AWSConfig]; ProgressUpdateStream=, MigrationTaskName=, <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "ImportMigrationTask", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "ImportMigrationTask", ProgressUpdateStream=, MigrationTaskName=, <keyword arguments>)

# ImportMigrationTask Operation

Registers a new migration task which represents a server, database, etc., being migrated to AWS by a migration tool.

This API is a prerequisite to calling the `NotifyMigrationTaskState` API as the migration tool must first register the migration task with Migration Hub.

# Arguments

## `ProgressUpdateStream = ::String` -- *Required*
The name of the ProgressUpdateStream.


## `MigrationTaskName = ::String` -- *Required*
Unique identifier that references the migration task.


## `DryRun = ::Bool`
Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.




# Returns

`ImportMigrationTaskResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `DryRunOperation`, `UnauthorizedOperation`, `InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ImportMigrationTask)
"""
@inline import_migration_task(aws::AWSConfig=default_aws_config(); args...) = import_migration_task(aws, args)

@inline import_migration_task(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "ImportMigrationTask", args)

@inline import_migration_task(args) = import_migration_task(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.list_created_artifacts
    list_created_artifacts([::AWSConfig], arguments::Dict)
    list_created_artifacts([::AWSConfig]; ProgressUpdateStream=, MigrationTaskName=, <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "ListCreatedArtifacts", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "ListCreatedArtifacts", ProgressUpdateStream=, MigrationTaskName=, <keyword arguments>)

# ListCreatedArtifacts Operation

Lists the created artifacts attached to a given migration task in an update stream. This API has the following traits:

*   Gets the list of the created artifacts while migration is taking place.

*   Shows the artifacts created by the migration tool that was associated by the `AssociateCreatedArtifact` API.

*   Lists created artifacts in a paginated interface.

# Arguments

## `ProgressUpdateStream = ::String` -- *Required*
The name of the ProgressUpdateStream.


## `MigrationTaskName = ::String` -- *Required*
Unique identifier that references the migration task.


## `NextToken = ::String`
If a `NextToken` was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `NextToken`.


## `MaxResults = ::Int`
Maximum number of results to be returned per page.




# Returns

`ListCreatedArtifactsResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListCreatedArtifacts)
"""
@inline list_created_artifacts(aws::AWSConfig=default_aws_config(); args...) = list_created_artifacts(aws, args)

@inline list_created_artifacts(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "ListCreatedArtifacts", args)

@inline list_created_artifacts(args) = list_created_artifacts(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.list_discovered_resources
    list_discovered_resources([::AWSConfig], arguments::Dict)
    list_discovered_resources([::AWSConfig]; ProgressUpdateStream=, MigrationTaskName=, <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "ListDiscoveredResources", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "ListDiscoveredResources", ProgressUpdateStream=, MigrationTaskName=, <keyword arguments>)

# ListDiscoveredResources Operation

Lists discovered resources associated with the given `MigrationTask`.

# Arguments

## `ProgressUpdateStream = ::String` -- *Required*
The name of the ProgressUpdateStream.


## `MigrationTaskName = ::String` -- *Required*
The name of the MigrationTask.


## `NextToken = ::String`
If a `NextToken` was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `NextToken`.


## `MaxResults = ::Int`
The maximum number of results returned per page.




# Returns

`ListDiscoveredResourcesResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListDiscoveredResources)
"""
@inline list_discovered_resources(aws::AWSConfig=default_aws_config(); args...) = list_discovered_resources(aws, args)

@inline list_discovered_resources(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "ListDiscoveredResources", args)

@inline list_discovered_resources(args) = list_discovered_resources(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.list_migration_tasks
    list_migration_tasks([::AWSConfig], arguments::Dict)
    list_migration_tasks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "ListMigrationTasks", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "ListMigrationTasks", <keyword arguments>)

# ListMigrationTasks Operation

Lists all, or filtered by resource name, migration tasks associated with the user account making this call. This API has the following traits:

*   Can show a summary list of the most recent migration tasks.

*   Can show a summary list of migration tasks associated with a given discovered resource.

*   Lists migration tasks in a paginated interface.

# Arguments

## `NextToken = ::String`
If a `NextToken` was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `NextToken`.


## `MaxResults = ::Int`
Value to specify how many results are returned per page.


## `ResourceName = ::String`
Filter migration tasks by discovered resource name.




# Returns

`ListMigrationTasksResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `InvalidInputException`, `PolicyErrorException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListMigrationTasks)
"""
@inline list_migration_tasks(aws::AWSConfig=default_aws_config(); args...) = list_migration_tasks(aws, args)

@inline list_migration_tasks(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "ListMigrationTasks", args)

@inline list_migration_tasks(args) = list_migration_tasks(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.list_progress_update_streams
    list_progress_update_streams([::AWSConfig], arguments::Dict)
    list_progress_update_streams([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "ListProgressUpdateStreams", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "ListProgressUpdateStreams", <keyword arguments>)

# ListProgressUpdateStreams Operation

Lists progress update streams associated with the user account making this call.

# Arguments

## `NextToken = ::String`
If a `NextToken` was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in `NextToken`.


## `MaxResults = ::Int`
Filter to limit the maximum number of results to list per page.




# Returns

`ListProgressUpdateStreamsResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException` or `InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListProgressUpdateStreams)
"""
@inline list_progress_update_streams(aws::AWSConfig=default_aws_config(); args...) = list_progress_update_streams(aws, args)

@inline list_progress_update_streams(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "ListProgressUpdateStreams", args)

@inline list_progress_update_streams(args) = list_progress_update_streams(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.notify_application_state
    notify_application_state([::AWSConfig], arguments::Dict)
    notify_application_state([::AWSConfig]; ApplicationId=, Status=, <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "NotifyApplicationState", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "NotifyApplicationState", ApplicationId=, Status=, <keyword arguments>)

# NotifyApplicationState Operation

Sets the migration state of an application. For a given application identified by the value passed to `ApplicationId`, its status is set or updated by passing one of three values to `Status`: `NOT_STARTED | IN_PROGRESS | COMPLETED`.

# Arguments

## `ApplicationId = ::String` -- *Required*
The configurationId in ADS that uniquely identifies the grouped application.


## `Status = "NOT_STARTED", "IN_PROGRESS" or "COMPLETED"` -- *Required*
Status of the application - Not Started, In-Progress, Complete.


## `DryRun = ::Bool`
Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.




# Returns

`NotifyApplicationStateResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `DryRunOperation`, `UnauthorizedOperation`, `InvalidInputException`, `PolicyErrorException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/NotifyApplicationState)
"""
@inline notify_application_state(aws::AWSConfig=default_aws_config(); args...) = notify_application_state(aws, args)

@inline notify_application_state(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "NotifyApplicationState", args)

@inline notify_application_state(args) = notify_application_state(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.notify_migration_task_state
    notify_migration_task_state([::AWSConfig], arguments::Dict)
    notify_migration_task_state([::AWSConfig]; ProgressUpdateStream=, MigrationTaskName=, Task=, UpdateDateTime=, NextUpdateSeconds=, <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "NotifyMigrationTaskState", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "NotifyMigrationTaskState", ProgressUpdateStream=, MigrationTaskName=, Task=, UpdateDateTime=, NextUpdateSeconds=, <keyword arguments>)

# NotifyMigrationTaskState Operation

Notifies Migration Hub of the current status, progress, or other detail regarding a migration task. This API has the following traits:

*   Migration tools will call the `NotifyMigrationTaskState` API to share the latest progress and status.

*   `MigrationTaskName` is used for addressing updates to the correct target.

*   `ProgressUpdateStream` is used for access control and to provide a namespace for each migration tool.

# Arguments

## `ProgressUpdateStream = ::String` -- *Required*
The name of the ProgressUpdateStream.


## `MigrationTaskName = ::String` -- *Required*
Unique identifier that references the migration task.


## `Task = [ ... ]` -- *Required*
Information about the task's progress and status.
```
 Task = [
        "Status" => <required> "NOT_STARTED", "IN_PROGRESS", "FAILED" or "COMPLETED",
        "StatusDetail" =>  ::String,
        "ProgressPercent" =>  ::Int
    ]
```

## `UpdateDateTime = timestamp` -- *Required*
The timestamp when the task was gathered.


## `NextUpdateSeconds = ::Int` -- *Required*
Number of seconds after the UpdateDateTime within which the Migration Hub can expect an update. If Migration Hub does not receive an update within the specified interval, then the migration task will be considered stale.


## `DryRun = ::Bool`
Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.




# Returns

`NotifyMigrationTaskStateResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `DryRunOperation`, `UnauthorizedOperation`, `InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/NotifyMigrationTaskState)
"""
@inline notify_migration_task_state(aws::AWSConfig=default_aws_config(); args...) = notify_migration_task_state(aws, args)

@inline notify_migration_task_state(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "NotifyMigrationTaskState", args)

@inline notify_migration_task_state(args) = notify_migration_task_state(default_aws_config(), args)


"""
    using AWSSDK.MigrationHub.put_resource_attributes
    put_resource_attributes([::AWSConfig], arguments::Dict)
    put_resource_attributes([::AWSConfig]; ProgressUpdateStream=, MigrationTaskName=, ResourceAttributeList=, <keyword arguments>)

    using AWSCore.Services.AWSMigrationHub
    AWSMigrationHub([::AWSConfig], "PutResourceAttributes", arguments::Dict)
    AWSMigrationHub([::AWSConfig], "PutResourceAttributes", ProgressUpdateStream=, MigrationTaskName=, ResourceAttributeList=, <keyword arguments>)

# PutResourceAttributes Operation

Provides identifying details of the resource being migrated so that it can be associated in the Application Discovery Service (ADS)'s repository. This association occurs asynchronously after `PutResourceAttributes` returns.

**Important**
> *   Keep in mind that subsequent calls to PutResourceAttributes will override previously stored attributes. For example, if it is first called with a MAC address, but later, it is desired to *add* an IP address, it will then be required to call it with *both* the IP and MAC addresses to prevent overiding the MAC address.

*   Note the instructions regarding the special use case of the [`ResourceAttributeList`](https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList) parameter when specifying any "VM" related value.

**Note**
> Because this is an asynchronous call, it will always return 200, whether an association occurs or not. To confirm if an association was found based on the provided details, call `ListDiscoveredResources`.

# Arguments

## `ProgressUpdateStream = ::String` -- *Required*
The name of the ProgressUpdateStream.


## `MigrationTaskName = ::String` -- *Required*
Unique identifier that references the migration task.


## `ResourceAttributeList = [[ ... ], ...]` -- *Required*
Information about the resource that is being migrated. This data will be used to map the task to a resource in the Application Discovery Service (ADS)'s repository.

**Note**
> Takes the object array of `ResourceAttribute` where the `Type` field is reserved for the following values: `IPV4_ADDRESS | IPV6_ADDRESS | MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER` where the identifying value can be a string up to 256 characters.

**Important**
> *   If any "VM" related value is set for a `ResourceAttribute` object, it is required that `VM_MANAGER_ID`, as a minimum, is always set. If `VM_MANAGER_ID` is not set, then all "VM" fields will be discarded and "VM" fields will not be used for matching the migration task to a server in Application Discovery Service (ADS)'s repository. See the [Example](https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#API_PutResourceAttributes_Examples) section below for a use case of specifying "VM" related values.

*   If a server you are trying to match has multiple IP or MAC addresses, you should provide as many as you know in separate type/value pairs passed to the `ResourceAttributeList` parameter to maximize the chances of matching.
```
 ResourceAttributeList = [[
        "Type" => <required> "IPV4_ADDRESS", "IPV6_ADDRESS", "MAC_ADDRESS", "FQDN", "VM_MANAGER_ID", "VM_MANAGED_OBJECT_REFERENCE", "VM_NAME", "VM_PATH", "BIOS_ID" or "MOTHERBOARD_SERIAL_NUMBER",
        "Value" => <required> ::String
    ], ...]
```

## `DryRun = ::Bool`
Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.




# Returns

`PutResourceAttributesResult`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ServiceUnavailableException`, `DryRunOperation`, `UnauthorizedOperation`, `InvalidInputException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/PutResourceAttributes)
"""
@inline put_resource_attributes(aws::AWSConfig=default_aws_config(); args...) = put_resource_attributes(aws, args)

@inline put_resource_attributes(aws::AWSConfig, args) = AWSCore.Services.AWSMigrationHub(aws, "PutResourceAttributes", args)

@inline put_resource_attributes(args) = put_resource_attributes(default_aws_config(), args)




end # module MigrationHub


#==============================================================================#
# End of file
#==============================================================================#
