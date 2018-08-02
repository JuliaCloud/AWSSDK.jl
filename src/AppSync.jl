#==============================================================================#
# AppSync.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/appsync-2017-07-25.normal.json
#==============================================================================#

__precompile__()

module AppSync

using AWSCore


"""
    using AWSSDK.AppSync.create_api_key
    create_api_key([::AWSConfig], arguments::Dict)
    create_api_key([::AWSConfig]; apiId=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/apikeys", arguments::Dict)
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/apikeys", apiId=, <keyword arguments>)

# CreateApiKey Operation

Creates a unique key that you can distribute to clients who are executing your API.

# Arguments

## `apiId = ::String` -- *Required*
The ID for your GraphQL API.


## `description = ::String`
A description of the purpose of the API key.


## `expires = ::Int`
The time from creation time after which the API key expires. The date is represented as seconds since the epoch, rounded down to the nearest hour. The default value for this parameter is 7 days from creation time. For more information, see .




# Returns

`CreateApiKeyResponse`

# Exceptions

`BadRequestException`, `NotFoundException`, `LimitExceededException`, `UnauthorizedException`, `LimitExceededException`, `InternalFailureException`, `ApiKeyLimitExceededException` or `ApiKeyValidityOutOfBoundsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateApiKey)
"""
@inline create_api_key(aws::AWSConfig=default_aws_config(); args...) = create_api_key(aws, args)

@inline create_api_key(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "POST", "/v1/apis/{apiId}/apikeys", args)

@inline create_api_key(args) = create_api_key(default_aws_config(), args)


"""
    using AWSSDK.AppSync.create_data_source
    create_data_source([::AWSConfig], arguments::Dict)
    create_data_source([::AWSConfig]; apiId=, name=, type=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/datasources", arguments::Dict)
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/datasources", apiId=, name=, type=, <keyword arguments>)

# CreateDataSource Operation

Creates a `DataSource` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID for the GraphQL API for the `DataSource`.


## `name = ::String` -- *Required*
A user-supplied name for the `DataSource`.


## `description = ::String`
A description of the `DataSource`.


## `type = "AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE" or "HTTP"` -- *Required*
The type of the `DataSource`.


## `serviceRoleArn = ::String`
The IAM service role ARN for the data source. The system assumes this role when accessing the data source.


## `dynamodbConfig = [ ... ]`
DynamoDB settings.
```
 dynamodbConfig = [
        "tableName" => <required> ::String,
        "awsRegion" => <required> ::String,
        "useCallerCredentials" =>  ::Bool
    ]
```

## `lambdaConfig = ["lambdaFunctionArn" => <required> ::String]`
AWS Lambda settings.


## `elasticsearchConfig = [ ... ]`
Amazon Elasticsearch settings.
```
 elasticsearchConfig = [
        "endpoint" => <required> ::String,
        "awsRegion" => <required> ::String
    ]
```

## `httpConfig = ["endpoint" =>  ::String]`
Http endpoint settings.




# Returns

`CreateDataSourceResponse`

# Exceptions

`BadRequestException`, `ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateDataSource)
"""
@inline create_data_source(aws::AWSConfig=default_aws_config(); args...) = create_data_source(aws, args)

@inline create_data_source(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "POST", "/v1/apis/{apiId}/datasources", args)

@inline create_data_source(args) = create_data_source(default_aws_config(), args)


"""
    using AWSSDK.AppSync.create_graphql_api
    create_graphql_api([::AWSConfig], arguments::Dict)
    create_graphql_api([::AWSConfig]; name=, authenticationType=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "POST", "/v1/apis", arguments::Dict)
    appsync([::AWSConfig], "POST", "/v1/apis", name=, authenticationType=, <keyword arguments>)

# CreateGraphqlApi Operation

Creates a `GraphqlApi` object.

# Arguments

## `name = ::String` -- *Required*
A user-supplied name for the `GraphqlApi`.


## `logConfig = [ ... ]`
The Amazon CloudWatch logs configuration.
```
 logConfig = [
        "fieldLogLevel" => <required> "NONE", "ERROR" or "ALL",
        "cloudWatchLogsRoleArn" => <required> ::String
    ]
```

## `authenticationType = "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS" or "OPENID_CONNECT"` -- *Required*
The authentication type: API key, IAM, or Amazon Cognito User Pools.


## `userPoolConfig = [ ... ]`
The Amazon Cognito User Pool configuration.
```
 userPoolConfig = [
        "userPoolId" => <required> ::String,
        "awsRegion" => <required> ::String,
        "defaultAction" => <required> "ALLOW" or "DENY",
        "appIdClientRegex" =>  ::String
    ]
```

## `openIDConnectConfig = [ ... ]`
The Open Id Connect configuration configuration.
```
 openIDConnectConfig = [
        "issuer" => <required> ::String,
        "clientId" =>  ::String,
        "iatTTL" =>  ::Int,
        "authTTL" =>  ::Int
    ]
```



# Returns

`CreateGraphqlApiResponse`

# Exceptions

`BadRequestException`, `LimitExceededException`, `ConcurrentModificationException`, `UnauthorizedException`, `InternalFailureException` or `ApiLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateGraphqlApi)
"""
@inline create_graphql_api(aws::AWSConfig=default_aws_config(); args...) = create_graphql_api(aws, args)

@inline create_graphql_api(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "POST", "/v1/apis", args)

@inline create_graphql_api(args) = create_graphql_api(default_aws_config(), args)


"""
    using AWSSDK.AppSync.create_resolver
    create_resolver([::AWSConfig], arguments::Dict)
    create_resolver([::AWSConfig]; apiId=, typeName=, fieldName=, dataSourceName=, requestMappingTemplate=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/types/{typeName}/resolvers", arguments::Dict)
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/types/{typeName}/resolvers", apiId=, typeName=, fieldName=, dataSourceName=, requestMappingTemplate=, <keyword arguments>)

# CreateResolver Operation

Creates a `Resolver` object.

A resolver converts incoming requests into a format that a data source can understand and converts the data source's responses into GraphQL.

# Arguments

## `apiId = ::String` -- *Required*
The ID for the GraphQL API for which the resolver is being created.


## `typeName = ::String` -- *Required*
The name of the `Type`.


## `fieldName = ::String` -- *Required*
The name of the field to attach the resolver to.


## `dataSourceName = ::String` -- *Required*
The name of the data source for which the resolver is being created.


## `requestMappingTemplate = ::String` -- *Required*
The mapping template to be used for requests.

A resolver uses a request mapping template to convert a GraphQL expression into a format that a data source can understand. Mapping templates are written in Apache Velocity Template Language (VTL).


## `responseMappingTemplate = ::String`
The mapping template to be used for responses from the data source.




# Returns

`CreateResolverResponse`

# Exceptions

`ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateResolver)
"""
@inline create_resolver(aws::AWSConfig=default_aws_config(); args...) = create_resolver(aws, args)

@inline create_resolver(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "POST", "/v1/apis/{apiId}/types/{typeName}/resolvers", args)

@inline create_resolver(args) = create_resolver(default_aws_config(), args)


"""
    using AWSSDK.AppSync.create_type
    create_type([::AWSConfig], arguments::Dict)
    create_type([::AWSConfig]; apiId=, definition=, format=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/types", arguments::Dict)
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/types", apiId=, definition=, format=)

# CreateType Operation

Creates a `Type` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `definition = ::String` -- *Required*
The type definition, in GraphQL Schema Definition Language (SDL) format.

For more information, see the [GraphQL SDL documentation](http://graphql.org/learn/schema/).


## `format = "SDL" or "JSON"` -- *Required*
The type format: SDL or JSON.




# Returns

`CreateTypeResponse`

# Exceptions

`BadRequestException`, `ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateType)
"""
@inline create_type(aws::AWSConfig=default_aws_config(); args...) = create_type(aws, args)

@inline create_type(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "POST", "/v1/apis/{apiId}/types", args)

@inline create_type(args) = create_type(default_aws_config(), args)


"""
    using AWSSDK.AppSync.delete_api_key
    delete_api_key([::AWSConfig], arguments::Dict)
    delete_api_key([::AWSConfig]; apiId=, id=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "DELETE", "/v1/apis/{apiId}/apikeys/{id}", arguments::Dict)
    appsync([::AWSConfig], "DELETE", "/v1/apis/{apiId}/apikeys/{id}", apiId=, id=)

# DeleteApiKey Operation

Deletes an API key.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `id = ::String` -- *Required*
The ID for the API key.




# Returns

`DeleteApiKeyResponse`

# Exceptions

`BadRequestException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteApiKey)
"""
@inline delete_api_key(aws::AWSConfig=default_aws_config(); args...) = delete_api_key(aws, args)

@inline delete_api_key(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "DELETE", "/v1/apis/{apiId}/apikeys/{id}", args)

@inline delete_api_key(args) = delete_api_key(default_aws_config(), args)


"""
    using AWSSDK.AppSync.delete_data_source
    delete_data_source([::AWSConfig], arguments::Dict)
    delete_data_source([::AWSConfig]; apiId=, name=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "DELETE", "/v1/apis/{apiId}/datasources/{name}", arguments::Dict)
    appsync([::AWSConfig], "DELETE", "/v1/apis/{apiId}/datasources/{name}", apiId=, name=)

# DeleteDataSource Operation

Deletes a `DataSource` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `name = ::String` -- *Required*
The name of the data source.




# Returns

`DeleteDataSourceResponse`

# Exceptions

`BadRequestException`, `ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteDataSource)
"""
@inline delete_data_source(aws::AWSConfig=default_aws_config(); args...) = delete_data_source(aws, args)

@inline delete_data_source(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "DELETE", "/v1/apis/{apiId}/datasources/{name}", args)

@inline delete_data_source(args) = delete_data_source(default_aws_config(), args)


"""
    using AWSSDK.AppSync.delete_graphql_api
    delete_graphql_api([::AWSConfig], arguments::Dict)
    delete_graphql_api([::AWSConfig]; apiId=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "DELETE", "/v1/apis/{apiId}", arguments::Dict)
    appsync([::AWSConfig], "DELETE", "/v1/apis/{apiId}", apiId=)

# DeleteGraphqlApi Operation

Deletes a `GraphqlApi` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.




# Returns

`DeleteGraphqlApiResponse`

# Exceptions

`BadRequestException`, `ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteGraphqlApi)
"""
@inline delete_graphql_api(aws::AWSConfig=default_aws_config(); args...) = delete_graphql_api(aws, args)

@inline delete_graphql_api(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "DELETE", "/v1/apis/{apiId}", args)

@inline delete_graphql_api(args) = delete_graphql_api(default_aws_config(), args)


"""
    using AWSSDK.AppSync.delete_resolver
    delete_resolver([::AWSConfig], arguments::Dict)
    delete_resolver([::AWSConfig]; apiId=, typeName=, fieldName=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "DELETE", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", arguments::Dict)
    appsync([::AWSConfig], "DELETE", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", apiId=, typeName=, fieldName=)

# DeleteResolver Operation

Deletes a `Resolver` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `typeName = ::String` -- *Required*
The name of the resolver type.


## `fieldName = ::String` -- *Required*
The resolver field name.




# Returns

`DeleteResolverResponse`

# Exceptions

`ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteResolver)
"""
@inline delete_resolver(aws::AWSConfig=default_aws_config(); args...) = delete_resolver(aws, args)

@inline delete_resolver(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "DELETE", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", args)

@inline delete_resolver(args) = delete_resolver(default_aws_config(), args)


"""
    using AWSSDK.AppSync.delete_type
    delete_type([::AWSConfig], arguments::Dict)
    delete_type([::AWSConfig]; apiId=, typeName=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "DELETE", "/v1/apis/{apiId}/types/{typeName}", arguments::Dict)
    appsync([::AWSConfig], "DELETE", "/v1/apis/{apiId}/types/{typeName}", apiId=, typeName=)

# DeleteType Operation

Deletes a `Type` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `typeName = ::String` -- *Required*
The type name.




# Returns

`DeleteTypeResponse`

# Exceptions

`BadRequestException`, `ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteType)
"""
@inline delete_type(aws::AWSConfig=default_aws_config(); args...) = delete_type(aws, args)

@inline delete_type(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "DELETE", "/v1/apis/{apiId}/types/{typeName}", args)

@inline delete_type(args) = delete_type(default_aws_config(), args)


"""
    using AWSSDK.AppSync.get_data_source
    get_data_source([::AWSConfig], arguments::Dict)
    get_data_source([::AWSConfig]; apiId=, name=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/datasources/{name}", arguments::Dict)
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/datasources/{name}", apiId=, name=)

# GetDataSource Operation

Retrieves a `DataSource` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `name = ::String` -- *Required*
The name of the data source.




# Returns

`GetDataSourceResponse`

# Exceptions

`BadRequestException`, `ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetDataSource)
"""
@inline get_data_source(aws::AWSConfig=default_aws_config(); args...) = get_data_source(aws, args)

@inline get_data_source(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "GET", "/v1/apis/{apiId}/datasources/{name}", args)

@inline get_data_source(args) = get_data_source(default_aws_config(), args)


"""
    using AWSSDK.AppSync.get_graphql_api
    get_graphql_api([::AWSConfig], arguments::Dict)
    get_graphql_api([::AWSConfig]; apiId=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}", arguments::Dict)
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}", apiId=)

# GetGraphqlApi Operation

Retrieves a `GraphqlApi` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID for the GraphQL API.




# Returns

`GetGraphqlApiResponse`

# Exceptions

`BadRequestException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetGraphqlApi)
"""
@inline get_graphql_api(aws::AWSConfig=default_aws_config(); args...) = get_graphql_api(aws, args)

@inline get_graphql_api(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "GET", "/v1/apis/{apiId}", args)

@inline get_graphql_api(args) = get_graphql_api(default_aws_config(), args)


"""
    using AWSSDK.AppSync.get_introspection_schema
    get_introspection_schema([::AWSConfig], arguments::Dict)
    get_introspection_schema([::AWSConfig]; apiId=, format=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/schema", arguments::Dict)
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/schema", apiId=, format=)

# GetIntrospectionSchema Operation

Retrieves the introspection schema for a GraphQL API.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `format = "SDL" or "JSON"` -- *Required*
The schema format: SDL or JSON.




# Returns

`GetIntrospectionSchemaResponse`

# Exceptions

`GraphQLSchemaException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetIntrospectionSchema)
"""
@inline get_introspection_schema(aws::AWSConfig=default_aws_config(); args...) = get_introspection_schema(aws, args)

@inline get_introspection_schema(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "GET", "/v1/apis/{apiId}/schema", args)

@inline get_introspection_schema(args) = get_introspection_schema(default_aws_config(), args)


"""
    using AWSSDK.AppSync.get_resolver
    get_resolver([::AWSConfig], arguments::Dict)
    get_resolver([::AWSConfig]; apiId=, typeName=, fieldName=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", arguments::Dict)
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", apiId=, typeName=, fieldName=)

# GetResolver Operation

Retrieves a `Resolver` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `typeName = ::String` -- *Required*
The resolver type name.


## `fieldName = ::String` -- *Required*
The resolver field name.




# Returns

`GetResolverResponse`

# Exceptions

`ConcurrentModificationException`, `NotFoundException` or `UnauthorizedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetResolver)
"""
@inline get_resolver(aws::AWSConfig=default_aws_config(); args...) = get_resolver(aws, args)

@inline get_resolver(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "GET", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", args)

@inline get_resolver(args) = get_resolver(default_aws_config(), args)


"""
    using AWSSDK.AppSync.get_schema_creation_status
    get_schema_creation_status([::AWSConfig], arguments::Dict)
    get_schema_creation_status([::AWSConfig]; apiId=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/schemacreation", arguments::Dict)
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/schemacreation", apiId=)

# GetSchemaCreationStatus Operation

Retrieves the current status of a schema creation operation.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.




# Returns

`GetSchemaCreationStatusResponse`

# Exceptions

`BadRequestException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetSchemaCreationStatus)
"""
@inline get_schema_creation_status(aws::AWSConfig=default_aws_config(); args...) = get_schema_creation_status(aws, args)

@inline get_schema_creation_status(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "GET", "/v1/apis/{apiId}/schemacreation", args)

@inline get_schema_creation_status(args) = get_schema_creation_status(default_aws_config(), args)


"""
    using AWSSDK.AppSync.get_type
    get_type([::AWSConfig], arguments::Dict)
    get_type([::AWSConfig]; apiId=, typeName=, format=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/types/{typeName}", arguments::Dict)
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/types/{typeName}", apiId=, typeName=, format=)

# GetType Operation

Retrieves a `Type` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `typeName = ::String` -- *Required*
The type name.


## `format = "SDL" or "JSON"` -- *Required*
The type format: SDL or JSON.




# Returns

`GetTypeResponse`

# Exceptions

`BadRequestException`, `ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetType)
"""
@inline get_type(aws::AWSConfig=default_aws_config(); args...) = get_type(aws, args)

@inline get_type(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "GET", "/v1/apis/{apiId}/types/{typeName}", args)

@inline get_type(args) = get_type(default_aws_config(), args)


"""
    using AWSSDK.AppSync.list_api_keys
    list_api_keys([::AWSConfig], arguments::Dict)
    list_api_keys([::AWSConfig]; apiId=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/apikeys", arguments::Dict)
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/apikeys", apiId=, <keyword arguments>)

# ListApiKeys Operation

Lists the API keys for a given API.

**Note**
> API keys are deleted automatically sometime after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call `DeleteApiKey` to manually delete a key before it's automatically deleted.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.


## `maxResults = ::Int`
The maximum number of results you want the request to return.




# Returns

`ListApiKeysResponse`

# Exceptions

`BadRequestException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListApiKeys)
"""
@inline list_api_keys(aws::AWSConfig=default_aws_config(); args...) = list_api_keys(aws, args)

@inline list_api_keys(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "GET", "/v1/apis/{apiId}/apikeys", args)

@inline list_api_keys(args) = list_api_keys(default_aws_config(), args)


"""
    using AWSSDK.AppSync.list_data_sources
    list_data_sources([::AWSConfig], arguments::Dict)
    list_data_sources([::AWSConfig]; apiId=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/datasources", arguments::Dict)
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/datasources", apiId=, <keyword arguments>)

# ListDataSources Operation

Lists the data sources for a given API.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.


## `maxResults = ::Int`
The maximum number of results you want the request to return.




# Returns

`ListDataSourcesResponse`

# Exceptions

`BadRequestException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListDataSources)
"""
@inline list_data_sources(aws::AWSConfig=default_aws_config(); args...) = list_data_sources(aws, args)

@inline list_data_sources(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "GET", "/v1/apis/{apiId}/datasources", args)

@inline list_data_sources(args) = list_data_sources(default_aws_config(), args)


"""
    using AWSSDK.AppSync.list_graphql_apis
    list_graphql_apis([::AWSConfig], arguments::Dict)
    list_graphql_apis([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "GET", "/v1/apis", arguments::Dict)
    appsync([::AWSConfig], "GET", "/v1/apis", <keyword arguments>)

# ListGraphqlApis Operation

Lists your GraphQL APIs.

# Arguments

## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.


## `maxResults = ::Int`
The maximum number of results you want the request to return.




# Returns

`ListGraphqlApisResponse`

# Exceptions

`BadRequestException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListGraphqlApis)
"""
@inline list_graphql_apis(aws::AWSConfig=default_aws_config(); args...) = list_graphql_apis(aws, args)

@inline list_graphql_apis(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "GET", "/v1/apis", args)

@inline list_graphql_apis(args) = list_graphql_apis(default_aws_config(), args)


"""
    using AWSSDK.AppSync.list_resolvers
    list_resolvers([::AWSConfig], arguments::Dict)
    list_resolvers([::AWSConfig]; apiId=, typeName=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/types/{typeName}/resolvers", arguments::Dict)
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/types/{typeName}/resolvers", apiId=, typeName=, <keyword arguments>)

# ListResolvers Operation

Lists the resolvers for a given API and type.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `typeName = ::String` -- *Required*
The type name.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.


## `maxResults = ::Int`
The maximum number of results you want the request to return.




# Returns

`ListResolversResponse`

# Exceptions

`BadRequestException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListResolvers)
"""
@inline list_resolvers(aws::AWSConfig=default_aws_config(); args...) = list_resolvers(aws, args)

@inline list_resolvers(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "GET", "/v1/apis/{apiId}/types/{typeName}/resolvers", args)

@inline list_resolvers(args) = list_resolvers(default_aws_config(), args)


"""
    using AWSSDK.AppSync.list_types
    list_types([::AWSConfig], arguments::Dict)
    list_types([::AWSConfig]; apiId=, format=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/types", arguments::Dict)
    appsync([::AWSConfig], "GET", "/v1/apis/{apiId}/types", apiId=, format=, <keyword arguments>)

# ListTypes Operation

Lists the types for a given API.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `format = "SDL" or "JSON"` -- *Required*
The type format: SDL or JSON.


## `nextToken = ::String`
An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.


## `maxResults = ::Int`
The maximum number of results you want the request to return.




# Returns

`ListTypesResponse`

# Exceptions

`BadRequestException`, `ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListTypes)
"""
@inline list_types(aws::AWSConfig=default_aws_config(); args...) = list_types(aws, args)

@inline list_types(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "GET", "/v1/apis/{apiId}/types", args)

@inline list_types(args) = list_types(default_aws_config(), args)


"""
    using AWSSDK.AppSync.start_schema_creation
    start_schema_creation([::AWSConfig], arguments::Dict)
    start_schema_creation([::AWSConfig]; apiId=, definition=)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/schemacreation", arguments::Dict)
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/schemacreation", apiId=, definition=)

# StartSchemaCreation Operation

Adds a new schema to your GraphQL API.

This operation is asynchronous. Use to determine when it has completed.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `definition = blob` -- *Required*
The schema definition, in GraphQL schema language format.




# Returns

`StartSchemaCreationResponse`

# Exceptions

`BadRequestException`, `ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/StartSchemaCreation)
"""
@inline start_schema_creation(aws::AWSConfig=default_aws_config(); args...) = start_schema_creation(aws, args)

@inline start_schema_creation(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "POST", "/v1/apis/{apiId}/schemacreation", args)

@inline start_schema_creation(args) = start_schema_creation(default_aws_config(), args)


"""
    using AWSSDK.AppSync.update_api_key
    update_api_key([::AWSConfig], arguments::Dict)
    update_api_key([::AWSConfig]; apiId=, id=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/apikeys/{id}", arguments::Dict)
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/apikeys/{id}", apiId=, id=, <keyword arguments>)

# UpdateApiKey Operation

Updates an API key.

# Arguments

## `apiId = ::String` -- *Required*
The ID for the GraphQL API


## `id = ::String` -- *Required*
The API key ID.


## `description = ::String`
A description of the purpose of the API key.


## `expires = ::Int`
The time from update time after which the API key expires. The date is represented as seconds since the epoch. For more information, see .




# Returns

`UpdateApiKeyResponse`

# Exceptions

`BadRequestException`, `NotFoundException`, `UnauthorizedException`, `LimitExceededException`, `InternalFailureException` or `ApiKeyValidityOutOfBoundsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateApiKey)
"""
@inline update_api_key(aws::AWSConfig=default_aws_config(); args...) = update_api_key(aws, args)

@inline update_api_key(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "POST", "/v1/apis/{apiId}/apikeys/{id}", args)

@inline update_api_key(args) = update_api_key(default_aws_config(), args)


"""
    using AWSSDK.AppSync.update_data_source
    update_data_source([::AWSConfig], arguments::Dict)
    update_data_source([::AWSConfig]; apiId=, name=, type=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/datasources/{name}", arguments::Dict)
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/datasources/{name}", apiId=, name=, type=, <keyword arguments>)

# UpdateDataSource Operation

Updates a `DataSource` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `name = ::String` -- *Required*
The new name for the data source.


## `description = ::String`
The new description for the data source.


## `type = "AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE" or "HTTP"` -- *Required*
The new data source type.


## `serviceRoleArn = ::String`
The new service role ARN for the data source.


## `dynamodbConfig = [ ... ]`
The new DynamoDB configuration.
```
 dynamodbConfig = [
        "tableName" => <required> ::String,
        "awsRegion" => <required> ::String,
        "useCallerCredentials" =>  ::Bool
    ]
```

## `lambdaConfig = ["lambdaFunctionArn" => <required> ::String]`
The new Lambda configuration.


## `elasticsearchConfig = [ ... ]`
The new Elasticsearch configuration.
```
 elasticsearchConfig = [
        "endpoint" => <required> ::String,
        "awsRegion" => <required> ::String
    ]
```

## `httpConfig = ["endpoint" =>  ::String]`
The new http endpoint configuration




# Returns

`UpdateDataSourceResponse`

# Exceptions

`BadRequestException`, `ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateDataSource)
"""
@inline update_data_source(aws::AWSConfig=default_aws_config(); args...) = update_data_source(aws, args)

@inline update_data_source(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "POST", "/v1/apis/{apiId}/datasources/{name}", args)

@inline update_data_source(args) = update_data_source(default_aws_config(), args)


"""
    using AWSSDK.AppSync.update_graphql_api
    update_graphql_api([::AWSConfig], arguments::Dict)
    update_graphql_api([::AWSConfig]; apiId=, name=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}", arguments::Dict)
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}", apiId=, name=, <keyword arguments>)

# UpdateGraphqlApi Operation

Updates a `GraphqlApi` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `name = ::String` -- *Required*
The new name for the `GraphqlApi` object.


## `logConfig = [ ... ]`
The Amazon CloudWatch logs configuration for the `GraphqlApi` object.
```
 logConfig = [
        "fieldLogLevel" => <required> "NONE", "ERROR" or "ALL",
        "cloudWatchLogsRoleArn" => <required> ::String
    ]
```

## `authenticationType = "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS" or "OPENID_CONNECT"`
The new authentication type for the `GraphqlApi` object.


## `userPoolConfig = [ ... ]`
The new Amazon Cognito User Pool configuration for the `GraphqlApi` object.
```
 userPoolConfig = [
        "userPoolId" => <required> ::String,
        "awsRegion" => <required> ::String,
        "defaultAction" => <required> "ALLOW" or "DENY",
        "appIdClientRegex" =>  ::String
    ]
```

## `openIDConnectConfig = [ ... ]`
The Open Id Connect configuration configuration for the `GraphqlApi` object.
```
 openIDConnectConfig = [
        "issuer" => <required> ::String,
        "clientId" =>  ::String,
        "iatTTL" =>  ::Int,
        "authTTL" =>  ::Int
    ]
```



# Returns

`UpdateGraphqlApiResponse`

# Exceptions

`BadRequestException`, `ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateGraphqlApi)
"""
@inline update_graphql_api(aws::AWSConfig=default_aws_config(); args...) = update_graphql_api(aws, args)

@inline update_graphql_api(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "POST", "/v1/apis/{apiId}", args)

@inline update_graphql_api(args) = update_graphql_api(default_aws_config(), args)


"""
    using AWSSDK.AppSync.update_resolver
    update_resolver([::AWSConfig], arguments::Dict)
    update_resolver([::AWSConfig]; apiId=, typeName=, fieldName=, dataSourceName=, requestMappingTemplate=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", arguments::Dict)
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", apiId=, typeName=, fieldName=, dataSourceName=, requestMappingTemplate=, <keyword arguments>)

# UpdateResolver Operation

Updates a `Resolver` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `typeName = ::String` -- *Required*
The new type name.


## `fieldName = ::String` -- *Required*
The new field name.


## `dataSourceName = ::String` -- *Required*
The new data source name.


## `requestMappingTemplate = ::String` -- *Required*
The new request mapping template.


## `responseMappingTemplate = ::String`
The new response mapping template.




# Returns

`UpdateResolverResponse`

# Exceptions

`ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateResolver)
"""
@inline update_resolver(aws::AWSConfig=default_aws_config(); args...) = update_resolver(aws, args)

@inline update_resolver(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "POST", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", args)

@inline update_resolver(args) = update_resolver(default_aws_config(), args)


"""
    using AWSSDK.AppSync.update_type
    update_type([::AWSConfig], arguments::Dict)
    update_type([::AWSConfig]; apiId=, typeName=, format=, <keyword arguments>)

    using AWSCore.Services.appsync
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/types/{typeName}", arguments::Dict)
    appsync([::AWSConfig], "POST", "/v1/apis/{apiId}/types/{typeName}", apiId=, typeName=, format=, <keyword arguments>)

# UpdateType Operation

Updates a `Type` object.

# Arguments

## `apiId = ::String` -- *Required*
The API ID.


## `typeName = ::String` -- *Required*
The new type name.


## `definition = ::String`
The new definition.


## `format = "SDL" or "JSON"` -- *Required*
The new type format: SDL or JSON.




# Returns

`UpdateTypeResponse`

# Exceptions

`BadRequestException`, `ConcurrentModificationException`, `NotFoundException`, `UnauthorizedException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateType)
"""
@inline update_type(aws::AWSConfig=default_aws_config(); args...) = update_type(aws, args)

@inline update_type(aws::AWSConfig, args) = AWSCore.Services.appsync(aws, "POST", "/v1/apis/{apiId}/types/{typeName}", args)

@inline update_type(args) = update_type(default_aws_config(), args)




end # module AppSync


#==============================================================================#
# End of file
#==============================================================================#
