#==============================================================================#
# IoTAnalytics.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/iotanalytics-2017-11-27.normal.json
#==============================================================================#

__precompile__()

module IoTAnalytics

using AWSCore


"""
    using AWSSDK.IoTAnalytics.batch_put_message
    batch_put_message([::AWSConfig], arguments::Dict)
    batch_put_message([::AWSConfig]; channelName=, messages=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "POST", "/messages/batch", arguments::Dict)
    iotanalytics([::AWSConfig], "POST", "/messages/batch", channelName=, messages=)

# BatchPutMessage Operation

Sends messages to a channel.

# Arguments

## `channelName = ::String` -- *Required*
The name of the channel where the messages are sent.


## `messages = [[ ... ], ...]` -- *Required*
The list of messages to be sent. Each message has format: '{ "messageId": "string", "payload": "string"}'.
```
 messages = [[
        "messageId" => <required> ::String,
        "payload" => <required> blob
    ], ...]
```



# Returns

`BatchPutMessageResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/BatchPutMessage)
"""
@inline batch_put_message(aws::AWSConfig=default_aws_config(); args...) = batch_put_message(aws, args)

@inline batch_put_message(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "POST", "/messages/batch", args)

@inline batch_put_message(args) = batch_put_message(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.cancel_pipeline_reprocessing
    cancel_pipeline_reprocessing([::AWSConfig], arguments::Dict)
    cancel_pipeline_reprocessing([::AWSConfig]; pipelineName=, reprocessingId=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "DELETE", "/pipelines/{pipelineName}/reprocessing/{reprocessingId}", arguments::Dict)
    iotanalytics([::AWSConfig], "DELETE", "/pipelines/{pipelineName}/reprocessing/{reprocessingId}", pipelineName=, reprocessingId=)

# CancelPipelineReprocessing Operation

Cancels the reprocessing of data through the pipeline.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of pipeline for which data reprocessing is canceled.


## `reprocessingId = ::String` -- *Required*
The ID of the reprocessing task (returned by "StartPipelineReprocessing").




# Returns

`CancelPipelineReprocessingResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/CancelPipelineReprocessing)
"""
@inline cancel_pipeline_reprocessing(aws::AWSConfig=default_aws_config(); args...) = cancel_pipeline_reprocessing(aws, args)

@inline cancel_pipeline_reprocessing(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "DELETE", "/pipelines/{pipelineName}/reprocessing/{reprocessingId}", args)

@inline cancel_pipeline_reprocessing(args) = cancel_pipeline_reprocessing(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.create_channel
    create_channel([::AWSConfig], arguments::Dict)
    create_channel([::AWSConfig]; channelName=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "POST", "/channels", arguments::Dict)
    iotanalytics([::AWSConfig], "POST", "/channels", channelName=, <keyword arguments>)

# CreateChannel Operation

Creates a channel. A channel collects data from an MQTT topic and archives the raw, unprocessed messages before publishing the data to a pipeline.

# Arguments

## `channelName = ::String` -- *Required*
The name of the channel.


## `retentionPeriod = [ ... ]`
How long, in days, message data is kept for the channel.
```
 retentionPeriod = [
        "unlimited" =>  ::Bool,
        "numberOfDays" =>  ::Int
    ]
```

## `tags = [[ ... ], ...]`
Metadata which can be used to manage the channel.
```
 tags = [[
        "key" => <required> ::String,
        "value" => <required> ::String
    ], ...]
```



# Returns

`CreateChannelResponse`

# Exceptions

`InvalidRequestException`, `ResourceAlreadyExistsException`, `InternalFailureException`, `ServiceUnavailableException`, `ThrottlingException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/CreateChannel)
"""
@inline create_channel(aws::AWSConfig=default_aws_config(); args...) = create_channel(aws, args)

@inline create_channel(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "POST", "/channels", args)

@inline create_channel(args) = create_channel(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.create_dataset
    create_dataset([::AWSConfig], arguments::Dict)
    create_dataset([::AWSConfig]; datasetName=, actions=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "POST", "/datasets", arguments::Dict)
    iotanalytics([::AWSConfig], "POST", "/datasets", datasetName=, actions=, <keyword arguments>)

# CreateDataset Operation

Creates a data set. A data set stores data retrieved from a data store by applying an SQL action.

**Note**
> This operation creates the skeleton of a data set. To populate the data set, call "CreateDatasetContent".

# Arguments

## `datasetName = ::String` -- *Required*
The name of the data set.


## `actions = [[ ... ], ...]` -- *Required*
A list of actions that create the data set. Only one action is supported at this time.
```
 actions = [[
        "actionName" =>  ::String,
        "queryAction" =>  ["sqlQuery" => <required> ::String]
    ], ...]
```

## `triggers = [["schedule" =>  ["expression" =>  ::String]], ...]`
A list of triggers. A trigger causes data set content to be populated at a specified time or time interval. The list of triggers can be empty or contain up to five **DataSetTrigger** objects.


## `tags = [[ ... ], ...]`
Metadata which can be used to manage the data set.
```
 tags = [[
        "key" => <required> ::String,
        "value" => <required> ::String
    ], ...]
```



# Returns

`CreateDatasetResponse`

# Exceptions

`InvalidRequestException`, `ResourceAlreadyExistsException`, `InternalFailureException`, `ServiceUnavailableException`, `ThrottlingException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/CreateDataset)
"""
@inline create_dataset(aws::AWSConfig=default_aws_config(); args...) = create_dataset(aws, args)

@inline create_dataset(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "POST", "/datasets", args)

@inline create_dataset(args) = create_dataset(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.create_dataset_content
    create_dataset_content([::AWSConfig], arguments::Dict)
    create_dataset_content([::AWSConfig]; datasetName=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "POST", "/datasets/{datasetName}/content", arguments::Dict)
    iotanalytics([::AWSConfig], "POST", "/datasets/{datasetName}/content", datasetName=)

# CreateDatasetContent Operation

Creates the content of a data set by applying an SQL action.

# Arguments

## `datasetName = ::String` -- *Required*
The name of the data set.




# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/CreateDatasetContent)
"""
@inline create_dataset_content(aws::AWSConfig=default_aws_config(); args...) = create_dataset_content(aws, args)

@inline create_dataset_content(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "POST", "/datasets/{datasetName}/content", args)

@inline create_dataset_content(args) = create_dataset_content(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.create_datastore
    create_datastore([::AWSConfig], arguments::Dict)
    create_datastore([::AWSConfig]; datastoreName=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "POST", "/datastores", arguments::Dict)
    iotanalytics([::AWSConfig], "POST", "/datastores", datastoreName=, <keyword arguments>)

# CreateDatastore Operation

Creates a data store, which is a repository for messages.

# Arguments

## `datastoreName = ::String` -- *Required*
The name of the data store.


## `retentionPeriod = [ ... ]`
How long, in days, message data is kept for the data store.
```
 retentionPeriod = [
        "unlimited" =>  ::Bool,
        "numberOfDays" =>  ::Int
    ]
```

## `tags = [[ ... ], ...]`
Metadata which can be used to manage the data store.
```
 tags = [[
        "key" => <required> ::String,
        "value" => <required> ::String
    ], ...]
```



# Returns

`CreateDatastoreResponse`

# Exceptions

`InvalidRequestException`, `ResourceAlreadyExistsException`, `InternalFailureException`, `ServiceUnavailableException`, `ThrottlingException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/CreateDatastore)
"""
@inline create_datastore(aws::AWSConfig=default_aws_config(); args...) = create_datastore(aws, args)

@inline create_datastore(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "POST", "/datastores", args)

@inline create_datastore(args) = create_datastore(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.create_pipeline
    create_pipeline([::AWSConfig], arguments::Dict)
    create_pipeline([::AWSConfig]; pipelineName=, pipelineActivities=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "POST", "/pipelines", arguments::Dict)
    iotanalytics([::AWSConfig], "POST", "/pipelines", pipelineName=, pipelineActivities=, <keyword arguments>)

# CreatePipeline Operation

Creates a pipeline. A pipeline consumes messages from one or more channels and allows you to process the messages before storing them in a data store.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of the pipeline.


## `pipelineActivities = [[ ... ], ...]` -- *Required*
A list of pipeline activities.

The list can be 1-25 **PipelineActivity** objects. Activities perform transformations on your messages, such as removing, renaming, or adding message attributes; filtering messages based on attribute values; invoking your Lambda functions on messages for advanced processing; or performing mathematical transformations to normalize device data.
```
 pipelineActivities = [[
        "channel" =>  [
            "name" => <required> ::String,
            "channelName" => <required> ::String,
            "next" =>  ::String
        ],
        "lambda" =>  [
            "name" => <required> ::String,
            "lambdaName" => <required> ::String,
            "batchSize" => <required> ::Int,
            "next" =>  ::String
        ],
        "datastore" =>  [
            "name" => <required> ::String,
            "datastoreName" => <required> ::String
        ],
        "addAttributes" =>  [
            "name" => <required> ::String,
            "attributes" => <required> ::Dict{String,String},
            "next" =>  ::String
        ],
        "removeAttributes" =>  [
            "name" => <required> ::String,
            "attributes" => <required> [::String, ...],
            "next" =>  ::String
        ],
        "selectAttributes" =>  [
            "name" => <required> ::String,
            "attributes" => <required> [::String, ...],
            "next" =>  ::String
        ],
        "filter" =>  [
            "name" => <required> ::String,
            "filter" => <required> ::String,
            "next" =>  ::String
        ],
        "math" =>  [
            "name" => <required> ::String,
            "attribute" => <required> ::String,
            "math" => <required> ::String,
            "next" =>  ::String
        ],
        "deviceRegistryEnrich" =>  [
            "name" => <required> ::String,
            "attribute" => <required> ::String,
            "thingName" => <required> ::String,
            "roleArn" => <required> ::String,
            "next" =>  ::String
        ],
        "deviceShadowEnrich" =>  [
            "name" => <required> ::String,
            "attribute" => <required> ::String,
            "thingName" => <required> ::String,
            "roleArn" => <required> ::String,
            "next" =>  ::String
        ]
    ], ...]
```

## `tags = [[ ... ], ...]`
Metadata which can be used to manage the pipeline.
```
 tags = [[
        "key" => <required> ::String,
        "value" => <required> ::String
    ], ...]
```



# Returns

`CreatePipelineResponse`

# Exceptions

`InvalidRequestException`, `ResourceAlreadyExistsException`, `InternalFailureException`, `ServiceUnavailableException`, `ThrottlingException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/CreatePipeline)
"""
@inline create_pipeline(aws::AWSConfig=default_aws_config(); args...) = create_pipeline(aws, args)

@inline create_pipeline(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "POST", "/pipelines", args)

@inline create_pipeline(args) = create_pipeline(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.delete_channel
    delete_channel([::AWSConfig], arguments::Dict)
    delete_channel([::AWSConfig]; channelName=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "DELETE", "/channels/{channelName}", arguments::Dict)
    iotanalytics([::AWSConfig], "DELETE", "/channels/{channelName}", channelName=)

# DeleteChannel Operation

Deletes the specified channel.

# Arguments

## `channelName = ::String` -- *Required*
The name of the channel to delete.




# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/DeleteChannel)
"""
@inline delete_channel(aws::AWSConfig=default_aws_config(); args...) = delete_channel(aws, args)

@inline delete_channel(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "DELETE", "/channels/{channelName}", args)

@inline delete_channel(args) = delete_channel(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.delete_dataset
    delete_dataset([::AWSConfig], arguments::Dict)
    delete_dataset([::AWSConfig]; datasetName=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "DELETE", "/datasets/{datasetName}", arguments::Dict)
    iotanalytics([::AWSConfig], "DELETE", "/datasets/{datasetName}", datasetName=)

# DeleteDataset Operation

Deletes the specified data set.

You do not have to delete the content of the data set before you perform this operation.

# Arguments

## `datasetName = ::String` -- *Required*
The name of the data set to delete.




# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/DeleteDataset)
"""
@inline delete_dataset(aws::AWSConfig=default_aws_config(); args...) = delete_dataset(aws, args)

@inline delete_dataset(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "DELETE", "/datasets/{datasetName}", args)

@inline delete_dataset(args) = delete_dataset(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.delete_dataset_content
    delete_dataset_content([::AWSConfig], arguments::Dict)
    delete_dataset_content([::AWSConfig]; datasetName=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "DELETE", "/datasets/{datasetName}/content", arguments::Dict)
    iotanalytics([::AWSConfig], "DELETE", "/datasets/{datasetName}/content", datasetName=, <keyword arguments>)

# DeleteDatasetContent Operation

Deletes the content of the specified data set.

# Arguments

## `datasetName = ::String` -- *Required*
The name of the data set whose content is deleted.


## `versionId = ::String`
The version of the data set whose content is deleted. You can also use the strings "\$LATEST" or "\$LATEST_SUCCEEDED" to delete the latest or latest successfully completed data set. If not specified, "\$LATEST_SUCCEEDED" is the default.




# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/DeleteDatasetContent)
"""
@inline delete_dataset_content(aws::AWSConfig=default_aws_config(); args...) = delete_dataset_content(aws, args)

@inline delete_dataset_content(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "DELETE", "/datasets/{datasetName}/content", args)

@inline delete_dataset_content(args) = delete_dataset_content(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.delete_datastore
    delete_datastore([::AWSConfig], arguments::Dict)
    delete_datastore([::AWSConfig]; datastoreName=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "DELETE", "/datastores/{datastoreName}", arguments::Dict)
    iotanalytics([::AWSConfig], "DELETE", "/datastores/{datastoreName}", datastoreName=)

# DeleteDatastore Operation

Deletes the specified data store.

# Arguments

## `datastoreName = ::String` -- *Required*
The name of the data store to delete.




# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/DeleteDatastore)
"""
@inline delete_datastore(aws::AWSConfig=default_aws_config(); args...) = delete_datastore(aws, args)

@inline delete_datastore(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "DELETE", "/datastores/{datastoreName}", args)

@inline delete_datastore(args) = delete_datastore(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.delete_pipeline
    delete_pipeline([::AWSConfig], arguments::Dict)
    delete_pipeline([::AWSConfig]; pipelineName=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "DELETE", "/pipelines/{pipelineName}", arguments::Dict)
    iotanalytics([::AWSConfig], "DELETE", "/pipelines/{pipelineName}", pipelineName=)

# DeletePipeline Operation

Deletes the specified pipeline.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of the pipeline to delete.




# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/DeletePipeline)
"""
@inline delete_pipeline(aws::AWSConfig=default_aws_config(); args...) = delete_pipeline(aws, args)

@inline delete_pipeline(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "DELETE", "/pipelines/{pipelineName}", args)

@inline delete_pipeline(args) = delete_pipeline(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.describe_channel
    describe_channel([::AWSConfig], arguments::Dict)
    describe_channel([::AWSConfig]; channelName=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "GET", "/channels/{channelName}", arguments::Dict)
    iotanalytics([::AWSConfig], "GET", "/channels/{channelName}", channelName=, <keyword arguments>)

# DescribeChannel Operation

Retrieves information about a channel.

# Arguments

## `channelName = ::String` -- *Required*
The name of the channel whose information is retrieved.


## `includeStatistics = ::Bool`
If true, include statistics about the channel in the response.




# Returns

`DescribeChannelResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/DescribeChannel)
"""
@inline describe_channel(aws::AWSConfig=default_aws_config(); args...) = describe_channel(aws, args)

@inline describe_channel(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "GET", "/channels/{channelName}", args)

@inline describe_channel(args) = describe_channel(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.describe_dataset
    describe_dataset([::AWSConfig], arguments::Dict)
    describe_dataset([::AWSConfig]; datasetName=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "GET", "/datasets/{datasetName}", arguments::Dict)
    iotanalytics([::AWSConfig], "GET", "/datasets/{datasetName}", datasetName=)

# DescribeDataset Operation

Retrieves information about a data set.

# Arguments

## `datasetName = ::String` -- *Required*
The name of the data set whose information is retrieved.




# Returns

`DescribeDatasetResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/DescribeDataset)
"""
@inline describe_dataset(aws::AWSConfig=default_aws_config(); args...) = describe_dataset(aws, args)

@inline describe_dataset(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "GET", "/datasets/{datasetName}", args)

@inline describe_dataset(args) = describe_dataset(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.describe_datastore
    describe_datastore([::AWSConfig], arguments::Dict)
    describe_datastore([::AWSConfig]; datastoreName=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "GET", "/datastores/{datastoreName}", arguments::Dict)
    iotanalytics([::AWSConfig], "GET", "/datastores/{datastoreName}", datastoreName=, <keyword arguments>)

# DescribeDatastore Operation

Retrieves information about a data store.

# Arguments

## `datastoreName = ::String` -- *Required*
The name of the data store


## `includeStatistics = ::Bool`
If true, include statistics about the data store in the response.




# Returns

`DescribeDatastoreResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/DescribeDatastore)
"""
@inline describe_datastore(aws::AWSConfig=default_aws_config(); args...) = describe_datastore(aws, args)

@inline describe_datastore(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "GET", "/datastores/{datastoreName}", args)

@inline describe_datastore(args) = describe_datastore(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.describe_logging_options
    describe_logging_options([::AWSConfig], arguments::Dict)
    describe_logging_options([::AWSConfig]; )

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "GET", "/logging", arguments::Dict)
    iotanalytics([::AWSConfig], "GET", "/logging", )

# DescribeLoggingOptions Operation

Retrieves the current settings of the AWS IoT Analytics logging options.

# Arguments



# Returns

`DescribeLoggingOptionsResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/DescribeLoggingOptions)
"""
@inline describe_logging_options(aws::AWSConfig=default_aws_config(); args...) = describe_logging_options(aws, args)

@inline describe_logging_options(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "GET", "/logging", args)

@inline describe_logging_options(args) = describe_logging_options(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.describe_pipeline
    describe_pipeline([::AWSConfig], arguments::Dict)
    describe_pipeline([::AWSConfig]; pipelineName=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "GET", "/pipelines/{pipelineName}", arguments::Dict)
    iotanalytics([::AWSConfig], "GET", "/pipelines/{pipelineName}", pipelineName=)

# DescribePipeline Operation

Retrieves information about a pipeline.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of the pipeline whose information is retrieved.




# Returns

`DescribePipelineResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/DescribePipeline)
"""
@inline describe_pipeline(aws::AWSConfig=default_aws_config(); args...) = describe_pipeline(aws, args)

@inline describe_pipeline(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "GET", "/pipelines/{pipelineName}", args)

@inline describe_pipeline(args) = describe_pipeline(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.get_dataset_content
    get_dataset_content([::AWSConfig], arguments::Dict)
    get_dataset_content([::AWSConfig]; datasetName=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "GET", "/datasets/{datasetName}/content", arguments::Dict)
    iotanalytics([::AWSConfig], "GET", "/datasets/{datasetName}/content", datasetName=, <keyword arguments>)

# GetDatasetContent Operation

Retrieves the contents of a data set as pre-signed URIs.

# Arguments

## `datasetName = ::String` -- *Required*
The name of the data set whose contents are retrieved.


## `versionId = ::String`
The version of the data set whose contents are retrieved. You can also use the strings "\$LATEST" or "\$LATEST_SUCCEEDED" to retrieve the contents of the latest or latest successfully completed data set. If not specified, "\$LATEST_SUCCEEDED" is the default.




# Returns

`GetDatasetContentResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/GetDatasetContent)
"""
@inline get_dataset_content(aws::AWSConfig=default_aws_config(); args...) = get_dataset_content(aws, args)

@inline get_dataset_content(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "GET", "/datasets/{datasetName}/content", args)

@inline get_dataset_content(args) = get_dataset_content(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.list_channels
    list_channels([::AWSConfig], arguments::Dict)
    list_channels([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "GET", "/channels", arguments::Dict)
    iotanalytics([::AWSConfig], "GET", "/channels", <keyword arguments>)

# ListChannels Operation

Retrieves a list of channels.

# Arguments

## `nextToken = ::String`
The token for the next set of results.


## `maxResults = ::Int`
The maximum number of results to return in this request.

The default value is 100.




# Returns

`ListChannelsResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/ListChannels)
"""
@inline list_channels(aws::AWSConfig=default_aws_config(); args...) = list_channels(aws, args)

@inline list_channels(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "GET", "/channels", args)

@inline list_channels(args) = list_channels(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.list_datasets
    list_datasets([::AWSConfig], arguments::Dict)
    list_datasets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "GET", "/datasets", arguments::Dict)
    iotanalytics([::AWSConfig], "GET", "/datasets", <keyword arguments>)

# ListDatasets Operation

Retrieves information about data sets.

# Arguments

## `nextToken = ::String`
The token for the next set of results.


## `maxResults = ::Int`
The maximum number of results to return in this request.

The default value is 100.




# Returns

`ListDatasetsResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/ListDatasets)
"""
@inline list_datasets(aws::AWSConfig=default_aws_config(); args...) = list_datasets(aws, args)

@inline list_datasets(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "GET", "/datasets", args)

@inline list_datasets(args) = list_datasets(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.list_datastores
    list_datastores([::AWSConfig], arguments::Dict)
    list_datastores([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "GET", "/datastores", arguments::Dict)
    iotanalytics([::AWSConfig], "GET", "/datastores", <keyword arguments>)

# ListDatastores Operation

Retrieves a list of data stores.

# Arguments

## `nextToken = ::String`
The token for the next set of results.


## `maxResults = ::Int`
The maximum number of results to return in this request.

The default value is 100.




# Returns

`ListDatastoresResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/ListDatastores)
"""
@inline list_datastores(aws::AWSConfig=default_aws_config(); args...) = list_datastores(aws, args)

@inline list_datastores(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "GET", "/datastores", args)

@inline list_datastores(args) = list_datastores(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.list_pipelines
    list_pipelines([::AWSConfig], arguments::Dict)
    list_pipelines([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "GET", "/pipelines", arguments::Dict)
    iotanalytics([::AWSConfig], "GET", "/pipelines", <keyword arguments>)

# ListPipelines Operation

Retrieves a list of pipelines.

# Arguments

## `nextToken = ::String`
The token for the next set of results.


## `maxResults = ::Int`
The maximum number of results to return in this request.

The default value is 100.




# Returns

`ListPipelinesResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/ListPipelines)
"""
@inline list_pipelines(aws::AWSConfig=default_aws_config(); args...) = list_pipelines(aws, args)

@inline list_pipelines(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "GET", "/pipelines", args)

@inline list_pipelines(args) = list_pipelines(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; resourceArn=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "GET", "/tags", arguments::Dict)
    iotanalytics([::AWSConfig], "GET", "/tags", resourceArn=)

# ListTagsForResource Operation

Lists the tags (metadata) which you have assigned to the resource.

# Arguments

## `resourceArn = ::String` -- *Required*
The ARN of the resource whose tags you want to list.




# Returns

`ListTagsForResourceResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException`, `ServiceUnavailableException`, `ThrottlingException`, `LimitExceededException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "GET", "/tags", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.put_logging_options
    put_logging_options([::AWSConfig], arguments::Dict)
    put_logging_options([::AWSConfig]; loggingOptions=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "PUT", "/logging", arguments::Dict)
    iotanalytics([::AWSConfig], "PUT", "/logging", loggingOptions=)

# PutLoggingOptions Operation

Sets or updates the AWS IoT Analytics logging options.

Note that if you update the value of any `loggingOptions` field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy) it takes up to 5 minutes for that change to take effect.

# Arguments

## `loggingOptions = [ ... ]` -- *Required*
The new values of the AWS IoT Analytics logging options.
```
 loggingOptions = [
        "roleArn" => <required> ::String,
        "level" => <required> "ERROR",
        "enabled" => <required> ::Bool
    ]
```



# Exceptions

`InvalidRequestException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/PutLoggingOptions)
"""
@inline put_logging_options(aws::AWSConfig=default_aws_config(); args...) = put_logging_options(aws, args)

@inline put_logging_options(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "PUT", "/logging", args)

@inline put_logging_options(args) = put_logging_options(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.run_pipeline_activity
    run_pipeline_activity([::AWSConfig], arguments::Dict)
    run_pipeline_activity([::AWSConfig]; pipelineActivity=, payloads=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "POST", "/pipelineactivities/run", arguments::Dict)
    iotanalytics([::AWSConfig], "POST", "/pipelineactivities/run", pipelineActivity=, payloads=)

# RunPipelineActivity Operation

Simulates the results of running a pipeline activity on a message payload.

# Arguments

## `pipelineActivity = [ ... ]` -- *Required*
The pipeline activity that is run. This must not be a 'channel' activity or a 'datastore' activity because these activities are used in a pipeline only to load the original message and to store the (possibly) transformed message. If a 'lambda' activity is specified, only short-running Lambda functions (those with a timeout of less than 30 seconds or less) can be used.
```
 pipelineActivity = [
        "channel" =>  [
            "name" => <required> ::String,
            "channelName" => <required> ::String,
            "next" =>  ::String
        ],
        "lambda" =>  [
            "name" => <required> ::String,
            "lambdaName" => <required> ::String,
            "batchSize" => <required> ::Int,
            "next" =>  ::String
        ],
        "datastore" =>  [
            "name" => <required> ::String,
            "datastoreName" => <required> ::String
        ],
        "addAttributes" =>  [
            "name" => <required> ::String,
            "attributes" => <required> ::Dict{String,String},
            "next" =>  ::String
        ],
        "removeAttributes" =>  [
            "name" => <required> ::String,
            "attributes" => <required> [::String, ...],
            "next" =>  ::String
        ],
        "selectAttributes" =>  [
            "name" => <required> ::String,
            "attributes" => <required> [::String, ...],
            "next" =>  ::String
        ],
        "filter" =>  [
            "name" => <required> ::String,
            "filter" => <required> ::String,
            "next" =>  ::String
        ],
        "math" =>  [
            "name" => <required> ::String,
            "attribute" => <required> ::String,
            "math" => <required> ::String,
            "next" =>  ::String
        ],
        "deviceRegistryEnrich" =>  [
            "name" => <required> ::String,
            "attribute" => <required> ::String,
            "thingName" => <required> ::String,
            "roleArn" => <required> ::String,
            "next" =>  ::String
        ],
        "deviceShadowEnrich" =>  [
            "name" => <required> ::String,
            "attribute" => <required> ::String,
            "thingName" => <required> ::String,
            "roleArn" => <required> ::String,
            "next" =>  ::String
        ]
    ]
```

## `payloads = [blob, ...]` -- *Required*
The sample message payloads on which the pipeline activity is run.




# Returns

`RunPipelineActivityResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/RunPipelineActivity)
"""
@inline run_pipeline_activity(aws::AWSConfig=default_aws_config(); args...) = run_pipeline_activity(aws, args)

@inline run_pipeline_activity(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "POST", "/pipelineactivities/run", args)

@inline run_pipeline_activity(args) = run_pipeline_activity(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.sample_channel_data
    sample_channel_data([::AWSConfig], arguments::Dict)
    sample_channel_data([::AWSConfig]; channelName=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "GET", "/channels/{channelName}/sample", arguments::Dict)
    iotanalytics([::AWSConfig], "GET", "/channels/{channelName}/sample", channelName=, <keyword arguments>)

# SampleChannelData Operation

Retrieves a sample of messages from the specified channel ingested during the specified timeframe. Up to 10 messages can be retrieved.

# Arguments

## `channelName = ::String` -- *Required*
The name of the channel whose message samples are retrieved.


## `maxMessages = ::Int`
The number of sample messages to be retrieved. The limit is 10, the default is also 10.


## `startTime = timestamp`
The start of the time window from which sample messages are retrieved.


## `endTime = timestamp`
The end of the time window from which sample messages are retrieved.




# Returns

`SampleChannelDataResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/SampleChannelData)
"""
@inline sample_channel_data(aws::AWSConfig=default_aws_config(); args...) = sample_channel_data(aws, args)

@inline sample_channel_data(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "GET", "/channels/{channelName}/sample", args)

@inline sample_channel_data(args) = sample_channel_data(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.start_pipeline_reprocessing
    start_pipeline_reprocessing([::AWSConfig], arguments::Dict)
    start_pipeline_reprocessing([::AWSConfig]; pipelineName=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "POST", "/pipelines/{pipelineName}/reprocessing", arguments::Dict)
    iotanalytics([::AWSConfig], "POST", "/pipelines/{pipelineName}/reprocessing", pipelineName=, <keyword arguments>)

# StartPipelineReprocessing Operation

Starts the reprocessing of raw message data through the pipeline.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of the pipeline on which to start reprocessing.


## `startTime = timestamp`
The start time (inclusive) of raw message data that is reprocessed.


## `endTime = timestamp`
The end time (exclusive) of raw message data that is reprocessed.




# Returns

`StartPipelineReprocessingResponse`

# Exceptions

`ResourceNotFoundException`, `ResourceAlreadyExistsException`, `InvalidRequestException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/StartPipelineReprocessing)
"""
@inline start_pipeline_reprocessing(aws::AWSConfig=default_aws_config(); args...) = start_pipeline_reprocessing(aws, args)

@inline start_pipeline_reprocessing(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "POST", "/pipelines/{pipelineName}/reprocessing", args)

@inline start_pipeline_reprocessing(args) = start_pipeline_reprocessing(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; resourceArn=, tags=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "POST", "/tags", arguments::Dict)
    iotanalytics([::AWSConfig], "POST", "/tags", resourceArn=, tags=)

# TagResource Operation

Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource.

# Arguments

## `resourceArn = ::String` -- *Required*
The ARN of the resource whose tags will be modified.


## `tags = [[ ... ], ...]` -- *Required*
The new or modified tags for the resource.
```
 tags = [[
        "key" => <required> ::String,
        "value" => <required> ::String
    ], ...]
```



# Returns

`TagResourceResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException`, `ServiceUnavailableException`, `ThrottlingException`, `LimitExceededException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "POST", "/tags", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; resourceArn=, tagKeys=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "DELETE", "/tags", arguments::Dict)
    iotanalytics([::AWSConfig], "DELETE", "/tags", resourceArn=, tagKeys=)

# UntagResource Operation

Removes the given tags (metadata) from the resource.

# Arguments

## `resourceArn = ::String` -- *Required*
The ARN of the resource whose tags will be removed.


## `tagKeys = [::String, ...]` -- *Required*
The keys of those tags which will be removed.




# Returns

`UntagResourceResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException`, `ServiceUnavailableException`, `ThrottlingException`, `LimitExceededException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "DELETE", "/tags", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.update_channel
    update_channel([::AWSConfig], arguments::Dict)
    update_channel([::AWSConfig]; channelName=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "PUT", "/channels/{channelName}", arguments::Dict)
    iotanalytics([::AWSConfig], "PUT", "/channels/{channelName}", channelName=, <keyword arguments>)

# UpdateChannel Operation

Updates the settings of a channel.

# Arguments

## `channelName = ::String` -- *Required*
The name of the channel to be updated.


## `retentionPeriod = [ ... ]`
How long, in days, message data is kept for the channel.
```
 retentionPeriod = [
        "unlimited" =>  ::Bool,
        "numberOfDays" =>  ::Int
    ]
```



# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/UpdateChannel)
"""
@inline update_channel(aws::AWSConfig=default_aws_config(); args...) = update_channel(aws, args)

@inline update_channel(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "PUT", "/channels/{channelName}", args)

@inline update_channel(args) = update_channel(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.update_dataset
    update_dataset([::AWSConfig], arguments::Dict)
    update_dataset([::AWSConfig]; datasetName=, actions=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "PUT", "/datasets/{datasetName}", arguments::Dict)
    iotanalytics([::AWSConfig], "PUT", "/datasets/{datasetName}", datasetName=, actions=, <keyword arguments>)

# UpdateDataset Operation

Updates the settings of a data set.

# Arguments

## `datasetName = ::String` -- *Required*
The name of the data set to update.


## `actions = [[ ... ], ...]` -- *Required*
A list of "DatasetAction" objects. Only one action is supported at this time.
```
 actions = [[
        "actionName" =>  ::String,
        "queryAction" =>  ["sqlQuery" => <required> ::String]
    ], ...]
```

## `triggers = [["schedule" =>  ["expression" =>  ::String]], ...]`
A list of "DatasetTrigger" objects. The list can be empty or can contain up to five **DataSetTrigger** objects.




# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/UpdateDataset)
"""
@inline update_dataset(aws::AWSConfig=default_aws_config(); args...) = update_dataset(aws, args)

@inline update_dataset(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "PUT", "/datasets/{datasetName}", args)

@inline update_dataset(args) = update_dataset(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.update_datastore
    update_datastore([::AWSConfig], arguments::Dict)
    update_datastore([::AWSConfig]; datastoreName=, <keyword arguments>)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "PUT", "/datastores/{datastoreName}", arguments::Dict)
    iotanalytics([::AWSConfig], "PUT", "/datastores/{datastoreName}", datastoreName=, <keyword arguments>)

# UpdateDatastore Operation

Updates the settings of a data store.

# Arguments

## `datastoreName = ::String` -- *Required*
The name of the data store to be updated.


## `retentionPeriod = [ ... ]`
How long, in days, message data is kept for the data store.
```
 retentionPeriod = [
        "unlimited" =>  ::Bool,
        "numberOfDays" =>  ::Int
    ]
```



# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/UpdateDatastore)
"""
@inline update_datastore(aws::AWSConfig=default_aws_config(); args...) = update_datastore(aws, args)

@inline update_datastore(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "PUT", "/datastores/{datastoreName}", args)

@inline update_datastore(args) = update_datastore(default_aws_config(), args)


"""
    using AWSSDK.IoTAnalytics.update_pipeline
    update_pipeline([::AWSConfig], arguments::Dict)
    update_pipeline([::AWSConfig]; pipelineName=, pipelineActivities=)

    using AWSCore.Services.iotanalytics
    iotanalytics([::AWSConfig], "PUT", "/pipelines/{pipelineName}", arguments::Dict)
    iotanalytics([::AWSConfig], "PUT", "/pipelines/{pipelineName}", pipelineName=, pipelineActivities=)

# UpdatePipeline Operation

Updates the settings of a pipeline.

# Arguments

## `pipelineName = ::String` -- *Required*
The name of the pipeline to update.


## `pipelineActivities = [[ ... ], ...]` -- *Required*
A list of "PipelineActivity" objects.

The list can be 1-25 **PipelineActivity** objects. Activities perform transformations on your messages, such as removing, renaming or adding message attributes; filtering messages based on attribute values; invoking your Lambda functions on messages for advanced processing; or performing mathematical transformations to normalize device data.
```
 pipelineActivities = [[
        "channel" =>  [
            "name" => <required> ::String,
            "channelName" => <required> ::String,
            "next" =>  ::String
        ],
        "lambda" =>  [
            "name" => <required> ::String,
            "lambdaName" => <required> ::String,
            "batchSize" => <required> ::Int,
            "next" =>  ::String
        ],
        "datastore" =>  [
            "name" => <required> ::String,
            "datastoreName" => <required> ::String
        ],
        "addAttributes" =>  [
            "name" => <required> ::String,
            "attributes" => <required> ::Dict{String,String},
            "next" =>  ::String
        ],
        "removeAttributes" =>  [
            "name" => <required> ::String,
            "attributes" => <required> [::String, ...],
            "next" =>  ::String
        ],
        "selectAttributes" =>  [
            "name" => <required> ::String,
            "attributes" => <required> [::String, ...],
            "next" =>  ::String
        ],
        "filter" =>  [
            "name" => <required> ::String,
            "filter" => <required> ::String,
            "next" =>  ::String
        ],
        "math" =>  [
            "name" => <required> ::String,
            "attribute" => <required> ::String,
            "math" => <required> ::String,
            "next" =>  ::String
        ],
        "deviceRegistryEnrich" =>  [
            "name" => <required> ::String,
            "attribute" => <required> ::String,
            "thingName" => <required> ::String,
            "roleArn" => <required> ::String,
            "next" =>  ::String
        ],
        "deviceShadowEnrich" =>  [
            "name" => <required> ::String,
            "attribute" => <required> ::String,
            "thingName" => <required> ::String,
            "roleArn" => <required> ::String,
            "next" =>  ::String
        ]
    ], ...]
```



# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `InternalFailureException`, `ServiceUnavailableException`, `ThrottlingException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iotanalytics-2017-11-27/UpdatePipeline)
"""
@inline update_pipeline(aws::AWSConfig=default_aws_config(); args...) = update_pipeline(aws, args)

@inline update_pipeline(aws::AWSConfig, args) = AWSCore.Services.iotanalytics(aws, "PUT", "/pipelines/{pipelineName}", args)

@inline update_pipeline(args) = update_pipeline(default_aws_config(), args)




end # module IoTAnalytics


#==============================================================================#
# End of file
#==============================================================================#
