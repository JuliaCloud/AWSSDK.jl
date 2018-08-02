#==============================================================================#
# ServiceDiscovery.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/servicediscovery-2017-03-14.normal.json
#==============================================================================#

__precompile__()

module ServiceDiscovery

using AWSCore


"""
    using AWSSDK.ServiceDiscovery.create_private_dns_namespace
    create_private_dns_namespace([::AWSConfig], arguments::Dict)
    create_private_dns_namespace([::AWSConfig]; Name=, Vpc=, <keyword arguments>)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "CreatePrivateDnsNamespace", arguments::Dict)
    servicediscovery([::AWSConfig], "CreatePrivateDnsNamespace", Name=, Vpc=, <keyword arguments>)

# CreatePrivateDnsNamespace Operation

Creates a private namespace based on DNS, which will be visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace `example.com` and name your service `backend`, the resulting DNS name for the service will be `backend.example.com`. For the current limit on the number of namespaces that you can create using the same AWS account, see [Limits on Auto Naming](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities-autonaming) in the *Route 53 Developer Guide*.

# Arguments

## `Name = ::String` -- *Required*
The name that you want to assign to this namespace. When you create a namespace, Amazon Route 53 automatically creates a hosted zone that has the same name as the namespace.


## `CreatorRequestId = ::String`
A unique string that identifies the request and that allows failed `CreatePrivateDnsNamespace` requests to be retried without the risk of executing the operation twice. `CreatorRequestId` can be any unique string, for example, a date/time stamp.


## `Description = ::String`
A description for the namespace.


## `Vpc = ::String` -- *Required*
The ID of the Amazon VPC that you want to associate the namespace with.




# Returns

`CreatePrivateDnsNamespaceResponse`

# Exceptions

`InvalidInput`, `NamespaceAlreadyExists`, `ResourceLimitExceeded` or `DuplicateRequest`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreatePrivateDnsNamespace)
"""
@inline create_private_dns_namespace(aws::AWSConfig=default_aws_config(); args...) = create_private_dns_namespace(aws, args)

@inline create_private_dns_namespace(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "CreatePrivateDnsNamespace", args)

@inline create_private_dns_namespace(args) = create_private_dns_namespace(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.create_public_dns_namespace
    create_public_dns_namespace([::AWSConfig], arguments::Dict)
    create_public_dns_namespace([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "CreatePublicDnsNamespace", arguments::Dict)
    servicediscovery([::AWSConfig], "CreatePublicDnsNamespace", Name=, <keyword arguments>)

# CreatePublicDnsNamespace Operation

Creates a public namespace based on DNS, which will be visible on the internet. The namespace defines your service naming scheme. For example, if you name your namespace `example.com` and name your service `backend`, the resulting DNS name for the service will be `backend.example.com`. For the current limit on the number of namespaces that you can create using the same AWS account, see [Limits on Auto Naming](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities-autonaming) in the *Route 53 Developer Guide*.

# Arguments

## `Name = ::String` -- *Required*
The name that you want to assign to this namespace.


## `CreatorRequestId = ::String`
A unique string that identifies the request and that allows failed `CreatePublicDnsNamespace` requests to be retried without the risk of executing the operation twice. `CreatorRequestId` can be any unique string, for example, a date/time stamp.


## `Description = ::String`
A description for the namespace.




# Returns

`CreatePublicDnsNamespaceResponse`

# Exceptions

`InvalidInput`, `NamespaceAlreadyExists`, `ResourceLimitExceeded` or `DuplicateRequest`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreatePublicDnsNamespace)
"""
@inline create_public_dns_namespace(aws::AWSConfig=default_aws_config(); args...) = create_public_dns_namespace(aws, args)

@inline create_public_dns_namespace(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "CreatePublicDnsNamespace", args)

@inline create_public_dns_namespace(args) = create_public_dns_namespace(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.create_service
    create_service([::AWSConfig], arguments::Dict)
    create_service([::AWSConfig]; Name=, DnsConfig=, <keyword arguments>)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "CreateService", arguments::Dict)
    servicediscovery([::AWSConfig], "CreateService", Name=, DnsConfig=, <keyword arguments>)

# CreateService Operation

Creates a service, which defines the configuration for the following entities:

*   Up to three records (A, AAAA, and SRV) or one CNAME record

*   Optionally, a health check

After you create the service, you can submit a [RegisterInstance](@ref) request, and Amazon Route 53 uses the values in the configuration to create the specified entities.

For the current limit on the number of instances that you can register using the same namespace and using the same service, see [Limits on Auto Naming](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities-autonaming) in the *Route 53 Developer Guide*.

# Arguments

## `Name = ::String` -- *Required*
The name that you want to assign to the service.


## `CreatorRequestId = ::String`
A unique string that identifies the request and that allows failed `CreateService` requests to be retried without the risk of executing the operation twice. `CreatorRequestId` can be any unique string, for example, a date/time stamp.


## `Description = ::String`
A description for the service.


## `DnsConfig = [ ... ]` -- *Required*
A complex type that contains information about the records that you want Route 53 to create when you register an instance.
```
 DnsConfig = [
        "NamespaceId" => <required> ::String,
        "RoutingPolicy" =>  "MULTIVALUE" or "WEIGHTED",
        "DnsRecords" => <required> [[
            "Type" => <required> "SRV", "A", "AAAA" or "CNAME",
            "TTL" => <required> ::Int
        ], ...]
    ]
```

## `HealthCheckConfig = [ ... ]`
*Public DNS namespaces only.* A complex type that contains settings for an optional health check. If you specify settings for a health check, Route 53 associates the health check with all the records that you specify in `DnsConfig`.

For information about the charges for health checks, see [Route 53 Pricing](http://aws.amazon.com/route53/pricing).
```
 HealthCheckConfig = [
        "Type" =>  "HTTP", "HTTPS" or "TCP",
        "ResourcePath" =>  ::String,
        "FailureThreshold" =>  ::Int
    ]
```

## `HealthCheckCustomConfig = ["FailureThreshold" =>  ::Int]`





# Returns

`CreateServiceResponse`

# Exceptions

`InvalidInput`, `ResourceLimitExceeded`, `NamespaceNotFound` or `ServiceAlreadyExists`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreateService)
"""
@inline create_service(aws::AWSConfig=default_aws_config(); args...) = create_service(aws, args)

@inline create_service(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "CreateService", args)

@inline create_service(args) = create_service(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.delete_namespace
    delete_namespace([::AWSConfig], arguments::Dict)
    delete_namespace([::AWSConfig]; Id=)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "DeleteNamespace", arguments::Dict)
    servicediscovery([::AWSConfig], "DeleteNamespace", Id=)

# DeleteNamespace Operation

Deletes a namespace from the current account. If the namespace still contains one or more services, the request fails.

# Arguments

## `Id = ::String` -- *Required*
The ID of the namespace that you want to delete.




# Returns

`DeleteNamespaceResponse`

# Exceptions

`InvalidInput`, `NamespaceNotFound`, `ResourceInUse` or `DuplicateRequest`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeleteNamespace)
"""
@inline delete_namespace(aws::AWSConfig=default_aws_config(); args...) = delete_namespace(aws, args)

@inline delete_namespace(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "DeleteNamespace", args)

@inline delete_namespace(args) = delete_namespace(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.delete_service
    delete_service([::AWSConfig], arguments::Dict)
    delete_service([::AWSConfig]; Id=)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "DeleteService", arguments::Dict)
    servicediscovery([::AWSConfig], "DeleteService", Id=)

# DeleteService Operation

Deletes a specified service. If the service still contains one or more registered instances, the request fails.

# Arguments

## `Id = ::String` -- *Required*
The ID of the service that you want to delete.




# Returns

`DeleteServiceResponse`

# Exceptions

`InvalidInput`, `ServiceNotFound` or `ResourceInUse`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeleteService)
"""
@inline delete_service(aws::AWSConfig=default_aws_config(); args...) = delete_service(aws, args)

@inline delete_service(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "DeleteService", args)

@inline delete_service(args) = delete_service(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.deregister_instance
    deregister_instance([::AWSConfig], arguments::Dict)
    deregister_instance([::AWSConfig]; ServiceId=, InstanceId=)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "DeregisterInstance", arguments::Dict)
    servicediscovery([::AWSConfig], "DeregisterInstance", ServiceId=, InstanceId=)

# DeregisterInstance Operation

Deletes the records and the health check, if any, that Amazon Route 53 created for the specified instance.

# Arguments

## `ServiceId = ::String` -- *Required*
The ID of the service that the instance is associated with.


## `InstanceId = ::String` -- *Required*
The value that you specified for `Id` in the [RegisterInstance](@ref) request.




# Returns

`DeregisterInstanceResponse`

# Exceptions

`DuplicateRequest`, `InvalidInput`, `InstanceNotFound`, `ResourceInUse` or `ServiceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeregisterInstance)
"""
@inline deregister_instance(aws::AWSConfig=default_aws_config(); args...) = deregister_instance(aws, args)

@inline deregister_instance(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "DeregisterInstance", args)

@inline deregister_instance(args) = deregister_instance(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.get_instance
    get_instance([::AWSConfig], arguments::Dict)
    get_instance([::AWSConfig]; ServiceId=, InstanceId=)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "GetInstance", arguments::Dict)
    servicediscovery([::AWSConfig], "GetInstance", ServiceId=, InstanceId=)

# GetInstance Operation

Gets information about a specified instance.

# Arguments

## `ServiceId = ::String` -- *Required*
The ID of the service that the instance is associated with.


## `InstanceId = ::String` -- *Required*
The ID of the instance that you want to get information about.




# Returns

`GetInstanceResponse`

# Exceptions

`InstanceNotFound`, `InvalidInput` or `ServiceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetInstance)
"""
@inline get_instance(aws::AWSConfig=default_aws_config(); args...) = get_instance(aws, args)

@inline get_instance(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "GetInstance", args)

@inline get_instance(args) = get_instance(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.get_instances_health_status
    get_instances_health_status([::AWSConfig], arguments::Dict)
    get_instances_health_status([::AWSConfig]; ServiceId=, <keyword arguments>)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "GetInstancesHealthStatus", arguments::Dict)
    servicediscovery([::AWSConfig], "GetInstancesHealthStatus", ServiceId=, <keyword arguments>)

# GetInstancesHealthStatus Operation

Gets the current health status (`Healthy`, `Unhealthy`, or `Unknown`) of one or more instances that are associated with a specified service.

**Note**
> There is a brief delay between when you register an instance and when the health status for the instance is available.

# Arguments

## `ServiceId = ::String` -- *Required*
The ID of the service that the instance is associated with.


## `Instances = [::String, ...]`
An array that contains the IDs of all the instances that you want to get the health status for.

If you omit `Instances`, Amazon Route 53 returns the health status for all the instances that are associated with the specified service.

**Note**
> To get the IDs for the instances that you've registered by using a specified service, submit a [ListInstances](@ref) request.


## `MaxResults = ::Int`
The maximum number of instances that you want Route 53 to return in the response to a `GetInstancesHealthStatus` request. If you don't specify a value for `MaxResults`, Route 53 returns up to 100 instances.


## `NextToken = ::String`
For the first `GetInstancesHealthStatus` request, omit this value.

If more than `MaxResults` instances match the specified criteria, you can submit another `GetInstancesHealthStatus` request to get the next group of results. Specify the value of `NextToken` from the previous response in the next request.




# Returns

`GetInstancesHealthStatusResponse`

# Exceptions

`InstanceNotFound`, `InvalidInput` or `ServiceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetInstancesHealthStatus)
"""
@inline get_instances_health_status(aws::AWSConfig=default_aws_config(); args...) = get_instances_health_status(aws, args)

@inline get_instances_health_status(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "GetInstancesHealthStatus", args)

@inline get_instances_health_status(args) = get_instances_health_status(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.get_namespace
    get_namespace([::AWSConfig], arguments::Dict)
    get_namespace([::AWSConfig]; Id=)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "GetNamespace", arguments::Dict)
    servicediscovery([::AWSConfig], "GetNamespace", Id=)

# GetNamespace Operation

Gets information about a namespace.

# Arguments

## `Id = ::String` -- *Required*
The ID of the namespace that you want to get information about.




# Returns

`GetNamespaceResponse`

# Exceptions

`InvalidInput` or `NamespaceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetNamespace)
"""
@inline get_namespace(aws::AWSConfig=default_aws_config(); args...) = get_namespace(aws, args)

@inline get_namespace(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "GetNamespace", args)

@inline get_namespace(args) = get_namespace(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.get_operation
    get_operation([::AWSConfig], arguments::Dict)
    get_operation([::AWSConfig]; OperationId=)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "GetOperation", arguments::Dict)
    servicediscovery([::AWSConfig], "GetOperation", OperationId=)

# GetOperation Operation

Gets information about any operation that returns an operation ID in the response, such as a `CreateService` request.

**Note**
> To get a list of operations that match specified criteria, see [ListOperations](@ref).

# Arguments

## `OperationId = ::String` -- *Required*
The ID of the operation that you want to get more information about.




# Returns

`GetOperationResponse`

# Exceptions

`OperationNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetOperation)
"""
@inline get_operation(aws::AWSConfig=default_aws_config(); args...) = get_operation(aws, args)

@inline get_operation(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "GetOperation", args)

@inline get_operation(args) = get_operation(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.get_service
    get_service([::AWSConfig], arguments::Dict)
    get_service([::AWSConfig]; Id=)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "GetService", arguments::Dict)
    servicediscovery([::AWSConfig], "GetService", Id=)

# GetService Operation

Gets the settings for a specified service.

# Arguments

## `Id = ::String` -- *Required*
The ID of the service that you want to get settings for.




# Returns

`GetServiceResponse`

# Exceptions

`InvalidInput` or `ServiceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetService)
"""
@inline get_service(aws::AWSConfig=default_aws_config(); args...) = get_service(aws, args)

@inline get_service(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "GetService", args)

@inline get_service(args) = get_service(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.list_instances
    list_instances([::AWSConfig], arguments::Dict)
    list_instances([::AWSConfig]; ServiceId=, <keyword arguments>)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "ListInstances", arguments::Dict)
    servicediscovery([::AWSConfig], "ListInstances", ServiceId=, <keyword arguments>)

# ListInstances Operation

Lists summary information about the instances that you registered by using a specified service.

# Arguments

## `ServiceId = ::String` -- *Required*
The ID of the service that you want to list instances for.


## `NextToken = ::String`
For the first `ListInstances` request, omit this value.

If more than `MaxResults` instances match the specified criteria, you can submit another `ListInstances` request to get the next group of results. Specify the value of `NextToken` from the previous response in the next request.


## `MaxResults = ::Int`
The maximum number of instances that you want Amazon Route 53 to return in the response to a `ListInstances` request. If you don't specify a value for `MaxResults`, Route 53 returns up to 100 instances.




# Returns

`ListInstancesResponse`

# Exceptions

`ServiceNotFound` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListInstances)
"""
@inline list_instances(aws::AWSConfig=default_aws_config(); args...) = list_instances(aws, args)

@inline list_instances(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "ListInstances", args)

@inline list_instances(args) = list_instances(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.list_namespaces
    list_namespaces([::AWSConfig], arguments::Dict)
    list_namespaces([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "ListNamespaces", arguments::Dict)
    servicediscovery([::AWSConfig], "ListNamespaces", <keyword arguments>)

# ListNamespaces Operation

Lists summary information about the namespaces that were created by the current AWS account.

# Arguments

## `NextToken = ::String`
For the first `ListNamespaces` request, omit this value.

If the response contains `NextToken`, submit another `ListNamespaces` request to get the next group of results. Specify the value of `NextToken` from the previous response in the next request.

**Note**
> Route 53 gets `MaxResults` namespaces and then filters them based on the specified criteria. It's possible that no namespaces in the first `MaxResults` namespaces matched the specified criteria but that subsequent groups of `MaxResults` namespaces do contain namespaces that match the criteria.


## `MaxResults = ::Int`
The maximum number of namespaces that you want Amazon Route 53 to return in the response to a `ListNamespaces` request. If you don't specify a value for `MaxResults`, Route 53 returns up to 100 namespaces.


## `Filters = [[ ... ], ...]`
A complex type that contains specifications for the namespaces that you want to list.

If you specify more than one filter, a namespace must match all filters to be returned by `ListNamespaces`.
```
 Filters = [[
        "Name" => <required> "TYPE",
        "Values" => <required> [::String, ...],
        "Condition" =>  "EQ", "IN" or "BETWEEN"
    ], ...]
```



# Returns

`ListNamespacesResponse`

# Exceptions

`InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListNamespaces)
"""
@inline list_namespaces(aws::AWSConfig=default_aws_config(); args...) = list_namespaces(aws, args)

@inline list_namespaces(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "ListNamespaces", args)

@inline list_namespaces(args) = list_namespaces(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.list_operations
    list_operations([::AWSConfig], arguments::Dict)
    list_operations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "ListOperations", arguments::Dict)
    servicediscovery([::AWSConfig], "ListOperations", <keyword arguments>)

# ListOperations Operation

Lists operations that match the criteria that you specify.

# Arguments

## `NextToken = ::String`
For the first `ListOperations` request, omit this value.

If the response contains `NextToken`, submit another `ListOperations` request to get the next group of results. Specify the value of `NextToken` from the previous response in the next request.

**Note**
> Route 53 gets `MaxResults` operations and then filters them based on the specified criteria. It's possible that no operations in the first `MaxResults` operations matched the specified criteria but that subsequent groups of `MaxResults` operations do contain operations that match the criteria.


## `MaxResults = ::Int`
The maximum number of items that you want Amazon Route 53 to return in the response to a `ListOperations` request. If you don't specify a value for `MaxResults`, Route 53 returns up to 100 operations.


## `Filters = [[ ... ], ...]`
A complex type that contains specifications for the operations that you want to list, for example, operations that you started between a specified start date and end date.

If you specify more than one filter, an operation must match all filters to be returned by `ListOperations`.
```
 Filters = [[
        "Name" => <required> "NAMESPACE_ID", "SERVICE_ID", "STATUS", "TYPE" or "UPDATE_DATE",
        "Values" => <required> [::String, ...],
        "Condition" =>  "EQ", "IN" or "BETWEEN"
    ], ...]
```



# Returns

`ListOperationsResponse`

# Exceptions

`InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListOperations)
"""
@inline list_operations(aws::AWSConfig=default_aws_config(); args...) = list_operations(aws, args)

@inline list_operations(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "ListOperations", args)

@inline list_operations(args) = list_operations(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.list_services
    list_services([::AWSConfig], arguments::Dict)
    list_services([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "ListServices", arguments::Dict)
    servicediscovery([::AWSConfig], "ListServices", <keyword arguments>)

# ListServices Operation

Lists summary information for all the services that are associated with one or more specified namespaces.

# Arguments

## `NextToken = ::String`
For the first `ListServices` request, omit this value.

If the response contains `NextToken`, submit another `ListServices` request to get the next group of results. Specify the value of `NextToken` from the previous response in the next request.

**Note**
> Route 53 gets `MaxResults` services and then filters them based on the specified criteria. It's possible that no services in the first `MaxResults` services matched the specified criteria but that subsequent groups of `MaxResults` services do contain services that match the criteria.


## `MaxResults = ::Int`
The maximum number of services that you want Amazon Route 53 to return in the response to a `ListServices` request. If you don't specify a value for `MaxResults`, Route 53 returns up to 100 services.


## `Filters = [[ ... ], ...]`
A complex type that contains specifications for the namespaces that you want to list services for.

If you specify more than one filter, an operation must match all filters to be returned by `ListServices`.
```
 Filters = [[
        "Name" => <required> "NAMESPACE_ID",
        "Values" => <required> [::String, ...],
        "Condition" =>  "EQ", "IN" or "BETWEEN"
    ], ...]
```



# Returns

`ListServicesResponse`

# Exceptions

`InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListServices)
"""
@inline list_services(aws::AWSConfig=default_aws_config(); args...) = list_services(aws, args)

@inline list_services(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "ListServices", args)

@inline list_services(args) = list_services(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.register_instance
    register_instance([::AWSConfig], arguments::Dict)
    register_instance([::AWSConfig]; ServiceId=, InstanceId=, Attributes=, <keyword arguments>)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "RegisterInstance", arguments::Dict)
    servicediscovery([::AWSConfig], "RegisterInstance", ServiceId=, InstanceId=, Attributes=, <keyword arguments>)

# RegisterInstance Operation

Creates or updates one or more records and optionally a health check based on the settings in a specified service. When you submit a `RegisterInstance` request, Amazon Route 53 does the following:

*   For each DNS record that you define in the service specified by `ServiceId`, creates or updates a record in the hosted zone that is associated with the corresponding namespace

*   If the service includes `HealthCheckConfig`, creates or updates a health check based on the settings in the health check configuration

*   Associates the health check, if any, with each of the records

**Important**
> One `RegisterInstance` request must complete before you can submit another request and specify the same service ID and instance ID.

For more information, see [CreateService](@ref).

When Route 53 receives a DNS query for the specified DNS name, it returns the applicable value:

*   **If the health check is healthy**: returns all the records

*   **If the health check is unhealthy**: returns the applicable value for the last healthy instance

*   **If you didn't specify a health check configuration**: returns all the records

For the current limit on the number of instances that you can register using the same namespace and using the same service, see [Limits on Auto Naming](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities-autonaming) in the *Route 53 Developer Guide*.

# Arguments

## `ServiceId = ::String` -- *Required*
The ID of the service that you want to use for settings for the records and health check that Route 53 will create.


## `InstanceId = ::String` -- *Required*
An identifier that you want to associate with the instance. Note the following:

*   If the service that is specified by `ServiceId` includes settings for an SRV record, the value of `InstanceId` is automatically included as part of the value for the SRV record. For more information, see [DnsRecord\$Type](@ref).

*   You can use this value to update an existing instance.

*   To register a new instance, you must specify a value that is unique among instances that you register by using the same service.

*   If you specify an existing `InstanceId` and `ServiceId`, Route 53 updates the existing records. If there's also an existing health check, Route 53 deletes the old health check and creates a new one.

    **Note**
    > The health check isn't deleted immediately, so it will still appear for a while if you submit a `ListHealthChecks` request, for example.


## `CreatorRequestId = ::String`
A unique string that identifies the request and that allows failed `RegisterInstance` requests to be retried without the risk of executing the operation twice. You must use a unique `CreatorRequestId` string every time you submit a `RegisterInstance` request if you're registering additional instances for the same namespace and service. `CreatorRequestId` can be any unique string, for example, a date/time stamp.


## `Attributes = ::Dict{String,String}` -- *Required*
A string map that contains the following information for the service that you specify in `ServiceId`:

*   The attributes that apply to the records that are defined in the service.

*   For each attribute, the applicable value.

Supported attribute keys include the following:

**AWS_ALIAS_DNS_NAME**

 **If you want Route 53 to create an alias record that routes traffic to an Elastic Load Balancing load balancer, specify the DNS name that is associated with the load balancer. For information about how to get the DNS name, see "DNSName" in the topic [AliasTarget](http://docs.aws.amazon.com/http:/docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html).

Note the following:

*   The configuration for the service that is specified by `ServiceId` must include settings for an A record, an AAAA record, or both.

*   In the service that is specified by `ServiceId`, the value of `RoutingPolicy` must be `WEIGHTED`.

*   If the service that is specified by `ServiceId` includes `HealthCheckConfig` settings, Route 53 will create the health check, but it won't associate the health check with the alias record.

*   Auto naming currently doesn't support creating alias records that route traffic to AWS resources other than ELB load balancers.

*   If you specify a value for `AWS_ALIAS_DNS_NAME`, don't specify values for any of the `AWS_INSTANCE` attributes.

**AWS_INSTANCE_CNAME**

If the service configuration includes a CNAME record, the domain name that you want Route 53 to return in response to DNS queries, for example, `example.com`.

This value is required if the service specified by `ServiceId` includes settings for an CNAME record.

**AWS_INSTANCE_IPV4**

If the service configuration includes an A record, the IPv4 address that you want Route 53 to return in response to DNS queries, for example, `192.0.2.44`.

This value is required if the service specified by `ServiceId` includes settings for an A record. If the service includes settings for an SRV record, you must specify a value for `AWS_INSTANCE_IPV4`, `AWS_INSTANCE_IPV6`, or both.

**AWS_INSTANCE_IPV6**

If the service configuration includes an AAAA record, the IPv6 address that you want Route 53 to return in response to DNS queries, for example, `2001:0db8:85a3:0000:0000:abcd:0001:2345`.

This value is required if the service specified by `ServiceId` includes settings for an AAAA record. If the service includes settings for an SRV record, you must specify a value for `AWS_INSTANCE_IPV4`, `AWS_INSTANCE_IPV6`, or both.

**AWS_INSTANCE_PORT**

If the service includes an SRV record, the value that you want Route 53 to return for the port.

If the service includes `HealthCheckConfig`, the port on the endpoint that you want Route 53 to send requests to.

This value is required if you specified settings for an SRV record when you created the service.**




# Returns

`RegisterInstanceResponse`

# Exceptions

`DuplicateRequest`, `InvalidInput`, `ResourceInUse`, `ResourceLimitExceeded` or `ServiceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/RegisterInstance)
"""
@inline register_instance(aws::AWSConfig=default_aws_config(); args...) = register_instance(aws, args)

@inline register_instance(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "RegisterInstance", args)

@inline register_instance(args) = register_instance(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.update_instance_custom_health_status
    update_instance_custom_health_status([::AWSConfig], arguments::Dict)
    update_instance_custom_health_status([::AWSConfig]; ServiceId=, InstanceId=, Status=)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "UpdateInstanceCustomHealthStatus", arguments::Dict)
    servicediscovery([::AWSConfig], "UpdateInstanceCustomHealthStatus", ServiceId=, InstanceId=, Status=)

# UpdateInstanceCustomHealthStatus Operation



# Arguments

## `ServiceId = ::String` -- *Required*



## `InstanceId = ::String` -- *Required*



## `Status = "HEALTHY" or "UNHEALTHY"` -- *Required*





# Exceptions

`InstanceNotFound`, `ServiceNotFound`, `CustomHealthNotFound` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdateInstanceCustomHealthStatus)
"""
@inline update_instance_custom_health_status(aws::AWSConfig=default_aws_config(); args...) = update_instance_custom_health_status(aws, args)

@inline update_instance_custom_health_status(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "UpdateInstanceCustomHealthStatus", args)

@inline update_instance_custom_health_status(args) = update_instance_custom_health_status(default_aws_config(), args)


"""
    using AWSSDK.ServiceDiscovery.update_service
    update_service([::AWSConfig], arguments::Dict)
    update_service([::AWSConfig]; Id=, Service=)

    using AWSCore.Services.servicediscovery
    servicediscovery([::AWSConfig], "UpdateService", arguments::Dict)
    servicediscovery([::AWSConfig], "UpdateService", Id=, Service=)

# UpdateService Operation

Submits a request to perform the following operations:

*   Add or delete `DnsRecords` configurations

*   Update the TTL setting for existing `DnsRecords` configurations

*   Add, update, or delete `HealthCheckConfig` for a specified service

You must specify all `DnsRecords` configurations (and, optionally, `HealthCheckConfig`) that you want to appear in the updated service. Any current configurations that don't appear in an `UpdateService` request are deleted.

When you update the TTL setting for a service, Amazon Route 53 also updates the corresponding settings in all the records and health checks that were created by using the specified service.

# Arguments

## `Id = ::String` -- *Required*
The ID of the service that you want to update.


## `Service = [ ... ]` -- *Required*
A complex type that contains the new settings for the service.
```
 Service = [
        "Description" =>  ::String,
        "DnsConfig" => <required> ["DnsRecords" => <required> [[
                "Type" => <required> "SRV", "A", "AAAA" or "CNAME",
                "TTL" => <required> ::Int
            ], ...]],
        "HealthCheckConfig" =>  [
            "Type" =>  "HTTP", "HTTPS" or "TCP",
            "ResourcePath" =>  ::String,
            "FailureThreshold" =>  ::Int
        ]
    ]
```



# Returns

`UpdateServiceResponse`

# Exceptions

`DuplicateRequest`, `InvalidInput` or `ServiceNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdateService)
"""
@inline update_service(aws::AWSConfig=default_aws_config(); args...) = update_service(aws, args)

@inline update_service(aws::AWSConfig, args) = AWSCore.Services.servicediscovery(aws, "UpdateService", args)

@inline update_service(args) = update_service(default_aws_config(), args)




end # module ServiceDiscovery


#==============================================================================#
# End of file
#==============================================================================#
