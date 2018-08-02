#==============================================================================#
# DirectConnect.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/directconnect-2012-10-25.normal.json
#==============================================================================#

__precompile__()

module DirectConnect

using AWSCore


"""
    using AWSSDK.DirectConnect.allocate_connection_on_interconnect
    allocate_connection_on_interconnect([::AWSConfig], arguments::Dict)
    allocate_connection_on_interconnect([::AWSConfig]; bandwidth=, connectionName=, ownerAccount=, interconnectId=, vlan=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "AllocateConnectionOnInterconnect", arguments::Dict)
    directconnect([::AWSConfig], "AllocateConnectionOnInterconnect", bandwidth=, connectionName=, ownerAccount=, interconnectId=, vlan=)

# AllocateConnectionOnInterconnect Operation

Deprecated in favor of [AllocateHostedConnection](@ref).

Creates a hosted connection on an interconnect.

Allocates a VLAN number and a specified amount of bandwidth for use by a hosted connection on the given interconnect.

**Note**
> This is intended for use by AWS Direct Connect partners only.

# Arguments

## `bandwidth = ::String` -- *Required*
Bandwidth of the connection.

Example: "*500Mbps*"

Default: None

Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps


## `connectionName = ::String` -- *Required*
Name of the provisioned connection.

Example: "*500M Connection to AWS*"

Default: None


## `ownerAccount = ::String` -- *Required*
Numeric account Id of the customer for whom the connection will be provisioned.

Example: 123443215678

Default: None


## `interconnectId = ::String` -- *Required*
ID of the interconnect on which the connection will be provisioned.

Example: dxcon-456abc78

Default: None


## `vlan = ::Int` -- *Required*
The dedicated VLAN provisioned to the connection.

Example: 101

Default: None




# Returns

`Connection`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocateConnectionOnInterconnect)
"""
@inline allocate_connection_on_interconnect(aws::AWSConfig=default_aws_config(); args...) = allocate_connection_on_interconnect(aws, args)

@inline allocate_connection_on_interconnect(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "AllocateConnectionOnInterconnect", args)

@inline allocate_connection_on_interconnect(args) = allocate_connection_on_interconnect(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.allocate_hosted_connection
    allocate_hosted_connection([::AWSConfig], arguments::Dict)
    allocate_hosted_connection([::AWSConfig]; connectionId=, ownerAccount=, bandwidth=, connectionName=, vlan=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "AllocateHostedConnection", arguments::Dict)
    directconnect([::AWSConfig], "AllocateHostedConnection", connectionId=, ownerAccount=, bandwidth=, connectionName=, vlan=)

# AllocateHostedConnection Operation

Creates a hosted connection on an interconnect or a link aggregation group (LAG).

Allocates a VLAN number and a specified amount of bandwidth for use by a hosted connection on the given interconnect or LAG.

**Note**
> This is intended for use by AWS Direct Connect partners only.

# Arguments

## `connectionId = ::String` -- *Required*
The ID of the interconnect or LAG on which the connection will be provisioned.

Example: dxcon-456abc78 or dxlag-abc123

Default: None


## `ownerAccount = ::String` -- *Required*
The numeric account ID of the customer for whom the connection will be provisioned.

Example: 123443215678

Default: None


## `bandwidth = ::String` -- *Required*
The bandwidth of the connection.

Example: `500Mbps`

Default: None

Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps


## `connectionName = ::String` -- *Required*
The name of the provisioned connection.

Example: "`500M Connection to AWS`"

Default: None


## `vlan = ::Int` -- *Required*
The dedicated VLAN provisioned to the hosted connection.

Example: 101

Default: None




# Returns

`Connection`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocateHostedConnection)
"""
@inline allocate_hosted_connection(aws::AWSConfig=default_aws_config(); args...) = allocate_hosted_connection(aws, args)

@inline allocate_hosted_connection(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "AllocateHostedConnection", args)

@inline allocate_hosted_connection(args) = allocate_hosted_connection(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.allocate_private_virtual_interface
    allocate_private_virtual_interface([::AWSConfig], arguments::Dict)
    allocate_private_virtual_interface([::AWSConfig]; connectionId=, ownerAccount=, newPrivateVirtualInterfaceAllocation=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "AllocatePrivateVirtualInterface", arguments::Dict)
    directconnect([::AWSConfig], "AllocatePrivateVirtualInterface", connectionId=, ownerAccount=, newPrivateVirtualInterfaceAllocation=)

# AllocatePrivateVirtualInterface Operation

Provisions a private virtual interface to be owned by another AWS customer.

Virtual interfaces created using this action must be confirmed by the virtual interface owner by using the [ConfirmPrivateVirtualInterface](@ref) action. Until then, the virtual interface will be in 'Confirming' state, and will not be available for handling traffic.

# Arguments

## `connectionId = ::String` -- *Required*
The connection ID on which the private virtual interface is provisioned.

Default: None


## `ownerAccount = ::String` -- *Required*
The AWS account that will own the new private virtual interface.

Default: None


## `newPrivateVirtualInterfaceAllocation = [ ... ]` -- *Required*
Detailed information for the private virtual interface to be provisioned.

Default: None
```
 newPrivateVirtualInterfaceAllocation = [
        "virtualInterfaceName" => <required> ::String,
        "vlan" => <required> ::Int,
        "asn" => <required> ::Int,
        "authKey" =>  ::String,
        "amazonAddress" =>  ::String,
        "addressFamily" =>  "ipv4" or "ipv6",
        "customerAddress" =>  ::String
    ]
```



# Returns

`VirtualInterface`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocatePrivateVirtualInterface)
"""
@inline allocate_private_virtual_interface(aws::AWSConfig=default_aws_config(); args...) = allocate_private_virtual_interface(aws, args)

@inline allocate_private_virtual_interface(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "AllocatePrivateVirtualInterface", args)

@inline allocate_private_virtual_interface(args) = allocate_private_virtual_interface(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.allocate_public_virtual_interface
    allocate_public_virtual_interface([::AWSConfig], arguments::Dict)
    allocate_public_virtual_interface([::AWSConfig]; connectionId=, ownerAccount=, newPublicVirtualInterfaceAllocation=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "AllocatePublicVirtualInterface", arguments::Dict)
    directconnect([::AWSConfig], "AllocatePublicVirtualInterface", connectionId=, ownerAccount=, newPublicVirtualInterfaceAllocation=)

# AllocatePublicVirtualInterface Operation

Provisions a public virtual interface to be owned by a different customer.

The owner of a connection calls this function to provision a public virtual interface which will be owned by another AWS customer.

Virtual interfaces created using this function must be confirmed by the virtual interface owner by calling ConfirmPublicVirtualInterface. Until this step has been completed, the virtual interface will be in 'Confirming' state, and will not be available for handling traffic.

When creating an IPv6 public virtual interface (addressFamily is 'ipv6'), the customer and amazon address fields should be left blank to use auto-assigned IPv6 space. Custom IPv6 Addresses are currently not supported.

# Arguments

## `connectionId = ::String` -- *Required*
The connection ID on which the public virtual interface is provisioned.

Default: None


## `ownerAccount = ::String` -- *Required*
The AWS account that will own the new public virtual interface.

Default: None


## `newPublicVirtualInterfaceAllocation = [ ... ]` -- *Required*
Detailed information for the public virtual interface to be provisioned.

Default: None
```
 newPublicVirtualInterfaceAllocation = [
        "virtualInterfaceName" => <required> ::String,
        "vlan" => <required> ::Int,
        "asn" => <required> ::Int,
        "authKey" =>  ::String,
        "amazonAddress" =>  ::String,
        "customerAddress" =>  ::String,
        "addressFamily" =>  "ipv4" or "ipv6",
        "routeFilterPrefixes" =>  [["cidr" =>  ::String], ...]
    ]
```



# Returns

`VirtualInterface`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AllocatePublicVirtualInterface)
"""
@inline allocate_public_virtual_interface(aws::AWSConfig=default_aws_config(); args...) = allocate_public_virtual_interface(aws, args)

@inline allocate_public_virtual_interface(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "AllocatePublicVirtualInterface", args)

@inline allocate_public_virtual_interface(args) = allocate_public_virtual_interface(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.associate_connection_with_lag
    associate_connection_with_lag([::AWSConfig], arguments::Dict)
    associate_connection_with_lag([::AWSConfig]; connectionId=, lagId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "AssociateConnectionWithLag", arguments::Dict)
    directconnect([::AWSConfig], "AssociateConnectionWithLag", connectionId=, lagId=)

# AssociateConnectionWithLag Operation

Associates an existing connection with a link aggregation group (LAG). The connection is interrupted and re-established as a member of the LAG (connectivity to AWS will be interrupted). The connection must be hosted on the same AWS Direct Connect endpoint as the LAG, and its bandwidth must match the bandwidth for the LAG. You can reassociate a connection that's currently associated with a different LAG; however, if removing the connection will cause the original LAG to fall below its setting for minimum number of operational connections, the request fails.

Any virtual interfaces that are directly associated with the connection are automatically re-associated with the LAG. If the connection was originally associated with a different LAG, the virtual interfaces remain associated with the original LAG.

For interconnects, any hosted connections are automatically re-associated with the LAG. If the interconnect was originally associated with a different LAG, the hosted connections remain associated with the original LAG.

# Arguments

## `connectionId = ::String` -- *Required*
The ID of the connection.

Example: dxcon-abc123

Default: None


## `lagId = ::String` -- *Required*
The ID of the LAG with which to associate the connection.

Example: dxlag-abc123

Default: None




# Returns

`Connection`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateConnectionWithLag)
"""
@inline associate_connection_with_lag(aws::AWSConfig=default_aws_config(); args...) = associate_connection_with_lag(aws, args)

@inline associate_connection_with_lag(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "AssociateConnectionWithLag", args)

@inline associate_connection_with_lag(args) = associate_connection_with_lag(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.associate_hosted_connection
    associate_hosted_connection([::AWSConfig], arguments::Dict)
    associate_hosted_connection([::AWSConfig]; connectionId=, parentConnectionId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "AssociateHostedConnection", arguments::Dict)
    directconnect([::AWSConfig], "AssociateHostedConnection", connectionId=, parentConnectionId=)

# AssociateHostedConnection Operation

Associates a hosted connection and its virtual interfaces with a link aggregation group (LAG) or interconnect. If the target interconnect or LAG has an existing hosted connection with a conflicting VLAN number or IP address, the operation fails. This action temporarily interrupts the hosted connection's connectivity to AWS as it is being migrated.

**Note**
> This is intended for use by AWS Direct Connect partners only.

# Arguments

## `connectionId = ::String` -- *Required*
The ID of the hosted connection.

Example: dxcon-abc123

Default: None


## `parentConnectionId = ::String` -- *Required*
The ID of the interconnect or the LAG.

Example: dxcon-abc123 or dxlag-abc123

Default: None




# Returns

`Connection`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateHostedConnection)
"""
@inline associate_hosted_connection(aws::AWSConfig=default_aws_config(); args...) = associate_hosted_connection(aws, args)

@inline associate_hosted_connection(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "AssociateHostedConnection", args)

@inline associate_hosted_connection(args) = associate_hosted_connection(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.associate_virtual_interface
    associate_virtual_interface([::AWSConfig], arguments::Dict)
    associate_virtual_interface([::AWSConfig]; virtualInterfaceId=, connectionId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "AssociateVirtualInterface", arguments::Dict)
    directconnect([::AWSConfig], "AssociateVirtualInterface", virtualInterfaceId=, connectionId=)

# AssociateVirtualInterface Operation

Associates a virtual interface with a specified link aggregation group (LAG) or connection. Connectivity to AWS is temporarily interrupted as the virtual interface is being migrated. If the target connection or LAG has an associated virtual interface with a conflicting VLAN number or a conflicting IP address, the operation fails.

Virtual interfaces associated with a hosted connection cannot be associated with a LAG; hosted connections must be migrated along with their virtual interfaces using [AssociateHostedConnection](@ref).

In order to reassociate a virtual interface to a new connection or LAG, the requester must own either the virtual interface itself or the connection to which the virtual interface is currently associated. Additionally, the requester must own the connection or LAG to which the virtual interface will be newly associated.

# Arguments

## `virtualInterfaceId = ::String` -- *Required*
The ID of the virtual interface.

Example: dxvif-123dfg56

Default: None


## `connectionId = ::String` -- *Required*
The ID of the LAG or connection with which to associate the virtual interface.

Example: dxlag-abc123 or dxcon-abc123

Default: None




# Returns

`VirtualInterface`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/AssociateVirtualInterface)
"""
@inline associate_virtual_interface(aws::AWSConfig=default_aws_config(); args...) = associate_virtual_interface(aws, args)

@inline associate_virtual_interface(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "AssociateVirtualInterface", args)

@inline associate_virtual_interface(args) = associate_virtual_interface(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.confirm_connection
    confirm_connection([::AWSConfig], arguments::Dict)
    confirm_connection([::AWSConfig]; connectionId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "ConfirmConnection", arguments::Dict)
    directconnect([::AWSConfig], "ConfirmConnection", connectionId=)

# ConfirmConnection Operation

Confirm the creation of a hosted connection on an interconnect.

Upon creation, the hosted connection is initially in the 'Ordering' state, and will remain in this state until the owner calls ConfirmConnection to confirm creation of the hosted connection.

# Arguments

## `connectionId = ::String` -- *Required*





# Returns

`ConfirmConnectionResponse`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmConnection)
"""
@inline confirm_connection(aws::AWSConfig=default_aws_config(); args...) = confirm_connection(aws, args)

@inline confirm_connection(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "ConfirmConnection", args)

@inline confirm_connection(args) = confirm_connection(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.confirm_private_virtual_interface
    confirm_private_virtual_interface([::AWSConfig], arguments::Dict)
    confirm_private_virtual_interface([::AWSConfig]; virtualInterfaceId=, <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "ConfirmPrivateVirtualInterface", arguments::Dict)
    directconnect([::AWSConfig], "ConfirmPrivateVirtualInterface", virtualInterfaceId=, <keyword arguments>)

# ConfirmPrivateVirtualInterface Operation

Accept ownership of a private virtual interface created by another customer.

After the virtual interface owner calls this function, the virtual interface will be created and attached to the given virtual private gateway or direct connect gateway, and will be available for handling traffic.

# Arguments

## `virtualInterfaceId = ::String` -- *Required*



## `virtualGatewayId = ::String`
ID of the virtual private gateway that will be attached to the virtual interface.

A virtual private gateway can be managed via the Amazon Virtual Private Cloud (VPC) console or the [EC2 CreateVpnGateway](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html) action.

Default: None


## `directConnectGatewayId = ::String`
ID of the direct connect gateway that will be attached to the virtual interface.

A direct connect gateway can be managed via the AWS Direct Connect console or the [CreateDirectConnectGateway](@ref) action.

Default: None




# Returns

`ConfirmPrivateVirtualInterfaceResponse`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPrivateVirtualInterface)
"""
@inline confirm_private_virtual_interface(aws::AWSConfig=default_aws_config(); args...) = confirm_private_virtual_interface(aws, args)

@inline confirm_private_virtual_interface(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "ConfirmPrivateVirtualInterface", args)

@inline confirm_private_virtual_interface(args) = confirm_private_virtual_interface(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.confirm_public_virtual_interface
    confirm_public_virtual_interface([::AWSConfig], arguments::Dict)
    confirm_public_virtual_interface([::AWSConfig]; virtualInterfaceId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "ConfirmPublicVirtualInterface", arguments::Dict)
    directconnect([::AWSConfig], "ConfirmPublicVirtualInterface", virtualInterfaceId=)

# ConfirmPublicVirtualInterface Operation

Accept ownership of a public virtual interface created by another customer.

After the virtual interface owner calls this function, the specified virtual interface will be created and made available for handling traffic.

# Arguments

## `virtualInterfaceId = ::String` -- *Required*





# Returns

`ConfirmPublicVirtualInterfaceResponse`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/ConfirmPublicVirtualInterface)
"""
@inline confirm_public_virtual_interface(aws::AWSConfig=default_aws_config(); args...) = confirm_public_virtual_interface(aws, args)

@inline confirm_public_virtual_interface(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "ConfirmPublicVirtualInterface", args)

@inline confirm_public_virtual_interface(args) = confirm_public_virtual_interface(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.create_bgppeer
    create_bgppeer([::AWSConfig], arguments::Dict)
    create_bgppeer([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "CreateBGPPeer", arguments::Dict)
    directconnect([::AWSConfig], "CreateBGPPeer", <keyword arguments>)

# CreateBGPPeer Operation

Creates a new BGP peer on a specified virtual interface. The BGP peer cannot be in the same address family (IPv4/IPv6) of an existing BGP peer on the virtual interface.

You must create a BGP peer for the corresponding address family in order to access AWS resources that also use that address family.

When creating a IPv6 BGP peer, the Amazon address and customer address fields must be left blank. IPv6 addresses are automatically assigned from Amazon's pool of IPv6 addresses; you cannot specify custom IPv6 addresses.

For a public virtual interface, the Autonomous System Number (ASN) must be private or already whitelisted for the virtual interface.

# Arguments

## `virtualInterfaceId = ::String`
The ID of the virtual interface on which the BGP peer will be provisioned.

Example: dxvif-456abc78

Default: None


## `newBGPPeer = [ ... ]`
Detailed information for the BGP peer to be created.

Default: None
```
 newBGPPeer = [
        "asn" =>  ::Int,
        "authKey" =>  ::String,
        "addressFamily" =>  "ipv4" or "ipv6",
        "amazonAddress" =>  ::String,
        "customerAddress" =>  ::String
    ]
```



# Returns

`CreateBGPPeerResponse`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateBGPPeer)
"""
@inline create_bgppeer(aws::AWSConfig=default_aws_config(); args...) = create_bgppeer(aws, args)

@inline create_bgppeer(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "CreateBGPPeer", args)

@inline create_bgppeer(args) = create_bgppeer(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.create_connection
    create_connection([::AWSConfig], arguments::Dict)
    create_connection([::AWSConfig]; location=, bandwidth=, connectionName=, <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "CreateConnection", arguments::Dict)
    directconnect([::AWSConfig], "CreateConnection", location=, bandwidth=, connectionName=, <keyword arguments>)

# CreateConnection Operation

Creates a new connection between the customer network and a specific AWS Direct Connect location.

A connection links your internal network to an AWS Direct Connect location over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router. An AWS Direct Connect location provides access to Amazon Web Services in the region it is associated with. You can establish connections with AWS Direct Connect locations in multiple regions, but a connection in one region does not provide connectivity to other regions.

To find the locations for your region, use [DescribeLocations](@ref).

You can automatically add the new connection to a link aggregation group (LAG) by specifying a LAG ID in the request. This ensures that the new connection is allocated on the same AWS Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint, the request fails and no connection will be created.

# Arguments

## `location = ::String` -- *Required*



## `bandwidth = ::String` -- *Required*



## `connectionName = ::String` -- *Required*



## `lagId = ::String`





# Returns

`Connection`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateConnection)
"""
@inline create_connection(aws::AWSConfig=default_aws_config(); args...) = create_connection(aws, args)

@inline create_connection(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "CreateConnection", args)

@inline create_connection(args) = create_connection(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.create_direct_connect_gateway
    create_direct_connect_gateway([::AWSConfig], arguments::Dict)
    create_direct_connect_gateway([::AWSConfig]; directConnectGatewayName=, <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "CreateDirectConnectGateway", arguments::Dict)
    directconnect([::AWSConfig], "CreateDirectConnectGateway", directConnectGatewayName=, <keyword arguments>)

# CreateDirectConnectGateway Operation

Creates a new direct connect gateway. A direct connect gateway is an intermediate object that enables you to connect a set of virtual interfaces and virtual private gateways. direct connect gateways are global and visible in any AWS region after they are created. The virtual interfaces and virtual private gateways that are connected through a direct connect gateway can be in different regions. This enables you to connect to a VPC in any region, regardless of the region in which the virtual interfaces are located, and pass traffic between them.

# Arguments

## `directConnectGatewayName = ::String` -- *Required*
The name of the direct connect gateway.

Example: "My direct connect gateway"

Default: None


## `amazonSideAsn = ::Int`
The autonomous system number (ASN) for Border Gateway Protocol (BGP) to be configured on the Amazon side of the connection. The ASN must be in the private range of 64,512 to 65,534 or 4,200,000,000 to 4,294,967,294

Example: 65200

Default: 64512




# Returns

`CreateDirectConnectGatewayResult`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGateway)
"""
@inline create_direct_connect_gateway(aws::AWSConfig=default_aws_config(); args...) = create_direct_connect_gateway(aws, args)

@inline create_direct_connect_gateway(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "CreateDirectConnectGateway", args)

@inline create_direct_connect_gateway(args) = create_direct_connect_gateway(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.create_direct_connect_gateway_association
    create_direct_connect_gateway_association([::AWSConfig], arguments::Dict)
    create_direct_connect_gateway_association([::AWSConfig]; directConnectGatewayId=, virtualGatewayId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "CreateDirectConnectGatewayAssociation", arguments::Dict)
    directconnect([::AWSConfig], "CreateDirectConnectGatewayAssociation", directConnectGatewayId=, virtualGatewayId=)

# CreateDirectConnectGatewayAssociation Operation

Creates an association between a direct connect gateway and a virtual private gateway (VGW). The VGW must be attached to a VPC and must not be associated with another direct connect gateway.

# Arguments

## `directConnectGatewayId = ::String` -- *Required*
The ID of the direct connect gateway.

Example: "abcd1234-dcba-5678-be23-cdef9876ab45"

Default: None


## `virtualGatewayId = ::String` -- *Required*
The ID of the virtual private gateway.

Example: "vgw-abc123ef"

Default: None




# Returns

`CreateDirectConnectGatewayAssociationResult`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateDirectConnectGatewayAssociation)
"""
@inline create_direct_connect_gateway_association(aws::AWSConfig=default_aws_config(); args...) = create_direct_connect_gateway_association(aws, args)

@inline create_direct_connect_gateway_association(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "CreateDirectConnectGatewayAssociation", args)

@inline create_direct_connect_gateway_association(args) = create_direct_connect_gateway_association(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.create_interconnect
    create_interconnect([::AWSConfig], arguments::Dict)
    create_interconnect([::AWSConfig]; interconnectName=, bandwidth=, location=, <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "CreateInterconnect", arguments::Dict)
    directconnect([::AWSConfig], "CreateInterconnect", interconnectName=, bandwidth=, location=, <keyword arguments>)

# CreateInterconnect Operation

Creates a new interconnect between a AWS Direct Connect partner's network and a specific AWS Direct Connect location.

An interconnect is a connection which is capable of hosting other connections. The AWS Direct Connect partner can use an interconnect to provide sub-1Gbps AWS Direct Connect service to tier 2 customers who do not have their own connections. Like a standard connection, an interconnect links the AWS Direct Connect partner's network to an AWS Direct Connect location over a standard 1 Gbps or 10 Gbps Ethernet fiber-optic cable. One end is connected to the partner's router, the other to an AWS Direct Connect router.

You can automatically add the new interconnect to a link aggregation group (LAG) by specifying a LAG ID in the request. This ensures that the new interconnect is allocated on the same AWS Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint, the request fails and no interconnect will be created.

For each end customer, the AWS Direct Connect partner provisions a connection on their interconnect by calling AllocateConnectionOnInterconnect. The end customer can then connect to AWS resources by creating a virtual interface on their connection, using the VLAN assigned to them by the AWS Direct Connect partner.

**Note**
> This is intended for use by AWS Direct Connect partners only.

# Arguments

## `interconnectName = ::String` -- *Required*
The name of the interconnect.

Example: "*1G Interconnect to AWS*"

Default: None


## `bandwidth = ::String` -- *Required*
The port bandwidth

Example: 1Gbps

Default: None

Available values: 1Gbps,10Gbps


## `location = ::String` -- *Required*
Where the interconnect is located

Example: EqSV5

Default: None


## `lagId = ::String`





# Returns

`Interconnect`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateInterconnect)
"""
@inline create_interconnect(aws::AWSConfig=default_aws_config(); args...) = create_interconnect(aws, args)

@inline create_interconnect(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "CreateInterconnect", args)

@inline create_interconnect(args) = create_interconnect(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.create_lag
    create_lag([::AWSConfig], arguments::Dict)
    create_lag([::AWSConfig]; numberOfConnections=, location=, connectionsBandwidth=, lagName=, <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "CreateLag", arguments::Dict)
    directconnect([::AWSConfig], "CreateLag", numberOfConnections=, location=, connectionsBandwidth=, lagName=, <keyword arguments>)

# CreateLag Operation

Creates a new link aggregation group (LAG) with the specified number of bundled physical connections between the customer network and a specific AWS Direct Connect location. A LAG is a logical interface that uses the Link Aggregation Control Protocol (LACP) to aggregate multiple 1 gigabit or 10 gigabit interfaces, allowing you to treat them as a single interface.

All connections in a LAG must use the same bandwidth (for example, 10 Gbps), and must terminate at the same AWS Direct Connect endpoint.

You can have up to 10 connections per LAG. Regardless of this limit, if you request more connections for the LAG than AWS Direct Connect can allocate on a single endpoint, no LAG is created.

You can specify an existing physical connection or interconnect to include in the LAG (which counts towards the total number of connections). Doing so interrupts the current physical connection or hosted connections, and re-establishes them as a member of the LAG. The LAG will be created on the same AWS Direct Connect endpoint to which the connection terminates. Any virtual interfaces associated with the connection are automatically disassociated and re-associated with the LAG. The connection ID does not change.

If the AWS account used to create a LAG is a registered AWS Direct Connect partner, the LAG is automatically enabled to host sub-connections. For a LAG owned by a partner, any associated virtual interfaces cannot be directly configured.

# Arguments

## `numberOfConnections = ::Int` -- *Required*
The number of physical connections initially provisioned and bundled by the LAG.

Default: None


## `location = ::String` -- *Required*
The AWS Direct Connect location in which the LAG should be allocated.

Example: EqSV5

Default: None


## `connectionsBandwidth = ::String` -- *Required*
The bandwidth of the individual physical connections bundled by the LAG.

Default: None

Available values: 1Gbps, 10Gbps


## `lagName = ::String` -- *Required*
The name of the LAG.

Example: "`3x10G LAG to AWS`"

Default: None


## `connectionId = ::String`
The ID of an existing connection to migrate to the LAG.

Default: None




# Returns

`Lag`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreateLag)
"""
@inline create_lag(aws::AWSConfig=default_aws_config(); args...) = create_lag(aws, args)

@inline create_lag(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "CreateLag", args)

@inline create_lag(args) = create_lag(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.create_private_virtual_interface
    create_private_virtual_interface([::AWSConfig], arguments::Dict)
    create_private_virtual_interface([::AWSConfig]; connectionId=, newPrivateVirtualInterface=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "CreatePrivateVirtualInterface", arguments::Dict)
    directconnect([::AWSConfig], "CreatePrivateVirtualInterface", connectionId=, newPrivateVirtualInterface=)

# CreatePrivateVirtualInterface Operation

Creates a new private virtual interface. A virtual interface is the VLAN that transports AWS Direct Connect traffic. A private virtual interface supports sending traffic to a single virtual private cloud (VPC).

# Arguments

## `connectionId = ::String` -- *Required*



## `newPrivateVirtualInterface = [ ... ]` -- *Required*
Detailed information for the private virtual interface to be created.

Default: None
```
 newPrivateVirtualInterface = [
        "virtualInterfaceName" => <required> ::String,
        "vlan" => <required> ::Int,
        "asn" => <required> ::Int,
        "authKey" =>  ::String,
        "amazonAddress" =>  ::String,
        "customerAddress" =>  ::String,
        "addressFamily" =>  "ipv4" or "ipv6",
        "virtualGatewayId" =>  ::String,
        "directConnectGatewayId" =>  ::String
    ]
```



# Returns

`VirtualInterface`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreatePrivateVirtualInterface)
"""
@inline create_private_virtual_interface(aws::AWSConfig=default_aws_config(); args...) = create_private_virtual_interface(aws, args)

@inline create_private_virtual_interface(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "CreatePrivateVirtualInterface", args)

@inline create_private_virtual_interface(args) = create_private_virtual_interface(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.create_public_virtual_interface
    create_public_virtual_interface([::AWSConfig], arguments::Dict)
    create_public_virtual_interface([::AWSConfig]; connectionId=, newPublicVirtualInterface=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "CreatePublicVirtualInterface", arguments::Dict)
    directconnect([::AWSConfig], "CreatePublicVirtualInterface", connectionId=, newPublicVirtualInterface=)

# CreatePublicVirtualInterface Operation

Creates a new public virtual interface. A virtual interface is the VLAN that transports AWS Direct Connect traffic. A public virtual interface supports sending traffic to public services of AWS such as Amazon Simple Storage Service (Amazon S3).

When creating an IPv6 public virtual interface (addressFamily is 'ipv6'), the customer and amazon address fields should be left blank to use auto-assigned IPv6 space. Custom IPv6 Addresses are currently not supported.

# Arguments

## `connectionId = ::String` -- *Required*



## `newPublicVirtualInterface = [ ... ]` -- *Required*
Detailed information for the public virtual interface to be created.

Default: None
```
 newPublicVirtualInterface = [
        "virtualInterfaceName" => <required> ::String,
        "vlan" => <required> ::Int,
        "asn" => <required> ::Int,
        "authKey" =>  ::String,
        "amazonAddress" =>  ::String,
        "customerAddress" =>  ::String,
        "addressFamily" =>  "ipv4" or "ipv6",
        "routeFilterPrefixes" =>  [["cidr" =>  ::String], ...]
    ]
```



# Returns

`VirtualInterface`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/CreatePublicVirtualInterface)
"""
@inline create_public_virtual_interface(aws::AWSConfig=default_aws_config(); args...) = create_public_virtual_interface(aws, args)

@inline create_public_virtual_interface(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "CreatePublicVirtualInterface", args)

@inline create_public_virtual_interface(args) = create_public_virtual_interface(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.delete_bgppeer
    delete_bgppeer([::AWSConfig], arguments::Dict)
    delete_bgppeer([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DeleteBGPPeer", arguments::Dict)
    directconnect([::AWSConfig], "DeleteBGPPeer", <keyword arguments>)

# DeleteBGPPeer Operation

Deletes a BGP peer on the specified virtual interface that matches the specified customer address and ASN. You cannot delete the last BGP peer from a virtual interface.

# Arguments

## `virtualInterfaceId = ::String`
The ID of the virtual interface from which the BGP peer will be deleted.

Example: dxvif-456abc78

Default: None


## `asn = ::Int`



## `customerAddress = ::String`





# Returns

`DeleteBGPPeerResponse`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteBGPPeer)
"""
@inline delete_bgppeer(aws::AWSConfig=default_aws_config(); args...) = delete_bgppeer(aws, args)

@inline delete_bgppeer(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DeleteBGPPeer", args)

@inline delete_bgppeer(args) = delete_bgppeer(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.delete_connection
    delete_connection([::AWSConfig], arguments::Dict)
    delete_connection([::AWSConfig]; connectionId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DeleteConnection", arguments::Dict)
    directconnect([::AWSConfig], "DeleteConnection", connectionId=)

# DeleteConnection Operation

Deletes the connection.

Deleting a connection only stops the AWS Direct Connect port hour and data transfer charges. You need to cancel separately with the providers any services or charges for cross-connects or network circuits that connect you to the AWS Direct Connect location.

# Arguments

## `connectionId = ::String` -- *Required*





# Returns

`Connection`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteConnection)
"""
@inline delete_connection(aws::AWSConfig=default_aws_config(); args...) = delete_connection(aws, args)

@inline delete_connection(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DeleteConnection", args)

@inline delete_connection(args) = delete_connection(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.delete_direct_connect_gateway
    delete_direct_connect_gateway([::AWSConfig], arguments::Dict)
    delete_direct_connect_gateway([::AWSConfig]; directConnectGatewayId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DeleteDirectConnectGateway", arguments::Dict)
    directconnect([::AWSConfig], "DeleteDirectConnectGateway", directConnectGatewayId=)

# DeleteDirectConnectGateway Operation

Deletes a direct connect gateway. You must first delete all virtual interfaces that are attached to the direct connect gateway and disassociate all virtual private gateways that are associated with the direct connect gateway.

# Arguments

## `directConnectGatewayId = ::String` -- *Required*
The ID of the direct connect gateway.

Example: "abcd1234-dcba-5678-be23-cdef9876ab45"

Default: None




# Returns

`DeleteDirectConnectGatewayResult`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGateway)
"""
@inline delete_direct_connect_gateway(aws::AWSConfig=default_aws_config(); args...) = delete_direct_connect_gateway(aws, args)

@inline delete_direct_connect_gateway(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DeleteDirectConnectGateway", args)

@inline delete_direct_connect_gateway(args) = delete_direct_connect_gateway(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.delete_direct_connect_gateway_association
    delete_direct_connect_gateway_association([::AWSConfig], arguments::Dict)
    delete_direct_connect_gateway_association([::AWSConfig]; directConnectGatewayId=, virtualGatewayId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DeleteDirectConnectGatewayAssociation", arguments::Dict)
    directconnect([::AWSConfig], "DeleteDirectConnectGatewayAssociation", directConnectGatewayId=, virtualGatewayId=)

# DeleteDirectConnectGatewayAssociation Operation

Deletes the association between a direct connect gateway and a virtual private gateway.

# Arguments

## `directConnectGatewayId = ::String` -- *Required*
The ID of the direct connect gateway.

Example: "abcd1234-dcba-5678-be23-cdef9876ab45"

Default: None


## `virtualGatewayId = ::String` -- *Required*
The ID of the virtual private gateway.

Example: "vgw-abc123ef"

Default: None




# Returns

`DeleteDirectConnectGatewayAssociationResult`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteDirectConnectGatewayAssociation)
"""
@inline delete_direct_connect_gateway_association(aws::AWSConfig=default_aws_config(); args...) = delete_direct_connect_gateway_association(aws, args)

@inline delete_direct_connect_gateway_association(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DeleteDirectConnectGatewayAssociation", args)

@inline delete_direct_connect_gateway_association(args) = delete_direct_connect_gateway_association(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.delete_interconnect
    delete_interconnect([::AWSConfig], arguments::Dict)
    delete_interconnect([::AWSConfig]; interconnectId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DeleteInterconnect", arguments::Dict)
    directconnect([::AWSConfig], "DeleteInterconnect", interconnectId=)

# DeleteInterconnect Operation

Deletes the specified interconnect.

**Note**
> This is intended for use by AWS Direct Connect partners only.

# Arguments

## `interconnectId = ::String` -- *Required*





# Returns

`DeleteInterconnectResponse`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteInterconnect)
"""
@inline delete_interconnect(aws::AWSConfig=default_aws_config(); args...) = delete_interconnect(aws, args)

@inline delete_interconnect(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DeleteInterconnect", args)

@inline delete_interconnect(args) = delete_interconnect(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.delete_lag
    delete_lag([::AWSConfig], arguments::Dict)
    delete_lag([::AWSConfig]; lagId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DeleteLag", arguments::Dict)
    directconnect([::AWSConfig], "DeleteLag", lagId=)

# DeleteLag Operation

Deletes a link aggregation group (LAG). You cannot delete a LAG if it has active virtual interfaces or hosted connections.

# Arguments

## `lagId = ::String` -- *Required*
The ID of the LAG to delete.

Example: dxlag-abc123

Default: None




# Returns

`Lag`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteLag)
"""
@inline delete_lag(aws::AWSConfig=default_aws_config(); args...) = delete_lag(aws, args)

@inline delete_lag(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DeleteLag", args)

@inline delete_lag(args) = delete_lag(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.delete_virtual_interface
    delete_virtual_interface([::AWSConfig], arguments::Dict)
    delete_virtual_interface([::AWSConfig]; virtualInterfaceId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DeleteVirtualInterface", arguments::Dict)
    directconnect([::AWSConfig], "DeleteVirtualInterface", virtualInterfaceId=)

# DeleteVirtualInterface Operation

Deletes a virtual interface.

# Arguments

## `virtualInterfaceId = ::String` -- *Required*





# Returns

`DeleteVirtualInterfaceResponse`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DeleteVirtualInterface)
"""
@inline delete_virtual_interface(aws::AWSConfig=default_aws_config(); args...) = delete_virtual_interface(aws, args)

@inline delete_virtual_interface(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DeleteVirtualInterface", args)

@inline delete_virtual_interface(args) = delete_virtual_interface(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_connection_loa
    describe_connection_loa([::AWSConfig], arguments::Dict)
    describe_connection_loa([::AWSConfig]; connectionId=, <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeConnectionLoa", arguments::Dict)
    directconnect([::AWSConfig], "DescribeConnectionLoa", connectionId=, <keyword arguments>)

# DescribeConnectionLoa Operation

Deprecated in favor of [DescribeLoa](@ref).

Returns the LOA-CFA for a Connection.

The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that your APN partner or service provider uses when establishing your cross connect to AWS at the colocation facility. For more information, see [Requesting Cross Connects at AWS Direct Connect Locations](http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html) in the AWS Direct Connect user guide.

# Arguments

## `connectionId = ::String` -- *Required*



## `providerName = ::String`
The name of the APN partner or service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.

Default: None


## `loaContentType = "application/pdf"`





# Returns

`DescribeConnectionLoaResponse`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionLoa)
"""
@inline describe_connection_loa(aws::AWSConfig=default_aws_config(); args...) = describe_connection_loa(aws, args)

@inline describe_connection_loa(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeConnectionLoa", args)

@inline describe_connection_loa(args) = describe_connection_loa(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_connections
    describe_connections([::AWSConfig], arguments::Dict)
    describe_connections([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeConnections", arguments::Dict)
    directconnect([::AWSConfig], "DescribeConnections", <keyword arguments>)

# DescribeConnections Operation

Displays all connections in this region.

If a connection ID is provided, the call returns only that particular connection.

# Arguments

## `connectionId = ::String`





# Returns

`Connections`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnections)
"""
@inline describe_connections(aws::AWSConfig=default_aws_config(); args...) = describe_connections(aws, args)

@inline describe_connections(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeConnections", args)

@inline describe_connections(args) = describe_connections(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_connections_on_interconnect
    describe_connections_on_interconnect([::AWSConfig], arguments::Dict)
    describe_connections_on_interconnect([::AWSConfig]; interconnectId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeConnectionsOnInterconnect", arguments::Dict)
    directconnect([::AWSConfig], "DescribeConnectionsOnInterconnect", interconnectId=)

# DescribeConnectionsOnInterconnect Operation

Deprecated in favor of [DescribeHostedConnections](@ref).

Returns a list of connections that have been provisioned on the given interconnect.

**Note**
> This is intended for use by AWS Direct Connect partners only.

# Arguments

## `interconnectId = ::String` -- *Required*
ID of the interconnect on which a list of connection is provisioned.

Example: dxcon-abc123

Default: None




# Returns

`Connections`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeConnectionsOnInterconnect)
"""
@inline describe_connections_on_interconnect(aws::AWSConfig=default_aws_config(); args...) = describe_connections_on_interconnect(aws, args)

@inline describe_connections_on_interconnect(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeConnectionsOnInterconnect", args)

@inline describe_connections_on_interconnect(args) = describe_connections_on_interconnect(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_direct_connect_gateway_associations
    describe_direct_connect_gateway_associations([::AWSConfig], arguments::Dict)
    describe_direct_connect_gateway_associations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeDirectConnectGatewayAssociations", arguments::Dict)
    directconnect([::AWSConfig], "DescribeDirectConnectGatewayAssociations", <keyword arguments>)

# DescribeDirectConnectGatewayAssociations Operation

Returns a list of all direct connect gateway and virtual private gateway (VGW) associations. Either a direct connect gateway ID or a VGW ID must be provided in the request. If a direct connect gateway ID is provided, the response returns all VGWs associated with the direct connect gateway. If a VGW ID is provided, the response returns all direct connect gateways associated with the VGW. If both are provided, the response only returns the association that matches both the direct connect gateway and the VGW.

# Arguments

## `directConnectGatewayId = ::String`
The ID of the direct connect gateway.

Example: "abcd1234-dcba-5678-be23-cdef9876ab45"

Default: None


## `virtualGatewayId = ::String`
The ID of the virtual private gateway.

Example: "vgw-abc123ef"

Default: None


## `maxResults = ::Int`
The maximum number of direct connect gateway associations to return per page.

Example: 15

Default: None


## `nextToken = ::String`
The token provided in the previous describe result to retrieve the next page of the result.

Default: None




# Returns

`DescribeDirectConnectGatewayAssociationsResult`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAssociations)
"""
@inline describe_direct_connect_gateway_associations(aws::AWSConfig=default_aws_config(); args...) = describe_direct_connect_gateway_associations(aws, args)

@inline describe_direct_connect_gateway_associations(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeDirectConnectGatewayAssociations", args)

@inline describe_direct_connect_gateway_associations(args) = describe_direct_connect_gateway_associations(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_direct_connect_gateway_attachments
    describe_direct_connect_gateway_attachments([::AWSConfig], arguments::Dict)
    describe_direct_connect_gateway_attachments([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeDirectConnectGatewayAttachments", arguments::Dict)
    directconnect([::AWSConfig], "DescribeDirectConnectGatewayAttachments", <keyword arguments>)

# DescribeDirectConnectGatewayAttachments Operation

Returns a list of all direct connect gateway and virtual interface (VIF) attachments. Either a direct connect gateway ID or a VIF ID must be provided in the request. If a direct connect gateway ID is provided, the response returns all VIFs attached to the direct connect gateway. If a VIF ID is provided, the response returns all direct connect gateways attached to the VIF. If both are provided, the response only returns the attachment that matches both the direct connect gateway and the VIF.

# Arguments

## `directConnectGatewayId = ::String`
The ID of the direct connect gateway.

Example: "abcd1234-dcba-5678-be23-cdef9876ab45"

Default: None


## `virtualInterfaceId = ::String`
The ID of the virtual interface.

Example: "dxvif-abc123ef"

Default: None


## `maxResults = ::Int`
The maximum number of direct connect gateway attachments to return per page.

Example: 15

Default: None


## `nextToken = ::String`
The token provided in the previous describe result to retrieve the next page of the result.

Default: None




# Returns

`DescribeDirectConnectGatewayAttachmentsResult`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGatewayAttachments)
"""
@inline describe_direct_connect_gateway_attachments(aws::AWSConfig=default_aws_config(); args...) = describe_direct_connect_gateway_attachments(aws, args)

@inline describe_direct_connect_gateway_attachments(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeDirectConnectGatewayAttachments", args)

@inline describe_direct_connect_gateway_attachments(args) = describe_direct_connect_gateway_attachments(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_direct_connect_gateways
    describe_direct_connect_gateways([::AWSConfig], arguments::Dict)
    describe_direct_connect_gateways([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeDirectConnectGateways", arguments::Dict)
    directconnect([::AWSConfig], "DescribeDirectConnectGateways", <keyword arguments>)

# DescribeDirectConnectGateways Operation

Returns a list of direct connect gateways in your account. Deleted direct connect gateways are not returned. You can provide a direct connect gateway ID in the request to return information about the specific direct connect gateway only. Otherwise, if a direct connect gateway ID is not provided, information about all of your direct connect gateways is returned.

# Arguments

## `directConnectGatewayId = ::String`
The ID of the direct connect gateway.

Example: "abcd1234-dcba-5678-be23-cdef9876ab45"

Default: None


## `maxResults = ::Int`
The maximum number of direct connect gateways to return per page.

Example: 15

Default: None


## `nextToken = ::String`
The token provided in the previous describe result to retrieve the next page of the result.

Default: None




# Returns

`DescribeDirectConnectGatewaysResult`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeDirectConnectGateways)
"""
@inline describe_direct_connect_gateways(aws::AWSConfig=default_aws_config(); args...) = describe_direct_connect_gateways(aws, args)

@inline describe_direct_connect_gateways(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeDirectConnectGateways", args)

@inline describe_direct_connect_gateways(args) = describe_direct_connect_gateways(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_hosted_connections
    describe_hosted_connections([::AWSConfig], arguments::Dict)
    describe_hosted_connections([::AWSConfig]; connectionId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeHostedConnections", arguments::Dict)
    directconnect([::AWSConfig], "DescribeHostedConnections", connectionId=)

# DescribeHostedConnections Operation

Returns a list of hosted connections that have been provisioned on the given interconnect or link aggregation group (LAG).

**Note**
> This is intended for use by AWS Direct Connect partners only.

# Arguments

## `connectionId = ::String` -- *Required*
The ID of the interconnect or LAG on which the hosted connections are provisioned.

Example: dxcon-abc123 or dxlag-abc123

Default: None




# Returns

`Connections`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeHostedConnections)
"""
@inline describe_hosted_connections(aws::AWSConfig=default_aws_config(); args...) = describe_hosted_connections(aws, args)

@inline describe_hosted_connections(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeHostedConnections", args)

@inline describe_hosted_connections(args) = describe_hosted_connections(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_interconnect_loa
    describe_interconnect_loa([::AWSConfig], arguments::Dict)
    describe_interconnect_loa([::AWSConfig]; interconnectId=, <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeInterconnectLoa", arguments::Dict)
    directconnect([::AWSConfig], "DescribeInterconnectLoa", interconnectId=, <keyword arguments>)

# DescribeInterconnectLoa Operation

Deprecated in favor of [DescribeLoa](@ref).

Returns the LOA-CFA for an Interconnect.

The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to AWS at the colocation facility. For more information, see [Requesting Cross Connects at AWS Direct Connect Locations](http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html) in the AWS Direct Connect user guide.

# Arguments

## `interconnectId = ::String` -- *Required*



## `providerName = ::String`
The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.

Default: None


## `loaContentType = "application/pdf"`





# Returns

`DescribeInterconnectLoaResponse`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeInterconnectLoa)
"""
@inline describe_interconnect_loa(aws::AWSConfig=default_aws_config(); args...) = describe_interconnect_loa(aws, args)

@inline describe_interconnect_loa(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeInterconnectLoa", args)

@inline describe_interconnect_loa(args) = describe_interconnect_loa(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_interconnects
    describe_interconnects([::AWSConfig], arguments::Dict)
    describe_interconnects([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeInterconnects", arguments::Dict)
    directconnect([::AWSConfig], "DescribeInterconnects", <keyword arguments>)

# DescribeInterconnects Operation

Returns a list of interconnects owned by the AWS account.

If an interconnect ID is provided, it will only return this particular interconnect.

# Arguments

## `interconnectId = ::String`





# Returns

`Interconnects`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeInterconnects)
"""
@inline describe_interconnects(aws::AWSConfig=default_aws_config(); args...) = describe_interconnects(aws, args)

@inline describe_interconnects(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeInterconnects", args)

@inline describe_interconnects(args) = describe_interconnects(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_lags
    describe_lags([::AWSConfig], arguments::Dict)
    describe_lags([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeLags", arguments::Dict)
    directconnect([::AWSConfig], "DescribeLags", <keyword arguments>)

# DescribeLags Operation

Describes the link aggregation groups (LAGs) in your account.

If a LAG ID is provided, only information about the specified LAG is returned.

# Arguments

## `lagId = ::String`
The ID of the LAG.

Example: dxlag-abc123

Default: None




# Returns

`Lags`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeLags)
"""
@inline describe_lags(aws::AWSConfig=default_aws_config(); args...) = describe_lags(aws, args)

@inline describe_lags(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeLags", args)

@inline describe_lags(args) = describe_lags(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_loa
    describe_loa([::AWSConfig], arguments::Dict)
    describe_loa([::AWSConfig]; connectionId=, <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeLoa", arguments::Dict)
    directconnect([::AWSConfig], "DescribeLoa", connectionId=, <keyword arguments>)

# DescribeLoa Operation

Returns the LOA-CFA for a connection, interconnect, or link aggregation group (LAG).

The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to AWS at the colocation facility. For more information, see [Requesting Cross Connects at AWS Direct Connect Locations](http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html) in the AWS Direct Connect user guide.

# Arguments

## `connectionId = ::String` -- *Required*
The ID of a connection, LAG, or interconnect for which to get the LOA-CFA information.

Example: dxcon-abc123 or dxlag-abc123

Default: None


## `providerName = ::String`
The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.

Default: None


## `loaContentType = "application/pdf"`
A standard media type indicating the content type of the LOA-CFA document. Currently, the only supported value is "application/pdf".

Default: application/pdf




# Returns

`Loa`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeLoa)
"""
@inline describe_loa(aws::AWSConfig=default_aws_config(); args...) = describe_loa(aws, args)

@inline describe_loa(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeLoa", args)

@inline describe_loa(args) = describe_loa(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_locations
    describe_locations([::AWSConfig])
    

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeLocations",)
    

# DescribeLocations Operation

Returns the list of AWS Direct Connect locations in the current AWS region. These are the locations that may be selected when calling [CreateConnection](@ref) or [CreateInterconnect](@ref).

# Returns

`Locations`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeLocations)
"""
@inline describe_locations(aws::AWSConfig=default_aws_config(); args...) = describe_locations(aws, args)

@inline describe_locations(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeLocations", args)

@inline describe_locations(args) = describe_locations(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_tags
    describe_tags([::AWSConfig], arguments::Dict)
    describe_tags([::AWSConfig]; resourceArns=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeTags", arguments::Dict)
    directconnect([::AWSConfig], "DescribeTags", resourceArns=)

# DescribeTags Operation

Describes the tags associated with the specified Direct Connect resources.

# Arguments

## `resourceArns = [::String, ...]` -- *Required*
The Amazon Resource Names (ARNs) of the Direct Connect resources.




# Returns

`DescribeTagsResponse`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeTags)
"""
@inline describe_tags(aws::AWSConfig=default_aws_config(); args...) = describe_tags(aws, args)

@inline describe_tags(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeTags", args)

@inline describe_tags(args) = describe_tags(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_virtual_gateways
    describe_virtual_gateways([::AWSConfig])
    

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeVirtualGateways",)
    

# DescribeVirtualGateways Operation

Returns a list of virtual private gateways owned by the AWS account.

You can create one or more AWS Direct Connect private virtual interfaces linking to a virtual private gateway. A virtual private gateway can be managed via Amazon Virtual Private Cloud (VPC) console or the [EC2 CreateVpnGateway](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html) action.

# Returns

`VirtualGateways`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeVirtualGateways)
"""
@inline describe_virtual_gateways(aws::AWSConfig=default_aws_config(); args...) = describe_virtual_gateways(aws, args)

@inline describe_virtual_gateways(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeVirtualGateways", args)

@inline describe_virtual_gateways(args) = describe_virtual_gateways(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.describe_virtual_interfaces
    describe_virtual_interfaces([::AWSConfig], arguments::Dict)
    describe_virtual_interfaces([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DescribeVirtualInterfaces", arguments::Dict)
    directconnect([::AWSConfig], "DescribeVirtualInterfaces", <keyword arguments>)

# DescribeVirtualInterfaces Operation

Displays all virtual interfaces for an AWS account. Virtual interfaces deleted fewer than 15 minutes before you make the request are also returned. If you specify a connection ID, only the virtual interfaces associated with the connection are returned. If you specify a virtual interface ID, then only a single virtual interface is returned.

A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.

# Arguments

## `connectionId = ::String`



## `virtualInterfaceId = ::String`





# Returns

`VirtualInterfaces`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DescribeVirtualInterfaces)
"""
@inline describe_virtual_interfaces(aws::AWSConfig=default_aws_config(); args...) = describe_virtual_interfaces(aws, args)

@inline describe_virtual_interfaces(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DescribeVirtualInterfaces", args)

@inline describe_virtual_interfaces(args) = describe_virtual_interfaces(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.disassociate_connection_from_lag
    disassociate_connection_from_lag([::AWSConfig], arguments::Dict)
    disassociate_connection_from_lag([::AWSConfig]; connectionId=, lagId=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "DisassociateConnectionFromLag", arguments::Dict)
    directconnect([::AWSConfig], "DisassociateConnectionFromLag", connectionId=, lagId=)

# DisassociateConnectionFromLag Operation

Disassociates a connection from a link aggregation group (LAG). The connection is interrupted and re-established as a standalone connection (the connection is not deleted; to delete the connection, use the [DeleteConnection](@ref) request). If the LAG has associated virtual interfaces or hosted connections, they remain associated with the LAG. A disassociated connection owned by an AWS Direct Connect partner is automatically converted to an interconnect.

If disassociating the connection will cause the LAG to fall below its setting for minimum number of operational connections, the request fails, except when it's the last member of the LAG. If all connections are disassociated, the LAG continues to exist as an empty LAG with no physical connections.

# Arguments

## `connectionId = ::String` -- *Required*
The ID of the connection to disassociate from the LAG.

Example: dxcon-abc123

Default: None


## `lagId = ::String` -- *Required*
The ID of the LAG.

Example: dxlag-abc123

Default: None




# Returns

`Connection`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/DisassociateConnectionFromLag)
"""
@inline disassociate_connection_from_lag(aws::AWSConfig=default_aws_config(); args...) = disassociate_connection_from_lag(aws, args)

@inline disassociate_connection_from_lag(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "DisassociateConnectionFromLag", args)

@inline disassociate_connection_from_lag(args) = disassociate_connection_from_lag(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; resourceArn=, tags=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "TagResource", arguments::Dict)
    directconnect([::AWSConfig], "TagResource", resourceArn=, tags=)

# TagResource Operation

Adds the specified tags to the specified Direct Connect resource. Each Direct Connect resource can have a maximum of 50 tags.

Each tag consists of a key and an optional value. If a tag with the same key is already associated with the Direct Connect resource, this action updates its value.

# Arguments

## `resourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the Direct Connect resource.

Example: arn:aws:directconnect:us-east-1:123456789012:dxcon/dxcon-fg5678gh


## `tags = [[ ... ], ...]` -- *Required*
The list of tags to add.
```
 tags = [[
        "key" => <required> ::String,
        "value" =>  ::String
    ], ...]
```



# Returns

`TagResourceResponse`

# Exceptions

`DuplicateTagKeysException`, `TooManyTagsException`, `DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "TagResource", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; resourceArn=, tagKeys=)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "UntagResource", arguments::Dict)
    directconnect([::AWSConfig], "UntagResource", resourceArn=, tagKeys=)

# UntagResource Operation

Removes one or more tags from the specified Direct Connect resource.

# Arguments

## `resourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the Direct Connect resource.


## `tagKeys = [::String, ...]` -- *Required*
The list of tag keys to remove.




# Returns

`UntagResourceResponse`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "UntagResource", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.DirectConnect.update_lag
    update_lag([::AWSConfig], arguments::Dict)
    update_lag([::AWSConfig]; lagId=, <keyword arguments>)

    using AWSCore.Services.directconnect
    directconnect([::AWSConfig], "UpdateLag", arguments::Dict)
    directconnect([::AWSConfig], "UpdateLag", lagId=, <keyword arguments>)

# UpdateLag Operation

Updates the attributes of a link aggregation group (LAG).

You can update the following attributes:

*   The name of the LAG.

*   The value for the minimum number of connections that must be operational for the LAG itself to be operational.

When you create a LAG, the default value for the minimum number of operational connections is zero (0). If you update this value, and the number of operational connections falls below the specified value, the LAG will automatically go down to avoid overutilization of the remaining connections. Adjusting this value should be done with care as it could force the LAG down if the value is set higher than the current number of operational connections.

# Arguments

## `lagId = ::String` -- *Required*
The ID of the LAG to update.

Example: dxlag-abc123

Default: None


## `lagName = ::String`
The name for the LAG.

Example: "`3x10G LAG to AWS`"

Default: None


## `minimumLinks = ::Int`
The minimum number of physical connections that must be operational for the LAG itself to be operational.

Default: None




# Returns

`Lag`

# Exceptions

`DirectConnectServerException` or `DirectConnectClientException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/directconnect-2012-10-25/UpdateLag)
"""
@inline update_lag(aws::AWSConfig=default_aws_config(); args...) = update_lag(aws, args)

@inline update_lag(aws::AWSConfig, args) = AWSCore.Services.directconnect(aws, "UpdateLag", args)

@inline update_lag(args) = update_lag(default_aws_config(), args)




end # module DirectConnect


#==============================================================================#
# End of file
#==============================================================================#
