#==============================================================================#
# DMS.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/dms-2016-01-01.normal.json
#==============================================================================#

__precompile__()

module DMS

using AWSCore


"""
    using AWSSDK.DMS.add_tags_to_resource
    add_tags_to_resource([::AWSConfig], arguments::Dict)
    add_tags_to_resource([::AWSConfig]; ResourceArn=, Tags=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "AddTagsToResource", arguments::Dict)
    dms([::AWSConfig], "AddTagsToResource", ResourceArn=, Tags=)

# AddTagsToResource Operation

Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. These tags can also be used with cost allocation reporting to track cost associated with DMS resources, or used in a Condition statement in an IAM policy for DMS.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to be added to. AWS DMS resources include a replication instance, endpoint, and a replication task.


## `Tags = [[ ... ], ...]` -- *Required*
The tag to be assigned to the DMS resource.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`AddTagsToResourceResponse`

# Exceptions

`ResourceNotFoundFault`.

# Example: Add tags to resource

Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. These tags can also be used with cost allocation reporting to track cost associated with AWS DMS resources, or used in a Condition statement in an IAM policy for AWS DMS.

Input:
```
[
    "ResourceArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E",
    "Tags" => [
        [
            "Key" => "Acount",
            "Value" => "1633456"
        ]
    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/AddTagsToResource)
"""
@inline add_tags_to_resource(aws::AWSConfig=default_aws_config(); args...) = add_tags_to_resource(aws, args)

@inline add_tags_to_resource(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "AddTagsToResource", args)

@inline add_tags_to_resource(args) = add_tags_to_resource(default_aws_config(), args)


"""
    using AWSSDK.DMS.create_endpoint
    create_endpoint([::AWSConfig], arguments::Dict)
    create_endpoint([::AWSConfig]; EndpointIdentifier=, EndpointType=, EngineName=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "CreateEndpoint", arguments::Dict)
    dms([::AWSConfig], "CreateEndpoint", EndpointIdentifier=, EndpointType=, EngineName=, <keyword arguments>)

# CreateEndpoint Operation

Creates an endpoint using the provided settings.

# Arguments

## `EndpointIdentifier = ::String` -- *Required*
The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.


## `EndpointType = "source" or "target"` -- *Required*
The type of endpoint.


## `EngineName = ::String` -- *Required*
The type of engine for the endpoint. Valid values, depending on the EndPointType, include mysql, oracle, postgres, mariadb, aurora, aurora-postgresql, redshift, s3, db2, azuredb, sybase, dynamodb, mongodb, and sqlserver.


## `Username = ::String`
The user name to be used to login to the endpoint database.


## `Password = ::String`
The password to be used to login to the endpoint database.


## `ServerName = ::String`
The name of the server where the endpoint database resides.


## `Port = ::Int`
The port used by the endpoint database.


## `DatabaseName = ::String`
The name of the endpoint database.


## `ExtraConnectionAttributes = ::String`
Additional attributes associated with the connection.


## `KmsKeyId = ::String`
The KMS key identifier that will be used to encrypt the connection parameters. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.


## `Tags = [[ ... ], ...]`
Tags to be added to the endpoint.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `CertificateArn = ::String`
The Amazon Resource Name (ARN) for the certificate.


## `SslMode = "none", "require", "verify-ca" or "verify-full"`
The SSL mode to use for the SSL connection.

SSL mode can be one of four values: none, require, verify-ca, verify-full.

The default value is none.


## `ServiceAccessRoleArn = ::String`
The Amazon Resource Name (ARN) for the service access role you want to use to create the endpoint.


## `ExternalTableDefinition = ::String`
The external table definition.


## `DynamoDbSettings = ["ServiceAccessRoleArn" => <required> ::String]`
Settings in JSON format for the target Amazon DynamoDB endpoint. For more information about the available settings, see the **Using Object Mapping to Migrate Data to DynamoDB** section at [Using an Amazon DynamoDB Database as a Target for AWS Database Migration Service](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html).


## `S3Settings = [ ... ]`
Settings in JSON format for the target Amazon S3 endpoint. For more information about the available settings, see the **Extra Connection Attributes** section at [Using Amazon S3 as a Target for AWS Database Migration Service](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html).
```
 S3Settings = [
        "ServiceAccessRoleArn" =>  ::String,
        "ExternalTableDefinition" =>  ::String,
        "CsvRowDelimiter" =>  ::String,
        "CsvDelimiter" =>  ::String,
        "BucketFolder" =>  ::String,
        "BucketName" =>  ::String,
        "CompressionType" =>  "none" or "gzip"
    ]
```

## `DmsTransferSettings = [ ... ]`
The settings in JSON format for the DMS Transfer type source endpoint.

Attributes include:

*   serviceAccessRoleArn - The IAM role that has permission to access the Amazon S3 bucket.

*   bucketName - The name of the S3 bucket to use.

*   compressionType - An optional parameter to use GZIP to compress the target files. Set to NONE (the default) or do not use to leave the files uncompressed.

Shorthand syntax: ServiceAccessRoleArn=string ,BucketName=string,CompressionType=string

JSON syntax:

{ "ServiceAccessRoleArn": "string", "BucketName": "string", "CompressionType": "none"|"gzip" }
```
 DmsTransferSettings = [
        "ServiceAccessRoleArn" =>  ::String,
        "BucketName" =>  ::String
    ]
```

## `MongoDbSettings = [ ... ]`
Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see the **Configuration Properties When Using MongoDB as a Source for AWS Database Migration Service** section at [Using MongoDB as a Target for AWS Database Migration Service](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html).
```
 MongoDbSettings = [
        "Username" =>  ::String,
        "Password" =>  ::String,
        "ServerName" =>  ::String,
        "Port" =>  ::Int,
        "DatabaseName" =>  ::String,
        "AuthType" =>  "no" or "password",
        "AuthMechanism" =>  "default", "mongodb_cr" or "scram_sha_1",
        "NestingLevel" =>  "none" or "one",
        "ExtractDocId" =>  ::String,
        "DocsToInvestigate" =>  ::String,
        "AuthSource" =>  ::String,
        "KmsKeyId" =>  ::String
    ]
```



# Returns

`CreateEndpointResponse`

# Exceptions

`KMSKeyNotAccessibleFault`, `ResourceAlreadyExistsFault`, `ResourceQuotaExceededFault`, `InvalidResourceStateFault`, `ResourceNotFoundFault` or `AccessDeniedFault`.

# Example: Create endpoint

Creates an endpoint using the provided settings.

Input:
```
[
    "CertificateArn" => "",
    "DatabaseName" => "testdb",
    "EndpointIdentifier" => "test-endpoint-1",
    "EndpointType" => "source",
    "EngineName" => "mysql",
    "ExtraConnectionAttributes" => "",
    "KmsKeyId" => "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
    "Password" => "pasword",
    "Port" => 3306,
    "ServerName" => "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com",
    "SslMode" => "require",
    "Tags" => [
        [
            "Key" => "Acount",
            "Value" => "143327655"
        ]
    ],
    "Username" => "username"
]
```

Output:
```
Dict(
    "Endpoint" => Dict(
        "EndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM",
        "EndpointIdentifier" => "test-endpoint-1",
        "EndpointType" => "source",
        "EngineName" => "mysql",
        "KmsKeyId" => "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
        "Port" => 3306,
        "ServerName" => "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com",
        "Status" => "active",
        "Username" => "username"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateEndpoint)
"""
@inline create_endpoint(aws::AWSConfig=default_aws_config(); args...) = create_endpoint(aws, args)

@inline create_endpoint(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "CreateEndpoint", args)

@inline create_endpoint(args) = create_endpoint(default_aws_config(), args)


"""
    using AWSSDK.DMS.create_event_subscription
    create_event_subscription([::AWSConfig], arguments::Dict)
    create_event_subscription([::AWSConfig]; SubscriptionName=, SnsTopicArn=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "CreateEventSubscription", arguments::Dict)
    dms([::AWSConfig], "CreateEventSubscription", SubscriptionName=, SnsTopicArn=, <keyword arguments>)

# CreateEventSubscription Operation

Creates an AWS DMS event notification subscription.

You can specify the type of source (`SourceType`) you want to be notified of, provide a list of AWS DMS source IDs (`SourceIds`) that triggers the events, and provide a list of event categories (`EventCategories`) for events you want to be notified of. If you specify both the `SourceType` and `SourceIds`, such as `SourceType = replication-instance` and `SourceIdentifier = my-replinstance`, you will be notified of all the replication instance events for the specified source. If you specify a `SourceType` but don't specify a `SourceIdentifier`, you receive notice of the events for that source type for all your AWS DMS sources. If you don't specify either `SourceType` nor `SourceIdentifier`, you will be notified of events generated from all AWS DMS sources belonging to your customer account.

For more information about AWS DMS events, see [Working with Events and Notifications](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in the AWS Database MIgration Service User Guide.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the AWS DMS event notification subscription.

Constraints: The name must be less than 255 characters.


## `SnsTopicArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.


## `SourceType = ::String`
The type of AWS DMS resource that generates the events. For example, if you want to be notified of events generated by a replication instance, you set this parameter to `replication-instance`. If this value is not specified, all events are returned.

Valid values: replication-instance | migration-task


## `EventCategories = [::String, ...]`
A list of event categories for a source type that you want to subscribe to. You can see a list of the categories for a given source type by calling the **DescribeEventCategories** action or in the topic [Working with Events and Notifications](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in the AWS Database Migration Service User Guide.


## `SourceIds = [::String, ...]`
The list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens.


## `Enabled = ::Bool`
A Boolean value; set to **true** to activate the subscription, or set to **false** to create the subscription but not activate it.


## `Tags = [[ ... ], ...]`
A tag to be attached to the event subscription.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateEventSubscriptionResponse`

# Exceptions

`ResourceQuotaExceededFault`, `ResourceAlreadyExistsFault`, `SNSInvalidTopicFault`, `SNSNoAuthorizationFault` or `ResourceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateEventSubscription)
"""
@inline create_event_subscription(aws::AWSConfig=default_aws_config(); args...) = create_event_subscription(aws, args)

@inline create_event_subscription(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "CreateEventSubscription", args)

@inline create_event_subscription(args) = create_event_subscription(default_aws_config(), args)


"""
    using AWSSDK.DMS.create_replication_instance
    create_replication_instance([::AWSConfig], arguments::Dict)
    create_replication_instance([::AWSConfig]; ReplicationInstanceIdentifier=, ReplicationInstanceClass=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "CreateReplicationInstance", arguments::Dict)
    dms([::AWSConfig], "CreateReplicationInstance", ReplicationInstanceIdentifier=, ReplicationInstanceClass=, <keyword arguments>)

# CreateReplicationInstance Operation

Creates the replication instance using the specified parameters.

# Arguments

## `ReplicationInstanceIdentifier = ::String` -- *Required*
The replication instance identifier. This parameter is stored as a lowercase string.

Constraints:

*   Must contain from 1 to 63 alphanumeric characters or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.

Example: `myrepinstance`


## `AllocatedStorage = ::Int`
The amount of storage (in gigabytes) to be initially allocated for the replication instance.


## `ReplicationInstanceClass = ::String` -- *Required*
The compute and memory capacity of the replication instance as specified by the replication instance class.

Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge`


## `VpcSecurityGroupIds = [::String, ...]`
Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance.


## `AvailabilityZone = ::String`
The EC2 Availability Zone that the replication instance will be created in.

Default: A random, system-chosen Availability Zone in the endpoint's region.

Example: `us-east-1d`


## `ReplicationSubnetGroupIdentifier = ::String`
A subnet group to associate with the replication instance.


## `PreferredMaintenanceWindow = ::String`
The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).

Format: `ddd:hh24:mi-ddd:hh24:mi`

Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week.

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Minimum 30-minute window.


## `MultiAZ = ::Bool`
Specifies if the replication instance is a Multi-AZ deployment. You cannot set the `AvailabilityZone` parameter if the Multi-AZ parameter is set to `true`.


## `EngineVersion = ::String`
The engine version number of the replication instance.


## `AutoMinorVersionUpgrade = ::Bool`
Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.

Default: `true`


## `Tags = [[ ... ], ...]`
Tags to be associated with the replication instance.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `KmsKeyId = ::String`
The KMS key identifier that will be used to encrypt the content on the replication instance. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.


## `PubliclyAccessible = ::Bool`
Specifies the accessibility options for the replication instance. A value of `true` represents an instance with a public IP address. A value of `false` represents an instance with a private IP address. The default value is `true`.




# Returns

`CreateReplicationInstanceResponse`

# Exceptions

`AccessDeniedFault`, `ResourceAlreadyExistsFault`, `InsufficientResourceCapacityFault`, `ResourceQuotaExceededFault`, `StorageQuotaExceededFault`, `ResourceNotFoundFault`, `ReplicationSubnetGroupDoesNotCoverEnoughAZs`, `InvalidResourceStateFault`, `InvalidSubnet` or `KMSKeyNotAccessibleFault`.

# Example: Create replication instance

Creates the replication instance using the specified parameters.

Input:
```
[
    "AllocatedStorage" => 123,
    "AutoMinorVersionUpgrade" => true,
    "AvailabilityZone" => "",
    "EngineVersion" => "",
    "KmsKeyId" => "",
    "MultiAZ" => true,
    "PreferredMaintenanceWindow" => "",
    "PubliclyAccessible" => true,
    "ReplicationInstanceClass" => "",
    "ReplicationInstanceIdentifier" => "",
    "ReplicationSubnetGroupIdentifier" => "",
    "Tags" => [
        [
            "Key" => "string",
            "Value" => "string"
        ]
    ],
    "VpcSecurityGroupIds" => [

    ]
]
```

Output:
```
Dict(
    "ReplicationInstance" => Dict(
        "AllocatedStorage" => 5,
        "AutoMinorVersionUpgrade" => true,
        "EngineVersion" => "1.5.0",
        "KmsKeyId" => "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
        "PendingModifiedValues" => Dict(

        ),
        "PreferredMaintenanceWindow" => "sun:06:00-sun:14:00",
        "PubliclyAccessible" => true,
        "ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
        "ReplicationInstanceClass" => "dms.t2.micro",
        "ReplicationInstanceIdentifier" => "test-rep-1",
        "ReplicationInstanceStatus" => "creating",
        "ReplicationSubnetGroup" => Dict(
            "ReplicationSubnetGroupDescription" => "default",
            "ReplicationSubnetGroupIdentifier" => "default",
            "SubnetGroupStatus" => "Complete",
            "Subnets" => [
                Dict(
                    "SubnetAvailabilityZone" => Dict(
                        "Name" => "us-east-1d"
                    ),
                    "SubnetIdentifier" => "subnet-f6dd91af",
                    "SubnetStatus" => "Active"
                ),
                Dict(
                    "SubnetAvailabilityZone" => Dict(
                        "Name" => "us-east-1b"
                    ),
                    "SubnetIdentifier" => "subnet-3605751d",
                    "SubnetStatus" => "Active"
                ),
                Dict(
                    "SubnetAvailabilityZone" => Dict(
                        "Name" => "us-east-1c"
                    ),
                    "SubnetIdentifier" => "subnet-c2daefb5",
                    "SubnetStatus" => "Active"
                ),
                Dict(
                    "SubnetAvailabilityZone" => Dict(
                        "Name" => "us-east-1e"
                    ),
                    "SubnetIdentifier" => "subnet-85e90cb8",
                    "SubnetStatus" => "Active"
                )
            ],
            "VpcId" => "vpc-6741a603"
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationInstance)
"""
@inline create_replication_instance(aws::AWSConfig=default_aws_config(); args...) = create_replication_instance(aws, args)

@inline create_replication_instance(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "CreateReplicationInstance", args)

@inline create_replication_instance(args) = create_replication_instance(default_aws_config(), args)


"""
    using AWSSDK.DMS.create_replication_subnet_group
    create_replication_subnet_group([::AWSConfig], arguments::Dict)
    create_replication_subnet_group([::AWSConfig]; ReplicationSubnetGroupIdentifier=, ReplicationSubnetGroupDescription=, SubnetIds=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "CreateReplicationSubnetGroup", arguments::Dict)
    dms([::AWSConfig], "CreateReplicationSubnetGroup", ReplicationSubnetGroupIdentifier=, ReplicationSubnetGroupDescription=, SubnetIds=, <keyword arguments>)

# CreateReplicationSubnetGroup Operation

Creates a replication subnet group given a list of the subnet IDs in a VPC.

# Arguments

## `ReplicationSubnetGroupIdentifier = ::String` -- *Required*
The name for the replication subnet group. This value is stored as a lowercase string.

Constraints: Must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens. Must not be "default".

Example: `mySubnetgroup`


## `ReplicationSubnetGroupDescription = ::String` -- *Required*
The description for the subnet group.


## `SubnetIds = [::String, ...]` -- *Required*
The EC2 subnet IDs for the subnet group.


## `Tags = [[ ... ], ...]`
The tag to be assigned to the subnet group.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateReplicationSubnetGroupResponse`

# Exceptions

`AccessDeniedFault`, `ResourceAlreadyExistsFault`, `ResourceNotFoundFault`, `ResourceQuotaExceededFault`, `ReplicationSubnetGroupDoesNotCoverEnoughAZs` or `InvalidSubnet`.

# Example: Create replication subnet group

Creates a replication subnet group given a list of the subnet IDs in a VPC.

Input:
```
[
    "ReplicationSubnetGroupDescription" => "US West subnet group",
    "ReplicationSubnetGroupIdentifier" => "us-west-2ab-vpc-215ds366",
    "SubnetIds" => [
        "subnet-e145356n",
        "subnet-58f79200"
    ],
    "Tags" => [
        [
            "Key" => "Acount",
            "Value" => "145235"
        ]
    ]
]
```

Output:
```
Dict(
    "ReplicationSubnetGroup" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationSubnetGroup)
"""
@inline create_replication_subnet_group(aws::AWSConfig=default_aws_config(); args...) = create_replication_subnet_group(aws, args)

@inline create_replication_subnet_group(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "CreateReplicationSubnetGroup", args)

@inline create_replication_subnet_group(args) = create_replication_subnet_group(default_aws_config(), args)


"""
    using AWSSDK.DMS.create_replication_task
    create_replication_task([::AWSConfig], arguments::Dict)
    create_replication_task([::AWSConfig]; ReplicationTaskIdentifier=, SourceEndpointArn=, TargetEndpointArn=, ReplicationInstanceArn=, MigrationType=, TableMappings=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "CreateReplicationTask", arguments::Dict)
    dms([::AWSConfig], "CreateReplicationTask", ReplicationTaskIdentifier=, SourceEndpointArn=, TargetEndpointArn=, ReplicationInstanceArn=, MigrationType=, TableMappings=, <keyword arguments>)

# CreateReplicationTask Operation

Creates a replication task using the specified parameters.

# Arguments

## `ReplicationTaskIdentifier = ::String` -- *Required*
The replication task identifier.

Constraints:

*   Must contain from 1 to 255 alphanumeric characters or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.


## `SourceEndpointArn = ::String` -- *Required*
The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.


## `TargetEndpointArn = ::String` -- *Required*
The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.


## `ReplicationInstanceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication instance.


## `MigrationType = "full-load", "cdc" or "full-load-and-cdc"` -- *Required*
The migration type.


## `TableMappings = ::String` -- *Required*
When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with "file://". When working with the DMS API, provide the JSON as the parameter value.

For example, --table-mappings file://mappingfile.json


## `ReplicationTaskSettings = ::String`
Settings for the task, such as target metadata settings. For a complete list of task settings, see [Task Settings for AWS Database Migration Service Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html).


## `CdcStartTime = timestamp`
Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error.

Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”


## `CdcStartPosition = ::String`
Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.

The value can be in date, checkpoint, or LSN/SCN format.

Date Example: --cdc-start-position “2018-03-08T12:12:12”

Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"

LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”


## `CdcStopPosition = ::String`
Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.

Server time example: --cdc-stop-position “server_time:3018-02-09T12:12:12”

Commit time example: --cdc-stop-position “commit_time: 3018-02-09T12:12:12 “


## `Tags = [[ ... ], ...]`
Tags to be added to the replication instance.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateReplicationTaskResponse`

# Exceptions

`AccessDeniedFault`, `InvalidResourceStateFault`, `ResourceAlreadyExistsFault`, `ResourceNotFoundFault`, `KMSKeyNotAccessibleFault` or `ResourceQuotaExceededFault`.

# Example: Create replication task

Creates a replication task using the specified parameters.

Input:
```
[
    "CdcStartTime" => "2016-12-14T18:25:43Z",
    "MigrationType" => "full-load",
    "ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    "ReplicationTaskIdentifier" => "task1",
    "ReplicationTaskSettings" => "",
    "SourceEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
    "TableMappings" => "file://mappingfile.json",
    "Tags" => [
        [
            "Key" => "Acount",
            "Value" => "24352226"
        ]
    ],
    "TargetEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E"
]
```

Output:
```
Dict(
    "ReplicationTask" => Dict(
        "MigrationType" => "full-load",
        "ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
        "ReplicationTaskArn" => "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM",
        "ReplicationTaskCreationDate" => "2016-12-14T18:25:43Z",
        "ReplicationTaskIdentifier" => "task1",
        "ReplicationTaskSettings" => "{"TargetMetadata":{"TargetSchema":"","SupportLobs":true,"FullLobMode":true,"LobChunkSize":64,"LimitedSizeLobMode":false,"LobMaxSize":0},"FullLoadSettings":{"FullLoadEnabled":true,"ApplyChangesEnabled":false,"TargetTablePrepMode":"DROP_AND_CREATE","CreatePkAfterFullLoad":false,"StopTaskCachedChangesApplied":false,"StopTaskCachedChangesNotApplied":false,"ResumeEnabled":false,"ResumeMinTableSize":100000,"ResumeOnlyClusteredPKTables":true,"MaxFullLoadSubTasks":8,"TransactionConsistencyTimeout":600,"CommitRate":10000},"Logging":{"EnableLogging":false}}",
        "SourceEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
        "Status" => "creating",
        "TableMappings" => "file://mappingfile.json",
        "TargetEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationTask)
"""
@inline create_replication_task(aws::AWSConfig=default_aws_config(); args...) = create_replication_task(aws, args)

@inline create_replication_task(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "CreateReplicationTask", args)

@inline create_replication_task(args) = create_replication_task(default_aws_config(), args)


"""
    using AWSSDK.DMS.delete_certificate
    delete_certificate([::AWSConfig], arguments::Dict)
    delete_certificate([::AWSConfig]; CertificateArn=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DeleteCertificate", arguments::Dict)
    dms([::AWSConfig], "DeleteCertificate", CertificateArn=)

# DeleteCertificate Operation

Deletes the specified certificate.

# Arguments

## `CertificateArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the deleted certificate.




# Returns

`DeleteCertificateResponse`

# Exceptions

`ResourceNotFoundFault` or `InvalidResourceStateFault`.

# Example: Delete Certificate

Deletes the specified certificate.

Input:
```
[
    "CertificateArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUSM457DE6XFJCJQ"
]
```

Output:
```
Dict(
    "Certificate" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteCertificate)
"""
@inline delete_certificate(aws::AWSConfig=default_aws_config(); args...) = delete_certificate(aws, args)

@inline delete_certificate(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DeleteCertificate", args)

@inline delete_certificate(args) = delete_certificate(default_aws_config(), args)


"""
    using AWSSDK.DMS.delete_endpoint
    delete_endpoint([::AWSConfig], arguments::Dict)
    delete_endpoint([::AWSConfig]; EndpointArn=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DeleteEndpoint", arguments::Dict)
    dms([::AWSConfig], "DeleteEndpoint", EndpointArn=)

# DeleteEndpoint Operation

Deletes the specified endpoint.

**Note**
> All tasks associated with the endpoint must be deleted before you can delete the endpoint.

# Arguments

## `EndpointArn = ::String` -- *Required*
The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.




# Returns

`DeleteEndpointResponse`

# Exceptions

`ResourceNotFoundFault` or `InvalidResourceStateFault`.

# Example: Delete Endpoint

Deletes the specified endpoint. All tasks associated with the endpoint must be deleted before you can delete the endpoint.


Input:
```
[
    "EndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM"
]
```

Output:
```
Dict(
    "Endpoint" => Dict(
        "EndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM",
        "EndpointIdentifier" => "test-endpoint-1",
        "EndpointType" => "source",
        "EngineName" => "mysql",
        "KmsKeyId" => "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
        "Port" => 3306,
        "ServerName" => "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com",
        "Status" => "active",
        "Username" => "username"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteEndpoint)
"""
@inline delete_endpoint(aws::AWSConfig=default_aws_config(); args...) = delete_endpoint(aws, args)

@inline delete_endpoint(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DeleteEndpoint", args)

@inline delete_endpoint(args) = delete_endpoint(default_aws_config(), args)


"""
    using AWSSDK.DMS.delete_event_subscription
    delete_event_subscription([::AWSConfig], arguments::Dict)
    delete_event_subscription([::AWSConfig]; SubscriptionName=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DeleteEventSubscription", arguments::Dict)
    dms([::AWSConfig], "DeleteEventSubscription", SubscriptionName=)

# DeleteEventSubscription Operation

Deletes an AWS DMS event subscription.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the DMS event notification subscription to be deleted.




# Returns

`DeleteEventSubscriptionResponse`

# Exceptions

`ResourceNotFoundFault` or `InvalidResourceStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteEventSubscription)
"""
@inline delete_event_subscription(aws::AWSConfig=default_aws_config(); args...) = delete_event_subscription(aws, args)

@inline delete_event_subscription(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DeleteEventSubscription", args)

@inline delete_event_subscription(args) = delete_event_subscription(default_aws_config(), args)


"""
    using AWSSDK.DMS.delete_replication_instance
    delete_replication_instance([::AWSConfig], arguments::Dict)
    delete_replication_instance([::AWSConfig]; ReplicationInstanceArn=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DeleteReplicationInstance", arguments::Dict)
    dms([::AWSConfig], "DeleteReplicationInstance", ReplicationInstanceArn=)

# DeleteReplicationInstance Operation

Deletes the specified replication instance.

**Note**
> You must delete any migration tasks that are associated with the replication instance before you can delete it.

# Arguments

## `ReplicationInstanceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication instance to be deleted.




# Returns

`DeleteReplicationInstanceResponse`

# Exceptions

`InvalidResourceStateFault` or `ResourceNotFoundFault`.

# Example: Delete Replication Instance

Deletes the specified replication instance. You must delete any migration tasks that are associated with the replication instance before you can delete it.



Input:
```
[
    "ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ"
]
```

Output:
```
Dict(
    "ReplicationInstance" => Dict(
        "AllocatedStorage" => 5,
        "AutoMinorVersionUpgrade" => true,
        "EngineVersion" => "1.5.0",
        "KmsKeyId" => "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
        "PendingModifiedValues" => Dict(

        ),
        "PreferredMaintenanceWindow" => "sun:06:00-sun:14:00",
        "PubliclyAccessible" => true,
        "ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
        "ReplicationInstanceClass" => "dms.t2.micro",
        "ReplicationInstanceIdentifier" => "test-rep-1",
        "ReplicationInstanceStatus" => "creating",
        "ReplicationSubnetGroup" => Dict(
            "ReplicationSubnetGroupDescription" => "default",
            "ReplicationSubnetGroupIdentifier" => "default",
            "SubnetGroupStatus" => "Complete",
            "Subnets" => [
                Dict(
                    "SubnetAvailabilityZone" => Dict(
                        "Name" => "us-east-1d"
                    ),
                    "SubnetIdentifier" => "subnet-f6dd91af",
                    "SubnetStatus" => "Active"
                ),
                Dict(
                    "SubnetAvailabilityZone" => Dict(
                        "Name" => "us-east-1b"
                    ),
                    "SubnetIdentifier" => "subnet-3605751d",
                    "SubnetStatus" => "Active"
                ),
                Dict(
                    "SubnetAvailabilityZone" => Dict(
                        "Name" => "us-east-1c"
                    ),
                    "SubnetIdentifier" => "subnet-c2daefb5",
                    "SubnetStatus" => "Active"
                ),
                Dict(
                    "SubnetAvailabilityZone" => Dict(
                        "Name" => "us-east-1e"
                    ),
                    "SubnetIdentifier" => "subnet-85e90cb8",
                    "SubnetStatus" => "Active"
                )
            ],
            "VpcId" => "vpc-6741a603"
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationInstance)
"""
@inline delete_replication_instance(aws::AWSConfig=default_aws_config(); args...) = delete_replication_instance(aws, args)

@inline delete_replication_instance(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DeleteReplicationInstance", args)

@inline delete_replication_instance(args) = delete_replication_instance(default_aws_config(), args)


"""
    using AWSSDK.DMS.delete_replication_subnet_group
    delete_replication_subnet_group([::AWSConfig], arguments::Dict)
    delete_replication_subnet_group([::AWSConfig]; ReplicationSubnetGroupIdentifier=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DeleteReplicationSubnetGroup", arguments::Dict)
    dms([::AWSConfig], "DeleteReplicationSubnetGroup", ReplicationSubnetGroupIdentifier=)

# DeleteReplicationSubnetGroup Operation

Deletes a subnet group.

# Arguments

## `ReplicationSubnetGroupIdentifier = ::String` -- *Required*
The subnet group name of the replication instance.




# Returns

`DeleteReplicationSubnetGroupResponse`

# Exceptions

`InvalidResourceStateFault` or `ResourceNotFoundFault`.

# Example: Delete Replication Subnet Group

Deletes a replication subnet group.

Input:
```
[
    "ReplicationSubnetGroupIdentifier" => "us-west-2ab-vpc-215ds366"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationSubnetGroup)
"""
@inline delete_replication_subnet_group(aws::AWSConfig=default_aws_config(); args...) = delete_replication_subnet_group(aws, args)

@inline delete_replication_subnet_group(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DeleteReplicationSubnetGroup", args)

@inline delete_replication_subnet_group(args) = delete_replication_subnet_group(default_aws_config(), args)


"""
    using AWSSDK.DMS.delete_replication_task
    delete_replication_task([::AWSConfig], arguments::Dict)
    delete_replication_task([::AWSConfig]; ReplicationTaskArn=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DeleteReplicationTask", arguments::Dict)
    dms([::AWSConfig], "DeleteReplicationTask", ReplicationTaskArn=)

# DeleteReplicationTask Operation

Deletes the specified replication task.

# Arguments

## `ReplicationTaskArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication task to be deleted.




# Returns

`DeleteReplicationTaskResponse`

# Exceptions

`ResourceNotFoundFault` or `InvalidResourceStateFault`.

# Example: Delete Replication Task

Deletes the specified replication task.

Input:
```
[
    "ReplicationTaskArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ"
]
```

Output:
```
Dict(
    "ReplicationTask" => Dict(
        "MigrationType" => "full-load",
        "ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
        "ReplicationTaskArn" => "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM",
        "ReplicationTaskCreationDate" => "2016-12-14T18:25:43Z",
        "ReplicationTaskIdentifier" => "task1",
        "ReplicationTaskSettings" => "{"TargetMetadata":{"TargetSchema":"","SupportLobs":true,"FullLobMode":true,"LobChunkSize":64,"LimitedSizeLobMode":false,"LobMaxSize":0},"FullLoadSettings":{"FullLoadEnabled":true,"ApplyChangesEnabled":false,"TargetTablePrepMode":"DROP_AND_CREATE","CreatePkAfterFullLoad":false,"StopTaskCachedChangesApplied":false,"StopTaskCachedChangesNotApplied":false,"ResumeEnabled":false,"ResumeMinTableSize":100000,"ResumeOnlyClusteredPKTables":true,"MaxFullLoadSubTasks":8,"TransactionConsistencyTimeout":600,"CommitRate":10000},"Logging":{"EnableLogging":false}}",
        "SourceEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
        "Status" => "creating",
        "TableMappings" => "file://mappingfile.json",
        "TargetEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationTask)
"""
@inline delete_replication_task(aws::AWSConfig=default_aws_config(); args...) = delete_replication_task(aws, args)

@inline delete_replication_task(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DeleteReplicationTask", args)

@inline delete_replication_task(args) = delete_replication_task(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_account_attributes
    describe_account_attributes([::AWSConfig], arguments::Dict)
    describe_account_attributes([::AWSConfig]; )

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeAccountAttributes", arguments::Dict)
    dms([::AWSConfig], "DescribeAccountAttributes", )

# DescribeAccountAttributes Operation

Lists all of the AWS DMS attributes for a customer account. The attributes include AWS DMS quotas for the account, such as the number of replication instances allowed. The description for a quota includes the quota name, current usage toward that quota, and the quota's maximum value.

This command does not take any parameters.

# Arguments



# Returns

`DescribeAccountAttributesResponse`

# Example: Describe acount attributes

Lists all of the AWS DMS attributes for a customer account. The attributes include AWS DMS quotas for the account, such as the number of replication instances allowed. The description for a quota includes the quota name, current usage toward that quota, and the quota's maximum value. This operation does not take any parameters.

Input:
```
[

]
```

Output:
```
Dict(
    "AccountQuotas" => [
        Dict(
            "AccountQuotaName" => "ReplicationInstances",
            "Max" => 20,
            "Used" => 0
        ),
        Dict(
            "AccountQuotaName" => "AllocatedStorage",
            "Max" => 20,
            "Used" => 0
        ),
        Dict(
            "AccountQuotaName" => "Endpoints",
            "Max" => 20,
            "Used" => 0
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeAccountAttributes)
"""
@inline describe_account_attributes(aws::AWSConfig=default_aws_config(); args...) = describe_account_attributes(aws, args)

@inline describe_account_attributes(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeAccountAttributes", args)

@inline describe_account_attributes(args) = describe_account_attributes(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_certificates
    describe_certificates([::AWSConfig], arguments::Dict)
    describe_certificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeCertificates", arguments::Dict)
    dms([::AWSConfig], "DescribeCertificates", <keyword arguments>)

# DescribeCertificates Operation

Provides a description of the certificate.

# Arguments

## `Filters = [[ ... ], ...]`
Filters applied to the certificate described in the form of key-value pairs.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 10


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeCertificatesResponse`

# Exceptions

`ResourceNotFoundFault`.

# Example: Describe certificates

Provides a description of the certificate.

Input:
```
[
    "Filters" => [
        [
            "Name" => "string",
            "Values" => [
                "string",
                "string"
            ]
        ]
    ],
    "Marker" => "",
    "MaxRecords" => 123
]
```

Output:
```
Dict(
    "Certificates" => [

    ],
    "Marker" => ""
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeCertificates)
"""
@inline describe_certificates(aws::AWSConfig=default_aws_config(); args...) = describe_certificates(aws, args)

@inline describe_certificates(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeCertificates", args)

@inline describe_certificates(args) = describe_certificates(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_connections
    describe_connections([::AWSConfig], arguments::Dict)
    describe_connections([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeConnections", arguments::Dict)
    dms([::AWSConfig], "DescribeConnections", <keyword arguments>)

# DescribeConnections Operation

Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.

# Arguments

## `Filters = [[ ... ], ...]`
The filters applied to the connection.

Valid filter names: endpoint-arn | replication-instance-arn
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeConnectionsResponse`

# Exceptions

`ResourceNotFoundFault`.

# Example: Describe connections

Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.

Input:
```
[
    "Filters" => [
        [
            "Name" => "string",
            "Values" => [
                "string",
                "string"
            ]
        ]
    ],
    "Marker" => "",
    "MaxRecords" => 123
]
```

Output:
```
Dict(
    "Connections" => [
        Dict(
            "EndpointArn" => "arn:aws:dms:us-east-arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
            "EndpointIdentifier" => "testsrc1",
            "ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
            "ReplicationInstanceIdentifier" => "test",
            "Status" => "successful"
        )
    ],
    "Marker" => ""
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeConnections)
"""
@inline describe_connections(aws::AWSConfig=default_aws_config(); args...) = describe_connections(aws, args)

@inline describe_connections(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeConnections", args)

@inline describe_connections(args) = describe_connections(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_endpoint_types
    describe_endpoint_types([::AWSConfig], arguments::Dict)
    describe_endpoint_types([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeEndpointTypes", arguments::Dict)
    dms([::AWSConfig], "DescribeEndpointTypes", <keyword arguments>)

# DescribeEndpointTypes Operation

Returns information about the type of endpoints available.

# Arguments

## `Filters = [[ ... ], ...]`
Filters applied to the describe action.

Valid filter names: engine-name | endpoint-type
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeEndpointTypesResponse`

# Example: Describe endpoint types

Returns information about the type of endpoints available.

Input:
```
[
    "Filters" => [
        [
            "Name" => "string",
            "Values" => [
                "string",
                "string"
            ]
        ]
    ],
    "Marker" => "",
    "MaxRecords" => 123
]
```

Output:
```
Dict(
    "Marker" => "",
    "SupportedEndpointTypes" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpointTypes)
"""
@inline describe_endpoint_types(aws::AWSConfig=default_aws_config(); args...) = describe_endpoint_types(aws, args)

@inline describe_endpoint_types(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeEndpointTypes", args)

@inline describe_endpoint_types(args) = describe_endpoint_types(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_endpoints
    describe_endpoints([::AWSConfig], arguments::Dict)
    describe_endpoints([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeEndpoints", arguments::Dict)
    dms([::AWSConfig], "DescribeEndpoints", <keyword arguments>)

# DescribeEndpoints Operation

Returns information about the endpoints for your account in the current region.

# Arguments

## `Filters = [[ ... ], ...]`
Filters applied to the describe action.

Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeEndpointsResponse`

# Exceptions

`ResourceNotFoundFault`.

# Example: Describe endpoints

Returns information about the endpoints for your account in the current region.

Input:
```
[
    "Filters" => [
        [
            "Name" => "string",
            "Values" => [
                "string",
                "string"
            ]
        ]
    ],
    "Marker" => "",
    "MaxRecords" => 123
]
```

Output:
```
Dict(
    "Endpoints" => [

    ],
    "Marker" => ""
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpoints)
"""
@inline describe_endpoints(aws::AWSConfig=default_aws_config(); args...) = describe_endpoints(aws, args)

@inline describe_endpoints(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeEndpoints", args)

@inline describe_endpoints(args) = describe_endpoints(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_event_categories
    describe_event_categories([::AWSConfig], arguments::Dict)
    describe_event_categories([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeEventCategories", arguments::Dict)
    dms([::AWSConfig], "DescribeEventCategories", <keyword arguments>)

# DescribeEventCategories Operation

Lists categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in [Working with Events and Notifications](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in the AWS Database Migration Service User Guide.

# Arguments

## `SourceType = ::String`
The type of AWS DMS resource that generates events.

Valid values: replication-instance | migration-task


## `Filters = [[ ... ], ...]`
Filters applied to the action.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```



# Returns

`DescribeEventCategoriesResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventCategories)
"""
@inline describe_event_categories(aws::AWSConfig=default_aws_config(); args...) = describe_event_categories(aws, args)

@inline describe_event_categories(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeEventCategories", args)

@inline describe_event_categories(args) = describe_event_categories(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_event_subscriptions
    describe_event_subscriptions([::AWSConfig], arguments::Dict)
    describe_event_subscriptions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeEventSubscriptions", arguments::Dict)
    dms([::AWSConfig], "DescribeEventSubscriptions", <keyword arguments>)

# DescribeEventSubscriptions Operation

Lists all the event subscriptions for a customer account. The description of a subscription includes `SubscriptionName`, `SNSTopicARN`, `CustomerID`, `SourceType`, `SourceID`, `CreationTime`, and `Status`.

If you specify `SubscriptionName`, this action lists the description for that subscription.

# Arguments

## `SubscriptionName = ::String`
The name of the AWS DMS event subscription to be described.


## `Filters = [[ ... ], ...]`
Filters applied to the action.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeEventSubscriptionsResponse`

# Exceptions

`ResourceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventSubscriptions)
"""
@inline describe_event_subscriptions(aws::AWSConfig=default_aws_config(); args...) = describe_event_subscriptions(aws, args)

@inline describe_event_subscriptions(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeEventSubscriptions", args)

@inline describe_event_subscriptions(args) = describe_event_subscriptions(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_events
    describe_events([::AWSConfig], arguments::Dict)
    describe_events([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeEvents", arguments::Dict)
    dms([::AWSConfig], "DescribeEvents", <keyword arguments>)

# DescribeEvents Operation

Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on AWS DMS events, see [Working with Events and Notifications](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) .

# Arguments

## `SourceIdentifier = ::String`
The identifier of the event source. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens. It cannot end with a hyphen or contain two consecutive hyphens.


## `SourceType = "replication-instance"`
The type of AWS DMS resource that generates events.

Valid values: replication-instance | migration-task


## `StartTime = timestamp`
The start time for the events to be listed.


## `EndTime = timestamp`
The end time for the events to be listed.


## `Duration = ::Int`
The duration of the events to be listed.


## `EventCategories = [::String, ...]`
A list of event categories for a source type that you want to subscribe to.


## `Filters = [[ ... ], ...]`
Filters applied to the action.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeEventsResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEvents)
"""
@inline describe_events(aws::AWSConfig=default_aws_config(); args...) = describe_events(aws, args)

@inline describe_events(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeEvents", args)

@inline describe_events(args) = describe_events(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_orderable_replication_instances
    describe_orderable_replication_instances([::AWSConfig], arguments::Dict)
    describe_orderable_replication_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeOrderableReplicationInstances", arguments::Dict)
    dms([::AWSConfig], "DescribeOrderableReplicationInstances", <keyword arguments>)

# DescribeOrderableReplicationInstances Operation

Returns information about the replication instance types that can be created in the specified region.

# Arguments

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeOrderableReplicationInstancesResponse`

# Example: Describe orderable replication instances

Returns information about the replication instance types that can be created in the specified region.

Input:
```
[
    "Marker" => "",
    "MaxRecords" => 123
]
```

Output:
```
Dict(
    "Marker" => "",
    "OrderableReplicationInstances" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeOrderableReplicationInstances)
"""
@inline describe_orderable_replication_instances(aws::AWSConfig=default_aws_config(); args...) = describe_orderable_replication_instances(aws, args)

@inline describe_orderable_replication_instances(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeOrderableReplicationInstances", args)

@inline describe_orderable_replication_instances(args) = describe_orderable_replication_instances(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_refresh_schemas_status
    describe_refresh_schemas_status([::AWSConfig], arguments::Dict)
    describe_refresh_schemas_status([::AWSConfig]; EndpointArn=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeRefreshSchemasStatus", arguments::Dict)
    dms([::AWSConfig], "DescribeRefreshSchemasStatus", EndpointArn=)

# DescribeRefreshSchemasStatus Operation

Returns the status of the RefreshSchemas operation.

# Arguments

## `EndpointArn = ::String` -- *Required*
The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.




# Returns

`DescribeRefreshSchemasStatusResponse`

# Exceptions

`InvalidResourceStateFault` or `ResourceNotFoundFault`.

# Example: Describe refresh schema status

Returns the status of the refresh-schemas operation.

Input:
```
[
    "EndpointArn" => ""
]
```

Output:
```
Dict(
    "RefreshSchemasStatus" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeRefreshSchemasStatus)
"""
@inline describe_refresh_schemas_status(aws::AWSConfig=default_aws_config(); args...) = describe_refresh_schemas_status(aws, args)

@inline describe_refresh_schemas_status(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeRefreshSchemasStatus", args)

@inline describe_refresh_schemas_status(args) = describe_refresh_schemas_status(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_replication_instance_task_logs
    describe_replication_instance_task_logs([::AWSConfig], arguments::Dict)
    describe_replication_instance_task_logs([::AWSConfig]; ReplicationInstanceArn=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeReplicationInstanceTaskLogs", arguments::Dict)
    dms([::AWSConfig], "DescribeReplicationInstanceTaskLogs", ReplicationInstanceArn=, <keyword arguments>)

# DescribeReplicationInstanceTaskLogs Operation

Returns information about the task logs for the specified task.

# Arguments

## `ReplicationInstanceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication instance.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeReplicationInstanceTaskLogsResponse`

# Exceptions

`ResourceNotFoundFault` or `InvalidResourceStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationInstanceTaskLogs)
"""
@inline describe_replication_instance_task_logs(aws::AWSConfig=default_aws_config(); args...) = describe_replication_instance_task_logs(aws, args)

@inline describe_replication_instance_task_logs(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeReplicationInstanceTaskLogs", args)

@inline describe_replication_instance_task_logs(args) = describe_replication_instance_task_logs(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_replication_instances
    describe_replication_instances([::AWSConfig], arguments::Dict)
    describe_replication_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeReplicationInstances", arguments::Dict)
    dms([::AWSConfig], "DescribeReplicationInstances", <keyword arguments>)

# DescribeReplicationInstances Operation

Returns information about replication instances for your account in the current region.

# Arguments

## `Filters = [[ ... ], ...]`
Filters applied to the describe action.

Valid filter names: replication-instance-arn | replication-instance-id | replication-instance-class | engine-version
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeReplicationInstancesResponse`

# Exceptions

`ResourceNotFoundFault`.

# Example: Describe replication instances

Returns the status of the refresh-schemas operation.

Input:
```
[
    "Filters" => [
        [
            "Name" => "string",
            "Values" => [
                "string",
                "string"
            ]
        ]
    ],
    "Marker" => "",
    "MaxRecords" => 123
]
```

Output:
```
Dict(
    "Marker" => "",
    "ReplicationInstances" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationInstances)
"""
@inline describe_replication_instances(aws::AWSConfig=default_aws_config(); args...) = describe_replication_instances(aws, args)

@inline describe_replication_instances(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeReplicationInstances", args)

@inline describe_replication_instances(args) = describe_replication_instances(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_replication_subnet_groups
    describe_replication_subnet_groups([::AWSConfig], arguments::Dict)
    describe_replication_subnet_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeReplicationSubnetGroups", arguments::Dict)
    dms([::AWSConfig], "DescribeReplicationSubnetGroups", <keyword arguments>)

# DescribeReplicationSubnetGroups Operation

Returns information about the replication subnet groups.

# Arguments

## `Filters = [[ ... ], ...]`
Filters applied to the describe action.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeReplicationSubnetGroupsResponse`

# Exceptions

`ResourceNotFoundFault`.

# Example: Describe replication subnet groups

Returns information about the replication subnet groups.

Input:
```
[
    "Filters" => [
        [
            "Name" => "string",
            "Values" => [
                "string",
                "string"
            ]
        ]
    ],
    "Marker" => "",
    "MaxRecords" => 123
]
```

Output:
```
Dict(
    "Marker" => "",
    "ReplicationSubnetGroups" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationSubnetGroups)
"""
@inline describe_replication_subnet_groups(aws::AWSConfig=default_aws_config(); args...) = describe_replication_subnet_groups(aws, args)

@inline describe_replication_subnet_groups(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeReplicationSubnetGroups", args)

@inline describe_replication_subnet_groups(args) = describe_replication_subnet_groups(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_replication_task_assessment_results
    describe_replication_task_assessment_results([::AWSConfig], arguments::Dict)
    describe_replication_task_assessment_results([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeReplicationTaskAssessmentResults", arguments::Dict)
    dms([::AWSConfig], "DescribeReplicationTaskAssessmentResults", <keyword arguments>)

# DescribeReplicationTaskAssessmentResults Operation

Returns the task assessment results from Amazon S3. This action always returns the latest results.

# Arguments

## `ReplicationTaskArn = ::String`
- The Amazon Resource Name (ARN) string that uniquely identifies the task. When this input parameter is specified the API will return only one result and ignore the values of the max-records and marker parameters.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeReplicationTaskAssessmentResultsResponse`

# Exceptions

`ResourceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTaskAssessmentResults)
"""
@inline describe_replication_task_assessment_results(aws::AWSConfig=default_aws_config(); args...) = describe_replication_task_assessment_results(aws, args)

@inline describe_replication_task_assessment_results(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeReplicationTaskAssessmentResults", args)

@inline describe_replication_task_assessment_results(args) = describe_replication_task_assessment_results(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_replication_tasks
    describe_replication_tasks([::AWSConfig], arguments::Dict)
    describe_replication_tasks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeReplicationTasks", arguments::Dict)
    dms([::AWSConfig], "DescribeReplicationTasks", <keyword arguments>)

# DescribeReplicationTasks Operation

Returns information about replication tasks for your account in the current region.

# Arguments

## `Filters = [[ ... ], ...]`
Filters applied to the describe action.

Valid filter names: replication-task-arn | replication-task-id | migration-type | endpoint-arn | replication-instance-arn
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeReplicationTasksResponse`

# Exceptions

`ResourceNotFoundFault`.

# Example: Describe replication tasks

Returns information about replication tasks for your account in the current region.

Input:
```
[
    "Filters" => [
        [
            "Name" => "string",
            "Values" => [
                "string",
                "string"
            ]
        ]
    ],
    "Marker" => "",
    "MaxRecords" => 123
]
```

Output:
```
Dict(
    "Marker" => "",
    "ReplicationTasks" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTasks)
"""
@inline describe_replication_tasks(aws::AWSConfig=default_aws_config(); args...) = describe_replication_tasks(aws, args)

@inline describe_replication_tasks(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeReplicationTasks", args)

@inline describe_replication_tasks(args) = describe_replication_tasks(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_schemas
    describe_schemas([::AWSConfig], arguments::Dict)
    describe_schemas([::AWSConfig]; EndpointArn=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeSchemas", arguments::Dict)
    dms([::AWSConfig], "DescribeSchemas", EndpointArn=, <keyword arguments>)

# DescribeSchemas Operation

Returns information about the schema for the specified endpoint.

# Arguments

## `EndpointArn = ::String` -- *Required*
The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.




# Returns

`DescribeSchemasResponse`

# Exceptions

`InvalidResourceStateFault` or `ResourceNotFoundFault`.

# Example: Describe schemas

Returns information about the schema for the specified endpoint.

Input:
```
[
    "EndpointArn" => "",
    "Marker" => "",
    "MaxRecords" => 123
]
```

Output:
```
Dict(
    "Marker" => "",
    "Schemas" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeSchemas)
"""
@inline describe_schemas(aws::AWSConfig=default_aws_config(); args...) = describe_schemas(aws, args)

@inline describe_schemas(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeSchemas", args)

@inline describe_schemas(args) = describe_schemas(default_aws_config(), args)


"""
    using AWSSDK.DMS.describe_table_statistics
    describe_table_statistics([::AWSConfig], arguments::Dict)
    describe_table_statistics([::AWSConfig]; ReplicationTaskArn=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "DescribeTableStatistics", arguments::Dict)
    dms([::AWSConfig], "DescribeTableStatistics", ReplicationTaskArn=, <keyword arguments>)

# DescribeTableStatistics Operation

Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted.

Note that the "last updated" column the DMS console only indicates the time that AWS DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.

# Arguments

## `ReplicationTaskArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication task.


## `MaxRecords = ::Int`
The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 500.


## `Marker = ::String`
An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.


## `Filters = [[ ... ], ...]`
Filters applied to the describe table statistics action.

Valid filter names: schema-name | table-name | table-state

A combination of filters creates an AND condition where each record matches all specified filters.
```
 Filters = [[
        "Name" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```



# Returns

`DescribeTableStatisticsResponse`

# Exceptions

`ResourceNotFoundFault` or `InvalidResourceStateFault`.

# Example: Describe table statistics

Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted.

Input:
```
[
    "Marker" => "",
    "MaxRecords" => 123,
    "ReplicationTaskArn" => ""
]
```

Output:
```
Dict(
    "Marker" => "",
    "ReplicationTaskArn" => "",
    "TableStatistics" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeTableStatistics)
"""
@inline describe_table_statistics(aws::AWSConfig=default_aws_config(); args...) = describe_table_statistics(aws, args)

@inline describe_table_statistics(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "DescribeTableStatistics", args)

@inline describe_table_statistics(args) = describe_table_statistics(default_aws_config(), args)


"""
    using AWSSDK.DMS.import_certificate
    import_certificate([::AWSConfig], arguments::Dict)
    import_certificate([::AWSConfig]; CertificateIdentifier=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "ImportCertificate", arguments::Dict)
    dms([::AWSConfig], "ImportCertificate", CertificateIdentifier=, <keyword arguments>)

# ImportCertificate Operation

Uploads the specified certificate.

# Arguments

## `CertificateIdentifier = ::String` -- *Required*
The customer-assigned name of the certificate. Valid characters are A-z and 0-9.


## `CertificatePem = ::String`
The contents of the .pem X.509 certificate file for the certificate.


## `CertificateWallet = blob`
The location of the imported Oracle Wallet certificate for use with SSL.


## `Tags = [[ ... ], ...]`
The tags associated with the certificate.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`ImportCertificateResponse`

# Exceptions

`ResourceAlreadyExistsFault`, `InvalidCertificateFault` or `ResourceQuotaExceededFault`.

# Example: Import certificate

Uploads the specified certificate.

Input:
```
[
    "CertificateIdentifier" => "",
    "CertificatePem" => ""
]
```

Output:
```
Dict(
    "Certificate" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ImportCertificate)
"""
@inline import_certificate(aws::AWSConfig=default_aws_config(); args...) = import_certificate(aws, args)

@inline import_certificate(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "ImportCertificate", args)

@inline import_certificate(args) = import_certificate(default_aws_config(), args)


"""
    using AWSSDK.DMS.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; ResourceArn=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "ListTagsForResource", arguments::Dict)
    dms([::AWSConfig], "ListTagsForResource", ResourceArn=)

# ListTagsForResource Operation

Lists all tags for an AWS DMS resource.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) string that uniquely identifies the AWS DMS resource.




# Returns

`ListTagsForResourceResponse`

# Exceptions

`ResourceNotFoundFault`.

# Example: List tags for resource

Lists all tags for an AWS DMS resource.

Input:
```
[
    "ResourceArn" => ""
]
```

Output:
```
Dict(
    "TagList" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "ListTagsForResource", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.DMS.modify_endpoint
    modify_endpoint([::AWSConfig], arguments::Dict)
    modify_endpoint([::AWSConfig]; EndpointArn=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "ModifyEndpoint", arguments::Dict)
    dms([::AWSConfig], "ModifyEndpoint", EndpointArn=, <keyword arguments>)

# ModifyEndpoint Operation

Modifies the specified endpoint.

# Arguments

## `EndpointArn = ::String` -- *Required*
The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.


## `EndpointIdentifier = ::String`
The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.


## `EndpointType = "source" or "target"`
The type of endpoint.


## `EngineName = ::String`
The type of engine for the endpoint. Valid values, depending on the EndPointType, include mysql, oracle, postgres, mariadb, aurora, aurora-postgresql, redshift, s3, db2, azuredb, sybase, sybase, dynamodb, mongodb, and sqlserver.


## `Username = ::String`
The user name to be used to login to the endpoint database.


## `Password = ::String`
The password to be used to login to the endpoint database.


## `ServerName = ::String`
The name of the server where the endpoint database resides.


## `Port = ::Int`
The port used by the endpoint database.


## `DatabaseName = ::String`
The name of the endpoint database.


## `ExtraConnectionAttributes = ::String`
Additional attributes associated with the connection. To reset this parameter, pass the empty string ("") as an argument.


## `CertificateArn = ::String`
The Amazon Resource Name (ARN) of the certificate used for SSL connection.


## `SslMode = "none", "require", "verify-ca" or "verify-full"`
The SSL mode to be used.

SSL mode can be one of four values: none, require, verify-ca, verify-full.

The default value is none.


## `ServiceAccessRoleArn = ::String`
The Amazon Resource Name (ARN) for the service access role you want to use to modify the endpoint.


## `ExternalTableDefinition = ::String`
The external table definition.


## `DynamoDbSettings = ["ServiceAccessRoleArn" => <required> ::String]`
Settings in JSON format for the target Amazon DynamoDB endpoint. For more information about the available settings, see the **Using Object Mapping to Migrate Data to DynamoDB** section at [Using an Amazon DynamoDB Database as a Target for AWS Database Migration Service](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html).


## `S3Settings = [ ... ]`
Settings in JSON format for the target S3 endpoint. For more information about the available settings, see the **Extra Connection Attributes** section at [Using Amazon S3 as a Target for AWS Database Migration Service](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html).
```
 S3Settings = [
        "ServiceAccessRoleArn" =>  ::String,
        "ExternalTableDefinition" =>  ::String,
        "CsvRowDelimiter" =>  ::String,
        "CsvDelimiter" =>  ::String,
        "BucketFolder" =>  ::String,
        "BucketName" =>  ::String,
        "CompressionType" =>  "none" or "gzip"
    ]
```

## `DmsTransferSettings = [ ... ]`
The settings in JSON format for the DMS Transfer type source endpoint.

Attributes include:

*   serviceAccessRoleArn - The IAM role that has permission to access the Amazon S3 bucket.

*   BucketName - The name of the S3 bucket to use.

*   compressionType - An optional parameter to use GZIP to compress the target files. Set to NONE (the default) or do not use to leave the files uncompressed.

Shorthand syntax: ServiceAccessRoleArn=string ,BucketName=string,CompressionType=string

JSON syntax:

{ "ServiceAccessRoleArn": "string", "BucketName": "string", "CompressionType": "none"|"gzip" }
```
 DmsTransferSettings = [
        "ServiceAccessRoleArn" =>  ::String,
        "BucketName" =>  ::String
    ]
```

## `MongoDbSettings = [ ... ]`
Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see the **Configuration Properties When Using MongoDB as a Source for AWS Database Migration Service** section at [Using Amazon S3 as a Target for AWS Database Migration Service](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html).
```
 MongoDbSettings = [
        "Username" =>  ::String,
        "Password" =>  ::String,
        "ServerName" =>  ::String,
        "Port" =>  ::Int,
        "DatabaseName" =>  ::String,
        "AuthType" =>  "no" or "password",
        "AuthMechanism" =>  "default", "mongodb_cr" or "scram_sha_1",
        "NestingLevel" =>  "none" or "one",
        "ExtractDocId" =>  ::String,
        "DocsToInvestigate" =>  ::String,
        "AuthSource" =>  ::String,
        "KmsKeyId" =>  ::String
    ]
```



# Returns

`ModifyEndpointResponse`

# Exceptions

`InvalidResourceStateFault`, `ResourceNotFoundFault`, `ResourceAlreadyExistsFault`, `KMSKeyNotAccessibleFault` or `AccessDeniedFault`.

# Example: Modify endpoint

Modifies the specified endpoint.

Input:
```
[
    "CertificateArn" => "",
    "DatabaseName" => "",
    "EndpointArn" => "",
    "EndpointIdentifier" => "",
    "EndpointType" => "source",
    "EngineName" => "",
    "ExtraConnectionAttributes" => "",
    "Password" => "",
    "Port" => 123,
    "ServerName" => "",
    "SslMode" => "require",
    "Username" => ""
]
```

Output:
```
Dict(
    "Endpoint" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyEndpoint)
"""
@inline modify_endpoint(aws::AWSConfig=default_aws_config(); args...) = modify_endpoint(aws, args)

@inline modify_endpoint(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "ModifyEndpoint", args)

@inline modify_endpoint(args) = modify_endpoint(default_aws_config(), args)


"""
    using AWSSDK.DMS.modify_event_subscription
    modify_event_subscription([::AWSConfig], arguments::Dict)
    modify_event_subscription([::AWSConfig]; SubscriptionName=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "ModifyEventSubscription", arguments::Dict)
    dms([::AWSConfig], "ModifyEventSubscription", SubscriptionName=, <keyword arguments>)

# ModifyEventSubscription Operation

Modifies an existing AWS DMS event notification subscription.

# Arguments

## `SubscriptionName = ::String` -- *Required*
The name of the AWS DMS event notification subscription to be modified.


## `SnsTopicArn = ::String`
The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.


## `SourceType = ::String`
The type of AWS DMS resource that generates the events you want to subscribe to.

Valid values: replication-instance | migration-task


## `EventCategories = [::String, ...]`
A list of event categories for a source type that you want to subscribe to. Use the `DescribeEventCategories` action to see a list of event categories.


## `Enabled = ::Bool`
A Boolean value; set to **true** to activate the subscription.




# Returns

`ModifyEventSubscriptionResponse`

# Exceptions

`ResourceQuotaExceededFault`, `ResourceNotFoundFault`, `SNSInvalidTopicFault` or `SNSNoAuthorizationFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyEventSubscription)
"""
@inline modify_event_subscription(aws::AWSConfig=default_aws_config(); args...) = modify_event_subscription(aws, args)

@inline modify_event_subscription(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "ModifyEventSubscription", args)

@inline modify_event_subscription(args) = modify_event_subscription(default_aws_config(), args)


"""
    using AWSSDK.DMS.modify_replication_instance
    modify_replication_instance([::AWSConfig], arguments::Dict)
    modify_replication_instance([::AWSConfig]; ReplicationInstanceArn=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "ModifyReplicationInstance", arguments::Dict)
    dms([::AWSConfig], "ModifyReplicationInstance", ReplicationInstanceArn=, <keyword arguments>)

# ModifyReplicationInstance Operation

Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request.

Some settings are applied during the maintenance window.

# Arguments

## `ReplicationInstanceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication instance.


## `AllocatedStorage = ::Int`
The amount of storage (in gigabytes) to be allocated for the replication instance.


## `ApplyImmediately = ::Bool`
Indicates whether the changes should be applied immediately or during the next maintenance window.


## `ReplicationInstanceClass = ::String`
The compute and memory capacity of the replication instance.

Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge`


## `VpcSecurityGroupIds = [::String, ...]`
Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance.


## `PreferredMaintenanceWindow = ::String`
The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter does not result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.

Default: Uses existing setting

Format: ddd:hh24:mi-ddd:hh24:mi

Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun

Constraints: Must be at least 30 minutes


## `MultiAZ = ::Bool`
Specifies if the replication instance is a Multi-AZ deployment. You cannot set the `AvailabilityZone` parameter if the Multi-AZ parameter is set to `true`.


## `EngineVersion = ::String`
The engine version number of the replication instance.


## `AllowMajorVersionUpgrade = ::Bool`
Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible.

Constraints: This parameter must be set to true when specifying a value for the `EngineVersion` parameter that is a different major version than the replication instance's current version.


## `AutoMinorVersionUpgrade = ::Bool`
Indicates that minor version upgrades will be applied automatically to the replication instance during the maintenance window. Changing this parameter does not result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to `true` during the maintenance window, and a newer minor version is available, and AWS DMS has enabled auto patching for that engine version.


## `ReplicationInstanceIdentifier = ::String`
The replication instance identifier. This parameter is stored as a lowercase string.




# Returns

`ModifyReplicationInstanceResponse`

# Exceptions

`InvalidResourceStateFault`, `ResourceAlreadyExistsFault`, `ResourceNotFoundFault`, `InsufficientResourceCapacityFault`, `StorageQuotaExceededFault` or `UpgradeDependencyFailureFault`.

# Example: Modify replication instance

Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request. Some settings are applied during the maintenance window.

Input:
```
[
    "AllocatedStorage" => 123,
    "AllowMajorVersionUpgrade" => true,
    "ApplyImmediately" => true,
    "AutoMinorVersionUpgrade" => true,
    "EngineVersion" => "1.5.0",
    "MultiAZ" => true,
    "PreferredMaintenanceWindow" => "sun:06:00-sun:14:00",
    "ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    "ReplicationInstanceClass" => "dms.t2.micro",
    "ReplicationInstanceIdentifier" => "test-rep-1",
    "VpcSecurityGroupIds" => [

    ]
]
```

Output:
```
Dict(
    "ReplicationInstance" => Dict(
        "AllocatedStorage" => 5,
        "AutoMinorVersionUpgrade" => true,
        "EngineVersion" => "1.5.0",
        "KmsKeyId" => "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
        "PendingModifiedValues" => Dict(

        ),
        "PreferredMaintenanceWindow" => "sun:06:00-sun:14:00",
        "PubliclyAccessible" => true,
        "ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
        "ReplicationInstanceClass" => "dms.t2.micro",
        "ReplicationInstanceIdentifier" => "test-rep-1",
        "ReplicationInstanceStatus" => "available",
        "ReplicationSubnetGroup" => Dict(
            "ReplicationSubnetGroupDescription" => "default",
            "ReplicationSubnetGroupIdentifier" => "default",
            "SubnetGroupStatus" => "Complete",
            "Subnets" => [
                Dict(
                    "SubnetAvailabilityZone" => Dict(
                        "Name" => "us-east-1d"
                    ),
                    "SubnetIdentifier" => "subnet-f6dd91af",
                    "SubnetStatus" => "Active"
                ),
                Dict(
                    "SubnetAvailabilityZone" => Dict(
                        "Name" => "us-east-1b"
                    ),
                    "SubnetIdentifier" => "subnet-3605751d",
                    "SubnetStatus" => "Active"
                ),
                Dict(
                    "SubnetAvailabilityZone" => Dict(
                        "Name" => "us-east-1c"
                    ),
                    "SubnetIdentifier" => "subnet-c2daefb5",
                    "SubnetStatus" => "Active"
                ),
                Dict(
                    "SubnetAvailabilityZone" => Dict(
                        "Name" => "us-east-1e"
                    ),
                    "SubnetIdentifier" => "subnet-85e90cb8",
                    "SubnetStatus" => "Active"
                )
            ],
            "VpcId" => "vpc-6741a603"
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationInstance)
"""
@inline modify_replication_instance(aws::AWSConfig=default_aws_config(); args...) = modify_replication_instance(aws, args)

@inline modify_replication_instance(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "ModifyReplicationInstance", args)

@inline modify_replication_instance(args) = modify_replication_instance(default_aws_config(), args)


"""
    using AWSSDK.DMS.modify_replication_subnet_group
    modify_replication_subnet_group([::AWSConfig], arguments::Dict)
    modify_replication_subnet_group([::AWSConfig]; ReplicationSubnetGroupIdentifier=, SubnetIds=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "ModifyReplicationSubnetGroup", arguments::Dict)
    dms([::AWSConfig], "ModifyReplicationSubnetGroup", ReplicationSubnetGroupIdentifier=, SubnetIds=, <keyword arguments>)

# ModifyReplicationSubnetGroup Operation

Modifies the settings for the specified replication subnet group.

# Arguments

## `ReplicationSubnetGroupIdentifier = ::String` -- *Required*
The name of the replication instance subnet group.


## `ReplicationSubnetGroupDescription = ::String`
The description of the replication instance subnet group.


## `SubnetIds = [::String, ...]` -- *Required*
A list of subnet IDs.




# Returns

`ModifyReplicationSubnetGroupResponse`

# Exceptions

`AccessDeniedFault`, `ResourceNotFoundFault`, `ResourceQuotaExceededFault`, `SubnetAlreadyInUse`, `ReplicationSubnetGroupDoesNotCoverEnoughAZs` or `InvalidSubnet`.

# Example: Modify replication subnet group

Modifies the settings for the specified replication subnet group.

Input:
```
[
    "ReplicationSubnetGroupDescription" => "",
    "ReplicationSubnetGroupIdentifier" => "",
    "SubnetIds" => [

    ]
]
```

Output:
```
Dict(
    "ReplicationSubnetGroup" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationSubnetGroup)
"""
@inline modify_replication_subnet_group(aws::AWSConfig=default_aws_config(); args...) = modify_replication_subnet_group(aws, args)

@inline modify_replication_subnet_group(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "ModifyReplicationSubnetGroup", args)

@inline modify_replication_subnet_group(args) = modify_replication_subnet_group(default_aws_config(), args)


"""
    using AWSSDK.DMS.modify_replication_task
    modify_replication_task([::AWSConfig], arguments::Dict)
    modify_replication_task([::AWSConfig]; ReplicationTaskArn=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "ModifyReplicationTask", arguments::Dict)
    dms([::AWSConfig], "ModifyReplicationTask", ReplicationTaskArn=, <keyword arguments>)

# ModifyReplicationTask Operation

Modifies the specified replication task.

You can't modify the task endpoints. The task must be stopped before you can modify it.

For more information about AWS DMS tasks, see the AWS DMS user guide at [Working with Migration Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html)

# Arguments

## `ReplicationTaskArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication task.


## `ReplicationTaskIdentifier = ::String`
The replication task identifier.

Constraints:

*   Must contain from 1 to 255 alphanumeric characters or hyphens.

*   First character must be a letter.

*   Cannot end with a hyphen or contain two consecutive hyphens.


## `MigrationType = "full-load", "cdc" or "full-load-and-cdc"`
The migration type.

Valid values: full-load | cdc | full-load-and-cdc


## `TableMappings = ::String`
When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with "file://". When working with the DMS API, provide the JSON as the parameter value.

For example, --table-mappings file://mappingfile.json


## `ReplicationTaskSettings = ::String`
JSON file that contains settings for the task, such as target metadata settings.


## `CdcStartTime = timestamp`
Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error.

Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”


## `CdcStartPosition = ::String`
Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.

The value can be in date, checkpoint, or LSN/SCN format.

Date Example: --cdc-start-position “2018-03-08T12:12:12”

Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"

LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”


## `CdcStopPosition = ::String`
Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.

Server time example: --cdc-stop-position “server_time:3018-02-09T12:12:12”

Commit time example: --cdc-stop-position “commit_time: 3018-02-09T12:12:12 “




# Returns

`ModifyReplicationTaskResponse`

# Exceptions

`InvalidResourceStateFault`, `ResourceNotFoundFault`, `ResourceAlreadyExistsFault` or `KMSKeyNotAccessibleFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationTask)
"""
@inline modify_replication_task(aws::AWSConfig=default_aws_config(); args...) = modify_replication_task(aws, args)

@inline modify_replication_task(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "ModifyReplicationTask", args)

@inline modify_replication_task(args) = modify_replication_task(default_aws_config(), args)


"""
    using AWSSDK.DMS.reboot_replication_instance
    reboot_replication_instance([::AWSConfig], arguments::Dict)
    reboot_replication_instance([::AWSConfig]; ReplicationInstanceArn=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "RebootReplicationInstance", arguments::Dict)
    dms([::AWSConfig], "RebootReplicationInstance", ReplicationInstanceArn=, <keyword arguments>)

# RebootReplicationInstance Operation

Reboots a replication instance. Rebooting results in a momentary outage, until the replication instance becomes available again.

# Arguments

## `ReplicationInstanceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication instance.


## `ForceFailover = ::Bool`
If this parameter is `true`, the reboot is conducted through a Multi-AZ failover. (If the instance isn't configured for Multi-AZ, then you can't specify `true`.)




# Returns

`RebootReplicationInstanceResponse`

# Exceptions

`ResourceNotFoundFault` or `InvalidResourceStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RebootReplicationInstance)
"""
@inline reboot_replication_instance(aws::AWSConfig=default_aws_config(); args...) = reboot_replication_instance(aws, args)

@inline reboot_replication_instance(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "RebootReplicationInstance", args)

@inline reboot_replication_instance(args) = reboot_replication_instance(default_aws_config(), args)


"""
    using AWSSDK.DMS.refresh_schemas
    refresh_schemas([::AWSConfig], arguments::Dict)
    refresh_schemas([::AWSConfig]; EndpointArn=, ReplicationInstanceArn=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "RefreshSchemas", arguments::Dict)
    dms([::AWSConfig], "RefreshSchemas", EndpointArn=, ReplicationInstanceArn=)

# RefreshSchemas Operation

Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the DescribeRefreshSchemasStatus operation.

# Arguments

## `EndpointArn = ::String` -- *Required*
The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.


## `ReplicationInstanceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication instance.




# Returns

`RefreshSchemasResponse`

# Exceptions

`InvalidResourceStateFault`, `ResourceNotFoundFault`, `KMSKeyNotAccessibleFault` or `ResourceQuotaExceededFault`.

# Example: Refresh schema

Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the describe-refresh-schemas-status operation.

Input:
```
[
    "EndpointArn" => "",
    "ReplicationInstanceArn" => ""
]
```

Output:
```
Dict(
    "RefreshSchemasStatus" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RefreshSchemas)
"""
@inline refresh_schemas(aws::AWSConfig=default_aws_config(); args...) = refresh_schemas(aws, args)

@inline refresh_schemas(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "RefreshSchemas", args)

@inline refresh_schemas(args) = refresh_schemas(default_aws_config(), args)


"""
    using AWSSDK.DMS.reload_tables
    reload_tables([::AWSConfig], arguments::Dict)
    reload_tables([::AWSConfig]; ReplicationTaskArn=, TablesToReload=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "ReloadTables", arguments::Dict)
    dms([::AWSConfig], "ReloadTables", ReplicationTaskArn=, TablesToReload=, <keyword arguments>)

# ReloadTables Operation

Reloads the target database table with the source data.

# Arguments

## `ReplicationTaskArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication task.


## `TablesToReload = [[ ... ], ...]` -- *Required*
The name and schema of the table to be reloaded.
```
 TablesToReload = [[
        "SchemaName" =>  ::String,
        "TableName" =>  ::String
    ], ...]
```

## `ReloadOption = "data-reload" or "validate-only"`
Options for reload. Specify `data-reload` to reload the data and re-validate it if validation is enabled. Specify `validate-only` to re-validate the table. This option applies only when validation is enabled for the task.

Valid values: data-reload, validate-only

Default value is data-reload.




# Returns

`ReloadTablesResponse`

# Exceptions

`ResourceNotFoundFault` or `InvalidResourceStateFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReloadTables)
"""
@inline reload_tables(aws::AWSConfig=default_aws_config(); args...) = reload_tables(aws, args)

@inline reload_tables(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "ReloadTables", args)

@inline reload_tables(args) = reload_tables(default_aws_config(), args)


"""
    using AWSSDK.DMS.remove_tags_from_resource
    remove_tags_from_resource([::AWSConfig], arguments::Dict)
    remove_tags_from_resource([::AWSConfig]; ResourceArn=, TagKeys=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "RemoveTagsFromResource", arguments::Dict)
    dms([::AWSConfig], "RemoveTagsFromResource", ResourceArn=, TagKeys=)

# RemoveTagsFromResource Operation

Removes metadata tags from a DMS resource.

# Arguments

## `ResourceArn = ::String` -- *Required*
>The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to be removed from.


## `TagKeys = [::String, ...]` -- *Required*
The tag key (name) of the tag to be removed.




# Returns

`RemoveTagsFromResourceResponse`

# Exceptions

`ResourceNotFoundFault`.

# Example: Remove tags from resource

Removes metadata tags from an AWS DMS resource.

Input:
```
[
    "ResourceArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E",
    "TagKeys" => [

    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RemoveTagsFromResource)
"""
@inline remove_tags_from_resource(aws::AWSConfig=default_aws_config(); args...) = remove_tags_from_resource(aws, args)

@inline remove_tags_from_resource(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "RemoveTagsFromResource", args)

@inline remove_tags_from_resource(args) = remove_tags_from_resource(default_aws_config(), args)


"""
    using AWSSDK.DMS.start_replication_task
    start_replication_task([::AWSConfig], arguments::Dict)
    start_replication_task([::AWSConfig]; ReplicationTaskArn=, StartReplicationTaskType=, <keyword arguments>)

    using AWSCore.Services.dms
    dms([::AWSConfig], "StartReplicationTask", arguments::Dict)
    dms([::AWSConfig], "StartReplicationTask", ReplicationTaskArn=, StartReplicationTaskType=, <keyword arguments>)

# StartReplicationTask Operation

Starts the replication task.

For more information about AWS DMS tasks, see the AWS DMS user guide at [Working with Migration Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html)

# Arguments

## `ReplicationTaskArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication task to be started.


## `StartReplicationTaskType = "start-replication", "resume-processing" or "reload-target"` -- *Required*
The type of replication task.


## `CdcStartTime = timestamp`
Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error.

Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”


## `CdcStartPosition = ::String`
Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.

The value can be in date, checkpoint, or LSN/SCN format.

Date Example: --cdc-start-position “2018-03-08T12:12:12”

Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"

LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”


## `CdcStopPosition = ::String`
Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.

Server time example: --cdc-stop-position “server_time:3018-02-09T12:12:12”

Commit time example: --cdc-stop-position “commit_time: 3018-02-09T12:12:12 “




# Returns

`StartReplicationTaskResponse`

# Exceptions

`ResourceNotFoundFault`, `InvalidResourceStateFault` or `AccessDeniedFault`.

# Example: Start replication task

Starts the replication task.

Input:
```
[
    "CdcStartTime" => "2016-12-14T13:33:20Z",
    "ReplicationTaskArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
    "StartReplicationTaskType" => "start-replication"
]
```

Output:
```
Dict(
    "ReplicationTask" => Dict(
        "MigrationType" => "full-load",
        "ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
        "ReplicationTaskArn" => "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM",
        "ReplicationTaskCreationDate" => "2016-12-14T18:25:43Z",
        "ReplicationTaskIdentifier" => "task1",
        "ReplicationTaskSettings" => "{"TargetMetadata":{"TargetSchema":"","SupportLobs":true,"FullLobMode":true,"LobChunkSize":64,"LimitedSizeLobMode":false,"LobMaxSize":0},"FullLoadSettings":{"FullLoadEnabled":true,"ApplyChangesEnabled":false,"TargetTablePrepMode":"DROP_AND_CREATE","CreatePkAfterFullLoad":false,"StopTaskCachedChangesApplied":false,"StopTaskCachedChangesNotApplied":false,"ResumeEnabled":false,"ResumeMinTableSize":100000,"ResumeOnlyClusteredPKTables":true,"MaxFullLoadSubTasks":8,"TransactionConsistencyTimeout":600,"CommitRate":10000},"Logging":{"EnableLogging":false}}",
        "SourceEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
        "Status" => "creating",
        "TableMappings" => "file://mappingfile.json",
        "TargetEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTask)
"""
@inline start_replication_task(aws::AWSConfig=default_aws_config(); args...) = start_replication_task(aws, args)

@inline start_replication_task(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "StartReplicationTask", args)

@inline start_replication_task(args) = start_replication_task(default_aws_config(), args)


"""
    using AWSSDK.DMS.start_replication_task_assessment
    start_replication_task_assessment([::AWSConfig], arguments::Dict)
    start_replication_task_assessment([::AWSConfig]; ReplicationTaskArn=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "StartReplicationTaskAssessment", arguments::Dict)
    dms([::AWSConfig], "StartReplicationTaskAssessment", ReplicationTaskArn=)

# StartReplicationTaskAssessment Operation

Starts the replication task assessment for unsupported data types in the source database.

# Arguments

## `ReplicationTaskArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication task.




# Returns

`StartReplicationTaskAssessmentResponse`

# Exceptions

`InvalidResourceStateFault` or `ResourceNotFoundFault`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTaskAssessment)
"""
@inline start_replication_task_assessment(aws::AWSConfig=default_aws_config(); args...) = start_replication_task_assessment(aws, args)

@inline start_replication_task_assessment(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "StartReplicationTaskAssessment", args)

@inline start_replication_task_assessment(args) = start_replication_task_assessment(default_aws_config(), args)


"""
    using AWSSDK.DMS.stop_replication_task
    stop_replication_task([::AWSConfig], arguments::Dict)
    stop_replication_task([::AWSConfig]; ReplicationTaskArn=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "StopReplicationTask", arguments::Dict)
    dms([::AWSConfig], "StopReplicationTask", ReplicationTaskArn=)

# StopReplicationTask Operation

Stops the replication task.

# Arguments

## `ReplicationTaskArn = ::String` -- *Required*
The Amazon Resource Name(ARN) of the replication task to be stopped.




# Returns

`StopReplicationTaskResponse`

# Exceptions

`ResourceNotFoundFault` or `InvalidResourceStateFault`.

# Example: Stop replication task

Stops the replication task.

Input:
```
[
    "ReplicationTaskArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E"
]
```

Output:
```
Dict(
    "ReplicationTask" => Dict(
        "MigrationType" => "full-load",
        "ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
        "ReplicationTaskArn" => "arn:aws:dms:us-east-1:123456789012:task:OEAMB3NXSTZ6LFYZFEPPBBXPYM",
        "ReplicationTaskCreationDate" => "2016-12-14T18:25:43Z",
        "ReplicationTaskIdentifier" => "task1",
        "ReplicationTaskSettings" => "{"TargetMetadata":{"TargetSchema":"","SupportLobs":true,"FullLobMode":true,"LobChunkSize":64,"LimitedSizeLobMode":false,"LobMaxSize":0},"FullLoadSettings":{"FullLoadEnabled":true,"ApplyChangesEnabled":false,"TargetTablePrepMode":"DROP_AND_CREATE","CreatePkAfterFullLoad":false,"StopTaskCachedChangesApplied":false,"StopTaskCachedChangesNotApplied":false,"ResumeEnabled":false,"ResumeMinTableSize":100000,"ResumeOnlyClusteredPKTables":true,"MaxFullLoadSubTasks":8,"TransactionConsistencyTimeout":600,"CommitRate":10000},"Logging":{"EnableLogging":false}}",
        "SourceEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
        "Status" => "creating",
        "TableMappings" => "file://mappingfile.json",
        "TargetEndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StopReplicationTask)
"""
@inline stop_replication_task(aws::AWSConfig=default_aws_config(); args...) = stop_replication_task(aws, args)

@inline stop_replication_task(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "StopReplicationTask", args)

@inline stop_replication_task(args) = stop_replication_task(default_aws_config(), args)


"""
    using AWSSDK.DMS.test_connection
    test_connection([::AWSConfig], arguments::Dict)
    test_connection([::AWSConfig]; ReplicationInstanceArn=, EndpointArn=)

    using AWSCore.Services.dms
    dms([::AWSConfig], "TestConnection", arguments::Dict)
    dms([::AWSConfig], "TestConnection", ReplicationInstanceArn=, EndpointArn=)

# TestConnection Operation

Tests the connection between the replication instance and the endpoint.

# Arguments

## `ReplicationInstanceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the replication instance.


## `EndpointArn = ::String` -- *Required*
The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.




# Returns

`TestConnectionResponse`

# Exceptions

`ResourceNotFoundFault`, `InvalidResourceStateFault`, `KMSKeyNotAccessibleFault` or `ResourceQuotaExceededFault`.

# Example: Test conection

Tests the connection between the replication instance and the endpoint.

Input:
```
[
    "EndpointArn" => "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM",
    "ReplicationInstanceArn" => "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ"
]
```

Output:
```
Dict(
    "Connection" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/TestConnection)
"""
@inline test_connection(aws::AWSConfig=default_aws_config(); args...) = test_connection(aws, args)

@inline test_connection(aws::AWSConfig, args) = AWSCore.Services.dms(aws, "TestConnection", args)

@inline test_connection(args) = test_connection(default_aws_config(), args)




end # module DMS


#==============================================================================#
# End of file
#==============================================================================#
