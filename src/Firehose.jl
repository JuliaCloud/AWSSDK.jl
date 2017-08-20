#==============================================================================#
# Firehose.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/firehose-2015-08-04.normal.json
#==============================================================================#

__precompile__()

module Firehose

using AWSCore


"""
    using AWSSDK.Firehose.create_delivery_stream
    create_delivery_stream([::AWSConfig], arguments::Dict)
    create_delivery_stream([::AWSConfig]; DeliveryStreamName=, <keyword arguments>)

    using AWSCore.Services.firehose
    firehose([::AWSConfig], "CreateDeliveryStream", arguments::Dict)
    firehose([::AWSConfig], "CreateDeliveryStream", DeliveryStreamName=, <keyword arguments>)

# CreateDeliveryStream Operation

Creates a delivery stream.

By default, you can create up to 20 delivery streams per region.

This is an asynchronous operation that immediately returns. The initial status of the delivery stream is `CREATING`. After the delivery stream is created, its status is `ACTIVE` and it now accepts data. Attempts to send data to a delivery stream that is not in the `ACTIVE` state cause an exception. To check the state of a delivery stream, use [DescribeDeliveryStream](@ref).

A delivery stream is configured with a single destination: Amazon S3, Amazon Elasticsearch Service, or Amazon Redshift. You must specify only one of the following destination configuration parameters: **ExtendedS3DestinationConfiguration**, **S3DestinationConfiguration**, **ElasticsearchDestinationConfiguration**, or **RedshiftDestinationConfiguration**.

When you specify **S3DestinationConfiguration**, you can also provide the following optional values: **BufferingHints**, **EncryptionConfiguration**, and **CompressionFormat**. By default, if no **BufferingHints** value is provided, Firehose buffers data up to 5 MB or for 5 minutes, whichever condition is satisfied first. Note that **BufferingHints** is a hint, so there are some cases where the service cannot adhere to these conditions strictly; for example, record boundaries are such that the size is a little over or under the configured buffering size. By default, no encryption is performed. We strongly recommend that you enable encryption to ensure secure data storage in Amazon S3.

A few notes about Amazon Redshift as a destination:

*   An Amazon Redshift destination requires an S3 bucket as intermediate location, as Firehose first delivers data to S3 and then uses `COPY` syntax to load data into an Amazon Redshift table. This is specified in the **RedshiftDestinationConfiguration.S3Configuration** parameter.

*   The compression formats `SNAPPY` or `ZIP` cannot be specified in **RedshiftDestinationConfiguration.S3Configuration** because the Amazon Redshift `COPY` operation that reads from the S3 bucket doesn't support these compression formats.

*   We strongly recommend that you use the user name and password you provide exclusively with Firehose, and that the permissions for the account are restricted for Amazon Redshift `INSERT` permissions.

Firehose assumes the IAM role that is configured as part of the destination. The role should allow the Firehose principal to assume the role, and the role should have permissions that allows the service to deliver the data. For more information, see [Amazon S3 Bucket Access](http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3) in the *Amazon Kinesis Firehose Developer Guide*.

# Arguments

## `DeliveryStreamName = ::String` -- *Required*
The name of the delivery stream. This name must be unique per AWS account in the same region. You can have multiple delivery streams with the same name if they are in different accounts or different regions.


## `S3DestinationConfiguration = [ ... ]`
[Deprecated] The destination in Amazon S3. You can specify only one destination.
```
 S3DestinationConfiguration = [
        "RoleARN" => <required> ::String,
        "BucketARN" => <required> ::String,
        "Prefix" =>  ::String,
        "BufferingHints" =>  [
            "SizeInMBs" =>  ::Int,
            "IntervalInSeconds" =>  ::Int
        ],
        "CompressionFormat" =>  "UNCOMPRESSED", "GZIP", "ZIP" or "Snappy",
        "EncryptionConfiguration" =>  [
            "NoEncryptionConfig" =>  "NoEncryption",
            "KMSEncryptionConfig" =>  ["AWSKMSKeyARN" => <required> ::String]
        ],
        "CloudWatchLoggingOptions" =>  [
            "Enabled" =>  ::Bool,
            "LogGroupName" =>  ::String,
            "LogStreamName" =>  ::String
        ]
    ]
```

## `ExtendedS3DestinationConfiguration = [ ... ]`
The destination in Amazon S3. You can specify only one destination.
```
 ExtendedS3DestinationConfiguration = [
        "RoleARN" => <required> ::String,
        "BucketARN" => <required> ::String,
        "Prefix" =>  ::String,
        "BufferingHints" =>  [
            "SizeInMBs" =>  ::Int,
            "IntervalInSeconds" =>  ::Int
        ],
        "CompressionFormat" =>  "UNCOMPRESSED", "GZIP", "ZIP" or "Snappy",
        "EncryptionConfiguration" =>  [
            "NoEncryptionConfig" =>  "NoEncryption",
            "KMSEncryptionConfig" =>  ["AWSKMSKeyARN" => <required> ::String]
        ],
        "CloudWatchLoggingOptions" =>  [
            "Enabled" =>  ::Bool,
            "LogGroupName" =>  ::String,
            "LogStreamName" =>  ::String
        ],
        "ProcessingConfiguration" =>  [
            "Enabled" =>  ::Bool,
            "Processors" =>  [[
                "Type" => <required> "Lambda",
                "Parameters" =>  [[
                    "ParameterName" => <required> "LambdaArn" or "NumberOfRetries",
                    "ParameterValue" => <required> ::String
                ], ...]
            ], ...]
        ],
        "S3BackupMode" =>  "Disabled" or "Enabled",
        "S3BackupConfiguration" =>  [
            "RoleARN" => <required> ::String,
            "BucketARN" => <required> ::String,
            "Prefix" =>  ::String,
            "BufferingHints" =>  [
                "SizeInMBs" =>  ::Int,
                "IntervalInSeconds" =>  ::Int
            ],
            "CompressionFormat" =>  "UNCOMPRESSED", "GZIP", "ZIP" or "Snappy",
            "EncryptionConfiguration" =>  [
                "NoEncryptionConfig" =>  "NoEncryption",
                "KMSEncryptionConfig" =>  ["AWSKMSKeyARN" => <required> ::String]
            ],
            "CloudWatchLoggingOptions" =>  [
                "Enabled" =>  ::Bool,
                "LogGroupName" =>  ::String,
                "LogStreamName" =>  ::String
            ]
        ]
    ]
```

## `RedshiftDestinationConfiguration = [ ... ]`
The destination in Amazon Redshift. You can specify only one destination.
```
 RedshiftDestinationConfiguration = [
        "RoleARN" => <required> ::String,
        "ClusterJDBCURL" => <required> ::String,
        "CopyCommand" => <required> [
            "DataTableName" => <required> ::String,
            "DataTableColumns" =>  ::String,
            "CopyOptions" =>  ::String
        ],
        "Username" => <required> ::String,
        "Password" => <required> ::String,
        "RetryOptions" =>  ["DurationInSeconds" =>  ::Int],
        "S3Configuration" => <required> [
            "RoleARN" => <required> ::String,
            "BucketARN" => <required> ::String,
            "Prefix" =>  ::String,
            "BufferingHints" =>  [
                "SizeInMBs" =>  ::Int,
                "IntervalInSeconds" =>  ::Int
            ],
            "CompressionFormat" =>  "UNCOMPRESSED", "GZIP", "ZIP" or "Snappy",
            "EncryptionConfiguration" =>  [
                "NoEncryptionConfig" =>  "NoEncryption",
                "KMSEncryptionConfig" =>  ["AWSKMSKeyARN" => <required> ::String]
            ],
            "CloudWatchLoggingOptions" =>  [
                "Enabled" =>  ::Bool,
                "LogGroupName" =>  ::String,
                "LogStreamName" =>  ::String
            ]
        ],
        "ProcessingConfiguration" =>  [
            "Enabled" =>  ::Bool,
            "Processors" =>  [[
                "Type" => <required> "Lambda",
                "Parameters" =>  [[
                    "ParameterName" => <required> "LambdaArn" or "NumberOfRetries",
                    "ParameterValue" => <required> ::String
                ], ...]
            ], ...]
        ],
        "S3BackupMode" =>  "Disabled" or "Enabled",
        "S3BackupConfiguration" =>  [
            "RoleARN" => <required> ::String,
            "BucketARN" => <required> ::String,
            "Prefix" =>  ::String,
            "BufferingHints" =>  [
                "SizeInMBs" =>  ::Int,
                "IntervalInSeconds" =>  ::Int
            ],
            "CompressionFormat" =>  "UNCOMPRESSED", "GZIP", "ZIP" or "Snappy",
            "EncryptionConfiguration" =>  [
                "NoEncryptionConfig" =>  "NoEncryption",
                "KMSEncryptionConfig" =>  ["AWSKMSKeyARN" => <required> ::String]
            ],
            "CloudWatchLoggingOptions" =>  [
                "Enabled" =>  ::Bool,
                "LogGroupName" =>  ::String,
                "LogStreamName" =>  ::String
            ]
        ],
        "CloudWatchLoggingOptions" =>  [
            "Enabled" =>  ::Bool,
            "LogGroupName" =>  ::String,
            "LogStreamName" =>  ::String
        ]
    ]
```

## `ElasticsearchDestinationConfiguration = [ ... ]`
The destination in Amazon ES. You can specify only one destination.
```
 ElasticsearchDestinationConfiguration = [
        "RoleARN" => <required> ::String,
        "DomainARN" => <required> ::String,
        "IndexName" => <required> ::String,
        "TypeName" => <required> ::String,
        "IndexRotationPeriod" =>  "NoRotation", "OneHour", "OneDay", "OneWeek" or "OneMonth",
        "BufferingHints" =>  [
            "IntervalInSeconds" =>  ::Int,
            "SizeInMBs" =>  ::Int
        ],
        "RetryOptions" =>  ["DurationInSeconds" =>  ::Int],
        "S3BackupMode" =>  "FailedDocumentsOnly" or "AllDocuments",
        "S3Configuration" => <required> [
            "RoleARN" => <required> ::String,
            "BucketARN" => <required> ::String,
            "Prefix" =>  ::String,
            "BufferingHints" =>  [
                "SizeInMBs" =>  ::Int,
                "IntervalInSeconds" =>  ::Int
            ],
            "CompressionFormat" =>  "UNCOMPRESSED", "GZIP", "ZIP" or "Snappy",
            "EncryptionConfiguration" =>  [
                "NoEncryptionConfig" =>  "NoEncryption",
                "KMSEncryptionConfig" =>  ["AWSKMSKeyARN" => <required> ::String]
            ],
            "CloudWatchLoggingOptions" =>  [
                "Enabled" =>  ::Bool,
                "LogGroupName" =>  ::String,
                "LogStreamName" =>  ::String
            ]
        ],
        "ProcessingConfiguration" =>  [
            "Enabled" =>  ::Bool,
            "Processors" =>  [[
                "Type" => <required> "Lambda",
                "Parameters" =>  [[
                    "ParameterName" => <required> "LambdaArn" or "NumberOfRetries",
                    "ParameterValue" => <required> ::String
                ], ...]
            ], ...]
        ],
        "CloudWatchLoggingOptions" =>  [
            "Enabled" =>  ::Bool,
            "LogGroupName" =>  ::String,
            "LogStreamName" =>  ::String
        ]
    ]
```



# Returns

`CreateDeliveryStreamOutput`

# Exceptions

`InvalidArgumentException`, `LimitExceededException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CreateDeliveryStream)
"""

@inline create_delivery_stream(aws::AWSConfig=default_aws_config(); args...) = create_delivery_stream(aws, args)

@inline create_delivery_stream(aws::AWSConfig, args) = AWSCore.Services.firehose(aws, "CreateDeliveryStream", args)

@inline create_delivery_stream(args) = create_delivery_stream(default_aws_config(), args)


"""
    using AWSSDK.Firehose.delete_delivery_stream
    delete_delivery_stream([::AWSConfig], arguments::Dict)
    delete_delivery_stream([::AWSConfig]; DeliveryStreamName=)

    using AWSCore.Services.firehose
    firehose([::AWSConfig], "DeleteDeliveryStream", arguments::Dict)
    firehose([::AWSConfig], "DeleteDeliveryStream", DeliveryStreamName=)

# DeleteDeliveryStream Operation

Deletes a delivery stream and its data.

You can delete a delivery stream only if it is in `ACTIVE` or `DELETING` state, and not in the `CREATING` state. While the deletion request is in process, the delivery stream is in the `DELETING` state.

To check the state of a delivery stream, use [DescribeDeliveryStream](@ref).

While the delivery stream is `DELETING` state, the service may continue to accept the records, but the service doesn't make any guarantees with respect to delivering the data. Therefore, as a best practice, you should first stop any applications that are sending records before deleting a delivery stream.

# Arguments

## `DeliveryStreamName = ::String` -- *Required*
The name of the delivery stream.




# Returns

`DeleteDeliveryStreamOutput`

# Exceptions

`ResourceInUseException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeleteDeliveryStream)
"""

@inline delete_delivery_stream(aws::AWSConfig=default_aws_config(); args...) = delete_delivery_stream(aws, args)

@inline delete_delivery_stream(aws::AWSConfig, args) = AWSCore.Services.firehose(aws, "DeleteDeliveryStream", args)

@inline delete_delivery_stream(args) = delete_delivery_stream(default_aws_config(), args)


"""
    using AWSSDK.Firehose.describe_delivery_stream
    describe_delivery_stream([::AWSConfig], arguments::Dict)
    describe_delivery_stream([::AWSConfig]; DeliveryStreamName=, <keyword arguments>)

    using AWSCore.Services.firehose
    firehose([::AWSConfig], "DescribeDeliveryStream", arguments::Dict)
    firehose([::AWSConfig], "DescribeDeliveryStream", DeliveryStreamName=, <keyword arguments>)

# DescribeDeliveryStream Operation

Describes the specified delivery stream and gets the status. For example, after your delivery stream is created, call [DescribeDeliveryStream](@ref) to see if the delivery stream is `ACTIVE` and therefore ready for data to be sent to it.

# Arguments

## `DeliveryStreamName = ::String` -- *Required*
The name of the delivery stream.


## `Limit = ::Int`
The limit on the number of destinations to return. Currently, you can have one destination per delivery stream.


## `ExclusiveStartDestinationId = ::String`
The ID of the destination to start returning the destination information. Currently Firehose supports one destination per delivery stream.




# Returns

`DescribeDeliveryStreamOutput`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DescribeDeliveryStream)
"""

@inline describe_delivery_stream(aws::AWSConfig=default_aws_config(); args...) = describe_delivery_stream(aws, args)

@inline describe_delivery_stream(aws::AWSConfig, args) = AWSCore.Services.firehose(aws, "DescribeDeliveryStream", args)

@inline describe_delivery_stream(args) = describe_delivery_stream(default_aws_config(), args)


"""
    using AWSSDK.Firehose.list_delivery_streams
    list_delivery_streams([::AWSConfig], arguments::Dict)
    list_delivery_streams([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.firehose
    firehose([::AWSConfig], "ListDeliveryStreams", arguments::Dict)
    firehose([::AWSConfig], "ListDeliveryStreams", <keyword arguments>)

# ListDeliveryStreams Operation

Lists your delivery streams.

The number of delivery streams might be too large to return using a single call to [ListDeliveryStreams](@ref). You can limit the number of delivery streams returned, using the **Limit** parameter. To determine whether there are more delivery streams to list, check the value of **HasMoreDeliveryStreams** in the output. If there are more delivery streams to list, you can request them by specifying the name of the last delivery stream returned in the call in the **ExclusiveStartDeliveryStreamName** parameter of a subsequent call.

# Arguments

## `Limit = ::Int`
The maximum number of delivery streams to list.


## `ExclusiveStartDeliveryStreamName = ::String`
The name of the delivery stream to start the list with.




# Returns

`ListDeliveryStreamsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListDeliveryStreams)
"""

@inline list_delivery_streams(aws::AWSConfig=default_aws_config(); args...) = list_delivery_streams(aws, args)

@inline list_delivery_streams(aws::AWSConfig, args) = AWSCore.Services.firehose(aws, "ListDeliveryStreams", args)

@inline list_delivery_streams(args) = list_delivery_streams(default_aws_config(), args)


"""
    using AWSSDK.Firehose.put_record
    put_record([::AWSConfig], arguments::Dict)
    put_record([::AWSConfig]; DeliveryStreamName=, Record=)

    using AWSCore.Services.firehose
    firehose([::AWSConfig], "PutRecord", arguments::Dict)
    firehose([::AWSConfig], "PutRecord", DeliveryStreamName=, Record=)

# PutRecord Operation

Writes a single data record into an Amazon Kinesis Firehose delivery stream. To write multiple data records into a delivery stream, use [PutRecordBatch](@ref). Applications using these operations are referred to as producers.

By default, each delivery stream can take in up to 2,000 transactions per second, 5,000 records per second, or 5 MB per second. Note that if you use [PutRecord](@ref) and [PutRecordBatch](@ref), the limits are an aggregate across these two operations for each delivery stream. For more information about limits and how to request an increase, see [Amazon Kinesis Firehose Limits](http://docs.aws.amazon.com/firehose/latest/dev/limits.html).

You must specify the name of the delivery stream and the data record when using [PutRecord](@ref). The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data, for example, a segment from a log file, geographic location data, web site clickstream data, etc.

Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (`\\n`) or some other character unique within the data. This allows the consumer application(s) to parse individual data items when reading the data from the destination.

The [PutRecord](@ref) operation returns a **RecordId**, which is a unique string assigned to each record. Producer applications can use this ID for purposes such as auditability and investigation.

If the [PutRecord](@ref) operation throws a **ServiceUnavailableException**, back off and retry. If the exception persists, it is possible that the throughput limits have been exceeded for the delivery stream.

Data records sent to Firehose are stored for 24 hours from the time they are added to a delivery stream as it attempts to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.

# Arguments

## `DeliveryStreamName = ::String` -- *Required*
The name of the delivery stream.


## `Record = ["Data" => <required> blob]` -- *Required*
The record.




# Returns

`PutRecordOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidArgumentException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecord)
"""

@inline put_record(aws::AWSConfig=default_aws_config(); args...) = put_record(aws, args)

@inline put_record(aws::AWSConfig, args) = AWSCore.Services.firehose(aws, "PutRecord", args)

@inline put_record(args) = put_record(default_aws_config(), args)


"""
    using AWSSDK.Firehose.put_record_batch
    put_record_batch([::AWSConfig], arguments::Dict)
    put_record_batch([::AWSConfig]; DeliveryStreamName=, Records=)

    using AWSCore.Services.firehose
    firehose([::AWSConfig], "PutRecordBatch", arguments::Dict)
    firehose([::AWSConfig], "PutRecordBatch", DeliveryStreamName=, Records=)

# PutRecordBatch Operation

Writes multiple data records into a delivery stream in a single call, which can achieve higher throughput per producer than when writing single records. To write single data records into a delivery stream, use [PutRecord](@ref). Applications using these operations are referred to as producers.

By default, each delivery stream can take in up to 2,000 transactions per second, 5,000 records per second, or 5 MB per second. Note that if you use [PutRecord](@ref) and [PutRecordBatch](@ref), the limits are an aggregate across these two operations for each delivery stream. For more information about limits, see [Amazon Kinesis Firehose Limits](http://docs.aws.amazon.com/firehose/latest/dev/limits.html).

Each [PutRecordBatch](@ref) request supports up to 500 records. Each record in the request can be as large as 1,000 KB (before 64-bit encoding), up to a limit of 4 MB for the entire request. These limits cannot be changed.

You must specify the name of the delivery stream and the data record when using [PutRecord](@ref). The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data, for example, a segment from a log file, geographic location data, web site clickstream data, and so on.

Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (`\\n`) or some other character unique within the data. This allows the consumer application(s) to parse individual data items when reading the data from the destination.

The [PutRecordBatch](@ref) response includes a count of failed records, **FailedPutCount**, and an array of responses, **RequestResponses**. Each entry in the **RequestResponses** array provides additional information about the processed record, and directly correlates with a record in the request array using the same ordering, from the top to the bottom. The response array always includes the same number of records as the request array. **RequestResponses** includes both successfully and unsuccessfully processed records. Firehose attempts to process all records in each [PutRecordBatch](@ref) request. A single record failure does not stop the processing of subsequent records.

A successfully processed record includes a **RecordId** value, which is unique for the record. An unsuccessfully processed record includes **ErrorCode** and **ErrorMessage** values. **ErrorCode** reflects the type of error, and is one of the following values: `ServiceUnavailable` or `InternalFailure`. **ErrorMessage** provides more detailed information about the error.

If there is an internal server error or a timeout, the write might have completed or it might have failed. If **FailedPutCount** is greater than 0, retry the request, resending only those records that might have failed processing. This minimizes the possible duplicate records and also reduces the total bytes sent (and corresponding charges). We recommend that you handle any duplicates at the destination.

If [PutRecordBatch](@ref) throws **ServiceUnavailableException**, back off and retry. If the exception persists, it is possible that the throughput limits have been exceeded for the delivery stream.

Data records sent to Firehose are stored for 24 hours from the time they are added to a delivery stream as it attempts to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.

# Arguments

## `DeliveryStreamName = ::String` -- *Required*
The name of the delivery stream.


## `Records = [["Data" => <required> blob], ...]` -- *Required*
One or more records.




# Returns

`PutRecordBatchOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidArgumentException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordBatch)
"""

@inline put_record_batch(aws::AWSConfig=default_aws_config(); args...) = put_record_batch(aws, args)

@inline put_record_batch(aws::AWSConfig, args) = AWSCore.Services.firehose(aws, "PutRecordBatch", args)

@inline put_record_batch(args) = put_record_batch(default_aws_config(), args)


"""
    using AWSSDK.Firehose.update_destination
    update_destination([::AWSConfig], arguments::Dict)
    update_destination([::AWSConfig]; DeliveryStreamName=, CurrentDeliveryStreamVersionId=, DestinationId=, <keyword arguments>)

    using AWSCore.Services.firehose
    firehose([::AWSConfig], "UpdateDestination", arguments::Dict)
    firehose([::AWSConfig], "UpdateDestination", DeliveryStreamName=, CurrentDeliveryStreamVersionId=, DestinationId=, <keyword arguments>)

# UpdateDestination Operation

Updates the specified destination of the specified delivery stream.

You can use this operation to change the destination type (for example, to replace the Amazon S3 destination with Amazon Redshift) or change the parameters associated with a destination (for example, to change the bucket name of the Amazon S3 destination). The update might not occur immediately. The target delivery stream remains active while the configurations are updated, so data writes to the delivery stream can continue during this process. The updated configurations are usually effective within a few minutes.

Note that switching between Amazon ES and other services is not supported. For an Amazon ES destination, you can only update to another Amazon ES destination.

If the destination type is the same, Firehose merges the configuration parameters specified with the destination configuration that already exists on the delivery stream. If any of the parameters are not specified in the call, the existing values are retained. For example, in the Amazon S3 destination, if [EncryptionConfiguration](@ref) is not specified then the existing [EncryptionConfiguration](@ref) is maintained on the destination.

If the destination type is not the same, for example, changing the destination from Amazon S3 to Amazon Redshift, Firehose does not merge any parameters. In this case, all parameters must be specified.

Firehose uses **CurrentDeliveryStreamVersionId** to avoid race conditions and conflicting merges. This is a required field, and the service updates the configuration only if the existing configuration has a version ID that matches. After the update is applied successfully, the version ID is updated, and can be retrieved using [DescribeDeliveryStream](@ref). You should use the new version ID to set **CurrentDeliveryStreamVersionId** in the next call.

# Arguments

## `DeliveryStreamName = ::String` -- *Required*
The name of the delivery stream.


## `CurrentDeliveryStreamVersionId = ::String` -- *Required*
Obtain this value from the **VersionId** result of [DeliveryStreamDescription](@ref). This value is required, and helps the service to perform conditional operations. For example, if there is a interleaving update and this value is null, then the update destination fails. After the update is successful, the **VersionId** value is updated. The service then performs a merge of the old configuration with the new configuration.


## `DestinationId = ::String` -- *Required*
The ID of the destination.


## `S3DestinationUpdate = [ ... ]`
[Deprecated] Describes an update for a destination in Amazon S3.
```
 S3DestinationUpdate = [
        "RoleARN" =>  ::String,
        "BucketARN" =>  ::String,
        "Prefix" =>  ::String,
        "BufferingHints" =>  [
            "SizeInMBs" =>  ::Int,
            "IntervalInSeconds" =>  ::Int
        ],
        "CompressionFormat" =>  "UNCOMPRESSED", "GZIP", "ZIP" or "Snappy",
        "EncryptionConfiguration" =>  [
            "NoEncryptionConfig" =>  "NoEncryption",
            "KMSEncryptionConfig" =>  ["AWSKMSKeyARN" => <required> ::String]
        ],
        "CloudWatchLoggingOptions" =>  [
            "Enabled" =>  ::Bool,
            "LogGroupName" =>  ::String,
            "LogStreamName" =>  ::String
        ]
    ]
```

## `ExtendedS3DestinationUpdate = [ ... ]`
Describes an update for a destination in Amazon S3.
```
 ExtendedS3DestinationUpdate = [
        "RoleARN" =>  ::String,
        "BucketARN" =>  ::String,
        "Prefix" =>  ::String,
        "BufferingHints" =>  [
            "SizeInMBs" =>  ::Int,
            "IntervalInSeconds" =>  ::Int
        ],
        "CompressionFormat" =>  "UNCOMPRESSED", "GZIP", "ZIP" or "Snappy",
        "EncryptionConfiguration" =>  [
            "NoEncryptionConfig" =>  "NoEncryption",
            "KMSEncryptionConfig" =>  ["AWSKMSKeyARN" => <required> ::String]
        ],
        "CloudWatchLoggingOptions" =>  [
            "Enabled" =>  ::Bool,
            "LogGroupName" =>  ::String,
            "LogStreamName" =>  ::String
        ],
        "ProcessingConfiguration" =>  [
            "Enabled" =>  ::Bool,
            "Processors" =>  [[
                "Type" => <required> "Lambda",
                "Parameters" =>  [[
                    "ParameterName" => <required> "LambdaArn" or "NumberOfRetries",
                    "ParameterValue" => <required> ::String
                ], ...]
            ], ...]
        ],
        "S3BackupMode" =>  "Disabled" or "Enabled",
        "S3BackupUpdate" =>  [
            "RoleARN" =>  ::String,
            "BucketARN" =>  ::String,
            "Prefix" =>  ::String,
            "BufferingHints" =>  [
                "SizeInMBs" =>  ::Int,
                "IntervalInSeconds" =>  ::Int
            ],
            "CompressionFormat" =>  "UNCOMPRESSED", "GZIP", "ZIP" or "Snappy",
            "EncryptionConfiguration" =>  [
                "NoEncryptionConfig" =>  "NoEncryption",
                "KMSEncryptionConfig" =>  ["AWSKMSKeyARN" => <required> ::String]
            ],
            "CloudWatchLoggingOptions" =>  [
                "Enabled" =>  ::Bool,
                "LogGroupName" =>  ::String,
                "LogStreamName" =>  ::String
            ]
        ]
    ]
```

## `RedshiftDestinationUpdate = [ ... ]`
Describes an update for a destination in Amazon Redshift.
```
 RedshiftDestinationUpdate = [
        "RoleARN" =>  ::String,
        "ClusterJDBCURL" =>  ::String,
        "CopyCommand" =>  [
            "DataTableName" => <required> ::String,
            "DataTableColumns" =>  ::String,
            "CopyOptions" =>  ::String
        ],
        "Username" =>  ::String,
        "Password" =>  ::String,
        "RetryOptions" =>  ["DurationInSeconds" =>  ::Int],
        "S3Update" =>  [
            "RoleARN" =>  ::String,
            "BucketARN" =>  ::String,
            "Prefix" =>  ::String,
            "BufferingHints" =>  [
                "SizeInMBs" =>  ::Int,
                "IntervalInSeconds" =>  ::Int
            ],
            "CompressionFormat" =>  "UNCOMPRESSED", "GZIP", "ZIP" or "Snappy",
            "EncryptionConfiguration" =>  [
                "NoEncryptionConfig" =>  "NoEncryption",
                "KMSEncryptionConfig" =>  ["AWSKMSKeyARN" => <required> ::String]
            ],
            "CloudWatchLoggingOptions" =>  [
                "Enabled" =>  ::Bool,
                "LogGroupName" =>  ::String,
                "LogStreamName" =>  ::String
            ]
        ],
        "ProcessingConfiguration" =>  [
            "Enabled" =>  ::Bool,
            "Processors" =>  [[
                "Type" => <required> "Lambda",
                "Parameters" =>  [[
                    "ParameterName" => <required> "LambdaArn" or "NumberOfRetries",
                    "ParameterValue" => <required> ::String
                ], ...]
            ], ...]
        ],
        "S3BackupMode" =>  "Disabled" or "Enabled",
        "S3BackupUpdate" =>  [
            "RoleARN" =>  ::String,
            "BucketARN" =>  ::String,
            "Prefix" =>  ::String,
            "BufferingHints" =>  [
                "SizeInMBs" =>  ::Int,
                "IntervalInSeconds" =>  ::Int
            ],
            "CompressionFormat" =>  "UNCOMPRESSED", "GZIP", "ZIP" or "Snappy",
            "EncryptionConfiguration" =>  [
                "NoEncryptionConfig" =>  "NoEncryption",
                "KMSEncryptionConfig" =>  ["AWSKMSKeyARN" => <required> ::String]
            ],
            "CloudWatchLoggingOptions" =>  [
                "Enabled" =>  ::Bool,
                "LogGroupName" =>  ::String,
                "LogStreamName" =>  ::String
            ]
        ],
        "CloudWatchLoggingOptions" =>  [
            "Enabled" =>  ::Bool,
            "LogGroupName" =>  ::String,
            "LogStreamName" =>  ::String
        ]
    ]
```

## `ElasticsearchDestinationUpdate = [ ... ]`
Describes an update for a destination in Amazon ES.
```
 ElasticsearchDestinationUpdate = [
        "RoleARN" =>  ::String,
        "DomainARN" =>  ::String,
        "IndexName" =>  ::String,
        "TypeName" =>  ::String,
        "IndexRotationPeriod" =>  "NoRotation", "OneHour", "OneDay", "OneWeek" or "OneMonth",
        "BufferingHints" =>  [
            "IntervalInSeconds" =>  ::Int,
            "SizeInMBs" =>  ::Int
        ],
        "RetryOptions" =>  ["DurationInSeconds" =>  ::Int],
        "S3Update" =>  [
            "RoleARN" =>  ::String,
            "BucketARN" =>  ::String,
            "Prefix" =>  ::String,
            "BufferingHints" =>  [
                "SizeInMBs" =>  ::Int,
                "IntervalInSeconds" =>  ::Int
            ],
            "CompressionFormat" =>  "UNCOMPRESSED", "GZIP", "ZIP" or "Snappy",
            "EncryptionConfiguration" =>  [
                "NoEncryptionConfig" =>  "NoEncryption",
                "KMSEncryptionConfig" =>  ["AWSKMSKeyARN" => <required> ::String]
            ],
            "CloudWatchLoggingOptions" =>  [
                "Enabled" =>  ::Bool,
                "LogGroupName" =>  ::String,
                "LogStreamName" =>  ::String
            ]
        ],
        "ProcessingConfiguration" =>  [
            "Enabled" =>  ::Bool,
            "Processors" =>  [[
                "Type" => <required> "Lambda",
                "Parameters" =>  [[
                    "ParameterName" => <required> "LambdaArn" or "NumberOfRetries",
                    "ParameterValue" => <required> ::String
                ], ...]
            ], ...]
        ],
        "CloudWatchLoggingOptions" =>  [
            "Enabled" =>  ::Bool,
            "LogGroupName" =>  ::String,
            "LogStreamName" =>  ::String
        ]
    ]
```



# Returns

`UpdateDestinationOutput`

# Exceptions

`InvalidArgumentException`, `ResourceInUseException`, `ResourceNotFoundException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UpdateDestination)
"""

@inline update_destination(aws::AWSConfig=default_aws_config(); args...) = update_destination(aws, args)

@inline update_destination(aws::AWSConfig, args) = AWSCore.Services.firehose(aws, "UpdateDestination", args)

@inline update_destination(args) = update_destination(default_aws_config(), args)




end # module Firehose


#==============================================================================#
# End of file
#==============================================================================#
