#==============================================================================#
# CognitoSync.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/cognito-sync-2014-06-30.normal.json
#==============================================================================#

__precompile__()

module CognitoSync

using AWSCore


"""
    using AWSSDK.CognitoSync.bulk_publish
    bulk_publish([::AWSConfig], arguments::Dict)
    bulk_publish([::AWSConfig]; IdentityPoolId=)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/bulkpublish", arguments::Dict)
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/bulkpublish", IdentityPoolId=)

# BulkPublish Operation

Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation.

This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.




# Returns

`BulkPublishResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException`, `InternalErrorException`, `DuplicateRequestException` or `AlreadyStreamedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/BulkPublish)
"""
@inline bulk_publish(aws::AWSConfig=default_aws_config(); args...) = bulk_publish(aws, args)

@inline bulk_publish(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "POST", "/identitypools/{IdentityPoolId}/bulkpublish", args)

@inline bulk_publish(args) = bulk_publish(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.delete_dataset
    delete_dataset([::AWSConfig], arguments::Dict)
    delete_dataset([::AWSConfig]; IdentityPoolId=, IdentityId=, DatasetName=)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "DELETE", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", arguments::Dict)
    cognito_sync([::AWSConfig], "DELETE", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", IdentityPoolId=, IdentityId=, DatasetName=)

# DeleteDataset Operation

Deletes the specific dataset. The dataset will be deleted permanently, and the action can't be undone. Datasets that this dataset was merged with will no longer report the merge. Any subsequent operation on this dataset will result in a ResourceNotFoundException.

This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.


## `IdentityId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.


## `DatasetName = ::String` -- *Required*
A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).




# Returns

`DeleteDatasetResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException`, `InternalErrorException`, `TooManyRequestsException` or `ResourceConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/DeleteDataset)
"""
@inline delete_dataset(aws::AWSConfig=default_aws_config(); args...) = delete_dataset(aws, args)

@inline delete_dataset(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "DELETE", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", args)

@inline delete_dataset(args) = delete_dataset(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.describe_dataset
    describe_dataset([::AWSConfig], arguments::Dict)
    describe_dataset([::AWSConfig]; IdentityPoolId=, IdentityId=, DatasetName=)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", arguments::Dict)
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", IdentityPoolId=, IdentityId=, DatasetName=)

# DescribeDataset Operation

Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.

This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.


## `IdentityId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.


## `DatasetName = ::String` -- *Required*
A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).




# Returns

`DescribeDatasetResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException`, `InternalErrorException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/DescribeDataset)
"""
@inline describe_dataset(aws::AWSConfig=default_aws_config(); args...) = describe_dataset(aws, args)

@inline describe_dataset(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", args)

@inline describe_dataset(args) = describe_dataset(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.describe_identity_pool_usage
    describe_identity_pool_usage([::AWSConfig], arguments::Dict)
    describe_identity_pool_usage([::AWSConfig]; IdentityPoolId=)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}", arguments::Dict)
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}", IdentityPoolId=)

# DescribeIdentityPoolUsage Operation

Gets usage details (for example, data storage) about a particular identity pool.

This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.




# Returns

`DescribeIdentityPoolUsageResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException`, `InternalErrorException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/DescribeIdentityPoolUsage)
"""
@inline describe_identity_pool_usage(aws::AWSConfig=default_aws_config(); args...) = describe_identity_pool_usage(aws, args)

@inline describe_identity_pool_usage(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "GET", "/identitypools/{IdentityPoolId}", args)

@inline describe_identity_pool_usage(args) = describe_identity_pool_usage(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.describe_identity_usage
    describe_identity_usage([::AWSConfig], arguments::Dict)
    describe_identity_usage([::AWSConfig]; IdentityPoolId=, IdentityId=)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}", arguments::Dict)
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}", IdentityPoolId=, IdentityId=)

# DescribeIdentityUsage Operation

Gets usage information for an identity, including number of datasets and data usage.

This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.


## `IdentityId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.




# Returns

`DescribeIdentityUsageResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException`, `InternalErrorException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/DescribeIdentityUsage)
"""
@inline describe_identity_usage(aws::AWSConfig=default_aws_config(); args...) = describe_identity_usage(aws, args)

@inline describe_identity_usage(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}", args)

@inline describe_identity_usage(args) = describe_identity_usage(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.get_bulk_publish_details
    get_bulk_publish_details([::AWSConfig], arguments::Dict)
    get_bulk_publish_details([::AWSConfig]; IdentityPoolId=)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/getBulkPublishDetails", arguments::Dict)
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/getBulkPublishDetails", IdentityPoolId=)

# GetBulkPublishDetails Operation

Get the status of the last BulkPublish operation for an identity pool.

This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.




# Returns

`GetBulkPublishDetailsResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/GetBulkPublishDetails)
"""
@inline get_bulk_publish_details(aws::AWSConfig=default_aws_config(); args...) = get_bulk_publish_details(aws, args)

@inline get_bulk_publish_details(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "POST", "/identitypools/{IdentityPoolId}/getBulkPublishDetails", args)

@inline get_bulk_publish_details(args) = get_bulk_publish_details(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.get_cognito_events
    get_cognito_events([::AWSConfig], arguments::Dict)
    get_cognito_events([::AWSConfig]; IdentityPoolId=)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}/events", arguments::Dict)
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}/events", IdentityPoolId=)

# GetCognitoEvents Operation

Gets the events and the corresponding Lambda functions associated with an identity pool.

This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
The Cognito Identity Pool ID for the request




# Returns

`GetCognitoEventsResponse`

# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `InternalErrorException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/GetCognitoEvents)
"""
@inline get_cognito_events(aws::AWSConfig=default_aws_config(); args...) = get_cognito_events(aws, args)

@inline get_cognito_events(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "GET", "/identitypools/{IdentityPoolId}/events", args)

@inline get_cognito_events(args) = get_cognito_events(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.get_identity_pool_configuration
    get_identity_pool_configuration([::AWSConfig], arguments::Dict)
    get_identity_pool_configuration([::AWSConfig]; IdentityPoolId=)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}/configuration", arguments::Dict)
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}/configuration", IdentityPoolId=)

# GetIdentityPoolConfiguration Operation

Gets the configuration settings of an identity pool.

This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool for which to return a configuration.




# Returns

`GetIdentityPoolConfigurationResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException`, `InternalErrorException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/GetIdentityPoolConfiguration)
"""
@inline get_identity_pool_configuration(aws::AWSConfig=default_aws_config(); args...) = get_identity_pool_configuration(aws, args)

@inline get_identity_pool_configuration(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "GET", "/identitypools/{IdentityPoolId}/configuration", args)

@inline get_identity_pool_configuration(args) = get_identity_pool_configuration(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.list_datasets
    list_datasets([::AWSConfig], arguments::Dict)
    list_datasets([::AWSConfig]; IdentityPoolId=, IdentityId=, <keyword arguments>)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets", arguments::Dict)
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets", IdentityPoolId=, IdentityId=, <keyword arguments>)

# ListDatasets Operation

Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.

ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.


## `IdentityId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.


## `nextToken = ::String`
A pagination token for obtaining the next page of results.


## `maxResults = ::Int`
The maximum number of results to be returned.




# Returns

`ListDatasetsResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `InternalErrorException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/ListDatasets)
"""
@inline list_datasets(aws::AWSConfig=default_aws_config(); args...) = list_datasets(aws, args)

@inline list_datasets(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets", args)

@inline list_datasets(args) = list_datasets(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.list_identity_pool_usage
    list_identity_pool_usage([::AWSConfig], arguments::Dict)
    list_identity_pool_usage([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "GET", "/identitypools", arguments::Dict)
    cognito_sync([::AWSConfig], "GET", "/identitypools", <keyword arguments>)

# ListIdentityPoolUsage Operation

Gets a list of identity pools registered with Cognito.

ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.

# Arguments

## `nextToken = ::String`
A pagination token for obtaining the next page of results.


## `maxResults = ::Int`
The maximum number of results to be returned.




# Returns

`ListIdentityPoolUsageResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `InternalErrorException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/ListIdentityPoolUsage)
"""
@inline list_identity_pool_usage(aws::AWSConfig=default_aws_config(); args...) = list_identity_pool_usage(aws, args)

@inline list_identity_pool_usage(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "GET", "/identitypools", args)

@inline list_identity_pool_usage(args) = list_identity_pool_usage(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.list_records
    list_records([::AWSConfig], arguments::Dict)
    list_records([::AWSConfig]; IdentityPoolId=, IdentityId=, DatasetName=, <keyword arguments>)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records", arguments::Dict)
    cognito_sync([::AWSConfig], "GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records", IdentityPoolId=, IdentityId=, DatasetName=, <keyword arguments>)

# ListRecords Operation

Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.

ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.


## `IdentityId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.


## `DatasetName = ::String` -- *Required*
A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).


## `lastSyncCount = ::Int`
The last server sync count for this record.


## `nextToken = ::String`
A pagination token for obtaining the next page of results.


## `maxResults = ::Int`
The maximum number of results to be returned.


## `syncSessionToken = ::String`
A token containing a session ID, identity ID, and expiration.




# Returns

`ListRecordsResponse`

# Exceptions

`InvalidParameterException`, `NotAuthorizedException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/ListRecords)
"""
@inline list_records(aws::AWSConfig=default_aws_config(); args...) = list_records(aws, args)

@inline list_records(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records", args)

@inline list_records(args) = list_records(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.register_device
    register_device([::AWSConfig], arguments::Dict)
    register_device([::AWSConfig]; IdentityPoolId=, IdentityId=, Platform=, Token=)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device", arguments::Dict)
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device", IdentityPoolId=, IdentityId=, Platform=, Token=)

# RegisterDevice Operation

Registers a device to receive push sync notifications.

This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. Here, the ID of the pool that the identity belongs to.


## `IdentityId = ::String` -- *Required*
The unique ID for this identity.


## `Platform = "APNS", "APNS_SANDBOX", "GCM" or "ADM"` -- *Required*
The SNS platform type (e.g. GCM, SDM, APNS, APNS_SANDBOX).


## `Token = ::String` -- *Required*
The push token.




# Returns

`RegisterDeviceResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException`, `InternalErrorException`, `InvalidConfigurationException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/RegisterDevice)
"""
@inline register_device(aws::AWSConfig=default_aws_config(); args...) = register_device(aws, args)

@inline register_device(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "POST", "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device", args)

@inline register_device(args) = register_device(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.set_cognito_events
    set_cognito_events([::AWSConfig], arguments::Dict)
    set_cognito_events([::AWSConfig]; IdentityPoolId=, Events=)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/events", arguments::Dict)
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/events", IdentityPoolId=, Events=)

# SetCognitoEvents Operation

Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key.

This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
The Cognito Identity Pool to use when configuring Cognito Events


## `Events = ::Dict{String,String}` -- *Required*
The events to configure




# Exceptions

`InvalidParameterException`, `ResourceNotFoundException`, `NotAuthorizedException`, `InternalErrorException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/SetCognitoEvents)
"""
@inline set_cognito_events(aws::AWSConfig=default_aws_config(); args...) = set_cognito_events(aws, args)

@inline set_cognito_events(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "POST", "/identitypools/{IdentityPoolId}/events", args)

@inline set_cognito_events(args) = set_cognito_events(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.set_identity_pool_configuration
    set_identity_pool_configuration([::AWSConfig], arguments::Dict)
    set_identity_pool_configuration([::AWSConfig]; IdentityPoolId=, <keyword arguments>)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/configuration", arguments::Dict)
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/configuration", IdentityPoolId=, <keyword arguments>)

# SetIdentityPoolConfiguration Operation

Sets the necessary configuration for push sync.

This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool to modify.


## `PushSync = [ ... ]`
Options to apply to this identity pool for push synchronization.
```
 PushSync = [
        "ApplicationArns" =>  [::String, ...],
        "RoleArn" =>  ::String
    ]
```

## `CognitoStreams = [ ... ]`
Options to apply to this identity pool for Amazon Cognito streams.
```
 CognitoStreams = [
        "StreamName" =>  ::String,
        "RoleArn" =>  ::String,
        "StreamingStatus" =>  "ENABLED" or "DISABLED"
    ]
```



# Returns

`SetIdentityPoolConfigurationResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException`, `InternalErrorException`, `TooManyRequestsException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/SetIdentityPoolConfiguration)
"""
@inline set_identity_pool_configuration(aws::AWSConfig=default_aws_config(); args...) = set_identity_pool_configuration(aws, args)

@inline set_identity_pool_configuration(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "POST", "/identitypools/{IdentityPoolId}/configuration", args)

@inline set_identity_pool_configuration(args) = set_identity_pool_configuration(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.subscribe_to_dataset
    subscribe_to_dataset([::AWSConfig], arguments::Dict)
    subscribe_to_dataset([::AWSConfig]; IdentityPoolId=, IdentityId=, DatasetName=, DeviceId=)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", arguments::Dict)
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", IdentityPoolId=, IdentityId=, DatasetName=, DeviceId=)

# SubscribeToDataset Operation

Subscribes to receive notifications when a dataset is modified by another device.

This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which the identity belongs.


## `IdentityId = ::String` -- *Required*
Unique ID for this identity.


## `DatasetName = ::String` -- *Required*
The name of the dataset to subcribe to.


## `DeviceId = ::String` -- *Required*
The unique ID generated for this device by Cognito.




# Returns

`SubscribeToDatasetResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException`, `InternalErrorException`, `InvalidConfigurationException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/SubscribeToDataset)
"""
@inline subscribe_to_dataset(aws::AWSConfig=default_aws_config(); args...) = subscribe_to_dataset(aws, args)

@inline subscribe_to_dataset(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "POST", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", args)

@inline subscribe_to_dataset(args) = subscribe_to_dataset(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.unsubscribe_from_dataset
    unsubscribe_from_dataset([::AWSConfig], arguments::Dict)
    unsubscribe_from_dataset([::AWSConfig]; IdentityPoolId=, IdentityId=, DatasetName=, DeviceId=)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "DELETE", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", arguments::Dict)
    cognito_sync([::AWSConfig], "DELETE", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", IdentityPoolId=, IdentityId=, DatasetName=, DeviceId=)

# UnsubscribeFromDataset Operation

Unsubscribes from receiving notifications when a dataset is modified by another device.

This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which this identity belongs.


## `IdentityId = ::String` -- *Required*
Unique ID for this identity.


## `DatasetName = ::String` -- *Required*
The name of the dataset from which to unsubcribe.


## `DeviceId = ::String` -- *Required*
The unique ID generated for this device by Cognito.




# Returns

`UnsubscribeFromDatasetResponse`

# Exceptions

`NotAuthorizedException`, `InvalidParameterException`, `ResourceNotFoundException`, `InternalErrorException`, `InvalidConfigurationException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/UnsubscribeFromDataset)
"""
@inline unsubscribe_from_dataset(aws::AWSConfig=default_aws_config(); args...) = unsubscribe_from_dataset(aws, args)

@inline unsubscribe_from_dataset(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "DELETE", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", args)

@inline unsubscribe_from_dataset(args) = unsubscribe_from_dataset(default_aws_config(), args)


"""
    using AWSSDK.CognitoSync.update_records
    update_records([::AWSConfig], arguments::Dict)
    update_records([::AWSConfig]; IdentityPoolId=, IdentityId=, DatasetName=, SyncSessionToken=, <keyword arguments>)

    using AWSCore.Services.cognito_sync
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", arguments::Dict)
    cognito_sync([::AWSConfig], "POST", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", IdentityPoolId=, IdentityId=, DatasetName=, SyncSessionToken=, <keyword arguments>)

# UpdateRecords Operation

Posts updates to records and adds and deletes records for a dataset and user.

The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count.

For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0.

This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.

# Arguments

## `IdentityPoolId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.


## `IdentityId = ::String` -- *Required*
A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.


## `DatasetName = ::String` -- *Required*
A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).


## `DeviceId = ::String`
The unique ID generated for this device by Cognito.


## `RecordPatches = [[ ... ], ...]`
A list of patch operations.
```
 RecordPatches = [[
        "Op" => <required> "replace" or "remove",
        "Key" => <required> ::String,
        "Value" =>  ::String,
        "SyncCount" => <required> ::Int,
        "DeviceLastModifiedDate" =>  timestamp
    ], ...]
```

## `SyncSessionToken = ::String` -- *Required*
The SyncSessionToken returned by a previous call to ListRecords for this dataset and identity.


## `*header:* x-amz-Client-Context = ::String`
Intended to supply a device ID that will populate the lastModifiedBy field referenced in other methods. The ClientContext field is not yet implemented.




# Returns

`UpdateRecordsResponse`

# Exceptions

`InvalidParameterException`, `LimitExceededException`, `NotAuthorizedException`, `ResourceNotFoundException`, `ResourceConflictException`, `InvalidLambdaFunctionOutputException`, `LambdaThrottledException`, `TooManyRequestsException` or `InternalErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cognito-sync-2014-06-30/UpdateRecords)
"""
@inline update_records(aws::AWSConfig=default_aws_config(); args...) = update_records(aws, args)

@inline update_records(aws::AWSConfig, args) = AWSCore.Services.cognito_sync(aws, "POST", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", args)

@inline update_records(args) = update_records(default_aws_config(), args)




end # module CognitoSync


#==============================================================================#
# End of file
#==============================================================================#
