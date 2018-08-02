#==============================================================================#
# Glue.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/glue-2017-03-31.normal.json
#==============================================================================#

__precompile__()

module Glue

using AWSCore


"""
    using AWSSDK.Glue.batch_create_partition
    batch_create_partition([::AWSConfig], arguments::Dict)
    batch_create_partition([::AWSConfig]; DatabaseName=, TableName=, PartitionInputList=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "BatchCreatePartition", arguments::Dict)
    glue([::AWSConfig], "BatchCreatePartition", DatabaseName=, TableName=, PartitionInputList=, <keyword arguments>)

# BatchCreatePartition Operation

Creates one or more partitions in a batch operation.

# Arguments

## `CatalogId = ::String`
The ID of the catalog in which the partion is to be created. Currently, this should be the AWS account ID.


## `DatabaseName = ::String` -- *Required*
The name of the metadata database in which the partition is to be created.


## `TableName = ::String` -- *Required*
The name of the metadata table in which the partition is to be created.


## `PartitionInputList = [[ ... ], ...]` -- *Required*
A list of `PartitionInput` structures that define the partitions to be created.
```
 PartitionInputList = [[
        "Values" =>  [::String, ...],
        "LastAccessTime" =>  timestamp,
        "StorageDescriptor" =>  [
            "Columns" =>  [[
                "Name" => <required> ::String,
                "Type" =>  ::String,
                "Comment" =>  ::String
            ], ...],
            "Location" =>  ::String,
            "InputFormat" =>  ::String,
            "OutputFormat" =>  ::String,
            "Compressed" =>  ::Bool,
            "NumberOfBuckets" =>  ::Int,
            "SerdeInfo" =>  [
                "Name" =>  ::String,
                "SerializationLibrary" =>  ::String,
                "Parameters" =>  ::Dict{String,String}
            ],
            "BucketColumns" =>  [::String, ...],
            "SortColumns" =>  [[
                "Column" => <required> ::String,
                "SortOrder" => <required> ::Int
            ], ...],
            "Parameters" =>  ::Dict{String,String},
            "SkewedInfo" =>  [
                "SkewedColumnNames" =>  [::String, ...],
                "SkewedColumnValues" =>  [::String, ...],
                "SkewedColumnValueLocationMaps" =>  ::Dict{String,String}
            ],
            "StoredAsSubDirectories" =>  ::Bool
        ],
        "Parameters" =>  ::Dict{String,String},
        "LastAnalyzedTime" =>  timestamp
    ], ...]
```



# Returns

`BatchCreatePartitionResponse`

# Exceptions

`InvalidInputException`, `AlreadyExistsException`, `ResourceNumberLimitExceededException`, `InternalServiceException`, `EntityNotFoundException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchCreatePartition)
"""
@inline batch_create_partition(aws::AWSConfig=default_aws_config(); args...) = batch_create_partition(aws, args)

@inline batch_create_partition(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "BatchCreatePartition", args)

@inline batch_create_partition(args) = batch_create_partition(default_aws_config(), args)


"""
    using AWSSDK.Glue.batch_delete_connection
    batch_delete_connection([::AWSConfig], arguments::Dict)
    batch_delete_connection([::AWSConfig]; ConnectionNameList=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "BatchDeleteConnection", arguments::Dict)
    glue([::AWSConfig], "BatchDeleteConnection", ConnectionNameList=, <keyword arguments>)

# BatchDeleteConnection Operation

Deletes a list of connection definitions from the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog in which the connections reside. If none is supplied, the AWS account ID is used by default.


## `ConnectionNameList = [::String, ...]` -- *Required*
A list of names of the connections to delete.




# Returns

`BatchDeleteConnectionResponse`

# Exceptions

`InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteConnection)
"""
@inline batch_delete_connection(aws::AWSConfig=default_aws_config(); args...) = batch_delete_connection(aws, args)

@inline batch_delete_connection(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "BatchDeleteConnection", args)

@inline batch_delete_connection(args) = batch_delete_connection(default_aws_config(), args)


"""
    using AWSSDK.Glue.batch_delete_partition
    batch_delete_partition([::AWSConfig], arguments::Dict)
    batch_delete_partition([::AWSConfig]; DatabaseName=, TableName=, PartitionsToDelete=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "BatchDeletePartition", arguments::Dict)
    glue([::AWSConfig], "BatchDeletePartition", DatabaseName=, TableName=, PartitionsToDelete=, <keyword arguments>)

# BatchDeletePartition Operation

Deletes one or more partitions in a batch operation.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the partition to be deleted resides. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database in which the table in question resides.


## `TableName = ::String` -- *Required*
The name of the table where the partitions to be deleted is located.


## `PartitionsToDelete = [["Values" => <required> [::String, ...]], ...]` -- *Required*
A list of `PartitionInput` structures that define the partitions to be deleted.




# Returns

`BatchDeletePartitionResponse`

# Exceptions

`InvalidInputException`, `EntityNotFoundException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeletePartition)
"""
@inline batch_delete_partition(aws::AWSConfig=default_aws_config(); args...) = batch_delete_partition(aws, args)

@inline batch_delete_partition(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "BatchDeletePartition", args)

@inline batch_delete_partition(args) = batch_delete_partition(default_aws_config(), args)


"""
    using AWSSDK.Glue.batch_delete_table
    batch_delete_table([::AWSConfig], arguments::Dict)
    batch_delete_table([::AWSConfig]; DatabaseName=, TablesToDelete=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "BatchDeleteTable", arguments::Dict)
    glue([::AWSConfig], "BatchDeleteTable", DatabaseName=, TablesToDelete=, <keyword arguments>)

# BatchDeleteTable Operation

Deletes multiple tables at once.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the table resides. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database where the tables to delete reside. For Hive compatibility, this name is entirely lowercase.


## `TablesToDelete = [::String, ...]` -- *Required*
A list of the table to delete.




# Returns

`BatchDeleteTableResponse`

# Exceptions

`InvalidInputException`, `EntityNotFoundException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTable)
"""
@inline batch_delete_table(aws::AWSConfig=default_aws_config(); args...) = batch_delete_table(aws, args)

@inline batch_delete_table(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "BatchDeleteTable", args)

@inline batch_delete_table(args) = batch_delete_table(default_aws_config(), args)


"""
    using AWSSDK.Glue.batch_delete_table_version
    batch_delete_table_version([::AWSConfig], arguments::Dict)
    batch_delete_table_version([::AWSConfig]; DatabaseName=, TableName=, VersionIds=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "BatchDeleteTableVersion", arguments::Dict)
    glue([::AWSConfig], "BatchDeleteTableVersion", DatabaseName=, TableName=, VersionIds=, <keyword arguments>)

# BatchDeleteTableVersion Operation

Deletes a specified batch of versions of a table.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.


## `TableName = ::String` -- *Required*
The name of the table. For Hive compatibility, this name is entirely lowercase.


## `VersionIds = [::String, ...]` -- *Required*
A list of the IDs of versions to be deleted.




# Returns

`BatchDeleteTableVersionResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableVersion)
"""
@inline batch_delete_table_version(aws::AWSConfig=default_aws_config(); args...) = batch_delete_table_version(aws, args)

@inline batch_delete_table_version(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "BatchDeleteTableVersion", args)

@inline batch_delete_table_version(args) = batch_delete_table_version(default_aws_config(), args)


"""
    using AWSSDK.Glue.batch_get_partition
    batch_get_partition([::AWSConfig], arguments::Dict)
    batch_get_partition([::AWSConfig]; DatabaseName=, TableName=, PartitionsToGet=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "BatchGetPartition", arguments::Dict)
    glue([::AWSConfig], "BatchGetPartition", DatabaseName=, TableName=, PartitionsToGet=, <keyword arguments>)

# BatchGetPartition Operation

Retrieves partitions in a batch request.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database where the partitions reside.


## `TableName = ::String` -- *Required*
The name of the partitions' table.


## `PartitionsToGet = [["Values" => <required> [::String, ...]], ...]` -- *Required*
A list of partition values identifying the partitions to retrieve.




# Returns

`BatchGetPartitionResponse`

# Exceptions

`InvalidInputException`, `EntityNotFoundException`, `OperationTimeoutException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetPartition)
"""
@inline batch_get_partition(aws::AWSConfig=default_aws_config(); args...) = batch_get_partition(aws, args)

@inline batch_get_partition(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "BatchGetPartition", args)

@inline batch_get_partition(args) = batch_get_partition(default_aws_config(), args)


"""
    using AWSSDK.Glue.batch_stop_job_run
    batch_stop_job_run([::AWSConfig], arguments::Dict)
    batch_stop_job_run([::AWSConfig]; JobName=, JobRunIds=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "BatchStopJobRun", arguments::Dict)
    glue([::AWSConfig], "BatchStopJobRun", JobName=, JobRunIds=)

# BatchStopJobRun Operation

Stops one or more job runs for a specified job definition.

# Arguments

## `JobName = ::String` -- *Required*
The name of the job definition for which to stop job runs.


## `JobRunIds = [::String, ...]` -- *Required*
A list of the JobRunIds that should be stopped for that job definition.




# Returns

`BatchStopJobRunResponse`

# Exceptions

`InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchStopJobRun)
"""
@inline batch_stop_job_run(aws::AWSConfig=default_aws_config(); args...) = batch_stop_job_run(aws, args)

@inline batch_stop_job_run(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "BatchStopJobRun", args)

@inline batch_stop_job_run(args) = batch_stop_job_run(default_aws_config(), args)


"""
    using AWSSDK.Glue.create_classifier
    create_classifier([::AWSConfig], arguments::Dict)
    create_classifier([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "CreateClassifier", arguments::Dict)
    glue([::AWSConfig], "CreateClassifier", <keyword arguments>)

# CreateClassifier Operation

Creates a classifier in the user's account. This may be a `GrokClassifier`, an `XMLClassifier`, or abbrev `JsonClassifier`, depending on which field of the request is present.

# Arguments

## `GrokClassifier = [ ... ]`
A `GrokClassifier` object specifying the classifier to create.
```
 GrokClassifier = [
        "Classification" => <required> ::String,
        "Name" => <required> ::String,
        "GrokPattern" => <required> ::String,
        "CustomPatterns" =>  ::String
    ]
```

## `XMLClassifier = [ ... ]`
An `XMLClassifier` object specifying the classifier to create.
```
 XMLClassifier = [
        "Classification" => <required> ::String,
        "Name" => <required> ::String,
        "RowTag" =>  ::String
    ]
```

## `JsonClassifier = [ ... ]`
A `JsonClassifier` object specifying the classifier to create.
```
 JsonClassifier = [
        "Name" => <required> ::String,
        "JsonPath" => <required> ::String
    ]
```



# Returns

`CreateClassifierResponse`

# Exceptions

`AlreadyExistsException`, `InvalidInputException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateClassifier)
"""
@inline create_classifier(aws::AWSConfig=default_aws_config(); args...) = create_classifier(aws, args)

@inline create_classifier(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "CreateClassifier", args)

@inline create_classifier(args) = create_classifier(default_aws_config(), args)


"""
    using AWSSDK.Glue.create_connection
    create_connection([::AWSConfig], arguments::Dict)
    create_connection([::AWSConfig]; ConnectionInput=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "CreateConnection", arguments::Dict)
    glue([::AWSConfig], "CreateConnection", ConnectionInput=, <keyword arguments>)

# CreateConnection Operation

Creates a connection definition in the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default.


## `ConnectionInput = [ ... ]` -- *Required*
A `ConnectionInput` object defining the connection to create.
```
 ConnectionInput = [
        "Name" => <required> ::String,
        "Description" =>  ::String,
        "ConnectionType" => <required> "JDBC" or "SFTP",
        "MatchCriteria" =>  [::String, ...],
        "ConnectionProperties" => <required> ::Dict{String,String},
        "PhysicalConnectionRequirements" =>  [
            "SubnetId" =>  ::String,
            "SecurityGroupIdList" =>  [::String, ...],
            "AvailabilityZone" =>  ::String
        ]
    ]
```



# Returns

`CreateConnectionResponse`

# Exceptions

`AlreadyExistsException`, `InvalidInputException`, `OperationTimeoutException` or `ResourceNumberLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateConnection)
"""
@inline create_connection(aws::AWSConfig=default_aws_config(); args...) = create_connection(aws, args)

@inline create_connection(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "CreateConnection", args)

@inline create_connection(args) = create_connection(default_aws_config(), args)


"""
    using AWSSDK.Glue.create_crawler
    create_crawler([::AWSConfig], arguments::Dict)
    create_crawler([::AWSConfig]; Name=, Role=, DatabaseName=, Targets=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "CreateCrawler", arguments::Dict)
    glue([::AWSConfig], "CreateCrawler", Name=, Role=, DatabaseName=, Targets=, <keyword arguments>)

# CreateCrawler Operation

Creates a new crawler with specified targets, role, configuration, and optional schedule. At least one crawl target must be specified, in the *s3Targets* field, the *jdbcTargets* field, or the *DynamoDBTargets* field.

# Arguments

## `Name = ::String` -- *Required*
Name of the new crawler.


## `Role = ::String` -- *Required*
The IAM role (or ARN of an IAM role) used by the new crawler to access customer resources.


## `DatabaseName = ::String` -- *Required*
The AWS Glue database where results are written, such as: `arn:aws:daylight:us-east-1::database/sometable/*`.


## `Description = ::String`
A description of the new crawler.


## `Targets = [ ... ]` -- *Required*
A list of collection of targets to crawl.
```
 Targets = [
        "S3Targets" =>  [[
            "Path" =>  ::String,
            "Exclusions" =>  [::String, ...]
        ], ...],
        "JdbcTargets" =>  [[
            "ConnectionName" =>  ::String,
            "Path" =>  ::String,
            "Exclusions" =>  [::String, ...]
        ], ...],
        "DynamoDBTargets" =>  [["Path" =>  ::String], ...]
    ]
```

## `Schedule = ::String`
A `cron` expression used to specify the schedule (see [Time-Based Schedules for Jobs and Crawlers](http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.


## `Classifiers = [::String, ...]`
A list of custom classifiers that the user has registered. By default, all built-in classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.


## `TablePrefix = ::String`
The table prefix used for catalog tables that are created.


## `SchemaChangePolicy = [ ... ]`
Policy for the crawler's update and deletion behavior.
```
 SchemaChangePolicy = [
        "UpdateBehavior" =>  "LOG" or "UPDATE_IN_DATABASE",
        "DeleteBehavior" =>  "LOG", "DELETE_FROM_DATABASE" or "DEPRECATE_IN_DATABASE"
    ]
```

## `Configuration = ::String`
Crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see [Configuring a Crawler](http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html).




# Returns

`CreateCrawlerResponse`

# Exceptions

`InvalidInputException`, `AlreadyExistsException`, `OperationTimeoutException` or `ResourceNumberLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCrawler)
"""
@inline create_crawler(aws::AWSConfig=default_aws_config(); args...) = create_crawler(aws, args)

@inline create_crawler(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "CreateCrawler", args)

@inline create_crawler(args) = create_crawler(default_aws_config(), args)


"""
    using AWSSDK.Glue.create_database
    create_database([::AWSConfig], arguments::Dict)
    create_database([::AWSConfig]; DatabaseInput=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "CreateDatabase", arguments::Dict)
    glue([::AWSConfig], "CreateDatabase", DatabaseInput=, <keyword arguments>)

# CreateDatabase Operation

Creates a new database in a Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog in which to create the database. If none is supplied, the AWS account ID is used by default.


## `DatabaseInput = [ ... ]` -- *Required*
A `DatabaseInput` object defining the metadata database to create in the catalog.
```
 DatabaseInput = [
        "Name" => <required> ::String,
        "Description" =>  ::String,
        "LocationUri" =>  ::String,
        "Parameters" =>  ::Dict{String,String}
    ]
```



# Returns

`CreateDatabaseResponse`

# Exceptions

`InvalidInputException`, `AlreadyExistsException`, `ResourceNumberLimitExceededException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDatabase)
"""
@inline create_database(aws::AWSConfig=default_aws_config(); args...) = create_database(aws, args)

@inline create_database(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "CreateDatabase", args)

@inline create_database(args) = create_database(default_aws_config(), args)


"""
    using AWSSDK.Glue.create_dev_endpoint
    create_dev_endpoint([::AWSConfig], arguments::Dict)
    create_dev_endpoint([::AWSConfig]; EndpointName=, RoleArn=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "CreateDevEndpoint", arguments::Dict)
    glue([::AWSConfig], "CreateDevEndpoint", EndpointName=, RoleArn=, <keyword arguments>)

# CreateDevEndpoint Operation

Creates a new DevEndpoint.

# Arguments

## `EndpointName = ::String` -- *Required*
The name to be assigned to the new DevEndpoint.


## `RoleArn = ::String` -- *Required*
The IAM role for the DevEndpoint.


## `SecurityGroupIds = [::String, ...]`
Security group IDs for the security groups to be used by the new DevEndpoint.


## `SubnetId = ::String`
The subnet ID for the new DevEndpoint to use.


## `PublicKey = ::String`
The public key to be used by this DevEndpoint for authentication. This attribute is provided for backward compatibility, as the recommended attribute to use is public keys.


## `PublicKeys = [::String, ...]`
A list of public keys to be used by the DevEndpoints for authentication. The use of this attribute is preferred over a single public key because the public keys allow you to have a different private key per client.

**Note**
> If you previously created an endpoint with a public key, you must remove that key to be able to set a list of public keys: call the `UpdateDevEndpoint` API with the public key content in the `deletePublicKeys` attribute, and the list of new keys in the `addPublicKeys` attribute.


## `NumberOfNodes = ::Int`
The number of AWS Glue Data Processing Units (DPUs) to allocate to this DevEndpoint.


## `ExtraPythonLibsS3Path = ::String`
Path(s) to one or more Python libraries in an S3 bucket that should be loaded in your DevEndpoint. Multiple values must be complete paths separated by a comma.

Please note that only pure Python libraries can currently be used on a DevEndpoint. Libraries that rely on C extensions, such as the [pandas](http://pandas.pydata.org/) Python data analysis library, are not yet supported.


## `ExtraJarsS3Path = ::String`
Path to one or more Java Jars in an S3 bucket that should be loaded in your DevEndpoint.




# Returns

`CreateDevEndpointResponse`

# Exceptions

`AccessDeniedException`, `AlreadyExistsException`, `IdempotentParameterMismatchException`, `InternalServiceException`, `OperationTimeoutException`, `InvalidInputException`, `ValidationException` or `ResourceNumberLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDevEndpoint)
"""
@inline create_dev_endpoint(aws::AWSConfig=default_aws_config(); args...) = create_dev_endpoint(aws, args)

@inline create_dev_endpoint(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "CreateDevEndpoint", args)

@inline create_dev_endpoint(args) = create_dev_endpoint(default_aws_config(), args)


"""
    using AWSSDK.Glue.create_job
    create_job([::AWSConfig], arguments::Dict)
    create_job([::AWSConfig]; Name=, Role=, Command=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "CreateJob", arguments::Dict)
    glue([::AWSConfig], "CreateJob", Name=, Role=, Command=, <keyword arguments>)

# CreateJob Operation

Creates a new job definition.

# Arguments

## `Name = ::String` -- *Required*
The name you assign to this job definition. It must be unique in your account.


## `Description = ::String`
Description of the job being defined.


## `LogUri = ::String`
This field is reserved for future use.


## `Role = ::String` -- *Required*
The name or ARN of the IAM role associated with this job.


## `ExecutionProperty = ["MaxConcurrentRuns" =>  ::Int]`
An ExecutionProperty specifying the maximum number of concurrent runs allowed for this job.


## `Command = [ ... ]` -- *Required*
The JobCommand that executes this job.
```
 Command = [
        "Name" =>  ::String,
        "ScriptLocation" =>  ::String
    ]
```

## `DefaultArguments = ::Dict{String,String}`
The default arguments for this job.

You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.

For information about how to specify and consume your own Job arguments, see the [Calling AWS Glue APIs in Python](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html) topic in the developer guide.

For information about the key-value pairs that AWS Glue consumes to set up your job, see the [Special Parameters Used by AWS Glue](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html) topic in the developer guide.


## `Connections = ["Connections" =>  [::String, ...]]`
The connections used for this job.


## `MaxRetries = ::Int`
The maximum number of times to retry this job if it fails.


## `AllocatedCapacity = ::Int`
The number of AWS Glue data processing units (DPUs) to allocate to this Job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the [AWS Glue pricing page](https://aws.amazon.com/glue/pricing/).


## `Timeout = ::Int`
The job timeout in minutes. The default is 2880 minutes (48 hours).


## `NotificationProperty = ["NotifyDelayAfter" =>  ::Int]`
Specifies configuration properties of a job notification.




# Returns

`CreateJobResponse`

# Exceptions

`InvalidInputException`, `IdempotentParameterMismatchException`, `AlreadyExistsException`, `InternalServiceException`, `OperationTimeoutException`, `ResourceNumberLimitExceededException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateJob)
"""
@inline create_job(aws::AWSConfig=default_aws_config(); args...) = create_job(aws, args)

@inline create_job(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "CreateJob", args)

@inline create_job(args) = create_job(default_aws_config(), args)


"""
    using AWSSDK.Glue.create_partition
    create_partition([::AWSConfig], arguments::Dict)
    create_partition([::AWSConfig]; DatabaseName=, TableName=, PartitionInput=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "CreatePartition", arguments::Dict)
    glue([::AWSConfig], "CreatePartition", DatabaseName=, TableName=, PartitionInput=, <keyword arguments>)

# CreatePartition Operation

Creates a new partition.

# Arguments

## `CatalogId = ::String`
The ID of the catalog in which the partion is to be created. Currently, this should be the AWS account ID.


## `DatabaseName = ::String` -- *Required*
The name of the metadata database in which the partition is to be created.


## `TableName = ::String` -- *Required*
The name of the metadata table in which the partition is to be created.


## `PartitionInput = [ ... ]` -- *Required*
A `PartitionInput` structure defining the partition to be created.
```
 PartitionInput = [
        "Values" =>  [::String, ...],
        "LastAccessTime" =>  timestamp,
        "StorageDescriptor" =>  [
            "Columns" =>  [[
                "Name" => <required> ::String,
                "Type" =>  ::String,
                "Comment" =>  ::String
            ], ...],
            "Location" =>  ::String,
            "InputFormat" =>  ::String,
            "OutputFormat" =>  ::String,
            "Compressed" =>  ::Bool,
            "NumberOfBuckets" =>  ::Int,
            "SerdeInfo" =>  [
                "Name" =>  ::String,
                "SerializationLibrary" =>  ::String,
                "Parameters" =>  ::Dict{String,String}
            ],
            "BucketColumns" =>  [::String, ...],
            "SortColumns" =>  [[
                "Column" => <required> ::String,
                "SortOrder" => <required> ::Int
            ], ...],
            "Parameters" =>  ::Dict{String,String},
            "SkewedInfo" =>  [
                "SkewedColumnNames" =>  [::String, ...],
                "SkewedColumnValues" =>  [::String, ...],
                "SkewedColumnValueLocationMaps" =>  ::Dict{String,String}
            ],
            "StoredAsSubDirectories" =>  ::Bool
        ],
        "Parameters" =>  ::Dict{String,String},
        "LastAnalyzedTime" =>  timestamp
    ]
```



# Returns

`CreatePartitionResponse`

# Exceptions

`InvalidInputException`, `AlreadyExistsException`, `ResourceNumberLimitExceededException`, `InternalServiceException`, `EntityNotFoundException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreatePartition)
"""
@inline create_partition(aws::AWSConfig=default_aws_config(); args...) = create_partition(aws, args)

@inline create_partition(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "CreatePartition", args)

@inline create_partition(args) = create_partition(default_aws_config(), args)


"""
    using AWSSDK.Glue.create_script
    create_script([::AWSConfig], arguments::Dict)
    create_script([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "CreateScript", arguments::Dict)
    glue([::AWSConfig], "CreateScript", <keyword arguments>)

# CreateScript Operation

Transforms a directed acyclic graph (DAG) into code.

# Arguments

## `DagNodes = [[ ... ], ...]`
A list of the nodes in the DAG.
```
 DagNodes = [[
        "Id" => <required> ::String,
        "NodeType" => <required> ::String,
        "Args" => <required> [[
            "Name" => <required> ::String,
            "Value" => <required> ::String,
            "Param" =>  ::Bool
        ], ...],
        "LineNumber" =>  ::Int
    ], ...]
```

## `DagEdges = [[ ... ], ...]`
A list of the edges in the DAG.
```
 DagEdges = [[
        "Source" => <required> ::String,
        "Target" => <required> ::String,
        "TargetParameter" =>  ::String
    ], ...]
```

## `Language = "PYTHON" or "SCALA"`
The programming language of the resulting code from the DAG.




# Returns

`CreateScriptResponse`

# Exceptions

`InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateScript)
"""
@inline create_script(aws::AWSConfig=default_aws_config(); args...) = create_script(aws, args)

@inline create_script(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "CreateScript", args)

@inline create_script(args) = create_script(default_aws_config(), args)


"""
    using AWSSDK.Glue.create_table
    create_table([::AWSConfig], arguments::Dict)
    create_table([::AWSConfig]; DatabaseName=, TableInput=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "CreateTable", arguments::Dict)
    glue([::AWSConfig], "CreateTable", DatabaseName=, TableInput=, <keyword arguments>)

# CreateTable Operation

Creates a new table definition in the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog in which to create the `Table`. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The catalog database in which to create the new table. For Hive compatibility, this name is entirely lowercase.


## `TableInput = [ ... ]` -- *Required*
The `TableInput` object that defines the metadata table to create in the catalog.
```
 TableInput = [
        "Name" => <required> ::String,
        "Description" =>  ::String,
        "Owner" =>  ::String,
        "LastAccessTime" =>  timestamp,
        "LastAnalyzedTime" =>  timestamp,
        "Retention" =>  ::Int,
        "StorageDescriptor" =>  [
            "Columns" =>  [[
                "Name" => <required> ::String,
                "Type" =>  ::String,
                "Comment" =>  ::String
            ], ...],
            "Location" =>  ::String,
            "InputFormat" =>  ::String,
            "OutputFormat" =>  ::String,
            "Compressed" =>  ::Bool,
            "NumberOfBuckets" =>  ::Int,
            "SerdeInfo" =>  [
                "Name" =>  ::String,
                "SerializationLibrary" =>  ::String,
                "Parameters" =>  ::Dict{String,String}
            ],
            "BucketColumns" =>  [::String, ...],
            "SortColumns" =>  [[
                "Column" => <required> ::String,
                "SortOrder" => <required> ::Int
            ], ...],
            "Parameters" =>  ::Dict{String,String},
            "SkewedInfo" =>  [
                "SkewedColumnNames" =>  [::String, ...],
                "SkewedColumnValues" =>  [::String, ...],
                "SkewedColumnValueLocationMaps" =>  ::Dict{String,String}
            ],
            "StoredAsSubDirectories" =>  ::Bool
        ],
        "PartitionKeys" =>  [[
            "Name" => <required> ::String,
            "Type" =>  ::String,
            "Comment" =>  ::String
        ], ...],
        "ViewOriginalText" =>  ::String,
        "ViewExpandedText" =>  ::String,
        "TableType" =>  ::String,
        "Parameters" =>  ::Dict{String,String}
    ]
```



# Returns

`CreateTableResponse`

# Exceptions

`AlreadyExistsException`, `InvalidInputException`, `EntityNotFoundException`, `ResourceNumberLimitExceededException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTable)
"""
@inline create_table(aws::AWSConfig=default_aws_config(); args...) = create_table(aws, args)

@inline create_table(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "CreateTable", args)

@inline create_table(args) = create_table(default_aws_config(), args)


"""
    using AWSSDK.Glue.create_trigger
    create_trigger([::AWSConfig], arguments::Dict)
    create_trigger([::AWSConfig]; Name=, Type=, Actions=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "CreateTrigger", arguments::Dict)
    glue([::AWSConfig], "CreateTrigger", Name=, Type=, Actions=, <keyword arguments>)

# CreateTrigger Operation

Creates a new trigger.

# Arguments

## `Name = ::String` -- *Required*
The name of the trigger.


## `Type = "SCHEDULED", "CONDITIONAL" or "ON_DEMAND"` -- *Required*
The type of the new trigger.


## `Schedule = ::String`
A `cron` expression used to specify the schedule (see [Time-Based Schedules for Jobs and Crawlers](http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.

This field is required when the trigger type is SCHEDULED.


## `Predicate = [ ... ]`
A predicate to specify when the new trigger should fire.

This field is required when the trigger type is CONDITIONAL.
```
 Predicate = [
        "Logical" =>  "AND" or "ANY",
        "Conditions" =>  [[
            "LogicalOperator" =>  "EQUALS",
            "JobName" =>  ::String,
            "State" =>  "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED" or "TIMEOUT"
        ], ...]
    ]
```

## `Actions = [[ ... ], ...]` -- *Required*
The actions initiated by this trigger when it fires.
```
 Actions = [[
        "JobName" =>  ::String,
        "Arguments" =>  ::Dict{String,String},
        "Timeout" =>  ::Int,
        "NotificationProperty" =>  ["NotifyDelayAfter" =>  ::Int]
    ], ...]
```

## `Description = ::String`
A description of the new trigger.


## `StartOnCreation = ::Bool`
Set to true to start SCHEDULED and CONDITIONAL triggers when created. True not supported for ON_DEMAND triggers.




# Returns

`CreateTriggerResponse`

# Exceptions

`AlreadyExistsException`, `InvalidInputException`, `IdempotentParameterMismatchException`, `InternalServiceException`, `OperationTimeoutException`, `ResourceNumberLimitExceededException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTrigger)
"""
@inline create_trigger(aws::AWSConfig=default_aws_config(); args...) = create_trigger(aws, args)

@inline create_trigger(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "CreateTrigger", args)

@inline create_trigger(args) = create_trigger(default_aws_config(), args)


"""
    using AWSSDK.Glue.create_user_defined_function
    create_user_defined_function([::AWSConfig], arguments::Dict)
    create_user_defined_function([::AWSConfig]; DatabaseName=, FunctionInput=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "CreateUserDefinedFunction", arguments::Dict)
    glue([::AWSConfig], "CreateUserDefinedFunction", DatabaseName=, FunctionInput=, <keyword arguments>)

# CreateUserDefinedFunction Operation

Creates a new function definition in the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog in which to create the function. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database in which to create the function.


## `FunctionInput = [ ... ]` -- *Required*
A `FunctionInput` object that defines the function to create in the Data Catalog.
```
 FunctionInput = [
        "FunctionName" =>  ::String,
        "ClassName" =>  ::String,
        "OwnerName" =>  ::String,
        "OwnerType" =>  "USER", "ROLE" or "GROUP",
        "ResourceUris" =>  [[
            "ResourceType" =>  "JAR", "FILE" or "ARCHIVE",
            "Uri" =>  ::String
        ], ...]
    ]
```



# Returns

`CreateUserDefinedFunctionResponse`

# Exceptions

`AlreadyExistsException`, `InvalidInputException`, `InternalServiceException`, `EntityNotFoundException`, `OperationTimeoutException` or `ResourceNumberLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateUserDefinedFunction)
"""
@inline create_user_defined_function(aws::AWSConfig=default_aws_config(); args...) = create_user_defined_function(aws, args)

@inline create_user_defined_function(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "CreateUserDefinedFunction", args)

@inline create_user_defined_function(args) = create_user_defined_function(default_aws_config(), args)


"""
    using AWSSDK.Glue.delete_classifier
    delete_classifier([::AWSConfig], arguments::Dict)
    delete_classifier([::AWSConfig]; Name=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "DeleteClassifier", arguments::Dict)
    glue([::AWSConfig], "DeleteClassifier", Name=)

# DeleteClassifier Operation

Removes a classifier from the Data Catalog.

# Arguments

## `Name = ::String` -- *Required*
Name of the classifier to remove.




# Returns

`DeleteClassifierResponse`

# Exceptions

`EntityNotFoundException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteClassifier)
"""
@inline delete_classifier(aws::AWSConfig=default_aws_config(); args...) = delete_classifier(aws, args)

@inline delete_classifier(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "DeleteClassifier", args)

@inline delete_classifier(args) = delete_classifier(default_aws_config(), args)


"""
    using AWSSDK.Glue.delete_connection
    delete_connection([::AWSConfig], arguments::Dict)
    delete_connection([::AWSConfig]; ConnectionName=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "DeleteConnection", arguments::Dict)
    glue([::AWSConfig], "DeleteConnection", ConnectionName=, <keyword arguments>)

# DeleteConnection Operation

Deletes a connection from the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog in which the connection resides. If none is supplied, the AWS account ID is used by default.


## `ConnectionName = ::String` -- *Required*
The name of the connection to delete.




# Returns

`DeleteConnectionResponse`

# Exceptions

`EntityNotFoundException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteConnection)
"""
@inline delete_connection(aws::AWSConfig=default_aws_config(); args...) = delete_connection(aws, args)

@inline delete_connection(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "DeleteConnection", args)

@inline delete_connection(args) = delete_connection(default_aws_config(), args)


"""
    using AWSSDK.Glue.delete_crawler
    delete_crawler([::AWSConfig], arguments::Dict)
    delete_crawler([::AWSConfig]; Name=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "DeleteCrawler", arguments::Dict)
    glue([::AWSConfig], "DeleteCrawler", Name=)

# DeleteCrawler Operation

Removes a specified crawler from the Data Catalog, unless the crawler state is `RUNNING`.

# Arguments

## `Name = ::String` -- *Required*
Name of the crawler to remove.




# Returns

`DeleteCrawlerResponse`

# Exceptions

`EntityNotFoundException`, `CrawlerRunningException`, `SchedulerTransitioningException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCrawler)
"""
@inline delete_crawler(aws::AWSConfig=default_aws_config(); args...) = delete_crawler(aws, args)

@inline delete_crawler(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "DeleteCrawler", args)

@inline delete_crawler(args) = delete_crawler(default_aws_config(), args)


"""
    using AWSSDK.Glue.delete_database
    delete_database([::AWSConfig], arguments::Dict)
    delete_database([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "DeleteDatabase", arguments::Dict)
    glue([::AWSConfig], "DeleteDatabase", Name=, <keyword arguments>)

# DeleteDatabase Operation

Removes a specified Database from a Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog in which the database resides. If none is supplied, the AWS account ID is used by default.


## `Name = ::String` -- *Required*
The name of the Database to delete. For Hive compatibility, this must be all lowercase.




# Returns

`DeleteDatabaseResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDatabase)
"""
@inline delete_database(aws::AWSConfig=default_aws_config(); args...) = delete_database(aws, args)

@inline delete_database(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "DeleteDatabase", args)

@inline delete_database(args) = delete_database(default_aws_config(), args)


"""
    using AWSSDK.Glue.delete_dev_endpoint
    delete_dev_endpoint([::AWSConfig], arguments::Dict)
    delete_dev_endpoint([::AWSConfig]; EndpointName=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "DeleteDevEndpoint", arguments::Dict)
    glue([::AWSConfig], "DeleteDevEndpoint", EndpointName=)

# DeleteDevEndpoint Operation

Deletes a specified DevEndpoint.

# Arguments

## `EndpointName = ::String` -- *Required*
The name of the DevEndpoint.




# Returns

`DeleteDevEndpointResponse`

# Exceptions

`EntityNotFoundException`, `InternalServiceException`, `OperationTimeoutException` or `InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDevEndpoint)
"""
@inline delete_dev_endpoint(aws::AWSConfig=default_aws_config(); args...) = delete_dev_endpoint(aws, args)

@inline delete_dev_endpoint(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "DeleteDevEndpoint", args)

@inline delete_dev_endpoint(args) = delete_dev_endpoint(default_aws_config(), args)


"""
    using AWSSDK.Glue.delete_job
    delete_job([::AWSConfig], arguments::Dict)
    delete_job([::AWSConfig]; JobName=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "DeleteJob", arguments::Dict)
    glue([::AWSConfig], "DeleteJob", JobName=)

# DeleteJob Operation

Deletes a specified job definition. If the job definition is not found, no exception is thrown.

# Arguments

## `JobName = ::String` -- *Required*
The name of the job definition to delete.




# Returns

`DeleteJobResponse`

# Exceptions

`InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteJob)
"""
@inline delete_job(aws::AWSConfig=default_aws_config(); args...) = delete_job(aws, args)

@inline delete_job(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "DeleteJob", args)

@inline delete_job(args) = delete_job(default_aws_config(), args)


"""
    using AWSSDK.Glue.delete_partition
    delete_partition([::AWSConfig], arguments::Dict)
    delete_partition([::AWSConfig]; DatabaseName=, TableName=, PartitionValues=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "DeletePartition", arguments::Dict)
    glue([::AWSConfig], "DeletePartition", DatabaseName=, TableName=, PartitionValues=, <keyword arguments>)

# DeletePartition Operation

Deletes a specified partition.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the partition to be deleted resides. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database in which the table in question resides.


## `TableName = ::String` -- *Required*
The name of the table where the partition to be deleted is located.


## `PartitionValues = [::String, ...]` -- *Required*
The values that define the partition.




# Returns

`DeletePartitionResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeletePartition)
"""
@inline delete_partition(aws::AWSConfig=default_aws_config(); args...) = delete_partition(aws, args)

@inline delete_partition(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "DeletePartition", args)

@inline delete_partition(args) = delete_partition(default_aws_config(), args)


"""
    using AWSSDK.Glue.delete_table
    delete_table([::AWSConfig], arguments::Dict)
    delete_table([::AWSConfig]; DatabaseName=, Name=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "DeleteTable", arguments::Dict)
    glue([::AWSConfig], "DeleteTable", DatabaseName=, Name=, <keyword arguments>)

# DeleteTable Operation

Removes a table definition from the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the table resides. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.


## `Name = ::String` -- *Required*
The name of the table to be deleted. For Hive compatibility, this name is entirely lowercase.




# Returns

`DeleteTableResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTable)
"""
@inline delete_table(aws::AWSConfig=default_aws_config(); args...) = delete_table(aws, args)

@inline delete_table(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "DeleteTable", args)

@inline delete_table(args) = delete_table(default_aws_config(), args)


"""
    using AWSSDK.Glue.delete_table_version
    delete_table_version([::AWSConfig], arguments::Dict)
    delete_table_version([::AWSConfig]; DatabaseName=, TableName=, VersionId=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "DeleteTableVersion", arguments::Dict)
    glue([::AWSConfig], "DeleteTableVersion", DatabaseName=, TableName=, VersionId=, <keyword arguments>)

# DeleteTableVersion Operation

Deletes a specified version of a table.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.


## `TableName = ::String` -- *Required*
The name of the table. For Hive compatibility, this name is entirely lowercase.


## `VersionId = ::String` -- *Required*
The ID of the table version to be deleted.




# Returns

`DeleteTableVersionResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableVersion)
"""
@inline delete_table_version(aws::AWSConfig=default_aws_config(); args...) = delete_table_version(aws, args)

@inline delete_table_version(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "DeleteTableVersion", args)

@inline delete_table_version(args) = delete_table_version(default_aws_config(), args)


"""
    using AWSSDK.Glue.delete_trigger
    delete_trigger([::AWSConfig], arguments::Dict)
    delete_trigger([::AWSConfig]; Name=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "DeleteTrigger", arguments::Dict)
    glue([::AWSConfig], "DeleteTrigger", Name=)

# DeleteTrigger Operation

Deletes a specified trigger. If the trigger is not found, no exception is thrown.

# Arguments

## `Name = ::String` -- *Required*
The name of the trigger to delete.




# Returns

`DeleteTriggerResponse`

# Exceptions

`InvalidInputException`, `InternalServiceException`, `OperationTimeoutException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTrigger)
"""
@inline delete_trigger(aws::AWSConfig=default_aws_config(); args...) = delete_trigger(aws, args)

@inline delete_trigger(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "DeleteTrigger", args)

@inline delete_trigger(args) = delete_trigger(default_aws_config(), args)


"""
    using AWSSDK.Glue.delete_user_defined_function
    delete_user_defined_function([::AWSConfig], arguments::Dict)
    delete_user_defined_function([::AWSConfig]; DatabaseName=, FunctionName=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "DeleteUserDefinedFunction", arguments::Dict)
    glue([::AWSConfig], "DeleteUserDefinedFunction", DatabaseName=, FunctionName=, <keyword arguments>)

# DeleteUserDefinedFunction Operation

Deletes an existing function definition from the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the function to be deleted is located. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database where the function is located.


## `FunctionName = ::String` -- *Required*
The name of the function definition to be deleted.




# Returns

`DeleteUserDefinedFunctionResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteUserDefinedFunction)
"""
@inline delete_user_defined_function(aws::AWSConfig=default_aws_config(); args...) = delete_user_defined_function(aws, args)

@inline delete_user_defined_function(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "DeleteUserDefinedFunction", args)

@inline delete_user_defined_function(args) = delete_user_defined_function(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_catalog_import_status
    get_catalog_import_status([::AWSConfig], arguments::Dict)
    get_catalog_import_status([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetCatalogImportStatus", arguments::Dict)
    glue([::AWSConfig], "GetCatalogImportStatus", <keyword arguments>)

# GetCatalogImportStatus Operation

Retrieves the status of a migration operation.

# Arguments

## `CatalogId = ::String`
The ID of the catalog to migrate. Currently, this should be the AWS account ID.




# Returns

`GetCatalogImportStatusResponse`

# Exceptions

`InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogImportStatus)
"""
@inline get_catalog_import_status(aws::AWSConfig=default_aws_config(); args...) = get_catalog_import_status(aws, args)

@inline get_catalog_import_status(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetCatalogImportStatus", args)

@inline get_catalog_import_status(args) = get_catalog_import_status(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_classifier
    get_classifier([::AWSConfig], arguments::Dict)
    get_classifier([::AWSConfig]; Name=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetClassifier", arguments::Dict)
    glue([::AWSConfig], "GetClassifier", Name=)

# GetClassifier Operation

Retrieve a classifier by name.

# Arguments

## `Name = ::String` -- *Required*
Name of the classifier to retrieve.




# Returns

`GetClassifierResponse`

# Exceptions

`EntityNotFoundException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifier)
"""
@inline get_classifier(aws::AWSConfig=default_aws_config(); args...) = get_classifier(aws, args)

@inline get_classifier(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetClassifier", args)

@inline get_classifier(args) = get_classifier(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_classifiers
    get_classifiers([::AWSConfig], arguments::Dict)
    get_classifiers([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetClassifiers", arguments::Dict)
    glue([::AWSConfig], "GetClassifiers", <keyword arguments>)

# GetClassifiers Operation

Lists all classifier objects in the Data Catalog.

# Arguments

## `MaxResults = ::Int`
Size of the list to return (optional).


## `NextToken = ::String`
An optional continuation token.




# Returns

`GetClassifiersResponse`

# Exceptions

`OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifiers)
"""
@inline get_classifiers(aws::AWSConfig=default_aws_config(); args...) = get_classifiers(aws, args)

@inline get_classifiers(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetClassifiers", args)

@inline get_classifiers(args) = get_classifiers(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_connection
    get_connection([::AWSConfig], arguments::Dict)
    get_connection([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetConnection", arguments::Dict)
    glue([::AWSConfig], "GetConnection", Name=, <keyword arguments>)

# GetConnection Operation

Retrieves a connection definition from the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog in which the connection resides. If none is supplied, the AWS account ID is used by default.


## `Name = ::String` -- *Required*
The name of the connection definition to retrieve.




# Returns

`GetConnectionResponse`

# Exceptions

`EntityNotFoundException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnection)
"""
@inline get_connection(aws::AWSConfig=default_aws_config(); args...) = get_connection(aws, args)

@inline get_connection(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetConnection", args)

@inline get_connection(args) = get_connection(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_connections
    get_connections([::AWSConfig], arguments::Dict)
    get_connections([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetConnections", arguments::Dict)
    glue([::AWSConfig], "GetConnections", <keyword arguments>)

# GetConnections Operation

Retrieves a list of connection definitions from the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog in which the connections reside. If none is supplied, the AWS account ID is used by default.


## `Filter = [ ... ]`
A filter that controls which connections will be returned.
```
 Filter = [
        "MatchCriteria" =>  [::String, ...],
        "ConnectionType" =>  "JDBC" or "SFTP"
    ]
```

## `NextToken = ::String`
A continuation token, if this is a continuation call.


## `MaxResults = ::Int`
The maximum number of connections to return in one response.




# Returns

`GetConnectionsResponse`

# Exceptions

`EntityNotFoundException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnections)
"""
@inline get_connections(aws::AWSConfig=default_aws_config(); args...) = get_connections(aws, args)

@inline get_connections(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetConnections", args)

@inline get_connections(args) = get_connections(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_crawler
    get_crawler([::AWSConfig], arguments::Dict)
    get_crawler([::AWSConfig]; Name=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetCrawler", arguments::Dict)
    glue([::AWSConfig], "GetCrawler", Name=)

# GetCrawler Operation

Retrieves metadata for a specified crawler.

# Arguments

## `Name = ::String` -- *Required*
Name of the crawler to retrieve metadata for.




# Returns

`GetCrawlerResponse`

# Exceptions

`EntityNotFoundException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawler)
"""
@inline get_crawler(aws::AWSConfig=default_aws_config(); args...) = get_crawler(aws, args)

@inline get_crawler(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetCrawler", args)

@inline get_crawler(args) = get_crawler(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_crawler_metrics
    get_crawler_metrics([::AWSConfig], arguments::Dict)
    get_crawler_metrics([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetCrawlerMetrics", arguments::Dict)
    glue([::AWSConfig], "GetCrawlerMetrics", <keyword arguments>)

# GetCrawlerMetrics Operation

Retrieves metrics about specified crawlers.

# Arguments

## `CrawlerNameList = [::String, ...]`
A list of the names of crawlers about which to retrieve metrics.


## `MaxResults = ::Int`
The maximum size of a list to return.


## `NextToken = ::String`
A continuation token, if this is a continuation call.




# Returns

`GetCrawlerMetricsResponse`

# Exceptions

`OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerMetrics)
"""
@inline get_crawler_metrics(aws::AWSConfig=default_aws_config(); args...) = get_crawler_metrics(aws, args)

@inline get_crawler_metrics(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetCrawlerMetrics", args)

@inline get_crawler_metrics(args) = get_crawler_metrics(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_crawlers
    get_crawlers([::AWSConfig], arguments::Dict)
    get_crawlers([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetCrawlers", arguments::Dict)
    glue([::AWSConfig], "GetCrawlers", <keyword arguments>)

# GetCrawlers Operation

Retrieves metadata for all crawlers defined in the customer account.

# Arguments

## `MaxResults = ::Int`
The number of crawlers to return on each call.


## `NextToken = ::String`
A continuation token, if this is a continuation request.




# Returns

`GetCrawlersResponse`

# Exceptions

`OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlers)
"""
@inline get_crawlers(aws::AWSConfig=default_aws_config(); args...) = get_crawlers(aws, args)

@inline get_crawlers(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetCrawlers", args)

@inline get_crawlers(args) = get_crawlers(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_database
    get_database([::AWSConfig], arguments::Dict)
    get_database([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetDatabase", arguments::Dict)
    glue([::AWSConfig], "GetDatabase", Name=, <keyword arguments>)

# GetDatabase Operation

Retrieves the definition of a specified database.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog in which the database resides. If none is supplied, the AWS account ID is used by default.


## `Name = ::String` -- *Required*
The name of the database to retrieve. For Hive compatibility, this should be all lowercase.




# Returns

`GetDatabaseResponse`

# Exceptions

`InvalidInputException`, `EntityNotFoundException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabase)
"""
@inline get_database(aws::AWSConfig=default_aws_config(); args...) = get_database(aws, args)

@inline get_database(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetDatabase", args)

@inline get_database(args) = get_database(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_databases
    get_databases([::AWSConfig], arguments::Dict)
    get_databases([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetDatabases", arguments::Dict)
    glue([::AWSConfig], "GetDatabases", <keyword arguments>)

# GetDatabases Operation

Retrieves all Databases defined in a given Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog from which to retrieve `Databases`. If none is supplied, the AWS account ID is used by default.


## `NextToken = ::String`
A continuation token, if this is a continuation call.


## `MaxResults = ::Int`
The maximum number of databases to return in one response.




# Returns

`GetDatabasesResponse`

# Exceptions

`InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabases)
"""
@inline get_databases(aws::AWSConfig=default_aws_config(); args...) = get_databases(aws, args)

@inline get_databases(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetDatabases", args)

@inline get_databases(args) = get_databases(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_dataflow_graph
    get_dataflow_graph([::AWSConfig], arguments::Dict)
    get_dataflow_graph([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetDataflowGraph", arguments::Dict)
    glue([::AWSConfig], "GetDataflowGraph", <keyword arguments>)

# GetDataflowGraph Operation

Transforms a Python script into a directed acyclic graph (DAG).

# Arguments

## `PythonScript = ::String`
The Python script to transform.




# Returns

`GetDataflowGraphResponse`

# Exceptions

`InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataflowGraph)
"""
@inline get_dataflow_graph(aws::AWSConfig=default_aws_config(); args...) = get_dataflow_graph(aws, args)

@inline get_dataflow_graph(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetDataflowGraph", args)

@inline get_dataflow_graph(args) = get_dataflow_graph(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_dev_endpoint
    get_dev_endpoint([::AWSConfig], arguments::Dict)
    get_dev_endpoint([::AWSConfig]; EndpointName=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetDevEndpoint", arguments::Dict)
    glue([::AWSConfig], "GetDevEndpoint", EndpointName=)

# GetDevEndpoint Operation

Retrieves information about a specified DevEndpoint.

# Arguments

## `EndpointName = ::String` -- *Required*
Name of the DevEndpoint for which to retrieve information.




# Returns

`GetDevEndpointResponse`

# Exceptions

`EntityNotFoundException`, `InternalServiceException`, `OperationTimeoutException` or `InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpoint)
"""
@inline get_dev_endpoint(aws::AWSConfig=default_aws_config(); args...) = get_dev_endpoint(aws, args)

@inline get_dev_endpoint(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetDevEndpoint", args)

@inline get_dev_endpoint(args) = get_dev_endpoint(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_dev_endpoints
    get_dev_endpoints([::AWSConfig], arguments::Dict)
    get_dev_endpoints([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetDevEndpoints", arguments::Dict)
    glue([::AWSConfig], "GetDevEndpoints", <keyword arguments>)

# GetDevEndpoints Operation

Retrieves all the DevEndpoints in this AWS account.

# Arguments

## `MaxResults = ::Int`
The maximum size of information to return.


## `NextToken = ::String`
A continuation token, if this is a continuation call.




# Returns

`GetDevEndpointsResponse`

# Exceptions

`EntityNotFoundException`, `InternalServiceException`, `OperationTimeoutException` or `InvalidInputException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpoints)
"""
@inline get_dev_endpoints(aws::AWSConfig=default_aws_config(); args...) = get_dev_endpoints(aws, args)

@inline get_dev_endpoints(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetDevEndpoints", args)

@inline get_dev_endpoints(args) = get_dev_endpoints(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_job
    get_job([::AWSConfig], arguments::Dict)
    get_job([::AWSConfig]; JobName=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetJob", arguments::Dict)
    glue([::AWSConfig], "GetJob", JobName=)

# GetJob Operation

Retrieves an existing job definition.

# Arguments

## `JobName = ::String` -- *Required*
The name of the job definition to retrieve.




# Returns

`GetJobResponse`

# Exceptions

`InvalidInputException`, `EntityNotFoundException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJob)
"""
@inline get_job(aws::AWSConfig=default_aws_config(); args...) = get_job(aws, args)

@inline get_job(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetJob", args)

@inline get_job(args) = get_job(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_job_run
    get_job_run([::AWSConfig], arguments::Dict)
    get_job_run([::AWSConfig]; JobName=, RunId=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetJobRun", arguments::Dict)
    glue([::AWSConfig], "GetJobRun", JobName=, RunId=, <keyword arguments>)

# GetJobRun Operation

Retrieves the metadata for a given job run.

# Arguments

## `JobName = ::String` -- *Required*
Name of the job definition being run.


## `RunId = ::String` -- *Required*
The ID of the job run.


## `PredecessorsIncluded = ::Bool`
True if a list of predecessor runs should be returned.




# Returns

`GetJobRunResponse`

# Exceptions

`InvalidInputException`, `EntityNotFoundException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRun)
"""
@inline get_job_run(aws::AWSConfig=default_aws_config(); args...) = get_job_run(aws, args)

@inline get_job_run(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetJobRun", args)

@inline get_job_run(args) = get_job_run(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_job_runs
    get_job_runs([::AWSConfig], arguments::Dict)
    get_job_runs([::AWSConfig]; JobName=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetJobRuns", arguments::Dict)
    glue([::AWSConfig], "GetJobRuns", JobName=, <keyword arguments>)

# GetJobRuns Operation

Retrieves metadata for all runs of a given job definition.

# Arguments

## `JobName = ::String` -- *Required*
The name of the job definition for which to retrieve all job runs.


## `NextToken = ::String`
A continuation token, if this is a continuation call.


## `MaxResults = ::Int`
The maximum size of the response.




# Returns

`GetJobRunsResponse`

# Exceptions

`InvalidInputException`, `EntityNotFoundException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRuns)
"""
@inline get_job_runs(aws::AWSConfig=default_aws_config(); args...) = get_job_runs(aws, args)

@inline get_job_runs(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetJobRuns", args)

@inline get_job_runs(args) = get_job_runs(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_jobs
    get_jobs([::AWSConfig], arguments::Dict)
    get_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetJobs", arguments::Dict)
    glue([::AWSConfig], "GetJobs", <keyword arguments>)

# GetJobs Operation

Retrieves all current job definitions.

# Arguments

## `NextToken = ::String`
A continuation token, if this is a continuation call.


## `MaxResults = ::Int`
The maximum size of the response.




# Returns

`GetJobsResponse`

# Exceptions

`InvalidInputException`, `EntityNotFoundException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobs)
"""
@inline get_jobs(aws::AWSConfig=default_aws_config(); args...) = get_jobs(aws, args)

@inline get_jobs(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetJobs", args)

@inline get_jobs(args) = get_jobs(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_mapping
    get_mapping([::AWSConfig], arguments::Dict)
    get_mapping([::AWSConfig]; Source=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetMapping", arguments::Dict)
    glue([::AWSConfig], "GetMapping", Source=, <keyword arguments>)

# GetMapping Operation

Creates mappings.

# Arguments

## `Source = [ ... ]` -- *Required*
Specifies the source table.
```
 Source = [
        "DatabaseName" => <required> ::String,
        "TableName" => <required> ::String
    ]
```

## `Sinks = [[ ... ], ...]`
A list of target tables.
```
 Sinks = [[
        "DatabaseName" => <required> ::String,
        "TableName" => <required> ::String
    ], ...]
```

## `Location = [ ... ]`
Parameters for the mapping.
```
 Location = [
        "Jdbc" =>  [[
            "Name" => <required> ::String,
            "Value" => <required> ::String,
            "Param" =>  ::Bool
        ], ...],
        "S3" =>  [[
            "Name" => <required> ::String,
            "Value" => <required> ::String,
            "Param" =>  ::Bool
        ], ...],
        "DynamoDB" =>  [[
            "Name" => <required> ::String,
            "Value" => <required> ::String,
            "Param" =>  ::Bool
        ], ...]
    ]
```



# Returns

`GetMappingResponse`

# Exceptions

`InvalidInputException`, `InternalServiceException`, `OperationTimeoutException` or `EntityNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMapping)
"""
@inline get_mapping(aws::AWSConfig=default_aws_config(); args...) = get_mapping(aws, args)

@inline get_mapping(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetMapping", args)

@inline get_mapping(args) = get_mapping(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_partition
    get_partition([::AWSConfig], arguments::Dict)
    get_partition([::AWSConfig]; DatabaseName=, TableName=, PartitionValues=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetPartition", arguments::Dict)
    glue([::AWSConfig], "GetPartition", DatabaseName=, TableName=, PartitionValues=, <keyword arguments>)

# GetPartition Operation

Retrieves information about a specified partition.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the partition in question resides. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database where the partition resides.


## `TableName = ::String` -- *Required*
The name of the partition's table.


## `PartitionValues = [::String, ...]` -- *Required*
The values that define the partition.




# Returns

`GetPartitionResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartition)
"""
@inline get_partition(aws::AWSConfig=default_aws_config(); args...) = get_partition(aws, args)

@inline get_partition(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetPartition", args)

@inline get_partition(args) = get_partition(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_partitions
    get_partitions([::AWSConfig], arguments::Dict)
    get_partitions([::AWSConfig]; DatabaseName=, TableName=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetPartitions", arguments::Dict)
    glue([::AWSConfig], "GetPartitions", DatabaseName=, TableName=, <keyword arguments>)

# GetPartitions Operation

Retrieves information about the partitions in a table.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database where the partitions reside.


## `TableName = ::String` -- *Required*
The name of the partitions' table.


## `Expression = ::String`
An expression filtering the partitions to be returned.


## `NextToken = ::String`
A continuation token, if this is not the first call to retrieve these partitions.


## `Segment = [ ... ]`
The segment of the table's partitions to scan in this request.
```
 Segment = [
        "SegmentNumber" => <required> ::Int,
        "TotalSegments" => <required> ::Int
    ]
```

## `MaxResults = ::Int`
The maximum number of partitions to return in a single response.




# Returns

`GetPartitionsResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `OperationTimeoutException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitions)
"""
@inline get_partitions(aws::AWSConfig=default_aws_config(); args...) = get_partitions(aws, args)

@inline get_partitions(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetPartitions", args)

@inline get_partitions(args) = get_partitions(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_plan
    get_plan([::AWSConfig], arguments::Dict)
    get_plan([::AWSConfig]; Mapping=, Source=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetPlan", arguments::Dict)
    glue([::AWSConfig], "GetPlan", Mapping=, Source=, <keyword arguments>)

# GetPlan Operation

Gets code to perform a specified mapping.

# Arguments

## `Mapping = [[ ... ], ...]` -- *Required*
The list of mappings from a source table to target tables.
```
 Mapping = [[
        "SourceTable" =>  ::String,
        "SourcePath" =>  ::String,
        "SourceType" =>  ::String,
        "TargetTable" =>  ::String,
        "TargetPath" =>  ::String,
        "TargetType" =>  ::String
    ], ...]
```

## `Source = [ ... ]` -- *Required*
The source table.
```
 Source = [
        "DatabaseName" => <required> ::String,
        "TableName" => <required> ::String
    ]
```

## `Sinks = [[ ... ], ...]`
The target tables.
```
 Sinks = [[
        "DatabaseName" => <required> ::String,
        "TableName" => <required> ::String
    ], ...]
```

## `Location = [ ... ]`
Parameters for the mapping.
```
 Location = [
        "Jdbc" =>  [[
            "Name" => <required> ::String,
            "Value" => <required> ::String,
            "Param" =>  ::Bool
        ], ...],
        "S3" =>  [[
            "Name" => <required> ::String,
            "Value" => <required> ::String,
            "Param" =>  ::Bool
        ], ...],
        "DynamoDB" =>  [[
            "Name" => <required> ::String,
            "Value" => <required> ::String,
            "Param" =>  ::Bool
        ], ...]
    ]
```

## `Language = "PYTHON" or "SCALA"`
The programming language of the code to perform the mapping.




# Returns

`GetPlanResponse`

# Exceptions

`InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPlan)
"""
@inline get_plan(aws::AWSConfig=default_aws_config(); args...) = get_plan(aws, args)

@inline get_plan(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetPlan", args)

@inline get_plan(args) = get_plan(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_table
    get_table([::AWSConfig], arguments::Dict)
    get_table([::AWSConfig]; DatabaseName=, Name=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetTable", arguments::Dict)
    glue([::AWSConfig], "GetTable", DatabaseName=, Name=, <keyword arguments>)

# GetTable Operation

Retrieves the `Table` definition in a Data Catalog for a specified table.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the table resides. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.


## `Name = ::String` -- *Required*
The name of the table for which to retrieve the definition. For Hive compatibility, this name is entirely lowercase.




# Returns

`GetTableResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTable)
"""
@inline get_table(aws::AWSConfig=default_aws_config(); args...) = get_table(aws, args)

@inline get_table(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetTable", args)

@inline get_table(args) = get_table(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_table_version
    get_table_version([::AWSConfig], arguments::Dict)
    get_table_version([::AWSConfig]; DatabaseName=, TableName=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetTableVersion", arguments::Dict)
    glue([::AWSConfig], "GetTableVersion", DatabaseName=, TableName=, <keyword arguments>)

# GetTableVersion Operation

Retrieves a specified version of a table.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.


## `TableName = ::String` -- *Required*
The name of the table. For Hive compatibility, this name is entirely lowercase.


## `VersionId = ::String`
The ID value of the table version to be retrieved.




# Returns

`GetTableVersionResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersion)
"""
@inline get_table_version(aws::AWSConfig=default_aws_config(); args...) = get_table_version(aws, args)

@inline get_table_version(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetTableVersion", args)

@inline get_table_version(args) = get_table_version(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_table_versions
    get_table_versions([::AWSConfig], arguments::Dict)
    get_table_versions([::AWSConfig]; DatabaseName=, TableName=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetTableVersions", arguments::Dict)
    glue([::AWSConfig], "GetTableVersions", DatabaseName=, TableName=, <keyword arguments>)

# GetTableVersions Operation

Retrieves a list of strings that identify available versions of a specified table.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.


## `TableName = ::String` -- *Required*
The name of the table. For Hive compatibility, this name is entirely lowercase.


## `NextToken = ::String`
A continuation token, if this is not the first call.


## `MaxResults = ::Int`
The maximum number of table versions to return in one response.




# Returns

`GetTableVersionsResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersions)
"""
@inline get_table_versions(aws::AWSConfig=default_aws_config(); args...) = get_table_versions(aws, args)

@inline get_table_versions(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetTableVersions", args)

@inline get_table_versions(args) = get_table_versions(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_tables
    get_tables([::AWSConfig], arguments::Dict)
    get_tables([::AWSConfig]; DatabaseName=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetTables", arguments::Dict)
    glue([::AWSConfig], "GetTables", DatabaseName=, <keyword arguments>)

# GetTables Operation

Retrieves the definitions of some or all of the tables in a given `Database`.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The database in the catalog whose tables to list. For Hive compatibility, this name is entirely lowercase.


## `Expression = ::String`
A regular expression pattern. If present, only those tables whose names match the pattern are returned.


## `NextToken = ::String`
A continuation token, included if this is a continuation call.


## `MaxResults = ::Int`
The maximum number of tables to return in a single response.




# Returns

`GetTablesResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `OperationTimeoutException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTables)
"""
@inline get_tables(aws::AWSConfig=default_aws_config(); args...) = get_tables(aws, args)

@inline get_tables(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetTables", args)

@inline get_tables(args) = get_tables(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_trigger
    get_trigger([::AWSConfig], arguments::Dict)
    get_trigger([::AWSConfig]; Name=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetTrigger", arguments::Dict)
    glue([::AWSConfig], "GetTrigger", Name=)

# GetTrigger Operation

Retrieves the definition of a trigger.

# Arguments

## `Name = ::String` -- *Required*
The name of the trigger to retrieve.




# Returns

`GetTriggerResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTrigger)
"""
@inline get_trigger(aws::AWSConfig=default_aws_config(); args...) = get_trigger(aws, args)

@inline get_trigger(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetTrigger", args)

@inline get_trigger(args) = get_trigger(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_triggers
    get_triggers([::AWSConfig], arguments::Dict)
    get_triggers([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetTriggers", arguments::Dict)
    glue([::AWSConfig], "GetTriggers", <keyword arguments>)

# GetTriggers Operation

Gets all the triggers associated with a job.

# Arguments

## `NextToken = ::String`
A continuation token, if this is a continuation call.


## `DependentJobName = ::String`
The name of the job for which to retrieve triggers. The trigger that can start this job will be returned, and if there is no such trigger, all triggers will be returned.


## `MaxResults = ::Int`
The maximum size of the response.




# Returns

`GetTriggersResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggers)
"""
@inline get_triggers(aws::AWSConfig=default_aws_config(); args...) = get_triggers(aws, args)

@inline get_triggers(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetTriggers", args)

@inline get_triggers(args) = get_triggers(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_user_defined_function
    get_user_defined_function([::AWSConfig], arguments::Dict)
    get_user_defined_function([::AWSConfig]; DatabaseName=, FunctionName=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetUserDefinedFunction", arguments::Dict)
    glue([::AWSConfig], "GetUserDefinedFunction", DatabaseName=, FunctionName=, <keyword arguments>)

# GetUserDefinedFunction Operation

Retrieves a specified function definition from the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the function to be retrieved is located. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database where the function is located.


## `FunctionName = ::String` -- *Required*
The name of the function.




# Returns

`GetUserDefinedFunctionResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunction)
"""
@inline get_user_defined_function(aws::AWSConfig=default_aws_config(); args...) = get_user_defined_function(aws, args)

@inline get_user_defined_function(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetUserDefinedFunction", args)

@inline get_user_defined_function(args) = get_user_defined_function(default_aws_config(), args)


"""
    using AWSSDK.Glue.get_user_defined_functions
    get_user_defined_functions([::AWSConfig], arguments::Dict)
    get_user_defined_functions([::AWSConfig]; DatabaseName=, Pattern=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "GetUserDefinedFunctions", arguments::Dict)
    glue([::AWSConfig], "GetUserDefinedFunctions", DatabaseName=, Pattern=, <keyword arguments>)

# GetUserDefinedFunctions Operation

Retrieves a multiple function definitions from the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the functions to be retrieved are located. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database where the functions are located.


## `Pattern = ::String` -- *Required*
An optional function-name pattern string that filters the function definitions returned.


## `NextToken = ::String`
A continuation token, if this is a continuation call.


## `MaxResults = ::Int`
The maximum number of functions to return in one response.




# Returns

`GetUserDefinedFunctionsResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `OperationTimeoutException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctions)
"""
@inline get_user_defined_functions(aws::AWSConfig=default_aws_config(); args...) = get_user_defined_functions(aws, args)

@inline get_user_defined_functions(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "GetUserDefinedFunctions", args)

@inline get_user_defined_functions(args) = get_user_defined_functions(default_aws_config(), args)


"""
    using AWSSDK.Glue.import_catalog_to_glue
    import_catalog_to_glue([::AWSConfig], arguments::Dict)
    import_catalog_to_glue([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "ImportCatalogToGlue", arguments::Dict)
    glue([::AWSConfig], "ImportCatalogToGlue", <keyword arguments>)

# ImportCatalogToGlue Operation

Imports an existing Athena Data Catalog to AWS Glue

# Arguments

## `CatalogId = ::String`
The ID of the catalog to import. Currently, this should be the AWS account ID.




# Returns

`ImportCatalogToGlueResponse`

# Exceptions

`InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ImportCatalogToGlue)
"""
@inline import_catalog_to_glue(aws::AWSConfig=default_aws_config(); args...) = import_catalog_to_glue(aws, args)

@inline import_catalog_to_glue(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "ImportCatalogToGlue", args)

@inline import_catalog_to_glue(args) = import_catalog_to_glue(default_aws_config(), args)


"""
    using AWSSDK.Glue.reset_job_bookmark
    reset_job_bookmark([::AWSConfig], arguments::Dict)
    reset_job_bookmark([::AWSConfig]; JobName=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "ResetJobBookmark", arguments::Dict)
    glue([::AWSConfig], "ResetJobBookmark", JobName=)

# ResetJobBookmark Operation

Resets a bookmark entry.

# Arguments

## `JobName = ::String` -- *Required*
The name of the job in question.




# Returns

`ResetJobBookmarkResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResetJobBookmark)
"""
@inline reset_job_bookmark(aws::AWSConfig=default_aws_config(); args...) = reset_job_bookmark(aws, args)

@inline reset_job_bookmark(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "ResetJobBookmark", args)

@inline reset_job_bookmark(args) = reset_job_bookmark(default_aws_config(), args)


"""
    using AWSSDK.Glue.start_crawler
    start_crawler([::AWSConfig], arguments::Dict)
    start_crawler([::AWSConfig]; Name=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "StartCrawler", arguments::Dict)
    glue([::AWSConfig], "StartCrawler", Name=)

# StartCrawler Operation

Starts a crawl using the specified crawler, regardless of what is scheduled. If the crawler is already running, returns a [CrawlerRunningException](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException).

# Arguments

## `Name = ::String` -- *Required*
Name of the crawler to start.




# Returns

`StartCrawlerResponse`

# Exceptions

`EntityNotFoundException`, `CrawlerRunningException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawler)
"""
@inline start_crawler(aws::AWSConfig=default_aws_config(); args...) = start_crawler(aws, args)

@inline start_crawler(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "StartCrawler", args)

@inline start_crawler(args) = start_crawler(default_aws_config(), args)


"""
    using AWSSDK.Glue.start_crawler_schedule
    start_crawler_schedule([::AWSConfig], arguments::Dict)
    start_crawler_schedule([::AWSConfig]; CrawlerName=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "StartCrawlerSchedule", arguments::Dict)
    glue([::AWSConfig], "StartCrawlerSchedule", CrawlerName=)

# StartCrawlerSchedule Operation

Changes the schedule state of the specified crawler to `SCHEDULED`, unless the crawler is already running or the schedule state is already `SCHEDULED`.

# Arguments

## `CrawlerName = ::String` -- *Required*
Name of the crawler to schedule.




# Returns

`StartCrawlerScheduleResponse`

# Exceptions

`EntityNotFoundException`, `SchedulerRunningException`, `SchedulerTransitioningException`, `NoScheduleException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerSchedule)
"""
@inline start_crawler_schedule(aws::AWSConfig=default_aws_config(); args...) = start_crawler_schedule(aws, args)

@inline start_crawler_schedule(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "StartCrawlerSchedule", args)

@inline start_crawler_schedule(args) = start_crawler_schedule(default_aws_config(), args)


"""
    using AWSSDK.Glue.start_job_run
    start_job_run([::AWSConfig], arguments::Dict)
    start_job_run([::AWSConfig]; JobName=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "StartJobRun", arguments::Dict)
    glue([::AWSConfig], "StartJobRun", JobName=, <keyword arguments>)

# StartJobRun Operation

Starts a job run using a job definition.

# Arguments

## `JobName = ::String` -- *Required*
The name of the job definition to use.


## `JobRunId = ::String`
The ID of a previous JobRun to retry.


## `Arguments = ::Dict{String,String}`
The job arguments specifically for this run. They override the equivalent default arguments set for in the job definition itself.

You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.

For information about how to specify and consume your own Job arguments, see the [Calling AWS Glue APIs in Python](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html) topic in the developer guide.

For information about the key-value pairs that AWS Glue consumes to set up your job, see the [Special Parameters Used by AWS Glue](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html) topic in the developer guide.


## `AllocatedCapacity = ::Int`
The number of AWS Glue data processing units (DPUs) to allocate to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the [AWS Glue pricing page](https://aws.amazon.com/glue/pricing/).


## `Timeout = ::Int`
The job run timeout in minutes. It overrides the timeout value of the job.


## `NotificationProperty = ["NotifyDelayAfter" =>  ::Int]`
Specifies configuration properties of a job run notification.




# Returns

`StartJobRunResponse`

# Exceptions

`InvalidInputException`, `EntityNotFoundException`, `InternalServiceException`, `OperationTimeoutException`, `ResourceNumberLimitExceededException` or `ConcurrentRunsExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartJobRun)
"""
@inline start_job_run(aws::AWSConfig=default_aws_config(); args...) = start_job_run(aws, args)

@inline start_job_run(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "StartJobRun", args)

@inline start_job_run(args) = start_job_run(default_aws_config(), args)


"""
    using AWSSDK.Glue.start_trigger
    start_trigger([::AWSConfig], arguments::Dict)
    start_trigger([::AWSConfig]; Name=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "StartTrigger", arguments::Dict)
    glue([::AWSConfig], "StartTrigger", Name=)

# StartTrigger Operation

Starts an existing trigger. See [Triggering Jobs](http://docs.aws.amazon.com/glue/latest/dg/trigger-job.html) for information about how different types of trigger are started.

# Arguments

## `Name = ::String` -- *Required*
The name of the trigger to start.




# Returns

`StartTriggerResponse`

# Exceptions

`InvalidInputException`, `InternalServiceException`, `EntityNotFoundException`, `OperationTimeoutException`, `ResourceNumberLimitExceededException` or `ConcurrentRunsExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartTrigger)
"""
@inline start_trigger(aws::AWSConfig=default_aws_config(); args...) = start_trigger(aws, args)

@inline start_trigger(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "StartTrigger", args)

@inline start_trigger(args) = start_trigger(default_aws_config(), args)


"""
    using AWSSDK.Glue.stop_crawler
    stop_crawler([::AWSConfig], arguments::Dict)
    stop_crawler([::AWSConfig]; Name=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "StopCrawler", arguments::Dict)
    glue([::AWSConfig], "StopCrawler", Name=)

# StopCrawler Operation

If the specified crawler is running, stops the crawl.

# Arguments

## `Name = ::String` -- *Required*
Name of the crawler to stop.




# Returns

`StopCrawlerResponse`

# Exceptions

`EntityNotFoundException`, `CrawlerNotRunningException`, `CrawlerStoppingException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawler)
"""
@inline stop_crawler(aws::AWSConfig=default_aws_config(); args...) = stop_crawler(aws, args)

@inline stop_crawler(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "StopCrawler", args)

@inline stop_crawler(args) = stop_crawler(default_aws_config(), args)


"""
    using AWSSDK.Glue.stop_crawler_schedule
    stop_crawler_schedule([::AWSConfig], arguments::Dict)
    stop_crawler_schedule([::AWSConfig]; CrawlerName=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "StopCrawlerSchedule", arguments::Dict)
    glue([::AWSConfig], "StopCrawlerSchedule", CrawlerName=)

# StopCrawlerSchedule Operation

Sets the schedule state of the specified crawler to `NOT_SCHEDULED`, but does not stop the crawler if it is already running.

# Arguments

## `CrawlerName = ::String` -- *Required*
Name of the crawler whose schedule state to set.




# Returns

`StopCrawlerScheduleResponse`

# Exceptions

`EntityNotFoundException`, `SchedulerNotRunningException`, `SchedulerTransitioningException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerSchedule)
"""
@inline stop_crawler_schedule(aws::AWSConfig=default_aws_config(); args...) = stop_crawler_schedule(aws, args)

@inline stop_crawler_schedule(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "StopCrawlerSchedule", args)

@inline stop_crawler_schedule(args) = stop_crawler_schedule(default_aws_config(), args)


"""
    using AWSSDK.Glue.stop_trigger
    stop_trigger([::AWSConfig], arguments::Dict)
    stop_trigger([::AWSConfig]; Name=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "StopTrigger", arguments::Dict)
    glue([::AWSConfig], "StopTrigger", Name=)

# StopTrigger Operation

Stops a specified trigger.

# Arguments

## `Name = ::String` -- *Required*
The name of the trigger to stop.




# Returns

`StopTriggerResponse`

# Exceptions

`InvalidInputException`, `InternalServiceException`, `EntityNotFoundException`, `OperationTimeoutException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopTrigger)
"""
@inline stop_trigger(aws::AWSConfig=default_aws_config(); args...) = stop_trigger(aws, args)

@inline stop_trigger(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "StopTrigger", args)

@inline stop_trigger(args) = stop_trigger(default_aws_config(), args)


"""
    using AWSSDK.Glue.update_classifier
    update_classifier([::AWSConfig], arguments::Dict)
    update_classifier([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "UpdateClassifier", arguments::Dict)
    glue([::AWSConfig], "UpdateClassifier", <keyword arguments>)

# UpdateClassifier Operation

Modifies an existing classifier (a `GrokClassifier`, `XMLClassifier`, or `JsonClassifier`, depending on which field is present).

# Arguments

## `GrokClassifier = [ ... ]`
A `GrokClassifier` object with updated fields.
```
 GrokClassifier = [
        "Name" => <required> ::String,
        "Classification" =>  ::String,
        "GrokPattern" =>  ::String,
        "CustomPatterns" =>  ::String
    ]
```

## `XMLClassifier = [ ... ]`
An `XMLClassifier` object with updated fields.
```
 XMLClassifier = [
        "Name" => <required> ::String,
        "Classification" =>  ::String,
        "RowTag" =>  ::String
    ]
```

## `JsonClassifier = [ ... ]`
A `JsonClassifier` object with updated fields.
```
 JsonClassifier = [
        "Name" => <required> ::String,
        "JsonPath" =>  ::String
    ]
```



# Returns

`UpdateClassifierResponse`

# Exceptions

`InvalidInputException`, `VersionMismatchException`, `EntityNotFoundException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateClassifier)
"""
@inline update_classifier(aws::AWSConfig=default_aws_config(); args...) = update_classifier(aws, args)

@inline update_classifier(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "UpdateClassifier", args)

@inline update_classifier(args) = update_classifier(default_aws_config(), args)


"""
    using AWSSDK.Glue.update_connection
    update_connection([::AWSConfig], arguments::Dict)
    update_connection([::AWSConfig]; Name=, ConnectionInput=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "UpdateConnection", arguments::Dict)
    glue([::AWSConfig], "UpdateConnection", Name=, ConnectionInput=, <keyword arguments>)

# UpdateConnection Operation

Updates a connection definition in the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog in which the connection resides. If none is supplied, the AWS account ID is used by default.


## `Name = ::String` -- *Required*
The name of the connection definition to update.


## `ConnectionInput = [ ... ]` -- *Required*
A `ConnectionInput` object that redefines the connection in question.
```
 ConnectionInput = [
        "Name" => <required> ::String,
        "Description" =>  ::String,
        "ConnectionType" => <required> "JDBC" or "SFTP",
        "MatchCriteria" =>  [::String, ...],
        "ConnectionProperties" => <required> ::Dict{String,String},
        "PhysicalConnectionRequirements" =>  [
            "SubnetId" =>  ::String,
            "SecurityGroupIdList" =>  [::String, ...],
            "AvailabilityZone" =>  ::String
        ]
    ]
```



# Returns

`UpdateConnectionResponse`

# Exceptions

`InvalidInputException`, `EntityNotFoundException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateConnection)
"""
@inline update_connection(aws::AWSConfig=default_aws_config(); args...) = update_connection(aws, args)

@inline update_connection(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "UpdateConnection", args)

@inline update_connection(args) = update_connection(default_aws_config(), args)


"""
    using AWSSDK.Glue.update_crawler
    update_crawler([::AWSConfig], arguments::Dict)
    update_crawler([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "UpdateCrawler", arguments::Dict)
    glue([::AWSConfig], "UpdateCrawler", Name=, <keyword arguments>)

# UpdateCrawler Operation

Updates a crawler. If a crawler is running, you must stop it using `StopCrawler` before updating it.

# Arguments

## `Name = ::String` -- *Required*
Name of the new crawler.


## `Role = ::String`
The IAM role (or ARN of an IAM role) used by the new crawler to access customer resources.


## `DatabaseName = ::String`
The AWS Glue database where results are stored, such as: `arn:aws:daylight:us-east-1::database/sometable/*`.


## `Description = ::String`
A description of the new crawler.


## `Targets = [ ... ]`
A list of targets to crawl.
```
 Targets = [
        "S3Targets" =>  [[
            "Path" =>  ::String,
            "Exclusions" =>  [::String, ...]
        ], ...],
        "JdbcTargets" =>  [[
            "ConnectionName" =>  ::String,
            "Path" =>  ::String,
            "Exclusions" =>  [::String, ...]
        ], ...],
        "DynamoDBTargets" =>  [["Path" =>  ::String], ...]
    ]
```

## `Schedule = ::String`
A `cron` expression used to specify the schedule (see [Time-Based Schedules for Jobs and Crawlers](http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.


## `Classifiers = [::String, ...]`
A list of custom classifiers that the user has registered. By default, all built-in classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.


## `TablePrefix = ::String`
The table prefix used for catalog tables that are created.


## `SchemaChangePolicy = [ ... ]`
Policy for the crawler's update and deletion behavior.
```
 SchemaChangePolicy = [
        "UpdateBehavior" =>  "LOG" or "UPDATE_IN_DATABASE",
        "DeleteBehavior" =>  "LOG", "DELETE_FROM_DATABASE" or "DEPRECATE_IN_DATABASE"
    ]
```

## `Configuration = ::String`
Crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see [Configuring a Crawler](http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html).




# Returns

`UpdateCrawlerResponse`

# Exceptions

`InvalidInputException`, `VersionMismatchException`, `EntityNotFoundException`, `CrawlerRunningException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawler)
"""
@inline update_crawler(aws::AWSConfig=default_aws_config(); args...) = update_crawler(aws, args)

@inline update_crawler(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "UpdateCrawler", args)

@inline update_crawler(args) = update_crawler(default_aws_config(), args)


"""
    using AWSSDK.Glue.update_crawler_schedule
    update_crawler_schedule([::AWSConfig], arguments::Dict)
    update_crawler_schedule([::AWSConfig]; CrawlerName=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "UpdateCrawlerSchedule", arguments::Dict)
    glue([::AWSConfig], "UpdateCrawlerSchedule", CrawlerName=, <keyword arguments>)

# UpdateCrawlerSchedule Operation

Updates the schedule of a crawler using a `cron` expression.

# Arguments

## `CrawlerName = ::String` -- *Required*
Name of the crawler whose schedule to update.


## `Schedule = ::String`
The updated `cron` expression used to specify the schedule (see [Time-Based Schedules for Jobs and Crawlers](http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.




# Returns

`UpdateCrawlerScheduleResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `VersionMismatchException`, `SchedulerTransitioningException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerSchedule)
"""
@inline update_crawler_schedule(aws::AWSConfig=default_aws_config(); args...) = update_crawler_schedule(aws, args)

@inline update_crawler_schedule(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "UpdateCrawlerSchedule", args)

@inline update_crawler_schedule(args) = update_crawler_schedule(default_aws_config(), args)


"""
    using AWSSDK.Glue.update_database
    update_database([::AWSConfig], arguments::Dict)
    update_database([::AWSConfig]; Name=, DatabaseInput=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "UpdateDatabase", arguments::Dict)
    glue([::AWSConfig], "UpdateDatabase", Name=, DatabaseInput=, <keyword arguments>)

# UpdateDatabase Operation

Updates an existing database definition in a Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog in which the metadata database resides. If none is supplied, the AWS account ID is used by default.


## `Name = ::String` -- *Required*
The name of the database to update in the catalog. For Hive compatibility, this is folded to lowercase.


## `DatabaseInput = [ ... ]` -- *Required*
A `DatabaseInput` object specifying the new definition of the metadata database in the catalog.
```
 DatabaseInput = [
        "Name" => <required> ::String,
        "Description" =>  ::String,
        "LocationUri" =>  ::String,
        "Parameters" =>  ::Dict{String,String}
    ]
```



# Returns

`UpdateDatabaseResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDatabase)
"""
@inline update_database(aws::AWSConfig=default_aws_config(); args...) = update_database(aws, args)

@inline update_database(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "UpdateDatabase", args)

@inline update_database(args) = update_database(default_aws_config(), args)


"""
    using AWSSDK.Glue.update_dev_endpoint
    update_dev_endpoint([::AWSConfig], arguments::Dict)
    update_dev_endpoint([::AWSConfig]; EndpointName=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "UpdateDevEndpoint", arguments::Dict)
    glue([::AWSConfig], "UpdateDevEndpoint", EndpointName=, <keyword arguments>)

# UpdateDevEndpoint Operation

Updates a specified DevEndpoint.

# Arguments

## `EndpointName = ::String` -- *Required*
The name of the DevEndpoint to be updated.


## `PublicKey = ::String`
The public key for the DevEndpoint to use.


## `AddPublicKeys = [::String, ...]`
The list of public keys for the DevEndpoint to use.


## `DeletePublicKeys = [::String, ...]`
The list of public keys to be deleted from the DevEndpoint.


## `CustomLibraries = [ ... ]`
Custom Python or Java libraries to be loaded in the DevEndpoint.
```
 CustomLibraries = [
        "ExtraPythonLibsS3Path" =>  ::String,
        "ExtraJarsS3Path" =>  ::String
    ]
```

## `UpdateEtlLibraries = ::Bool`
True if the list of custom libraries to be loaded in the development endpoint needs to be updated, or False otherwise.




# Returns

`UpdateDevEndpointResponse`

# Exceptions

`EntityNotFoundException`, `InternalServiceException`, `OperationTimeoutException`, `InvalidInputException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDevEndpoint)
"""
@inline update_dev_endpoint(aws::AWSConfig=default_aws_config(); args...) = update_dev_endpoint(aws, args)

@inline update_dev_endpoint(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "UpdateDevEndpoint", args)

@inline update_dev_endpoint(args) = update_dev_endpoint(default_aws_config(), args)


"""
    using AWSSDK.Glue.update_job
    update_job([::AWSConfig], arguments::Dict)
    update_job([::AWSConfig]; JobName=, JobUpdate=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "UpdateJob", arguments::Dict)
    glue([::AWSConfig], "UpdateJob", JobName=, JobUpdate=)

# UpdateJob Operation

Updates an existing job definition.

# Arguments

## `JobName = ::String` -- *Required*
Name of the job definition to update.


## `JobUpdate = [ ... ]` -- *Required*
Specifies the values with which to update the job definition.
```
 JobUpdate = [
        "Description" =>  ::String,
        "LogUri" =>  ::String,
        "Role" =>  ::String,
        "ExecutionProperty" =>  ["MaxConcurrentRuns" =>  ::Int],
        "Command" =>  [
            "Name" =>  ::String,
            "ScriptLocation" =>  ::String
        ],
        "DefaultArguments" =>  ::Dict{String,String},
        "Connections" =>  ["Connections" =>  [::String, ...]],
        "MaxRetries" =>  ::Int,
        "AllocatedCapacity" =>  ::Int,
        "Timeout" =>  ::Int,
        "NotificationProperty" =>  ["NotifyDelayAfter" =>  ::Int]
    ]
```



# Returns

`UpdateJobResponse`

# Exceptions

`InvalidInputException`, `EntityNotFoundException`, `InternalServiceException`, `OperationTimeoutException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJob)
"""
@inline update_job(aws::AWSConfig=default_aws_config(); args...) = update_job(aws, args)

@inline update_job(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "UpdateJob", args)

@inline update_job(args) = update_job(default_aws_config(), args)


"""
    using AWSSDK.Glue.update_partition
    update_partition([::AWSConfig], arguments::Dict)
    update_partition([::AWSConfig]; DatabaseName=, TableName=, PartitionValueList=, PartitionInput=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "UpdatePartition", arguments::Dict)
    glue([::AWSConfig], "UpdatePartition", DatabaseName=, TableName=, PartitionValueList=, PartitionInput=, <keyword arguments>)

# UpdatePartition Operation

Updates a partition.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the partition to be updated resides. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database in which the table in question resides.


## `TableName = ::String` -- *Required*
The name of the table where the partition to be updated is located.


## `PartitionValueList = [::String, ...]` -- *Required*
A list of the values defining the partition.


## `PartitionInput = [ ... ]` -- *Required*
The new partition object to which to update the partition.
```
 PartitionInput = [
        "Values" =>  [::String, ...],
        "LastAccessTime" =>  timestamp,
        "StorageDescriptor" =>  [
            "Columns" =>  [[
                "Name" => <required> ::String,
                "Type" =>  ::String,
                "Comment" =>  ::String
            ], ...],
            "Location" =>  ::String,
            "InputFormat" =>  ::String,
            "OutputFormat" =>  ::String,
            "Compressed" =>  ::Bool,
            "NumberOfBuckets" =>  ::Int,
            "SerdeInfo" =>  [
                "Name" =>  ::String,
                "SerializationLibrary" =>  ::String,
                "Parameters" =>  ::Dict{String,String}
            ],
            "BucketColumns" =>  [::String, ...],
            "SortColumns" =>  [[
                "Column" => <required> ::String,
                "SortOrder" => <required> ::Int
            ], ...],
            "Parameters" =>  ::Dict{String,String},
            "SkewedInfo" =>  [
                "SkewedColumnNames" =>  [::String, ...],
                "SkewedColumnValues" =>  [::String, ...],
                "SkewedColumnValueLocationMaps" =>  ::Dict{String,String}
            ],
            "StoredAsSubDirectories" =>  ::Bool
        ],
        "Parameters" =>  ::Dict{String,String},
        "LastAnalyzedTime" =>  timestamp
    ]
```



# Returns

`UpdatePartitionResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdatePartition)
"""
@inline update_partition(aws::AWSConfig=default_aws_config(); args...) = update_partition(aws, args)

@inline update_partition(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "UpdatePartition", args)

@inline update_partition(args) = update_partition(default_aws_config(), args)


"""
    using AWSSDK.Glue.update_table
    update_table([::AWSConfig], arguments::Dict)
    update_table([::AWSConfig]; DatabaseName=, TableInput=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "UpdateTable", arguments::Dict)
    glue([::AWSConfig], "UpdateTable", DatabaseName=, TableInput=, <keyword arguments>)

# UpdateTable Operation

Updates a metadata table in the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the table resides. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.


## `TableInput = [ ... ]` -- *Required*
An updated `TableInput` object to define the metadata table in the catalog.
```
 TableInput = [
        "Name" => <required> ::String,
        "Description" =>  ::String,
        "Owner" =>  ::String,
        "LastAccessTime" =>  timestamp,
        "LastAnalyzedTime" =>  timestamp,
        "Retention" =>  ::Int,
        "StorageDescriptor" =>  [
            "Columns" =>  [[
                "Name" => <required> ::String,
                "Type" =>  ::String,
                "Comment" =>  ::String
            ], ...],
            "Location" =>  ::String,
            "InputFormat" =>  ::String,
            "OutputFormat" =>  ::String,
            "Compressed" =>  ::Bool,
            "NumberOfBuckets" =>  ::Int,
            "SerdeInfo" =>  [
                "Name" =>  ::String,
                "SerializationLibrary" =>  ::String,
                "Parameters" =>  ::Dict{String,String}
            ],
            "BucketColumns" =>  [::String, ...],
            "SortColumns" =>  [[
                "Column" => <required> ::String,
                "SortOrder" => <required> ::Int
            ], ...],
            "Parameters" =>  ::Dict{String,String},
            "SkewedInfo" =>  [
                "SkewedColumnNames" =>  [::String, ...],
                "SkewedColumnValues" =>  [::String, ...],
                "SkewedColumnValueLocationMaps" =>  ::Dict{String,String}
            ],
            "StoredAsSubDirectories" =>  ::Bool
        ],
        "PartitionKeys" =>  [[
            "Name" => <required> ::String,
            "Type" =>  ::String,
            "Comment" =>  ::String
        ], ...],
        "ViewOriginalText" =>  ::String,
        "ViewExpandedText" =>  ::String,
        "TableType" =>  ::String,
        "Parameters" =>  ::Dict{String,String}
    ]
```

## `SkipArchive = ::Bool`
By default, `UpdateTable` always creates an archived version of the table before updating it. If `skipArchive` is set to true, however, `UpdateTable` does not create the archived version.




# Returns

`UpdateTableResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException`, `OperationTimeoutException`, `ConcurrentModificationException` or `ResourceNumberLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTable)
"""
@inline update_table(aws::AWSConfig=default_aws_config(); args...) = update_table(aws, args)

@inline update_table(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "UpdateTable", args)

@inline update_table(args) = update_table(default_aws_config(), args)


"""
    using AWSSDK.Glue.update_trigger
    update_trigger([::AWSConfig], arguments::Dict)
    update_trigger([::AWSConfig]; Name=, TriggerUpdate=)

    using AWSCore.Services.glue
    glue([::AWSConfig], "UpdateTrigger", arguments::Dict)
    glue([::AWSConfig], "UpdateTrigger", Name=, TriggerUpdate=)

# UpdateTrigger Operation

Updates a trigger definition.

# Arguments

## `Name = ::String` -- *Required*
The name of the trigger to update.


## `TriggerUpdate = [ ... ]` -- *Required*
The new values with which to update the trigger.
```
 TriggerUpdate = [
        "Name" =>  ::String,
        "Description" =>  ::String,
        "Schedule" =>  ::String,
        "Actions" =>  [[
            "JobName" =>  ::String,
            "Arguments" =>  ::Dict{String,String},
            "Timeout" =>  ::Int,
            "NotificationProperty" =>  ["NotifyDelayAfter" =>  ::Int]
        ], ...],
        "Predicate" =>  [
            "Logical" =>  "AND" or "ANY",
            "Conditions" =>  [[
                "LogicalOperator" =>  "EQUALS",
                "JobName" =>  ::String,
                "State" =>  "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED" or "TIMEOUT"
            ], ...]
        ]
    ]
```



# Returns

`UpdateTriggerResponse`

# Exceptions

`InvalidInputException`, `InternalServiceException`, `EntityNotFoundException`, `OperationTimeoutException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTrigger)
"""
@inline update_trigger(aws::AWSConfig=default_aws_config(); args...) = update_trigger(aws, args)

@inline update_trigger(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "UpdateTrigger", args)

@inline update_trigger(args) = update_trigger(default_aws_config(), args)


"""
    using AWSSDK.Glue.update_user_defined_function
    update_user_defined_function([::AWSConfig], arguments::Dict)
    update_user_defined_function([::AWSConfig]; DatabaseName=, FunctionName=, FunctionInput=, <keyword arguments>)

    using AWSCore.Services.glue
    glue([::AWSConfig], "UpdateUserDefinedFunction", arguments::Dict)
    glue([::AWSConfig], "UpdateUserDefinedFunction", DatabaseName=, FunctionName=, FunctionInput=, <keyword arguments>)

# UpdateUserDefinedFunction Operation

Updates an existing function definition in the Data Catalog.

# Arguments

## `CatalogId = ::String`
The ID of the Data Catalog where the function to be updated is located. If none is supplied, the AWS account ID is used by default.


## `DatabaseName = ::String` -- *Required*
The name of the catalog database where the function to be updated is located.


## `FunctionName = ::String` -- *Required*
The name of the function.


## `FunctionInput = [ ... ]` -- *Required*
A `FunctionInput` object that re-defines the function in the Data Catalog.
```
 FunctionInput = [
        "FunctionName" =>  ::String,
        "ClassName" =>  ::String,
        "OwnerName" =>  ::String,
        "OwnerType" =>  "USER", "ROLE" or "GROUP",
        "ResourceUris" =>  [[
            "ResourceType" =>  "JAR", "FILE" or "ARCHIVE",
            "Uri" =>  ::String
        ], ...]
    ]
```



# Returns

`UpdateUserDefinedFunctionResponse`

# Exceptions

`EntityNotFoundException`, `InvalidInputException`, `InternalServiceException` or `OperationTimeoutException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateUserDefinedFunction)
"""
@inline update_user_defined_function(aws::AWSConfig=default_aws_config(); args...) = update_user_defined_function(aws, args)

@inline update_user_defined_function(aws::AWSConfig, args) = AWSCore.Services.glue(aws, "UpdateUserDefinedFunction", args)

@inline update_user_defined_function(args) = update_user_defined_function(default_aws_config(), args)




end # module Glue


#==============================================================================#
# End of file
#==============================================================================#
