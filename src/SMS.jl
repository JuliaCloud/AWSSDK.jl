#==============================================================================#
# SMS.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/sms-2016-10-24.normal.json
#==============================================================================#

__precompile__()

module SMS

using AWSCore


"""
    using AWSSDK.SMS.create_replication_job
    create_replication_job([::AWSConfig], arguments::Dict)
    create_replication_job([::AWSConfig]; serverId=, seedReplicationTime=, frequency=, <keyword arguments>)

    using AWSCore.Services.sms
    sms([::AWSConfig], "CreateReplicationJob", arguments::Dict)
    sms([::AWSConfig], "CreateReplicationJob", serverId=, seedReplicationTime=, frequency=, <keyword arguments>)

# CreateReplicationJob Operation

The CreateReplicationJob API is used to create a ReplicationJob to replicate a server on AWS. Call this API to first create a ReplicationJob, which will then schedule periodic ReplicationRuns to replicate your server to AWS. Each ReplicationRun will result in the creation of an AWS AMI.

# Arguments

## `serverId = ::String` -- *Required*



## `seedReplicationTime = timestamp` -- *Required*



## `frequency = ::Int` -- *Required*



## `licenseType = "AWS" or "BYOL"`



## `roleName = ::String`



## `description = ::String`





# Returns

`CreateReplicationJobResponse`

# Exceptions

`InvalidParameterException`, `MissingRequiredParameterException`, `UnauthorizedOperationException`, `OperationNotPermittedException`, `ServerCannotBeReplicatedException`, `ReplicationJobAlreadyExistsException`, `NoConnectorsAvailableException` or `InternalError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/CreateReplicationJob)
"""
@inline create_replication_job(aws::AWSConfig=default_aws_config(); args...) = create_replication_job(aws, args)

@inline create_replication_job(aws::AWSConfig, args) = AWSCore.Services.sms(aws, "CreateReplicationJob", args)

@inline create_replication_job(args) = create_replication_job(default_aws_config(), args)


"""
    using AWSSDK.SMS.delete_replication_job
    delete_replication_job([::AWSConfig], arguments::Dict)
    delete_replication_job([::AWSConfig]; replicationJobId=)

    using AWSCore.Services.sms
    sms([::AWSConfig], "DeleteReplicationJob", arguments::Dict)
    sms([::AWSConfig], "DeleteReplicationJob", replicationJobId=)

# DeleteReplicationJob Operation

The DeleteReplicationJob API is used to delete a ReplicationJob, resulting in no further ReplicationRuns. This will delete the contents of the S3 bucket used to store SMS artifacts, but will not delete any AMIs created by the SMS service.

# Arguments

## `replicationJobId = ::String` -- *Required*





# Returns

`DeleteReplicationJobResponse`

# Exceptions

`InvalidParameterException`, `MissingRequiredParameterException`, `UnauthorizedOperationException`, `OperationNotPermittedException` or `ReplicationJobNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteReplicationJob)
"""
@inline delete_replication_job(aws::AWSConfig=default_aws_config(); args...) = delete_replication_job(aws, args)

@inline delete_replication_job(aws::AWSConfig, args) = AWSCore.Services.sms(aws, "DeleteReplicationJob", args)

@inline delete_replication_job(args) = delete_replication_job(default_aws_config(), args)


"""
    using AWSSDK.SMS.delete_server_catalog
    delete_server_catalog([::AWSConfig], arguments::Dict)
    delete_server_catalog([::AWSConfig]; )

    using AWSCore.Services.sms
    sms([::AWSConfig], "DeleteServerCatalog", arguments::Dict)
    sms([::AWSConfig], "DeleteServerCatalog", )

# DeleteServerCatalog Operation

The DeleteServerCatalog API clears all servers from your server catalog. This means that these servers will no longer be accessible to the Server Migration Service.

# Arguments



# Returns

`DeleteServerCatalogResponse`

# Exceptions

`UnauthorizedOperationException`, `OperationNotPermittedException`, `InvalidParameterException` or `MissingRequiredParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteServerCatalog)
"""
@inline delete_server_catalog(aws::AWSConfig=default_aws_config(); args...) = delete_server_catalog(aws, args)

@inline delete_server_catalog(aws::AWSConfig, args) = AWSCore.Services.sms(aws, "DeleteServerCatalog", args)

@inline delete_server_catalog(args) = delete_server_catalog(default_aws_config(), args)


"""
    using AWSSDK.SMS.disassociate_connector
    disassociate_connector([::AWSConfig], arguments::Dict)
    disassociate_connector([::AWSConfig]; connectorId=)

    using AWSCore.Services.sms
    sms([::AWSConfig], "DisassociateConnector", arguments::Dict)
    sms([::AWSConfig], "DisassociateConnector", connectorId=)

# DisassociateConnector Operation

The DisassociateConnector API will disassociate a connector from the Server Migration Service, rendering it unavailable to support replication jobs.

# Arguments

## `connectorId = ::String` -- *Required*





# Returns

`DisassociateConnectorResponse`

# Exceptions

`MissingRequiredParameterException`, `UnauthorizedOperationException`, `OperationNotPermittedException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DisassociateConnector)
"""
@inline disassociate_connector(aws::AWSConfig=default_aws_config(); args...) = disassociate_connector(aws, args)

@inline disassociate_connector(aws::AWSConfig, args) = AWSCore.Services.sms(aws, "DisassociateConnector", args)

@inline disassociate_connector(args) = disassociate_connector(default_aws_config(), args)


"""
    using AWSSDK.SMS.get_connectors
    get_connectors([::AWSConfig], arguments::Dict)
    get_connectors([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sms
    sms([::AWSConfig], "GetConnectors", arguments::Dict)
    sms([::AWSConfig], "GetConnectors", <keyword arguments>)

# GetConnectors Operation

The GetConnectors API returns a list of connectors that are registered with the Server Migration Service.

# Arguments

## `nextToken = ::String`



## `maxResults = ::Int`





# Returns

`GetConnectorsResponse`

# Exceptions

`UnauthorizedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetConnectors)
"""
@inline get_connectors(aws::AWSConfig=default_aws_config(); args...) = get_connectors(aws, args)

@inline get_connectors(aws::AWSConfig, args) = AWSCore.Services.sms(aws, "GetConnectors", args)

@inline get_connectors(args) = get_connectors(default_aws_config(), args)


"""
    using AWSSDK.SMS.get_replication_jobs
    get_replication_jobs([::AWSConfig], arguments::Dict)
    get_replication_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sms
    sms([::AWSConfig], "GetReplicationJobs", arguments::Dict)
    sms([::AWSConfig], "GetReplicationJobs", <keyword arguments>)

# GetReplicationJobs Operation

The GetReplicationJobs API will return all of your ReplicationJobs and their details. This API returns a paginated list, that may be consecutively called with nextToken to retrieve all ReplicationJobs.

# Arguments

## `replicationJobId = ::String`



## `nextToken = ::String`



## `maxResults = ::Int`





# Returns

`GetReplicationJobsResponse`

# Exceptions

`InvalidParameterException`, `MissingRequiredParameterException` or `UnauthorizedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetReplicationJobs)
"""
@inline get_replication_jobs(aws::AWSConfig=default_aws_config(); args...) = get_replication_jobs(aws, args)

@inline get_replication_jobs(aws::AWSConfig, args) = AWSCore.Services.sms(aws, "GetReplicationJobs", args)

@inline get_replication_jobs(args) = get_replication_jobs(default_aws_config(), args)


"""
    using AWSSDK.SMS.get_replication_runs
    get_replication_runs([::AWSConfig], arguments::Dict)
    get_replication_runs([::AWSConfig]; replicationJobId=, <keyword arguments>)

    using AWSCore.Services.sms
    sms([::AWSConfig], "GetReplicationRuns", arguments::Dict)
    sms([::AWSConfig], "GetReplicationRuns", replicationJobId=, <keyword arguments>)

# GetReplicationRuns Operation

The GetReplicationRuns API will return all ReplicationRuns for a given ReplicationJob. This API returns a paginated list, that may be consecutively called with nextToken to retrieve all ReplicationRuns for a ReplicationJob.

# Arguments

## `replicationJobId = ::String` -- *Required*



## `nextToken = ::String`



## `maxResults = ::Int`





# Returns

`GetReplicationRunsResponse`

# Exceptions

`InvalidParameterException`, `MissingRequiredParameterException` or `UnauthorizedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetReplicationRuns)
"""
@inline get_replication_runs(aws::AWSConfig=default_aws_config(); args...) = get_replication_runs(aws, args)

@inline get_replication_runs(aws::AWSConfig, args) = AWSCore.Services.sms(aws, "GetReplicationRuns", args)

@inline get_replication_runs(args) = get_replication_runs(default_aws_config(), args)


"""
    using AWSSDK.SMS.get_servers
    get_servers([::AWSConfig], arguments::Dict)
    get_servers([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.sms
    sms([::AWSConfig], "GetServers", arguments::Dict)
    sms([::AWSConfig], "GetServers", <keyword arguments>)

# GetServers Operation

The GetServers API returns a list of all servers in your server catalog. For this call to succeed, you must previously have called ImportServerCatalog.

# Arguments

## `nextToken = ::String`



## `maxResults = ::Int`





# Returns

`GetServersResponse`

# Exceptions

`UnauthorizedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetServers)
"""
@inline get_servers(aws::AWSConfig=default_aws_config(); args...) = get_servers(aws, args)

@inline get_servers(aws::AWSConfig, args) = AWSCore.Services.sms(aws, "GetServers", args)

@inline get_servers(args) = get_servers(default_aws_config(), args)


"""
    using AWSSDK.SMS.import_server_catalog
    import_server_catalog([::AWSConfig], arguments::Dict)
    import_server_catalog([::AWSConfig]; )

    using AWSCore.Services.sms
    sms([::AWSConfig], "ImportServerCatalog", arguments::Dict)
    sms([::AWSConfig], "ImportServerCatalog", )

# ImportServerCatalog Operation

The ImportServerCatalog API is used to gather the complete list of on-premises servers on your premises. This API call requires connectors to be installed and monitoring all servers you would like imported. This API call returns immediately, but may take some time to retrieve all of the servers.

# Arguments



# Returns

`ImportServerCatalogResponse`

# Exceptions

`UnauthorizedOperationException`, `OperationNotPermittedException`, `InvalidParameterException`, `MissingRequiredParameterException` or `NoConnectorsAvailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ImportServerCatalog)
"""
@inline import_server_catalog(aws::AWSConfig=default_aws_config(); args...) = import_server_catalog(aws, args)

@inline import_server_catalog(aws::AWSConfig, args) = AWSCore.Services.sms(aws, "ImportServerCatalog", args)

@inline import_server_catalog(args) = import_server_catalog(default_aws_config(), args)


"""
    using AWSSDK.SMS.start_on_demand_replication_run
    start_on_demand_replication_run([::AWSConfig], arguments::Dict)
    start_on_demand_replication_run([::AWSConfig]; replicationJobId=, <keyword arguments>)

    using AWSCore.Services.sms
    sms([::AWSConfig], "StartOnDemandReplicationRun", arguments::Dict)
    sms([::AWSConfig], "StartOnDemandReplicationRun", replicationJobId=, <keyword arguments>)

# StartOnDemandReplicationRun Operation

The StartOnDemandReplicationRun API is used to start a ReplicationRun on demand (in addition to those that are scheduled based on your frequency). This ReplicationRun will start immediately. StartOnDemandReplicationRun is subject to limits on how many on demand ReplicationRuns you may call per 24-hour period.

# Arguments

## `replicationJobId = ::String` -- *Required*



## `description = ::String`





# Returns

`StartOnDemandReplicationRunResponse`

# Exceptions

`InvalidParameterException`, `MissingRequiredParameterException`, `UnauthorizedOperationException`, `OperationNotPermittedException` or `ReplicationRunLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/StartOnDemandReplicationRun)
"""
@inline start_on_demand_replication_run(aws::AWSConfig=default_aws_config(); args...) = start_on_demand_replication_run(aws, args)

@inline start_on_demand_replication_run(aws::AWSConfig, args) = AWSCore.Services.sms(aws, "StartOnDemandReplicationRun", args)

@inline start_on_demand_replication_run(args) = start_on_demand_replication_run(default_aws_config(), args)


"""
    using AWSSDK.SMS.update_replication_job
    update_replication_job([::AWSConfig], arguments::Dict)
    update_replication_job([::AWSConfig]; replicationJobId=, <keyword arguments>)

    using AWSCore.Services.sms
    sms([::AWSConfig], "UpdateReplicationJob", arguments::Dict)
    sms([::AWSConfig], "UpdateReplicationJob", replicationJobId=, <keyword arguments>)

# UpdateReplicationJob Operation

The UpdateReplicationJob API is used to change the settings of your existing ReplicationJob created using CreateReplicationJob. Calling this API will affect the next scheduled ReplicationRun.

# Arguments

## `replicationJobId = ::String` -- *Required*



## `frequency = ::Int`



## `nextReplicationRunStartTime = timestamp`



## `licenseType = "AWS" or "BYOL"`



## `roleName = ::String`



## `description = ::String`





# Returns

`UpdateReplicationJobResponse`

# Exceptions

`InvalidParameterException`, `MissingRequiredParameterException`, `OperationNotPermittedException`, `UnauthorizedOperationException`, `ServerCannotBeReplicatedException`, `ReplicationJobNotFoundException` or `InternalError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/UpdateReplicationJob)
"""
@inline update_replication_job(aws::AWSConfig=default_aws_config(); args...) = update_replication_job(aws, args)

@inline update_replication_job(aws::AWSConfig, args) = AWSCore.Services.sms(aws, "UpdateReplicationJob", args)

@inline update_replication_job(args) = update_replication_job(default_aws_config(), args)




end # module SMS


#==============================================================================#
# End of file
#==============================================================================#
