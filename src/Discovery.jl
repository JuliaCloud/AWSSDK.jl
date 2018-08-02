#==============================================================================#
# Discovery.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/discovery-2015-11-01.normal.json
#==============================================================================#

__precompile__()

module Discovery

using AWSCore


"""
    using AWSSDK.Discovery.associate_configuration_items_to_application
    associate_configuration_items_to_application([::AWSConfig], arguments::Dict)
    associate_configuration_items_to_application([::AWSConfig]; applicationConfigurationId=, configurationIds=)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "AssociateConfigurationItemsToApplication", arguments::Dict)
    discovery([::AWSConfig], "AssociateConfigurationItemsToApplication", applicationConfigurationId=, configurationIds=)

# AssociateConfigurationItemsToApplication Operation

Associates one or more configuration items with an application.

# Arguments

## `applicationConfigurationId = ::String` -- *Required*
The configuration ID of an application with which items are to be associated.


## `configurationIds = [::String, ...]` -- *Required*
The ID of each configuration item to be associated with an application.




# Returns

`AssociateConfigurationItemsToApplicationResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/AssociateConfigurationItemsToApplication)
"""
@inline associate_configuration_items_to_application(aws::AWSConfig=default_aws_config(); args...) = associate_configuration_items_to_application(aws, args)

@inline associate_configuration_items_to_application(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "AssociateConfigurationItemsToApplication", args)

@inline associate_configuration_items_to_application(args) = associate_configuration_items_to_application(default_aws_config(), args)


"""
    using AWSSDK.Discovery.create_application
    create_application([::AWSConfig], arguments::Dict)
    create_application([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "CreateApplication", arguments::Dict)
    discovery([::AWSConfig], "CreateApplication", name=, <keyword arguments>)

# CreateApplication Operation

Creates an application with the given name and description.

# Arguments

## `name = ::String` -- *Required*
Name of the application to be created.


## `description = ::String`
Description of the application to be created.




# Returns

`CreateApplicationResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/CreateApplication)
"""
@inline create_application(aws::AWSConfig=default_aws_config(); args...) = create_application(aws, args)

@inline create_application(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "CreateApplication", args)

@inline create_application(args) = create_application(default_aws_config(), args)


"""
    using AWSSDK.Discovery.create_tags
    create_tags([::AWSConfig], arguments::Dict)
    create_tags([::AWSConfig]; configurationIds=, tags=)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "CreateTags", arguments::Dict)
    discovery([::AWSConfig], "CreateTags", configurationIds=, tags=)

# CreateTags Operation

Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.

# Arguments

## `configurationIds = [::String, ...]` -- *Required*
A list of configuration items that you want to tag.


## `tags = [[ ... ], ...]` -- *Required*
Tags that you want to associate with one or more configuration items. Specify the tags that you want to create in a *key*-*value* format. For example:

`{"key": "serverType", "value": "webServer"}`
```
 tags = [[
        "key" => <required> ::String,
        "value" => <required> ::String
    ], ...]
```



# Returns

`CreateTagsResponse`

# Exceptions

`AuthorizationErrorException`, `ResourceNotFoundException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/CreateTags)
"""
@inline create_tags(aws::AWSConfig=default_aws_config(); args...) = create_tags(aws, args)

@inline create_tags(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "CreateTags", args)

@inline create_tags(args) = create_tags(default_aws_config(), args)


"""
    using AWSSDK.Discovery.delete_applications
    delete_applications([::AWSConfig], arguments::Dict)
    delete_applications([::AWSConfig]; configurationIds=)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "DeleteApplications", arguments::Dict)
    discovery([::AWSConfig], "DeleteApplications", configurationIds=)

# DeleteApplications Operation

Deletes a list of applications and their associations with configuration items.

# Arguments

## `configurationIds = [::String, ...]` -- *Required*
Configuration ID of an application to be deleted.




# Returns

`DeleteApplicationsResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/DeleteApplications)
"""
@inline delete_applications(aws::AWSConfig=default_aws_config(); args...) = delete_applications(aws, args)

@inline delete_applications(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "DeleteApplications", args)

@inline delete_applications(args) = delete_applications(default_aws_config(), args)


"""
    using AWSSDK.Discovery.delete_tags
    delete_tags([::AWSConfig], arguments::Dict)
    delete_tags([::AWSConfig]; configurationIds=, <keyword arguments>)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "DeleteTags", arguments::Dict)
    discovery([::AWSConfig], "DeleteTags", configurationIds=, <keyword arguments>)

# DeleteTags Operation

Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.

# Arguments

## `configurationIds = [::String, ...]` -- *Required*
A list of configuration items with tags that you want to delete.


## `tags = [[ ... ], ...]`
Tags that you want to delete from one or more configuration items. Specify the tags that you want to delete in a *key*-*value* format. For example:

`{"key": "serverType", "value": "webServer"}`
```
 tags = [[
        "key" => <required> ::String,
        "value" => <required> ::String
    ], ...]
```



# Returns

`DeleteTagsResponse`

# Exceptions

`AuthorizationErrorException`, `ResourceNotFoundException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/DeleteTags)
"""
@inline delete_tags(aws::AWSConfig=default_aws_config(); args...) = delete_tags(aws, args)

@inline delete_tags(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "DeleteTags", args)

@inline delete_tags(args) = delete_tags(default_aws_config(), args)


"""
    using AWSSDK.Discovery.describe_agents
    describe_agents([::AWSConfig], arguments::Dict)
    describe_agents([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "DescribeAgents", arguments::Dict)
    discovery([::AWSConfig], "DescribeAgents", <keyword arguments>)

# DescribeAgents Operation

Lists agents or the Connector by ID or lists all agents/Connectors associated with your user account if you did not specify an ID.

# Arguments

## `agentIds = [::String, ...]`
The agent or the Connector IDs for which you want information. If you specify no IDs, the system returns information about all agents/Connectors associated with your AWS user account.


## `filters = [[ ... ], ...]`
You can filter the request using various logical operators and a *key*-*value* format. For example:

`{"key": "collectionStatus", "value": "STARTED"}`
```
 filters = [[
        "name" => <required> ::String,
        "values" => <required> [::String, ...],
        "condition" => <required> ::String
    ], ...]
```

## `maxResults = ::Int`
The total number of agents/Connectors to return in a single page of output. The maximum value is 100.


## `nextToken = ::String`
Token to retrieve the next set of results. For example, if you previously specified 100 IDs for `DescribeAgentsRequest\$agentIds` but set `DescribeAgentsRequest\$maxResults` to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.




# Returns

`DescribeAgentsResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/DescribeAgents)
"""
@inline describe_agents(aws::AWSConfig=default_aws_config(); args...) = describe_agents(aws, args)

@inline describe_agents(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "DescribeAgents", args)

@inline describe_agents(args) = describe_agents(default_aws_config(), args)


"""
    using AWSSDK.Discovery.describe_configurations
    describe_configurations([::AWSConfig], arguments::Dict)
    describe_configurations([::AWSConfig]; configurationIds=)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "DescribeConfigurations", arguments::Dict)
    discovery([::AWSConfig], "DescribeConfigurations", configurationIds=)

# DescribeConfigurations Operation

Retrieves attributes for a list of configuration item IDs. All of the supplied IDs must be for the same asset type (server, application, process, or connection). Output fields are specific to the asset type selected. For example, the output for a *server* configuration item includes a list of attributes about the server, such as host name, operating system, and number of network cards.

For a complete list of outputs for each asset type, see [Using the DescribeConfigurations Action](http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#DescribeConfigurations).

# Arguments

## `configurationIds = [::String, ...]` -- *Required*
One or more configuration IDs.




# Returns

`DescribeConfigurationsResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/DescribeConfigurations)
"""
@inline describe_configurations(aws::AWSConfig=default_aws_config(); args...) = describe_configurations(aws, args)

@inline describe_configurations(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "DescribeConfigurations", args)

@inline describe_configurations(args) = describe_configurations(default_aws_config(), args)


"""
    using AWSSDK.Discovery.describe_export_configurations
    describe_export_configurations([::AWSConfig], arguments::Dict)
    describe_export_configurations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "DescribeExportConfigurations", arguments::Dict)
    discovery([::AWSConfig], "DescribeExportConfigurations", <keyword arguments>)

# DescribeExportConfigurations Operation

Deprecated. Use `DescribeExportTasks` instead.

Retrieves the status of a given export process. You can retrieve status from a maximum of 100 processes.

# Arguments

## `exportIds = [::String, ...]`
A unique identifier that you can use to query the export status.


## `maxResults = ::Int`
The maximum number of results that you want to display as a part of the query.


## `nextToken = ::String`
A token to get the next set of results. For example, if you specify 100 IDs for `DescribeExportConfigurationsRequest\$exportIds` but set `DescribeExportConfigurationsRequest\$maxResults` to 10, you get results in a set of 10. Use the token in the query to get the next set of 10.




# Returns

`DescribeExportConfigurationsResponse`

# Exceptions

`AuthorizationErrorException`, `ResourceNotFoundException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/DescribeExportConfigurations)
"""
@inline describe_export_configurations(aws::AWSConfig=default_aws_config(); args...) = describe_export_configurations(aws, args)

@inline describe_export_configurations(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "DescribeExportConfigurations", args)

@inline describe_export_configurations(args) = describe_export_configurations(default_aws_config(), args)


"""
    using AWSSDK.Discovery.describe_export_tasks
    describe_export_tasks([::AWSConfig], arguments::Dict)
    describe_export_tasks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "DescribeExportTasks", arguments::Dict)
    discovery([::AWSConfig], "DescribeExportTasks", <keyword arguments>)

# DescribeExportTasks Operation

Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.

# Arguments

## `exportIds = [::String, ...]`
One or more unique identifiers used to query the status of an export request.


## `filters = [[ ... ], ...]`
One or more filters.

*   `AgentId` - ID of the agent whose collected data will be exported
```
 filters = [[
        "name" => <required> ::String,
        "values" => <required> [::String, ...],
        "condition" => <required> ::String
    ], ...]
```

## `maxResults = ::Int`
The maximum number of volume results returned by `DescribeExportTasks` in paginated output. When this parameter is used, `DescribeExportTasks` only returns `maxResults` results in a single page along with a `nextToken` response element.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `DescribeExportTasks` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is null when there are no more results to return.




# Returns

`DescribeExportTasksResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/DescribeExportTasks)
"""
@inline describe_export_tasks(aws::AWSConfig=default_aws_config(); args...) = describe_export_tasks(aws, args)

@inline describe_export_tasks(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "DescribeExportTasks", args)

@inline describe_export_tasks(args) = describe_export_tasks(default_aws_config(), args)


"""
    using AWSSDK.Discovery.describe_tags
    describe_tags([::AWSConfig], arguments::Dict)
    describe_tags([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "DescribeTags", arguments::Dict)
    discovery([::AWSConfig], "DescribeTags", <keyword arguments>)

# DescribeTags Operation

Retrieves a list of configuration items that are tagged with a specific tag. Or retrieves a list of all tags assigned to a specific configuration item.

# Arguments

## `filters = [[ ... ], ...]`
You can filter the list using a *key*-*value* format. You can separate these items by using logical operators. Allowed filters include `tagKey`, `tagValue`, and `configurationId`.
```
 filters = [[
        "name" => <required> ::String,
        "values" => <required> [::String, ...]
    ], ...]
```

## `maxResults = ::Int`
The total number of items to return in a single page of output. The maximum value is 100.


## `nextToken = ::String`
A token to start the list. Use this token to get the next set of results.




# Returns

`DescribeTagsResponse`

# Exceptions

`AuthorizationErrorException`, `ResourceNotFoundException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/DescribeTags)
"""
@inline describe_tags(aws::AWSConfig=default_aws_config(); args...) = describe_tags(aws, args)

@inline describe_tags(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "DescribeTags", args)

@inline describe_tags(args) = describe_tags(default_aws_config(), args)


"""
    using AWSSDK.Discovery.disassociate_configuration_items_from_application
    disassociate_configuration_items_from_application([::AWSConfig], arguments::Dict)
    disassociate_configuration_items_from_application([::AWSConfig]; applicationConfigurationId=, configurationIds=)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "DisassociateConfigurationItemsFromApplication", arguments::Dict)
    discovery([::AWSConfig], "DisassociateConfigurationItemsFromApplication", applicationConfigurationId=, configurationIds=)

# DisassociateConfigurationItemsFromApplication Operation

Disassociates one or more configuration items from an application.

# Arguments

## `applicationConfigurationId = ::String` -- *Required*
Configuration ID of an application from which each item is disassociated.


## `configurationIds = [::String, ...]` -- *Required*
Configuration ID of each item to be disassociated from an application.




# Returns

`DisassociateConfigurationItemsFromApplicationResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/DisassociateConfigurationItemsFromApplication)
"""
@inline disassociate_configuration_items_from_application(aws::AWSConfig=default_aws_config(); args...) = disassociate_configuration_items_from_application(aws, args)

@inline disassociate_configuration_items_from_application(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "DisassociateConfigurationItemsFromApplication", args)

@inline disassociate_configuration_items_from_application(args) = disassociate_configuration_items_from_application(default_aws_config(), args)


"""
    using AWSSDK.Discovery.export_configurations
    export_configurations([::AWSConfig])
    

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "ExportConfigurations",)
    

# ExportConfigurations Operation

Deprecated. Use `StartExportTask` instead.

Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID that you can query using the *DescribeExportConfigurations* API. The system imposes a limit of two configuration exports in six hours.

# Returns

`ExportConfigurationsResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException`, `ServerInternalErrorException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/ExportConfigurations)
"""
@inline export_configurations(aws::AWSConfig=default_aws_config(); args...) = export_configurations(aws, args)

@inline export_configurations(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "ExportConfigurations", args)

@inline export_configurations(args) = export_configurations(default_aws_config(), args)


"""
    using AWSSDK.Discovery.get_discovery_summary
    get_discovery_summary([::AWSConfig], arguments::Dict)
    get_discovery_summary([::AWSConfig]; )

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "GetDiscoverySummary", arguments::Dict)
    discovery([::AWSConfig], "GetDiscoverySummary", )

# GetDiscoverySummary Operation

Retrieves a short summary of discovered assets.

# Arguments



# Returns

`GetDiscoverySummaryResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/GetDiscoverySummary)
"""
@inline get_discovery_summary(aws::AWSConfig=default_aws_config(); args...) = get_discovery_summary(aws, args)

@inline get_discovery_summary(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "GetDiscoverySummary", args)

@inline get_discovery_summary(args) = get_discovery_summary(default_aws_config(), args)


"""
    using AWSSDK.Discovery.list_configurations
    list_configurations([::AWSConfig], arguments::Dict)
    list_configurations([::AWSConfig]; configurationType=, <keyword arguments>)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "ListConfigurations", arguments::Dict)
    discovery([::AWSConfig], "ListConfigurations", configurationType=, <keyword arguments>)

# ListConfigurations Operation

Retrieves a list of configuration items according to criteria that you specify in a filter. The filter criteria identifies the relationship requirements.

# Arguments

## `configurationType = "SERVER", "PROCESS", "CONNECTION" or "APPLICATION"` -- *Required*
A valid configuration identified by Application Discovery Service.


## `filters = [[ ... ], ...]`
You can filter the request using various logical operators and a *key*-*value* format. For example:

`{"key": "serverType", "value": "webServer"}`

For a complete list of filter options and guidance about using them with this action, see [Querying Discovered Configuration Items](http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations).
```
 filters = [[
        "name" => <required> ::String,
        "values" => <required> [::String, ...],
        "condition" => <required> ::String
    ], ...]
```

## `maxResults = ::Int`
The total number of items to return. The maximum value is 100.


## `nextToken = ::String`
Token to retrieve the next set of results. For example, if a previous call to ListConfigurations returned 100 items, but you set `ListConfigurationsRequest\$maxResults` to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.


## `orderBy = [[ ... ], ...]`
Certain filter criteria return output that can be sorted in ascending or descending order. For a list of output characteristics for each filter, see [Using the ListConfigurations Action](http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations).
```
 orderBy = [[
        "fieldName" => <required> ::String,
        "sortOrder" =>  "ASC" or "DESC"
    ], ...]
```



# Returns

`ListConfigurationsResponse`

# Exceptions

`AuthorizationErrorException`, `ResourceNotFoundException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/ListConfigurations)
"""
@inline list_configurations(aws::AWSConfig=default_aws_config(); args...) = list_configurations(aws, args)

@inline list_configurations(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "ListConfigurations", args)

@inline list_configurations(args) = list_configurations(default_aws_config(), args)


"""
    using AWSSDK.Discovery.list_server_neighbors
    list_server_neighbors([::AWSConfig], arguments::Dict)
    list_server_neighbors([::AWSConfig]; configurationId=, <keyword arguments>)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "ListServerNeighbors", arguments::Dict)
    discovery([::AWSConfig], "ListServerNeighbors", configurationId=, <keyword arguments>)

# ListServerNeighbors Operation

Retrieves a list of servers that are one network hop away from a specified server.

# Arguments

## `configurationId = ::String` -- *Required*
Configuration ID of the server for which neighbors are being listed.


## `portInformationNeeded = ::Bool`
Flag to indicate if port and protocol information is needed as part of the response.


## `neighborConfigurationIds = [::String, ...]`
List of configuration IDs to test for one-hop-away.


## `maxResults = ::Int`
Maximum number of results to return in a single page of output.


## `nextToken = ::String`
Token to retrieve the next set of results. For example, if you previously specified 100 IDs for `ListServerNeighborsRequest\$neighborConfigurationIds` but set `ListServerNeighborsRequest\$maxResults` to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.




# Returns

`ListServerNeighborsResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/ListServerNeighbors)
"""
@inline list_server_neighbors(aws::AWSConfig=default_aws_config(); args...) = list_server_neighbors(aws, args)

@inline list_server_neighbors(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "ListServerNeighbors", args)

@inline list_server_neighbors(args) = list_server_neighbors(default_aws_config(), args)


"""
    using AWSSDK.Discovery.start_data_collection_by_agent_ids
    start_data_collection_by_agent_ids([::AWSConfig], arguments::Dict)
    start_data_collection_by_agent_ids([::AWSConfig]; agentIds=)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "StartDataCollectionByAgentIds", arguments::Dict)
    discovery([::AWSConfig], "StartDataCollectionByAgentIds", agentIds=)

# StartDataCollectionByAgentIds Operation

Instructs the specified agents or connectors to start collecting data.

# Arguments

## `agentIds = [::String, ...]` -- *Required*
The IDs of the agents or connectors from which to start collecting data. If you send a request to an agent/connector ID that you do not have permission to contact, according to your AWS account, the service does not throw an exception. Instead, it returns the error in the *Description* field. If you send a request to multiple agents/connectors and you do not have permission to contact some of those agents/connectors, the system does not throw an exception. Instead, the system shows `Failed` in the *Description* field.




# Returns

`StartDataCollectionByAgentIdsResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/StartDataCollectionByAgentIds)
"""
@inline start_data_collection_by_agent_ids(aws::AWSConfig=default_aws_config(); args...) = start_data_collection_by_agent_ids(aws, args)

@inline start_data_collection_by_agent_ids(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "StartDataCollectionByAgentIds", args)

@inline start_data_collection_by_agent_ids(args) = start_data_collection_by_agent_ids(default_aws_config(), args)


"""
    using AWSSDK.Discovery.start_export_task
    start_export_task([::AWSConfig], arguments::Dict)
    start_export_task([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "StartExportTask", arguments::Dict)
    discovery([::AWSConfig], "StartExportTask", <keyword arguments>)

# StartExportTask Operation

Begins the export of discovered data to an S3 bucket.

If you specify `agentIds` in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using `startTime` and `endTime`. Export of detailed agent data is limited to five concurrently running exports.

If you do not include an `agentIds` filter, summary data is exported that includes both AWS Agentless Discovery Connector data and summary data from AWS Discovery Agents. Export of summary data is limited to two exports per day.

# Arguments

## `exportDataFormat = ["CSV" or "GRAPHML", ...]`
The file format for the returned export data. Default value is `CSV`. **Note:** *The* `GRAPHML` *option has been deprecated.*


## `filters = [[ ... ], ...]`
If a filter is present, it selects the single `agentId` of the Application Discovery Agent for which data is exported. The `agentId` can be found in the results of the `DescribeAgents` API or CLI. If no filter is present, `startTime` and `endTime` are ignored and exported data includes both Agentless Discovery Connector data and summary data from Application Discovery agents.
```
 filters = [[
        "name" => <required> ::String,
        "values" => <required> [::String, ...],
        "condition" => <required> ::String
    ], ...]
```

## `startTime = timestamp`
The start timestamp for exported data from the single Application Discovery Agent selected in the filters. If no value is specified, data is exported starting from the first data collected by the agent.


## `endTime = timestamp`
The end timestamp for exported data from the single Application Discovery Agent selected in the filters. If no value is specified, exported data includes the most recent data collected by the agent.




# Returns

`StartExportTaskResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException`, `ServerInternalErrorException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/StartExportTask)
"""
@inline start_export_task(aws::AWSConfig=default_aws_config(); args...) = start_export_task(aws, args)

@inline start_export_task(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "StartExportTask", args)

@inline start_export_task(args) = start_export_task(default_aws_config(), args)


"""
    using AWSSDK.Discovery.stop_data_collection_by_agent_ids
    stop_data_collection_by_agent_ids([::AWSConfig], arguments::Dict)
    stop_data_collection_by_agent_ids([::AWSConfig]; agentIds=)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "StopDataCollectionByAgentIds", arguments::Dict)
    discovery([::AWSConfig], "StopDataCollectionByAgentIds", agentIds=)

# StopDataCollectionByAgentIds Operation

Instructs the specified agents or connectors to stop collecting data.

# Arguments

## `agentIds = [::String, ...]` -- *Required*
The IDs of the agents or connectors from which to stop collecting data.




# Returns

`StopDataCollectionByAgentIdsResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/StopDataCollectionByAgentIds)
"""
@inline stop_data_collection_by_agent_ids(aws::AWSConfig=default_aws_config(); args...) = stop_data_collection_by_agent_ids(aws, args)

@inline stop_data_collection_by_agent_ids(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "StopDataCollectionByAgentIds", args)

@inline stop_data_collection_by_agent_ids(args) = stop_data_collection_by_agent_ids(default_aws_config(), args)


"""
    using AWSSDK.Discovery.update_application
    update_application([::AWSConfig], arguments::Dict)
    update_application([::AWSConfig]; configurationId=, <keyword arguments>)

    using AWSCore.Services.discovery
    discovery([::AWSConfig], "UpdateApplication", arguments::Dict)
    discovery([::AWSConfig], "UpdateApplication", configurationId=, <keyword arguments>)

# UpdateApplication Operation

Updates metadata about an application.

# Arguments

## `configurationId = ::String` -- *Required*
Configuration ID of the application to be updated.


## `name = ::String`
New name of the application to be updated.


## `description = ::String`
New description of the application to be updated.




# Returns

`UpdateApplicationResponse`

# Exceptions

`AuthorizationErrorException`, `InvalidParameterException`, `InvalidParameterValueException` or `ServerInternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/discovery-2015-11-01/UpdateApplication)
"""
@inline update_application(aws::AWSConfig=default_aws_config(); args...) = update_application(aws, args)

@inline update_application(aws::AWSConfig, args) = AWSCore.Services.discovery(aws, "UpdateApplication", args)

@inline update_application(args) = update_application(default_aws_config(), args)




end # module Discovery


#==============================================================================#
# End of file
#==============================================================================#
