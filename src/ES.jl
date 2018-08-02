#==============================================================================#
# ES.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/es-2015-01-01.normal.json
#==============================================================================#

__precompile__()

module ES

using AWSCore


"""
    using AWSSDK.ES.add_tags
    add_tags([::AWSConfig], arguments::Dict)
    add_tags([::AWSConfig]; ARN=, TagList=)

    using AWSCore.Services.es
    es([::AWSConfig], "POST", "/2015-01-01/tags", arguments::Dict)
    es([::AWSConfig], "POST", "/2015-01-01/tags", ARN=, TagList=)

# AddTags Operation

Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags. See [Tagging Amazon Elasticsearch Service Domains for more information.](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging)

# Arguments

## `ARN = ::String` -- *Required*
Specify the `ARN` for which you want to add the tags.


## `TagList = [[ ... ], ...]` -- *Required*
List of `Tag` that need to be added for the Elasticsearch domain.
```
 TagList = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Exceptions

`BaseException`, `LimitExceededException`, `ValidationException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/AddTags)
"""
@inline add_tags(aws::AWSConfig=default_aws_config(); args...) = add_tags(aws, args)

@inline add_tags(aws::AWSConfig, args) = AWSCore.Services.es(aws, "POST", "/2015-01-01/tags", args)

@inline add_tags(args) = add_tags(default_aws_config(), args)


"""
    using AWSSDK.ES.create_elasticsearch_domain
    create_elasticsearch_domain([::AWSConfig], arguments::Dict)
    create_elasticsearch_domain([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.es
    es([::AWSConfig], "POST", "/2015-01-01/es/domain", arguments::Dict)
    es([::AWSConfig], "POST", "/2015-01-01/es/domain", DomainName=, <keyword arguments>)

# CreateElasticsearchDomain Operation

Creates a new Elasticsearch domain. For more information, see [Creating Elasticsearch Domains](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains) in the *Amazon Elasticsearch Service Developer Guide*.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).


## `ElasticsearchVersion = ::String`
String of format X.Y to specify version for the Elasticsearch domain eg. "1.5" or "2.3". For more information, see [Creating Elasticsearch Domains](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains) in the *Amazon Elasticsearch Service Developer Guide*.


## `ElasticsearchClusterConfig = [ ... ]`
Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster.
```
 ElasticsearchClusterConfig = [
        "InstanceType" =>  "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch" or "i3.16xlarge.elasticsearch",
        "InstanceCount" =>  ::Int,
        "DedicatedMasterEnabled" =>  ::Bool,
        "ZoneAwarenessEnabled" =>  ::Bool,
        "DedicatedMasterType" =>  "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch" or "i3.16xlarge.elasticsearch",
        "DedicatedMasterCount" =>  ::Int
    ]
```

## `EBSOptions = [ ... ]`
Options to enable, disable and specify the type and size of EBS storage volumes.
```
 EBSOptions = [
        "EBSEnabled" =>  ::Bool,
        "VolumeType" =>  "standard", "gp2" or "io1",
        "VolumeSize" =>  ::Int,
        "Iops" =>  ::Int
    ]
```

## `AccessPolicies = ::String`
IAM access policy as a JSON-formatted string.


## `SnapshotOptions = ["AutomatedSnapshotStartHour" =>  ::Int]`
Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours.


## `VPCOptions = [ ... ]`
Options to specify the subnets and security groups for VPC endpoint. For more information, see [Creating a VPC](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc) in *VPC Endpoints for Amazon Elasticsearch Service Domains*
```
 VPCOptions = [
        "SubnetIds" =>  [::String, ...],
        "SecurityGroupIds" =>  [::String, ...]
    ]
```

## `CognitoOptions = [ ... ]`
Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see [Amazon Cognito Authentication for Kibana](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html).
```
 CognitoOptions = [
        "Enabled" =>  ::Bool,
        "UserPoolId" =>  ::String,
        "IdentityPoolId" =>  ::String,
        "RoleArn" =>  ::String
    ]
```

## `EncryptionAtRestOptions = [ ... ]`
Specifies the Encryption At Rest Options.
```
 EncryptionAtRestOptions = [
        "Enabled" =>  ::Bool,
        "KmsKeyId" =>  ::String
    ]
```

## `AdvancedOptions = ::Dict{String,String}`
Option to allow references to indices in an HTTP request body. Must be `false` when configuring access to individual sub-resources. By default, the value is `true`. See [Configuration Advanced Options](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options) for more information.


## `LogPublishingOptions = ::Dict{String,String}`
Map of `LogType` and `LogPublishingOption`, each containing options to publish a given type of Elasticsearch log.




# Returns

`CreateElasticsearchDomainResponse`

# Exceptions

`BaseException`, `DisabledOperationException`, `InternalException`, `InvalidTypeException`, `LimitExceededException`, `ResourceAlreadyExistsException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/CreateElasticsearchDomain)
"""
@inline create_elasticsearch_domain(aws::AWSConfig=default_aws_config(); args...) = create_elasticsearch_domain(aws, args)

@inline create_elasticsearch_domain(aws::AWSConfig, args) = AWSCore.Services.es(aws, "POST", "/2015-01-01/es/domain", args)

@inline create_elasticsearch_domain(args) = create_elasticsearch_domain(default_aws_config(), args)


"""
    using AWSSDK.ES.delete_elasticsearch_domain
    delete_elasticsearch_domain([::AWSConfig], arguments::Dict)
    delete_elasticsearch_domain([::AWSConfig]; DomainName=)

    using AWSCore.Services.es
    es([::AWSConfig], "DELETE", "/2015-01-01/es/domain/{DomainName}", arguments::Dict)
    es([::AWSConfig], "DELETE", "/2015-01-01/es/domain/{DomainName}", DomainName=)

# DeleteElasticsearchDomain Operation

Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the Elasticsearch domain that you want to permanently delete.




# Returns

`DeleteElasticsearchDomainResponse`

# Exceptions

`BaseException`, `InternalException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/DeleteElasticsearchDomain)
"""
@inline delete_elasticsearch_domain(aws::AWSConfig=default_aws_config(); args...) = delete_elasticsearch_domain(aws, args)

@inline delete_elasticsearch_domain(aws::AWSConfig, args) = AWSCore.Services.es(aws, "DELETE", "/2015-01-01/es/domain/{DomainName}", args)

@inline delete_elasticsearch_domain(args) = delete_elasticsearch_domain(default_aws_config(), args)


"""
    using AWSSDK.ES.delete_elasticsearch_service_role
    delete_elasticsearch_service_role([::AWSConfig])
    

    using AWSCore.Services.es
    es([::AWSConfig], "DELETE", "/2015-01-01/es/role",)
    

# DeleteElasticsearchServiceRole Operation

Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See [Deleting Elasticsearch Service Role](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr) in *VPC Endpoints for Amazon Elasticsearch Service Domains*.

# Exceptions

`BaseException`, `InternalException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/DeleteElasticsearchServiceRole)
"""
@inline delete_elasticsearch_service_role(aws::AWSConfig=default_aws_config(); args...) = delete_elasticsearch_service_role(aws, args)

@inline delete_elasticsearch_service_role(aws::AWSConfig, args) = AWSCore.Services.es(aws, "DELETE", "/2015-01-01/es/role", args)

@inline delete_elasticsearch_service_role(args) = delete_elasticsearch_service_role(default_aws_config(), args)


"""
    using AWSSDK.ES.describe_elasticsearch_domain
    describe_elasticsearch_domain([::AWSConfig], arguments::Dict)
    describe_elasticsearch_domain([::AWSConfig]; DomainName=)

    using AWSCore.Services.es
    es([::AWSConfig], "GET", "/2015-01-01/es/domain/{DomainName}", arguments::Dict)
    es([::AWSConfig], "GET", "/2015-01-01/es/domain/{DomainName}", DomainName=)

# DescribeElasticsearchDomain Operation

Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the Elasticsearch domain for which you want information.




# Returns

`DescribeElasticsearchDomainResponse`

# Exceptions

`BaseException`, `InternalException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/DescribeElasticsearchDomain)
"""
@inline describe_elasticsearch_domain(aws::AWSConfig=default_aws_config(); args...) = describe_elasticsearch_domain(aws, args)

@inline describe_elasticsearch_domain(aws::AWSConfig, args) = AWSCore.Services.es(aws, "GET", "/2015-01-01/es/domain/{DomainName}", args)

@inline describe_elasticsearch_domain(args) = describe_elasticsearch_domain(default_aws_config(), args)


"""
    using AWSSDK.ES.describe_elasticsearch_domain_config
    describe_elasticsearch_domain_config([::AWSConfig], arguments::Dict)
    describe_elasticsearch_domain_config([::AWSConfig]; DomainName=)

    using AWSCore.Services.es
    es([::AWSConfig], "GET", "/2015-01-01/es/domain/{DomainName}/config", arguments::Dict)
    es([::AWSConfig], "GET", "/2015-01-01/es/domain/{DomainName}/config", DomainName=)

# DescribeElasticsearchDomainConfig Operation

Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.

# Arguments

## `DomainName = ::String` -- *Required*
The Elasticsearch domain that you want to get information about.




# Returns

`DescribeElasticsearchDomainConfigResponse`

# Exceptions

`BaseException`, `InternalException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/DescribeElasticsearchDomainConfig)
"""
@inline describe_elasticsearch_domain_config(aws::AWSConfig=default_aws_config(); args...) = describe_elasticsearch_domain_config(aws, args)

@inline describe_elasticsearch_domain_config(aws::AWSConfig, args) = AWSCore.Services.es(aws, "GET", "/2015-01-01/es/domain/{DomainName}/config", args)

@inline describe_elasticsearch_domain_config(args) = describe_elasticsearch_domain_config(default_aws_config(), args)


"""
    using AWSSDK.ES.describe_elasticsearch_domains
    describe_elasticsearch_domains([::AWSConfig], arguments::Dict)
    describe_elasticsearch_domains([::AWSConfig]; DomainNames=)

    using AWSCore.Services.es
    es([::AWSConfig], "POST", "/2015-01-01/es/domain-info", arguments::Dict)
    es([::AWSConfig], "POST", "/2015-01-01/es/domain-info", DomainNames=)

# DescribeElasticsearchDomains Operation

Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.

# Arguments

## `DomainNames = [::String, ...]` -- *Required*
The Elasticsearch domains for which you want information.




# Returns

`DescribeElasticsearchDomainsResponse`

# Exceptions

`BaseException`, `InternalException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/DescribeElasticsearchDomains)
"""
@inline describe_elasticsearch_domains(aws::AWSConfig=default_aws_config(); args...) = describe_elasticsearch_domains(aws, args)

@inline describe_elasticsearch_domains(aws::AWSConfig, args) = AWSCore.Services.es(aws, "POST", "/2015-01-01/es/domain-info", args)

@inline describe_elasticsearch_domains(args) = describe_elasticsearch_domains(default_aws_config(), args)


"""
    using AWSSDK.ES.describe_elasticsearch_instance_type_limits
    describe_elasticsearch_instance_type_limits([::AWSConfig], arguments::Dict)
    describe_elasticsearch_instance_type_limits([::AWSConfig]; InstanceType=, ElasticsearchVersion=, <keyword arguments>)

    using AWSCore.Services.es
    es([::AWSConfig], "GET", "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}", arguments::Dict)
    es([::AWSConfig], "GET", "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}", InstanceType=, ElasticsearchVersion=, <keyword arguments>)

# DescribeElasticsearchInstanceTypeLimits Operation

Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion. When modifying existing Domain, specify the `[DomainName](@ref)` to know what Limits are supported for modifying.

# Arguments

## `domainName = ::String`
DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for Elasticsearch `[Limits](@ref)` for existing domain.


## `InstanceType = "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch" or "i3.16xlarge.elasticsearch"` -- *Required*
The instance type for an Elasticsearch cluster for which Elasticsearch `[Limits](@ref)` are needed.


## `ElasticsearchVersion = ::String` -- *Required*
Version of Elasticsearch for which `[Limits](@ref)` are needed.




# Returns

`DescribeElasticsearchInstanceTypeLimitsResponse`

# Exceptions

`BaseException`, `InternalException`, `InvalidTypeException`, `LimitExceededException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/DescribeElasticsearchInstanceTypeLimits)
"""
@inline describe_elasticsearch_instance_type_limits(aws::AWSConfig=default_aws_config(); args...) = describe_elasticsearch_instance_type_limits(aws, args)

@inline describe_elasticsearch_instance_type_limits(aws::AWSConfig, args) = AWSCore.Services.es(aws, "GET", "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}", args)

@inline describe_elasticsearch_instance_type_limits(args) = describe_elasticsearch_instance_type_limits(default_aws_config(), args)


"""
    using AWSSDK.ES.describe_reserved_elasticsearch_instance_offerings
    describe_reserved_elasticsearch_instance_offerings([::AWSConfig], arguments::Dict)
    describe_reserved_elasticsearch_instance_offerings([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.es
    es([::AWSConfig], "GET", "/2015-01-01/es/reservedInstanceOfferings", arguments::Dict)
    es([::AWSConfig], "GET", "/2015-01-01/es/reservedInstanceOfferings", <keyword arguments>)

# DescribeReservedElasticsearchInstanceOfferings Operation

Lists available reserved Elasticsearch instance offerings.

# Arguments

## `offeringId = ::String`
The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.


## `maxResults = ::Int`
Set this value to limit the number of results returned. If not specified, defaults to 100.


## `nextToken = ::String`
NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.




# Returns

`DescribeReservedElasticsearchInstanceOfferingsResponse`

# Exceptions

`ResourceNotFoundException`, `ValidationException`, `DisabledOperationException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/DescribeReservedElasticsearchInstanceOfferings)
"""
@inline describe_reserved_elasticsearch_instance_offerings(aws::AWSConfig=default_aws_config(); args...) = describe_reserved_elasticsearch_instance_offerings(aws, args)

@inline describe_reserved_elasticsearch_instance_offerings(aws::AWSConfig, args) = AWSCore.Services.es(aws, "GET", "/2015-01-01/es/reservedInstanceOfferings", args)

@inline describe_reserved_elasticsearch_instance_offerings(args) = describe_reserved_elasticsearch_instance_offerings(default_aws_config(), args)


"""
    using AWSSDK.ES.describe_reserved_elasticsearch_instances
    describe_reserved_elasticsearch_instances([::AWSConfig], arguments::Dict)
    describe_reserved_elasticsearch_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.es
    es([::AWSConfig], "GET", "/2015-01-01/es/reservedInstances", arguments::Dict)
    es([::AWSConfig], "GET", "/2015-01-01/es/reservedInstances", <keyword arguments>)

# DescribeReservedElasticsearchInstances Operation

Returns information about reserved Elasticsearch instances for this account.

# Arguments

## `reservationId = ::String`
The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the specified reserved Elasticsearch instance ID.


## `maxResults = ::Int`
Set this value to limit the number of results returned. If not specified, defaults to 100.


## `nextToken = ::String`
NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.




# Returns

`DescribeReservedElasticsearchInstancesResponse`

# Exceptions

`ResourceNotFoundException`, `InternalException`, `ValidationException` or `DisabledOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/DescribeReservedElasticsearchInstances)
"""
@inline describe_reserved_elasticsearch_instances(aws::AWSConfig=default_aws_config(); args...) = describe_reserved_elasticsearch_instances(aws, args)

@inline describe_reserved_elasticsearch_instances(aws::AWSConfig, args) = AWSCore.Services.es(aws, "GET", "/2015-01-01/es/reservedInstances", args)

@inline describe_reserved_elasticsearch_instances(args) = describe_reserved_elasticsearch_instances(default_aws_config(), args)


"""
    using AWSSDK.ES.list_domain_names
    list_domain_names([::AWSConfig])
    

    using AWSCore.Services.es
    es([::AWSConfig], "GET", "/2015-01-01/domain",)
    

# ListDomainNames Operation

Returns the name of all Elasticsearch domains owned by the current user's account.

# Returns

`ListDomainNamesResponse`

# Exceptions

`BaseException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/ListDomainNames)
"""
@inline list_domain_names(aws::AWSConfig=default_aws_config(); args...) = list_domain_names(aws, args)

@inline list_domain_names(aws::AWSConfig, args) = AWSCore.Services.es(aws, "GET", "/2015-01-01/domain", args)

@inline list_domain_names(args) = list_domain_names(default_aws_config(), args)


"""
    using AWSSDK.ES.list_elasticsearch_instance_types
    list_elasticsearch_instance_types([::AWSConfig], arguments::Dict)
    list_elasticsearch_instance_types([::AWSConfig]; ElasticsearchVersion=, <keyword arguments>)

    using AWSCore.Services.es
    es([::AWSConfig], "GET", "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}", arguments::Dict)
    es([::AWSConfig], "GET", "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}", ElasticsearchVersion=, <keyword arguments>)

# ListElasticsearchInstanceTypes Operation

List all Elasticsearch instance types that are supported for given ElasticsearchVersion

# Arguments

## `ElasticsearchVersion = ::String` -- *Required*
Version of Elasticsearch for which list of supported elasticsearch instance types are needed.


## `domainName = ::String`
DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for list of available Elasticsearch instance types when modifying existing domain.


## `maxResults = ::Int`
Set this value to limit the number of results returned. Value provided must be greater than 30 else it wont be honored.


## `nextToken = ::String`
NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.




# Returns

`ListElasticsearchInstanceTypesResponse`

# Exceptions

`BaseException`, `InternalException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/ListElasticsearchInstanceTypes)
"""
@inline list_elasticsearch_instance_types(aws::AWSConfig=default_aws_config(); args...) = list_elasticsearch_instance_types(aws, args)

@inline list_elasticsearch_instance_types(aws::AWSConfig, args) = AWSCore.Services.es(aws, "GET", "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}", args)

@inline list_elasticsearch_instance_types(args) = list_elasticsearch_instance_types(default_aws_config(), args)


"""
    using AWSSDK.ES.list_elasticsearch_versions
    list_elasticsearch_versions([::AWSConfig], arguments::Dict)
    list_elasticsearch_versions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.es
    es([::AWSConfig], "GET", "/2015-01-01/es/versions", arguments::Dict)
    es([::AWSConfig], "GET", "/2015-01-01/es/versions", <keyword arguments>)

# ListElasticsearchVersions Operation

List all supported Elasticsearch versions

# Arguments

## `maxResults = ::Int`
Set this value to limit the number of results returned. Value provided must be greater than 10 else it wont be honored.


## `nextToken = ::String`





# Returns

`ListElasticsearchVersionsResponse`

# Exceptions

`BaseException`, `InternalException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/ListElasticsearchVersions)
"""
@inline list_elasticsearch_versions(aws::AWSConfig=default_aws_config(); args...) = list_elasticsearch_versions(aws, args)

@inline list_elasticsearch_versions(aws::AWSConfig, args) = AWSCore.Services.es(aws, "GET", "/2015-01-01/es/versions", args)

@inline list_elasticsearch_versions(args) = list_elasticsearch_versions(default_aws_config(), args)


"""
    using AWSSDK.ES.list_tags
    list_tags([::AWSConfig], arguments::Dict)
    list_tags([::AWSConfig]; arn=)

    using AWSCore.Services.es
    es([::AWSConfig], "GET", "/2015-01-01/tags/", arguments::Dict)
    es([::AWSConfig], "GET", "/2015-01-01/tags/", arn=)

# ListTags Operation

Returns all tags for the given Elasticsearch domain.

# Arguments

## `arn = ::String` -- *Required*
Specify the `ARN` for the Elasticsearch domain to which the tags are attached that you want to view.




# Returns

`ListTagsResponse`

# Exceptions

`BaseException`, `ResourceNotFoundException`, `ValidationException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/ListTags)
"""
@inline list_tags(aws::AWSConfig=default_aws_config(); args...) = list_tags(aws, args)

@inline list_tags(aws::AWSConfig, args) = AWSCore.Services.es(aws, "GET", "/2015-01-01/tags/", args)

@inline list_tags(args) = list_tags(default_aws_config(), args)


"""
    using AWSSDK.ES.purchase_reserved_elasticsearch_instance_offering
    purchase_reserved_elasticsearch_instance_offering([::AWSConfig], arguments::Dict)
    purchase_reserved_elasticsearch_instance_offering([::AWSConfig]; ReservedElasticsearchInstanceOfferingId=, ReservationName=, <keyword arguments>)

    using AWSCore.Services.es
    es([::AWSConfig], "POST", "/2015-01-01/es/purchaseReservedInstanceOffering", arguments::Dict)
    es([::AWSConfig], "POST", "/2015-01-01/es/purchaseReservedInstanceOffering", ReservedElasticsearchInstanceOfferingId=, ReservationName=, <keyword arguments>)

# PurchaseReservedElasticsearchInstanceOffering Operation

Allows you to purchase reserved Elasticsearch instances.

# Arguments

## `ReservedElasticsearchInstanceOfferingId = ::String` -- *Required*
The ID of the reserved Elasticsearch instance offering to purchase.


## `ReservationName = ::String` -- *Required*
A customer-specified identifier to track this reservation.


## `InstanceCount = ::Int`
The number of Elasticsearch instances to reserve.




# Returns

`PurchaseReservedElasticsearchInstanceOfferingResponse`

# Exceptions

`ResourceNotFoundException`, `ResourceAlreadyExistsException`, `LimitExceededException`, `DisabledOperationException`, `ValidationException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/PurchaseReservedElasticsearchInstanceOffering)
"""
@inline purchase_reserved_elasticsearch_instance_offering(aws::AWSConfig=default_aws_config(); args...) = purchase_reserved_elasticsearch_instance_offering(aws, args)

@inline purchase_reserved_elasticsearch_instance_offering(aws::AWSConfig, args) = AWSCore.Services.es(aws, "POST", "/2015-01-01/es/purchaseReservedInstanceOffering", args)

@inline purchase_reserved_elasticsearch_instance_offering(args) = purchase_reserved_elasticsearch_instance_offering(default_aws_config(), args)


"""
    using AWSSDK.ES.remove_tags
    remove_tags([::AWSConfig], arguments::Dict)
    remove_tags([::AWSConfig]; ARN=, TagKeys=)

    using AWSCore.Services.es
    es([::AWSConfig], "POST", "/2015-01-01/tags-removal", arguments::Dict)
    es([::AWSConfig], "POST", "/2015-01-01/tags-removal", ARN=, TagKeys=)

# RemoveTags Operation

Removes the specified set of tags from the specified Elasticsearch domain.

# Arguments

## `ARN = ::String` -- *Required*
Specifies the `ARN` for the Elasticsearch domain from which you want to delete the specified tags.


## `TagKeys = [::String, ...]` -- *Required*
Specifies the `TagKey` list which you want to remove from the Elasticsearch domain.




# Exceptions

`BaseException`, `ValidationException` or `InternalException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/RemoveTags)
"""
@inline remove_tags(aws::AWSConfig=default_aws_config(); args...) = remove_tags(aws, args)

@inline remove_tags(aws::AWSConfig, args) = AWSCore.Services.es(aws, "POST", "/2015-01-01/tags-removal", args)

@inline remove_tags(args) = remove_tags(default_aws_config(), args)


"""
    using AWSSDK.ES.update_elasticsearch_domain_config
    update_elasticsearch_domain_config([::AWSConfig], arguments::Dict)
    update_elasticsearch_domain_config([::AWSConfig]; DomainName=, <keyword arguments>)

    using AWSCore.Services.es
    es([::AWSConfig], "POST", "/2015-01-01/es/domain/{DomainName}/config", arguments::Dict)
    es([::AWSConfig], "POST", "/2015-01-01/es/domain/{DomainName}/config", DomainName=, <keyword arguments>)

# UpdateElasticsearchDomainConfig Operation

Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances.

# Arguments

## `DomainName = ::String` -- *Required*
The name of the Elasticsearch domain that you are updating.


## `ElasticsearchClusterConfig = [ ... ]`
The type and number of instances to instantiate for the domain cluster.
```
 ElasticsearchClusterConfig = [
        "InstanceType" =>  "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch" or "i3.16xlarge.elasticsearch",
        "InstanceCount" =>  ::Int,
        "DedicatedMasterEnabled" =>  ::Bool,
        "ZoneAwarenessEnabled" =>  ::Bool,
        "DedicatedMasterType" =>  "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch", "d2.xlarge.elasticsearch", "d2.2xlarge.elasticsearch", "d2.4xlarge.elasticsearch", "d2.8xlarge.elasticsearch", "c4.large.elasticsearch", "c4.xlarge.elasticsearch", "c4.2xlarge.elasticsearch", "c4.4xlarge.elasticsearch", "c4.8xlarge.elasticsearch", "r4.large.elasticsearch", "r4.xlarge.elasticsearch", "r4.2xlarge.elasticsearch", "r4.4xlarge.elasticsearch", "r4.8xlarge.elasticsearch", "r4.16xlarge.elasticsearch", "i3.large.elasticsearch", "i3.xlarge.elasticsearch", "i3.2xlarge.elasticsearch", "i3.4xlarge.elasticsearch", "i3.8xlarge.elasticsearch" or "i3.16xlarge.elasticsearch",
        "DedicatedMasterCount" =>  ::Int
    ]
```

## `EBSOptions = [ ... ]`
Specify the type and size of the EBS volume that you want to use.
```
 EBSOptions = [
        "EBSEnabled" =>  ::Bool,
        "VolumeType" =>  "standard", "gp2" or "io1",
        "VolumeSize" =>  ::Int,
        "Iops" =>  ::Int
    ]
```

## `SnapshotOptions = ["AutomatedSnapshotStartHour" =>  ::Int]`
Option to set the time, in UTC format, for the daily automated snapshot. Default value is `0` hours.


## `VPCOptions = [ ... ]`
Options to specify the subnets and security groups for VPC endpoint. For more information, see [Creating a VPC](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc) in *VPC Endpoints for Amazon Elasticsearch Service Domains*
```
 VPCOptions = [
        "SubnetIds" =>  [::String, ...],
        "SecurityGroupIds" =>  [::String, ...]
    ]
```

## `CognitoOptions = [ ... ]`
Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see [Amazon Cognito Authentication for Kibana](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html).
```
 CognitoOptions = [
        "Enabled" =>  ::Bool,
        "UserPoolId" =>  ::String,
        "IdentityPoolId" =>  ::String,
        "RoleArn" =>  ::String
    ]
```

## `AdvancedOptions = ::Dict{String,String}`
Modifies the advanced option to allow references to indices in an HTTP request body. Must be `false` when configuring access to individual sub-resources. By default, the value is `true`. See [Configuration Advanced Options](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options) for more information.


## `AccessPolicies = ::String`
IAM access policy as a JSON-formatted string.


## `LogPublishingOptions = ::Dict{String,String}`
Map of `LogType` and `LogPublishingOption`, each containing options to publish a given type of Elasticsearch log.




# Returns

`UpdateElasticsearchDomainConfigResponse`

# Exceptions

`BaseException`, `InternalException`, `InvalidTypeException`, `LimitExceededException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/es-2015-01-01/UpdateElasticsearchDomainConfig)
"""
@inline update_elasticsearch_domain_config(aws::AWSConfig=default_aws_config(); args...) = update_elasticsearch_domain_config(aws, args)

@inline update_elasticsearch_domain_config(aws::AWSConfig, args) = AWSCore.Services.es(aws, "POST", "/2015-01-01/es/domain/{DomainName}/config", args)

@inline update_elasticsearch_domain_config(args) = update_elasticsearch_domain_config(default_aws_config(), args)




end # module ES


#==============================================================================#
# End of file
#==============================================================================#
