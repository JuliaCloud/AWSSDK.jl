#==============================================================================#
# DynamoDB.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/dynamodb-2012-08-10.normal.json
#==============================================================================#

__precompile__()

module DynamoDB

using AWSCore


"""
    using AWSSDK.DynamoDB.batch_get_item
    batch_get_item([::AWSConfig], arguments::Dict)
    batch_get_item([::AWSConfig]; RequestItems=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "BatchGetItem", arguments::Dict)
    dynamodb([::AWSConfig], "BatchGetItem", RequestItems=, <keyword arguments>)

# BatchGetItem Operation

The `BatchGetItem` operation returns the attributes of one or more items from one or more tables. You identify requested items by primary key.

A single operation can retrieve up to 16 MB of data, which can contain as many as 100 items. `BatchGetItem` will return a partial result if the response size limit is exceeded, the table's provisioned throughput is exceeded, or an internal processing failure occurs. If a partial result is returned, the operation returns a value for `UnprocessedKeys`. You can use this value to retry the operation starting with the next item to get.

**Important**
> If you request more than 100 items `BatchGetItem` will return a `ValidationException` with the message "Too many items requested for the BatchGetItem call".

For example, if you ask to retrieve 100 items, but each individual item is 300 KB in size, the system returns 52 items (so as not to exceed the 16 MB limit). It also returns an appropriate `UnprocessedKeys` value so you can get the next page of results. If desired, your application can include its own logic to assemble the pages of results into one data set.

If *none* of the items can be processed due to insufficient provisioned throughput on all of the tables in the request, then `BatchGetItem` will return a `ProvisionedThroughputExceededException`. If *at least one* of the items is successfully processed, then `BatchGetItem` completes successfully, while returning the keys of the unread items in `UnprocessedKeys`.

**Important**
> If DynamoDB returns any unprocessed items, you should retry the batch operation on those items. However, *we strongly recommend that you use an exponential backoff algorithm*. If you retry the batch operation immediately, the underlying read or write requests can still fail due to throttling on the individual tables. If you delay the batch operation using exponential backoff, the individual requests in the batch are much more likely to succeed.

For more information, see [Batch Operations and Error Handling](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations) in the *Amazon DynamoDB Developer Guide*.

By default, `BatchGetItem` performs eventually consistent reads on every table in the request. If you want strongly consistent reads instead, you can set `ConsistentRead` to `true` for any or all tables.

In order to minimize response latency, `BatchGetItem` retrieves items in parallel.

When designing your application, keep in mind that DynamoDB does not return items in any particular order. To help parse the response by item, include the primary key values for the items in your request in the `ProjectionExpression` parameter.

If a requested item does not exist, it is not returned in the result. Requests for nonexistent items consume the minimum read capacity units according to the type of read. For more information, see [Capacity Units Calculations](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations) in the *Amazon DynamoDB Developer Guide*.

# Arguments

## `RequestItems = ::Dict{String,String}` -- *Required*
A map of one or more table names and, for each table, a map that describes one or more items to retrieve from that table. Each table name can be used only once per `BatchGetItem` request.

Each element in the map of items to retrieve consists of the following:

*   `ConsistentRead` - If `true`, a strongly consistent read is used; if `false` (the default), an eventually consistent read is used.

*   `ExpressionAttributeNames` - One or more substitution tokens for attribute names in the `ProjectionExpression` parameter. The following are some use cases for using `ExpressionAttributeNames`:

    *   To access an attribute whose name conflicts with a DynamoDB reserved word.

    *   To create a placeholder for repeating occurrences of an attribute name in an expression.

    *   To prevent special characters in an attribute name from being misinterpreted in an expression.

    Use the **#** character in an expression to dereference an attribute name. For example, consider the following attribute name:

    *   `Percentile`

    The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see [Reserved Words](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the *Amazon DynamoDB Developer Guide*). To work around this, you could specify the following for `ExpressionAttributeNames`:

    *   `{"#P":"Percentile"}`

    You could then use this substitution in an expression, as in this example:

    *   `#P = :val`

    **Note**
    > Tokens that begin with the **:** character are *expression attribute values*, which are placeholders for the actual value at runtime.

    For more information on expression attribute names, see [Accessing Item Attributes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the *Amazon DynamoDB Developer Guide*.

*   `Keys` - An array of primary key attribute values that define specific items in the table. For each primary key, you must provide *all* of the key attributes. For example, with a simple primary key, you only need to provide the partition key value. For a composite key, you must provide *both* the partition key value and the sort key value.

*   `ProjectionExpression` - A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.

    If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.

    For more information, see [Accessing Item Attributes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the *Amazon DynamoDB Developer Guide*.

*   `AttributesToGet` - This is a legacy parameter. Use `ProjectionExpression` instead. For more information, see [AttributesToGet](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html) in the *Amazon DynamoDB Developer Guide*.


## `ReturnConsumedCapacity = "INDEXES", "TOTAL" or "NONE"`





# Returns

`BatchGetItemOutput`

# Exceptions

`ProvisionedThroughputExceededException`, `ResourceNotFoundException` or `InternalServerError`.

# Example: To retrieve multiple items from a table

This example reads multiple items from the Music table using a batch of three GetItem requests.  Only the AlbumTitle attribute is returned.

Input:
```
[
    "RequestItems" => [
        "Music" => [
            "Keys" => [
                [
                    "Artist" => [
                        "S" => "No One You Know"
                    ],
                    "SongTitle" => [
                        "S" => "Call Me Today"
                    ]
                ],
                [
                    "Artist" => [
                        "S" => "Acme Band"
                    ],
                    "SongTitle" => [
                        "S" => "Happy Day"
                    ]
                ],
                [
                    "Artist" => [
                        "S" => "No One You Know"
                    ],
                    "SongTitle" => [
                        "S" => "Scared of My Shadow"
                    ]
                ]
            ],
            "ProjectionExpression" => "AlbumTitle"
        ]
    ]
]
```

Output:
```
Dict(
    "Responses" => Dict(
        "Music" => [
            Dict(
                "AlbumTitle" => Dict(
                    "S" => "Somewhat Famous"
                )
            ),
            Dict(
                "AlbumTitle" => Dict(
                    "S" => "Blue Sky Blues"
                )
            ),
            Dict(
                "AlbumTitle" => Dict(
                    "S" => "Louder Than Ever"
                )
            )
        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BatchGetItem)
"""
@inline batch_get_item(aws::AWSConfig=default_aws_config(); args...) = batch_get_item(aws, args)

@inline batch_get_item(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "BatchGetItem", args)

@inline batch_get_item(args) = batch_get_item(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.batch_write_item
    batch_write_item([::AWSConfig], arguments::Dict)
    batch_write_item([::AWSConfig]; RequestItems=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "BatchWriteItem", arguments::Dict)
    dynamodb([::AWSConfig], "BatchWriteItem", RequestItems=, <keyword arguments>)

# BatchWriteItem Operation

The `BatchWriteItem` operation puts or deletes multiple items in one or more tables. A single call to `BatchWriteItem` can write up to 16 MB of data, which can comprise as many as 25 put or delete requests. Individual items to be written can be as large as 400 KB.

**Note**
> `BatchWriteItem` cannot update items. To update items, use the `UpdateItem` action.

The individual `PutItem` and `DeleteItem` operations specified in `BatchWriteItem` are atomic; however `BatchWriteItem` as a whole is not. If any requested operations fail because the table's provisioned throughput is exceeded or an internal processing failure occurs, the failed operations are returned in the `UnprocessedItems` response parameter. You can investigate and optionally resend the requests. Typically, you would call `BatchWriteItem` in a loop. Each iteration would check for unprocessed items and submit a new `BatchWriteItem` request with those unprocessed items until all items have been processed.

Note that if *none* of the items can be processed due to insufficient provisioned throughput on all of the tables in the request, then `BatchWriteItem` will return a `ProvisionedThroughputExceededException`.

**Important**
> If DynamoDB returns any unprocessed items, you should retry the batch operation on those items. However, *we strongly recommend that you use an exponential backoff algorithm*. If you retry the batch operation immediately, the underlying read or write requests can still fail due to throttling on the individual tables. If you delay the batch operation using exponential backoff, the individual requests in the batch are much more likely to succeed.

For more information, see [Batch Operations and Error Handling](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations) in the *Amazon DynamoDB Developer Guide*.

With `BatchWriteItem`, you can efficiently write or delete large amounts of data, such as from Amazon Elastic MapReduce (EMR), or copy data from another database into DynamoDB. In order to improve performance with these large-scale operations, `BatchWriteItem` does not behave in the same way as individual `PutItem` and `DeleteItem` calls would. For example, you cannot specify conditions on individual put and delete requests, and `BatchWriteItem` does not return deleted items in the response.

If you use a programming language that supports concurrency, you can use threads to write items in parallel. Your application must include the necessary logic to manage the threads. With languages that don't support threading, you must update or delete the specified items one at a time. In both situations, `BatchWriteItem` performs the specified put and delete operations in parallel, giving you the power of the thread pool approach without having to introduce complexity into your application.

Parallel processing reduces latency, but each specified put and delete request consumes the same number of write capacity units whether it is processed in parallel or not. Delete operations on nonexistent items consume one write capacity unit.

If one or more of the following is true, DynamoDB rejects the entire batch write operation:

*   One or more tables specified in the `BatchWriteItem` request does not exist.

*   Primary key attributes specified on an item in the request do not match those in the corresponding table's primary key schema.

*   You try to perform multiple operations on the same item in the same `BatchWriteItem` request. For example, you cannot put and delete the same item in the same `BatchWriteItem` request.

*   Your request contains at least two items with identical hash and range keys (which essentially is two put operations).

*   There are more than 25 requests in the batch.

*   Any individual item in a batch exceeds 400 KB.

*   The total request size exceeds 16 MB.

# Arguments

## `RequestItems = ::Dict{String,String}` -- *Required*
A map of one or more table names and, for each table, a list of operations to be performed (`DeleteRequest` or `PutRequest`). Each element in the map consists of the following:

*   `DeleteRequest` - Perform a `DeleteItem` operation on the specified item. The item to be deleted is identified by a `Key` subelement:

    *   `Key` - A map of primary key attribute values that uniquely identify the item. Each entry in this map consists of an attribute name and an attribute value. For each primary key, you must provide *all* of the key attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for *both* the partition key and the sort key.

*   `PutRequest` - Perform a `PutItem` operation on the specified item. The item to be put is identified by an `Item` subelement:

    *   `Item` - A map of attributes and their values. Each entry in this map consists of an attribute name and an attribute value. Attribute values must not be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests that contain empty values will be rejected with a `ValidationException` exception.

        If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.


## `ReturnConsumedCapacity = "INDEXES", "TOTAL" or "NONE"`



## `ReturnItemCollectionMetrics = "SIZE" or "NONE"`
Determines whether item collection metrics are returned. If set to `SIZE`, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to `NONE` (the default), no statistics are returned.




# Returns

`BatchWriteItemOutput`

# Exceptions

`ProvisionedThroughputExceededException`, `ResourceNotFoundException`, `ItemCollectionSizeLimitExceededException` or `InternalServerError`.

# Example: To add multiple items to a table

This example adds three new items to the Music table using a batch of three PutItem requests.

Input:
```
[
    "RequestItems" => [
        "Music" => [
            [
                "PutRequest" => [
                    "Item" => [
                        "AlbumTitle" => [
                            "S" => "Somewhat Famous"
                        ],
                        "Artist" => [
                            "S" => "No One You Know"
                        ],
                        "SongTitle" => [
                            "S" => "Call Me Today"
                        ]
                    ]
                ]
            ],
            [
                "PutRequest" => [
                    "Item" => [
                        "AlbumTitle" => [
                            "S" => "Songs About Life"
                        ],
                        "Artist" => [
                            "S" => "Acme Band"
                        ],
                        "SongTitle" => [
                            "S" => "Happy Day"
                        ]
                    ]
                ]
            ],
            [
                "PutRequest" => [
                    "Item" => [
                        "AlbumTitle" => [
                            "S" => "Blue Sky Blues"
                        ],
                        "Artist" => [
                            "S" => "No One You Know"
                        ],
                        "SongTitle" => [
                            "S" => "Scared of My Shadow"
                        ]
                    ]
                ]
            ]
        ]
    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BatchWriteItem)
"""
@inline batch_write_item(aws::AWSConfig=default_aws_config(); args...) = batch_write_item(aws, args)

@inline batch_write_item(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "BatchWriteItem", args)

@inline batch_write_item(args) = batch_write_item(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.create_backup
    create_backup([::AWSConfig], arguments::Dict)
    create_backup([::AWSConfig]; TableName=, BackupName=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "CreateBackup", arguments::Dict)
    dynamodb([::AWSConfig], "CreateBackup", TableName=, BackupName=)

# CreateBackup Operation

Creates a backup for an existing table.

Each time you create an On-Demand Backup, the entire table data is backed up. There is no limit to the number of on-demand backups that can be taken.

When you create an On-Demand Backup, a time marker of the request is cataloged, and the backup is created asynchronously, by applying all changes until the time of the request to the last full table snapshot. Backup requests are processed instantaneously and become available for restore within minutes.

You can call `CreateBackup` at a maximum rate of 50 times per second.

All backups in DynamoDB work without consuming any provisioned throughput on the table.

If you submit a backup request on 2018-12-14 at 14:25:00, the backup is guaranteed to contain all data committed to the table up to 14:24:00, and data committed after 14:26:00 will not be. The backup may or may not contain data modifications made between 14:24:00 and 14:26:00. On-Demand Backup does not support causal consistency.

Along with data, the following are also included on the backups:

*   Global secondary indexes (GSIs)

*   Local secondary indexes (LSIs)

*   Streams

*   Provisioned read and write capacity

# Arguments

## `TableName = ::String` -- *Required*
The name of the table.


## `BackupName = ::String` -- *Required*
Specified name for the backup.




# Returns

`CreateBackupOutput`

# Exceptions

`TableNotFoundException`, `TableInUseException`, `ContinuousBackupsUnavailableException`, `BackupInUseException`, `LimitExceededException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateBackup)
"""
@inline create_backup(aws::AWSConfig=default_aws_config(); args...) = create_backup(aws, args)

@inline create_backup(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "CreateBackup", args)

@inline create_backup(args) = create_backup(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.create_global_table
    create_global_table([::AWSConfig], arguments::Dict)
    create_global_table([::AWSConfig]; GlobalTableName=, ReplicationGroup=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "CreateGlobalTable", arguments::Dict)
    dynamodb([::AWSConfig], "CreateGlobalTable", GlobalTableName=, ReplicationGroup=)

# CreateGlobalTable Operation

Creates a global table from an existing table. A global table creates a replication relationship between two or more DynamoDB tables with the same table name in the provided regions.

If you want to add a new replica table to a global table, each of the following conditions must be true:

*   The table must have the same primary key as all of the other replicas.

*   The table must have the same name as all of the other replicas.

*   The table must have DynamoDB Streams enabled, with the stream containing both the new and the old images of the item.

*   None of the replica tables in the global table can contain any data.

If global secondary indexes are specified, then the following conditions must also be met:

*   The global secondary indexes must have the same name.

*   The global secondary indexes must have the same hash key and sort key (if present).

**Important**
> Write capacity settings should be set consistently across your replica tables and secondary indexes. DynamoDB strongly recommends enabling auto scaling to manage the write capacity settings for all of your global tables replicas and indexes.

If you prefer to manage write capacity settings manually, you should provision equal replicated write capacity units to your replica tables. You should also provision equal replicated write capacity units to matching secondary indexes across your global table.

# Arguments

## `GlobalTableName = ::String` -- *Required*
The global table name.


## `ReplicationGroup = [["RegionName" =>  ::String], ...]` -- *Required*
The regions where the global table needs to be created.




# Returns

`CreateGlobalTableOutput`

# Exceptions

`LimitExceededException`, `InternalServerError`, `GlobalTableAlreadyExistsException` or `TableNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateGlobalTable)
"""
@inline create_global_table(aws::AWSConfig=default_aws_config(); args...) = create_global_table(aws, args)

@inline create_global_table(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "CreateGlobalTable", args)

@inline create_global_table(args) = create_global_table(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.create_table
    create_table([::AWSConfig], arguments::Dict)
    create_table([::AWSConfig]; AttributeDefinitions=, TableName=, KeySchema=, ProvisionedThroughput=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "CreateTable", arguments::Dict)
    dynamodb([::AWSConfig], "CreateTable", AttributeDefinitions=, TableName=, KeySchema=, ProvisionedThroughput=, <keyword arguments>)

# CreateTable Operation

The `CreateTable` operation adds a new table to your account. In an AWS account, table names must be unique within each region. That is, you can have two tables with same name if you create the tables in different regions.

`CreateTable` is an asynchronous operation. Upon receiving a `CreateTable` request, DynamoDB immediately returns a response with a `TableStatus` of `CREATING`. After the table is created, DynamoDB sets the `TableStatus` to `ACTIVE`. You can perform read and write operations only on an `ACTIVE` table.

You can optionally define secondary indexes on the new table, as part of the `CreateTable` operation. If you want to create multiple tables with secondary indexes on them, you must create the tables sequentially. Only one table with secondary indexes can be in the `CREATING` state at any given time.

You can use the `DescribeTable` action to check the table status.

# Arguments

## `AttributeDefinitions = [[ ... ], ...]` -- *Required*
An array of attributes that describe the key schema for the table and indexes.
```
 AttributeDefinitions = [[
        "AttributeName" => <required> ::String,
        "AttributeType" => <required> "S", "N" or "B"
    ], ...]
```

## `TableName = ::String` -- *Required*
The name of the table to create.


## `KeySchema = [[ ... ], ...]` -- *Required*
Specifies the attributes that make up the primary key for a table or an index. The attributes in `KeySchema` must also be defined in the `AttributeDefinitions` array. For more information, see [Data Model](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html) in the *Amazon DynamoDB Developer Guide*.

Each `KeySchemaElement` in the array is composed of:

*   `AttributeName` - The name of this key attribute.

*   `KeyType` - The role that the key attribute will assume:

    *   `HASH` - partition key

    *   `RANGE` - sort key

**Note**
> The partition key of an item is also known as its *hash attribute*. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.

The sort key of an item is also known as its *range attribute*. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.

For a simple primary key (partition key), you must provide exactly one element with a `KeyType` of `HASH`.

For a composite primary key (partition key and sort key), you must provide exactly two elements, in this order: The first element must have a `KeyType` of `HASH`, and the second element must have a `KeyType` of `RANGE`.

For more information, see [Specifying the Primary Key](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key) in the *Amazon DynamoDB Developer Guide*.
```
 KeySchema = [[
        "AttributeName" => <required> ::String,
        "KeyType" => <required> "HASH" or "RANGE"
    ], ...]
```

## `LocalSecondaryIndexes = [[ ... ], ...]`
One or more local secondary indexes (the maximum is five) to be created on the table. Each index is scoped to a given partition key value. There is a 10 GB size limit per partition key value; otherwise, the size of a local secondary index is unconstrained.

Each local secondary index in the array includes the following:

*   `IndexName` - The name of the local secondary index. Must be unique only for this table.

*   `KeySchema` - Specifies the key schema for the local secondary index. The key schema must begin with the same partition key as the table.

*   `Projection` - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:

    *   `ProjectionType` - One of the following:

        *   `KEYS_ONLY` - Only the index and primary keys are projected into the index.

        *   `INCLUDE` - Only the specified table attributes are projected into the index. The list of projected attributes are in `NonKeyAttributes`.

        *   `ALL` - All of the table attributes are projected into the index.

    *   `NonKeyAttributes` - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in `NonKeyAttributes`, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.
```
 LocalSecondaryIndexes = [[
        "IndexName" => <required> ::String,
        "KeySchema" => <required> [[
            "AttributeName" => <required> ::String,
            "KeyType" => <required> "HASH" or "RANGE"
        ], ...],
        "Projection" => <required> [
            "ProjectionType" =>  "ALL", "KEYS_ONLY" or "INCLUDE",
            "NonKeyAttributes" =>  [::String, ...]
        ]
    ], ...]
```

## `GlobalSecondaryIndexes = [[ ... ], ...]`
One or more global secondary indexes (the maximum is five) to be created on the table. Each global secondary index in the array includes the following:

*   `IndexName` - The name of the global secondary index. Must be unique only for this table.

*   `KeySchema` - Specifies the key schema for the global secondary index.

*   `Projection` - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:

    *   `ProjectionType` - One of the following:

        *   `KEYS_ONLY` - Only the index and primary keys are projected into the index.

        *   `INCLUDE` - Only the specified table attributes are projected into the index. The list of projected attributes are in `NonKeyAttributes`.

        *   `ALL` - All of the table attributes are projected into the index.

    *   `NonKeyAttributes` - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in `NonKeyAttributes`, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.

*   `ProvisionedThroughput` - The provisioned throughput settings for the global secondary index, consisting of read and write capacity units.
```
 GlobalSecondaryIndexes = [[
        "IndexName" => <required> ::String,
        "KeySchema" => <required> [[
            "AttributeName" => <required> ::String,
            "KeyType" => <required> "HASH" or "RANGE"
        ], ...],
        "Projection" => <required> [
            "ProjectionType" =>  "ALL", "KEYS_ONLY" or "INCLUDE",
            "NonKeyAttributes" =>  [::String, ...]
        ],
        "ProvisionedThroughput" => <required> [
            "ReadCapacityUnits" => <required> ::Int,
            "WriteCapacityUnits" => <required> ::Int
        ]
    ], ...]
```

## `ProvisionedThroughput = [ ... ]` -- *Required*
Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the `UpdateTable` operation.

For current minimum and maximum provisioned throughput values, see [Limits](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the *Amazon DynamoDB Developer Guide*.
```
 ProvisionedThroughput = [
        "ReadCapacityUnits" => <required> ::Int,
        "WriteCapacityUnits" => <required> ::Int
    ]
```

## `StreamSpecification = [ ... ]`
The settings for DynamoDB Streams on the table. These settings consist of:

*   `StreamEnabled` - Indicates whether Streams is to be enabled (true) or disabled (false).

*   `StreamViewType` - When an item in the table is modified, `StreamViewType` determines what information is written to the table's stream. Valid values for `StreamViewType` are:

    *   `KEYS_ONLY` - Only the key attributes of the modified item are written to the stream.

    *   `NEW_IMAGE` - The entire item, as it appears after it was modified, is written to the stream.

    *   `OLD_IMAGE` - The entire item, as it appeared before it was modified, is written to the stream.

    *   `NEW_AND_OLD_IMAGES` - Both the new and the old item images of the item are written to the stream.
```
 StreamSpecification = [
        "StreamEnabled" =>  ::Bool,
        "StreamViewType" =>  "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES" or "KEYS_ONLY"
    ]
```

## `SSESpecification = ["Enabled" => <required> ::Bool]`
Represents the settings used to enable server-side encryption.




# Returns

`CreateTableOutput`

# Exceptions

`ResourceInUseException`, `LimitExceededException` or `InternalServerError`.

# Example: To create a table

This example creates a table named Music.

Input:
```
[
    "AttributeDefinitions" => [
        [
            "AttributeName" => "Artist",
            "AttributeType" => "S"
        ],
        [
            "AttributeName" => "SongTitle",
            "AttributeType" => "S"
        ]
    ],
    "KeySchema" => [
        [
            "AttributeName" => "Artist",
            "KeyType" => "HASH"
        ],
        [
            "AttributeName" => "SongTitle",
            "KeyType" => "RANGE"
        ]
    ],
    "ProvisionedThroughput" => [
        "ReadCapacityUnits" => 5,
        "WriteCapacityUnits" => 5
    ],
    "TableName" => "Music"
]
```

Output:
```
Dict(
    "TableDescription" => Dict(
        "AttributeDefinitions" => [
            Dict(
                "AttributeName" => "Artist",
                "AttributeType" => "S"
            ),
            Dict(
                "AttributeName" => "SongTitle",
                "AttributeType" => "S"
            )
        ],
        "CreationDateTime" => "1421866952.062",
        "ItemCount" => 0,
        "KeySchema" => [
            Dict(
                "AttributeName" => "Artist",
                "KeyType" => "HASH"
            ),
            Dict(
                "AttributeName" => "SongTitle",
                "KeyType" => "RANGE"
            )
        ],
        "ProvisionedThroughput" => Dict(
            "ReadCapacityUnits" => 5,
            "WriteCapacityUnits" => 5
        ),
        "TableName" => "Music",
        "TableSizeBytes" => 0,
        "TableStatus" => "CREATING"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateTable)
"""
@inline create_table(aws::AWSConfig=default_aws_config(); args...) = create_table(aws, args)

@inline create_table(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "CreateTable", args)

@inline create_table(args) = create_table(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.delete_backup
    delete_backup([::AWSConfig], arguments::Dict)
    delete_backup([::AWSConfig]; BackupArn=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "DeleteBackup", arguments::Dict)
    dynamodb([::AWSConfig], "DeleteBackup", BackupArn=)

# DeleteBackup Operation

Deletes an existing backup of a table.

You can call `DeleteBackup` at a maximum rate of 10 times per second.

# Arguments

## `BackupArn = ::String` -- *Required*
The ARN associated with the backup.




# Returns

`DeleteBackupOutput`

# Exceptions

`BackupNotFoundException`, `BackupInUseException`, `LimitExceededException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteBackup)
"""
@inline delete_backup(aws::AWSConfig=default_aws_config(); args...) = delete_backup(aws, args)

@inline delete_backup(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "DeleteBackup", args)

@inline delete_backup(args) = delete_backup(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.delete_item
    delete_item([::AWSConfig], arguments::Dict)
    delete_item([::AWSConfig]; TableName=, Key=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "DeleteItem", arguments::Dict)
    dynamodb([::AWSConfig], "DeleteItem", TableName=, Key=, <keyword arguments>)

# DeleteItem Operation

Deletes a single item in a table by primary key. You can perform a conditional delete operation that deletes the item if it exists, or if it has an expected attribute value.

In addition to deleting an item, you can also return the item's attribute values in the same operation, using the `ReturnValues` parameter.

Unless you specify conditions, the `DeleteItem` is an idempotent operation; running it multiple times on the same item or attribute does *not* result in an error response.

Conditional deletes are useful for deleting items only if specific conditions are met. If those conditions are met, DynamoDB performs the delete. Otherwise, the item is not deleted.

# Arguments

## `TableName = ::String` -- *Required*
The name of the table from which to delete the item.


## `Key = ::Dict{String,String}` -- *Required*
A map of attribute names to `AttributeValue` objects, representing the primary key of the item to delete.

For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.


## `Expected = ::Dict{String,String}`
This is a legacy parameter. Use `ConditionExpression` instead. For more information, see [Expected](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html) in the *Amazon DynamoDB Developer Guide*.


## `ConditionalOperator = "AND" or "OR"`
This is a legacy parameter. Use `ConditionExpression` instead. For more information, see [ConditionalOperator](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html) in the *Amazon DynamoDB Developer Guide*.


## `ReturnValues = "NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW" or "UPDATED_NEW"`
Use `ReturnValues` if you want to get the item attributes as they appeared before they were deleted. For `DeleteItem`, the valid values are:

*   `NONE` - If `ReturnValues` is not specified, or if its value is `NONE`, then nothing is returned. (This setting is the default for `ReturnValues`.)

*   `ALL_OLD` - The content of the old item is returned.

**Note**
> The `ReturnValues` parameter is used by several DynamoDB operations; however, `DeleteItem` does not recognize any values other than `NONE` or `ALL_OLD`.


## `ReturnConsumedCapacity = "INDEXES", "TOTAL" or "NONE"`



## `ReturnItemCollectionMetrics = "SIZE" or "NONE"`
Determines whether item collection metrics are returned. If set to `SIZE`, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to `NONE` (the default), no statistics are returned.


## `ConditionExpression = ::String`
A condition that must be satisfied in order for a conditional `DeleteItem` to succeed.

An expression can contain any of the following:

*   Functions: `attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size`

    These function names are case-sensitive.

*   Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN`

*   Logical operators: `AND | OR | NOT`

For more information on condition expressions, see [Specifying Conditions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the *Amazon DynamoDB Developer Guide*.


## `ExpressionAttributeNames = ::Dict{String,String}`
One or more substitution tokens for attribute names in an expression. The following are some use cases for using `ExpressionAttributeNames`:

*   To access an attribute whose name conflicts with a DynamoDB reserved word.

*   To create a placeholder for repeating occurrences of an attribute name in an expression.

*   To prevent special characters in an attribute name from being misinterpreted in an expression.

Use the **#** character in an expression to dereference an attribute name. For example, consider the following attribute name:

*   `Percentile`

The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see [Reserved Words](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the *Amazon DynamoDB Developer Guide*). To work around this, you could specify the following for `ExpressionAttributeNames`:

*   `{"#P":"Percentile"}`

You could then use this substitution in an expression, as in this example:

*   `#P = :val`

**Note**
> Tokens that begin with the **:** character are *expression attribute values*, which are placeholders for the actual value at runtime.

For more information on expression attribute names, see [Accessing Item Attributes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the *Amazon DynamoDB Developer Guide*.


## `ExpressionAttributeValues = ::Dict{String,String}`
One or more values that can be substituted in an expression.

Use the **:** (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the *ProductStatus* attribute was one of the following:

`Available | Backordered | Discontinued`

You would first need to specify `ExpressionAttributeValues` as follows:

`{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }`

You could then use these values in an expression, such as this:

`ProductStatus IN (:avail, :back, :disc)`

For more information on expression attribute values, see [Specifying Conditions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the *Amazon DynamoDB Developer Guide*.




# Returns

`DeleteItemOutput`

# Exceptions

`ConditionalCheckFailedException`, `ProvisionedThroughputExceededException`, `ResourceNotFoundException`, `ItemCollectionSizeLimitExceededException` or `InternalServerError`.

# Example: To delete an item

This example deletes an item from the Music table.

Input:
```
[
    "Key" => [
        "Artist" => [
            "S" => "No One You Know"
        ],
        "SongTitle" => [
            "S" => "Scared of My Shadow"
        ]
    ],
    "TableName" => "Music"
]
```

Output:
```
Dict(
    "ConsumedCapacity" => Dict(
        "CapacityUnits" => 1,
        "TableName" => "Music"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteItem)
"""
@inline delete_item(aws::AWSConfig=default_aws_config(); args...) = delete_item(aws, args)

@inline delete_item(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "DeleteItem", args)

@inline delete_item(args) = delete_item(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.delete_table
    delete_table([::AWSConfig], arguments::Dict)
    delete_table([::AWSConfig]; TableName=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "DeleteTable", arguments::Dict)
    dynamodb([::AWSConfig], "DeleteTable", TableName=)

# DeleteTable Operation

The `DeleteTable` operation deletes a table and all of its items. After a `DeleteTable` request, the specified table is in the `DELETING` state until DynamoDB completes the deletion. If the table is in the `ACTIVE` state, you can delete it. If a table is in `CREATING` or `UPDATING` states, then DynamoDB returns a `ResourceInUseException`. If the specified table does not exist, DynamoDB returns a `ResourceNotFoundException`. If table is already in the `DELETING` state, no error is returned.

**Note**
> DynamoDB might continue to accept data read and write operations, such as `GetItem` and `PutItem`, on a table in the `DELETING` state until the table deletion is complete.

When you delete a table, any indexes on that table are also deleted.

If you have DynamoDB Streams enabled on the table, then the corresponding stream on that table goes into the `DISABLED` state, and the stream is automatically deleted after 24 hours.

Use the `DescribeTable` action to check the status of the table.

# Arguments

## `TableName = ::String` -- *Required*
The name of the table to delete.




# Returns

`DeleteTableOutput`

# Exceptions

`ResourceInUseException`, `ResourceNotFoundException`, `LimitExceededException` or `InternalServerError`.

# Example: To delete a table

This example deletes the Music table.

Input:
```
[
    "TableName" => "Music"
]
```

Output:
```
Dict(
    "TableDescription" => Dict(
        "ItemCount" => 0,
        "ProvisionedThroughput" => Dict(
            "NumberOfDecreasesToday" => 1,
            "ReadCapacityUnits" => 5,
            "WriteCapacityUnits" => 5
        ),
        "TableName" => "Music",
        "TableSizeBytes" => 0,
        "TableStatus" => "DELETING"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteTable)
"""
@inline delete_table(aws::AWSConfig=default_aws_config(); args...) = delete_table(aws, args)

@inline delete_table(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "DeleteTable", args)

@inline delete_table(args) = delete_table(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.describe_backup
    describe_backup([::AWSConfig], arguments::Dict)
    describe_backup([::AWSConfig]; BackupArn=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "DescribeBackup", arguments::Dict)
    dynamodb([::AWSConfig], "DescribeBackup", BackupArn=)

# DescribeBackup Operation

Describes an existing backup of a table.

You can call `DescribeBackup` at a maximum rate of 10 times per second.

# Arguments

## `BackupArn = ::String` -- *Required*
The ARN associated with the backup.




# Returns

`DescribeBackupOutput`

# Exceptions

`BackupNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeBackup)
"""
@inline describe_backup(aws::AWSConfig=default_aws_config(); args...) = describe_backup(aws, args)

@inline describe_backup(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "DescribeBackup", args)

@inline describe_backup(args) = describe_backup(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.describe_continuous_backups
    describe_continuous_backups([::AWSConfig], arguments::Dict)
    describe_continuous_backups([::AWSConfig]; TableName=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "DescribeContinuousBackups", arguments::Dict)
    dynamodb([::AWSConfig], "DescribeContinuousBackups", TableName=)

# DescribeContinuousBackups Operation

Checks the status of continuous backups and point in time recovery on the specified table. Continuous backups are `ENABLED` on all tables at table creation. If point in time recovery is enabled, `PointInTimeRecoveryStatus` will be set to ENABLED.

Once continuous backups and point in time recovery are enabled, you can restore to any point in time within `EarliestRestorableDateTime` and `LatestRestorableDateTime`.

`LatestRestorableDateTime` is typically 5 minutes before the current time. You can restore your table to any point in time during the last 35 days.

You can call `DescribeContinuousBackups` at a maximum rate of 10 times per second.

# Arguments

## `TableName = ::String` -- *Required*
Name of the table for which the customer wants to check the continuous backups and point in time recovery settings.




# Returns

`DescribeContinuousBackupsOutput`

# Exceptions

`TableNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeContinuousBackups)
"""
@inline describe_continuous_backups(aws::AWSConfig=default_aws_config(); args...) = describe_continuous_backups(aws, args)

@inline describe_continuous_backups(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "DescribeContinuousBackups", args)

@inline describe_continuous_backups(args) = describe_continuous_backups(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.describe_global_table
    describe_global_table([::AWSConfig], arguments::Dict)
    describe_global_table([::AWSConfig]; GlobalTableName=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "DescribeGlobalTable", arguments::Dict)
    dynamodb([::AWSConfig], "DescribeGlobalTable", GlobalTableName=)

# DescribeGlobalTable Operation

Returns information about the specified global table.

# Arguments

## `GlobalTableName = ::String` -- *Required*
The name of the global table.




# Returns

`DescribeGlobalTableOutput`

# Exceptions

`InternalServerError` or `GlobalTableNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeGlobalTable)
"""
@inline describe_global_table(aws::AWSConfig=default_aws_config(); args...) = describe_global_table(aws, args)

@inline describe_global_table(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "DescribeGlobalTable", args)

@inline describe_global_table(args) = describe_global_table(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.describe_global_table_settings
    describe_global_table_settings([::AWSConfig], arguments::Dict)
    describe_global_table_settings([::AWSConfig]; GlobalTableName=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "DescribeGlobalTableSettings", arguments::Dict)
    dynamodb([::AWSConfig], "DescribeGlobalTableSettings", GlobalTableName=)

# DescribeGlobalTableSettings Operation

Describes region specific settings for a global table.

# Arguments

## `GlobalTableName = ::String` -- *Required*
The name of the global table to describe.




# Returns

`DescribeGlobalTableSettingsOutput`

# Exceptions

`GlobalTableNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeGlobalTableSettings)
"""
@inline describe_global_table_settings(aws::AWSConfig=default_aws_config(); args...) = describe_global_table_settings(aws, args)

@inline describe_global_table_settings(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "DescribeGlobalTableSettings", args)

@inline describe_global_table_settings(args) = describe_global_table_settings(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.describe_limits
    describe_limits([::AWSConfig], arguments::Dict)
    describe_limits([::AWSConfig]; )

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "DescribeLimits", arguments::Dict)
    dynamodb([::AWSConfig], "DescribeLimits", )

# DescribeLimits Operation

Returns the current provisioned-capacity limits for your AWS account in a region, both for the region as a whole and for any one DynamoDB table that you create there.

When you establish an AWS account, the account has initial limits on the maximum read capacity units and write capacity units that you can provision across all of your DynamoDB tables in a given region. Also, there are per-table limits that apply when you create a table there. For more information, see [Limits](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) page in the *Amazon DynamoDB Developer Guide*.

Although you can increase these limits by filing a case at [AWS Support Center](https://console.aws.amazon.com/support/home#/), obtaining the increase is not instantaneous. The `DescribeLimits` action lets you write code to compare the capacity you are currently using to those limits imposed by your account so that you have enough time to apply for an increase before you hit a limit.

For example, you could use one of the AWS SDKs to do the following:

1.  Call `DescribeLimits` for a particular region to obtain your current account limits on provisioned capacity there.

2.  Create a variable to hold the aggregate read capacity units provisioned for all your tables in that region, and one to hold the aggregate write capacity units. Zero them both.

3.  Call `ListTables` to obtain a list of all your DynamoDB tables.

4.  For each table name listed by `ListTables`, do the following:

    *   Call `DescribeTable` with the table name.

    *   Use the data returned by `DescribeTable` to add the read capacity units and write capacity units provisioned for the table itself to your variables.

    *   If the table has one or more global secondary indexes (GSIs), loop over these GSIs and add their provisioned capacity values to your variables as well.

5.  Report the account limits for that region returned by `DescribeLimits`, along with the total current provisioned capacity levels you have calculated.

This will let you see whether you are getting close to your account-level limits.

The per-table limits apply only when you are creating a new table. They restrict the sum of the provisioned capacity of the new table itself and all its global secondary indexes.

For existing tables and their GSIs, DynamoDB will not let you increase provisioned capacity extremely rapidly, but the only upper limit that applies is that the aggregate provisioned capacity over all your tables and GSIs cannot exceed either of the per-account limits.

**Note**
> `DescribeLimits` should only be called periodically. You can expect throttling errors if you call it more than once in a minute.

The `DescribeLimits` Request element has no content.

# Arguments



# Returns

`DescribeLimitsOutput`

# Exceptions

`InternalServerError`.

# Example: To determine capacity limits per table and account, in the current AWS region

The following example returns the maximum read and write capacity units per table, and for the AWS account, in the current AWS region.

Input:
```
[

]
```

Output:
```
Dict(
    "AccountMaxReadCapacityUnits" => 20000,
    "AccountMaxWriteCapacityUnits" => 20000,
    "TableMaxReadCapacityUnits" => 10000,
    "TableMaxWriteCapacityUnits" => 10000
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeLimits)
"""
@inline describe_limits(aws::AWSConfig=default_aws_config(); args...) = describe_limits(aws, args)

@inline describe_limits(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "DescribeLimits", args)

@inline describe_limits(args) = describe_limits(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.describe_table
    describe_table([::AWSConfig], arguments::Dict)
    describe_table([::AWSConfig]; TableName=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "DescribeTable", arguments::Dict)
    dynamodb([::AWSConfig], "DescribeTable", TableName=)

# DescribeTable Operation

Returns information about the table, including the current status of the table, when it was created, the primary key schema, and any indexes on the table.

**Note**
> If you issue a `DescribeTable` request immediately after a `CreateTable` request, DynamoDB might return a `ResourceNotFoundException`. This is because `DescribeTable` uses an eventually consistent query, and the metadata for your table might not be available at that moment. Wait for a few seconds, and then try the `DescribeTable` request again.

# Arguments

## `TableName = ::String` -- *Required*
The name of the table to describe.




# Returns

`DescribeTableOutput`

# Exceptions

`ResourceNotFoundException` or `InternalServerError`.

# Example: To describe a table

This example describes the Music table.

Input:
```
[
    "TableName" => "Music"
]
```

Output:
```
Dict(
    "Table" => Dict(
        "AttributeDefinitions" => [
            Dict(
                "AttributeName" => "Artist",
                "AttributeType" => "S"
            ),
            Dict(
                "AttributeName" => "SongTitle",
                "AttributeType" => "S"
            )
        ],
        "CreationDateTime" => "1421866952.062",
        "ItemCount" => 0,
        "KeySchema" => [
            Dict(
                "AttributeName" => "Artist",
                "KeyType" => "HASH"
            ),
            Dict(
                "AttributeName" => "SongTitle",
                "KeyType" => "RANGE"
            )
        ],
        "ProvisionedThroughput" => Dict(
            "NumberOfDecreasesToday" => 1,
            "ReadCapacityUnits" => 5,
            "WriteCapacityUnits" => 5
        ),
        "TableName" => "Music",
        "TableSizeBytes" => 0,
        "TableStatus" => "ACTIVE"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeTable)
"""
@inline describe_table(aws::AWSConfig=default_aws_config(); args...) = describe_table(aws, args)

@inline describe_table(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "DescribeTable", args)

@inline describe_table(args) = describe_table(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.describe_time_to_live
    describe_time_to_live([::AWSConfig], arguments::Dict)
    describe_time_to_live([::AWSConfig]; TableName=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "DescribeTimeToLive", arguments::Dict)
    dynamodb([::AWSConfig], "DescribeTimeToLive", TableName=)

# DescribeTimeToLive Operation

Gives a description of the Time to Live (TTL) status on the specified table.

# Arguments

## `TableName = ::String` -- *Required*
The name of the table to be described.




# Returns

`DescribeTimeToLiveOutput`

# Exceptions

`ResourceNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeTimeToLive)
"""
@inline describe_time_to_live(aws::AWSConfig=default_aws_config(); args...) = describe_time_to_live(aws, args)

@inline describe_time_to_live(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "DescribeTimeToLive", args)

@inline describe_time_to_live(args) = describe_time_to_live(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.get_item
    get_item([::AWSConfig], arguments::Dict)
    get_item([::AWSConfig]; TableName=, Key=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "GetItem", arguments::Dict)
    dynamodb([::AWSConfig], "GetItem", TableName=, Key=, <keyword arguments>)

# GetItem Operation

The `GetItem` operation returns a set of attributes for the item with the given primary key. If there is no matching item, `GetItem` does not return any data and there will be no `Item` element in the response.

`GetItem` provides an eventually consistent read by default. If your application requires a strongly consistent read, set `ConsistentRead` to `true`. Although a strongly consistent read might take more time than an eventually consistent read, it always returns the last updated value.

# Arguments

## `TableName = ::String` -- *Required*
The name of the table containing the requested item.


## `Key = ::Dict{String,String}` -- *Required*
A map of attribute names to `AttributeValue` objects, representing the primary key of the item to retrieve.

For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.


## `AttributesToGet = [::String, ...]`
This is a legacy parameter. Use `ProjectionExpression` instead. For more information, see [AttributesToGet](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html) in the *Amazon DynamoDB Developer Guide*.


## `ConsistentRead = ::Bool`
Determines the read consistency model: If set to `true`, then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads.


## `ReturnConsumedCapacity = "INDEXES", "TOTAL" or "NONE"`



## `ProjectionExpression = ::String`
A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.

If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.

For more information, see [Accessing Item Attributes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the *Amazon DynamoDB Developer Guide*.


## `ExpressionAttributeNames = ::Dict{String,String}`
One or more substitution tokens for attribute names in an expression. The following are some use cases for using `ExpressionAttributeNames`:

*   To access an attribute whose name conflicts with a DynamoDB reserved word.

*   To create a placeholder for repeating occurrences of an attribute name in an expression.

*   To prevent special characters in an attribute name from being misinterpreted in an expression.

Use the **#** character in an expression to dereference an attribute name. For example, consider the following attribute name:

*   `Percentile`

The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see [Reserved Words](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the *Amazon DynamoDB Developer Guide*). To work around this, you could specify the following for `ExpressionAttributeNames`:

*   `{"#P":"Percentile"}`

You could then use this substitution in an expression, as in this example:

*   `#P = :val`

**Note**
> Tokens that begin with the **:** character are *expression attribute values*, which are placeholders for the actual value at runtime.

For more information on expression attribute names, see [Accessing Item Attributes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the *Amazon DynamoDB Developer Guide*.




# Returns

`GetItemOutput`

# Exceptions

`ProvisionedThroughputExceededException`, `ResourceNotFoundException` or `InternalServerError`.

# Example: To read an item from a table

This example retrieves an item from the Music table. The table has a partition key and a sort key (Artist and SongTitle), so you must specify both of these attributes.

Input:
```
[
    "Key" => [
        "Artist" => [
            "S" => "Acme Band"
        ],
        "SongTitle" => [
            "S" => "Happy Day"
        ]
    ],
    "TableName" => "Music"
]
```

Output:
```
Dict(
    "Item" => Dict(
        "AlbumTitle" => Dict(
            "S" => "Songs About Life"
        ),
        "Artist" => Dict(
            "S" => "Acme Band"
        ),
        "SongTitle" => Dict(
            "S" => "Happy Day"
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GetItem)
"""
@inline get_item(aws::AWSConfig=default_aws_config(); args...) = get_item(aws, args)

@inline get_item(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "GetItem", args)

@inline get_item(args) = get_item(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.list_backups
    list_backups([::AWSConfig], arguments::Dict)
    list_backups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "ListBackups", arguments::Dict)
    dynamodb([::AWSConfig], "ListBackups", <keyword arguments>)

# ListBackups Operation

List backups associated with an AWS account. To list backups for a given table, specify `TableName`. `ListBackups` returns a paginated list of results with at most 1MB worth of items in a page. You can also specify a limit for the maximum number of entries to be returned in a page.

In the request, start time is inclusive but end time is exclusive. Note that these limits are for the time at which the original backup was requested.

You can call `ListBackups` a maximum of 5 times per second.

# Arguments

## `TableName = ::String`
The backups from the table specified by TableName are listed.


## `Limit = ::Int`
Maximum number of backups to return at once.


## `TimeRangeLowerBound = timestamp`
Only backups created after this time are listed. `TimeRangeLowerBound` is inclusive.


## `TimeRangeUpperBound = timestamp`
Only backups created before this time are listed. `TimeRangeUpperBound` is exclusive.


## `ExclusiveStartBackupArn = ::String`
`LastEvaluatedBackupArn` is the ARN of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the `ExclusiveStartBackupArn` of a new `ListBackups` operation in order to fetch the next page of results.




# Returns

`ListBackupsOutput`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListBackups)
"""
@inline list_backups(aws::AWSConfig=default_aws_config(); args...) = list_backups(aws, args)

@inline list_backups(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "ListBackups", args)

@inline list_backups(args) = list_backups(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.list_global_tables
    list_global_tables([::AWSConfig], arguments::Dict)
    list_global_tables([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "ListGlobalTables", arguments::Dict)
    dynamodb([::AWSConfig], "ListGlobalTables", <keyword arguments>)

# ListGlobalTables Operation

Lists all global tables that have a replica in the specified region.

# Arguments

## `ExclusiveStartGlobalTableName = ::String`
The first global table name that this operation will evaluate.


## `Limit = ::Int`
The maximum number of table names to return.


## `RegionName = ::String`
Lists the global tables in a specific region.




# Returns

`ListGlobalTablesOutput`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListGlobalTables)
"""
@inline list_global_tables(aws::AWSConfig=default_aws_config(); args...) = list_global_tables(aws, args)

@inline list_global_tables(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "ListGlobalTables", args)

@inline list_global_tables(args) = list_global_tables(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.list_tables
    list_tables([::AWSConfig], arguments::Dict)
    list_tables([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "ListTables", arguments::Dict)
    dynamodb([::AWSConfig], "ListTables", <keyword arguments>)

# ListTables Operation

Returns an array of table names associated with the current account and endpoint. The output from `ListTables` is paginated, with each page returning a maximum of 100 table names.

# Arguments

## `ExclusiveStartTableName = ::String`
The first table name that this operation will evaluate. Use the value that was returned for `LastEvaluatedTableName` in a previous operation, so that you can obtain the next page of results.


## `Limit = ::Int`
A maximum number of table names to return. If this parameter is not specified, the limit is 100.




# Returns

`ListTablesOutput`

# Exceptions

`InternalServerError`.

# Example: To list tables

This example lists all of the tables associated with the current AWS account and endpoint.

Input:
```
[

]
```

Output:
```
Dict(
    "TableNames" => [
        "Forum",
        "ProductCatalog",
        "Reply",
        "Thread"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListTables)
"""
@inline list_tables(aws::AWSConfig=default_aws_config(); args...) = list_tables(aws, args)

@inline list_tables(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "ListTables", args)

@inline list_tables(args) = list_tables(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.list_tags_of_resource
    list_tags_of_resource([::AWSConfig], arguments::Dict)
    list_tags_of_resource([::AWSConfig]; ResourceArn=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "ListTagsOfResource", arguments::Dict)
    dynamodb([::AWSConfig], "ListTagsOfResource", ResourceArn=, <keyword arguments>)

# ListTagsOfResource Operation

List all tags on an Amazon DynamoDB resource. You can call ListTagsOfResource up to 10 times per second, per account.

For an overview on tagging DynamoDB resources, see [Tagging for DynamoDB](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html) in the *Amazon DynamoDB Developer Guide*.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource Name (ARN).


## `NextToken = ::String`
An optional string that, if supplied, must be copied from the output of a previous call to ListTagOfResource. When provided in this manner, this API fetches the next page of results.




# Returns

`ListTagsOfResourceOutput`

# Exceptions

`ResourceNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListTagsOfResource)
"""
@inline list_tags_of_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_of_resource(aws, args)

@inline list_tags_of_resource(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "ListTagsOfResource", args)

@inline list_tags_of_resource(args) = list_tags_of_resource(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.put_item
    put_item([::AWSConfig], arguments::Dict)
    put_item([::AWSConfig]; TableName=, Item=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "PutItem", arguments::Dict)
    dynamodb([::AWSConfig], "PutItem", TableName=, Item=, <keyword arguments>)

# PutItem Operation

Creates a new item, or replaces an old item with a new item. If an item that has the same primary key as the new item already exists in the specified table, the new item completely replaces the existing item. You can perform a conditional put operation (add a new item if one with the specified primary key doesn't exist), or replace an existing item if it has certain attribute values. You can return the item's attribute values in the same operation, using the `ReturnValues` parameter.

**Important**
> This topic provides general information about the `PutItem` API.

For information on how to call the `PutItem` API using the AWS SDK in specific languages, see the following:

*   [PutItem in the AWS Command Line Interface](http://docs.aws.amazon.com/goto/aws-cli/dynamodb-2012-08-10/PutItem)

*   [PutItem in the AWS SDK for .NET](http://docs.aws.amazon.com/goto/DotNetSDKV3/dynamodb-2012-08-10/PutItem)

*   [PutItem in the AWS SDK for C++](http://docs.aws.amazon.com/goto/SdkForCpp/dynamodb-2012-08-10/PutItem)

*   [PutItem in the AWS SDK for Go](http://docs.aws.amazon.com/goto/SdkForGoV1/dynamodb-2012-08-10/PutItem)

*   [PutItem in the AWS SDK for Java](http://docs.aws.amazon.com/goto/SdkForJava/dynamodb-2012-08-10/PutItem)

*   [PutItem in the AWS SDK for JavaScript](http://docs.aws.amazon.com/goto/AWSJavaScriptSDK/dynamodb-2012-08-10/PutItem)

*   [PutItem in the AWS SDK for PHP V3](http://docs.aws.amazon.com/goto/SdkForPHPV3/dynamodb-2012-08-10/PutItem)

*   [PutItem in the AWS SDK for Python](http://docs.aws.amazon.com/goto/boto3/dynamodb-2012-08-10/PutItem)

*   [PutItem in the AWS SDK for Ruby V2](http://docs.aws.amazon.com/goto/SdkForRubyV2/dynamodb-2012-08-10/PutItem)

When you add an item, the primary key attribute(s) are the only required attributes. Attribute values cannot be null. String and Binary type attributes must have lengths greater than zero. Set type attributes cannot be empty. Requests with empty values will be rejected with a `ValidationException` exception.

**Note**
> To prevent a new item from replacing an existing item, use a conditional expression that contains the `attribute_not_exists` function with the name of the attribute being used as the partition key for the table. Since every record must contain that attribute, the `attribute_not_exists` function will only succeed if no matching item exists.

For more information about `PutItem`, see [Working with Items](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html) in the *Amazon DynamoDB Developer Guide*.

# Arguments

## `TableName = ::String` -- *Required*
The name of the table to contain the item.


## `Item = ::Dict{String,String}` -- *Required*
A map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.

You must provide all of the attributes for the primary key. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide both values for both the partition key and the sort key.

If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.

For more information about primary keys, see [Primary Key](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey) in the *Amazon DynamoDB Developer Guide*.

Each element in the `Item` map is an `AttributeValue` object.


## `Expected = ::Dict{String,String}`
This is a legacy parameter. Use `ConditionExpression` instead. For more information, see [Expected](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html) in the *Amazon DynamoDB Developer Guide*.


## `ReturnValues = "NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW" or "UPDATED_NEW"`
Use `ReturnValues` if you want to get the item attributes as they appeared before they were updated with the `PutItem` request. For `PutItem`, the valid values are:

*   `NONE` - If `ReturnValues` is not specified, or if its value is `NONE`, then nothing is returned. (This setting is the default for `ReturnValues`.)

*   `ALL_OLD` - If `PutItem` overwrote an attribute name-value pair, then the content of the old item is returned.

**Note**
> The `ReturnValues` parameter is used by several DynamoDB operations; however, `PutItem` does not recognize any values other than `NONE` or `ALL_OLD`.


## `ReturnConsumedCapacity = "INDEXES", "TOTAL" or "NONE"`



## `ReturnItemCollectionMetrics = "SIZE" or "NONE"`
Determines whether item collection metrics are returned. If set to `SIZE`, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to `NONE` (the default), no statistics are returned.


## `ConditionalOperator = "AND" or "OR"`
This is a legacy parameter. Use `ConditionExpression` instead. For more information, see [ConditionalOperator](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html) in the *Amazon DynamoDB Developer Guide*.


## `ConditionExpression = ::String`
A condition that must be satisfied in order for a conditional `PutItem` operation to succeed.

An expression can contain any of the following:

*   Functions: `attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size`

    These function names are case-sensitive.

*   Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN`

*   Logical operators: `AND | OR | NOT`

For more information on condition expressions, see [Specifying Conditions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the *Amazon DynamoDB Developer Guide*.


## `ExpressionAttributeNames = ::Dict{String,String}`
One or more substitution tokens for attribute names in an expression. The following are some use cases for using `ExpressionAttributeNames`:

*   To access an attribute whose name conflicts with a DynamoDB reserved word.

*   To create a placeholder for repeating occurrences of an attribute name in an expression.

*   To prevent special characters in an attribute name from being misinterpreted in an expression.

Use the **#** character in an expression to dereference an attribute name. For example, consider the following attribute name:

*   `Percentile`

The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see [Reserved Words](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the *Amazon DynamoDB Developer Guide*). To work around this, you could specify the following for `ExpressionAttributeNames`:

*   `{"#P":"Percentile"}`

You could then use this substitution in an expression, as in this example:

*   `#P = :val`

**Note**
> Tokens that begin with the **:** character are *expression attribute values*, which are placeholders for the actual value at runtime.

For more information on expression attribute names, see [Accessing Item Attributes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the *Amazon DynamoDB Developer Guide*.


## `ExpressionAttributeValues = ::Dict{String,String}`
One or more values that can be substituted in an expression.

Use the **:** (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the *ProductStatus* attribute was one of the following:

`Available | Backordered | Discontinued`

You would first need to specify `ExpressionAttributeValues` as follows:

`{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }`

You could then use these values in an expression, such as this:

`ProductStatus IN (:avail, :back, :disc)`

For more information on expression attribute values, see [Specifying Conditions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the *Amazon DynamoDB Developer Guide*.




# Returns

`PutItemOutput`

# Exceptions

`ConditionalCheckFailedException`, `ProvisionedThroughputExceededException`, `ResourceNotFoundException`, `ItemCollectionSizeLimitExceededException` or `InternalServerError`.

# Example: To add an item to a table

This example adds a new item to the Music table.

Input:
```
[
    "Item" => [
        "AlbumTitle" => [
            "S" => "Somewhat Famous"
        ],
        "Artist" => [
            "S" => "No One You Know"
        ],
        "SongTitle" => [
            "S" => "Call Me Today"
        ]
    ],
    "ReturnConsumedCapacity" => "TOTAL",
    "TableName" => "Music"
]
```

Output:
```
Dict(
    "ConsumedCapacity" => Dict(
        "CapacityUnits" => 1,
        "TableName" => "Music"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/PutItem)
"""
@inline put_item(aws::AWSConfig=default_aws_config(); args...) = put_item(aws, args)

@inline put_item(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "PutItem", args)

@inline put_item(args) = put_item(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.query
    query([::AWSConfig], arguments::Dict)
    query([::AWSConfig]; TableName=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "Query", arguments::Dict)
    dynamodb([::AWSConfig], "Query", TableName=, <keyword arguments>)

# Query Operation

The `Query` operation finds items based on primary key values. You can query any table or secondary index that has a composite primary key (a partition key and a sort key).

Use the `KeyConditionExpression` parameter to provide a specific value for the partition key. The `Query` operation will return all of the items from the table or index with that partition key value. You can optionally narrow the scope of the `Query` operation by specifying a sort key value and a comparison operator in `KeyConditionExpression`. To further refine the `Query` results, you can optionally provide a `FilterExpression`. A `FilterExpression` determines which items within the results should be returned to you. All of the other results are discarded.

A `Query` operation always returns a result set. If no matching items are found, the result set will be empty. Queries that do not return results consume the minimum number of read capacity units for that type of read operation.

**Note**
> DynamoDB calculates the number of read capacity units consumed based on item size, not on the amount of data that is returned to an application. The number of capacity units consumed will be the same whether you request all of the attributes (the default behavior) or just some of them (using a projection expression). The number will also be the same whether or not you use a `FilterExpression`.

`Query` results are always sorted by the sort key value. If the data type of the sort key is Number, the results are returned in numeric order; otherwise, the results are returned in order of UTF-8 bytes. By default, the sort order is ascending. To reverse the order, set the `ScanIndexForward` parameter to false.

A single `Query` operation will read up to the maximum number of items set (if using the `Limit` parameter) or a maximum of 1 MB of data and then apply any filtering to the results using `FilterExpression`. If `LastEvaluatedKey` is present in the response, you will need to paginate the result set. For more information, see [Paginating the Results](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination) in the *Amazon DynamoDB Developer Guide*.

`FilterExpression` is applied after a `Query` finishes, but before the results are returned. A `FilterExpression` cannot contain partition key or sort key attributes. You need to specify those attributes in the `KeyConditionExpression`.

**Note**
> A `Query` operation can return an empty result set and a `LastEvaluatedKey` if all the items read for the page of results are filtered out.

You can query a table, a local secondary index, or a global secondary index. For a query on a table or on a local secondary index, you can set the `ConsistentRead` parameter to `true` and obtain a strongly consistent result. Global secondary indexes support eventually consistent reads only, so do not specify `ConsistentRead` when querying a global secondary index.

# Arguments

## `TableName = ::String` -- *Required*
The name of the table containing the requested items.


## `IndexName = ::String`
The name of an index to query. This index can be any local secondary index or global secondary index on the table. Note that if you use the `IndexName` parameter, you must also provide `TableName.`


## `Select = "ALL_ATTRIBUTES", "ALL_PROJECTED_ATTRIBUTES", "SPECIFIC_ATTRIBUTES" or "COUNT"`
The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.

*   `ALL_ATTRIBUTES` - Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index DynamoDB will fetch the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.

*   `ALL_PROJECTED_ATTRIBUTES` - Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying `ALL_ATTRIBUTES`.

*   `COUNT` - Returns the number of matching items, rather than the matching items themselves.

*   `SPECIFIC_ATTRIBUTES` - Returns only the attributes listed in `AttributesToGet`. This return value is equivalent to specifying `AttributesToGet` without specifying any value for `Select`.

    If you query or scan a local secondary index and request only attributes that are projected into that index, the operation will read only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB will fetch each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency.

    If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table.

If neither `Select` nor `AttributesToGet` are specified, DynamoDB defaults to `ALL_ATTRIBUTES` when accessing a table, and `ALL_PROJECTED_ATTRIBUTES` when accessing an index. You cannot use both `Select` and `AttributesToGet` together in a single request, unless the value for `Select` is `SPECIFIC_ATTRIBUTES`. (This usage is equivalent to specifying `AttributesToGet` without any value for `Select`.)

**Note**
> If you use the `ProjectionExpression` parameter, then the value for `Select` can only be `SPECIFIC_ATTRIBUTES`. Any other value for `Select` will return an error.


## `AttributesToGet = [::String, ...]`
This is a legacy parameter. Use `ProjectionExpression` instead. For more information, see [AttributesToGet](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html) in the *Amazon DynamoDB Developer Guide*.


## `Limit = ::Int`
The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in `LastEvaluatedKey` to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed data set size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in `LastEvaluatedKey` to apply in a subsequent operation to continue the operation. For more information, see [Query and Scan](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html) in the *Amazon DynamoDB Developer Guide*.


## `ConsistentRead = ::Bool`
Determines the read consistency model: If set to `true`, then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads.

Strongly consistent reads are not supported on global secondary indexes. If you query a global secondary index with `ConsistentRead` set to `true`, you will receive a `ValidationException`.


## `KeyConditions = ::Dict{String,String}`
This is a legacy parameter. Use `KeyConditionExpression` instead. For more information, see [KeyConditions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html) in the *Amazon DynamoDB Developer Guide*.


## `QueryFilter = ::Dict{String,String}`
This is a legacy parameter. Use `FilterExpression` instead. For more information, see [QueryFilter](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html) in the *Amazon DynamoDB Developer Guide*.


## `ConditionalOperator = "AND" or "OR"`
This is a legacy parameter. Use `FilterExpression` instead. For more information, see [ConditionalOperator](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html) in the *Amazon DynamoDB Developer Guide*.


## `ScanIndexForward = ::Bool`
Specifies the order for index traversal: If `true` (default), the traversal is performed in ascending order; if `false`, the traversal is performed in descending order.

Items with the same partition key value are stored in sorted order by sort key. If the sort key data type is Number, the results are stored in numeric order. For type String, the results are stored in order of UTF-8 bytes. For type Binary, DynamoDB treats each byte of the binary data as unsigned.

If `ScanIndexForward` is `true`, DynamoDB returns the results in the order in which they are stored (by sort key value). This is the default behavior. If `ScanIndexForward` is `false`, DynamoDB reads the results in reverse order by sort key value, and then returns the results to the client.


## `ExclusiveStartKey = ::Dict{String,String}`
The primary key of the first item that this operation will evaluate. Use the value that was returned for `LastEvaluatedKey` in the previous operation.

The data type for `ExclusiveStartKey` must be String, Number or Binary. No set data types are allowed.


## `ReturnConsumedCapacity = "INDEXES", "TOTAL" or "NONE"`



## `ProjectionExpression = ::String`
A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.

If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.

For more information, see [Accessing Item Attributes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the *Amazon DynamoDB Developer Guide*.


## `FilterExpression = ::String`
A string that contains conditions that DynamoDB applies after the `Query` operation, but before the data is returned to you. Items that do not satisfy the `FilterExpression` criteria are not returned.

A `FilterExpression` does not allow key attributes. You cannot define a filter expression based on a partition key or a sort key.

**Note**
> A `FilterExpression` is applied after the items have already been read; the process of filtering does not consume any additional read capacity units.

For more information, see [Filter Expressions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults) in the *Amazon DynamoDB Developer Guide*.


## `KeyConditionExpression = ::String`
The condition that specifies the key value(s) for items to be retrieved by the `Query` action.

The condition must perform an equality test on a single partition key value.

The condition can optionally perform one of several comparison tests on a single sort key value. This allows `Query` to retrieve one item with a given partition key value and sort key value, or several items that have the same partition key value but different sort key values.

The partition key equality test is required, and must be specified in the following format:

`partitionKeyName` *=* `:partitionkeyval`

If you also want to provide a condition for the sort key, it must be combined using `AND` with the condition for the sort key. Following is an example, using the **=** comparison operator for the sort key:

`partitionKeyName` `=` `:partitionkeyval` `AND` `sortKeyName` `=` `:sortkeyval`

Valid comparisons for the sort key condition are as follows:

*   `sortKeyName` `=` `:sortkeyval` - true if the sort key value is equal to `:sortkeyval`.

*   `sortKeyName` `<` `:sortkeyval` - true if the sort key value is less than `:sortkeyval`.

*   `sortKeyName` `<=` `:sortkeyval` - true if the sort key value is less than or equal to `:sortkeyval`.

*   `sortKeyName` `>` `:sortkeyval` - true if the sort key value is greater than `:sortkeyval`.

*   `sortKeyName` `>=` `:sortkeyval` - true if the sort key value is greater than or equal to `:sortkeyval`.

*   `sortKeyName` `BETWEEN` `:sortkeyval1` `AND` `:sortkeyval2` - true if the sort key value is greater than or equal to `:sortkeyval1`, and less than or equal to `:sortkeyval2`.

*   `begins_with (` `sortKeyName`, `:sortkeyval` `)` - true if the sort key value begins with a particular operand. (You cannot use this function with a sort key that is of type Number.) Note that the function name `begins_with` is case-sensitive.

Use the `ExpressionAttributeValues` parameter to replace tokens such as `:partitionval` and `:sortval` with actual values at runtime.

You can optionally use the `ExpressionAttributeNames` parameter to replace the names of the partition key and sort key with placeholder tokens. This option might be necessary if an attribute name conflicts with a DynamoDB reserved word. For example, the following `KeyConditionExpression` parameter causes an error because *Size* is a reserved word:

*   `Size = :myval`

To work around this, define a placeholder (such a `#S`) to represent the attribute name *Size*. `KeyConditionExpression` then is as follows:

*   `#S = :myval`

For a list of reserved words, see [Reserved Words](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the *Amazon DynamoDB Developer Guide*.

For more information on `ExpressionAttributeNames` and `ExpressionAttributeValues`, see [Using Placeholders for Attribute Names and Values](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html) in the *Amazon DynamoDB Developer Guide*.


## `ExpressionAttributeNames = ::Dict{String,String}`
One or more substitution tokens for attribute names in an expression. The following are some use cases for using `ExpressionAttributeNames`:

*   To access an attribute whose name conflicts with a DynamoDB reserved word.

*   To create a placeholder for repeating occurrences of an attribute name in an expression.

*   To prevent special characters in an attribute name from being misinterpreted in an expression.

Use the **#** character in an expression to dereference an attribute name. For example, consider the following attribute name:

*   `Percentile`

The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see [Reserved Words](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the *Amazon DynamoDB Developer Guide*). To work around this, you could specify the following for `ExpressionAttributeNames`:

*   `{"#P":"Percentile"}`

You could then use this substitution in an expression, as in this example:

*   `#P = :val`

**Note**
> Tokens that begin with the **:** character are *expression attribute values*, which are placeholders for the actual value at runtime.

For more information on expression attribute names, see [Accessing Item Attributes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the *Amazon DynamoDB Developer Guide*.


## `ExpressionAttributeValues = ::Dict{String,String}`
One or more values that can be substituted in an expression.

Use the **:** (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the *ProductStatus* attribute was one of the following:

`Available | Backordered | Discontinued`

You would first need to specify `ExpressionAttributeValues` as follows:

`{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }`

You could then use these values in an expression, such as this:

`ProductStatus IN (:avail, :back, :disc)`

For more information on expression attribute values, see [Specifying Conditions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the *Amazon DynamoDB Developer Guide*.




# Returns

`QueryOutput`

# Exceptions

`ProvisionedThroughputExceededException`, `ResourceNotFoundException` or `InternalServerError`.

# Example: To query an item

This example queries items in the Music table. The table has a partition key and sort key (Artist and SongTitle), but this query only specifies the partition key value. It returns song titles by the artist named "No One You Know".

Input:
```
[
    "ExpressionAttributeValues" => [
        ":v1" => [
            "S" => "No One You Know"
        ]
    ],
    "KeyConditionExpression" => "Artist = :v1",
    "ProjectionExpression" => "SongTitle",
    "TableName" => "Music"
]
```

Output:
```
Dict(
    "ConsumedCapacity" => Dict(

    ),
    "Count" => 2,
    "Items" => [
        Dict(
            "SongTitle" => Dict(
                "S" => "Call Me Today"
            )
        )
    ],
    "ScannedCount" => 2
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/Query)
"""
@inline query(aws::AWSConfig=default_aws_config(); args...) = query(aws, args)

@inline query(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "Query", args)

@inline query(args) = query(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.restore_table_from_backup
    restore_table_from_backup([::AWSConfig], arguments::Dict)
    restore_table_from_backup([::AWSConfig]; TargetTableName=, BackupArn=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "RestoreTableFromBackup", arguments::Dict)
    dynamodb([::AWSConfig], "RestoreTableFromBackup", TargetTableName=, BackupArn=)

# RestoreTableFromBackup Operation

Creates a new table from an existing backup. Any number of users can execute up to 4 concurrent restores (any type of restore) in a given account.

You can call `RestoreTableFromBackup` at a maximum rate of 10 times per second.

You must manually set up the following on the restored table:

*   Auto scaling policies

*   IAM policies

*   Cloudwatch metrics and alarms

*   Tags

*   Stream settings

*   Time to Live (TTL) settings

# Arguments

## `TargetTableName = ::String` -- *Required*
The name of the new table to which the backup must be restored.


## `BackupArn = ::String` -- *Required*
The ARN associated with the backup.




# Returns

`RestoreTableFromBackupOutput`

# Exceptions

`TableAlreadyExistsException`, `TableInUseException`, `BackupNotFoundException`, `BackupInUseException`, `LimitExceededException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/RestoreTableFromBackup)
"""
@inline restore_table_from_backup(aws::AWSConfig=default_aws_config(); args...) = restore_table_from_backup(aws, args)

@inline restore_table_from_backup(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "RestoreTableFromBackup", args)

@inline restore_table_from_backup(args) = restore_table_from_backup(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.restore_table_to_point_in_time
    restore_table_to_point_in_time([::AWSConfig], arguments::Dict)
    restore_table_to_point_in_time([::AWSConfig]; SourceTableName=, TargetTableName=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "RestoreTableToPointInTime", arguments::Dict)
    dynamodb([::AWSConfig], "RestoreTableToPointInTime", SourceTableName=, TargetTableName=, <keyword arguments>)

# RestoreTableToPointInTime Operation

Restores the specified table to the specified point in time within `EarliestRestorableDateTime` and `LatestRestorableDateTime`. You can restore your table to any point in time during the last 35 days. Any number of users can execute up to 4 concurrent restores (any type of restore) in a given account.

When you restore using point in time recovery, DynamoDB restores your table data to the state based on the selected date and time (day:hour:minute:second) to a new table.

Along with data, the following are also included on the new restored table using point in time recovery:

*   Global secondary indexes (GSIs)

*   Local secondary indexes (LSIs)

*   Provisioned read and write capacity

*   Encryption settings

    **Important**
    > All these settings come from the current settings of the source table at the time of restore.

You must manually set up the following on the restored table:

*   Auto scaling policies

*   IAM policies

*   Cloudwatch metrics and alarms

*   Tags

*   Stream settings

*   Time to Live (TTL) settings

*   Point in time recovery settings

# Arguments

## `SourceTableName = ::String` -- *Required*
Name of the source table that is being restored.


## `TargetTableName = ::String` -- *Required*
The name of the new table to which it must be restored to.


## `UseLatestRestorableTime = ::Bool`
Restore the table to the latest possible time. `LatestRestorableDateTime` is typically 5 minutes before the current time.


## `RestoreDateTime = timestamp`
Time in the past to restore the table to.




# Returns

`RestoreTableToPointInTimeOutput`

# Exceptions

`TableAlreadyExistsException`, `TableNotFoundException`, `TableInUseException`, `LimitExceededException`, `InvalidRestoreTimeException`, `PointInTimeRecoveryUnavailableException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/RestoreTableToPointInTime)
"""
@inline restore_table_to_point_in_time(aws::AWSConfig=default_aws_config(); args...) = restore_table_to_point_in_time(aws, args)

@inline restore_table_to_point_in_time(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "RestoreTableToPointInTime", args)

@inline restore_table_to_point_in_time(args) = restore_table_to_point_in_time(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.scan
    scan([::AWSConfig], arguments::Dict)
    scan([::AWSConfig]; TableName=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "Scan", arguments::Dict)
    dynamodb([::AWSConfig], "Scan", TableName=, <keyword arguments>)

# Scan Operation

The `Scan` operation returns one or more items and item attributes by accessing every item in a table or a secondary index. To have DynamoDB return fewer items, you can provide a `FilterExpression` operation.

If the total number of scanned items exceeds the maximum data set size limit of 1 MB, the scan stops and results are returned to the user as a `LastEvaluatedKey` value to continue the scan in a subsequent operation. The results also include the number of items exceeding the limit. A scan can result in no table data meeting the filter criteria.

A single `Scan` operation will read up to the maximum number of items set (if using the `Limit` parameter) or a maximum of 1 MB of data and then apply any filtering to the results using `FilterExpression`. If `LastEvaluatedKey` is present in the response, you will need to paginate the result set. For more information, see [Paginating the Results](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination) in the *Amazon DynamoDB Developer Guide*.

`Scan` operations proceed sequentially; however, for faster performance on a large table or secondary index, applications can request a parallel `Scan` operation by providing the `Segment` and `TotalSegments` parameters. For more information, see [Parallel Scan](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan) in the *Amazon DynamoDB Developer Guide*.

`Scan` uses eventually consistent reads when accessing the data in a table; therefore, the result set might not include the changes to data in the table immediately before the operation began. If you need a consistent copy of the data, as of the time that the `Scan` begins, you can set the `ConsistentRead` parameter to `true`.

# Arguments

## `TableName = ::String` -- *Required*
The name of the table containing the requested items; or, if you provide `IndexName`, the name of the table to which that index belongs.


## `IndexName = ::String`
The name of a secondary index to scan. This index can be any local secondary index or global secondary index. Note that if you use the `IndexName` parameter, you must also provide `TableName`.


## `AttributesToGet = [::String, ...]`
This is a legacy parameter. Use `ProjectionExpression` instead. For more information, see [AttributesToGet](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html) in the *Amazon DynamoDB Developer Guide*.


## `Limit = ::Int`
The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in `LastEvaluatedKey` to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed data set size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in `LastEvaluatedKey` to apply in a subsequent operation to continue the operation. For more information, see [Query and Scan](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html) in the *Amazon DynamoDB Developer Guide*.


## `Select = "ALL_ATTRIBUTES", "ALL_PROJECTED_ATTRIBUTES", "SPECIFIC_ATTRIBUTES" or "COUNT"`
The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.

*   `ALL_ATTRIBUTES` - Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index DynamoDB will fetch the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.

*   `ALL_PROJECTED_ATTRIBUTES` - Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying `ALL_ATTRIBUTES`.

*   `COUNT` - Returns the number of matching items, rather than the matching items themselves.

*   `SPECIFIC_ATTRIBUTES` - Returns only the attributes listed in `AttributesToGet`. This return value is equivalent to specifying `AttributesToGet` without specifying any value for `Select`.

    If you query or scan a local secondary index and request only attributes that are projected into that index, the operation will read only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB will fetch each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency.

    If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table.

If neither `Select` nor `AttributesToGet` are specified, DynamoDB defaults to `ALL_ATTRIBUTES` when accessing a table, and `ALL_PROJECTED_ATTRIBUTES` when accessing an index. You cannot use both `Select` and `AttributesToGet` together in a single request, unless the value for `Select` is `SPECIFIC_ATTRIBUTES`. (This usage is equivalent to specifying `AttributesToGet` without any value for `Select`.)

**Note**
> If you use the `ProjectionExpression` parameter, then the value for `Select` can only be `SPECIFIC_ATTRIBUTES`. Any other value for `Select` will return an error.


## `ScanFilter = ::Dict{String,String}`
This is a legacy parameter. Use `FilterExpression` instead. For more information, see [ScanFilter](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html) in the *Amazon DynamoDB Developer Guide*.


## `ConditionalOperator = "AND" or "OR"`
This is a legacy parameter. Use `FilterExpression` instead. For more information, see [ConditionalOperator](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html) in the *Amazon DynamoDB Developer Guide*.


## `ExclusiveStartKey = ::Dict{String,String}`
The primary key of the first item that this operation will evaluate. Use the value that was returned for `LastEvaluatedKey` in the previous operation.

The data type for `ExclusiveStartKey` must be String, Number or Binary. No set data types are allowed.

In a parallel scan, a `Scan` request that includes `ExclusiveStartKey` must specify the same segment whose previous `Scan` returned the corresponding value of `LastEvaluatedKey`.


## `ReturnConsumedCapacity = "INDEXES", "TOTAL" or "NONE"`



## `TotalSegments = ::Int`
For a parallel `Scan` request, `TotalSegments` represents the total number of segments into which the `Scan` operation will be divided. The value of `TotalSegments` corresponds to the number of application workers that will perform the parallel scan. For example, if you want to use four application threads to scan a table or an index, specify a `TotalSegments` value of 4.

The value for `TotalSegments` must be greater than or equal to 1, and less than or equal to 1000000. If you specify a `TotalSegments` value of 1, the `Scan` operation will be sequential rather than parallel.

If you specify `TotalSegments`, you must also specify `Segment`.


## `Segment = ::Int`
For a parallel `Scan` request, `Segment` identifies an individual segment to be scanned by an application worker.

Segment IDs are zero-based, so the first segment is always 0. For example, if you want to use four application threads to scan a table or an index, then the first thread specifies a `Segment` value of 0, the second thread specifies 1, and so on.

The value of `LastEvaluatedKey` returned from a parallel `Scan` request must be used as `ExclusiveStartKey` with the same segment ID in a subsequent `Scan` operation.

The value for `Segment` must be greater than or equal to 0, and less than the value provided for `TotalSegments`.

If you provide `Segment`, you must also provide `TotalSegments`.


## `ProjectionExpression = ::String`
A string that identifies one or more attributes to retrieve from the specified table or index. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.

If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.

For more information, see [Accessing Item Attributes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the *Amazon DynamoDB Developer Guide*.


## `FilterExpression = ::String`
A string that contains conditions that DynamoDB applies after the `Scan` operation, but before the data is returned to you. Items that do not satisfy the `FilterExpression` criteria are not returned.

**Note**
> A `FilterExpression` is applied after the items have already been read; the process of filtering does not consume any additional read capacity units.

For more information, see [Filter Expressions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults) in the *Amazon DynamoDB Developer Guide*.


## `ExpressionAttributeNames = ::Dict{String,String}`
One or more substitution tokens for attribute names in an expression. The following are some use cases for using `ExpressionAttributeNames`:

*   To access an attribute whose name conflicts with a DynamoDB reserved word.

*   To create a placeholder for repeating occurrences of an attribute name in an expression.

*   To prevent special characters in an attribute name from being misinterpreted in an expression.

Use the **#** character in an expression to dereference an attribute name. For example, consider the following attribute name:

*   `Percentile`

The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see [Reserved Words](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the *Amazon DynamoDB Developer Guide*). To work around this, you could specify the following for `ExpressionAttributeNames`:

*   `{"#P":"Percentile"}`

You could then use this substitution in an expression, as in this example:

*   `#P = :val`

**Note**
> Tokens that begin with the **:** character are *expression attribute values*, which are placeholders for the actual value at runtime.

For more information on expression attribute names, see [Accessing Item Attributes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the *Amazon DynamoDB Developer Guide*.


## `ExpressionAttributeValues = ::Dict{String,String}`
One or more values that can be substituted in an expression.

Use the **:** (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the *ProductStatus* attribute was one of the following:

`Available | Backordered | Discontinued`

You would first need to specify `ExpressionAttributeValues` as follows:

`{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }`

You could then use these values in an expression, such as this:

`ProductStatus IN (:avail, :back, :disc)`

For more information on expression attribute values, see [Specifying Conditions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the *Amazon DynamoDB Developer Guide*.


## `ConsistentRead = ::Bool`
A Boolean value that determines the read consistency model during the scan:

*   If `ConsistentRead` is `false`, then the data returned from `Scan` might not contain the results from other recently completed write operations (PutItem, UpdateItem or DeleteItem).

*   If `ConsistentRead` is `true`, then all of the write operations that completed before the `Scan` began are guaranteed to be contained in the `Scan` response.

The default setting for `ConsistentRead` is `false`.

The `ConsistentRead` parameter is not supported on global secondary indexes. If you scan a global secondary index with `ConsistentRead` set to true, you will receive a `ValidationException`.




# Returns

`ScanOutput`

# Exceptions

`ProvisionedThroughputExceededException`, `ResourceNotFoundException` or `InternalServerError`.

# Example: To scan a table

This example scans the entire Music table, and then narrows the results to songs by the artist "No One You Know". For each item, only the album title and song title are returned.

Input:
```
[
    "ExpressionAttributeNames" => [
        "AT" => "AlbumTitle",
        "ST" => "SongTitle"
    ],
    "ExpressionAttributeValues" => [
        ":a" => [
            "S" => "No One You Know"
        ]
    ],
    "FilterExpression" => "Artist = :a",
    "ProjectionExpression" => "#ST, #AT",
    "TableName" => "Music"
]
```

Output:
```
Dict(
    "ConsumedCapacity" => Dict(

    ),
    "Count" => 2,
    "Items" => [
        Dict(
            "AlbumTitle" => Dict(
                "S" => "Somewhat Famous"
            ),
            "SongTitle" => Dict(
                "S" => "Call Me Today"
            )
        ),
        Dict(
            "AlbumTitle" => Dict(
                "S" => "Blue Sky Blues"
            ),
            "SongTitle" => Dict(
                "S" => "Scared of My Shadow"
            )
        )
    ],
    "ScannedCount" => 3
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/Scan)
"""
@inline scan(aws::AWSConfig=default_aws_config(); args...) = scan(aws, args)

@inline scan(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "Scan", args)

@inline scan(args) = scan(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; ResourceArn=, Tags=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "TagResource", arguments::Dict)
    dynamodb([::AWSConfig], "TagResource", ResourceArn=, Tags=)

# TagResource Operation

Associate a set of tags with an Amazon DynamoDB resource. You can then activate these user-defined tags so that they appear on the Billing and Cost Management console for cost allocation tracking. You can call TagResource up to 5 times per second, per account.

For an overview on tagging DynamoDB resources, see [Tagging for DynamoDB](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html) in the *Amazon DynamoDB Developer Guide*.

# Arguments

## `ResourceArn = ::String` -- *Required*
Identifies the Amazon DynamoDB resource to which tags should be added. This value is an Amazon Resource Name (ARN).


## `Tags = [[ ... ], ...]` -- *Required*
The tags to be assigned to the Amazon DynamoDB resource.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Exceptions

`LimitExceededException`, `ResourceNotFoundException`, `InternalServerError` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "TagResource", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; ResourceArn=, TagKeys=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "UntagResource", arguments::Dict)
    dynamodb([::AWSConfig], "UntagResource", ResourceArn=, TagKeys=)

# UntagResource Operation

Removes the association of tags from an Amazon DynamoDB resource. You can call UntagResource up to 5 times per second, per account.

For an overview on tagging DynamoDB resources, see [Tagging for DynamoDB](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html) in the *Amazon DynamoDB Developer Guide*.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon DyanamoDB resource the tags will be removed from. This value is an Amazon Resource Name (ARN).


## `TagKeys = [::String, ...]` -- *Required*
A list of tag keys. Existing tags of the resource whose keys are members of this list will be removed from the Amazon DynamoDB resource.




# Exceptions

`LimitExceededException`, `ResourceNotFoundException`, `InternalServerError` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "UntagResource", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.update_continuous_backups
    update_continuous_backups([::AWSConfig], arguments::Dict)
    update_continuous_backups([::AWSConfig]; TableName=, PointInTimeRecoverySpecification=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "UpdateContinuousBackups", arguments::Dict)
    dynamodb([::AWSConfig], "UpdateContinuousBackups", TableName=, PointInTimeRecoverySpecification=)

# UpdateContinuousBackups Operation

`UpdateContinuousBackups` enables or disables point in time recovery for the specified table. A successful `UpdateContinuousBackups` call returns the current `ContinuousBackupsDescription`. Continuous backups are `ENABLED` on all tables at table creation. If point in time recovery is enabled, `PointInTimeRecoveryStatus` will be set to ENABLED.

Once continuous backups and point in time recovery are enabled, you can restore to any point in time within `EarliestRestorableDateTime` and `LatestRestorableDateTime`.

`LatestRestorableDateTime` is typically 5 minutes before the current time. You can restore your table to any point in time during the last 35 days..

# Arguments

## `TableName = ::String` -- *Required*
The name of the table.


## `PointInTimeRecoverySpecification = ["PointInTimeRecoveryEnabled" => <required> ::Bool]` -- *Required*
Represents the settings used to enable point in time recovery.




# Returns

`UpdateContinuousBackupsOutput`

# Exceptions

`TableNotFoundException`, `ContinuousBackupsUnavailableException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateContinuousBackups)
"""
@inline update_continuous_backups(aws::AWSConfig=default_aws_config(); args...) = update_continuous_backups(aws, args)

@inline update_continuous_backups(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "UpdateContinuousBackups", args)

@inline update_continuous_backups(args) = update_continuous_backups(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.update_global_table
    update_global_table([::AWSConfig], arguments::Dict)
    update_global_table([::AWSConfig]; GlobalTableName=, ReplicaUpdates=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "UpdateGlobalTable", arguments::Dict)
    dynamodb([::AWSConfig], "UpdateGlobalTable", GlobalTableName=, ReplicaUpdates=)

# UpdateGlobalTable Operation

Adds or removes replicas in the specified global table. The global table must already exist to be able to use this operation. Any replica to be added must be empty, must have the same name as the global table, must have the same key schema, and must have DynamoDB Streams enabled and must have same provisioned and maximum write capacity units.

**Note**
> Although you can use `UpdateGlobalTable` to add replicas and remove replicas in a single request, for simplicity we recommend that you issue separate requests for adding or removing replicas.

If global secondary indexes are specified, then the following conditions must also be met:

*   The global secondary indexes must have the same name.

*   The global secondary indexes must have the same hash key and sort key (if present).

*   The global secondary indexes must have the same provisioned and maximum write capacity units.

# Arguments

## `GlobalTableName = ::String` -- *Required*
The global table name.


## `ReplicaUpdates = [[ ... ], ...]` -- *Required*
A list of regions that should be added or removed from the global table.
```
 ReplicaUpdates = [[
        "Create" =>  ["RegionName" => <required> ::String],
        "Delete" =>  ["RegionName" => <required> ::String]
    ], ...]
```



# Returns

`UpdateGlobalTableOutput`

# Exceptions

`InternalServerError`, `GlobalTableNotFoundException`, `ReplicaAlreadyExistsException`, `ReplicaNotFoundException` or `TableNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateGlobalTable)
"""
@inline update_global_table(aws::AWSConfig=default_aws_config(); args...) = update_global_table(aws, args)

@inline update_global_table(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "UpdateGlobalTable", args)

@inline update_global_table(args) = update_global_table(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.update_global_table_settings
    update_global_table_settings([::AWSConfig], arguments::Dict)
    update_global_table_settings([::AWSConfig]; GlobalTableName=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "UpdateGlobalTableSettings", arguments::Dict)
    dynamodb([::AWSConfig], "UpdateGlobalTableSettings", GlobalTableName=, <keyword arguments>)

# UpdateGlobalTableSettings Operation

Updates settings for a global table.

# Arguments

## `GlobalTableName = ::String` -- *Required*
The name of the global table


## `GlobalTableProvisionedWriteCapacityUnits = ::Int`
The maximum number of writes consumed per second before DynamoDB returns a `ThrottlingException.`


## `GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = [ ... ]`
AutoScaling settings for managing provisioned write capacity for the global table.
```
 GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = [
        "MinimumUnits" =>  ::Int,
        "MaximumUnits" =>  ::Int,
        "AutoScalingDisabled" =>  ::Bool,
        "AutoScalingRoleArn" =>  ::String,
        "ScalingPolicyUpdate" =>  [
            "PolicyName" =>  ::String,
            "TargetTrackingScalingPolicyConfiguration" => <required> [
                "DisableScaleIn" =>  ::Bool,
                "ScaleInCooldown" =>  ::Int,
                "ScaleOutCooldown" =>  ::Int,
                "TargetValue" => <required> double
            ]
        ]
    ]
```

## `GlobalTableGlobalSecondaryIndexSettingsUpdate = [[ ... ], ...]`
Represents the settings of a global secondary index for a global table that will be modified.
```
 GlobalTableGlobalSecondaryIndexSettingsUpdate = [[
        "IndexName" => <required> ::String,
        "ProvisionedWriteCapacityUnits" =>  ::Int,
        "ProvisionedWriteCapacityAutoScalingSettingsUpdate" =>  [
            "MinimumUnits" =>  ::Int,
            "MaximumUnits" =>  ::Int,
            "AutoScalingDisabled" =>  ::Bool,
            "AutoScalingRoleArn" =>  ::String,
            "ScalingPolicyUpdate" =>  [
                "PolicyName" =>  ::String,
                "TargetTrackingScalingPolicyConfiguration" => <required> [
                    "DisableScaleIn" =>  ::Bool,
                    "ScaleInCooldown" =>  ::Int,
                    "ScaleOutCooldown" =>  ::Int,
                    "TargetValue" => <required> double
                ]
            ]
        ]
    ], ...]
```

## `ReplicaSettingsUpdate = [[ ... ], ...]`
Represents the settings for a global table in a region that will be modified.
```
 ReplicaSettingsUpdate = [[
        "RegionName" => <required> ::String,
        "ReplicaProvisionedReadCapacityUnits" =>  ::Int,
        "ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate" =>  [
            "MinimumUnits" =>  ::Int,
            "MaximumUnits" =>  ::Int,
            "AutoScalingDisabled" =>  ::Bool,
            "AutoScalingRoleArn" =>  ::String,
            "ScalingPolicyUpdate" =>  [
                "PolicyName" =>  ::String,
                "TargetTrackingScalingPolicyConfiguration" => <required> [
                    "DisableScaleIn" =>  ::Bool,
                    "ScaleInCooldown" =>  ::Int,
                    "ScaleOutCooldown" =>  ::Int,
                    "TargetValue" => <required> double
                ]
            ]
        ],
        "ReplicaGlobalSecondaryIndexSettingsUpdate" =>  [[
            "IndexName" => <required> ::String,
            "ProvisionedReadCapacityUnits" =>  ::Int,
            "ProvisionedReadCapacityAutoScalingSettingsUpdate" =>  [
                "MinimumUnits" =>  ::Int,
                "MaximumUnits" =>  ::Int,
                "AutoScalingDisabled" =>  ::Bool,
                "AutoScalingRoleArn" =>  ::String,
                "ScalingPolicyUpdate" =>  [
                    "PolicyName" =>  ::String,
                    "TargetTrackingScalingPolicyConfiguration" => <required> [
                        "DisableScaleIn" =>  ::Bool,
                        "ScaleInCooldown" =>  ::Int,
                        "ScaleOutCooldown" =>  ::Int,
                        "TargetValue" => <required> double
                    ]
                ]
            ]
        ], ...]
    ], ...]
```



# Returns

`UpdateGlobalTableSettingsOutput`

# Exceptions

`GlobalTableNotFoundException`, `ReplicaNotFoundException`, `IndexNotFoundException`, `LimitExceededException`, `ResourceInUseException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateGlobalTableSettings)
"""
@inline update_global_table_settings(aws::AWSConfig=default_aws_config(); args...) = update_global_table_settings(aws, args)

@inline update_global_table_settings(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "UpdateGlobalTableSettings", args)

@inline update_global_table_settings(args) = update_global_table_settings(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.update_item
    update_item([::AWSConfig], arguments::Dict)
    update_item([::AWSConfig]; TableName=, Key=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "UpdateItem", arguments::Dict)
    dynamodb([::AWSConfig], "UpdateItem", TableName=, Key=, <keyword arguments>)

# UpdateItem Operation

Edits an existing item's attributes, or adds a new item to the table if it does not already exist. You can put, delete, or add attribute values. You can also perform a conditional update on an existing item (insert a new attribute name-value pair if it doesn't exist, or replace an existing name-value pair if it has certain expected attribute values).

You can also return the item's attribute values in the same `UpdateItem` operation using the `ReturnValues` parameter.

# Arguments

## `TableName = ::String` -- *Required*
The name of the table containing the item to update.


## `Key = ::Dict{String,String}` -- *Required*
The primary key of the item to be updated. Each element consists of an attribute name and a value for that attribute.

For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.


## `AttributeUpdates = ::Dict{String,String}`
This is a legacy parameter. Use `UpdateExpression` instead. For more information, see [AttributeUpdates](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html) in the *Amazon DynamoDB Developer Guide*.


## `Expected = ::Dict{String,String}`
This is a legacy parameter. Use `ConditionExpression` instead. For more information, see [Expected](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html) in the *Amazon DynamoDB Developer Guide*.


## `ConditionalOperator = "AND" or "OR"`
This is a legacy parameter. Use `ConditionExpression` instead. For more information, see [ConditionalOperator](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html) in the *Amazon DynamoDB Developer Guide*.


## `ReturnValues = "NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW" or "UPDATED_NEW"`
Use `ReturnValues` if you want to get the item attributes as they appear before or after they are updated. For `UpdateItem`, the valid values are:

*   `NONE` - If `ReturnValues` is not specified, or if its value is `NONE`, then nothing is returned. (This setting is the default for `ReturnValues`.)

*   `ALL_OLD` - Returns all of the attributes of the item, as they appeared before the UpdateItem operation.

*   `UPDATED_OLD` - Returns only the updated attributes, as they appeared before the UpdateItem operation.

*   `ALL_NEW` - Returns all of the attributes of the item, as they appear after the UpdateItem operation.

*   `UPDATED_NEW` - Returns only the updated attributes, as they appear after the UpdateItem operation.

There is no additional cost associated with requesting a return value aside from the small network and processing overhead of receiving a larger response. No read capacity units are consumed.

The values returned are strongly consistent.


## `ReturnConsumedCapacity = "INDEXES", "TOTAL" or "NONE"`



## `ReturnItemCollectionMetrics = "SIZE" or "NONE"`
Determines whether item collection metrics are returned. If set to `SIZE`, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to `NONE` (the default), no statistics are returned.


## `UpdateExpression = ::String`
An expression that defines one or more attributes to be updated, the action to be performed on them, and new value(s) for them.

The following action values are available for `UpdateExpression`.

*   `SET` - Adds one or more attributes and values to an item. If any of these attribute already exist, they are replaced by the new values. You can also use `SET` to add or subtract from an attribute that is of type Number. For example: `SET myNum = myNum + :val`

    `SET` supports the following functions:

    *   `if_not_exists (path, operand)` - if the item does not contain an attribute at the specified path, then `if_not_exists` evaluates to operand; otherwise, it evaluates to path. You can use this function to avoid overwriting an attribute that may already be present in the item.

    *   `list_append (operand, operand)` - evaluates to a list with a new element added to it. You can append the new element to the start or the end of the list by reversing the order of the operands.

    These function names are case-sensitive.

*   `REMOVE` - Removes one or more attributes from an item.

*   `ADD` - Adds the specified value to the item, if the attribute does not already exist. If the attribute does exist, then the behavior of `ADD` depends on the data type of the attribute:

    *   If the existing attribute is a number, and if `Value` is also a number, then `Value` is mathematically added to the existing attribute. If `Value` is a negative number, then it is subtracted from the existing attribute.

        **Note**
        > If you use `ADD` to increment or decrement a number value for an item that doesn't exist before the update, DynamoDB uses `0` as the initial value.

        Similarly, if you use `ADD` for an existing item to increment or decrement an attribute value that doesn't exist before the update, DynamoDB uses `0` as the initial value. For example, suppose that the item you want to update doesn't have an attribute named *itemcount*, but you decide to `ADD` the number `3` to this attribute anyway. DynamoDB will create the *itemcount* attribute, set its initial value to `0`, and finally add `3` to it. The result will be a new *itemcount* attribute in the item, with a value of `3`.

    *   If the existing data type is a set and if `Value` is also a set, then `Value` is added to the existing set. For example, if the attribute value is the set `[1,2]`, and the `ADD` action specified `[3]`, then the final attribute value is `[1,2,3]`. An error occurs if an `ADD` action is specified for a set attribute and the attribute type specified does not match the existing set type.

        Both sets must have the same primitive data type. For example, if the existing data type is a set of strings, the `Value` must also be a set of strings.

    **Important**
    > The `ADD` action only supports Number and set data types. In addition, `ADD` can only be used on top-level attributes, not nested attributes.

*   `DELETE` - Deletes an element from a set.

    If a set of values is specified, then those values are subtracted from the old set. For example, if the attribute value was the set `[a,b,c]` and the `DELETE` action specifies `[a,c]`, then the final attribute value is `[b]`. Specifying an empty set is an error.

    **Important**
    > The `DELETE` action only supports set data types. In addition, `DELETE` can only be used on top-level attributes, not nested attributes.

You can have many actions in a single expression, such as the following: `SET a=:value1, b=:value2 DELETE :value3, :value4, :value5`

For more information on update expressions, see [Modifying Items and Attributes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html) in the *Amazon DynamoDB Developer Guide*.


## `ConditionExpression = ::String`
A condition that must be satisfied in order for a conditional update to succeed.

An expression can contain any of the following:

*   Functions: `attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size`

    These function names are case-sensitive.

*   Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN`

*   Logical operators: `AND | OR | NOT`

For more information on condition expressions, see [Specifying Conditions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the *Amazon DynamoDB Developer Guide*.


## `ExpressionAttributeNames = ::Dict{String,String}`
One or more substitution tokens for attribute names in an expression. The following are some use cases for using `ExpressionAttributeNames`:

*   To access an attribute whose name conflicts with a DynamoDB reserved word.

*   To create a placeholder for repeating occurrences of an attribute name in an expression.

*   To prevent special characters in an attribute name from being misinterpreted in an expression.

Use the **#** character in an expression to dereference an attribute name. For example, consider the following attribute name:

*   `Percentile`

The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see [Reserved Words](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the *Amazon DynamoDB Developer Guide*). To work around this, you could specify the following for `ExpressionAttributeNames`:

*   `{"#P":"Percentile"}`

You could then use this substitution in an expression, as in this example:

*   `#P = :val`

**Note**
> Tokens that begin with the **:** character are *expression attribute values*, which are placeholders for the actual value at runtime.

For more information on expression attribute names, see [Accessing Item Attributes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the *Amazon DynamoDB Developer Guide*.


## `ExpressionAttributeValues = ::Dict{String,String}`
One or more values that can be substituted in an expression.

Use the **:** (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the *ProductStatus* attribute was one of the following:

`Available | Backordered | Discontinued`

You would first need to specify `ExpressionAttributeValues` as follows:

`{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }`

You could then use these values in an expression, such as this:

`ProductStatus IN (:avail, :back, :disc)`

For more information on expression attribute values, see [Specifying Conditions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the *Amazon DynamoDB Developer Guide*.




# Returns

`UpdateItemOutput`

# Exceptions

`ConditionalCheckFailedException`, `ProvisionedThroughputExceededException`, `ResourceNotFoundException`, `ItemCollectionSizeLimitExceededException` or `InternalServerError`.

# Example: To update an item in a table

This example updates an item in the Music table. It adds a new attribute (Year) and modifies the AlbumTitle attribute.  All of the attributes in the item, as they appear after the update, are returned in the response.

Input:
```
[
    "ExpressionAttributeNames" => [
        "#AT" => "AlbumTitle",
        "#Y" => "Year"
    ],
    "ExpressionAttributeValues" => [
        ":t" => [
            "S" => "Louder Than Ever"
        ],
        ":y" => [
            "N" => "2015"
        ]
    ],
    "Key" => [
        "Artist" => [
            "S" => "Acme Band"
        ],
        "SongTitle" => [
            "S" => "Happy Day"
        ]
    ],
    "ReturnValues" => "ALL_NEW",
    "TableName" => "Music",
    "UpdateExpression" => "SET #Y = :y, #AT = :t"
]
```

Output:
```
Dict(
    "Attributes" => Dict(
        "AlbumTitle" => Dict(
            "S" => "Louder Than Ever"
        ),
        "Artist" => Dict(
            "S" => "Acme Band"
        ),
        "SongTitle" => Dict(
            "S" => "Happy Day"
        ),
        "Year" => Dict(
            "N" => "2015"
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateItem)
"""
@inline update_item(aws::AWSConfig=default_aws_config(); args...) = update_item(aws, args)

@inline update_item(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "UpdateItem", args)

@inline update_item(args) = update_item(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.update_table
    update_table([::AWSConfig], arguments::Dict)
    update_table([::AWSConfig]; TableName=, <keyword arguments>)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "UpdateTable", arguments::Dict)
    dynamodb([::AWSConfig], "UpdateTable", TableName=, <keyword arguments>)

# UpdateTable Operation

Modifies the provisioned throughput settings, global secondary indexes, or DynamoDB Streams settings for a given table.

You can only perform one of the following operations at once:

*   Modify the provisioned throughput settings of the table.

*   Enable or disable Streams on the table.

*   Remove a global secondary index from the table.

*   Create a new global secondary index on the table. Once the index begins backfilling, you can use `UpdateTable` to perform other operations.

`UpdateTable` is an asynchronous operation; while it is executing, the table status changes from `ACTIVE` to `UPDATING`. While it is `UPDATING`, you cannot issue another `UpdateTable` request. When the table returns to the `ACTIVE` state, the `UpdateTable` operation is complete.

# Arguments

## `AttributeDefinitions = [[ ... ], ...]`
An array of attributes that describe the key schema for the table and indexes. If you are adding a new global secondary index to the table, `AttributeDefinitions` must include the key element(s) of the new index.
```
 AttributeDefinitions = [[
        "AttributeName" => <required> ::String,
        "AttributeType" => <required> "S", "N" or "B"
    ], ...]
```

## `TableName = ::String` -- *Required*
The name of the table to be updated.


## `ProvisionedThroughput = [ ... ]`
The new provisioned throughput settings for the specified table or index.
```
 ProvisionedThroughput = [
        "ReadCapacityUnits" => <required> ::Int,
        "WriteCapacityUnits" => <required> ::Int
    ]
```

## `GlobalSecondaryIndexUpdates = [[ ... ], ...]`
An array of one or more global secondary indexes for the table. For each index in the array, you can request one action:

*   `Create` - add a new global secondary index to the table.

*   `Update` - modify the provisioned throughput settings of an existing global secondary index.

*   `Delete` - remove a global secondary index from the table.

For more information, see [Managing Global Secondary Indexes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html) in the *Amazon DynamoDB Developer Guide*.
```
 GlobalSecondaryIndexUpdates = [[
        "Update" =>  [
            "IndexName" => <required> ::String,
            "ProvisionedThroughput" => <required> [
                "ReadCapacityUnits" => <required> ::Int,
                "WriteCapacityUnits" => <required> ::Int
            ]
        ],
        "Create" =>  [
            "IndexName" => <required> ::String,
            "KeySchema" => <required> [[
                "AttributeName" => <required> ::String,
                "KeyType" => <required> "HASH" or "RANGE"
            ], ...],
            "Projection" => <required> [
                "ProjectionType" =>  "ALL", "KEYS_ONLY" or "INCLUDE",
                "NonKeyAttributes" =>  [::String, ...]
            ],
            "ProvisionedThroughput" => <required> [
                "ReadCapacityUnits" => <required> ::Int,
                "WriteCapacityUnits" => <required> ::Int
            ]
        ],
        "Delete" =>  ["IndexName" => <required> ::String]
    ], ...]
```

## `StreamSpecification = [ ... ]`
Represents the DynamoDB Streams configuration for the table.

**Note**
> You will receive a `ResourceInUseException` if you attempt to enable a stream on a table that already has a stream, or if you attempt to disable a stream on a table which does not have a stream.
```
 StreamSpecification = [
        "StreamEnabled" =>  ::Bool,
        "StreamViewType" =>  "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES" or "KEYS_ONLY"
    ]
```



# Returns

`UpdateTableOutput`

# Exceptions

`ResourceInUseException`, `ResourceNotFoundException`, `LimitExceededException` or `InternalServerError`.

# Example: To modify a table's provisioned throughput

This example increases the provisioned read and write capacity on the Music table.

Input:
```
[
    "ProvisionedThroughput" => [
        "ReadCapacityUnits" => 10,
        "WriteCapacityUnits" => 10
    ],
    "TableName" => "MusicCollection"
]
```

Output:
```
Dict(
    "TableDescription" => Dict(
        "AttributeDefinitions" => [
            Dict(
                "AttributeName" => "Artist",
                "AttributeType" => "S"
            ),
            Dict(
                "AttributeName" => "SongTitle",
                "AttributeType" => "S"
            )
        ],
        "CreationDateTime" => "1421866952.062",
        "ItemCount" => 0,
        "KeySchema" => [
            Dict(
                "AttributeName" => "Artist",
                "KeyType" => "HASH"
            ),
            Dict(
                "AttributeName" => "SongTitle",
                "KeyType" => "RANGE"
            )
        ],
        "ProvisionedThroughput" => Dict(
            "LastIncreaseDateTime" => "1421874759.194",
            "NumberOfDecreasesToday" => 1,
            "ReadCapacityUnits" => 1,
            "WriteCapacityUnits" => 1
        ),
        "TableName" => "MusicCollection",
        "TableSizeBytes" => 0,
        "TableStatus" => "UPDATING"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateTable)
"""
@inline update_table(aws::AWSConfig=default_aws_config(); args...) = update_table(aws, args)

@inline update_table(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "UpdateTable", args)

@inline update_table(args) = update_table(default_aws_config(), args)


"""
    using AWSSDK.DynamoDB.update_time_to_live
    update_time_to_live([::AWSConfig], arguments::Dict)
    update_time_to_live([::AWSConfig]; TableName=, TimeToLiveSpecification=)

    using AWSCore.Services.dynamodb
    dynamodb([::AWSConfig], "UpdateTimeToLive", arguments::Dict)
    dynamodb([::AWSConfig], "UpdateTimeToLive", TableName=, TimeToLiveSpecification=)

# UpdateTimeToLive Operation

The UpdateTimeToLive method will enable or disable TTL for the specified table. A successful `UpdateTimeToLive` call returns the current `TimeToLiveSpecification`; it may take up to one hour for the change to fully process. Any additional `UpdateTimeToLive` calls for the same table during this one hour duration result in a `ValidationException`.

TTL compares the current time in epoch time format to the time stored in the TTL attribute of an item. If the epoch time value stored in the attribute is less than the current time, the item is marked as expired and subsequently deleted.

**Note**
> The epoch time format is the number of seconds elapsed since 12:00:00 AM January 1st, 1970 UTC.

DynamoDB deletes expired items on a best-effort basis to ensure availability of throughput for other data operations.

**Important**
> DynamoDB typically deletes expired items within two days of expiration. The exact duration within which an item gets deleted after expiration is specific to the nature of the workload. Items that have expired and not been deleted will still show up in reads, queries, and scans.

As items are deleted, they are removed from any Local Secondary Index and Global Secondary Index immediately in the same eventually consistent way as a standard delete operation.

For more information, see [Time To Live](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html) in the Amazon DynamoDB Developer Guide.

# Arguments

## `TableName = ::String` -- *Required*
The name of the table to be configured.


## `TimeToLiveSpecification = [ ... ]` -- *Required*
Represents the settings used to enable or disable Time to Live for the specified table.
```
 TimeToLiveSpecification = [
        "Enabled" => <required> ::Bool,
        "AttributeName" => <required> ::String
    ]
```



# Returns

`UpdateTimeToLiveOutput`

# Exceptions

`ResourceInUseException`, `ResourceNotFoundException`, `LimitExceededException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateTimeToLive)
"""
@inline update_time_to_live(aws::AWSConfig=default_aws_config(); args...) = update_time_to_live(aws, args)

@inline update_time_to_live(aws::AWSConfig, args) = AWSCore.Services.dynamodb(aws, "UpdateTimeToLive", args)

@inline update_time_to_live(args) = update_time_to_live(default_aws_config(), args)




end # module DynamoDB


#==============================================================================#
# End of file
#==============================================================================#
