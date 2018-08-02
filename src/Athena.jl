#==============================================================================#
# Athena.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/athena-2017-05-18.normal.json
#==============================================================================#

__precompile__()

module Athena

using AWSCore


"""
    using AWSSDK.Athena.batch_get_named_query
    batch_get_named_query([::AWSConfig], arguments::Dict)
    batch_get_named_query([::AWSConfig]; NamedQueryIds=)

    using AWSCore.Services.athena
    athena([::AWSConfig], "BatchGetNamedQuery", arguments::Dict)
    athena([::AWSConfig], "BatchGetNamedQuery", NamedQueryIds=)

# BatchGetNamedQuery Operation

Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings. Use [ListNamedQueries](@ref) to get the list of named query IDs. If information could not be retrieved for a submitted query ID, information about the query ID submitted is listed under [UnprocessedNamedQueryId](@ref). Named queries are different from executed queries. Use [BatchGetQueryExecution](@ref) to get details about each unique query execution, and [ListQueryExecutions](@ref) to get a list of query execution IDs.

# Arguments

## `NamedQueryIds = [::String, ...]` -- *Required*
An array of query IDs.




# Returns

`BatchGetNamedQueryOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/BatchGetNamedQuery)
"""
@inline batch_get_named_query(aws::AWSConfig=default_aws_config(); args...) = batch_get_named_query(aws, args)

@inline batch_get_named_query(aws::AWSConfig, args) = AWSCore.Services.athena(aws, "BatchGetNamedQuery", args)

@inline batch_get_named_query(args) = batch_get_named_query(default_aws_config(), args)


"""
    using AWSSDK.Athena.batch_get_query_execution
    batch_get_query_execution([::AWSConfig], arguments::Dict)
    batch_get_query_execution([::AWSConfig]; QueryExecutionIds=)

    using AWSCore.Services.athena
    athena([::AWSConfig], "BatchGetQueryExecution", arguments::Dict)
    athena([::AWSConfig], "BatchGetQueryExecution", QueryExecutionIds=)

# BatchGetQueryExecution Operation

Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. To get a list of query execution IDs, use [ListQueryExecutions](@ref). Query executions are different from named (saved) queries. Use [BatchGetNamedQuery](@ref) to get details about named queries.

# Arguments

## `QueryExecutionIds = [::String, ...]` -- *Required*
An array of query execution IDs.




# Returns

`BatchGetQueryExecutionOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/BatchGetQueryExecution)
"""
@inline batch_get_query_execution(aws::AWSConfig=default_aws_config(); args...) = batch_get_query_execution(aws, args)

@inline batch_get_query_execution(aws::AWSConfig, args) = AWSCore.Services.athena(aws, "BatchGetQueryExecution", args)

@inline batch_get_query_execution(args) = batch_get_query_execution(default_aws_config(), args)


"""
    using AWSSDK.Athena.create_named_query
    create_named_query([::AWSConfig], arguments::Dict)
    create_named_query([::AWSConfig]; Name=, Database=, QueryString=, <keyword arguments>)

    using AWSCore.Services.athena
    athena([::AWSConfig], "CreateNamedQuery", arguments::Dict)
    athena([::AWSConfig], "CreateNamedQuery", Name=, Database=, QueryString=, <keyword arguments>)

# CreateNamedQuery Operation

Creates a named query.

For code samples using the AWS SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the *Amazon Athena User Guide*.

# Arguments

## `Name = ::String` -- *Required*
The plain language name for the query.


## `Description = ::String`
A brief explanation of the query.


## `Database = ::String` -- *Required*
The database to which the query belongs.


## `QueryString = ::String` -- *Required*
The text of the query itself. In other words, all query statements.


## `ClientRequestToken = ::String`
A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another `CreateNamedQuery` request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the `QueryString`, an error is returned.

**Important**
> This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.




# Returns

`CreateNamedQueryOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateNamedQuery)
"""
@inline create_named_query(aws::AWSConfig=default_aws_config(); args...) = create_named_query(aws, args)

@inline create_named_query(aws::AWSConfig, args) = AWSCore.Services.athena(aws, "CreateNamedQuery", args)

@inline create_named_query(args) = create_named_query(default_aws_config(), args)


"""
    using AWSSDK.Athena.delete_named_query
    delete_named_query([::AWSConfig], arguments::Dict)
    delete_named_query([::AWSConfig]; NamedQueryId=)

    using AWSCore.Services.athena
    athena([::AWSConfig], "DeleteNamedQuery", arguments::Dict)
    athena([::AWSConfig], "DeleteNamedQuery", NamedQueryId=)

# DeleteNamedQuery Operation

Deletes a named query.

For code samples using the AWS SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the *Amazon Athena User Guide*.

# Arguments

## `NamedQueryId = ::String` -- *Required*
The unique ID of the query to delete.




# Returns

`DeleteNamedQueryOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteNamedQuery)
"""
@inline delete_named_query(aws::AWSConfig=default_aws_config(); args...) = delete_named_query(aws, args)

@inline delete_named_query(aws::AWSConfig, args) = AWSCore.Services.athena(aws, "DeleteNamedQuery", args)

@inline delete_named_query(args) = delete_named_query(default_aws_config(), args)


"""
    using AWSSDK.Athena.get_named_query
    get_named_query([::AWSConfig], arguments::Dict)
    get_named_query([::AWSConfig]; NamedQueryId=)

    using AWSCore.Services.athena
    athena([::AWSConfig], "GetNamedQuery", arguments::Dict)
    athena([::AWSConfig], "GetNamedQuery", NamedQueryId=)

# GetNamedQuery Operation

Returns information about a single query.

# Arguments

## `NamedQueryId = ::String` -- *Required*
The unique ID of the query. Use [ListNamedQueries](@ref) to get query IDs.




# Returns

`GetNamedQueryOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetNamedQuery)
"""
@inline get_named_query(aws::AWSConfig=default_aws_config(); args...) = get_named_query(aws, args)

@inline get_named_query(aws::AWSConfig, args) = AWSCore.Services.athena(aws, "GetNamedQuery", args)

@inline get_named_query(args) = get_named_query(default_aws_config(), args)


"""
    using AWSSDK.Athena.get_query_execution
    get_query_execution([::AWSConfig], arguments::Dict)
    get_query_execution([::AWSConfig]; QueryExecutionId=)

    using AWSCore.Services.athena
    athena([::AWSConfig], "GetQueryExecution", arguments::Dict)
    athena([::AWSConfig], "GetQueryExecution", QueryExecutionId=)

# GetQueryExecution Operation

Returns information about a single execution of a query. Each time a query executes, information about the query execution is saved with a unique ID.

# Arguments

## `QueryExecutionId = ::String` -- *Required*
The unique ID of the query execution.




# Returns

`GetQueryExecutionOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryExecution)
"""
@inline get_query_execution(aws::AWSConfig=default_aws_config(); args...) = get_query_execution(aws, args)

@inline get_query_execution(aws::AWSConfig, args) = AWSCore.Services.athena(aws, "GetQueryExecution", args)

@inline get_query_execution(args) = get_query_execution(default_aws_config(), args)


"""
    using AWSSDK.Athena.get_query_results
    get_query_results([::AWSConfig], arguments::Dict)
    get_query_results([::AWSConfig]; QueryExecutionId=, <keyword arguments>)

    using AWSCore.Services.athena
    athena([::AWSConfig], "GetQueryResults", arguments::Dict)
    athena([::AWSConfig], "GetQueryResults", QueryExecutionId=, <keyword arguments>)

# GetQueryResults Operation

Returns the results of a single query execution specified by `QueryExecutionId`. This request does not execute the query but returns results. Use [StartQueryExecution](@ref) to run a query.

# Arguments

## `QueryExecutionId = ::String` -- *Required*
The unique ID of the query execution.


## `NextToken = ::String`
The token that specifies where to start pagination if a previous request was truncated.


## `MaxResults = ::Int`
The maximum number of results (rows) to return in this request.




# Returns

`GetQueryResultsOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryResults)
"""
@inline get_query_results(aws::AWSConfig=default_aws_config(); args...) = get_query_results(aws, args)

@inline get_query_results(aws::AWSConfig, args) = AWSCore.Services.athena(aws, "GetQueryResults", args)

@inline get_query_results(args) = get_query_results(default_aws_config(), args)


"""
    using AWSSDK.Athena.list_named_queries
    list_named_queries([::AWSConfig], arguments::Dict)
    list_named_queries([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.athena
    athena([::AWSConfig], "ListNamedQueries", arguments::Dict)
    athena([::AWSConfig], "ListNamedQueries", <keyword arguments>)

# ListNamedQueries Operation

Provides a list of all available query IDs.

For code samples using the AWS SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the *Amazon Athena User Guide*.

# Arguments

## `NextToken = ::String`
The token that specifies where to start pagination if a previous request was truncated.


## `MaxResults = ::Int`
The maximum number of queries to return in this request.




# Returns

`ListNamedQueriesOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListNamedQueries)
"""
@inline list_named_queries(aws::AWSConfig=default_aws_config(); args...) = list_named_queries(aws, args)

@inline list_named_queries(aws::AWSConfig, args) = AWSCore.Services.athena(aws, "ListNamedQueries", args)

@inline list_named_queries(args) = list_named_queries(default_aws_config(), args)


"""
    using AWSSDK.Athena.list_query_executions
    list_query_executions([::AWSConfig], arguments::Dict)
    list_query_executions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.athena
    athena([::AWSConfig], "ListQueryExecutions", arguments::Dict)
    athena([::AWSConfig], "ListQueryExecutions", <keyword arguments>)

# ListQueryExecutions Operation

Provides a list of all available query execution IDs.

For code samples using the AWS SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the *Amazon Athena User Guide*.

# Arguments

## `NextToken = ::String`
The token that specifies where to start pagination if a previous request was truncated.


## `MaxResults = ::Int`
The maximum number of query executions to return in this request.




# Returns

`ListQueryExecutionsOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListQueryExecutions)
"""
@inline list_query_executions(aws::AWSConfig=default_aws_config(); args...) = list_query_executions(aws, args)

@inline list_query_executions(aws::AWSConfig, args) = AWSCore.Services.athena(aws, "ListQueryExecutions", args)

@inline list_query_executions(args) = list_query_executions(default_aws_config(), args)


"""
    using AWSSDK.Athena.start_query_execution
    start_query_execution([::AWSConfig], arguments::Dict)
    start_query_execution([::AWSConfig]; QueryString=, ResultConfiguration=, <keyword arguments>)

    using AWSCore.Services.athena
    athena([::AWSConfig], "StartQueryExecution", arguments::Dict)
    athena([::AWSConfig], "StartQueryExecution", QueryString=, ResultConfiguration=, <keyword arguments>)

# StartQueryExecution Operation

Runs (executes) the SQL query statements contained in the `Query` string.

For code samples using the AWS SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the *Amazon Athena User Guide*.

# Arguments

## `QueryString = ::String` -- *Required*
The SQL query statements to be executed.


## `ClientRequestToken = ::String`
A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another `StartQueryExecution` request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the `QueryString`, an error is returned.

**Important**
> This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.


## `QueryExecutionContext = ["Database" =>  ::String]`
The database within which the query executes.


## `ResultConfiguration = [ ... ]` -- *Required*
Specifies information about where and how to save the results of the query execution.
```
 ResultConfiguration = [
        "OutputLocation" => <required> ::String,
        "EncryptionConfiguration" =>  [
            "EncryptionOption" => <required> "SSE_S3", "SSE_KMS" or "CSE_KMS",
            "KmsKey" =>  ::String
        ]
    ]
```



# Returns

`StartQueryExecutionOutput`

# Exceptions

`InternalServerException`, `InvalidRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StartQueryExecution)
"""
@inline start_query_execution(aws::AWSConfig=default_aws_config(); args...) = start_query_execution(aws, args)

@inline start_query_execution(aws::AWSConfig, args) = AWSCore.Services.athena(aws, "StartQueryExecution", args)

@inline start_query_execution(args) = start_query_execution(default_aws_config(), args)


"""
    using AWSSDK.Athena.stop_query_execution
    stop_query_execution([::AWSConfig], arguments::Dict)
    stop_query_execution([::AWSConfig]; QueryExecutionId=)

    using AWSCore.Services.athena
    athena([::AWSConfig], "StopQueryExecution", arguments::Dict)
    athena([::AWSConfig], "StopQueryExecution", QueryExecutionId=)

# StopQueryExecution Operation

Stops a query execution.

For code samples using the AWS SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the *Amazon Athena User Guide*.

# Arguments

## `QueryExecutionId = ::String` -- *Required*
The unique ID of the query execution to stop.




# Returns

`StopQueryExecutionOutput`

# Exceptions

`InternalServerException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StopQueryExecution)
"""
@inline stop_query_execution(aws::AWSConfig=default_aws_config(); args...) = stop_query_execution(aws, args)

@inline stop_query_execution(aws::AWSConfig, args) = AWSCore.Services.athena(aws, "StopQueryExecution", args)

@inline stop_query_execution(args) = stop_query_execution(default_aws_config(), args)




end # module Athena


#==============================================================================#
# End of file
#==============================================================================#
