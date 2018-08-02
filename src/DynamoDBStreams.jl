#==============================================================================#
# DynamoDBStreams.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/streams.dynamodb-2012-08-10.normal.json
#==============================================================================#

__precompile__()

module DynamoDBStreams

using AWSCore


"""
    using AWSSDK.DynamoDBStreams.describe_stream
    describe_stream([::AWSConfig], arguments::Dict)
    describe_stream([::AWSConfig]; StreamArn=, <keyword arguments>)

    using AWSCore.Services.streams_dynamodb
    streams_dynamodb([::AWSConfig], "DescribeStream", arguments::Dict)
    streams_dynamodb([::AWSConfig], "DescribeStream", StreamArn=, <keyword arguments>)

# DescribeStream Operation

Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table.

**Note**
> You can call `DescribeStream` at a maximum rate of 10 times per second.

Each shard in the stream has a `SequenceNumberRange` associated with it. If the `SequenceNumberRange` has a `StartingSequenceNumber` but no `EndingSequenceNumber`, then the shard is still open (able to receive more stream records). If both `StartingSequenceNumber` and `EndingSequenceNumber` are present, then that shard is closed and can no longer receive more data.

# Arguments

## `StreamArn = ::String` -- *Required*
The Amazon Resource Name (ARN) for the stream.


## `Limit = ::Int`
The maximum number of shard objects to return. The upper limit is 100.


## `ExclusiveStartShardId = ::String`
The shard ID of the first item that this operation will evaluate. Use the value that was returned for `LastEvaluatedShardId` in the previous operation.




# Returns

`DescribeStreamOutput`

# Exceptions

`ResourceNotFoundException` or `InternalServerError`.

# Example: To describe a stream with a given stream ARN

The following example describes a stream with a given stream ARN.

Input:
```
[
    "StreamArn" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252"
]
```

Output:
```
Dict(
    "StreamDescription" => Dict(
        "CreationRequestDateTime" => "Wed May 20 13:51:10 PDT 2015",
        "KeySchema" => [
            Dict(
                "AttributeName" => "ForumName",
                "KeyType" => "HASH"
            ),
            Dict(
                "AttributeName" => "Subject",
                "KeyType" => "RANGE"
            )
        ],
        "Shards" => [
            Dict(
                "SequenceNumberRange" => Dict(
                    "EndingSequenceNumber" => "20500000000000000910398",
                    "StartingSequenceNumber" => "20500000000000000910398"
                ),
                "ShardId" => "shardId-00000001414562045508-2bac9cd2"
            ),
            Dict(
                "ParentShardId" => "shardId-00000001414562045508-2bac9cd2",
                "SequenceNumberRange" => Dict(
                    "EndingSequenceNumber" => "820400000000000001192334",
                    "StartingSequenceNumber" => "820400000000000001192334"
                ),
                "ShardId" => "shardId-00000001414576573621-f55eea83"
            ),
            Dict(
                "ParentShardId" => "shardId-00000001414576573621-f55eea83",
                "SequenceNumberRange" => Dict(
                    "EndingSequenceNumber" => "1683700000000000001135967",
                    "StartingSequenceNumber" => "1683700000000000001135967"
                ),
                "ShardId" => "shardId-00000001414592258131-674fd923"
            ),
            Dict(
                "ParentShardId" => "shardId-00000001414592258131-674fd923",
                "SequenceNumberRange" => Dict(
                    "StartingSequenceNumber" => "2574600000000000000935255"
                ),
                "ShardId" => "shardId-00000001414608446368-3a1afbaf"
            )
        ],
        "StreamArn" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252",
        "StreamLabel" => "2015-05-20T20:51:10.252",
        "StreamStatus" => "ENABLED",
        "StreamViewType" => "NEW_AND_OLD_IMAGES",
        "TableName" => "Forum"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/DescribeStream)
"""
@inline describe_stream(aws::AWSConfig=default_aws_config(); args...) = describe_stream(aws, args)

@inline describe_stream(aws::AWSConfig, args) = AWSCore.Services.streams_dynamodb(aws, "DescribeStream", args)

@inline describe_stream(args) = describe_stream(default_aws_config(), args)


"""
    using AWSSDK.DynamoDBStreams.get_records
    get_records([::AWSConfig], arguments::Dict)
    get_records([::AWSConfig]; ShardIterator=, <keyword arguments>)

    using AWSCore.Services.streams_dynamodb
    streams_dynamodb([::AWSConfig], "GetRecords", arguments::Dict)
    streams_dynamodb([::AWSConfig], "GetRecords", ShardIterator=, <keyword arguments>)

# GetRecords Operation

Retrieves the stream records from a given shard.

Specify a shard iterator using the `ShardIterator` parameter. The shard iterator specifies the position in the shard from which you want to start reading stream records sequentially. If there are no stream records available in the portion of the shard that the iterator points to, `GetRecords` returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains stream records.

**Note**
> `GetRecords` can retrieve a maximum of 1 MB of data or 1000 stream records, whichever comes first.

# Arguments

## `ShardIterator = ::String` -- *Required*
A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.


## `Limit = ::Int`
The maximum number of records to return from the shard. The upper limit is 1000.




# Returns

`GetRecordsOutput`

# Exceptions

`ResourceNotFoundException`, `LimitExceededException`, `InternalServerError`, `ExpiredIteratorException` or `TrimmedDataAccessException`.

# Example: To retrieve all the stream records from a shard

The following example retrieves all the stream records from a shard.

Input:
```
[
    "ShardIterator" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252|1|AAAAAAAAAAEvJp6D+zaQ...  <remaining characters omitted> ..."
]
```

Output:
```
Dict(
    "NextShardIterator" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252|1|AAAAAAAAAAGQBYshYDEe ... <remaining characters omitted> ...",
    "Records" => [
        Dict(
            "awsRegion" => "us-west-2",
            "dynamodb" => Dict(
                "ApproximateCreationDateTime" => "1.46480646E9",
                "Keys" => Dict(
                    "ForumName" => Dict(
                        "S" => "DynamoDB"
                    ),
                    "Subject" => Dict(
                        "S" => "DynamoDB Thread 3"
                    )
                ),
                "SequenceNumber" => "300000000000000499659",
                "SizeBytes" => 41,
                "StreamViewType" => "KEYS_ONLY"
            ),
            "eventID" => "e2fd9c34eff2d779b297b26f5fef4206",
            "eventName" => "INSERT",
            "eventSource" => "aws:dynamodb",
            "eventVersion" => "1.0"
        ),
        Dict(
            "awsRegion" => "us-west-2",
            "dynamodb" => Dict(
                "ApproximateCreationDateTime" => "1.46480527E9",
                "Keys" => Dict(
                    "ForumName" => Dict(
                        "S" => "DynamoDB"
                    ),
                    "Subject" => Dict(
                        "S" => "DynamoDB Thread 1"
                    )
                ),
                "SequenceNumber" => "400000000000000499660",
                "SizeBytes" => 41,
                "StreamViewType" => "KEYS_ONLY"
            ),
            "eventID" => "4b25bd0da9a181a155114127e4837252",
            "eventName" => "MODIFY",
            "eventSource" => "aws:dynamodb",
            "eventVersion" => "1.0"
        ),
        Dict(
            "awsRegion" => "us-west-2",
            "dynamodb" => Dict(
                "ApproximateCreationDateTime" => "1.46480646E9",
                "Keys" => Dict(
                    "ForumName" => Dict(
                        "S" => "DynamoDB"
                    ),
                    "Subject" => Dict(
                        "S" => "DynamoDB Thread 2"
                    )
                ),
                "SequenceNumber" => "500000000000000499661",
                "SizeBytes" => 41,
                "StreamViewType" => "KEYS_ONLY"
            ),
            "eventID" => "740280c73a3df7842edab3548a1b08ad",
            "eventName" => "REMOVE",
            "eventSource" => "aws:dynamodb",
            "eventVersion" => "1.0"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/GetRecords)
"""
@inline get_records(aws::AWSConfig=default_aws_config(); args...) = get_records(aws, args)

@inline get_records(aws::AWSConfig, args) = AWSCore.Services.streams_dynamodb(aws, "GetRecords", args)

@inline get_records(args) = get_records(default_aws_config(), args)


"""
    using AWSSDK.DynamoDBStreams.get_shard_iterator
    get_shard_iterator([::AWSConfig], arguments::Dict)
    get_shard_iterator([::AWSConfig]; StreamArn=, ShardId=, ShardIteratorType=, <keyword arguments>)

    using AWSCore.Services.streams_dynamodb
    streams_dynamodb([::AWSConfig], "GetShardIterator", arguments::Dict)
    streams_dynamodb([::AWSConfig], "GetShardIterator", StreamArn=, ShardId=, ShardIteratorType=, <keyword arguments>)

# GetShardIterator Operation

Returns a shard iterator. A shard iterator provides information about how to retrieve the stream records from within a shard. Use the shard iterator in a subsequent `GetRecords` request to read the stream records from the shard.

**Note**
> A shard iterator expires 15 minutes after it is returned to the requester.

# Arguments

## `StreamArn = ::String` -- *Required*
The Amazon Resource Name (ARN) for the stream.


## `ShardId = ::String` -- *Required*
The identifier of the shard. The iterator will be returned for this shard ID.


## `ShardIteratorType = "TRIM_HORIZON", "LATEST", "AT_SEQUENCE_NUMBER" or "AFTER_SEQUENCE_NUMBER"` -- *Required*
Determines how the shard iterator is used to start reading stream records from the shard:

*   `AT_SEQUENCE_NUMBER` - Start reading exactly from the position denoted by a specific sequence number.

*   `AFTER_SEQUENCE_NUMBER` - Start reading right after the position denoted by a specific sequence number.

*   `TRIM_HORIZON` - Start reading at the last (untrimmed) stream record, which is the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream.

*   `LATEST` - Start reading just after the most recent stream record in the shard, so that you always read the most recent data in the shard.


## `SequenceNumber = ::String`
The sequence number of a stream record in the shard from which to start reading.




# Returns

`GetShardIteratorOutput`

# Exceptions

`ResourceNotFoundException`, `InternalServerError` or `TrimmedDataAccessException`.

# Example: To obtain a shard iterator for the provided stream ARN and shard ID

The following example returns a shard iterator for the provided stream ARN and shard ID.

Input:
```
[
    "ShardId" => "00000001414576573621-f55eea83",
    "ShardIteratorType" => "TRIM_HORIZON",
    "StreamArn" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252"
]
```

Output:
```
Dict(
    "ShardIterator" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252|1|AAAAAAAAAAEvJp6D+zaQ...  <remaining characters omitted> ..."
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/GetShardIterator)
"""
@inline get_shard_iterator(aws::AWSConfig=default_aws_config(); args...) = get_shard_iterator(aws, args)

@inline get_shard_iterator(aws::AWSConfig, args) = AWSCore.Services.streams_dynamodb(aws, "GetShardIterator", args)

@inline get_shard_iterator(args) = get_shard_iterator(default_aws_config(), args)


"""
    using AWSSDK.DynamoDBStreams.list_streams
    list_streams([::AWSConfig], arguments::Dict)
    list_streams([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.streams_dynamodb
    streams_dynamodb([::AWSConfig], "ListStreams", arguments::Dict)
    streams_dynamodb([::AWSConfig], "ListStreams", <keyword arguments>)

# ListStreams Operation

Returns an array of stream ARNs associated with the current account and endpoint. If the `TableName` parameter is present, then `ListStreams` will return only the streams ARNs for that table.

**Note**
> You can call `ListStreams` at a maximum rate of 5 times per second.

# Arguments

## `TableName = ::String`
If this parameter is provided, then only the streams associated with this table name are returned.


## `Limit = ::Int`
The maximum number of streams to return. The upper limit is 100.


## `ExclusiveStartStreamArn = ::String`
The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the value that was returned for `LastEvaluatedStreamArn` in the previous operation.




# Returns

`ListStreamsOutput`

# Exceptions

`ResourceNotFoundException` or `InternalServerError`.

# Example: To list all of the stream ARNs 

The following example lists all of the stream ARNs.

Input:
```
[

]
```

Output:
```
Dict(
    "Streams" => [
        Dict(
            "StreamArn" => "arn:aws:dynamodb:us-wesst-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252",
            "StreamLabel" => "2015-05-20T20:51:10.252",
            "TableName" => "Forum"
        ),
        Dict(
            "StreamArn" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:50:02.714",
            "StreamLabel" => "2015-05-20T20:50:02.714",
            "TableName" => "Forum"
        ),
        Dict(
            "StreamArn" => "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-19T23:03:50.641",
            "StreamLabel" => "2015-05-19T23:03:50.641",
            "TableName" => "Forum"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/ListStreams)
"""
@inline list_streams(aws::AWSConfig=default_aws_config(); args...) = list_streams(aws, args)

@inline list_streams(aws::AWSConfig, args) = AWSCore.Services.streams_dynamodb(aws, "ListStreams", args)

@inline list_streams(args) = list_streams(default_aws_config(), args)




end # module DynamoDBStreams


#==============================================================================#
# End of file
#==============================================================================#
