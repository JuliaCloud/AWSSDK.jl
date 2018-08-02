#==============================================================================#
# APIGateway.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/apigateway-2015-07-09.normal.json
#==============================================================================#

__precompile__()

module APIGateway

using AWSCore


"""
    using AWSSDK.APIGateway.create_api_key
    create_api_key([::AWSConfig], arguments::Dict)
    create_api_key([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/apikeys", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/apikeys", <keyword arguments>)

# CreateApiKey Operation

Create an [ApiKey](@ref) resource.

<div class="seeAlso">[AWS CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/create-api-key.html)</div>

# Arguments

## `name = ::String`
The name of the [ApiKey](@ref).


## `description = ::String`
The description of the [ApiKey](@ref).


## `enabled = ::Bool`
Specifies whether the [ApiKey](@ref) can be used by callers.


## `generateDistinctId = ::Bool`
Specifies whether (`true`) or not (`false`) the key identifier is distinct from the created API key value.


## `value = ::String`
Specifies a value of the API key.


## `stageKeys = [[ ... ], ...]`
DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API key.
```
 stageKeys = [[
        "restApiId" =>  ::String,
        "stageName" =>  ::String
    ], ...]
```

## `customerId = ::String`
An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.




# Returns

`ApiKey`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException`, `LimitExceededException`, `BadRequestException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateApiKey)
"""
@inline create_api_key(aws::AWSConfig=default_aws_config(); args...) = create_api_key(aws, args)

@inline create_api_key(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/apikeys", args)

@inline create_api_key(args) = create_api_key(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_authorizer
    create_authorizer([::AWSConfig], arguments::Dict)
    create_authorizer([::AWSConfig]; restapi_id=, name=, type=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/authorizers", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/authorizers", restapi_id=, name=, type=, <keyword arguments>)

# CreateAuthorizer Operation

Adds a new [Authorizer](@ref) resource to an existing [RestApi](@ref) resource.

<div class="seeAlso">[AWS CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/create-authorizer.html)</div>

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `name = ::String` -- *Required*
[Required] The name of the authorizer.


## `type = "TOKEN", "REQUEST" or "COGNITO_USER_POOLS"` -- *Required*
[Required] The authorizer type. Valid values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, and `COGNITO_USER_POOLS` for using an Amazon Cognito user pool.


## `providerARNs = [::String, ...]`
A list of the Amazon Cognito user pool ARNs for the `COGNITO_USER_POOLS` authorizer. Each element is of this format: `arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}`. For a `TOKEN` or `REQUEST` authorizer, this is not defined.


## `authType = ::String`
Optional customer-defined field, used in Swagger imports and exports without functional impact.


## `authorizerUri = ::String`
Specifies the authorizer's Uniform Resource Identifier (URI). For `TOKEN` or `REQUEST` authorizers, this must be a well-formed Lambda function URI, for example, `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations`. In general, the URI has this form `arn:aws:apigateway:{region}:lambda:path/{service_api}`, where `{region}` is the same as the region hosting the Lambda function, `path` indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial `/`. For Lambda functions, this is usually of the form `/2015-03-31/functions/[FunctionARN]/invocations`.


## `authorizerCredentials = ::String`
Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.


## `identitySource = ::String`
The identity source for which authorization is requested.

*   For a `TOKEN` or `COGNITO_USER_POOLS` authorizer, this is required and specifies the request header mapping expression for the custom header holding the authorization token submitted by the client. For example, if the token header name is `Auth`, the header mapping expression is `method.request.header.Auth`.
*   For the `REQUEST` authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an `Auth` header, a `Name` query string parameter are defined as identity sources, this value is `method.request.header.Auth, method.request.querystring.Name`. These parameters will be used to derive the authorization caching key and to perform runtime validation of the `REQUEST` authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.


## `identityValidationExpression = ::String`
A validation expression for the incoming identity token. For `TOKEN` authorizers, this value is a regular expression. API Gateway will match the `aud` field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the `REQUEST` authorizer.


## `authorizerResultTtlInSeconds = ::Int`
The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.




# Returns

`Authorizer`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException`, `LimitExceededException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateAuthorizer)
"""
@inline create_authorizer(aws::AWSConfig=default_aws_config(); args...) = create_authorizer(aws, args)

@inline create_authorizer(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/restapis/{restapi_id}/authorizers", args)

@inline create_authorizer(args) = create_authorizer(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_base_path_mapping
    create_base_path_mapping([::AWSConfig], arguments::Dict)
    create_base_path_mapping([::AWSConfig]; domain_name=, restApiId=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/domainnames/{domain_name}/basepathmappings", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/domainnames/{domain_name}/basepathmappings", domain_name=, restApiId=, <keyword arguments>)

# CreateBasePathMapping Operation

Creates a new [BasePathMapping](@ref) resource.

# Arguments

## `domain_name = ::String` -- *Required*
[Required] The domain name of the [BasePathMapping](@ref) resource to create.


## `basePath = ::String`
The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Leave this blank if you do not want callers to specify a base path name after the domain name.


## `restApiId = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `stage = ::String`
The name of the API's stage that you want to use for this mapping. Leave this blank if you do not want callers to explicitly specify the stage name after any base path name.




# Returns

`BasePathMapping`

# Exceptions

`UnauthorizedException`, `ConflictException`, `BadRequestException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateBasePathMapping)
"""
@inline create_base_path_mapping(aws::AWSConfig=default_aws_config(); args...) = create_base_path_mapping(aws, args)

@inline create_base_path_mapping(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/domainnames/{domain_name}/basepathmappings", args)

@inline create_base_path_mapping(args) = create_base_path_mapping(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_deployment
    create_deployment([::AWSConfig], arguments::Dict)
    create_deployment([::AWSConfig]; restapi_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/deployments", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/deployments", restapi_id=, <keyword arguments>)

# CreateDeployment Operation

Creates a [Deployment](@ref) resource, which makes a specified [RestApi](@ref) callable over the internet.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `stageName = ::String`
The name of the [Stage](@ref) resource for the [Deployment](@ref) resource to create.


## `stageDescription = ::String`
The description of the [Stage](@ref) resource for the [Deployment](@ref) resource to create.


## `description = ::String`
The description for the [Deployment](@ref) resource to create.


## `cacheClusterEnabled = ::Bool`
Enables a cache cluster for the [Stage](@ref) resource specified in the input.


## `cacheClusterSize = "0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118" or "237"`
Specifies the cache cluster size for the [Stage](@ref) resource specified in the input, if a cache cluster is enabled.


## `variables = ::Dict{String,String}`
A map that defines the stage variables for the [Stage](@ref) resource that is associated with the new deployment. Variable names can have alphanumeric and underscore characters, and the values must match `[A-Za-z0-9-._~:/?#&=,]+`.


## `canarySettings = [ ... ]`
The input configuration for the canary deployment when the deployment is a canary release deployment.
```
 canarySettings = [
        "percentTraffic" =>  double,
        "stageVariableOverrides" =>  ::Dict{String,String},
        "useStageCache" =>  ::Bool
    ]
```



# Returns

`Deployment`

# Exceptions

`UnauthorizedException`, `BadRequestException`, `NotFoundException`, `ConflictException`, `LimitExceededException`, `TooManyRequestsException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateDeployment)
"""
@inline create_deployment(aws::AWSConfig=default_aws_config(); args...) = create_deployment(aws, args)

@inline create_deployment(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/restapis/{restapi_id}/deployments", args)

@inline create_deployment(args) = create_deployment(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_documentation_part
    create_documentation_part([::AWSConfig], arguments::Dict)
    create_documentation_part([::AWSConfig]; restapi_id=, location=, properties=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/documentation/parts", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/documentation/parts", restapi_id=, location=, properties=)

# CreateDocumentationPart Operation



# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `location = [ ... ]` -- *Required*
[Required] The location of the targeted API entity of the to-be-created documentation part.
```
 location = [
        "type" => <required> "API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER" or "RESPONSE_BODY",
        "path" =>  ::String,
        "method" =>  ::String,
        "statusCode" =>  ::String,
        "name" =>  ::String
    ]
```

## `properties = ::String` -- *Required*
[Required] The new documentation content map of the targeted API entity. Enclosed key-value pairs are API-specific, but only Swagger-compliant key-value pairs can be exported and, hence, published.




# Returns

`DocumentationPart`

# Exceptions

`BadRequestException`, `ConflictException`, `UnauthorizedException`, `NotFoundException`, `LimitExceededException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateDocumentationPart)
"""
@inline create_documentation_part(aws::AWSConfig=default_aws_config(); args...) = create_documentation_part(aws, args)

@inline create_documentation_part(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/restapis/{restapi_id}/documentation/parts", args)

@inline create_documentation_part(args) = create_documentation_part(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_documentation_version
    create_documentation_version([::AWSConfig], arguments::Dict)
    create_documentation_version([::AWSConfig]; restapi_id=, documentationVersion=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/documentation/versions", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/documentation/versions", restapi_id=, documentationVersion=, <keyword arguments>)

# CreateDocumentationVersion Operation



# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `documentationVersion = ::String` -- *Required*
[Required] The version identifier of the new snapshot.


## `stageName = ::String`
The stage name to be associated with the new documentation snapshot.


## `description = ::String`
A description about the new documentation snapshot.




# Returns

`DocumentationVersion`

# Exceptions

`BadRequestException`, `ConflictException`, `UnauthorizedException`, `NotFoundException`, `LimitExceededException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateDocumentationVersion)
"""
@inline create_documentation_version(aws::AWSConfig=default_aws_config(); args...) = create_documentation_version(aws, args)

@inline create_documentation_version(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/restapis/{restapi_id}/documentation/versions", args)

@inline create_documentation_version(args) = create_documentation_version(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_domain_name
    create_domain_name([::AWSConfig], arguments::Dict)
    create_domain_name([::AWSConfig]; domainName=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/domainnames", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/domainnames", domainName=, <keyword arguments>)

# CreateDomainName Operation

Creates a new domain name.

# Arguments

## `domainName = ::String` -- *Required*
[Required] The name of the [DomainName](@ref) resource.


## `certificateName = ::String`
The user-friendly name of the certificate that will be used by edge-optimized endpoint for this domain name.


## `certificateBody = ::String`
[Deprecated] The body of the server certificate that will be used by edge-optimized endpoint for this domain name provided by your certificate authority.


## `certificatePrivateKey = ::String`
[Deprecated] Your edge-optimized endpoint's domain name certificate's private key.


## `certificateChain = ::String`
[Deprecated] The intermediate certificates and optionally the root certificate, one after the other without any blank lines, used by an edge-optimized endpoint for this domain name. If you include the root certificate, your certificate chain must start with intermediate certificates and end with the root certificate. Use the intermediate certificates that were provided by your certificate authority. Do not include any intermediaries that are not in the chain of trust path.


## `certificateArn = ::String`
The reference to an AWS-managed certificate that will be used by edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.


## `regionalCertificateName = ::String`
The user-friendly name of the certificate that will be used by regional endpoint for this domain name.


## `regionalCertificateArn = ::String`
The reference to an AWS-managed certificate that will be used by regional endpoint for this domain name. AWS Certificate Manager is the only supported source.


## `endpointConfiguration = ["types" =>  ["REGIONAL", "EDGE" or "PRIVATE", ...]]`
The endpoint configuration of this [DomainName](@ref) showing the endpoint types of the domain name.




# Returns

`DomainName`

# Exceptions

`UnauthorizedException`, `BadRequestException`, `ConflictException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateDomainName)
"""
@inline create_domain_name(aws::AWSConfig=default_aws_config(); args...) = create_domain_name(aws, args)

@inline create_domain_name(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/domainnames", args)

@inline create_domain_name(args) = create_domain_name(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_model
    create_model([::AWSConfig], arguments::Dict)
    create_model([::AWSConfig]; restapi_id=, name=, contentType=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/models", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/models", restapi_id=, name=, contentType=, <keyword arguments>)

# CreateModel Operation

Adds a new [Model](@ref) resource to an existing [RestApi](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The [RestApi](@ref) identifier under which the [Model](@ref) will be created.


## `name = ::String` -- *Required*
[Required] The name of the model. Must be alphanumeric.


## `description = ::String`
The description of the model.


## `schema = ::String`
The schema for the model. For `application/json` models, this should be [JSON schema draft 4](https://tools.ietf.org/html/draft-zyp-json-schema-04) model.


## `contentType = ::String` -- *Required*
[Required] The content-type for the model.




# Returns

`Model`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException`, `ConflictException`, `LimitExceededException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateModel)
"""
@inline create_model(aws::AWSConfig=default_aws_config(); args...) = create_model(aws, args)

@inline create_model(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/restapis/{restapi_id}/models", args)

@inline create_model(args) = create_model(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_request_validator
    create_request_validator([::AWSConfig], arguments::Dict)
    create_request_validator([::AWSConfig]; restapi_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/requestvalidators", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/requestvalidators", restapi_id=, <keyword arguments>)

# CreateRequestValidator Operation

Creates a [ReqeustValidator](@ref) of a given [RestApi](@ref).

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `name = ::String`
The name of the to-be-created [RequestValidator](@ref).


## `validateRequestBody = ::Bool`
A Boolean flag to indicate whether to validate request body according to the configured model schema for the method (`true`) or not (`false`).


## `validateRequestParameters = ::Bool`
A Boolean flag to indicate whether to validate request parameters, `true`, or not `false`.




# Returns

`RequestValidator`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException`, `LimitExceededException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateRequestValidator)
"""
@inline create_request_validator(aws::AWSConfig=default_aws_config(); args...) = create_request_validator(aws, args)

@inline create_request_validator(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/restapis/{restapi_id}/requestvalidators", args)

@inline create_request_validator(args) = create_request_validator(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_resource
    create_resource([::AWSConfig], arguments::Dict)
    create_resource([::AWSConfig]; restapi_id=, parent_id=, pathPart=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/resources/{parent_id}", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/resources/{parent_id}", restapi_id=, parent_id=, pathPart=)

# CreateResource Operation

Creates a [Resource](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `parent_id = ::String` -- *Required*
[Required] The parent resource's identifier.


## `pathPart = ::String` -- *Required*
The last path segment for this resource.




# Returns

`Resource`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `ConflictException`, `LimitExceededException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateResource)
"""
@inline create_resource(aws::AWSConfig=default_aws_config(); args...) = create_resource(aws, args)

@inline create_resource(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/restapis/{restapi_id}/resources/{parent_id}", args)

@inline create_resource(args) = create_resource(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_rest_api
    create_rest_api([::AWSConfig], arguments::Dict)
    create_rest_api([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/restapis", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/restapis", name=, <keyword arguments>)

# CreateRestApi Operation

Creates a new [RestApi](@ref) resource.

# Arguments

## `name = ::String` -- *Required*
[Required] The name of the [RestApi](@ref).


## `description = ::String`
The description of the [RestApi](@ref).


## `version = ::String`
A version identifier for the API.


## `cloneFrom = ::String`
The ID of the [RestApi](@ref) that you want to clone from.


## `binaryMediaTypes = [::String, ...]`
The list of binary media types supported by the [RestApi](@ref). By default, the [RestApi](@ref) supports only UTF-8-encoded text payloads.


## `minimumCompressionSize = ::Int`
A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.


## `apiKeySource = "HEADER" or "AUTHORIZER"`
The source of the API key for metering requests according to a usage plan. Valid values are:

*   `HEADER` to read the API key from the `X-API-Key` header of a request.
*   `AUTHORIZER` to read the API key from the `UsageIdentifierKey` from a custom authorizer.


## `endpointConfiguration = ["types" =>  ["REGIONAL", "EDGE" or "PRIVATE", ...]]`
The endpoint configuration of this [RestApi](@ref) showing the endpoint types of the API.


## `policy = ::String`
A stringified JSON policy document that applies to this RestApi regardless of the caller and [Method](@ref) configuration.




# Returns

`RestApi`

# Exceptions

`UnauthorizedException`, `LimitExceededException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateRestApi)
"""
@inline create_rest_api(aws::AWSConfig=default_aws_config(); args...) = create_rest_api(aws, args)

@inline create_rest_api(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/restapis", args)

@inline create_rest_api(args) = create_rest_api(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_stage
    create_stage([::AWSConfig], arguments::Dict)
    create_stage([::AWSConfig]; restapi_id=, stageName=, deploymentId=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/stages", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/stages", restapi_id=, stageName=, deploymentId=, <keyword arguments>)

# CreateStage Operation

Creates a new [Stage](@ref) resource that references a pre-existing [Deployment](@ref) for the API.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `stageName = ::String` -- *Required*
[Required] The name for the [Stage](@ref) resource.


## `deploymentId = ::String` -- *Required*
[Required] The identifier of the [Deployment](@ref) resource for the [Stage](@ref) resource.


## `description = ::String`
The description of the [Stage](@ref) resource.


## `cacheClusterEnabled = ::Bool`
Whether cache clustering is enabled for the stage.


## `cacheClusterSize = "0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118" or "237"`
The stage's cache cluster size.


## `variables = ::Dict{String,String}`
A map that defines the stage variables for the new [Stage](@ref) resource. Variable names can have alphanumeric and underscore characters, and the values must match `[A-Za-z0-9-._~:/?#&=,]+`.


## `documentationVersion = ::String`
The version of the associated API documentation.


## `canarySettings = [ ... ]`
The canary deployment settings of this stage.
```
 canarySettings = [
        "percentTraffic" =>  double,
        "deploymentId" =>  ::String,
        "stageVariableOverrides" =>  ::Dict{String,String},
        "useStageCache" =>  ::Bool
    ]
```

## `tags = ::Dict{String,String}`
The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.




# Returns

`Stage`

# Exceptions

`UnauthorizedException`, `BadRequestException`, `NotFoundException`, `ConflictException`, `LimitExceededException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateStage)
"""
@inline create_stage(aws::AWSConfig=default_aws_config(); args...) = create_stage(aws, args)

@inline create_stage(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/restapis/{restapi_id}/stages", args)

@inline create_stage(args) = create_stage(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_usage_plan
    create_usage_plan([::AWSConfig], arguments::Dict)
    create_usage_plan([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/usageplans", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/usageplans", name=, <keyword arguments>)

# CreateUsagePlan Operation

Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload.

# Arguments

## `name = ::String` -- *Required*
[Required] The name of the usage plan.


## `description = ::String`
The description of the usage plan.


## `apiStages = [[ ... ], ...]`
The associated API stages of the usage plan.
```
 apiStages = [[
        "apiId" =>  ::String,
        "stage" =>  ::String,
        "throttle" =>  ::Dict{String,String}
    ], ...]
```

## `throttle = [ ... ]`
The throttling limits of the usage plan.
```
 throttle = [
        "burstLimit" =>  ::Int,
        "rateLimit" =>  double
    ]
```

## `quota = [ ... ]`
The quota of the usage plan.
```
 quota = [
        "limit" =>  ::Int,
        "offset" =>  ::Int,
        "period" =>  "DAY", "WEEK" or "MONTH"
    ]
```



# Returns

`UsagePlan`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `TooManyRequestsException`, `LimitExceededException`, `ConflictException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateUsagePlan)
"""
@inline create_usage_plan(aws::AWSConfig=default_aws_config(); args...) = create_usage_plan(aws, args)

@inline create_usage_plan(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/usageplans", args)

@inline create_usage_plan(args) = create_usage_plan(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_usage_plan_key
    create_usage_plan_key([::AWSConfig], arguments::Dict)
    create_usage_plan_key([::AWSConfig]; usageplanId=, keyId=, keyType=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/usageplans/{usageplanId}/keys", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/usageplans/{usageplanId}/keys", usageplanId=, keyId=, keyType=)

# CreateUsagePlanKey Operation

Creates a usage plan key for adding an existing API key to a usage plan.

# Arguments

## `usageplanId = ::String` -- *Required*
[Required] The Id of the [UsagePlan](@ref) resource representing the usage plan containing the to-be-created [UsagePlanKey](@ref) resource representing a plan customer.


## `keyId = ::String` -- *Required*
[Required] The identifier of a [UsagePlanKey](@ref) resource for a plan customer.


## `keyType = ::String` -- *Required*
[Required] The type of a [UsagePlanKey](@ref) resource for a plan customer.




# Returns

`UsagePlanKey`

# Exceptions

`BadRequestException`, `ConflictException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateUsagePlanKey)
"""
@inline create_usage_plan_key(aws::AWSConfig=default_aws_config(); args...) = create_usage_plan_key(aws, args)

@inline create_usage_plan_key(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/usageplans/{usageplanId}/keys", args)

@inline create_usage_plan_key(args) = create_usage_plan_key(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.create_vpc_link
    create_vpc_link([::AWSConfig], arguments::Dict)
    create_vpc_link([::AWSConfig]; name=, targetArns=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/vpclinks", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/vpclinks", name=, targetArns=, <keyword arguments>)

# CreateVpcLink Operation

Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.

# Arguments

## `name = ::String` -- *Required*
[Required] The name used to label and identify the VPC link.


## `description = ::String`
The description of the VPC link.


## `targetArns = [::String, ...]` -- *Required*
[Required] The ARNs of network load balancers of the VPC targeted by the VPC link. The network load balancers must be owned by the same AWS account of the API owner.




# Returns

`VpcLink`

# Exceptions

`UnauthorizedException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/CreateVpcLink)
"""
@inline create_vpc_link(aws::AWSConfig=default_aws_config(); args...) = create_vpc_link(aws, args)

@inline create_vpc_link(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/vpclinks", args)

@inline create_vpc_link(args) = create_vpc_link(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_api_key
    delete_api_key([::AWSConfig], arguments::Dict)
    delete_api_key([::AWSConfig]; api_Key=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/apikeys/{api_Key}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/apikeys/{api_Key}", api_Key=)

# DeleteApiKey Operation

Deletes the [ApiKey](@ref) resource.

# Arguments

## `api_Key = ::String` -- *Required*
[Required] The identifier of the [ApiKey](@ref) resource to be deleted.




# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteApiKey)
"""
@inline delete_api_key(aws::AWSConfig=default_aws_config(); args...) = delete_api_key(aws, args)

@inline delete_api_key(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/apikeys/{api_Key}", args)

@inline delete_api_key(args) = delete_api_key(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_authorizer
    delete_authorizer([::AWSConfig], arguments::Dict)
    delete_authorizer([::AWSConfig]; restapi_id=, authorizer_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/authorizers/{authorizer_id}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/authorizers/{authorizer_id}", restapi_id=, authorizer_id=)

# DeleteAuthorizer Operation

Deletes an existing [Authorizer](@ref) resource.

<div class="seeAlso">[AWS CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/delete-authorizer.html)</div>

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `authorizer_id = ::String` -- *Required*
[Required] The identifier of the [Authorizer](@ref) resource.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException`, `BadRequestException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteAuthorizer)
"""
@inline delete_authorizer(aws::AWSConfig=default_aws_config(); args...) = delete_authorizer(aws, args)

@inline delete_authorizer(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/authorizers/{authorizer_id}", args)

@inline delete_authorizer(args) = delete_authorizer(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_base_path_mapping
    delete_base_path_mapping([::AWSConfig], arguments::Dict)
    delete_base_path_mapping([::AWSConfig]; domain_name=, base_path=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/domainnames/{domain_name}/basepathmappings/{base_path}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/domainnames/{domain_name}/basepathmappings/{base_path}", domain_name=, base_path=)

# DeleteBasePathMapping Operation

Deletes the [BasePathMapping](@ref) resource.

# Arguments

## `domain_name = ::String` -- *Required*
[Required] The domain name of the [BasePathMapping](@ref) resource to delete.


## `base_path = ::String` -- *Required*
[Required] The base path name of the [BasePathMapping](@ref) resource to delete.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `ConflictException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteBasePathMapping)
"""
@inline delete_base_path_mapping(aws::AWSConfig=default_aws_config(); args...) = delete_base_path_mapping(aws, args)

@inline delete_base_path_mapping(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/domainnames/{domain_name}/basepathmappings/{base_path}", args)

@inline delete_base_path_mapping(args) = delete_base_path_mapping(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_client_certificate
    delete_client_certificate([::AWSConfig], arguments::Dict)
    delete_client_certificate([::AWSConfig]; clientcertificate_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/clientcertificates/{clientcertificate_id}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/clientcertificates/{clientcertificate_id}", clientcertificate_id=)

# DeleteClientCertificate Operation

Deletes the [ClientCertificate](@ref) resource.

# Arguments

## `clientcertificate_id = ::String` -- *Required*
[Required] The identifier of the [ClientCertificate](@ref) resource to be deleted.




# Exceptions

`UnauthorizedException`, `TooManyRequestsException`, `BadRequestException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteClientCertificate)
"""
@inline delete_client_certificate(aws::AWSConfig=default_aws_config(); args...) = delete_client_certificate(aws, args)

@inline delete_client_certificate(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/clientcertificates/{clientcertificate_id}", args)

@inline delete_client_certificate(args) = delete_client_certificate(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_deployment
    delete_deployment([::AWSConfig], arguments::Dict)
    delete_deployment([::AWSConfig]; restapi_id=, deployment_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/deployments/{deployment_id}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/deployments/{deployment_id}", restapi_id=, deployment_id=)

# DeleteDeployment Operation

Deletes a [Deployment](@ref) resource. Deleting a deployment will only succeed if there are no [Stage](@ref) resources associated with it.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `deployment_id = ::String` -- *Required*
[Required] The identifier of the [Deployment](@ref) resource to delete.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteDeployment)
"""
@inline delete_deployment(aws::AWSConfig=default_aws_config(); args...) = delete_deployment(aws, args)

@inline delete_deployment(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/deployments/{deployment_id}", args)

@inline delete_deployment(args) = delete_deployment(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_documentation_part
    delete_documentation_part([::AWSConfig], arguments::Dict)
    delete_documentation_part([::AWSConfig]; restapi_id=, part_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/documentation/parts/{part_id}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/documentation/parts/{part_id}", restapi_id=, part_id=)

# DeleteDocumentationPart Operation



# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `part_id = ::String` -- *Required*
[Required] The identifier of the to-be-deleted documentation part.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException`, `ConflictException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteDocumentationPart)
"""
@inline delete_documentation_part(aws::AWSConfig=default_aws_config(); args...) = delete_documentation_part(aws, args)

@inline delete_documentation_part(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/documentation/parts/{part_id}", args)

@inline delete_documentation_part(args) = delete_documentation_part(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_documentation_version
    delete_documentation_version([::AWSConfig], arguments::Dict)
    delete_documentation_version([::AWSConfig]; restapi_id=, doc_version=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/documentation/versions/{doc_version}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/documentation/versions/{doc_version}", restapi_id=, doc_version=)

# DeleteDocumentationVersion Operation



# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `doc_version = ::String` -- *Required*
[Required] The version identifier of a to-be-deleted documentation snapshot.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException`, `ConflictException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteDocumentationVersion)
"""
@inline delete_documentation_version(aws::AWSConfig=default_aws_config(); args...) = delete_documentation_version(aws, args)

@inline delete_documentation_version(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/documentation/versions/{doc_version}", args)

@inline delete_documentation_version(args) = delete_documentation_version(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_domain_name
    delete_domain_name([::AWSConfig], arguments::Dict)
    delete_domain_name([::AWSConfig]; domain_name=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/domainnames/{domain_name}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/domainnames/{domain_name}", domain_name=)

# DeleteDomainName Operation

Deletes the [DomainName](@ref) resource.

# Arguments

## `domain_name = ::String` -- *Required*
[Required] The name of the [DomainName](@ref) resource to be deleted.




# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteDomainName)
"""
@inline delete_domain_name(aws::AWSConfig=default_aws_config(); args...) = delete_domain_name(aws, args)

@inline delete_domain_name(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/domainnames/{domain_name}", args)

@inline delete_domain_name(args) = delete_domain_name(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_gateway_response
    delete_gateway_response([::AWSConfig], arguments::Dict)
    delete_gateway_response([::AWSConfig]; restapi_id=, response_type=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/gatewayresponses/{response_type}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/gatewayresponses/{response_type}", restapi_id=, response_type=)

# DeleteGatewayResponse Operation

Clears any customization of a [GatewayResponse](@ref) of a specified response type on the given [RestApi](@ref) and resets it with the default settings.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `response_type = "DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED" or "QUOTA_EXCEEDED"` -- *Required*
[Required]

The response type of the associated [GatewayResponse](@ref). Valid values are

*   ACCESS_DENIED
*   API_CONFIGURATION_ERROR
*   AUTHORIZER_FAILURE
*   AUTHORIZER_CONFIGURATION_ERROR
*   BAD_REQUEST_PARAMETERS
*   BAD_REQUEST_BODY
*   DEFAULT_4XX
*   DEFAULT_5XX
*   EXPIRED_TOKEN
*   INVALID_SIGNATURE
*   INTEGRATION_FAILURE
*   INTEGRATION_TIMEOUT
*   INVALID_API_KEY
*   MISSING_AUTHENTICATION_TOKEN
*   QUOTA_EXCEEDED
*   REQUEST_TOO_LARGE
*   RESOURCE_NOT_FOUND
*   THROTTLED
*   UNAUTHORIZED
*   UNSUPPORTED_MEDIA_TYPE




# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException`, `BadRequestException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteGatewayResponse)
"""
@inline delete_gateway_response(aws::AWSConfig=default_aws_config(); args...) = delete_gateway_response(aws, args)

@inline delete_gateway_response(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/gatewayresponses/{response_type}", args)

@inline delete_gateway_response(args) = delete_gateway_response(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_integration
    delete_integration([::AWSConfig], arguments::Dict)
    delete_integration([::AWSConfig]; restapi_id=, resource_id=, http_method=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", restapi_id=, resource_id=, http_method=)

# DeleteIntegration Operation

Represents a delete integration.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] Specifies a delete integration request's resource identifier.


## `http_method = ::String` -- *Required*
[Required] Specifies a delete integration request's HTTP method.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteIntegration)
"""
@inline delete_integration(aws::AWSConfig=default_aws_config(); args...) = delete_integration(aws, args)

@inline delete_integration(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", args)

@inline delete_integration(args) = delete_integration(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_integration_response
    delete_integration_response([::AWSConfig], arguments::Dict)
    delete_integration_response([::AWSConfig]; restapi_id=, resource_id=, http_method=, status_code=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", restapi_id=, resource_id=, http_method=, status_code=)

# DeleteIntegrationResponse Operation

Represents a delete integration response.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] Specifies a delete integration response request's resource identifier.


## `http_method = ::String` -- *Required*
[Required] Specifies a delete integration response request's HTTP method.


## `status_code = ::String` -- *Required*
[Required] Specifies a delete integration response request's status code.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException`, `BadRequestException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteIntegrationResponse)
"""
@inline delete_integration_response(aws::AWSConfig=default_aws_config(); args...) = delete_integration_response(aws, args)

@inline delete_integration_response(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", args)

@inline delete_integration_response(args) = delete_integration_response(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_method
    delete_method([::AWSConfig], arguments::Dict)
    delete_method([::AWSConfig]; restapi_id=, resource_id=, http_method=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", restapi_id=, resource_id=, http_method=)

# DeleteMethod Operation

Deletes an existing [Method](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] The [Resource](@ref) identifier for the [Method](@ref) resource.


## `http_method = ::String` -- *Required*
[Required] The HTTP verb of the [Method](@ref) resource.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteMethod)
"""
@inline delete_method(aws::AWSConfig=default_aws_config(); args...) = delete_method(aws, args)

@inline delete_method(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", args)

@inline delete_method(args) = delete_method(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_method_response
    delete_method_response([::AWSConfig], arguments::Dict)
    delete_method_response([::AWSConfig]; restapi_id=, resource_id=, http_method=, status_code=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", restapi_id=, resource_id=, http_method=, status_code=)

# DeleteMethodResponse Operation

Deletes an existing [MethodResponse](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] The [Resource](@ref) identifier for the [MethodResponse](@ref) resource.


## `http_method = ::String` -- *Required*
[Required] The HTTP verb of the [Method](@ref) resource.


## `status_code = ::String` -- *Required*
[Required] The status code identifier for the [MethodResponse](@ref) resource.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException`, `BadRequestException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteMethodResponse)
"""
@inline delete_method_response(aws::AWSConfig=default_aws_config(); args...) = delete_method_response(aws, args)

@inline delete_method_response(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", args)

@inline delete_method_response(args) = delete_method_response(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_model
    delete_model([::AWSConfig], arguments::Dict)
    delete_model([::AWSConfig]; restapi_id=, model_name=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/models/{model_name}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/models/{model_name}", restapi_id=, model_name=)

# DeleteModel Operation

Deletes a model.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `model_name = ::String` -- *Required*
[Required] The name of the model to delete.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException`, `BadRequestException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteModel)
"""
@inline delete_model(aws::AWSConfig=default_aws_config(); args...) = delete_model(aws, args)

@inline delete_model(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/models/{model_name}", args)

@inline delete_model(args) = delete_model(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_request_validator
    delete_request_validator([::AWSConfig], arguments::Dict)
    delete_request_validator([::AWSConfig]; restapi_id=, requestvalidator_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", restapi_id=, requestvalidator_id=)

# DeleteRequestValidator Operation

Deletes a [RequestValidator](@ref) of a given [RestApi](@ref).

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `requestvalidator_id = ::String` -- *Required*
[Required] The identifier of the [RequestValidator](@ref) to be deleted.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException`, `BadRequestException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteRequestValidator)
"""
@inline delete_request_validator(aws::AWSConfig=default_aws_config(); args...) = delete_request_validator(aws, args)

@inline delete_request_validator(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", args)

@inline delete_request_validator(args) = delete_request_validator(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_resource
    delete_resource([::AWSConfig], arguments::Dict)
    delete_resource([::AWSConfig]; restapi_id=, resource_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/resources/{resource_id}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/resources/{resource_id}", restapi_id=, resource_id=)

# DeleteResource Operation

Deletes a [Resource](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] The identifier of the [Resource](@ref) resource.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException`, `ConflictException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteResource)
"""
@inline delete_resource(aws::AWSConfig=default_aws_config(); args...) = delete_resource(aws, args)

@inline delete_resource(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/resources/{resource_id}", args)

@inline delete_resource(args) = delete_resource(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_rest_api
    delete_rest_api([::AWSConfig], arguments::Dict)
    delete_rest_api([::AWSConfig]; restapi_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}", restapi_id=)

# DeleteRestApi Operation

Deletes the specified API.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).




# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteRestApi)
"""
@inline delete_rest_api(aws::AWSConfig=default_aws_config(); args...) = delete_rest_api(aws, args)

@inline delete_rest_api(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}", args)

@inline delete_rest_api(args) = delete_rest_api(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_stage
    delete_stage([::AWSConfig], arguments::Dict)
    delete_stage([::AWSConfig]; restapi_id=, stage_name=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/stages/{stage_name}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/stages/{stage_name}", restapi_id=, stage_name=)

# DeleteStage Operation

Deletes a [Stage](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `stage_name = ::String` -- *Required*
[Required] The name of the [Stage](@ref) resource to delete.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteStage)
"""
@inline delete_stage(aws::AWSConfig=default_aws_config(); args...) = delete_stage(aws, args)

@inline delete_stage(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/stages/{stage_name}", args)

@inline delete_stage(args) = delete_stage(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_usage_plan
    delete_usage_plan([::AWSConfig], arguments::Dict)
    delete_usage_plan([::AWSConfig]; usageplanId=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/usageplans/{usageplanId}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/usageplans/{usageplanId}", usageplanId=)

# DeleteUsagePlan Operation

Deletes a usage plan of a given plan Id.

# Arguments

## `usageplanId = ::String` -- *Required*
[Required] The Id of the to-be-deleted usage plan.




# Exceptions

`UnauthorizedException`, `TooManyRequestsException`, `BadRequestException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteUsagePlan)
"""
@inline delete_usage_plan(aws::AWSConfig=default_aws_config(); args...) = delete_usage_plan(aws, args)

@inline delete_usage_plan(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/usageplans/{usageplanId}", args)

@inline delete_usage_plan(args) = delete_usage_plan(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_usage_plan_key
    delete_usage_plan_key([::AWSConfig], arguments::Dict)
    delete_usage_plan_key([::AWSConfig]; usageplanId=, keyId=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/usageplans/{usageplanId}/keys/{keyId}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/usageplans/{usageplanId}/keys/{keyId}", usageplanId=, keyId=)

# DeleteUsagePlanKey Operation

Deletes a usage plan key and remove the underlying API key from the associated usage plan.

# Arguments

## `usageplanId = ::String` -- *Required*
[Required] The Id of the [UsagePlan](@ref) resource representing the usage plan containing the to-be-deleted [UsagePlanKey](@ref) resource representing a plan customer.


## `keyId = ::String` -- *Required*
[Required] The Id of the [UsagePlanKey](@ref) resource to be deleted.




# Exceptions

`BadRequestException`, `ConflictException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteUsagePlanKey)
"""
@inline delete_usage_plan_key(aws::AWSConfig=default_aws_config(); args...) = delete_usage_plan_key(aws, args)

@inline delete_usage_plan_key(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/usageplans/{usageplanId}/keys/{keyId}", args)

@inline delete_usage_plan_key(args) = delete_usage_plan_key(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.delete_vpc_link
    delete_vpc_link([::AWSConfig], arguments::Dict)
    delete_vpc_link([::AWSConfig]; vpclink_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/vpclinks/{vpclink_id}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/vpclinks/{vpclink_id}", vpclink_id=)

# DeleteVpcLink Operation

Deletes an existing [VpcLink](@ref) of a specified identifier.

# Arguments

## `vpclink_id = ::String` -- *Required*
[Required] The identifier of the [VpcLink](@ref). It is used in an [Integration](@ref) to reference this [VpcLink](@ref).




# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/DeleteVpcLink)
"""
@inline delete_vpc_link(aws::AWSConfig=default_aws_config(); args...) = delete_vpc_link(aws, args)

@inline delete_vpc_link(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/vpclinks/{vpclink_id}", args)

@inline delete_vpc_link(args) = delete_vpc_link(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.flush_stage_authorizers_cache
    flush_stage_authorizers_cache([::AWSConfig], arguments::Dict)
    flush_stage_authorizers_cache([::AWSConfig]; restapi_id=, stage_name=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/stages/{stage_name}/cache/authorizers", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/stages/{stage_name}/cache/authorizers", restapi_id=, stage_name=)

# FlushStageAuthorizersCache Operation

Flushes all authorizer cache entries on a stage.

# Arguments

## `restapi_id = ::String` -- *Required*
The string identifier of the associated [RestApi](@ref).


## `stage_name = ::String` -- *Required*
The name of the stage to flush.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/FlushStageAuthorizersCache)
"""
@inline flush_stage_authorizers_cache(aws::AWSConfig=default_aws_config(); args...) = flush_stage_authorizers_cache(aws, args)

@inline flush_stage_authorizers_cache(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/stages/{stage_name}/cache/authorizers", args)

@inline flush_stage_authorizers_cache(args) = flush_stage_authorizers_cache(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.flush_stage_cache
    flush_stage_cache([::AWSConfig], arguments::Dict)
    flush_stage_cache([::AWSConfig]; restapi_id=, stage_name=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/stages/{stage_name}/cache/data", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/restapis/{restapi_id}/stages/{stage_name}/cache/data", restapi_id=, stage_name=)

# FlushStageCache Operation

Flushes a stage's cache.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `stage_name = ::String` -- *Required*
[Required] The name of the stage to flush its cache.




# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/FlushStageCache)
"""
@inline flush_stage_cache(aws::AWSConfig=default_aws_config(); args...) = flush_stage_cache(aws, args)

@inline flush_stage_cache(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/restapis/{restapi_id}/stages/{stage_name}/cache/data", args)

@inline flush_stage_cache(args) = flush_stage_cache(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.generate_client_certificate
    generate_client_certificate([::AWSConfig], arguments::Dict)
    generate_client_certificate([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/clientcertificates", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/clientcertificates", <keyword arguments>)

# GenerateClientCertificate Operation

Generates a [ClientCertificate](@ref) resource.

# Arguments

## `description = ::String`
The description of the [ClientCertificate](@ref).




# Returns

`ClientCertificate`

# Exceptions

`UnauthorizedException`, `TooManyRequestsException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GenerateClientCertificate)
"""
@inline generate_client_certificate(aws::AWSConfig=default_aws_config(); args...) = generate_client_certificate(aws, args)

@inline generate_client_certificate(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/clientcertificates", args)

@inline generate_client_certificate(args) = generate_client_certificate(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_account
    get_account([::AWSConfig], arguments::Dict)
    get_account([::AWSConfig]; )

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/account", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/account", )

# GetAccount Operation

Gets information about the current [Account](@ref) resource.

# Arguments



# Returns

`Account`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetAccount)
"""
@inline get_account(aws::AWSConfig=default_aws_config(); args...) = get_account(aws, args)

@inline get_account(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/account", args)

@inline get_account(args) = get_account(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_api_key
    get_api_key([::AWSConfig], arguments::Dict)
    get_api_key([::AWSConfig]; api_Key=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/apikeys/{api_Key}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/apikeys/{api_Key}", api_Key=, <keyword arguments>)

# GetApiKey Operation

Gets information about the current [ApiKey](@ref) resource.

# Arguments

## `api_Key = ::String` -- *Required*
[Required] The identifier of the [ApiKey](@ref) resource.


## `includeValue = ::Bool`
A boolean flag to specify whether (`true`) or not (`false`) the result contains the key value.




# Returns

`ApiKey`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetApiKey)
"""
@inline get_api_key(aws::AWSConfig=default_aws_config(); args...) = get_api_key(aws, args)

@inline get_api_key(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/apikeys/{api_Key}", args)

@inline get_api_key(args) = get_api_key(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_api_keys
    get_api_keys([::AWSConfig], arguments::Dict)
    get_api_keys([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/apikeys", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/apikeys", <keyword arguments>)

# GetApiKeys Operation

Gets information about the current [ApiKeys](@ref) resource.

# Arguments

## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.


## `name = ::String`
The name of queried API keys.


## `customerId = ::String`
The identifier of a customer in AWS Marketplace or an external system, such as a developer portal.


## `includeValues = ::Bool`
A boolean flag to specify whether (`true`) or not (`false`) the result contains key values.




# Returns

`ApiKeys`

# Exceptions

`BadRequestException`, `UnauthorizedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetApiKeys)
"""
@inline get_api_keys(aws::AWSConfig=default_aws_config(); args...) = get_api_keys(aws, args)

@inline get_api_keys(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/apikeys", args)

@inline get_api_keys(args) = get_api_keys(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_authorizer
    get_authorizer([::AWSConfig], arguments::Dict)
    get_authorizer([::AWSConfig]; restapi_id=, authorizer_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/authorizers/{authorizer_id}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/authorizers/{authorizer_id}", restapi_id=, authorizer_id=)

# GetAuthorizer Operation

Describe an existing [Authorizer](@ref) resource.

<div class="seeAlso">[AWS CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizer.html)</div>

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `authorizer_id = ::String` -- *Required*
[Required] The identifier of the [Authorizer](@ref) resource.




# Returns

`Authorizer`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetAuthorizer)
"""
@inline get_authorizer(aws::AWSConfig=default_aws_config(); args...) = get_authorizer(aws, args)

@inline get_authorizer(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/authorizers/{authorizer_id}", args)

@inline get_authorizer(args) = get_authorizer(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_authorizers
    get_authorizers([::AWSConfig], arguments::Dict)
    get_authorizers([::AWSConfig]; restapi_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/authorizers", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/authorizers", restapi_id=, <keyword arguments>)

# GetAuthorizers Operation

Describe an existing [Authorizers](@ref) resource.

<div class="seeAlso">[AWS CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizers.html)</div>

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`Authorizers`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetAuthorizers)
"""
@inline get_authorizers(aws::AWSConfig=default_aws_config(); args...) = get_authorizers(aws, args)

@inline get_authorizers(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/authorizers", args)

@inline get_authorizers(args) = get_authorizers(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_base_path_mapping
    get_base_path_mapping([::AWSConfig], arguments::Dict)
    get_base_path_mapping([::AWSConfig]; domain_name=, base_path=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/domainnames/{domain_name}/basepathmappings/{base_path}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/domainnames/{domain_name}/basepathmappings/{base_path}", domain_name=, base_path=)

# GetBasePathMapping Operation

Describe a [BasePathMapping](@ref) resource.

# Arguments

## `domain_name = ::String` -- *Required*
[Required] The domain name of the [BasePathMapping](@ref) resource to be described.


## `base_path = ::String` -- *Required*
[Required] The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Leave this blank if you do not want callers to specify any base path name after the domain name.




# Returns

`BasePathMapping`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetBasePathMapping)
"""
@inline get_base_path_mapping(aws::AWSConfig=default_aws_config(); args...) = get_base_path_mapping(aws, args)

@inline get_base_path_mapping(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/domainnames/{domain_name}/basepathmappings/{base_path}", args)

@inline get_base_path_mapping(args) = get_base_path_mapping(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_base_path_mappings
    get_base_path_mappings([::AWSConfig], arguments::Dict)
    get_base_path_mappings([::AWSConfig]; domain_name=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/domainnames/{domain_name}/basepathmappings", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/domainnames/{domain_name}/basepathmappings", domain_name=, <keyword arguments>)

# GetBasePathMappings Operation

Represents a collection of [BasePathMapping](@ref) resources.

# Arguments

## `domain_name = ::String` -- *Required*
[Required] The domain name of a [BasePathMapping](@ref) resource.


## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`BasePathMappings`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetBasePathMappings)
"""
@inline get_base_path_mappings(aws::AWSConfig=default_aws_config(); args...) = get_base_path_mappings(aws, args)

@inline get_base_path_mappings(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/domainnames/{domain_name}/basepathmappings", args)

@inline get_base_path_mappings(args) = get_base_path_mappings(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_client_certificate
    get_client_certificate([::AWSConfig], arguments::Dict)
    get_client_certificate([::AWSConfig]; clientcertificate_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/clientcertificates/{clientcertificate_id}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/clientcertificates/{clientcertificate_id}", clientcertificate_id=)

# GetClientCertificate Operation

Gets information about the current [ClientCertificate](@ref) resource.

# Arguments

## `clientcertificate_id = ::String` -- *Required*
[Required] The identifier of the [ClientCertificate](@ref) resource to be described.




# Returns

`ClientCertificate`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetClientCertificate)
"""
@inline get_client_certificate(aws::AWSConfig=default_aws_config(); args...) = get_client_certificate(aws, args)

@inline get_client_certificate(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/clientcertificates/{clientcertificate_id}", args)

@inline get_client_certificate(args) = get_client_certificate(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_client_certificates
    get_client_certificates([::AWSConfig], arguments::Dict)
    get_client_certificates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/clientcertificates", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/clientcertificates", <keyword arguments>)

# GetClientCertificates Operation

Gets a collection of [ClientCertificate](@ref) resources.

# Arguments

## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`ClientCertificates`

# Exceptions

`BadRequestException`, `UnauthorizedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetClientCertificates)
"""
@inline get_client_certificates(aws::AWSConfig=default_aws_config(); args...) = get_client_certificates(aws, args)

@inline get_client_certificates(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/clientcertificates", args)

@inline get_client_certificates(args) = get_client_certificates(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_deployment
    get_deployment([::AWSConfig], arguments::Dict)
    get_deployment([::AWSConfig]; restapi_id=, deployment_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/deployments/{deployment_id}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/deployments/{deployment_id}", restapi_id=, deployment_id=, <keyword arguments>)

# GetDeployment Operation

Gets information about a [Deployment](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `deployment_id = ::String` -- *Required*
[Required] The identifier of the [Deployment](@ref) resource to get information about.


## `embed = [::String, ...]`
A query parameter to retrieve the specified embedded resources of the returned [Deployment](@ref) resource in the response. In a REST API call, this `embed` parameter value is a list of comma-separated strings, as in `GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2`. The SDK and other platform-dependent libraries might use a different format for the list. Currently, this request supports only retrieval of the embedded API summary this way. Hence, the parameter value must be a single-valued list containing only the `"apisummary"` string. For example, `GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary`.




# Returns

`Deployment`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetDeployment)
"""
@inline get_deployment(aws::AWSConfig=default_aws_config(); args...) = get_deployment(aws, args)

@inline get_deployment(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/deployments/{deployment_id}", args)

@inline get_deployment(args) = get_deployment(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_deployments
    get_deployments([::AWSConfig], arguments::Dict)
    get_deployments([::AWSConfig]; restapi_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/deployments", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/deployments", restapi_id=, <keyword arguments>)

# GetDeployments Operation

Gets information about a [Deployments](@ref) collection.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`Deployments`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `TooManyRequestsException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetDeployments)
"""
@inline get_deployments(aws::AWSConfig=default_aws_config(); args...) = get_deployments(aws, args)

@inline get_deployments(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/deployments", args)

@inline get_deployments(args) = get_deployments(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_documentation_part
    get_documentation_part([::AWSConfig], arguments::Dict)
    get_documentation_part([::AWSConfig]; restapi_id=, part_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/documentation/parts/{part_id}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/documentation/parts/{part_id}", restapi_id=, part_id=)

# GetDocumentationPart Operation



# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `part_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).




# Returns

`DocumentationPart`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetDocumentationPart)
"""
@inline get_documentation_part(aws::AWSConfig=default_aws_config(); args...) = get_documentation_part(aws, args)

@inline get_documentation_part(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/documentation/parts/{part_id}", args)

@inline get_documentation_part(args) = get_documentation_part(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_documentation_parts
    get_documentation_parts([::AWSConfig], arguments::Dict)
    get_documentation_parts([::AWSConfig]; restapi_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/documentation/parts", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/documentation/parts", restapi_id=, <keyword arguments>)

# GetDocumentationParts Operation



# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `type = "API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER" or "RESPONSE_BODY"`
The type of API entities of the to-be-retrieved documentation parts.


## `name = ::String`
The name of API entities of the to-be-retrieved documentation parts.


## `path = ::String`
The path of API entities of the to-be-retrieved documentation parts.


## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.


## `locationStatus = "DOCUMENTED" or "UNDOCUMENTED"`
The status of the API documentation parts to retrieve. Valid values are `DOCUMENTED` for retrieving [DocumentationPart](@ref) resources with content and `UNDOCUMENTED` for [DocumentationPart](@ref) resources without content.




# Returns

`DocumentationParts`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetDocumentationParts)
"""
@inline get_documentation_parts(aws::AWSConfig=default_aws_config(); args...) = get_documentation_parts(aws, args)

@inline get_documentation_parts(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/documentation/parts", args)

@inline get_documentation_parts(args) = get_documentation_parts(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_documentation_version
    get_documentation_version([::AWSConfig], arguments::Dict)
    get_documentation_version([::AWSConfig]; restapi_id=, doc_version=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/documentation/versions/{doc_version}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/documentation/versions/{doc_version}", restapi_id=, doc_version=)

# GetDocumentationVersion Operation



# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `doc_version = ::String` -- *Required*
[Required] The version identifier of the to-be-retrieved documentation snapshot.




# Returns

`DocumentationVersion`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetDocumentationVersion)
"""
@inline get_documentation_version(aws::AWSConfig=default_aws_config(); args...) = get_documentation_version(aws, args)

@inline get_documentation_version(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/documentation/versions/{doc_version}", args)

@inline get_documentation_version(args) = get_documentation_version(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_documentation_versions
    get_documentation_versions([::AWSConfig], arguments::Dict)
    get_documentation_versions([::AWSConfig]; restapi_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/documentation/versions", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/documentation/versions", restapi_id=, <keyword arguments>)

# GetDocumentationVersions Operation



# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`DocumentationVersions`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetDocumentationVersions)
"""
@inline get_documentation_versions(aws::AWSConfig=default_aws_config(); args...) = get_documentation_versions(aws, args)

@inline get_documentation_versions(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/documentation/versions", args)

@inline get_documentation_versions(args) = get_documentation_versions(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_domain_name
    get_domain_name([::AWSConfig], arguments::Dict)
    get_domain_name([::AWSConfig]; domain_name=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/domainnames/{domain_name}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/domainnames/{domain_name}", domain_name=)

# GetDomainName Operation

Represents a domain name that is contained in a simpler, more intuitive URL that can be called.

# Arguments

## `domain_name = ::String` -- *Required*
[Required] The name of the [DomainName](@ref) resource.




# Returns

`DomainName`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `ServiceUnavailableException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetDomainName)
"""
@inline get_domain_name(aws::AWSConfig=default_aws_config(); args...) = get_domain_name(aws, args)

@inline get_domain_name(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/domainnames/{domain_name}", args)

@inline get_domain_name(args) = get_domain_name(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_domain_names
    get_domain_names([::AWSConfig], arguments::Dict)
    get_domain_names([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/domainnames", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/domainnames", <keyword arguments>)

# GetDomainNames Operation

Represents a collection of [DomainName](@ref) resources.

# Arguments

## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`DomainNames`

# Exceptions

`BadRequestException`, `UnauthorizedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetDomainNames)
"""
@inline get_domain_names(aws::AWSConfig=default_aws_config(); args...) = get_domain_names(aws, args)

@inline get_domain_names(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/domainnames", args)

@inline get_domain_names(args) = get_domain_names(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_export
    get_export([::AWSConfig], arguments::Dict)
    get_export([::AWSConfig]; restapi_id=, stage_name=, export_type=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/stages/{stage_name}/exports/{export_type}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/stages/{stage_name}/exports/{export_type}", restapi_id=, stage_name=, export_type=, <keyword arguments>)

# GetExport Operation

Exports a deployed version of a [RestApi](@ref) in a specified format.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `stage_name = ::String` -- *Required*
[Required] The name of the [Stage](@ref) that will be exported.


## `export_type = ::String` -- *Required*
[Required] The type of export. Currently only 'swagger' is supported.


## `parameters = ::Dict{String,String}`
A key-value map of query string parameters that specify properties of the export, depending on the requested `exportType`. For `exportType` `swagger`, any combination of the following parameters are supported: `extensions='integrations'` or `extensions='apigateway'` will export the API with x-amazon-apigateway-integration extensions. `extensions='authorizers'` will export the API with x-amazon-apigateway-authorizer extensions. `postman` will export the API with Postman extensions, allowing for import to the Postman tool


## `*header:* Accept = ::String`
The content-type of the export, for example `application/json`. Currently `application/json` and `application/yaml` are supported for `exportType` of `swagger`. This should be specified in the `Accept` header for direct API requests.




# Returns

`ExportResponse`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException`, `ConflictException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetExport)
"""
@inline get_export(aws::AWSConfig=default_aws_config(); args...) = get_export(aws, args)

@inline get_export(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/stages/{stage_name}/exports/{export_type}", args)

@inline get_export(args) = get_export(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_gateway_response
    get_gateway_response([::AWSConfig], arguments::Dict)
    get_gateway_response([::AWSConfig]; restapi_id=, response_type=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/gatewayresponses/{response_type}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/gatewayresponses/{response_type}", restapi_id=, response_type=)

# GetGatewayResponse Operation

Gets a [GatewayResponse](@ref) of a specified response type on the given [RestApi](@ref).

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `response_type = "DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED" or "QUOTA_EXCEEDED"` -- *Required*
[Required]

The response type of the associated [GatewayResponse](@ref). Valid values are

*   ACCESS_DENIED
*   API_CONFIGURATION_ERROR
*   AUTHORIZER_FAILURE
*   AUTHORIZER_CONFIGURATION_ERROR
*   BAD_REQUEST_PARAMETERS
*   BAD_REQUEST_BODY
*   DEFAULT_4XX
*   DEFAULT_5XX
*   EXPIRED_TOKEN
*   INVALID_SIGNATURE
*   INTEGRATION_FAILURE
*   INTEGRATION_TIMEOUT
*   INVALID_API_KEY
*   MISSING_AUTHENTICATION_TOKEN
*   QUOTA_EXCEEDED
*   REQUEST_TOO_LARGE
*   RESOURCE_NOT_FOUND
*   THROTTLED
*   UNAUTHORIZED
*   UNSUPPORTED_MEDIA_TYPE




# Returns

`GatewayResponse`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetGatewayResponse)
"""
@inline get_gateway_response(aws::AWSConfig=default_aws_config(); args...) = get_gateway_response(aws, args)

@inline get_gateway_response(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/gatewayresponses/{response_type}", args)

@inline get_gateway_response(args) = get_gateway_response(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_gateway_responses
    get_gateway_responses([::AWSConfig], arguments::Dict)
    get_gateway_responses([::AWSConfig]; restapi_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/gatewayresponses", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/gatewayresponses", restapi_id=, <keyword arguments>)

# GetGatewayResponses Operation

Gets the [GatewayResponses](@ref) collection on the given [RestApi](@ref). If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default [GatewayResponses](@ref) collection for the supported response types.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `position = ::String`
The current pagination position in the paged result set. The [GatewayResponse](@ref) collection does not support pagination and the position does not apply here.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500. The [GatewayResponses](@ref) collection does not support pagination and the limit does not apply here.




# Returns

`GatewayResponses`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetGatewayResponses)
"""
@inline get_gateway_responses(aws::AWSConfig=default_aws_config(); args...) = get_gateway_responses(aws, args)

@inline get_gateway_responses(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/gatewayresponses", args)

@inline get_gateway_responses(args) = get_gateway_responses(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_integration
    get_integration([::AWSConfig], arguments::Dict)
    get_integration([::AWSConfig]; restapi_id=, resource_id=, http_method=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", restapi_id=, resource_id=, http_method=)

# GetIntegration Operation

Get the integration settings.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] Specifies a get integration request's resource identifier


## `http_method = ::String` -- *Required*
[Required] Specifies a get integration request's HTTP method.




# Returns

`Integration`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetIntegration)
"""
@inline get_integration(aws::AWSConfig=default_aws_config(); args...) = get_integration(aws, args)

@inline get_integration(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", args)

@inline get_integration(args) = get_integration(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_integration_response
    get_integration_response([::AWSConfig], arguments::Dict)
    get_integration_response([::AWSConfig]; restapi_id=, resource_id=, http_method=, status_code=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", restapi_id=, resource_id=, http_method=, status_code=)

# GetIntegrationResponse Operation

Represents a get integration response.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] Specifies a get integration response request's resource identifier.


## `http_method = ::String` -- *Required*
[Required] Specifies a get integration response request's HTTP method.


## `status_code = ::String` -- *Required*
[Required] Specifies a get integration response request's status code.




# Returns

`IntegrationResponse`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetIntegrationResponse)
"""
@inline get_integration_response(aws::AWSConfig=default_aws_config(); args...) = get_integration_response(aws, args)

@inline get_integration_response(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", args)

@inline get_integration_response(args) = get_integration_response(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_method
    get_method([::AWSConfig], arguments::Dict)
    get_method([::AWSConfig]; restapi_id=, resource_id=, http_method=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", restapi_id=, resource_id=, http_method=)

# GetMethod Operation

Describe an existing [Method](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] The [Resource](@ref) identifier for the [Method](@ref) resource.


## `http_method = ::String` -- *Required*
[Required] Specifies the method request's HTTP method type.




# Returns

`Method`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetMethod)
"""
@inline get_method(aws::AWSConfig=default_aws_config(); args...) = get_method(aws, args)

@inline get_method(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", args)

@inline get_method(args) = get_method(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_method_response
    get_method_response([::AWSConfig], arguments::Dict)
    get_method_response([::AWSConfig]; restapi_id=, resource_id=, http_method=, status_code=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", restapi_id=, resource_id=, http_method=, status_code=)

# GetMethodResponse Operation

Describes a [MethodResponse](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] The [Resource](@ref) identifier for the [MethodResponse](@ref) resource.


## `http_method = ::String` -- *Required*
[Required] The HTTP verb of the [Method](@ref) resource.


## `status_code = ::String` -- *Required*
[Required] The status code for the [MethodResponse](@ref) resource.




# Returns

`MethodResponse`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetMethodResponse)
"""
@inline get_method_response(aws::AWSConfig=default_aws_config(); args...) = get_method_response(aws, args)

@inline get_method_response(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", args)

@inline get_method_response(args) = get_method_response(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_model
    get_model([::AWSConfig], arguments::Dict)
    get_model([::AWSConfig]; restapi_id=, model_name=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/models/{model_name}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/models/{model_name}", restapi_id=, model_name=, <keyword arguments>)

# GetModel Operation

Describes an existing model defined for a [RestApi](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The [RestApi](@ref) identifier under which the [Model](@ref) exists.


## `model_name = ::String` -- *Required*
[Required] The name of the model as an identifier.


## `flatten = ::Bool`
A query parameter of a Boolean value to resolve (`true`) all external model references and returns a flattened model schema or not (`false`) The default is `false`.




# Returns

`Model`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetModel)
"""
@inline get_model(aws::AWSConfig=default_aws_config(); args...) = get_model(aws, args)

@inline get_model(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/models/{model_name}", args)

@inline get_model(args) = get_model(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_model_template
    get_model_template([::AWSConfig], arguments::Dict)
    get_model_template([::AWSConfig]; restapi_id=, model_name=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/models/{model_name}/default_template", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/models/{model_name}/default_template", restapi_id=, model_name=)

# GetModelTemplate Operation

Generates a sample mapping template that can be used to transform a payload into the structure of a model.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `model_name = ::String` -- *Required*
[Required] The name of the model for which to generate a template.




# Returns

`Template`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetModelTemplate)
"""
@inline get_model_template(aws::AWSConfig=default_aws_config(); args...) = get_model_template(aws, args)

@inline get_model_template(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/models/{model_name}/default_template", args)

@inline get_model_template(args) = get_model_template(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_models
    get_models([::AWSConfig], arguments::Dict)
    get_models([::AWSConfig]; restapi_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/models", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/models", restapi_id=, <keyword arguments>)

# GetModels Operation

Describes existing [Models](@ref) defined for a [RestApi](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`Models`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetModels)
"""
@inline get_models(aws::AWSConfig=default_aws_config(); args...) = get_models(aws, args)

@inline get_models(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/models", args)

@inline get_models(args) = get_models(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_request_validator
    get_request_validator([::AWSConfig], arguments::Dict)
    get_request_validator([::AWSConfig]; restapi_id=, requestvalidator_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", restapi_id=, requestvalidator_id=)

# GetRequestValidator Operation

Gets a [RequestValidator](@ref) of a given [RestApi](@ref).

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `requestvalidator_id = ::String` -- *Required*
[Required] The identifier of the [RequestValidator](@ref) to be retrieved.




# Returns

`RequestValidator`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetRequestValidator)
"""
@inline get_request_validator(aws::AWSConfig=default_aws_config(); args...) = get_request_validator(aws, args)

@inline get_request_validator(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", args)

@inline get_request_validator(args) = get_request_validator(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_request_validators
    get_request_validators([::AWSConfig], arguments::Dict)
    get_request_validators([::AWSConfig]; restapi_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/requestvalidators", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/requestvalidators", restapi_id=, <keyword arguments>)

# GetRequestValidators Operation

Gets the [RequestValidators](@ref) collection of a given [RestApi](@ref).

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`RequestValidators`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetRequestValidators)
"""
@inline get_request_validators(aws::AWSConfig=default_aws_config(); args...) = get_request_validators(aws, args)

@inline get_request_validators(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/requestvalidators", args)

@inline get_request_validators(args) = get_request_validators(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_resource
    get_resource([::AWSConfig], arguments::Dict)
    get_resource([::AWSConfig]; restapi_id=, resource_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/resources/{resource_id}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/resources/{resource_id}", restapi_id=, resource_id=, <keyword arguments>)

# GetResource Operation

Lists information about a resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] The identifier for the [Resource](@ref) resource.


## `embed = [::String, ...]`
A query parameter to retrieve the specified resources embedded in the returned [Resource](@ref) representation in the response. This `embed` parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded [Method](@ref) resources this way. The query parameter value must be a single-valued list and contain the `"methods"` string. For example, `GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods`.




# Returns

`Resource`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetResource)
"""
@inline get_resource(aws::AWSConfig=default_aws_config(); args...) = get_resource(aws, args)

@inline get_resource(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/resources/{resource_id}", args)

@inline get_resource(args) = get_resource(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_resources
    get_resources([::AWSConfig], arguments::Dict)
    get_resources([::AWSConfig]; restapi_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/resources", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/resources", restapi_id=, <keyword arguments>)

# GetResources Operation

Lists information about a collection of [Resource](@ref) resources.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.


## `embed = [::String, ...]`
A query parameter used to retrieve the specified resources embedded in the returned [Resources](@ref) resource in the response. This `embed` parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded [Method](@ref) resources this way. The query parameter value must be a single-valued list and contain the `"methods"` string. For example, `GET /restapis/{restapi_id}/resources?embed=methods`.




# Returns

`Resources`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetResources)
"""
@inline get_resources(aws::AWSConfig=default_aws_config(); args...) = get_resources(aws, args)

@inline get_resources(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/resources", args)

@inline get_resources(args) = get_resources(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_rest_api
    get_rest_api([::AWSConfig], arguments::Dict)
    get_rest_api([::AWSConfig]; restapi_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}", restapi_id=)

# GetRestApi Operation

Lists the [RestApi](@ref) resource in the collection.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).




# Returns

`RestApi`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetRestApi)
"""
@inline get_rest_api(aws::AWSConfig=default_aws_config(); args...) = get_rest_api(aws, args)

@inline get_rest_api(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}", args)

@inline get_rest_api(args) = get_rest_api(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_rest_apis
    get_rest_apis([::AWSConfig], arguments::Dict)
    get_rest_apis([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis", <keyword arguments>)

# GetRestApis Operation

Lists the [RestApis](@ref) resources for your collection.

# Arguments

## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`RestApis`

# Exceptions

`BadRequestException`, `UnauthorizedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetRestApis)
"""
@inline get_rest_apis(aws::AWSConfig=default_aws_config(); args...) = get_rest_apis(aws, args)

@inline get_rest_apis(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis", args)

@inline get_rest_apis(args) = get_rest_apis(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_sdk
    get_sdk([::AWSConfig], arguments::Dict)
    get_sdk([::AWSConfig]; restapi_id=, stage_name=, sdk_type=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/stages/{stage_name}/sdks/{sdk_type}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/stages/{stage_name}/sdks/{sdk_type}", restapi_id=, stage_name=, sdk_type=, <keyword arguments>)

# GetSdk Operation

Generates a client SDK for a [RestApi](@ref) and [Stage](@ref).

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `stage_name = ::String` -- *Required*
[Required] The name of the [Stage](@ref) that the SDK will use.


## `sdk_type = ::String` -- *Required*
[Required] The language for the generated SDK. Currently `java`, `javascript`, `android`, `objectivec` (for iOS), `swift` (for iOS), and `ruby` are supported.


## `parameters = ::Dict{String,String}`
A string-to-string key-value map of query parameters `sdkType`-dependent properties of the SDK. For `sdkType` of `objectivec` or `swift`, a parameter named `classPrefix` is required. For `sdkType` of `android`, parameters named `groupId`, `artifactId`, `artifactVersion`, and `invokerPackage` are required. For `sdkType` of `java`, parameters named `serviceName` and `javaPackageName` are required.




# Returns

`SdkResponse`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException`, `ConflictException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetSdk)
"""
@inline get_sdk(aws::AWSConfig=default_aws_config(); args...) = get_sdk(aws, args)

@inline get_sdk(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/stages/{stage_name}/sdks/{sdk_type}", args)

@inline get_sdk(args) = get_sdk(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_sdk_type
    get_sdk_type([::AWSConfig], arguments::Dict)
    get_sdk_type([::AWSConfig]; sdktype_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/sdktypes/{sdktype_id}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/sdktypes/{sdktype_id}", sdktype_id=)

# GetSdkType Operation



# Arguments

## `sdktype_id = ::String` -- *Required*
[Required] The identifier of the queried [SdkType](@ref) instance.




# Returns

`SdkType`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetSdkType)
"""
@inline get_sdk_type(aws::AWSConfig=default_aws_config(); args...) = get_sdk_type(aws, args)

@inline get_sdk_type(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/sdktypes/{sdktype_id}", args)

@inline get_sdk_type(args) = get_sdk_type(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_sdk_types
    get_sdk_types([::AWSConfig], arguments::Dict)
    get_sdk_types([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/sdktypes", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/sdktypes", <keyword arguments>)

# GetSdkTypes Operation



# Arguments

## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`SdkTypes`

# Exceptions

`UnauthorizedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetSdkTypes)
"""
@inline get_sdk_types(aws::AWSConfig=default_aws_config(); args...) = get_sdk_types(aws, args)

@inline get_sdk_types(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/sdktypes", args)

@inline get_sdk_types(args) = get_sdk_types(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_stage
    get_stage([::AWSConfig], arguments::Dict)
    get_stage([::AWSConfig]; restapi_id=, stage_name=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/stages/{stage_name}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/stages/{stage_name}", restapi_id=, stage_name=)

# GetStage Operation

Gets information about a [Stage](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `stage_name = ::String` -- *Required*
[Required] The name of the [Stage](@ref) resource to get information about.




# Returns

`Stage`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetStage)
"""
@inline get_stage(aws::AWSConfig=default_aws_config(); args...) = get_stage(aws, args)

@inline get_stage(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/stages/{stage_name}", args)

@inline get_stage(args) = get_stage(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_stages
    get_stages([::AWSConfig], arguments::Dict)
    get_stages([::AWSConfig]; restapi_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/stages", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/restapis/{restapi_id}/stages", restapi_id=, <keyword arguments>)

# GetStages Operation

Gets information about one or more [Stage](@ref) resources.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `deploymentId = ::String`
The stages' deployment identifiers.




# Returns

`Stages`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetStages)
"""
@inline get_stages(aws::AWSConfig=default_aws_config(); args...) = get_stages(aws, args)

@inline get_stages(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/restapis/{restapi_id}/stages", args)

@inline get_stages(args) = get_stages(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_tags
    get_tags([::AWSConfig], arguments::Dict)
    get_tags([::AWSConfig]; resource_arn=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/tags/{resource_arn}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/tags/{resource_arn}", resource_arn=, <keyword arguments>)

# GetTags Operation

Gets the [Tags](@ref) collection for a given resource.

# Arguments

## `resource_arn = ::String` -- *Required*
[Required] The ARN of a resource that can be tagged. The resource ARN must be URL-encoded. At present, [Stage](@ref) is the only taggable resource.


## `position = ::String`
(Not currently supported) The current pagination position in the paged result set.


## `limit = ::Int`
(Not currently supported) The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`Tags`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `TooManyRequestsException`, `NotFoundException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetTags)
"""
@inline get_tags(aws::AWSConfig=default_aws_config(); args...) = get_tags(aws, args)

@inline get_tags(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/tags/{resource_arn}", args)

@inline get_tags(args) = get_tags(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_usage
    get_usage([::AWSConfig], arguments::Dict)
    get_usage([::AWSConfig]; usageplanId=, startDate=, endDate=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/usageplans/{usageplanId}/usage", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/usageplans/{usageplanId}/usage", usageplanId=, startDate=, endDate=, <keyword arguments>)

# GetUsage Operation

Gets the usage data of a usage plan in a specified time interval.

# Arguments

## `usageplanId = ::String` -- *Required*
[Required] The Id of the usage plan associated with the usage data.


## `keyId = ::String`
The Id of the API key associated with the resultant usage data.


## `startDate = ::String` -- *Required*
[Required] The starting date (e.g., 2016-01-01) of the usage data.


## `endDate = ::String` -- *Required*
[Required] The ending date (e.g., 2016-12-31) of the usage data.


## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`Usage`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetUsage)
"""
@inline get_usage(aws::AWSConfig=default_aws_config(); args...) = get_usage(aws, args)

@inline get_usage(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/usageplans/{usageplanId}/usage", args)

@inline get_usage(args) = get_usage(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_usage_plan
    get_usage_plan([::AWSConfig], arguments::Dict)
    get_usage_plan([::AWSConfig]; usageplanId=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/usageplans/{usageplanId}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/usageplans/{usageplanId}", usageplanId=)

# GetUsagePlan Operation

Gets a usage plan of a given plan identifier.

# Arguments

## `usageplanId = ::String` -- *Required*
[Required] The identifier of the [UsagePlan](@ref) resource to be retrieved.




# Returns

`UsagePlan`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetUsagePlan)
"""
@inline get_usage_plan(aws::AWSConfig=default_aws_config(); args...) = get_usage_plan(aws, args)

@inline get_usage_plan(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/usageplans/{usageplanId}", args)

@inline get_usage_plan(args) = get_usage_plan(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_usage_plan_key
    get_usage_plan_key([::AWSConfig], arguments::Dict)
    get_usage_plan_key([::AWSConfig]; usageplanId=, keyId=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/usageplans/{usageplanId}/keys/{keyId}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/usageplans/{usageplanId}/keys/{keyId}", usageplanId=, keyId=)

# GetUsagePlanKey Operation

Gets a usage plan key of a given key identifier.

# Arguments

## `usageplanId = ::String` -- *Required*
[Required] The Id of the [UsagePlan](@ref) resource representing the usage plan containing the to-be-retrieved [UsagePlanKey](@ref) resource representing a plan customer.


## `keyId = ::String` -- *Required*
[Required] The key Id of the to-be-retrieved [UsagePlanKey](@ref) resource representing a plan customer.




# Returns

`UsagePlanKey`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetUsagePlanKey)
"""
@inline get_usage_plan_key(aws::AWSConfig=default_aws_config(); args...) = get_usage_plan_key(aws, args)

@inline get_usage_plan_key(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/usageplans/{usageplanId}/keys/{keyId}", args)

@inline get_usage_plan_key(args) = get_usage_plan_key(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_usage_plan_keys
    get_usage_plan_keys([::AWSConfig], arguments::Dict)
    get_usage_plan_keys([::AWSConfig]; usageplanId=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/usageplans/{usageplanId}/keys", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/usageplans/{usageplanId}/keys", usageplanId=, <keyword arguments>)

# GetUsagePlanKeys Operation

Gets all the usage plan keys representing the API keys added to a specified usage plan.

# Arguments

## `usageplanId = ::String` -- *Required*
[Required] The Id of the [UsagePlan](@ref) resource representing the usage plan containing the to-be-retrieved [UsagePlanKey](@ref) resource representing a plan customer.


## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.


## `name = ::String`
A query parameter specifying the name of the to-be-returned usage plan keys.




# Returns

`UsagePlanKeys`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetUsagePlanKeys)
"""
@inline get_usage_plan_keys(aws::AWSConfig=default_aws_config(); args...) = get_usage_plan_keys(aws, args)

@inline get_usage_plan_keys(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/usageplans/{usageplanId}/keys", args)

@inline get_usage_plan_keys(args) = get_usage_plan_keys(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_usage_plans
    get_usage_plans([::AWSConfig], arguments::Dict)
    get_usage_plans([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/usageplans", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/usageplans", <keyword arguments>)

# GetUsagePlans Operation

Gets all the usage plans of the caller's account.

# Arguments

## `position = ::String`
The current pagination position in the paged result set.


## `keyId = ::String`
The identifier of the API key associated with the usage plans.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`UsagePlans`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `TooManyRequestsException`, `ConflictException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetUsagePlans)
"""
@inline get_usage_plans(aws::AWSConfig=default_aws_config(); args...) = get_usage_plans(aws, args)

@inline get_usage_plans(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/usageplans", args)

@inline get_usage_plans(args) = get_usage_plans(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_vpc_link
    get_vpc_link([::AWSConfig], arguments::Dict)
    get_vpc_link([::AWSConfig]; vpclink_id=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/vpclinks/{vpclink_id}", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/vpclinks/{vpclink_id}", vpclink_id=)

# GetVpcLink Operation

Gets a specified VPC link under the caller's account in a region.

# Arguments

## `vpclink_id = ::String` -- *Required*
[Required] The identifier of the [VpcLink](@ref). It is used in an [Integration](@ref) to reference this [VpcLink](@ref).




# Returns

`VpcLink`

# Exceptions

`UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetVpcLink)
"""
@inline get_vpc_link(aws::AWSConfig=default_aws_config(); args...) = get_vpc_link(aws, args)

@inline get_vpc_link(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/vpclinks/{vpclink_id}", args)

@inline get_vpc_link(args) = get_vpc_link(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.get_vpc_links
    get_vpc_links([::AWSConfig], arguments::Dict)
    get_vpc_links([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "GET", "/vpclinks", arguments::Dict)
    apigateway([::AWSConfig], "GET", "/vpclinks", <keyword arguments>)

# GetVpcLinks Operation

Gets the [VpcLinks](@ref) collection under the caller's account in a selected region.

# Arguments

## `position = ::String`
The current pagination position in the paged result set.


## `limit = ::Int`
The maximum number of returned results per page. The default value is 25 and the maximum value is 500.




# Returns

`VpcLinks`

# Exceptions

`BadRequestException`, `UnauthorizedException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/GetVpcLinks)
"""
@inline get_vpc_links(aws::AWSConfig=default_aws_config(); args...) = get_vpc_links(aws, args)

@inline get_vpc_links(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "GET", "/vpclinks", args)

@inline get_vpc_links(args) = get_vpc_links(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.import_api_keys
    import_api_keys([::AWSConfig], arguments::Dict)
    import_api_keys([::AWSConfig]; body=, format=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/apikeys?mode=import", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/apikeys?mode=import", body=, format=, <keyword arguments>)

# ImportApiKeys Operation

Import API keys from an external source, such as a CSV-formatted file.

# Arguments

## `body = blob` -- *Required*
The payload of the POST request to import API keys. For the payload format, see [API Key File Format](http://docs.aws.amazon.com/apigateway/latest/developerguide/api-key-file-format.html).


## `format = "csv"` -- *Required*
A query parameter to specify the input format to imported API keys. Currently, only the `csv` format is supported.


## `failonwarnings = ::Bool`
A query parameter to indicate whether to rollback [ApiKey](@ref) importation (`true`) or not (`false`) when error is encountered.




# Returns

`ApiKeyIds`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `TooManyRequestsException`, `LimitExceededException`, `BadRequestException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/ImportApiKeys)
"""
@inline import_api_keys(aws::AWSConfig=default_aws_config(); args...) = import_api_keys(aws, args)

@inline import_api_keys(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/apikeys?mode=import", args)

@inline import_api_keys(args) = import_api_keys(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.import_documentation_parts
    import_documentation_parts([::AWSConfig], arguments::Dict)
    import_documentation_parts([::AWSConfig]; restapi_id=, body=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}/documentation/parts", arguments::Dict)
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}/documentation/parts", restapi_id=, body=, <keyword arguments>)

# ImportDocumentationParts Operation



# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `mode = "merge" or "overwrite"`
A query parameter to indicate whether to overwrite (`OVERWRITE`) any existing [DocumentationParts](@ref) definition or to merge (`MERGE`) the new definition into the existing one. The default value is `MERGE`.


## `failonwarnings = ::Bool`
A query parameter to specify whether to rollback the documentation importation (`true`) or not (`false`) when a warning is encountered. The default value is `false`.


## `body = blob` -- *Required*
[Required] Raw byte array representing the to-be-imported documentation parts. To import from a Swagger file, this is a JSON object.




# Returns

`DocumentationPartIds`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException`, `LimitExceededException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/ImportDocumentationParts)
"""
@inline import_documentation_parts(aws::AWSConfig=default_aws_config(); args...) = import_documentation_parts(aws, args)

@inline import_documentation_parts(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PUT", "/restapis/{restapi_id}/documentation/parts", args)

@inline import_documentation_parts(args) = import_documentation_parts(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.import_rest_api
    import_rest_api([::AWSConfig], arguments::Dict)
    import_rest_api([::AWSConfig]; body=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/restapis?mode=import", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/restapis?mode=import", body=, <keyword arguments>)

# ImportRestApi Operation

A feature of the API Gateway control service for creating a new API from an external API definition file.

# Arguments

## `failonwarnings = ::Bool`
A query parameter to indicate whether to rollback the API creation (`true`) or not (`false`) when a warning is encountered. The default value is `false`.


## `parameters = ::Dict{String,String}`
A key-value map of context-specific query string parameters specifying the behavior of different API importing operations. The following shows operation-specific parameters and their supported values.

To exclude [DocumentationParts](@ref) from the import, set `parameters` as `ignore=documentation`.

To configure the endpoint type, set `parameters` as `endpointConfigurationTypes=EDGE`, `endpointConfigurationTypes=REGIONAL`, or `endpointConfigurationTypes=PRIVATE`. The default endpoint type is `EDGE`.

To handle imported `basePath`, set `parameters` as `basePath=ignore`, `basePath=prepend` or `basePath=split`.

For example, the AWS CLI command to exclude documentation from the imported API is:

    aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'

The AWS CLI command to set the regional endpoint on the imported API is:

    aws apigateway import-rest-api --parameters endpointConfigurationTypes=REGIONAL --body 'file:///path/to/imported-api-body.json'


## `body = blob` -- *Required*
[Required] The POST request body containing external API definitions. Currently, only Swagger definition JSON files are supported. The maximum size of the API definition file is 2MB.




# Returns

`RestApi`

# Exceptions

`UnauthorizedException`, `LimitExceededException`, `BadRequestException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/ImportRestApi)
"""
@inline import_rest_api(aws::AWSConfig=default_aws_config(); args...) = import_rest_api(aws, args)

@inline import_rest_api(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/restapis?mode=import", args)

@inline import_rest_api(args) = import_rest_api(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.put_gateway_response
    put_gateway_response([::AWSConfig], arguments::Dict)
    put_gateway_response([::AWSConfig]; restapi_id=, response_type=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}/gatewayresponses/{response_type}", arguments::Dict)
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}/gatewayresponses/{response_type}", restapi_id=, response_type=, <keyword arguments>)

# PutGatewayResponse Operation

Creates a customization of a [GatewayResponse](@ref) of a specified response type and status code on the given [RestApi](@ref).

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `response_type = "DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED" or "QUOTA_EXCEEDED"` -- *Required*
[Required]

The response type of the associated [GatewayResponse](@ref). Valid values are

*   ACCESS_DENIED
*   API_CONFIGURATION_ERROR
*   AUTHORIZER_FAILURE
*   AUTHORIZER_CONFIGURATION_ERROR
*   BAD_REQUEST_PARAMETERS
*   BAD_REQUEST_BODY
*   DEFAULT_4XX
*   DEFAULT_5XX
*   EXPIRED_TOKEN
*   INVALID_SIGNATURE
*   INTEGRATION_FAILURE
*   INTEGRATION_TIMEOUT
*   INVALID_API_KEY
*   MISSING_AUTHENTICATION_TOKEN
*   QUOTA_EXCEEDED
*   REQUEST_TOO_LARGE
*   RESOURCE_NOT_FOUND
*   THROTTLED
*   UNAUTHORIZED
*   UNSUPPORTED_MEDIA_TYPE


## `statusCode = ::String`
The HTTP status code of the [GatewayResponse](@ref).


## `responseParameters = ::Dict{String,String}`
Response parameters (paths, query strings and headers) of the [GatewayResponse](@ref) as a string-to-string map of key-value pairs.


## `responseTemplates = ::Dict{String,String}`
Response templates of the [GatewayResponse](@ref) as a string-to-string map of key-value pairs.




# Returns

`GatewayResponse`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException`, `LimitExceededException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/PutGatewayResponse)
"""
@inline put_gateway_response(aws::AWSConfig=default_aws_config(); args...) = put_gateway_response(aws, args)

@inline put_gateway_response(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PUT", "/restapis/{restapi_id}/gatewayresponses/{response_type}", args)

@inline put_gateway_response(args) = put_gateway_response(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.put_integration
    put_integration([::AWSConfig], arguments::Dict)
    put_integration([::AWSConfig]; restapi_id=, resource_id=, http_method=, type=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", arguments::Dict)
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", restapi_id=, resource_id=, http_method=, type=, <keyword arguments>)

# PutIntegration Operation

Sets up a method's integration.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] Specifies a put integration request's resource ID.


## `http_method = ::String` -- *Required*
[Required] Specifies a put integration request's HTTP method.


## `type = "HTTP", "AWS", "MOCK", "HTTP_PROXY" or "AWS_PROXY"` -- *Required*
[Required] Specifies a put integration input's type.


## `httpMethod = ::String`
Specifies a put integration HTTP method. When the integration type is HTTP or AWS, this field is required.


## `uri = ::String`
Specifies Uniform Resource Identifier (URI) of the integration endpoint.

*   For `HTTP` or `HTTP_PROXY` integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the [RFC-3986 specification](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier), for either standard integration, where `connectionType` is not `VPC_LINK`, or private integration, where `connectionType` is `VPC_LINK`. For a private HTTP integration, the URI is not used for routing.

*   For `AWS` or `AWS_PROXY` integrations, the URI is of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}`. Here, `{Region}` is the API Gateway region (e.g., `us-east-1`); `{service}` is the name of the integrated AWS service (e.g., `s3`); and `{subdomain}` is a designated subdomain supported by certain AWS service for fast host-name lookup. `action` can be used for an AWS service action-based API, using an `Action={name}&{p1}={v1}&p2={v2}...` query string. The ensuing `{service_api}` refers to a supported action `{name}` plus any required input parameters. Alternatively, `path` can be used for an AWS service path-based API. The ensuing `service_api` refers to the path to an AWS service resource, including the region of the integrated AWS service, if applicable. For example, for integration with the S3 API of `[GetObject](http://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectGET.html)`, the `uri` can be either `arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}` or `arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}`


## `connectionType = "INTERNET" or "VPC_LINK"`
The type of the network connection to the integration endpoint. The valid value is `INTERNET` for connections through the public routable internet or `VPC_LINK` for private connections between API Gateway and a network load balancer in a VPC. The default value is `INTERNET`.


## `connectionId = ::String`
The ([`id`](http://docs.aws.amazon.com/apigateway/api-reference/resource/vpc-link/#id)) of the [VpcLink](@ref) used for the integration when `connectionType=VPC_LINK` and undefined, otherwise.


## `credentials = ::String`
Specifies whether credentials are required for a put integration.


## `requestParameters = ::Dict{String,String}`
A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of `method.request.{location}.{name}`, where `location` is `querystring`, `path`, or `header` and `name` must be a valid and unique method request parameter name.


## `requestTemplates = ::Dict{String,String}`
Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.


## `passthroughBehavior = ::String`
Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the `requestTemplates` property on the Integration resource. There are three valid values: `WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, and `NEVER`.

*   `WHEN_NO_MATCH` passes the request body for unmapped content types through to the integration back end without transformation.

*   `NEVER` rejects unmapped content types with an HTTP 415 'Unsupported Media Type' response.

*   `WHEN_NO_TEMPLATES` allows pass-through when the integration has NO content types mapped to templates. However if there is at least one content type defined, unmapped content types will be rejected with the same 415 response.


## `cacheNamespace = ::String`
Specifies a put integration input's cache namespace.


## `cacheKeyParameters = [::String, ...]`
Specifies a put integration input's cache key parameters.


## `contentHandling = "CONVERT_TO_BINARY" or "CONVERT_TO_TEXT"`
Specifies how to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with the following behaviors:

*   `CONVERT_TO_BINARY`: Converts a request payload from a Base64-encoded string to the corresponding binary blob.

*   `CONVERT_TO_TEXT`: Converts a request payload from a binary blob to a Base64-encoded string.

If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the `passthroughBehaviors` is configured to support payload pass-through.


## `timeoutInMillis = ::Int`
Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.




# Returns

`Integration`

# Exceptions

`UnauthorizedException`, `BadRequestException`, `ConflictException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/PutIntegration)
"""
@inline put_integration(aws::AWSConfig=default_aws_config(); args...) = put_integration(aws, args)

@inline put_integration(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", args)

@inline put_integration(args) = put_integration(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.put_integration_response
    put_integration_response([::AWSConfig], arguments::Dict)
    put_integration_response([::AWSConfig]; restapi_id=, resource_id=, http_method=, status_code=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", arguments::Dict)
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", restapi_id=, resource_id=, http_method=, status_code=, <keyword arguments>)

# PutIntegrationResponse Operation

Represents a put integration.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] Specifies a put integration response request's resource identifier.


## `http_method = ::String` -- *Required*
[Required] Specifies a put integration response request's HTTP method.


## `status_code = ::String` -- *Required*
[Required] Specifies the status code that is used to map the integration response to an existing [MethodResponse](@ref).


## `selectionPattern = ::String`
Specifies the selection pattern of a put integration response.


## `responseParameters = ::Dict{String,String}`
A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name. The mapped non-static value must match the pattern of `integration.response.header.{name}` or `integration.response.body.{JSON-expression}`, where `name` must be a valid and unique response header name and `JSON-expression` a valid JSON expression without the `\$` prefix.


## `responseTemplates = ::Dict{String,String}`
Specifies a put integration response's templates.


## `contentHandling = "CONVERT_TO_BINARY" or "CONVERT_TO_TEXT"`
Specifies how to handle response payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with the following behaviors:

*   `CONVERT_TO_BINARY`: Converts a response payload from a Base64-encoded string to the corresponding binary blob.

*   `CONVERT_TO_TEXT`: Converts a response payload from a binary blob to a Base64-encoded string.

If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.




# Returns

`IntegrationResponse`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `LimitExceededException`, `BadRequestException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/PutIntegrationResponse)
"""
@inline put_integration_response(aws::AWSConfig=default_aws_config(); args...) = put_integration_response(aws, args)

@inline put_integration_response(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", args)

@inline put_integration_response(args) = put_integration_response(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.put_method
    put_method([::AWSConfig], arguments::Dict)
    put_method([::AWSConfig]; restapi_id=, resource_id=, http_method=, authorizationType=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", arguments::Dict)
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", restapi_id=, resource_id=, http_method=, authorizationType=, <keyword arguments>)

# PutMethod Operation

Add a method to an existing [Resource](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] The [Resource](@ref) identifier for the new [Method](@ref) resource.


## `http_method = ::String` -- *Required*
[Required] Specifies the method request's HTTP method type.


## `authorizationType = ::String` -- *Required*
[Required] The method's authorization type. Valid values are `NONE` for open access, `AWS_IAM` for using AWS IAM permissions, `CUSTOM` for using a custom authorizer, or `COGNITO_USER_POOLS` for using a Cognito user pool.


## `authorizerId = ::String`
Specifies the identifier of an [Authorizer](@ref) to use on this Method, if the type is CUSTOM or COGNITO_USER_POOLS. The authorizer identifier is generated by API Gateway when you created the authorizer.


## `apiKeyRequired = ::Bool`
Specifies whether the method required a valid [ApiKey](@ref).


## `operationName = ::String`
A human-friendly operation identifier for the method. For example, you can assign the `operationName` of `ListPets` for the `GET /pets` method in [PetStore](http://petstore-demo-endpoint.execute-api.com/petstore/pets) example.


## `requestParameters = ::Dict{String,String}`
A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key defines a method request parameter name matching the pattern of `method.request.{location}.{name}`, where `location` is `querystring`, `path`, or `header` and `name` is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (`true`) or optional (`false`). The method request parameter names defined here are available in [Integration](@ref) to be mapped to integration request parameters or body-mapping templates.


## `requestModels = ::Dict{String,String}`
Specifies the [Model](@ref) resources used for the request's content type. Request models are represented as a key/value map, with a content type as the key and a [Model](@ref) name as the value.


## `requestValidatorId = ::String`
The identifier of a [RequestValidator](@ref) for validating the method request.


## `authorizationScopes = [::String, ...]`
A list of authorization scopes configured on the method. The scopes are used with a `COGNITO_USER_POOLS` authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.




# Returns

`Method`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException`, `ConflictException`, `LimitExceededException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/PutMethod)
"""
@inline put_method(aws::AWSConfig=default_aws_config(); args...) = put_method(aws, args)

@inline put_method(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", args)

@inline put_method(args) = put_method(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.put_method_response
    put_method_response([::AWSConfig], arguments::Dict)
    put_method_response([::AWSConfig]; restapi_id=, resource_id=, http_method=, status_code=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", arguments::Dict)
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", restapi_id=, resource_id=, http_method=, status_code=, <keyword arguments>)

# PutMethodResponse Operation

Adds a [MethodResponse](@ref) to an existing [Method](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] The [Resource](@ref) identifier for the [Method](@ref) resource.


## `http_method = ::String` -- *Required*
[Required] The HTTP verb of the [Method](@ref) resource.


## `status_code = ::String` -- *Required*
[Required] The method response's status code.


## `responseParameters = ::Dict{String,String}`
A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in `integration.response.header.{name}`, a static value enclosed within a pair of single quotes (e.g., `'application/json'`), or a JSON expression from the back-end response payload in the form of `integration.response.body.{JSON-expression}`, where `JSON-expression` is a valid JSON expression without the `\$` prefix.)


## `responseModels = ::Dict{String,String}`
Specifies the [Model](@ref) resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a [Model](@ref) name as the value.




# Returns

`MethodResponse`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `ConflictException`, `LimitExceededException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/PutMethodResponse)
"""
@inline put_method_response(aws::AWSConfig=default_aws_config(); args...) = put_method_response(aws, args)

@inline put_method_response(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", args)

@inline put_method_response(args) = put_method_response(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.put_rest_api
    put_rest_api([::AWSConfig], arguments::Dict)
    put_rest_api([::AWSConfig]; restapi_id=, body=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}", arguments::Dict)
    apigateway([::AWSConfig], "PUT", "/restapis/{restapi_id}", restapi_id=, body=, <keyword arguments>)

# PutRestApi Operation

A feature of the API Gateway control service for updating an existing API with an input of external API definitions. The update can take the form of merging the supplied definition into the existing API or overwriting the existing API.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `mode = "merge" or "overwrite"`
The `mode` query parameter to specify the update mode. Valid values are "merge" and "overwrite". By default, the update mode is "merge".


## `failonwarnings = ::Bool`
A query parameter to indicate whether to rollback the API update (`true`) or not (`false`) when a warning is encountered. The default value is `false`.


## `parameters = ::Dict{String,String}`
Custom header parameters as part of the request. For example, to exclude [DocumentationParts](@ref) from an imported API, set `ignore=documentation` as a `parameters` value, as in the AWS CLI command of `aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'`.


## `body = blob` -- *Required*
[Required] The PUT request body containing external API definitions. Currently, only Swagger definition JSON files are supported. The maximum size of the API definition file is 2MB.




# Returns

`RestApi`

# Exceptions

`UnauthorizedException`, `LimitExceededException`, `NotFoundException`, `BadRequestException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/PutRestApi)
"""
@inline put_rest_api(aws::AWSConfig=default_aws_config(); args...) = put_rest_api(aws, args)

@inline put_rest_api(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PUT", "/restapis/{restapi_id}", args)

@inline put_rest_api(args) = put_rest_api(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; resource_arn=, tags=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PUT", "/tags/{resource_arn}", arguments::Dict)
    apigateway([::AWSConfig], "PUT", "/tags/{resource_arn}", resource_arn=, tags=)

# TagResource Operation

Adds or updates a tag on a given resource.

# Arguments

## `resource_arn = ::String` -- *Required*
[Required] The ARN of a resource that can be tagged. The resource ARN must be URL-encoded. At present, [Stage](@ref) is the only taggable resource.


## `tags = ::Dict{String,String}` -- *Required*
[Required] The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.




# Exceptions

`BadRequestException`, `UnauthorizedException`, `TooManyRequestsException`, `NotFoundException`, `LimitExceededException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PUT", "/tags/{resource_arn}", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.test_invoke_authorizer
    test_invoke_authorizer([::AWSConfig], arguments::Dict)
    test_invoke_authorizer([::AWSConfig]; restapi_id=, authorizer_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/authorizers/{authorizer_id}", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/authorizers/{authorizer_id}", restapi_id=, authorizer_id=, <keyword arguments>)

# TestInvokeAuthorizer Operation

Simulate the execution of an [Authorizer](@ref) in your [RestApi](@ref) with headers, parameters, and an incoming request body.

<div class="seeAlso">[Enable custom authorizers](http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html)</div>

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `authorizer_id = ::String` -- *Required*
[Required] Specifies a test invoke authorizer request's [Authorizer](@ref) ID.


## `headers = ::Dict{String,String}`
[Required] A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.


## `pathWithQueryString = ::String`
[Optional] The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.


## `body = ::String`
[Optional] The simulated request body of an incoming invocation request.


## `stageVariables = ::Dict{String,String}`
A key-value map of stage variables to simulate an invocation on a deployed [Stage](@ref).


## `additionalContext = ::Dict{String,String}`
[Optional] A key-value map of additional context variables.




# Returns

`TestInvokeAuthorizerResponse`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/TestInvokeAuthorizer)
"""
@inline test_invoke_authorizer(aws::AWSConfig=default_aws_config(); args...) = test_invoke_authorizer(aws, args)

@inline test_invoke_authorizer(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/restapis/{restapi_id}/authorizers/{authorizer_id}", args)

@inline test_invoke_authorizer(args) = test_invoke_authorizer(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.test_invoke_method
    test_invoke_method([::AWSConfig], arguments::Dict)
    test_invoke_method([::AWSConfig]; restapi_id=, resource_id=, http_method=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", arguments::Dict)
    apigateway([::AWSConfig], "POST", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", restapi_id=, resource_id=, http_method=, <keyword arguments>)

# TestInvokeMethod Operation

Simulate the execution of a [Method](@ref) in your [RestApi](@ref) with headers, parameters, and an incoming request body.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] Specifies a test invoke method request's resource ID.


## `http_method = ::String` -- *Required*
[Required] Specifies a test invoke method request's HTTP method.


## `pathWithQueryString = ::String`
The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.


## `body = ::String`
The simulated request body of an incoming invocation request.


## `headers = ::Dict{String,String}`
A key-value map of headers to simulate an incoming invocation request.


## `clientCertificateId = ::String`
A [ClientCertificate](@ref) identifier to use in the test invocation. API Gateway will use the certificate when making the HTTPS request to the defined back-end endpoint.


## `stageVariables = ::Dict{String,String}`
A key-value map of stage variables to simulate an invocation on a deployed [Stage](@ref).




# Returns

`TestInvokeMethodResponse`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/TestInvokeMethod)
"""
@inline test_invoke_method(aws::AWSConfig=default_aws_config(); args...) = test_invoke_method(aws, args)

@inline test_invoke_method(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "POST", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", args)

@inline test_invoke_method(args) = test_invoke_method(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; resource_arn=, tagKeys=)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "DELETE", "/tags/{resource_arn}", arguments::Dict)
    apigateway([::AWSConfig], "DELETE", "/tags/{resource_arn}", resource_arn=, tagKeys=)

# UntagResource Operation

Removes a tag from a given resource.

# Arguments

## `resource_arn = ::String` -- *Required*
[Required] The ARN of a resource that can be tagged. The resource ARN must be URL-encoded. At present, [Stage](@ref) is the only taggable resource.


## `tagKeys = [::String, ...]` -- *Required*
[Required] The Tag keys to delete.




# Exceptions

`BadRequestException`, `UnauthorizedException`, `TooManyRequestsException`, `NotFoundException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "DELETE", "/tags/{resource_arn}", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_account
    update_account([::AWSConfig], arguments::Dict)
    update_account([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/account", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/account", <keyword arguments>)

# UpdateAccount Operation

Changes information about the current [Account](@ref) resource.

# Arguments

## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`Account`

# Exceptions

`UnauthorizedException`, `BadRequestException`, `NotFoundException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateAccount)
"""
@inline update_account(aws::AWSConfig=default_aws_config(); args...) = update_account(aws, args)

@inline update_account(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/account", args)

@inline update_account(args) = update_account(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_api_key
    update_api_key([::AWSConfig], arguments::Dict)
    update_api_key([::AWSConfig]; api_Key=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/apikeys/{api_Key}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/apikeys/{api_Key}", api_Key=, <keyword arguments>)

# UpdateApiKey Operation

Changes information about an [ApiKey](@ref) resource.

# Arguments

## `api_Key = ::String` -- *Required*
[Required] The identifier of the [ApiKey](@ref) resource to be updated.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`ApiKey`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateApiKey)
"""
@inline update_api_key(aws::AWSConfig=default_aws_config(); args...) = update_api_key(aws, args)

@inline update_api_key(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/apikeys/{api_Key}", args)

@inline update_api_key(args) = update_api_key(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_authorizer
    update_authorizer([::AWSConfig], arguments::Dict)
    update_authorizer([::AWSConfig]; restapi_id=, authorizer_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/authorizers/{authorizer_id}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/authorizers/{authorizer_id}", restapi_id=, authorizer_id=, <keyword arguments>)

# UpdateAuthorizer Operation

Updates an existing [Authorizer](@ref) resource.

<div class="seeAlso">[AWS CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/update-authorizer.html)</div>

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `authorizer_id = ::String` -- *Required*
[Required] The identifier of the [Authorizer](@ref) resource.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`Authorizer`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateAuthorizer)
"""
@inline update_authorizer(aws::AWSConfig=default_aws_config(); args...) = update_authorizer(aws, args)

@inline update_authorizer(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/authorizers/{authorizer_id}", args)

@inline update_authorizer(args) = update_authorizer(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_base_path_mapping
    update_base_path_mapping([::AWSConfig], arguments::Dict)
    update_base_path_mapping([::AWSConfig]; domain_name=, base_path=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/domainnames/{domain_name}/basepathmappings/{base_path}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/domainnames/{domain_name}/basepathmappings/{base_path}", domain_name=, base_path=, <keyword arguments>)

# UpdateBasePathMapping Operation

Changes information about the [BasePathMapping](@ref) resource.

# Arguments

## `domain_name = ::String` -- *Required*
[Required] The domain name of the [BasePathMapping](@ref) resource to change.


## `base_path = ::String` -- *Required*
[Required] The base path of the [BasePathMapping](@ref) resource to change.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`BasePathMapping`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `ConflictException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateBasePathMapping)
"""
@inline update_base_path_mapping(aws::AWSConfig=default_aws_config(); args...) = update_base_path_mapping(aws, args)

@inline update_base_path_mapping(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/domainnames/{domain_name}/basepathmappings/{base_path}", args)

@inline update_base_path_mapping(args) = update_base_path_mapping(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_client_certificate
    update_client_certificate([::AWSConfig], arguments::Dict)
    update_client_certificate([::AWSConfig]; clientcertificate_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/clientcertificates/{clientcertificate_id}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/clientcertificates/{clientcertificate_id}", clientcertificate_id=, <keyword arguments>)

# UpdateClientCertificate Operation

Changes information about an [ClientCertificate](@ref) resource.

# Arguments

## `clientcertificate_id = ::String` -- *Required*
[Required] The identifier of the [ClientCertificate](@ref) resource to be updated.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`ClientCertificate`

# Exceptions

`UnauthorizedException`, `TooManyRequestsException`, `BadRequestException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateClientCertificate)
"""
@inline update_client_certificate(aws::AWSConfig=default_aws_config(); args...) = update_client_certificate(aws, args)

@inline update_client_certificate(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/clientcertificates/{clientcertificate_id}", args)

@inline update_client_certificate(args) = update_client_certificate(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_deployment
    update_deployment([::AWSConfig], arguments::Dict)
    update_deployment([::AWSConfig]; restapi_id=, deployment_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/deployments/{deployment_id}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/deployments/{deployment_id}", restapi_id=, deployment_id=, <keyword arguments>)

# UpdateDeployment Operation

Changes information about a [Deployment](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `deployment_id = ::String` -- *Required*
The replacement identifier for the [Deployment](@ref) resource to change information about.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`Deployment`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException`, `TooManyRequestsException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateDeployment)
"""
@inline update_deployment(aws::AWSConfig=default_aws_config(); args...) = update_deployment(aws, args)

@inline update_deployment(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/deployments/{deployment_id}", args)

@inline update_deployment(args) = update_deployment(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_documentation_part
    update_documentation_part([::AWSConfig], arguments::Dict)
    update_documentation_part([::AWSConfig]; restapi_id=, part_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/documentation/parts/{part_id}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/documentation/parts/{part_id}", restapi_id=, part_id=, <keyword arguments>)

# UpdateDocumentationPart Operation



# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `part_id = ::String` -- *Required*
[Required] The identifier of the to-be-updated documentation part.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`DocumentationPart`

# Exceptions

`BadRequestException`, `UnauthorizedException`, `NotFoundException`, `ConflictException`, `LimitExceededException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateDocumentationPart)
"""
@inline update_documentation_part(aws::AWSConfig=default_aws_config(); args...) = update_documentation_part(aws, args)

@inline update_documentation_part(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/documentation/parts/{part_id}", args)

@inline update_documentation_part(args) = update_documentation_part(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_documentation_version
    update_documentation_version([::AWSConfig], arguments::Dict)
    update_documentation_version([::AWSConfig]; restapi_id=, doc_version=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/documentation/versions/{doc_version}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/documentation/versions/{doc_version}", restapi_id=, doc_version=, <keyword arguments>)

# UpdateDocumentationVersion Operation



# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref)..


## `doc_version = ::String` -- *Required*
[Required] The version identifier of the to-be-updated documentation version.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`DocumentationVersion`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `ConflictException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateDocumentationVersion)
"""
@inline update_documentation_version(aws::AWSConfig=default_aws_config(); args...) = update_documentation_version(aws, args)

@inline update_documentation_version(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/documentation/versions/{doc_version}", args)

@inline update_documentation_version(args) = update_documentation_version(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_domain_name
    update_domain_name([::AWSConfig], arguments::Dict)
    update_domain_name([::AWSConfig]; domain_name=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/domainnames/{domain_name}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/domainnames/{domain_name}", domain_name=, <keyword arguments>)

# UpdateDomainName Operation

Changes information about the [DomainName](@ref) resource.

# Arguments

## `domain_name = ::String` -- *Required*
[Required] The name of the [DomainName](@ref) resource to be changed.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`DomainName`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException`, `ConflictException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateDomainName)
"""
@inline update_domain_name(aws::AWSConfig=default_aws_config(); args...) = update_domain_name(aws, args)

@inline update_domain_name(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/domainnames/{domain_name}", args)

@inline update_domain_name(args) = update_domain_name(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_gateway_response
    update_gateway_response([::AWSConfig], arguments::Dict)
    update_gateway_response([::AWSConfig]; restapi_id=, response_type=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/gatewayresponses/{response_type}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/gatewayresponses/{response_type}", restapi_id=, response_type=, <keyword arguments>)

# UpdateGatewayResponse Operation

Updates a [GatewayResponse](@ref) of a specified response type on the given [RestApi](@ref).

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `response_type = "DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED" or "QUOTA_EXCEEDED"` -- *Required*
[Required]

The response type of the associated [GatewayResponse](@ref). Valid values are

*   ACCESS_DENIED
*   API_CONFIGURATION_ERROR
*   AUTHORIZER_FAILURE
*   AUTHORIZER_CONFIGURATION_ERROR
*   BAD_REQUEST_PARAMETERS
*   BAD_REQUEST_BODY
*   DEFAULT_4XX
*   DEFAULT_5XX
*   EXPIRED_TOKEN
*   INVALID_SIGNATURE
*   INTEGRATION_FAILURE
*   INTEGRATION_TIMEOUT
*   INVALID_API_KEY
*   MISSING_AUTHENTICATION_TOKEN
*   QUOTA_EXCEEDED
*   REQUEST_TOO_LARGE
*   RESOURCE_NOT_FOUND
*   THROTTLED
*   UNAUTHORIZED
*   UNSUPPORTED_MEDIA_TYPE


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`GatewayResponse`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateGatewayResponse)
"""
@inline update_gateway_response(aws::AWSConfig=default_aws_config(); args...) = update_gateway_response(aws, args)

@inline update_gateway_response(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/gatewayresponses/{response_type}", args)

@inline update_gateway_response(args) = update_gateway_response(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_integration
    update_integration([::AWSConfig], arguments::Dict)
    update_integration([::AWSConfig]; restapi_id=, resource_id=, http_method=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", restapi_id=, resource_id=, http_method=, <keyword arguments>)

# UpdateIntegration Operation

Represents an update integration.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] Represents an update integration request's resource identifier.


## `http_method = ::String` -- *Required*
[Required] Represents an update integration request's HTTP method.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`Integration`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateIntegration)
"""
@inline update_integration(aws::AWSConfig=default_aws_config(); args...) = update_integration(aws, args)

@inline update_integration(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", args)

@inline update_integration(args) = update_integration(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_integration_response
    update_integration_response([::AWSConfig], arguments::Dict)
    update_integration_response([::AWSConfig]; restapi_id=, resource_id=, http_method=, status_code=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", restapi_id=, resource_id=, http_method=, status_code=, <keyword arguments>)

# UpdateIntegrationResponse Operation

Represents an update integration response.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] Specifies an update integration response request's resource identifier.


## `http_method = ::String` -- *Required*
[Required] Specifies an update integration response request's HTTP method.


## `status_code = ::String` -- *Required*
[Required] Specifies an update integration response request's status code.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`IntegrationResponse`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `ConflictException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateIntegrationResponse)
"""
@inline update_integration_response(aws::AWSConfig=default_aws_config(); args...) = update_integration_response(aws, args)

@inline update_integration_response(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", args)

@inline update_integration_response(args) = update_integration_response(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_method
    update_method([::AWSConfig], arguments::Dict)
    update_method([::AWSConfig]; restapi_id=, resource_id=, http_method=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", restapi_id=, resource_id=, http_method=, <keyword arguments>)

# UpdateMethod Operation

Updates an existing [Method](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] The [Resource](@ref) identifier for the [Method](@ref) resource.


## `http_method = ::String` -- *Required*
[Required] The HTTP verb of the [Method](@ref) resource.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`Method`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException`, `ConflictException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateMethod)
"""
@inline update_method(aws::AWSConfig=default_aws_config(); args...) = update_method(aws, args)

@inline update_method(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", args)

@inline update_method(args) = update_method(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_method_response
    update_method_response([::AWSConfig], arguments::Dict)
    update_method_response([::AWSConfig]; restapi_id=, resource_id=, http_method=, status_code=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", restapi_id=, resource_id=, http_method=, status_code=, <keyword arguments>)

# UpdateMethodResponse Operation

Updates an existing [MethodResponse](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] The [Resource](@ref) identifier for the [MethodResponse](@ref) resource.


## `http_method = ::String` -- *Required*
[Required] The HTTP verb of the [Method](@ref) resource.


## `status_code = ::String` -- *Required*
[Required] The status code for the [MethodResponse](@ref) resource.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`MethodResponse`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `ConflictException`, `LimitExceededException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateMethodResponse)
"""
@inline update_method_response(aws::AWSConfig=default_aws_config(); args...) = update_method_response(aws, args)

@inline update_method_response(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", args)

@inline update_method_response(args) = update_method_response(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_model
    update_model([::AWSConfig], arguments::Dict)
    update_model([::AWSConfig]; restapi_id=, model_name=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/models/{model_name}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/models/{model_name}", restapi_id=, model_name=, <keyword arguments>)

# UpdateModel Operation

Changes information about a model.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `model_name = ::String` -- *Required*
[Required] The name of the model to update.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`Model`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException`, `ConflictException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateModel)
"""
@inline update_model(aws::AWSConfig=default_aws_config(); args...) = update_model(aws, args)

@inline update_model(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/models/{model_name}", args)

@inline update_model(args) = update_model(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_request_validator
    update_request_validator([::AWSConfig], arguments::Dict)
    update_request_validator([::AWSConfig]; restapi_id=, requestvalidator_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", restapi_id=, requestvalidator_id=, <keyword arguments>)

# UpdateRequestValidator Operation

Updates a [RequestValidator](@ref) of a given [RestApi](@ref).

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `requestvalidator_id = ::String` -- *Required*
[Required] The identifier of [RequestValidator](@ref) to be updated.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`RequestValidator`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateRequestValidator)
"""
@inline update_request_validator(aws::AWSConfig=default_aws_config(); args...) = update_request_validator(aws, args)

@inline update_request_validator(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", args)

@inline update_request_validator(args) = update_request_validator(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_resource
    update_resource([::AWSConfig], arguments::Dict)
    update_resource([::AWSConfig]; restapi_id=, resource_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/resources/{resource_id}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/resources/{resource_id}", restapi_id=, resource_id=, <keyword arguments>)

# UpdateResource Operation

Changes information about a [Resource](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `resource_id = ::String` -- *Required*
[Required] The identifier of the [Resource](@ref) resource.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`Resource`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `ConflictException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateResource)
"""
@inline update_resource(aws::AWSConfig=default_aws_config(); args...) = update_resource(aws, args)

@inline update_resource(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/resources/{resource_id}", args)

@inline update_resource(args) = update_resource(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_rest_api
    update_rest_api([::AWSConfig], arguments::Dict)
    update_rest_api([::AWSConfig]; restapi_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}", restapi_id=, <keyword arguments>)

# UpdateRestApi Operation

Changes information about the specified API.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`RestApi`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `ConflictException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateRestApi)
"""
@inline update_rest_api(aws::AWSConfig=default_aws_config(); args...) = update_rest_api(aws, args)

@inline update_rest_api(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}", args)

@inline update_rest_api(args) = update_rest_api(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_stage
    update_stage([::AWSConfig], arguments::Dict)
    update_stage([::AWSConfig]; restapi_id=, stage_name=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/stages/{stage_name}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/restapis/{restapi_id}/stages/{stage_name}", restapi_id=, stage_name=, <keyword arguments>)

# UpdateStage Operation

Changes information about a [Stage](@ref) resource.

# Arguments

## `restapi_id = ::String` -- *Required*
[Required] The string identifier of the associated [RestApi](@ref).


## `stage_name = ::String` -- *Required*
[Required] The name of the [Stage](@ref) resource to change information about.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`Stage`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `ConflictException`, `BadRequestException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateStage)
"""
@inline update_stage(aws::AWSConfig=default_aws_config(); args...) = update_stage(aws, args)

@inline update_stage(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/restapis/{restapi_id}/stages/{stage_name}", args)

@inline update_stage(args) = update_stage(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_usage
    update_usage([::AWSConfig], arguments::Dict)
    update_usage([::AWSConfig]; usageplanId=, keyId=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/usageplans/{usageplanId}/keys/{keyId}/usage", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/usageplans/{usageplanId}/keys/{keyId}/usage", usageplanId=, keyId=, <keyword arguments>)

# UpdateUsage Operation

Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key.

# Arguments

## `usageplanId = ::String` -- *Required*
[Required] The Id of the usage plan associated with the usage data.


## `keyId = ::String` -- *Required*
[Required] The identifier of the API key associated with the usage plan in which a temporary extension is granted to the remaining quota.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`Usage`

# Exceptions

`UnauthorizedException`, `TooManyRequestsException`, `BadRequestException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateUsage)
"""
@inline update_usage(aws::AWSConfig=default_aws_config(); args...) = update_usage(aws, args)

@inline update_usage(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/usageplans/{usageplanId}/keys/{keyId}/usage", args)

@inline update_usage(args) = update_usage(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_usage_plan
    update_usage_plan([::AWSConfig], arguments::Dict)
    update_usage_plan([::AWSConfig]; usageplanId=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/usageplans/{usageplanId}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/usageplans/{usageplanId}", usageplanId=, <keyword arguments>)

# UpdateUsagePlan Operation

Updates a usage plan of a given plan Id.

# Arguments

## `usageplanId = ::String` -- *Required*
[Required] The Id of the to-be-updated usage plan.


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`UsagePlan`

# Exceptions

`UnauthorizedException`, `TooManyRequestsException`, `BadRequestException`, `NotFoundException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateUsagePlan)
"""
@inline update_usage_plan(aws::AWSConfig=default_aws_config(); args...) = update_usage_plan(aws, args)

@inline update_usage_plan(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/usageplans/{usageplanId}", args)

@inline update_usage_plan(args) = update_usage_plan(default_aws_config(), args)


"""
    using AWSSDK.APIGateway.update_vpc_link
    update_vpc_link([::AWSConfig], arguments::Dict)
    update_vpc_link([::AWSConfig]; vpclink_id=, <keyword arguments>)

    using AWSCore.Services.apigateway
    apigateway([::AWSConfig], "PATCH", "/vpclinks/{vpclink_id}", arguments::Dict)
    apigateway([::AWSConfig], "PATCH", "/vpclinks/{vpclink_id}", vpclink_id=, <keyword arguments>)

# UpdateVpcLink Operation

Updates an existing [VpcLink](@ref) of a specified identifier.

# Arguments

## `vpclink_id = ::String` -- *Required*
[Required] The identifier of the [VpcLink](@ref). It is used in an [Integration](@ref) to reference this [VpcLink](@ref).


## `patchOperations = [[ ... ], ...]`
A list of update operations to be applied to the specified resource and in the order specified in this list.
```
 patchOperations = [[
        "op" =>  "add", "remove", "replace", "move", "copy" or "test",
        "path" =>  ::String,
        "value" =>  ::String,
        "from" =>  ::String
    ], ...]
```



# Returns

`VpcLink`

# Exceptions

`UnauthorizedException`, `NotFoundException`, `BadRequestException`, `ConflictException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/apigateway-2015-07-09/UpdateVpcLink)
"""
@inline update_vpc_link(aws::AWSConfig=default_aws_config(); args...) = update_vpc_link(aws, args)

@inline update_vpc_link(aws::AWSConfig, args) = AWSCore.Services.apigateway(aws, "PATCH", "/vpclinks/{vpclink_id}", args)

@inline update_vpc_link(args) = update_vpc_link(default_aws_config(), args)




end # module APIGateway


#==============================================================================#
# End of file
#==============================================================================#
