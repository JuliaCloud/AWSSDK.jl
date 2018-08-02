#==============================================================================#
# Lambda.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/lambda-2015-03-31.normal.json
#==============================================================================#

__precompile__()

module Lambda

using AWSCore


"""
    using AWSSDK.Lambda.add_permission
    add_permission([::AWSConfig], arguments::Dict)
    add_permission([::AWSConfig]; FunctionName=, StatementId=, Action=, Principal=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "POST", "/2015-03-31/functions/{FunctionName}/policy", arguments::Dict)
    lambda([::AWSConfig], "POST", "/2015-03-31/functions/{FunctionName}/policy", FunctionName=, StatementId=, Action=, Principal=, <keyword arguments>)

# AddPermission Operation

Adds a permission to the resource policy associated with the specified AWS Lambda function. You use resource policies to grant permissions to event sources that use *push* model. In a *push* model, event sources (such as Amazon S3 and custom applications) invoke your Lambda function. Each permission you add to the resource policy allows an event source, permission to invoke the Lambda function.

For information about the push model, see [Lambda Functions](http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html).

If you are using versioning, the permissions you add are specific to the Lambda function version or alias you specify in the `AddPermission` request via the `Qualifier` parameter. For more information about versioning, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the `lambda:AddPermission` action.

# Arguments

## `FunctionName = ::String` -- *Required*
Name of the Lambda function whose resource policy you are updating by adding a new permission.

You can specify a function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda also allows you to specify partial ARN (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `StatementId = ::String` -- *Required*
A unique statement identifier.


## `Action = ::String` -- *Required*
The AWS Lambda action you want to allow in this statement. Each Lambda action is a string starting with `lambda:` followed by the API name . For example, `lambda:CreateFunction`. You can use wildcard (`lambda:*`) to grant permission for all AWS Lambda actions.


## `Principal = ::String` -- *Required*
The principal who is getting this permission. It can be Amazon S3 service Principal (`s3.amazonaws.com`) if you want Amazon S3 to invoke the function, an AWS account ID if you are granting cross-account permission, or any valid AWS service principal such as `sns.amazonaws.com`. For example, you might want to allow a custom application in another AWS account to push events to AWS Lambda by invoking your function.


## `SourceArn = ::String`
This is optional; however, when granting permission to invoke your function, you should specify this field with the Amazon Resource Name (ARN) as its value. This ensures that only events generated from the specified source can invoke the function.

**Important**
> If you add a permission without providing the source ARN, any AWS account that creates a mapping to your function ARN can send events to invoke your Lambda function.


## `SourceAccount = ::String`
This parameter is used for S3 and SES. The AWS account ID (without a hyphen) of the source owner. For example, if the `SourceArn` identifies a bucket, then this is the bucket owner's account ID. You can use this additional condition to ensure the bucket you specify is owned by a specific account (it is possible the bucket owner deleted the bucket and some other AWS account created the bucket). You can also use this condition to specify all sources (that is, you don't specify the `SourceArn`) owned by a specific account.


## `EventSourceToken = ::String`
A unique token that must be supplied by the principal invoking the function. This is currently only used for Alexa Smart Home functions.


## `Qualifier = ::String`
You can use this optional query parameter to describe a qualified ARN using a function version or an alias name. The permission will then apply to the specific qualified ARN. For example, if you specify function version 2 as the qualifier, then permission applies only when request is made using qualified function ARN:

`arn:aws:lambda:aws-region:acct-id:function:function-name:2`

If you specify an alias name, for example `PROD`, then the permission is valid only for requests made using the alias ARN:

`arn:aws:lambda:aws-region:acct-id:function:function-name:PROD`

If the qualifier is not specified, the permission is valid only when requests is made using unqualified function ARN.

`arn:aws:lambda:aws-region:acct-id:function:function-name`


## `RevisionId = ::String`
An optional value you can use to ensure you are updating the latest update of the function version or alias. If the `RevisionID` you pass doesn't match the latest `RevisionId` of the function or alias, it will fail with an error message, advising you to retrieve the latest function version or alias `RevisionID` using either or .




# Returns

`AddPermissionResponse`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `ResourceConflictException`, `InvalidParameterValueException`, `PolicyLengthExceededException`, `TooManyRequestsException` or `PreconditionFailedException`.

# Example: add-permission

This example adds a permission for an S3 bucket to invoke a Lambda function.

Input:
```
[
    "Action" => "lambda:InvokeFunction",
    "FunctionName" => "MyFunction",
    "Principal" => "s3.amazonaws.com",
    "SourceAccount" => "123456789012",
    "SourceArn" => "arn:aws:s3:::examplebucket/*",
    "StatementId" => "ID-1"
]
```

Output:
```
Dict(
    "Statement" => "ID-1"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/AddPermission)
"""
@inline add_permission(aws::AWSConfig=default_aws_config(); args...) = add_permission(aws, args)

@inline add_permission(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "POST", "/2015-03-31/functions/{FunctionName}/policy", args)

@inline add_permission(args) = add_permission(default_aws_config(), args)


"""
    using AWSSDK.Lambda.create_alias
    create_alias([::AWSConfig], arguments::Dict)
    create_alias([::AWSConfig]; FunctionName=, Name=, FunctionVersion=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "POST", "/2015-03-31/functions/{FunctionName}/aliases", arguments::Dict)
    lambda([::AWSConfig], "POST", "/2015-03-31/functions/{FunctionName}/aliases", FunctionName=, Name=, FunctionVersion=, <keyword arguments>)

# CreateAlias Operation

Creates an alias that points to the specified Lambda function version. For more information, see [Introduction to AWS Lambda Aliases](http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

Alias names are unique for a given function. This requires permission for the lambda:CreateAlias action.

# Arguments

## `FunctionName = ::String` -- *Required*
Name of the Lambda function for which you want to create an alias. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `Name = ::String` -- *Required*
Name for the alias you are creating.


## `FunctionVersion = ::String` -- *Required*
Lambda function version for which you are creating the alias.


## `Description = ::String`
Description of the alias.


## `RoutingConfig = ["AdditionalVersionWeights" =>  ::Dict{String,String}]`
Specifies an additional version your alias can point to, allowing you to dictate what percentage of traffic will invoke each version. For more information, see [lambda-traffic-shifting-using-aliases](@ref).




# Returns

`AliasConfiguration`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `ResourceConflictException`, `InvalidParameterValueException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateAlias)
"""
@inline create_alias(aws::AWSConfig=default_aws_config(); args...) = create_alias(aws, args)

@inline create_alias(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "POST", "/2015-03-31/functions/{FunctionName}/aliases", args)

@inline create_alias(args) = create_alias(default_aws_config(), args)


"""
    using AWSSDK.Lambda.create_event_source_mapping
    create_event_source_mapping([::AWSConfig], arguments::Dict)
    create_event_source_mapping([::AWSConfig]; EventSourceArn=, FunctionName=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "POST", "/2015-03-31/event-source-mappings/", arguments::Dict)
    lambda([::AWSConfig], "POST", "/2015-03-31/event-source-mappings/", EventSourceArn=, FunctionName=, <keyword arguments>)

# CreateEventSourceMapping Operation

Identifies a poll-based event source for a Lambda function. It can be either an Amazon Kinesis or DynamoDB stream, or an Amazon SQS queue. AWS Lambda invokes the specified function when records are posted to the event source.

This association between a poll-based source and a Lambda function is called the event source mapping.

You provide mapping information (for example, which stream or SQS queue to read from and which Lambda function to invoke) in the request body.

Amazon Kinesis or DynamoDB stream event sources can be associated with multiple AWS Lambda functions and a given Lambda function can be associated with multiple AWS event sources. For Amazon SQS, you can configure multiple queues as event sources for a single Lambda function, but an SQS queue can be mapped only to a single Lambda function.

If you are using versioning, you can specify a specific function version or an alias via the function name parameter. For more information about versioning, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the `lambda:CreateEventSourceMapping` action.

# Arguments

## `EventSourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the event source. Any record added to this source could cause AWS Lambda to invoke your Lambda function, it depends on the `BatchSize`. AWS Lambda POSTs the event's records to your Lambda function as JSON.


## `FunctionName = ::String` -- *Required*
The Lambda function to invoke when AWS Lambda detects an event on the stream.

You can specify the function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`).

If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). For more information about versioning, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)

AWS Lambda also allows you to specify only the function name with the account ID qualifier (for example, `account-id:Thumbnail`).

Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `Enabled = ::Bool`
Indicates whether AWS Lambda should begin polling the event source. By default, `Enabled` is true.


## `BatchSize = ::Int`
The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. Your function receives an event with all the retrieved records. The default for Amazon Kinesis and Amazon DynamoDB is 100 records. For SQS, the default is 1.


## `StartingPosition = "TRIM_HORIZON", "LATEST" or "AT_TIMESTAMP"`
The position in the DynamoDB or Kinesis stream where AWS Lambda should start reading. For more information, see [GetShardIterator](http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType) in the *Amazon Kinesis API Reference Guide* or [GetShardIterator](http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_streams_GetShardIterator.html) in the *Amazon DynamoDB API Reference Guide*. The `AT_TIMESTAMP` value is supported only for [Kinesis streams](http://docs.aws.amazon.com/streams/latest/dev/amazon-kinesis-streams.html).


## `StartingPositionTimestamp = timestamp`
The timestamp of the data record from which to start reading. Used with [shard iterator type](http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType) AT_TIMESTAMP. If a record with this exact timestamp does not exist, the iterator returned is for the next (later) record. If the timestamp is older than the current trim horizon, the iterator returned is for the oldest untrimmed data record (TRIM_HORIZON). Valid only for [Kinesis streams](http://docs.aws.amazon.com/streams/latest/dev/amazon-kinesis-streams.html).




# Returns

`EventSourceMappingConfiguration`

# Exceptions

`ServiceException`, `InvalidParameterValueException`, `ResourceConflictException`, `TooManyRequestsException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateEventSourceMapping)
"""
@inline create_event_source_mapping(aws::AWSConfig=default_aws_config(); args...) = create_event_source_mapping(aws, args)

@inline create_event_source_mapping(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "POST", "/2015-03-31/event-source-mappings/", args)

@inline create_event_source_mapping(args) = create_event_source_mapping(default_aws_config(), args)


"""
    using AWSSDK.Lambda.create_function
    create_function([::AWSConfig], arguments::Dict)
    create_function([::AWSConfig]; FunctionName=, Runtime=, Role=, Handler=, Code=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "POST", "/2015-03-31/functions", arguments::Dict)
    lambda([::AWSConfig], "POST", "/2015-03-31/functions", FunctionName=, Runtime=, Role=, Handler=, Code=, <keyword arguments>)

# CreateFunction Operation

Creates a new Lambda function. The function metadata is created from the request parameters, and the code for the function is provided by a .zip file in the request body. If the function name already exists, the operation will fail. Note that the function name is case-sensitive.

If you are using versioning, you can also publish a version of the Lambda function you are creating using the `Publish` parameter. For more information about versioning, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the `lambda:CreateFunction` action.

# Arguments

## `FunctionName = ::String` -- *Required*
The name you want to assign to the function you are uploading. The function names appear in the console and are returned in the [ListFunctions](@ref) API. Function names are used to specify functions to other AWS Lambda API operations, such as [Invoke](@ref). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `Runtime = "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "java8", "python2.7", "python3.6", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge" or "go1.x"` -- *Required*
The runtime environment for the Lambda function you are uploading.

To use the Python runtime v3.6, set the value to "python3.6". To use the Python runtime v2.7, set the value to "python2.7". To use the Node.js runtime v6.10, set the value to "nodejs6.10". To use the Node.js runtime v4.3, set the value to "nodejs4.3". To use the .NET Core runtime v1.0, set the value to "dotnetcore1.0". To use the .NET Core runtime v2.0, set the value to "dotnetcore2.0".

**Note**
> Node v0.10.42 is currently marked as deprecated. You must migrate existing functions to the newer Node.js runtime versions available on AWS Lambda (nodejs4.3 or nodejs6.10) as soon as possible. Failure to do so will result in an invalid parameter error being returned. Note that you will have to follow this procedure for each region that contains functions written in the Node v0.10.42 runtime.


## `Role = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when it executes your function to access any other Amazon Web Services (AWS) resources. For more information, see [AWS Lambda: How it Works](http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html).


## `Handler = ::String` -- *Required*
The function within your code that Lambda calls to begin execution. For Node.js, it is the *module-name*.*export* value in your function. For Java, it can be `package.class-name::handler` or `package.class-name`. For more information, see [Lambda Function Handler (Java)](http://docs.aws.amazon.com/lambda/latest/dg/java-programming-model-handler-types.html).


## `Code = [ ... ]` -- *Required*
The code for the Lambda function.
```
 Code = [
        "ZipFile" =>  blob,
        "S3Bucket" =>  ::String,
        "S3Key" =>  ::String,
        "S3ObjectVersion" =>  ::String
    ]
```

## `Description = ::String`
A short, user-defined function description. Lambda does not use this value. Assign a meaningful description as you see fit.


## `Timeout = ::Int`
The function execution time at which Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds.


## `MemorySize = ::Int`
The amount of memory, in MB, your Lambda function is given. Lambda uses this memory size to infer the amount of CPU and memory allocated to your function. Your function use-case determines your CPU and memory requirements. For example, a database operation might need less memory compared to an image processing function. The default value is 128 MB. The value must be a multiple of 64 MB.


## `Publish = ::Bool`
This boolean parameter can be used to request AWS Lambda to create the Lambda function and publish a version as an atomic operation.


## `VpcConfig = [ ... ]`
If your Lambda function accesses resources in a VPC, you provide this parameter identifying the list of security group IDs and subnet IDs. These must belong to the same VPC. You must provide at least one security group and one subnet ID.
```
 VpcConfig = [
        "SubnetIds" =>  [::String, ...],
        "SecurityGroupIds" =>  [::String, ...]
    ]
```

## `DeadLetterConfig = ["TargetArn" =>  ::String]`
The parent object that contains the target ARN (Amazon Resource Name) of an Amazon SQS queue or Amazon SNS topic. For more information, see [dlq](@ref).


## `Environment = ["Variables" =>  ::Dict{String,String}]`



## `KMSKeyArn = ::String`
The Amazon Resource Name (ARN) of the KMS key used to encrypt your function's environment variables. If not provided, AWS Lambda will use a default service key.


## `TracingConfig = ["Mode" =>  "Active" or "PassThrough"]`
The parent object that contains your function's tracing settings.


## `Tags = ::Dict{String,String}`
The list of tags (key-value pairs) assigned to the new function. For more information, see [Tagging Lambda Functions](http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the **AWS Lambda Developer Guide**.




# Returns

`FunctionConfiguration`

# Exceptions

`ServiceException`, `InvalidParameterValueException`, `ResourceNotFoundException`, `ResourceConflictException`, `TooManyRequestsException` or `CodeStorageExceededException`.

# Example: create-function

This example creates a Lambda function.

Input:
```
[
    "Code" => [

    ],
    "Description" => "",
    "FunctionName" => "MyFunction",
    "Handler" => "souce_file.handler_name",
    "MemorySize" => 128,
    "Publish" => true,
    "Role" => "arn:aws:iam::123456789012:role/service-role/role-name",
    "Runtime" => "nodejs4.3",
    "Timeout" => 15,
    "VpcConfig" => [

    ]
]
```

Output:
```
Dict(
    "CodeSha256" => "",
    "CodeSize" => 123,
    "Description" => "",
    "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:MyFunction",
    "FunctionName" => "MyFunction",
    "Handler" => "source_file.handler_name",
    "LastModified" => "2016-11-21T19:49:20.006+0000",
    "MemorySize" => 128,
    "Role" => "arn:aws:iam::123456789012:role/service-role/role-name",
    "Runtime" => "nodejs4.3",
    "Timeout" => 123,
    "Version" => "1",
    "VpcConfig" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/CreateFunction)
"""
@inline create_function(aws::AWSConfig=default_aws_config(); args...) = create_function(aws, args)

@inline create_function(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "POST", "/2015-03-31/functions", args)

@inline create_function(args) = create_function(default_aws_config(), args)


"""
    using AWSSDK.Lambda.delete_alias
    delete_alias([::AWSConfig], arguments::Dict)
    delete_alias([::AWSConfig]; FunctionName=, Name=)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "DELETE", "/2015-03-31/functions/{FunctionName}/aliases/{Name}", arguments::Dict)
    lambda([::AWSConfig], "DELETE", "/2015-03-31/functions/{FunctionName}/aliases/{Name}", FunctionName=, Name=)

# DeleteAlias Operation

Deletes the specified Lambda function alias. For more information, see [Introduction to AWS Lambda Aliases](http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

This requires permission for the lambda:DeleteAlias action.

# Arguments

## `FunctionName = ::String` -- *Required*
The Lambda function name for which the alias is created. Deleting an alias does not delete the function version to which it is pointing. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `Name = ::String` -- *Required*
Name of the alias to delete.




# Exceptions

`ServiceException`, `InvalidParameterValueException` or `TooManyRequestsException`.

# Example: To delete a Lambda function alias

This operation deletes a Lambda function alias

Input:
```
[
    "FunctionName" => "myFunction",
    "Name" => "alias"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteAlias)
"""
@inline delete_alias(aws::AWSConfig=default_aws_config(); args...) = delete_alias(aws, args)

@inline delete_alias(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "DELETE", "/2015-03-31/functions/{FunctionName}/aliases/{Name}", args)

@inline delete_alias(args) = delete_alias(default_aws_config(), args)


"""
    using AWSSDK.Lambda.delete_event_source_mapping
    delete_event_source_mapping([::AWSConfig], arguments::Dict)
    delete_event_source_mapping([::AWSConfig]; UUID=)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "DELETE", "/2015-03-31/event-source-mappings/{UUID}", arguments::Dict)
    lambda([::AWSConfig], "DELETE", "/2015-03-31/event-source-mappings/{UUID}", UUID=)

# DeleteEventSourceMapping Operation

Removes an event source mapping. This means AWS Lambda will no longer invoke the function for events in the associated source.

This operation requires permission for the `lambda:DeleteEventSourceMapping` action.

# Arguments

## `UUID = ::String` -- *Required*
The event source mapping ID.




# Returns

`EventSourceMappingConfiguration`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException`, `TooManyRequestsException` or `ResourceInUseException`.

# Example: To delete a Lambda function event source mapping

This operation deletes a Lambda function event source mapping

Input:
```
[
    "UUID" => "12345kxodurf3443"
]
```

Output:
```
Dict(
    "BatchSize" => 123,
    "EventSourceArn" => "arn:aws:s3:::examplebucket/*",
    "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:myFunction",
    "LastModified" => "2016-11-21T19:49:20.006+0000",
    "LastProcessingResult" => "",
    "State" => "",
    "StateTransitionReason" => "",
    "UUID" => "12345kxodurf3443"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteEventSourceMapping)
"""
@inline delete_event_source_mapping(aws::AWSConfig=default_aws_config(); args...) = delete_event_source_mapping(aws, args)

@inline delete_event_source_mapping(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "DELETE", "/2015-03-31/event-source-mappings/{UUID}", args)

@inline delete_event_source_mapping(args) = delete_event_source_mapping(default_aws_config(), args)


"""
    using AWSSDK.Lambda.delete_function
    delete_function([::AWSConfig], arguments::Dict)
    delete_function([::AWSConfig]; FunctionName=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "DELETE", "/2015-03-31/functions/{FunctionName}", arguments::Dict)
    lambda([::AWSConfig], "DELETE", "/2015-03-31/functions/{FunctionName}", FunctionName=, <keyword arguments>)

# DeleteFunction Operation

Deletes the specified Lambda function code and configuration.

If you are using the versioning feature and you don't specify a function version in your `DeleteFunction` request, AWS Lambda will delete the function, including all its versions, and any aliases pointing to the function versions. To delete a specific function version, you must provide the function version via the `Qualifier` parameter. For information about function versioning, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

When you delete a function the associated resource policy is also deleted. You will need to delete the event source mappings explicitly.

This operation requires permission for the `lambda:DeleteFunction` action.

# Arguments

## `FunctionName = ::String` -- *Required*
The Lambda function to delete.

You can specify the function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). AWS Lambda also allows you to specify only the function name with the account ID qualifier (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `Qualifier = ::String`
Using this optional parameter you can specify a function version (but not the `\$LATEST` version) to direct AWS Lambda to delete a specific function version. If the function version has one or more aliases pointing to it, you will get an error because you cannot have aliases pointing to it. You can delete any function version but not the `\$LATEST`, that is, you cannot specify `\$LATEST` as the value of this parameter. The `\$LATEST` version can be deleted only when you want to delete all the function versions and aliases.

You can only specify a function version, not an alias name, using this parameter. You cannot delete a function version using its alias.

If you don't specify this parameter, AWS Lambda will delete the function, including all of its versions and aliases.




# Exceptions

`ServiceException`, `ResourceNotFoundException`, `TooManyRequestsException`, `InvalidParameterValueException` or `ResourceConflictException`.

# Example: To delete a Lambda function

This operation deletes a Lambda function

Input:
```
[
    "FunctionName" => "myFunction",
    "Qualifier" => "1"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunction)
"""
@inline delete_function(aws::AWSConfig=default_aws_config(); args...) = delete_function(aws, args)

@inline delete_function(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "DELETE", "/2015-03-31/functions/{FunctionName}", args)

@inline delete_function(args) = delete_function(default_aws_config(), args)


"""
    using AWSSDK.Lambda.delete_function_concurrency
    delete_function_concurrency([::AWSConfig], arguments::Dict)
    delete_function_concurrency([::AWSConfig]; FunctionName=)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "DELETE", "/2017-10-31/functions/{FunctionName}/concurrency", arguments::Dict)
    lambda([::AWSConfig], "DELETE", "/2017-10-31/functions/{FunctionName}/concurrency", FunctionName=)

# DeleteFunctionConcurrency Operation

Removes concurrent execution limits from this function. For more information, see [concurrent-executions](@ref).

# Arguments

## `FunctionName = ::String` -- *Required*
The name of the function you are removing concurrent execution limits from. For more information, see [concurrent-executions](@ref).




# Exceptions

`ServiceException`, `ResourceNotFoundException`, `TooManyRequestsException` or `InvalidParameterValueException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/DeleteFunctionConcurrency)
"""
@inline delete_function_concurrency(aws::AWSConfig=default_aws_config(); args...) = delete_function_concurrency(aws, args)

@inline delete_function_concurrency(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "DELETE", "/2017-10-31/functions/{FunctionName}/concurrency", args)

@inline delete_function_concurrency(args) = delete_function_concurrency(default_aws_config(), args)


"""
    using AWSSDK.Lambda.get_account_settings
    get_account_settings([::AWSConfig], arguments::Dict)
    get_account_settings([::AWSConfig]; )

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "GET", "/2016-08-19/account-settings/", arguments::Dict)
    lambda([::AWSConfig], "GET", "/2016-08-19/account-settings/", )

# GetAccountSettings Operation

Returns a customer's account settings.

You can use this operation to retrieve Lambda limits information, such as code size and concurrency limits. For more information about limits, see [AWS Lambda Limits](http://docs.aws.amazon.com/lambda/latest/dg/limits.html). You can also retrieve resource usage statistics, such as code storage usage and function count.

# Arguments



# Returns

`GetAccountSettingsResponse`

# Exceptions

`TooManyRequestsException` or `ServiceException`.

# Example: To retrieves a Lambda customer's account settings

This operation retrieves a Lambda customer's account settings

Input:
```
[

]
```

Output:
```
Dict(
    "AccountLimit" => Dict(

    ),
    "AccountUsage" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAccountSettings)
"""
@inline get_account_settings(aws::AWSConfig=default_aws_config(); args...) = get_account_settings(aws, args)

@inline get_account_settings(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "GET", "/2016-08-19/account-settings/", args)

@inline get_account_settings(args) = get_account_settings(default_aws_config(), args)


"""
    using AWSSDK.Lambda.get_alias
    get_alias([::AWSConfig], arguments::Dict)
    get_alias([::AWSConfig]; FunctionName=, Name=)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/{FunctionName}/aliases/{Name}", arguments::Dict)
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/{FunctionName}/aliases/{Name}", FunctionName=, Name=)

# GetAlias Operation

Returns the specified alias information such as the alias ARN, description, and function version it is pointing to. For more information, see [Introduction to AWS Lambda Aliases](http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

This requires permission for the `lambda:GetAlias` action.

# Arguments

## `FunctionName = ::String` -- *Required*
Function name for which the alias is created. An alias is a subresource that exists only in the context of an existing Lambda function so you must specify the function name. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `Name = ::String` -- *Required*
Name of the alias for which you want to retrieve information.




# Returns

`AliasConfiguration`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException` or `TooManyRequestsException`.

# Example: To retrieve a Lambda function alias

This operation retrieves a Lambda function alias

Input:
```
[
    "FunctionName" => "myFunction",
    "Name" => "myFunctionAlias"
]
```

Output:
```
Dict(
    "AliasArn" => "arn:aws:lambda:us-west-2:123456789012:function:myFunctionAlias",
    "Description" => "",
    "FunctionVersion" => "1",
    "Name" => "myFunctionAlias"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetAlias)
"""
@inline get_alias(aws::AWSConfig=default_aws_config(); args...) = get_alias(aws, args)

@inline get_alias(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "GET", "/2015-03-31/functions/{FunctionName}/aliases/{Name}", args)

@inline get_alias(args) = get_alias(default_aws_config(), args)


"""
    using AWSSDK.Lambda.get_event_source_mapping
    get_event_source_mapping([::AWSConfig], arguments::Dict)
    get_event_source_mapping([::AWSConfig]; UUID=)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "GET", "/2015-03-31/event-source-mappings/{UUID}", arguments::Dict)
    lambda([::AWSConfig], "GET", "/2015-03-31/event-source-mappings/{UUID}", UUID=)

# GetEventSourceMapping Operation

Returns configuration information for the specified event source mapping (see [CreateEventSourceMapping](@ref)).

This operation requires permission for the `lambda:GetEventSourceMapping` action.

# Arguments

## `UUID = ::String` -- *Required*
The AWS Lambda assigned ID of the event source mapping.




# Returns

`EventSourceMappingConfiguration`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException` or `TooManyRequestsException`.

# Example: To retrieve a Lambda function's event source mapping

This operation retrieves a Lambda function's event source mapping

Input:
```
[
    "UUID" => "123489-xxxxx-kdla8d89d7"
]
```

Output:
```
Dict(
    "BatchSize" => 123,
    "EventSourceArn" => "arn:aws:iam::123456789012:eventsource",
    "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:myFunction",
    "LastModified" => "2016-11-21T19:49:20.006+0000",
    "LastProcessingResult" => "",
    "State" => "",
    "StateTransitionReason" => "",
    "UUID" => "123489-xxxxx-kdla8d89d7"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetEventSourceMapping)
"""
@inline get_event_source_mapping(aws::AWSConfig=default_aws_config(); args...) = get_event_source_mapping(aws, args)

@inline get_event_source_mapping(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "GET", "/2015-03-31/event-source-mappings/{UUID}", args)

@inline get_event_source_mapping(args) = get_event_source_mapping(default_aws_config(), args)


"""
    using AWSSDK.Lambda.get_function
    get_function([::AWSConfig], arguments::Dict)
    get_function([::AWSConfig]; FunctionName=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/{FunctionName}", arguments::Dict)
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/{FunctionName}", FunctionName=, <keyword arguments>)

# GetFunction Operation

Returns the configuration information of the Lambda function and a presigned URL link to the .zip file you uploaded with [CreateFunction](@ref) so you can download the .zip file. Note that the URL is valid for up to 10 minutes. The configuration information is the same information you provided as parameters when uploading the function.

Using the optional `Qualifier` parameter, you can specify a specific function version for which you want this information. If you don't specify this parameter, the API uses unqualified function ARN which return information about the `\$LATEST` version of the Lambda function. For more information, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the `lambda:GetFunction` action.

# Arguments

## `FunctionName = ::String` -- *Required*
The Lambda function name.

You can specify a function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda also allows you to specify a partial ARN (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `Qualifier = ::String`
Use this optional parameter to specify a function version or an alias name. If you specify function version, the API uses qualified function ARN for the request and returns information about the specific Lambda function version. If you specify an alias name, the API uses the alias ARN and returns information about the function version to which the alias points. If you don't provide this parameter, the API uses unqualified function ARN and returns information about the `\$LATEST` version of the Lambda function.




# Returns

`GetFunctionResponse`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `TooManyRequestsException` or `InvalidParameterValueException`.

# Example: To retrieve a Lambda function's event source mapping

This operation retrieves a Lambda function's event source mapping

Input:
```
[
    "FunctionName" => "myFunction",
    "Qualifier" => "1"
]
```

Output:
```
Dict(
    "Code" => Dict(
        "Location" => "somelocation",
        "RepositoryType" => "S3"
    ),
    "Configuration" => Dict(
        "CodeSha256" => "LQT+0DHxxxxcfwLyQjzoEFKZtdqQjHXanlSdfXBlEW0VA=",
        "CodeSize" => 262,
        "Description" => "A starter AWS Lambda function.",
        "Environment" => Dict(
            "Variables" => Dict(
                "S3_BUCKET" => "test"
            )
        ),
        "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:myFunction",
        "FunctionName" => "myFunction",
        "Handler" => "index.handler",
        "LastModified" => "2016-11-21T19:49:20.006+0000",
        "MemorySize" => 128,
        "Role" => "arn:aws:iam::123456789012:role/lambda_basic_execution",
        "Runtime" => "nodejs4.3",
        "Timeout" => 3,
        "Version" => "\$LATEST",
        "VpcConfig" => Dict(
            "SecurityGroupIds" => [

            ],
            "SubnetIds" => [

            ]
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunction)
"""
@inline get_function(aws::AWSConfig=default_aws_config(); args...) = get_function(aws, args)

@inline get_function(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "GET", "/2015-03-31/functions/{FunctionName}", args)

@inline get_function(args) = get_function(default_aws_config(), args)


"""
    using AWSSDK.Lambda.get_function_configuration
    get_function_configuration([::AWSConfig], arguments::Dict)
    get_function_configuration([::AWSConfig]; FunctionName=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/{FunctionName}/configuration", arguments::Dict)
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/{FunctionName}/configuration", FunctionName=, <keyword arguments>)

# GetFunctionConfiguration Operation

Returns the configuration information of the Lambda function. This the same information you provided as parameters when uploading the function by using [CreateFunction](@ref).

If you are using the versioning feature, you can retrieve this information for a specific function version by using the optional `Qualifier` parameter and specifying the function version or alias that points to it. If you don't provide it, the API returns information about the \$LATEST version of the function. For more information about versioning, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the `lambda:GetFunctionConfiguration` operation.

# Arguments

## `FunctionName = ::String` -- *Required*
The name of the Lambda function for which you want to retrieve the configuration information.

You can specify a function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda also allows you to specify a partial ARN (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `Qualifier = ::String`
Using this optional parameter you can specify a function version or an alias name. If you specify function version, the API uses qualified function ARN and returns information about the specific function version. If you specify an alias name, the API uses the alias ARN and returns information about the function version to which the alias points.

If you don't specify this parameter, the API uses unqualified function ARN, and returns information about the `\$LATEST` function version.




# Returns

`FunctionConfiguration`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `TooManyRequestsException` or `InvalidParameterValueException`.

# Example: To retrieve a Lambda function's event source mapping

This operation retrieves a Lambda function's event source mapping

Input:
```
[
    "FunctionName" => "myFunction",
    "Qualifier" => "1"
]
```

Output:
```
Dict(
    "CodeSha256" => "LQT+0DHxxxxcfwLyQjzoEFKZtdqQjHXanlSdfXBlEW0VA=",
    "CodeSize" => 123,
    "DeadLetterConfig" => Dict(

    ),
    "Description" => "",
    "Environment" => Dict(

    ),
    "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:myFunction",
    "FunctionName" => "myFunction",
    "Handler" => "index.handler",
    "KMSKeyArn" => "",
    "LastModified" => "2016-11-21T19:49:20.006+0000",
    "MemorySize" => 128,
    "Role" => "arn:aws:iam::123456789012:role/lambda_basic_execution",
    "Runtime" => "python2.7",
    "Timeout" => 123,
    "Version" => "1",
    "VpcConfig" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetFunctionConfiguration)
"""
@inline get_function_configuration(aws::AWSConfig=default_aws_config(); args...) = get_function_configuration(aws, args)

@inline get_function_configuration(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "GET", "/2015-03-31/functions/{FunctionName}/configuration", args)

@inline get_function_configuration(args) = get_function_configuration(default_aws_config(), args)


"""
    using AWSSDK.Lambda.get_policy
    get_policy([::AWSConfig], arguments::Dict)
    get_policy([::AWSConfig]; FunctionName=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/{FunctionName}/policy", arguments::Dict)
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/{FunctionName}/policy", FunctionName=, <keyword arguments>)

# GetPolicy Operation

Returns the resource policy associated with the specified Lambda function.

If you are using the versioning feature, you can get the resource policy associated with the specific Lambda function version or alias by specifying the version or alias name using the `Qualifier` parameter. For more information about versioning, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

You need permission for the `lambda:GetPolicy action.`

# Arguments

## `FunctionName = ::String` -- *Required*
Function name whose resource policy you want to retrieve.

You can specify the function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). AWS Lambda also allows you to specify only the function name with the account ID qualifier (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `Qualifier = ::String`
You can specify this optional query parameter to specify a function version or an alias name in which case this API will return all permissions associated with the specific qualified ARN. If you don't provide this parameter, the API will return permissions that apply to the unqualified function ARN.




# Returns

`GetPolicyResponse`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `TooManyRequestsException` or `InvalidParameterValueException`.

# Example: To retrieve a Lambda function policy

This operation retrieves a Lambda function policy

Input:
```
[
    "FunctionName" => "myFunction",
    "Qualifier" => "1"
]
```

Output:
```
Dict(
    "Policy" => ""
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/GetPolicy)
"""
@inline get_policy(aws::AWSConfig=default_aws_config(); args...) = get_policy(aws, args)

@inline get_policy(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "GET", "/2015-03-31/functions/{FunctionName}/policy", args)

@inline get_policy(args) = get_policy(default_aws_config(), args)


"""
    using AWSSDK.Lambda.invoke
    invoke([::AWSConfig], arguments::Dict)
    invoke([::AWSConfig]; FunctionName=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "POST", "/2015-03-31/functions/{FunctionName}/invocations", arguments::Dict)
    lambda([::AWSConfig], "POST", "/2015-03-31/functions/{FunctionName}/invocations", FunctionName=, <keyword arguments>)

# Invoke Operation

Invokes a specific Lambda function. For an example, see [Create the Lambda Function and Test It Manually](http://docs.aws.amazon.com/lambda/latest/dg/with-dynamodb-create-function.html#with-dbb-invoke-manually).

If you are using the versioning feature, you can invoke the specific function version by providing function version or alias name that is pointing to the function version using the `Qualifier` parameter in the request. If you don't provide the `Qualifier` parameter, the `\$LATEST` version of the Lambda function is invoked. Invocations occur at least once in response to an event and functions must be idempotent to handle this. For information about the versioning feature, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the `lambda:InvokeFunction` action.

**Note**
> The `TooManyRequestsException` noted below will return the following: `ConcurrentInvocationLimitExceeded` will be returned if you have no functions with reserved concurrency and have exceeded your account concurrent limit or if a function without reserved concurrency exceeds the account's unreserved concurrency limit. `ReservedFunctionConcurrentInvocationLimitExceeded` will be returned when a function with reserved concurrency exceeds its configured concurrency limit.

# Arguments

## `FunctionName = ::String` -- *Required*
The Lambda function name.

You can specify a function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda also allows you to specify a partial ARN (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `*header:* X-Amz-Invocation-Type = "Event", "RequestResponse" or "DryRun"`
By default, the `Invoke` API assumes `RequestResponse` invocation type. You can optionally request asynchronous execution by specifying `Event` as the `InvocationType`. You can also use this parameter to request AWS Lambda to not execute the function but do some verification, such as if the caller is authorized to invoke the function and if the inputs are valid. You request this by specifying `DryRun` as the `InvocationType`. This is useful in a cross-account scenario when you want to verify access to a function without running it.


## `*header:* X-Amz-Log-Type = "None" or "Tail"`
You can set this optional parameter to `Tail` in the request only if you specify the `InvocationType` parameter with value `RequestResponse`. In this case, AWS Lambda returns the base64-encoded last 4 KB of log data produced by your Lambda function in the `x-amz-log-result` header.


## `*header:* X-Amz-Client-Context = ::String`
Using the `ClientContext` you can pass client-specific information to the Lambda function you are invoking. You can then process the client information in your Lambda function as you choose through the context variable. For an example of a `ClientContext` JSON, see [PutEvents](http://docs.aws.amazon.com/mobileanalytics/latest/ug/PutEvents.html) in the *Amazon Mobile Analytics API Reference and User Guide*.

The ClientContext JSON must be base64-encoded and has a maximum size of 3583 bytes.


## `Payload = blob`
JSON that you want to provide to your Lambda function as input.


## `Qualifier = ::String`
You can use this optional parameter to specify a Lambda function version or alias name. If you specify a function version, the API uses the qualified function ARN to invoke a specific Lambda function. If you specify an alias name, the API uses the alias ARN to invoke the Lambda function version to which the alias points.

If you don't provide this parameter, then the API uses unqualified function ARN which results in invocation of the `\$LATEST` version.




# Returns

`InvocationResponse`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidRequestContentException`, `RequestTooLargeException`, `UnsupportedMediaTypeException`, `TooManyRequestsException`, `InvalidParameterValueException`, `EC2UnexpectedException`, `SubnetIPAddressLimitReachedException`, `ENILimitReachedException`, `EC2ThrottledException`, `EC2AccessDeniedException`, `InvalidSubnetIDException`, `InvalidSecurityGroupIDException`, `InvalidZipFileException`, `KMSDisabledException`, `KMSInvalidStateException`, `KMSAccessDeniedException`, `KMSNotFoundException` or `InvalidRuntimeException`.

# Example: To invoke a Lambda function

This operation invokes a Lambda function

Input:
```
[
    "ClientContext" => "MyApp",
    "FunctionName" => "MyFunction",
    "InvocationType" => "Event",
    "LogType" => "Tail",
    "Payload" => "fileb://file-path/input.json",
    "Qualifier" => "1"
]
```

Output:
```
Dict(
    "FunctionError" => "",
    "LogResult" => "",
    "Payload" => "?",
    "StatusCode" => 123
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/Invoke)
"""
@inline invoke(aws::AWSConfig=default_aws_config(); args...) = invoke(aws, args)

@inline invoke(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "POST", "/2015-03-31/functions/{FunctionName}/invocations", args)

@inline invoke(args) = invoke(default_aws_config(), args)


"""
    using AWSSDK.Lambda.invoke_async
    invoke_async([::AWSConfig], arguments::Dict)
    invoke_async([::AWSConfig]; FunctionName=, InvokeArgs=)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "POST", "/2014-11-13/functions/{FunctionName}/invoke-async/", arguments::Dict)
    lambda([::AWSConfig], "POST", "/2014-11-13/functions/{FunctionName}/invoke-async/", FunctionName=, InvokeArgs=)

# InvokeAsync Operation

 
**Important**
> This API is deprecated. We recommend you use `Invoke` API (see [Invoke](@ref)).

Submits an invocation request to AWS Lambda. Upon receiving the request, Lambda executes the specified function asynchronously. To see the logs generated by the Lambda function execution, see the CloudWatch Logs console.

This operation requires permission for the `lambda:InvokeFunction` action.

# Arguments

## `FunctionName = ::String` -- *Required*
The Lambda function name. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `InvokeArgs = blob` -- *Required*
JSON that you want to provide to your Lambda function as input.




# Returns

`InvokeAsyncResponse`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidRequestContentException` or `InvalidRuntimeException`.

# Example: To invoke a Lambda function asynchronously

This operation invokes a Lambda function asynchronously

Input:
```
[
    "FunctionName" => "myFunction",
    "InvokeArgs" => "fileb://file-path/input.json"
]
```

Output:
```
Dict(
    "Status" => 123
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/InvokeAsync)
"""
@inline invoke_async(aws::AWSConfig=default_aws_config(); args...) = invoke_async(aws, args)

@inline invoke_async(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "POST", "/2014-11-13/functions/{FunctionName}/invoke-async/", args)

@inline invoke_async(args) = invoke_async(default_aws_config(), args)


"""
    using AWSSDK.Lambda.list_aliases
    list_aliases([::AWSConfig], arguments::Dict)
    list_aliases([::AWSConfig]; FunctionName=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/{FunctionName}/aliases", arguments::Dict)
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/{FunctionName}/aliases", FunctionName=, <keyword arguments>)

# ListAliases Operation

Returns list of aliases created for a Lambda function. For each alias, the response includes information such as the alias ARN, description, alias name, and the function version to which it points. For more information, see [Introduction to AWS Lambda Aliases](http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

This requires permission for the lambda:ListAliases action.

# Arguments

## `FunctionName = ::String` -- *Required*
Lambda function name for which the alias is created. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `FunctionVersion = ::String`
If you specify this optional parameter, the API returns only the aliases that are pointing to the specific Lambda function version, otherwise the API returns all of the aliases created for the Lambda function.


## `Marker = ::String`
Optional string. An opaque pagination token returned from a previous `ListAliases` operation. If present, indicates where to continue the listing.


## `MaxItems = ::Int`
Optional integer. Specifies the maximum number of aliases to return in response. This parameter value must be greater than 0.




# Returns

`ListAliasesResponse`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException` or `TooManyRequestsException`.

# Example: To retrieve a Lambda function aliases

This operation retrieves a Lambda function's aliases

Input:
```
[
    "FunctionName" => "myFunction",
    "FunctionVersion" => "1",
    "Marker" => "",
    "MaxItems" => 123
]
```

Output:
```
Dict(
    "Aliases" => [

    ],
    "NextMarker" => ""
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListAliases)
"""
@inline list_aliases(aws::AWSConfig=default_aws_config(); args...) = list_aliases(aws, args)

@inline list_aliases(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "GET", "/2015-03-31/functions/{FunctionName}/aliases", args)

@inline list_aliases(args) = list_aliases(default_aws_config(), args)


"""
    using AWSSDK.Lambda.list_event_source_mappings
    list_event_source_mappings([::AWSConfig], arguments::Dict)
    list_event_source_mappings([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "GET", "/2015-03-31/event-source-mappings/", arguments::Dict)
    lambda([::AWSConfig], "GET", "/2015-03-31/event-source-mappings/", <keyword arguments>)

# ListEventSourceMappings Operation

Returns a list of event source mappings you created using the `CreateEventSourceMapping` (see [CreateEventSourceMapping](@ref)).

For each mapping, the API returns configuration information. You can optionally specify filters to retrieve specific event source mappings.

If you are using the versioning feature, you can get list of event source mappings for a specific Lambda function version or an alias as described in the `FunctionName` parameter. For information about the versioning feature, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the `lambda:ListEventSourceMappings` action.

# Arguments

## `EventSourceArn = ::String`
The Amazon Resource Name (ARN) of the Amazon Kinesis or DynamoDB stream, or an SQS queue. (This parameter is optional.)


## `FunctionName = ::String`
The name of the Lambda function.

You can specify the function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). AWS Lambda also allows you to specify only the function name with the account ID qualifier (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `Marker = ::String`
Optional string. An opaque pagination token returned from a previous `ListEventSourceMappings` operation. If present, specifies to continue the list from where the returning call left off.


## `MaxItems = ::Int`
Optional integer. Specifies the maximum number of event sources to return in response. This value must be greater than 0.




# Returns

`ListEventSourceMappingsResponse`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListEventSourceMappings)
"""
@inline list_event_source_mappings(aws::AWSConfig=default_aws_config(); args...) = list_event_source_mappings(aws, args)

@inline list_event_source_mappings(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "GET", "/2015-03-31/event-source-mappings/", args)

@inline list_event_source_mappings(args) = list_event_source_mappings(default_aws_config(), args)


"""
    using AWSSDK.Lambda.list_functions
    list_functions([::AWSConfig], arguments::Dict)
    list_functions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/", arguments::Dict)
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/", <keyword arguments>)

# ListFunctions Operation

Returns a list of your Lambda functions. For each function, the response includes the function configuration information. You must use [GetFunction](@ref) to retrieve the code for your function.

This operation requires permission for the `lambda:ListFunctions` action.

If you are using the versioning feature, you can list all of your functions or only `\$LATEST` versions. For information about the versioning feature, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

# Arguments

## `MasterRegion = ::String`
Optional string. If not specified, will return only regular function versions (i.e., non-replicated versions).

Valid values are:

The region from which the functions are replicated. For example, if you specify `us-east-1`, only functions replicated from that region will be returned.

`ALL`: Will return all functions from any region. If specified, you also must specify a valid FunctionVersion parameter.


## `FunctionVersion = "ALL"`
Optional string. If not specified, only the unqualified functions ARNs (Amazon Resource Names) will be returned.

Valid value:

`ALL`: Will return all versions, including `\$LATEST` which will have fully qualified ARNs (Amazon Resource Names).


## `Marker = ::String`
Optional string. An opaque pagination token returned from a previous `ListFunctions` operation. If present, indicates where to continue the listing.


## `MaxItems = ::Int`
Optional integer. Specifies the maximum number of AWS Lambda functions to return in response. This parameter value must be greater than 0.




# Returns

`ListFunctionsResponse`

# Exceptions

`ServiceException`, `TooManyRequestsException` or `InvalidParameterValueException`.

# Example: To retrieve a list of Lambda functions

This operation retrieves a Lambda functions

Input:
```
[
    "Marker" => "",
    "MaxItems" => 123
]
```

Output:
```
Dict(
    "Functions" => [

    ],
    "NextMarker" => ""
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListFunctions)
"""
@inline list_functions(aws::AWSConfig=default_aws_config(); args...) = list_functions(aws, args)

@inline list_functions(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "GET", "/2015-03-31/functions/", args)

@inline list_functions(args) = list_functions(default_aws_config(), args)


"""
    using AWSSDK.Lambda.list_tags
    list_tags([::AWSConfig], arguments::Dict)
    list_tags([::AWSConfig]; ARN=)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "GET", "/2017-03-31/tags/{ARN}", arguments::Dict)
    lambda([::AWSConfig], "GET", "/2017-03-31/tags/{ARN}", ARN=)

# ListTags Operation

Returns a list of tags assigned to a function when supplied the function ARN (Amazon Resource Name). For more information on Tagging, see [Tagging Lambda Functions](http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the **AWS Lambda Developer Guide**.

# Arguments

## `ARN = ::String` -- *Required*
The ARN (Amazon Resource Name) of the function. For more information, see [Tagging Lambda Functions](http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the **AWS Lambda Developer Guide**.




# Returns

`ListTagsResponse`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListTags)
"""
@inline list_tags(aws::AWSConfig=default_aws_config(); args...) = list_tags(aws, args)

@inline list_tags(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "GET", "/2017-03-31/tags/{ARN}", args)

@inline list_tags(args) = list_tags(default_aws_config(), args)


"""
    using AWSSDK.Lambda.list_versions_by_function
    list_versions_by_function([::AWSConfig], arguments::Dict)
    list_versions_by_function([::AWSConfig]; FunctionName=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/{FunctionName}/versions", arguments::Dict)
    lambda([::AWSConfig], "GET", "/2015-03-31/functions/{FunctionName}/versions", FunctionName=, <keyword arguments>)

# ListVersionsByFunction Operation

List all versions of a function. For information about the versioning feature, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

# Arguments

## `FunctionName = ::String` -- *Required*
Function name whose versions to list. You can specify a function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda also allows you to specify a partial ARN (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `Marker = ::String`
Optional string. An opaque pagination token returned from a previous `ListVersionsByFunction` operation. If present, indicates where to continue the listing.


## `MaxItems = ::Int`
Optional integer. Specifies the maximum number of AWS Lambda function versions to return in response. This parameter value must be greater than 0.




# Returns

`ListVersionsByFunctionResponse`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException` or `TooManyRequestsException`.

# Example: To retrieve a list of Lambda function versions

This operation retrieves a Lambda function versions

Input:
```
[
    "FunctionName" => "myFunction",
    "Marker" => "",
    "MaxItems" => 123
]
```

Output:
```
Dict(
    "NextMarker" => "",
    "Versions" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/ListVersionsByFunction)
"""
@inline list_versions_by_function(aws::AWSConfig=default_aws_config(); args...) = list_versions_by_function(aws, args)

@inline list_versions_by_function(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "GET", "/2015-03-31/functions/{FunctionName}/versions", args)

@inline list_versions_by_function(args) = list_versions_by_function(default_aws_config(), args)


"""
    using AWSSDK.Lambda.publish_version
    publish_version([::AWSConfig], arguments::Dict)
    publish_version([::AWSConfig]; FunctionName=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "POST", "/2015-03-31/functions/{FunctionName}/versions", arguments::Dict)
    lambda([::AWSConfig], "POST", "/2015-03-31/functions/{FunctionName}/versions", FunctionName=, <keyword arguments>)

# PublishVersion Operation

Publishes a version of your function from the current snapshot of \$LATEST. That is, AWS Lambda takes a snapshot of the function code and configuration information from \$LATEST and publishes a new version. The code and configuration cannot be modified after publication. For information about the versioning feature, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

# Arguments

## `FunctionName = ::String` -- *Required*
The Lambda function name. You can specify a function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda also allows you to specify a partial ARN (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `CodeSha256 = ::String`
The SHA256 hash of the deployment package you want to publish. This provides validation on the code you are publishing. If you provide this parameter, the value must match the SHA256 of the \$LATEST version for the publication to succeed. You can use the **DryRun** parameter of [UpdateFunctionCode](@ref) to verify the hash value that will be returned before publishing your new version.


## `Description = ::String`
The description for the version you are publishing. If not provided, AWS Lambda copies the description from the \$LATEST version.


## `RevisionId = ::String`
An optional value you can use to ensure you are updating the latest update of the function version or alias. If the `RevisionID` you pass doesn't match the latest `RevisionId` of the function or alias, it will fail with an error message, advising you to retrieve the latest function version or alias `RevisionID` using either or .




# Returns

`FunctionConfiguration`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException`, `TooManyRequestsException`, `CodeStorageExceededException` or `PreconditionFailedException`.

# Example: To publish a version of a Lambda function

This operation publishes a version of a Lambda function

Input:
```
[
    "CodeSha256" => "",
    "Description" => "",
    "FunctionName" => "myFunction"
]
```

Output:
```
Dict(
    "CodeSha256" => "",
    "CodeSize" => 123,
    "Description" => "",
    "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:myFunction",
    "FunctionName" => "myFunction",
    "Handler" => "index.handler",
    "LastModified" => "2016-11-21T19:49:20.006+0000",
    "MemorySize" => 128,
    "Role" => "arn:aws:iam::123456789012:role/lambda_basic_execution",
    "Runtime" => "python2.7",
    "Timeout" => 123,
    "Version" => "1",
    "VpcConfig" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PublishVersion)
"""
@inline publish_version(aws::AWSConfig=default_aws_config(); args...) = publish_version(aws, args)

@inline publish_version(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "POST", "/2015-03-31/functions/{FunctionName}/versions", args)

@inline publish_version(args) = publish_version(default_aws_config(), args)


"""
    using AWSSDK.Lambda.put_function_concurrency
    put_function_concurrency([::AWSConfig], arguments::Dict)
    put_function_concurrency([::AWSConfig]; FunctionName=, ReservedConcurrentExecutions=)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "PUT", "/2017-10-31/functions/{FunctionName}/concurrency", arguments::Dict)
    lambda([::AWSConfig], "PUT", "/2017-10-31/functions/{FunctionName}/concurrency", FunctionName=, ReservedConcurrentExecutions=)

# PutFunctionConcurrency Operation

Sets a limit on the number of concurrent executions available to this function. It is a subset of your account's total concurrent execution limit per region. Note that Lambda automatically reserves a buffer of 100 concurrent executions for functions without any reserved concurrency limit. This means if your account limit is 1000, you have a total of 900 available to allocate to individual functions. For more information, see [concurrent-executions](@ref).

# Arguments

## `FunctionName = ::String` -- *Required*
The name of the function you are setting concurrent execution limits on. For more information, see [concurrent-executions](@ref).


## `ReservedConcurrentExecutions = ::Int` -- *Required*
The concurrent execution limit reserved for this function. For more information, see [concurrent-executions](@ref).




# Returns

`Concurrency`

# Exceptions

`ServiceException`, `InvalidParameterValueException`, `ResourceNotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/PutFunctionConcurrency)
"""
@inline put_function_concurrency(aws::AWSConfig=default_aws_config(); args...) = put_function_concurrency(aws, args)

@inline put_function_concurrency(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "PUT", "/2017-10-31/functions/{FunctionName}/concurrency", args)

@inline put_function_concurrency(args) = put_function_concurrency(default_aws_config(), args)


"""
    using AWSSDK.Lambda.remove_permission
    remove_permission([::AWSConfig], arguments::Dict)
    remove_permission([::AWSConfig]; FunctionName=, StatementId=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "DELETE", "/2015-03-31/functions/{FunctionName}/policy/{StatementId}", arguments::Dict)
    lambda([::AWSConfig], "DELETE", "/2015-03-31/functions/{FunctionName}/policy/{StatementId}", FunctionName=, StatementId=, <keyword arguments>)

# RemovePermission Operation

You can remove individual permissions from an resource policy associated with a Lambda function by providing a statement ID that you provided when you added the permission.

If you are using versioning, the permissions you remove are specific to the Lambda function version or alias you specify in the `AddPermission` request via the `Qualifier` parameter. For more information about versioning, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

Note that removal of a permission will cause an active event source to lose permission to the function.

You need permission for the `lambda:RemovePermission` action.

# Arguments

## `FunctionName = ::String` -- *Required*
Lambda function whose resource policy you want to remove a permission from.

You can specify a function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda also allows you to specify a partial ARN (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `StatementId = ::String` -- *Required*
Statement ID of the permission to remove.


## `Qualifier = ::String`
You can specify this optional parameter to remove permission associated with a specific function version or function alias. If you don't specify this parameter, the API removes permission associated with the unqualified function ARN.


## `RevisionId = ::String`
An optional value you can use to ensure you are updating the latest update of the function version or alias. If the `RevisionID` you pass doesn't match the latest `RevisionId` of the function or alias, it will fail with an error message, advising you to retrieve the latest function version or alias `RevisionID` using either or .




# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException`, `TooManyRequestsException` or `PreconditionFailedException`.

# Example: To remove a Lambda function's permissions

This operation removes a Lambda function's permissions

Input:
```
[
    "FunctionName" => "myFunction",
    "Qualifier" => "1",
    "StatementId" => "role-statement-id"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/RemovePermission)
"""
@inline remove_permission(aws::AWSConfig=default_aws_config(); args...) = remove_permission(aws, args)

@inline remove_permission(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "DELETE", "/2015-03-31/functions/{FunctionName}/policy/{StatementId}", args)

@inline remove_permission(args) = remove_permission(default_aws_config(), args)


"""
    using AWSSDK.Lambda.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; ARN=, Tags=)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "POST", "/2017-03-31/tags/{ARN}", arguments::Dict)
    lambda([::AWSConfig], "POST", "/2017-03-31/tags/{ARN}", ARN=, Tags=)

# TagResource Operation

Creates a list of tags (key-value pairs) on the Lambda function. Requires the Lambda function ARN (Amazon Resource Name). If a key is specified without a value, Lambda creates a tag with the specified key and a value of null. For more information, see [Tagging Lambda Functions](http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the **AWS Lambda Developer Guide**.

# Arguments

## `ARN = ::String` -- *Required*
The ARN (Amazon Resource Name) of the Lambda function. For more information, see [Tagging Lambda Functions](http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the **AWS Lambda Developer Guide**.


## `Tags = ::Dict{String,String}` -- *Required*
The list of tags (key-value pairs) you are assigning to the Lambda function. For more information, see [Tagging Lambda Functions](http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the **AWS Lambda Developer Guide**.




# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "POST", "/2017-03-31/tags/{ARN}", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.Lambda.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; ARN=, tagKeys=)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "DELETE", "/2017-03-31/tags/{ARN}", arguments::Dict)
    lambda([::AWSConfig], "DELETE", "/2017-03-31/tags/{ARN}", ARN=, tagKeys=)

# UntagResource Operation

Removes tags from a Lambda function. Requires the function ARN (Amazon Resource Name). For more information, see [Tagging Lambda Functions](http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the **AWS Lambda Developer Guide**.

# Arguments

## `ARN = ::String` -- *Required*
The ARN (Amazon Resource Name) of the function. For more information, see [Tagging Lambda Functions](http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the **AWS Lambda Developer Guide**.


## `tagKeys = [::String, ...]` -- *Required*
The list of tag keys to be deleted from the function. For more information, see [Tagging Lambda Functions](http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the **AWS Lambda Developer Guide**.




# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "DELETE", "/2017-03-31/tags/{ARN}", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.Lambda.update_alias
    update_alias([::AWSConfig], arguments::Dict)
    update_alias([::AWSConfig]; FunctionName=, Name=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "PUT", "/2015-03-31/functions/{FunctionName}/aliases/{Name}", arguments::Dict)
    lambda([::AWSConfig], "PUT", "/2015-03-31/functions/{FunctionName}/aliases/{Name}", FunctionName=, Name=, <keyword arguments>)

# UpdateAlias Operation

Using this API you can update the function version to which the alias points and the alias description. For more information, see [Introduction to AWS Lambda Aliases](http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

This requires permission for the lambda:UpdateAlias action.

# Arguments

## `FunctionName = ::String` -- *Required*
The function name for which the alias is created. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `Name = ::String` -- *Required*
The alias name.


## `FunctionVersion = ::String`
Using this parameter you can change the Lambda function version to which the alias points.


## `Description = ::String`
You can change the description of the alias using this parameter.


## `RoutingConfig = ["AdditionalVersionWeights" =>  ::Dict{String,String}]`
Specifies an additional version your alias can point to, allowing you to dictate what percentage of traffic will invoke each version. For more information, see [lambda-traffic-shifting-using-aliases](@ref).


## `RevisionId = ::String`
An optional value you can use to ensure you are updating the latest update of the function version or alias. If the `RevisionID` you pass doesn't match the latest `RevisionId` of the function or alias, it will fail with an error message, advising you to retrieve the latest function version or alias `RevisionID` using either or .




# Returns

`AliasConfiguration`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException`, `TooManyRequestsException` or `PreconditionFailedException`.

# Example: To update a Lambda function alias

This operation updates a Lambda function alias

Input:
```
[
    "Description" => "",
    "FunctionName" => "myFunction",
    "FunctionVersion" => "1",
    "Name" => "functionAlias"
]
```

Output:
```
Dict(
    "AliasArn" => "arn:aws:lambda:us-west-2:123456789012:function:functionAlias",
    "Description" => "",
    "FunctionVersion" => "1",
    "Name" => "functionAlias"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateAlias)
"""
@inline update_alias(aws::AWSConfig=default_aws_config(); args...) = update_alias(aws, args)

@inline update_alias(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "PUT", "/2015-03-31/functions/{FunctionName}/aliases/{Name}", args)

@inline update_alias(args) = update_alias(default_aws_config(), args)


"""
    using AWSSDK.Lambda.update_event_source_mapping
    update_event_source_mapping([::AWSConfig], arguments::Dict)
    update_event_source_mapping([::AWSConfig]; UUID=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "PUT", "/2015-03-31/event-source-mappings/{UUID}", arguments::Dict)
    lambda([::AWSConfig], "PUT", "/2015-03-31/event-source-mappings/{UUID}", UUID=, <keyword arguments>)

# UpdateEventSourceMapping Operation

You can update an event source mapping. This is useful if you want to change the parameters of the existing mapping without losing your position in the stream. You can change which function will receive the stream records, but to change the stream itself, you must create a new mapping.

If you are using the versioning feature, you can update the event source mapping to map to a specific Lambda function version or alias as described in the `FunctionName` parameter. For information about the versioning feature, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

If you disable the event source mapping, AWS Lambda stops polling. If you enable again, it will resume polling from the time it had stopped polling, so you don't lose processing of any records. However, if you delete event source mapping and create it again, it will reset.

This operation requires permission for the `lambda:UpdateEventSourceMapping` action.

# Arguments

## `UUID = ::String` -- *Required*
The event source mapping identifier.


## `FunctionName = ::String`
The Lambda function to which you want the stream records sent.

You can specify a function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda also allows you to specify a partial ARN (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.

If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). For more information about versioning, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)

Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 character in length.


## `Enabled = ::Bool`
Specifies whether AWS Lambda should actively poll the stream or not. If disabled, AWS Lambda will not poll the stream.


## `BatchSize = ::Int`
The maximum number of stream records that can be sent to your Lambda function for a single invocation.




# Returns

`EventSourceMappingConfiguration`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException`, `TooManyRequestsException`, `ResourceConflictException` or `ResourceInUseException`.

# Example: To update a Lambda function event source mapping

This operation updates a Lambda function event source mapping

Input:
```
[
    "BatchSize" => 123,
    "Enabled" => true,
    "FunctionName" => "myFunction",
    "UUID" => "1234xCy789012"
]
```

Output:
```
Dict(
    "BatchSize" => 123,
    "EventSourceArn" => "arn:aws:s3:::examplebucket/*",
    "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:myFunction",
    "LastModified" => "2016-11-21T19:49:20.006+0000",
    "LastProcessingResult" => "",
    "State" => "",
    "StateTransitionReason" => "",
    "UUID" => "1234xCy789012"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateEventSourceMapping)
"""
@inline update_event_source_mapping(aws::AWSConfig=default_aws_config(); args...) = update_event_source_mapping(aws, args)

@inline update_event_source_mapping(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "PUT", "/2015-03-31/event-source-mappings/{UUID}", args)

@inline update_event_source_mapping(args) = update_event_source_mapping(default_aws_config(), args)


"""
    using AWSSDK.Lambda.update_function_code
    update_function_code([::AWSConfig], arguments::Dict)
    update_function_code([::AWSConfig]; FunctionName=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "PUT", "/2015-03-31/functions/{FunctionName}/code", arguments::Dict)
    lambda([::AWSConfig], "PUT", "/2015-03-31/functions/{FunctionName}/code", FunctionName=, <keyword arguments>)

# UpdateFunctionCode Operation

Updates the code for the specified Lambda function. This operation must only be used on an existing Lambda function and cannot be used to update the function configuration.

If you are using the versioning feature, note this API will always update the \$LATEST version of your Lambda function. For information about the versioning feature, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the `lambda:UpdateFunctionCode` action.

# Arguments

## `FunctionName = ::String` -- *Required*
The existing Lambda function name whose code you want to replace.

You can specify a function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda also allows you to specify a partial ARN (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.


## `ZipFile = blob`
The contents of your zip file containing your deployment package. If you are using the web API directly, the contents of the zip file must be base64-encoded. If you are using the AWS SDKs or the AWS CLI, the SDKs or CLI will do the encoding for you. For more information about creating a .zip file, see [Execution Permissions](http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html).


## `S3Bucket = ::String`
Amazon S3 bucket name where the .zip file containing your deployment package is stored. This bucket must reside in the same AWS Region where you are creating the Lambda function.


## `S3Key = ::String`
The Amazon S3 object (the deployment package) key name you want to upload.


## `S3ObjectVersion = ::String`
The Amazon S3 object (the deployment package) version you want to upload.


## `Publish = ::Bool`
This boolean parameter can be used to request AWS Lambda to update the Lambda function and publish a version as an atomic operation.


## `DryRun = ::Bool`
This boolean parameter can be used to test your request to AWS Lambda to update the Lambda function and publish a version as an atomic operation. It will do all necessary computation and validation of your code but will not upload it or a publish a version. Each time this operation is invoked, the `CodeSha256` hash value of the provided code will also be computed and returned in the response.


## `RevisionId = ::String`
An optional value you can use to ensure you are updating the latest update of the function version or alias. If the `RevisionID` you pass doesn't match the latest `RevisionId` of the function or alias, it will fail with an error message, advising you to retrieve the latest function version or alias `RevisionID` using either or .




# Returns

`FunctionConfiguration`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException`, `TooManyRequestsException`, `CodeStorageExceededException` or `PreconditionFailedException`.

# Example: To update a Lambda function's code

This operation updates a Lambda function's code

Input:
```
[
    "FunctionName" => "myFunction",
    "Publish" => true,
    "S3Bucket" => "myBucket",
    "S3Key" => "myKey",
    "S3ObjectVersion" => "1",
    "ZipFile" => "fileb://file-path/file.zip"
]
```

Output:
```
Dict(
    "CodeSha256" => "LQT+0DHxxxxcfwLyQjzoEFKZtdqQjHXanlSdfXBlEW0VA=",
    "CodeSize" => 123,
    "Description" => "",
    "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:myFunction",
    "FunctionName" => "myFunction",
    "Handler" => "index.handler",
    "LastModified" => "2016-11-21T19:49:20.006+0000",
    "MemorySize" => 128,
    "Role" => "arn:aws:iam::123456789012:role/lambda_basic_execution",
    "Runtime" => "python2.7",
    "Timeout" => 123,
    "Version" => "1",
    "VpcConfig" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionCode)
"""
@inline update_function_code(aws::AWSConfig=default_aws_config(); args...) = update_function_code(aws, args)

@inline update_function_code(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "PUT", "/2015-03-31/functions/{FunctionName}/code", args)

@inline update_function_code(args) = update_function_code(default_aws_config(), args)


"""
    using AWSSDK.Lambda.update_function_configuration
    update_function_configuration([::AWSConfig], arguments::Dict)
    update_function_configuration([::AWSConfig]; FunctionName=, <keyword arguments>)

    using AWSCore.Services.lambda
    lambda([::AWSConfig], "PUT", "/2015-03-31/functions/{FunctionName}/configuration", arguments::Dict)
    lambda([::AWSConfig], "PUT", "/2015-03-31/functions/{FunctionName}/configuration", FunctionName=, <keyword arguments>)

# UpdateFunctionConfiguration Operation

Updates the configuration parameters for the specified Lambda function by using the values provided in the request. You provide only the parameters you want to change. This operation must only be used on an existing Lambda function and cannot be used to update the function's code.

If you are using the versioning feature, note this API will always update the \$LATEST version of your Lambda function. For information about the versioning feature, see [AWS Lambda Function Versioning and Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the `lambda:UpdateFunctionConfiguration` action.

# Arguments

## `FunctionName = ::String` -- *Required*
The name of the Lambda function.

You can specify a function name (for example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of the function (for example, `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda also allows you to specify a partial ARN (for example, `account-id:Thumbnail`). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 character in length.


## `Role = ::String`
The Amazon Resource Name (ARN) of the IAM role that Lambda will assume when it executes your function.


## `Handler = ::String`
The function that Lambda calls to begin executing your function. For Node.js, it is the `module-name.export` value in your function.


## `Description = ::String`
A short user-defined function description. AWS Lambda does not use this value. Assign a meaningful description as you see fit.


## `Timeout = ::Int`
The function execution time at which AWS Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds.


## `MemorySize = ::Int`
The amount of memory, in MB, your Lambda function is given. AWS Lambda uses this memory size to infer the amount of CPU allocated to your function. Your function use-case determines your CPU and memory requirements. For example, a database operation might need less memory compared to an image processing function. The default value is 128 MB. The value must be a multiple of 64 MB.


## `VpcConfig = [ ... ]`

```
 VpcConfig = [
        "SubnetIds" =>  [::String, ...],
        "SecurityGroupIds" =>  [::String, ...]
    ]
```

## `Environment = ["Variables" =>  ::Dict{String,String}]`
The parent object that contains your environment's configuration settings.


## `Runtime = "nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "java8", "python2.7", "python3.6", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "nodejs4.3-edge" or "go1.x"`
The runtime environment for the Lambda function.

To use the Python runtime v3.6, set the value to "python3.6". To use the Python runtime v2.7, set the value to "python2.7". To use the Node.js runtime v6.10, set the value to "nodejs6.10". To use the Node.js runtime v4.3, set the value to "nodejs4.3". To use the .NET Core runtime v1.0, set the value to "dotnetcore1.0". To use the .NET Core runtime v2.0, set the value to "dotnetcore2.0".

**Note**
> Node v0.10.42 is currently marked as deprecated. You must migrate existing functions to the newer Node.js runtime versions available on AWS Lambda (nodejs4.3 or nodejs6.10) as soon as possible. Failure to do so will result in an invalid parameter error being returned. Note that you will have to follow this procedure for each region that contains functions written in the Node v0.10.42 runtime.


## `DeadLetterConfig = ["TargetArn" =>  ::String]`
The parent object that contains the target ARN (Amazon Resource Name) of an Amazon SQS queue or Amazon SNS topic. For more information, see [dlq](@ref).


## `KMSKeyArn = ::String`
The Amazon Resource Name (ARN) of the KMS key used to encrypt your function's environment variables. If you elect to use the AWS Lambda default service key, pass in an empty string ("") for this parameter.


## `TracingConfig = ["Mode" =>  "Active" or "PassThrough"]`
The parent object that contains your function's tracing settings.


## `RevisionId = ::String`
An optional value you can use to ensure you are updating the latest update of the function version or alias. If the `RevisionID` you pass doesn't match the latest `RevisionId` of the function or alias, it will fail with an error message, advising you to retrieve the latest function version or alias `RevisionID` using either or .




# Returns

`FunctionConfiguration`

# Exceptions

`ServiceException`, `ResourceNotFoundException`, `InvalidParameterValueException`, `TooManyRequestsException`, `ResourceConflictException` or `PreconditionFailedException`.

# Example: To update a Lambda function's configuration

This operation updates a Lambda function's configuration

Input:
```
[
    "Description" => "",
    "FunctionName" => "myFunction",
    "Handler" => "index.handler",
    "MemorySize" => 128,
    "Role" => "arn:aws:iam::123456789012:role/lambda_basic_execution",
    "Runtime" => "python2.7",
    "Timeout" => 123,
    "VpcConfig" => [

    ]
]
```

Output:
```
Dict(
    "CodeSha256" => "LQT+0DHxxxxcfwLyQjzoEFKZtdqQjHXanlSdfXBlEW0VA=",
    "CodeSize" => 123,
    "Description" => "",
    "FunctionArn" => "arn:aws:lambda:us-west-2:123456789012:function:myFunction",
    "FunctionName" => "myFunction",
    "Handler" => "index.handler",
    "LastModified" => "2016-11-21T19:49:20.006+0000",
    "MemorySize" => 128,
    "Role" => "arn:aws:iam::123456789012:role/lambda_basic_execution",
    "Runtime" => "python2.7",
    "Timeout" => 123,
    "Version" => "1",
    "VpcConfig" => Dict(

    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31/UpdateFunctionConfiguration)
"""
@inline update_function_configuration(aws::AWSConfig=default_aws_config(); args...) = update_function_configuration(aws, args)

@inline update_function_configuration(aws::AWSConfig, args) = AWSCore.Services.lambda(aws, "PUT", "/2015-03-31/functions/{FunctionName}/configuration", args)

@inline update_function_configuration(args) = update_function_configuration(default_aws_config(), args)




end # module Lambda


#==============================================================================#
# End of file
#==============================================================================#
