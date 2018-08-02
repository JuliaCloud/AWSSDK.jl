#==============================================================================#
# KinesisAnalytics.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/kinesisanalytics-2015-08-14.normal.json
#==============================================================================#

__precompile__()

module KinesisAnalytics

using AWSCore


"""
    using AWSSDK.KinesisAnalytics.add_application_cloud_watch_logging_option
    add_application_cloud_watch_logging_option([::AWSConfig], arguments::Dict)
    add_application_cloud_watch_logging_option([::AWSConfig]; ApplicationName=, CurrentApplicationVersionId=, CloudWatchLoggingOption=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "AddApplicationCloudWatchLoggingOption", arguments::Dict)
    kinesisanalytics([::AWSConfig], "AddApplicationCloudWatchLoggingOption", ApplicationName=, CurrentApplicationVersionId=, CloudWatchLoggingOption=)

# AddApplicationCloudWatchLoggingOption Operation

Adds a CloudWatch log stream to monitor application configuration errors. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see [Working with Amazon CloudWatch Logs](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).

# Arguments

## `ApplicationName = ::String` -- *Required*
The Kinesis Analytics application name.


## `CurrentApplicationVersionId = ::Int` -- *Required*
The version ID of the Kinesis Analytics application.


## `CloudWatchLoggingOption = [ ... ]` -- *Required*
Provides the CloudWatch log stream Amazon Resource Name (ARN) and the IAM role ARN. Note: To write application messages to CloudWatch, the IAM role that is used must have the `PutLogEvents` policy action enabled.
```
 CloudWatchLoggingOption = [
        "LogStreamARN" => <required> ::String,
        "RoleARN" => <required> ::String
    ]
```



# Returns

`AddApplicationCloudWatchLoggingOptionResponse`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationCloudWatchLoggingOption)
"""
@inline add_application_cloud_watch_logging_option(aws::AWSConfig=default_aws_config(); args...) = add_application_cloud_watch_logging_option(aws, args)

@inline add_application_cloud_watch_logging_option(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "AddApplicationCloudWatchLoggingOption", args)

@inline add_application_cloud_watch_logging_option(args) = add_application_cloud_watch_logging_option(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.add_application_input
    add_application_input([::AWSConfig], arguments::Dict)
    add_application_input([::AWSConfig]; ApplicationName=, CurrentApplicationVersionId=, Input=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "AddApplicationInput", arguments::Dict)
    kinesisanalytics([::AWSConfig], "AddApplicationInput", ApplicationName=, CurrentApplicationVersionId=, Input=)

# AddApplicationInput Operation

Adds a streaming source to your Amazon Kinesis application. For conceptual information, see [Configuring Application Input](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).

You can add a streaming source either when you create an application or you can use this operation to add a streaming source after you create an application. For more information, see [CreateApplication](@ref).

Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the [DescribeApplication](@ref) operation to find the current application version.

This operation requires permissions to perform the `kinesisanalytics:AddApplicationInput` action.

# Arguments

## `ApplicationName = ::String` -- *Required*
Name of your existing Amazon Kinesis Analytics application to which you want to add the streaming source.


## `CurrentApplicationVersionId = ::Int` -- *Required*
Current version of your Amazon Kinesis Analytics application. You can use the [DescribeApplication](@ref) operation to find the current application version.


## `Input = [ ... ]` -- *Required*
The [Input](@ref) to add.
```
 Input = [
        "NamePrefix" => <required> ::String,
        "InputProcessingConfiguration" =>  ["InputLambdaProcessor" => <required> [
                "ResourceARN" => <required> ::String,
                "RoleARN" => <required> ::String
            ]],
        "KinesisStreamsInput" =>  [
            "ResourceARN" => <required> ::String,
            "RoleARN" => <required> ::String
        ],
        "KinesisFirehoseInput" =>  [
            "ResourceARN" => <required> ::String,
            "RoleARN" => <required> ::String
        ],
        "InputParallelism" =>  ["Count" =>  ::Int],
        "InputSchema" => <required> [
            "RecordFormat" => <required> [
                "RecordFormatType" => <required> "JSON" or "CSV",
                "MappingParameters" =>  [
                    "JSONMappingParameters" =>  ["RecordRowPath" => <required> ::String],
                    "CSVMappingParameters" =>  [
                        "RecordRowDelimiter" => <required> ::String,
                        "RecordColumnDelimiter" => <required> ::String
                    ]
                ]
            ],
            "RecordEncoding" =>  ::String,
            "RecordColumns" => <required> [[
                "Name" => <required> ::String,
                "Mapping" =>  ::String,
                "SqlType" => <required> ::String
            ], ...]
        ]
    ]
```



# Returns

`AddApplicationInputResponse`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException`, `ConcurrentModificationException` or `CodeValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationInput)
"""
@inline add_application_input(aws::AWSConfig=default_aws_config(); args...) = add_application_input(aws, args)

@inline add_application_input(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "AddApplicationInput", args)

@inline add_application_input(args) = add_application_input(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.add_application_input_processing_configuration
    add_application_input_processing_configuration([::AWSConfig], arguments::Dict)
    add_application_input_processing_configuration([::AWSConfig]; ApplicationName=, CurrentApplicationVersionId=, InputId=, InputProcessingConfiguration=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "AddApplicationInputProcessingConfiguration", arguments::Dict)
    kinesisanalytics([::AWSConfig], "AddApplicationInputProcessingConfiguration", ApplicationName=, CurrentApplicationVersionId=, InputId=, InputProcessingConfiguration=)

# AddApplicationInputProcessingConfiguration Operation

Adds an [InputProcessingConfiguration](@ref) to an application. An input processor preprocesses records on the input stream before the application's SQL code executes. Currently, the only input processor available is [AWS Lambda](https://aws.amazon.com/documentation/lambda/).

# Arguments

## `ApplicationName = ::String` -- *Required*
Name of the application to which you want to add the input processing configuration.


## `CurrentApplicationVersionId = ::Int` -- *Required*
Version of the application to which you want to add the input processing configuration. You can use the [DescribeApplication](@ref) operation to get the current application version. If the version specified is not the current version, the `ConcurrentModificationException` is returned.


## `InputId = ::String` -- *Required*
The ID of the input configuration to add the input processing configuration to. You can get a list of the input IDs for an application using the [DescribeApplication](@ref) operation.


## `InputProcessingConfiguration = ["InputLambdaProcessor" => <required> [ ... ]]` -- *Required*
The [InputProcessingConfiguration](@ref) to add to the application.
```
 InputProcessingConfiguration = ["InputLambdaProcessor" => <required> [
            "ResourceARN" => <required> ::String,
            "RoleARN" => <required> ::String
        ]]
```



# Returns

`AddApplicationInputProcessingConfigurationResponse`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationInputProcessingConfiguration)
"""
@inline add_application_input_processing_configuration(aws::AWSConfig=default_aws_config(); args...) = add_application_input_processing_configuration(aws, args)

@inline add_application_input_processing_configuration(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "AddApplicationInputProcessingConfiguration", args)

@inline add_application_input_processing_configuration(args) = add_application_input_processing_configuration(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.add_application_output
    add_application_output([::AWSConfig], arguments::Dict)
    add_application_output([::AWSConfig]; ApplicationName=, CurrentApplicationVersionId=, Output=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "AddApplicationOutput", arguments::Dict)
    kinesisanalytics([::AWSConfig], "AddApplicationOutput", ApplicationName=, CurrentApplicationVersionId=, Output=)

# AddApplicationOutput Operation

Adds an external destination to your Amazon Kinesis Analytics application.

If you want Amazon Kinesis Analytics to deliver data from an in-application stream within your application to an external destination (such as an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an Amazon Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.

You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors. For conceptual information, see [Understanding Application Output (Destination)](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html).

Note that any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the [DescribeApplication](@ref) operation to find the current application version.

For the limits on the number of application inputs and outputs you can configure, see [Limits](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html).

This operation requires permissions to perform the `kinesisanalytics:AddApplicationOutput` action.

# Arguments

## `ApplicationName = ::String` -- *Required*
Name of the application to which you want to add the output configuration.


## `CurrentApplicationVersionId = ::Int` -- *Required*
Version of the application to which you want to add the output configuration. You can use the [DescribeApplication](@ref) operation to get the current application version. If the version specified is not the current version, the `ConcurrentModificationException` is returned.


## `Output = [ ... ]` -- *Required*
An array of objects, each describing one output configuration. In the output configuration, you specify the name of an in-application stream, a destination (that is, an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an Amazon Lambda function), and record the formation to use when writing to the destination.
```
 Output = [
        "Name" => <required> ::String,
        "KinesisStreamsOutput" =>  [
            "ResourceARN" => <required> ::String,
            "RoleARN" => <required> ::String
        ],
        "KinesisFirehoseOutput" =>  [
            "ResourceARN" => <required> ::String,
            "RoleARN" => <required> ::String
        ],
        "LambdaOutput" =>  [
            "ResourceARN" => <required> ::String,
            "RoleARN" => <required> ::String
        ],
        "DestinationSchema" => <required> ["RecordFormatType" =>  "JSON" or "CSV"]
    ]
```



# Returns

`AddApplicationOutputResponse`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationOutput)
"""
@inline add_application_output(aws::AWSConfig=default_aws_config(); args...) = add_application_output(aws, args)

@inline add_application_output(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "AddApplicationOutput", args)

@inline add_application_output(args) = add_application_output(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.add_application_reference_data_source
    add_application_reference_data_source([::AWSConfig], arguments::Dict)
    add_application_reference_data_source([::AWSConfig]; ApplicationName=, CurrentApplicationVersionId=, ReferenceDataSource=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "AddApplicationReferenceDataSource", arguments::Dict)
    kinesisanalytics([::AWSConfig], "AddApplicationReferenceDataSource", ApplicationName=, CurrentApplicationVersionId=, ReferenceDataSource=)

# AddApplicationReferenceDataSource Operation

Adds a reference data source to an existing application.

Amazon Kinesis Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in Amazon S3 object maps to columns in the resulting in-application table.

For conceptual information, see [Configuring Application Input](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html). For the limits on data sources you can add to your application, see [Limits](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html).

This operation requires permissions to perform the `kinesisanalytics:AddApplicationOutput` action.

# Arguments

## `ApplicationName = ::String` -- *Required*
Name of an existing application.


## `CurrentApplicationVersionId = ::Int` -- *Required*
Version of the application for which you are adding the reference data source. You can use the [DescribeApplication](@ref) operation to get the current application version. If the version specified is not the current version, the `ConcurrentModificationException` is returned.


## `ReferenceDataSource = [ ... ]` -- *Required*
The reference data source can be an object in your Amazon S3 bucket. Amazon Kinesis Analytics reads the object and copies the data into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting in-application table that is created. You must also provide an IAM role with the necessary permissions that Amazon Kinesis Analytics can assume to read the object from your S3 bucket on your behalf.
```
 ReferenceDataSource = [
        "TableName" => <required> ::String,
        "S3ReferenceDataSource" =>  [
            "BucketARN" => <required> ::String,
            "FileKey" => <required> ::String,
            "ReferenceRoleARN" => <required> ::String
        ],
        "ReferenceSchema" => <required> [
            "RecordFormat" => <required> [
                "RecordFormatType" => <required> "JSON" or "CSV",
                "MappingParameters" =>  [
                    "JSONMappingParameters" =>  ["RecordRowPath" => <required> ::String],
                    "CSVMappingParameters" =>  [
                        "RecordRowDelimiter" => <required> ::String,
                        "RecordColumnDelimiter" => <required> ::String
                    ]
                ]
            ],
            "RecordEncoding" =>  ::String,
            "RecordColumns" => <required> [[
                "Name" => <required> ::String,
                "Mapping" =>  ::String,
                "SqlType" => <required> ::String
            ], ...]
        ]
    ]
```



# Returns

`AddApplicationReferenceDataSourceResponse`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationReferenceDataSource)
"""
@inline add_application_reference_data_source(aws::AWSConfig=default_aws_config(); args...) = add_application_reference_data_source(aws, args)

@inline add_application_reference_data_source(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "AddApplicationReferenceDataSource", args)

@inline add_application_reference_data_source(args) = add_application_reference_data_source(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.create_application
    create_application([::AWSConfig], arguments::Dict)
    create_application([::AWSConfig]; ApplicationName=, <keyword arguments>)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "CreateApplication", arguments::Dict)
    kinesisanalytics([::AWSConfig], "CreateApplication", ApplicationName=, <keyword arguments>)

# CreateApplication Operation

Creates an Amazon Kinesis Analytics application. You can configure each application with one streaming source as input, application code to process the input, and up to three destinations where you want Amazon Kinesis Analytics to write the output data from your application. For an overview, see [How it Works](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html).

In the input configuration, you map the streaming source to an in-application stream, which you can think of as a constantly updating table. In the mapping, you must provide a schema for the in-application stream and map each data column in the in-application stream to a data element in the streaming source.

Your application code is one or more SQL statements that read input data, transform it, and generate output. Your application code can create one or more SQL artifacts like SQL streams or pumps.

In the output configuration, you can configure the application to write data from in-application streams created in your applications to up to three destinations.

To read data from your source stream or write data to destination streams, Amazon Kinesis Analytics needs your permissions. You grant these permissions by creating IAM roles. This operation requires permissions to perform the `kinesisanalytics:CreateApplication` action.

For introductory exercises to create an Amazon Kinesis Analytics application, see [Getting Started](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html).

# Arguments

## `ApplicationName = ::String` -- *Required*
Name of your Amazon Kinesis Analytics application (for example, `sample-app`).


## `ApplicationDescription = ::String`
Summary description of the application.


## `Inputs = [[ ... ], ...]`
Use this parameter to configure the application input.

You can configure your application to receive input from a single streaming source. In this configuration, you map this streaming source to an in-application stream that is created. Your application code can then query the in-application stream like a table (you can think of it as a constantly updating table).

For the streaming source, you provide its Amazon Resource Name (ARN) and format of data on the stream (for example, JSON, CSV, etc.). You also must provide an IAM role that Amazon Kinesis Analytics can assume to read this stream on your behalf.

To create the in-application stream, you need to specify a schema to transform your data into a schematized version used in SQL. In the schema, you provide the necessary mapping of the data elements in the streaming source to record columns in the in-app stream.
```
 Inputs = [[
        "NamePrefix" => <required> ::String,
        "InputProcessingConfiguration" =>  ["InputLambdaProcessor" => <required> [
                "ResourceARN" => <required> ::String,
                "RoleARN" => <required> ::String
            ]],
        "KinesisStreamsInput" =>  [
            "ResourceARN" => <required> ::String,
            "RoleARN" => <required> ::String
        ],
        "KinesisFirehoseInput" =>  [
            "ResourceARN" => <required> ::String,
            "RoleARN" => <required> ::String
        ],
        "InputParallelism" =>  ["Count" =>  ::Int],
        "InputSchema" => <required> [
            "RecordFormat" => <required> [
                "RecordFormatType" => <required> "JSON" or "CSV",
                "MappingParameters" =>  [
                    "JSONMappingParameters" =>  ["RecordRowPath" => <required> ::String],
                    "CSVMappingParameters" =>  [
                        "RecordRowDelimiter" => <required> ::String,
                        "RecordColumnDelimiter" => <required> ::String
                    ]
                ]
            ],
            "RecordEncoding" =>  ::String,
            "RecordColumns" => <required> [[
                "Name" => <required> ::String,
                "Mapping" =>  ::String,
                "SqlType" => <required> ::String
            ], ...]
        ]
    ], ...]
```

## `Outputs = [[ ... ], ...]`
You can configure application output to write data from any of the in-application streams to up to three destinations.

These destinations can be Amazon Kinesis streams, Amazon Kinesis Firehose delivery streams, Amazon Lambda destinations, or any combination of the three.

In the configuration, you specify the in-application stream name, the destination stream or Lambda function Amazon Resource Name (ARN), and the format to use when writing data. You must also provide an IAM role that Amazon Kinesis Analytics can assume to write to the destination stream or Lambda function on your behalf.

In the output configuration, you also provide the output stream or Lambda function ARN. For stream destinations, you provide the format of data in the stream (for example, JSON, CSV). You also must provide an IAM role that Amazon Kinesis Analytics can assume to write to the stream or Lambda function on your behalf.
```
 Outputs = [[
        "Name" => <required> ::String,
        "KinesisStreamsOutput" =>  [
            "ResourceARN" => <required> ::String,
            "RoleARN" => <required> ::String
        ],
        "KinesisFirehoseOutput" =>  [
            "ResourceARN" => <required> ::String,
            "RoleARN" => <required> ::String
        ],
        "LambdaOutput" =>  [
            "ResourceARN" => <required> ::String,
            "RoleARN" => <required> ::String
        ],
        "DestinationSchema" => <required> ["RecordFormatType" =>  "JSON" or "CSV"]
    ], ...]
```

## `CloudWatchLoggingOptions = [[ ... ], ...]`
Use this parameter to configure a CloudWatch log stream to monitor application configuration errors. For more information, see [Working with Amazon CloudWatch Logs](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).
```
 CloudWatchLoggingOptions = [[
        "LogStreamARN" => <required> ::String,
        "RoleARN" => <required> ::String
    ], ...]
```

## `ApplicationCode = ::String`
One or more SQL statements that read input data, transform it, and generate output. For example, you can write a SQL statement that reads data from one in-application stream, generates a running average of the number of advertisement clicks by vendor, and insert resulting rows in another in-application stream using pumps. For more information about the typical pattern, see [Application Code](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html).

You can provide such series of SQL statements, where output of one statement can be used as the input for the next statement. You store intermediate results by creating in-application streams and pumps.

Note that the application code must create the streams with names specified in the `Outputs`. For example, if your `Outputs` defines output streams named `ExampleOutputStream1` and `ExampleOutputStream2`, then your application code must create these streams.




# Returns

`CreateApplicationResponse`

# Exceptions

`CodeValidationException`, `ResourceInUseException`, `LimitExceededException` or `InvalidArgumentException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/CreateApplication)
"""
@inline create_application(aws::AWSConfig=default_aws_config(); args...) = create_application(aws, args)

@inline create_application(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "CreateApplication", args)

@inline create_application(args) = create_application(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.delete_application
    delete_application([::AWSConfig], arguments::Dict)
    delete_application([::AWSConfig]; ApplicationName=, CreateTimestamp=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "DeleteApplication", arguments::Dict)
    kinesisanalytics([::AWSConfig], "DeleteApplication", ApplicationName=, CreateTimestamp=)

# DeleteApplication Operation

Deletes the specified application. Amazon Kinesis Analytics halts application execution and deletes the application, including any application artifacts (such as in-application streams, reference table, and application code).

This operation requires permissions to perform the `kinesisanalytics:DeleteApplication` action.

# Arguments

## `ApplicationName = ::String` -- *Required*
Name of the Amazon Kinesis Analytics application to delete.


## `CreateTimestamp = timestamp` -- *Required*
You can use the `DescribeApplication` operation to get this value.




# Returns

`DeleteApplicationResponse`

# Exceptions

`ConcurrentModificationException`, `ResourceNotFoundException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplication)
"""
@inline delete_application(aws::AWSConfig=default_aws_config(); args...) = delete_application(aws, args)

@inline delete_application(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "DeleteApplication", args)

@inline delete_application(args) = delete_application(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.delete_application_cloud_watch_logging_option
    delete_application_cloud_watch_logging_option([::AWSConfig], arguments::Dict)
    delete_application_cloud_watch_logging_option([::AWSConfig]; ApplicationName=, CurrentApplicationVersionId=, CloudWatchLoggingOptionId=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "DeleteApplicationCloudWatchLoggingOption", arguments::Dict)
    kinesisanalytics([::AWSConfig], "DeleteApplicationCloudWatchLoggingOption", ApplicationName=, CurrentApplicationVersionId=, CloudWatchLoggingOptionId=)

# DeleteApplicationCloudWatchLoggingOption Operation

Deletes a CloudWatch log stream from an application. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see [Working with Amazon CloudWatch Logs](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).

# Arguments

## `ApplicationName = ::String` -- *Required*
The Kinesis Analytics application name.


## `CurrentApplicationVersionId = ::Int` -- *Required*
The version ID of the Kinesis Analytics application.


## `CloudWatchLoggingOptionId = ::String` -- *Required*
The `CloudWatchLoggingOptionId` of the CloudWatch logging option to delete. You can get the `CloudWatchLoggingOptionId` by using the [DescribeApplication](@ref) operation.




# Returns

`DeleteApplicationCloudWatchLoggingOptionResponse`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationCloudWatchLoggingOption)
"""
@inline delete_application_cloud_watch_logging_option(aws::AWSConfig=default_aws_config(); args...) = delete_application_cloud_watch_logging_option(aws, args)

@inline delete_application_cloud_watch_logging_option(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "DeleteApplicationCloudWatchLoggingOption", args)

@inline delete_application_cloud_watch_logging_option(args) = delete_application_cloud_watch_logging_option(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.delete_application_input_processing_configuration
    delete_application_input_processing_configuration([::AWSConfig], arguments::Dict)
    delete_application_input_processing_configuration([::AWSConfig]; ApplicationName=, CurrentApplicationVersionId=, InputId=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "DeleteApplicationInputProcessingConfiguration", arguments::Dict)
    kinesisanalytics([::AWSConfig], "DeleteApplicationInputProcessingConfiguration", ApplicationName=, CurrentApplicationVersionId=, InputId=)

# DeleteApplicationInputProcessingConfiguration Operation

Deletes an [InputProcessingConfiguration](@ref) from an input.

# Arguments

## `ApplicationName = ::String` -- *Required*
The Kinesis Analytics application name.


## `CurrentApplicationVersionId = ::Int` -- *Required*
The version ID of the Kinesis Analytics application.


## `InputId = ::String` -- *Required*
The ID of the input configuration from which to delete the input processing configuration. You can get a list of the input IDs for an application by using the [DescribeApplication](@ref) operation.




# Returns

`DeleteApplicationInputProcessingConfigurationResponse`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationInputProcessingConfiguration)
"""
@inline delete_application_input_processing_configuration(aws::AWSConfig=default_aws_config(); args...) = delete_application_input_processing_configuration(aws, args)

@inline delete_application_input_processing_configuration(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "DeleteApplicationInputProcessingConfiguration", args)

@inline delete_application_input_processing_configuration(args) = delete_application_input_processing_configuration(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.delete_application_output
    delete_application_output([::AWSConfig], arguments::Dict)
    delete_application_output([::AWSConfig]; ApplicationName=, CurrentApplicationVersionId=, OutputId=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "DeleteApplicationOutput", arguments::Dict)
    kinesisanalytics([::AWSConfig], "DeleteApplicationOutput", ApplicationName=, CurrentApplicationVersionId=, OutputId=)

# DeleteApplicationOutput Operation

Deletes output destination configuration from your application configuration. Amazon Kinesis Analytics will no longer write data from the corresponding in-application stream to the external output destination.

This operation requires permissions to perform the `kinesisanalytics:DeleteApplicationOutput` action.

# Arguments

## `ApplicationName = ::String` -- *Required*
Amazon Kinesis Analytics application name.


## `CurrentApplicationVersionId = ::Int` -- *Required*
Amazon Kinesis Analytics application version. You can use the [DescribeApplication](@ref) operation to get the current application version. If the version specified is not the current version, the `ConcurrentModificationException` is returned.


## `OutputId = ::String` -- *Required*
The ID of the configuration to delete. Each output configuration that is added to the application, either when the application is created or later using the [AddApplicationOutput](@ref) operation, has a unique ID. You need to provide the ID to uniquely identify the output configuration that you want to delete from the application configuration. You can use the [DescribeApplication](@ref) operation to get the specific `OutputId`.




# Returns

`DeleteApplicationOutputResponse`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationOutput)
"""
@inline delete_application_output(aws::AWSConfig=default_aws_config(); args...) = delete_application_output(aws, args)

@inline delete_application_output(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "DeleteApplicationOutput", args)

@inline delete_application_output(args) = delete_application_output(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.delete_application_reference_data_source
    delete_application_reference_data_source([::AWSConfig], arguments::Dict)
    delete_application_reference_data_source([::AWSConfig]; ApplicationName=, CurrentApplicationVersionId=, ReferenceId=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "DeleteApplicationReferenceDataSource", arguments::Dict)
    kinesisanalytics([::AWSConfig], "DeleteApplicationReferenceDataSource", ApplicationName=, CurrentApplicationVersionId=, ReferenceId=)

# DeleteApplicationReferenceDataSource Operation

Deletes a reference data source configuration from the specified application configuration.

If the application is running, Amazon Kinesis Analytics immediately removes the in-application table that you created using the [AddApplicationReferenceDataSource](@ref) operation.

This operation requires permissions to perform the `kinesisanalytics.DeleteApplicationReferenceDataSource` action.

# Arguments

## `ApplicationName = ::String` -- *Required*
Name of an existing application.


## `CurrentApplicationVersionId = ::Int` -- *Required*
Version of the application. You can use the [DescribeApplication](@ref) operation to get the current application version. If the version specified is not the current version, the `ConcurrentModificationException` is returned.


## `ReferenceId = ::String` -- *Required*
ID of the reference data source. When you add a reference data source to your application using the [AddApplicationReferenceDataSource](@ref), Amazon Kinesis Analytics assigns an ID. You can use the [DescribeApplication](@ref) operation to get the reference ID.




# Returns

`DeleteApplicationReferenceDataSourceResponse`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationReferenceDataSource)
"""
@inline delete_application_reference_data_source(aws::AWSConfig=default_aws_config(); args...) = delete_application_reference_data_source(aws, args)

@inline delete_application_reference_data_source(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "DeleteApplicationReferenceDataSource", args)

@inline delete_application_reference_data_source(args) = delete_application_reference_data_source(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.describe_application
    describe_application([::AWSConfig], arguments::Dict)
    describe_application([::AWSConfig]; ApplicationName=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "DescribeApplication", arguments::Dict)
    kinesisanalytics([::AWSConfig], "DescribeApplication", ApplicationName=)

# DescribeApplication Operation

Returns information about a specific Amazon Kinesis Analytics application.

If you want to retrieve a list of all applications in your account, use the [ListApplications](@ref) operation.

This operation requires permissions to perform the `kinesisanalytics:DescribeApplication` action. You can use `DescribeApplication` to get the current application versionId, which you need to call other operations such as `Update`.

# Arguments

## `ApplicationName = ::String` -- *Required*
Name of the application.




# Returns

`DescribeApplicationResponse`

# Exceptions

`ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DescribeApplication)
"""
@inline describe_application(aws::AWSConfig=default_aws_config(); args...) = describe_application(aws, args)

@inline describe_application(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "DescribeApplication", args)

@inline describe_application(args) = describe_application(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.discover_input_schema
    discover_input_schema([::AWSConfig], arguments::Dict)
    discover_input_schema([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "DiscoverInputSchema", arguments::Dict)
    kinesisanalytics([::AWSConfig], "DiscoverInputSchema", <keyword arguments>)

# DiscoverInputSchema Operation

Infers a schema by evaluating sample records on the specified streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream) or S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.

You can use the inferred schema when configuring a streaming source for your application. For conceptual information, see [Configuring Application Input](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html). Note that when you create an application using the Amazon Kinesis Analytics console, the console uses this operation to infer a schema and show it in the console user interface.

This operation requires permissions to perform the `kinesisanalytics:DiscoverInputSchema` action.

# Arguments

## `ResourceARN = ::String`
Amazon Resource Name (ARN) of the streaming source.


## `RoleARN = ::String`
ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.


## `InputStartingPositionConfiguration = ["InputStartingPosition" =>  "NOW", "TRIM_HORIZON" or "LAST_STOPPED_POINT"]`
Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.


## `S3Configuration = [ ... ]`
Specify this parameter to discover a schema from data in an S3 object.
```
 S3Configuration = [
        "RoleARN" => <required> ::String,
        "BucketARN" => <required> ::String,
        "FileKey" => <required> ::String
    ]
```

## `InputProcessingConfiguration = ["InputLambdaProcessor" => <required> [ ... ]]`
The [InputProcessingConfiguration](@ref) to use to preprocess the records before discovering the schema of the records.
```
 InputProcessingConfiguration = ["InputLambdaProcessor" => <required> [
            "ResourceARN" => <required> ::String,
            "RoleARN" => <required> ::String
        ]]
```



# Returns

`DiscoverInputSchemaResponse`

# Exceptions

`InvalidArgumentException`, `UnableToDetectSchemaException`, `ResourceProvisionedThroughputExceededException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DiscoverInputSchema)
"""
@inline discover_input_schema(aws::AWSConfig=default_aws_config(); args...) = discover_input_schema(aws, args)

@inline discover_input_schema(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "DiscoverInputSchema", args)

@inline discover_input_schema(args) = discover_input_schema(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.list_applications
    list_applications([::AWSConfig], arguments::Dict)
    list_applications([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "ListApplications", arguments::Dict)
    kinesisanalytics([::AWSConfig], "ListApplications", <keyword arguments>)

# ListApplications Operation

Returns a list of Amazon Kinesis Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status. If the response returns the `HasMoreApplications` value as true, you can send another request by adding the `ExclusiveStartApplicationName` in the request body, and set the value of this to the last application name from the previous response.

If you want detailed information about a specific application, use [DescribeApplication](@ref).

This operation requires permissions to perform the `kinesisanalytics:ListApplications` action.

# Arguments

## `Limit = ::Int`
Maximum number of applications to list.


## `ExclusiveStartApplicationName = ::String`
Name of the application to start the list with. When using pagination to retrieve the list, you don't need to specify this parameter in the first request. However, in subsequent requests, you add the last application name from the previous response to get the next page of applications.




# Returns

`ListApplicationsResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/ListApplications)
"""
@inline list_applications(aws::AWSConfig=default_aws_config(); args...) = list_applications(aws, args)

@inline list_applications(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "ListApplications", args)

@inline list_applications(args) = list_applications(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.start_application
    start_application([::AWSConfig], arguments::Dict)
    start_application([::AWSConfig]; ApplicationName=, InputConfigurations=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "StartApplication", arguments::Dict)
    kinesisanalytics([::AWSConfig], "StartApplication", ApplicationName=, InputConfigurations=)

# StartApplication Operation

Starts the specified Amazon Kinesis Analytics application. After creating an application, you must exclusively call this operation to start your application.

After the application starts, it begins consuming the input data, processes it, and writes the output to the configured destination.

The application status must be `READY` for you to start an application. You can get the application status in the console or using the [DescribeApplication](@ref) operation.

After you start the application, you can stop the application from processing the input by calling the [StopApplication](@ref) operation.

This operation requires permissions to perform the `kinesisanalytics:StartApplication` action.

# Arguments

## `ApplicationName = ::String` -- *Required*
Name of the application.


## `InputConfigurations = [[ ... ], ...]` -- *Required*
Identifies the specific input, by ID, that the application starts consuming. Amazon Kinesis Analytics starts reading the streaming source associated with the input. You can also specify where in the streaming source you want Amazon Kinesis Analytics to start reading.
```
 InputConfigurations = [[
        "Id" => <required> ::String,
        "InputStartingPositionConfiguration" => <required> ["InputStartingPosition" =>  "NOW", "TRIM_HORIZON" or "LAST_STOPPED_POINT"]
    ], ...]
```



# Returns

`StartApplicationResponse`

# Exceptions

`ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `InvalidApplicationConfigurationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/StartApplication)
"""
@inline start_application(aws::AWSConfig=default_aws_config(); args...) = start_application(aws, args)

@inline start_application(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "StartApplication", args)

@inline start_application(args) = start_application(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.stop_application
    stop_application([::AWSConfig], arguments::Dict)
    stop_application([::AWSConfig]; ApplicationName=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "StopApplication", arguments::Dict)
    kinesisanalytics([::AWSConfig], "StopApplication", ApplicationName=)

# StopApplication Operation

Stops the application from processing input data. You can stop an application only if it is in the running state. You can use the [DescribeApplication](@ref) operation to find the application state. After the application is stopped, Amazon Kinesis Analytics stops reading data from the input, the application stops processing data, and there is no output written to the destination.

This operation requires permissions to perform the `kinesisanalytics:StopApplication` action.

# Arguments

## `ApplicationName = ::String` -- *Required*
Name of the running application to stop.




# Returns

`StopApplicationResponse`

# Exceptions

`ResourceNotFoundException` or `ResourceInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/StopApplication)
"""
@inline stop_application(aws::AWSConfig=default_aws_config(); args...) = stop_application(aws, args)

@inline stop_application(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "StopApplication", args)

@inline stop_application(args) = stop_application(default_aws_config(), args)


"""
    using AWSSDK.KinesisAnalytics.update_application
    update_application([::AWSConfig], arguments::Dict)
    update_application([::AWSConfig]; ApplicationName=, CurrentApplicationVersionId=, ApplicationUpdate=)

    using AWSCore.Services.kinesisanalytics
    kinesisanalytics([::AWSConfig], "UpdateApplication", arguments::Dict)
    kinesisanalytics([::AWSConfig], "UpdateApplication", ApplicationName=, CurrentApplicationVersionId=, ApplicationUpdate=)

# UpdateApplication Operation

Updates an existing Amazon Kinesis Analytics application. Using this API, you can update application code, input configuration, and output configuration.

Note that Amazon Kinesis Analytics updates the `CurrentApplicationVersionId` each time you update your application.

This operation requires permission for the `kinesisanalytics:UpdateApplication` action.

# Arguments

## `ApplicationName = ::String` -- *Required*
Name of the Amazon Kinesis Analytics application to update.


## `CurrentApplicationVersionId = ::Int` -- *Required*
The current application version ID. You can use the [DescribeApplication](@ref) operation to get this value.


## `ApplicationUpdate = [ ... ]` -- *Required*
Describes application updates.
```
 ApplicationUpdate = [
        "InputUpdates" =>  [[
            "InputId" => <required> ::String,
            "NamePrefixUpdate" =>  ::String,
            "InputProcessingConfigurationUpdate" =>  ["InputLambdaProcessorUpdate" => <required> [
                    "ResourceARNUpdate" =>  ::String,
                    "RoleARNUpdate" =>  ::String
                ]],
            "KinesisStreamsInputUpdate" =>  [
                "ResourceARNUpdate" =>  ::String,
                "RoleARNUpdate" =>  ::String
            ],
            "KinesisFirehoseInputUpdate" =>  [
                "ResourceARNUpdate" =>  ::String,
                "RoleARNUpdate" =>  ::String
            ],
            "InputSchemaUpdate" =>  [
                "RecordFormatUpdate" =>  [
                    "RecordFormatType" => <required> "JSON" or "CSV",
                    "MappingParameters" =>  [
                        "JSONMappingParameters" =>  ["RecordRowPath" => <required> ::String],
                        "CSVMappingParameters" =>  [
                            "RecordRowDelimiter" => <required> ::String,
                            "RecordColumnDelimiter" => <required> ::String
                        ]
                    ]
                ],
                "RecordEncodingUpdate" =>  ::String,
                "RecordColumnUpdates" =>  [[
                    "Name" => <required> ::String,
                    "Mapping" =>  ::String,
                    "SqlType" => <required> ::String
                ], ...]
            ],
            "InputParallelismUpdate" =>  ["CountUpdate" =>  ::Int]
        ], ...],
        "ApplicationCodeUpdate" =>  ::String,
        "OutputUpdates" =>  [[
            "OutputId" => <required> ::String,
            "NameUpdate" =>  ::String,
            "KinesisStreamsOutputUpdate" =>  [
                "ResourceARNUpdate" =>  ::String,
                "RoleARNUpdate" =>  ::String
            ],
            "KinesisFirehoseOutputUpdate" =>  [
                "ResourceARNUpdate" =>  ::String,
                "RoleARNUpdate" =>  ::String
            ],
            "LambdaOutputUpdate" =>  [
                "ResourceARNUpdate" =>  ::String,
                "RoleARNUpdate" =>  ::String
            ],
            "DestinationSchemaUpdate" =>  ["RecordFormatType" =>  "JSON" or "CSV"]
        ], ...],
        "ReferenceDataSourceUpdates" =>  [[
            "ReferenceId" => <required> ::String,
            "TableNameUpdate" =>  ::String,
            "S3ReferenceDataSourceUpdate" =>  [
                "BucketARNUpdate" =>  ::String,
                "FileKeyUpdate" =>  ::String,
                "ReferenceRoleARNUpdate" =>  ::String
            ],
            "ReferenceSchemaUpdate" =>  [
                "RecordFormat" => <required> [
                    "RecordFormatType" => <required> "JSON" or "CSV",
                    "MappingParameters" =>  [
                        "JSONMappingParameters" =>  ["RecordRowPath" => <required> ::String],
                        "CSVMappingParameters" =>  [
                            "RecordRowDelimiter" => <required> ::String,
                            "RecordColumnDelimiter" => <required> ::String
                        ]
                    ]
                ],
                "RecordEncoding" =>  ::String,
                "RecordColumns" => <required> [[
                    "Name" => <required> ::String,
                    "Mapping" =>  ::String,
                    "SqlType" => <required> ::String
                ], ...]
            ]
        ], ...],
        "CloudWatchLoggingOptionUpdates" =>  [[
            "CloudWatchLoggingOptionId" => <required> ::String,
            "LogStreamARNUpdate" =>  ::String,
            "RoleARNUpdate" =>  ::String
        ], ...]
    ]
```



# Returns

`UpdateApplicationResponse`

# Exceptions

`CodeValidationException`, `ResourceNotFoundException`, `ResourceInUseException`, `InvalidArgumentException` or `ConcurrentModificationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/UpdateApplication)
"""
@inline update_application(aws::AWSConfig=default_aws_config(); args...) = update_application(aws, args)

@inline update_application(aws::AWSConfig, args) = AWSCore.Services.kinesisanalytics(aws, "UpdateApplication", args)

@inline update_application(args) = update_application(default_aws_config(), args)




end # module KinesisAnalytics


#==============================================================================#
# End of file
#==============================================================================#
