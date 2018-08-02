#==============================================================================#
# DirectoryService.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/ds-2015-04-16.normal.json
#==============================================================================#

__precompile__()

module DirectoryService

using AWSCore


"""
    using AWSSDK.DirectoryService.add_ip_routes
    add_ip_routes([::AWSConfig], arguments::Dict)
    add_ip_routes([::AWSConfig]; DirectoryId=, IpRoutes=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "AddIpRoutes", arguments::Dict)
    ds([::AWSConfig], "AddIpRoutes", DirectoryId=, IpRoutes=, <keyword arguments>)

# AddIpRoutes Operation

If the DNS server for your on-premises domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services. *AddIpRoutes* adds this address block. You can also use *AddIpRoutes* to facilitate routing traffic that uses public IP ranges from your Microsoft AD on AWS to a peer VPC.

Before you call *AddIpRoutes*, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the *AddIpRoutes* operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).

# Arguments

## `DirectoryId = ::String` -- *Required*
Identifier (ID) of the directory to which to add the address block.


## `IpRoutes = [[ ... ], ...]` -- *Required*
IP address blocks, using CIDR format, of the traffic to route. This is often the IP address block of the DNS server used for your on-premises domain.
```
 IpRoutes = [[
        "CidrIp" =>  ::String,
        "Description" =>  ::String
    ], ...]
```

## `UpdateSecurityGroupForDirectoryControllers = ::Bool`
If set to true, updates the inbound and outbound rules of the security group that has the description: "AWS created security group for *directory ID* directory controllers." Following are the new rules:

Inbound:

*   Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: 0.0.0.0/0

*   Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: 0.0.0.0/0

*   Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: 0.0.0.0/0

*   Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: 0.0.0.0/0

*   Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: 0.0.0.0/0

*   Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: 0.0.0.0/0

*   Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: 0.0.0.0/0

*   Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: 0.0.0.0/0

*   Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: 0.0.0.0/0

*   Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: 0.0.0.0/0

*   Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: 0.0.0.0/0

*   Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source: 0.0.0.0/0

*   Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source: 0.0.0.0/0

*   Type: DNS (UDP), Protocol: UDP, Range: 53, Source: 0.0.0.0/0

*   Type: DNS (TCP), Protocol: TCP, Range: 53, Source: 0.0.0.0/0

*   Type: LDAP, Protocol: TCP, Range: 389, Source: 0.0.0.0/0

*   Type: All ICMP, Protocol: All, Range: N/A, Source: 0.0.0.0/0

Outbound:

*   Type: All traffic, Protocol: All, Range: All, Destination: 0.0.0.0/0

These security rules impact an internal network interface that is not exposed publicly.




# Returns

`AddIpRoutesResult`

# Exceptions

`EntityDoesNotExistException`, `EntityAlreadyExistsException`, `InvalidParameterException`, `DirectoryUnavailableException`, `IpRouteLimitExceededException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddIpRoutes)
"""
@inline add_ip_routes(aws::AWSConfig=default_aws_config(); args...) = add_ip_routes(aws, args)

@inline add_ip_routes(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "AddIpRoutes", args)

@inline add_ip_routes(args) = add_ip_routes(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.add_tags_to_resource
    add_tags_to_resource([::AWSConfig], arguments::Dict)
    add_tags_to_resource([::AWSConfig]; ResourceId=, Tags=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "AddTagsToResource", arguments::Dict)
    ds([::AWSConfig], "AddTagsToResource", ResourceId=, Tags=)

# AddTagsToResource Operation

Adds or overwrites one or more tags for the specified directory. Each directory can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique to each resource.

# Arguments

## `ResourceId = ::String` -- *Required*
Identifier (ID) for the directory to which to add the tag.


## `Tags = [[ ... ], ...]` -- *Required*
The tags to be assigned to the directory.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Returns

`AddTagsToResourceResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `TagLimitExceededException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddTagsToResource)
"""
@inline add_tags_to_resource(aws::AWSConfig=default_aws_config(); args...) = add_tags_to_resource(aws, args)

@inline add_tags_to_resource(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "AddTagsToResource", args)

@inline add_tags_to_resource(args) = add_tags_to_resource(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.cancel_schema_extension
    cancel_schema_extension([::AWSConfig], arguments::Dict)
    cancel_schema_extension([::AWSConfig]; DirectoryId=, SchemaExtensionId=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "CancelSchemaExtension", arguments::Dict)
    ds([::AWSConfig], "CancelSchemaExtension", DirectoryId=, SchemaExtensionId=)

# CancelSchemaExtension Operation

Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema extension has started replicating to all domain controllers, the task can no longer be canceled. A schema extension can be canceled during any of the following states; `Initializing`, `CreatingSnapshot`, and `UpdatingSchema`.

# Arguments

## `DirectoryId = ::String` -- *Required*
The identifier of the directory whose schema extension will be canceled.


## `SchemaExtensionId = ::String` -- *Required*
The identifier of the schema extension that will be canceled.




# Returns

`CancelSchemaExtensionResult`

# Exceptions

`EntityDoesNotExistException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CancelSchemaExtension)
"""
@inline cancel_schema_extension(aws::AWSConfig=default_aws_config(); args...) = cancel_schema_extension(aws, args)

@inline cancel_schema_extension(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "CancelSchemaExtension", args)

@inline cancel_schema_extension(args) = cancel_schema_extension(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.connect_directory
    connect_directory([::AWSConfig], arguments::Dict)
    connect_directory([::AWSConfig]; Name=, Password=, Size=, ConnectSettings=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "ConnectDirectory", arguments::Dict)
    ds([::AWSConfig], "ConnectDirectory", Name=, Password=, Size=, ConnectSettings=, <keyword arguments>)

# ConnectDirectory Operation

Creates an AD Connector to connect to an on-premises directory.

Before you call *ConnectDirectory*, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the *ConnectDirectory* operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).

# Arguments

## `Name = ::String` -- *Required*
The fully-qualified name of the on-premises directory, such as `corp.example.com`.


## `ShortName = ::String`
The NetBIOS name of the on-premises directory, such as `CORP`.


## `Password = ::String` -- *Required*
The password for the on-premises user account.


## `Description = ::String`
A textual description for the directory.


## `Size = "Small" or "Large"` -- *Required*
The size of the directory.


## `ConnectSettings = [ ... ]` -- *Required*
A [DirectoryConnectSettings](@ref) object that contains additional information for the operation.
```
 ConnectSettings = [
        "VpcId" => <required> ::String,
        "SubnetIds" => <required> [::String, ...],
        "CustomerDnsIps" => <required> [::String, ...],
        "CustomerUserName" => <required> ::String
    ]
```



# Returns

`ConnectDirectoryResult`

# Exceptions

`DirectoryLimitExceededException`, `InvalidParameterException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ConnectDirectory)
"""
@inline connect_directory(aws::AWSConfig=default_aws_config(); args...) = connect_directory(aws, args)

@inline connect_directory(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "ConnectDirectory", args)

@inline connect_directory(args) = connect_directory(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.create_alias
    create_alias([::AWSConfig], arguments::Dict)
    create_alias([::AWSConfig]; DirectoryId=, Alias=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "CreateAlias", arguments::Dict)
    ds([::AWSConfig], "CreateAlias", DirectoryId=, Alias=)

# CreateAlias Operation

Creates an alias for a directory and assigns the alias to the directory. The alias is used to construct the access URL for the directory, such as `http://<alias>.awsapps.com`.

**Important**
> After an alias has been created, it cannot be deleted or reused, so this operation should only be used when absolutely necessary.

# Arguments

## `DirectoryId = ::String` -- *Required*
The identifier of the directory for which to create the alias.


## `Alias = ::String` -- *Required*
The requested alias.

The alias must be unique amongst all aliases in AWS. This operation throws an `EntityAlreadyExistsException` error if the alias already exists.




# Returns

`CreateAliasResult`

# Exceptions

`EntityAlreadyExistsException`, `EntityDoesNotExistException`, `InvalidParameterException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateAlias)
"""
@inline create_alias(aws::AWSConfig=default_aws_config(); args...) = create_alias(aws, args)

@inline create_alias(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "CreateAlias", args)

@inline create_alias(args) = create_alias(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.create_computer
    create_computer([::AWSConfig], arguments::Dict)
    create_computer([::AWSConfig]; DirectoryId=, ComputerName=, Password=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "CreateComputer", arguments::Dict)
    ds([::AWSConfig], "CreateComputer", DirectoryId=, ComputerName=, Password=, <keyword arguments>)

# CreateComputer Operation

Creates a computer account in the specified directory, and joins the computer to the directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
The identifier of the directory in which to create the computer account.


## `ComputerName = ::String` -- *Required*
The name of the computer account.


## `Password = ::String` -- *Required*
A one-time password that is used to join the computer to the directory. You should generate a random, strong password to use for this parameter.


## `OrganizationalUnitDistinguishedName = ::String`
The fully-qualified distinguished name of the organizational unit to place the computer account in.


## `ComputerAttributes = [[ ... ], ...]`
An array of [Attribute](@ref) objects that contain any LDAP attributes to apply to the computer account.
```
 ComputerAttributes = [[
        "Name" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateComputerResult`

# Exceptions

`AuthenticationFailedException`, `DirectoryUnavailableException`, `EntityAlreadyExistsException`, `EntityDoesNotExistException`, `InvalidParameterException`, `UnsupportedOperationException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateComputer)
"""
@inline create_computer(aws::AWSConfig=default_aws_config(); args...) = create_computer(aws, args)

@inline create_computer(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "CreateComputer", args)

@inline create_computer(args) = create_computer(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.create_conditional_forwarder
    create_conditional_forwarder([::AWSConfig], arguments::Dict)
    create_conditional_forwarder([::AWSConfig]; DirectoryId=, RemoteDomainName=, DnsIpAddrs=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "CreateConditionalForwarder", arguments::Dict)
    ds([::AWSConfig], "CreateConditionalForwarder", DirectoryId=, RemoteDomainName=, DnsIpAddrs=)

# CreateConditionalForwarder Operation

Creates a conditional forwarder associated with your AWS directory. Conditional forwarders are required in order to set up a trust relationship with another domain. The conditional forwarder points to the trusted domain.

# Arguments

## `DirectoryId = ::String` -- *Required*
The directory ID of the AWS directory for which you are creating the conditional forwarder.


## `RemoteDomainName = ::String` -- *Required*
The fully qualified domain name (FQDN) of the remote domain with which you will set up a trust relationship.


## `DnsIpAddrs = [::String, ...]` -- *Required*
The IP addresses of the remote DNS server associated with RemoteDomainName.




# Returns

`CreateConditionalForwarderResult`

# Exceptions

`EntityAlreadyExistsException`, `EntityDoesNotExistException`, `DirectoryUnavailableException`, `InvalidParameterException`, `UnsupportedOperationException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateConditionalForwarder)
"""
@inline create_conditional_forwarder(aws::AWSConfig=default_aws_config(); args...) = create_conditional_forwarder(aws, args)

@inline create_conditional_forwarder(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "CreateConditionalForwarder", args)

@inline create_conditional_forwarder(args) = create_conditional_forwarder(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.create_directory
    create_directory([::AWSConfig], arguments::Dict)
    create_directory([::AWSConfig]; Name=, Password=, Size=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "CreateDirectory", arguments::Dict)
    ds([::AWSConfig], "CreateDirectory", Name=, Password=, Size=, <keyword arguments>)

# CreateDirectory Operation

Creates a Simple AD directory.

Before you call *CreateDirectory*, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the *CreateDirectory* operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).

# Arguments

## `Name = ::String` -- *Required*
The fully qualified name for the directory, such as `corp.example.com`.


## `ShortName = ::String`
The short name of the directory, such as `CORP`.


## `Password = ::String` -- *Required*
The password for the directory administrator. The directory creation process creates a directory administrator account with the username `Administrator` and this password.


## `Description = ::String`
A textual description for the directory.


## `Size = "Small" or "Large"` -- *Required*
The size of the directory.


## `VpcSettings = [ ... ]`
A [DirectoryVpcSettings](@ref) object that contains additional information for the operation.
```
 VpcSettings = [
        "VpcId" => <required> ::String,
        "SubnetIds" => <required> [::String, ...]
    ]
```



# Returns

`CreateDirectoryResult`

# Exceptions

`DirectoryLimitExceededException`, `InvalidParameterException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateDirectory)
"""
@inline create_directory(aws::AWSConfig=default_aws_config(); args...) = create_directory(aws, args)

@inline create_directory(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "CreateDirectory", args)

@inline create_directory(args) = create_directory(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.create_microsoft_ad
    create_microsoft_ad([::AWSConfig], arguments::Dict)
    create_microsoft_ad([::AWSConfig]; Name=, Password=, VpcSettings=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "CreateMicrosoftAD", arguments::Dict)
    ds([::AWSConfig], "CreateMicrosoftAD", Name=, Password=, VpcSettings=, <keyword arguments>)

# CreateMicrosoftAD Operation

Creates a Microsoft AD in the AWS cloud.

Before you call *CreateMicrosoftAD*, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the *CreateMicrosoftAD* operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).

# Arguments

## `Name = ::String` -- *Required*
The fully qualified domain name for the directory, such as `corp.example.com`. This name will resolve inside your VPC only. It does not need to be publicly resolvable.


## `ShortName = ::String`
The NetBIOS name for your domain. A short identifier for your domain, such as `CORP`. If you don't specify a NetBIOS name, it will default to the first part of your directory DNS. For example, `CORP` for the directory DNS `corp.example.com`.


## `Password = ::String` -- *Required*
The password for the default administrative user named `Admin`.


## `Description = ::String`
A textual description for the directory. This label will appear on the AWS console `Directory Details` page after the directory is created.


## `VpcSettings = [ ... ]` -- *Required*
Contains VPC information for the [CreateDirectory](@ref) or [CreateMicrosoftAD](@ref) operation.
```
 VpcSettings = [
        "VpcId" => <required> ::String,
        "SubnetIds" => <required> [::String, ...]
    ]
```

## `Edition = "Enterprise" or "Standard"`
AWS Microsoft AD is available in two editions: Standard and Enterprise. Enterprise is the default.




# Returns

`CreateMicrosoftADResult`

# Exceptions

`DirectoryLimitExceededException`, `InvalidParameterException`, `ClientException`, `ServiceException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateMicrosoftAD)
"""
@inline create_microsoft_ad(aws::AWSConfig=default_aws_config(); args...) = create_microsoft_ad(aws, args)

@inline create_microsoft_ad(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "CreateMicrosoftAD", args)

@inline create_microsoft_ad(args) = create_microsoft_ad(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.create_snapshot
    create_snapshot([::AWSConfig], arguments::Dict)
    create_snapshot([::AWSConfig]; DirectoryId=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "CreateSnapshot", arguments::Dict)
    ds([::AWSConfig], "CreateSnapshot", DirectoryId=, <keyword arguments>)

# CreateSnapshot Operation

Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud.

**Note**
> You cannot take snapshots of AD Connector directories.

# Arguments

## `DirectoryId = ::String` -- *Required*
The identifier of the directory of which to take a snapshot.


## `Name = ::String`
The descriptive name to apply to the snapshot.




# Returns

`CreateSnapshotResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `SnapshotLimitExceededException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateSnapshot)
"""
@inline create_snapshot(aws::AWSConfig=default_aws_config(); args...) = create_snapshot(aws, args)

@inline create_snapshot(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "CreateSnapshot", args)

@inline create_snapshot(args) = create_snapshot(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.create_trust
    create_trust([::AWSConfig], arguments::Dict)
    create_trust([::AWSConfig]; DirectoryId=, RemoteDomainName=, TrustPassword=, TrustDirection=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "CreateTrust", arguments::Dict)
    ds([::AWSConfig], "CreateTrust", DirectoryId=, RemoteDomainName=, TrustPassword=, TrustDirection=, <keyword arguments>)

# CreateTrust Operation

AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your Microsoft AD in the AWS cloud, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.

This action initiates the creation of the AWS side of a trust relationship between a Microsoft AD in the AWS cloud and an external domain.

# Arguments

## `DirectoryId = ::String` -- *Required*
The Directory ID of the Microsoft AD in the AWS cloud for which to establish the trust relationship.


## `RemoteDomainName = ::String` -- *Required*
The Fully Qualified Domain Name (FQDN) of the external domain for which to create the trust relationship.


## `TrustPassword = ::String` -- *Required*
The trust password. The must be the same password that was used when creating the trust relationship on the external domain.


## `TrustDirection = "One-Way: Outgoing", "One-Way: Incoming" or "Two-Way"` -- *Required*
The direction of the trust relationship.


## `TrustType = "Forest"`
The trust relationship type.


## `ConditionalForwarderIpAddrs = [::String, ...]`
The IP addresses of the remote DNS server associated with RemoteDomainName.




# Returns

`CreateTrustResult`

# Exceptions

`EntityAlreadyExistsException`, `EntityDoesNotExistException`, `InvalidParameterException`, `ClientException`, `ServiceException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateTrust)
"""
@inline create_trust(aws::AWSConfig=default_aws_config(); args...) = create_trust(aws, args)

@inline create_trust(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "CreateTrust", args)

@inline create_trust(args) = create_trust(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.delete_conditional_forwarder
    delete_conditional_forwarder([::AWSConfig], arguments::Dict)
    delete_conditional_forwarder([::AWSConfig]; DirectoryId=, RemoteDomainName=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DeleteConditionalForwarder", arguments::Dict)
    ds([::AWSConfig], "DeleteConditionalForwarder", DirectoryId=, RemoteDomainName=)

# DeleteConditionalForwarder Operation

Deletes a conditional forwarder that has been set up for your AWS directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
The directory ID for which you are deleting the conditional forwarder.


## `RemoteDomainName = ::String` -- *Required*
The fully qualified domain name (FQDN) of the remote domain with which you are deleting the conditional forwarder.




# Returns

`DeleteConditionalForwarderResult`

# Exceptions

`EntityDoesNotExistException`, `DirectoryUnavailableException`, `InvalidParameterException`, `UnsupportedOperationException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteConditionalForwarder)
"""
@inline delete_conditional_forwarder(aws::AWSConfig=default_aws_config(); args...) = delete_conditional_forwarder(aws, args)

@inline delete_conditional_forwarder(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DeleteConditionalForwarder", args)

@inline delete_conditional_forwarder(args) = delete_conditional_forwarder(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.delete_directory
    delete_directory([::AWSConfig], arguments::Dict)
    delete_directory([::AWSConfig]; DirectoryId=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DeleteDirectory", arguments::Dict)
    ds([::AWSConfig], "DeleteDirectory", DirectoryId=)

# DeleteDirectory Operation

Deletes an AWS Directory Service directory.

Before you call *DeleteDirectory*, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the *DeleteDirectory* operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).

# Arguments

## `DirectoryId = ::String` -- *Required*
The identifier of the directory to delete.




# Returns

`DeleteDirectoryResult`

# Exceptions

`EntityDoesNotExistException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteDirectory)
"""
@inline delete_directory(aws::AWSConfig=default_aws_config(); args...) = delete_directory(aws, args)

@inline delete_directory(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DeleteDirectory", args)

@inline delete_directory(args) = delete_directory(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.delete_snapshot
    delete_snapshot([::AWSConfig], arguments::Dict)
    delete_snapshot([::AWSConfig]; SnapshotId=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DeleteSnapshot", arguments::Dict)
    ds([::AWSConfig], "DeleteSnapshot", SnapshotId=)

# DeleteSnapshot Operation

Deletes a directory snapshot.

# Arguments

## `SnapshotId = ::String` -- *Required*
The identifier of the directory snapshot to be deleted.




# Returns

`DeleteSnapshotResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteSnapshot)
"""
@inline delete_snapshot(aws::AWSConfig=default_aws_config(); args...) = delete_snapshot(aws, args)

@inline delete_snapshot(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DeleteSnapshot", args)

@inline delete_snapshot(args) = delete_snapshot(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.delete_trust
    delete_trust([::AWSConfig], arguments::Dict)
    delete_trust([::AWSConfig]; TrustId=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DeleteTrust", arguments::Dict)
    ds([::AWSConfig], "DeleteTrust", TrustId=, <keyword arguments>)

# DeleteTrust Operation

Deletes an existing trust relationship between your Microsoft AD in the AWS cloud and an external domain.

# Arguments

## `TrustId = ::String` -- *Required*
The Trust ID of the trust relationship to be deleted.


## `DeleteAssociatedConditionalForwarder = ::Bool`
Delete a conditional forwarder as part of a DeleteTrustRequest.




# Returns

`DeleteTrustResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `ClientException`, `ServiceException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteTrust)
"""
@inline delete_trust(aws::AWSConfig=default_aws_config(); args...) = delete_trust(aws, args)

@inline delete_trust(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DeleteTrust", args)

@inline delete_trust(args) = delete_trust(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.deregister_event_topic
    deregister_event_topic([::AWSConfig], arguments::Dict)
    deregister_event_topic([::AWSConfig]; DirectoryId=, TopicName=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DeregisterEventTopic", arguments::Dict)
    ds([::AWSConfig], "DeregisterEventTopic", DirectoryId=, TopicName=)

# DeregisterEventTopic Operation

Removes the specified directory as a publisher to the specified SNS topic.

# Arguments

## `DirectoryId = ::String` -- *Required*
The Directory ID to remove as a publisher. This directory will no longer send messages to the specified SNS topic.


## `TopicName = ::String` -- *Required*
The name of the SNS topic from which to remove the directory as a publisher.




# Returns

`DeregisterEventTopicResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeregisterEventTopic)
"""
@inline deregister_event_topic(aws::AWSConfig=default_aws_config(); args...) = deregister_event_topic(aws, args)

@inline deregister_event_topic(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DeregisterEventTopic", args)

@inline deregister_event_topic(args) = deregister_event_topic(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.describe_conditional_forwarders
    describe_conditional_forwarders([::AWSConfig], arguments::Dict)
    describe_conditional_forwarders([::AWSConfig]; DirectoryId=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DescribeConditionalForwarders", arguments::Dict)
    ds([::AWSConfig], "DescribeConditionalForwarders", DirectoryId=, <keyword arguments>)

# DescribeConditionalForwarders Operation

Obtains information about the conditional forwarders for this account.

If no input parameters are provided for RemoteDomainNames, this request describes all conditional forwarders for the specified directory ID.

# Arguments

## `DirectoryId = ::String` -- *Required*
The directory ID for which to get the list of associated conditional forwarders.


## `RemoteDomainNames = [::String, ...]`
The fully qualified domain names (FQDN) of the remote domains for which to get the list of associated conditional forwarders. If this member is null, all conditional forwarders are returned.




# Returns

`DescribeConditionalForwardersResult`

# Exceptions

`EntityDoesNotExistException`, `DirectoryUnavailableException`, `InvalidParameterException`, `UnsupportedOperationException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeConditionalForwarders)
"""
@inline describe_conditional_forwarders(aws::AWSConfig=default_aws_config(); args...) = describe_conditional_forwarders(aws, args)

@inline describe_conditional_forwarders(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DescribeConditionalForwarders", args)

@inline describe_conditional_forwarders(args) = describe_conditional_forwarders(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.describe_directories
    describe_directories([::AWSConfig], arguments::Dict)
    describe_directories([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DescribeDirectories", arguments::Dict)
    ds([::AWSConfig], "DescribeDirectories", <keyword arguments>)

# DescribeDirectories Operation

Obtains information about the directories that belong to this account.

You can retrieve information about specific directories by passing the directory identifiers in the *DirectoryIds* parameter. Otherwise, all directories that belong to the current account are returned.

This operation supports pagination with the use of the *NextToken* request and response parameters. If more results are available, the *DescribeDirectoriesResult.NextToken* member contains a token that you pass in the next call to [DescribeDirectories](@ref) to retrieve the next set of items.

You can also specify a maximum number of return results with the *Limit* parameter.

# Arguments

## `DirectoryIds = [::String, ...]`
A list of identifiers of the directories for which to obtain the information. If this member is null, all directories that belong to the current account are returned.

An empty list results in an `InvalidParameterException` being thrown.


## `NextToken = ::String`
The *DescribeDirectoriesResult.NextToken* value from a previous call to [DescribeDirectories](@ref). Pass null if this is the first call.


## `Limit = ::Int`
The maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.




# Returns

`DescribeDirectoriesResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `InvalidNextTokenException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDirectories)
"""
@inline describe_directories(aws::AWSConfig=default_aws_config(); args...) = describe_directories(aws, args)

@inline describe_directories(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DescribeDirectories", args)

@inline describe_directories(args) = describe_directories(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.describe_domain_controllers
    describe_domain_controllers([::AWSConfig], arguments::Dict)
    describe_domain_controllers([::AWSConfig]; DirectoryId=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DescribeDomainControllers", arguments::Dict)
    ds([::AWSConfig], "DescribeDomainControllers", DirectoryId=, <keyword arguments>)

# DescribeDomainControllers Operation

Provides information about any domain controllers in your directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
Identifier of the directory for which to retrieve the domain controller information.


## `DomainControllerIds = [::String, ...]`
A list of identifiers for the domain controllers whose information will be provided.


## `NextToken = ::String`
The *DescribeDomainControllers.NextToken* value from a previous call to [DescribeDomainControllers](@ref). Pass null if this is the first call.


## `Limit = ::Int`
The maximum number of items to return.




# Returns

`DescribeDomainControllersResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidNextTokenException`, `InvalidParameterException`, `ClientException`, `ServiceException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDomainControllers)
"""
@inline describe_domain_controllers(aws::AWSConfig=default_aws_config(); args...) = describe_domain_controllers(aws, args)

@inline describe_domain_controllers(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DescribeDomainControllers", args)

@inline describe_domain_controllers(args) = describe_domain_controllers(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.describe_event_topics
    describe_event_topics([::AWSConfig], arguments::Dict)
    describe_event_topics([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DescribeEventTopics", arguments::Dict)
    ds([::AWSConfig], "DescribeEventTopics", <keyword arguments>)

# DescribeEventTopics Operation

Obtains information about which SNS topics receive status messages from the specified directory.

If no input parameters are provided, such as DirectoryId or TopicName, this request describes all of the associations in the account.

# Arguments

## `DirectoryId = ::String`
The Directory ID for which to get the list of associated SNS topics. If this member is null, associations for all Directory IDs are returned.


## `TopicNames = [::String, ...]`
A list of SNS topic names for which to obtain the information. If this member is null, all associations for the specified Directory ID are returned.

An empty list results in an `InvalidParameterException` being thrown.




# Returns

`DescribeEventTopicsResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeEventTopics)
"""
@inline describe_event_topics(aws::AWSConfig=default_aws_config(); args...) = describe_event_topics(aws, args)

@inline describe_event_topics(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DescribeEventTopics", args)

@inline describe_event_topics(args) = describe_event_topics(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.describe_snapshots
    describe_snapshots([::AWSConfig], arguments::Dict)
    describe_snapshots([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DescribeSnapshots", arguments::Dict)
    ds([::AWSConfig], "DescribeSnapshots", <keyword arguments>)

# DescribeSnapshots Operation

Obtains information about the directory snapshots that belong to this account.

This operation supports pagination with the use of the *NextToken* request and response parameters. If more results are available, the *DescribeSnapshots.NextToken* member contains a token that you pass in the next call to [DescribeSnapshots](@ref) to retrieve the next set of items.

You can also specify a maximum number of return results with the *Limit* parameter.

# Arguments

## `DirectoryId = ::String`
The identifier of the directory for which to retrieve snapshot information.


## `SnapshotIds = [::String, ...]`
A list of identifiers of the snapshots to obtain the information for. If this member is null or empty, all snapshots are returned using the *Limit* and *NextToken* members.


## `NextToken = ::String`
The *DescribeSnapshotsResult.NextToken* value from a previous call to [DescribeSnapshots](@ref). Pass null if this is the first call.


## `Limit = ::Int`
The maximum number of objects to return.




# Returns

`DescribeSnapshotsResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `InvalidNextTokenException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSnapshots)
"""
@inline describe_snapshots(aws::AWSConfig=default_aws_config(); args...) = describe_snapshots(aws, args)

@inline describe_snapshots(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DescribeSnapshots", args)

@inline describe_snapshots(args) = describe_snapshots(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.describe_trusts
    describe_trusts([::AWSConfig], arguments::Dict)
    describe_trusts([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DescribeTrusts", arguments::Dict)
    ds([::AWSConfig], "DescribeTrusts", <keyword arguments>)

# DescribeTrusts Operation

Obtains information about the trust relationships for this account.

If no input parameters are provided, such as DirectoryId or TrustIds, this request describes all the trust relationships belonging to the account.

# Arguments

## `DirectoryId = ::String`
The Directory ID of the AWS directory that is a part of the requested trust relationship.


## `TrustIds = [::String, ...]`
A list of identifiers of the trust relationships for which to obtain the information. If this member is null, all trust relationships that belong to the current account are returned.

An empty list results in an `InvalidParameterException` being thrown.


## `NextToken = ::String`
The *DescribeTrustsResult.NextToken* value from a previous call to [DescribeTrusts](@ref). Pass null if this is the first call.


## `Limit = ::Int`
The maximum number of objects to return.




# Returns

`DescribeTrustsResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidNextTokenException`, `InvalidParameterException`, `ClientException`, `ServiceException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeTrusts)
"""
@inline describe_trusts(aws::AWSConfig=default_aws_config(); args...) = describe_trusts(aws, args)

@inline describe_trusts(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DescribeTrusts", args)

@inline describe_trusts(args) = describe_trusts(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.disable_radius
    disable_radius([::AWSConfig], arguments::Dict)
    disable_radius([::AWSConfig]; DirectoryId=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DisableRadius", arguments::Dict)
    ds([::AWSConfig], "DisableRadius", DirectoryId=)

# DisableRadius Operation

Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
The identifier of the directory for which to disable MFA.




# Returns

`DisableRadiusResult`

# Exceptions

`EntityDoesNotExistException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableRadius)
"""
@inline disable_radius(aws::AWSConfig=default_aws_config(); args...) = disable_radius(aws, args)

@inline disable_radius(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DisableRadius", args)

@inline disable_radius(args) = disable_radius(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.disable_sso
    disable_sso([::AWSConfig], arguments::Dict)
    disable_sso([::AWSConfig]; DirectoryId=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "DisableSso", arguments::Dict)
    ds([::AWSConfig], "DisableSso", DirectoryId=, <keyword arguments>)

# DisableSso Operation

Disables single-sign on for a directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
The identifier of the directory for which to disable single-sign on.


## `UserName = ::String`
The username of an alternate account to use to disable single-sign on. This is only used for AD Connector directories. This account must have privileges to remove a service principal name.

If the AD Connector service account does not have privileges to remove a service principal name, you can specify an alternate account with the *UserName* and *Password* parameters. These credentials are only used to disable single sign-on and are not stored by the service. The AD Connector service account is not changed.


## `Password = ::String`
The password of an alternate account to use to disable single-sign on. This is only used for AD Connector directories. For more information, see the *UserName* parameter.




# Returns

`DisableSsoResult`

# Exceptions

`EntityDoesNotExistException`, `InsufficientPermissionsException`, `AuthenticationFailedException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableSso)
"""
@inline disable_sso(aws::AWSConfig=default_aws_config(); args...) = disable_sso(aws, args)

@inline disable_sso(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "DisableSso", args)

@inline disable_sso(args) = disable_sso(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.enable_radius
    enable_radius([::AWSConfig], arguments::Dict)
    enable_radius([::AWSConfig]; DirectoryId=, RadiusSettings=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "EnableRadius", arguments::Dict)
    ds([::AWSConfig], "EnableRadius", DirectoryId=, RadiusSettings=)

# EnableRadius Operation

Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
The identifier of the directory for which to enable MFA.


## `RadiusSettings = [ ... ]` -- *Required*
A [RadiusSettings](@ref) object that contains information about the RADIUS server.
```
 RadiusSettings = [
        "RadiusServers" =>  [::String, ...],
        "RadiusPort" =>  ::Int,
        "RadiusTimeout" =>  ::Int,
        "RadiusRetries" =>  ::Int,
        "SharedSecret" =>  ::String,
        "AuthenticationProtocol" =>  "PAP", "CHAP", "MS-CHAPv1" or "MS-CHAPv2",
        "DisplayLabel" =>  ::String,
        "UseSameUsername" =>  ::Bool
    ]
```



# Returns

`EnableRadiusResult`

# Exceptions

`InvalidParameterException`, `EntityAlreadyExistsException`, `EntityDoesNotExistException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableRadius)
"""
@inline enable_radius(aws::AWSConfig=default_aws_config(); args...) = enable_radius(aws, args)

@inline enable_radius(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "EnableRadius", args)

@inline enable_radius(args) = enable_radius(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.enable_sso
    enable_sso([::AWSConfig], arguments::Dict)
    enable_sso([::AWSConfig]; DirectoryId=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "EnableSso", arguments::Dict)
    ds([::AWSConfig], "EnableSso", DirectoryId=, <keyword arguments>)

# EnableSso Operation

Enables single sign-on for a directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
The identifier of the directory for which to enable single-sign on.


## `UserName = ::String`
The username of an alternate account to use to enable single-sign on. This is only used for AD Connector directories. This account must have privileges to add a service principal name.

If the AD Connector service account does not have privileges to add a service principal name, you can specify an alternate account with the *UserName* and *Password* parameters. These credentials are only used to enable single sign-on and are not stored by the service. The AD Connector service account is not changed.


## `Password = ::String`
The password of an alternate account to use to enable single-sign on. This is only used for AD Connector directories. For more information, see the *UserName* parameter.




# Returns

`EnableSsoResult`

# Exceptions

`EntityDoesNotExistException`, `InsufficientPermissionsException`, `AuthenticationFailedException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableSso)
"""
@inline enable_sso(aws::AWSConfig=default_aws_config(); args...) = enable_sso(aws, args)

@inline enable_sso(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "EnableSso", args)

@inline enable_sso(args) = enable_sso(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.get_directory_limits
    get_directory_limits([::AWSConfig], arguments::Dict)
    get_directory_limits([::AWSConfig]; )

    using AWSCore.Services.ds
    ds([::AWSConfig], "GetDirectoryLimits", arguments::Dict)
    ds([::AWSConfig], "GetDirectoryLimits", )

# GetDirectoryLimits Operation

Obtains directory limit information for the current region.

# Arguments



# Returns

`GetDirectoryLimitsResult`

# Exceptions

`EntityDoesNotExistException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/GetDirectoryLimits)
"""
@inline get_directory_limits(aws::AWSConfig=default_aws_config(); args...) = get_directory_limits(aws, args)

@inline get_directory_limits(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "GetDirectoryLimits", args)

@inline get_directory_limits(args) = get_directory_limits(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.get_snapshot_limits
    get_snapshot_limits([::AWSConfig], arguments::Dict)
    get_snapshot_limits([::AWSConfig]; DirectoryId=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "GetSnapshotLimits", arguments::Dict)
    ds([::AWSConfig], "GetSnapshotLimits", DirectoryId=)

# GetSnapshotLimits Operation

Obtains the manual snapshot limits for a directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
Contains the identifier of the directory to obtain the limits for.




# Returns

`GetSnapshotLimitsResult`

# Exceptions

`EntityDoesNotExistException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/GetSnapshotLimits)
"""
@inline get_snapshot_limits(aws::AWSConfig=default_aws_config(); args...) = get_snapshot_limits(aws, args)

@inline get_snapshot_limits(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "GetSnapshotLimits", args)

@inline get_snapshot_limits(args) = get_snapshot_limits(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.list_ip_routes
    list_ip_routes([::AWSConfig], arguments::Dict)
    list_ip_routes([::AWSConfig]; DirectoryId=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "ListIpRoutes", arguments::Dict)
    ds([::AWSConfig], "ListIpRoutes", DirectoryId=, <keyword arguments>)

# ListIpRoutes Operation

Lists the address blocks that you have added to a directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
Identifier (ID) of the directory for which you want to retrieve the IP addresses.


## `NextToken = ::String`
The *ListIpRoutes.NextToken* value from a previous call to [ListIpRoutes](@ref). Pass null if this is the first call.


## `Limit = ::Int`
Maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.




# Returns

`ListIpRoutesResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidNextTokenException`, `InvalidParameterException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListIpRoutes)
"""
@inline list_ip_routes(aws::AWSConfig=default_aws_config(); args...) = list_ip_routes(aws, args)

@inline list_ip_routes(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "ListIpRoutes", args)

@inline list_ip_routes(args) = list_ip_routes(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.list_schema_extensions
    list_schema_extensions([::AWSConfig], arguments::Dict)
    list_schema_extensions([::AWSConfig]; DirectoryId=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "ListSchemaExtensions", arguments::Dict)
    ds([::AWSConfig], "ListSchemaExtensions", DirectoryId=, <keyword arguments>)

# ListSchemaExtensions Operation

Lists all schema extensions applied to a Microsoft AD Directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
The identifier of the directory from which to retrieve the schema extension information.


## `NextToken = ::String`
The `ListSchemaExtensions.NextToken` value from a previous call to `ListSchemaExtensions`. Pass null if this is the first call.


## `Limit = ::Int`
The maximum number of items to return.




# Returns

`ListSchemaExtensionsResult`

# Exceptions

`InvalidNextTokenException`, `EntityDoesNotExistException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListSchemaExtensions)
"""
@inline list_schema_extensions(aws::AWSConfig=default_aws_config(); args...) = list_schema_extensions(aws, args)

@inline list_schema_extensions(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "ListSchemaExtensions", args)

@inline list_schema_extensions(args) = list_schema_extensions(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; ResourceId=, <keyword arguments>)

    using AWSCore.Services.ds
    ds([::AWSConfig], "ListTagsForResource", arguments::Dict)
    ds([::AWSConfig], "ListTagsForResource", ResourceId=, <keyword arguments>)

# ListTagsForResource Operation

Lists all tags on a directory.

# Arguments

## `ResourceId = ::String` -- *Required*
Identifier (ID) of the directory for which you want to retrieve tags.


## `NextToken = ::String`
Reserved for future use.


## `Limit = ::Int`
Reserved for future use.




# Returns

`ListTagsForResourceResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidNextTokenException`, `InvalidParameterException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "ListTagsForResource", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.register_event_topic
    register_event_topic([::AWSConfig], arguments::Dict)
    register_event_topic([::AWSConfig]; DirectoryId=, TopicName=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "RegisterEventTopic", arguments::Dict)
    ds([::AWSConfig], "RegisterEventTopic", DirectoryId=, TopicName=)

# RegisterEventTopic Operation

Associates a directory with an SNS topic. This establishes the directory as a publisher to the specified SNS topic. You can then receive email or text (SMS) messages when the status of your directory changes. You get notified if your directory goes from an Active status to an Impaired or Inoperable status. You also receive a notification when the directory returns to an Active status.

# Arguments

## `DirectoryId = ::String` -- *Required*
The Directory ID that will publish status messages to the SNS topic.


## `TopicName = ::String` -- *Required*
The SNS topic name to which the directory will publish status messages. This SNS topic must be in the same region as the specified Directory ID.




# Returns

`RegisterEventTopicResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegisterEventTopic)
"""
@inline register_event_topic(aws::AWSConfig=default_aws_config(); args...) = register_event_topic(aws, args)

@inline register_event_topic(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "RegisterEventTopic", args)

@inline register_event_topic(args) = register_event_topic(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.remove_ip_routes
    remove_ip_routes([::AWSConfig], arguments::Dict)
    remove_ip_routes([::AWSConfig]; DirectoryId=, CidrIps=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "RemoveIpRoutes", arguments::Dict)
    ds([::AWSConfig], "RemoveIpRoutes", DirectoryId=, CidrIps=)

# RemoveIpRoutes Operation

Removes IP address blocks from a directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
Identifier (ID) of the directory from which you want to remove the IP addresses.


## `CidrIps = [::String, ...]` -- *Required*
IP address blocks that you want to remove.




# Returns

`RemoveIpRoutesResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `DirectoryUnavailableException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveIpRoutes)
"""
@inline remove_ip_routes(aws::AWSConfig=default_aws_config(); args...) = remove_ip_routes(aws, args)

@inline remove_ip_routes(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "RemoveIpRoutes", args)

@inline remove_ip_routes(args) = remove_ip_routes(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.remove_tags_from_resource
    remove_tags_from_resource([::AWSConfig], arguments::Dict)
    remove_tags_from_resource([::AWSConfig]; ResourceId=, TagKeys=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "RemoveTagsFromResource", arguments::Dict)
    ds([::AWSConfig], "RemoveTagsFromResource", ResourceId=, TagKeys=)

# RemoveTagsFromResource Operation

Removes tags from a directory.

# Arguments

## `ResourceId = ::String` -- *Required*
Identifier (ID) of the directory from which to remove the tag.


## `TagKeys = [::String, ...]` -- *Required*
The tag key (name) of the tag to be removed.




# Returns

`RemoveTagsFromResourceResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveTagsFromResource)
"""
@inline remove_tags_from_resource(aws::AWSConfig=default_aws_config(); args...) = remove_tags_from_resource(aws, args)

@inline remove_tags_from_resource(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "RemoveTagsFromResource", args)

@inline remove_tags_from_resource(args) = remove_tags_from_resource(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.reset_user_password
    reset_user_password([::AWSConfig], arguments::Dict)
    reset_user_password([::AWSConfig]; DirectoryId=, UserName=, NewPassword=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "ResetUserPassword", arguments::Dict)
    ds([::AWSConfig], "ResetUserPassword", DirectoryId=, UserName=, NewPassword=)

# ResetUserPassword Operation

Resets the password for any user in your AWS Managed Microsoft AD or Simple AD directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
Identifier of the AWS Managed Microsoft AD or Simple AD directory in which the user resides.


## `UserName = ::String` -- *Required*
The username of the user whose password will be reset.


## `NewPassword = ::String` -- *Required*
The new password that will be reset.




# Returns

`ResetUserPasswordResult`

# Exceptions

`DirectoryUnavailableException`, `UserDoesNotExistException`, `InvalidPasswordException`, `UnsupportedOperationException`, `EntityDoesNotExistException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ResetUserPassword)
"""
@inline reset_user_password(aws::AWSConfig=default_aws_config(); args...) = reset_user_password(aws, args)

@inline reset_user_password(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "ResetUserPassword", args)

@inline reset_user_password(args) = reset_user_password(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.restore_from_snapshot
    restore_from_snapshot([::AWSConfig], arguments::Dict)
    restore_from_snapshot([::AWSConfig]; SnapshotId=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "RestoreFromSnapshot", arguments::Dict)
    ds([::AWSConfig], "RestoreFromSnapshot", SnapshotId=)

# RestoreFromSnapshot Operation

Restores a directory using an existing directory snapshot.

When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten.

This action returns as soon as the restore operation is initiated. You can monitor the progress of the restore operation by calling the [DescribeDirectories](@ref) operation with the directory identifier. When the **DirectoryDescription.Stage** value changes to `Active`, the restore operation is complete.

# Arguments

## `SnapshotId = ::String` -- *Required*
The identifier of the snapshot to restore from.




# Returns

`RestoreFromSnapshotResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RestoreFromSnapshot)
"""
@inline restore_from_snapshot(aws::AWSConfig=default_aws_config(); args...) = restore_from_snapshot(aws, args)

@inline restore_from_snapshot(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "RestoreFromSnapshot", args)

@inline restore_from_snapshot(args) = restore_from_snapshot(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.start_schema_extension
    start_schema_extension([::AWSConfig], arguments::Dict)
    start_schema_extension([::AWSConfig]; DirectoryId=, CreateSnapshotBeforeSchemaExtension=, LdifContent=, Description=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "StartSchemaExtension", arguments::Dict)
    ds([::AWSConfig], "StartSchemaExtension", DirectoryId=, CreateSnapshotBeforeSchemaExtension=, LdifContent=, Description=)

# StartSchemaExtension Operation

Applies a schema extension to a Microsoft AD directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
The identifier of the directory for which the schema extension will be applied to.


## `CreateSnapshotBeforeSchemaExtension = ::Bool` -- *Required*
If true, creates a snapshot of the directory before applying the schema extension.


## `LdifContent = ::String` -- *Required*
The LDIF file represented as a string. To construct the LdifContent string, precede each line as it would be formatted in an ldif file with \\n. See the example request below for more details. The file size can be no larger than 1MB.


## `Description = ::String` -- *Required*
A description of the schema extension.




# Returns

`StartSchemaExtensionResult`

# Exceptions

`DirectoryUnavailableException`, `EntityDoesNotExistException`, `InvalidParameterException`, `SnapshotLimitExceededException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/StartSchemaExtension)
"""
@inline start_schema_extension(aws::AWSConfig=default_aws_config(); args...) = start_schema_extension(aws, args)

@inline start_schema_extension(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "StartSchemaExtension", args)

@inline start_schema_extension(args) = start_schema_extension(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.update_conditional_forwarder
    update_conditional_forwarder([::AWSConfig], arguments::Dict)
    update_conditional_forwarder([::AWSConfig]; DirectoryId=, RemoteDomainName=, DnsIpAddrs=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "UpdateConditionalForwarder", arguments::Dict)
    ds([::AWSConfig], "UpdateConditionalForwarder", DirectoryId=, RemoteDomainName=, DnsIpAddrs=)

# UpdateConditionalForwarder Operation

Updates a conditional forwarder that has been set up for your AWS directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
The directory ID of the AWS directory for which to update the conditional forwarder.


## `RemoteDomainName = ::String` -- *Required*
The fully qualified domain name (FQDN) of the remote domain with which you will set up a trust relationship.


## `DnsIpAddrs = [::String, ...]` -- *Required*
The updated IP addresses of the remote DNS server associated with the conditional forwarder.




# Returns

`UpdateConditionalForwarderResult`

# Exceptions

`EntityDoesNotExistException`, `DirectoryUnavailableException`, `InvalidParameterException`, `UnsupportedOperationException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateConditionalForwarder)
"""
@inline update_conditional_forwarder(aws::AWSConfig=default_aws_config(); args...) = update_conditional_forwarder(aws, args)

@inline update_conditional_forwarder(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "UpdateConditionalForwarder", args)

@inline update_conditional_forwarder(args) = update_conditional_forwarder(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.update_number_of_domain_controllers
    update_number_of_domain_controllers([::AWSConfig], arguments::Dict)
    update_number_of_domain_controllers([::AWSConfig]; DirectoryId=, DesiredNumber=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "UpdateNumberOfDomainControllers", arguments::Dict)
    ds([::AWSConfig], "UpdateNumberOfDomainControllers", DirectoryId=, DesiredNumber=)

# UpdateNumberOfDomainControllers Operation

Adds or removes domain controllers to or from the directory. Based on the difference between current value and new value (provided through this API call), domain controllers will be added or removed. It may take up to 45 minutes for any new domain controllers to become fully active once the requested number of domain controllers is updated. During this time, you cannot make another update request.

# Arguments

## `DirectoryId = ::String` -- *Required*
Identifier of the directory to which the domain controllers will be added or removed.


## `DesiredNumber = ::Int` -- *Required*
The number of domain controllers desired in the directory.




# Returns

`UpdateNumberOfDomainControllersResult`

# Exceptions

`EntityDoesNotExistException`, `DirectoryUnavailableException`, `DomainControllerLimitExceededException`, `InvalidParameterException`, `UnsupportedOperationException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateNumberOfDomainControllers)
"""
@inline update_number_of_domain_controllers(aws::AWSConfig=default_aws_config(); args...) = update_number_of_domain_controllers(aws, args)

@inline update_number_of_domain_controllers(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "UpdateNumberOfDomainControllers", args)

@inline update_number_of_domain_controllers(args) = update_number_of_domain_controllers(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.update_radius
    update_radius([::AWSConfig], arguments::Dict)
    update_radius([::AWSConfig]; DirectoryId=, RadiusSettings=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "UpdateRadius", arguments::Dict)
    ds([::AWSConfig], "UpdateRadius", DirectoryId=, RadiusSettings=)

# UpdateRadius Operation

Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector directory.

# Arguments

## `DirectoryId = ::String` -- *Required*
The identifier of the directory for which to update the RADIUS server information.


## `RadiusSettings = [ ... ]` -- *Required*
A [RadiusSettings](@ref) object that contains information about the RADIUS server.
```
 RadiusSettings = [
        "RadiusServers" =>  [::String, ...],
        "RadiusPort" =>  ::Int,
        "RadiusTimeout" =>  ::Int,
        "RadiusRetries" =>  ::Int,
        "SharedSecret" =>  ::String,
        "AuthenticationProtocol" =>  "PAP", "CHAP", "MS-CHAPv1" or "MS-CHAPv2",
        "DisplayLabel" =>  ::String,
        "UseSameUsername" =>  ::Bool
    ]
```



# Returns

`UpdateRadiusResult`

# Exceptions

`InvalidParameterException`, `EntityDoesNotExistException`, `ClientException` or `ServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateRadius)
"""
@inline update_radius(aws::AWSConfig=default_aws_config(); args...) = update_radius(aws, args)

@inline update_radius(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "UpdateRadius", args)

@inline update_radius(args) = update_radius(default_aws_config(), args)


"""
    using AWSSDK.DirectoryService.verify_trust
    verify_trust([::AWSConfig], arguments::Dict)
    verify_trust([::AWSConfig]; TrustId=)

    using AWSCore.Services.ds
    ds([::AWSConfig], "VerifyTrust", arguments::Dict)
    ds([::AWSConfig], "VerifyTrust", TrustId=)

# VerifyTrust Operation

AWS Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships.

This action verifies a trust relationship between your Microsoft AD in the AWS cloud and an external domain.

# Arguments

## `TrustId = ::String` -- *Required*
The unique Trust ID of the trust relationship to verify.




# Returns

`VerifyTrustResult`

# Exceptions

`EntityDoesNotExistException`, `InvalidParameterException`, `ClientException`, `ServiceException` or `UnsupportedOperationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/VerifyTrust)
"""
@inline verify_trust(aws::AWSConfig=default_aws_config(); args...) = verify_trust(aws, args)

@inline verify_trust(aws::AWSConfig, args) = AWSCore.Services.ds(aws, "VerifyTrust", args)

@inline verify_trust(args) = verify_trust(default_aws_config(), args)




end # module DirectoryService


#==============================================================================#
# End of file
#==============================================================================#
