#==============================================================================#
# Lightsail.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/lightsail-2016-11-28.normal.json
#==============================================================================#

__precompile__()

module Lightsail

using AWSCore


"""
    using AWSSDK.Lightsail
    Lightsail.allocate_static_ip([::AWSConfig], arguments::Dict)
    Lightsail.allocate_static_ip([::AWSConfig]; staticIpName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "AllocateStaticIp", arguments::Dict)
    lightsail([::AWSConfig], "AllocateStaticIp", staticIpName=)

# AllocateStaticIp Operation

Allocates a static IP address.

# Arguments

## `staticIpName = ::String` -- *Required*
The name of the static IP address.




# Returns

`AllocateStaticIpResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AllocateStaticIp)
"""

@inline allocate_static_ip(aws::AWSConfig=default_aws_config(); args...) = allocate_static_ip(aws, args)

@inline allocate_static_ip(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "AllocateStaticIp", args)

@inline allocate_static_ip(args) = allocate_static_ip(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.attach_static_ip([::AWSConfig], arguments::Dict)
    Lightsail.attach_static_ip([::AWSConfig]; staticIpName=, instanceName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "AttachStaticIp", arguments::Dict)
    lightsail([::AWSConfig], "AttachStaticIp", staticIpName=, instanceName=)

# AttachStaticIp Operation

Attaches a static IP address to a specific Amazon Lightsail instance.

# Arguments

## `staticIpName = ::String` -- *Required*
The name of the static IP.


## `instanceName = ::String` -- *Required*
The instance name to which you want to attach the static IP address.




# Returns

`AttachStaticIpResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachStaticIp)
"""

@inline attach_static_ip(aws::AWSConfig=default_aws_config(); args...) = attach_static_ip(aws, args)

@inline attach_static_ip(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "AttachStaticIp", args)

@inline attach_static_ip(args) = attach_static_ip(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.close_instance_public_ports([::AWSConfig], arguments::Dict)
    Lightsail.close_instance_public_ports([::AWSConfig]; portInfo=, instanceName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "CloseInstancePublicPorts", arguments::Dict)
    lightsail([::AWSConfig], "CloseInstancePublicPorts", portInfo=, instanceName=)

# CloseInstancePublicPorts Operation

Closes the public ports on a specific Amazon Lightsail instance.

# Arguments

## `portInfo = [ ... ]` -- *Required*
Information about the public port you are trying to close.
```
 portInfo = [
        "fromPort" =>  ::Int,
        "toPort" =>  ::Int,
        "protocol" =>  "tcp", "all" or "udp"
    ]
```

## `instanceName = ::String` -- *Required*
The name of the instance on which you're attempting to close the public ports.




# Returns

`CloseInstancePublicPortsResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloseInstancePublicPorts)
"""

@inline close_instance_public_ports(aws::AWSConfig=default_aws_config(); args...) = close_instance_public_ports(aws, args)

@inline close_instance_public_ports(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "CloseInstancePublicPorts", args)

@inline close_instance_public_ports(args) = close_instance_public_ports(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.create_domain([::AWSConfig], arguments::Dict)
    Lightsail.create_domain([::AWSConfig]; domainName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "CreateDomain", arguments::Dict)
    lightsail([::AWSConfig], "CreateDomain", domainName=)

# CreateDomain Operation

Creates a domain resource for the specified domain (e.g., example.com).

# Arguments

## `domainName = ::String` -- *Required*
The domain name to manage (e.g., `example.com`).

**Note**
> You cannot register a new domain name using Lightsail. You must register a domain name using Amazon Route 53 or another domain name registrar. If you have already registered your domain, you can enter its name in this parameter to manage the DNS records for that domain.




# Returns

`CreateDomainResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomain)
"""

@inline create_domain(aws::AWSConfig=default_aws_config(); args...) = create_domain(aws, args)

@inline create_domain(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "CreateDomain", args)

@inline create_domain(args) = create_domain(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.create_domain_entry([::AWSConfig], arguments::Dict)
    Lightsail.create_domain_entry([::AWSConfig]; domainName=, domainEntry=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "CreateDomainEntry", arguments::Dict)
    lightsail([::AWSConfig], "CreateDomainEntry", domainName=, domainEntry=)

# CreateDomainEntry Operation

Creates one of the following entry records associated with the domain: A record, CNAME record, TXT record, or MX record.

# Arguments

## `domainName = ::String` -- *Required*
The domain name (e.g., `example.com`) for which you want to create the domain entry.


## `domainEntry = [ ... ]` -- *Required*
An array of key-value pairs containing information about the domain entry request.
```
 domainEntry = [
        "id" =>  ::String,
        "name" =>  ::String,
        "target" =>  ::String,
        "type" =>  ::String,
        "options" =>  ::Dict{String,String}
    ]
```



# Returns

`CreateDomainEntryResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainEntry)
"""

@inline create_domain_entry(aws::AWSConfig=default_aws_config(); args...) = create_domain_entry(aws, args)

@inline create_domain_entry(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "CreateDomainEntry", args)

@inline create_domain_entry(args) = create_domain_entry(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.create_instance_snapshot([::AWSConfig], arguments::Dict)
    Lightsail.create_instance_snapshot([::AWSConfig]; instanceSnapshotName=, instanceName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "CreateInstanceSnapshot", arguments::Dict)
    lightsail([::AWSConfig], "CreateInstanceSnapshot", instanceSnapshotName=, instanceName=)

# CreateInstanceSnapshot Operation

Creates a snapshot of a specific virtual private server, or *instance*. You can use a snapshot to create a new instance that is based on that snapshot.

# Arguments

## `instanceSnapshotName = ::String` -- *Required*
The name for your new snapshot.


## `instanceName = ::String` -- *Required*
The Lightsail instance on which to base your snapshot.




# Returns

`CreateInstanceSnapshotResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstanceSnapshot)
"""

@inline create_instance_snapshot(aws::AWSConfig=default_aws_config(); args...) = create_instance_snapshot(aws, args)

@inline create_instance_snapshot(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "CreateInstanceSnapshot", args)

@inline create_instance_snapshot(args) = create_instance_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.create_instances([::AWSConfig], arguments::Dict)
    Lightsail.create_instances([::AWSConfig]; instanceNames=, availabilityZone=, blueprintId=, bundleId=, <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "CreateInstances", arguments::Dict)
    lightsail([::AWSConfig], "CreateInstances", instanceNames=, availabilityZone=, blueprintId=, bundleId=, <keyword arguments>)

# CreateInstances Operation

Creates one or more Amazon Lightsail virtual private servers, or *instances*.

# Arguments

## `instanceNames = [::String, ...]` -- *Required*
The names to use for your new Lightsail instances. Separate multiple values using quotation marks and commas, for example: `["MyFirstInstance","MySecondInstance"]`


## `availabilityZone = ::String` -- *Required*
The Availability Zone in which to create your instance. Use the following format: `us-east-1a` (case sensitive). You can get a list of availability zones by using the [get regions](http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html) operation. Be sure to add the `include availability zones` parameter to your request.


## `customImageName = ::String`
(Deprecated) The name for your custom image.

**Note**
> In releases prior to June 12, 2017, this parameter was ignored by the API. It is now deprecated.


## `blueprintId = ::String` -- *Required*
The ID for a virtual private server image (e.g., `app_wordpress_4_4` or `app_lamp_7_0`). Use the get blueprints operation to return a list of available images (or *blueprints*).


## `bundleId = ::String` -- *Required*
The bundle of specification information for your virtual private server (or *instance*), including the pricing plan (e.g., `micro_1_0`).


## `userData = ::String`
A launch script you can create that configures a server with additional user data. For example, you might want to run `apt-get –y update`.

**Note**
> Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use `yum`, Debian and Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a complete list, see the [Dev Guide](http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps).


## `keyPairName = ::String`
The name of your key pair.




# Returns

`CreateInstancesResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstances)
"""

@inline create_instances(aws::AWSConfig=default_aws_config(); args...) = create_instances(aws, args)

@inline create_instances(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "CreateInstances", args)

@inline create_instances(args) = create_instances(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.create_instances_from_snapshot([::AWSConfig], arguments::Dict)
    Lightsail.create_instances_from_snapshot([::AWSConfig]; instanceNames=, availabilityZone=, instanceSnapshotName=, bundleId=, <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "CreateInstancesFromSnapshot", arguments::Dict)
    lightsail([::AWSConfig], "CreateInstancesFromSnapshot", instanceNames=, availabilityZone=, instanceSnapshotName=, bundleId=, <keyword arguments>)

# CreateInstancesFromSnapshot Operation

Uses a specific snapshot as a blueprint for creating one or more new instances that are based on that identical configuration.

# Arguments

## `instanceNames = [::String, ...]` -- *Required*
The names for your new instances.


## `availabilityZone = ::String` -- *Required*
The Availability Zone where you want to create your instances. Use the following formatting: `us-east-1a` (case sensitive). You can get a list of availability zones by using the [get regions](http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html) operation. Be sure to add the `include availability zones` parameter to your request.


## `instanceSnapshotName = ::String` -- *Required*
The name of the instance snapshot on which you are basing your new instances. Use the get instance snapshots operation to return information about your existing snapshots.


## `bundleId = ::String` -- *Required*
The bundle of specification information for your virtual private server (or *instance*), including the pricing plan (e.g., `micro_1_0`).


## `userData = ::String`
You can create a launch script that configures a server with additional user data. For example, `apt-get –y update`.

**Note**
> Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use `yum`, Debian and Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a complete list, see the [Dev Guide](http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps).


## `keyPairName = ::String`
The name for your key pair.




# Returns

`CreateInstancesFromSnapshotResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesFromSnapshot)
"""

@inline create_instances_from_snapshot(aws::AWSConfig=default_aws_config(); args...) = create_instances_from_snapshot(aws, args)

@inline create_instances_from_snapshot(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "CreateInstancesFromSnapshot", args)

@inline create_instances_from_snapshot(args) = create_instances_from_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.create_key_pair([::AWSConfig], arguments::Dict)
    Lightsail.create_key_pair([::AWSConfig]; keyPairName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "CreateKeyPair", arguments::Dict)
    lightsail([::AWSConfig], "CreateKeyPair", keyPairName=)

# CreateKeyPair Operation

Creates sn SSH key pair.

# Arguments

## `keyPairName = ::String` -- *Required*
The name for your new key pair.




# Returns

`CreateKeyPairResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateKeyPair)
"""

@inline create_key_pair(aws::AWSConfig=default_aws_config(); args...) = create_key_pair(aws, args)

@inline create_key_pair(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "CreateKeyPair", args)

@inline create_key_pair(args) = create_key_pair(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.delete_domain([::AWSConfig], arguments::Dict)
    Lightsail.delete_domain([::AWSConfig]; domainName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "DeleteDomain", arguments::Dict)
    lightsail([::AWSConfig], "DeleteDomain", domainName=)

# DeleteDomain Operation

Deletes the specified domain recordset and all of its domain records.

# Arguments

## `domainName = ::String` -- *Required*
The specific domain name to delete.




# Returns

`DeleteDomainResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomain)
"""

@inline delete_domain(aws::AWSConfig=default_aws_config(); args...) = delete_domain(aws, args)

@inline delete_domain(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "DeleteDomain", args)

@inline delete_domain(args) = delete_domain(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.delete_domain_entry([::AWSConfig], arguments::Dict)
    Lightsail.delete_domain_entry([::AWSConfig]; domainName=, domainEntry=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "DeleteDomainEntry", arguments::Dict)
    lightsail([::AWSConfig], "DeleteDomainEntry", domainName=, domainEntry=)

# DeleteDomainEntry Operation

Deletes a specific domain entry.

# Arguments

## `domainName = ::String` -- *Required*
The name of the domain entry to delete.


## `domainEntry = [ ... ]` -- *Required*
An array of key-value pairs containing information about your domain entries.
```
 domainEntry = [
        "id" =>  ::String,
        "name" =>  ::String,
        "target" =>  ::String,
        "type" =>  ::String,
        "options" =>  ::Dict{String,String}
    ]
```



# Returns

`DeleteDomainEntryResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainEntry)
"""

@inline delete_domain_entry(aws::AWSConfig=default_aws_config(); args...) = delete_domain_entry(aws, args)

@inline delete_domain_entry(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "DeleteDomainEntry", args)

@inline delete_domain_entry(args) = delete_domain_entry(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.delete_instance([::AWSConfig], arguments::Dict)
    Lightsail.delete_instance([::AWSConfig]; instanceName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "DeleteInstance", arguments::Dict)
    lightsail([::AWSConfig], "DeleteInstance", instanceName=)

# DeleteInstance Operation

Deletes a specific Amazon Lightsail virtual private server, or *instance*.

# Arguments

## `instanceName = ::String` -- *Required*
The name of the instance to delete.




# Returns

`DeleteInstanceResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstance)
"""

@inline delete_instance(aws::AWSConfig=default_aws_config(); args...) = delete_instance(aws, args)

@inline delete_instance(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "DeleteInstance", args)

@inline delete_instance(args) = delete_instance(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.delete_instance_snapshot([::AWSConfig], arguments::Dict)
    Lightsail.delete_instance_snapshot([::AWSConfig]; instanceSnapshotName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "DeleteInstanceSnapshot", arguments::Dict)
    lightsail([::AWSConfig], "DeleteInstanceSnapshot", instanceSnapshotName=)

# DeleteInstanceSnapshot Operation

Deletes a specific snapshot of a virtual private server (or *instance*).

# Arguments

## `instanceSnapshotName = ::String` -- *Required*
The name of the snapshot to delete.




# Returns

`DeleteInstanceSnapshotResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceSnapshot)
"""

@inline delete_instance_snapshot(aws::AWSConfig=default_aws_config(); args...) = delete_instance_snapshot(aws, args)

@inline delete_instance_snapshot(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "DeleteInstanceSnapshot", args)

@inline delete_instance_snapshot(args) = delete_instance_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.delete_key_pair([::AWSConfig], arguments::Dict)
    Lightsail.delete_key_pair([::AWSConfig]; keyPairName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "DeleteKeyPair", arguments::Dict)
    lightsail([::AWSConfig], "DeleteKeyPair", keyPairName=)

# DeleteKeyPair Operation

Deletes a specific SSH key pair.

# Arguments

## `keyPairName = ::String` -- *Required*
The name of the key pair to delete.




# Returns

`DeleteKeyPairResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKeyPair)
"""

@inline delete_key_pair(aws::AWSConfig=default_aws_config(); args...) = delete_key_pair(aws, args)

@inline delete_key_pair(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "DeleteKeyPair", args)

@inline delete_key_pair(args) = delete_key_pair(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.detach_static_ip([::AWSConfig], arguments::Dict)
    Lightsail.detach_static_ip([::AWSConfig]; staticIpName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "DetachStaticIp", arguments::Dict)
    lightsail([::AWSConfig], "DetachStaticIp", staticIpName=)

# DetachStaticIp Operation

Detaches a static IP from the Amazon Lightsail instance to which it is attached.

# Arguments

## `staticIpName = ::String` -- *Required*
The name of the static IP to detach from the instance.




# Returns

`DetachStaticIpResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachStaticIp)
"""

@inline detach_static_ip(aws::AWSConfig=default_aws_config(); args...) = detach_static_ip(aws, args)

@inline detach_static_ip(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "DetachStaticIp", args)

@inline detach_static_ip(args) = detach_static_ip(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.download_default_key_pair([::AWSConfig], arguments::Dict)
    Lightsail.download_default_key_pair([::AWSConfig]; )

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "DownloadDefaultKeyPair", arguments::Dict)
    lightsail([::AWSConfig], "DownloadDefaultKeyPair", )

# DownloadDefaultKeyPair Operation

Downloads the default SSH key pair from the user's account.

# Arguments



# Returns

`DownloadDefaultKeyPairResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DownloadDefaultKeyPair)
"""

@inline download_default_key_pair(aws::AWSConfig=default_aws_config(); args...) = download_default_key_pair(aws, args)

@inline download_default_key_pair(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "DownloadDefaultKeyPair", args)

@inline download_default_key_pair(args) = download_default_key_pair(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_active_names([::AWSConfig], arguments::Dict)
    Lightsail.get_active_names([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetActiveNames", arguments::Dict)
    lightsail([::AWSConfig], "GetActiveNames", <keyword arguments>)

# GetActiveNames Operation

Returns the names of all active (not deleted) resources.

# Arguments

## `pageToken = ::String`
A token used for paginating results from your get active names request.




# Returns

`GetActiveNamesResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetActiveNames)
"""

@inline get_active_names(aws::AWSConfig=default_aws_config(); args...) = get_active_names(aws, args)

@inline get_active_names(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetActiveNames", args)

@inline get_active_names(args) = get_active_names(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_blueprints([::AWSConfig], arguments::Dict)
    Lightsail.get_blueprints([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetBlueprints", arguments::Dict)
    lightsail([::AWSConfig], "GetBlueprints", <keyword arguments>)

# GetBlueprints Operation

Returns the list of available instance images, or *blueprints*. You can use a blueprint to create a new virtual private server already running a specific operating system, as well as a preinstalled app or development stack. The software each instance is running depends on the blueprint image you choose.

# Arguments

## `includeInactive = ::Bool`
A Boolean value indicating whether to include inactive results in your request.


## `pageToken = ::String`
A token used for advancing to the next page of results from your get blueprints request.




# Returns

`GetBlueprintsResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBlueprints)
"""

@inline get_blueprints(aws::AWSConfig=default_aws_config(); args...) = get_blueprints(aws, args)

@inline get_blueprints(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetBlueprints", args)

@inline get_blueprints(args) = get_blueprints(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_bundles([::AWSConfig], arguments::Dict)
    Lightsail.get_bundles([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetBundles", arguments::Dict)
    lightsail([::AWSConfig], "GetBundles", <keyword arguments>)

# GetBundles Operation

Returns the list of bundles that are available for purchase. A bundle describes the specs for your virtual private server (or *instance*).

# Arguments

## `includeInactive = ::Bool`
A Boolean value that indicates whether to include inactive bundle results in your request.


## `pageToken = ::String`
A token used for advancing to the next page of results from your get bundles request.




# Returns

`GetBundlesResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBundles)
"""

@inline get_bundles(aws::AWSConfig=default_aws_config(); args...) = get_bundles(aws, args)

@inline get_bundles(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetBundles", args)

@inline get_bundles(args) = get_bundles(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_domain([::AWSConfig], arguments::Dict)
    Lightsail.get_domain([::AWSConfig]; domainName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetDomain", arguments::Dict)
    lightsail([::AWSConfig], "GetDomain", domainName=)

# GetDomain Operation

Returns information about a specific domain recordset.

# Arguments

## `domainName = ::String` -- *Required*
The domain name for which your want to return information about.




# Returns

`GetDomainResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomain)
"""

@inline get_domain(aws::AWSConfig=default_aws_config(); args...) = get_domain(aws, args)

@inline get_domain(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetDomain", args)

@inline get_domain(args) = get_domain(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_domains([::AWSConfig], arguments::Dict)
    Lightsail.get_domains([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetDomains", arguments::Dict)
    lightsail([::AWSConfig], "GetDomains", <keyword arguments>)

# GetDomains Operation

Returns a list of all domains in the user's account.

# Arguments

## `pageToken = ::String`
A token used for advancing to the next page of results from your get domains request.




# Returns

`GetDomainsResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomains)
"""

@inline get_domains(aws::AWSConfig=default_aws_config(); args...) = get_domains(aws, args)

@inline get_domains(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetDomains", args)

@inline get_domains(args) = get_domains(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_instance([::AWSConfig], arguments::Dict)
    Lightsail.get_instance([::AWSConfig]; instanceName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetInstance", arguments::Dict)
    lightsail([::AWSConfig], "GetInstance", instanceName=)

# GetInstance Operation

Returns information about a specific Amazon Lightsail instance, which is a virtual private server.

# Arguments

## `instanceName = ::String` -- *Required*
The name of the instance.




# Returns

`GetInstanceResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstance)
"""

@inline get_instance(aws::AWSConfig=default_aws_config(); args...) = get_instance(aws, args)

@inline get_instance(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetInstance", args)

@inline get_instance(args) = get_instance(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_instance_access_details([::AWSConfig], arguments::Dict)
    Lightsail.get_instance_access_details([::AWSConfig]; instanceName=, <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetInstanceAccessDetails", arguments::Dict)
    lightsail([::AWSConfig], "GetInstanceAccessDetails", instanceName=, <keyword arguments>)

# GetInstanceAccessDetails Operation

Returns temporary SSH keys you can use to connect to a specific virtual private server, or *instance*.

# Arguments

## `instanceName = ::String` -- *Required*
The name of the instance to access.


## `protocol = "ssh" or "rdp"`
The protocol to use to connect to your instance. Defaults to `ssh`.




# Returns

`GetInstanceAccessDetailsResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceAccessDetails)
"""

@inline get_instance_access_details(aws::AWSConfig=default_aws_config(); args...) = get_instance_access_details(aws, args)

@inline get_instance_access_details(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetInstanceAccessDetails", args)

@inline get_instance_access_details(args) = get_instance_access_details(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_instance_metric_data([::AWSConfig], arguments::Dict)
    Lightsail.get_instance_metric_data([::AWSConfig]; instanceName=, metricName=, period=, startTime=, endTime=, unit=, statistics=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetInstanceMetricData", arguments::Dict)
    lightsail([::AWSConfig], "GetInstanceMetricData", instanceName=, metricName=, period=, startTime=, endTime=, unit=, statistics=)

# GetInstanceMetricData Operation

Returns the data points for the specified Amazon Lightsail instance metric, given an instance name.

# Arguments

## `instanceName = ::String` -- *Required*
The name of the instance for which you want to get metrics data.


## `metricName = "CPUUtilization", "NetworkIn", "NetworkOut", "StatusCheckFailed", "StatusCheckFailed_Instance" or "StatusCheckFailed_System"` -- *Required*
The metric name to get data about.


## `period = ::Int` -- *Required*
The time period for which you are requesting data.


## `startTime = timestamp` -- *Required*
The start time of the time period.


## `endTime = timestamp` -- *Required*
The end time of the time period.


## `unit = "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second" or "None"` -- *Required*
The unit. The list of valid values is below.


## `statistics = ["Minimum", "Maximum", "Sum", "Average" or "SampleCount", ...]` -- *Required*
The instance statistics.




# Returns

`GetInstanceMetricDataResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceMetricData)
"""

@inline get_instance_metric_data(aws::AWSConfig=default_aws_config(); args...) = get_instance_metric_data(aws, args)

@inline get_instance_metric_data(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetInstanceMetricData", args)

@inline get_instance_metric_data(args) = get_instance_metric_data(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_instance_port_states([::AWSConfig], arguments::Dict)
    Lightsail.get_instance_port_states([::AWSConfig]; instanceName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetInstancePortStates", arguments::Dict)
    lightsail([::AWSConfig], "GetInstancePortStates", instanceName=)

# GetInstancePortStates Operation

Returns the port states for a specific virtual private server, or *instance*.

# Arguments

## `instanceName = ::String` -- *Required*
The name of the instance.




# Returns

`GetInstancePortStatesResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancePortStates)
"""

@inline get_instance_port_states(aws::AWSConfig=default_aws_config(); args...) = get_instance_port_states(aws, args)

@inline get_instance_port_states(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetInstancePortStates", args)

@inline get_instance_port_states(args) = get_instance_port_states(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_instance_snapshot([::AWSConfig], arguments::Dict)
    Lightsail.get_instance_snapshot([::AWSConfig]; instanceSnapshotName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetInstanceSnapshot", arguments::Dict)
    lightsail([::AWSConfig], "GetInstanceSnapshot", instanceSnapshotName=)

# GetInstanceSnapshot Operation

Returns information about a specific instance snapshot.

# Arguments

## `instanceSnapshotName = ::String` -- *Required*
The name of the snapshot for which you are requesting information.




# Returns

`GetInstanceSnapshotResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshot)
"""

@inline get_instance_snapshot(aws::AWSConfig=default_aws_config(); args...) = get_instance_snapshot(aws, args)

@inline get_instance_snapshot(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetInstanceSnapshot", args)

@inline get_instance_snapshot(args) = get_instance_snapshot(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_instance_snapshots([::AWSConfig], arguments::Dict)
    Lightsail.get_instance_snapshots([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetInstanceSnapshots", arguments::Dict)
    lightsail([::AWSConfig], "GetInstanceSnapshots", <keyword arguments>)

# GetInstanceSnapshots Operation

Returns all instance snapshots for the user's account.

# Arguments

## `pageToken = ::String`
A token used for advancing to the next page of results from your get instance snapshots request.




# Returns

`GetInstanceSnapshotsResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshots)
"""

@inline get_instance_snapshots(aws::AWSConfig=default_aws_config(); args...) = get_instance_snapshots(aws, args)

@inline get_instance_snapshots(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetInstanceSnapshots", args)

@inline get_instance_snapshots(args) = get_instance_snapshots(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_instance_state([::AWSConfig], arguments::Dict)
    Lightsail.get_instance_state([::AWSConfig]; instanceName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetInstanceState", arguments::Dict)
    lightsail([::AWSConfig], "GetInstanceState", instanceName=)

# GetInstanceState Operation

Returns the state of a specific instance. Works on one instance at a time.

# Arguments

## `instanceName = ::String` -- *Required*
The name of the instance to get state information about.




# Returns

`GetInstanceStateResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceState)
"""

@inline get_instance_state(aws::AWSConfig=default_aws_config(); args...) = get_instance_state(aws, args)

@inline get_instance_state(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetInstanceState", args)

@inline get_instance_state(args) = get_instance_state(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_instances([::AWSConfig], arguments::Dict)
    Lightsail.get_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetInstances", arguments::Dict)
    lightsail([::AWSConfig], "GetInstances", <keyword arguments>)

# GetInstances Operation

Returns information about all Amazon Lightsail virtual private servers, or *instances*.

# Arguments

## `pageToken = ::String`
A token used for advancing to the next page of results from your get instances request.




# Returns

`GetInstancesResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstances)
"""

@inline get_instances(aws::AWSConfig=default_aws_config(); args...) = get_instances(aws, args)

@inline get_instances(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetInstances", args)

@inline get_instances(args) = get_instances(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_key_pair([::AWSConfig], arguments::Dict)
    Lightsail.get_key_pair([::AWSConfig]; keyPairName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetKeyPair", arguments::Dict)
    lightsail([::AWSConfig], "GetKeyPair", keyPairName=)

# GetKeyPair Operation

Returns information about a specific key pair.

# Arguments

## `keyPairName = ::String` -- *Required*
The name of the key pair for which you are requesting information.




# Returns

`GetKeyPairResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPair)
"""

@inline get_key_pair(aws::AWSConfig=default_aws_config(); args...) = get_key_pair(aws, args)

@inline get_key_pair(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetKeyPair", args)

@inline get_key_pair(args) = get_key_pair(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_key_pairs([::AWSConfig], arguments::Dict)
    Lightsail.get_key_pairs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetKeyPairs", arguments::Dict)
    lightsail([::AWSConfig], "GetKeyPairs", <keyword arguments>)

# GetKeyPairs Operation

Returns information about all key pairs in the user's account.

# Arguments

## `pageToken = ::String`
A token used for advancing to the next page of results from your get key pairs request.




# Returns

`GetKeyPairsResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairs)
"""

@inline get_key_pairs(aws::AWSConfig=default_aws_config(); args...) = get_key_pairs(aws, args)

@inline get_key_pairs(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetKeyPairs", args)

@inline get_key_pairs(args) = get_key_pairs(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_operation([::AWSConfig], arguments::Dict)
    Lightsail.get_operation([::AWSConfig]; operationId=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetOperation", arguments::Dict)
    lightsail([::AWSConfig], "GetOperation", operationId=)

# GetOperation Operation

Returns information about a specific operation. Operations include events such as when you create an instance, allocate a static IP, attach a static IP, and so on.

# Arguments

## `operationId = ::String` -- *Required*
A GUID used to identify the operation.




# Returns

`GetOperationResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperation)
"""

@inline get_operation(aws::AWSConfig=default_aws_config(); args...) = get_operation(aws, args)

@inline get_operation(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetOperation", args)

@inline get_operation(args) = get_operation(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_operations([::AWSConfig], arguments::Dict)
    Lightsail.get_operations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetOperations", arguments::Dict)
    lightsail([::AWSConfig], "GetOperations", <keyword arguments>)

# GetOperations Operation

Returns information about all operations.

Results are returned from oldest to newest, up to a maximum of 200\. Results can be paged by making each subsequent call to `GetOperations` use the maximum (last) `statusChangedAt` value from the previous request.

# Arguments

## `pageToken = ::String`
A token used for advancing to the next page of results from your get operations request.




# Returns

`GetOperationsResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperations)
"""

@inline get_operations(aws::AWSConfig=default_aws_config(); args...) = get_operations(aws, args)

@inline get_operations(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetOperations", args)

@inline get_operations(args) = get_operations(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_operations_for_resource([::AWSConfig], arguments::Dict)
    Lightsail.get_operations_for_resource([::AWSConfig]; resourceName=, <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetOperationsForResource", arguments::Dict)
    lightsail([::AWSConfig], "GetOperationsForResource", resourceName=, <keyword arguments>)

# GetOperationsForResource Operation

Gets operations for a specific resource (e.g., an instance or a static IP).

# Arguments

## `resourceName = ::String` -- *Required*
The name of the resource for which you are requesting information.


## `pageToken = ::String`
A token used for advancing to the next page of results from your get operations for resource request.




# Returns

`GetOperationsForResourceResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsForResource)
"""

@inline get_operations_for_resource(aws::AWSConfig=default_aws_config(); args...) = get_operations_for_resource(aws, args)

@inline get_operations_for_resource(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetOperationsForResource", args)

@inline get_operations_for_resource(args) = get_operations_for_resource(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_regions([::AWSConfig], arguments::Dict)
    Lightsail.get_regions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetRegions", arguments::Dict)
    lightsail([::AWSConfig], "GetRegions", <keyword arguments>)

# GetRegions Operation

Returns a list of all valid regions for Amazon Lightsail. Use the `include availability zones` parameter to also return the availability zones in a region.

# Arguments

## `includeAvailabilityZones = ::Bool`
A Boolean value indicating whether to also include Availability Zones in your get regions request. Availability Zones are indicated with a letter: e.g., `us-east-1a`.




# Returns

`GetRegionsResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRegions)
"""

@inline get_regions(aws::AWSConfig=default_aws_config(); args...) = get_regions(aws, args)

@inline get_regions(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetRegions", args)

@inline get_regions(args) = get_regions(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_static_ip([::AWSConfig], arguments::Dict)
    Lightsail.get_static_ip([::AWSConfig]; staticIpName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetStaticIp", arguments::Dict)
    lightsail([::AWSConfig], "GetStaticIp", staticIpName=)

# GetStaticIp Operation

Returns information about a specific static IP.

# Arguments

## `staticIpName = ::String` -- *Required*
The name of the static IP in Lightsail.




# Returns

`GetStaticIpResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIp)
"""

@inline get_static_ip(aws::AWSConfig=default_aws_config(); args...) = get_static_ip(aws, args)

@inline get_static_ip(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetStaticIp", args)

@inline get_static_ip(args) = get_static_ip(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.get_static_ips([::AWSConfig], arguments::Dict)
    Lightsail.get_static_ips([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "GetStaticIps", arguments::Dict)
    lightsail([::AWSConfig], "GetStaticIps", <keyword arguments>)

# GetStaticIps Operation

Returns information about all static IPs in the user's account.

# Arguments

## `pageToken = ::String`
A token used for advancing to the next page of results from your get static IPs request.




# Returns

`GetStaticIpsResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIps)
"""

@inline get_static_ips(aws::AWSConfig=default_aws_config(); args...) = get_static_ips(aws, args)

@inline get_static_ips(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "GetStaticIps", args)

@inline get_static_ips(args) = get_static_ips(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.import_key_pair([::AWSConfig], arguments::Dict)
    Lightsail.import_key_pair([::AWSConfig]; keyPairName=, publicKeyBase64=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "ImportKeyPair", arguments::Dict)
    lightsail([::AWSConfig], "ImportKeyPair", keyPairName=, publicKeyBase64=)

# ImportKeyPair Operation

Imports a public SSH key from a specific key pair.

# Arguments

## `keyPairName = ::String` -- *Required*
The name of the key pair for which you want to import the public key.


## `publicKeyBase64 = ::String` -- *Required*
A base64-encoded public key of the `ssh-rsa` type.




# Returns

`ImportKeyPairResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ImportKeyPair)
"""

@inline import_key_pair(aws::AWSConfig=default_aws_config(); args...) = import_key_pair(aws, args)

@inline import_key_pair(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "ImportKeyPair", args)

@inline import_key_pair(args) = import_key_pair(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.is_vpc_peered([::AWSConfig], arguments::Dict)
    Lightsail.is_vpc_peered([::AWSConfig]; )

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "IsVpcPeered", arguments::Dict)
    lightsail([::AWSConfig], "IsVpcPeered", )

# IsVpcPeered Operation

Returns a Boolean value indicating whether your Lightsail VPC is peered.

# Arguments



# Returns

`IsVpcPeeredResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/IsVpcPeered)
"""

@inline is_vpc_peered(aws::AWSConfig=default_aws_config(); args...) = is_vpc_peered(aws, args)

@inline is_vpc_peered(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "IsVpcPeered", args)

@inline is_vpc_peered(args) = is_vpc_peered(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.open_instance_public_ports([::AWSConfig], arguments::Dict)
    Lightsail.open_instance_public_ports([::AWSConfig]; portInfo=, instanceName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "OpenInstancePublicPorts", arguments::Dict)
    lightsail([::AWSConfig], "OpenInstancePublicPorts", portInfo=, instanceName=)

# OpenInstancePublicPorts Operation

Adds public ports to an Amazon Lightsail instance.

# Arguments

## `portInfo = [ ... ]` -- *Required*
An array of key-value pairs containing information about the port mappings.
```
 portInfo = [
        "fromPort" =>  ::Int,
        "toPort" =>  ::Int,
        "protocol" =>  "tcp", "all" or "udp"
    ]
```

## `instanceName = ::String` -- *Required*
The name of the instance for which you want to open the public ports.




# Returns

`OpenInstancePublicPortsResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/OpenInstancePublicPorts)
"""

@inline open_instance_public_ports(aws::AWSConfig=default_aws_config(); args...) = open_instance_public_ports(aws, args)

@inline open_instance_public_ports(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "OpenInstancePublicPorts", args)

@inline open_instance_public_ports(args) = open_instance_public_ports(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.peer_vpc([::AWSConfig], arguments::Dict)
    Lightsail.peer_vpc([::AWSConfig]; )

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "PeerVpc", arguments::Dict)
    lightsail([::AWSConfig], "PeerVpc", )

# PeerVpc Operation

Tries to peer the Lightsail VPC with the user's default VPC.

# Arguments



# Returns

`PeerVpcResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PeerVpc)
"""

@inline peer_vpc(aws::AWSConfig=default_aws_config(); args...) = peer_vpc(aws, args)

@inline peer_vpc(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "PeerVpc", args)

@inline peer_vpc(args) = peer_vpc(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.put_instance_public_ports([::AWSConfig], arguments::Dict)
    Lightsail.put_instance_public_ports([::AWSConfig]; portInfos=, instanceName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "PutInstancePublicPorts", arguments::Dict)
    lightsail([::AWSConfig], "PutInstancePublicPorts", portInfos=, instanceName=)

# PutInstancePublicPorts Operation

Sets the specified open ports for an Amazon Lightsail instance, and closes all ports for every protocol not included in the current request.

# Arguments

## `portInfos = [[ ... ], ...]` -- *Required*
Specifies information about the public port(s).
```
 portInfos = [[
        "fromPort" =>  ::Int,
        "toPort" =>  ::Int,
        "protocol" =>  "tcp", "all" or "udp"
    ], ...]
```

## `instanceName = ::String` -- *Required*
The Lightsail instance name of the public port(s) you are setting.




# Returns

`PutInstancePublicPortsResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutInstancePublicPorts)
"""

@inline put_instance_public_ports(aws::AWSConfig=default_aws_config(); args...) = put_instance_public_ports(aws, args)

@inline put_instance_public_ports(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "PutInstancePublicPorts", args)

@inline put_instance_public_ports(args) = put_instance_public_ports(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.reboot_instance([::AWSConfig], arguments::Dict)
    Lightsail.reboot_instance([::AWSConfig]; instanceName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "RebootInstance", arguments::Dict)
    lightsail([::AWSConfig], "RebootInstance", instanceName=)

# RebootInstance Operation

Restarts a specific instance. When your Amazon Lightsail instance is finished rebooting, Lightsail assigns a new public IP address. To use the same IP address after restarting, create a static IP address and attach it to the instance.

# Arguments

## `instanceName = ::String` -- *Required*
The name of the instance to reboot.




# Returns

`RebootInstanceResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootInstance)
"""

@inline reboot_instance(aws::AWSConfig=default_aws_config(); args...) = reboot_instance(aws, args)

@inline reboot_instance(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "RebootInstance", args)

@inline reboot_instance(args) = reboot_instance(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.release_static_ip([::AWSConfig], arguments::Dict)
    Lightsail.release_static_ip([::AWSConfig]; staticIpName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "ReleaseStaticIp", arguments::Dict)
    lightsail([::AWSConfig], "ReleaseStaticIp", staticIpName=)

# ReleaseStaticIp Operation

Deletes a specific static IP from your account.

# Arguments

## `staticIpName = ::String` -- *Required*
The name of the static IP to delete.




# Returns

`ReleaseStaticIpResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ReleaseStaticIp)
"""

@inline release_static_ip(aws::AWSConfig=default_aws_config(); args...) = release_static_ip(aws, args)

@inline release_static_ip(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "ReleaseStaticIp", args)

@inline release_static_ip(args) = release_static_ip(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.start_instance([::AWSConfig], arguments::Dict)
    Lightsail.start_instance([::AWSConfig]; instanceName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "StartInstance", arguments::Dict)
    lightsail([::AWSConfig], "StartInstance", instanceName=)

# StartInstance Operation

Starts a specific Amazon Lightsail instance from a stopped state. To restart an instance, use the reboot instance operation.

# Arguments

## `instanceName = ::String` -- *Required*
The name of the instance (a virtual private server) to start.




# Returns

`StartInstanceResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartInstance)
"""

@inline start_instance(aws::AWSConfig=default_aws_config(); args...) = start_instance(aws, args)

@inline start_instance(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "StartInstance", args)

@inline start_instance(args) = start_instance(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.stop_instance([::AWSConfig], arguments::Dict)
    Lightsail.stop_instance([::AWSConfig]; instanceName=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "StopInstance", arguments::Dict)
    lightsail([::AWSConfig], "StopInstance", instanceName=)

# StopInstance Operation

Stops a specific Amazon Lightsail instance that is currently running.

# Arguments

## `instanceName = ::String` -- *Required*
The name of the instance (a virtual private server) to stop.




# Returns

`StopInstanceResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopInstance)
"""

@inline stop_instance(aws::AWSConfig=default_aws_config(); args...) = stop_instance(aws, args)

@inline stop_instance(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "StopInstance", args)

@inline stop_instance(args) = stop_instance(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.unpeer_vpc([::AWSConfig], arguments::Dict)
    Lightsail.unpeer_vpc([::AWSConfig]; )

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "UnpeerVpc", arguments::Dict)
    lightsail([::AWSConfig], "UnpeerVpc", )

# UnpeerVpc Operation

Attempts to unpeer the Lightsail VPC from the user's default VPC.

# Arguments



# Returns

`UnpeerVpcResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UnpeerVpc)
"""

@inline unpeer_vpc(aws::AWSConfig=default_aws_config(); args...) = unpeer_vpc(aws, args)

@inline unpeer_vpc(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "UnpeerVpc", args)

@inline unpeer_vpc(args) = unpeer_vpc(default_aws_config(), args)


"""
    using AWSSDK.Lightsail
    Lightsail.update_domain_entry([::AWSConfig], arguments::Dict)
    Lightsail.update_domain_entry([::AWSConfig]; domainName=, domainEntry=)

    using AWSCore.Services.lightsail
    lightsail([::AWSConfig], "UpdateDomainEntry", arguments::Dict)
    lightsail([::AWSConfig], "UpdateDomainEntry", domainName=, domainEntry=)

# UpdateDomainEntry Operation

Updates a domain recordset after it is created.

# Arguments

## `domainName = ::String` -- *Required*
The name of the domain recordset to update.


## `domainEntry = [ ... ]` -- *Required*
An array of key-value pairs containing information about the domain entry.
```
 domainEntry = [
        "id" =>  ::String,
        "name" =>  ::String,
        "target" =>  ::String,
        "type" =>  ::String,
        "options" =>  ::Dict{String,String}
    ]
```



# Returns

`UpdateDomainEntryResult`

# Exceptions

`ServiceException`, `InvalidInputException`, `NotFoundException`, `OperationFailureException`, `AccessDeniedException`, `AccountSetupInProgressException` or `UnauthenticatedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDomainEntry)
"""

@inline update_domain_entry(aws::AWSConfig=default_aws_config(); args...) = update_domain_entry(aws, args)

@inline update_domain_entry(aws::AWSConfig, args) = AWSCore.Services.lightsail(aws, "UpdateDomainEntry", args)

@inline update_domain_entry(args) = update_domain_entry(default_aws_config(), args)




end # module Lightsail


#==============================================================================#
# End of file
#==============================================================================#
