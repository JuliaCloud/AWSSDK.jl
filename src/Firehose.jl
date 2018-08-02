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

Creates a Kinesis Data Firehose delivery stream.

By default, you can create up to 50 delivery streams per AWS Region.

This is an asynchronous operation that immediately returns. The initial status of the delivery stream is `CREATING`. After the delivery stream is created, its status is `ACTIVE` and it now accepts data. Attempts to send data to a delivery stream that is not in the `ACTIVE` state cause an exception. To check the state of a delivery stream, use [DescribeDeliveryStream](@ref).

A Kinesis Data Firehose delivery stream can be configured to receive records directly from providers using [PutRecord](@ref) or [PutRecordBatch](@ref), or it can be configured to use an existing Kinesis stream as its source. To specify a Kinesis data stream as input, set the `DeliveryStreamType` parameter to `KinesisStreamAsSource`, and provide the Kinesis stream Amazon Resource Name (ARN) and role ARN in the `KinesisStreamSourceConfiguration` parameter.

A delivery stream is configured with a single destination: Amazon S3, Amazon ES, Amazon Redshift, or Splunk. You must specify only one of the following destination configuration parameters: **ExtendedS3DestinationConfiguration**, **S3DestinationConfiguration**, **ElasticsearchDestinationConfiguration**, **RedshiftDestinationConfiguration**, or **SplunkDestinationConfiguration**.

When you specify **S3DestinationConfiguration**, you can also provide the following optional values: **BufferingHints**, **EncryptionConfiguration**, and **CompressionFormat**. By default, if no **BufferingHints** value is provided, Kinesis Data Firehose buffers data up to 5 MB or for 5 minutes, whichever condition is satisfied first. **BufferingHints** is a hint, so there are some cases where the service cannot adhere to these conditions strictly. For example, record boundaries might be such that the size is a little over or under the configured buffering size. By default, no encryption is performed. We strongly recommend that you enable encryption to ensure secure data storage in Amazon S3.

A few notes about Amazon Redshift as a destination:

*   An Amazon Redshift destination requires an S3 bucket as intermediate location. Kinesis Data Firehose first delivers data to Amazon S3 and then uses `COPY` syntax to load data into an Amazon Redshift table. This is specified in the **RedshiftDestinationConfiguration.S3Configuration** parameter.

*   The compression formats `SNAPPY` or `ZIP` cannot be specified in `RedshiftDestinationConfiguration.S3Configuration` because the Amazon Redshift `COPY` operation that reads from the S3 bucket doesn't support these compression formats.

*   We strongly recommend that you use the user name and password you provide exclusively with Kinesis Data Firehose, and that the permissions for the account are restricted for Amazon Redshift `INSERT` permissions.

Kinesis Data Firehose assumes the IAM role that is configured as part of the destination. The role should allow the Kinesis Data Firehose principal to assume the role, and the role should have permissions that allow the service to deliver the data. For more information, see [Grant Kinesis Data Firehose Access to an Amazon S3 Destination](http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3) in the *Amazon Kinesis Data Firehose Developer Guide*.

# Arguments

## `DeliveryStreamName = ::String` -- *Required*
The name of the delivery stream. This name must be unique per AWS account in the same AWS Region. If the delivery streams are in different accounts or different Regions, you can have multiple delivery streams with the same name.


## `DeliveryStreamType = "DirectPut" or "KinesisStreamAsSource"`
The delivery stream type. This parameter can be one of the following values:

*   `DirectPut`: Provider applications access the delivery stream directly.

*   `KinesisStreamAsSource`: The delivery stream uses a Kinesis data stream as a source.


## `KinesisStreamSourceConfiguration = [ ... ]`
When a Kinesis data stream is used as the source for the delivery stream, a [KinesisStreamSourceConfiguration](@ref) containing the Kinesis data stream Amazon Resource Name (ARN) and the role ARN for the source stream.
```
 KinesisStreamSourceConfiguration = [
        "KinesisStreamARN" => <required> ::String,
        "RoleARN" => <required> ::String
    ]
```

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
                    "ParameterName" => <required> "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs" or "BufferIntervalInSeconds",
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
        "DataFormatConversionConfiguration" =>  [
            "SchemaConfiguration" =>  [
                "RoleARN" =>  ::String,
                "CatalogId" =>  ::String,
                "DatabaseName" =>  ::String,
                "TableName" =>  ::String,
                "Region" =>  ::String,
                "VersionId" =>  ::String
            ],
            "InputFormatConfiguration" =>  ["Deserializer" =>  [
                    "OpenXJsonSerDe" =>  [
                        "ConvertDotsInJsonKeysToUnderscores" =>  ::Bool,
                        "CaseInsensitive" =>  ::Bool,
                        "ColumnToJsonKeyMappings" =>  ::Dict{String,String}
                    ],
                    "HiveJsonSerDe" =>  ["TimestampFormats" =>  [::String, ...]]
                ]],
            "OutputFormatConfiguration" =>  ["Serializer" =>  [
                    "ParquetSerDe" =>  [
                        "BlockSizeBytes" =>  ::Int,
                        "PageSizeBytes" =>  ::Int,
                        "Compression" =>  "UNCOMPRESSED", "GZIP" or "SNAPPY",
                        "EnableDictionaryCompression" =>  ::Bool,
                        "MaxPaddingBytes" =>  ::Int,
                        "WriterVersion" =>  "V1" or "V2"
                    ],
                    "OrcSerDe" =>  [
                        "StripeSizeBytes" =>  ::Int,
                        "BlockSizeBytes" =>  ::Int,
                        "RowIndexStride" =>  ::Int,
                        "EnablePadding" =>  ::Bool,
                        "PaddingTolerance" =>  double,
                        "Compression" =>  "NONE", "ZLIB" or "SNAPPY",
                        "BloomFilterColumns" =>  [::String, ...],
                        "BloomFilterFalsePositiveProbability" =>  double,
                        "DictionaryKeyThreshold" =>  double,
                        "FormatVersion" =>  "V0_11" or "V0_12"
                    ]
                ]],
            "Enabled" =>  ::Bool
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
                    "ParameterName" => <required> "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs" or "BufferIntervalInSeconds",
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
                    "ParameterName" => <required> "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs" or "BufferIntervalInSeconds",
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

## `SplunkDestinationConfiguration = [ ... ]`
The destination in Splunk. You can specify only one destination.
```
 SplunkDestinationConfiguration = [
        "HECEndpoint" => <required> ::String,
        "HECEndpointType" => <required> "Raw" or "Event",
        "HECToken" => <required> ::String,
        "HECAcknowledgmentTimeoutInSeconds" =>  ::Int,
        "RetryOptions" =>  ["DurationInSeconds" =>  ::Int],
        "S3BackupMode" =>  "FailedEventsOnly" or "AllEvents",
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
                    "ParameterName" => <required> "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs" or "BufferIntervalInSeconds",
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

While the delivery stream is `DELETING` state, the service might continue to accept the records, but it doesn't make any guarantees with respect to delivering the data. Therefore, as a best practice, you should first stop any applications that are sending records before deleting a delivery stream.

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

Describes the specified delivery stream and gets the status. For example, after your delivery stream is created, call `DescribeDeliveryStream` to see whether the delivery stream is `ACTIVE` and therefore ready for data to be sent to it.

# Arguments

## `DeliveryStreamName = ::String` -- *Required*
The name of the delivery stream.


## `Limit = ::Int`
The limit on the number of destinations to return. You can have one destination per delivery stream.


## `ExclusiveStartDestinationId = ::String`
The ID of the destination to start returning the destination information. Kinesis Data Firehose supports one destination per delivery stream.




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

The number of delivery streams might be too large to return using a single call to `ListDeliveryStreams`. You can limit the number of delivery streams returned, using the **Limit** parameter. To determine whether there are more delivery streams to list, check the value of `HasMoreDeliveryStreams` in the output. If there are more delivery streams to list, you can request them by specifying the name of the last delivery stream returned in the call in the `ExclusiveStartDeliveryStreamName` parameter of a subsequent call.

# Arguments

## `Limit = ::Int`
The maximum number of delivery streams to list. The default value is 10.


## `DeliveryStreamType = "DirectPut" or "KinesisStreamAsSource"`
The delivery stream type. This can be one of the following values:

*   `DirectPut`: Provider applications access the delivery stream directly.

*   `KinesisStreamAsSource`: The delivery stream uses a Kinesis data stream as a source.

This parameter is optional. If this parameter is omitted, delivery streams of all types are returned.


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
    using AWSSDK.Firehose.list_tags_for_delivery_stream
    list_tags_for_delivery_stream([::AWSConfig], arguments::Dict)
    list_tags_for_delivery_stream([::AWSConfig]; DeliveryStreamName=, <keyword arguments>)

    using AWSCore.Services.firehose
    firehose([::AWSConfig], "ListTagsForDeliveryStream", arguments::Dict)
    firehose([::AWSConfig], "ListTagsForDeliveryStream", DeliveryStreamName=, <keyword arguments>)

# ListTagsForDeliveryStream Operation

Lists the tags for the specified delivery stream. This operation has a limit of five transactions per second per account.

# Arguments

## `DeliveryStreamName = ::String` -- *Required*
The name of the delivery stream whose tags you want to list.


## `ExclusiveStartTagKey = ::String`
The key to use as the starting point for the list of tags. If you set this parameter, `ListTagsForDeliveryStream` gets all tags that occur after `ExclusiveStartTagKey`.


## `Limit = ::Int`
The number of tags to return. If this number is less than the total number of tags associated with the delivery stream, `HasMoreTags` is set to `true` in the response. To list additional tags, set `ExclusiveStartTagKey` to the last key in the response.




# Returns

`ListTagsForDeliveryStreamOutput`

# Exceptions

`ResourceNotFoundException`, `InvalidArgumentException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListTagsForDeliveryStream)
"""
@inline list_tags_for_delivery_stream(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_delivery_stream(aws, args)

@inline list_tags_for_delivery_stream(aws::AWSConfig, args) = AWSCore.Services.firehose(aws, "ListTagsForDeliveryStream", args)

@inline list_tags_for_delivery_stream(args) = list_tags_for_delivery_stream(default_aws_config(), args)


"""
    using AWSSDK.Firehose.put_record
    put_record([::AWSConfig], arguments::Dict)
    put_record([::AWSConfig]; DeliveryStreamName=, Record=)

    using AWSCore.Services.firehose
    firehose([::AWSConfig], "PutRecord", arguments::Dict)
    firehose([::AWSConfig], "PutRecord", DeliveryStreamName=, Record=)

# PutRecord Operation

Writes a single data record into an Amazon Kinesis Data Firehose delivery stream. To write multiple data records into a delivery stream, use [PutRecordBatch](@ref). Applications using these operations are referred to as producers.

By default, each delivery stream can take in up to 2,000 transactions per second, 5,000 records per second, or 5 MB per second. If you use [PutRecord](@ref) and [PutRecordBatch](@ref), the limits are an aggregate across these two operations for each delivery stream. For more information about limits and how to request an increase, see [Amazon Kinesis Data Firehose Limits](http://docs.aws.amazon.com/firehose/latest/dev/limits.html).

You must specify the name of the delivery stream and the data record when using [PutRecord](@ref). The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data. For example, it can be a segment from a log file, geographic location data, website clickstream data, and so on.

Kinesis Data Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (`\\n`) or some other character unique within the data. This allows the consumer application to parse individual data items when reading the data from the destination.

The `PutRecord` operation returns a `RecordId`, which is a unique string assigned to each record. Producer applications can use this ID for purposes such as auditability and investigation.

If the `PutRecord` operation throws a `ServiceUnavailableException`, back off and retry. If the exception persists, it is possible that the throughput limits have been exceeded for the delivery stream.

Data records sent to Kinesis Data Firehose are stored for 24 hours from the time they are added to a delivery stream as it tries to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.

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

By default, each delivery stream can take in up to 2,000 transactions per second, 5,000 records per second, or 5 MB per second. If you use [PutRecord](@ref) and [PutRecordBatch](@ref), the limits are an aggregate across these two operations for each delivery stream. For more information about limits, see [Amazon Kinesis Data Firehose Limits](http://docs.aws.amazon.com/firehose/latest/dev/limits.html).

Each [PutRecordBatch](@ref) request supports up to 500 records. Each record in the request can be as large as 1,000 KB (before 64-bit encoding), up to a limit of 4 MB for the entire request. These limits cannot be changed.

You must specify the name of the delivery stream and the data record when using [PutRecord](@ref). The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data. For example, it could be a segment from a log file, geographic location data, website clickstream data, and so on.

Kinesis Data Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (`\\n`) or some other character unique within the data. This allows the consumer application to parse individual data items when reading the data from the destination.

The [PutRecordBatch](@ref) response includes a count of failed records, **FailedPutCount**, and an array of responses, **RequestResponses**. Each entry in the **RequestResponses** array provides additional information about the processed record. It directly correlates with a record in the request array using the same ordering, from the top to the bottom. The response array always includes the same number of records as the request array. **RequestResponses** includes both successfully and unsuccessfully processed records. Kinesis Data Firehose tries to process all records in each [PutRecordBatch](@ref) request. A single record failure does not stop the processing of subsequent records.

A successfully processed record includes a **RecordId** value, which is unique for the record. An unsuccessfully processed record includes **ErrorCode** and **ErrorMessage** values. **ErrorCode** reflects the type of error, and is one of the following values: `ServiceUnavailable` or `InternalFailure`. **ErrorMessage** provides more detailed information about the error.

If there is an internal server error or a timeout, the write might have completed or it might have failed. If **FailedPutCount** is greater than 0, retry the request, resending only those records that might have failed processing. This minimizes the possible duplicate records and also reduces the total bytes sent (and corresponding charges). We recommend that you handle any duplicates at the destination.

If [PutRecordBatch](@ref) throws **ServiceUnavailableException**, back off and retry. If the exception persists, it is possible that the throughput limits have been exceeded for the delivery stream.

Data records sent to Kinesis Data Firehose are stored for 24 hours from the time they are added to a delivery stream as it attempts to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.

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
    using AWSSDK.Firehose.tag_delivery_stream
    tag_delivery_stream([::AWSConfig], arguments::Dict)
    tag_delivery_stream([::AWSConfig]; DeliveryStreamName=, Tags=)

    using AWSCore.Services.firehose
    firehose([::AWSConfig], "TagDeliveryStream", arguments::Dict)
    firehose([::AWSConfig], "TagDeliveryStream", DeliveryStreamName=, Tags=)

# TagDeliveryStream Operation

Adds or updates tags for the specified delivery stream. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. Tags are metadata. For example, you can add friendly names and descriptions or other types of information that can help you distinguish the delivery stream. For more information about tags, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html) in the *AWS Billing and Cost Management User Guide*.

Each delivery stream can have up to 50 tags.

This operation has a limit of five transactions per second per account.

# Arguments

## `DeliveryStreamName = ::String` -- *Required*
The name of the delivery stream to which you want to add the tags.


## `Tags = [[ ... ], ...]` -- *Required*
A set of key-value pairs to use to create the tags.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`TagDeliveryStreamOutput`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/TagDeliveryStream)
"""
@inline tag_delivery_stream(aws::AWSConfig=default_aws_config(); args...) = tag_delivery_stream(aws, args)

@inline tag_delivery_stream(aws::AWSConfig, args) = AWSCore.Services.firehose(aws, "TagDeliveryStream", args)

@inline tag_delivery_stream(args) = tag_delivery_stream(default_aws_config(), args)


"""
    using AWSSDK.Firehose.untag_delivery_stream
    untag_delivery_stream([::AWSConfig], arguments::Dict)
    untag_delivery_stream([::AWSConfig]; DeliveryStreamName=, TagKeys=)

    using AWSCore.Services.firehose
    firehose([::AWSConfig], "UntagDeliveryStream", arguments::Dict)
    firehose([::AWSConfig], "UntagDeliveryStream", DeliveryStreamName=, TagKeys=)

# UntagDeliveryStream Operation

Removes tags from the specified delivery stream. Removed tags are deleted, and you can't recover them after this operation successfully completes.

If you specify a tag that doesn't exist, the operation ignores it.

This operation has a limit of five transactions per second per account.

# Arguments

## `DeliveryStreamName = ::String` -- *Required*
The name of the delivery stream.


## `TagKeys = [::String, ...]` -- *Required*
A list of tag keys. Each corresponding tag is removed from the delivery stream.




# Returns

`UntagDeliveryStreamOutput`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UntagDeliveryStream)
"""
@inline untag_delivery_stream(aws::AWSConfig=default_aws_config(); args...) = untag_delivery_stream(aws, args)

@inline untag_delivery_stream(aws::AWSConfig, args) = AWSCore.Services.firehose(aws, "UntagDeliveryStream", args)

@inline untag_delivery_stream(args) = untag_delivery_stream(default_aws_config(), args)


"""
    using AWSSDK.Firehose.update_destination
    update_destination([::AWSConfig], arguments::Dict)
    update_destination([::AWSConfig]; DeliveryStreamName=, CurrentDeliveryStreamVersionId=, DestinationId=, <keyword arguments>)

    using AWSCore.Services.firehose
    firehose([::AWSConfig], "UpdateDestination", arguments::Dict)
    firehose([::AWSConfig], "UpdateDestination", DeliveryStreamName=, CurrentDeliveryStreamVersionId=, DestinationId=, <keyword arguments>)

# UpdateDestination Operation

Updates the specified destination of the specified delivery stream.

Use this operation to change the destination type (for example, to replace the Amazon S3 destination with Amazon Redshift) or change the parameters associated with a destination (for example, to change the bucket name of the Amazon S3 destination). The update might not occur immediately. The target delivery stream remains active while the configurations are updated, so data writes to the delivery stream can continue during this process. The updated configurations are usually effective within a few minutes.

Switching between Amazon ES and other services is not supported. For an Amazon ES destination, you can only update to another Amazon ES destination.

If the destination type is the same, Kinesis Data Firehose merges the configuration parameters specified with the destination configuration that already exists on the delivery stream. If any of the parameters are not specified in the call, the existing values are retained. For example, in the Amazon S3 destination, if [EncryptionConfiguration](@ref) is not specified, then the existing `EncryptionConfiguration` is maintained on the destination.

If the destination type is not the same, for example, changing the destination from Amazon S3 to Amazon Redshift, Kinesis Data Firehose does not merge any parameters. In this case, all parameters must be specified.

Kinesis Data Firehose uses **CurrentDeliveryStreamVersionId** to avoid race conditions and conflicting merges. This is a required field, and the service updates the configuration only if the existing configuration has a version ID that matches. After the update is applied successfully, the version ID is updated, and can be retrieved using [DescribeDeliveryStream](@ref). Use the new version ID to set **CurrentDeliveryStreamVersionId** in the next call.

# Arguments

## `DeliveryStreamName = ::String` -- *Required*
The name of the delivery stream.


## `CurrentDeliveryStreamVersionId = ::String` -- *Required*
Obtain this value from the **VersionId** result of [DeliveryStreamDescription](@ref). This value is required, and helps the service perform conditional operations. For example, if there is an interleaving update and this value is null, then the update destination fails. After the update is successful, the `VersionId` value is updated. The service then performs a merge of the old configuration with the new configuration.


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
                    "ParameterName" => <required> "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs" or "BufferIntervalInSeconds",
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
        "DataFormatConversionConfiguration" =>  [
            "SchemaConfiguration" =>  [
                "RoleARN" =>  ::String,
                "CatalogId" =>  ::String,
                "DatabaseName" =>  ::String,
                "TableName" =>  ::String,
                "Region" =>  ::String,
                "VersionId" =>  ::String
            ],
            "InputFormatConfiguration" =>  ["Deserializer" =>  [
                    "OpenXJsonSerDe" =>  [
                        "ConvertDotsInJsonKeysToUnderscores" =>  ::Bool,
                        "CaseInsensitive" =>  ::Bool,
                        "ColumnToJsonKeyMappings" =>  ::Dict{String,String}
                    ],
                    "HiveJsonSerDe" =>  ["TimestampFormats" =>  [::String, ...]]
                ]],
            "OutputFormatConfiguration" =>  ["Serializer" =>  [
                    "ParquetSerDe" =>  [
                        "BlockSizeBytes" =>  ::Int,
                        "PageSizeBytes" =>  ::Int,
                        "Compression" =>  "UNCOMPRESSED", "GZIP" or "SNAPPY",
                        "EnableDictionaryCompression" =>  ::Bool,
                        "MaxPaddingBytes" =>  ::Int,
                        "WriterVersion" =>  "V1" or "V2"
                    ],
                    "OrcSerDe" =>  [
                        "StripeSizeBytes" =>  ::Int,
                        "BlockSizeBytes" =>  ::Int,
                        "RowIndexStride" =>  ::Int,
                        "EnablePadding" =>  ::Bool,
                        "PaddingTolerance" =>  double,
                        "Compression" =>  "NONE", "ZLIB" or "SNAPPY",
                        "BloomFilterColumns" =>  [::String, ...],
                        "BloomFilterFalsePositiveProbability" =>  double,
                        "DictionaryKeyThreshold" =>  double,
                        "FormatVersion" =>  "V0_11" or "V0_12"
                    ]
                ]],
            "Enabled" =>  ::Bool
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
                    "ParameterName" => <required> "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs" or "BufferIntervalInSeconds",
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
                    "ParameterName" => <required> "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs" or "BufferIntervalInSeconds",
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

## `SplunkDestinationUpdate = [ ... ]`
Describes an update for a destination in Splunk.
```
 SplunkDestinationUpdate = [
        "HECEndpoint" =>  ::String,
        "HECEndpointType" =>  "Raw" or "Event",
        "HECToken" =>  ::String,
        "HECAcknowledgmentTimeoutInSeconds" =>  ::Int,
        "RetryOptions" =>  ["DurationInSeconds" =>  ::Int],
        "S3BackupMode" =>  "FailedEventsOnly" or "AllEvents",
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
                    "ParameterName" => <required> "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs" or "BufferIntervalInSeconds",
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
