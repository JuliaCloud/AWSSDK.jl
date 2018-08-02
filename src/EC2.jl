#==============================================================================#
# EC2.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/ec2-2016-11-15.normal.json
#==============================================================================#

__precompile__()

module EC2

using AWSCore


"""
    using AWSSDK.EC2.accept_reserved_instances_exchange_quote
    accept_reserved_instances_exchange_quote([::AWSConfig], arguments::Dict)
    accept_reserved_instances_exchange_quote([::AWSConfig]; ReservedInstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AcceptReservedInstancesExchangeQuote", arguments::Dict)
    ec2([::AWSConfig], "AcceptReservedInstancesExchangeQuote", ReservedInstanceId=, <keyword arguments>)

# AcceptReservedInstancesExchangeQuote Operation

Accepts the Convertible Reserved Instance exchange quote described in the [GetReservedInstancesExchangeQuote](@ref) call.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ReservedInstanceId = [::String, ...]` -- *Required*
The IDs of the Convertible Reserved Instances to exchange for another Convertible Reserved Instance of the same or higher value.


## `TargetConfiguration = [[ ... ], ...]`
The configuration of the target Convertible Reserved Instance to exchange for your current Convertible Reserved Instances.
```
 TargetConfiguration = [[
        "InstanceCount" =>  ::Int,
        "OfferingId" => <required> ::String
    ], ...]
```



# Returns

`AcceptReservedInstancesExchangeQuoteResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AcceptReservedInstancesExchangeQuote)
"""
@inline accept_reserved_instances_exchange_quote(aws::AWSConfig=default_aws_config(); args...) = accept_reserved_instances_exchange_quote(aws, args)

@inline accept_reserved_instances_exchange_quote(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AcceptReservedInstancesExchangeQuote", args)

@inline accept_reserved_instances_exchange_quote(args) = accept_reserved_instances_exchange_quote(default_aws_config(), args)


"""
    using AWSSDK.EC2.accept_vpc_endpoint_connections
    accept_vpc_endpoint_connections([::AWSConfig], arguments::Dict)
    accept_vpc_endpoint_connections([::AWSConfig]; ServiceId=, VpcEndpointId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AcceptVpcEndpointConnections", arguments::Dict)
    ec2([::AWSConfig], "AcceptVpcEndpointConnections", ServiceId=, VpcEndpointId=, <keyword arguments>)

# AcceptVpcEndpointConnections Operation

Accepts one or more interface VPC endpoint connection requests to your VPC endpoint service.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ServiceId = ::String` -- *Required*
The ID of the endpoint service.


## `VpcEndpointId = [::String, ...]` -- *Required*
The IDs of one or more interface VPC endpoints.




# Returns

`AcceptVpcEndpointConnectionsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AcceptVpcEndpointConnections)
"""
@inline accept_vpc_endpoint_connections(aws::AWSConfig=default_aws_config(); args...) = accept_vpc_endpoint_connections(aws, args)

@inline accept_vpc_endpoint_connections(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AcceptVpcEndpointConnections", args)

@inline accept_vpc_endpoint_connections(args) = accept_vpc_endpoint_connections(default_aws_config(), args)


"""
    using AWSSDK.EC2.accept_vpc_peering_connection
    accept_vpc_peering_connection([::AWSConfig], arguments::Dict)
    accept_vpc_peering_connection([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AcceptVpcPeeringConnection", arguments::Dict)
    ec2([::AWSConfig], "AcceptVpcPeeringConnection", <keyword arguments>)

# AcceptVpcPeeringConnection Operation

Accept a VPC peering connection request. To accept a request, the VPC peering connection must be in the `pending-acceptance` state, and you must be the owner of the peer VPC. Use [DescribeVpcPeeringConnections](@ref) to view your outstanding VPC peering connection requests.

For an inter-region VPC peering connection request, you must accept the VPC peering connection in the region of the accepter VPC.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcPeeringConnectionId = ::String`
The ID of the VPC peering connection. You must specify this parameter in the request.




# Returns

`AcceptVpcPeeringConnectionResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AcceptVpcPeeringConnection)
"""
@inline accept_vpc_peering_connection(aws::AWSConfig=default_aws_config(); args...) = accept_vpc_peering_connection(aws, args)

@inline accept_vpc_peering_connection(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AcceptVpcPeeringConnection", args)

@inline accept_vpc_peering_connection(args) = accept_vpc_peering_connection(default_aws_config(), args)


"""
    using AWSSDK.EC2.allocate_address
    allocate_address([::AWSConfig], arguments::Dict)
    allocate_address([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AllocateAddress", arguments::Dict)
    ec2([::AWSConfig], "AllocateAddress", <keyword arguments>)

# AllocateAddress Operation

Allocates an Elastic IP address.

An Elastic IP address is for use either in the EC2-Classic platform or in a VPC. By default, you can allocate 5 Elastic IP addresses for EC2-Classic per region and 5 Elastic IP addresses for EC2-VPC per region.

If you release an Elastic IP address for use in a VPC, you might be able to recover it. To recover an Elastic IP address that you released, specify it in the `Address` parameter. Note that you cannot recover an Elastic IP address that you released after it is allocated to another AWS account.

For more information, see [Elastic IP Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Domain = "vpc" or "standard"`
Set to `vpc` to allocate the address for use with instances in a VPC.

Default: The address is for use with instances in EC2-Classic.


## `Address = ::String`
[EC2-VPC] The Elastic IP address to recover.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`AllocateAddressResult`

# Example: To allocate an Elastic IP address for EC2-VPC

This example allocates an Elastic IP address to use with an instance in a VPC.

Input:
```
[
    "Domain" => "vpc"
]
```

Output:
```
Dict(
    "AllocationId" => "eipalloc-64d5890a",
    "Domain" => "vpc",
    "PublicIp" => "203.0.113.0"
)
```

# Example: To allocate an Elastic IP address for EC2-Classic

This example allocates an Elastic IP address to use with an instance in EC2-Classic.

Output:
```
Dict(
    "Domain" => "standard",
    "PublicIp" => "198.51.100.0"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AllocateAddress)
"""
@inline allocate_address(aws::AWSConfig=default_aws_config(); args...) = allocate_address(aws, args)

@inline allocate_address(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AllocateAddress", args)

@inline allocate_address(args) = allocate_address(default_aws_config(), args)


"""
    using AWSSDK.EC2.allocate_hosts
    allocate_hosts([::AWSConfig], arguments::Dict)
    allocate_hosts([::AWSConfig]; AvailabilityZone=, InstanceType=, Quantity=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AllocateHosts", arguments::Dict)
    ec2([::AWSConfig], "AllocateHosts", AvailabilityZone=, InstanceType=, Quantity=, <keyword arguments>)

# AllocateHosts Operation

Allocates a Dedicated Host to your account. At a minimum, specify the instance size type, Availability Zone, and quantity of hosts to allocate.

# Arguments

## `AutoPlacement = "on" or "off"`
This is enabled by default. This property allows instances to be automatically placed onto available Dedicated Hosts, when you are launching instances without specifying a host ID.

Default: Enabled


## `AvailabilityZone = ::String` -- *Required*
The Availability Zone for the Dedicated Hosts.


## `ClientToken = ::String`
Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `InstanceType = ::String` -- *Required*
Specify the instance type for which to configure your Dedicated Hosts. When you specify the instance type, that is the only instance type that you can launch onto that host.


## `Quantity = ::Int` -- *Required*
The number of Dedicated Hosts to allocate to your account with these parameters.




# Returns

`AllocateHostsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AllocateHosts)
"""
@inline allocate_hosts(aws::AWSConfig=default_aws_config(); args...) = allocate_hosts(aws, args)

@inline allocate_hosts(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AllocateHosts", args)

@inline allocate_hosts(args) = allocate_hosts(default_aws_config(), args)


"""
    using AWSSDK.EC2.assign_ipv6addresses
    assign_ipv6addresses([::AWSConfig], arguments::Dict)
    assign_ipv6addresses([::AWSConfig]; NetworkInterfaceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AssignIpv6Addresses", arguments::Dict)
    ec2([::AWSConfig], "AssignIpv6Addresses", NetworkInterfaceId=, <keyword arguments>)

# AssignIpv6Addresses Operation

Assigns one or more IPv6 addresses to the specified network interface. You can specify one or more specific IPv6 addresses, or you can specify the number of IPv6 addresses to be automatically assigned from within the subnet's IPv6 CIDR block range. You can assign as many IPv6 addresses to a network interface as you can assign private IPv4 addresses, and the limit varies per instance type. For information, see [IP Addresses Per Network Interface Per Instance Type](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Ipv6AddressCount = ::Int`
The number of IPv6 addresses to assign to the network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can't use this option if specifying specific IPv6 addresses.


## `Ipv6Addresses = [::String, ...]`
One or more specific IPv6 addresses to be assigned to the network interface. You can't use this option if you're specifying a number of IPv6 addresses.


## `NetworkInterfaceId = ::String` -- *Required*
The ID of the network interface.




# Returns

`AssignIpv6AddressesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssignIpv6Addresses)
"""
@inline assign_ipv6addresses(aws::AWSConfig=default_aws_config(); args...) = assign_ipv6addresses(aws, args)

@inline assign_ipv6addresses(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AssignIpv6Addresses", args)

@inline assign_ipv6addresses(args) = assign_ipv6addresses(default_aws_config(), args)


"""
    using AWSSDK.EC2.assign_private_ip_addresses
    assign_private_ip_addresses([::AWSConfig], arguments::Dict)
    assign_private_ip_addresses([::AWSConfig]; NetworkInterfaceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AssignPrivateIpAddresses", arguments::Dict)
    ec2([::AWSConfig], "AssignPrivateIpAddresses", NetworkInterfaceId=, <keyword arguments>)

# AssignPrivateIpAddresses Operation

Assigns one or more secondary private IP addresses to the specified network interface. You can specify one or more specific secondary IP addresses, or you can specify the number of secondary IP addresses to be automatically assigned within the subnet's CIDR block range. The number of secondary IP addresses that you can assign to an instance varies by instance type. For information about instance types, see [Instance Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the *Amazon Elastic Compute Cloud User Guide*. For more information about Elastic IP addresses, see [Elastic IP Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon Elastic Compute Cloud User Guide*.

AssignPrivateIpAddresses is available only in EC2-VPC.

# Arguments

## `AllowReassignment = ::Bool`
Indicates whether to allow an IP address that is already assigned to another network interface or instance to be reassigned to the specified network interface.


## `NetworkInterfaceId = ::String` -- *Required*
The ID of the network interface.


## `PrivateIpAddress = [::String, ...]`
One or more IP addresses to be assigned as a secondary private IP address to the network interface. You can't specify this parameter when also specifying a number of secondary IP addresses.

If you don't specify an IP address, Amazon EC2 automatically selects an IP address within the subnet range.


## `SecondaryPrivateIpAddressCount = ::Int`
The number of secondary IP addresses to assign to the network interface. You can't specify this parameter when also specifying private IP addresses.




# Example: To assign a specific secondary private IP address to an interface

This example assigns the specified secondary private IP address to the specified network interface.

Input:
```
[
    "NetworkInterfaceId" => "eni-e5aa89a3",
    "PrivateIpAddresses" => [
        "10.0.0.82"
    ]
]
```

# Example: To assign secondary private IP addresses that Amazon EC2 selects to an interface

This example assigns two secondary private IP addresses to the specified network interface. Amazon EC2 automatically assigns these IP addresses from the available IP addresses in the CIDR block range of the subnet the network interface is associated with.

Input:
```
[
    "NetworkInterfaceId" => "eni-e5aa89a3",
    "SecondaryPrivateIpAddressCount" => 2
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssignPrivateIpAddresses)
"""
@inline assign_private_ip_addresses(aws::AWSConfig=default_aws_config(); args...) = assign_private_ip_addresses(aws, args)

@inline assign_private_ip_addresses(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AssignPrivateIpAddresses", args)

@inline assign_private_ip_addresses(args) = assign_private_ip_addresses(default_aws_config(), args)


"""
    using AWSSDK.EC2.associate_address
    associate_address([::AWSConfig], arguments::Dict)
    associate_address([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AssociateAddress", arguments::Dict)
    ec2([::AWSConfig], "AssociateAddress", <keyword arguments>)

# AssociateAddress Operation

Associates an Elastic IP address with an instance or a network interface.

An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see [Elastic IP Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon Elastic Compute Cloud User Guide*.

[EC2-Classic, VPC in an EC2-VPC-only account] If the Elastic IP address is already associated with a different instance, it is disassociated from that instance and associated with the specified instance. If you associate an Elastic IP address with an instance that has an existing Elastic IP address, the existing address is disassociated from the instance, but remains allocated to your account.

[VPC in an EC2-Classic account] If you don't specify a private IP address, the Elastic IP address is associated with the primary IP address. If the Elastic IP address is already associated with a different instance or a network interface, you get an error unless you allow reassociation. You cannot associate an Elastic IP address with an instance or network interface that has an existing Elastic IP address.

**Important**
> This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error, and you may be charged for each time the Elastic IP address is remapped to the same instance. For more information, see the *Elastic IP Addresses* section of [Amazon EC2 Pricing](http://aws.amazon.com/ec2/pricing/).

# Arguments

## `AllocationId = ::String`
[EC2-VPC] The allocation ID. This is required for EC2-VPC.


## `InstanceId = ::String`
The ID of the instance. This is required for EC2-Classic. For EC2-VPC, you can specify either the instance ID or the network interface ID, but not both. The operation fails if you specify an instance ID unless exactly one network interface is attached.


## `PublicIp = ::String`
The Elastic IP address. This is required for EC2-Classic.


## `AllowReassociation = ::Bool`
[EC2-VPC] For a VPC in an EC2-Classic account, specify true to allow an Elastic IP address that is already associated with an instance or network interface to be reassociated with the specified instance or network interface. Otherwise, the operation fails. In a VPC in an EC2-VPC-only account, reassociation is automatic, therefore you can specify false to ensure the operation fails if the Elastic IP address is already associated with another resource.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `NetworkInterfaceId = ::String`
[EC2-VPC] The ID of the network interface. If the instance has more than one network interface, you must specify a network interface ID.


## `PrivateIpAddress = ::String`
[EC2-VPC] The primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.




# Returns

`AssociateAddressResult`

# Example: To associate an Elastic IP address in EC2-VPC

This example associates the specified Elastic IP address with the specified instance in a VPC.

Input:
```
[
    "AllocationId" => "eipalloc-64d5890a",
    "InstanceId" => "i-0b263919b6498b123"
]
```

Output:
```
Dict(
    "AssociationId" => "eipassoc-2bebb745"
)
```

# Example: To associate an Elastic IP address with a network interface

This example associates the specified Elastic IP address with the specified network interface.

Input:
```
[
    "AllocationId" => "eipalloc-64d5890a",
    "NetworkInterfaceId" => "eni-1a2b3c4d"
]
```

Output:
```
Dict(
    "AssociationId" => "eipassoc-2bebb745"
)
```

# Example: To associate an Elastic IP address in EC2-Classic

This example associates an Elastic IP address with an instance in EC2-Classic.

Input:
```
[
    "InstanceId" => "i-07ffe74c7330ebf53",
    "PublicIp" => "198.51.100.0"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateAddress)
"""
@inline associate_address(aws::AWSConfig=default_aws_config(); args...) = associate_address(aws, args)

@inline associate_address(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AssociateAddress", args)

@inline associate_address(args) = associate_address(default_aws_config(), args)


"""
    using AWSSDK.EC2.associate_dhcp_options
    associate_dhcp_options([::AWSConfig], arguments::Dict)
    associate_dhcp_options([::AWSConfig]; DhcpOptionsId=, VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AssociateDhcpOptions", arguments::Dict)
    ec2([::AWSConfig], "AssociateDhcpOptions", DhcpOptionsId=, VpcId=, <keyword arguments>)

# AssociateDhcpOptions Operation

Associates a set of DHCP options (that you've previously created) with the specified VPC, or associates no DHCP options with the VPC.

After you associate the options with the VPC, any existing instances and all new instances that you launch in that VPC use the options. You don't need to restart or relaunch the instances. They automatically pick up the changes within a few hours, depending on how frequently the instance renews its DHCP lease. You can explicitly renew the lease using the operating system on the instance.

For more information, see [DHCP Options Sets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `DhcpOptionsId = ::String` -- *Required*
The ID of the DHCP options set, or `default` to associate no DHCP options with the VPC.


## `VpcId = ::String` -- *Required*
The ID of the VPC.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To associate a DHCP options set with a VPC

This example associates the specified DHCP options set with the specified VPC.

Input:
```
[
    "DhcpOptionsId" => "dopt-d9070ebb",
    "VpcId" => "vpc-a01106c2"
]
```

# Example: To associate the default DHCP options set with a VPC

This example associates the default DHCP options set with the specified VPC.

Input:
```
[
    "DhcpOptionsId" => "default",
    "VpcId" => "vpc-a01106c2"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateDhcpOptions)
"""
@inline associate_dhcp_options(aws::AWSConfig=default_aws_config(); args...) = associate_dhcp_options(aws, args)

@inline associate_dhcp_options(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AssociateDhcpOptions", args)

@inline associate_dhcp_options(args) = associate_dhcp_options(default_aws_config(), args)


"""
    using AWSSDK.EC2.associate_iam_instance_profile
    associate_iam_instance_profile([::AWSConfig], arguments::Dict)
    associate_iam_instance_profile([::AWSConfig]; IamInstanceProfile=, InstanceId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AssociateIamInstanceProfile", arguments::Dict)
    ec2([::AWSConfig], "AssociateIamInstanceProfile", IamInstanceProfile=, InstanceId=)

# AssociateIamInstanceProfile Operation

Associates an IAM instance profile with a running or stopped instance. You cannot associate more than one IAM instance profile with an instance.

# Arguments

## `IamInstanceProfile = [ ... ]` -- *Required*
The IAM instance profile.
```
 IamInstanceProfile = [
        "Arn" =>  ::String,
        "Name" =>  ::String
    ]
```

## `InstanceId = ::String` -- *Required*
The ID of the instance.




# Returns

`AssociateIamInstanceProfileResult`

# Example: To associate an IAM instance profile with an instance

This example associates an IAM instance profile named admin-role with the specified instance.

Input:
```
[
    "IamInstanceProfile" => [
        "Name" => "admin-role"
    ],
    "InstanceId" => "i-123456789abcde123"
]
```

Output:
```
Dict(
    "IamInstanceProfileAssociation" => Dict(
        "AssociationId" => "iip-assoc-0e7736511a163c209",
        "IamInstanceProfile" => Dict(
            "Arn" => "arn:aws:iam::123456789012:instance-profile/admin-role",
            "Id" => "AIPAJBLK7RKJKWDXVHIEC"
        ),
        "InstanceId" => "i-123456789abcde123",
        "State" => "associating"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateIamInstanceProfile)
"""
@inline associate_iam_instance_profile(aws::AWSConfig=default_aws_config(); args...) = associate_iam_instance_profile(aws, args)

@inline associate_iam_instance_profile(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AssociateIamInstanceProfile", args)

@inline associate_iam_instance_profile(args) = associate_iam_instance_profile(default_aws_config(), args)


"""
    using AWSSDK.EC2.associate_route_table
    associate_route_table([::AWSConfig], arguments::Dict)
    associate_route_table([::AWSConfig]; RouteTableId=, SubnetId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AssociateRouteTable", arguments::Dict)
    ec2([::AWSConfig], "AssociateRouteTable", RouteTableId=, SubnetId=, <keyword arguments>)

# AssociateRouteTable Operation

Associates a subnet with a route table. The subnet and route table must be in the same VPC. This association causes traffic originating from the subnet to be routed according to the routes in the route table. The action returns an association ID, which you need in order to disassociate the route table from the subnet later. A route table can be associated with multiple subnets.

For more information about route tables, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `RouteTableId = ::String` -- *Required*
The ID of the route table.


## `SubnetId = ::String` -- *Required*
The ID of the subnet.




# Returns

`AssociateRouteTableResult`

# Example: To associate a route table with a subnet

This example associates the specified route table with the specified subnet.

Input:
```
[
    "RouteTableId" => "rtb-22574640",
    "SubnetId" => "subnet-9d4a7b6"
]
```

Output:
```
Dict(
    "AssociationId" => "rtbassoc-781d0d1a"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateRouteTable)
"""
@inline associate_route_table(aws::AWSConfig=default_aws_config(); args...) = associate_route_table(aws, args)

@inline associate_route_table(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AssociateRouteTable", args)

@inline associate_route_table(args) = associate_route_table(default_aws_config(), args)


"""
    using AWSSDK.EC2.associate_subnet_cidr_block
    associate_subnet_cidr_block([::AWSConfig], arguments::Dict)
    associate_subnet_cidr_block([::AWSConfig]; Ipv6CidrBlock=, SubnetId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AssociateSubnetCidrBlock", arguments::Dict)
    ec2([::AWSConfig], "AssociateSubnetCidrBlock", Ipv6CidrBlock=, SubnetId=)

# AssociateSubnetCidrBlock Operation

Associates a CIDR block with your subnet. You can only associate a single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a prefix length of /64.

# Arguments

## `Ipv6CidrBlock = ::String` -- *Required*
The IPv6 CIDR block for your subnet. The subnet must have a /64 prefix length.


## `SubnetId = ::String` -- *Required*
The ID of your subnet.




# Returns

`AssociateSubnetCidrBlockResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateSubnetCidrBlock)
"""
@inline associate_subnet_cidr_block(aws::AWSConfig=default_aws_config(); args...) = associate_subnet_cidr_block(aws, args)

@inline associate_subnet_cidr_block(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AssociateSubnetCidrBlock", args)

@inline associate_subnet_cidr_block(args) = associate_subnet_cidr_block(default_aws_config(), args)


"""
    using AWSSDK.EC2.associate_vpc_cidr_block
    associate_vpc_cidr_block([::AWSConfig], arguments::Dict)
    associate_vpc_cidr_block([::AWSConfig]; VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AssociateVpcCidrBlock", arguments::Dict)
    ec2([::AWSConfig], "AssociateVpcCidrBlock", VpcId=, <keyword arguments>)

# AssociateVpcCidrBlock Operation

Associates a CIDR block with your VPC. You can associate a secondary IPv4 CIDR block, or you can associate an Amazon-provided IPv6 CIDR block. The IPv6 CIDR block size is fixed at /56.

For more information about associating CIDR blocks with your VPC and applicable restrictions, see [VPC and Subnet Sizing](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html#VPC_Sizing) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `AmazonProvidedIpv6CidrBlock = ::Bool`
Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block.


## `CidrBlock = ::String`
An IPv4 CIDR block to associate with the VPC.


## `VpcId = ::String` -- *Required*
The ID of the VPC.




# Returns

`AssociateVpcCidrBlockResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateVpcCidrBlock)
"""
@inline associate_vpc_cidr_block(aws::AWSConfig=default_aws_config(); args...) = associate_vpc_cidr_block(aws, args)

@inline associate_vpc_cidr_block(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AssociateVpcCidrBlock", args)

@inline associate_vpc_cidr_block(args) = associate_vpc_cidr_block(default_aws_config(), args)


"""
    using AWSSDK.EC2.attach_classic_link_vpc
    attach_classic_link_vpc([::AWSConfig], arguments::Dict)
    attach_classic_link_vpc([::AWSConfig]; SecurityGroupId=, InstanceId=, VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AttachClassicLinkVpc", arguments::Dict)
    ec2([::AWSConfig], "AttachClassicLinkVpc", SecurityGroupId=, InstanceId=, VpcId=, <keyword arguments>)

# AttachClassicLinkVpc Operation

Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or more of the VPC's security groups. You cannot link an EC2-Classic instance to more than one VPC at a time. You can only link an instance that's in the `running` state. An instance is automatically unlinked from a VPC when it's stopped - you can link it to the VPC again when you restart it.

After you've linked an instance, you cannot change the VPC security groups that are associated with it. To change the security groups, you must first unlink the instance, and then link it again.

Linking your instance to a VPC is sometimes referred to as *attaching* your instance.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `SecurityGroupId = [::String, ...]` -- *Required*
The ID of one or more of the VPC's security groups. You cannot specify security groups from a different VPC.


## `InstanceId = ::String` -- *Required*
The ID of an EC2-Classic instance to link to the ClassicLink-enabled VPC.


## `VpcId = ::String` -- *Required*
The ID of a ClassicLink-enabled VPC.




# Returns

`AttachClassicLinkVpcResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachClassicLinkVpc)
"""
@inline attach_classic_link_vpc(aws::AWSConfig=default_aws_config(); args...) = attach_classic_link_vpc(aws, args)

@inline attach_classic_link_vpc(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AttachClassicLinkVpc", args)

@inline attach_classic_link_vpc(args) = attach_classic_link_vpc(default_aws_config(), args)


"""
    using AWSSDK.EC2.attach_internet_gateway
    attach_internet_gateway([::AWSConfig], arguments::Dict)
    attach_internet_gateway([::AWSConfig]; InternetGatewayId=, VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AttachInternetGateway", arguments::Dict)
    ec2([::AWSConfig], "AttachInternetGateway", InternetGatewayId=, VpcId=, <keyword arguments>)

# AttachInternetGateway Operation

Attaches an Internet gateway to a VPC, enabling connectivity between the Internet and the VPC. For more information about your VPC and Internet gateway, see the [Amazon Virtual Private Cloud User Guide](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/).

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InternetGatewayId = ::String` -- *Required*
The ID of the Internet gateway.


## `VpcId = ::String` -- *Required*
The ID of the VPC.




# Example: To attach an Internet gateway to a VPC

This example attaches the specified Internet gateway to the specified VPC.

Input:
```
[
    "InternetGatewayId" => "igw-c0a643a9",
    "VpcId" => "vpc-a01106c2"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachInternetGateway)
"""
@inline attach_internet_gateway(aws::AWSConfig=default_aws_config(); args...) = attach_internet_gateway(aws, args)

@inline attach_internet_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AttachInternetGateway", args)

@inline attach_internet_gateway(args) = attach_internet_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.attach_network_interface
    attach_network_interface([::AWSConfig], arguments::Dict)
    attach_network_interface([::AWSConfig]; DeviceIndex=, InstanceId=, NetworkInterfaceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AttachNetworkInterface", arguments::Dict)
    ec2([::AWSConfig], "AttachNetworkInterface", DeviceIndex=, InstanceId=, NetworkInterfaceId=, <keyword arguments>)

# AttachNetworkInterface Operation

Attaches a network interface to an instance.

# Arguments

## `DeviceIndex = ::Int` -- *Required*
The index of the device for the network interface attachment.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InstanceId = ::String` -- *Required*
The ID of the instance.


## `NetworkInterfaceId = ::String` -- *Required*
The ID of the network interface.




# Returns

`AttachNetworkInterfaceResult`

# Example: To attach a network interface to an instance

This example attaches the specified network interface to the specified instance.

Input:
```
[
    "DeviceIndex" => 1,
    "InstanceId" => "i-1234567890abcdef0",
    "NetworkInterfaceId" => "eni-e5aa89a3"
]
```

Output:
```
Dict(
    "AttachmentId" => "eni-attach-66c4350a"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachNetworkInterface)
"""
@inline attach_network_interface(aws::AWSConfig=default_aws_config(); args...) = attach_network_interface(aws, args)

@inline attach_network_interface(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AttachNetworkInterface", args)

@inline attach_network_interface(args) = attach_network_interface(default_aws_config(), args)


"""
    using AWSSDK.EC2.attach_volume
    attach_volume([::AWSConfig], arguments::Dict)
    attach_volume([::AWSConfig]; Device=, InstanceId=, VolumeId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AttachVolume", arguments::Dict)
    ec2([::AWSConfig], "AttachVolume", Device=, InstanceId=, VolumeId=, <keyword arguments>)

# AttachVolume Operation

Attaches an EBS volume to a running or stopped instance and exposes it to the instance with the specified device name.

Encrypted EBS volumes may only be attached to instances that support Amazon EBS encryption. For more information, see [Amazon EBS Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the *Amazon Elastic Compute Cloud User Guide*.

For a list of supported device names, see [Attaching an EBS Volume to an Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html). Any device names that aren't reserved for instance store volumes can be used for EBS volumes. For more information, see [Amazon EC2 Instance Store](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html) in the *Amazon Elastic Compute Cloud User Guide*.

If a volume has an AWS Marketplace product code:

*   The volume can be attached only to a stopped instance.

*   AWS Marketplace product codes are copied from the volume to the instance.

*   You must be subscribed to the product.

*   The instance type and operating system of the instance must support the product. For example, you can't detach a volume from a Windows instance and attach it to a Linux instance.

For more information about EBS volumes, see [Attaching Amazon EBS Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Device = ::String` -- *Required*
The device name (for example, `/dev/sdh` or `xvdh`).


## `InstanceId = ::String` -- *Required*
The ID of the instance.


## `VolumeId = ::String` -- *Required*
The ID of the EBS volume. The volume and instance must be within the same Availability Zone.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`VolumeAttachment`

# Example: To attach a volume to an instance

This example attaches a volume (``vol-1234567890abcdef0``) to an instance (``i-01474ef662b89480``) as ``/dev/sdf``.

Input:
```
[
    "Device" => "/dev/sdf",
    "InstanceId" => "i-01474ef662b89480",
    "VolumeId" => "vol-1234567890abcdef0"
]
```

Output:
```
Dict(
    "AttachTime" => "2016-08-29T18:52:32.724Z",
    "Device" => "/dev/sdf",
    "InstanceId" => "i-01474ef662b89480",
    "State" => "attaching",
    "VolumeId" => "vol-1234567890abcdef0"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachVolume)
"""
@inline attach_volume(aws::AWSConfig=default_aws_config(); args...) = attach_volume(aws, args)

@inline attach_volume(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AttachVolume", args)

@inline attach_volume(args) = attach_volume(default_aws_config(), args)


"""
    using AWSSDK.EC2.attach_vpn_gateway
    attach_vpn_gateway([::AWSConfig], arguments::Dict)
    attach_vpn_gateway([::AWSConfig]; VpcId=, VpnGatewayId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AttachVpnGateway", arguments::Dict)
    ec2([::AWSConfig], "AttachVpnGateway", VpcId=, VpnGatewayId=, <keyword arguments>)

# AttachVpnGateway Operation

Attaches a virtual private gateway to a VPC. You can attach one virtual private gateway to one VPC at a time.

For more information, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `VpcId = ::String` -- *Required*
The ID of the VPC.


## `VpnGatewayId = ::String` -- *Required*
The ID of the virtual private gateway.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`AttachVpnGatewayResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachVpnGateway)
"""
@inline attach_vpn_gateway(aws::AWSConfig=default_aws_config(); args...) = attach_vpn_gateway(aws, args)

@inline attach_vpn_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AttachVpnGateway", args)

@inline attach_vpn_gateway(args) = attach_vpn_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.authorize_security_group_egress
    authorize_security_group_egress([::AWSConfig], arguments::Dict)
    authorize_security_group_egress([::AWSConfig]; GroupId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AuthorizeSecurityGroupEgress", arguments::Dict)
    ec2([::AWSConfig], "AuthorizeSecurityGroupEgress", GroupId=, <keyword arguments>)

# AuthorizeSecurityGroupEgress Operation

[EC2-VPC only] Adds one or more egress rules to a security group for use with a VPC. Specifically, this action permits instances to send traffic to one or more destination IPv4 or IPv6 CIDR address ranges, or to one or more destination security groups for the same VPC. This action doesn't apply to security groups for use in EC2-Classic. For more information, see [Security Groups for Your VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html) in the *Amazon Virtual Private Cloud User Guide*. For more information about security group limits, see [Amazon VPC Limits](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html).

Each rule consists of the protocol (for example, TCP), plus either a CIDR range or a source group. For the TCP and UDP protocols, you must also specify the destination port or port range. For the ICMP protocol, you must also specify the ICMP type and code. You can use -1 for the type or code to mean all types or all codes. You can optionally specify a description for the rule.

Rule changes are propagated to affected instances as quickly as possible. However, a small delay might occur.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `GroupId = ::String` -- *Required*
The ID of the security group.


## `IpPermissions = [[ ... ], ...]`
One or more sets of IP permissions. You can't specify a destination security group and a CIDR IP address range in the same set of permissions.
```
 IpPermissions = [[
        "FromPort" =>  ::Int,
        "IpProtocol" =>  ::String,
        "IpRanges" =>  [[
            "CidrIp" =>  ::String,
            "Description" =>  ::String
        ], ...],
        "Ipv6Ranges" =>  [[
            "CidrIpv6" =>  ::String,
            "Description" =>  ::String
        ], ...],
        "PrefixListIds" =>  [[
            "Description" =>  ::String,
            "PrefixListId" =>  ::String
        ], ...],
        "ToPort" =>  ::Int,
        "Groups" =>  [[
            "Description" =>  ::String,
            "GroupId" =>  ::String,
            "GroupName" =>  ::String,
            "PeeringStatus" =>  ::String,
            "UserId" =>  ::String,
            "VpcId" =>  ::String,
            "VpcPeeringConnectionId" =>  ::String
        ], ...]
    ], ...]
```

## `CidrIp = ::String`
Not supported. Use a set of IP permissions to specify the CIDR.


## `FromPort = ::Int`
Not supported. Use a set of IP permissions to specify the port.


## `IpProtocol = ::String`
Not supported. Use a set of IP permissions to specify the protocol name or number.


## `ToPort = ::Int`
Not supported. Use a set of IP permissions to specify the port.


## `SourceSecurityGroupName = ::String`
Not supported. Use a set of IP permissions to specify a destination security group.


## `SourceSecurityGroupOwnerId = ::String`
Not supported. Use a set of IP permissions to specify a destination security group.




# Example: To add a rule that allows outbound traffic to a specific address range

This example adds a rule that grants access to the specified address ranges on TCP port 80.

Input:
```
[
    "GroupId" => "sg-1a2b3c4d",
    "IpPermissions" => [
        [
            "FromPort" => 80,
            "IpProtocol" => "tcp",
            "IpRanges" => [
                [
                    "CidrIp" => "10.0.0.0/16"
                ]
            ],
            "ToPort" => 80
        ]
    ]
]
```

Output:
```
Dict(

)
```

# Example: To add a rule that allows outbound traffic to a specific security group

This example adds a rule that grants access to the specified security group on TCP port 80.

Input:
```
[
    "GroupId" => "sg-1a2b3c4d",
    "IpPermissions" => [
        [
            "FromPort" => 80,
            "IpProtocol" => "tcp",
            "ToPort" => 80,
            "UserIdGroupPairs" => [
                [
                    "GroupId" => "sg-4b51a32f"
                ]
            ]
        ]
    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AuthorizeSecurityGroupEgress)
"""
@inline authorize_security_group_egress(aws::AWSConfig=default_aws_config(); args...) = authorize_security_group_egress(aws, args)

@inline authorize_security_group_egress(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AuthorizeSecurityGroupEgress", args)

@inline authorize_security_group_egress(args) = authorize_security_group_egress(default_aws_config(), args)


"""
    using AWSSDK.EC2.authorize_security_group_ingress
    authorize_security_group_ingress([::AWSConfig], arguments::Dict)
    authorize_security_group_ingress([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "AuthorizeSecurityGroupIngress", arguments::Dict)
    ec2([::AWSConfig], "AuthorizeSecurityGroupIngress", <keyword arguments>)

# AuthorizeSecurityGroupIngress Operation

Adds one or more ingress rules to a security group.

Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.

[EC2-Classic] This action gives one or more IPv4 CIDR address ranges permission to access a security group in your account, or gives one or more security groups (called the *source groups*) permission to access a security group for your account. A source group can be for your own AWS account, or another. You can have up to 100 rules per group.

[EC2-VPC] This action gives one or more IPv4 or IPv6 CIDR address ranges permission to access a security group in your VPC, or gives one or more other security groups (called the *source groups*) permission to access a security group for your VPC. The security groups must all be for the same VPC or a peer VPC in a VPC peering connection. For more information about VPC security group limits, see [Amazon VPC Limits](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html).

You can optionally specify a description for the security group rule.

# Arguments

## `CidrIp = ::String`
The CIDR IPv4 address range. You can't specify this parameter when specifying a source security group.


## `FromPort = ::Int`
The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type number. For the ICMP/ICMPv6 type number, use `-1` to specify all types. If you specify all ICMP/ICMPv6 types, you must specify all codes.


## `GroupId = ::String`
The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.


## `GroupName = ::String`
[EC2-Classic, default VPC] The name of the security group. You must specify either the security group ID or the security group name in the request.


## `IpPermissions = [[ ... ], ...]`
One or more sets of IP permissions. Can be used to specify multiple rules in a single command.
```
 IpPermissions = [[
        "FromPort" =>  ::Int,
        "IpProtocol" =>  ::String,
        "IpRanges" =>  [[
            "CidrIp" =>  ::String,
            "Description" =>  ::String
        ], ...],
        "Ipv6Ranges" =>  [[
            "CidrIpv6" =>  ::String,
            "Description" =>  ::String
        ], ...],
        "PrefixListIds" =>  [[
            "Description" =>  ::String,
            "PrefixListId" =>  ::String
        ], ...],
        "ToPort" =>  ::Int,
        "Groups" =>  [[
            "Description" =>  ::String,
            "GroupId" =>  ::String,
            "GroupName" =>  ::String,
            "PeeringStatus" =>  ::String,
            "UserId" =>  ::String,
            "VpcId" =>  ::String,
            "VpcPeeringConnectionId" =>  ::String
        ], ...]
    ], ...]
```

## `IpProtocol = ::String`
The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)). (VPC only) Use `-1` to specify all protocols. If you specify `-1`, or a protocol number other than `tcp`, `udp`, `icmp`, or `58` (ICMPv6), traffic on all ports is allowed, regardless of any ports you specify. For `tcp`, `udp`, and `icmp`, you must specify a port range. For protocol `58` (ICMPv6), you can optionally specify a port range; if you don't, traffic for all types and codes is allowed.


## `SourceSecurityGroupName = ::String`
[EC2-Classic, default VPC] The name of the source security group. You can't specify this parameter in combination with the following parameters: the CIDR IP address range, the start of the port range, the IP protocol, and the end of the port range. Creates rules that grant full ICMP, UDP, and TCP access. To create a rule with a specific IP protocol and port range, use a set of IP permissions instead. For EC2-VPC, the source security group must be in the same VPC.


## `SourceSecurityGroupOwnerId = ::String`
[EC2-Classic] The AWS account ID for the source security group, if the source security group is in a different account. You can't specify this parameter in combination with the following parameters: the CIDR IP address range, the IP protocol, the start of the port range, and the end of the port range. Creates rules that grant full ICMP, UDP, and TCP access. To create a rule with a specific IP protocol and port range, use a set of IP permissions instead.


## `ToPort = ::Int`
The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code number. For the ICMP/ICMPv6 code number, use `-1` to specify all codes. If you specify all ICMP/ICMPv6 types, you must specify all codes.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To add a rule that allows inbound SSH traffic from an IPv4 address range

This example enables inbound traffic on TCP port 22 (SSH). The rule includes a description to help you identify it later.

Input:
```
[
    "GroupId" => "sg-903004f8",
    "IpPermissions" => [
        [
            "FromPort" => 22,
            "IpProtocol" => "tcp",
            "IpRanges" => [
                [
                    "CidrIp" => "203.0.113.0/24",
                    "Description" => "SSH access from the LA office"
                ]
            ],
            "ToPort" => 22
        ]
    ]
]
```

Output:
```
Dict(

)
```

# Example: To add a rule that allows inbound HTTP traffic from another security group

This example enables inbound traffic on TCP port 80 from the specified security group. The group must be in the same VPC or a peer VPC. Incoming traffic is allowed based on the private IP addresses of instances that are associated with the specified security group.

Input:
```
[
    "GroupId" => "sg-111aaa22",
    "IpPermissions" => [
        [
            "FromPort" => 80,
            "IpProtocol" => "tcp",
            "ToPort" => 80,
            "UserIdGroupPairs" => [
                [
                    "Description" => "HTTP access from other instances",
                    "GroupId" => "sg-1a2b3c4d"
                ]
            ]
        ]
    ]
]
```

Output:
```
Dict(

)
```

# Example: To add a rule that allows inbound RDP traffic from an IPv6 address range

This example adds an inbound rule that allows RDP traffic from the specified IPv6 address range. The rule includes a description to help you identify it later.

Input:
```
[
    "GroupId" => "sg-123abc12 ",
    "IpPermissions" => [
        [
            "FromPort" => 3389,
            "IpProtocol" => "tcp",
            "Ipv6Ranges" => [
                [
                    "CidrIpv6" => "2001:db8:1234:1a00::/64",
                    "Description" => "RDP access from the NY office"
                ]
            ],
            "ToPort" => 3389
        ]
    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AuthorizeSecurityGroupIngress)
"""
@inline authorize_security_group_ingress(aws::AWSConfig=default_aws_config(); args...) = authorize_security_group_ingress(aws, args)

@inline authorize_security_group_ingress(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "AuthorizeSecurityGroupIngress", args)

@inline authorize_security_group_ingress(args) = authorize_security_group_ingress(default_aws_config(), args)


"""
    using AWSSDK.EC2.bundle_instance
    bundle_instance([::AWSConfig], arguments::Dict)
    bundle_instance([::AWSConfig]; InstanceId=, Storage=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "BundleInstance", arguments::Dict)
    ec2([::AWSConfig], "BundleInstance", InstanceId=, Storage=, <keyword arguments>)

# BundleInstance Operation

Bundles an Amazon instance store-backed Windows instance.

During bundling, only the root device volume (C:\\) is bundled. Data on other instance store volumes is not preserved.

**Note**
> This action is not applicable for Linux/Unix instances or Windows instances that are backed by Amazon EBS.

# Arguments

## `InstanceId = ::String` -- *Required*
The ID of the instance to bundle.

Type: String

Default: None

Required: Yes


## `Storage = ["S3" =>  [ ... ]]` -- *Required*
The bucket in which to store the AMI. You can specify a bucket that you already own or a new bucket that Amazon EC2 creates on your behalf. If you specify a bucket that belongs to someone else, Amazon EC2 returns an error.
```
 Storage = ["S3" =>  [
            "AWSAccessKeyId" =>  ::String,
            "Bucket" =>  ::String,
            "Prefix" =>  ::String,
            "UploadPolicy" =>  blob,
            "UploadPolicySignature" =>  ::String
        ]]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`BundleInstanceResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/BundleInstance)
"""
@inline bundle_instance(aws::AWSConfig=default_aws_config(); args...) = bundle_instance(aws, args)

@inline bundle_instance(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "BundleInstance", args)

@inline bundle_instance(args) = bundle_instance(default_aws_config(), args)


"""
    using AWSSDK.EC2.cancel_bundle_task
    cancel_bundle_task([::AWSConfig], arguments::Dict)
    cancel_bundle_task([::AWSConfig]; BundleId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CancelBundleTask", arguments::Dict)
    ec2([::AWSConfig], "CancelBundleTask", BundleId=, <keyword arguments>)

# CancelBundleTask Operation

Cancels a bundling operation for an instance store-backed Windows instance.

# Arguments

## `BundleId = ::String` -- *Required*
The ID of the bundle task.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`CancelBundleTaskResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelBundleTask)
"""
@inline cancel_bundle_task(aws::AWSConfig=default_aws_config(); args...) = cancel_bundle_task(aws, args)

@inline cancel_bundle_task(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CancelBundleTask", args)

@inline cancel_bundle_task(args) = cancel_bundle_task(default_aws_config(), args)


"""
    using AWSSDK.EC2.cancel_conversion_task
    cancel_conversion_task([::AWSConfig], arguments::Dict)
    cancel_conversion_task([::AWSConfig]; ConversionTaskId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CancelConversionTask", arguments::Dict)
    ec2([::AWSConfig], "CancelConversionTask", ConversionTaskId=, <keyword arguments>)

# CancelConversionTask Operation

Cancels an active conversion task. The task can be the import of an instance or volume. The action removes all artifacts of the conversion, including a partially uploaded volume or instance. If the conversion is complete or is in the process of transferring the final disk image, the command fails and returns an exception.

For more information, see [Importing a Virtual Machine Using the Amazon EC2 CLI](http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html).

# Arguments

## `ConversionTaskId = ::String` -- *Required*
The ID of the conversion task.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ReasonMessage = ::String`
The reason for canceling the conversion task.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelConversionTask)
"""
@inline cancel_conversion_task(aws::AWSConfig=default_aws_config(); args...) = cancel_conversion_task(aws, args)

@inline cancel_conversion_task(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CancelConversionTask", args)

@inline cancel_conversion_task(args) = cancel_conversion_task(default_aws_config(), args)


"""
    using AWSSDK.EC2.cancel_export_task
    cancel_export_task([::AWSConfig], arguments::Dict)
    cancel_export_task([::AWSConfig]; ExportTaskId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CancelExportTask", arguments::Dict)
    ec2([::AWSConfig], "CancelExportTask", ExportTaskId=)

# CancelExportTask Operation

Cancels an active export task. The request removes all artifacts of the export, including any partially-created Amazon S3 objects. If the export task is complete or is in the process of transferring the final disk image, the command fails and returns an error.

# Arguments

## `ExportTaskId = ::String` -- *Required*
The ID of the export task. This is the ID returned by `CreateInstanceExportTask`.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelExportTask)
"""
@inline cancel_export_task(aws::AWSConfig=default_aws_config(); args...) = cancel_export_task(aws, args)

@inline cancel_export_task(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CancelExportTask", args)

@inline cancel_export_task(args) = cancel_export_task(default_aws_config(), args)


"""
    using AWSSDK.EC2.cancel_import_task
    cancel_import_task([::AWSConfig], arguments::Dict)
    cancel_import_task([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CancelImportTask", arguments::Dict)
    ec2([::AWSConfig], "CancelImportTask", <keyword arguments>)

# CancelImportTask Operation

Cancels an in-process import virtual machine or import snapshot task.

# Arguments

## `CancelReason = ::String`
The reason for canceling the task.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ImportTaskId = ::String`
The ID of the import image or import snapshot task to be canceled.




# Returns

`CancelImportTaskResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelImportTask)
"""
@inline cancel_import_task(aws::AWSConfig=default_aws_config(); args...) = cancel_import_task(aws, args)

@inline cancel_import_task(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CancelImportTask", args)

@inline cancel_import_task(args) = cancel_import_task(default_aws_config(), args)


"""
    using AWSSDK.EC2.cancel_reserved_instances_listing
    cancel_reserved_instances_listing([::AWSConfig], arguments::Dict)
    cancel_reserved_instances_listing([::AWSConfig]; ReservedInstancesListingId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CancelReservedInstancesListing", arguments::Dict)
    ec2([::AWSConfig], "CancelReservedInstancesListing", ReservedInstancesListingId=)

# CancelReservedInstancesListing Operation

Cancels the specified Reserved Instance listing in the Reserved Instance Marketplace.

For more information, see [Reserved Instance Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `ReservedInstancesListingId = ::String` -- *Required*
The ID of the Reserved Instance listing.




# Returns

`CancelReservedInstancesListingResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelReservedInstancesListing)
"""
@inline cancel_reserved_instances_listing(aws::AWSConfig=default_aws_config(); args...) = cancel_reserved_instances_listing(aws, args)

@inline cancel_reserved_instances_listing(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CancelReservedInstancesListing", args)

@inline cancel_reserved_instances_listing(args) = cancel_reserved_instances_listing(default_aws_config(), args)


"""
    using AWSSDK.EC2.cancel_spot_fleet_requests
    cancel_spot_fleet_requests([::AWSConfig], arguments::Dict)
    cancel_spot_fleet_requests([::AWSConfig]; SpotFleetRequestId=, TerminateInstances=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CancelSpotFleetRequests", arguments::Dict)
    ec2([::AWSConfig], "CancelSpotFleetRequests", SpotFleetRequestId=, TerminateInstances=, <keyword arguments>)

# CancelSpotFleetRequests Operation

Cancels the specified Spot Fleet requests.

After you cancel a Spot Fleet request, the Spot Fleet launches no new Spot Instances. You must specify whether the Spot Fleet should also terminate its Spot Instances. If you terminate the instances, the Spot Fleet request enters the `cancelled_terminating` state. Otherwise, the Spot Fleet request enters the `cancelled_running` state and the instances continue to run until they are interrupted or you terminate them manually.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `SpotFleetRequestId = [::String, ...]` -- *Required*
The IDs of the Spot Fleet requests.


## `TerminateInstances = ::Bool` -- *Required*
Indicates whether to terminate instances for a Spot Fleet request if it is canceled successfully.




# Returns

`CancelSpotFleetRequestsResponse`

# Example: To cancel a Spot fleet request

This example cancels the specified Spot fleet request and terminates its associated Spot Instances.

Input:
```
[
    "SpotFleetRequestIds" => [
        "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
    ],
    "TerminateInstances" => true
]
```

Output:
```
Dict(
    "SuccessfulFleetRequests" => [
        Dict(
            "CurrentSpotFleetRequestState" => "cancelled_running",
            "PreviousSpotFleetRequestState" => "active",
            "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
        )
    ]
)
```

# Example: To cancel a Spot fleet request without terminating its Spot Instances

This example cancels the specified Spot fleet request without terminating its associated Spot Instances.

Input:
```
[
    "SpotFleetRequestIds" => [
        "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
    ],
    "TerminateInstances" => false
]
```

Output:
```
Dict(
    "SuccessfulFleetRequests" => [
        Dict(
            "CurrentSpotFleetRequestState" => "cancelled_terminating",
            "PreviousSpotFleetRequestState" => "active",
            "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelSpotFleetRequests)
"""
@inline cancel_spot_fleet_requests(aws::AWSConfig=default_aws_config(); args...) = cancel_spot_fleet_requests(aws, args)

@inline cancel_spot_fleet_requests(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CancelSpotFleetRequests", args)

@inline cancel_spot_fleet_requests(args) = cancel_spot_fleet_requests(default_aws_config(), args)


"""
    using AWSSDK.EC2.cancel_spot_instance_requests
    cancel_spot_instance_requests([::AWSConfig], arguments::Dict)
    cancel_spot_instance_requests([::AWSConfig]; SpotInstanceRequestId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CancelSpotInstanceRequests", arguments::Dict)
    ec2([::AWSConfig], "CancelSpotInstanceRequests", SpotInstanceRequestId=, <keyword arguments>)

# CancelSpotInstanceRequests Operation

Cancels one or more Spot Instance requests.

**Important**
> Canceling a Spot Instance request does not terminate running Spot Instances associated with the request.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `SpotInstanceRequestId = [::String, ...]` -- *Required*
One or more Spot Instance request IDs.




# Returns

`CancelSpotInstanceRequestsResult`

# Example: To cancel Spot Instance requests

This example cancels a Spot Instance request.

Input:
```
[
    "SpotInstanceRequestIds" => [
        "sir-08b93456"
    ]
]
```

Output:
```
Dict(
    "CancelledSpotInstanceRequests" => [
        Dict(
            "SpotInstanceRequestId" => "sir-08b93456",
            "State" => "cancelled"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelSpotInstanceRequests)
"""
@inline cancel_spot_instance_requests(aws::AWSConfig=default_aws_config(); args...) = cancel_spot_instance_requests(aws, args)

@inline cancel_spot_instance_requests(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CancelSpotInstanceRequests", args)

@inline cancel_spot_instance_requests(args) = cancel_spot_instance_requests(default_aws_config(), args)


"""
    using AWSSDK.EC2.confirm_product_instance
    confirm_product_instance([::AWSConfig], arguments::Dict)
    confirm_product_instance([::AWSConfig]; InstanceId=, ProductCode=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ConfirmProductInstance", arguments::Dict)
    ec2([::AWSConfig], "ConfirmProductInstance", InstanceId=, ProductCode=, <keyword arguments>)

# ConfirmProductInstance Operation

Determines whether a product code is associated with an instance. This action can only be used by the owner of the product code. It is useful when a product code owner must verify whether another user's instance is eligible for support.

# Arguments

## `InstanceId = ::String` -- *Required*
The ID of the instance.


## `ProductCode = ::String` -- *Required*
The product code. This must be a product code that you own.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`ConfirmProductInstanceResult`

# Example: To confirm the product instance

This example determines whether the specified product code is associated with the specified instance.

Input:
```
[
    "InstanceId" => "i-1234567890abcdef0",
    "ProductCode" => "774F4FF8"
]
```

Output:
```
Dict(
    "OwnerId" => "123456789012"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ConfirmProductInstance)
"""
@inline confirm_product_instance(aws::AWSConfig=default_aws_config(); args...) = confirm_product_instance(aws, args)

@inline confirm_product_instance(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ConfirmProductInstance", args)

@inline confirm_product_instance(args) = confirm_product_instance(default_aws_config(), args)


"""
    using AWSSDK.EC2.copy_fpga_image
    copy_fpga_image([::AWSConfig], arguments::Dict)
    copy_fpga_image([::AWSConfig]; SourceFpgaImageId=, SourceRegion=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CopyFpgaImage", arguments::Dict)
    ec2([::AWSConfig], "CopyFpgaImage", SourceFpgaImageId=, SourceRegion=, <keyword arguments>)

# CopyFpgaImage Operation

Copies the specified Amazon FPGA Image (AFI) to the current region.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `SourceFpgaImageId = ::String` -- *Required*
The ID of the source AFI.


## `Description = ::String`
The description for the new AFI.


## `Name = ::String`
The name for the new AFI. The default is the name of the source AFI.


## `SourceRegion = ::String` -- *Required*
The region that contains the source AFI.


## `ClientToken = ::String`
Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).




# Returns

`CopyFpgaImageResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CopyFpgaImage)
"""
@inline copy_fpga_image(aws::AWSConfig=default_aws_config(); args...) = copy_fpga_image(aws, args)

@inline copy_fpga_image(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CopyFpgaImage", args)

@inline copy_fpga_image(args) = copy_fpga_image(default_aws_config(), args)


"""
    using AWSSDK.EC2.copy_image
    copy_image([::AWSConfig], arguments::Dict)
    copy_image([::AWSConfig]; Name=, SourceImageId=, SourceRegion=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CopyImage", arguments::Dict)
    ec2([::AWSConfig], "CopyImage", Name=, SourceImageId=, SourceRegion=, <keyword arguments>)

# CopyImage Operation

Initiates the copy of an AMI from the specified source region to the current region. You specify the destination region by using its endpoint when making the request.

For more information about the prerequisites and limits when copying an AMI, see [Copying an AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `Description = ::String`
A description for the new AMI in the destination region.


## `Encrypted = ::Bool`
Specifies whether the destination snapshots of the copied image should be encrypted. The default CMK for EBS is used unless a non-default AWS Key Management Service (AWS KMS) CMK is specified with `KmsKeyId`. For more information, see [Amazon EBS Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `KmsKeyId = ::String`
An identifier for the AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted volume. This parameter is only required if you want to use a non-default CMK; if this parameter is not specified, the default CMK for EBS is used. If a `KmsKeyId` is specified, the `Encrypted` flag must also be set.

The CMK identifier may be provided in any of the following formats:

*   Key ID

*   Key alias, in the form `alias/*ExampleAlias*`

*   ARN using key ID. The ID ARN contains the `arn:aws:kms` namespace, followed by the region of the CMK, the AWS account ID of the CMK owner, the `key` namespace, and then the CMK ID. For example, arn:aws:kms:*us-east-1*:*012345678910*:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.

*   ARN using key alias. The alias ARN contains the `arn:aws:kms` namespace, followed by the region of the CMK, the AWS account ID of the CMK owner, the `alias` namespace, and then the CMK alias. For example, arn:aws:kms:*us-east-1*:*012345678910*:alias/*ExampleAlias*.

AWS parses `KmsKeyId` asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. This action will eventually report failure.

The specified CMK must exist in the region that the snapshot is being copied to.


## `Name = ::String` -- *Required*
The name of the new AMI in the destination region.


## `SourceImageId = ::String` -- *Required*
The ID of the AMI to copy.


## `SourceRegion = ::String` -- *Required*
The name of the region that contains the AMI to copy.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`CopyImageResult`

# Example: To copy an AMI to another region

This example copies the specified AMI from the us-east-1 region to the current region.

Input:
```
[
    "Description" => "",
    "Name" => "My server",
    "SourceImageId" => "ami-5731123e",
    "SourceRegion" => "us-east-1"
]
```

Output:
```
Dict(
    "ImageId" => "ami-438bea42"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CopyImage)
"""
@inline copy_image(aws::AWSConfig=default_aws_config(); args...) = copy_image(aws, args)

@inline copy_image(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CopyImage", args)

@inline copy_image(args) = copy_image(default_aws_config(), args)


"""
    using AWSSDK.EC2.copy_snapshot
    copy_snapshot([::AWSConfig], arguments::Dict)
    copy_snapshot([::AWSConfig]; SourceRegion=, SourceSnapshotId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CopySnapshot", arguments::Dict)
    ec2([::AWSConfig], "CopySnapshot", SourceRegion=, SourceSnapshotId=, <keyword arguments>)

# CopySnapshot Operation

Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3. You can copy the snapshot within the same region or from one region to another. You can use the snapshot to create EBS volumes or Amazon Machine Images (AMIs). The snapshot is copied to the regional endpoint that you send the HTTP request to.

Copies of encrypted EBS snapshots remain encrypted. Copies of unencrypted snapshots remain unencrypted, unless the `Encrypted` flag is specified during the snapshot copy operation. By default, encrypted snapshot copies use the default AWS Key Management Service (AWS KMS) customer master key (CMK); however, you can specify a non-default CMK with the `KmsKeyId` parameter.

To copy an encrypted snapshot that has been shared from another account, you must have permissions for the CMK used to encrypt the snapshot.

Snapshots created by copying another snapshot have an arbitrary volume ID that should not be used for any purpose.

For more information, see [Copying an Amazon EBS Snapshot](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Description = ::String`
A description for the EBS snapshot.


## `DestinationRegion = ::String`
The destination region to use in the `PresignedUrl` parameter of a snapshot copy operation. This parameter is only valid for specifying the destination region in a `PresignedUrl` parameter, where it is required.

The snapshot copy is sent to the regional endpoint that you sent the HTTP request to (for example, `ec2.us-east-1.amazonaws.com`). With the AWS CLI, this is specified using the `--region` parameter or the default region in your AWS configuration file.


## `Encrypted = ::Bool`
Specifies whether the destination snapshot should be encrypted. You can encrypt a copy of an unencrypted snapshot using this flag, but you cannot use it to create an unencrypted copy from an encrypted snapshot. Your default CMK for EBS is used unless a non-default AWS Key Management Service (AWS KMS) CMK is specified with `KmsKeyId`. For more information, see [Amazon EBS Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `KmsKeyId = ::String`
An identifier for the AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted volume. This parameter is only required if you want to use a non-default CMK; if this parameter is not specified, the default CMK for EBS is used. If a `KmsKeyId` is specified, the `Encrypted` flag must also be set.

The CMK identifier may be provided in any of the following formats:

*   Key ID

*   Key alias

*   ARN using key ID. The ID ARN contains the `arn:aws:kms` namespace, followed by the region of the CMK, the AWS account ID of the CMK owner, the `key` namespace, and then the CMK ID. For example, arn:aws:kms:*us-east-1*:*012345678910*:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.

*   ARN using key alias. The alias ARN contains the `arn:aws:kms` namespace, followed by the region of the CMK, the AWS account ID of the CMK owner, the `alias` namespace, and then the CMK alias. For example, arn:aws:kms:*us-east-1*:*012345678910*:alias/*ExampleAlias*.

AWS parses `KmsKeyId` asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. The action will eventually fail.


## `PresignedUrl = ::String`
When you copy an encrypted source snapshot using the Amazon EC2 Query API, you must supply a pre-signed URL. This parameter is optional for unencrypted snapshots. For more information, see [Query Requests](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html).

The `PresignedUrl` should use the snapshot source endpoint, the `CopySnapshot` action, and include the `SourceRegion`, `SourceSnapshotId`, and `DestinationRegion` parameters. The `PresignedUrl` must be signed using AWS Signature Version 4. Because EBS snapshots are stored in Amazon S3, the signing algorithm for this parameter uses the same logic that is described in [Authenticating Requests by Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) in the *Amazon Simple Storage Service API Reference*. An invalid or improperly signed `PresignedUrl` will cause the copy operation to fail asynchronously, and the snapshot will move to an `error` state.


## `SourceRegion = ::String` -- *Required*
The ID of the region that contains the snapshot to be copied.


## `SourceSnapshotId = ::String` -- *Required*
The ID of the EBS snapshot to copy.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`CopySnapshotResult`

# Example: To copy a snapshot

This example copies a snapshot with the snapshot ID of ``snap-066877671789bd71b`` from the ``us-west-2`` region to the ``us-east-1`` region and adds a short description to identify the snapshot.

Input:
```
[
    "Description" => "This is my copied snapshot.",
    "DestinationRegion" => "us-east-1",
    "SourceRegion" => "us-west-2",
    "SourceSnapshotId" => "snap-066877671789bd71b"
]
```

Output:
```
Dict(
    "SnapshotId" => "snap-066877671789bd71b"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CopySnapshot)
"""
@inline copy_snapshot(aws::AWSConfig=default_aws_config(); args...) = copy_snapshot(aws, args)

@inline copy_snapshot(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CopySnapshot", args)

@inline copy_snapshot(args) = copy_snapshot(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_customer_gateway
    create_customer_gateway([::AWSConfig], arguments::Dict)
    create_customer_gateway([::AWSConfig]; BgpAsn=, IpAddress=, Type=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateCustomerGateway", arguments::Dict)
    ec2([::AWSConfig], "CreateCustomerGateway", BgpAsn=, IpAddress=, Type=, <keyword arguments>)

# CreateCustomerGateway Operation

Provides information to AWS about your VPN customer gateway device. The customer gateway is the appliance at your end of the VPN connection. (The device on the AWS side of the VPN connection is the virtual private gateway.) You must provide the Internet-routable IP address of the customer gateway's external interface. The IP address must be static and may be behind a device performing network address translation (NAT).

For devices that use Border Gateway Protocol (BGP), you can also provide the device's BGP Autonomous System Number (ASN). You can use an existing ASN assigned to your network. If you don't have an ASN already, you can use a private ASN (in the 64512 - 65534 range).

**Note**
> Amazon EC2 supports all 2-byte ASN numbers in the range of 1 - 65534, with the exception of 7224, which is reserved in the `us-east-1` region, and 9059, which is reserved in the `eu-west-1` region.

For more information about VPN customer gateways, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.

**Important**
> You cannot create more than one customer gateway with the same VPN type, IP address, and BGP ASN parameter values. If you run an identical request more than one time, the first request creates the customer gateway, and subsequent requests return information about the existing customer gateway. The subsequent requests do not create new customer gateway resources.

# Arguments

## `BgpAsn = ::Int` -- *Required*
For devices that support BGP, the customer gateway's BGP ASN.

Default: 65000


## `IpAddress = ::String` -- *Required*
The Internet-routable IP address for the customer gateway's outside interface. The address must be static.


## `Type = "ipsec.1"` -- *Required*
The type of VPN connection that this customer gateway supports (`ipsec.1`).


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`CreateCustomerGatewayResult`

# Example: To create a customer gateway

This example creates a customer gateway with the specified IP address for its outside interface.

Input:
```
[
    "BgpAsn" => 65534,
    "PublicIp" => "12.1.2.3",
    "Type" => "ipsec.1"
]
```

Output:
```
Dict(
    "CustomerGateway" => Dict(
        "BgpAsn" => "65534",
        "CustomerGatewayId" => "cgw-0e11f167",
        "IpAddress" => "12.1.2.3",
        "State" => "available",
        "Type" => "ipsec.1"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateCustomerGateway)
"""
@inline create_customer_gateway(aws::AWSConfig=default_aws_config(); args...) = create_customer_gateway(aws, args)

@inline create_customer_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateCustomerGateway", args)

@inline create_customer_gateway(args) = create_customer_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_default_subnet
    create_default_subnet([::AWSConfig], arguments::Dict)
    create_default_subnet([::AWSConfig]; AvailabilityZone=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateDefaultSubnet", arguments::Dict)
    ec2([::AWSConfig], "CreateDefaultSubnet", AvailabilityZone=, <keyword arguments>)

# CreateDefaultSubnet Operation

Creates a default subnet with a size `/20` IPv4 CIDR block in the specified Availability Zone in your default VPC. You can have only one default subnet per Availability Zone. For more information, see [Creating a Default Subnet](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html#create-default-subnet) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `AvailabilityZone = ::String` -- *Required*
The Availability Zone in which to create the default subnet.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`CreateDefaultSubnetResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateDefaultSubnet)
"""
@inline create_default_subnet(aws::AWSConfig=default_aws_config(); args...) = create_default_subnet(aws, args)

@inline create_default_subnet(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateDefaultSubnet", args)

@inline create_default_subnet(args) = create_default_subnet(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_default_vpc
    create_default_vpc([::AWSConfig], arguments::Dict)
    create_default_vpc([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateDefaultVpc", arguments::Dict)
    ec2([::AWSConfig], "CreateDefaultVpc", <keyword arguments>)

# CreateDefaultVpc Operation

Creates a default VPC with a size `/16` IPv4 CIDR block and a default subnet in each Availability Zone. For more information about the components of a default VPC, see [Default VPC and Default Subnets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html) in the *Amazon Virtual Private Cloud User Guide*. You cannot specify the components of the default VPC yourself.

You can create a default VPC if you deleted your previous default VPC. You cannot have more than one default VPC per region.

If your account supports EC2-Classic, you cannot use this action to create a default VPC in a region that supports EC2-Classic. If you want a default VPC in a region that supports EC2-Classic, see "I really want a default VPC for my existing EC2 account. Is that possible?" in the [Default VPCs FAQ](http://aws.amazon.com/vpc/faqs/#Default_VPCs).

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`CreateDefaultVpcResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateDefaultVpc)
"""
@inline create_default_vpc(aws::AWSConfig=default_aws_config(); args...) = create_default_vpc(aws, args)

@inline create_default_vpc(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateDefaultVpc", args)

@inline create_default_vpc(args) = create_default_vpc(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_dhcp_options
    create_dhcp_options([::AWSConfig], arguments::Dict)
    create_dhcp_options([::AWSConfig]; DhcpConfiguration=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateDhcpOptions", arguments::Dict)
    ec2([::AWSConfig], "CreateDhcpOptions", DhcpConfiguration=, <keyword arguments>)

# CreateDhcpOptions Operation

Creates a set of DHCP options for your VPC. After creating the set, you must associate it with the VPC, causing all existing and new instances that you launch in the VPC to use this set of DHCP options. The following are the individual DHCP options you can specify. For more information about the options, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).

*   `domain-name-servers` - The IP addresses of up to four domain name servers, or AmazonProvidedDNS. The default DHCP option set specifies AmazonProvidedDNS. If specifying more than one domain name server, specify the IP addresses in a single parameter, separated by commas. If you want your instance to receive a custom DNS hostname as specified in `domain-name`, you must set `domain-name-servers` to a custom DNS server.

*   `domain-name` - If you're using AmazonProvidedDNS in `us-east-1`, specify `ec2.internal`. If you're using AmazonProvidedDNS in another region, specify `region.compute.internal` (for example, `ap-northeast-1.compute.internal`). Otherwise, specify a domain name (for example, `MyCompany.com`). This value is used to complete unqualified DNS hostnames. **Important**: Some Linux operating systems accept multiple domain names separated by spaces. However, Windows and other Linux operating systems treat the value as a single domain, which results in unexpected behavior. If your DHCP options set is associated with a VPC that has instances with multiple operating systems, specify only one domain name.

*   `ntp-servers` - The IP addresses of up to four Network Time Protocol (NTP) servers.

*   `netbios-name-servers` - The IP addresses of up to four NetBIOS name servers.

*   `netbios-node-type` - The NetBIOS node type (1, 2, 4, or 8). We recommend that you specify 2 (broadcast and multicast are not currently supported). For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).

Your VPC automatically starts out with a set of DHCP options that includes only a DNS server that we provide (AmazonProvidedDNS). If you create a set of options, and if your VPC has an Internet gateway, make sure to set the `domain-name-servers` option either to `AmazonProvidedDNS` or to a domain name server of your choice. For more information about DHCP options, see [DHCP Options Sets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `DhcpConfiguration = [[ ... ], ...]` -- *Required*
A DHCP configuration option.
```
 DhcpConfiguration = [[
        "Key" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`CreateDhcpOptionsResult`

# Example: To create a DHCP options set

This example creates a DHCP options set.

Input:
```
[
    "DhcpConfigurations" => [
        [
            "Key" => "domain-name-servers",
            "Values" => [
                "10.2.5.1",
                "10.2.5.2"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "DhcpOptions" => Dict(
        "DhcpConfigurations" => [
            Dict(
                "Key" => "domain-name-servers",
                "Values" => [
                    Dict(
                        "Value" => "10.2.5.2"
                    ),
                    Dict(
                        "Value" => "10.2.5.1"
                    )
                ]
            )
        ],
        "DhcpOptionsId" => "dopt-d9070ebb"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateDhcpOptions)
"""
@inline create_dhcp_options(aws::AWSConfig=default_aws_config(); args...) = create_dhcp_options(aws, args)

@inline create_dhcp_options(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateDhcpOptions", args)

@inline create_dhcp_options(args) = create_dhcp_options(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_egress_only_internet_gateway
    create_egress_only_internet_gateway([::AWSConfig], arguments::Dict)
    create_egress_only_internet_gateway([::AWSConfig]; VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateEgressOnlyInternetGateway", arguments::Dict)
    ec2([::AWSConfig], "CreateEgressOnlyInternetGateway", VpcId=, <keyword arguments>)

# CreateEgressOnlyInternetGateway Operation

[IPv6 only] Creates an egress-only Internet gateway for your VPC. An egress-only Internet gateway is used to enable outbound communication over IPv6 from instances in your VPC to the Internet, and prevents hosts outside of your VPC from initiating an IPv6 connection with your instance.

# Arguments

## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcId = ::String` -- *Required*
The ID of the VPC for which to create the egress-only Internet gateway.




# Returns

`CreateEgressOnlyInternetGatewayResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateEgressOnlyInternetGateway)
"""
@inline create_egress_only_internet_gateway(aws::AWSConfig=default_aws_config(); args...) = create_egress_only_internet_gateway(aws, args)

@inline create_egress_only_internet_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateEgressOnlyInternetGateway", args)

@inline create_egress_only_internet_gateway(args) = create_egress_only_internet_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_fleet
    create_fleet([::AWSConfig], arguments::Dict)
    create_fleet([::AWSConfig]; LaunchTemplateConfigs=, TargetCapacitySpecification=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateFleet", arguments::Dict)
    ec2([::AWSConfig], "CreateFleet", LaunchTemplateConfigs=, TargetCapacitySpecification=, <keyword arguments>)

# CreateFleet Operation

Launches an EC2 Fleet.

You can create a single EC2 Fleet that includes multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet.

For more information, see [Launching an EC2 Fleet](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


## `SpotOptions = [ ... ]`
Describes the configuration of Spot Instances in an EC2 Fleet.
```
 SpotOptions = [
        "AllocationStrategy" =>  "lowest-price" or "diversified",
        "InstanceInterruptionBehavior" =>  "hibernate", "stop" or "terminate",
        "InstancePoolsToUseCount" =>  ::Int
    ]
```

## `OnDemandOptions = ["AllocationStrategy" =>  "lowest-price" or "prioritized"]`
The allocation strategy of On-Demand Instances in an EC2 Fleet.


## `ExcessCapacityTerminationPolicy = "no-termination" or "termination"`
Indicates whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.


## `LaunchTemplateConfigs = [[ ... ], ...]` -- *Required*
The configuration for the EC2 Fleet.
```
 LaunchTemplateConfigs = [[
        "LaunchTemplateSpecification" =>  [
            "LaunchTemplateId" =>  ::String,
            "LaunchTemplateName" =>  ::String,
            "Version" =>  ::String
        ],
        "Overrides" =>  [[
            "InstanceType" =>  "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5.metal", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "r5d.metal", "x1.16xlarge", "x1.32xlarge", "x1e.xlarge", "x1e.2xlarge", "x1e.4xlarge", "x1e.8xlarge", "x1e.16xlarge", "x1e.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "i3.metal", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.18xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.18xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "p3.2xlarge", "p3.8xlarge", "p3.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.12xlarge", "m5.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.12xlarge", "m5d.24xlarge", "h1.2xlarge", "h1.4xlarge", "h1.8xlarge", "h1.16xlarge", "z1d.large", "z1d.xlarge", "z1d.2xlarge", "z1d.3xlarge", "z1d.6xlarge" or "z1d.12xlarge",
            "MaxPrice" =>  ::String,
            "SubnetId" =>  ::String,
            "AvailabilityZone" =>  ::String,
            "WeightedCapacity" =>  double,
            "Priority" =>  double
        ], ...]
    ], ...]
```

## `TargetCapacitySpecification = [ ... ]` -- *Required*
The `TotalTargetCapacity`, `OnDemandTargetCapacity`, `SpotTargetCapacity`, and `DefaultCapacityType` structure.
```
 TargetCapacitySpecification = [
        "TotalTargetCapacity" => <required> ::Int,
        "OnDemandTargetCapacity" =>  ::Int,
        "SpotTargetCapacity" =>  ::Int,
        "DefaultTargetCapacityType" =>  "spot" or "on-demand"
    ]
```

## `TerminateInstancesWithExpiration = ::Bool`
Indicates whether running instances should be terminated when the EC2 Fleet expires.


## `Type = "request" or "maintain"`
The type of request. Indicates whether the EC2 Fleet only `requests` the target capacity, or also attempts to `maintain` it. If you request a certain target capacity, EC2 Fleet only places the required requests. It does not attempt to replenish instances if capacity is diminished, and does not submit requests in alternative capacity pools if capacity is unavailable. To maintain a certain target capacity, EC2 Fleet places the required requests to meet this target capacity. It also automatically replenishes any interrupted Spot Instances. Default: `maintain`.


## `ValidFrom = timestamp`
The start date and time of the request, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z). The default is to start fulfilling the request immediately.


## `ValidUntil = timestamp`
The end date and time of the request, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. The default end date is 7 days from the current date.


## `ReplaceUnhealthyInstances = ::Bool`
Indicates whether EC2 Fleet should replace unhealthy instances.


## `TagSpecification = [[ ... ], ...]`
The key-value pair for tagging the EC2 Fleet request on creation. The value for `ResourceType` must be `fleet`, otherwise the fleet request fails. To tag instances at launch, specify the tags in the [launch template](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template). For information about tagging after launch, see [Tagging Your Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-resources).
```
 TagSpecification = [[
        "ResourceType" =>  "customer-gateway", "dhcp-options", "image", "instance", "internet-gateway", "network-acl", "network-interface", "reserved-instances", "route-table", "snapshot", "spot-instances-request", "subnet", "security-group", "volume", "vpc", "vpn-connection" or "vpn-gateway",
        "Tag" =>  [[
            "Key" =>  ::String,
            "Value" =>  ::String
        ], ...]
    ], ...]
```



# Returns

`CreateFleetResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateFleet)
"""
@inline create_fleet(aws::AWSConfig=default_aws_config(); args...) = create_fleet(aws, args)

@inline create_fleet(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateFleet", args)

@inline create_fleet(args) = create_fleet(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_flow_logs
    create_flow_logs([::AWSConfig], arguments::Dict)
    create_flow_logs([::AWSConfig]; DeliverLogsPermissionArn=, LogGroupName=, ResourceId=, ResourceType=, TrafficType=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateFlowLogs", arguments::Dict)
    ec2([::AWSConfig], "CreateFlowLogs", DeliverLogsPermissionArn=, LogGroupName=, ResourceId=, ResourceType=, TrafficType=, <keyword arguments>)

# CreateFlowLogs Operation

Creates one or more flow logs to capture IP traffic for a specific network interface, subnet, or VPC. Flow logs are delivered to a specified log group in Amazon CloudWatch Logs. If you specify a VPC or subnet in the request, a log stream is created in CloudWatch Logs for each network interface in the subnet or VPC. Log streams can include information about accepted and rejected traffic to a network interface. You can view the data in your log streams using Amazon CloudWatch Logs.

In your request, you must also specify an IAM role that has permission to publish logs to CloudWatch Logs.

For more information, see [VPC Flow Logs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/flow-logs.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).


## `DeliverLogsPermissionArn = ::String` -- *Required*
The ARN for the IAM role that's used to post flow logs to a CloudWatch Logs log group.


## `LogGroupName = ::String` -- *Required*
The name of the CloudWatch log group.


## `ResourceId = [::String, ...]` -- *Required*
One or more subnet, network interface, or VPC IDs.

Constraints: Maximum of 1000 resources


## `ResourceType = "VPC", "Subnet" or "NetworkInterface"` -- *Required*
The type of resource on which to create the flow log.


## `TrafficType = "ACCEPT", "REJECT" or "ALL"` -- *Required*
The type of traffic to log.




# Returns

`CreateFlowLogsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateFlowLogs)
"""
@inline create_flow_logs(aws::AWSConfig=default_aws_config(); args...) = create_flow_logs(aws, args)

@inline create_flow_logs(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateFlowLogs", args)

@inline create_flow_logs(args) = create_flow_logs(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_fpga_image
    create_fpga_image([::AWSConfig], arguments::Dict)
    create_fpga_image([::AWSConfig]; InputStorageLocation=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateFpgaImage", arguments::Dict)
    ec2([::AWSConfig], "CreateFpgaImage", InputStorageLocation=, <keyword arguments>)

# CreateFpgaImage Operation

Creates an Amazon FPGA Image (AFI) from the specified design checkpoint (DCP).

The create operation is asynchronous. To verify that the AFI is ready for use, check the output logs.

An AFI contains the FPGA bitstream that is ready to download to an FPGA. You can securely deploy an AFI on one or more FPGA-accelerated instances. For more information, see the [AWS FPGA Hardware Development Kit](https://github.com/aws/aws-fpga/).

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InputStorageLocation = [ ... ]` -- *Required*
The location of the encrypted design checkpoint in Amazon S3. The input must be a tarball.
```
 InputStorageLocation = [
        "Bucket" =>  ::String,
        "Key" =>  ::String
    ]
```

## `LogsStorageLocation = [ ... ]`
The location in Amazon S3 for the output logs.
```
 LogsStorageLocation = [
        "Bucket" =>  ::String,
        "Key" =>  ::String
    ]
```

## `Description = ::String`
A description for the AFI.


## `Name = ::String`
A name for the AFI.


## `ClientToken = ::String`
Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).




# Returns

`CreateFpgaImageResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateFpgaImage)
"""
@inline create_fpga_image(aws::AWSConfig=default_aws_config(); args...) = create_fpga_image(aws, args)

@inline create_fpga_image(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateFpgaImage", args)

@inline create_fpga_image(args) = create_fpga_image(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_image
    create_image([::AWSConfig], arguments::Dict)
    create_image([::AWSConfig]; InstanceId=, Name=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateImage", arguments::Dict)
    ec2([::AWSConfig], "CreateImage", InstanceId=, Name=, <keyword arguments>)

# CreateImage Operation

Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped.

If you customized your instance with instance store volumes or EBS volumes in addition to the root device volume, the new AMI contains block device mapping information for those volumes. When you launch an instance from this new AMI, the instance automatically launches with those additional volumes.

For more information, see [Creating Amazon EBS-Backed Linux AMIs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `BlockDeviceMapping = [[ ... ], ...]`
Information about one or more block device mappings.
```
 BlockDeviceMapping = [[
        "DeviceName" =>  ::String,
        "VirtualName" =>  ::String,
        "Ebs" =>  [
            "Encrypted" =>  ::Bool,
            "DeleteOnTermination" =>  ::Bool,
            "Iops" =>  ::Int,
            "KmsKeyId" =>  ::String,
            "SnapshotId" =>  ::String,
            "VolumeSize" =>  ::Int,
            "VolumeType" =>  "standard", "io1", "gp2", "sc1" or "st1"
        ],
        "NoDevice" =>  ::String
    ], ...]
```

## `Description = ::String`
A description for the new image.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InstanceId = ::String` -- *Required*
The ID of the instance.


## `Name = ::String` -- *Required*
A name for the new image.

Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single quotes ('), at-signs (@), or underscores(_)


## `NoReboot = ::Bool`
By default, Amazon EC2 attempts to shut down and reboot the instance before creating the image. If the 'No Reboot' option is set, Amazon EC2 doesn't shut down the instance before creating the image. When this option is used, file system integrity on the created image can't be guaranteed.




# Returns

`CreateImageResult`

# Example: To create an AMI from an Amazon EBS-backed instance

This example creates an AMI from the specified instance and adds an EBS volume with the device name /dev/sdh and an instance store volume with the device name /dev/sdc.

Input:
```
[
    "BlockDeviceMappings" => [
        [
            "DeviceName" => "/dev/sdh",
            "Ebs" => [
                "VolumeSize" => "100"
            ]
        ],
        [
            "DeviceName" => "/dev/sdc",
            "VirtualName" => "ephemeral1"
        ]
    ],
    "Description" => "An AMI for my server",
    "InstanceId" => "i-1234567890abcdef0",
    "Name" => "My server",
    "NoReboot" => true
]
```

Output:
```
Dict(
    "ImageId" => "ami-1a2b3c4d"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateImage)
"""
@inline create_image(aws::AWSConfig=default_aws_config(); args...) = create_image(aws, args)

@inline create_image(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateImage", args)

@inline create_image(args) = create_image(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_instance_export_task
    create_instance_export_task([::AWSConfig], arguments::Dict)
    create_instance_export_task([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateInstanceExportTask", arguments::Dict)
    ec2([::AWSConfig], "CreateInstanceExportTask", InstanceId=, <keyword arguments>)

# CreateInstanceExportTask Operation

Exports a running or stopped instance to an S3 bucket.

For information about the supported operating systems, image formats, and known limitations for the types of instances you can export, see [Exporting an Instance as a VM Using VM Import/Export](http://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html) in the *VM Import/Export User Guide*.

# Arguments

## `Description = ::String`
A description for the conversion task or the resource being exported. The maximum length is 255 bytes.


## `ExportToS3 = [ ... ]`
The format and location for an instance export task.
```
 ExportToS3 = [
        "ContainerFormat" =>  "ova",
        "DiskImageFormat" =>  "VMDK", "RAW" or "VHD",
        "S3Bucket" =>  ::String,
        "S3Prefix" =>  ::String
    ]
```

## `InstanceId = ::String` -- *Required*
The ID of the instance.


## `TargetEnvironment = "citrix", "vmware" or "microsoft"`
The target virtualization environment.




# Returns

`CreateInstanceExportTaskResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateInstanceExportTask)
"""
@inline create_instance_export_task(aws::AWSConfig=default_aws_config(); args...) = create_instance_export_task(aws, args)

@inline create_instance_export_task(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateInstanceExportTask", args)

@inline create_instance_export_task(args) = create_instance_export_task(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_internet_gateway
    create_internet_gateway([::AWSConfig], arguments::Dict)
    create_internet_gateway([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateInternetGateway", arguments::Dict)
    ec2([::AWSConfig], "CreateInternetGateway", <keyword arguments>)

# CreateInternetGateway Operation

Creates an Internet gateway for use with a VPC. After creating the Internet gateway, you attach it to a VPC using [AttachInternetGateway](@ref).

For more information about your VPC and Internet gateway, see the [Amazon Virtual Private Cloud User Guide](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/).

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`CreateInternetGatewayResult`

# Example: To create an Internet gateway

This example creates an Internet gateway.

Output:
```
Dict(
    "InternetGateway" => Dict(
        "Attachments" => [

        ],
        "InternetGatewayId" => "igw-c0a643a9",
        "Tags" => [

        ]
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateInternetGateway)
"""
@inline create_internet_gateway(aws::AWSConfig=default_aws_config(); args...) = create_internet_gateway(aws, args)

@inline create_internet_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateInternetGateway", args)

@inline create_internet_gateway(args) = create_internet_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_key_pair
    create_key_pair([::AWSConfig], arguments::Dict)
    create_key_pair([::AWSConfig]; KeyName=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateKeyPair", arguments::Dict)
    ec2([::AWSConfig], "CreateKeyPair", KeyName=, <keyword arguments>)

# CreateKeyPair Operation

Creates a 2048-bit RSA key pair with the specified name. Amazon EC2 stores the public key and displays the private key for you to save to a file. The private key is returned as an unencrypted PEM encoded PKCS#1 private key. If a key with the specified name already exists, Amazon EC2 returns an error.

You can have up to five thousand key pairs per region.

The key pair returned to you is available only in the region in which you create it. If you prefer, you can create your own key pair using a third-party tool and upload it to any region using [ImportKeyPair](@ref).

For more information, see [Key Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `KeyName = ::String` -- *Required*
A unique name for the key pair.

Constraints: Up to 255 ASCII characters


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`KeyPair`

# Example: To create a key pair

This example creates a key pair named my-key-pair.

Input:
```
[
    "KeyName" => "my-key-pair"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateKeyPair)
"""
@inline create_key_pair(aws::AWSConfig=default_aws_config(); args...) = create_key_pair(aws, args)

@inline create_key_pair(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateKeyPair", args)

@inline create_key_pair(args) = create_key_pair(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_launch_template
    create_launch_template([::AWSConfig], arguments::Dict)
    create_launch_template([::AWSConfig]; LaunchTemplateName=, LaunchTemplateData=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateLaunchTemplate", arguments::Dict)
    ec2([::AWSConfig], "CreateLaunchTemplate", LaunchTemplateName=, LaunchTemplateData=, <keyword arguments>)

# CreateLaunchTemplate Operation

Creates a launch template. A launch template contains the parameters to launch an instance. When you launch an instance using [RunInstances](@ref), you can specify a launch template instead of providing the launch parameters in the request.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


## `LaunchTemplateName = ::String` -- *Required*
A name for the launch template.


## `VersionDescription = ::String`
A description for the first version of the launch template.


## `LaunchTemplateData = [ ... ]` -- *Required*
The information for the launch template.
```
 LaunchTemplateData = [
        "KernelId" =>  ::String,
        "EbsOptimized" =>  ::Bool,
        "IamInstanceProfile" =>  [
            "Arn" =>  ::String,
            "Name" =>  ::String
        ],
        "BlockDeviceMapping" =>  [[
            "DeviceName" =>  ::String,
            "VirtualName" =>  ::String,
            "Ebs" =>  [
                "Encrypted" =>  ::Bool,
                "DeleteOnTermination" =>  ::Bool,
                "Iops" =>  ::Int,
                "KmsKeyId" =>  ::String,
                "SnapshotId" =>  ::String,
                "VolumeSize" =>  ::Int,
                "VolumeType" =>  "standard", "io1", "gp2", "sc1" or "st1"
            ],
            "NoDevice" =>  ::String
        ], ...],
        "NetworkInterface" =>  [[
            "AssociatePublicIpAddress" =>  ::Bool,
            "DeleteOnTermination" =>  ::Bool,
            "Description" =>  ::String,
            "DeviceIndex" =>  ::Int,
            "SecurityGroupId" =>  [::String, ...],
            "Ipv6AddressCount" =>  ::Int,
            "Ipv6Addresses" =>  [["Ipv6Address" =>  ::String], ...],
            "NetworkInterfaceId" =>  ::String,
            "PrivateIpAddress" =>  ::String,
            "PrivateIpAddresses" =>  [[
                "Primary" =>  ::Bool,
                "PrivateIpAddress" =>  ::String
            ], ...],
            "SecondaryPrivateIpAddressCount" =>  ::Int,
            "SubnetId" =>  ::String
        ], ...],
        "ImageId" =>  ::String,
        "InstanceType" =>  "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5.metal", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "r5d.metal", "x1.16xlarge", "x1.32xlarge", "x1e.xlarge", "x1e.2xlarge", "x1e.4xlarge", "x1e.8xlarge", "x1e.16xlarge", "x1e.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "i3.metal", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.18xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.18xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "p3.2xlarge", "p3.8xlarge", "p3.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.12xlarge", "m5.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.12xlarge", "m5d.24xlarge", "h1.2xlarge", "h1.4xlarge", "h1.8xlarge", "h1.16xlarge", "z1d.large", "z1d.xlarge", "z1d.2xlarge", "z1d.3xlarge", "z1d.6xlarge" or "z1d.12xlarge",
        "KeyName" =>  ::String,
        "Monitoring" =>  ["Enabled" =>  ::Bool],
        "Placement" =>  [
            "AvailabilityZone" =>  ::String,
            "Affinity" =>  ::String,
            "GroupName" =>  ::String,
            "HostId" =>  ::String,
            "Tenancy" =>  "default", "dedicated" or "host",
            "SpreadDomain" =>  ::String
        ],
        "RamDiskId" =>  ::String,
        "DisableApiTermination" =>  ::Bool,
        "InstanceInitiatedShutdownBehavior" =>  "stop" or "terminate",
        "UserData" =>  ::String,
        "TagSpecification" =>  [[
            "ResourceType" =>  "customer-gateway", "dhcp-options", "image", "instance", "internet-gateway", "network-acl", "network-interface", "reserved-instances", "route-table", "snapshot", "spot-instances-request", "subnet", "security-group", "volume", "vpc", "vpn-connection" or "vpn-gateway",
            "Tag" =>  [[
                "Key" =>  ::String,
                "Value" =>  ::String
            ], ...]
        ], ...],
        "ElasticGpuSpecification" =>  [["Type" => <required> ::String], ...],
        "SecurityGroupId" =>  [::String, ...],
        "SecurityGroup" =>  [::String, ...],
        "InstanceMarketOptions" =>  [
            "MarketType" =>  "spot",
            "SpotOptions" =>  [
                "MaxPrice" =>  ::String,
                "SpotInstanceType" =>  "one-time" or "persistent",
                "BlockDurationMinutes" =>  ::Int,
                "ValidUntil" =>  timestamp,
                "InstanceInterruptionBehavior" =>  "hibernate", "stop" or "terminate"
            ]
        ],
        "CreditSpecification" =>  ["CpuCredits" => <required> ::String],
        "CpuOptions" =>  [
            "CoreCount" =>  ::Int,
            "ThreadsPerCore" =>  ::Int
        ]
    ]
```



# Returns

`CreateLaunchTemplateResult`

# Example: To create a launch template

This example creates a launch template that specifies the subnet in which to launch the instance, assigns a public IP address and an IPv6 address to the instance, and creates a tag for the instance.

Input:
```
[
    "LaunchTemplateData" => [
        "ImageId" => "ami-8c1be5f6",
        "InstanceType" => "t2.small",
        "NetworkInterfaces" => [
            [
                "AssociatePublicIpAddress" => true,
                "DeviceIndex" => 0,
                "Ipv6AddressCount" => 1,
                "SubnetId" => "subnet-7b16de0c"
            ]
        ],
        "TagSpecifications" => [
            [
                "ResourceType" => "instance",
                "Tags" => [
                    [
                        "Key" => "Name",
                        "Value" => "webserver"
                    ]
                ]
            ]
        ]
    ],
    "LaunchTemplateName" => "my-template",
    "VersionDescription" => "WebVersion1"
]
```

Output:
```
Dict(
    "LaunchTemplate" => Dict(
        "CreateTime" => "2017-11-27T09:13:24.000Z",
        "CreatedBy" => "arn:aws:iam::123456789012:root",
        "DefaultVersionNumber" => 1,
        "LatestVersionNumber" => 1,
        "LaunchTemplateId" => "lt-01238c059e3466abc",
        "LaunchTemplateName" => "my-template"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateLaunchTemplate)
"""
@inline create_launch_template(aws::AWSConfig=default_aws_config(); args...) = create_launch_template(aws, args)

@inline create_launch_template(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateLaunchTemplate", args)

@inline create_launch_template(args) = create_launch_template(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_launch_template_version
    create_launch_template_version([::AWSConfig], arguments::Dict)
    create_launch_template_version([::AWSConfig]; LaunchTemplateData=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateLaunchTemplateVersion", arguments::Dict)
    ec2([::AWSConfig], "CreateLaunchTemplateVersion", LaunchTemplateData=, <keyword arguments>)

# CreateLaunchTemplateVersion Operation

Creates a new version for a launch template. You can specify an existing version of launch template from which to base the new version.

Launch template versions are numbered in the order in which they are created. You cannot specify, change, or replace the numbering of launch template versions.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


## `LaunchTemplateId = ::String`
The ID of the launch template. You must specify either the launch template ID or launch template name in the request.


## `LaunchTemplateName = ::String`
The name of the launch template. You must specify either the launch template ID or launch template name in the request.


## `SourceVersion = ::String`
The version number of the launch template version on which to base the new version. The new version inherits the same launch parameters as the source version, except for parameters that you specify in LaunchTemplateData.


## `VersionDescription = ::String`
A description for the version of the launch template.


## `LaunchTemplateData = [ ... ]` -- *Required*
The information for the launch template.
```
 LaunchTemplateData = [
        "KernelId" =>  ::String,
        "EbsOptimized" =>  ::Bool,
        "IamInstanceProfile" =>  [
            "Arn" =>  ::String,
            "Name" =>  ::String
        ],
        "BlockDeviceMapping" =>  [[
            "DeviceName" =>  ::String,
            "VirtualName" =>  ::String,
            "Ebs" =>  [
                "Encrypted" =>  ::Bool,
                "DeleteOnTermination" =>  ::Bool,
                "Iops" =>  ::Int,
                "KmsKeyId" =>  ::String,
                "SnapshotId" =>  ::String,
                "VolumeSize" =>  ::Int,
                "VolumeType" =>  "standard", "io1", "gp2", "sc1" or "st1"
            ],
            "NoDevice" =>  ::String
        ], ...],
        "NetworkInterface" =>  [[
            "AssociatePublicIpAddress" =>  ::Bool,
            "DeleteOnTermination" =>  ::Bool,
            "Description" =>  ::String,
            "DeviceIndex" =>  ::Int,
            "SecurityGroupId" =>  [::String, ...],
            "Ipv6AddressCount" =>  ::Int,
            "Ipv6Addresses" =>  [["Ipv6Address" =>  ::String], ...],
            "NetworkInterfaceId" =>  ::String,
            "PrivateIpAddress" =>  ::String,
            "PrivateIpAddresses" =>  [[
                "Primary" =>  ::Bool,
                "PrivateIpAddress" =>  ::String
            ], ...],
            "SecondaryPrivateIpAddressCount" =>  ::Int,
            "SubnetId" =>  ::String
        ], ...],
        "ImageId" =>  ::String,
        "InstanceType" =>  "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5.metal", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "r5d.metal", "x1.16xlarge", "x1.32xlarge", "x1e.xlarge", "x1e.2xlarge", "x1e.4xlarge", "x1e.8xlarge", "x1e.16xlarge", "x1e.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "i3.metal", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.18xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.18xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "p3.2xlarge", "p3.8xlarge", "p3.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.12xlarge", "m5.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.12xlarge", "m5d.24xlarge", "h1.2xlarge", "h1.4xlarge", "h1.8xlarge", "h1.16xlarge", "z1d.large", "z1d.xlarge", "z1d.2xlarge", "z1d.3xlarge", "z1d.6xlarge" or "z1d.12xlarge",
        "KeyName" =>  ::String,
        "Monitoring" =>  ["Enabled" =>  ::Bool],
        "Placement" =>  [
            "AvailabilityZone" =>  ::String,
            "Affinity" =>  ::String,
            "GroupName" =>  ::String,
            "HostId" =>  ::String,
            "Tenancy" =>  "default", "dedicated" or "host",
            "SpreadDomain" =>  ::String
        ],
        "RamDiskId" =>  ::String,
        "DisableApiTermination" =>  ::Bool,
        "InstanceInitiatedShutdownBehavior" =>  "stop" or "terminate",
        "UserData" =>  ::String,
        "TagSpecification" =>  [[
            "ResourceType" =>  "customer-gateway", "dhcp-options", "image", "instance", "internet-gateway", "network-acl", "network-interface", "reserved-instances", "route-table", "snapshot", "spot-instances-request", "subnet", "security-group", "volume", "vpc", "vpn-connection" or "vpn-gateway",
            "Tag" =>  [[
                "Key" =>  ::String,
                "Value" =>  ::String
            ], ...]
        ], ...],
        "ElasticGpuSpecification" =>  [["Type" => <required> ::String], ...],
        "SecurityGroupId" =>  [::String, ...],
        "SecurityGroup" =>  [::String, ...],
        "InstanceMarketOptions" =>  [
            "MarketType" =>  "spot",
            "SpotOptions" =>  [
                "MaxPrice" =>  ::String,
                "SpotInstanceType" =>  "one-time" or "persistent",
                "BlockDurationMinutes" =>  ::Int,
                "ValidUntil" =>  timestamp,
                "InstanceInterruptionBehavior" =>  "hibernate", "stop" or "terminate"
            ]
        ],
        "CreditSpecification" =>  ["CpuCredits" => <required> ::String],
        "CpuOptions" =>  [
            "CoreCount" =>  ::Int,
            "ThreadsPerCore" =>  ::Int
        ]
    ]
```



# Returns

`CreateLaunchTemplateVersionResult`

# Example: To create a launch template version

This example creates a new launch template version based on version 1 of the specified launch template and specifies a different AMI ID.

Input:
```
[
    "LaunchTemplateData" => [
        "ImageId" => "ami-c998b6b2"
    ],
    "LaunchTemplateId" => "lt-0abcd290751193123",
    "SourceVersion" => "1",
    "VersionDescription" => "WebVersion2"
]
```

Output:
```
Dict(
    "LaunchTemplateVersion" => Dict(
        "CreateTime" => "2017-12-01T13:35:46.000Z",
        "CreatedBy" => "arn:aws:iam::123456789012:root",
        "DefaultVersion" => false,
        "LaunchTemplateData" => Dict(
            "ImageId" => "ami-c998b6b2",
            "InstanceType" => "t2.micro",
            "NetworkInterfaces" => [
                Dict(
                    "AssociatePublicIpAddress" => true,
                    "DeviceIndex" => 0,
                    "Ipv6Addresses" => [
                        Dict(
                            "Ipv6Address" => "2001:db8:1234:1a00::123"
                        )
                    ],
                    "SubnetId" => "subnet-7b16de0c"
                )
            ]
        ),
        "LaunchTemplateId" => "lt-0abcd290751193123",
        "LaunchTemplateName" => "my-template",
        "VersionDescription" => "WebVersion2",
        "VersionNumber" => 2
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateLaunchTemplateVersion)
"""
@inline create_launch_template_version(aws::AWSConfig=default_aws_config(); args...) = create_launch_template_version(aws, args)

@inline create_launch_template_version(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateLaunchTemplateVersion", args)

@inline create_launch_template_version(args) = create_launch_template_version(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_nat_gateway
    create_nat_gateway([::AWSConfig], arguments::Dict)
    create_nat_gateway([::AWSConfig]; AllocationId=, SubnetId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateNatGateway", arguments::Dict)
    ec2([::AWSConfig], "CreateNatGateway", AllocationId=, SubnetId=, <keyword arguments>)

# CreateNatGateway Operation

Creates a NAT gateway in the specified public subnet. This action creates a network interface in the specified subnet with a private IP address from the IP address range of the subnet. Internet-bound traffic from a private subnet can be routed to the NAT gateway, therefore enabling instances in the private subnet to connect to the internet. For more information, see [NAT Gateways](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `AllocationId = ::String` -- *Required*
The allocation ID of an Elastic IP address to associate with the NAT gateway. If the Elastic IP address is associated with another resource, you must first disassociate it.


## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).

Constraint: Maximum 64 ASCII characters.


## `SubnetId = ::String` -- *Required*
The subnet in which to create the NAT gateway.




# Returns

`CreateNatGatewayResult`

# Example: To create a NAT gateway

This example creates a NAT gateway in subnet subnet-1a2b3c4d and associates an Elastic IP address with the allocation ID eipalloc-37fc1a52 with the NAT gateway.

Input:
```
[
    "AllocationId" => "eipalloc-37fc1a52",
    "SubnetId" => "subnet-1a2b3c4d"
]
```

Output:
```
Dict(
    "NatGateway" => Dict(
        "CreateTime" => "2015-12-17T12:45:26.732Z",
        "NatGatewayAddresses" => [
            Dict(
                "AllocationId" => "eipalloc-37fc1a52"
            )
        ],
        "NatGatewayId" => "nat-08d48af2a8e83edfd",
        "State" => "pending",
        "SubnetId" => "subnet-1a2b3c4d",
        "VpcId" => "vpc-1122aabb"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNatGateway)
"""
@inline create_nat_gateway(aws::AWSConfig=default_aws_config(); args...) = create_nat_gateway(aws, args)

@inline create_nat_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateNatGateway", args)

@inline create_nat_gateway(args) = create_nat_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_network_acl
    create_network_acl([::AWSConfig], arguments::Dict)
    create_network_acl([::AWSConfig]; VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateNetworkAcl", arguments::Dict)
    ec2([::AWSConfig], "CreateNetworkAcl", VpcId=, <keyword arguments>)

# CreateNetworkAcl Operation

Creates a network ACL in a VPC. Network ACLs provide an optional layer of security (in addition to security groups) for the instances in your VPC.

For more information about network ACLs, see [Network ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcId = ::String` -- *Required*
The ID of the VPC.




# Returns

`CreateNetworkAclResult`

# Example: To create a network ACL

This example creates a network ACL for the specified VPC.

Input:
```
[
    "VpcId" => "vpc-a01106c2"
]
```

Output:
```
Dict(
    "NetworkAcl" => Dict(
        "Associations" => [

        ],
        "Entries" => [
            Dict(
                "CidrBlock" => "0.0.0.0/0",
                "Egress" => true,
                "Protocol" => "-1",
                "RuleAction" => "deny",
                "RuleNumber" => 32767
            ),
            Dict(
                "CidrBlock" => "0.0.0.0/0",
                "Egress" => false,
                "Protocol" => "-1",
                "RuleAction" => "deny",
                "RuleNumber" => 32767
            )
        ],
        "IsDefault" => false,
        "NetworkAclId" => "acl-5fb85d36",
        "Tags" => [

        ],
        "VpcId" => "vpc-a01106c2"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkAcl)
"""
@inline create_network_acl(aws::AWSConfig=default_aws_config(); args...) = create_network_acl(aws, args)

@inline create_network_acl(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateNetworkAcl", args)

@inline create_network_acl(args) = create_network_acl(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_network_acl_entry
    create_network_acl_entry([::AWSConfig], arguments::Dict)
    create_network_acl_entry([::AWSConfig]; Egress=, NetworkAclId=, Protocol=, RuleAction=, RuleNumber=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateNetworkAclEntry", arguments::Dict)
    ec2([::AWSConfig], "CreateNetworkAclEntry", Egress=, NetworkAclId=, Protocol=, RuleAction=, RuleNumber=, <keyword arguments>)

# CreateNetworkAclEntry Operation

Creates an entry (a rule) in a network ACL with the specified rule number. Each network ACL has a set of numbered ingress rules and a separate set of numbered egress rules. When determining whether a packet should be allowed in or out of a subnet associated with the ACL, we process the entries in the ACL according to the rule numbers, in ascending order. Each network ACL has a set of ingress rules and a separate set of egress rules.

We recommend that you leave room between the rule numbers (for example, 100, 110, 120, ...), and not number them one right after the other (for example, 101, 102, 103, ...). This makes it easier to add a rule between existing ones without having to renumber the rules.

After you add an entry, you can't modify it; you must either replace it, or create an entry and delete the old one.

For more information about network ACLs, see [Network ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `CidrBlock = ::String`
The IPv4 network range to allow or deny, in CIDR notation (for example `172.16.0.0/24`).


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Egress = ::Bool` -- *Required*
Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet).


## `Icmp = [ ... ]`
ICMP protocol: The ICMP or ICMPv6 type and code. Required if specifying the ICMP protocol, or protocol 58 (ICMPv6) with an IPv6 CIDR block.
```
 Icmp = [
        "Code" =>  ::Int,
        "Type" =>  ::Int
    ]
```

## `Ipv6CidrBlock = ::String`
The IPv6 network range to allow or deny, in CIDR notation (for example `2001:db8:1234:1a00::/64`).


## `NetworkAclId = ::String` -- *Required*
The ID of the network ACL.


## `PortRange = [ ... ]`
TCP or UDP protocols: The range of ports the rule applies to.
```
 PortRange = [
        "From" =>  ::Int,
        "To" =>  ::Int
    ]
```

## `Protocol = ::String` -- *Required*
The protocol. A value of `-1` or `all` means all protocols. If you specify `all`, `-1`, or a protocol number other than `6` (tcp), `17` (udp), or `1` (icmp), traffic on all ports is allowed, regardless of any ports or ICMP types or codes you specify. If you specify protocol `58` (ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP types and codes allowed, regardless of any that you specify. If you specify protocol `58` (ICMPv6) and specify an IPv6 CIDR block, you must specify an ICMP type and code.


## `RuleAction = "allow" or "deny"` -- *Required*
Indicates whether to allow or deny the traffic that matches the rule.


## `RuleNumber = ::Int` -- *Required*
The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number.

Constraints: Positive integer from 1 to 32766. The range 32767 to 65535 is reserved for internal use.




# Example: To create a network ACL entry

This example creates an entry for the specified network ACL. The rule allows ingress traffic from anywhere (0.0.0.0/0) on UDP port 53 (DNS) into any associated subnet.

Input:
```
[
    "CidrBlock" => "0.0.0.0/0",
    "Egress" => false,
    "NetworkAclId" => "acl-5fb85d36",
    "PortRange" => [
        "From" => 53,
        "To" => 53
    ],
    "Protocol" => "udp",
    "RuleAction" => "allow",
    "RuleNumber" => 100
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkAclEntry)
"""
@inline create_network_acl_entry(aws::AWSConfig=default_aws_config(); args...) = create_network_acl_entry(aws, args)

@inline create_network_acl_entry(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateNetworkAclEntry", args)

@inline create_network_acl_entry(args) = create_network_acl_entry(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_network_interface
    create_network_interface([::AWSConfig], arguments::Dict)
    create_network_interface([::AWSConfig]; SubnetId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateNetworkInterface", arguments::Dict)
    ec2([::AWSConfig], "CreateNetworkInterface", SubnetId=, <keyword arguments>)

# CreateNetworkInterface Operation

Creates a network interface in the specified subnet.

For more information about network interfaces, see [Elastic Network Interfaces](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `Description = ::String`
A description for the network interface.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `SecurityGroupId = [::String, ...]`
The IDs of one or more security groups.


## `Ipv6AddressCount = ::Int`
The number of IPv6 addresses to assign to a network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can't use this option if specifying specific IPv6 addresses. If your subnet has the `AssignIpv6AddressOnCreation` attribute set to `true`, you can specify `0` to override this setting.


## `Ipv6Addresses = [["Ipv6Address" =>  ::String], ...]`
One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. You can't use this option if you're specifying a number of IPv6 addresses.


## `PrivateIpAddress = ::String`
The primary private IPv4 address of the network interface. If you don't specify an IPv4 address, Amazon EC2 selects one for you from the subnet's IPv4 CIDR range. If you specify an IP address, you cannot indicate any IP addresses specified in `privateIpAddresses` as primary (only one IP address can be designated as primary).


## `PrivateIpAddresses = [[ ... ], ...]`
One or more private IPv4 addresses.
```
 PrivateIpAddresses = [[
        "Primary" =>  ::Bool,
        "PrivateIpAddress" =>  ::String
    ], ...]
```

## `SecondaryPrivateIpAddressCount = ::Int`
The number of secondary private IPv4 addresses to assign to a network interface. When you specify a number of secondary IPv4 addresses, Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR range. You can't specify this option and specify more than one private IP address using `privateIpAddresses`.

The number of IP addresses you can assign to a network interface varies by instance type. For more information, see [IP Addresses Per ENI Per Instance Type](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) in the *Amazon Virtual Private Cloud User Guide*.


## `SubnetId = ::String` -- *Required*
The ID of the subnet to associate with the network interface.




# Returns

`CreateNetworkInterfaceResult`

# Example: To create a network interface

This example creates a network interface for the specified subnet.

Input:
```
[
    "Description" => "my network interface",
    "Groups" => [
        "sg-903004f8"
    ],
    "PrivateIpAddress" => "10.0.2.17",
    "SubnetId" => "subnet-9d4a7b6c"
]
```

Output:
```
Dict(
    "NetworkInterface" => Dict(
        "AvailabilityZone" => "us-east-1d",
        "Description" => "my network interface",
        "Groups" => [
            Dict(
                "GroupId" => "sg-903004f8",
                "GroupName" => "default"
            )
        ],
        "MacAddress" => "02:1a:80:41:52:9c",
        "NetworkInterfaceId" => "eni-e5aa89a3",
        "OwnerId" => "123456789012",
        "PrivateIpAddress" => "10.0.2.17",
        "PrivateIpAddresses" => [
            Dict(
                "Primary" => true,
                "PrivateIpAddress" => "10.0.2.17"
            )
        ],
        "RequesterManaged" => false,
        "SourceDestCheck" => true,
        "Status" => "pending",
        "SubnetId" => "subnet-9d4a7b6c",
        "TagSet" => [

        ],
        "VpcId" => "vpc-a01106c2"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkInterface)
"""
@inline create_network_interface(aws::AWSConfig=default_aws_config(); args...) = create_network_interface(aws, args)

@inline create_network_interface(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateNetworkInterface", args)

@inline create_network_interface(args) = create_network_interface(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_network_interface_permission
    create_network_interface_permission([::AWSConfig], arguments::Dict)
    create_network_interface_permission([::AWSConfig]; NetworkInterfaceId=, Permission=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateNetworkInterfacePermission", arguments::Dict)
    ec2([::AWSConfig], "CreateNetworkInterfacePermission", NetworkInterfaceId=, Permission=, <keyword arguments>)

# CreateNetworkInterfacePermission Operation

Grants an AWS-authorized account permission to attach the specified network interface to an instance in their account.

You can grant permission to a single AWS account only, and only one account at a time.

# Arguments

## `NetworkInterfaceId = ::String` -- *Required*
The ID of the network interface.


## `AwsAccountId = ::String`
The AWS account ID.


## `AwsService = ::String`
The AWS service. Currently not supported.


## `Permission = "INSTANCE-ATTACH" or "EIP-ASSOCIATE"` -- *Required*
The type of permission to grant.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`CreateNetworkInterfacePermissionResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkInterfacePermission)
"""
@inline create_network_interface_permission(aws::AWSConfig=default_aws_config(); args...) = create_network_interface_permission(aws, args)

@inline create_network_interface_permission(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateNetworkInterfacePermission", args)

@inline create_network_interface_permission(args) = create_network_interface_permission(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_placement_group
    create_placement_group([::AWSConfig], arguments::Dict)
    create_placement_group([::AWSConfig]; GroupName=, Strategy=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreatePlacementGroup", arguments::Dict)
    ec2([::AWSConfig], "CreatePlacementGroup", GroupName=, Strategy=, <keyword arguments>)

# CreatePlacementGroup Operation

Creates a placement group in which to launch instances. The strategy of the placement group determines how the instances are organized within the group.

A `cluster` placement group is a logical grouping of instances within a single Availability Zone that benefit from low network latency, high network throughput. A `spread` placement group places instances on distinct hardware.

For more information, see [Placement Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `GroupName = ::String` -- *Required*
A name for the placement group. Must be unique within the scope of your account for the region.

Constraints: Up to 255 ASCII characters


## `Strategy = "cluster" or "spread"` -- *Required*
The placement strategy.




# Example: To create a placement group

This example creates a placement group with the specified name.

Input:
```
[
    "GroupName" => "my-cluster",
    "Strategy" => "cluster"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreatePlacementGroup)
"""
@inline create_placement_group(aws::AWSConfig=default_aws_config(); args...) = create_placement_group(aws, args)

@inline create_placement_group(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreatePlacementGroup", args)

@inline create_placement_group(args) = create_placement_group(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_reserved_instances_listing
    create_reserved_instances_listing([::AWSConfig], arguments::Dict)
    create_reserved_instances_listing([::AWSConfig]; ClientToken=, InstanceCount=, PriceSchedules=, ReservedInstancesId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateReservedInstancesListing", arguments::Dict)
    ec2([::AWSConfig], "CreateReservedInstancesListing", ClientToken=, InstanceCount=, PriceSchedules=, ReservedInstancesId=)

# CreateReservedInstancesListing Operation

Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in the Reserved Instance Marketplace. You can submit one Standard Reserved Instance listing at a time. To get a list of your Standard Reserved Instances, you can use the [DescribeReservedInstances](@ref) operation.

**Note**
> Only Standard Reserved Instances with a capacity reservation can be sold in the Reserved Instance Marketplace. Convertible Reserved Instances and Standard Reserved Instances with a regional benefit cannot be sold.

The Reserved Instance Marketplace matches sellers who want to resell Standard Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.

To sell your Standard Reserved Instances, you must first register as a seller in the Reserved Instance Marketplace. After completing the registration process, you can create a Reserved Instance Marketplace listing of some or all of your Standard Reserved Instances, and specify the upfront price to receive for them. Your Standard Reserved Instance listings then become available for purchase. To view the details of your Standard Reserved Instance listing, you can use the [DescribeReservedInstancesListings](@ref) operation.

For more information, see [Reserved Instance Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `ClientToken = ::String` -- *Required*
Unique, case-sensitive identifier you provide to ensure idempotency of your listings. This helps avoid duplicate listings. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


## `InstanceCount = ::Int` -- *Required*
The number of instances that are a part of a Reserved Instance account to be listed in the Reserved Instance Marketplace. This number should be less than or equal to the instance count associated with the Reserved Instance ID specified in this call.


## `PriceSchedules = [[ ... ], ...]` -- *Required*
A list specifying the price of the Standard Reserved Instance for each month remaining in the Reserved Instance term.
```
 PriceSchedules = [[
        "CurrencyCode" =>  "USD",
        "Price" =>  double,
        "Term" =>  ::Int
    ], ...]
```

## `ReservedInstancesId = ::String` -- *Required*
The ID of the active Standard Reserved Instance.




# Returns

`CreateReservedInstancesListingResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateReservedInstancesListing)
"""
@inline create_reserved_instances_listing(aws::AWSConfig=default_aws_config(); args...) = create_reserved_instances_listing(aws, args)

@inline create_reserved_instances_listing(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateReservedInstancesListing", args)

@inline create_reserved_instances_listing(args) = create_reserved_instances_listing(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_route
    create_route([::AWSConfig], arguments::Dict)
    create_route([::AWSConfig]; RouteTableId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateRoute", arguments::Dict)
    ec2([::AWSConfig], "CreateRoute", RouteTableId=, <keyword arguments>)

# CreateRoute Operation

Creates a route in a route table within a VPC.

You must specify one of the following targets: Internet gateway or virtual private gateway, NAT instance, NAT gateway, VPC peering connection, network interface, or egress-only Internet gateway.

When determining how to route traffic, we use the route with the most specific match. For example, traffic is destined for the IPv4 address `192.0.2.3`, and the route table includes the following two IPv4 routes:

*   `192.0.2.0/24` (goes to some target A)

*   `192.0.2.0/28` (goes to some target B)

Both routes apply to the traffic destined for `192.0.2.3`. However, the second route in the list covers a smaller number of IP addresses and is therefore more specific, so we use that route to determine where to target the traffic.

For more information about route tables, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `DestinationCidrBlock = ::String`
The IPv4 CIDR address block used for the destination match. Routing decisions are based on the most specific match.


## `DestinationIpv6CidrBlock = ::String`
The IPv6 CIDR block used for the destination match. Routing decisions are based on the most specific match.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `EgressOnlyInternetGatewayId = ::String`
[IPv6 traffic only] The ID of an egress-only Internet gateway.


## `GatewayId = ::String`
The ID of an Internet gateway or virtual private gateway attached to your VPC.


## `InstanceId = ::String`
The ID of a NAT instance in your VPC. The operation fails if you specify an instance ID unless exactly one network interface is attached.


## `NatGatewayId = ::String`
[IPv4 traffic only] The ID of a NAT gateway.


## `NetworkInterfaceId = ::String`
The ID of a network interface.


## `RouteTableId = ::String` -- *Required*
The ID of the route table for the route.


## `VpcPeeringConnectionId = ::String`
The ID of a VPC peering connection.




# Returns

`CreateRouteResult`

# Example: To create a route

This example creates a route for the specified route table. The route matches all traffic (0.0.0.0/0) and routes it to the specified Internet gateway.

Input:
```
[
    "DestinationCidrBlock" => "0.0.0.0/0",
    "GatewayId" => "igw-c0a643a9",
    "RouteTableId" => "rtb-22574640"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateRoute)
"""
@inline create_route(aws::AWSConfig=default_aws_config(); args...) = create_route(aws, args)

@inline create_route(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateRoute", args)

@inline create_route(args) = create_route(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_route_table
    create_route_table([::AWSConfig], arguments::Dict)
    create_route_table([::AWSConfig]; VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateRouteTable", arguments::Dict)
    ec2([::AWSConfig], "CreateRouteTable", VpcId=, <keyword arguments>)

# CreateRouteTable Operation

Creates a route table for the specified VPC. After you create a route table, you can add routes and associate the table with a subnet.

For more information about route tables, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcId = ::String` -- *Required*
The ID of the VPC.




# Returns

`CreateRouteTableResult`

# Example: To create a route table

This example creates a route table for the specified VPC.

Input:
```
[
    "VpcId" => "vpc-a01106c2"
]
```

Output:
```
Dict(
    "RouteTable" => Dict(
        "Associations" => [

        ],
        "PropagatingVgws" => [

        ],
        "RouteTableId" => "rtb-22574640",
        "Routes" => [
            Dict(
                "DestinationCidrBlock" => "10.0.0.0/16",
                "GatewayId" => "local",
                "State" => "active"
            )
        ],
        "Tags" => [

        ],
        "VpcId" => "vpc-a01106c2"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateRouteTable)
"""
@inline create_route_table(aws::AWSConfig=default_aws_config(); args...) = create_route_table(aws, args)

@inline create_route_table(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateRouteTable", args)

@inline create_route_table(args) = create_route_table(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_security_group
    create_security_group([::AWSConfig], arguments::Dict)
    create_security_group([::AWSConfig]; GroupDescription=, GroupName=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateSecurityGroup", arguments::Dict)
    ec2([::AWSConfig], "CreateSecurityGroup", GroupDescription=, GroupName=, <keyword arguments>)

# CreateSecurityGroup Operation

Creates a security group.

A security group is for use with instances either in the EC2-Classic platform or in a specific VPC. For more information, see [Amazon EC2 Security Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html) in the *Amazon Elastic Compute Cloud User Guide* and [Security Groups for Your VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html) in the *Amazon Virtual Private Cloud User Guide*.

**Important**
> EC2-Classic: You can have up to 500 security groups.

EC2-VPC: You can create up to 500 security groups per VPC.

When you create a security group, you specify a friendly name of your choice. You can have a security group for use in EC2-Classic with the same name as a security group for use in a VPC. However, you can't have two security groups for use in EC2-Classic with the same name or two security groups for use in a VPC with the same name.

You have a default security group for use in EC2-Classic and a default security group for use in your VPC. If you don't specify a security group when you launch an instance, the instance is launched into the appropriate default security group. A default security group includes a default rule that grants instances unrestricted network access to each other.

You can add or remove rules from your security groups using [AuthorizeSecurityGroupIngress](@ref), [AuthorizeSecurityGroupEgress](@ref), [RevokeSecurityGroupIngress](@ref), and [RevokeSecurityGroupEgress](@ref).

# Arguments

## `GroupDescription = ::String` -- *Required*
A description for the security group. This is informational only.

Constraints: Up to 255 characters in length

Constraints for EC2-Classic: ASCII characters

Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!\$*


## `GroupName = ::String` -- *Required*
The name of the security group.

Constraints: Up to 255 characters in length. Cannot start with `sg-`.

Constraints for EC2-Classic: ASCII characters

Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!\$*


## `VpcId = ::String`
[EC2-VPC] The ID of the VPC. Required for EC2-VPC.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`CreateSecurityGroupResult`

# Example: To create a security group for a VPC

This example creates a security group for the specified VPC.

Input:
```
[
    "Description" => "My security group",
    "GroupName" => "my-security-group",
    "VpcId" => "vpc-1a2b3c4d"
]
```

Output:
```
Dict(
    "GroupId" => "sg-903004f8"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSecurityGroup)
"""
@inline create_security_group(aws::AWSConfig=default_aws_config(); args...) = create_security_group(aws, args)

@inline create_security_group(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateSecurityGroup", args)

@inline create_security_group(args) = create_security_group(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_snapshot
    create_snapshot([::AWSConfig], arguments::Dict)
    create_snapshot([::AWSConfig]; VolumeId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateSnapshot", arguments::Dict)
    ec2([::AWSConfig], "CreateSnapshot", VolumeId=, <keyword arguments>)

# CreateSnapshot Operation

Creates a snapshot of an EBS volume and stores it in Amazon S3. You can use snapshots for backups, to make copies of EBS volumes, and to save data before shutting down an instance.

When a snapshot is created, any AWS Marketplace product codes that are associated with the source volume are propagated to the snapshot.

You can take a snapshot of an attached volume that is in use. However, snapshots only capture data that has been written to your EBS volume at the time the snapshot command is issued; this may exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the volume long enough to take a snapshot, your snapshot should be complete. However, if you cannot pause all file writes to the volume, you should unmount the volume from within the instance, issue the snapshot command, and then remount the volume to ensure a consistent and complete snapshot. You may remount and use your volume while the snapshot status is `pending`.

To create a snapshot for EBS volumes that serve as root devices, you should stop the instance before taking the snapshot.

Snapshots that are taken from encrypted volumes are automatically encrypted. Volumes that are created from encrypted snapshots are also automatically encrypted. Your encrypted volumes and any associated snapshots always remain protected.

You can tag your snapshots during creation. For more information, see [Tagging Your Amazon EC2 Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the *Amazon Elastic Compute Cloud User Guide*.

For more information, see [Amazon Elastic Block Store](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html) and [Amazon EBS Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Description = ::String`
A description for the snapshot.


## `VolumeId = ::String` -- *Required*
The ID of the EBS volume.


## `TagSpecification = [[ ... ], ...]`
The tags to apply to the snapshot during creation.
```
 TagSpecification = [[
        "ResourceType" =>  "customer-gateway", "dhcp-options", "image", "instance", "internet-gateway", "network-acl", "network-interface", "reserved-instances", "route-table", "snapshot", "spot-instances-request", "subnet", "security-group", "volume", "vpc", "vpn-connection" or "vpn-gateway",
        "Tag" =>  [[
            "Key" =>  ::String,
            "Value" =>  ::String
        ], ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`Snapshot`

# Example: To create a snapshot

This example creates a snapshot of the volume with a volume ID of ``vol-1234567890abcdef0`` and a short description to identify the snapshot.

Input:
```
[
    "Description" => "This is my root volume snapshot.",
    "VolumeId" => "vol-1234567890abcdef0"
]
```

Output:
```
Dict(
    "Description" => "This is my root volume snapshot.",
    "OwnerId" => "012345678910",
    "SnapshotId" => "snap-066877671789bd71b",
    "StartTime" => "2014-02-28T21:06:01.000Z",
    "State" => "pending",
    "Tags" => [

    ],
    "VolumeId" => "vol-1234567890abcdef0",
    "VolumeSize" => 8
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSnapshot)
"""
@inline create_snapshot(aws::AWSConfig=default_aws_config(); args...) = create_snapshot(aws, args)

@inline create_snapshot(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateSnapshot", args)

@inline create_snapshot(args) = create_snapshot(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_spot_datafeed_subscription
    create_spot_datafeed_subscription([::AWSConfig], arguments::Dict)
    create_spot_datafeed_subscription([::AWSConfig]; Bucket=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateSpotDatafeedSubscription", arguments::Dict)
    ec2([::AWSConfig], "CreateSpotDatafeedSubscription", Bucket=, <keyword arguments>)

# CreateSpotDatafeedSubscription Operation

Creates a data feed for Spot Instances, enabling you to view Spot Instance usage logs. You can create one data feed per AWS account. For more information, see [Spot Instance Data Feed](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html) in the *Amazon EC2 User Guide for Linux Instances*.

# Arguments

## `Bucket = ::String` -- *Required*
The Amazon S3 bucket in which to store the Spot Instance data feed.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Prefix = ::String`
A prefix for the data feed file names.




# Returns

`CreateSpotDatafeedSubscriptionResult`

# Example: To create a Spot Instance datafeed

This example creates a Spot Instance data feed for your AWS account.

Input:
```
[
    "Bucket" => "my-s3-bucket",
    "Prefix" => "spotdata"
]
```

Output:
```
Dict(
    "SpotDatafeedSubscription" => Dict(
        "Bucket" => "my-s3-bucket",
        "OwnerId" => "123456789012",
        "Prefix" => "spotdata",
        "State" => "Active"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSpotDatafeedSubscription)
"""
@inline create_spot_datafeed_subscription(aws::AWSConfig=default_aws_config(); args...) = create_spot_datafeed_subscription(aws, args)

@inline create_spot_datafeed_subscription(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateSpotDatafeedSubscription", args)

@inline create_spot_datafeed_subscription(args) = create_spot_datafeed_subscription(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_subnet
    create_subnet([::AWSConfig], arguments::Dict)
    create_subnet([::AWSConfig]; CidrBlock=, VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateSubnet", arguments::Dict)
    ec2([::AWSConfig], "CreateSubnet", CidrBlock=, VpcId=, <keyword arguments>)

# CreateSubnet Operation

Creates a subnet in an existing VPC.

When you create each subnet, you provide the VPC ID and the IPv4 CIDR block you want for the subnet. After you create a subnet, you can't change its CIDR block. The size of the subnet's IPv4 CIDR block can be the same as a VPC's IPv4 CIDR block, or a subset of a VPC's IPv4 CIDR block. If you create more than one subnet in a VPC, the subnets' CIDR blocks must not overlap. The smallest IPv4 subnet (and VPC) you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses).

If you've associated an IPv6 CIDR block with your VPC, you can create a subnet with an IPv6 CIDR block that uses a /64 prefix length.

**Important**
> AWS reserves both the first four and the last IPv4 address in each subnet's CIDR block. They're not available for use.

If you add more than one subnet to a VPC, they're set up in a star topology with a logical router in the middle.

If you launch an instance in a VPC using an Amazon EBS-backed AMI, the IP address doesn't change if you stop and restart the instance (unlike a similar instance launched outside a VPC, which gets a new IP address when restarted). It's therefore possible to have a subnet with no running instances (they're all stopped), but no remaining IP addresses available.

For more information about subnets, see [Your VPC and Subnets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `AvailabilityZone = ::String`
The Availability Zone for the subnet.

Default: AWS selects one for you. If you create more than one subnet in your VPC, we may not necessarily select a different zone for each subnet.


## `CidrBlock = ::String` -- *Required*
The IPv4 network range for the subnet, in CIDR notation. For example, `10.0.0.0/24`.


## `Ipv6CidrBlock = ::String`
The IPv6 network range for the subnet, in CIDR notation. The subnet size must use a /64 prefix length.


## `VpcId = ::String` -- *Required*
The ID of the VPC.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`CreateSubnetResult`

# Example: To create a subnet

This example creates a subnet in the specified VPC with the specified CIDR block. We recommend that you let us select an Availability Zone for you.

Input:
```
[
    "CidrBlock" => "10.0.1.0/24",
    "VpcId" => "vpc-a01106c2"
]
```

Output:
```
Dict(
    "Subnet" => Dict(
        "AvailabilityZone" => "us-west-2c",
        "AvailableIpAddressCount" => 251,
        "CidrBlock" => "10.0.1.0/24",
        "State" => "pending",
        "SubnetId" => "subnet-9d4a7b6c",
        "VpcId" => "vpc-a01106c2"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSubnet)
"""
@inline create_subnet(aws::AWSConfig=default_aws_config(); args...) = create_subnet(aws, args)

@inline create_subnet(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateSubnet", args)

@inline create_subnet(args) = create_subnet(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_tags
    create_tags([::AWSConfig], arguments::Dict)
    create_tags([::AWSConfig]; ResourceId=, Tag=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateTags", arguments::Dict)
    ec2([::AWSConfig], "CreateTags", ResourceId=, Tag=, <keyword arguments>)

# CreateTags Operation

Adds or overwrites one or more tags for the specified Amazon EC2 resource or resources. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique per resource.

For more information about tags, see [Tagging Your Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the *Amazon Elastic Compute Cloud User Guide*. For more information about creating IAM policies that control users' access to resources based on tags, see [Supported Resource-Level Permissions for Amazon EC2 API Actions](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-iam-actions-resources.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ResourceId = [::String, ...]` -- *Required*
The IDs of one or more resources to tag. For example, ami-1a2b3c4d.


## `Tag = [[ ... ], ...]` -- *Required*
One or more tags. The `value` parameter is required, but if you don't want the tag to have a value, specify the parameter with no value, and we set the value to an empty string.
```
 Tag = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Example: To add a tag to a resource

This example adds the tag Stack=production to the specified image, or overwrites an existing tag for the AMI where the tag key is Stack.

Input:
```
[
    "Resources" => [
        "ami-78a54011"
    ],
    "Tags" => [
        [
            "Key" => "Stack",
            "Value" => "production"
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateTags)
"""
@inline create_tags(aws::AWSConfig=default_aws_config(); args...) = create_tags(aws, args)

@inline create_tags(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateTags", args)

@inline create_tags(args) = create_tags(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_volume
    create_volume([::AWSConfig], arguments::Dict)
    create_volume([::AWSConfig]; AvailabilityZone=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateVolume", arguments::Dict)
    ec2([::AWSConfig], "CreateVolume", AvailabilityZone=, <keyword arguments>)

# CreateVolume Operation

Creates an EBS volume that can be attached to an instance in the same Availability Zone. The volume is created in the regional endpoint that you send the HTTP request to. For more information see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html).

You can create a new empty volume or restore a volume from an EBS snapshot. Any AWS Marketplace product codes from the snapshot are propagated to the volume.

You can create encrypted volumes with the `Encrypted` parameter. Encrypted volumes may only be attached to instances that support Amazon EBS encryption. Volumes that are created from encrypted snapshots are also automatically encrypted. For more information, see [Amazon EBS Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the *Amazon Elastic Compute Cloud User Guide*.

You can tag your volumes during creation. For more information, see [Tagging Your Amazon EC2 Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the *Amazon Elastic Compute Cloud User Guide*.

For more information, see [Creating an Amazon EBS Volume](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `AvailabilityZone = ::String` -- *Required*
The Availability Zone in which to create the volume. Use [DescribeAvailabilityZones](@ref) to list the Availability Zones that are currently available to you.


## `Encrypted = ::Bool`
Specifies whether the volume should be encrypted. Encrypted Amazon EBS volumes may only be attached to instances that support Amazon EBS encryption. Volumes that are created from encrypted snapshots are automatically encrypted. There is no way to create an encrypted volume from an unencrypted snapshot or vice versa. If your AMI uses encrypted volumes, you can only launch it on supported instance types. For more information, see [Amazon EBS Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `Iops = ::Int`
The number of I/O operations per second (IOPS) to provision for the volume, with a maximum ratio of 50 IOPS/GiB. Range is 100 to 32000 IOPS for volumes in most regions. For exceptions, see [Amazon EBS Volume Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html) in the *Amazon Elastic Compute Cloud User Guide*.

This parameter is valid only for Provisioned IOPS SSD (io1) volumes.


## `KmsKeyId = ::String`
An identifier for the AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted volume. This parameter is only required if you want to use a non-default CMK; if this parameter is not specified, the default CMK for EBS is used. If a `KmsKeyId` is specified, the `Encrypted` flag must also be set.

The CMK identifier may be provided in any of the following formats:

*   Key ID

*   Key alias

*   ARN using key ID. The ID ARN contains the `arn:aws:kms` namespace, followed by the region of the CMK, the AWS account ID of the CMK owner, the `key` namespace, and then the CMK ID. For example, arn:aws:kms:*us-east-1*:*012345678910*:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.

*   ARN using key alias. The alias ARN contains the `arn:aws:kms` namespace, followed by the region of the CMK, the AWS account ID of the CMK owner, the `alias` namespace, and then the CMK alias. For example, arn:aws:kms:*us-east-1*:*012345678910*:alias/*ExampleAlias*.

AWS parses `KmsKeyId` asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. The action will eventually fail.


## `Size = ::Int`
The size of the volume, in GiBs.

Constraints: 1-16384 for `gp2`, 4-16384 for `io1`, 500-16384 for `st1`, 500-16384 for `sc1`, and 1-1024 for `standard`. If you specify a snapshot, the volume size must be equal to or larger than the snapshot size.

Default: If you're creating the volume from a snapshot and don't specify a volume size, the default is the snapshot size.


## `SnapshotId = ::String`
The snapshot from which to create the volume.


## `VolumeType = "standard", "io1", "gp2", "sc1" or "st1"`
The volume type. This can be `gp2` for General Purpose SSD, `io1` for Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1` for Cold HDD, or `standard` for Magnetic volumes.

Defaults: If no volume type is specified, the default is `standard` in us-east-1, eu-west-1, eu-central-1, us-west-2, us-west-1, sa-east-1, ap-northeast-1, ap-northeast-2, ap-southeast-1, ap-southeast-2, ap-south-1, us-gov-west-1, and cn-north-1. In all other regions, EBS defaults to `gp2`.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `TagSpecification = [[ ... ], ...]`
The tags to apply to the volume during creation.
```
 TagSpecification = [[
        "ResourceType" =>  "customer-gateway", "dhcp-options", "image", "instance", "internet-gateway", "network-acl", "network-interface", "reserved-instances", "route-table", "snapshot", "spot-instances-request", "subnet", "security-group", "volume", "vpc", "vpn-connection" or "vpn-gateway",
        "Tag" =>  [[
            "Key" =>  ::String,
            "Value" =>  ::String
        ], ...]
    ], ...]
```



# Returns

`Volume`

# Example: To create a new volume

This example creates an 80 GiB General Purpose (SSD) volume in the Availability Zone ``us-east-1a``.

Input:
```
[
    "AvailabilityZone" => "us-east-1a",
    "Size" => 80,
    "VolumeType" => "gp2"
]
```

Output:
```
Dict(
    "AvailabilityZone" => "us-east-1a",
    "CreateTime" => "2016-08-29T18:52:32.724Z",
    "Encrypted" => false,
    "Iops" => 240,
    "Size" => 80,
    "SnapshotId" => "",
    "State" => "creating",
    "VolumeId" => "vol-6b60b7c7",
    "VolumeType" => "gp2"
)
```

# Example: To create a new Provisioned IOPS (SSD) volume from a snapshot

This example creates a new Provisioned IOPS (SSD) volume with 1000 provisioned IOPS from a snapshot in the Availability Zone ``us-east-1a``.

Input:
```
[
    "AvailabilityZone" => "us-east-1a",
    "Iops" => 1000,
    "SnapshotId" => "snap-066877671789bd71b",
    "VolumeType" => "io1"
]
```

Output:
```
Dict(
    "Attachments" => [

    ],
    "AvailabilityZone" => "us-east-1a",
    "CreateTime" => "2016-08-29T18:52:32.724Z",
    "Iops" => 1000,
    "Size" => 500,
    "SnapshotId" => "snap-066877671789bd71b",
    "State" => "creating",
    "Tags" => [

    ],
    "VolumeId" => "vol-1234567890abcdef0",
    "VolumeType" => "io1"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVolume)
"""
@inline create_volume(aws::AWSConfig=default_aws_config(); args...) = create_volume(aws, args)

@inline create_volume(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateVolume", args)

@inline create_volume(args) = create_volume(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_vpc
    create_vpc([::AWSConfig], arguments::Dict)
    create_vpc([::AWSConfig]; CidrBlock=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateVpc", arguments::Dict)
    ec2([::AWSConfig], "CreateVpc", CidrBlock=, <keyword arguments>)

# CreateVpc Operation

Creates a VPC with the specified IPv4 CIDR block. The smallest VPC you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses). To help you decide how big to make your VPC, see [Your VPC and Subnets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html) in the *Amazon Virtual Private Cloud User Guide*.

You can optionally request an Amazon-provided IPv6 CIDR block for the VPC. The IPv6 CIDR block uses a /56 prefix length, and is allocated from Amazon's pool of IPv6 addresses. You cannot choose the IPv6 range for your VPC.

By default, each instance you launch in the VPC has the default DHCP options, which includes only a default DNS server that we provide (AmazonProvidedDNS). For more information about DHCP options, see [DHCP Options Sets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html) in the *Amazon Virtual Private Cloud User Guide*.

You can specify the instance tenancy value for the VPC when you create it. You can't change this value for the VPC after you create it. For more information, see [Dedicated Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `CidrBlock = ::String` -- *Required*
The IPv4 network range for the VPC, in CIDR notation. For example, `10.0.0.0/16`.


## `AmazonProvidedIpv6CidrBlock = ::Bool`
Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InstanceTenancy = "default", "dedicated" or "host"`
The tenancy options for instances launched into the VPC. For `default`, instances are launched with shared tenancy by default. You can launch instances with any tenancy into a shared tenancy VPC. For `dedicated`, instances are launched as dedicated tenancy instances by default. You can only launch instances with a tenancy of `dedicated` or `host` into a dedicated tenancy VPC.

**Important:** The `host` value cannot be used with this parameter. Use the `default` or `dedicated` values only.

Default: `default`




# Returns

`CreateVpcResult`

# Example: To create a VPC

This example creates a VPC with the specified CIDR block.

Input:
```
[
    "CidrBlock" => "10.0.0.0/16"
]
```

Output:
```
Dict(
    "Vpc" => Dict(
        "CidrBlock" => "10.0.0.0/16",
        "DhcpOptionsId" => "dopt-7a8b9c2d",
        "InstanceTenancy" => "default",
        "State" => "pending",
        "VpcId" => "vpc-a01106c2"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpc)
"""
@inline create_vpc(aws::AWSConfig=default_aws_config(); args...) = create_vpc(aws, args)

@inline create_vpc(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateVpc", args)

@inline create_vpc(args) = create_vpc(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_vpc_endpoint
    create_vpc_endpoint([::AWSConfig], arguments::Dict)
    create_vpc_endpoint([::AWSConfig]; VpcId=, ServiceName=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateVpcEndpoint", arguments::Dict)
    ec2([::AWSConfig], "CreateVpcEndpoint", VpcId=, ServiceName=, <keyword arguments>)

# CreateVpcEndpoint Operation

Creates a VPC endpoint for a specified service. An endpoint enables you to create a private connection between your VPC and the service. The service may be provided by AWS, an AWS Marketplace partner, or another AWS account. For more information, see [VPC Endpoints](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-endpoints.html) in the *Amazon Virtual Private Cloud User Guide*.

A `gateway` endpoint serves as a target for a route in your route table for traffic destined for the AWS service. You can specify an endpoint policy to attach to the endpoint that will control access to the service from your VPC. You can also specify the VPC route tables that use the endpoint.

An `interface` endpoint is a network interface in your subnet that serves as an endpoint for communicating with the specified service. You can specify the subnets in which to create an endpoint, and the security groups to associate with the endpoint network interface.

Use [DescribeVpcEndpointServices](@ref) to get a list of supported services.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcEndpointType = "Interface" or "Gateway"`
The type of endpoint.

Default: Gateway


## `VpcId = ::String` -- *Required*
The ID of the VPC in which the endpoint will be used.


## `ServiceName = ::String` -- *Required*
The service name. To get a list of available services, use the [DescribeVpcEndpointServices](@ref) request, or get the name from the service provider.


## `PolicyDocument = ::String`
(Gateway endpoint) A policy to attach to the endpoint that controls access to the service. The policy must be in valid JSON format. If this parameter is not specified, we attach a default policy that allows full access to the service.


## `RouteTableId = [::String, ...]`
(Gateway endpoint) One or more route table IDs.


## `SubnetId = [::String, ...]`
(Interface endpoint) The ID of one or more subnets in which to create an endpoint network interface.


## `SecurityGroupId = [::String, ...]`
(Interface endpoint) The ID of one or more security groups to associate with the endpoint network interface.


## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


## `PrivateDnsEnabled = ::Bool`
(Interface endpoint) Indicate whether to associate a private hosted zone with the specified VPC. The private hosted zone contains a record set for the default public DNS name for the service for the region (for example, `kinesis.us-east-1.amazonaws.com`) which resolves to the private IP addresses of the endpoint network interfaces in the VPC. This enables you to make requests to the default public DNS name for the service instead of the public DNS names that are automatically generated by the VPC endpoint service.

To use a private hosted zone, you must set the following VPC attributes to `true`: `enableDnsHostnames` and `enableDnsSupport`. Use [ModifyVpcAttribute](@ref) to set the VPC attributes.

Default: `true`




# Returns

`CreateVpcEndpointResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpcEndpoint)
"""
@inline create_vpc_endpoint(aws::AWSConfig=default_aws_config(); args...) = create_vpc_endpoint(aws, args)

@inline create_vpc_endpoint(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateVpcEndpoint", args)

@inline create_vpc_endpoint(args) = create_vpc_endpoint(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_vpc_endpoint_connection_notification
    create_vpc_endpoint_connection_notification([::AWSConfig], arguments::Dict)
    create_vpc_endpoint_connection_notification([::AWSConfig]; ConnectionNotificationArn=, ConnectionEvents=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateVpcEndpointConnectionNotification", arguments::Dict)
    ec2([::AWSConfig], "CreateVpcEndpointConnectionNotification", ConnectionNotificationArn=, ConnectionEvents=, <keyword arguments>)

# CreateVpcEndpointConnectionNotification Operation

Creates a connection notification for a specified VPC endpoint or VPC endpoint service. A connection notification notifies you of specific endpoint events. You must create an SNS topic to receive notifications. For more information, see [Create a Topic](http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html) in the *Amazon Simple Notification Service Developer Guide*.

You can create a connection notification for interface endpoints only.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ServiceId = ::String`
The ID of the endpoint service.


## `VpcEndpointId = ::String`
The ID of the endpoint.


## `ConnectionNotificationArn = ::String` -- *Required*
The ARN of the SNS topic for the notifications.


## `ConnectionEvents = [::String, ...]` -- *Required*
One or more endpoint events for which to receive notifications. Valid values are `Accept`, `Connect`, `Delete`, and `Reject`.


## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).




# Returns

`CreateVpcEndpointConnectionNotificationResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpcEndpointConnectionNotification)
"""
@inline create_vpc_endpoint_connection_notification(aws::AWSConfig=default_aws_config(); args...) = create_vpc_endpoint_connection_notification(aws, args)

@inline create_vpc_endpoint_connection_notification(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateVpcEndpointConnectionNotification", args)

@inline create_vpc_endpoint_connection_notification(args) = create_vpc_endpoint_connection_notification(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_vpc_endpoint_service_configuration
    create_vpc_endpoint_service_configuration([::AWSConfig], arguments::Dict)
    create_vpc_endpoint_service_configuration([::AWSConfig]; NetworkLoadBalancerArn=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateVpcEndpointServiceConfiguration", arguments::Dict)
    ec2([::AWSConfig], "CreateVpcEndpointServiceConfiguration", NetworkLoadBalancerArn=, <keyword arguments>)

# CreateVpcEndpointServiceConfiguration Operation

Creates a VPC endpoint service configuration to which service consumers (AWS accounts, IAM users, and IAM roles) can connect. Service consumers can create an interface VPC endpoint to connect to your service.

To create an endpoint service configuration, you must first create a Network Load Balancer for your service. For more information, see [VPC Endpoint Services](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/endpoint-service.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `AcceptanceRequired = ::Bool`
Indicate whether requests from service consumers to create an endpoint to your service must be accepted. To accept a request, use [AcceptVpcEndpointConnections](@ref).


## `NetworkLoadBalancerArn = [::String, ...]` -- *Required*
The Amazon Resource Names (ARNs) of one or more Network Load Balancers for your service.


## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).




# Returns

`CreateVpcEndpointServiceConfigurationResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpcEndpointServiceConfiguration)
"""
@inline create_vpc_endpoint_service_configuration(aws::AWSConfig=default_aws_config(); args...) = create_vpc_endpoint_service_configuration(aws, args)

@inline create_vpc_endpoint_service_configuration(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateVpcEndpointServiceConfiguration", args)

@inline create_vpc_endpoint_service_configuration(args) = create_vpc_endpoint_service_configuration(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_vpc_peering_connection
    create_vpc_peering_connection([::AWSConfig], arguments::Dict)
    create_vpc_peering_connection([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateVpcPeeringConnection", arguments::Dict)
    ec2([::AWSConfig], "CreateVpcPeeringConnection", <keyword arguments>)

# CreateVpcPeeringConnection Operation

Requests a VPC peering connection between two VPCs: a requester VPC that you own and an accepter VPC with which to create the connection. The accepter VPC can belong to another AWS account and can be in a different region to the requester VPC. The requester VPC and accepter VPC cannot have overlapping CIDR blocks.

**Note**
> Limitations and rules apply to a VPC peering connection. For more information, see the [limitations](http://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/vpc-peering-basics.html#vpc-peering-limitations) section in the *VPC Peering Guide*.

The owner of the accepter VPC must accept the peering request to activate the peering connection. The VPC peering connection request expires after 7 days, after which it cannot be accepted or rejected.

If you create a VPC peering connection request between VPCs with overlapping CIDR blocks, the VPC peering connection has a status of `failed`.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `PeerOwnerId = ::String`
The AWS account ID of the owner of the accepter VPC.

Default: Your AWS account ID


## `PeerVpcId = ::String`
The ID of the VPC with which you are creating the VPC peering connection. You must specify this parameter in the request.


## `VpcId = ::String`
The ID of the requester VPC. You must specify this parameter in the request.


## `PeerRegion = ::String`
The region code for the accepter VPC, if the accepter VPC is located in a region other than the region in which you make the request.

Default: The region in which you make the request.




# Returns

`CreateVpcPeeringConnectionResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpcPeeringConnection)
"""
@inline create_vpc_peering_connection(aws::AWSConfig=default_aws_config(); args...) = create_vpc_peering_connection(aws, args)

@inline create_vpc_peering_connection(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateVpcPeeringConnection", args)

@inline create_vpc_peering_connection(args) = create_vpc_peering_connection(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_vpn_connection
    create_vpn_connection([::AWSConfig], arguments::Dict)
    create_vpn_connection([::AWSConfig]; CustomerGatewayId=, Type=, VpnGatewayId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateVpnConnection", arguments::Dict)
    ec2([::AWSConfig], "CreateVpnConnection", CustomerGatewayId=, Type=, VpnGatewayId=, <keyword arguments>)

# CreateVpnConnection Operation

Creates a VPN connection between an existing virtual private gateway and a VPN customer gateway. The only supported connection type is `ipsec.1`.

The response includes information that you need to give to your network administrator to configure your customer gateway.

**Important**
> We strongly recommend that you use HTTPS when calling this operation because the response contains sensitive cryptographic information for configuring your customer gateway.

If you decide to shut down your VPN connection for any reason and later create a new VPN connection, you must reconfigure your customer gateway with the new information returned from this call.

This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error.

For more information, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `CustomerGatewayId = ::String` -- *Required*
The ID of the customer gateway.


## `Type = ::String` -- *Required*
The type of VPN connection (`ipsec.1`).


## `VpnGatewayId = ::String` -- *Required*
The ID of the virtual private gateway.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Options = [ ... ]`
The options for the VPN connection.
```
 Options = [
        "StaticRoutesOnly" =>  ::Bool,
        "TunnelOptions" =>  [[
            "TunnelInsideCidr" =>  ::String,
            "PreSharedKey" =>  ::String
        ], ...]
    ]
```



# Returns

`CreateVpnConnectionResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpnConnection)
"""
@inline create_vpn_connection(aws::AWSConfig=default_aws_config(); args...) = create_vpn_connection(aws, args)

@inline create_vpn_connection(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateVpnConnection", args)

@inline create_vpn_connection(args) = create_vpn_connection(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_vpn_connection_route
    create_vpn_connection_route([::AWSConfig], arguments::Dict)
    create_vpn_connection_route([::AWSConfig]; DestinationCidrBlock=, VpnConnectionId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateVpnConnectionRoute", arguments::Dict)
    ec2([::AWSConfig], "CreateVpnConnectionRoute", DestinationCidrBlock=, VpnConnectionId=)

# CreateVpnConnectionRoute Operation

Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.

For more information about VPN connections, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `DestinationCidrBlock = ::String` -- *Required*
The CIDR block associated with the local subnet of the customer network.


## `VpnConnectionId = ::String` -- *Required*
The ID of the VPN connection.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpnConnectionRoute)
"""
@inline create_vpn_connection_route(aws::AWSConfig=default_aws_config(); args...) = create_vpn_connection_route(aws, args)

@inline create_vpn_connection_route(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateVpnConnectionRoute", args)

@inline create_vpn_connection_route(args) = create_vpn_connection_route(default_aws_config(), args)


"""
    using AWSSDK.EC2.create_vpn_gateway
    create_vpn_gateway([::AWSConfig], arguments::Dict)
    create_vpn_gateway([::AWSConfig]; Type=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "CreateVpnGateway", arguments::Dict)
    ec2([::AWSConfig], "CreateVpnGateway", Type=, <keyword arguments>)

# CreateVpnGateway Operation

Creates a virtual private gateway. A virtual private gateway is the endpoint on the VPC side of your VPN connection. You can create a virtual private gateway before creating the VPC itself.

For more information about virtual private gateways, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `AvailabilityZone = ::String`
The Availability Zone for the virtual private gateway.


## `Type = "ipsec.1"` -- *Required*
The type of VPN connection this virtual private gateway supports.


## `AmazonSideAsn = ::Int`
A private Autonomous System Number (ASN) for the Amazon side of a BGP session. If you're using a 16-bit ASN, it must be in the 64512 to 65534 range. If you're using a 32-bit ASN, it must be in the 4200000000 to 4294967294 range.

Default: 64512


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`CreateVpnGatewayResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpnGateway)
"""
@inline create_vpn_gateway(aws::AWSConfig=default_aws_config(); args...) = create_vpn_gateway(aws, args)

@inline create_vpn_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "CreateVpnGateway", args)

@inline create_vpn_gateway(args) = create_vpn_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_customer_gateway
    delete_customer_gateway([::AWSConfig], arguments::Dict)
    delete_customer_gateway([::AWSConfig]; CustomerGatewayId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteCustomerGateway", arguments::Dict)
    ec2([::AWSConfig], "DeleteCustomerGateway", CustomerGatewayId=, <keyword arguments>)

# DeleteCustomerGateway Operation

Deletes the specified customer gateway. You must delete the VPN connection before you can delete the customer gateway.

# Arguments

## `CustomerGatewayId = ::String` -- *Required*
The ID of the customer gateway.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To delete a customer gateway

This example deletes the specified customer gateway.

Input:
```
[
    "CustomerGatewayId" => "cgw-0e11f167"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteCustomerGateway)
"""
@inline delete_customer_gateway(aws::AWSConfig=default_aws_config(); args...) = delete_customer_gateway(aws, args)

@inline delete_customer_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteCustomerGateway", args)

@inline delete_customer_gateway(args) = delete_customer_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_dhcp_options
    delete_dhcp_options([::AWSConfig], arguments::Dict)
    delete_dhcp_options([::AWSConfig]; DhcpOptionsId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteDhcpOptions", arguments::Dict)
    ec2([::AWSConfig], "DeleteDhcpOptions", DhcpOptionsId=, <keyword arguments>)

# DeleteDhcpOptions Operation

Deletes the specified set of DHCP options. You must disassociate the set of DHCP options before you can delete it. You can disassociate the set of DHCP options by associating either a new set of options or the default set of options with the VPC.

# Arguments

## `DhcpOptionsId = ::String` -- *Required*
The ID of the DHCP options set.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To delete a DHCP options set

This example deletes the specified DHCP options set.

Input:
```
[
    "DhcpOptionsId" => "dopt-d9070ebb"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteDhcpOptions)
"""
@inline delete_dhcp_options(aws::AWSConfig=default_aws_config(); args...) = delete_dhcp_options(aws, args)

@inline delete_dhcp_options(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteDhcpOptions", args)

@inline delete_dhcp_options(args) = delete_dhcp_options(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_egress_only_internet_gateway
    delete_egress_only_internet_gateway([::AWSConfig], arguments::Dict)
    delete_egress_only_internet_gateway([::AWSConfig]; EgressOnlyInternetGatewayId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteEgressOnlyInternetGateway", arguments::Dict)
    ec2([::AWSConfig], "DeleteEgressOnlyInternetGateway", EgressOnlyInternetGatewayId=, <keyword arguments>)

# DeleteEgressOnlyInternetGateway Operation

Deletes an egress-only Internet gateway.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `EgressOnlyInternetGatewayId = ::String` -- *Required*
The ID of the egress-only Internet gateway.




# Returns

`DeleteEgressOnlyInternetGatewayResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteEgressOnlyInternetGateway)
"""
@inline delete_egress_only_internet_gateway(aws::AWSConfig=default_aws_config(); args...) = delete_egress_only_internet_gateway(aws, args)

@inline delete_egress_only_internet_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteEgressOnlyInternetGateway", args)

@inline delete_egress_only_internet_gateway(args) = delete_egress_only_internet_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_fleets
    delete_fleets([::AWSConfig], arguments::Dict)
    delete_fleets([::AWSConfig]; FleetId=, TerminateInstances=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteFleets", arguments::Dict)
    ec2([::AWSConfig], "DeleteFleets", FleetId=, TerminateInstances=, <keyword arguments>)

# DeleteFleets Operation

Deletes the specified EC2 Fleet.

After you delete an EC2 Fleet, it launches no new instances. You must specify whether an EC2 Fleet should also terminate its instances. If you terminate the instances, the EC2 Fleet enters the `deleted_terminating` state. Otherwise, the EC2 Fleet enters the `deleted_running` state, and the instances continue to run until they are interrupted or you terminate them manually.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `FleetId = [::String, ...]` -- *Required*
The IDs of the EC2 Fleets.


## `TerminateInstances = ::Bool` -- *Required*
Indicates whether to terminate instances for an EC2 Fleet if it is deleted successfully.




# Returns

`DeleteFleetsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteFleets)
"""
@inline delete_fleets(aws::AWSConfig=default_aws_config(); args...) = delete_fleets(aws, args)

@inline delete_fleets(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteFleets", args)

@inline delete_fleets(args) = delete_fleets(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_flow_logs
    delete_flow_logs([::AWSConfig], arguments::Dict)
    delete_flow_logs([::AWSConfig]; FlowLogId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteFlowLogs", arguments::Dict)
    ec2([::AWSConfig], "DeleteFlowLogs", FlowLogId=)

# DeleteFlowLogs Operation

Deletes one or more flow logs.

# Arguments

## `FlowLogId = [::String, ...]` -- *Required*
One or more flow log IDs.




# Returns

`DeleteFlowLogsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteFlowLogs)
"""
@inline delete_flow_logs(aws::AWSConfig=default_aws_config(); args...) = delete_flow_logs(aws, args)

@inline delete_flow_logs(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteFlowLogs", args)

@inline delete_flow_logs(args) = delete_flow_logs(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_fpga_image
    delete_fpga_image([::AWSConfig], arguments::Dict)
    delete_fpga_image([::AWSConfig]; FpgaImageId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteFpgaImage", arguments::Dict)
    ec2([::AWSConfig], "DeleteFpgaImage", FpgaImageId=, <keyword arguments>)

# DeleteFpgaImage Operation

Deletes the specified Amazon FPGA Image (AFI).

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `FpgaImageId = ::String` -- *Required*
The ID of the AFI.




# Returns

`DeleteFpgaImageResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteFpgaImage)
"""
@inline delete_fpga_image(aws::AWSConfig=default_aws_config(); args...) = delete_fpga_image(aws, args)

@inline delete_fpga_image(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteFpgaImage", args)

@inline delete_fpga_image(args) = delete_fpga_image(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_internet_gateway
    delete_internet_gateway([::AWSConfig], arguments::Dict)
    delete_internet_gateway([::AWSConfig]; InternetGatewayId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteInternetGateway", arguments::Dict)
    ec2([::AWSConfig], "DeleteInternetGateway", InternetGatewayId=, <keyword arguments>)

# DeleteInternetGateway Operation

Deletes the specified Internet gateway. You must detach the Internet gateway from the VPC before you can delete it.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InternetGatewayId = ::String` -- *Required*
The ID of the Internet gateway.




# Example: To delete an Internet gateway

This example deletes the specified Internet gateway.

Input:
```
[
    "InternetGatewayId" => "igw-c0a643a9"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteInternetGateway)
"""
@inline delete_internet_gateway(aws::AWSConfig=default_aws_config(); args...) = delete_internet_gateway(aws, args)

@inline delete_internet_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteInternetGateway", args)

@inline delete_internet_gateway(args) = delete_internet_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_key_pair
    delete_key_pair([::AWSConfig], arguments::Dict)
    delete_key_pair([::AWSConfig]; KeyName=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteKeyPair", arguments::Dict)
    ec2([::AWSConfig], "DeleteKeyPair", KeyName=, <keyword arguments>)

# DeleteKeyPair Operation

Deletes the specified key pair, by removing the public key from Amazon EC2.

# Arguments

## `KeyName = ::String` -- *Required*
The name of the key pair.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To delete a key pair

This example deletes the specified key pair.

Input:
```
[
    "KeyName" => "my-key-pair"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteKeyPair)
"""
@inline delete_key_pair(aws::AWSConfig=default_aws_config(); args...) = delete_key_pair(aws, args)

@inline delete_key_pair(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteKeyPair", args)

@inline delete_key_pair(args) = delete_key_pair(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_launch_template
    delete_launch_template([::AWSConfig], arguments::Dict)
    delete_launch_template([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteLaunchTemplate", arguments::Dict)
    ec2([::AWSConfig], "DeleteLaunchTemplate", <keyword arguments>)

# DeleteLaunchTemplate Operation

Deletes a launch template. Deleting a launch template deletes all of its versions.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `LaunchTemplateId = ::String`
The ID of the launch template. You must specify either the launch template ID or launch template name in the request.


## `LaunchTemplateName = ::String`
The name of the launch template. You must specify either the launch template ID or launch template name in the request.




# Returns

`DeleteLaunchTemplateResult`

# Example: To delete a launch template

This example deletes the specified launch template.

Input:
```
[
    "LaunchTemplateId" => "lt-0abcd290751193123"
]
```

Output:
```
Dict(
    "LaunchTemplate" => Dict(
        "CreateTime" => "2017-11-23T16:46:25.000Z",
        "CreatedBy" => "arn:aws:iam::123456789012:root",
        "DefaultVersionNumber" => 2,
        "LatestVersionNumber" => 2,
        "LaunchTemplateId" => "lt-0abcd290751193123",
        "LaunchTemplateName" => "my-template"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteLaunchTemplate)
"""
@inline delete_launch_template(aws::AWSConfig=default_aws_config(); args...) = delete_launch_template(aws, args)

@inline delete_launch_template(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteLaunchTemplate", args)

@inline delete_launch_template(args) = delete_launch_template(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_launch_template_versions
    delete_launch_template_versions([::AWSConfig], arguments::Dict)
    delete_launch_template_versions([::AWSConfig]; LaunchTemplateVersion=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteLaunchTemplateVersions", arguments::Dict)
    ec2([::AWSConfig], "DeleteLaunchTemplateVersions", LaunchTemplateVersion=, <keyword arguments>)

# DeleteLaunchTemplateVersions Operation

Deletes one or more versions of a launch template. You cannot delete the default version of a launch template; you must first assign a different version as the default. If the default version is the only version for the launch template, you must delete the entire launch template using [DeleteLaunchTemplate](@ref).

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `LaunchTemplateId = ::String`
The ID of the launch template. You must specify either the launch template ID or launch template name in the request.


## `LaunchTemplateName = ::String`
The name of the launch template. You must specify either the launch template ID or launch template name in the request.


## `LaunchTemplateVersion = [::String, ...]` -- *Required*
The version numbers of one or more launch template versions to delete.




# Returns

`DeleteLaunchTemplateVersionsResult`

# Example: To delete a launch template version

This example deletes the specified launch template version.

Input:
```
[
    "LaunchTemplateId" => "lt-0abcd290751193123",
    "Versions" => [
        "1"
    ]
]
```

Output:
```
Dict(
    "SuccessfullyDeletedLaunchTemplateVersions" => [
        Dict(
            "LaunchTemplateId" => "lt-0abcd290751193123",
            "LaunchTemplateName" => "my-template",
            "VersionNumber" => 1
        )
    ],
    "UnsuccessfullyDeletedLaunchTemplateVersions" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteLaunchTemplateVersions)
"""
@inline delete_launch_template_versions(aws::AWSConfig=default_aws_config(); args...) = delete_launch_template_versions(aws, args)

@inline delete_launch_template_versions(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteLaunchTemplateVersions", args)

@inline delete_launch_template_versions(args) = delete_launch_template_versions(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_nat_gateway
    delete_nat_gateway([::AWSConfig], arguments::Dict)
    delete_nat_gateway([::AWSConfig]; NatGatewayId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteNatGateway", arguments::Dict)
    ec2([::AWSConfig], "DeleteNatGateway", NatGatewayId=)

# DeleteNatGateway Operation

Deletes the specified NAT gateway. Deleting a NAT gateway disassociates its Elastic IP address, but does not release the address from your account. Deleting a NAT gateway does not delete any NAT gateway routes in your route tables.

# Arguments

## `NatGatewayId = ::String` -- *Required*
The ID of the NAT gateway.




# Returns

`DeleteNatGatewayResult`

# Example: To delete a NAT gateway

This example deletes the specified NAT gateway.

Input:
```
[
    "NatGatewayId" => "nat-04ae55e711cec5680"
]
```

Output:
```
Dict(
    "NatGatewayId" => "nat-04ae55e711cec5680"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNatGateway)
"""
@inline delete_nat_gateway(aws::AWSConfig=default_aws_config(); args...) = delete_nat_gateway(aws, args)

@inline delete_nat_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteNatGateway", args)

@inline delete_nat_gateway(args) = delete_nat_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_network_acl
    delete_network_acl([::AWSConfig], arguments::Dict)
    delete_network_acl([::AWSConfig]; NetworkAclId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteNetworkAcl", arguments::Dict)
    ec2([::AWSConfig], "DeleteNetworkAcl", NetworkAclId=, <keyword arguments>)

# DeleteNetworkAcl Operation

Deletes the specified network ACL. You can't delete the ACL if it's associated with any subnets. You can't delete the default network ACL.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `NetworkAclId = ::String` -- *Required*
The ID of the network ACL.




# Example: To delete a network ACL

This example deletes the specified network ACL.

Input:
```
[
    "NetworkAclId" => "acl-5fb85d36"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkAcl)
"""
@inline delete_network_acl(aws::AWSConfig=default_aws_config(); args...) = delete_network_acl(aws, args)

@inline delete_network_acl(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteNetworkAcl", args)

@inline delete_network_acl(args) = delete_network_acl(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_network_acl_entry
    delete_network_acl_entry([::AWSConfig], arguments::Dict)
    delete_network_acl_entry([::AWSConfig]; Egress=, NetworkAclId=, RuleNumber=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteNetworkAclEntry", arguments::Dict)
    ec2([::AWSConfig], "DeleteNetworkAclEntry", Egress=, NetworkAclId=, RuleNumber=, <keyword arguments>)

# DeleteNetworkAclEntry Operation

Deletes the specified ingress or egress entry (rule) from the specified network ACL.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Egress = ::Bool` -- *Required*
Indicates whether the rule is an egress rule.


## `NetworkAclId = ::String` -- *Required*
The ID of the network ACL.


## `RuleNumber = ::Int` -- *Required*
The rule number of the entry to delete.




# Example: To delete a network ACL entry

This example deletes ingress rule number 100 from the specified network ACL.

Input:
```
[
    "Egress" => true,
    "NetworkAclId" => "acl-5fb85d36",
    "RuleNumber" => 100
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkAclEntry)
"""
@inline delete_network_acl_entry(aws::AWSConfig=default_aws_config(); args...) = delete_network_acl_entry(aws, args)

@inline delete_network_acl_entry(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteNetworkAclEntry", args)

@inline delete_network_acl_entry(args) = delete_network_acl_entry(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_network_interface
    delete_network_interface([::AWSConfig], arguments::Dict)
    delete_network_interface([::AWSConfig]; NetworkInterfaceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteNetworkInterface", arguments::Dict)
    ec2([::AWSConfig], "DeleteNetworkInterface", NetworkInterfaceId=, <keyword arguments>)

# DeleteNetworkInterface Operation

Deletes the specified network interface. You must detach the network interface before you can delete it.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `NetworkInterfaceId = ::String` -- *Required*
The ID of the network interface.




# Example: To delete a network interface

This example deletes the specified network interface.

Input:
```
[
    "NetworkInterfaceId" => "eni-e5aa89a3"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkInterface)
"""
@inline delete_network_interface(aws::AWSConfig=default_aws_config(); args...) = delete_network_interface(aws, args)

@inline delete_network_interface(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteNetworkInterface", args)

@inline delete_network_interface(args) = delete_network_interface(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_network_interface_permission
    delete_network_interface_permission([::AWSConfig], arguments::Dict)
    delete_network_interface_permission([::AWSConfig]; NetworkInterfacePermissionId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteNetworkInterfacePermission", arguments::Dict)
    ec2([::AWSConfig], "DeleteNetworkInterfacePermission", NetworkInterfacePermissionId=, <keyword arguments>)

# DeleteNetworkInterfacePermission Operation

Deletes a permission for a network interface. By default, you cannot delete the permission if the account for which you're removing the permission has attached the network interface to an instance. However, you can force delete the permission, regardless of any attachment.

# Arguments

## `NetworkInterfacePermissionId = ::String` -- *Required*
The ID of the network interface permission.


## `Force = ::Bool`
Specify `true` to remove the permission even if the network interface is attached to an instance.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DeleteNetworkInterfacePermissionResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkInterfacePermission)
"""
@inline delete_network_interface_permission(aws::AWSConfig=default_aws_config(); args...) = delete_network_interface_permission(aws, args)

@inline delete_network_interface_permission(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteNetworkInterfacePermission", args)

@inline delete_network_interface_permission(args) = delete_network_interface_permission(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_placement_group
    delete_placement_group([::AWSConfig], arguments::Dict)
    delete_placement_group([::AWSConfig]; GroupName=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeletePlacementGroup", arguments::Dict)
    ec2([::AWSConfig], "DeletePlacementGroup", GroupName=, <keyword arguments>)

# DeletePlacementGroup Operation

Deletes the specified placement group. You must terminate all instances in the placement group before you can delete the placement group. For more information, see [Placement Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `GroupName = ::String` -- *Required*
The name of the placement group.




# Example: To delete a placement group

This example deletes the specified placement group.


Input:
```
[
    "GroupName" => "my-cluster"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeletePlacementGroup)
"""
@inline delete_placement_group(aws::AWSConfig=default_aws_config(); args...) = delete_placement_group(aws, args)

@inline delete_placement_group(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeletePlacementGroup", args)

@inline delete_placement_group(args) = delete_placement_group(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_route
    delete_route([::AWSConfig], arguments::Dict)
    delete_route([::AWSConfig]; RouteTableId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteRoute", arguments::Dict)
    ec2([::AWSConfig], "DeleteRoute", RouteTableId=, <keyword arguments>)

# DeleteRoute Operation

Deletes the specified route from the specified route table.

# Arguments

## `DestinationCidrBlock = ::String`
The IPv4 CIDR range for the route. The value you specify must match the CIDR for the route exactly.


## `DestinationIpv6CidrBlock = ::String`
The IPv6 CIDR range for the route. The value you specify must match the CIDR for the route exactly.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `RouteTableId = ::String` -- *Required*
The ID of the route table.




# Example: To delete a route

This example deletes the specified route from the specified route table.

Input:
```
[
    "DestinationCidrBlock" => "0.0.0.0/0",
    "RouteTableId" => "rtb-22574640"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteRoute)
"""
@inline delete_route(aws::AWSConfig=default_aws_config(); args...) = delete_route(aws, args)

@inline delete_route(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteRoute", args)

@inline delete_route(args) = delete_route(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_route_table
    delete_route_table([::AWSConfig], arguments::Dict)
    delete_route_table([::AWSConfig]; RouteTableId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteRouteTable", arguments::Dict)
    ec2([::AWSConfig], "DeleteRouteTable", RouteTableId=, <keyword arguments>)

# DeleteRouteTable Operation

Deletes the specified route table. You must disassociate the route table from any subnets before you can delete it. You can't delete the main route table.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `RouteTableId = ::String` -- *Required*
The ID of the route table.




# Example: To delete a route table

This example deletes the specified route table.

Input:
```
[
    "RouteTableId" => "rtb-22574640"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteRouteTable)
"""
@inline delete_route_table(aws::AWSConfig=default_aws_config(); args...) = delete_route_table(aws, args)

@inline delete_route_table(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteRouteTable", args)

@inline delete_route_table(args) = delete_route_table(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_security_group
    delete_security_group([::AWSConfig], arguments::Dict)
    delete_security_group([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteSecurityGroup", arguments::Dict)
    ec2([::AWSConfig], "DeleteSecurityGroup", <keyword arguments>)

# DeleteSecurityGroup Operation

Deletes a security group.

If you attempt to delete a security group that is associated with an instance, or is referenced by another security group, the operation fails with `InvalidGroup.InUse` in EC2-Classic or `DependencyViolation` in EC2-VPC.

# Arguments

## `GroupId = ::String`
The ID of the security group. Required for a nondefault VPC.


## `GroupName = ::String`
[EC2-Classic, default VPC] The name of the security group. You can specify either the security group name or the security group ID.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To delete a security group

This example deletes the specified security group.

Input:
```
[
    "GroupId" => "sg-903004f8"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteSecurityGroup)
"""
@inline delete_security_group(aws::AWSConfig=default_aws_config(); args...) = delete_security_group(aws, args)

@inline delete_security_group(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteSecurityGroup", args)

@inline delete_security_group(args) = delete_security_group(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_snapshot
    delete_snapshot([::AWSConfig], arguments::Dict)
    delete_snapshot([::AWSConfig]; SnapshotId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteSnapshot", arguments::Dict)
    ec2([::AWSConfig], "DeleteSnapshot", SnapshotId=, <keyword arguments>)

# DeleteSnapshot Operation

Deletes the specified snapshot.

When you make periodic snapshots of a volume, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the volume.

You cannot delete a snapshot of the root device of an EBS volume used by a registered AMI. You must first de-register the AMI before you can delete the snapshot.

For more information, see [Deleting an Amazon EBS Snapshot](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-snapshot.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `SnapshotId = ::String` -- *Required*
The ID of the EBS snapshot.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To delete a snapshot

This example deletes a snapshot with the snapshot ID of ``snap-1234567890abcdef0``. If the command succeeds, no output is returned.

Input:
```
[
    "SnapshotId" => "snap-1234567890abcdef0"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteSnapshot)
"""
@inline delete_snapshot(aws::AWSConfig=default_aws_config(); args...) = delete_snapshot(aws, args)

@inline delete_snapshot(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteSnapshot", args)

@inline delete_snapshot(args) = delete_snapshot(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_spot_datafeed_subscription
    delete_spot_datafeed_subscription([::AWSConfig], arguments::Dict)
    delete_spot_datafeed_subscription([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteSpotDatafeedSubscription", arguments::Dict)
    ec2([::AWSConfig], "DeleteSpotDatafeedSubscription", <keyword arguments>)

# DeleteSpotDatafeedSubscription Operation

Deletes the data feed for Spot Instances.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To cancel a Spot Instance data feed subscription

This example deletes a Spot data feed subscription for the account.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteSpotDatafeedSubscription)
"""
@inline delete_spot_datafeed_subscription(aws::AWSConfig=default_aws_config(); args...) = delete_spot_datafeed_subscription(aws, args)

@inline delete_spot_datafeed_subscription(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteSpotDatafeedSubscription", args)

@inline delete_spot_datafeed_subscription(args) = delete_spot_datafeed_subscription(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_subnet
    delete_subnet([::AWSConfig], arguments::Dict)
    delete_subnet([::AWSConfig]; SubnetId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteSubnet", arguments::Dict)
    ec2([::AWSConfig], "DeleteSubnet", SubnetId=, <keyword arguments>)

# DeleteSubnet Operation

Deletes the specified subnet. You must terminate all running instances in the subnet before you can delete the subnet.

# Arguments

## `SubnetId = ::String` -- *Required*
The ID of the subnet.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To delete a subnet

This example deletes the specified subnet.

Input:
```
[
    "SubnetId" => "subnet-9d4a7b6c"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteSubnet)
"""
@inline delete_subnet(aws::AWSConfig=default_aws_config(); args...) = delete_subnet(aws, args)

@inline delete_subnet(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteSubnet", args)

@inline delete_subnet(args) = delete_subnet(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_tags
    delete_tags([::AWSConfig], arguments::Dict)
    delete_tags([::AWSConfig]; ResourceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteTags", arguments::Dict)
    ec2([::AWSConfig], "DeleteTags", ResourceId=, <keyword arguments>)

# DeleteTags Operation

Deletes the specified set of tags from the specified set of resources.

To list the current tags, use [DescribeTags](@ref). For more information about tags, see [Tagging Your Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ResourceId = [::String, ...]` -- *Required*
The IDs of one or more resources.


## `Tag = [[ ... ], ...]`
One or more tags to delete. Specify a tag key and an optional tag value to delete specific tags. If you specify a tag key without a tag value, we delete any tag with this key regardless of its value. If you specify a tag key with an empty string as the tag value, we delete the tag only if its value is an empty string.

If you omit this parameter, we delete all user-defined tags for the specified resources. We do not delete AWS-generated tags (tags that have the `aws:` prefix).
```
 Tag = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Example: To delete a tag from a resource

This example deletes the tag Stack=test from the specified image.

Input:
```
[
    "Resources" => [
        "ami-78a54011"
    ],
    "Tags" => [
        [
            "Key" => "Stack",
            "Value" => "test"
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteTags)
"""
@inline delete_tags(aws::AWSConfig=default_aws_config(); args...) = delete_tags(aws, args)

@inline delete_tags(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteTags", args)

@inline delete_tags(args) = delete_tags(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_volume
    delete_volume([::AWSConfig], arguments::Dict)
    delete_volume([::AWSConfig]; VolumeId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteVolume", arguments::Dict)
    ec2([::AWSConfig], "DeleteVolume", VolumeId=, <keyword arguments>)

# DeleteVolume Operation

Deletes the specified EBS volume. The volume must be in the `available` state (not attached to an instance).

The volume can remain in the `deleting` state for several minutes.

For more information, see [Deleting an Amazon EBS Volume](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-volume.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `VolumeId = ::String` -- *Required*
The ID of the volume.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To delete a volume

This example deletes an available volume with the volume ID of ``vol-049df61146c4d7901``. If the command succeeds, no output is returned.

Input:
```
[
    "VolumeId" => "vol-049df61146c4d7901"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVolume)
"""
@inline delete_volume(aws::AWSConfig=default_aws_config(); args...) = delete_volume(aws, args)

@inline delete_volume(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteVolume", args)

@inline delete_volume(args) = delete_volume(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_vpc
    delete_vpc([::AWSConfig], arguments::Dict)
    delete_vpc([::AWSConfig]; VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteVpc", arguments::Dict)
    ec2([::AWSConfig], "DeleteVpc", VpcId=, <keyword arguments>)

# DeleteVpc Operation

Deletes the specified VPC. You must detach or delete all gateways and resources that are associated with the VPC before you can delete it. For example, you must terminate all instances running in the VPC, delete all security groups associated with the VPC (except the default one), delete all route tables associated with the VPC (except the default one), and so on.

# Arguments

## `VpcId = ::String` -- *Required*
The ID of the VPC.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To delete a VPC

This example deletes the specified VPC.

Input:
```
[
    "VpcId" => "vpc-a01106c2"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpc)
"""
@inline delete_vpc(aws::AWSConfig=default_aws_config(); args...) = delete_vpc(aws, args)

@inline delete_vpc(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteVpc", args)

@inline delete_vpc(args) = delete_vpc(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_vpc_endpoint_connection_notifications
    delete_vpc_endpoint_connection_notifications([::AWSConfig], arguments::Dict)
    delete_vpc_endpoint_connection_notifications([::AWSConfig]; ConnectionNotificationId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteVpcEndpointConnectionNotifications", arguments::Dict)
    ec2([::AWSConfig], "DeleteVpcEndpointConnectionNotifications", ConnectionNotificationId=, <keyword arguments>)

# DeleteVpcEndpointConnectionNotifications Operation

Deletes one or more VPC endpoint connection notifications.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ConnectionNotificationId = [::String, ...]` -- *Required*
One or more notification IDs.




# Returns

`DeleteVpcEndpointConnectionNotificationsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpcEndpointConnectionNotifications)
"""
@inline delete_vpc_endpoint_connection_notifications(aws::AWSConfig=default_aws_config(); args...) = delete_vpc_endpoint_connection_notifications(aws, args)

@inline delete_vpc_endpoint_connection_notifications(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteVpcEndpointConnectionNotifications", args)

@inline delete_vpc_endpoint_connection_notifications(args) = delete_vpc_endpoint_connection_notifications(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_vpc_endpoint_service_configurations
    delete_vpc_endpoint_service_configurations([::AWSConfig], arguments::Dict)
    delete_vpc_endpoint_service_configurations([::AWSConfig]; ServiceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteVpcEndpointServiceConfigurations", arguments::Dict)
    ec2([::AWSConfig], "DeleteVpcEndpointServiceConfigurations", ServiceId=, <keyword arguments>)

# DeleteVpcEndpointServiceConfigurations Operation

Deletes one or more VPC endpoint service configurations in your account. Before you delete the endpoint service configuration, you must reject any `Available` or `PendingAcceptance` interface endpoint connections that are attached to the service.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ServiceId = [::String, ...]` -- *Required*
The IDs of one or more services.




# Returns

`DeleteVpcEndpointServiceConfigurationsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpcEndpointServiceConfigurations)
"""
@inline delete_vpc_endpoint_service_configurations(aws::AWSConfig=default_aws_config(); args...) = delete_vpc_endpoint_service_configurations(aws, args)

@inline delete_vpc_endpoint_service_configurations(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteVpcEndpointServiceConfigurations", args)

@inline delete_vpc_endpoint_service_configurations(args) = delete_vpc_endpoint_service_configurations(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_vpc_endpoints
    delete_vpc_endpoints([::AWSConfig], arguments::Dict)
    delete_vpc_endpoints([::AWSConfig]; VpcEndpointId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteVpcEndpoints", arguments::Dict)
    ec2([::AWSConfig], "DeleteVpcEndpoints", VpcEndpointId=, <keyword arguments>)

# DeleteVpcEndpoints Operation

Deletes one or more specified VPC endpoints. Deleting a gateway endpoint also deletes the endpoint routes in the route tables that were associated with the endpoint. Deleting an interface endpoint deletes the endpoint network interfaces.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcEndpointId = [::String, ...]` -- *Required*
One or more VPC endpoint IDs.




# Returns

`DeleteVpcEndpointsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpcEndpoints)
"""
@inline delete_vpc_endpoints(aws::AWSConfig=default_aws_config(); args...) = delete_vpc_endpoints(aws, args)

@inline delete_vpc_endpoints(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteVpcEndpoints", args)

@inline delete_vpc_endpoints(args) = delete_vpc_endpoints(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_vpc_peering_connection
    delete_vpc_peering_connection([::AWSConfig], arguments::Dict)
    delete_vpc_peering_connection([::AWSConfig]; VpcPeeringConnectionId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteVpcPeeringConnection", arguments::Dict)
    ec2([::AWSConfig], "DeleteVpcPeeringConnection", VpcPeeringConnectionId=, <keyword arguments>)

# DeleteVpcPeeringConnection Operation

Deletes a VPC peering connection. Either the owner of the requester VPC or the owner of the accepter VPC can delete the VPC peering connection if it's in the `active` state. The owner of the requester VPC can delete a VPC peering connection in the `pending-acceptance` state. You cannot delete a VPC peering connection that's in the `failed` state.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcPeeringConnectionId = ::String` -- *Required*
The ID of the VPC peering connection.




# Returns

`DeleteVpcPeeringConnectionResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpcPeeringConnection)
"""
@inline delete_vpc_peering_connection(aws::AWSConfig=default_aws_config(); args...) = delete_vpc_peering_connection(aws, args)

@inline delete_vpc_peering_connection(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteVpcPeeringConnection", args)

@inline delete_vpc_peering_connection(args) = delete_vpc_peering_connection(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_vpn_connection
    delete_vpn_connection([::AWSConfig], arguments::Dict)
    delete_vpn_connection([::AWSConfig]; VpnConnectionId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteVpnConnection", arguments::Dict)
    ec2([::AWSConfig], "DeleteVpnConnection", VpnConnectionId=, <keyword arguments>)

# DeleteVpnConnection Operation

Deletes the specified VPN connection.

If you're deleting the VPC and its associated components, we recommend that you detach the virtual private gateway from the VPC and delete the VPC before deleting the VPN connection. If you believe that the tunnel credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.

# Arguments

## `VpnConnectionId = ::String` -- *Required*
The ID of the VPN connection.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpnConnection)
"""
@inline delete_vpn_connection(aws::AWSConfig=default_aws_config(); args...) = delete_vpn_connection(aws, args)

@inline delete_vpn_connection(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteVpnConnection", args)

@inline delete_vpn_connection(args) = delete_vpn_connection(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_vpn_connection_route
    delete_vpn_connection_route([::AWSConfig], arguments::Dict)
    delete_vpn_connection_route([::AWSConfig]; DestinationCidrBlock=, VpnConnectionId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteVpnConnectionRoute", arguments::Dict)
    ec2([::AWSConfig], "DeleteVpnConnectionRoute", DestinationCidrBlock=, VpnConnectionId=)

# DeleteVpnConnectionRoute Operation

Deletes the specified static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.

# Arguments

## `DestinationCidrBlock = ::String` -- *Required*
The CIDR block associated with the local subnet of the customer network.


## `VpnConnectionId = ::String` -- *Required*
The ID of the VPN connection.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpnConnectionRoute)
"""
@inline delete_vpn_connection_route(aws::AWSConfig=default_aws_config(); args...) = delete_vpn_connection_route(aws, args)

@inline delete_vpn_connection_route(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteVpnConnectionRoute", args)

@inline delete_vpn_connection_route(args) = delete_vpn_connection_route(default_aws_config(), args)


"""
    using AWSSDK.EC2.delete_vpn_gateway
    delete_vpn_gateway([::AWSConfig], arguments::Dict)
    delete_vpn_gateway([::AWSConfig]; VpnGatewayId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeleteVpnGateway", arguments::Dict)
    ec2([::AWSConfig], "DeleteVpnGateway", VpnGatewayId=, <keyword arguments>)

# DeleteVpnGateway Operation

Deletes the specified virtual private gateway. We recommend that before you delete a virtual private gateway, you detach it from the VPC and delete the VPN connection. Note that you don't need to delete the virtual private gateway if you plan to delete and recreate the VPN connection between your VPC and your network.

# Arguments

## `VpnGatewayId = ::String` -- *Required*
The ID of the virtual private gateway.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpnGateway)
"""
@inline delete_vpn_gateway(aws::AWSConfig=default_aws_config(); args...) = delete_vpn_gateway(aws, args)

@inline delete_vpn_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeleteVpnGateway", args)

@inline delete_vpn_gateway(args) = delete_vpn_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.deregister_image
    deregister_image([::AWSConfig], arguments::Dict)
    deregister_image([::AWSConfig]; ImageId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DeregisterImage", arguments::Dict)
    ec2([::AWSConfig], "DeregisterImage", ImageId=, <keyword arguments>)

# DeregisterImage Operation

Deregisters the specified AMI. After you deregister an AMI, it can't be used to launch new instances; however, it doesn't affect any instances that you've already launched from the AMI. You'll continue to incur usage costs for those instances until you terminate them.

When you deregister an Amazon EBS-backed AMI, it doesn't affect the snapshot that was created for the root volume of the instance during the AMI creation process. When you deregister an instance store-backed AMI, it doesn't affect the files that you uploaded to Amazon S3 when you created the AMI.

# Arguments

## `ImageId = ::String` -- *Required*
The ID of the AMI.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeregisterImage)
"""
@inline deregister_image(aws::AWSConfig=default_aws_config(); args...) = deregister_image(aws, args)

@inline deregister_image(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DeregisterImage", args)

@inline deregister_image(args) = deregister_image(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_account_attributes
    describe_account_attributes([::AWSConfig], arguments::Dict)
    describe_account_attributes([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeAccountAttributes", arguments::Dict)
    ec2([::AWSConfig], "DescribeAccountAttributes", <keyword arguments>)

# DescribeAccountAttributes Operation

Describes attributes of your AWS account. The following are the supported account attributes:

*   `supported-platforms`: Indicates whether your account can launch instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.

*   `default-vpc`: The ID of the default VPC for your account, or `none`.

*   `max-instances`: The maximum number of On-Demand Instances that you can run.

*   `vpc-max-security-groups-per-interface`: The maximum number of security groups that you can assign to a network interface.

*   `max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate for use with EC2-Classic.

*   `vpc-max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate for use with EC2-VPC.

# Arguments

## `AttributeName = ["supported-platforms" or "default-vpc", ...]`
One or more account attribute names.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeAccountAttributesResult`

# Example: To describe a single attribute for your AWS account

This example describes the supported-platforms attribute for your AWS account.

Input:
```
[
    "AttributeNames" => [
        "supported-platforms"
    ]
]
```

Output:
```
Dict(
    "AccountAttributes" => [
        Dict(
            "AttributeName" => "supported-platforms",
            "AttributeValues" => [
                Dict(
                    "AttributeValue" => "EC2"
                ),
                Dict(
                    "AttributeValue" => "VPC"
                )
            ]
        )
    ]
)
```

# Example: To describe all attributes for your AWS account

This example describes the attributes for your AWS account.

Output:
```
Dict(
    "AccountAttributes" => [
        Dict(
            "AttributeName" => "supported-platforms",
            "AttributeValues" => [
                Dict(
                    "AttributeValue" => "EC2"
                ),
                Dict(
                    "AttributeValue" => "VPC"
                )
            ]
        ),
        Dict(
            "AttributeName" => "vpc-max-security-groups-per-interface",
            "AttributeValues" => [
                Dict(
                    "AttributeValue" => "5"
                )
            ]
        ),
        Dict(
            "AttributeName" => "max-elastic-ips",
            "AttributeValues" => [
                Dict(
                    "AttributeValue" => "5"
                )
            ]
        ),
        Dict(
            "AttributeName" => "max-instances",
            "AttributeValues" => [
                Dict(
                    "AttributeValue" => "20"
                )
            ]
        ),
        Dict(
            "AttributeName" => "vpc-max-elastic-ips",
            "AttributeValues" => [
                Dict(
                    "AttributeValue" => "5"
                )
            ]
        ),
        Dict(
            "AttributeName" => "default-vpc",
            "AttributeValues" => [
                Dict(
                    "AttributeValue" => "none"
                )
            ]
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAccountAttributes)
"""
@inline describe_account_attributes(aws::AWSConfig=default_aws_config(); args...) = describe_account_attributes(aws, args)

@inline describe_account_attributes(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeAccountAttributes", args)

@inline describe_account_attributes(args) = describe_account_attributes(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_addresses
    describe_addresses([::AWSConfig], arguments::Dict)
    describe_addresses([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeAddresses", arguments::Dict)
    ec2([::AWSConfig], "DescribeAddresses", <keyword arguments>)

# DescribeAddresses Operation

Describes one or more of your Elastic IP addresses.

An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see [Elastic IP Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters. Filter names and values are case-sensitive.

*   `allocation-id` - [EC2-VPC] The allocation ID for the address.

*   `association-id` - [EC2-VPC] The association ID for the address.

*   `domain` - Indicates whether the address is for use in EC2-Classic (`standard`) or in a VPC (`vpc`).

*   `instance-id` - The ID of the instance the address is associated with, if any.

*   `network-interface-id` - [EC2-VPC] The ID of the network interface that the address is associated with, if any.

*   `network-interface-owner-id` - The AWS account ID of the owner.

*   `private-ip-address` - [EC2-VPC] The private IP address associated with the Elastic IP address.

*   `public-ip` - The Elastic IP address.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `PublicIp = [::String, ...]`
[EC2-Classic] One or more Elastic IP addresses.

Default: Describes all your Elastic IP addresses.


## `AllocationId = [::String, ...]`
[EC2-VPC] One or more allocation IDs.

Default: Describes all your Elastic IP addresses.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeAddressesResult`

# Example: To describe your Elastic IP addresses

This example describes your Elastic IP addresses.

Output:
```
Dict(
    "Addresses" => [
        Dict(
            "Domain" => "standard",
            "InstanceId" => "i-1234567890abcdef0",
            "PublicIp" => "198.51.100.0"
        ),
        Dict(
            "AllocationId" => "eipalloc-12345678",
            "AssociationId" => "eipassoc-12345678",
            "Domain" => "vpc",
            "InstanceId" => "i-1234567890abcdef0",
            "NetworkInterfaceId" => "eni-12345678",
            "NetworkInterfaceOwnerId" => "123456789012",
            "PrivateIpAddress" => "10.0.1.241",
            "PublicIp" => "203.0.113.0"
        )
    ]
)
```

# Example: To describe your Elastic IP addresses for EC2-VPC

This example describes your Elastic IP addresses for use with instances in a VPC.

Input:
```
[
    "Filters" => [
        [
            "Name" => "domain",
            "Values" => [
                "vpc"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "Addresses" => [
        Dict(
            "AllocationId" => "eipalloc-12345678",
            "AssociationId" => "eipassoc-12345678",
            "Domain" => "vpc",
            "InstanceId" => "i-1234567890abcdef0",
            "NetworkInterfaceId" => "eni-12345678",
            "NetworkInterfaceOwnerId" => "123456789012",
            "PrivateIpAddress" => "10.0.1.241",
            "PublicIp" => "203.0.113.0"
        )
    ]
)
```

# Example: To describe your Elastic IP addresses for EC2-Classic

This example describes your Elastic IP addresses for use with instances in EC2-Classic.

Input:
```
[
    "Filters" => [
        [
            "Name" => "domain",
            "Values" => [
                "standard"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "Addresses" => [
        Dict(
            "Domain" => "standard",
            "InstanceId" => "i-1234567890abcdef0",
            "PublicIp" => "198.51.100.0"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAddresses)
"""
@inline describe_addresses(aws::AWSConfig=default_aws_config(); args...) = describe_addresses(aws, args)

@inline describe_addresses(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeAddresses", args)

@inline describe_addresses(args) = describe_addresses(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_aggregate_id_format
    describe_aggregate_id_format([::AWSConfig], arguments::Dict)
    describe_aggregate_id_format([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeAggregateIdFormat", arguments::Dict)
    ec2([::AWSConfig], "DescribeAggregateIdFormat", <keyword arguments>)

# DescribeAggregateIdFormat Operation

Describes the longer ID format settings for all resource types in a specific region. This request is useful for performing a quick audit to determine whether a specific region is fully opted in for longer IDs (17-character IDs).

This request only returns information about resource types that support longer IDs.

The following resource types support longer IDs: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeAggregateIdFormatResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAggregateIdFormat)
"""
@inline describe_aggregate_id_format(aws::AWSConfig=default_aws_config(); args...) = describe_aggregate_id_format(aws, args)

@inline describe_aggregate_id_format(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeAggregateIdFormat", args)

@inline describe_aggregate_id_format(args) = describe_aggregate_id_format(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_availability_zones
    describe_availability_zones([::AWSConfig], arguments::Dict)
    describe_availability_zones([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeAvailabilityZones", arguments::Dict)
    ec2([::AWSConfig], "DescribeAvailabilityZones", <keyword arguments>)

# DescribeAvailabilityZones Operation

Describes one or more of the Availability Zones that are available to you. The results include zones only for the region you're currently using. If there is an event impacting an Availability Zone, you can use this request to view the state and any provided message for that Availability Zone.

For more information, see [Regions and Availability Zones](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `message` - Information about the Availability Zone.

*   `region-name` - The name of the region for the Availability Zone (for example, `us-east-1`).

*   `state` - The state of the Availability Zone (`available` | `information` | `impaired` | `unavailable`).

*   `zone-name` - The name of the Availability Zone (for example, `us-east-1a`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `ZoneName = [::String, ...]`
The names of one or more Availability Zones.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeAvailabilityZonesResult`

# Example: To describe your Availability Zones

This example describes the Availability Zones that are available to you. The response includes Availability Zones only for the current region.

Output:
```
Dict(
    "AvailabilityZones" => [
        Dict(
            "Messages" => [

            ],
            "RegionName" => "us-east-1",
            "State" => "available",
            "ZoneName" => "us-east-1b"
        ),
        Dict(
            "Messages" => [

            ],
            "RegionName" => "us-east-1",
            "State" => "available",
            "ZoneName" => "us-east-1c"
        ),
        Dict(
            "Messages" => [

            ],
            "RegionName" => "us-east-1",
            "State" => "available",
            "ZoneName" => "us-east-1d"
        ),
        Dict(
            "Messages" => [

            ],
            "RegionName" => "us-east-1",
            "State" => "available",
            "ZoneName" => "us-east-1e"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAvailabilityZones)
"""
@inline describe_availability_zones(aws::AWSConfig=default_aws_config(); args...) = describe_availability_zones(aws, args)

@inline describe_availability_zones(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeAvailabilityZones", args)

@inline describe_availability_zones(args) = describe_availability_zones(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_bundle_tasks
    describe_bundle_tasks([::AWSConfig], arguments::Dict)
    describe_bundle_tasks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeBundleTasks", arguments::Dict)
    ec2([::AWSConfig], "DescribeBundleTasks", <keyword arguments>)

# DescribeBundleTasks Operation

Describes one or more of your bundling tasks.

**Note**
> Completed bundle tasks are listed for only a limited time. If your bundle task is no longer in the list, you can still register an AMI from it. Just use `RegisterImage` with the Amazon S3 bucket name and image manifest name you provided to the bundle task.

# Arguments

## `BundleId = [::String, ...]`
One or more bundle task IDs.

Default: Describes all your bundle tasks.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `bundle-id` - The ID of the bundle task.

*   `error-code` - If the task failed, the error code returned.

*   `error-message` - If the task failed, the error message returned.

*   `instance-id` - The ID of the instance.

*   `progress` - The level of task completion, as a percentage (for example, 20%).

*   `s3-bucket` - The Amazon S3 bucket to store the AMI.

*   `s3-prefix` - The beginning of the AMI name.

*   `start-time` - The time the task started (for example, 2013-09-15T17:15:20.000Z).

*   `state` - The state of the task (`pending` | `waiting-for-shutdown` | `bundling` | `storing` | `cancelling` | `complete` | `failed`).

*   `update-time` - The time of the most recent update for the task.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeBundleTasksResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeBundleTasks)
"""
@inline describe_bundle_tasks(aws::AWSConfig=default_aws_config(); args...) = describe_bundle_tasks(aws, args)

@inline describe_bundle_tasks(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeBundleTasks", args)

@inline describe_bundle_tasks(args) = describe_bundle_tasks(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_classic_link_instances
    describe_classic_link_instances([::AWSConfig], arguments::Dict)
    describe_classic_link_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeClassicLinkInstances", arguments::Dict)
    ec2([::AWSConfig], "DescribeClassicLinkInstances", <keyword arguments>)

# DescribeClassicLinkInstances Operation

Describes one or more of your linked EC2-Classic instances. This request only returns information about EC2-Classic instances linked to a VPC through ClassicLink; you cannot use this request to return information about other instances.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `group-id` - The ID of a VPC security group that's associated with the instance.

*   `instance-id` - The ID of the instance.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `vpc-id` - The ID of the VPC that the instance is linked to.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InstanceId = [::String, ...]`
One or more instance IDs. Must be instances linked to a VPC through ClassicLink.


## `MaxResults = ::Int`
The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned. You cannot specify this parameter and the instance IDs parameter in the same request.

Constraint: If the value is greater than 1000, we return only 1000 items.


## `NextToken = ::String`
The token to retrieve the next page of results.




# Returns

`DescribeClassicLinkInstancesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeClassicLinkInstances)
"""
@inline describe_classic_link_instances(aws::AWSConfig=default_aws_config(); args...) = describe_classic_link_instances(aws, args)

@inline describe_classic_link_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeClassicLinkInstances", args)

@inline describe_classic_link_instances(args) = describe_classic_link_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_conversion_tasks
    describe_conversion_tasks([::AWSConfig], arguments::Dict)
    describe_conversion_tasks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeConversionTasks", arguments::Dict)
    ec2([::AWSConfig], "DescribeConversionTasks", <keyword arguments>)

# DescribeConversionTasks Operation

Describes one or more of your conversion tasks. For more information, see the [VM Import/Export User Guide](http://docs.aws.amazon.com/vm-import/latest/userguide/).

For information about the import manifest referenced by this API action, see [VM Import Manifest](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).

# Arguments

## `ConversionTaskId = [::String, ...]`
One or more conversion task IDs.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeConversionTasksResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeConversionTasks)
"""
@inline describe_conversion_tasks(aws::AWSConfig=default_aws_config(); args...) = describe_conversion_tasks(aws, args)

@inline describe_conversion_tasks(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeConversionTasks", args)

@inline describe_conversion_tasks(args) = describe_conversion_tasks(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_customer_gateways
    describe_customer_gateways([::AWSConfig], arguments::Dict)
    describe_customer_gateways([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeCustomerGateways", arguments::Dict)
    ec2([::AWSConfig], "DescribeCustomerGateways", <keyword arguments>)

# DescribeCustomerGateways Operation

Describes one or more of your VPN customer gateways.

For more information about VPN customer gateways, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `CustomerGatewayId = [::String, ...]`
One or more customer gateway IDs.

Default: Describes all your customer gateways.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `bgp-asn` - The customer gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).

*   `customer-gateway-id` - The ID of the customer gateway.

*   `ip-address` - The IP address of the customer gateway's Internet-routable external interface.

*   `state` - The state of the customer gateway (`pending` | `available` | `deleting` | `deleted`).

*   `type` - The type of customer gateway. Currently, the only supported type is `ipsec.1`.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeCustomerGatewaysResult`

# Example: To describe a customer gateway

This example describes the specified customer gateway.

Input:
```
[
    "CustomerGatewayIds" => [
        "cgw-0e11f167"
    ]
]
```

Output:
```
Dict(
    "CustomerGateways" => [
        Dict(
            "BgpAsn" => "65534",
            "CustomerGatewayId" => "cgw-0e11f167",
            "IpAddress" => "12.1.2.3",
            "State" => "available",
            "Type" => "ipsec.1"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeCustomerGateways)
"""
@inline describe_customer_gateways(aws::AWSConfig=default_aws_config(); args...) = describe_customer_gateways(aws, args)

@inline describe_customer_gateways(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeCustomerGateways", args)

@inline describe_customer_gateways(args) = describe_customer_gateways(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_dhcp_options
    describe_dhcp_options([::AWSConfig], arguments::Dict)
    describe_dhcp_options([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeDhcpOptions", arguments::Dict)
    ec2([::AWSConfig], "DescribeDhcpOptions", <keyword arguments>)

# DescribeDhcpOptions Operation

Describes one or more of your DHCP options sets.

For more information about DHCP options sets, see [DHCP Options Sets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `DhcpOptionsId = [::String, ...]`
The IDs of one or more DHCP options sets.

Default: Describes all your DHCP options sets.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `dhcp-options-id` - The ID of a set of DHCP options.

*   `key` - The key for one of the options (for example, `domain-name`).

*   `value` - The value for one of the options.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeDhcpOptionsResult`

# Example: To describe a DHCP options set

This example describes the specified DHCP options set.

Input:
```
[
    "DhcpOptionsIds" => [
        "dopt-d9070ebb"
    ]
]
```

Output:
```
Dict(
    "DhcpOptions" => [
        Dict(
            "DhcpConfigurations" => [
                Dict(
                    "Key" => "domain-name-servers",
                    "Values" => [
                        Dict(
                            "Value" => "10.2.5.2"
                        ),
                        Dict(
                            "Value" => "10.2.5.1"
                        )
                    ]
                )
            ],
            "DhcpOptionsId" => "dopt-d9070ebb"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeDhcpOptions)
"""
@inline describe_dhcp_options(aws::AWSConfig=default_aws_config(); args...) = describe_dhcp_options(aws, args)

@inline describe_dhcp_options(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeDhcpOptions", args)

@inline describe_dhcp_options(args) = describe_dhcp_options(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_egress_only_internet_gateways
    describe_egress_only_internet_gateways([::AWSConfig], arguments::Dict)
    describe_egress_only_internet_gateways([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeEgressOnlyInternetGateways", arguments::Dict)
    ec2([::AWSConfig], "DescribeEgressOnlyInternetGateways", <keyword arguments>)

# DescribeEgressOnlyInternetGateways Operation

Describes one or more of your egress-only Internet gateways.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `EgressOnlyInternetGatewayId = [::String, ...]`
One or more egress-only Internet gateway IDs.


## `MaxResults = ::Int`
The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned.


## `NextToken = ::String`
The token to retrieve the next page of results.




# Returns

`DescribeEgressOnlyInternetGatewaysResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeEgressOnlyInternetGateways)
"""
@inline describe_egress_only_internet_gateways(aws::AWSConfig=default_aws_config(); args...) = describe_egress_only_internet_gateways(aws, args)

@inline describe_egress_only_internet_gateways(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeEgressOnlyInternetGateways", args)

@inline describe_egress_only_internet_gateways(args) = describe_egress_only_internet_gateways(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_elastic_gpus
    describe_elastic_gpus([::AWSConfig], arguments::Dict)
    describe_elastic_gpus([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeElasticGpus", arguments::Dict)
    ec2([::AWSConfig], "DescribeElasticGpus", <keyword arguments>)

# DescribeElasticGpus Operation

Describes the Elastic GPUs associated with your instances. For more information about Elastic GPUs, see [Amazon EC2 Elastic GPUs](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-gpus.html).

# Arguments

## `ElasticGpuId = [::String, ...]`
One or more Elastic GPU IDs.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `availability-zone` - The Availability Zone in which the Elastic GPU resides.

*   `elastic-gpu-health` - The status of the Elastic GPU (`OK` | `IMPAIRED`).

*   `elastic-gpu-state` - The state of the Elastic GPU (`ATTACHED`).

*   `elastic-gpu-type` - The type of Elastic GPU; for example, `eg1.medium`.

*   `instance-id` - The ID of the instance to which the Elastic GPU is associated.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000.


## `NextToken = ::String`
The token to request the next page of results.




# Returns

`DescribeElasticGpusResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeElasticGpus)
"""
@inline describe_elastic_gpus(aws::AWSConfig=default_aws_config(); args...) = describe_elastic_gpus(aws, args)

@inline describe_elastic_gpus(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeElasticGpus", args)

@inline describe_elastic_gpus(args) = describe_elastic_gpus(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_export_tasks
    describe_export_tasks([::AWSConfig], arguments::Dict)
    describe_export_tasks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeExportTasks", arguments::Dict)
    ec2([::AWSConfig], "DescribeExportTasks", <keyword arguments>)

# DescribeExportTasks Operation

Describes one or more of your export tasks.

# Arguments

## `ExportTaskId = [::String, ...]`
One or more export task IDs.




# Returns

`DescribeExportTasksResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeExportTasks)
"""
@inline describe_export_tasks(aws::AWSConfig=default_aws_config(); args...) = describe_export_tasks(aws, args)

@inline describe_export_tasks(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeExportTasks", args)

@inline describe_export_tasks(args) = describe_export_tasks(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_fleet_history
    describe_fleet_history([::AWSConfig], arguments::Dict)
    describe_fleet_history([::AWSConfig]; FleetId=, StartTime=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeFleetHistory", arguments::Dict)
    ec2([::AWSConfig], "DescribeFleetHistory", FleetId=, StartTime=, <keyword arguments>)

# DescribeFleetHistory Operation

Describes the events for the specified EC2 Fleet during the specified time.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `EventType = "instance-change", "fleet-change" or "service-error"`
The type of events to describe. By default, all events are described.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `NextToken = ::String`
The token for the next set of results.


## `FleetId = ::String` -- *Required*
The ID of the EC2 Fleet.


## `StartTime = timestamp` -- *Required*
The start date and time for the events, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z).




# Returns

`DescribeFleetHistoryResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFleetHistory)
"""
@inline describe_fleet_history(aws::AWSConfig=default_aws_config(); args...) = describe_fleet_history(aws, args)

@inline describe_fleet_history(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeFleetHistory", args)

@inline describe_fleet_history(args) = describe_fleet_history(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_fleet_instances
    describe_fleet_instances([::AWSConfig], arguments::Dict)
    describe_fleet_instances([::AWSConfig]; FleetId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeFleetInstances", arguments::Dict)
    ec2([::AWSConfig], "DescribeFleetInstances", FleetId=, <keyword arguments>)

# DescribeFleetInstances Operation

Describes the running instances for the specified EC2 Fleet.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `NextToken = ::String`
The token for the next set of results.


## `FleetId = ::String` -- *Required*
The ID of the EC2 Fleet.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `instance-type` - The instance type.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```



# Returns

`DescribeFleetInstancesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFleetInstances)
"""
@inline describe_fleet_instances(aws::AWSConfig=default_aws_config(); args...) = describe_fleet_instances(aws, args)

@inline describe_fleet_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeFleetInstances", args)

@inline describe_fleet_instances(args) = describe_fleet_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_fleets
    describe_fleets([::AWSConfig], arguments::Dict)
    describe_fleets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeFleets", arguments::Dict)
    ec2([::AWSConfig], "DescribeFleets", <keyword arguments>)

# DescribeFleets Operation

Describes one or more of your EC2 Fleet.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `NextToken = ::String`
The token for the next set of results.


## `FleetId = [::String, ...]`
The ID of the EC2 Fleets.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `activity-status` - The progress of the EC2 Fleet ( `error` | `pending-fulfillment` | `pending-termination` | `fulfilled`).

*   `excess-capacity-termination-policy` - Indicates whether to terminate running instances if the target capacity is decreased below the current EC2 Fleet size (`true` | `false`).

*   `fleet-state` - The state of the EC2 Fleet (`submitted` | `active` | `deleted` | `failed` | `deleted-running` | `deleted-terminating` | `modifying`).

*   `replace-unhealthy-instances` - Indicates whether EC2 Fleet should replace unhealthy instances (`true` | `false`).

*   `type` - The type of request (`request` | `maintain`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```



# Returns

`DescribeFleetsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFleets)
"""
@inline describe_fleets(aws::AWSConfig=default_aws_config(); args...) = describe_fleets(aws, args)

@inline describe_fleets(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeFleets", args)

@inline describe_fleets(args) = describe_fleets(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_flow_logs
    describe_flow_logs([::AWSConfig], arguments::Dict)
    describe_flow_logs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeFlowLogs", arguments::Dict)
    ec2([::AWSConfig], "DescribeFlowLogs", <keyword arguments>)

# DescribeFlowLogs Operation

Describes one or more flow logs. To view the information in your flow logs (the log streams for the network interfaces), you must use the CloudWatch Logs console or the CloudWatch Logs API.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `deliver-log-status` - The status of the logs delivery (`SUCCESS` | `FAILED`).

*   `flow-log-id` - The ID of the flow log.

*   `log-group-name` - The name of the log group.

*   `resource-id` - The ID of the VPC, subnet, or network interface.

*   `traffic-type` - The type of traffic (`ACCEPT` | `REJECT` | `ALL`)
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `FlowLogId = [::String, ...]`
One or more flow log IDs.


## `MaxResults = ::Int`
The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned. You cannot specify this parameter and the flow log IDs parameter in the same request.


## `NextToken = ::String`
The token to retrieve the next page of results.




# Returns

`DescribeFlowLogsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFlowLogs)
"""
@inline describe_flow_logs(aws::AWSConfig=default_aws_config(); args...) = describe_flow_logs(aws, args)

@inline describe_flow_logs(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeFlowLogs", args)

@inline describe_flow_logs(args) = describe_flow_logs(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_fpga_image_attribute
    describe_fpga_image_attribute([::AWSConfig], arguments::Dict)
    describe_fpga_image_attribute([::AWSConfig]; FpgaImageId=, Attribute=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeFpgaImageAttribute", arguments::Dict)
    ec2([::AWSConfig], "DescribeFpgaImageAttribute", FpgaImageId=, Attribute=, <keyword arguments>)

# DescribeFpgaImageAttribute Operation

Describes the specified attribute of the specified Amazon FPGA Image (AFI).

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `FpgaImageId = ::String` -- *Required*
The ID of the AFI.


## `Attribute = "description", "name", "loadPermission" or "productCodes"` -- *Required*
The AFI attribute.




# Returns

`DescribeFpgaImageAttributeResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFpgaImageAttribute)
"""
@inline describe_fpga_image_attribute(aws::AWSConfig=default_aws_config(); args...) = describe_fpga_image_attribute(aws, args)

@inline describe_fpga_image_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeFpgaImageAttribute", args)

@inline describe_fpga_image_attribute(args) = describe_fpga_image_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_fpga_images
    describe_fpga_images([::AWSConfig], arguments::Dict)
    describe_fpga_images([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeFpgaImages", arguments::Dict)
    ec2([::AWSConfig], "DescribeFpgaImages", <keyword arguments>)

# DescribeFpgaImages Operation

Describes one or more available Amazon FPGA Images (AFIs). These include public AFIs, private AFIs that you own, and AFIs owned by other AWS accounts for which you have load permissions.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `FpgaImageId = [::String, ...]`
One or more AFI IDs.


## `Owner = [::String, ...]`
Filters the AFI by owner. Specify an AWS account ID, `self` (owner is the sender of the request), or an AWS owner alias (valid values are `amazon` | `aws-marketplace`).


## `Filter = [[ ... ], ...]`
One or more filters.

*   `create-time` - The creation time of the AFI.

*   `fpga-image-id` - The FPGA image identifier (AFI ID).

*   `fpga-image-global-id` - The global FPGA image identifier (AGFI ID).

*   `name` - The name of the AFI.

*   `owner-id` - The AWS account ID of the AFI owner.

*   `product-code` - The product code.

*   `shell-version` - The version of the AWS Shell that was used to create the bitstream.

*   `state` - The state of the AFI (`pending` | `failed` | `available` | `unavailable`).

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `update-time` - The time of the most recent update.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `NextToken = ::String`
The token to retrieve the next page of results.


## `MaxResults = ::Int`
The maximum number of results to return in a single call.




# Returns

`DescribeFpgaImagesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFpgaImages)
"""
@inline describe_fpga_images(aws::AWSConfig=default_aws_config(); args...) = describe_fpga_images(aws, args)

@inline describe_fpga_images(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeFpgaImages", args)

@inline describe_fpga_images(args) = describe_fpga_images(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_host_reservation_offerings
    describe_host_reservation_offerings([::AWSConfig], arguments::Dict)
    describe_host_reservation_offerings([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeHostReservationOfferings", arguments::Dict)
    ec2([::AWSConfig], "DescribeHostReservationOfferings", <keyword arguments>)

# DescribeHostReservationOfferings Operation

Describes the Dedicated Host reservations that are available to purchase.

The results describe all the Dedicated Host reservation offerings, including offerings that may not match the instance family and region of your Dedicated Hosts. When purchasing an offering, ensure that the instance family and Region of the offering matches that of the Dedicated Hosts with which it is to be associated . For more information about supported instance types, see [Dedicated Hosts Overview](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `instance-family` - The instance family of the offering (for example, `m4`).

*   `payment-option` - The payment option (`NoUpfront` | `PartialUpfront` | `AllUpfront`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxDuration = ::Int`
This is the maximum duration of the reservation to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 94608000 for three years.


## `MaxResults = ::Int`
The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500. If `maxResults` is given a larger value than 500, you receive an error.


## `MinDuration = ::Int`
This is the minimum duration of the reservation you'd like to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 31536000 for one year.


## `NextToken = ::String`
The token to use to retrieve the next page of results.


## `OfferingId = ::String`
The ID of the reservation offering.




# Returns

`DescribeHostReservationOfferingsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeHostReservationOfferings)
"""
@inline describe_host_reservation_offerings(aws::AWSConfig=default_aws_config(); args...) = describe_host_reservation_offerings(aws, args)

@inline describe_host_reservation_offerings(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeHostReservationOfferings", args)

@inline describe_host_reservation_offerings(args) = describe_host_reservation_offerings(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_host_reservations
    describe_host_reservations([::AWSConfig], arguments::Dict)
    describe_host_reservations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeHostReservations", arguments::Dict)
    ec2([::AWSConfig], "DescribeHostReservations", <keyword arguments>)

# DescribeHostReservations Operation

Describes reservations that are associated with Dedicated Hosts in your account.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `instance-family` - The instance family (for example, `m4`).

*   `payment-option` - The payment option (`NoUpfront` | `PartialUpfront` | `AllUpfront`).

*   `state` - The state of the reservation (`payment-pending` | `payment-failed` | `active` | `retired`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `HostReservationIdSet = [::String, ...]`
One or more host reservation IDs.


## `MaxResults = ::Int`
The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500.If `maxResults` is given a larger value than 500, you receive an error.


## `NextToken = ::String`
The token to use to retrieve the next page of results.




# Returns

`DescribeHostReservationsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeHostReservations)
"""
@inline describe_host_reservations(aws::AWSConfig=default_aws_config(); args...) = describe_host_reservations(aws, args)

@inline describe_host_reservations(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeHostReservations", args)

@inline describe_host_reservations(args) = describe_host_reservations(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_hosts
    describe_hosts([::AWSConfig], arguments::Dict)
    describe_hosts([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeHosts", arguments::Dict)
    ec2([::AWSConfig], "DescribeHosts", <keyword arguments>)

# DescribeHosts Operation

Describes one or more of your Dedicated Hosts.

The results describe only the Dedicated Hosts in the region you're currently using. All listed instances consume capacity on your Dedicated Host. Dedicated Hosts that have recently been released are listed with the state `released`.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `auto-placement` - Whether auto-placement is enabled or disabled (`on` | `off`).

*   `availability-zone` - The Availability Zone of the host.

*   `client-token` - The idempotency token that you provided when you allocated the host.

*   `host-reservation-id` - The ID of the reservation assigned to this host.

*   `instance-type` - The instance type size that the Dedicated Host is configured to support.

*   `state` - The allocation state of the Dedicated Host (`available` | `under-assessment` | `permanent-failure` | `released` | `released-permanent-failure`).

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `HostId = [::String, ...]`
The IDs of the Dedicated Hosts. The IDs are used for targeted instance launches.


## `MaxResults = ::Int`
The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500. If `maxResults` is given a larger value than 500, you receive an error. You cannot specify this parameter and the host IDs parameter in the same request.


## `NextToken = ::String`
The token to retrieve the next page of results.




# Returns

`DescribeHostsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeHosts)
"""
@inline describe_hosts(aws::AWSConfig=default_aws_config(); args...) = describe_hosts(aws, args)

@inline describe_hosts(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeHosts", args)

@inline describe_hosts(args) = describe_hosts(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_iam_instance_profile_associations
    describe_iam_instance_profile_associations([::AWSConfig], arguments::Dict)
    describe_iam_instance_profile_associations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeIamInstanceProfileAssociations", arguments::Dict)
    ec2([::AWSConfig], "DescribeIamInstanceProfileAssociations", <keyword arguments>)

# DescribeIamInstanceProfileAssociations Operation

Describes your IAM instance profile associations.

# Arguments

## `AssociationId = [::String, ...]`
One or more IAM instance profile associations.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `instance-id` - The ID of the instance.

*   `state` - The state of the association (`associating` | `associated` | `disassociating` | `disassociated`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `NextToken = ::String`
The token to request the next page of results.




# Returns

`DescribeIamInstanceProfileAssociationsResult`

# Example: To describe an IAM instance profile association

This example describes the specified IAM instance profile association.

Input:
```
[
    "AssociationIds" => [
        "iip-assoc-0db249b1f25fa24b8"
    ]
]
```

Output:
```
Dict(
    "IamInstanceProfileAssociations" => [
        Dict(
            "AssociationId" => "iip-assoc-0db249b1f25fa24b8",
            "IamInstanceProfile" => Dict(
                "Arn" => "arn:aws:iam::123456789012:instance-profile/admin-role",
                "Id" => "AIPAJVQN4F5WVLGCJDRGM"
            ),
            "InstanceId" => "i-09eb09efa73ec1dee",
            "State" => "associated"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeIamInstanceProfileAssociations)
"""
@inline describe_iam_instance_profile_associations(aws::AWSConfig=default_aws_config(); args...) = describe_iam_instance_profile_associations(aws, args)

@inline describe_iam_instance_profile_associations(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeIamInstanceProfileAssociations", args)

@inline describe_iam_instance_profile_associations(args) = describe_iam_instance_profile_associations(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_id_format
    describe_id_format([::AWSConfig], arguments::Dict)
    describe_id_format([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeIdFormat", arguments::Dict)
    ec2([::AWSConfig], "DescribeIdFormat", <keyword arguments>)

# DescribeIdFormat Operation

Describes the ID format settings for your resources on a per-region basis, for example, to view which resource types are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types.

The following resource types support longer IDs: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.

These settings apply to the IAM user who makes the request; they do not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user, unless they explicitly override the settings by running the [ModifyIdFormat](@ref) command. Resources created with longer IDs are visible to all IAM users, regardless of these settings and provided that they have permission to use the relevant `Describe` command for the resource type.

# Arguments

## `Resource = ::String`
The type of resource: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`




# Returns

`DescribeIdFormatResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeIdFormat)
"""
@inline describe_id_format(aws::AWSConfig=default_aws_config(); args...) = describe_id_format(aws, args)

@inline describe_id_format(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeIdFormat", args)

@inline describe_id_format(args) = describe_id_format(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_identity_id_format
    describe_identity_id_format([::AWSConfig], arguments::Dict)
    describe_identity_id_format([::AWSConfig]; PrincipalArn=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeIdentityIdFormat", arguments::Dict)
    ec2([::AWSConfig], "DescribeIdentityIdFormat", PrincipalArn=, <keyword arguments>)

# DescribeIdentityIdFormat Operation

Describes the ID format settings for resources for the specified IAM user, IAM role, or root user. For example, you can view the resource types that are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types. For more information, see [Resource IDs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html) in the *Amazon Elastic Compute Cloud User Guide*.

The following resource types support longer IDs: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.

These settings apply to the principal specified in the request. They do not apply to the principal that makes the request.

# Arguments

## `PrincipalArn = ::String` -- *Required*
The ARN of the principal, which can be an IAM role, IAM user, or the root user.


## `Resource = ::String`
The type of resource: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`




# Returns

`DescribeIdentityIdFormatResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeIdentityIdFormat)
"""
@inline describe_identity_id_format(aws::AWSConfig=default_aws_config(); args...) = describe_identity_id_format(aws, args)

@inline describe_identity_id_format(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeIdentityIdFormat", args)

@inline describe_identity_id_format(args) = describe_identity_id_format(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_image_attribute
    describe_image_attribute([::AWSConfig], arguments::Dict)
    describe_image_attribute([::AWSConfig]; Attribute=, ImageId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeImageAttribute", arguments::Dict)
    ec2([::AWSConfig], "DescribeImageAttribute", Attribute=, ImageId=, <keyword arguments>)

# DescribeImageAttribute Operation

Describes the specified attribute of the specified AMI. You can specify only one attribute at a time.

# Arguments

## `Attribute = "description", "kernel", "ramdisk", "launchPermission", "productCodes", "blockDeviceMapping" or "sriovNetSupport"` -- *Required*
The AMI attribute.

**Note**: Depending on your account privileges, the `blockDeviceMapping` attribute may return a `Client.AuthFailure` error. If this happens, use [DescribeImages](@ref) to get information about the block device mapping for the AMI.


## `ImageId = ::String` -- *Required*
The ID of the AMI.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`ImageAttribute`

# Example: To describe the launch permissions for an AMI

This example describes the launch permissions for the specified AMI.

Input:
```
[
    "Attribute" => "launchPermission",
    "ImageId" => "ami-5731123e"
]
```

Output:
```
Dict(
    "ImageId" => "ami-5731123e",
    "LaunchPermissions" => [
        Dict(
            "UserId" => "123456789012"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImageAttribute)
"""
@inline describe_image_attribute(aws::AWSConfig=default_aws_config(); args...) = describe_image_attribute(aws, args)

@inline describe_image_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeImageAttribute", args)

@inline describe_image_attribute(args) = describe_image_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_images
    describe_images([::AWSConfig], arguments::Dict)
    describe_images([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeImages", arguments::Dict)
    ec2([::AWSConfig], "DescribeImages", <keyword arguments>)

# DescribeImages Operation

Describes one or more of the images (AMIs, AKIs, and ARIs) available to you. Images available to you include public images, private images that you own, and private images owned by other AWS accounts but for which you have explicit launch permissions.

**Note**
> Deregistered images are included in the returned results for an unspecified interval after deregistration.

# Arguments

## `ExecutableBy = [::String, ...]`
Scopes the images by users with explicit launch permissions. Specify an AWS account ID, `self` (the sender of the request), or `all` (public AMIs).


## `Filter = [[ ... ], ...]`
One or more filters.

*   `architecture` - The image architecture (`i386` | `x86_64`).

*   `block-device-mapping.delete-on-termination` - A Boolean value that indicates whether the Amazon EBS volume is deleted on instance termination.

*   `block-device-mapping.device-name` - The device name specified in the block device mapping (for example, `/dev/sdh` or `xvdh`).

*   `block-device-mapping.snapshot-id` - The ID of the snapshot used for the EBS volume.

*   `block-device-mapping.volume-size` - The volume size of the EBS volume, in GiB.

*   `block-device-mapping.volume-type` - The volume type of the EBS volume (`gp2` | `io1` | `st1` | `sc1` | `standard`).

*   `description` - The description of the image (provided during image creation).

*   `ena-support` - A Boolean that indicates whether enhanced networking with ENA is enabled.

*   `hypervisor` - The hypervisor type (`ovm` | `xen`).

*   `image-id` - The ID of the image.

*   `image-type` - The image type (`machine` | `kernel` | `ramdisk`).

*   `is-public` - A Boolean that indicates whether the image is public.

*   `kernel-id` - The kernel ID.

*   `manifest-location` - The location of the image manifest.

*   `name` - The name of the AMI (provided during image creation).

*   `owner-alias` - String value from an Amazon-maintained list (`amazon` | `aws-marketplace` | `microsoft`) of snapshot owners. Not to be confused with the user-configured AWS account alias, which is set from the IAM console.

*   `owner-id` - The AWS account ID of the image owner.

*   `platform` - The platform. To only list Windows-based AMIs, use `windows`.

*   `product-code` - The product code.

*   `product-code.type` - The type of the product code (`devpay` | `marketplace`).

*   `ramdisk-id` - The RAM disk ID.

*   `root-device-name` - The device name of the root device volume (for example, `/dev/sda1`).

*   `root-device-type` - The type of the root device volume (`ebs` | `instance-store`).

*   `state` - The state of the image (`available` | `pending` | `failed`).

*   `state-reason-code` - The reason code for the state change.

*   `state-reason-message` - The message for the state change.

*   `sriov-net-support` - A value of `simple` indicates that enhanced networking with the Intel 82599 VF interface is enabled.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `virtualization-type` - The virtualization type (`paravirtual` | `hvm`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `ImageId = [::String, ...]`
One or more image IDs.

Default: Describes all images available to you.


## `Owner = [::String, ...]`
Filters the images by the owner. Specify an AWS account ID, `self` (owner is the sender of the request), or an AWS owner alias (valid values are `amazon` | `aws-marketplace` | `microsoft`). Omitting this option returns all images for which you have launch permissions, regardless of ownership.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeImagesResult`

# Example: To describe an AMI

This example describes the specified AMI.

Input:
```
[
    "ImageIds" => [
        "ami-5731123e"
    ]
]
```

Output:
```
Dict(
    "Images" => [
        Dict(
            "Architecture" => "x86_64",
            "BlockDeviceMappings" => [
                Dict(
                    "DeviceName" => "/dev/sda1",
                    "Ebs" => Dict(
                        "DeleteOnTermination" => true,
                        "SnapshotId" => "snap-1234567890abcdef0",
                        "VolumeSize" => 8,
                        "VolumeType" => "standard"
                    )
                )
            ],
            "Description" => "An AMI for my server",
            "Hypervisor" => "xen",
            "ImageId" => "ami-5731123e",
            "ImageLocation" => "123456789012/My server",
            "ImageType" => "machine",
            "KernelId" => "aki-88aa75e1",
            "Name" => "My server",
            "OwnerId" => "123456789012",
            "Public" => false,
            "RootDeviceName" => "/dev/sda1",
            "RootDeviceType" => "ebs",
            "State" => "available",
            "VirtualizationType" => "paravirtual"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImages)
"""
@inline describe_images(aws::AWSConfig=default_aws_config(); args...) = describe_images(aws, args)

@inline describe_images(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeImages", args)

@inline describe_images(args) = describe_images(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_import_image_tasks
    describe_import_image_tasks([::AWSConfig], arguments::Dict)
    describe_import_image_tasks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeImportImageTasks", arguments::Dict)
    ec2([::AWSConfig], "DescribeImportImageTasks", <keyword arguments>)

# DescribeImportImageTasks Operation

Displays details about an import virtual machine or import snapshot tasks that are already created.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Filters = [[ ... ], ...]`
Filter tasks using the `task-state` filter and one of the following values: active, completed, deleting, deleted.
```
 Filters = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `ImportTaskId = [::String, ...]`
A list of import image task IDs.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `NextToken = ::String`
A token that indicates the next page of results.




# Returns

`DescribeImportImageTasksResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImportImageTasks)
"""
@inline describe_import_image_tasks(aws::AWSConfig=default_aws_config(); args...) = describe_import_image_tasks(aws, args)

@inline describe_import_image_tasks(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeImportImageTasks", args)

@inline describe_import_image_tasks(args) = describe_import_image_tasks(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_import_snapshot_tasks
    describe_import_snapshot_tasks([::AWSConfig], arguments::Dict)
    describe_import_snapshot_tasks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeImportSnapshotTasks", arguments::Dict)
    ec2([::AWSConfig], "DescribeImportSnapshotTasks", <keyword arguments>)

# DescribeImportSnapshotTasks Operation

Describes your import snapshot tasks.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Filters = [[ ... ], ...]`
One or more filters.
```
 Filters = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `ImportTaskId = [::String, ...]`
A list of import snapshot task IDs.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `NextToken = ::String`
A token that indicates the next page of results.




# Returns

`DescribeImportSnapshotTasksResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImportSnapshotTasks)
"""
@inline describe_import_snapshot_tasks(aws::AWSConfig=default_aws_config(); args...) = describe_import_snapshot_tasks(aws, args)

@inline describe_import_snapshot_tasks(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeImportSnapshotTasks", args)

@inline describe_import_snapshot_tasks(args) = describe_import_snapshot_tasks(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_instance_attribute
    describe_instance_attribute([::AWSConfig], arguments::Dict)
    describe_instance_attribute([::AWSConfig]; Attribute=, InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeInstanceAttribute", arguments::Dict)
    ec2([::AWSConfig], "DescribeInstanceAttribute", Attribute=, InstanceId=, <keyword arguments>)

# DescribeInstanceAttribute Operation

Describes the specified attribute of the specified instance. You can specify only one attribute at a time. Valid attribute values are: `instanceType` | `kernel` | `ramdisk` | `userData` | `disableApiTermination` | `instanceInitiatedShutdownBehavior` | `rootDeviceName` | `blockDeviceMapping` | `productCodes` | `sourceDestCheck` | `groupSet` | `ebsOptimized` | `sriovNetSupport`

# Arguments

## `Attribute = "instanceType", "kernel", "ramdisk", "userData", "disableApiTermination", "instanceInitiatedShutdownBehavior", "rootDeviceName", "blockDeviceMapping", "productCodes", "sourceDestCheck", "groupSet", "ebsOptimized", "sriovNetSupport" or "enaSupport"` -- *Required*
The instance attribute.

Note: The `enaSupport` attribute is not supported at this time.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InstanceId = ::String` -- *Required*
The ID of the instance.




# Returns

`InstanceAttribute`

# Example: To describe the instance type

This example describes the instance type of the specified instance.


Input:
```
[
    "Attribute" => "instanceType",
    "InstanceId" => "i-1234567890abcdef0"
]
```

Output:
```
Dict(
    "InstanceId" => "i-1234567890abcdef0",
    "InstanceType" => Dict(
        "Value" => "t1.micro"
    )
)
```

# Example: To describe the disableApiTermination attribute

This example describes the ``disableApiTermination`` attribute of the specified instance.


Input:
```
[
    "Attribute" => "disableApiTermination",
    "InstanceId" => "i-1234567890abcdef0"
]
```

Output:
```
Dict(
    "DisableApiTermination" => Dict(
        "Value" => "false"
    ),
    "InstanceId" => "i-1234567890abcdef0"
)
```

# Example: To describe the block device mapping for an instance

This example describes the ``blockDeviceMapping`` attribute of the specified instance.


Input:
```
[
    "Attribute" => "blockDeviceMapping",
    "InstanceId" => "i-1234567890abcdef0"
]
```

Output:
```
Dict(
    "BlockDeviceMappings" => [
        Dict(
            "DeviceName" => "/dev/sda1",
            "Ebs" => Dict(
                "AttachTime" => "2013-05-17T22:42:34.000Z",
                "DeleteOnTermination" => true,
                "Status" => "attached",
                "VolumeId" => "vol-049df61146c4d7901"
            )
        ),
        Dict(
            "DeviceName" => "/dev/sdf",
            "Ebs" => Dict(
                "AttachTime" => "2013-09-10T23:07:00.000Z",
                "DeleteOnTermination" => false,
                "Status" => "attached",
                "VolumeId" => "vol-049df61146c4d7901"
            )
        )
    ],
    "InstanceId" => "i-1234567890abcdef0"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInstanceAttribute)
"""
@inline describe_instance_attribute(aws::AWSConfig=default_aws_config(); args...) = describe_instance_attribute(aws, args)

@inline describe_instance_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeInstanceAttribute", args)

@inline describe_instance_attribute(args) = describe_instance_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_instance_credit_specifications
    describe_instance_credit_specifications([::AWSConfig], arguments::Dict)
    describe_instance_credit_specifications([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeInstanceCreditSpecifications", arguments::Dict)
    ec2([::AWSConfig], "DescribeInstanceCreditSpecifications", <keyword arguments>)

# DescribeInstanceCreditSpecifications Operation

Describes the credit option for CPU usage of one or more of your T2 instances. The credit options are `standard` and `unlimited`.

If you do not specify an instance ID, Amazon EC2 returns only the T2 instances with the `unlimited` credit option. If you specify one or more instance IDs, Amazon EC2 returns the credit option (`standard` or `unlimited`) of those instances. If you specify an instance ID that is not valid, such as an instance that is not a T2 instance, an error is returned.

Recently terminated instances might appear in the returned results. This interval is usually less than one hour.

If an Availability Zone is experiencing a service disruption and you specify instance IDs in the affected zone, or do not specify any instance IDs at all, the call fails. If you specify only instance IDs in an unaffected zone, the call works normally.

For more information, see [T2 Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/t2-instances.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `instance-id` - The ID of the instance.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `InstanceId = [::String, ...]`
One or more instance IDs.

Default: Describes all your instances.

Constraints: Maximum 1000 explicitly specified instance IDs.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.


## `NextToken = ::String`
The token to retrieve the next page of results.




# Returns

`DescribeInstanceCreditSpecificationsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInstanceCreditSpecifications)
"""
@inline describe_instance_credit_specifications(aws::AWSConfig=default_aws_config(); args...) = describe_instance_credit_specifications(aws, args)

@inline describe_instance_credit_specifications(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeInstanceCreditSpecifications", args)

@inline describe_instance_credit_specifications(args) = describe_instance_credit_specifications(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_instance_status
    describe_instance_status([::AWSConfig], arguments::Dict)
    describe_instance_status([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeInstanceStatus", arguments::Dict)
    ec2([::AWSConfig], "DescribeInstanceStatus", <keyword arguments>)

# DescribeInstanceStatus Operation

Describes the status of one or more instances. By default, only running instances are described, unless you specifically indicate to return the status of all instances.

Instance status includes the following components:

*   **Status checks** - Amazon EC2 performs status checks on running EC2 instances to identify hardware and software issues. For more information, see [Status Checks for Your Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html) and [Troubleshooting Instances with Failed Status Checks](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html) in the *Amazon Elastic Compute Cloud User Guide*.

*   **Scheduled events** - Amazon EC2 can schedule events (such as reboot, stop, or terminate) for your instances related to hardware issues, software updates, or system maintenance. For more information, see [Scheduled Events for Your Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html) in the *Amazon Elastic Compute Cloud User Guide*.

*   **Instance state** - You can manage your instances from the moment you launch them through their termination. For more information, see [Instance Lifecycle](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `availability-zone` - The Availability Zone of the instance.

*   `event.code` - The code for the scheduled event (`instance-reboot` | `system-reboot` | `system-maintenance` | `instance-retirement` | `instance-stop`).

*   `event.description` - A description of the event.

*   `event.not-after` - The latest end time for the scheduled event (for example, `2014-09-15T17:15:20.000Z`).

*   `event.not-before` - The earliest start time for the scheduled event (for example, `2014-09-15T17:15:20.000Z`).

*   `instance-state-code` - The code for the instance state, as a 16-bit unsigned integer. The high byte is used for internal purposes and should be ignored. The low byte is set based on the state represented. The valid values are 0 (pending), 16 (running), 32 (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).

*   `instance-state-name` - The state of the instance (`pending` | `running` | `shutting-down` | `terminated` | `stopping` | `stopped`).

*   `instance-status.reachability` - Filters on instance status where the name is `reachability` (`passed` | `failed` | `initializing` | `insufficient-data`).

*   `instance-status.status` - The status of the instance (`ok` | `impaired` | `initializing` | `insufficient-data` | `not-applicable`).

*   `system-status.reachability` - Filters on system status where the name is `reachability` (`passed` | `failed` | `initializing` | `insufficient-data`).

*   `system-status.status` - The system status of the instance (`ok` | `impaired` | `initializing` | `insufficient-data` | `not-applicable`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `InstanceId = [::String, ...]`
One or more instance IDs.

Default: Describes all your instances.

Constraints: Maximum 100 explicitly specified instance IDs.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.


## `NextToken = ::String`
The token to retrieve the next page of results.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `IncludeAllInstances = ::Bool`
When `true`, includes the health status for all instances. When `false`, includes the health status for running instances only.

Default: `false`




# Returns

`DescribeInstanceStatusResult`

# Example: To describe the status of an instance

This example describes the current status of the specified instance.

Input:
```
[
    "InstanceIds" => [
        "i-1234567890abcdef0"
    ]
]
```

Output:
```
Dict(
    "InstanceStatuses" => [
        Dict(
            "AvailabilityZone" => "us-east-1d",
            "InstanceId" => "i-1234567890abcdef0",
            "InstanceState" => Dict(
                "Code" => 16,
                "Name" => "running"
            ),
            "InstanceStatus" => Dict(
                "Details" => [
                    Dict(
                        "Name" => "reachability",
                        "Status" => "passed"
                    )
                ],
                "Status" => "ok"
            ),
            "SystemStatus" => Dict(
                "Details" => [
                    Dict(
                        "Name" => "reachability",
                        "Status" => "passed"
                    )
                ],
                "Status" => "ok"
            )
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInstanceStatus)
"""
@inline describe_instance_status(aws::AWSConfig=default_aws_config(); args...) = describe_instance_status(aws, args)

@inline describe_instance_status(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeInstanceStatus", args)

@inline describe_instance_status(args) = describe_instance_status(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_instances
    describe_instances([::AWSConfig], arguments::Dict)
    describe_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeInstances", arguments::Dict)
    ec2([::AWSConfig], "DescribeInstances", <keyword arguments>)

# DescribeInstances Operation

Describes one or more of your instances.

If you specify one or more instance IDs, Amazon EC2 returns information for those instances. If you do not specify instance IDs, Amazon EC2 returns information for all relevant instances. If you specify an instance ID that is not valid, an error is returned. If you specify an instance that you do not own, it is not included in the returned results.

Recently terminated instances might appear in the returned results. This interval is usually less than one hour.

If you describe instances in the rare case where an Availability Zone is experiencing a service disruption and you specify instance IDs that are in the affected zone, or do not specify any instance IDs at all, the call fails. If you describe instances and specify only instance IDs that are in an unaffected zone, the call works normally.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `affinity` - The affinity setting for an instance running on a Dedicated Host (`default` | `host`).

*   `architecture` - The instance architecture (`i386` | `x86_64`).

*   `availability-zone` - The Availability Zone of the instance.

*   `block-device-mapping.attach-time` - The attach time for an EBS volume mapped to the instance, for example, `2010-09-15T17:15:20.000Z`.

*   `block-device-mapping.delete-on-termination` - A Boolean that indicates whether the EBS volume is deleted on instance termination.

*   `block-device-mapping.device-name` - The device name specified in the block device mapping (for example, `/dev/sdh` or `xvdh`).

*   `block-device-mapping.status` - The status for the EBS volume (`attaching` | `attached` | `detaching` | `detached`).

*   `block-device-mapping.volume-id` - The volume ID of the EBS volume.

*   `client-token` - The idempotency token you provided when you launched the instance.

*   `dns-name` - The public DNS name of the instance.

*   `group-id` - The ID of the security group for the instance. EC2-Classic only.

*   `group-name` - The name of the security group for the instance. EC2-Classic only.

*   `host-id` - The ID of the Dedicated Host on which the instance is running, if applicable.

*   `hypervisor` - The hypervisor type of the instance (`ovm` | `xen`).

*   `iam-instance-profile.arn` - The instance profile associated with the instance. Specified as an ARN.

*   `image-id` - The ID of the image used to launch the instance.

*   `instance-id` - The ID of the instance.

*   `instance-lifecycle` - Indicates whether this is a Spot Instance or a Scheduled Instance (`spot` | `scheduled`).

*   `instance-state-code` - The state of the instance, as a 16-bit unsigned integer. The high byte is used for internal purposes and should be ignored. The low byte is set based on the state represented. The valid values are: 0 (pending), 16 (running), 32 (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).

*   `instance-state-name` - The state of the instance (`pending` | `running` | `shutting-down` | `terminated` | `stopping` | `stopped`).

*   `instance-type` - The type of instance (for example, `t2.micro`).

*   `instance.group-id` - The ID of the security group for the instance.

*   `instance.group-name` - The name of the security group for the instance.

*   `ip-address` - The public IPv4 address of the instance.

*   `kernel-id` - The kernel ID.

*   `key-name` - The name of the key pair used when the instance was launched.

*   `launch-index` - When launching multiple instances, this is the index for the instance in the launch group (for example, 0, 1, 2, and so on).

*   `launch-time` - The time when the instance was launched.

*   `monitoring-state` - Indicates whether detailed monitoring is enabled (`disabled` | `enabled`).

*   `network-interface.addresses.private-ip-address` - The private IPv4 address associated with the network interface.

*   `network-interface.addresses.primary` - Specifies whether the IPv4 address of the network interface is the primary private IPv4 address.

*   `network-interface.addresses.association.public-ip` - The ID of the association of an Elastic IP address (IPv4) with a network interface.

*   `network-interface.addresses.association.ip-owner-id` - The owner ID of the private IPv4 address associated with the network interface.

*   `network-interface.association.public-ip` - The address of the Elastic IP address (IPv4) bound to the network interface.

*   `network-interface.association.ip-owner-id` - The owner of the Elastic IP address (IPv4) associated with the network interface.

*   `network-interface.association.allocation-id` - The allocation ID returned when you allocated the Elastic IP address (IPv4) for your network interface.

*   `network-interface.association.association-id` - The association ID returned when the network interface was associated with an IPv4 address.

*   `network-interface.attachment.attachment-id` - The ID of the interface attachment.

*   `network-interface.attachment.instance-id` - The ID of the instance to which the network interface is attached.

*   `network-interface.attachment.instance-owner-id` - The owner ID of the instance to which the network interface is attached.

*   `network-interface.attachment.device-index` - The device index to which the network interface is attached.

*   `network-interface.attachment.status` - The status of the attachment (`attaching` | `attached` | `detaching` | `detached`).

*   `network-interface.attachment.attach-time` - The time that the network interface was attached to an instance.

*   `network-interface.attachment.delete-on-termination` - Specifies whether the attachment is deleted when an instance is terminated.

*   `network-interface.availability-zone` - The Availability Zone for the network interface.

*   `network-interface.description` - The description of the network interface.

*   `network-interface.group-id` - The ID of a security group associated with the network interface.

*   `network-interface.group-name` - The name of a security group associated with the network interface.

*   `network-interface.ipv6-addresses.ipv6-address` - The IPv6 address associated with the network interface.

*   `network-interface.mac-address` - The MAC address of the network interface.

*   `network-interface.network-interface-id` - The ID of the network interface.

*   `network-interface.owner-id` - The ID of the owner of the network interface.

*   `network-interface.private-dns-name` - The private DNS name of the network interface.

*   `network-interface.requester-id` - The requester ID for the network interface.

*   `network-interface.requester-managed` - Indicates whether the network interface is being managed by AWS.

*   `network-interface.status` - The status of the network interface (`available`) | `in-use`).

*   `network-interface.source-dest-check` - Whether the network interface performs source/destination checking. A value of `true` means that checking is enabled, and `false` means that checking is disabled. The value must be `false` for the network interface to perform network address translation (NAT) in your VPC.

*   `network-interface.subnet-id` - The ID of the subnet for the network interface.

*   `network-interface.vpc-id` - The ID of the VPC for the network interface.

*   `owner-id` - The AWS account ID of the instance owner.

*   `placement-group-name` - The name of the placement group for the instance.

*   `platform` - The platform. Use `windows` if you have Windows instances; otherwise, leave blank.

*   `private-dns-name` - The private IPv4 DNS name of the instance.

*   `private-ip-address` - The private IPv4 address of the instance.

*   `product-code` - The product code associated with the AMI used to launch the instance.

*   `product-code.type` - The type of product code (`devpay` | `marketplace`).

*   `ramdisk-id` - The RAM disk ID.

*   `reason` - The reason for the current state of the instance (for example, shows "User Initiated [date]" when you stop or terminate the instance). Similar to the state-reason-code filter.

*   `requester-id` - The ID of the entity that launched the instance on your behalf (for example, AWS Management Console, Auto Scaling, and so on).

*   `reservation-id` - The ID of the instance's reservation. A reservation ID is created any time you launch an instance. A reservation ID has a one-to-one relationship with an instance launch request, but can be associated with more than one instance if you launch multiple instances using the same launch request. For example, if you launch one instance, you get one reservation ID. If you launch ten instances using the same launch request, you also get one reservation ID.

*   `root-device-name` - The device name of the root device volume (for example, `/dev/sda1`).

*   `root-device-type` - The type of the root device volume (`ebs` | `instance-store`).

*   `source-dest-check` - Indicates whether the instance performs source/destination checking. A value of `true` means that checking is enabled, and `false` means that checking is disabled. The value must be `false` for the instance to perform network address translation (NAT) in your VPC.

*   `spot-instance-request-id` - The ID of the Spot Instance request.

*   `state-reason-code` - The reason code for the state change.

*   `state-reason-message` - A message that describes the state change.

*   `subnet-id` - The ID of the subnet for the instance.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources that have a tag with a specific key, regardless of the tag value.

*   `tenancy` - The tenancy of an instance (`dedicated` | `default` | `host`).

*   `virtualization-type` - The virtualization type of the instance (`paravirtual` | `hvm`).

*   `vpc-id` - The ID of the VPC that the instance is running in.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `InstanceId = [::String, ...]`
One or more instance IDs.

Default: Describes all your instances.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.


## `NextToken = ::String`
The token to request the next page of results.




# Returns

`DescribeInstancesResult`

# Example: To describe an Amazon EC2 instance

This example describes the specified instance.

Input:
```
[
    "InstanceIds" => [
        "i-1234567890abcdef0"
    ]
]
```

Output:
```
Dict(

)
```

# Example: To describe the instances with a specific instance type

This example describes the instances with the t2.micro instance type.

Input:
```
[
    "Filters" => [
        [
            "Name" => "instance-type",
            "Values" => [
                "t2.micro"
            ]
        ]
    ]
]
```

Output:
```
Dict(

)
```

# Example: To describe the instances with a specific tag

This example describes the instances with the Purpose=test tag.

Input:
```
[
    "Filters" => [
        [
            "Name" => "tag:Purpose",
            "Values" => [
                "test"
            ]
        ]
    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInstances)
"""
@inline describe_instances(aws::AWSConfig=default_aws_config(); args...) = describe_instances(aws, args)

@inline describe_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeInstances", args)

@inline describe_instances(args) = describe_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_internet_gateways
    describe_internet_gateways([::AWSConfig], arguments::Dict)
    describe_internet_gateways([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeInternetGateways", arguments::Dict)
    ec2([::AWSConfig], "DescribeInternetGateways", <keyword arguments>)

# DescribeInternetGateways Operation

Describes one or more of your Internet gateways.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `attachment.state` - The current state of the attachment between the gateway and the VPC (`available`). Present only if a VPC is attached.

*   `attachment.vpc-id` - The ID of an attached VPC.

*   `internet-gateway-id` - The ID of the Internet gateway.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InternetGatewayId = [::String, ...]`
One or more Internet gateway IDs.

Default: Describes all your Internet gateways.




# Returns

`DescribeInternetGatewaysResult`

# Example: To describe the Internet gateway for a VPC

This example describes the Internet gateway for the specified VPC.

Input:
```
[
    "Filters" => [
        [
            "Name" => "attachment.vpc-id",
            "Values" => [
                "vpc-a01106c2"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "InternetGateways" => [
        Dict(
            "Attachments" => [
                Dict(
                    "State" => "available",
                    "VpcId" => "vpc-a01106c2"
                )
            ],
            "InternetGatewayId" => "igw-c0a643a9",
            "Tags" => [

            ]
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInternetGateways)
"""
@inline describe_internet_gateways(aws::AWSConfig=default_aws_config(); args...) = describe_internet_gateways(aws, args)

@inline describe_internet_gateways(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeInternetGateways", args)

@inline describe_internet_gateways(args) = describe_internet_gateways(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_key_pairs
    describe_key_pairs([::AWSConfig], arguments::Dict)
    describe_key_pairs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeKeyPairs", arguments::Dict)
    ec2([::AWSConfig], "DescribeKeyPairs", <keyword arguments>)

# DescribeKeyPairs Operation

Describes one or more of your key pairs.

For more information about key pairs, see [Key Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `fingerprint` - The fingerprint of the key pair.

*   `key-name` - The name of the key pair.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `KeyName = [::String, ...]`
One or more key pair names.

Default: Describes all your key pairs.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeKeyPairsResult`

# Example: To display a key pair

This example displays the fingerprint for the specified key.

Input:
```
[
    "KeyNames" => [
        "my-key-pair"
    ]
]
```

Output:
```
Dict(
    "KeyPairs" => [
        Dict(
            "KeyFingerprint" => "1f:51:ae:28:bf:89:e9:d8:1f:25:5d:37:2d:7d:b8:ca:9f:f5:f1:6f",
            "KeyName" => "my-key-pair"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeKeyPairs)
"""
@inline describe_key_pairs(aws::AWSConfig=default_aws_config(); args...) = describe_key_pairs(aws, args)

@inline describe_key_pairs(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeKeyPairs", args)

@inline describe_key_pairs(args) = describe_key_pairs(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_launch_template_versions
    describe_launch_template_versions([::AWSConfig], arguments::Dict)
    describe_launch_template_versions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeLaunchTemplateVersions", arguments::Dict)
    ec2([::AWSConfig], "DescribeLaunchTemplateVersions", <keyword arguments>)

# DescribeLaunchTemplateVersions Operation

Describes one or more versions of a specified launch template. You can describe all versions, individual versions, or a range of versions.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `LaunchTemplateId = ::String`
The ID of the launch template. You must specify either the launch template ID or launch template name in the request.


## `LaunchTemplateName = ::String`
The name of the launch template. You must specify either the launch template ID or launch template name in the request.


## `LaunchTemplateVersion = [::String, ...]`
One or more versions of the launch template.


## `MinVersion = ::String`
The version number after which to describe launch template versions.


## `MaxVersion = ::String`
The version number up to which to describe launch template versions.


## `NextToken = ::String`
The token to request the next page of results.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 1 and 200.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `create-time` - The time the launch template version was created.

*   `ebs-optimized` - A boolean that indicates whether the instance is optimized for Amazon EBS I/O.

*   `iam-instance-profile` - The ARN of the IAM instance profile.

*   `image-id` - The ID of the AMI.

*   `instance-type` - The instance type.

*   `is-default-version` - A boolean that indicates whether the launch template version is the default version.

*   `kernel-id` - The kernel ID.

*   `ram-disk-id` - The RAM disk ID.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```



# Returns

`DescribeLaunchTemplateVersionsResult`

# Example: To describe the versions for a launch template

This example describes the versions for the specified launch template.

Input:
```
[
    "LaunchTemplateId" => "068f72b72934aff71"
]
```

Output:
```
Dict(
    "LaunchTemplateVersions" => [
        Dict(
            "CreateTime" => "2017-11-20T13:12:32.000Z",
            "CreatedBy" => "arn:aws:iam::123456789102:root",
            "DefaultVersion" => false,
            "LaunchTemplateData" => Dict(
                "ImageId" => "ami-6057e21a",
                "InstanceType" => "t2.medium",
                "KeyName" => "kp-us-east",
                "NetworkInterfaces" => [
                    Dict(
                        "DeviceIndex" => 0,
                        "Groups" => [
                            "sg-7c227019"
                        ],
                        "SubnetId" => "subnet-1a2b3c4d"
                    )
                ]
            ),
            "LaunchTemplateId" => "lt-068f72b72934aff71",
            "LaunchTemplateName" => "Webservers",
            "VersionNumber" => 2
        ),
        Dict(
            "CreateTime" => "2017-11-20T12:52:33.000Z",
            "CreatedBy" => "arn:aws:iam::123456789102:root",
            "DefaultVersion" => true,
            "LaunchTemplateData" => Dict(
                "ImageId" => "ami-aabbcc11",
                "InstanceType" => "t2.medium",
                "KeyName" => "kp-us-east",
                "NetworkInterfaces" => [
                    Dict(
                        "AssociatePublicIpAddress" => true,
                        "DeleteOnTermination" => false,
                        "DeviceIndex" => 0,
                        "Groups" => [
                            "sg-7c227019"
                        ],
                        "SubnetId" => "subnet-7b16de0c"
                    )
                ],
                "UserData" => ""
            ),
            "LaunchTemplateId" => "lt-068f72b72934aff71",
            "LaunchTemplateName" => "Webservers",
            "VersionNumber" => 1
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeLaunchTemplateVersions)
"""
@inline describe_launch_template_versions(aws::AWSConfig=default_aws_config(); args...) = describe_launch_template_versions(aws, args)

@inline describe_launch_template_versions(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeLaunchTemplateVersions", args)

@inline describe_launch_template_versions(args) = describe_launch_template_versions(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_launch_templates
    describe_launch_templates([::AWSConfig], arguments::Dict)
    describe_launch_templates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeLaunchTemplates", arguments::Dict)
    ec2([::AWSConfig], "DescribeLaunchTemplates", <keyword arguments>)

# DescribeLaunchTemplates Operation

Describes one or more launch templates.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `LaunchTemplateId = [::String, ...]`
One or more launch template IDs.


## `LaunchTemplateName = [::String, ...]`
One or more launch template names.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `create-time` - The time the launch template was created.

*   `launch-template-name` - The name of the launch template.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `NextToken = ::String`
The token to request the next page of results.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000.




# Returns

`DescribeLaunchTemplatesResult`

# Example: To describe a launch template

This example describes the specified launch template.

Input:
```
[
    "LaunchTemplateIds" => [
        "lt-01238c059e3466abc"
    ]
]
```

Output:
```
Dict(
    "LaunchTemplates" => [
        Dict(
            "CreateTime" => "2018-01-16T04:32:57.000Z",
            "CreatedBy" => "arn:aws:iam::123456789012:root",
            "DefaultVersionNumber" => 1,
            "LatestVersionNumber" => 1,
            "LaunchTemplateId" => "lt-01238c059e3466abc",
            "LaunchTemplateName" => "my-template"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeLaunchTemplates)
"""
@inline describe_launch_templates(aws::AWSConfig=default_aws_config(); args...) = describe_launch_templates(aws, args)

@inline describe_launch_templates(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeLaunchTemplates", args)

@inline describe_launch_templates(args) = describe_launch_templates(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_moving_addresses
    describe_moving_addresses([::AWSConfig], arguments::Dict)
    describe_moving_addresses([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeMovingAddresses", arguments::Dict)
    ec2([::AWSConfig], "DescribeMovingAddresses", <keyword arguments>)

# DescribeMovingAddresses Operation

Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the EC2-Classic platform. This request does not return information about any other Elastic IP addresses in your account.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `moving-status` - The status of the Elastic IP address (`MovingToVpc` | `RestoringToClassic`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `MaxResults = ::Int`
The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value outside of this range, an error is returned.

Default: If no value is provided, the default is 1000.


## `NextToken = ::String`
The token to use to retrieve the next page of results.


## `PublicIp = [::String, ...]`
One or more Elastic IP addresses.




# Returns

`DescribeMovingAddressesResult`

# Example: To describe your moving addresses

This example describes all of your moving Elastic IP addresses.

Output:
```
Dict(
    "MovingAddressStatuses" => [
        Dict(
            "MoveStatus" => "MovingToVpc",
            "PublicIp" => "198.51.100.0"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeMovingAddresses)
"""
@inline describe_moving_addresses(aws::AWSConfig=default_aws_config(); args...) = describe_moving_addresses(aws, args)

@inline describe_moving_addresses(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeMovingAddresses", args)

@inline describe_moving_addresses(args) = describe_moving_addresses(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_nat_gateways
    describe_nat_gateways([::AWSConfig], arguments::Dict)
    describe_nat_gateways([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeNatGateways", arguments::Dict)
    ec2([::AWSConfig], "DescribeNatGateways", <keyword arguments>)

# DescribeNatGateways Operation

Describes one or more of the your NAT gateways.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `nat-gateway-id` - The ID of the NAT gateway.

*   `state` - The state of the NAT gateway (`pending` | `failed` | `available` | `deleting` | `deleted`).

*   `subnet-id` - The ID of the subnet in which the NAT gateway resides.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `vpc-id` - The ID of the VPC in which the NAT gateway resides.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.

Constraint: If the value specified is greater than 1000, we return only 1000 items.


## `NatGatewayId = [::String, ...]`
One or more NAT gateway IDs.


## `NextToken = ::String`
The token to retrieve the next page of results.




# Returns

`DescribeNatGatewaysResult`

# Example: To describe a NAT gateway

This example describes the NAT gateway for the specified VPC.

Input:
```
[
    "Filter" => [
        [
            "Name" => "vpc-id",
            "Values" => [
                "vpc-1a2b3c4d"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "NatGateways" => [
        Dict(
            "CreateTime" => "2015-12-01T12:26:55.983Z",
            "NatGatewayAddresses" => [
                Dict(
                    "AllocationId" => "eipalloc-89c620ec",
                    "NetworkInterfaceId" => "eni-9dec76cd",
                    "PrivateIp" => "10.0.0.149",
                    "PublicIp" => "198.11.222.333"
                )
            ],
            "NatGatewayId" => "nat-05dba92075d71c408",
            "State" => "available",
            "SubnetId" => "subnet-847e4dc2",
            "VpcId" => "vpc-1a2b3c4d"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNatGateways)
"""
@inline describe_nat_gateways(aws::AWSConfig=default_aws_config(); args...) = describe_nat_gateways(aws, args)

@inline describe_nat_gateways(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeNatGateways", args)

@inline describe_nat_gateways(args) = describe_nat_gateways(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_network_acls
    describe_network_acls([::AWSConfig], arguments::Dict)
    describe_network_acls([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeNetworkAcls", arguments::Dict)
    ec2([::AWSConfig], "DescribeNetworkAcls", <keyword arguments>)

# DescribeNetworkAcls Operation

Describes one or more of your network ACLs.

For more information about network ACLs, see [Network ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `association.association-id` - The ID of an association ID for the ACL.

*   `association.network-acl-id` - The ID of the network ACL involved in the association.

*   `association.subnet-id` - The ID of the subnet involved in the association.

*   `default` - Indicates whether the ACL is the default network ACL for the VPC.

*   `entry.cidr` - The IPv4 CIDR range specified in the entry.

*   `entry.egress` - Indicates whether the entry applies to egress traffic.

*   `entry.icmp.code` - The ICMP code specified in the entry, if any.

*   `entry.icmp.type` - The ICMP type specified in the entry, if any.

*   `entry.ipv6-cidr` - The IPv6 CIDR range specified in the entry.

*   `entry.port-range.from` - The start of the port range specified in the entry.

*   `entry.port-range.to` - The end of the port range specified in the entry.

*   `entry.protocol` - The protocol specified in the entry (`tcp` | `udp` | `icmp` or a protocol number).

*   `entry.rule-action` - Allows or denies the matching traffic (`allow` | `deny`).

*   `entry.rule-number` - The number of an entry (in other words, rule) in the ACL's set of entries.

*   `network-acl-id` - The ID of the network ACL.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `vpc-id` - The ID of the VPC for the network ACL.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `NetworkAclId = [::String, ...]`
One or more network ACL IDs.

Default: Describes all your network ACLs.




# Returns

`DescribeNetworkAclsResult`

# Example: To describe a network ACL

This example describes the specified network ACL.

Input:
```
[
    "NetworkAclIds" => [
        "acl-5fb85d36"
    ]
]
```

Output:
```
Dict(
    "NetworkAcls" => [
        Dict(
            "Associations" => [
                Dict(
                    "NetworkAclAssociationId" => "aclassoc-66ea5f0b",
                    "NetworkAclId" => "acl-9aeb5ef7",
                    "SubnetId" => "subnet-65ea5f08"
                )
            ],
            "Entries" => [
                Dict(
                    "CidrBlock" => "0.0.0.0/0",
                    "Egress" => true,
                    "Protocol" => "-1",
                    "RuleAction" => "deny",
                    "RuleNumber" => 32767
                ),
                Dict(
                    "CidrBlock" => "0.0.0.0/0",
                    "Egress" => false,
                    "Protocol" => "-1",
                    "RuleAction" => "deny",
                    "RuleNumber" => 32767
                )
            ],
            "IsDefault" => false,
            "NetworkAclId" => "acl-5fb85d36",
            "Tags" => [

            ],
            "VpcId" => "vpc-a01106c2"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkAcls)
"""
@inline describe_network_acls(aws::AWSConfig=default_aws_config(); args...) = describe_network_acls(aws, args)

@inline describe_network_acls(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeNetworkAcls", args)

@inline describe_network_acls(args) = describe_network_acls(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_network_interface_attribute
    describe_network_interface_attribute([::AWSConfig], arguments::Dict)
    describe_network_interface_attribute([::AWSConfig]; NetworkInterfaceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeNetworkInterfaceAttribute", arguments::Dict)
    ec2([::AWSConfig], "DescribeNetworkInterfaceAttribute", NetworkInterfaceId=, <keyword arguments>)

# DescribeNetworkInterfaceAttribute Operation

Describes a network interface attribute. You can specify only one attribute at a time.

# Arguments

## `Attribute = "description", "groupSet", "sourceDestCheck" or "attachment"`
The attribute of the network interface. This parameter is required.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `NetworkInterfaceId = ::String` -- *Required*
The ID of the network interface.




# Returns

`DescribeNetworkInterfaceAttributeResult`

# Example: To describe the attachment attribute of a network interface

This example describes the attachment attribute of the specified network interface.

Input:
```
[
    "Attribute" => "attachment",
    "NetworkInterfaceId" => "eni-686ea200"
]
```

Output:
```
Dict(
    "Attachment" => Dict(
        "AttachTime" => "2015-05-21T20:02:20.000Z",
        "AttachmentId" => "eni-attach-43348162",
        "DeleteOnTermination" => true,
        "DeviceIndex" => 0,
        "InstanceId" => "i-1234567890abcdef0",
        "InstanceOwnerId" => "123456789012",
        "Status" => "attached"
    ),
    "NetworkInterfaceId" => "eni-686ea200"
)
```

# Example: To describe the description attribute of a network interface

This example describes the description attribute of the specified network interface.

Input:
```
[
    "Attribute" => "description",
    "NetworkInterfaceId" => "eni-686ea200"
]
```

Output:
```
Dict(
    "Description" => Dict(
        "Value" => "My description"
    ),
    "NetworkInterfaceId" => "eni-686ea200"
)
```

# Example: To describe the groupSet attribute of a network interface

This example describes the groupSet attribute of the specified network interface.

Input:
```
[
    "Attribute" => "groupSet",
    "NetworkInterfaceId" => "eni-686ea200"
]
```

Output:
```
Dict(
    "Groups" => [
        Dict(
            "GroupId" => "sg-903004f8",
            "GroupName" => "my-security-group"
        )
    ],
    "NetworkInterfaceId" => "eni-686ea200"
)
```

# Example: To describe the sourceDestCheck attribute of a network interface

This example describes the sourceDestCheck attribute of the specified network interface.

Input:
```
[
    "Attribute" => "sourceDestCheck",
    "NetworkInterfaceId" => "eni-686ea200"
]
```

Output:
```
Dict(
    "NetworkInterfaceId" => "eni-686ea200",
    "SourceDestCheck" => Dict(
        "Value" => true
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkInterfaceAttribute)
"""
@inline describe_network_interface_attribute(aws::AWSConfig=default_aws_config(); args...) = describe_network_interface_attribute(aws, args)

@inline describe_network_interface_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeNetworkInterfaceAttribute", args)

@inline describe_network_interface_attribute(args) = describe_network_interface_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_network_interface_permissions
    describe_network_interface_permissions([::AWSConfig], arguments::Dict)
    describe_network_interface_permissions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeNetworkInterfacePermissions", arguments::Dict)
    ec2([::AWSConfig], "DescribeNetworkInterfacePermissions", <keyword arguments>)

# DescribeNetworkInterfacePermissions Operation

Describes the permissions for your network interfaces.

# Arguments

## `NetworkInterfacePermissionId = [::String, ...]`
One or more network interface permission IDs.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `network-interface-permission.network-interface-permission-id` - The ID of the permission.

*   `network-interface-permission.network-interface-id` - The ID of the network interface.

*   `network-interface-permission.aws-account-id` - The AWS account ID.

*   `network-interface-permission.aws-service` - The AWS service.

*   `network-interface-permission.permission` - The type of permission (`INSTANCE-ATTACH` | `EIP-ASSOCIATE`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `NextToken = ::String`
The token to request the next page of results.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. If this parameter is not specified, up to 50 results are returned by default.




# Returns

`DescribeNetworkInterfacePermissionsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkInterfacePermissions)
"""
@inline describe_network_interface_permissions(aws::AWSConfig=default_aws_config(); args...) = describe_network_interface_permissions(aws, args)

@inline describe_network_interface_permissions(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeNetworkInterfacePermissions", args)

@inline describe_network_interface_permissions(args) = describe_network_interface_permissions(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_network_interfaces
    describe_network_interfaces([::AWSConfig], arguments::Dict)
    describe_network_interfaces([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeNetworkInterfaces", arguments::Dict)
    ec2([::AWSConfig], "DescribeNetworkInterfaces", <keyword arguments>)

# DescribeNetworkInterfaces Operation

Describes one or more of your network interfaces.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `addresses.private-ip-address` - The private IPv4 addresses associated with the network interface.

*   `addresses.primary` - Whether the private IPv4 address is the primary IP address associated with the network interface.

*   `addresses.association.public-ip` - The association ID returned when the network interface was associated with the Elastic IP address (IPv4).

*   `addresses.association.owner-id` - The owner ID of the addresses associated with the network interface.

*   `association.association-id` - The association ID returned when the network interface was associated with an IPv4 address.

*   `association.allocation-id` - The allocation ID returned when you allocated the Elastic IP address (IPv4) for your network interface.

*   `association.ip-owner-id` - The owner of the Elastic IP address (IPv4) associated with the network interface.

*   `association.public-ip` - The address of the Elastic IP address (IPv4) bound to the network interface.

*   `association.public-dns-name` - The public DNS name for the network interface (IPv4).

*   `attachment.attachment-id` - The ID of the interface attachment.

*   `attachment.attach.time` - The time that the network interface was attached to an instance.

*   `attachment.delete-on-termination` - Indicates whether the attachment is deleted when an instance is terminated.

*   `attachment.device-index` - The device index to which the network interface is attached.

*   `attachment.instance-id` - The ID of the instance to which the network interface is attached.

*   `attachment.instance-owner-id` - The owner ID of the instance to which the network interface is attached.

*   `attachment.nat-gateway-id` - The ID of the NAT gateway to which the network interface is attached.

*   `attachment.status` - The status of the attachment (`attaching` | `attached` | `detaching` | `detached`).

*   `availability-zone` - The Availability Zone of the network interface.

*   `description` - The description of the network interface.

*   `group-id` - The ID of a security group associated with the network interface.

*   `group-name` - The name of a security group associated with the network interface.

*   `ipv6-addresses.ipv6-address` - An IPv6 address associated with the network interface.

*   `mac-address` - The MAC address of the network interface.

*   `network-interface-id` - The ID of the network interface.

*   `owner-id` - The AWS account ID of the network interface owner.

*   `private-ip-address` - The private IPv4 address or addresses of the network interface.

*   `private-dns-name` - The private DNS name of the network interface (IPv4).

*   `requester-id` - The ID of the entity that launched the instance on your behalf (for example, AWS Management Console, Auto Scaling, and so on).

*   `requester-managed` - Indicates whether the network interface is being managed by an AWS service (for example, AWS Management Console, Auto Scaling, and so on).

*   `source-desk-check` - Indicates whether the network interface performs source/destination checking. A value of `true` means checking is enabled, and `false` means checking is disabled. The value must be `false` for the network interface to perform network address translation (NAT) in your VPC.

*   `status` - The status of the network interface. If the network interface is not attached to an instance, the status is `available`; if a network interface is attached to an instance the status is `in-use`.

*   `subnet-id` - The ID of the subnet for the network interface.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `vpc-id` - The ID of the VPC for the network interface.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `NetworkInterfaceId = [::String, ...]`
One or more network interface IDs.

Default: Describes all your network interfaces.




# Returns

`DescribeNetworkInterfacesResult`

# Example: To describe a network interface



Input:
```
[
    "NetworkInterfaceIds" => [
        "eni-e5aa89a3"
    ]
]
```

Output:
```
Dict(
    "NetworkInterfaces" => [
        Dict(
            "Association" => Dict(
                "AssociationId" => "eipassoc-0fbb766a",
                "IpOwnerId" => "123456789012",
                "PublicDnsName" => "ec2-203-0-113-12.compute-1.amazonaws.com",
                "PublicIp" => "203.0.113.12"
            ),
            "Attachment" => Dict(
                "AttachTime" => "2013-11-30T23:36:42.000Z",
                "AttachmentId" => "eni-attach-66c4350a",
                "DeleteOnTermination" => false,
                "DeviceIndex" => 1,
                "InstanceId" => "i-1234567890abcdef0",
                "InstanceOwnerId" => "123456789012",
                "Status" => "attached"
            ),
            "AvailabilityZone" => "us-east-1d",
            "Description" => "my network interface",
            "Groups" => [
                Dict(
                    "GroupId" => "sg-8637d3e3",
                    "GroupName" => "default"
                )
            ],
            "MacAddress" => "02:2f:8f:b0:cf:75",
            "NetworkInterfaceId" => "eni-e5aa89a3",
            "OwnerId" => "123456789012",
            "PrivateDnsName" => "ip-10-0-1-17.ec2.internal",
            "PrivateIpAddress" => "10.0.1.17",
            "PrivateIpAddresses" => [
                Dict(
                    "Association" => Dict(
                        "AssociationId" => "eipassoc-0fbb766a",
                        "IpOwnerId" => "123456789012",
                        "PublicDnsName" => "ec2-203-0-113-12.compute-1.amazonaws.com",
                        "PublicIp" => "203.0.113.12"
                    ),
                    "Primary" => true,
                    "PrivateDnsName" => "ip-10-0-1-17.ec2.internal",
                    "PrivateIpAddress" => "10.0.1.17"
                )
            ],
            "RequesterManaged" => false,
            "SourceDestCheck" => true,
            "Status" => "in-use",
            "SubnetId" => "subnet-b61f49f0",
            "TagSet" => [

            ],
            "VpcId" => "vpc-a01106c2"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkInterfaces)
"""
@inline describe_network_interfaces(aws::AWSConfig=default_aws_config(); args...) = describe_network_interfaces(aws, args)

@inline describe_network_interfaces(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeNetworkInterfaces", args)

@inline describe_network_interfaces(args) = describe_network_interfaces(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_placement_groups
    describe_placement_groups([::AWSConfig], arguments::Dict)
    describe_placement_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribePlacementGroups", arguments::Dict)
    ec2([::AWSConfig], "DescribePlacementGroups", <keyword arguments>)

# DescribePlacementGroups Operation

Describes one or more of your placement groups. For more information, see [Placement Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `group-name` - The name of the placement group.

*   `state` - The state of the placement group (`pending` | `available` | `deleting` | `deleted`).

*   `strategy` - The strategy of the placement group (`cluster` | `spread`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `GroupName = [::String, ...]`
One or more placement group names.

Default: Describes all your placement groups, or only those otherwise specified.




# Returns

`DescribePlacementGroupsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribePlacementGroups)
"""
@inline describe_placement_groups(aws::AWSConfig=default_aws_config(); args...) = describe_placement_groups(aws, args)

@inline describe_placement_groups(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribePlacementGroups", args)

@inline describe_placement_groups(args) = describe_placement_groups(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_prefix_lists
    describe_prefix_lists([::AWSConfig], arguments::Dict)
    describe_prefix_lists([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribePrefixLists", arguments::Dict)
    ec2([::AWSConfig], "DescribePrefixLists", <keyword arguments>)

# DescribePrefixLists Operation

Describes available AWS services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service. A prefix list ID is required for creating an outbound security group rule that allows traffic from a VPC to access an AWS service through a gateway VPC endpoint. Currently, the services that support this action are Amazon S3 and Amazon DynamoDB.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `prefix-list-id`: The ID of a prefix list.

*   `prefix-list-name`: The name of a prefix list.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.

Constraint: If the value specified is greater than 1000, we return only 1000 items.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a prior call.)


## `PrefixListId = [::String, ...]`
One or more prefix list IDs.




# Returns

`DescribePrefixListsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribePrefixLists)
"""
@inline describe_prefix_lists(aws::AWSConfig=default_aws_config(); args...) = describe_prefix_lists(aws, args)

@inline describe_prefix_lists(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribePrefixLists", args)

@inline describe_prefix_lists(args) = describe_prefix_lists(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_principal_id_format
    describe_principal_id_format([::AWSConfig], arguments::Dict)
    describe_principal_id_format([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribePrincipalIdFormat", arguments::Dict)
    ec2([::AWSConfig], "DescribePrincipalIdFormat", <keyword arguments>)

# DescribePrincipalIdFormat Operation

Describes the ID format settings for the root user and all IAM roles and IAM users that have explicitly specified a longer ID (17-character ID) preference.

By default, all IAM roles and IAM users default to the same ID settings as the root user, unless they explicitly override the settings. This request is useful for identifying those IAM users and IAM roles that have overridden the default ID settings.

The following resource types support longer IDs: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Resource = [::String, ...]`
The type of resource: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`


## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.


## `NextToken = ::String`
The token to request the next page of results.




# Returns

`DescribePrincipalIdFormatResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribePrincipalIdFormat)
"""
@inline describe_principal_id_format(aws::AWSConfig=default_aws_config(); args...) = describe_principal_id_format(aws, args)

@inline describe_principal_id_format(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribePrincipalIdFormat", args)

@inline describe_principal_id_format(args) = describe_principal_id_format(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_regions
    describe_regions([::AWSConfig], arguments::Dict)
    describe_regions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeRegions", arguments::Dict)
    ec2([::AWSConfig], "DescribeRegions", <keyword arguments>)

# DescribeRegions Operation

Describes one or more regions that are currently available to you.

For a list of the regions supported by Amazon EC2, see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region).

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `endpoint` - The endpoint of the region (for example, `ec2.us-east-1.amazonaws.com`).

*   `region-name` - The name of the region (for example, `us-east-1`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `RegionName = [::String, ...]`
The names of one or more regions.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeRegionsResult`

# Example: To describe your regions

This example describes all the regions that are available to you.

Output:
```
Dict(
    "Regions" => [
        Dict(
            "Endpoint" => "ec2.ap-south-1.amazonaws.com",
            "RegionName" => "ap-south-1"
        ),
        Dict(
            "Endpoint" => "ec2.eu-west-1.amazonaws.com",
            "RegionName" => "eu-west-1"
        ),
        Dict(
            "Endpoint" => "ec2.ap-southeast-1.amazonaws.com",
            "RegionName" => "ap-southeast-1"
        ),
        Dict(
            "Endpoint" => "ec2.ap-southeast-2.amazonaws.com",
            "RegionName" => "ap-southeast-2"
        ),
        Dict(
            "Endpoint" => "ec2.eu-central-1.amazonaws.com",
            "RegionName" => "eu-central-1"
        ),
        Dict(
            "Endpoint" => "ec2.ap-northeast-2.amazonaws.com",
            "RegionName" => "ap-northeast-2"
        ),
        Dict(
            "Endpoint" => "ec2.ap-northeast-1.amazonaws.com",
            "RegionName" => "ap-northeast-1"
        ),
        Dict(
            "Endpoint" => "ec2.us-east-1.amazonaws.com",
            "RegionName" => "us-east-1"
        ),
        Dict(
            "Endpoint" => "ec2.sa-east-1.amazonaws.com",
            "RegionName" => "sa-east-1"
        ),
        Dict(
            "Endpoint" => "ec2.us-west-1.amazonaws.com",
            "RegionName" => "us-west-1"
        ),
        Dict(
            "Endpoint" => "ec2.us-west-2.amazonaws.com",
            "RegionName" => "us-west-2"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeRegions)
"""
@inline describe_regions(aws::AWSConfig=default_aws_config(); args...) = describe_regions(aws, args)

@inline describe_regions(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeRegions", args)

@inline describe_regions(args) = describe_regions(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_reserved_instances
    describe_reserved_instances([::AWSConfig], arguments::Dict)
    describe_reserved_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeReservedInstances", arguments::Dict)
    ec2([::AWSConfig], "DescribeReservedInstances", <keyword arguments>)

# DescribeReservedInstances Operation

Describes one or more of the Reserved Instances that you purchased.

For more information about Reserved Instances, see [Reserved Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `availability-zone` - The Availability Zone where the Reserved Instance can be used.

*   `duration` - The duration of the Reserved Instance (one year or three years), in seconds (`31536000` | `94608000`).

*   `end` - The time when the Reserved Instance expires (for example, 2015-08-07T11:54:42.000Z).

*   `fixed-price` - The purchase price of the Reserved Instance (for example, 9800.0).

*   `instance-type` - The instance type that is covered by the reservation.

*   `scope` - The scope of the Reserved Instance (`Region` or `Availability Zone`).

*   `product-description` - The Reserved Instance product platform description. Instances that include `(Amazon VPC)` in the product platform description will only be displayed to EC2-Classic account holders and are for use with Amazon VPC (`Linux/UNIX` | `Linux/UNIX (Amazon VPC)` | `SUSE Linux` | `SUSE Linux (Amazon VPC)` | `Red Hat Enterprise Linux` | `Red Hat Enterprise Linux (Amazon VPC)` | `Windows` | `Windows (Amazon VPC)` | `Windows with SQL Server Standard` | `Windows with SQL Server Standard (Amazon VPC)` | `Windows with SQL Server Web` | `Windows with SQL Server Web (Amazon VPC)` | `Windows with SQL Server Enterprise` | `Windows with SQL Server Enterprise (Amazon VPC)`).

*   `reserved-instances-id` - The ID of the Reserved Instance.

*   `start` - The time at which the Reserved Instance purchase request was placed (for example, 2014-08-07T11:54:42.000Z).

*   `state` - The state of the Reserved Instance (`payment-pending` | `active` | `payment-failed` | `retired`).

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `usage-price` - The usage price of the Reserved Instance, per hour (for example, 0.84).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `OfferingClass = "standard" or "convertible"`
Describes whether the Reserved Instance is Standard or Convertible.


## `ReservedInstancesId = [::String, ...]`
One or more Reserved Instance IDs.

Default: Describes all your Reserved Instances, or only those otherwise specified.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `OfferingType = "Heavy Utilization", "Medium Utilization", "Light Utilization", "No Upfront", "Partial Upfront" or "All Upfront"`
The Reserved Instance offering type. If you are using tools that predate the 2011-11-01 API version, you only have access to the `Medium Utilization` Reserved Instance offering type.




# Returns

`DescribeReservedInstancesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstances)
"""
@inline describe_reserved_instances(aws::AWSConfig=default_aws_config(); args...) = describe_reserved_instances(aws, args)

@inline describe_reserved_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeReservedInstances", args)

@inline describe_reserved_instances(args) = describe_reserved_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_reserved_instances_listings
    describe_reserved_instances_listings([::AWSConfig], arguments::Dict)
    describe_reserved_instances_listings([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeReservedInstancesListings", arguments::Dict)
    ec2([::AWSConfig], "DescribeReservedInstancesListings", <keyword arguments>)

# DescribeReservedInstancesListings Operation

Describes your account's Reserved Instance listings in the Reserved Instance Marketplace.

The Reserved Instance Marketplace matches sellers who want to resell Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.

As a seller, you choose to list some or all of your Reserved Instances, and you specify the upfront price to receive for them. Your Reserved Instances are then listed in the Reserved Instance Marketplace and are available for purchase.

As a buyer, you specify the configuration of the Reserved Instance to purchase, and the Marketplace matches what you're searching for with what's available. The Marketplace first sells the lowest priced Reserved Instances to you, and continues to sell available Reserved Instance listings to you until your demand is met. You are charged based on the total price of all of the listings that you purchase.

For more information, see [Reserved Instance Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `reserved-instances-id` - The ID of the Reserved Instances.

*   `reserved-instances-listing-id` - The ID of the Reserved Instances listing.

*   `status` - The status of the Reserved Instance listing (`pending` | `active` | `cancelled` | `closed`).

*   `status-message` - The reason for the status.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `ReservedInstancesId = ::String`
One or more Reserved Instance IDs.


## `ReservedInstancesListingId = ::String`
One or more Reserved Instance listing IDs.




# Returns

`DescribeReservedInstancesListingsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesListings)
"""
@inline describe_reserved_instances_listings(aws::AWSConfig=default_aws_config(); args...) = describe_reserved_instances_listings(aws, args)

@inline describe_reserved_instances_listings(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeReservedInstancesListings", args)

@inline describe_reserved_instances_listings(args) = describe_reserved_instances_listings(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_reserved_instances_modifications
    describe_reserved_instances_modifications([::AWSConfig], arguments::Dict)
    describe_reserved_instances_modifications([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeReservedInstancesModifications", arguments::Dict)
    ec2([::AWSConfig], "DescribeReservedInstancesModifications", <keyword arguments>)

# DescribeReservedInstancesModifications Operation

Describes the modifications made to your Reserved Instances. If no parameter is specified, information about all your Reserved Instances modification requests is returned. If a modification ID is specified, only information about the specific modification is returned.

For more information, see [Modifying Reserved Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html) in the Amazon Elastic Compute Cloud User Guide.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `client-token` - The idempotency token for the modification request.

*   `create-date` - The time when the modification request was created.

*   `effective-date` - The time when the modification becomes effective.

*   `modification-result.reserved-instances-id` - The ID for the Reserved Instances created as part of the modification request. This ID is only available when the status of the modification is `fulfilled`.

*   `modification-result.target-configuration.availability-zone` - The Availability Zone for the new Reserved Instances.

*   `modification-result.target-configuration.instance-count` - The number of new Reserved Instances.

*   `modification-result.target-configuration.instance-type` - The instance type of the new Reserved Instances.

*   `modification-result.target-configuration.platform` - The network platform of the new Reserved Instances (`EC2-Classic` | `EC2-VPC`).

*   `reserved-instances-id` - The ID of the Reserved Instances modified.

*   `reserved-instances-modification-id` - The ID of the modification request.

*   `status` - The status of the Reserved Instances modification request (`processing` | `fulfilled` | `failed`).

*   `status-message` - The reason for the status.

*   `update-date` - The time when the modification request was last updated.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `ReservedInstancesModificationId = [::String, ...]`
IDs for the submitted modification request.


## `NextToken = ::String`
The token to retrieve the next page of results.




# Returns

`DescribeReservedInstancesModificationsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesModifications)
"""
@inline describe_reserved_instances_modifications(aws::AWSConfig=default_aws_config(); args...) = describe_reserved_instances_modifications(aws, args)

@inline describe_reserved_instances_modifications(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeReservedInstancesModifications", args)

@inline describe_reserved_instances_modifications(args) = describe_reserved_instances_modifications(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_reserved_instances_offerings
    describe_reserved_instances_offerings([::AWSConfig], arguments::Dict)
    describe_reserved_instances_offerings([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeReservedInstancesOfferings", arguments::Dict)
    ec2([::AWSConfig], "DescribeReservedInstancesOfferings", <keyword arguments>)

# DescribeReservedInstancesOfferings Operation

Describes Reserved Instance offerings that are available for purchase. With Reserved Instances, you purchase the right to launch instances for a period of time. During that time period, you do not receive insufficient capacity errors, and you pay a lower usage rate than the rate charged for On-Demand instances for the actual time used.

If you have listed your own Reserved Instances for sale in the Reserved Instance Marketplace, they will be excluded from these results. This is to ensure that you do not purchase your own Reserved Instances.

For more information, see [Reserved Instance Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `AvailabilityZone = ::String`
The Availability Zone in which the Reserved Instance can be used.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `availability-zone` - The Availability Zone where the Reserved Instance can be used.

*   `duration` - The duration of the Reserved Instance (for example, one year or three years), in seconds (`31536000` | `94608000`).

*   `fixed-price` - The purchase price of the Reserved Instance (for example, 9800.0).

*   `instance-type` - The instance type that is covered by the reservation.

*   `marketplace` - Set to `true` to show only Reserved Instance Marketplace offerings. When this filter is not used, which is the default behavior, all offerings from both AWS and the Reserved Instance Marketplace are listed.

*   `product-description` - The Reserved Instance product platform description. Instances that include `(Amazon VPC)` in the product platform description will only be displayed to EC2-Classic account holders and are for use with Amazon VPC. (`Linux/UNIX` | `Linux/UNIX (Amazon VPC)` | `SUSE Linux` | `SUSE Linux (Amazon VPC)` | `Red Hat Enterprise Linux` | `Red Hat Enterprise Linux (Amazon VPC)` | `Windows` | `Windows (Amazon VPC)` | `Windows with SQL Server Standard` | `Windows with SQL Server Standard (Amazon VPC)` | `Windows with SQL Server Web` | `Windows with SQL Server Web (Amazon VPC)` | `Windows with SQL Server Enterprise` | `Windows with SQL Server Enterprise (Amazon VPC)`)

*   `reserved-instances-offering-id` - The Reserved Instances offering ID.

*   `scope` - The scope of the Reserved Instance (`Availability Zone` or `Region`).

*   `usage-price` - The usage price of the Reserved Instance, per hour (for example, 0.84).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `IncludeMarketplace = ::Bool`
Include Reserved Instance Marketplace offerings in the response.


## `InstanceType = "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5.metal", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "r5d.metal", "x1.16xlarge", "x1.32xlarge", "x1e.xlarge", "x1e.2xlarge", "x1e.4xlarge", "x1e.8xlarge", "x1e.16xlarge", "x1e.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "i3.metal", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.18xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.18xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "p3.2xlarge", "p3.8xlarge", "p3.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.12xlarge", "m5.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.12xlarge", "m5d.24xlarge", "h1.2xlarge", "h1.4xlarge", "h1.8xlarge", "h1.16xlarge", "z1d.large", "z1d.xlarge", "z1d.2xlarge", "z1d.3xlarge", "z1d.6xlarge" or "z1d.12xlarge"`
The instance type that the reservation will cover (for example, `m1.small`). For more information, see [Instance Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `MaxDuration = ::Int`
The maximum duration (in seconds) to filter when searching for offerings.

Default: 94608000 (3 years)


## `MaxInstanceCount = ::Int`
The maximum number of instances to filter when searching for offerings.

Default: 20


## `MinDuration = ::Int`
The minimum duration (in seconds) to filter when searching for offerings.

Default: 2592000 (1 month)


## `OfferingClass = "standard" or "convertible"`
The offering class of the Reserved Instance. Can be `standard` or `convertible`.


## `ProductDescription = "Linux/UNIX", "Linux/UNIX (Amazon VPC)", "Windows" or "Windows (Amazon VPC)"`
The Reserved Instance product platform description. Instances that include `(Amazon VPC)` in the description are for use with Amazon VPC.


## `ReservedInstancesOfferingId = [::String, ...]`
One or more Reserved Instances offering IDs.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InstanceTenancy = "default", "dedicated" or "host"`
The tenancy of the instances covered by the reservation. A Reserved Instance with a tenancy of `dedicated` is applied to instances that run in a VPC on single-tenant hardware (i.e., Dedicated Instances).

**Important:** The `host` value cannot be used with this parameter. Use the `default` or `dedicated` values only.

Default: `default`


## `MaxResults = ::Int`
The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. The maximum is 100.

Default: 100


## `NextToken = ::String`
The token to retrieve the next page of results.


## `OfferingType = "Heavy Utilization", "Medium Utilization", "Light Utilization", "No Upfront", "Partial Upfront" or "All Upfront"`
The Reserved Instance offering type. If you are using tools that predate the 2011-11-01 API version, you only have access to the `Medium Utilization` Reserved Instance offering type.




# Returns

`DescribeReservedInstancesOfferingsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesOfferings)
"""
@inline describe_reserved_instances_offerings(aws::AWSConfig=default_aws_config(); args...) = describe_reserved_instances_offerings(aws, args)

@inline describe_reserved_instances_offerings(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeReservedInstancesOfferings", args)

@inline describe_reserved_instances_offerings(args) = describe_reserved_instances_offerings(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_route_tables
    describe_route_tables([::AWSConfig], arguments::Dict)
    describe_route_tables([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeRouteTables", arguments::Dict)
    ec2([::AWSConfig], "DescribeRouteTables", <keyword arguments>)

# DescribeRouteTables Operation

Describes one or more of your route tables.

Each subnet in your VPC must be associated with a route table. If a subnet is not explicitly associated with any route table, it is implicitly associated with the main route table. This command does not return the subnet ID for implicit associations.

For more information about route tables, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `association.route-table-association-id` - The ID of an association ID for the route table.

*   `association.route-table-id` - The ID of the route table involved in the association.

*   `association.subnet-id` - The ID of the subnet involved in the association.

*   `association.main` - Indicates whether the route table is the main route table for the VPC (`true` | `false`). Route tables that do not have an association ID are not returned in the response.

*   `route-table-id` - The ID of the route table.

*   `route.destination-cidr-block` - The IPv4 CIDR range specified in a route in the table.

*   `route.destination-ipv6-cidr-block` - The IPv6 CIDR range specified in a route in the route table.

*   `route.destination-prefix-list-id` - The ID (prefix) of the AWS service specified in a route in the table.

*   `route.egress-only-internet-gateway-id` - The ID of an egress-only Internet gateway specified in a route in the route table.

*   `route.gateway-id` - The ID of a gateway specified in a route in the table.

*   `route.instance-id` - The ID of an instance specified in a route in the table.

*   `route.nat-gateway-id` - The ID of a NAT gateway.

*   `route.origin` - Describes how the route was created. `CreateRouteTable` indicates that the route was automatically created when the route table was created; `CreateRoute` indicates that the route was manually added to the route table; `EnableVgwRoutePropagation` indicates that the route was propagated by route propagation.

*   `route.state` - The state of a route in the route table (`active` | `blackhole`). The blackhole state indicates that the route's target isn't available (for example, the specified gateway isn't attached to the VPC, the specified NAT instance has been terminated, and so on).

*   `route.vpc-peering-connection-id` - The ID of a VPC peering connection specified in a route in the table.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `vpc-id` - The ID of the VPC for the route table.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `RouteTableId = [::String, ...]`
One or more route table IDs.

Default: Describes all your route tables.




# Returns

`DescribeRouteTablesResult`

# Example: To describe a route table

This example describes the specified route table.

Input:
```
[
    "RouteTableIds" => [
        "rtb-1f382e7d"
    ]
]
```

Output:
```
Dict(
    "RouteTables" => [
        Dict(
            "Associations" => [
                Dict(
                    "Main" => true,
                    "RouteTableAssociationId" => "rtbassoc-d8ccddba",
                    "RouteTableId" => "rtb-1f382e7d"
                )
            ],
            "PropagatingVgws" => [

            ],
            "RouteTableId" => "rtb-1f382e7d",
            "Routes" => [
                Dict(
                    "DestinationCidrBlock" => "10.0.0.0/16",
                    "GatewayId" => "local",
                    "State" => "active"
                )
            ],
            "Tags" => [

            ],
            "VpcId" => "vpc-a01106c2"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeRouteTables)
"""
@inline describe_route_tables(aws::AWSConfig=default_aws_config(); args...) = describe_route_tables(aws, args)

@inline describe_route_tables(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeRouteTables", args)

@inline describe_route_tables(args) = describe_route_tables(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_scheduled_instance_availability
    describe_scheduled_instance_availability([::AWSConfig], arguments::Dict)
    describe_scheduled_instance_availability([::AWSConfig]; FirstSlotStartTimeRange=, Recurrence=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeScheduledInstanceAvailability", arguments::Dict)
    ec2([::AWSConfig], "DescribeScheduledInstanceAvailability", FirstSlotStartTimeRange=, Recurrence=, <keyword arguments>)

# DescribeScheduledInstanceAvailability Operation

Finds available schedules that meet the specified criteria.

You can search for an available schedule no more than 3 months in advance. You must meet the minimum required duration of 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.

After you find a schedule that meets your needs, call [PurchaseScheduledInstances](@ref) to purchase Scheduled Instances with that schedule.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `availability-zone` - The Availability Zone (for example, `us-west-2a`).

*   `instance-type` - The instance type (for example, `c4.large`).

*   `network-platform` - The network platform (`EC2-Classic` or `EC2-VPC`).

*   `platform` - The platform (`Linux/UNIX` or `Windows`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `FirstSlotStartTimeRange = [ ... ]` -- *Required*
The time period for the first schedule to start.
```
 FirstSlotStartTimeRange = [
        "EarliestTime" => <required> timestamp,
        "LatestTime" => <required> timestamp
    ]
```

## `MaxResults = ::Int`
The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 300. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `MaxSlotDurationInHours = ::Int`
The maximum available duration, in hours. This value must be greater than `MinSlotDurationInHours` and less than 1,720.


## `MinSlotDurationInHours = ::Int`
The minimum available duration, in hours. The minimum required duration is 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.


## `NextToken = ::String`
The token for the next set of results.


## `Recurrence = [ ... ]` -- *Required*
The schedule recurrence.
```
 Recurrence = [
        "Frequency" =>  ::String,
        "Interval" =>  ::Int,
        "OccurrenceDay" =>  [::Int, ...],
        "OccurrenceRelativeToEnd" =>  ::Bool,
        "OccurrenceUnit" =>  ::String
    ]
```



# Returns

`DescribeScheduledInstanceAvailabilityResult`

# Example: To describe an available schedule

This example describes a schedule that occurs every week on Sunday, starting on the specified date. Note that the output contains a single schedule as an example.

Input:
```
[
    "FirstSlotStartTimeRange" => [
        "EarliestTime" => "2016-01-31T00:00:00Z",
        "LatestTime" => "2016-01-31T04:00:00Z"
    ],
    "Recurrence" => [
        "Frequency" => "Weekly",
        "Interval" => 1,
        "OccurrenceDays" => [
            1
        ]
    ]
]
```

Output:
```
Dict(
    "ScheduledInstanceAvailabilitySet" => [
        Dict(
            "AvailabilityZone" => "us-west-2b",
            "AvailableInstanceCount" => 20,
            "FirstSlotStartTime" => "2016-01-31T00:00:00Z",
            "HourlyPrice" => "0.095",
            "InstanceType" => "c4.large",
            "MaxTermDurationInDays" => 366,
            "MinTermDurationInDays" => 366,
            "NetworkPlatform" => "EC2-VPC",
            "Platform" => "Linux/UNIX",
            "PurchaseToken" => "eyJ2IjoiMSIsInMiOjEsImMiOi...",
            "Recurrence" => Dict(
                "Frequency" => "Weekly",
                "Interval" => 1,
                "OccurrenceDaySet" => [
                    1
                ],
                "OccurrenceRelativeToEnd" => false
            ),
            "SlotDurationInHours" => 23,
            "TotalScheduledInstanceHours" => 1219
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeScheduledInstanceAvailability)
"""
@inline describe_scheduled_instance_availability(aws::AWSConfig=default_aws_config(); args...) = describe_scheduled_instance_availability(aws, args)

@inline describe_scheduled_instance_availability(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeScheduledInstanceAvailability", args)

@inline describe_scheduled_instance_availability(args) = describe_scheduled_instance_availability(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_scheduled_instances
    describe_scheduled_instances([::AWSConfig], arguments::Dict)
    describe_scheduled_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeScheduledInstances", arguments::Dict)
    ec2([::AWSConfig], "DescribeScheduledInstances", <keyword arguments>)

# DescribeScheduledInstances Operation

Describes one or more of your Scheduled Instances.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `availability-zone` - The Availability Zone (for example, `us-west-2a`).

*   `instance-type` - The instance type (for example, `c4.large`).

*   `network-platform` - The network platform (`EC2-Classic` or `EC2-VPC`).

*   `platform` - The platform (`Linux/UNIX` or `Windows`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 100. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `NextToken = ::String`
The token for the next set of results.


## `ScheduledInstanceId = [::String, ...]`
One or more Scheduled Instance IDs.


## `SlotStartTimeRange = [ ... ]`
The time period for the first schedule to start.
```
 SlotStartTimeRange = [
        "EarliestTime" =>  timestamp,
        "LatestTime" =>  timestamp
    ]
```



# Returns

`DescribeScheduledInstancesResult`

# Example: To describe your Scheduled Instances

This example describes the specified Scheduled Instance.

Input:
```
[
    "ScheduledInstanceIds" => [
        "sci-1234-1234-1234-1234-123456789012"
    ]
]
```

Output:
```
Dict(
    "ScheduledInstanceSet" => [
        Dict(
            "AvailabilityZone" => "us-west-2b",
            "CreateDate" => "2016-01-25T21:43:38.612Z",
            "HourlyPrice" => "0.095",
            "InstanceCount" => 1,
            "InstanceType" => "c4.large",
            "NetworkPlatform" => "EC2-VPC",
            "NextSlotStartTime" => "2016-01-31T09:00:00Z",
            "Platform" => "Linux/UNIX",
            "Recurrence" => Dict(
                "Frequency" => "Weekly",
                "Interval" => 1,
                "OccurrenceDaySet" => [
                    1
                ],
                "OccurrenceRelativeToEnd" => false,
                "OccurrenceUnit" => ""
            ),
            "ScheduledInstanceId" => "sci-1234-1234-1234-1234-123456789012",
            "SlotDurationInHours" => 32,
            "TermEndDate" => "2017-01-31T09:00:00Z",
            "TermStartDate" => "2016-01-31T09:00:00Z",
            "TotalScheduledInstanceHours" => 1696
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeScheduledInstances)
"""
@inline describe_scheduled_instances(aws::AWSConfig=default_aws_config(); args...) = describe_scheduled_instances(aws, args)

@inline describe_scheduled_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeScheduledInstances", args)

@inline describe_scheduled_instances(args) = describe_scheduled_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_security_group_references
    describe_security_group_references([::AWSConfig], arguments::Dict)
    describe_security_group_references([::AWSConfig]; GroupId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeSecurityGroupReferences", arguments::Dict)
    ec2([::AWSConfig], "DescribeSecurityGroupReferences", GroupId=, <keyword arguments>)

# DescribeSecurityGroupReferences Operation

[EC2-VPC only] Describes the VPCs on the other side of a VPC peering connection that are referencing the security groups you've specified in this request.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the operation, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.


## `GroupId = [::String, ...]` -- *Required*
One or more security group IDs in your account.




# Returns

`DescribeSecurityGroupReferencesResult`

# Example: To describe security group references

This example describes the security group references for the specified security group.

Input:
```
[
    "GroupId" => [
        "sg-903004f8"
    ]
]
```

Output:
```
Dict(
    "SecurityGroupReferenceSet" => [
        Dict(
            "GroupId" => "sg-903004f8",
            "ReferencingVpcId" => "vpc-1a2b3c4d",
            "VpcPeeringConnectionId" => "pcx-b04deed9"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSecurityGroupReferences)
"""
@inline describe_security_group_references(aws::AWSConfig=default_aws_config(); args...) = describe_security_group_references(aws, args)

@inline describe_security_group_references(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeSecurityGroupReferences", args)

@inline describe_security_group_references(args) = describe_security_group_references(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_security_groups
    describe_security_groups([::AWSConfig], arguments::Dict)
    describe_security_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeSecurityGroups", arguments::Dict)
    ec2([::AWSConfig], "DescribeSecurityGroups", <keyword arguments>)

# DescribeSecurityGroups Operation

Describes one or more of your security groups.

A security group is for use with instances either in the EC2-Classic platform or in a specific VPC. For more information, see [Amazon EC2 Security Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html) in the *Amazon Elastic Compute Cloud User Guide* and [Security Groups for Your VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters. If using multiple filters for rules, the results include security groups for which any combination of rules - not necessarily a single rule - match all filters.

*   `description` - The description of the security group.

*   `egress.ip-permission.cidr` - An IPv4 CIDR block for an outbound security group rule.

*   `egress.ip-permission.from-port` - For an outbound rule, the start of port range for the TCP and UDP protocols, or an ICMP type number.

*   `egress.ip-permission.group-id` - The ID of a security group that has been referenced in an outbound security group rule.

*   `egress.ip-permission.group-name` - The name of a security group that has been referenced in an outbound security group rule.

*   `egress.ip-permission.ipv6-cidr` - An IPv6 CIDR block for an outbound security group rule.

*   `egress.ip-permission.prefix-list-id` - The ID (prefix) of the AWS service to which a security group rule allows outbound access.

*   `egress.ip-permission.protocol` - The IP protocol for an outbound security group rule (`tcp` | `udp` | `icmp` or a protocol number).

*   `egress.ip-permission.to-port` - For an outbound rule, the end of port range for the TCP and UDP protocols, or an ICMP code.

*   `egress.ip-permission.user-id` - The ID of an AWS account that has been referenced in an outbound security group rule.

*   `group-id` - The ID of the security group.

*   `group-name` - The name of the security group.

*   `ip-permission.cidr` - An IPv4 CIDR block for an inbound security group rule.

*   `ip-permission.from-port` - For an inbound rule, the start of port range for the TCP and UDP protocols, or an ICMP type number.

*   `ip-permission.group-id` - The ID of a security group that has been referenced in an inbound security group rule.

*   `ip-permission.group-name` - The name of a security group that has been referenced in an inbound security group rule.

*   `ip-permission.ipv6-cidr` - An IPv6 CIDR block for an inbound security group rule.

*   `ip-permission.prefix-list-id` - The ID (prefix) of the AWS service from which a security group rule allows inbound access.

*   `ip-permission.protocol` - The IP protocol for an inbound security group rule (`tcp` | `udp` | `icmp` or a protocol number).

*   `ip-permission.to-port` - For an inbound rule, the end of port range for the TCP and UDP protocols, or an ICMP code.

*   `ip-permission.user-id` - The ID of an AWS account that has been referenced in an inbound security group rule.

*   `owner-id` - The AWS account ID of the owner of the security group.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `vpc-id` - The ID of the VPC specified when the security group was created.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `GroupId = [::String, ...]`
One or more security group IDs. Required for security groups in a nondefault VPC.

Default: Describes all your security groups.


## `GroupName = [::String, ...]`
[EC2-Classic and default VPC only] One or more security group names. You can specify either the security group name or the security group ID. For security groups in a nondefault VPC, use the `group-name` filter to describe security groups by name.

Default: Describes all your security groups.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `NextToken = ::String`
The token to request the next page of results.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned `NextToken` value. This value can be between 5 and 1000. If this parameter is not specified, then all results are returned.




# Returns

`DescribeSecurityGroupsResult`

# Example: To describe a security group

This example describes the specified security group.

Input:
```
[
    "GroupIds" => [
        "sg-903004f8"
    ]
]
```

Output:
```
Dict(

)
```

# Example: To describe a tagged security group

This example describes the security groups that include the specified tag (Purpose=test).

Input:
```
[
    "Filters" => [
        [
            "Name" => "tag:Purpose",
            "Values" => [
                "test"
            ]
        ]
    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSecurityGroups)
"""
@inline describe_security_groups(aws::AWSConfig=default_aws_config(); args...) = describe_security_groups(aws, args)

@inline describe_security_groups(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeSecurityGroups", args)

@inline describe_security_groups(args) = describe_security_groups(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_snapshot_attribute
    describe_snapshot_attribute([::AWSConfig], arguments::Dict)
    describe_snapshot_attribute([::AWSConfig]; Attribute=, SnapshotId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeSnapshotAttribute", arguments::Dict)
    ec2([::AWSConfig], "DescribeSnapshotAttribute", Attribute=, SnapshotId=, <keyword arguments>)

# DescribeSnapshotAttribute Operation

Describes the specified attribute of the specified snapshot. You can specify only one attribute at a time.

For more information about EBS snapshots, see [Amazon EBS Snapshots](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Attribute = "productCodes" or "createVolumePermission"` -- *Required*
The snapshot attribute you would like to view.


## `SnapshotId = ::String` -- *Required*
The ID of the EBS snapshot.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeSnapshotAttributeResult`

# Example: To describe snapshot attributes

This example describes the ``createVolumePermission`` attribute on a snapshot with the snapshot ID of ``snap-066877671789bd71b``.

Input:
```
[
    "Attribute" => "createVolumePermission",
    "SnapshotId" => "snap-066877671789bd71b"
]
```

Output:
```
Dict(
    "CreateVolumePermissions" => [

    ],
    "SnapshotId" => "snap-066877671789bd71b"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSnapshotAttribute)
"""
@inline describe_snapshot_attribute(aws::AWSConfig=default_aws_config(); args...) = describe_snapshot_attribute(aws, args)

@inline describe_snapshot_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeSnapshotAttribute", args)

@inline describe_snapshot_attribute(args) = describe_snapshot_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_snapshots
    describe_snapshots([::AWSConfig], arguments::Dict)
    describe_snapshots([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeSnapshots", arguments::Dict)
    ec2([::AWSConfig], "DescribeSnapshots", <keyword arguments>)

# DescribeSnapshots Operation

Describes one or more of the EBS snapshots available to you. Available snapshots include public snapshots available for any AWS account to launch, private snapshots that you own, and private snapshots owned by another AWS account but for which you've been given explicit create volume permissions.

The create volume permissions fall into the following categories:

*   *public*: The owner of the snapshot granted create volume permissions for the snapshot to the `all` group. All AWS accounts have create volume permissions for these snapshots.

*   *explicit*: The owner of the snapshot granted create volume permissions to a specific AWS account.

*   *implicit*: An AWS account has implicit create volume permissions for all snapshots it owns.

The list of snapshots returned can be modified by specifying snapshot IDs, snapshot owners, or AWS accounts with create volume permissions. If no options are specified, Amazon EC2 returns all snapshots for which you have create volume permissions.

If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned. If you specify an invalid snapshot ID, an error is returned. If you specify a snapshot ID for which you do not have access, it is not included in the returned results.

If you specify one or more snapshot owners using the `OwnerIds` option, only snapshots from the specified owners and for which you have access are returned. The results can include the AWS account IDs of the specified owners, `amazon` for snapshots owned by Amazon, or `self` for snapshots that you own.

If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are returned. You can specify AWS account IDs (if you own the snapshots), `self` for snapshots for which you own or have explicit permissions, or `all` for public snapshots.

If you are describing a long list of snapshots, you can paginate the output to make the list more manageable. The `MaxResults` parameter sets the maximum number of results returned in a single page. If the list of results exceeds your `MaxResults` value, then that number of results is returned along with a `NextToken` value that can be passed to a subsequent `DescribeSnapshots` request to retrieve the remaining results.

For more information about EBS snapshots, see [Amazon EBS Snapshots](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `description` - A description of the snapshot.

*   `owner-alias` - Value from an Amazon-maintained list (`amazon` | `aws-marketplace` | `microsoft`) of snapshot owners. Not to be confused with the user-configured AWS account alias, which is set from the IAM console.

*   `owner-id` - The ID of the AWS account that owns the snapshot.

*   `progress` - The progress of the snapshot, as a percentage (for example, 80%).

*   `snapshot-id` - The snapshot ID.

*   `start-time` - The time stamp when the snapshot was initiated.

*   `status` - The status of the snapshot (`pending` | `completed` | `error`).

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `volume-id` - The ID of the volume the snapshot is for.

*   `volume-size` - The size of the volume, in GiB.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of snapshot results returned by `DescribeSnapshots` in paginated output. When this parameter is used, `DescribeSnapshots` only returns `MaxResults` results in a single page along with a `NextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeSnapshots` request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned. If this parameter is not used, then `DescribeSnapshots` returns all results. You cannot specify this parameter and the snapshot IDs parameter in the same request.


## `NextToken = ::String`
The `NextToken` value returned from a previous paginated `DescribeSnapshots` request where `MaxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `NextToken` value. This value is `null` when there are no more results to return.


## `Owner = [::String, ...]`
Returns the snapshots owned by the specified owner. Multiple owners can be specified.


## `RestorableBy = [::String, ...]`
One or more AWS accounts IDs that can create volumes from the snapshot.


## `SnapshotId = [::String, ...]`
One or more snapshot IDs.

Default: Describes snapshots for which you have launch permissions.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeSnapshotsResult`

# Example: To describe a snapshot

This example describes a snapshot with the snapshot ID of ``snap-1234567890abcdef0``.

Input:
```
[
    "SnapshotIds" => [
        "snap-1234567890abcdef0"
    ]
]
```

Output:
```
Dict(
    "NextToken" => "",
    "Snapshots" => [
        Dict(
            "Description" => "This is my snapshot.",
            "OwnerId" => "012345678910",
            "Progress" => "100%",
            "SnapshotId" => "snap-1234567890abcdef0",
            "StartTime" => "2014-02-28T21:28:32.000Z",
            "State" => "completed",
            "VolumeId" => "vol-049df61146c4d7901",
            "VolumeSize" => 8
        )
    ]
)
```

# Example: To describe snapshots using filters

This example describes all snapshots owned by the ID 012345678910 that are in the ``pending`` status.

Input:
```
[
    "Filters" => [
        [
            "Name" => "status",
            "Values" => [
                "pending"
            ]
        ]
    ],
    "OwnerIds" => [
        "012345678910"
    ]
]
```

Output:
```
Dict(
    "NextToken" => "",
    "Snapshots" => [
        Dict(
            "Description" => "This is my copied snapshot.",
            "OwnerId" => "012345678910",
            "Progress" => "87%",
            "SnapshotId" => "snap-066877671789bd71b",
            "StartTime" => "2014-02-28T21:37:27.000Z",
            "State" => "pending",
            "VolumeId" => "vol-1234567890abcdef0",
            "VolumeSize" => 8
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSnapshots)
"""
@inline describe_snapshots(aws::AWSConfig=default_aws_config(); args...) = describe_snapshots(aws, args)

@inline describe_snapshots(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeSnapshots", args)

@inline describe_snapshots(args) = describe_snapshots(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_spot_datafeed_subscription
    describe_spot_datafeed_subscription([::AWSConfig], arguments::Dict)
    describe_spot_datafeed_subscription([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeSpotDatafeedSubscription", arguments::Dict)
    ec2([::AWSConfig], "DescribeSpotDatafeedSubscription", <keyword arguments>)

# DescribeSpotDatafeedSubscription Operation

Describes the data feed for Spot Instances. For more information, see [Spot Instance Data Feed](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html) in the *Amazon EC2 User Guide for Linux Instances*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeSpotDatafeedSubscriptionResult`

# Example: To describe the datafeed for your AWS account

This example describes the Spot Instance datafeed subscription for your AWS account.

Output:
```
Dict(
    "SpotDatafeedSubscription" => Dict(
        "Bucket" => "my-s3-bucket",
        "OwnerId" => "123456789012",
        "Prefix" => "spotdata",
        "State" => "Active"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotDatafeedSubscription)
"""
@inline describe_spot_datafeed_subscription(aws::AWSConfig=default_aws_config(); args...) = describe_spot_datafeed_subscription(aws, args)

@inline describe_spot_datafeed_subscription(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeSpotDatafeedSubscription", args)

@inline describe_spot_datafeed_subscription(args) = describe_spot_datafeed_subscription(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_spot_fleet_instances
    describe_spot_fleet_instances([::AWSConfig], arguments::Dict)
    describe_spot_fleet_instances([::AWSConfig]; SpotFleetRequestId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeSpotFleetInstances", arguments::Dict)
    ec2([::AWSConfig], "DescribeSpotFleetInstances", SpotFleetRequestId=, <keyword arguments>)

# DescribeSpotFleetInstances Operation

Describes the running instances for the specified Spot Fleet.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `NextToken = ::String`
The token for the next set of results.


## `SpotFleetRequestId = ::String` -- *Required*
The ID of the Spot Fleet request.




# Returns

`DescribeSpotFleetInstancesResponse`

# Example: To describe the Spot Instances associated with a Spot fleet

This example lists the Spot Instances associated with the specified Spot fleet.

Input:
```
[
    "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
]
```

Output:
```
Dict(
    "ActiveInstances" => [
        Dict(
            "InstanceId" => "i-1234567890abcdef0",
            "InstanceType" => "m3.medium",
            "SpotInstanceRequestId" => "sir-08b93456"
        )
    ],
    "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetInstances)
"""
@inline describe_spot_fleet_instances(aws::AWSConfig=default_aws_config(); args...) = describe_spot_fleet_instances(aws, args)

@inline describe_spot_fleet_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeSpotFleetInstances", args)

@inline describe_spot_fleet_instances(args) = describe_spot_fleet_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_spot_fleet_request_history
    describe_spot_fleet_request_history([::AWSConfig], arguments::Dict)
    describe_spot_fleet_request_history([::AWSConfig]; SpotFleetRequestId=, StartTime=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeSpotFleetRequestHistory", arguments::Dict)
    ec2([::AWSConfig], "DescribeSpotFleetRequestHistory", SpotFleetRequestId=, StartTime=, <keyword arguments>)

# DescribeSpotFleetRequestHistory Operation

Describes the events for the specified Spot Fleet request during the specified time.

Spot Fleet events are delayed by up to 30 seconds before they can be described. This ensures that you can query by the last evaluated time and not miss a recorded event.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `EventType = "instanceChange", "fleetRequestChange" or "error"`
The type of events to describe. By default, all events are described.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `NextToken = ::String`
The token for the next set of results.


## `SpotFleetRequestId = ::String` -- *Required*
The ID of the Spot Fleet request.


## `StartTime = timestamp` -- *Required*
The starting date and time for the events, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z).




# Returns

`DescribeSpotFleetRequestHistoryResponse`

# Example: To describe Spot fleet history

This example returns the history for the specified Spot fleet starting at the specified time.

Input:
```
[
    "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE",
    "StartTime" => "2015-05-26T00:00:00Z"
]
```

Output:
```
Dict(
    "HistoryRecords" => [
        Dict(
            "EventInformation" => Dict(
                "EventSubType" => "submitted"
            ),
            "EventType" => "fleetRequestChange",
            "Timestamp" => "2015-05-26T23:17:20.697Z"
        ),
        Dict(
            "EventInformation" => Dict(
                "EventSubType" => "active"
            ),
            "EventType" => "fleetRequestChange",
            "Timestamp" => "2015-05-26T23:17:20.873Z"
        ),
        Dict(
            "EventInformation" => Dict(
                "EventSubType" => "launched",
                "InstanceId" => "i-1234567890abcdef0"
            ),
            "EventType" => "instanceChange",
            "Timestamp" => "2015-05-26T23:21:21.712Z"
        ),
        Dict(
            "EventInformation" => Dict(
                "EventSubType" => "launched",
                "InstanceId" => "i-1234567890abcdef1"
            ),
            "EventType" => "instanceChange",
            "Timestamp" => "2015-05-26T23:21:21.816Z"
        )
    ],
    "NextToken" => "CpHNsscimcV5oH7bSbub03CI2Qms5+ypNpNm+53MNlR0YcXAkp0xFlfKf91yVxSExmbtma3awYxMFzNA663ZskT0AHtJ6TCb2Z8bQC2EnZgyELbymtWPfpZ1ZbauVg+P+TfGlWxWWB/Vr5dk5d4LfdgA/DRAHUrYgxzrEXAMPLE=",
    "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE",
    "StartTime" => "2015-05-26T00:00:00Z"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetRequestHistory)
"""
@inline describe_spot_fleet_request_history(aws::AWSConfig=default_aws_config(); args...) = describe_spot_fleet_request_history(aws, args)

@inline describe_spot_fleet_request_history(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeSpotFleetRequestHistory", args)

@inline describe_spot_fleet_request_history(args) = describe_spot_fleet_request_history(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_spot_fleet_requests
    describe_spot_fleet_requests([::AWSConfig], arguments::Dict)
    describe_spot_fleet_requests([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeSpotFleetRequests", arguments::Dict)
    ec2([::AWSConfig], "DescribeSpotFleetRequests", <keyword arguments>)

# DescribeSpotFleetRequests Operation

Describes your Spot Fleet requests.

Spot Fleet requests are deleted 48 hours after they are canceled and their instances are terminated.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `NextToken = ::String`
The token for the next set of results.


## `SpotFleetRequestId = [::String, ...]`
The IDs of the Spot Fleet requests.




# Returns

`DescribeSpotFleetRequestsResponse`

# Example: To describe a Spot fleet request

This example describes the specified Spot fleet request.

Input:
```
[
    "SpotFleetRequestIds" => [
        "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
    ]
]
```

Output:
```
Dict(
    "SpotFleetRequestConfigs" => [
        Dict(
            "SpotFleetRequestConfig" => Dict(
                "IamFleetRole" => "arn:aws:iam::123456789012:role/my-spot-fleet-role",
                "LaunchSpecifications" => [
                    Dict(
                        "EbsOptimized" => false,
                        "ImageId" => "ami-1a2b3c4d",
                        "InstanceType" => "cc2.8xlarge",
                        "NetworkInterfaces" => [
                            Dict(
                                "AssociatePublicIpAddress" => true,
                                "DeleteOnTermination" => false,
                                "DeviceIndex" => 0,
                                "SecondaryPrivateIpAddressCount" => 0,
                                "SubnetId" => "subnet-a61dafcf"
                            )
                        ]
                    ),
                    Dict(
                        "EbsOptimized" => false,
                        "ImageId" => "ami-1a2b3c4d",
                        "InstanceType" => "r3.8xlarge",
                        "NetworkInterfaces" => [
                            Dict(
                                "AssociatePublicIpAddress" => true,
                                "DeleteOnTermination" => false,
                                "DeviceIndex" => 0,
                                "SecondaryPrivateIpAddressCount" => 0,
                                "SubnetId" => "subnet-a61dafcf"
                            )
                        ]
                    )
                ],
                "SpotPrice" => "0.05",
                "TargetCapacity" => 20
            ),
            "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE",
            "SpotFleetRequestState" => "active"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetRequests)
"""
@inline describe_spot_fleet_requests(aws::AWSConfig=default_aws_config(); args...) = describe_spot_fleet_requests(aws, args)

@inline describe_spot_fleet_requests(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeSpotFleetRequests", args)

@inline describe_spot_fleet_requests(args) = describe_spot_fleet_requests(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_spot_instance_requests
    describe_spot_instance_requests([::AWSConfig], arguments::Dict)
    describe_spot_instance_requests([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeSpotInstanceRequests", arguments::Dict)
    ec2([::AWSConfig], "DescribeSpotInstanceRequests", <keyword arguments>)

# DescribeSpotInstanceRequests Operation

Describes the specified Spot Instance requests.

You can use `DescribeSpotInstanceRequests` to find a running Spot Instance by examining the response. If the status of the Spot Instance is `fulfilled`, the instance ID appears in the response and contains the identifier of the instance. Alternatively, you can use [DescribeInstances](@ref) with a filter to look for instances where the instance lifecycle is `spot`.

Spot Instance requests are deleted four hours after they are canceled and their instances are terminated.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `availability-zone-group` - The Availability Zone group.

*   `create-time` - The time stamp when the Spot Instance request was created.

*   `fault-code` - The fault code related to the request.

*   `fault-message` - The fault message related to the request.

*   `instance-id` - The ID of the instance that fulfilled the request.

*   `launch-group` - The Spot Instance launch group.

*   `launch.block-device-mapping.delete-on-termination` - Indicates whether the EBS volume is deleted on instance termination.

*   `launch.block-device-mapping.device-name` - The device name for the volume in the block device mapping (for example, `/dev/sdh` or `xvdh`).

*   `launch.block-device-mapping.snapshot-id` - The ID of the snapshot for the EBS volume.

*   `launch.block-device-mapping.volume-size` - The size of the EBS volume, in GiB.

*   `launch.block-device-mapping.volume-type` - The type of EBS volume: `gp2` for General Purpose SSD, `io1` for Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1`for Cold HDD, or `standard` for Magnetic.

*   `launch.group-id` - The ID of the security group for the instance.

*   `launch.group-name` - The name of the security group for the instance.

*   `launch.image-id` - The ID of the AMI.

*   `launch.instance-type` - The type of instance (for example, `m3.medium`).

*   `launch.kernel-id` - The kernel ID.

*   `launch.key-name` - The name of the key pair the instance launched with.

*   `launch.monitoring-enabled` - Whether detailed monitoring is enabled for the Spot Instance.

*   `launch.ramdisk-id` - The RAM disk ID.

*   `launched-availability-zone` - The Availability Zone in which the request is launched.

*   `network-interface.addresses.primary` - Indicates whether the IP address is the primary private IP address.

*   `network-interface.delete-on-termination` - Indicates whether the network interface is deleted when the instance is terminated.

*   `network-interface.description` - A description of the network interface.

*   `network-interface.device-index` - The index of the device for the network interface attachment on the instance.

*   `network-interface.group-id` - The ID of the security group associated with the network interface.

*   `network-interface.network-interface-id` - The ID of the network interface.

*   `network-interface.private-ip-address` - The primary private IP address of the network interface.

*   `network-interface.subnet-id` - The ID of the subnet for the instance.

*   `product-description` - The product description associated with the instance (`Linux/UNIX` | `Windows`).

*   `spot-instance-request-id` - The Spot Instance request ID.

*   `spot-price` - The maximum hourly price for any Spot Instance launched to fulfill the request.

*   `state` - The state of the Spot Instance request (`open` | `active` | `closed` | `cancelled` | `failed`). Spot request status information can help you track your Amazon EC2 Spot Instance requests. For more information, see [Spot Request Status](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html) in the *Amazon EC2 User Guide for Linux Instances*.

*   `status-code` - The short code describing the most recent evaluation of your Spot Instance request.

*   `status-message` - The message explaining the status of the Spot Instance request.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `type` - The type of Spot Instance request (`one-time` | `persistent`).

*   `valid-from` - The start date of the request.

*   `valid-until` - The end date of the request.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `SpotInstanceRequestId = [::String, ...]`
One or more Spot Instance request IDs.




# Returns

`DescribeSpotInstanceRequestsResult`

# Example: To describe a Spot Instance request

This example describes the specified Spot Instance request.

Input:
```
[
    "SpotInstanceRequestIds" => [
        "sir-08b93456"
    ]
]
```

Output:
```
Dict(
    "SpotInstanceRequests" => [
        Dict(
            "CreateTime" => "2014-04-30T18:14:55.000Z",
            "InstanceId" => "i-1234567890abcdef0",
            "LaunchSpecification" => Dict(
                "BlockDeviceMappings" => [
                    Dict(
                        "DeviceName" => "/dev/sda1",
                        "Ebs" => Dict(
                            "DeleteOnTermination" => true,
                            "VolumeSize" => 8,
                            "VolumeType" => "standard"
                        )
                    )
                ],
                "EbsOptimized" => false,
                "ImageId" => "ami-7aba833f",
                "InstanceType" => "m1.small",
                "KeyName" => "my-key-pair",
                "SecurityGroups" => [
                    Dict(
                        "GroupId" => "sg-e38f24a7",
                        "GroupName" => "my-security-group"
                    )
                ]
            ),
            "LaunchedAvailabilityZone" => "us-west-1b",
            "ProductDescription" => "Linux/UNIX",
            "SpotInstanceRequestId" => "sir-08b93456",
            "SpotPrice" => "0.010000",
            "State" => "active",
            "Status" => Dict(
                "Code" => "fulfilled",
                "Message" => "Your Spot request is fulfilled.",
                "UpdateTime" => "2014-04-30T18:16:21.000Z"
            ),
            "Type" => "one-time"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotInstanceRequests)
"""
@inline describe_spot_instance_requests(aws::AWSConfig=default_aws_config(); args...) = describe_spot_instance_requests(aws, args)

@inline describe_spot_instance_requests(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeSpotInstanceRequests", args)

@inline describe_spot_instance_requests(args) = describe_spot_instance_requests(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_spot_price_history
    describe_spot_price_history([::AWSConfig], arguments::Dict)
    describe_spot_price_history([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeSpotPriceHistory", arguments::Dict)
    ec2([::AWSConfig], "DescribeSpotPriceHistory", <keyword arguments>)

# DescribeSpotPriceHistory Operation

Describes the Spot price history. For more information, see [Spot Instance Pricing History](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html) in the *Amazon EC2 User Guide for Linux Instances*.

When you specify a start and end time, this operation returns the prices of the instance types within the time range that you specified and the time when the price changed. The price is valid within the time period that you specified; the response merely indicates the last time that the price changed.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `availability-zone` - The Availability Zone for which prices should be returned.

*   `instance-type` - The type of instance (for example, `m3.medium`).

*   `product-description` - The product description for the Spot price (`Linux/UNIX` | `SUSE Linux` | `Windows` | `Linux/UNIX (Amazon VPC)` | `SUSE Linux (Amazon VPC)` | `Windows (Amazon VPC)`).

*   `spot-price` - The Spot price. The value must match exactly (or use wildcards; greater than or less than comparison is not supported).

*   `timestamp` - The time stamp of the Spot price history, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z). You can use wildcards (* and ?). Greater than or less than comparison is not supported.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `AvailabilityZone = ::String`
Filters the results by the specified Availability Zone.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `EndTime = timestamp`
The date and time, up to the current date, from which to stop retrieving the price history data, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z).


## `InstanceType = ["t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5.metal", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "r5d.metal", "x1.16xlarge", "x1.32xlarge", "x1e.xlarge", "x1e.2xlarge", "x1e.4xlarge", "x1e.8xlarge", "x1e.16xlarge", "x1e.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "i3.metal", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.18xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.18xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "p3.2xlarge", "p3.8xlarge", "p3.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.12xlarge", "m5.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.12xlarge", "m5d.24xlarge", "h1.2xlarge", "h1.4xlarge", "h1.8xlarge", "h1.16xlarge", "z1d.large", "z1d.xlarge", "z1d.2xlarge", "z1d.3xlarge", "z1d.6xlarge" or "z1d.12xlarge", ...]`
Filters the results by the specified instance types.


## `MaxResults = ::Int`
The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `NextToken = ::String`
The token for the next set of results.


## `ProductDescription = [::String, ...]`
Filters the results by the specified basic product descriptions.


## `StartTime = timestamp`
The date and time, up to the past 90 days, from which to start retrieving the price history data, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z).




# Returns

`DescribeSpotPriceHistoryResult`

# Example: To describe Spot price history for Linux/UNIX (Amazon VPC)

This example returns the Spot Price history for m1.xlarge, Linux/UNIX (Amazon VPC) instances for a particular day in January.

Input:
```
[
    "EndTime" => "2014-01-06T08:09:10",
    "InstanceTypes" => [
        "m1.xlarge"
    ],
    "ProductDescriptions" => [
        "Linux/UNIX (Amazon VPC)"
    ],
    "StartTime" => "2014-01-06T07:08:09"
]
```

Output:
```
Dict(
    "SpotPriceHistory" => [
        Dict(
            "AvailabilityZone" => "us-west-1a",
            "InstanceType" => "m1.xlarge",
            "ProductDescription" => "Linux/UNIX (Amazon VPC)",
            "SpotPrice" => "0.080000",
            "Timestamp" => "2014-01-06T04:32:53.000Z"
        ),
        Dict(
            "AvailabilityZone" => "us-west-1c",
            "InstanceType" => "m1.xlarge",
            "ProductDescription" => "Linux/UNIX (Amazon VPC)",
            "SpotPrice" => "0.080000",
            "Timestamp" => "2014-01-05T11:28:26.000Z"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotPriceHistory)
"""
@inline describe_spot_price_history(aws::AWSConfig=default_aws_config(); args...) = describe_spot_price_history(aws, args)

@inline describe_spot_price_history(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeSpotPriceHistory", args)

@inline describe_spot_price_history(args) = describe_spot_price_history(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_stale_security_groups
    describe_stale_security_groups([::AWSConfig], arguments::Dict)
    describe_stale_security_groups([::AWSConfig]; VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeStaleSecurityGroups", arguments::Dict)
    ec2([::AWSConfig], "DescribeStaleSecurityGroups", VpcId=, <keyword arguments>)

# DescribeStaleSecurityGroups Operation

[EC2-VPC only] Describes the stale security group rules for security groups in a specified VPC. Rules are stale when they reference a deleted security group in a peer VPC, or a security group in a peer VPC for which the VPC peering connection has been deleted.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the operation, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.


## `MaxResults = ::Int`
The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a prior call.)


## `VpcId = ::String` -- *Required*
The ID of the VPC.




# Returns

`DescribeStaleSecurityGroupsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeStaleSecurityGroups)
"""
@inline describe_stale_security_groups(aws::AWSConfig=default_aws_config(); args...) = describe_stale_security_groups(aws, args)

@inline describe_stale_security_groups(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeStaleSecurityGroups", args)

@inline describe_stale_security_groups(args) = describe_stale_security_groups(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_subnets
    describe_subnets([::AWSConfig], arguments::Dict)
    describe_subnets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeSubnets", arguments::Dict)
    ec2([::AWSConfig], "DescribeSubnets", <keyword arguments>)

# DescribeSubnets Operation

Describes one or more of your subnets.

For more information about subnets, see [Your VPC and Subnets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `availabilityZone` - The Availability Zone for the subnet. You can also use `availability-zone` as the filter name.

*   `available-ip-address-count` - The number of IPv4 addresses in the subnet that are available.

*   `cidrBlock` - The IPv4 CIDR block of the subnet. The CIDR block you specify must exactly match the subnet's CIDR block for information to be returned for the subnet. You can also use `cidr` or `cidr-block` as the filter names.

*   `defaultForAz` - Indicates whether this is the default subnet for the Availability Zone. You can also use `default-for-az` as the filter name.

*   `ipv6-cidr-block-association.ipv6-cidr-block` - An IPv6 CIDR block associated with the subnet.

*   `ipv6-cidr-block-association.association-id` - An association ID for an IPv6 CIDR block associated with the subnet.

*   `ipv6-cidr-block-association.state` - The state of an IPv6 CIDR block associated with the subnet.

*   `state` - The state of the subnet (`pending` | `available`).

*   `subnet-id` - The ID of the subnet.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `vpc-id` - The ID of the VPC for the subnet.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `SubnetId = [::String, ...]`
One or more subnet IDs.

Default: Describes all your subnets.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeSubnetsResult`

# Example: To describe the subnets for a VPC

This example describes the subnets for the specified VPC.

Input:
```
[
    "Filters" => [
        [
            "Name" => "vpc-id",
            "Values" => [
                "vpc-a01106c2"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "Subnets" => [
        Dict(
            "AvailabilityZone" => "us-east-1c",
            "AvailableIpAddressCount" => 251,
            "CidrBlock" => "10.0.1.0/24",
            "DefaultForAz" => false,
            "MapPublicIpOnLaunch" => false,
            "State" => "available",
            "SubnetId" => "subnet-9d4a7b6c",
            "VpcId" => "vpc-a01106c2"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSubnets)
"""
@inline describe_subnets(aws::AWSConfig=default_aws_config(); args...) = describe_subnets(aws, args)

@inline describe_subnets(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeSubnets", args)

@inline describe_subnets(args) = describe_subnets(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_tags
    describe_tags([::AWSConfig], arguments::Dict)
    describe_tags([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeTags", arguments::Dict)
    ec2([::AWSConfig], "DescribeTags", <keyword arguments>)

# DescribeTags Operation

Describes one or more of the tags for your EC2 resources.

For more information about tags, see [Tagging Your Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `key` - The tag key.

*   `resource-id` - The resource ID.

*   `resource-type` - The resource type (`customer-gateway` | `dhcp-options` | `elastic-ip` | `fleet` | `fpga-image` | `image` | `instance` | `internet-gateway` | `launch-template` | `natgateway` | `network-acl` | `network-interface` | `reserved-instances` | `route-table` | `security-group` | `snapshot` | `spot-instances-request` | `subnet` | `volume` | `vpc` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`).

*   `value` - The tag value.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of results to return in a single call. This value can be between 5 and 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.


## `NextToken = ::String`
The token to retrieve the next page of results.




# Returns

`DescribeTagsResult`

# Example: To describe the tags for a single resource

This example describes the tags for the specified instance.

Input:
```
[
    "Filters" => [
        [
            "Name" => "resource-id",
            "Values" => [
                "i-1234567890abcdef8"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "Tags" => [
        Dict(
            "Key" => "Stack",
            "ResourceId" => "i-1234567890abcdef8",
            "ResourceType" => "instance",
            "Value" => "test"
        ),
        Dict(
            "Key" => "Name",
            "ResourceId" => "i-1234567890abcdef8",
            "ResourceType" => "instance",
            "Value" => "Beta Server"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeTags)
"""
@inline describe_tags(aws::AWSConfig=default_aws_config(); args...) = describe_tags(aws, args)

@inline describe_tags(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeTags", args)

@inline describe_tags(args) = describe_tags(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_volume_attribute
    describe_volume_attribute([::AWSConfig], arguments::Dict)
    describe_volume_attribute([::AWSConfig]; VolumeId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVolumeAttribute", arguments::Dict)
    ec2([::AWSConfig], "DescribeVolumeAttribute", VolumeId=, <keyword arguments>)

# DescribeVolumeAttribute Operation

Describes the specified attribute of the specified volume. You can specify only one attribute at a time.

For more information about EBS volumes, see [Amazon EBS Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Attribute = "autoEnableIO" or "productCodes"`
The attribute of the volume. This parameter is required.


## `VolumeId = ::String` -- *Required*
The ID of the volume.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeVolumeAttributeResult`

# Example: To describe a volume attribute

This example describes the ``autoEnableIo`` attribute of the volume with the ID ``vol-049df61146c4d7901``.

Input:
```
[
    "Attribute" => "autoEnableIO",
    "VolumeId" => "vol-049df61146c4d7901"
]
```

Output:
```
Dict(
    "AutoEnableIO" => Dict(
        "Value" => false
    ),
    "VolumeId" => "vol-049df61146c4d7901"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumeAttribute)
"""
@inline describe_volume_attribute(aws::AWSConfig=default_aws_config(); args...) = describe_volume_attribute(aws, args)

@inline describe_volume_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVolumeAttribute", args)

@inline describe_volume_attribute(args) = describe_volume_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_volume_status
    describe_volume_status([::AWSConfig], arguments::Dict)
    describe_volume_status([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVolumeStatus", arguments::Dict)
    ec2([::AWSConfig], "DescribeVolumeStatus", <keyword arguments>)

# DescribeVolumeStatus Operation

Describes the status of the specified volumes. Volume status provides the result of the checks performed on your volumes to determine events that can impair the performance of your volumes. The performance of a volume can be affected if an issue occurs on the volume's underlying host. If the volume's underlying host experiences a power outage or system issue, after the system is restored, there could be data inconsistencies on the volume. Volume events notify you if this occurs. Volume actions notify you if any action needs to be taken in response to the event.

The `DescribeVolumeStatus` operation provides the following information about the specified volumes:

*Status*: Reflects the current status of the volume. The possible values are `ok`, `impaired` , `warning`, or `insufficient-data`. If all checks pass, the overall status of the volume is `ok`. If the check fails, the overall status is `impaired`. If the status is `insufficient-data`, then the checks may still be taking place on your volume at the time. We recommend that you retry the request. For more information about volume status, see [Monitoring the Status of Your Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html) in the *Amazon Elastic Compute Cloud User Guide*.

*Events*: Reflect the cause of a volume status and may require you to take action. For example, if your volume returns an `impaired` status, then the volume event might be `potential-data-inconsistency`. This means that your volume has been affected by an issue with the underlying host, has all I/O operations disabled, and may have inconsistent data.

*Actions*: Reflect the actions you may have to take in response to an event. For example, if the status of the volume is `impaired` and the volume event shows `potential-data-inconsistency`, then the action shows `enable-volume-io`. This means that you may want to enable the I/O operations for the volume by calling the [EnableVolumeIO](@ref) action and then check the volume for data consistency.

Volume status is based on the volume status checks, and does not reflect the volume state. Therefore, volume status does not indicate volumes in the `error` state (for example, when a volume is incapable of accepting I/O.)

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `action.code` - The action code for the event (for example, `enable-volume-io`).

*   `action.description` - A description of the action.

*   `action.event-id` - The event ID associated with the action.

*   `availability-zone` - The Availability Zone of the instance.

*   `event.description` - A description of the event.

*   `event.event-id` - The event ID.

*   `event.event-type` - The event type (for `io-enabled`: `passed` | `failed`; for `io-performance`: `io-performance:degraded` | `io-performance:severely-degraded` | `io-performance:stalled`).

*   `event.not-after` - The latest end time for the event.

*   `event.not-before` - The earliest start time for the event.

*   `volume-status.details-name` - The cause for `volume-status.status` (`io-enabled` | `io-performance`).

*   `volume-status.details-status` - The status of `volume-status.details-name` (for `io-enabled`: `passed` | `failed`; for `io-performance`: `normal` | `degraded` | `severely-degraded` | `stalled`).

*   `volume-status.status` - The status of the volume (`ok` | `impaired` | `warning` | `insufficient-data`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of volume results returned by `DescribeVolumeStatus` in paginated output. When this parameter is used, the request only returns `MaxResults` results in a single page along with a `NextToken` response element. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned. If this parameter is not used, then `DescribeVolumeStatus` returns all results. You cannot specify this parameter and the volume IDs parameter in the same request.


## `NextToken = ::String`
The `NextToken` value to include in a future `DescribeVolumeStatus` request. When the results of the request exceed `MaxResults`, this value can be used to retrieve the next page of results. This value is `null` when there are no more results to return.


## `VolumeId = [::String, ...]`
One or more volume IDs.

Default: Describes all your volumes.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeVolumeStatusResult`

# Example: To describe the status of a single volume

This example describes the status for the volume ``vol-1234567890abcdef0``.

Input:
```
[
    "VolumeIds" => [
        "vol-1234567890abcdef0"
    ]
]
```

Output:
```
Dict(
    "VolumeStatuses" => [
        Dict(
            "Actions" => [

            ],
            "AvailabilityZone" => "us-east-1a",
            "Events" => [

            ],
            "VolumeId" => "vol-1234567890abcdef0",
            "VolumeStatus" => Dict(
                "Details" => [
                    Dict(
                        "Name" => "io-enabled",
                        "Status" => "passed"
                    ),
                    Dict(
                        "Name" => "io-performance",
                        "Status" => "not-applicable"
                    )
                ],
                "Status" => "ok"
            )
        )
    ]
)
```

# Example: To describe the status of impaired volumes

This example describes the status for all volumes that are impaired. In this example output, there are no impaired volumes.

Input:
```
[
    "Filters" => [
        [
            "Name" => "volume-status.status",
            "Values" => [
                "impaired"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "VolumeStatuses" => [

    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumeStatus)
"""
@inline describe_volume_status(aws::AWSConfig=default_aws_config(); args...) = describe_volume_status(aws, args)

@inline describe_volume_status(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVolumeStatus", args)

@inline describe_volume_status(args) = describe_volume_status(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_volumes
    describe_volumes([::AWSConfig], arguments::Dict)
    describe_volumes([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVolumes", arguments::Dict)
    ec2([::AWSConfig], "DescribeVolumes", <keyword arguments>)

# DescribeVolumes Operation

Describes the specified EBS volumes.

If you are describing a long list of volumes, you can paginate the output to make the list more manageable. The `MaxResults` parameter sets the maximum number of results returned in a single page. If the list of results exceeds your `MaxResults` value, then that number of results is returned along with a `NextToken` value that can be passed to a subsequent `DescribeVolumes` request to retrieve the remaining results.

For more information about EBS volumes, see [Amazon EBS Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `attachment.attach-time` - The time stamp when the attachment initiated.

*   `attachment.delete-on-termination` - Whether the volume is deleted on instance termination.

*   `attachment.device` - The device name specified in the block device mapping (for example, `/dev/sda1`).

*   `attachment.instance-id` - The ID of the instance the volume is attached to.

*   `attachment.status` - The attachment state (`attaching` | `attached` | `detaching`).

*   `availability-zone` - The Availability Zone in which the volume was created.

*   `create-time` - The time stamp when the volume was created.

*   `encrypted` - The encryption status of the volume.

*   `size` - The size of the volume, in GiB.

*   `snapshot-id` - The snapshot from which the volume was created.

*   `status` - The status of the volume (`creating` | `available` | `in-use` | `deleting` | `deleted` | `error`).

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `volume-id` - The volume ID.

*   `volume-type` - The Amazon EBS volume type. This can be `gp2` for General Purpose SSD, `io1` for Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1` for Cold HDD, or `standard` for Magnetic volumes.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `VolumeId = [::String, ...]`
One or more volume IDs.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `MaxResults = ::Int`
The maximum number of volume results returned by `DescribeVolumes` in paginated output. When this parameter is used, `DescribeVolumes` only returns `MaxResults` results in a single page along with a `NextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeVolumes` request with the returned `NextToken` value. This value can be between 5 and 500; if `MaxResults` is given a value larger than 500, only 500 results are returned. If this parameter is not used, then `DescribeVolumes` returns all results. You cannot specify this parameter and the volume IDs parameter in the same request.


## `NextToken = ::String`
The `NextToken` value returned from a previous paginated `DescribeVolumes` request where `MaxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `NextToken` value. This value is `null` when there are no more results to return.




# Returns

`DescribeVolumesResult`

# Example: To describe all volumes

This example describes all of your volumes in the default region.

Input:
```
[

]
```

Output:
```
Dict(
    "NextToken" => "",
    "Volumes" => [
        Dict(
            "Attachments" => [
                Dict(
                    "AttachTime" => "2013-12-18T22:35:00.000Z",
                    "DeleteOnTermination" => true,
                    "Device" => "/dev/sda1",
                    "InstanceId" => "i-1234567890abcdef0",
                    "State" => "attached",
                    "VolumeId" => "vol-049df61146c4d7901"
                )
            ],
            "AvailabilityZone" => "us-east-1a",
            "CreateTime" => "2013-12-18T22:35:00.084Z",
            "Size" => 8,
            "SnapshotId" => "snap-1234567890abcdef0",
            "State" => "in-use",
            "VolumeId" => "vol-049df61146c4d7901",
            "VolumeType" => "standard"
        )
    ]
)
```

# Example: To describe volumes that are attached to a specific instance

This example describes all volumes that are both attached to the instance with the ID i-1234567890abcdef0 and set to delete when the instance terminates.

Input:
```
[
    "Filters" => [
        [
            "Name" => "attachment.instance-id",
            "Values" => [
                "i-1234567890abcdef0"
            ]
        ],
        [
            "Name" => "attachment.delete-on-termination",
            "Values" => [
                "true"
            ]
        ]
    ]
]
```

Output:
```
Dict(
    "Volumes" => [
        Dict(
            "Attachments" => [
                Dict(
                    "AttachTime" => "2013-12-18T22:35:00.000Z",
                    "DeleteOnTermination" => true,
                    "Device" => "/dev/sda1",
                    "InstanceId" => "i-1234567890abcdef0",
                    "State" => "attached",
                    "VolumeId" => "vol-049df61146c4d7901"
                )
            ],
            "AvailabilityZone" => "us-east-1a",
            "CreateTime" => "2013-12-18T22:35:00.084Z",
            "Size" => 8,
            "SnapshotId" => "snap-1234567890abcdef0",
            "State" => "in-use",
            "VolumeId" => "vol-049df61146c4d7901",
            "VolumeType" => "standard"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumes)
"""
@inline describe_volumes(aws::AWSConfig=default_aws_config(); args...) = describe_volumes(aws, args)

@inline describe_volumes(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVolumes", args)

@inline describe_volumes(args) = describe_volumes(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_volumes_modifications
    describe_volumes_modifications([::AWSConfig], arguments::Dict)
    describe_volumes_modifications([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVolumesModifications", arguments::Dict)
    ec2([::AWSConfig], "DescribeVolumesModifications", <keyword arguments>)

# DescribeVolumesModifications Operation

Reports the current modification status of EBS volumes.

Current-generation EBS volumes support modification of attributes including type, size, and (for `io1` volumes) IOPS provisioning while either attached to or detached from an instance. Following an action from the API or the console to modify a volume, the status of the modification may be `modifying`, `optimizing`, `completed`, or `failed`. If a volume has never been modified, then certain elements of the returned `VolumeModification` objects are null.

You can also use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the [Amazon CloudWatch Events User Guide](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). For more information, see [Monitoring Volume Modifications"](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VolumeId = [::String, ...]`
One or more volume IDs for which in-progress modifications will be described.


## `Filter = [[ ... ], ...]`
One or more filters. Supported filters: `volume-id`, `modification-state`, `target-size`, `target-iops`, `target-volume-type`, `original-size`, `original-iops`, `original-volume-type`, `start-time`.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `NextToken = ::String`
The `nextToken` value returned by a previous paginated request.


## `MaxResults = ::Int`
The maximum number of results (up to a limit of 500) to be returned in a paginated request.




# Returns

`DescribeVolumesModificationsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumesModifications)
"""
@inline describe_volumes_modifications(aws::AWSConfig=default_aws_config(); args...) = describe_volumes_modifications(aws, args)

@inline describe_volumes_modifications(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVolumesModifications", args)

@inline describe_volumes_modifications(args) = describe_volumes_modifications(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpc_attribute
    describe_vpc_attribute([::AWSConfig], arguments::Dict)
    describe_vpc_attribute([::AWSConfig]; Attribute=, VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpcAttribute", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpcAttribute", Attribute=, VpcId=, <keyword arguments>)

# DescribeVpcAttribute Operation

Describes the specified attribute of the specified VPC. You can specify only one attribute at a time.

# Arguments

## `Attribute = "enableDnsSupport" or "enableDnsHostnames"` -- *Required*
The VPC attribute.


## `VpcId = ::String` -- *Required*
The ID of the VPC.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeVpcAttributeResult`

# Example: To describe the enableDnsSupport attribute

This example describes the enableDnsSupport attribute. This attribute indicates whether DNS resolution is enabled for the VPC. If this attribute is true, the Amazon DNS server resolves DNS hostnames for your instances to their corresponding IP addresses; otherwise, it does not.

Input:
```
[
    "Attribute" => "enableDnsSupport",
    "VpcId" => "vpc-a01106c2"
]
```

Output:
```
Dict(
    "EnableDnsSupport" => Dict(
        "Value" => true
    ),
    "VpcId" => "vpc-a01106c2"
)
```

# Example: To describe the enableDnsHostnames attribute

This example describes the enableDnsHostnames attribute. This attribute indicates whether the instances launched in the VPC get DNS hostnames. If this attribute is true, instances in the VPC get DNS hostnames; otherwise, they do not.

Input:
```
[
    "Attribute" => "enableDnsHostnames",
    "VpcId" => "vpc-a01106c2"
]
```

Output:
```
Dict(
    "EnableDnsHostnames" => Dict(
        "Value" => true
    ),
    "VpcId" => "vpc-a01106c2"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcAttribute)
"""
@inline describe_vpc_attribute(aws::AWSConfig=default_aws_config(); args...) = describe_vpc_attribute(aws, args)

@inline describe_vpc_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpcAttribute", args)

@inline describe_vpc_attribute(args) = describe_vpc_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpc_classic_link
    describe_vpc_classic_link([::AWSConfig], arguments::Dict)
    describe_vpc_classic_link([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpcClassicLink", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpcClassicLink", <keyword arguments>)

# DescribeVpcClassicLink Operation

Describes the ClassicLink status of one or more VPCs.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `is-classic-link-enabled` - Whether the VPC is enabled for ClassicLink (`true` | `false`).

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcId = [::String, ...]`
One or more VPCs for which you want to describe the ClassicLink status.




# Returns

`DescribeVpcClassicLinkResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcClassicLink)
"""
@inline describe_vpc_classic_link(aws::AWSConfig=default_aws_config(); args...) = describe_vpc_classic_link(aws, args)

@inline describe_vpc_classic_link(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpcClassicLink", args)

@inline describe_vpc_classic_link(args) = describe_vpc_classic_link(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpc_classic_link_dns_support
    describe_vpc_classic_link_dns_support([::AWSConfig], arguments::Dict)
    describe_vpc_classic_link_dns_support([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpcClassicLinkDnsSupport", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpcClassicLinkDnsSupport", <keyword arguments>)

# DescribeVpcClassicLinkDnsSupport Operation

Describes the ClassicLink DNS support status of one or more VPCs. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information, see [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `MaxResults = ::Int`
The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a prior call.)


## `VpcIds = [::String, ...]`
One or more VPC IDs.




# Returns

`DescribeVpcClassicLinkDnsSupportResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcClassicLinkDnsSupport)
"""
@inline describe_vpc_classic_link_dns_support(aws::AWSConfig=default_aws_config(); args...) = describe_vpc_classic_link_dns_support(aws, args)

@inline describe_vpc_classic_link_dns_support(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpcClassicLinkDnsSupport", args)

@inline describe_vpc_classic_link_dns_support(args) = describe_vpc_classic_link_dns_support(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpc_endpoint_connection_notifications
    describe_vpc_endpoint_connection_notifications([::AWSConfig], arguments::Dict)
    describe_vpc_endpoint_connection_notifications([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpcEndpointConnectionNotifications", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpcEndpointConnectionNotifications", <keyword arguments>)

# DescribeVpcEndpointConnectionNotifications Operation

Describes the connection notifications for VPC endpoints and VPC endpoint services.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ConnectionNotificationId = ::String`
The ID of the notification.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `connection-notification-arn` - The ARN of SNS topic for the notification.

*   `connection-notification-id` - The ID of the notification.

*   `connection-notification-state` - The state of the notification (`Enabled` | `Disabled`).

*   `connection-notification-type` - The type of notification (`Topic`).

*   `service-id` - The ID of the endpoint service.

*   `vpc-endpoint-id` - The ID of the VPC endpoint.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned `NextToken` value.


## `NextToken = ::String`
The token to request the next page of results.




# Returns

`DescribeVpcEndpointConnectionNotificationsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcEndpointConnectionNotifications)
"""
@inline describe_vpc_endpoint_connection_notifications(aws::AWSConfig=default_aws_config(); args...) = describe_vpc_endpoint_connection_notifications(aws, args)

@inline describe_vpc_endpoint_connection_notifications(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpcEndpointConnectionNotifications", args)

@inline describe_vpc_endpoint_connection_notifications(args) = describe_vpc_endpoint_connection_notifications(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpc_endpoint_connections
    describe_vpc_endpoint_connections([::AWSConfig], arguments::Dict)
    describe_vpc_endpoint_connections([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpcEndpointConnections", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpcEndpointConnections", <keyword arguments>)

# DescribeVpcEndpointConnections Operation

Describes the VPC endpoint connections to your VPC endpoint services, including any endpoints that are pending your acceptance.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `service-id` - The ID of the service.

*   `vpc-endpoint-owner` - The AWS account number of the owner of the endpoint.

*   `vpc-endpoint-state` - The state of the endpoint (`pendingAcceptance` | `pending` | `available` | `deleting` | `deleted` | `rejected` | `failed`).

*   `vpc-endpoint-id` - The ID of the endpoint.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned.


## `NextToken = ::String`
The token to retrieve the next page of results.




# Returns

`DescribeVpcEndpointConnectionsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcEndpointConnections)
"""
@inline describe_vpc_endpoint_connections(aws::AWSConfig=default_aws_config(); args...) = describe_vpc_endpoint_connections(aws, args)

@inline describe_vpc_endpoint_connections(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpcEndpointConnections", args)

@inline describe_vpc_endpoint_connections(args) = describe_vpc_endpoint_connections(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpc_endpoint_service_configurations
    describe_vpc_endpoint_service_configurations([::AWSConfig], arguments::Dict)
    describe_vpc_endpoint_service_configurations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpcEndpointServiceConfigurations", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpcEndpointServiceConfigurations", <keyword arguments>)

# DescribeVpcEndpointServiceConfigurations Operation

Describes the VPC endpoint service configurations in your account (your services).

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ServiceId = [::String, ...]`
The IDs of one or more services.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `service-name` - The name of the service.

*   `service-id` - The ID of the service.

*   `service-state` - The state of the service (`Pending` | `Available` | `Deleting` | `Deleted` | `Failed`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned.


## `NextToken = ::String`
The token to retrieve the next page of results.




# Returns

`DescribeVpcEndpointServiceConfigurationsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcEndpointServiceConfigurations)
"""
@inline describe_vpc_endpoint_service_configurations(aws::AWSConfig=default_aws_config(); args...) = describe_vpc_endpoint_service_configurations(aws, args)

@inline describe_vpc_endpoint_service_configurations(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpcEndpointServiceConfigurations", args)

@inline describe_vpc_endpoint_service_configurations(args) = describe_vpc_endpoint_service_configurations(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpc_endpoint_service_permissions
    describe_vpc_endpoint_service_permissions([::AWSConfig], arguments::Dict)
    describe_vpc_endpoint_service_permissions([::AWSConfig]; ServiceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpcEndpointServicePermissions", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpcEndpointServicePermissions", ServiceId=, <keyword arguments>)

# DescribeVpcEndpointServicePermissions Operation

Describes the principals (service consumers) that are permitted to discover your VPC endpoint service.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ServiceId = ::String` -- *Required*
The ID of the service.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `principal` - The ARN of the principal.

*   `principal-type` - The principal type (`All` | `Service` | `OrganizationUnit` | `Account` | `User` | `Role`).
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned.


## `NextToken = ::String`
The token to retrieve the next page of results.




# Returns

`DescribeVpcEndpointServicePermissionsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcEndpointServicePermissions)
"""
@inline describe_vpc_endpoint_service_permissions(aws::AWSConfig=default_aws_config(); args...) = describe_vpc_endpoint_service_permissions(aws, args)

@inline describe_vpc_endpoint_service_permissions(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpcEndpointServicePermissions", args)

@inline describe_vpc_endpoint_service_permissions(args) = describe_vpc_endpoint_service_permissions(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpc_endpoint_services
    describe_vpc_endpoint_services([::AWSConfig], arguments::Dict)
    describe_vpc_endpoint_services([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpcEndpointServices", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpcEndpointServices", <keyword arguments>)

# DescribeVpcEndpointServices Operation

Describes available services to which you can create a VPC endpoint.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ServiceName = [::String, ...]`
One or more service names.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `service-name`: The name of the service.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.

Constraint: If the value is greater than 1000, we return only 1000 items.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a prior call.)




# Returns

`DescribeVpcEndpointServicesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcEndpointServices)
"""
@inline describe_vpc_endpoint_services(aws::AWSConfig=default_aws_config(); args...) = describe_vpc_endpoint_services(aws, args)

@inline describe_vpc_endpoint_services(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpcEndpointServices", args)

@inline describe_vpc_endpoint_services(args) = describe_vpc_endpoint_services(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpc_endpoints
    describe_vpc_endpoints([::AWSConfig], arguments::Dict)
    describe_vpc_endpoints([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpcEndpoints", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpcEndpoints", <keyword arguments>)

# DescribeVpcEndpoints Operation

Describes one or more of your VPC endpoints.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcEndpointId = [::String, ...]`
One or more endpoint IDs.


## `Filter = [[ ... ], ...]`
One or more filters.

*   `service-name`: The name of the service.

*   `vpc-id`: The ID of the VPC in which the endpoint resides.

*   `vpc-endpoint-id`: The ID of the endpoint.

*   `vpc-endpoint-state`: The state of the endpoint. (`pending` | `available` | `deleting` | `deleted`)
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.

Constraint: If the value is greater than 1000, we return only 1000 items.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a prior call.)




# Returns

`DescribeVpcEndpointsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcEndpoints)
"""
@inline describe_vpc_endpoints(aws::AWSConfig=default_aws_config(); args...) = describe_vpc_endpoints(aws, args)

@inline describe_vpc_endpoints(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpcEndpoints", args)

@inline describe_vpc_endpoints(args) = describe_vpc_endpoints(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpc_peering_connections
    describe_vpc_peering_connections([::AWSConfig], arguments::Dict)
    describe_vpc_peering_connections([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpcPeeringConnections", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpcPeeringConnections", <keyword arguments>)

# DescribeVpcPeeringConnections Operation

Describes one or more of your VPC peering connections.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `accepter-vpc-info.cidr-block` - The IPv4 CIDR block of the accepter VPC.

*   `accepter-vpc-info.owner-id` - The AWS account ID of the owner of the accepter VPC.

*   `accepter-vpc-info.vpc-id` - The ID of the accepter VPC.

*   `expiration-time` - The expiration date and time for the VPC peering connection.

*   `requester-vpc-info.cidr-block` - The IPv4 CIDR block of the requester's VPC.

*   `requester-vpc-info.owner-id` - The AWS account ID of the owner of the requester VPC.

*   `requester-vpc-info.vpc-id` - The ID of the requester VPC.

*   `status-code` - The status of the VPC peering connection (`pending-acceptance` | `failed` | `expired` | `provisioning` | `active` | `deleting` | `deleted` | `rejected`).

*   `status-message` - A message that provides more information about the status of the VPC peering connection, if applicable.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `vpc-peering-connection-id` - The ID of the VPC peering connection.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcPeeringConnectionId = [::String, ...]`
One or more VPC peering connection IDs.

Default: Describes all your VPC peering connections.




# Returns

`DescribeVpcPeeringConnectionsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcPeeringConnections)
"""
@inline describe_vpc_peering_connections(aws::AWSConfig=default_aws_config(); args...) = describe_vpc_peering_connections(aws, args)

@inline describe_vpc_peering_connections(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpcPeeringConnections", args)

@inline describe_vpc_peering_connections(args) = describe_vpc_peering_connections(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpcs
    describe_vpcs([::AWSConfig], arguments::Dict)
    describe_vpcs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpcs", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpcs", <keyword arguments>)

# DescribeVpcs Operation

Describes one or more of your VPCs.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `cidr` - The primary IPv4 CIDR block of the VPC. The CIDR block you specify must exactly match the VPC's CIDR block for information to be returned for the VPC. Must contain the slash followed by one or two digits (for example, `/28`).

*   `cidr-block-association.cidr-block` - An IPv4 CIDR block associated with the VPC.

*   `cidr-block-association.association-id` - The association ID for an IPv4 CIDR block associated with the VPC.

*   `cidr-block-association.state` - The state of an IPv4 CIDR block associated with the VPC.

*   `dhcp-options-id` - The ID of a set of DHCP options.

*   `ipv6-cidr-block-association.ipv6-cidr-block` - An IPv6 CIDR block associated with the VPC.

*   `ipv6-cidr-block-association.association-id` - The association ID for an IPv6 CIDR block associated with the VPC.

*   `ipv6-cidr-block-association.state` - The state of an IPv6 CIDR block associated with the VPC.

*   `isDefault` - Indicates whether the VPC is the default VPC.

*   `state` - The state of the VPC (`pending` | `available`).

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `vpc-id` - The ID of the VPC.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `VpcId = [::String, ...]`
One or more VPC IDs.

Default: Describes all your VPCs.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeVpcsResult`

# Example: To describe a VPC

This example describes the specified VPC.

Input:
```
[
    "VpcIds" => [
        "vpc-a01106c2"
    ]
]
```

Output:
```
Dict(
    "Vpcs" => [
        Dict(
            "CidrBlock" => "10.0.0.0/16",
            "DhcpOptionsId" => "dopt-7a8b9c2d",
            "InstanceTenancy" => "default",
            "IsDefault" => false,
            "State" => "available",
            "Tags" => [
                Dict(
                    "Key" => "Name",
                    "Value" => "MyVPC"
                )
            ],
            "VpcId" => "vpc-a01106c2"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcs)
"""
@inline describe_vpcs(aws::AWSConfig=default_aws_config(); args...) = describe_vpcs(aws, args)

@inline describe_vpcs(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpcs", args)

@inline describe_vpcs(args) = describe_vpcs(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpn_connections
    describe_vpn_connections([::AWSConfig], arguments::Dict)
    describe_vpn_connections([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpnConnections", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpnConnections", <keyword arguments>)

# DescribeVpnConnections Operation

Describes one or more of your VPN connections.

For more information about VPN connections, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `customer-gateway-configuration` - The configuration information for the customer gateway.

*   `customer-gateway-id` - The ID of a customer gateway associated with the VPN connection.

*   `state` - The state of the VPN connection (`pending` | `available` | `deleting` | `deleted`).

*   `option.static-routes-only` - Indicates whether the connection has static routes only. Used for devices that do not support Border Gateway Protocol (BGP).

*   `route.destination-cidr-block` - The destination CIDR block. This corresponds to the subnet used in a customer data center.

*   `bgp-asn` - The BGP Autonomous System Number (ASN) associated with a BGP device.

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `type` - The type of VPN connection. Currently the only supported type is `ipsec.1`.

*   `vpn-connection-id` - The ID of the VPN connection.

*   `vpn-gateway-id` - The ID of a virtual private gateway associated with the VPN connection.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `VpnConnectionId = [::String, ...]`
One or more VPN connection IDs.

Default: Describes your VPN connections.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeVpnConnectionsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpnConnections)
"""
@inline describe_vpn_connections(aws::AWSConfig=default_aws_config(); args...) = describe_vpn_connections(aws, args)

@inline describe_vpn_connections(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpnConnections", args)

@inline describe_vpn_connections(args) = describe_vpn_connections(default_aws_config(), args)


"""
    using AWSSDK.EC2.describe_vpn_gateways
    describe_vpn_gateways([::AWSConfig], arguments::Dict)
    describe_vpn_gateways([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DescribeVpnGateways", arguments::Dict)
    ec2([::AWSConfig], "DescribeVpnGateways", <keyword arguments>)

# DescribeVpnGateways Operation

Describes one or more of your virtual private gateways.

For more information about virtual private gateways, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `Filter = [[ ... ], ...]`
One or more filters.

*   `amazon-side-asn` - The Autonomous System Number (ASN) for the Amazon side of the gateway.

*   `attachment.state` - The current state of the attachment between the gateway and the VPC (`attaching` | `attached` | `detaching` | `detached`).

*   `attachment.vpc-id` - The ID of an attached VPC.

*   `availability-zone` - The Availability Zone for the virtual private gateway (if applicable).

*   `state` - The state of the virtual private gateway (`pending` | `available` | `deleting` | `deleted`).

*   `tag`:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.

*   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.

*   `type` - The type of virtual private gateway. Currently the only supported type is `ipsec.1`.

*   `vpn-gateway-id` - The ID of the virtual private gateway.
```
 Filter = [[
        "Name" =>  ::String,
        "Value" =>  [::String, ...]
    ], ...]
```

## `VpnGatewayId = [::String, ...]`
One or more virtual private gateway IDs.

Default: Describes all your virtual private gateways.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`DescribeVpnGatewaysResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpnGateways)
"""
@inline describe_vpn_gateways(aws::AWSConfig=default_aws_config(); args...) = describe_vpn_gateways(aws, args)

@inline describe_vpn_gateways(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DescribeVpnGateways", args)

@inline describe_vpn_gateways(args) = describe_vpn_gateways(default_aws_config(), args)


"""
    using AWSSDK.EC2.detach_classic_link_vpc
    detach_classic_link_vpc([::AWSConfig], arguments::Dict)
    detach_classic_link_vpc([::AWSConfig]; InstanceId=, VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DetachClassicLinkVpc", arguments::Dict)
    ec2([::AWSConfig], "DetachClassicLinkVpc", InstanceId=, VpcId=, <keyword arguments>)

# DetachClassicLinkVpc Operation

Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the instance has been unlinked, the VPC security groups are no longer associated with it. An instance is automatically unlinked from a VPC when it's stopped.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InstanceId = ::String` -- *Required*
The ID of the instance to unlink from the VPC.


## `VpcId = ::String` -- *Required*
The ID of the VPC to which the instance is linked.




# Returns

`DetachClassicLinkVpcResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachClassicLinkVpc)
"""
@inline detach_classic_link_vpc(aws::AWSConfig=default_aws_config(); args...) = detach_classic_link_vpc(aws, args)

@inline detach_classic_link_vpc(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DetachClassicLinkVpc", args)

@inline detach_classic_link_vpc(args) = detach_classic_link_vpc(default_aws_config(), args)


"""
    using AWSSDK.EC2.detach_internet_gateway
    detach_internet_gateway([::AWSConfig], arguments::Dict)
    detach_internet_gateway([::AWSConfig]; InternetGatewayId=, VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DetachInternetGateway", arguments::Dict)
    ec2([::AWSConfig], "DetachInternetGateway", InternetGatewayId=, VpcId=, <keyword arguments>)

# DetachInternetGateway Operation

Detaches an Internet gateway from a VPC, disabling connectivity between the Internet and the VPC. The VPC must not contain any running instances with Elastic IP addresses or public IPv4 addresses.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InternetGatewayId = ::String` -- *Required*
The ID of the Internet gateway.


## `VpcId = ::String` -- *Required*
The ID of the VPC.




# Example: To detach an Internet gateway from a VPC

This example detaches the specified Internet gateway from the specified VPC.

Input:
```
[
    "InternetGatewayId" => "igw-c0a643a9",
    "VpcId" => "vpc-a01106c2"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachInternetGateway)
"""
@inline detach_internet_gateway(aws::AWSConfig=default_aws_config(); args...) = detach_internet_gateway(aws, args)

@inline detach_internet_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DetachInternetGateway", args)

@inline detach_internet_gateway(args) = detach_internet_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.detach_network_interface
    detach_network_interface([::AWSConfig], arguments::Dict)
    detach_network_interface([::AWSConfig]; AttachmentId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DetachNetworkInterface", arguments::Dict)
    ec2([::AWSConfig], "DetachNetworkInterface", AttachmentId=, <keyword arguments>)

# DetachNetworkInterface Operation

Detaches a network interface from an instance.

# Arguments

## `AttachmentId = ::String` -- *Required*
The ID of the attachment.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Force = ::Bool`
Specifies whether to force a detachment.




# Example: To detach a network interface from an instance

This example detaches the specified network interface from its attached instance.

Input:
```
[
    "AttachmentId" => "eni-attach-66c4350a"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachNetworkInterface)
"""
@inline detach_network_interface(aws::AWSConfig=default_aws_config(); args...) = detach_network_interface(aws, args)

@inline detach_network_interface(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DetachNetworkInterface", args)

@inline detach_network_interface(args) = detach_network_interface(default_aws_config(), args)


"""
    using AWSSDK.EC2.detach_volume
    detach_volume([::AWSConfig], arguments::Dict)
    detach_volume([::AWSConfig]; VolumeId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DetachVolume", arguments::Dict)
    ec2([::AWSConfig], "DetachVolume", VolumeId=, <keyword arguments>)

# DetachVolume Operation

Detaches an EBS volume from an instance. Make sure to unmount any file systems on the device within your operating system before detaching the volume. Failure to do so can result in the volume becoming stuck in the `busy` state while detaching. If this happens, detachment can be delayed indefinitely until you unmount the volume, force detachment, reboot the instance, or all three. If an EBS volume is the root device of an instance, it can't be detached while the instance is running. To detach the root volume, stop the instance first.

When a volume with an AWS Marketplace product code is detached from an instance, the product code is no longer associated with the instance.

For more information, see [Detaching an Amazon EBS Volume](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Device = ::String`
The device name.


## `Force = ::Bool`
Forces detachment if the previous detachment attempt did not occur cleanly (for example, logging into an instance, unmounting the volume, and detaching normally). This option can lead to data loss or a corrupted file system. Use this option only as a last resort to detach a volume from a failed instance. The instance won't have an opportunity to flush file system caches or file system metadata. If you use this option, you must perform file system check and repair procedures.


## `InstanceId = ::String`
The ID of the instance.


## `VolumeId = ::String` -- *Required*
The ID of the volume.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`VolumeAttachment`

# Example: To detach a volume from an instance

This example detaches the volume (``vol-049df61146c4d7901``) from the instance it is attached to.

Input:
```
[
    "VolumeId" => "vol-1234567890abcdef0"
]
```

Output:
```
Dict(
    "AttachTime" => "2014-02-27T19:23:06.000Z",
    "Device" => "/dev/sdb",
    "InstanceId" => "i-1234567890abcdef0",
    "State" => "detaching",
    "VolumeId" => "vol-049df61146c4d7901"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachVolume)
"""
@inline detach_volume(aws::AWSConfig=default_aws_config(); args...) = detach_volume(aws, args)

@inline detach_volume(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DetachVolume", args)

@inline detach_volume(args) = detach_volume(default_aws_config(), args)


"""
    using AWSSDK.EC2.detach_vpn_gateway
    detach_vpn_gateway([::AWSConfig], arguments::Dict)
    detach_vpn_gateway([::AWSConfig]; VpcId=, VpnGatewayId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DetachVpnGateway", arguments::Dict)
    ec2([::AWSConfig], "DetachVpnGateway", VpcId=, VpnGatewayId=, <keyword arguments>)

# DetachVpnGateway Operation

Detaches a virtual private gateway from a VPC. You do this if you're planning to turn off the VPC and not use it anymore. You can confirm a virtual private gateway has been completely detached from a VPC by describing the virtual private gateway (any attachments to the virtual private gateway are also described).

You must wait for the attachment's state to switch to `detached` before you can delete the VPC or attach a different VPC to the virtual private gateway.

# Arguments

## `VpcId = ::String` -- *Required*
The ID of the VPC.


## `VpnGatewayId = ::String` -- *Required*
The ID of the virtual private gateway.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachVpnGateway)
"""
@inline detach_vpn_gateway(aws::AWSConfig=default_aws_config(); args...) = detach_vpn_gateway(aws, args)

@inline detach_vpn_gateway(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DetachVpnGateway", args)

@inline detach_vpn_gateway(args) = detach_vpn_gateway(default_aws_config(), args)


"""
    using AWSSDK.EC2.disable_vgw_route_propagation
    disable_vgw_route_propagation([::AWSConfig], arguments::Dict)
    disable_vgw_route_propagation([::AWSConfig]; GatewayId=, RouteTableId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DisableVgwRoutePropagation", arguments::Dict)
    ec2([::AWSConfig], "DisableVgwRoutePropagation", GatewayId=, RouteTableId=)

# DisableVgwRoutePropagation Operation

Disables a virtual private gateway (VGW) from propagating routes to a specified route table of a VPC.

# Arguments

## `GatewayId = ::String` -- *Required*
The ID of the virtual private gateway.


## `RouteTableId = ::String` -- *Required*
The ID of the route table.




# Example: To disable route propagation

This example disables the specified virtual private gateway from propagating static routes to the specified route table.

Input:
```
[
    "GatewayId" => "vgw-9a4cacf3",
    "RouteTableId" => "rtb-22574640"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisableVgwRoutePropagation)
"""
@inline disable_vgw_route_propagation(aws::AWSConfig=default_aws_config(); args...) = disable_vgw_route_propagation(aws, args)

@inline disable_vgw_route_propagation(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DisableVgwRoutePropagation", args)

@inline disable_vgw_route_propagation(args) = disable_vgw_route_propagation(default_aws_config(), args)


"""
    using AWSSDK.EC2.disable_vpc_classic_link
    disable_vpc_classic_link([::AWSConfig], arguments::Dict)
    disable_vpc_classic_link([::AWSConfig]; VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DisableVpcClassicLink", arguments::Dict)
    ec2([::AWSConfig], "DisableVpcClassicLink", VpcId=, <keyword arguments>)

# DisableVpcClassicLink Operation

Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC that has EC2-Classic instances linked to it.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcId = ::String` -- *Required*
The ID of the VPC.




# Returns

`DisableVpcClassicLinkResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisableVpcClassicLink)
"""
@inline disable_vpc_classic_link(aws::AWSConfig=default_aws_config(); args...) = disable_vpc_classic_link(aws, args)

@inline disable_vpc_classic_link(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DisableVpcClassicLink", args)

@inline disable_vpc_classic_link(args) = disable_vpc_classic_link(default_aws_config(), args)


"""
    using AWSSDK.EC2.disable_vpc_classic_link_dns_support
    disable_vpc_classic_link_dns_support([::AWSConfig], arguments::Dict)
    disable_vpc_classic_link_dns_support([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DisableVpcClassicLinkDnsSupport", arguments::Dict)
    ec2([::AWSConfig], "DisableVpcClassicLinkDnsSupport", <keyword arguments>)

# DisableVpcClassicLinkDnsSupport Operation

Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames resolve to public IP addresses when addressed between a linked EC2-Classic instance and instances in the VPC to which it's linked. For more information about ClassicLink, see [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `VpcId = ::String`
The ID of the VPC.




# Returns

`DisableVpcClassicLinkDnsSupportResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisableVpcClassicLinkDnsSupport)
"""
@inline disable_vpc_classic_link_dns_support(aws::AWSConfig=default_aws_config(); args...) = disable_vpc_classic_link_dns_support(aws, args)

@inline disable_vpc_classic_link_dns_support(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DisableVpcClassicLinkDnsSupport", args)

@inline disable_vpc_classic_link_dns_support(args) = disable_vpc_classic_link_dns_support(default_aws_config(), args)


"""
    using AWSSDK.EC2.disassociate_address
    disassociate_address([::AWSConfig], arguments::Dict)
    disassociate_address([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DisassociateAddress", arguments::Dict)
    ec2([::AWSConfig], "DisassociateAddress", <keyword arguments>)

# DisassociateAddress Operation

Disassociates an Elastic IP address from the instance or network interface it's associated with.

An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see [Elastic IP Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon Elastic Compute Cloud User Guide*.

This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error.

# Arguments

## `AssociationId = ::String`
[EC2-VPC] The association ID. Required for EC2-VPC.


## `PublicIp = ::String`
[EC2-Classic] The Elastic IP address. Required for EC2-Classic.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To disassociate an Elastic IP address in EC2-VPC

This example disassociates an Elastic IP address from an instance in a VPC.

Input:
```
[
    "AssociationId" => "eipassoc-2bebb745"
]
```

# Example: To disassociate an Elastic IP addresses in EC2-Classic

This example disassociates an Elastic IP address from an instance in EC2-Classic.

Input:
```
[
    "PublicIp" => "198.51.100.0"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateAddress)
"""
@inline disassociate_address(aws::AWSConfig=default_aws_config(); args...) = disassociate_address(aws, args)

@inline disassociate_address(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DisassociateAddress", args)

@inline disassociate_address(args) = disassociate_address(default_aws_config(), args)


"""
    using AWSSDK.EC2.disassociate_iam_instance_profile
    disassociate_iam_instance_profile([::AWSConfig], arguments::Dict)
    disassociate_iam_instance_profile([::AWSConfig]; AssociationId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DisassociateIamInstanceProfile", arguments::Dict)
    ec2([::AWSConfig], "DisassociateIamInstanceProfile", AssociationId=)

# DisassociateIamInstanceProfile Operation

Disassociates an IAM instance profile from a running or stopped instance.

Use [DescribeIamInstanceProfileAssociations](@ref) to get the association ID.

# Arguments

## `AssociationId = ::String` -- *Required*
The ID of the IAM instance profile association.




# Returns

`DisassociateIamInstanceProfileResult`

# Example: To disassociate an IAM instance profile

This example disassociates the specified IAM instance profile from an instance.

Input:
```
[
    "AssociationId" => "iip-assoc-05020b59952902f5f"
]
```

Output:
```
Dict(
    "IamInstanceProfileAssociation" => Dict(
        "AssociationId" => "iip-assoc-05020b59952902f5f",
        "IamInstanceProfile" => Dict(
            "Arn" => "arn:aws:iam::123456789012:instance-profile/admin-role",
            "Id" => "AIPAI5IVIHMFFYY2DKV5Y"
        ),
        "InstanceId" => "i-123456789abcde123",
        "State" => "disassociating"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateIamInstanceProfile)
"""
@inline disassociate_iam_instance_profile(aws::AWSConfig=default_aws_config(); args...) = disassociate_iam_instance_profile(aws, args)

@inline disassociate_iam_instance_profile(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DisassociateIamInstanceProfile", args)

@inline disassociate_iam_instance_profile(args) = disassociate_iam_instance_profile(default_aws_config(), args)


"""
    using AWSSDK.EC2.disassociate_route_table
    disassociate_route_table([::AWSConfig], arguments::Dict)
    disassociate_route_table([::AWSConfig]; AssociationId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DisassociateRouteTable", arguments::Dict)
    ec2([::AWSConfig], "DisassociateRouteTable", AssociationId=, <keyword arguments>)

# DisassociateRouteTable Operation

Disassociates a subnet from a route table.

After you perform this action, the subnet no longer uses the routes in the route table. Instead, it uses the routes in the VPC's main route table. For more information about route tables, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `AssociationId = ::String` -- *Required*
The association ID representing the current association between the route table and subnet.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To disassociate a route table

This example disassociates the specified route table from its associated subnet.

Input:
```
[
    "AssociationId" => "rtbassoc-781d0d1a"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateRouteTable)
"""
@inline disassociate_route_table(aws::AWSConfig=default_aws_config(); args...) = disassociate_route_table(aws, args)

@inline disassociate_route_table(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DisassociateRouteTable", args)

@inline disassociate_route_table(args) = disassociate_route_table(default_aws_config(), args)


"""
    using AWSSDK.EC2.disassociate_subnet_cidr_block
    disassociate_subnet_cidr_block([::AWSConfig], arguments::Dict)
    disassociate_subnet_cidr_block([::AWSConfig]; AssociationId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DisassociateSubnetCidrBlock", arguments::Dict)
    ec2([::AWSConfig], "DisassociateSubnetCidrBlock", AssociationId=)

# DisassociateSubnetCidrBlock Operation

Disassociates a CIDR block from a subnet. Currently, you can disassociate an IPv6 CIDR block only. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it.

# Arguments

## `AssociationId = ::String` -- *Required*
The association ID for the CIDR block.




# Returns

`DisassociateSubnetCidrBlockResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateSubnetCidrBlock)
"""
@inline disassociate_subnet_cidr_block(aws::AWSConfig=default_aws_config(); args...) = disassociate_subnet_cidr_block(aws, args)

@inline disassociate_subnet_cidr_block(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DisassociateSubnetCidrBlock", args)

@inline disassociate_subnet_cidr_block(args) = disassociate_subnet_cidr_block(default_aws_config(), args)


"""
    using AWSSDK.EC2.disassociate_vpc_cidr_block
    disassociate_vpc_cidr_block([::AWSConfig], arguments::Dict)
    disassociate_vpc_cidr_block([::AWSConfig]; AssociationId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "DisassociateVpcCidrBlock", arguments::Dict)
    ec2([::AWSConfig], "DisassociateVpcCidrBlock", AssociationId=)

# DisassociateVpcCidrBlock Operation

Disassociates a CIDR block from a VPC. To disassociate the CIDR block, you must specify its association ID. You can get the association ID by using [DescribeVpcs](@ref). You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it.

You cannot disassociate the CIDR block with which you originally created the VPC (the primary CIDR block).

# Arguments

## `AssociationId = ::String` -- *Required*
The association ID for the CIDR block.




# Returns

`DisassociateVpcCidrBlockResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateVpcCidrBlock)
"""
@inline disassociate_vpc_cidr_block(aws::AWSConfig=default_aws_config(); args...) = disassociate_vpc_cidr_block(aws, args)

@inline disassociate_vpc_cidr_block(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "DisassociateVpcCidrBlock", args)

@inline disassociate_vpc_cidr_block(args) = disassociate_vpc_cidr_block(default_aws_config(), args)


"""
    using AWSSDK.EC2.enable_vgw_route_propagation
    enable_vgw_route_propagation([::AWSConfig], arguments::Dict)
    enable_vgw_route_propagation([::AWSConfig]; GatewayId=, RouteTableId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "EnableVgwRoutePropagation", arguments::Dict)
    ec2([::AWSConfig], "EnableVgwRoutePropagation", GatewayId=, RouteTableId=)

# EnableVgwRoutePropagation Operation

Enables a virtual private gateway (VGW) to propagate routes to the specified route table of a VPC.

# Arguments

## `GatewayId = ::String` -- *Required*
The ID of the virtual private gateway.


## `RouteTableId = ::String` -- *Required*
The ID of the route table.




# Example: To enable route propagation

This example enables the specified virtual private gateway to propagate static routes to the specified route table.

Input:
```
[
    "GatewayId" => "vgw-9a4cacf3",
    "RouteTableId" => "rtb-22574640"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVgwRoutePropagation)
"""
@inline enable_vgw_route_propagation(aws::AWSConfig=default_aws_config(); args...) = enable_vgw_route_propagation(aws, args)

@inline enable_vgw_route_propagation(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "EnableVgwRoutePropagation", args)

@inline enable_vgw_route_propagation(args) = enable_vgw_route_propagation(default_aws_config(), args)


"""
    using AWSSDK.EC2.enable_volume_io
    enable_volume_io([::AWSConfig], arguments::Dict)
    enable_volume_io([::AWSConfig]; VolumeId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "EnableVolumeIO", arguments::Dict)
    ec2([::AWSConfig], "EnableVolumeIO", VolumeId=, <keyword arguments>)

# EnableVolumeIO Operation

Enables I/O operations for a volume that had I/O operations disabled because the data on the volume was potentially inconsistent.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VolumeId = ::String` -- *Required*
The ID of the volume.




# Example: To enable I/O for a volume

This example enables I/O on volume ``vol-1234567890abcdef0``.

Input:
```
[
    "VolumeId" => "vol-1234567890abcdef0"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVolumeIO)
"""
@inline enable_volume_io(aws::AWSConfig=default_aws_config(); args...) = enable_volume_io(aws, args)

@inline enable_volume_io(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "EnableVolumeIO", args)

@inline enable_volume_io(args) = enable_volume_io(default_aws_config(), args)


"""
    using AWSSDK.EC2.enable_vpc_classic_link
    enable_vpc_classic_link([::AWSConfig], arguments::Dict)
    enable_vpc_classic_link([::AWSConfig]; VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "EnableVpcClassicLink", arguments::Dict)
    ec2([::AWSConfig], "EnableVpcClassicLink", VpcId=, <keyword arguments>)

# EnableVpcClassicLink Operation

Enables a VPC for ClassicLink. You can then link EC2-Classic instances to your ClassicLink-enabled VPC to allow communication over private IP addresses. You cannot enable your VPC for ClassicLink if any of your VPC's route tables have existing routes for address ranges within the `10.0.0.0/8` IP address range, excluding local routes for VPCs in the `10.0.0.0/16` and `10.1.0.0/16` IP address ranges. For more information, see [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcId = ::String` -- *Required*
The ID of the VPC.




# Returns

`EnableVpcClassicLinkResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVpcClassicLink)
"""
@inline enable_vpc_classic_link(aws::AWSConfig=default_aws_config(); args...) = enable_vpc_classic_link(aws, args)

@inline enable_vpc_classic_link(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "EnableVpcClassicLink", args)

@inline enable_vpc_classic_link(args) = enable_vpc_classic_link(default_aws_config(), args)


"""
    using AWSSDK.EC2.enable_vpc_classic_link_dns_support
    enable_vpc_classic_link_dns_support([::AWSConfig], arguments::Dict)
    enable_vpc_classic_link_dns_support([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "EnableVpcClassicLinkDnsSupport", arguments::Dict)
    ec2([::AWSConfig], "EnableVpcClassicLinkDnsSupport", <keyword arguments>)

# EnableVpcClassicLinkDnsSupport Operation

Enables a VPC to support DNS hostname resolution for ClassicLink. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information about ClassicLink, see [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `VpcId = ::String`
The ID of the VPC.




# Returns

`EnableVpcClassicLinkDnsSupportResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVpcClassicLinkDnsSupport)
"""
@inline enable_vpc_classic_link_dns_support(aws::AWSConfig=default_aws_config(); args...) = enable_vpc_classic_link_dns_support(aws, args)

@inline enable_vpc_classic_link_dns_support(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "EnableVpcClassicLinkDnsSupport", args)

@inline enable_vpc_classic_link_dns_support(args) = enable_vpc_classic_link_dns_support(default_aws_config(), args)


"""
    using AWSSDK.EC2.get_console_output
    get_console_output([::AWSConfig], arguments::Dict)
    get_console_output([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "GetConsoleOutput", arguments::Dict)
    ec2([::AWSConfig], "GetConsoleOutput", InstanceId=, <keyword arguments>)

# GetConsoleOutput Operation

Gets the console output for the specified instance. For Linux instances, the instance console output displays the exact console output that would normally be displayed on a physical monitor attached to a computer. For Windows instances, the instance console output includes output from the EC2Config service.

[GetConsoleOutput](@ref) returns up to 64 KB of console output shortly after it's generated by the instance.

By default, the console output returns buffered information that was posted shortly after an instance transition state (start, stop, reboot, or terminate). This information is available for at least one hour after the most recent post.

You can optionally retrieve the latest serial console output at any time during the instance lifecycle. This option is only supported on C5, M5, and `i3.metal` instances.

# Arguments

## `InstanceId = ::String` -- *Required*
The ID of the instance.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Latest = ::Bool`
When enabled, retrieves the latest console output for the instance.

Default: disabled (`false`)




# Returns

`GetConsoleOutputResult`

# Example: To get the console output

This example gets the console output for the specified instance.

Input:
```
[
    "InstanceId" => "i-1234567890abcdef0"
]
```

Output:
```
Dict(
    "InstanceId" => "i-1234567890abcdef0",
    "Output" => "...",
    "Timestamp" => "2018-05-25T21:23:53.000Z"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetConsoleOutput)
"""
@inline get_console_output(aws::AWSConfig=default_aws_config(); args...) = get_console_output(aws, args)

@inline get_console_output(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "GetConsoleOutput", args)

@inline get_console_output(args) = get_console_output(default_aws_config(), args)


"""
    using AWSSDK.EC2.get_console_screenshot
    get_console_screenshot([::AWSConfig], arguments::Dict)
    get_console_screenshot([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "GetConsoleScreenshot", arguments::Dict)
    ec2([::AWSConfig], "GetConsoleScreenshot", InstanceId=, <keyword arguments>)

# GetConsoleScreenshot Operation

Retrieve a JPG-format screenshot of a running instance to help with troubleshooting.

The returned content is Base64-encoded.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InstanceId = ::String` -- *Required*
The ID of the instance.


## `WakeUp = ::Bool`
When set to `true`, acts as keystroke input and wakes up an instance that's in standby or "sleep" mode.




# Returns

`GetConsoleScreenshotResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetConsoleScreenshot)
"""
@inline get_console_screenshot(aws::AWSConfig=default_aws_config(); args...) = get_console_screenshot(aws, args)

@inline get_console_screenshot(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "GetConsoleScreenshot", args)

@inline get_console_screenshot(args) = get_console_screenshot(default_aws_config(), args)


"""
    using AWSSDK.EC2.get_host_reservation_purchase_preview
    get_host_reservation_purchase_preview([::AWSConfig], arguments::Dict)
    get_host_reservation_purchase_preview([::AWSConfig]; HostIdSet=, OfferingId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "GetHostReservationPurchasePreview", arguments::Dict)
    ec2([::AWSConfig], "GetHostReservationPurchasePreview", HostIdSet=, OfferingId=)

# GetHostReservationPurchasePreview Operation

Preview a reservation purchase with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation.

This is a preview of the [PurchaseHostReservation](@ref) action and does not result in the offering being purchased.

# Arguments

## `HostIdSet = [::String, ...]` -- *Required*
The IDs of the Dedicated Hosts with which the reservation is associated.


## `OfferingId = ::String` -- *Required*
The offering ID of the reservation.




# Returns

`GetHostReservationPurchasePreviewResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetHostReservationPurchasePreview)
"""
@inline get_host_reservation_purchase_preview(aws::AWSConfig=default_aws_config(); args...) = get_host_reservation_purchase_preview(aws, args)

@inline get_host_reservation_purchase_preview(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "GetHostReservationPurchasePreview", args)

@inline get_host_reservation_purchase_preview(args) = get_host_reservation_purchase_preview(default_aws_config(), args)


"""
    using AWSSDK.EC2.get_launch_template_data
    get_launch_template_data([::AWSConfig], arguments::Dict)
    get_launch_template_data([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "GetLaunchTemplateData", arguments::Dict)
    ec2([::AWSConfig], "GetLaunchTemplateData", InstanceId=, <keyword arguments>)

# GetLaunchTemplateData Operation

Retrieves the configuration data of the specified instance. You can use this data to create a launch template.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InstanceId = ::String` -- *Required*
The ID of the instance.




# Returns

`GetLaunchTemplateDataResult`

# Example: To get the launch template data for an instance 

This example gets the launch template data for the specified instance.

Input:
```
[
    "InstanceId" => "0123d646e8048babc"
]
```

Output:
```
Dict(
    "LaunchTemplateData" => Dict(
        "BlockDeviceMappings" => [
            Dict(
                "DeviceName" => "/dev/xvda",
                "Ebs" => Dict(
                    "DeleteOnTermination" => true,
                    "Encrypted" => false,
                    "Iops" => 100,
                    "SnapshotId" => "snap-02594938353ef77d3",
                    "VolumeSize" => 8,
                    "VolumeType" => "gp2"
                )
            )
        ],
        "EbsOptimized" => false,
        "ImageId" => "ami-32cf7b4a",
        "InstanceType" => "t2.medium",
        "KeyName" => "my-key-pair",
        "Monitoring" => Dict(
            "Enabled" => false
        ),
        "NetworkInterfaces" => [
            Dict(
                "AssociatePublicIpAddress" => false,
                "DeleteOnTermination" => true,
                "Description" => "",
                "DeviceIndex" => 0,
                "Groups" => [
                    "sg-d14e1bb4"
                ],
                "Ipv6Addresses" => [

                ],
                "NetworkInterfaceId" => "eni-4338b5a9",
                "PrivateIpAddress" => "10.0.3.233",
                "PrivateIpAddresses" => [
                    Dict(
                        "Primary" => true,
                        "PrivateIpAddress" => "10.0.3.233"
                    )
                ],
                "SubnetId" => "subnet-5264e837"
            )
        ],
        "Placement" => Dict(
            "AvailabilityZone" => "us-east-2b",
            "GroupName" => "",
            "Tenancy" => "default"
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetLaunchTemplateData)
"""
@inline get_launch_template_data(aws::AWSConfig=default_aws_config(); args...) = get_launch_template_data(aws, args)

@inline get_launch_template_data(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "GetLaunchTemplateData", args)

@inline get_launch_template_data(args) = get_launch_template_data(default_aws_config(), args)


"""
    using AWSSDK.EC2.get_password_data
    get_password_data([::AWSConfig], arguments::Dict)
    get_password_data([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "GetPasswordData", arguments::Dict)
    ec2([::AWSConfig], "GetPasswordData", InstanceId=, <keyword arguments>)

# GetPasswordData Operation

Retrieves the encrypted administrator password for a running Windows instance.

The Windows password is generated at boot by the `EC2Config` service or `EC2Launch` scripts (Windows Server 2016 and later). This usually only happens the first time an instance is launched. For more information, see [EC2Config](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/UsingConfig_WinAMI.html) and [EC2Launch](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2launch.html) in the Amazon Elastic Compute Cloud User Guide.

For the `EC2Config` service, the password is not generated for rebundled AMIs unless `Ec2SetPassword` is enabled before bundling.

The password is encrypted using the key pair that you specified when you launched the instance. You must provide the corresponding key pair file.

When you launch an instance, password generation and encryption may take a few minutes. If you try to retrieve the password before it's available, the output returns an empty string. We recommend that you wait up to 15 minutes after launching an instance before trying to retrieve the generated password.

# Arguments

## `InstanceId = ::String` -- *Required*
The ID of the Windows instance.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`GetPasswordDataResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetPasswordData)
"""
@inline get_password_data(aws::AWSConfig=default_aws_config(); args...) = get_password_data(aws, args)

@inline get_password_data(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "GetPasswordData", args)

@inline get_password_data(args) = get_password_data(default_aws_config(), args)


"""
    using AWSSDK.EC2.get_reserved_instances_exchange_quote
    get_reserved_instances_exchange_quote([::AWSConfig], arguments::Dict)
    get_reserved_instances_exchange_quote([::AWSConfig]; ReservedInstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "GetReservedInstancesExchangeQuote", arguments::Dict)
    ec2([::AWSConfig], "GetReservedInstancesExchangeQuote", ReservedInstanceId=, <keyword arguments>)

# GetReservedInstancesExchangeQuote Operation

Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance. If the exchange cannot be performed, the reason is returned in the response. Use [AcceptReservedInstancesExchangeQuote](@ref) to perform the exchange.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ReservedInstanceId = [::String, ...]` -- *Required*
The IDs of the Convertible Reserved Instances to exchange.


## `TargetConfiguration = [[ ... ], ...]`
The configuration of the target Convertible Reserved Instance to exchange for your current Convertible Reserved Instances.
```
 TargetConfiguration = [[
        "InstanceCount" =>  ::Int,
        "OfferingId" => <required> ::String
    ], ...]
```



# Returns

`GetReservedInstancesExchangeQuoteResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetReservedInstancesExchangeQuote)
"""
@inline get_reserved_instances_exchange_quote(aws::AWSConfig=default_aws_config(); args...) = get_reserved_instances_exchange_quote(aws, args)

@inline get_reserved_instances_exchange_quote(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "GetReservedInstancesExchangeQuote", args)

@inline get_reserved_instances_exchange_quote(args) = get_reserved_instances_exchange_quote(default_aws_config(), args)


"""
    using AWSSDK.EC2.import_image
    import_image([::AWSConfig], arguments::Dict)
    import_image([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ImportImage", arguments::Dict)
    ec2([::AWSConfig], "ImportImage", <keyword arguments>)

# ImportImage Operation

Import single or multi-volume disk images or EBS snapshots into an Amazon Machine Image (AMI). For more information, see [Importing a VM as an Image Using VM Import/Export](http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html) in the *VM Import/Export User Guide*.

# Arguments

## `Architecture = ::String`
The architecture of the virtual machine.

Valid values: `i386` | `x86_64`


## `ClientData = [ ... ]`
The client-specific data.
```
 ClientData = [
        "Comment" =>  ::String,
        "UploadEnd" =>  timestamp,
        "UploadSize" =>  double,
        "UploadStart" =>  timestamp
    ]
```

## `ClientToken = ::String`
The token to enable idempotency for VM import requests.


## `Description = ::String`
A description string for the import image task.


## `DiskContainer = [[ ... ], ...]`
Information about the disk containers.
```
 DiskContainer = [[
        "Description" =>  ::String,
        "DeviceName" =>  ::String,
        "Format" =>  ::String,
        "SnapshotId" =>  ::String,
        "Url" =>  ::String,
        "UserBucket" =>  [
            "S3Bucket" =>  ::String,
            "S3Key" =>  ::String
        ]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Hypervisor = ::String`
The target hypervisor platform.

Valid values: `xen`


## `LicenseType = ::String`
The license type to be used for the Amazon Machine Image (AMI) after importing.

**Note:** You may only use BYOL if you have existing licenses with rights to use these licenses in a third party cloud like AWS. For more information, see [Prerequisites](http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html#prerequisites-image) in the VM Import/Export User Guide.

Valid values: `AWS` | `BYOL`


## `Platform = ::String`
The operating system of the virtual machine.

Valid values: `Windows` | `Linux`


## `RoleName = ::String`
The name of the role to use when not using the default role, 'vmimport'.




# Returns

`ImportImageResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportImage)
"""
@inline import_image(aws::AWSConfig=default_aws_config(); args...) = import_image(aws, args)

@inline import_image(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ImportImage", args)

@inline import_image(args) = import_image(default_aws_config(), args)


"""
    using AWSSDK.EC2.import_instance
    import_instance([::AWSConfig], arguments::Dict)
    import_instance([::AWSConfig]; Platform=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ImportInstance", arguments::Dict)
    ec2([::AWSConfig], "ImportInstance", Platform=, <keyword arguments>)

# ImportInstance Operation

Creates an import instance task using metadata from the specified disk image. `ImportInstance` only supports single-volume VMs. To import multi-volume VMs, use [ImportImage](@ref). For more information, see [Importing a Virtual Machine Using the Amazon EC2 CLI](http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html).

For information about the import manifest referenced by this API action, see [VM Import Manifest](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).

# Arguments

## `Description = ::String`
A description for the instance being imported.


## `DiskImage = [[ ... ], ...]`
The disk image.
```
 DiskImage = [[
        "Description" =>  ::String,
        "Image" =>  [
            "Bytes" => <required> ::Int,
            "Format" => <required> "VMDK", "RAW" or "VHD",
            "ImportManifestUrl" => <required> ::String
        ],
        "Volume" =>  ["Size" => <required> ::Int]
    ], ...]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `LaunchSpecification = [ ... ]`
The launch specification.
```
 LaunchSpecification = [
        "AdditionalInfo" =>  ::String,
        "Architecture" =>  "i386" or "x86_64",
        "GroupId" =>  [::String, ...],
        "GroupName" =>  [::String, ...],
        "InstanceInitiatedShutdownBehavior" =>  "stop" or "terminate",
        "InstanceType" =>  "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5.metal", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "r5d.metal", "x1.16xlarge", "x1.32xlarge", "x1e.xlarge", "x1e.2xlarge", "x1e.4xlarge", "x1e.8xlarge", "x1e.16xlarge", "x1e.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "i3.metal", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.18xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.18xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "p3.2xlarge", "p3.8xlarge", "p3.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.12xlarge", "m5.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.12xlarge", "m5d.24xlarge", "h1.2xlarge", "h1.4xlarge", "h1.8xlarge", "h1.16xlarge", "z1d.large", "z1d.xlarge", "z1d.2xlarge", "z1d.3xlarge", "z1d.6xlarge" or "z1d.12xlarge",
        "Monitoring" =>  ::Bool,
        "Placement" =>  [
            "AvailabilityZone" =>  ::String,
            "Affinity" =>  ::String,
            "GroupName" =>  ::String,
            "HostId" =>  ::String,
            "Tenancy" =>  "default", "dedicated" or "host",
            "SpreadDomain" =>  ::String
        ],
        "PrivateIpAddress" =>  ::String,
        "SubnetId" =>  ::String,
        "UserData" =>  ["Data" =>  ::String]
    ]
```

## `Platform = "Windows"` -- *Required*
The instance operating system.




# Returns

`ImportInstanceResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportInstance)
"""
@inline import_instance(aws::AWSConfig=default_aws_config(); args...) = import_instance(aws, args)

@inline import_instance(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ImportInstance", args)

@inline import_instance(args) = import_instance(default_aws_config(), args)


"""
    using AWSSDK.EC2.import_key_pair
    import_key_pair([::AWSConfig], arguments::Dict)
    import_key_pair([::AWSConfig]; KeyName=, PublicKeyMaterial=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ImportKeyPair", arguments::Dict)
    ec2([::AWSConfig], "ImportKeyPair", KeyName=, PublicKeyMaterial=, <keyword arguments>)

# ImportKeyPair Operation

Imports the public key from an RSA key pair that you created with a third-party tool. Compare this with [CreateKeyPair](@ref), in which AWS creates the key pair and gives the keys to you (AWS keeps a copy of the public key). With ImportKeyPair, you create the key pair and give AWS just the public key. The private key is never transferred between you and AWS.

For more information about key pairs, see [Key Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `KeyName = ::String` -- *Required*
A unique name for the key pair.


## `PublicKeyMaterial = blob` -- *Required*
The public key. For API calls, the text must be base64-encoded. For command line tools, base64 encoding is performed for you.




# Returns

`ImportKeyPairResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportKeyPair)
"""
@inline import_key_pair(aws::AWSConfig=default_aws_config(); args...) = import_key_pair(aws, args)

@inline import_key_pair(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ImportKeyPair", args)

@inline import_key_pair(args) = import_key_pair(default_aws_config(), args)


"""
    using AWSSDK.EC2.import_snapshot
    import_snapshot([::AWSConfig], arguments::Dict)
    import_snapshot([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ImportSnapshot", arguments::Dict)
    ec2([::AWSConfig], "ImportSnapshot", <keyword arguments>)

# ImportSnapshot Operation

Imports a disk into an EBS snapshot.

# Arguments

## `ClientData = [ ... ]`
The client-specific data.
```
 ClientData = [
        "Comment" =>  ::String,
        "UploadEnd" =>  timestamp,
        "UploadSize" =>  double,
        "UploadStart" =>  timestamp
    ]
```

## `ClientToken = ::String`
Token to enable idempotency for VM import requests.


## `Description = ::String`
The description string for the import snapshot task.


## `DiskContainer = [ ... ]`
Information about the disk container.
```
 DiskContainer = [
        "Description" =>  ::String,
        "Format" =>  ::String,
        "Url" =>  ::String,
        "UserBucket" =>  [
            "S3Bucket" =>  ::String,
            "S3Key" =>  ::String
        ]
    ]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `RoleName = ::String`
The name of the role to use when not using the default role, 'vmimport'.




# Returns

`ImportSnapshotResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportSnapshot)
"""
@inline import_snapshot(aws::AWSConfig=default_aws_config(); args...) = import_snapshot(aws, args)

@inline import_snapshot(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ImportSnapshot", args)

@inline import_snapshot(args) = import_snapshot(default_aws_config(), args)


"""
    using AWSSDK.EC2.import_volume
    import_volume([::AWSConfig], arguments::Dict)
    import_volume([::AWSConfig]; AvailabilityZone=, Image=, Volume=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ImportVolume", arguments::Dict)
    ec2([::AWSConfig], "ImportVolume", AvailabilityZone=, Image=, Volume=, <keyword arguments>)

# ImportVolume Operation

Creates an import volume task using metadata from the specified disk image.For more information, see [Importing Disks to Amazon EBS](http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/importing-your-volumes-into-amazon-ebs.html).

For information about the import manifest referenced by this API action, see [VM Import Manifest](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).

# Arguments

## `AvailabilityZone = ::String` -- *Required*
The Availability Zone for the resulting EBS volume.


## `Description = ::String`
A description of the volume.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Image = [ ... ]` -- *Required*
The disk image.
```
 Image = [
        "Bytes" => <required> ::Int,
        "Format" => <required> "VMDK", "RAW" or "VHD",
        "ImportManifestUrl" => <required> ::String
    ]
```

## `Volume = ["Size" => <required> ::Int]` -- *Required*
The volume size.




# Returns

`ImportVolumeResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportVolume)
"""
@inline import_volume(aws::AWSConfig=default_aws_config(); args...) = import_volume(aws, args)

@inline import_volume(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ImportVolume", args)

@inline import_volume(args) = import_volume(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_fleet
    modify_fleet([::AWSConfig], arguments::Dict)
    modify_fleet([::AWSConfig]; FleetId=, TargetCapacitySpecification=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyFleet", arguments::Dict)
    ec2([::AWSConfig], "ModifyFleet", FleetId=, TargetCapacitySpecification=, <keyword arguments>)

# ModifyFleet Operation

Modifies the specified EC2 Fleet.

While the EC2 Fleet is being modified, it is in the `modifying` state.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ExcessCapacityTerminationPolicy = "no-termination" or "termination"`
Indicates whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.


## `FleetId = ::String` -- *Required*
The ID of the EC2 Fleet.


## `TargetCapacitySpecification = [ ... ]` -- *Required*
The size of the EC2 Fleet.
```
 TargetCapacitySpecification = [
        "TotalTargetCapacity" => <required> ::Int,
        "OnDemandTargetCapacity" =>  ::Int,
        "SpotTargetCapacity" =>  ::Int,
        "DefaultTargetCapacityType" =>  "spot" or "on-demand"
    ]
```



# Returns

`ModifyFleetResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyFleet)
"""
@inline modify_fleet(aws::AWSConfig=default_aws_config(); args...) = modify_fleet(aws, args)

@inline modify_fleet(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyFleet", args)

@inline modify_fleet(args) = modify_fleet(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_fpga_image_attribute
    modify_fpga_image_attribute([::AWSConfig], arguments::Dict)
    modify_fpga_image_attribute([::AWSConfig]; FpgaImageId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyFpgaImageAttribute", arguments::Dict)
    ec2([::AWSConfig], "ModifyFpgaImageAttribute", FpgaImageId=, <keyword arguments>)

# ModifyFpgaImageAttribute Operation

Modifies the specified attribute of the specified Amazon FPGA Image (AFI).

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `FpgaImageId = ::String` -- *Required*
The ID of the AFI.


## `Attribute = "description", "name", "loadPermission" or "productCodes"`
The name of the attribute.


## `OperationType = "add" or "remove"`
The operation type.


## `UserId = [::String, ...]`
One or more AWS account IDs. This parameter is valid only when modifying the `loadPermission` attribute.


## `UserGroup = [::String, ...]`
One or more user groups. This parameter is valid only when modifying the `loadPermission` attribute.


## `ProductCode = [::String, ...]`
One or more product codes. After you add a product code to an AFI, it can't be removed. This parameter is valid only when modifying the `productCodes` attribute.


## `LoadPermission = [ ... ]`
The load permission for the AFI.
```
 LoadPermission = [
        "Add" =>  [[
            "Group" =>  "all",
            "UserId" =>  ::String
        ], ...],
        "Remove" =>  [[
            "Group" =>  "all",
            "UserId" =>  ::String
        ], ...]
    ]
```

## `Description = ::String`
A description for the AFI.


## `Name = ::String`
A name for the AFI.




# Returns

`ModifyFpgaImageAttributeResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyFpgaImageAttribute)
"""
@inline modify_fpga_image_attribute(aws::AWSConfig=default_aws_config(); args...) = modify_fpga_image_attribute(aws, args)

@inline modify_fpga_image_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyFpgaImageAttribute", args)

@inline modify_fpga_image_attribute(args) = modify_fpga_image_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_hosts
    modify_hosts([::AWSConfig], arguments::Dict)
    modify_hosts([::AWSConfig]; AutoPlacement=, HostId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyHosts", arguments::Dict)
    ec2([::AWSConfig], "ModifyHosts", AutoPlacement=, HostId=)

# ModifyHosts Operation

Modify the auto-placement setting of a Dedicated Host. When auto-placement is enabled, any instances that you launch with a tenancy of `host` but without a specific host ID are placed onto any available Dedicated Host in your account that has auto-placement enabled. When auto-placement is disabled, you need to provide a host ID ito have the instance launch onto a specific host. If no host ID is provided, the instance is launched onto a suitable host with auto-placement enabled.

# Arguments

## `AutoPlacement = "on" or "off"` -- *Required*
Specify whether to enable or disable auto-placement.


## `HostId = [::String, ...]` -- *Required*
The IDs of the Dedicated Hosts to modify.




# Returns

`ModifyHostsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyHosts)
"""
@inline modify_hosts(aws::AWSConfig=default_aws_config(); args...) = modify_hosts(aws, args)

@inline modify_hosts(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyHosts", args)

@inline modify_hosts(args) = modify_hosts(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_id_format
    modify_id_format([::AWSConfig], arguments::Dict)
    modify_id_format([::AWSConfig]; Resource=, UseLongIds=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyIdFormat", arguments::Dict)
    ec2([::AWSConfig], "ModifyIdFormat", Resource=, UseLongIds=)

# ModifyIdFormat Operation

Modifies the ID format for the specified resource on a per-region basis. You can specify that resources should receive longer IDs (17-character IDs) when they are created.

This request can only be used to modify longer ID settings for resource types that are within the opt-in period. Resources currently in their opt-in period include: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `route-table` | `route-table-association` | `security-group` | `subnet` | `subnet-cidr-block-association` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.

This setting applies to the IAM user who makes the request; it does not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user. If you're using this action as the root user, then these settings apply to the entire account, unless an IAM user explicitly overrides these settings for themselves. For more information, see [Resource IDs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html) in the *Amazon Elastic Compute Cloud User Guide*.

Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant `Describe` command for the resource type.

# Arguments

## `Resource = ::String` -- *Required*
The type of resource: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `route-table` | `route-table-association` | `security-group` | `subnet` | `subnet-cidr-block-association` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.

Alternatively, use the `all-current` option to include all resource types that are currently within their opt-in period for longer IDs.


## `UseLongIds = ::Bool` -- *Required*
Indicate whether the resource should use longer IDs (17-character IDs).




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyIdFormat)
"""
@inline modify_id_format(aws::AWSConfig=default_aws_config(); args...) = modify_id_format(aws, args)

@inline modify_id_format(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyIdFormat", args)

@inline modify_id_format(args) = modify_id_format(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_identity_id_format
    modify_identity_id_format([::AWSConfig], arguments::Dict)
    modify_identity_id_format([::AWSConfig]; PrincipalArn=, Resource=, UseLongIds=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyIdentityIdFormat", arguments::Dict)
    ec2([::AWSConfig], "ModifyIdentityIdFormat", PrincipalArn=, Resource=, UseLongIds=)

# ModifyIdentityIdFormat Operation

Modifies the ID format of a resource for a specified IAM user, IAM role, or the root user for an account; or all IAM users, IAM roles, and the root user for an account. You can specify that resources should receive longer IDs (17-character IDs) when they are created.

This request can only be used to modify longer ID settings for resource types that are within the opt-in period. Resources currently in their opt-in period include: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `route-table` | `route-table-association` | `security-group` | `subnet` | `subnet-cidr-block-association` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.

For more information, see [Resource IDs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html) in the *Amazon Elastic Compute Cloud User Guide*.

This setting applies to the principal specified in the request; it does not apply to the principal that makes the request.

Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant `Describe` command for the resource type.

# Arguments

## `PrincipalArn = ::String` -- *Required*
The ARN of the principal, which can be an IAM user, IAM role, or the root user. Specify `all` to modify the ID format for all IAM users, IAM roles, and the root user of the account.


## `Resource = ::String` -- *Required*
The type of resource: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `route-table` | `route-table-association` | `security-group` | `subnet` | `subnet-cidr-block-association` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.

Alternatively, use the `all-current` option to include all resource types that are currently within their opt-in period for longer IDs.


## `UseLongIds = ::Bool` -- *Required*
Indicates whether the resource should use longer IDs (17-character IDs)




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyIdentityIdFormat)
"""
@inline modify_identity_id_format(aws::AWSConfig=default_aws_config(); args...) = modify_identity_id_format(aws, args)

@inline modify_identity_id_format(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyIdentityIdFormat", args)

@inline modify_identity_id_format(args) = modify_identity_id_format(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_image_attribute
    modify_image_attribute([::AWSConfig], arguments::Dict)
    modify_image_attribute([::AWSConfig]; ImageId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyImageAttribute", arguments::Dict)
    ec2([::AWSConfig], "ModifyImageAttribute", ImageId=, <keyword arguments>)

# ModifyImageAttribute Operation

Modifies the specified attribute of the specified AMI. You can specify only one attribute at a time. You can use the `Attribute` parameter to specify the attribute or one of the following parameters: `Description`, `LaunchPermission`, or `ProductCode`.

AWS Marketplace product codes cannot be modified. Images with an AWS Marketplace product code cannot be made public.

To enable the SriovNetSupport enhanced networking attribute of an image, enable SriovNetSupport on an instance and create an AMI from the instance.

# Arguments

## `Attribute = ::String`
The name of the attribute to modify. The valid values are `description`, `launchPermission`, and `productCodes`.


## `Description = ["Value" =>  ::String]`
A new description for the AMI.


## `ImageId = ::String` -- *Required*
The ID of the AMI.


## `LaunchPermission = [ ... ]`
A new launch permission for the AMI.
```
 LaunchPermission = [
        "Add" =>  [[
            "Group" =>  "all",
            "UserId" =>  ::String
        ], ...],
        "Remove" =>  [[
            "Group" =>  "all",
            "UserId" =>  ::String
        ], ...]
    ]
```

## `OperationType = "add" or "remove"`
The operation type. This parameter can be used only when the `Attribute` parameter is `launchPermission`.


## `ProductCode = [::String, ...]`
One or more DevPay product codes. After you add a product code to an AMI, it can't be removed.


## `UserGroup = [::String, ...]`
One or more user groups. This parameter can be used only when the `Attribute` parameter is `launchPermission`.


## `UserId = [::String, ...]`
One or more AWS account IDs. This parameter can be used only when the `Attribute` parameter is `launchPermission`.


## `Value = ::String`
The value of the attribute being modified. This parameter can be used only when the `Attribute` parameter is `description` or `productCodes`.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To make an AMI public

This example makes the specified AMI public.

Input:
```
[
    "ImageId" => "ami-5731123e",
    "LaunchPermission" => [
        "Add" => [
            [
                "Group" => "all"
            ]
        ]
    ]
]
```

Output:
```
Dict(

)
```

# Example: To grant launch permissions

This example grants launch permissions for the specified AMI to the specified AWS account.

Input:
```
[
    "ImageId" => "ami-5731123e",
    "LaunchPermission" => [
        "Add" => [
            [
                "UserId" => "123456789012"
            ]
        ]
    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyImageAttribute)
"""
@inline modify_image_attribute(aws::AWSConfig=default_aws_config(); args...) = modify_image_attribute(aws, args)

@inline modify_image_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyImageAttribute", args)

@inline modify_image_attribute(args) = modify_image_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_instance_attribute
    modify_instance_attribute([::AWSConfig], arguments::Dict)
    modify_instance_attribute([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyInstanceAttribute", arguments::Dict)
    ec2([::AWSConfig], "ModifyInstanceAttribute", InstanceId=, <keyword arguments>)

# ModifyInstanceAttribute Operation

Modifies the specified attribute of the specified instance. You can specify only one attribute at a time.

**Note:** Using this action to change the security groups associated with an elastic network interface (ENI) attached to an instance in a VPC can result in an error if the instance has more than one ENI. To change the security groups associated with an ENI attached to an instance that has multiple ENIs, we recommend that you use the [ModifyNetworkInterfaceAttribute](@ref) action.

To modify some attributes, the instance must be stopped. For more information, see [Modifying Attributes of a Stopped Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `SourceDestCheck = ["Value" =>  ::Bool]`
Specifies whether source/destination checking is enabled. A value of `true` means that checking is enabled, and `false` means that checking is disabled. This value must be `false` for a NAT instance to perform NAT.


## `Attribute = "instanceType", "kernel", "ramdisk", "userData", "disableApiTermination", "instanceInitiatedShutdownBehavior", "rootDeviceName", "blockDeviceMapping", "productCodes", "sourceDestCheck", "groupSet", "ebsOptimized", "sriovNetSupport" or "enaSupport"`
The name of the attribute.


## `BlockDeviceMapping = [[ ... ], ...]`
Modifies the `DeleteOnTermination` attribute for volumes that are currently attached. The volume must be owned by the caller. If no value is specified for `DeleteOnTermination`, the default is `true` and the volume is deleted when the instance is terminated.

To add instance store volumes to an Amazon EBS-backed instance, you must add them when you launch the instance. For more information, see [Updating the Block Device Mapping when Launching an Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM) in the *Amazon Elastic Compute Cloud User Guide*.
```
 BlockDeviceMapping = [[
        "DeviceName" =>  ::String,
        "Ebs" =>  [
            "DeleteOnTermination" =>  ::Bool,
            "VolumeId" =>  ::String
        ],
        "NoDevice" =>  ::String,
        "VirtualName" =>  ::String
    ], ...]
```

## `DisableApiTermination = ["Value" =>  ::Bool]`
If the value is `true`, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. You cannot use this parameter for Spot Instances.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `EbsOptimized = ["Value" =>  ::Bool]`
Specifies whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.


## `EnaSupport = ["Value" =>  ::Bool]`
Set to `true` to enable enhanced networking with ENA for the instance.

This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.


## `GroupId = [::String, ...]`
[EC2-VPC] Changes the security groups of the instance. You must specify at least one security group, even if it's just the default security group for the VPC. You must specify the security group ID, not the security group name.


## `InstanceId = ::String` -- *Required*
The ID of the instance.


## `InstanceInitiatedShutdownBehavior = ["Value" =>  ::String]`
Specifies whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).


## `InstanceType = ["Value" =>  ::String]`
Changes the instance type to the specified value. For more information, see [Instance Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html). If the instance type is not valid, the error returned is `InvalidInstanceAttributeValue`.


## `Kernel = ["Value" =>  ::String]`
Changes the instance's kernel to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html).


## `Ramdisk = ["Value" =>  ::String]`
Changes the instance's RAM disk to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html).


## `SriovNetSupport = ["Value" =>  ::String]`
Set to `simple` to enable enhanced networking with the Intel 82599 Virtual Function interface for the instance.

There is no way to disable enhanced networking with the Intel 82599 Virtual Function interface at this time.

This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.


## `UserData = ["Value" =>  blob]`
Changes the instance's user data to the specified value. If you are using an AWS SDK or command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text.


## `Value = ::String`
A new value for the attribute. Use only with the `kernel`, `ramdisk`, `userData`, `disableApiTermination`, or `instanceInitiatedShutdownBehavior` attribute.




# Example: To modify the instance type

This example modifies the instance type of the specified stopped instance.

Input:
```
[
    "InstanceId" => "i-1234567890abcdef0",
    "InstanceType" => [
        "Value" => "m5.large"
    ]
]
```

Output:
```
Dict(

)
```

# Example: To enable enhanced networking

This example enables enhanced networking for the specified stopped instance.

Input:
```
[
    "EnaSupport" => [
        "Value" => true
    ],
    "InstanceId" => "i-1234567890abcdef0"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyInstanceAttribute)
"""
@inline modify_instance_attribute(aws::AWSConfig=default_aws_config(); args...) = modify_instance_attribute(aws, args)

@inline modify_instance_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyInstanceAttribute", args)

@inline modify_instance_attribute(args) = modify_instance_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_instance_credit_specification
    modify_instance_credit_specification([::AWSConfig], arguments::Dict)
    modify_instance_credit_specification([::AWSConfig]; InstanceCreditSpecification=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyInstanceCreditSpecification", arguments::Dict)
    ec2([::AWSConfig], "ModifyInstanceCreditSpecification", InstanceCreditSpecification=, <keyword arguments>)

# ModifyInstanceCreditSpecification Operation

Modifies the credit option for CPU usage on a running or stopped T2 instance. The credit options are `standard` and `unlimited`.

For more information, see [T2 Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/t2-instances.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ClientToken = ::String`
A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


## `InstanceCreditSpecification = [[ ... ], ...]` -- *Required*
Information about the credit option for CPU usage.
```
 InstanceCreditSpecification = [[
        "InstanceId" =>  ::String,
        "CpuCredits" =>  ::String
    ], ...]
```



# Returns

`ModifyInstanceCreditSpecificationResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyInstanceCreditSpecification)
"""
@inline modify_instance_credit_specification(aws::AWSConfig=default_aws_config(); args...) = modify_instance_credit_specification(aws, args)

@inline modify_instance_credit_specification(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyInstanceCreditSpecification", args)

@inline modify_instance_credit_specification(args) = modify_instance_credit_specification(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_instance_placement
    modify_instance_placement([::AWSConfig], arguments::Dict)
    modify_instance_placement([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyInstancePlacement", arguments::Dict)
    ec2([::AWSConfig], "ModifyInstancePlacement", InstanceId=, <keyword arguments>)

# ModifyInstancePlacement Operation

Modifies the placement attributes for a specified instance. You can do the following:

*   Modify the affinity between an instance and a [Dedicated Host](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html). When affinity is set to `host` and the instance is not associated with a specific Dedicated Host, the next time the instance is launched, it is automatically associated with the host on which it lands. If the instance is restarted or rebooted, this relationship persists.

*   Change the Dedicated Host with which an instance is associated.

*   Change the instance tenancy of an instance from `host` to `dedicated`, or from `dedicated` to `host`.

*   Move an instance to or from a [placement group](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html).

At least one attribute for affinity, host ID, tenancy, or placement group name must be specified in the request. Affinity and tenancy can be modified in the same request.

To modify the host ID, tenancy, or placement group for an instance, the instance must be in the `stopped` state.

# Arguments

## `Affinity = "default" or "host"`
The affinity setting for the instance.


## `GroupName = ::String`
The name of the placement group in which to place the instance. For spread placement groups, the instance must have a tenancy of `default`. For cluster placement groups, the instance must have a tenancy of `default` or `dedicated`.

To remove an instance from a placement group, specify an empty string ("").


## `HostId = ::String`
The ID of the Dedicated Host with which to associate the instance.


## `InstanceId = ::String` -- *Required*
The ID of the instance that you are modifying.


## `Tenancy = "dedicated" or "host"`
The tenancy for the instance.




# Returns

`ModifyInstancePlacementResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyInstancePlacement)
"""
@inline modify_instance_placement(aws::AWSConfig=default_aws_config(); args...) = modify_instance_placement(aws, args)

@inline modify_instance_placement(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyInstancePlacement", args)

@inline modify_instance_placement(args) = modify_instance_placement(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_launch_template
    modify_launch_template([::AWSConfig], arguments::Dict)
    modify_launch_template([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyLaunchTemplate", arguments::Dict)
    ec2([::AWSConfig], "ModifyLaunchTemplate", <keyword arguments>)

# ModifyLaunchTemplate Operation

Modifies a launch template. You can specify which version of the launch template to set as the default version. When launching an instance, the default version applies when a launch template version is not specified.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


## `LaunchTemplateId = ::String`
The ID of the launch template. You must specify either the launch template ID or launch template name in the request.


## `LaunchTemplateName = ::String`
The name of the launch template. You must specify either the launch template ID or launch template name in the request.


## `SetDefaultVersion = ::String`
The version number of the launch template to set as the default version.




# Returns

`ModifyLaunchTemplateResult`

# Example: To change the default version of a launch template

This example specifies version 2 as the default version of the specified launch template.

Input:
```
[
    "DefaultVersion" => "2",
    "LaunchTemplateId" => "lt-0abcd290751193123"
]
```

Output:
```
Dict(
    "LaunchTemplate" => Dict(
        "CreateTime" => "2017-12-01T13:35:46.000Z",
        "CreatedBy" => "arn:aws:iam::123456789012:root",
        "DefaultVersionNumber" => 2,
        "LatestVersionNumber" => 2,
        "LaunchTemplateId" => "lt-0abcd290751193123",
        "LaunchTemplateName" => "WebServers"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyLaunchTemplate)
"""
@inline modify_launch_template(aws::AWSConfig=default_aws_config(); args...) = modify_launch_template(aws, args)

@inline modify_launch_template(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyLaunchTemplate", args)

@inline modify_launch_template(args) = modify_launch_template(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_network_interface_attribute
    modify_network_interface_attribute([::AWSConfig], arguments::Dict)
    modify_network_interface_attribute([::AWSConfig]; NetworkInterfaceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyNetworkInterfaceAttribute", arguments::Dict)
    ec2([::AWSConfig], "ModifyNetworkInterfaceAttribute", NetworkInterfaceId=, <keyword arguments>)

# ModifyNetworkInterfaceAttribute Operation

Modifies the specified network interface attribute. You can specify only one attribute at a time.

# Arguments

## `Attachment = [ ... ]`
Information about the interface attachment. If modifying the 'delete on termination' attribute, you must specify the ID of the interface attachment.
```
 Attachment = [
        "AttachmentId" =>  ::String,
        "DeleteOnTermination" =>  ::Bool
    ]
```

## `Description = ["Value" =>  ::String]`
A description for the network interface.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `SecurityGroupId = [::String, ...]`
Changes the security groups for the network interface. The new set of groups you specify replaces the current set. You must specify at least one group, even if it's just the default security group in the VPC. You must specify the ID of the security group, not the name.


## `NetworkInterfaceId = ::String` -- *Required*
The ID of the network interface.


## `SourceDestCheck = ["Value" =>  ::Bool]`
Indicates whether source/destination checking is enabled. A value of `true` means checking is enabled, and `false` means checking is disabled. This value must be `false` for a NAT instance to perform NAT. For more information, see [NAT Instances](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html) in the *Amazon Virtual Private Cloud User Guide*.




# Example: To modify the attachment attribute of a network interface

This example modifies the attachment attribute of the specified network interface.

Input:
```
[
    "Attachment" => [
        "AttachmentId" => "eni-attach-43348162",
        "DeleteOnTermination" => false
    ],
    "NetworkInterfaceId" => "eni-686ea200"
]
```

# Example: To modify the description attribute of a network interface

This example modifies the description attribute of the specified network interface.

Input:
```
[
    "Description" => [
        "Value" => "My description"
    ],
    "NetworkInterfaceId" => "eni-686ea200"
]
```

# Example: To modify the groupSet attribute of a network interface

This example command modifies the groupSet attribute of the specified network interface.

Input:
```
[
    "Groups" => [
        "sg-903004f8",
        "sg-1a2b3c4d"
    ],
    "NetworkInterfaceId" => "eni-686ea200"
]
```

# Example: To modify the sourceDestCheck attribute of a network interface

This example command modifies the sourceDestCheck attribute of the specified network interface.

Input:
```
[
    "NetworkInterfaceId" => "eni-686ea200",
    "SourceDestCheck" => [
        "Value" => false
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyNetworkInterfaceAttribute)
"""
@inline modify_network_interface_attribute(aws::AWSConfig=default_aws_config(); args...) = modify_network_interface_attribute(aws, args)

@inline modify_network_interface_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyNetworkInterfaceAttribute", args)

@inline modify_network_interface_attribute(args) = modify_network_interface_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_reserved_instances
    modify_reserved_instances([::AWSConfig], arguments::Dict)
    modify_reserved_instances([::AWSConfig]; ReservedInstancesId=, ReservedInstancesConfigurationSetItemType=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyReservedInstances", arguments::Dict)
    ec2([::AWSConfig], "ModifyReservedInstances", ReservedInstancesId=, ReservedInstancesConfigurationSetItemType=, <keyword arguments>)

# ModifyReservedInstances Operation

Modifies the Availability Zone, instance count, instance type, or network platform (EC2-Classic or EC2-VPC) of your Reserved Instances. The Reserved Instances to be modified must be identical, except for Availability Zone, network platform, and instance type.

For more information, see [Modifying Reserved Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html) in the Amazon Elastic Compute Cloud User Guide.

# Arguments

## `ReservedInstancesId = [::String, ...]` -- *Required*
The IDs of the Reserved Instances to modify.


## `ClientToken = ::String`
A unique, case-sensitive token you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


## `ReservedInstancesConfigurationSetItemType = [[ ... ], ...]` -- *Required*
The configuration settings for the Reserved Instances to modify.
```
 ReservedInstancesConfigurationSetItemType = [[
        "AvailabilityZone" =>  ::String,
        "InstanceCount" =>  ::Int,
        "InstanceType" =>  "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5.metal", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "r5d.metal", "x1.16xlarge", "x1.32xlarge", "x1e.xlarge", "x1e.2xlarge", "x1e.4xlarge", "x1e.8xlarge", "x1e.16xlarge", "x1e.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "i3.metal", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.18xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.18xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "p3.2xlarge", "p3.8xlarge", "p3.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.12xlarge", "m5.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.12xlarge", "m5d.24xlarge", "h1.2xlarge", "h1.4xlarge", "h1.8xlarge", "h1.16xlarge", "z1d.large", "z1d.xlarge", "z1d.2xlarge", "z1d.3xlarge", "z1d.6xlarge" or "z1d.12xlarge",
        "Platform" =>  ::String,
        "Scope" =>  "Availability Zone" or "Region"
    ], ...]
```



# Returns

`ModifyReservedInstancesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyReservedInstances)
"""
@inline modify_reserved_instances(aws::AWSConfig=default_aws_config(); args...) = modify_reserved_instances(aws, args)

@inline modify_reserved_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyReservedInstances", args)

@inline modify_reserved_instances(args) = modify_reserved_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_snapshot_attribute
    modify_snapshot_attribute([::AWSConfig], arguments::Dict)
    modify_snapshot_attribute([::AWSConfig]; SnapshotId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifySnapshotAttribute", arguments::Dict)
    ec2([::AWSConfig], "ModifySnapshotAttribute", SnapshotId=, <keyword arguments>)

# ModifySnapshotAttribute Operation

Adds or removes permission settings for the specified snapshot. You may add or remove specified AWS account IDs from a snapshot's list of create volume permissions, but you cannot do both in a single API call. If you need to both add and remove account IDs for a snapshot, you must use multiple API calls.

Encrypted snapshots and snapshots with AWS Marketplace product codes cannot be made public. Snapshots encrypted with your default CMK cannot be shared with other accounts.

For more information about modifying snapshot permissions, see [Sharing Snapshots](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Attribute = "productCodes" or "createVolumePermission"`
The snapshot attribute to modify. Only volume creation permissions can be modified.


## `CreateVolumePermission = [ ... ]`
A JSON representation of the snapshot attribute modification.
```
 CreateVolumePermission = [
        "Add" =>  [[
            "Group" =>  "all",
            "UserId" =>  ::String
        ], ...],
        "Remove" =>  [[
            "Group" =>  "all",
            "UserId" =>  ::String
        ], ...]
    ]
```

## `UserGroup = [::String, ...]`
The group to modify for the snapshot.


## `OperationType = "add" or "remove"`
The type of operation to perform to the attribute.


## `SnapshotId = ::String` -- *Required*
The ID of the snapshot.


## `UserId = [::String, ...]`
The account ID to modify for the snapshot.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To modify a snapshot attribute

This example modifies snapshot ``snap-1234567890abcdef0`` to remove the create volume permission for a user with the account ID ``123456789012``. If the command succeeds, no output is returned.

Input:
```
[
    "Attribute" => "createVolumePermission",
    "OperationType" => "remove",
    "SnapshotId" => "snap-1234567890abcdef0",
    "UserIds" => [
        "123456789012"
    ]
]
```

Output:
```
Dict(

)
```

# Example: To make a snapshot public

This example makes the snapshot ``snap-1234567890abcdef0`` public.

Input:
```
[
    "Attribute" => "createVolumePermission",
    "GroupNames" => [
        "all"
    ],
    "OperationType" => "add",
    "SnapshotId" => "snap-1234567890abcdef0"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifySnapshotAttribute)
"""
@inline modify_snapshot_attribute(aws::AWSConfig=default_aws_config(); args...) = modify_snapshot_attribute(aws, args)

@inline modify_snapshot_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifySnapshotAttribute", args)

@inline modify_snapshot_attribute(args) = modify_snapshot_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_spot_fleet_request
    modify_spot_fleet_request([::AWSConfig], arguments::Dict)
    modify_spot_fleet_request([::AWSConfig]; SpotFleetRequestId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifySpotFleetRequest", arguments::Dict)
    ec2([::AWSConfig], "ModifySpotFleetRequest", SpotFleetRequestId=, <keyword arguments>)

# ModifySpotFleetRequest Operation

Modifies the specified Spot Fleet request.

While the Spot Fleet request is being modified, it is in the `modifying` state.

To scale up your Spot Fleet, increase its target capacity. The Spot Fleet launches the additional Spot Instances according to the allocation strategy for the Spot Fleet request. If the allocation strategy is `lowestPrice`, the Spot Fleet launches instances using the Spot pool with the lowest price. If the allocation strategy is `diversified`, the Spot Fleet distributes the instances across the Spot pools.

To scale down your Spot Fleet, decrease its target capacity. First, the Spot Fleet cancels any open requests that exceed the new target capacity. You can request that the Spot Fleet terminate Spot Instances until the size of the fleet no longer exceeds the new target capacity. If the allocation strategy is `lowestPrice`, the Spot Fleet terminates the instances with the highest price per unit. If the allocation strategy is `diversified`, the Spot Fleet terminates instances across the Spot pools. Alternatively, you can request that the Spot Fleet keep the fleet at its current size, but not replace any Spot Instances that are interrupted or that you terminate manually.

If you are finished with your Spot Fleet for now, but will use it again later, you can set the target capacity to 0.

# Arguments

## `ExcessCapacityTerminationPolicy = "noTermination" or "default"`
Indicates whether running Spot Instances should be terminated if the target capacity of the Spot Fleet request is decreased below the current size of the Spot Fleet.


## `SpotFleetRequestId = ::String` -- *Required*
The ID of the Spot Fleet request.


## `TargetCapacity = ::Int`
The size of the fleet.




# Returns

`ModifySpotFleetRequestResponse`

# Example: To increase the target capacity of a Spot fleet request

This example increases the target capacity of the specified Spot fleet request.

Input:
```
[
    "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE",
    "TargetCapacity" => 20
]
```

Output:
```
Dict(
    "Return" => true
)
```

# Example: To decrease the target capacity of a Spot fleet request

This example decreases the target capacity of the specified Spot fleet request without terminating any Spot Instances as a result.

Input:
```
[
    "ExcessCapacityTerminationPolicy" => "NoTermination ",
    "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE",
    "TargetCapacity" => 10
]
```

Output:
```
Dict(
    "Return" => true
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifySpotFleetRequest)
"""
@inline modify_spot_fleet_request(aws::AWSConfig=default_aws_config(); args...) = modify_spot_fleet_request(aws, args)

@inline modify_spot_fleet_request(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifySpotFleetRequest", args)

@inline modify_spot_fleet_request(args) = modify_spot_fleet_request(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_subnet_attribute
    modify_subnet_attribute([::AWSConfig], arguments::Dict)
    modify_subnet_attribute([::AWSConfig]; SubnetId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifySubnetAttribute", arguments::Dict)
    ec2([::AWSConfig], "ModifySubnetAttribute", SubnetId=, <keyword arguments>)

# ModifySubnetAttribute Operation

Modifies a subnet attribute. You can only modify one attribute at a time.

# Arguments

## `AssignIpv6AddressOnCreation = ["Value" =>  ::Bool]`
Specify `true` to indicate that network interfaces created in the specified subnet should be assigned an IPv6 address. This includes a network interface that's created when launching an instance into the subnet (the instance therefore receives an IPv6 address).

If you enable the IPv6 addressing feature for your subnet, your network interface or instance only receives an IPv6 address if it's created using version `2016-11-15` or later of the Amazon EC2 API.


## `MapPublicIpOnLaunch = ["Value" =>  ::Bool]`
Specify `true` to indicate that network interfaces created in the specified subnet should be assigned a public IPv4 address. This includes a network interface that's created when launching an instance into the subnet (the instance therefore receives a public IPv4 address).


## `SubnetId = ::String` -- *Required*
The ID of the subnet.




# Example: To change a subnet's public IP addressing behavior

This example modifies the specified subnet so that all instances launched into this subnet are assigned a public IP address.

Input:
```
[
    "MapPublicIpOnLaunch" => [
        "Value" => true
    ],
    "SubnetId" => "subnet-1a2b3c4d"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifySubnetAttribute)
"""
@inline modify_subnet_attribute(aws::AWSConfig=default_aws_config(); args...) = modify_subnet_attribute(aws, args)

@inline modify_subnet_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifySubnetAttribute", args)

@inline modify_subnet_attribute(args) = modify_subnet_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_volume
    modify_volume([::AWSConfig], arguments::Dict)
    modify_volume([::AWSConfig]; VolumeId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyVolume", arguments::Dict)
    ec2([::AWSConfig], "ModifyVolume", VolumeId=, <keyword arguments>)

# ModifyVolume Operation

You can modify several parameters of an existing EBS volume, including volume size, volume type, and IOPS capacity. If your EBS volume is attached to a current-generation EC2 instance type, you may be able to apply these changes without stopping the instance or detaching the volume from it. For more information about modifying an EBS volume running Linux, see [Modifying the Size, IOPS, or Type of an EBS Volume on Linux](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html). For more information about modifying an EBS volume running Windows, see [Modifying the Size, IOPS, or Type of an EBS Volume on Windows](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html).

When you complete a resize operation on your volume, you need to extend the volume's file-system size to take advantage of the new storage capacity. For information about extending a Linux file system, see [Extending a Linux File System](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#recognize-expanded-volume-linux). For information about extending a Windows file system, see [Extending a Windows File System](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html#recognize-expanded-volume-windows).

You can use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the [Amazon CloudWatch Events User Guide](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). You can also track the status of a modification using the [DescribeVolumesModifications](@ref) API. For information about tracking status changes using either method, see [Monitoring Volume Modifications](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods).

With previous-generation instance types, resizing an EBS volume may require detaching and reattaching the volume or stopping and restarting the instance. For more information, see [Modifying the Size, IOPS, or Type of an EBS Volume on Linux](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html) and [Modifying the Size, IOPS, or Type of an EBS Volume on Windows](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html).

If you reach the maximum volume modification rate per volume limit, you will need to wait at least six hours before applying further modifications to the affected EBS volume.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VolumeId = ::String` -- *Required*
The ID of the volume.


## `Size = ::Int`
The target size of the volume, in GiB. The target volume size must be greater than or equal to than the existing size of the volume. For information about available EBS volume sizes, see [Amazon EBS Volume Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).

Default: If no size is specified, the existing size is retained.


## `VolumeType = "standard", "io1", "gp2", "sc1" or "st1"`
The target EBS volume type of the volume.

Default: If no type is specified, the existing type is retained.


## `Iops = ::Int`
The target IOPS rate of the volume.

This is only valid for Provisioned IOPS SSD (`io1`) volumes. For more information, see [Provisioned IOPS SSD (io1) Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html#EBSVolumeTypes_piops).

Default: If no IOPS value is specified, the existing value is retained.




# Returns

`ModifyVolumeResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVolume)
"""
@inline modify_volume(aws::AWSConfig=default_aws_config(); args...) = modify_volume(aws, args)

@inline modify_volume(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyVolume", args)

@inline modify_volume(args) = modify_volume(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_volume_attribute
    modify_volume_attribute([::AWSConfig], arguments::Dict)
    modify_volume_attribute([::AWSConfig]; VolumeId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyVolumeAttribute", arguments::Dict)
    ec2([::AWSConfig], "ModifyVolumeAttribute", VolumeId=, <keyword arguments>)

# ModifyVolumeAttribute Operation

Modifies a volume attribute.

By default, all I/O operations for the volume are suspended when the data on the volume is determined to be potentially inconsistent, to prevent undetectable, latent data corruption. The I/O access to the volume can be resumed by first enabling I/O access and then checking the data consistency on your volume.

You can change the default behavior to resume I/O operations. We recommend that you change this only for boot volumes or for volumes that are stateless or disposable.

# Arguments

## `AutoEnableIO = ["Value" =>  ::Bool]`
Indicates whether the volume should be auto-enabled for I/O operations.


## `VolumeId = ::String` -- *Required*
The ID of the volume.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To modify a volume attribute

This example sets the ``autoEnableIo`` attribute of the volume with the ID ``vol-1234567890abcdef0`` to ``true``. If the command succeeds, no output is returned.

Input:
```
[
    "AutoEnableIO" => [
        "Value" => true
    ],
    "DryRun" => true,
    "VolumeId" => "vol-1234567890abcdef0"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVolumeAttribute)
"""
@inline modify_volume_attribute(aws::AWSConfig=default_aws_config(); args...) = modify_volume_attribute(aws, args)

@inline modify_volume_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyVolumeAttribute", args)

@inline modify_volume_attribute(args) = modify_volume_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_vpc_attribute
    modify_vpc_attribute([::AWSConfig], arguments::Dict)
    modify_vpc_attribute([::AWSConfig]; VpcId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyVpcAttribute", arguments::Dict)
    ec2([::AWSConfig], "ModifyVpcAttribute", VpcId=, <keyword arguments>)

# ModifyVpcAttribute Operation

Modifies the specified attribute of the specified VPC.

# Arguments

## `EnableDnsHostnames = ["Value" =>  ::Bool]`
Indicates whether the instances launched in the VPC get DNS hostnames. If enabled, instances in the VPC get DNS hostnames; otherwise, they do not.

You cannot modify the DNS resolution and DNS hostnames attributes in the same request. Use separate requests for each attribute. You can only enable DNS hostnames if you've enabled DNS support.


## `EnableDnsSupport = ["Value" =>  ::Bool]`
Indicates whether the DNS resolution is supported for the VPC. If enabled, queries to the Amazon provided DNS server at the 169.254.169.253 IP address, or the reserved IP address at the base of the VPC network range "plus two" will succeed. If disabled, the Amazon provided DNS service in the VPC that resolves public DNS hostnames to IP addresses is not enabled.

You cannot modify the DNS resolution and DNS hostnames attributes in the same request. Use separate requests for each attribute.


## `VpcId = ::String` -- *Required*
The ID of the VPC.




# Example: To modify the enableDnsSupport attribute

This example modifies the enableDnsSupport attribute. This attribute indicates whether DNS resolution is enabled for the VPC. If this attribute is true, the Amazon DNS server resolves DNS hostnames for instances in the VPC to their corresponding IP addresses; otherwise, it does not.

Input:
```
[
    "EnableDnsSupport" => [
        "Value" => false
    ],
    "VpcId" => "vpc-a01106c2"
]
```

# Example: To modify the enableDnsHostnames attribute

This example modifies the enableDnsHostnames attribute. This attribute indicates whether instances launched in the VPC get DNS hostnames. If this attribute is true, instances in the VPC get DNS hostnames; otherwise, they do not.

Input:
```
[
    "EnableDnsHostnames" => [
        "Value" => false
    ],
    "VpcId" => "vpc-a01106c2"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcAttribute)
"""
@inline modify_vpc_attribute(aws::AWSConfig=default_aws_config(); args...) = modify_vpc_attribute(aws, args)

@inline modify_vpc_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyVpcAttribute", args)

@inline modify_vpc_attribute(args) = modify_vpc_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_vpc_endpoint
    modify_vpc_endpoint([::AWSConfig], arguments::Dict)
    modify_vpc_endpoint([::AWSConfig]; VpcEndpointId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyVpcEndpoint", arguments::Dict)
    ec2([::AWSConfig], "ModifyVpcEndpoint", VpcEndpointId=, <keyword arguments>)

# ModifyVpcEndpoint Operation

Modifies attributes of a specified VPC endpoint. The attributes that you can modify depend on the type of VPC endpoint (interface or gateway). For more information, see [VPC Endpoints](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-endpoints.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcEndpointId = ::String` -- *Required*
The ID of the endpoint.


## `ResetPolicy = ::Bool`
(Gateway endpoint) Specify `true` to reset the policy document to the default policy. The default policy allows full access to the service.


## `PolicyDocument = ::String`
(Gateway endpoint) A policy document to attach to the endpoint. The policy must be in valid JSON format.


## `AddRouteTableId = [::String, ...]`
(Gateway endpoint) One or more route tables IDs to associate with the endpoint.


## `RemoveRouteTableId = [::String, ...]`
(Gateway endpoint) One or more route table IDs to disassociate from the endpoint.


## `AddSubnetId = [::String, ...]`
(Interface endpoint) One or more subnet IDs in which to serve the endpoint.


## `RemoveSubnetId = [::String, ...]`
(Interface endpoint) One or more subnets IDs in which to remove the endpoint.


## `AddSecurityGroupId = [::String, ...]`
(Interface endpoint) One or more security group IDs to associate with the network interface.


## `RemoveSecurityGroupId = [::String, ...]`
(Interface endpoint) One or more security group IDs to disassociate from the network interface.


## `PrivateDnsEnabled = ::Bool`
(Interface endpoint) Indicate whether a private hosted zone is associated with the VPC.




# Returns

`ModifyVpcEndpointResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcEndpoint)
"""
@inline modify_vpc_endpoint(aws::AWSConfig=default_aws_config(); args...) = modify_vpc_endpoint(aws, args)

@inline modify_vpc_endpoint(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyVpcEndpoint", args)

@inline modify_vpc_endpoint(args) = modify_vpc_endpoint(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_vpc_endpoint_connection_notification
    modify_vpc_endpoint_connection_notification([::AWSConfig], arguments::Dict)
    modify_vpc_endpoint_connection_notification([::AWSConfig]; ConnectionNotificationId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyVpcEndpointConnectionNotification", arguments::Dict)
    ec2([::AWSConfig], "ModifyVpcEndpointConnectionNotification", ConnectionNotificationId=, <keyword arguments>)

# ModifyVpcEndpointConnectionNotification Operation

Modifies a connection notification for VPC endpoint or VPC endpoint service. You can change the SNS topic for the notification, or the events for which to be notified.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ConnectionNotificationId = ::String` -- *Required*
The ID of the notification.


## `ConnectionNotificationArn = ::String`
The ARN for the SNS topic for the notification.


## `ConnectionEvents = [::String, ...]`
One or more events for the endpoint. Valid values are `Accept`, `Connect`, `Delete`, and `Reject`.




# Returns

`ModifyVpcEndpointConnectionNotificationResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcEndpointConnectionNotification)
"""
@inline modify_vpc_endpoint_connection_notification(aws::AWSConfig=default_aws_config(); args...) = modify_vpc_endpoint_connection_notification(aws, args)

@inline modify_vpc_endpoint_connection_notification(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyVpcEndpointConnectionNotification", args)

@inline modify_vpc_endpoint_connection_notification(args) = modify_vpc_endpoint_connection_notification(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_vpc_endpoint_service_configuration
    modify_vpc_endpoint_service_configuration([::AWSConfig], arguments::Dict)
    modify_vpc_endpoint_service_configuration([::AWSConfig]; ServiceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyVpcEndpointServiceConfiguration", arguments::Dict)
    ec2([::AWSConfig], "ModifyVpcEndpointServiceConfiguration", ServiceId=, <keyword arguments>)

# ModifyVpcEndpointServiceConfiguration Operation

Modifies the attributes of your VPC endpoint service configuration. You can change the Network Load Balancers for your service, and you can specify whether acceptance is required for requests to connect to your endpoint service through an interface VPC endpoint.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ServiceId = ::String` -- *Required*
The ID of the service.


## `AcceptanceRequired = ::Bool`
Indicate whether requests to create an endpoint to your service must be accepted.


## `AddNetworkLoadBalancerArn = [::String, ...]`
The Amazon Resource Names (ARNs) of Network Load Balancers to add to your service configuration.


## `RemoveNetworkLoadBalancerArn = [::String, ...]`
The Amazon Resource Names (ARNs) of Network Load Balancers to remove from your service configuration.




# Returns

`ModifyVpcEndpointServiceConfigurationResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcEndpointServiceConfiguration)
"""
@inline modify_vpc_endpoint_service_configuration(aws::AWSConfig=default_aws_config(); args...) = modify_vpc_endpoint_service_configuration(aws, args)

@inline modify_vpc_endpoint_service_configuration(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyVpcEndpointServiceConfiguration", args)

@inline modify_vpc_endpoint_service_configuration(args) = modify_vpc_endpoint_service_configuration(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_vpc_endpoint_service_permissions
    modify_vpc_endpoint_service_permissions([::AWSConfig], arguments::Dict)
    modify_vpc_endpoint_service_permissions([::AWSConfig]; ServiceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyVpcEndpointServicePermissions", arguments::Dict)
    ec2([::AWSConfig], "ModifyVpcEndpointServicePermissions", ServiceId=, <keyword arguments>)

# ModifyVpcEndpointServicePermissions Operation

Modifies the permissions for your [VPC endpoint service](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/endpoint-service.html). You can add or remove permissions for service consumers (IAM users, IAM roles, and AWS accounts) to connect to your endpoint service.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ServiceId = ::String` -- *Required*
The ID of the service.


## `AddAllowedPrincipals = [::String, ...]`
One or more Amazon Resource Names (ARNs) of principals for which to allow permission. Specify `*` to allow all principals.


## `RemoveAllowedPrincipals = [::String, ...]`
One or more Amazon Resource Names (ARNs) of principals for which to remove permission.




# Returns

`ModifyVpcEndpointServicePermissionsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcEndpointServicePermissions)
"""
@inline modify_vpc_endpoint_service_permissions(aws::AWSConfig=default_aws_config(); args...) = modify_vpc_endpoint_service_permissions(aws, args)

@inline modify_vpc_endpoint_service_permissions(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyVpcEndpointServicePermissions", args)

@inline modify_vpc_endpoint_service_permissions(args) = modify_vpc_endpoint_service_permissions(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_vpc_peering_connection_options
    modify_vpc_peering_connection_options([::AWSConfig], arguments::Dict)
    modify_vpc_peering_connection_options([::AWSConfig]; VpcPeeringConnectionId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyVpcPeeringConnectionOptions", arguments::Dict)
    ec2([::AWSConfig], "ModifyVpcPeeringConnectionOptions", VpcPeeringConnectionId=, <keyword arguments>)

# ModifyVpcPeeringConnectionOptions Operation

Modifies the VPC peering connection options on one side of a VPC peering connection. You can do the following:

*   Enable/disable communication over the peering connection between an EC2-Classic instance that's linked to your VPC (using ClassicLink) and instances in the peer VPC.

*   Enable/disable communication over the peering connection between instances in your VPC and an EC2-Classic instance that's linked to the peer VPC.

*   Enable/disable the ability to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC.

If the peered VPCs are in different accounts, each owner must initiate a separate request to modify the peering connection options, depending on whether their VPC was the requester or accepter for the VPC peering connection. If the peered VPCs are in the same account, you can modify the requester and accepter options in the same request. To confirm which VPC is the accepter and requester for a VPC peering connection, use the [DescribeVpcPeeringConnections](@ref) command.

# Arguments

## `AccepterPeeringConnectionOptions = [ ... ]`
The VPC peering connection options for the accepter VPC.
```
 AccepterPeeringConnectionOptions = [
        "AllowDnsResolutionFromRemoteVpc" =>  ::Bool,
        "AllowEgressFromLocalClassicLinkToRemoteVpc" =>  ::Bool,
        "AllowEgressFromLocalVpcToRemoteClassicLink" =>  ::Bool
    ]
```

## `DryRun = ::Bool`
Checks whether you have the required permissions for the operation, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `RequesterPeeringConnectionOptions = [ ... ]`
The VPC peering connection options for the requester VPC.
```
 RequesterPeeringConnectionOptions = [
        "AllowDnsResolutionFromRemoteVpc" =>  ::Bool,
        "AllowEgressFromLocalClassicLinkToRemoteVpc" =>  ::Bool,
        "AllowEgressFromLocalVpcToRemoteClassicLink" =>  ::Bool
    ]
```

## `VpcPeeringConnectionId = ::String` -- *Required*
The ID of the VPC peering connection.




# Returns

`ModifyVpcPeeringConnectionOptionsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcPeeringConnectionOptions)
"""
@inline modify_vpc_peering_connection_options(aws::AWSConfig=default_aws_config(); args...) = modify_vpc_peering_connection_options(aws, args)

@inline modify_vpc_peering_connection_options(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyVpcPeeringConnectionOptions", args)

@inline modify_vpc_peering_connection_options(args) = modify_vpc_peering_connection_options(default_aws_config(), args)


"""
    using AWSSDK.EC2.modify_vpc_tenancy
    modify_vpc_tenancy([::AWSConfig], arguments::Dict)
    modify_vpc_tenancy([::AWSConfig]; VpcId=, InstanceTenancy=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ModifyVpcTenancy", arguments::Dict)
    ec2([::AWSConfig], "ModifyVpcTenancy", VpcId=, InstanceTenancy=, <keyword arguments>)

# ModifyVpcTenancy Operation

Modifies the instance tenancy attribute of the specified VPC. You can change the instance tenancy attribute of a VPC to `default` only. You cannot change the instance tenancy attribute to `dedicated`.

After you modify the tenancy of the VPC, any new instances that you launch into the VPC have a tenancy of `default`, unless you specify otherwise during launch. The tenancy of any existing instances in the VPC is not affected.

For more information about Dedicated Instances, see [Dedicated Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `VpcId = ::String` -- *Required*
The ID of the VPC.


## `InstanceTenancy = "default"` -- *Required*
The instance tenancy attribute for the VPC.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the operation, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`ModifyVpcTenancyResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcTenancy)
"""
@inline modify_vpc_tenancy(aws::AWSConfig=default_aws_config(); args...) = modify_vpc_tenancy(aws, args)

@inline modify_vpc_tenancy(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ModifyVpcTenancy", args)

@inline modify_vpc_tenancy(args) = modify_vpc_tenancy(default_aws_config(), args)


"""
    using AWSSDK.EC2.monitor_instances
    monitor_instances([::AWSConfig], arguments::Dict)
    monitor_instances([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "MonitorInstances", arguments::Dict)
    ec2([::AWSConfig], "MonitorInstances", InstanceId=, <keyword arguments>)

# MonitorInstances Operation

Enables detailed monitoring for a running instance. Otherwise, basic monitoring is enabled. For more information, see [Monitoring Your Instances and Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html) in the *Amazon Elastic Compute Cloud User Guide*.

To disable detailed monitoring, see .

# Arguments

## `InstanceId = [::String, ...]` -- *Required*
One or more instance IDs.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`MonitorInstancesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/MonitorInstances)
"""
@inline monitor_instances(aws::AWSConfig=default_aws_config(); args...) = monitor_instances(aws, args)

@inline monitor_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "MonitorInstances", args)

@inline monitor_instances(args) = monitor_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.move_address_to_vpc
    move_address_to_vpc([::AWSConfig], arguments::Dict)
    move_address_to_vpc([::AWSConfig]; PublicIp=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "MoveAddressToVpc", arguments::Dict)
    ec2([::AWSConfig], "MoveAddressToVpc", PublicIp=, <keyword arguments>)

# MoveAddressToVpc Operation

Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform. The Elastic IP address must be allocated to your account for more than 24 hours, and it must not be associated with an instance. After the Elastic IP address is moved, it is no longer available for use in the EC2-Classic platform, unless you move it back using the [RestoreAddressToClassic](@ref) request. You cannot move an Elastic IP address that was originally allocated for use in the EC2-VPC platform to the EC2-Classic platform.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `PublicIp = ::String` -- *Required*
The Elastic IP address.




# Returns

`MoveAddressToVpcResult`

# Example: To move an address to EC2-VPC

This example moves the specified Elastic IP address to the EC2-VPC platform.

Input:
```
[
    "PublicIp" => "54.123.4.56"
]
```

Output:
```
Dict(
    "Status" => "MoveInProgress"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/MoveAddressToVpc)
"""
@inline move_address_to_vpc(aws::AWSConfig=default_aws_config(); args...) = move_address_to_vpc(aws, args)

@inline move_address_to_vpc(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "MoveAddressToVpc", args)

@inline move_address_to_vpc(args) = move_address_to_vpc(default_aws_config(), args)


"""
    using AWSSDK.EC2.purchase_host_reservation
    purchase_host_reservation([::AWSConfig], arguments::Dict)
    purchase_host_reservation([::AWSConfig]; HostIdSet=, OfferingId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "PurchaseHostReservation", arguments::Dict)
    ec2([::AWSConfig], "PurchaseHostReservation", HostIdSet=, OfferingId=, <keyword arguments>)

# PurchaseHostReservation Operation

Purchase a reservation with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation. This action results in the specified reservation being purchased and charged to your account.

# Arguments

## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `CurrencyCode = "USD"`
The currency in which the `totalUpfrontPrice`, `LimitPrice`, and `totalHourlyPrice` amounts are specified. At this time, the only supported currency is `USD`.


## `HostIdSet = [::String, ...]` -- *Required*
The IDs of the Dedicated Hosts with which the reservation will be associated.


## `LimitPrice = ::String`
The specified limit is checked against the total upfront cost of the reservation (calculated as the offering's upfront cost multiplied by the host count). If the total upfront cost is greater than the specified price limit, the request fails. This is used to ensure that the purchase does not exceed the expected upfront cost of the purchase. At this time, the only supported currency is `USD`. For example, to indicate a limit price of USD 100, specify 100.00.


## `OfferingId = ::String` -- *Required*
The ID of the offering.




# Returns

`PurchaseHostReservationResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseHostReservation)
"""
@inline purchase_host_reservation(aws::AWSConfig=default_aws_config(); args...) = purchase_host_reservation(aws, args)

@inline purchase_host_reservation(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "PurchaseHostReservation", args)

@inline purchase_host_reservation(args) = purchase_host_reservation(default_aws_config(), args)


"""
    using AWSSDK.EC2.purchase_reserved_instances_offering
    purchase_reserved_instances_offering([::AWSConfig], arguments::Dict)
    purchase_reserved_instances_offering([::AWSConfig]; InstanceCount=, ReservedInstancesOfferingId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "PurchaseReservedInstancesOffering", arguments::Dict)
    ec2([::AWSConfig], "PurchaseReservedInstancesOffering", InstanceCount=, ReservedInstancesOfferingId=, <keyword arguments>)

# PurchaseReservedInstancesOffering Operation

Purchases a Reserved Instance for use with your account. With Reserved Instances, you pay a lower hourly rate compared to On-Demand instance pricing.

Use [DescribeReservedInstancesOfferings](@ref) to get a list of Reserved Instance offerings that match your specifications. After you've purchased a Reserved Instance, you can check for your new Reserved Instance with [DescribeReservedInstances](@ref).

For more information, see [Reserved Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html) and [Reserved Instance Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `InstanceCount = ::Int` -- *Required*
The number of Reserved Instances to purchase.


## `ReservedInstancesOfferingId = ::String` -- *Required*
The ID of the Reserved Instance offering to purchase.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `LimitPrice = [ ... ]`
Specified for Reserved Instance Marketplace offerings to limit the total order and ensure that the Reserved Instances are not purchased at unexpected prices.
```
 LimitPrice = [
        "Amount" =>  double,
        "CurrencyCode" =>  "USD"
    ]
```



# Returns

`PurchaseReservedInstancesOfferingResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseReservedInstancesOffering)
"""
@inline purchase_reserved_instances_offering(aws::AWSConfig=default_aws_config(); args...) = purchase_reserved_instances_offering(aws, args)

@inline purchase_reserved_instances_offering(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "PurchaseReservedInstancesOffering", args)

@inline purchase_reserved_instances_offering(args) = purchase_reserved_instances_offering(default_aws_config(), args)


"""
    using AWSSDK.EC2.purchase_scheduled_instances
    purchase_scheduled_instances([::AWSConfig], arguments::Dict)
    purchase_scheduled_instances([::AWSConfig]; PurchaseRequest=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "PurchaseScheduledInstances", arguments::Dict)
    ec2([::AWSConfig], "PurchaseScheduledInstances", PurchaseRequest=, <keyword arguments>)

# PurchaseScheduledInstances Operation

Purchases one or more Scheduled Instances with the specified schedule.

Scheduled Instances enable you to purchase Amazon EC2 compute capacity by the hour for a one-year term. Before you can purchase a Scheduled Instance, you must call [DescribeScheduledInstanceAvailability](@ref) to check for available schedules and obtain a purchase token. After you purchase a Scheduled Instance, you must call [RunScheduledInstances](@ref) during each scheduled time period.

After you purchase a Scheduled Instance, you can't cancel, modify, or resell your purchase.

# Arguments

## `ClientToken = ::String`
Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `PurchaseRequest = [[ ... ], ...]` -- *Required*
One or more purchase requests.
```
 PurchaseRequest = [[
        "InstanceCount" => <required> ::Int,
        "PurchaseToken" => <required> ::String
    ], ...]
```



# Returns

`PurchaseScheduledInstancesResult`

# Example: To purchase a Scheduled Instance

This example purchases a Scheduled Instance.

Input:
```
[
    "PurchaseRequests" => [
        [
            "InstanceCount" => 1,
            "PurchaseToken" => "eyJ2IjoiMSIsInMiOjEsImMiOi..."
        ]
    ]
]
```

Output:
```
Dict(
    "ScheduledInstanceSet" => [
        Dict(
            "AvailabilityZone" => "us-west-2b",
            "CreateDate" => "2016-01-25T21:43:38.612Z",
            "HourlyPrice" => "0.095",
            "InstanceCount" => 1,
            "InstanceType" => "c4.large",
            "NetworkPlatform" => "EC2-VPC",
            "NextSlotStartTime" => "2016-01-31T09:00:00Z",
            "Platform" => "Linux/UNIX",
            "Recurrence" => Dict(
                "Frequency" => "Weekly",
                "Interval" => 1,
                "OccurrenceDaySet" => [
                    1
                ],
                "OccurrenceRelativeToEnd" => false,
                "OccurrenceUnit" => ""
            ),
            "ScheduledInstanceId" => "sci-1234-1234-1234-1234-123456789012",
            "SlotDurationInHours" => 32,
            "TermEndDate" => "2017-01-31T09:00:00Z",
            "TermStartDate" => "2016-01-31T09:00:00Z",
            "TotalScheduledInstanceHours" => 1696
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseScheduledInstances)
"""
@inline purchase_scheduled_instances(aws::AWSConfig=default_aws_config(); args...) = purchase_scheduled_instances(aws, args)

@inline purchase_scheduled_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "PurchaseScheduledInstances", args)

@inline purchase_scheduled_instances(args) = purchase_scheduled_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.reboot_instances
    reboot_instances([::AWSConfig], arguments::Dict)
    reboot_instances([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "RebootInstances", arguments::Dict)
    ec2([::AWSConfig], "RebootInstances", InstanceId=, <keyword arguments>)

# RebootInstances Operation

Requests a reboot of one or more instances. This operation is asynchronous; it only queues a request to reboot the specified instances. The operation succeeds if the instances are valid and belong to you. Requests to reboot terminated instances are ignored.

If an instance does not cleanly shut down within four minutes, Amazon EC2 performs a hard reboot.

For more information about troubleshooting, see [Getting Console Output and Rebooting Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `InstanceId = [::String, ...]` -- *Required*
One or more instance IDs.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To reboot an EC2 instance

This example reboots the specified EC2 instance.

Input:
```
[
    "InstanceIds" => [
        "i-1234567890abcdef5"
    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RebootInstances)
"""
@inline reboot_instances(aws::AWSConfig=default_aws_config(); args...) = reboot_instances(aws, args)

@inline reboot_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "RebootInstances", args)

@inline reboot_instances(args) = reboot_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.register_image
    register_image([::AWSConfig], arguments::Dict)
    register_image([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "RegisterImage", arguments::Dict)
    ec2([::AWSConfig], "RegisterImage", Name=, <keyword arguments>)

# RegisterImage Operation

Registers an AMI. When you're creating an AMI, this is the final step you must complete before you can launch an instance from the AMI. For more information about creating AMIs, see [Creating Your Own AMIs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html) in the *Amazon Elastic Compute Cloud User Guide*.

**Note**
> For Amazon EBS-backed instances, [CreateImage](@ref) creates and registers the AMI in a single request, so you don't have to register the AMI yourself.

You can also use `RegisterImage` to create an Amazon EBS-backed Linux AMI from a snapshot of a root device volume. You specify the snapshot using the block device mapping. For more information, see [Launching a Linux Instance from a Backup](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-launch-snapshot.html) in the *Amazon Elastic Compute Cloud User Guide*.

You can't register an image where a secondary (non-root) snapshot has AWS Marketplace product codes.

Some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and SUSE Linux Enterprise Server (SLES), use the EC2 billing product code associated with an AMI to verify the subscription status for package updates. Creating an AMI from an EBS snapshot does not maintain this billing code, and instances launched from such an AMI are not able to connect to package update infrastructure. If you purchase a Reserved Instance offering for one of these Linux distributions and launch instances using an AMI that does not contain the required billing code, your Reserved Instance is not applied to these instances.

To create an AMI for operating systems that require a billing code, see [CreateImage](@ref).

If needed, you can deregister an AMI at any time. Any modifications you make to an AMI backed by an instance store volume invalidates its registration. If you make changes to an image, deregister the previous image and register the new image.

# Arguments

## `ImageLocation = ::String`
The full path to your AMI manifest in Amazon S3 storage.


## `Architecture = "i386" or "x86_64"`
The architecture of the AMI.

Default: For Amazon EBS-backed AMIs, `i386`. For instance store-backed AMIs, the architecture specified in the manifest file.


## `BlockDeviceMapping = [[ ... ], ...]`
One or more block device mapping entries.
```
 BlockDeviceMapping = [[
        "DeviceName" =>  ::String,
        "VirtualName" =>  ::String,
        "Ebs" =>  [
            "Encrypted" =>  ::Bool,
            "DeleteOnTermination" =>  ::Bool,
            "Iops" =>  ::Int,
            "KmsKeyId" =>  ::String,
            "SnapshotId" =>  ::String,
            "VolumeSize" =>  ::Int,
            "VolumeType" =>  "standard", "io1", "gp2", "sc1" or "st1"
        ],
        "NoDevice" =>  ::String
    ], ...]
```

## `Description = ::String`
A description for your AMI.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `EnaSupport = ::Bool`
Set to `true` to enable enhanced networking with ENA for the AMI and any instances that you launch from the AMI.

This option is supported only for HVM AMIs. Specifying this option with a PV AMI can make instances launched from the AMI unreachable.


## `KernelId = ::String`
The ID of the kernel.


## `Name = ::String` -- *Required*
A name for your AMI.

Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single quotes ('), at-signs (@), or underscores(_)


## `BillingProduct = [::String, ...]`
The billing product codes. Your account must be authorized to specify billing product codes. Otherwise, you can use the AWS Marketplace to bill for the use of an AMI.


## `RamdiskId = ::String`
The ID of the RAM disk.


## `RootDeviceName = ::String`
The device name of the root device volume (for example, `/dev/sda1`).


## `SriovNetSupport = ::String`
Set to `simple` to enable enhanced networking with the Intel 82599 Virtual Function interface for the AMI and any instances that you launch from the AMI.

There is no way to disable `sriovNetSupport` at this time.

This option is supported only for HVM AMIs. Specifying this option with a PV AMI can make instances launched from the AMI unreachable.


## `VirtualizationType = ::String`
The type of virtualization (`hvm` | `paravirtual`).

Default: `paravirtual`




# Returns

`RegisterImageResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RegisterImage)
"""
@inline register_image(aws::AWSConfig=default_aws_config(); args...) = register_image(aws, args)

@inline register_image(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "RegisterImage", args)

@inline register_image(args) = register_image(default_aws_config(), args)


"""
    using AWSSDK.EC2.reject_vpc_endpoint_connections
    reject_vpc_endpoint_connections([::AWSConfig], arguments::Dict)
    reject_vpc_endpoint_connections([::AWSConfig]; ServiceId=, VpcEndpointId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "RejectVpcEndpointConnections", arguments::Dict)
    ec2([::AWSConfig], "RejectVpcEndpointConnections", ServiceId=, VpcEndpointId=, <keyword arguments>)

# RejectVpcEndpointConnections Operation

Rejects one or more VPC endpoint connection requests to your VPC endpoint service.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `ServiceId = ::String` -- *Required*
The ID of the service.


## `VpcEndpointId = [::String, ...]` -- *Required*
The IDs of one or more VPC endpoints.




# Returns

`RejectVpcEndpointConnectionsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RejectVpcEndpointConnections)
"""
@inline reject_vpc_endpoint_connections(aws::AWSConfig=default_aws_config(); args...) = reject_vpc_endpoint_connections(aws, args)

@inline reject_vpc_endpoint_connections(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "RejectVpcEndpointConnections", args)

@inline reject_vpc_endpoint_connections(args) = reject_vpc_endpoint_connections(default_aws_config(), args)


"""
    using AWSSDK.EC2.reject_vpc_peering_connection
    reject_vpc_peering_connection([::AWSConfig], arguments::Dict)
    reject_vpc_peering_connection([::AWSConfig]; VpcPeeringConnectionId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "RejectVpcPeeringConnection", arguments::Dict)
    ec2([::AWSConfig], "RejectVpcPeeringConnection", VpcPeeringConnectionId=, <keyword arguments>)

# RejectVpcPeeringConnection Operation

Rejects a VPC peering connection request. The VPC peering connection must be in the `pending-acceptance` state. Use the [DescribeVpcPeeringConnections](@ref) request to view your outstanding VPC peering connection requests. To delete an active VPC peering connection, or to delete a VPC peering connection request that you initiated, use [DeleteVpcPeeringConnection](@ref).

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `VpcPeeringConnectionId = ::String` -- *Required*
The ID of the VPC peering connection.




# Returns

`RejectVpcPeeringConnectionResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RejectVpcPeeringConnection)
"""
@inline reject_vpc_peering_connection(aws::AWSConfig=default_aws_config(); args...) = reject_vpc_peering_connection(aws, args)

@inline reject_vpc_peering_connection(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "RejectVpcPeeringConnection", args)

@inline reject_vpc_peering_connection(args) = reject_vpc_peering_connection(default_aws_config(), args)


"""
    using AWSSDK.EC2.release_address
    release_address([::AWSConfig], arguments::Dict)
    release_address([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ReleaseAddress", arguments::Dict)
    ec2([::AWSConfig], "ReleaseAddress", <keyword arguments>)

# ReleaseAddress Operation

Releases the specified Elastic IP address.

[EC2-Classic, default VPC] Releasing an Elastic IP address automatically disassociates it from any instance that it's associated with. To disassociate an Elastic IP address without releasing it, use [DisassociateAddress](@ref).

[Nondefault VPC] You must use [DisassociateAddress](@ref) to disassociate the Elastic IP address before you can release it. Otherwise, Amazon EC2 returns an error (`InvalidIPAddress.InUse`).

After releasing an Elastic IP address, it is released to the IP address pool. Be sure to update your DNS records and any servers or devices that communicate with the address. If you attempt to release an Elastic IP address that you already released, you'll get an `AuthFailure` error if the address is already allocated to another AWS account.

[EC2-VPC] After you release an Elastic IP address for use in a VPC, you might be able to recover it. For more information, see [AllocateAddress](@ref).

# Arguments

## `AllocationId = ::String`
[EC2-VPC] The allocation ID. Required for EC2-VPC.


## `PublicIp = ::String`
[EC2-Classic] The Elastic IP address. Required for EC2-Classic.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To release an Elastic IP address for EC2-VPC

This example releases an Elastic IP address for use with instances in a VPC.

Input:
```
[
    "AllocationId" => "eipalloc-64d5890a"
]
```

# Example: To release an Elastic IP addresses for EC2-Classic

This example releases an Elastic IP address for use with instances in EC2-Classic.

Input:
```
[
    "PublicIp" => "198.51.100.0"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReleaseAddress)
"""
@inline release_address(aws::AWSConfig=default_aws_config(); args...) = release_address(aws, args)

@inline release_address(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ReleaseAddress", args)

@inline release_address(args) = release_address(default_aws_config(), args)


"""
    using AWSSDK.EC2.release_hosts
    release_hosts([::AWSConfig], arguments::Dict)
    release_hosts([::AWSConfig]; HostId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ReleaseHosts", arguments::Dict)
    ec2([::AWSConfig], "ReleaseHosts", HostId=)

# ReleaseHosts Operation

When you no longer want to use an On-Demand Dedicated Host it can be released. On-Demand billing is stopped and the host goes into `released` state. The host ID of Dedicated Hosts that have been released can no longer be specified in another request, for example, ModifyHosts. You must stop or terminate all instances on a host before it can be released.

When Dedicated Hosts are released, it may take some time for them to stop counting toward your limit and you may receive capacity errors when trying to allocate new Dedicated Hosts. Wait a few minutes and then try again.

Released hosts still appear in a [DescribeHosts](@ref) response.

# Arguments

## `HostId = [::String, ...]` -- *Required*
The IDs of the Dedicated Hosts to release.




# Returns

`ReleaseHostsResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReleaseHosts)
"""
@inline release_hosts(aws::AWSConfig=default_aws_config(); args...) = release_hosts(aws, args)

@inline release_hosts(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ReleaseHosts", args)

@inline release_hosts(args) = release_hosts(default_aws_config(), args)


"""
    using AWSSDK.EC2.replace_iam_instance_profile_association
    replace_iam_instance_profile_association([::AWSConfig], arguments::Dict)
    replace_iam_instance_profile_association([::AWSConfig]; IamInstanceProfile=, AssociationId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ReplaceIamInstanceProfileAssociation", arguments::Dict)
    ec2([::AWSConfig], "ReplaceIamInstanceProfileAssociation", IamInstanceProfile=, AssociationId=)

# ReplaceIamInstanceProfileAssociation Operation

Replaces an IAM instance profile for the specified running instance. You can use this action to change the IAM instance profile that's associated with an instance without having to disassociate the existing IAM instance profile first.

Use [DescribeIamInstanceProfileAssociations](@ref) to get the association ID.

# Arguments

## `IamInstanceProfile = [ ... ]` -- *Required*
The IAM instance profile.
```
 IamInstanceProfile = [
        "Arn" =>  ::String,
        "Name" =>  ::String
    ]
```

## `AssociationId = ::String` -- *Required*
The ID of the existing IAM instance profile association.




# Returns

`ReplaceIamInstanceProfileAssociationResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceIamInstanceProfileAssociation)
"""
@inline replace_iam_instance_profile_association(aws::AWSConfig=default_aws_config(); args...) = replace_iam_instance_profile_association(aws, args)

@inline replace_iam_instance_profile_association(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ReplaceIamInstanceProfileAssociation", args)

@inline replace_iam_instance_profile_association(args) = replace_iam_instance_profile_association(default_aws_config(), args)


"""
    using AWSSDK.EC2.replace_network_acl_association
    replace_network_acl_association([::AWSConfig], arguments::Dict)
    replace_network_acl_association([::AWSConfig]; AssociationId=, NetworkAclId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ReplaceNetworkAclAssociation", arguments::Dict)
    ec2([::AWSConfig], "ReplaceNetworkAclAssociation", AssociationId=, NetworkAclId=, <keyword arguments>)

# ReplaceNetworkAclAssociation Operation

Changes which network ACL a subnet is associated with. By default when you create a subnet, it's automatically associated with the default network ACL. For more information about network ACLs, see [Network ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html) in the *Amazon Virtual Private Cloud User Guide*.

This is an idempotent operation.

# Arguments

## `AssociationId = ::String` -- *Required*
The ID of the current association between the original network ACL and the subnet.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `NetworkAclId = ::String` -- *Required*
The ID of the new network ACL to associate with the subnet.




# Returns

`ReplaceNetworkAclAssociationResult`

# Example: To replace the network ACL associated with a subnet

This example associates the specified network ACL with the subnet for the specified network ACL association.

Input:
```
[
    "AssociationId" => "aclassoc-e5b95c8c",
    "NetworkAclId" => "acl-5fb85d36"
]
```

Output:
```
Dict(
    "NewAssociationId" => "aclassoc-3999875b"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceNetworkAclAssociation)
"""
@inline replace_network_acl_association(aws::AWSConfig=default_aws_config(); args...) = replace_network_acl_association(aws, args)

@inline replace_network_acl_association(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ReplaceNetworkAclAssociation", args)

@inline replace_network_acl_association(args) = replace_network_acl_association(default_aws_config(), args)


"""
    using AWSSDK.EC2.replace_network_acl_entry
    replace_network_acl_entry([::AWSConfig], arguments::Dict)
    replace_network_acl_entry([::AWSConfig]; Egress=, NetworkAclId=, Protocol=, RuleAction=, RuleNumber=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ReplaceNetworkAclEntry", arguments::Dict)
    ec2([::AWSConfig], "ReplaceNetworkAclEntry", Egress=, NetworkAclId=, Protocol=, RuleAction=, RuleNumber=, <keyword arguments>)

# ReplaceNetworkAclEntry Operation

Replaces an entry (rule) in a network ACL. For more information about network ACLs, see [Network ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `CidrBlock = ::String`
The IPv4 network range to allow or deny, in CIDR notation (for example `172.16.0.0/24`).


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Egress = ::Bool` -- *Required*
Indicates whether to replace the egress rule.

Default: If no value is specified, we replace the ingress rule.


## `Icmp = [ ... ]`
ICMP protocol: The ICMP or ICMPv6 type and code. Required if specifying the ICMP (1) protocol, or protocol 58 (ICMPv6) with an IPv6 CIDR block.
```
 Icmp = [
        "Code" =>  ::Int,
        "Type" =>  ::Int
    ]
```

## `Ipv6CidrBlock = ::String`
The IPv6 network range to allow or deny, in CIDR notation (for example `2001:bd8:1234:1a00::/64`).


## `NetworkAclId = ::String` -- *Required*
The ID of the ACL.


## `PortRange = [ ... ]`
TCP or UDP protocols: The range of ports the rule applies to. Required if specifying TCP (6) or UDP (17) for the protocol.
```
 PortRange = [
        "From" =>  ::Int,
        "To" =>  ::Int
    ]
```

## `Protocol = ::String` -- *Required*
The IP protocol. You can specify `all` or `-1` to mean all protocols. If you specify `all`, `-1`, or a protocol number other than `tcp`, `udp`, or `icmp`, traffic on all ports is allowed, regardless of any ports or ICMP types or codes you specify. If you specify protocol `58` (ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP types and codes allowed, regardless of any that you specify. If you specify protocol `58` (ICMPv6) and specify an IPv6 CIDR block, you must specify an ICMP type and code.


## `RuleAction = "allow" or "deny"` -- *Required*
Indicates whether to allow or deny the traffic that matches the rule.


## `RuleNumber = ::Int` -- *Required*
The rule number of the entry to replace.




# Example: To replace a network ACL entry

This example replaces an entry for the specified network ACL. The new rule 100 allows ingress traffic from 203.0.113.12/24 on UDP port 53 (DNS) into any associated subnet.

Input:
```
[
    "CidrBlock" => "203.0.113.12/24",
    "Egress" => false,
    "NetworkAclId" => "acl-5fb85d36",
    "PortRange" => [
        "From" => 53,
        "To" => 53
    ],
    "Protocol" => "udp",
    "RuleAction" => "allow",
    "RuleNumber" => 100
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceNetworkAclEntry)
"""
@inline replace_network_acl_entry(aws::AWSConfig=default_aws_config(); args...) = replace_network_acl_entry(aws, args)

@inline replace_network_acl_entry(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ReplaceNetworkAclEntry", args)

@inline replace_network_acl_entry(args) = replace_network_acl_entry(default_aws_config(), args)


"""
    using AWSSDK.EC2.replace_route
    replace_route([::AWSConfig], arguments::Dict)
    replace_route([::AWSConfig]; RouteTableId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ReplaceRoute", arguments::Dict)
    ec2([::AWSConfig], "ReplaceRoute", RouteTableId=, <keyword arguments>)

# ReplaceRoute Operation

Replaces an existing route within a route table in a VPC. You must provide only one of the following: Internet gateway or virtual private gateway, NAT instance, NAT gateway, VPC peering connection, network interface, or egress-only Internet gateway.

For more information about route tables, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `DestinationCidrBlock = ::String`
The IPv4 CIDR address block used for the destination match. The value you provide must match the CIDR of an existing route in the table.


## `DestinationIpv6CidrBlock = ::String`
The IPv6 CIDR address block used for the destination match. The value you provide must match the CIDR of an existing route in the table.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `EgressOnlyInternetGatewayId = ::String`
[IPv6 traffic only] The ID of an egress-only Internet gateway.


## `GatewayId = ::String`
The ID of an Internet gateway or virtual private gateway.


## `InstanceId = ::String`
The ID of a NAT instance in your VPC.


## `NatGatewayId = ::String`
[IPv4 traffic only] The ID of a NAT gateway.


## `NetworkInterfaceId = ::String`
The ID of a network interface.


## `RouteTableId = ::String` -- *Required*
The ID of the route table.


## `VpcPeeringConnectionId = ::String`
The ID of a VPC peering connection.




# Example: To replace a route

This example replaces the specified route in the specified table table. The new route matches the specified CIDR and sends the traffic to the specified virtual private gateway.

Input:
```
[
    "DestinationCidrBlock" => "10.0.0.0/16",
    "GatewayId" => "vgw-9a4cacf3",
    "RouteTableId" => "rtb-22574640"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceRoute)
"""
@inline replace_route(aws::AWSConfig=default_aws_config(); args...) = replace_route(aws, args)

@inline replace_route(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ReplaceRoute", args)

@inline replace_route(args) = replace_route(default_aws_config(), args)


"""
    using AWSSDK.EC2.replace_route_table_association
    replace_route_table_association([::AWSConfig], arguments::Dict)
    replace_route_table_association([::AWSConfig]; AssociationId=, RouteTableId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ReplaceRouteTableAssociation", arguments::Dict)
    ec2([::AWSConfig], "ReplaceRouteTableAssociation", AssociationId=, RouteTableId=, <keyword arguments>)

# ReplaceRouteTableAssociation Operation

Changes the route table associated with a given subnet in a VPC. After the operation completes, the subnet uses the routes in the new route table it's associated with. For more information about route tables, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.

You can also use ReplaceRouteTableAssociation to change which table is the main route table in the VPC. You just specify the main route table's association ID and the route table to be the new main route table.

# Arguments

## `AssociationId = ::String` -- *Required*
The association ID.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `RouteTableId = ::String` -- *Required*
The ID of the new route table to associate with the subnet.




# Returns

`ReplaceRouteTableAssociationResult`

# Example: To replace the route table associated with a subnet

This example associates the specified route table with the subnet for the specified route table association.

Input:
```
[
    "AssociationId" => "rtbassoc-781d0d1a",
    "RouteTableId" => "rtb-22574640"
]
```

Output:
```
Dict(
    "NewAssociationId" => "rtbassoc-3a1f0f58"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceRouteTableAssociation)
"""
@inline replace_route_table_association(aws::AWSConfig=default_aws_config(); args...) = replace_route_table_association(aws, args)

@inline replace_route_table_association(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ReplaceRouteTableAssociation", args)

@inline replace_route_table_association(args) = replace_route_table_association(default_aws_config(), args)


"""
    using AWSSDK.EC2.report_instance_status
    report_instance_status([::AWSConfig], arguments::Dict)
    report_instance_status([::AWSConfig]; InstanceId=, ReasonCode=, Status=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ReportInstanceStatus", arguments::Dict)
    ec2([::AWSConfig], "ReportInstanceStatus", InstanceId=, ReasonCode=, Status=, <keyword arguments>)

# ReportInstanceStatus Operation

Submits feedback about the status of an instance. The instance must be in the `running` state. If your experience with the instance differs from the instance status returned by [DescribeInstanceStatus](@ref), use [ReportInstanceStatus](@ref) to report your experience with the instance. Amazon EC2 collects this information to improve the accuracy of status checks.

Use of this action does not change the value returned by [DescribeInstanceStatus](@ref).

# Arguments

## `Description = ::String`
Descriptive text about the health state of your instance.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `EndTime = timestamp`
The time at which the reported instance health state ended.


## `InstanceId = [::String, ...]` -- *Required*
One or more instances.


## `ReasonCode = ["instance-stuck-in-state", "unresponsive", "not-accepting-credentials", "password-not-available", "performance-network", "performance-instance-store", "performance-ebs-volume", "performance-other" or "other", ...]` -- *Required*
One or more reason codes that describe the health state of your instance.

*   `instance-stuck-in-state`: My instance is stuck in a state.

*   `unresponsive`: My instance is unresponsive.

*   `not-accepting-credentials`: My instance is not accepting my credentials.

*   `password-not-available`: A password is not available for my instance.

*   `performance-network`: My instance is experiencing performance problems that I believe are network related.

*   `performance-instance-store`: My instance is experiencing performance problems that I believe are related to the instance stores.

*   `performance-ebs-volume`: My instance is experiencing performance problems that I believe are related to an EBS volume.

*   `performance-other`: My instance is experiencing performance problems.

*   `other`: [explain using the description parameter]


## `StartTime = timestamp`
The time at which the reported instance health state began.


## `Status = "ok" or "impaired"` -- *Required*
The status of all instances listed.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReportInstanceStatus)
"""
@inline report_instance_status(aws::AWSConfig=default_aws_config(); args...) = report_instance_status(aws, args)

@inline report_instance_status(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ReportInstanceStatus", args)

@inline report_instance_status(args) = report_instance_status(default_aws_config(), args)


"""
    using AWSSDK.EC2.request_spot_fleet
    request_spot_fleet([::AWSConfig], arguments::Dict)
    request_spot_fleet([::AWSConfig]; SpotFleetRequestConfig=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "RequestSpotFleet", arguments::Dict)
    ec2([::AWSConfig], "RequestSpotFleet", SpotFleetRequestConfig=, <keyword arguments>)

# RequestSpotFleet Operation

Creates a Spot Fleet request.

The Spot Fleet request specifies the total target capacity and the On-Demand target capacity. Amazon EC2 calculates the difference between the total capacity and On-Demand capacity, and launches the difference as Spot capacity.

You can submit a single request that includes multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet.

By default, the Spot Fleet requests Spot Instances in the Spot pool where the price per unit is the lowest. Each launch specification can include its own instance weighting that reflects the value of the instance type to your application workload.

Alternatively, you can specify that the Spot Fleet distribute the target capacity across the Spot pools included in its launch specifications. By ensuring that the Spot Instances in your Spot Fleet are in different Spot pools, you can improve the availability of your fleet.

You can specify tags for the Spot Instances. You cannot tag other resource types in a Spot Fleet request because only the `instance` resource type is supported.

For more information, see [Spot Fleet Requests](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html) in the *Amazon EC2 User Guide for Linux Instances*.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `SpotFleetRequestConfig = [ ... ]` -- *Required*
The configuration for the Spot Fleet request.
```
 SpotFleetRequestConfig = [
        "AllocationStrategy" =>  "lowestPrice" or "diversified",
        "OnDemandAllocationStrategy" =>  "lowestPrice" or "prioritized",
        "ClientToken" =>  ::String,
        "ExcessCapacityTerminationPolicy" =>  "noTermination" or "default",
        "FulfilledCapacity" =>  double,
        "OnDemandFulfilledCapacity" =>  double,
        "IamFleetRole" => <required> ::String,
        "LaunchSpecifications" =>  [[
            "GroupSet" =>  [[
                "GroupName" =>  ::String,
                "GroupId" =>  ::String
            ], ...],
            "AddressingType" =>  ::String,
            "BlockDeviceMapping" =>  [[
                "DeviceName" =>  ::String,
                "VirtualName" =>  ::String,
                "Ebs" =>  [
                    "Encrypted" =>  ::Bool,
                    "DeleteOnTermination" =>  ::Bool,
                    "Iops" =>  ::Int,
                    "KmsKeyId" =>  ::String,
                    "SnapshotId" =>  ::String,
                    "VolumeSize" =>  ::Int,
                    "VolumeType" =>  "standard", "io1", "gp2", "sc1" or "st1"
                ],
                "NoDevice" =>  ::String
            ], ...],
            "EbsOptimized" =>  ::Bool,
            "IamInstanceProfile" =>  [
                "Arn" =>  ::String,
                "Name" =>  ::String
            ],
            "ImageId" =>  ::String,
            "InstanceType" =>  "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5.metal", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "r5d.metal", "x1.16xlarge", "x1.32xlarge", "x1e.xlarge", "x1e.2xlarge", "x1e.4xlarge", "x1e.8xlarge", "x1e.16xlarge", "x1e.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "i3.metal", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.18xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.18xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "p3.2xlarge", "p3.8xlarge", "p3.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.12xlarge", "m5.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.12xlarge", "m5d.24xlarge", "h1.2xlarge", "h1.4xlarge", "h1.8xlarge", "h1.16xlarge", "z1d.large", "z1d.xlarge", "z1d.2xlarge", "z1d.3xlarge", "z1d.6xlarge" or "z1d.12xlarge",
            "KernelId" =>  ::String,
            "KeyName" =>  ::String,
            "Monitoring" =>  ["Enabled" =>  ::Bool],
            "NetworkInterfaceSet" =>  [[
                "AssociatePublicIpAddress" =>  ::Bool,
                "DeleteOnTermination" =>  ::Bool,
                "Description" =>  ::String,
                "DeviceIndex" =>  ::Int,
                "SecurityGroupId" =>  [::String, ...],
                "Ipv6AddressCount" =>  ::Int,
                "Ipv6AddressesSet" =>  [["Ipv6Address" =>  ::String], ...],
                "NetworkInterfaceId" =>  ::String,
                "PrivateIpAddress" =>  ::String,
                "PrivateIpAddressesSet" =>  [[
                    "Primary" =>  ::Bool,
                    "PrivateIpAddress" =>  ::String
                ], ...],
                "SecondaryPrivateIpAddressCount" =>  ::Int,
                "SubnetId" =>  ::String
            ], ...],
            "Placement" =>  [
                "AvailabilityZone" =>  ::String,
                "GroupName" =>  ::String,
                "Tenancy" =>  "default", "dedicated" or "host"
            ],
            "RamdiskId" =>  ::String,
            "SpotPrice" =>  ::String,
            "SubnetId" =>  ::String,
            "UserData" =>  ::String,
            "WeightedCapacity" =>  double,
            "TagSpecificationSet" =>  [[
                "ResourceType" =>  "customer-gateway", "dhcp-options", "image", "instance", "internet-gateway", "network-acl", "network-interface", "reserved-instances", "route-table", "snapshot", "spot-instances-request", "subnet", "security-group", "volume", "vpc", "vpn-connection" or "vpn-gateway",
                "Tag" =>  [[
                    "Key" =>  ::String,
                    "Value" =>  ::String
                ], ...]
            ], ...]
        ], ...],
        "LaunchTemplateConfigs" =>  [[
            "LaunchTemplateSpecification" =>  [
                "LaunchTemplateId" =>  ::String,
                "LaunchTemplateName" =>  ::String,
                "Version" =>  ::String
            ],
            "Overrides" =>  [[
                "InstanceType" =>  "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5.metal", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "r5d.metal", "x1.16xlarge", "x1.32xlarge", "x1e.xlarge", "x1e.2xlarge", "x1e.4xlarge", "x1e.8xlarge", "x1e.16xlarge", "x1e.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "i3.metal", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.18xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.18xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "p3.2xlarge", "p3.8xlarge", "p3.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.12xlarge", "m5.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.12xlarge", "m5d.24xlarge", "h1.2xlarge", "h1.4xlarge", "h1.8xlarge", "h1.16xlarge", "z1d.large", "z1d.xlarge", "z1d.2xlarge", "z1d.3xlarge", "z1d.6xlarge" or "z1d.12xlarge",
                "SpotPrice" =>  ::String,
                "SubnetId" =>  ::String,
                "AvailabilityZone" =>  ::String,
                "WeightedCapacity" =>  double,
                "Priority" =>  double
            ], ...]
        ], ...],
        "SpotPrice" =>  ::String,
        "TargetCapacity" => <required> ::Int,
        "OnDemandTargetCapacity" =>  ::Int,
        "TerminateInstancesWithExpiration" =>  ::Bool,
        "Type" =>  "request" or "maintain",
        "ValidFrom" =>  timestamp,
        "ValidUntil" =>  timestamp,
        "ReplaceUnhealthyInstances" =>  ::Bool,
        "InstanceInterruptionBehavior" =>  "hibernate", "stop" or "terminate",
        "LoadBalancersConfig" =>  [
            "ClassicLoadBalancersConfig" =>  ["ClassicLoadBalancers" => <required> [["Name" => <required> ::String], ...]],
            "TargetGroupsConfig" =>  ["TargetGroups" => <required> [["Arn" => <required> ::String], ...]]
        ],
        "InstancePoolsToUseCount" =>  ::Int
    ]
```



# Returns

`RequestSpotFleetResponse`

# Example: To request a Spot fleet in the subnet with the lowest price

This example creates a Spot fleet request with two launch specifications that differ only by subnet. The Spot fleet launches the instances in the specified subnet with the lowest price. If the instances are launched in a default VPC, they receive a public IP address by default. If the instances are launched in a nondefault VPC, they do not receive a public IP address by default. Note that you can't specify different subnets from the same Availability Zone in a Spot fleet request.

Input:
```
[
    "SpotFleetRequestConfig" => [
        "IamFleetRole" => "arn:aws:iam::123456789012:role/my-spot-fleet-role",
        "LaunchSpecifications" => [
            [
                "IamInstanceProfile" => [
                    "Arn" => "arn:aws:iam::123456789012:instance-profile/my-iam-role"
                ],
                "ImageId" => "ami-1a2b3c4d",
                "InstanceType" => "m3.medium",
                "KeyName" => "my-key-pair",
                "SecurityGroups" => [
                    [
                        "GroupId" => "sg-1a2b3c4d"
                    ]
                ],
                "SubnetId" => "subnet-1a2b3c4d, subnet-3c4d5e6f"
            ]
        ],
        "SpotPrice" => "0.04",
        "TargetCapacity" => 2
    ]
]
```

Output:
```
Dict(
    "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
)
```

# Example: To request a Spot fleet in the Availability Zone with the lowest price

This example creates a Spot fleet request with two launch specifications that differ only by Availability Zone. The Spot fleet launches the instances in the specified Availability Zone with the lowest price. If your account supports EC2-VPC only, Amazon EC2 launches the Spot instances in the default subnet of the Availability Zone. If your account supports EC2-Classic, Amazon EC2 launches the instances in EC2-Classic in the Availability Zone.

Input:
```
[
    "SpotFleetRequestConfig" => [
        "IamFleetRole" => "arn:aws:iam::123456789012:role/my-spot-fleet-role",
        "LaunchSpecifications" => [
            [
                "IamInstanceProfile" => [
                    "Arn" => "arn:aws:iam::123456789012:instance-profile/my-iam-role"
                ],
                "ImageId" => "ami-1a2b3c4d",
                "InstanceType" => "m3.medium",
                "KeyName" => "my-key-pair",
                "Placement" => [
                    "AvailabilityZone" => "us-west-2a, us-west-2b"
                ],
                "SecurityGroups" => [
                    [
                        "GroupId" => "sg-1a2b3c4d"
                    ]
                ]
            ]
        ],
        "SpotPrice" => "0.04",
        "TargetCapacity" => 2
    ]
]
```

Output:
```
Dict(
    "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
)
```

# Example: To launch Spot instances in a subnet and assign them public IP addresses

This example assigns public addresses to instances launched in a nondefault VPC. Note that when you specify a network interface, you must include the subnet ID and security group ID using the network interface.

Input:
```
[
    "SpotFleetRequestConfig" => [
        "IamFleetRole" => "arn:aws:iam::123456789012:role/my-spot-fleet-role",
        "LaunchSpecifications" => [
            [
                "IamInstanceProfile" => [
                    "Arn" => "arn:aws:iam::880185128111:instance-profile/my-iam-role"
                ],
                "ImageId" => "ami-1a2b3c4d",
                "InstanceType" => "m3.medium",
                "KeyName" => "my-key-pair",
                "NetworkInterfaces" => [
                    [
                        "AssociatePublicIpAddress" => true,
                        "DeviceIndex" => 0,
                        "Groups" => [
                            "sg-1a2b3c4d"
                        ],
                        "SubnetId" => "subnet-1a2b3c4d"
                    ]
                ]
            ]
        ],
        "SpotPrice" => "0.04",
        "TargetCapacity" => 2
    ]
]
```

Output:
```
Dict(
    "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
)
```

# Example: To request a Spot fleet using the diversified allocation strategy

This example creates a Spot fleet request that launches 30 instances using the diversified allocation strategy. The launch specifications differ by instance type. The Spot fleet distributes the instances across the launch specifications such that there are 10 instances of each type.

Input:
```
[
    "SpotFleetRequestConfig" => [
        "AllocationStrategy" => "diversified",
        "IamFleetRole" => "arn:aws:iam::123456789012:role/my-spot-fleet-role",
        "LaunchSpecifications" => [
            [
                "ImageId" => "ami-1a2b3c4d",
                "InstanceType" => "c4.2xlarge",
                "SubnetId" => "subnet-1a2b3c4d"
            ],
            [
                "ImageId" => "ami-1a2b3c4d",
                "InstanceType" => "m3.2xlarge",
                "SubnetId" => "subnet-1a2b3c4d"
            ],
            [
                "ImageId" => "ami-1a2b3c4d",
                "InstanceType" => "r3.2xlarge",
                "SubnetId" => "subnet-1a2b3c4d"
            ]
        ],
        "SpotPrice" => "0.70",
        "TargetCapacity" => 30
    ]
]
```

Output:
```
Dict(
    "SpotFleetRequestId" => "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RequestSpotFleet)
"""
@inline request_spot_fleet(aws::AWSConfig=default_aws_config(); args...) = request_spot_fleet(aws, args)

@inline request_spot_fleet(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "RequestSpotFleet", args)

@inline request_spot_fleet(args) = request_spot_fleet(default_aws_config(), args)


"""
    using AWSSDK.EC2.request_spot_instances
    request_spot_instances([::AWSConfig], arguments::Dict)
    request_spot_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "RequestSpotInstances", arguments::Dict)
    ec2([::AWSConfig], "RequestSpotInstances", <keyword arguments>)

# RequestSpotInstances Operation

Creates a Spot Instance request.

For more information, see [Spot Instance Requests](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html) in the *Amazon EC2 User Guide for Linux Instances*.

# Arguments

## `AvailabilityZoneGroup = ::String`
The user-specified name for a logical grouping of requests.

When you specify an Availability Zone group in a Spot Instance request, all Spot Instances in the request are launched in the same Availability Zone. Instance proximity is maintained with this parameter, but the choice of Availability Zone is not. The group applies only to requests for Spot Instances of the same instance type. Any additional Spot Instance requests that are specified with the same Availability Zone group name are launched in that same Availability Zone, as long as at least one instance from the group is still active.

If there is no active instance running in the Availability Zone group that you specify for a new Spot Instance request (all instances are terminated, the request is expired, or the maximum price you specified falls below current Spot price), then Amazon EC2 launches the instance in any Availability Zone where the constraint can be met. Consequently, the subsequent set of Spot Instances could be placed in a different zone from the original request, even if you specified the same Availability Zone group.

Default: Instances are launched in any available Availability Zone.


## `BlockDurationMinutes = ::Int`
The required duration for the Spot Instances (also known as Spot blocks), in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300, or 360).

The duration period starts as soon as your Spot Instance receives its instance ID. At the end of the duration period, Amazon EC2 marks the Spot Instance for termination and provides a Spot Instance termination notice, which gives the instance a two-minute warning before it terminates.

You can't specify an Availability Zone group or a launch group if you specify a duration.


## `ClientToken = ::String`
Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html) in the *Amazon EC2 User Guide for Linux Instances*.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InstanceCount = ::Int`
The maximum number of Spot Instances to launch.

Default: 1


## `LaunchGroup = ::String`
The instance launch group. Launch groups are Spot Instances that launch together and terminate together.

Default: Instances are launched and terminated individually


## `LaunchSpecification = [ ... ]`
The launch specification.
```
 LaunchSpecification = [
        "SecurityGroupId" =>  [::String, ...],
        "SecurityGroup" =>  [::String, ...],
        "AddressingType" =>  ::String,
        "BlockDeviceMapping" =>  [[
            "DeviceName" =>  ::String,
            "VirtualName" =>  ::String,
            "Ebs" =>  [
                "Encrypted" =>  ::Bool,
                "DeleteOnTermination" =>  ::Bool,
                "Iops" =>  ::Int,
                "KmsKeyId" =>  ::String,
                "SnapshotId" =>  ::String,
                "VolumeSize" =>  ::Int,
                "VolumeType" =>  "standard", "io1", "gp2", "sc1" or "st1"
            ],
            "NoDevice" =>  ::String
        ], ...],
        "EbsOptimized" =>  ::Bool,
        "IamInstanceProfile" =>  [
            "Arn" =>  ::String,
            "Name" =>  ::String
        ],
        "ImageId" =>  ::String,
        "InstanceType" =>  "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5.metal", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "r5d.metal", "x1.16xlarge", "x1.32xlarge", "x1e.xlarge", "x1e.2xlarge", "x1e.4xlarge", "x1e.8xlarge", "x1e.16xlarge", "x1e.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "i3.metal", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.18xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.18xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "p3.2xlarge", "p3.8xlarge", "p3.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.12xlarge", "m5.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.12xlarge", "m5d.24xlarge", "h1.2xlarge", "h1.4xlarge", "h1.8xlarge", "h1.16xlarge", "z1d.large", "z1d.xlarge", "z1d.2xlarge", "z1d.3xlarge", "z1d.6xlarge" or "z1d.12xlarge",
        "KernelId" =>  ::String,
        "KeyName" =>  ::String,
        "Monitoring" =>  ["Enabled" => <required> ::Bool],
        "NetworkInterface" =>  [[
            "AssociatePublicIpAddress" =>  ::Bool,
            "DeleteOnTermination" =>  ::Bool,
            "Description" =>  ::String,
            "DeviceIndex" =>  ::Int,
            "SecurityGroupId" =>  [::String, ...],
            "Ipv6AddressCount" =>  ::Int,
            "Ipv6AddressesSet" =>  [["Ipv6Address" =>  ::String], ...],
            "NetworkInterfaceId" =>  ::String,
            "PrivateIpAddress" =>  ::String,
            "PrivateIpAddressesSet" =>  [[
                "Primary" =>  ::Bool,
                "PrivateIpAddress" =>  ::String
            ], ...],
            "SecondaryPrivateIpAddressCount" =>  ::Int,
            "SubnetId" =>  ::String
        ], ...],
        "Placement" =>  [
            "AvailabilityZone" =>  ::String,
            "GroupName" =>  ::String,
            "Tenancy" =>  "default", "dedicated" or "host"
        ],
        "RamdiskId" =>  ::String,
        "SubnetId" =>  ::String,
        "UserData" =>  ::String
    ]
```

## `SpotPrice = ::String`
The maximum price per hour that you are willing to pay for a Spot Instance. The default is the On-Demand price.


## `Type = "one-time" or "persistent"`
The Spot Instance request type.

Default: `one-time`


## `ValidFrom = timestamp`
The start date of the request. If this is a one-time request, the request becomes active at this date and time and remains active until all instances launch, the request expires, or the request is canceled. If the request is persistent, the request becomes active at this date and time and remains active until it expires or is canceled.


## `ValidUntil = timestamp`
The end date of the request. If this is a one-time request, the request remains active until all instances launch, the request is canceled, or this date is reached. If the request is persistent, it remains active until it is canceled or this date is reached. The default end date is 7 days from the current date.


## `InstanceInterruptionBehavior = "hibernate", "stop" or "terminate"`
The behavior when a Spot Instance is interrupted. The default is `terminate`.




# Returns

`RequestSpotInstancesResult`

# Example: To create a one-time Spot Instance request

This example creates a one-time Spot Instance request for five instances in the specified Availability Zone. If your account supports EC2-VPC only, Amazon EC2 launches the instances in the default subnet of the specified Availability Zone. If your account supports EC2-Classic, Amazon EC2 launches the instances in EC2-Classic in the specified Availability Zone.

Input:
```
[
    "InstanceCount" => 5,
    "LaunchSpecification" => [
        "IamInstanceProfile" => [
            "Arn" => "arn:aws:iam::123456789012:instance-profile/my-iam-role"
        ],
        "ImageId" => "ami-1a2b3c4d",
        "InstanceType" => "m3.medium",
        "KeyName" => "my-key-pair",
        "Placement" => [
            "AvailabilityZone" => "us-west-2a"
        ],
        "SecurityGroupIds" => [
            "sg-1a2b3c4d"
        ]
    ],
    "SpotPrice" => "0.03",
    "Type" => "one-time"
]
```

# Example: To create a one-time Spot Instance request

This example command creates a one-time Spot Instance request for five instances in the specified subnet. Amazon EC2 launches the instances in the specified subnet. If the VPC is a nondefault VPC, the instances do not receive a public IP address by default.

Input:
```
[
    "InstanceCount" => 5,
    "LaunchSpecification" => [
        "IamInstanceProfile" => [
            "Arn" => "arn:aws:iam::123456789012:instance-profile/my-iam-role"
        ],
        "ImageId" => "ami-1a2b3c4d",
        "InstanceType" => "m3.medium",
        "SecurityGroupIds" => [
            "sg-1a2b3c4d"
        ],
        "SubnetId" => "subnet-1a2b3c4d"
    ],
    "SpotPrice" => "0.050",
    "Type" => "one-time"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RequestSpotInstances)
"""
@inline request_spot_instances(aws::AWSConfig=default_aws_config(); args...) = request_spot_instances(aws, args)

@inline request_spot_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "RequestSpotInstances", args)

@inline request_spot_instances(args) = request_spot_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.reset_fpga_image_attribute
    reset_fpga_image_attribute([::AWSConfig], arguments::Dict)
    reset_fpga_image_attribute([::AWSConfig]; FpgaImageId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ResetFpgaImageAttribute", arguments::Dict)
    ec2([::AWSConfig], "ResetFpgaImageAttribute", FpgaImageId=, <keyword arguments>)

# ResetFpgaImageAttribute Operation

Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its default value. You can only reset the load permission attribute.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `FpgaImageId = ::String` -- *Required*
The ID of the AFI.


## `Attribute = "loadPermission"`
The attribute.




# Returns

`ResetFpgaImageAttributeResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetFpgaImageAttribute)
"""
@inline reset_fpga_image_attribute(aws::AWSConfig=default_aws_config(); args...) = reset_fpga_image_attribute(aws, args)

@inline reset_fpga_image_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ResetFpgaImageAttribute", args)

@inline reset_fpga_image_attribute(args) = reset_fpga_image_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.reset_image_attribute
    reset_image_attribute([::AWSConfig], arguments::Dict)
    reset_image_attribute([::AWSConfig]; Attribute=, ImageId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ResetImageAttribute", arguments::Dict)
    ec2([::AWSConfig], "ResetImageAttribute", Attribute=, ImageId=, <keyword arguments>)

# ResetImageAttribute Operation

Resets an attribute of an AMI to its default value.

**Note**
> The productCodes attribute can't be reset.

# Arguments

## `Attribute = "launchPermission"` -- *Required*
The attribute to reset (currently you can only reset the launch permission attribute).


## `ImageId = ::String` -- *Required*
The ID of the AMI.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To reset the launchPermission attribute

This example resets the launchPermission attribute for the specified AMI. By default, AMIs are private.

Input:
```
[
    "Attribute" => "launchPermission",
    "ImageId" => "ami-5731123e"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetImageAttribute)
"""
@inline reset_image_attribute(aws::AWSConfig=default_aws_config(); args...) = reset_image_attribute(aws, args)

@inline reset_image_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ResetImageAttribute", args)

@inline reset_image_attribute(args) = reset_image_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.reset_instance_attribute
    reset_instance_attribute([::AWSConfig], arguments::Dict)
    reset_instance_attribute([::AWSConfig]; Attribute=, InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ResetInstanceAttribute", arguments::Dict)
    ec2([::AWSConfig], "ResetInstanceAttribute", Attribute=, InstanceId=, <keyword arguments>)

# ResetInstanceAttribute Operation

Resets an attribute of an instance to its default value. To reset the `kernel` or `ramdisk`, the instance must be in a stopped state. To reset the `sourceDestCheck`, the instance can be either running or stopped.

The `sourceDestCheck` attribute controls whether source/destination checking is enabled. The default value is `true`, which means checking is enabled. This value must be `false` for a NAT instance to perform NAT. For more information, see [NAT Instances](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html) in the *Amazon Virtual Private Cloud User Guide*.

# Arguments

## `Attribute = "instanceType", "kernel", "ramdisk", "userData", "disableApiTermination", "instanceInitiatedShutdownBehavior", "rootDeviceName", "blockDeviceMapping", "productCodes", "sourceDestCheck", "groupSet", "ebsOptimized", "sriovNetSupport" or "enaSupport"` -- *Required*
The attribute to reset.

**Important**
> You can only reset the following attributes: `kernel` | `ramdisk` | `sourceDestCheck`. To change an instance attribute, use [ModifyInstanceAttribute](@ref).


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InstanceId = ::String` -- *Required*
The ID of the instance.




# Example: To reset the sourceDestCheck attribute

This example resets the sourceDestCheck attribute for the specified instance.

Input:
```
[
    "Attribute" => "sourceDestCheck",
    "InstanceId" => "i-1234567890abcdef0"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetInstanceAttribute)
"""
@inline reset_instance_attribute(aws::AWSConfig=default_aws_config(); args...) = reset_instance_attribute(aws, args)

@inline reset_instance_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ResetInstanceAttribute", args)

@inline reset_instance_attribute(args) = reset_instance_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.reset_network_interface_attribute
    reset_network_interface_attribute([::AWSConfig], arguments::Dict)
    reset_network_interface_attribute([::AWSConfig]; NetworkInterfaceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ResetNetworkInterfaceAttribute", arguments::Dict)
    ec2([::AWSConfig], "ResetNetworkInterfaceAttribute", NetworkInterfaceId=, <keyword arguments>)

# ResetNetworkInterfaceAttribute Operation

Resets a network interface attribute. You can specify only one attribute at a time.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `NetworkInterfaceId = ::String` -- *Required*
The ID of the network interface.


## `SourceDestCheck = ::String`
The source/destination checking attribute. Resets the value to `true`.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetNetworkInterfaceAttribute)
"""
@inline reset_network_interface_attribute(aws::AWSConfig=default_aws_config(); args...) = reset_network_interface_attribute(aws, args)

@inline reset_network_interface_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ResetNetworkInterfaceAttribute", args)

@inline reset_network_interface_attribute(args) = reset_network_interface_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.reset_snapshot_attribute
    reset_snapshot_attribute([::AWSConfig], arguments::Dict)
    reset_snapshot_attribute([::AWSConfig]; Attribute=, SnapshotId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "ResetSnapshotAttribute", arguments::Dict)
    ec2([::AWSConfig], "ResetSnapshotAttribute", Attribute=, SnapshotId=, <keyword arguments>)

# ResetSnapshotAttribute Operation

Resets permission settings for the specified snapshot.

For more information about modifying snapshot permissions, see [Sharing Snapshots](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `Attribute = "productCodes" or "createVolumePermission"` -- *Required*
The attribute to reset. Currently, only the attribute for permission to create volumes can be reset.


## `SnapshotId = ::String` -- *Required*
The ID of the snapshot.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Example: To reset a snapshot attribute

This example resets the create volume permissions for snapshot ``snap-1234567890abcdef0``. If the command succeeds, no output is returned.

Input:
```
[
    "Attribute" => "createVolumePermission",
    "SnapshotId" => "snap-1234567890abcdef0"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetSnapshotAttribute)
"""
@inline reset_snapshot_attribute(aws::AWSConfig=default_aws_config(); args...) = reset_snapshot_attribute(aws, args)

@inline reset_snapshot_attribute(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "ResetSnapshotAttribute", args)

@inline reset_snapshot_attribute(args) = reset_snapshot_attribute(default_aws_config(), args)


"""
    using AWSSDK.EC2.restore_address_to_classic
    restore_address_to_classic([::AWSConfig], arguments::Dict)
    restore_address_to_classic([::AWSConfig]; PublicIp=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "RestoreAddressToClassic", arguments::Dict)
    ec2([::AWSConfig], "RestoreAddressToClassic", PublicIp=, <keyword arguments>)

# RestoreAddressToClassic Operation

Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform. You cannot move an Elastic IP address that was originally allocated for use in EC2-VPC. The Elastic IP address must not be associated with an instance or network interface.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `PublicIp = ::String` -- *Required*
The Elastic IP address.




# Returns

`RestoreAddressToClassicResult`

# Example: To restore an address to EC2-Classic

This example restores the specified Elastic IP address to the EC2-Classic platform.

Input:
```
[
    "PublicIp" => "198.51.100.0"
]
```

Output:
```
Dict(
    "PublicIp" => "198.51.100.0",
    "Status" => "MoveInProgress"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RestoreAddressToClassic)
"""
@inline restore_address_to_classic(aws::AWSConfig=default_aws_config(); args...) = restore_address_to_classic(aws, args)

@inline restore_address_to_classic(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "RestoreAddressToClassic", args)

@inline restore_address_to_classic(args) = restore_address_to_classic(default_aws_config(), args)


"""
    using AWSSDK.EC2.revoke_security_group_egress
    revoke_security_group_egress([::AWSConfig], arguments::Dict)
    revoke_security_group_egress([::AWSConfig]; GroupId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "RevokeSecurityGroupEgress", arguments::Dict)
    ec2([::AWSConfig], "RevokeSecurityGroupEgress", GroupId=, <keyword arguments>)

# RevokeSecurityGroupEgress Operation

[EC2-VPC only] Removes one or more egress rules from a security group for EC2-VPC. This action doesn't apply to security groups for use in EC2-Classic. To remove a rule, the values that you specify (for example, ports) must match the existing rule's values exactly.

Each rule consists of the protocol and the IPv4 or IPv6 CIDR range or source security group. For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not have to specify the description to revoke the rule.

Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `GroupId = ::String` -- *Required*
The ID of the security group.


## `IpPermissions = [[ ... ], ...]`
One or more sets of IP permissions. You can't specify a destination security group and a CIDR IP address range in the same set of permissions.
```
 IpPermissions = [[
        "FromPort" =>  ::Int,
        "IpProtocol" =>  ::String,
        "IpRanges" =>  [[
            "CidrIp" =>  ::String,
            "Description" =>  ::String
        ], ...],
        "Ipv6Ranges" =>  [[
            "CidrIpv6" =>  ::String,
            "Description" =>  ::String
        ], ...],
        "PrefixListIds" =>  [[
            "Description" =>  ::String,
            "PrefixListId" =>  ::String
        ], ...],
        "ToPort" =>  ::Int,
        "Groups" =>  [[
            "Description" =>  ::String,
            "GroupId" =>  ::String,
            "GroupName" =>  ::String,
            "PeeringStatus" =>  ::String,
            "UserId" =>  ::String,
            "VpcId" =>  ::String,
            "VpcPeeringConnectionId" =>  ::String
        ], ...]
    ], ...]
```

## `CidrIp = ::String`
Not supported. Use a set of IP permissions to specify the CIDR.


## `FromPort = ::Int`
Not supported. Use a set of IP permissions to specify the port.


## `IpProtocol = ::String`
Not supported. Use a set of IP permissions to specify the protocol name or number.


## `ToPort = ::Int`
Not supported. Use a set of IP permissions to specify the port.


## `SourceSecurityGroupName = ::String`
Not supported. Use a set of IP permissions to specify a destination security group.


## `SourceSecurityGroupOwnerId = ::String`
Not supported. Use a set of IP permissions to specify a destination security group.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RevokeSecurityGroupEgress)
"""
@inline revoke_security_group_egress(aws::AWSConfig=default_aws_config(); args...) = revoke_security_group_egress(aws, args)

@inline revoke_security_group_egress(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "RevokeSecurityGroupEgress", args)

@inline revoke_security_group_egress(args) = revoke_security_group_egress(default_aws_config(), args)


"""
    using AWSSDK.EC2.revoke_security_group_ingress
    revoke_security_group_ingress([::AWSConfig], arguments::Dict)
    revoke_security_group_ingress([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "RevokeSecurityGroupIngress", arguments::Dict)
    ec2([::AWSConfig], "RevokeSecurityGroupIngress", <keyword arguments>)

# RevokeSecurityGroupIngress Operation

Removes one or more ingress rules from a security group. To remove a rule, the values that you specify (for example, ports) must match the existing rule's values exactly.

**Note**
> [EC2-Classic security groups only] If the values you specify do not match the existing rule's values, no error is returned. Use [DescribeSecurityGroups](@ref) to verify that the rule has been removed.

Each rule consists of the protocol and the CIDR range or source security group. For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not have to specify the description to revoke the rule.

Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.

# Arguments

## `CidrIp = ::String`
The CIDR IP address range. You can't specify this parameter when specifying a source security group.


## `FromPort = ::Int`
The start of port range for the TCP and UDP protocols, or an ICMP type number. For the ICMP type number, use `-1` to specify all ICMP types.


## `GroupId = ::String`
The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.


## `GroupName = ::String`
[EC2-Classic, default VPC] The name of the security group. You must specify either the security group ID or the security group name in the request.


## `IpPermissions = [[ ... ], ...]`
One or more sets of IP permissions. You can't specify a source security group and a CIDR IP address range in the same set of permissions.
```
 IpPermissions = [[
        "FromPort" =>  ::Int,
        "IpProtocol" =>  ::String,
        "IpRanges" =>  [[
            "CidrIp" =>  ::String,
            "Description" =>  ::String
        ], ...],
        "Ipv6Ranges" =>  [[
            "CidrIpv6" =>  ::String,
            "Description" =>  ::String
        ], ...],
        "PrefixListIds" =>  [[
            "Description" =>  ::String,
            "PrefixListId" =>  ::String
        ], ...],
        "ToPort" =>  ::Int,
        "Groups" =>  [[
            "Description" =>  ::String,
            "GroupId" =>  ::String,
            "GroupName" =>  ::String,
            "PeeringStatus" =>  ::String,
            "UserId" =>  ::String,
            "VpcId" =>  ::String,
            "VpcPeeringConnectionId" =>  ::String
        ], ...]
    ], ...]
```

## `IpProtocol = ::String`
The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)). Use `-1` to specify all.


## `SourceSecurityGroupName = ::String`
[EC2-Classic, default VPC] The name of the source security group. You can't specify this parameter in combination with the following parameters: the CIDR IP address range, the start of the port range, the IP protocol, and the end of the port range. For EC2-VPC, the source security group must be in the same VPC. To revoke a specific rule for an IP protocol and port range, use a set of IP permissions instead.


## `SourceSecurityGroupOwnerId = ::String`
[EC2-Classic] The AWS account ID of the source security group, if the source security group is in a different account. You can't specify this parameter in combination with the following parameters: the CIDR IP address range, the IP protocol, the start of the port range, and the end of the port range. To revoke a specific rule for an IP protocol and port range, use a set of IP permissions instead.


## `ToPort = ::Int`
The end of port range for the TCP and UDP protocols, or an ICMP code number. For the ICMP code number, use `-1` to specify all ICMP codes for the ICMP type.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RevokeSecurityGroupIngress)
"""
@inline revoke_security_group_ingress(aws::AWSConfig=default_aws_config(); args...) = revoke_security_group_ingress(aws, args)

@inline revoke_security_group_ingress(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "RevokeSecurityGroupIngress", args)

@inline revoke_security_group_ingress(args) = revoke_security_group_ingress(default_aws_config(), args)


"""
    using AWSSDK.EC2.run_instances
    run_instances([::AWSConfig], arguments::Dict)
    run_instances([::AWSConfig]; MaxCount=, MinCount=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "RunInstances", arguments::Dict)
    ec2([::AWSConfig], "RunInstances", MaxCount=, MinCount=, <keyword arguments>)

# RunInstances Operation

Launches the specified number of instances using an AMI for which you have permissions.

You can specify a number of options, or leave the default options. The following rules apply:

*   [EC2-VPC] If you don't specify a subnet ID, we choose a default subnet from your default VPC for you. If you don't have a default VPC, you must specify a subnet ID in the request.

*   [EC2-Classic] If don't specify an Availability Zone, we choose one for you.

*   Some instance types must be launched into a VPC. If you do not have a default VPC, or if you do not specify a subnet ID, the request fails. For more information, see [Instance Types Available Only in a VPC](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#vpc-only-instance-types).

*   [EC2-VPC] All instances have a network interface with a primary private IPv4 address. If you don't specify this address, we choose one from the IPv4 range of your subnet.

*   Not all instance types support IPv6 addresses. For more information, see [Instance Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).

*   If you don't specify a security group ID, we use the default security group. For more information, see [Security Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html).

*   If any of the AMIs have a product code attached for which the user has not subscribed, the request fails.

You can create a [launch template](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html), which is a resource that contains the parameters to launch an instance. When you launch an instance using [RunInstances](@ref), you can specify the launch template instead of specifying the launch parameters.

To ensure faster instance launches, break up large requests into smaller batches. For example, create five separate launch requests for 100 instances each instead of one launch request for 500 instances.

An instance is ready for you to use when it's in the `running` state. You can check the state of your instance using [DescribeInstances](@ref). You can tag instances and EBS volumes during launch, after launch, or both. For more information, see [CreateTags](@ref) and [Tagging Your Amazon EC2 Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html).

Linux instances have access to the public key of the key pair at boot. You can use this key to provide secure access to the instance. Amazon EC2 public images use this feature to provide secure access without passwords. For more information, see [Key Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the *Amazon Elastic Compute Cloud User Guide*.

For troubleshooting, see [What To Do If An Instance Immediately Terminates](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html), and [Troubleshooting Connecting to Your Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `BlockDeviceMapping = [[ ... ], ...]`
One or more block device mapping entries. You can't specify both a snapshot ID and an encryption value. This is because only blank volumes can be encrypted on creation. If a snapshot is the basis for a volume, it is not blank and its encryption status is used for the volume encryption status.
```
 BlockDeviceMapping = [[
        "DeviceName" =>  ::String,
        "VirtualName" =>  ::String,
        "Ebs" =>  [
            "Encrypted" =>  ::Bool,
            "DeleteOnTermination" =>  ::Bool,
            "Iops" =>  ::Int,
            "KmsKeyId" =>  ::String,
            "SnapshotId" =>  ::String,
            "VolumeSize" =>  ::Int,
            "VolumeType" =>  "standard", "io1", "gp2", "sc1" or "st1"
        ],
        "NoDevice" =>  ::String
    ], ...]
```

## `ImageId = ::String`
The ID of the AMI, which you can get by calling [DescribeImages](@ref). An AMI is required to launch an instance and must be specified here or in a launch template.


## `InstanceType = "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5.metal", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "r5d.metal", "x1.16xlarge", "x1.32xlarge", "x1e.xlarge", "x1e.2xlarge", "x1e.4xlarge", "x1e.8xlarge", "x1e.16xlarge", "x1e.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "i3.metal", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.18xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.18xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "p3.2xlarge", "p3.8xlarge", "p3.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.12xlarge", "m5.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.12xlarge", "m5d.24xlarge", "h1.2xlarge", "h1.4xlarge", "h1.8xlarge", "h1.16xlarge", "z1d.large", "z1d.xlarge", "z1d.2xlarge", "z1d.3xlarge", "z1d.6xlarge" or "z1d.12xlarge"`
The instance type. For more information, see [Instance Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the *Amazon Elastic Compute Cloud User Guide*.

Default: `m1.small`


## `Ipv6AddressCount = ::Int`
[EC2-VPC] A number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet. You cannot specify this option and the option to assign specific IPv6 addresses in the same request. You can specify this option if you've specified a minimum number of instances to launch.


## `Ipv6Address = [["Ipv6Address" =>  ::String], ...]`
[EC2-VPC] Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface. You cannot specify this option and the option to assign a number of IPv6 addresses in the same request. You cannot specify this option if you've specified a minimum number of instances to launch.


## `KernelId = ::String`
The ID of the kernel.

**Important**
> We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `KeyName = ::String`
The name of the key pair. You can create a key pair using [CreateKeyPair](@ref) or [ImportKeyPair](@ref).

**Important**
> If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in.


## `MaxCount = ::Int` -- *Required*
The maximum number of instances to launch. If you specify more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches the largest possible number of instances above `MinCount`.

Constraints: Between 1 and the maximum number you're allowed for the specified instance type. For more information about the default limits, and how to request an increase, see [How many instances can I run in Amazon EC2](http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2) in the Amazon EC2 FAQ.


## `MinCount = ::Int` -- *Required*
The minimum number of instances to launch. If you specify a minimum that is more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches no instances.

Constraints: Between 1 and the maximum number you're allowed for the specified instance type. For more information about the default limits, and how to request an increase, see [How many instances can I run in Amazon EC2](http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2) in the Amazon EC2 General FAQ.


## `Monitoring = ["Enabled" => <required> ::Bool]`
The monitoring for the instance.


## `Placement = [ ... ]`
The placement for the instance.
```
 Placement = [
        "AvailabilityZone" =>  ::String,
        "Affinity" =>  ::String,
        "GroupName" =>  ::String,
        "HostId" =>  ::String,
        "Tenancy" =>  "default", "dedicated" or "host",
        "SpreadDomain" =>  ::String
    ]
```

## `RamdiskId = ::String`
The ID of the RAM disk.

**Important**
> We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html) in the *Amazon Elastic Compute Cloud User Guide*.


## `SecurityGroupId = [::String, ...]`
One or more security group IDs. You can create a security group using [CreateSecurityGroup](@ref).

Default: Amazon EC2 uses the default security group.


## `SecurityGroup = [::String, ...]`
[EC2-Classic, default VPC] One or more security group names. For a nondefault VPC, you must use security group IDs instead.

Default: Amazon EC2 uses the default security group.


## `SubnetId = ::String`
[EC2-VPC] The ID of the subnet to launch the instance into.


## `UserData = ::String`
The user data to make available to the instance. For more information, see [Running Commands on Your Linux Instance at Launch](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html) (Linux) and [Adding User Data](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data) (Windows). If you are using a command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text.


## `AdditionalInfo = ::String`
Reserved.


## `ClientToken = ::String`
Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).

Constraints: Maximum 64 ASCII characters


## `DisableApiTermination = ::Bool`
If you set this parameter to `true`, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. To change this attribute to `false` after launch, use [ModifyInstanceAttribute](@ref). Alternatively, if you set `InstanceInitiatedShutdownBehavior` to `terminate`, you can terminate the instance by running the shutdown command from the instance.

Default: `false`


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `EbsOptimized = ::Bool`
Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance.

Default: `false`


## `IamInstanceProfile = [ ... ]`
The IAM instance profile.
```
 IamInstanceProfile = [
        "Arn" =>  ::String,
        "Name" =>  ::String
    ]
```

## `InstanceInitiatedShutdownBehavior = "stop" or "terminate"`
Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).

Default: `stop`


## `NetworkInterface = [[ ... ], ...]`
One or more network interfaces.
```
 NetworkInterface = [[
        "AssociatePublicIpAddress" =>  ::Bool,
        "DeleteOnTermination" =>  ::Bool,
        "Description" =>  ::String,
        "DeviceIndex" =>  ::Int,
        "SecurityGroupId" =>  [::String, ...],
        "Ipv6AddressCount" =>  ::Int,
        "Ipv6AddressesSet" =>  [["Ipv6Address" =>  ::String], ...],
        "NetworkInterfaceId" =>  ::String,
        "PrivateIpAddress" =>  ::String,
        "PrivateIpAddressesSet" =>  [[
            "Primary" =>  ::Bool,
            "PrivateIpAddress" =>  ::String
        ], ...],
        "SecondaryPrivateIpAddressCount" =>  ::Int,
        "SubnetId" =>  ::String
    ], ...]
```

## `PrivateIpAddress = ::String`
[EC2-VPC] The primary IPv4 address. You must specify a value from the IPv4 address range of the subnet.

Only one private IP address can be designated as primary. You can't specify this option if you've specified the option to designate a private IP address as the primary IP address in a network interface specification. You cannot specify this option if you're launching more than one instance in the request.


## `ElasticGpuSpecification = [["Type" => <required> ::String], ...]`
An elastic GPU to associate with the instance.


## `TagSpecification = [[ ... ], ...]`
The tags to apply to the resources during launch. You can only tag instances and volumes on launch. The specified tags are applied to all instances or volumes that are created during launch. To tag a resource after it has been created, see [CreateTags](@ref).
```
 TagSpecification = [[
        "ResourceType" =>  "customer-gateway", "dhcp-options", "image", "instance", "internet-gateway", "network-acl", "network-interface", "reserved-instances", "route-table", "snapshot", "spot-instances-request", "subnet", "security-group", "volume", "vpc", "vpn-connection" or "vpn-gateway",
        "Tag" =>  [[
            "Key" =>  ::String,
            "Value" =>  ::String
        ], ...]
    ], ...]
```

## `LaunchTemplate = [ ... ]`
The launch template to use to launch the instances. Any parameters that you specify in [RunInstances](@ref) override the same parameters in the launch template. You can specify either the name or ID of a launch template, but not both.
```
 LaunchTemplate = [
        "LaunchTemplateId" =>  ::String,
        "LaunchTemplateName" =>  ::String,
        "Version" =>  ::String
    ]
```

## `InstanceMarketOptions = [ ... ]`
The market (purchasing) option for the instances.

For [RunInstances](@ref), persistent Spot Instance requests are only supported when **InstanceInterruptionBehavior** is set to either `hibernate` or `stop`.
```
 InstanceMarketOptions = [
        "MarketType" =>  "spot",
        "SpotOptions" =>  [
            "MaxPrice" =>  ::String,
            "SpotInstanceType" =>  "one-time" or "persistent",
            "BlockDurationMinutes" =>  ::Int,
            "ValidUntil" =>  timestamp,
            "InstanceInterruptionBehavior" =>  "hibernate", "stop" or "terminate"
        ]
    ]
```

## `CreditSpecification = ["CpuCredits" => <required> ::String]`
The credit option for CPU usage of the instance. Valid values are `standard` and `unlimited`. To change this attribute after launch, use [ModifyInstanceCreditSpecification](@ref). For more information, see [T2 Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/t2-instances.html) in the *Amazon Elastic Compute Cloud User Guide*.

Default: `standard`


## `CpuOptions = [ ... ]`
The CPU options for the instance. For more information, see [Optimizing CPU Options](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html) in the *Amazon Elastic Compute Cloud User Guide*.
```
 CpuOptions = [
        "CoreCount" =>  ::Int,
        "ThreadsPerCore" =>  ::Int
    ]
```



# Returns

`Reservation`

# Example: To launch an instance

This example launches an instance using the specified AMI, instance type, security group, subnet, block device mapping, and tags.

Input:
```
[
    "BlockDeviceMappings" => [
        [
            "DeviceName" => "/dev/sdh",
            "Ebs" => [
                "VolumeSize" => 100
            ]
        ]
    ],
    "ImageId" => "ami-abc12345",
    "InstanceType" => "t2.micro",
    "KeyName" => "my-key-pair",
    "MaxCount" => 1,
    "MinCount" => 1,
    "SecurityGroupIds" => [
        "sg-1a2b3c4d"
    ],
    "SubnetId" => "subnet-6e7f829e",
    "TagSpecifications" => [
        [
            "ResourceType" => "instance",
            "Tags" => [
                [
                    "Key" => "Purpose",
                    "Value" => "test"
                ]
            ]
        ]
    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RunInstances)
"""
@inline run_instances(aws::AWSConfig=default_aws_config(); args...) = run_instances(aws, args)

@inline run_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "RunInstances", args)

@inline run_instances(args) = run_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.run_scheduled_instances
    run_scheduled_instances([::AWSConfig], arguments::Dict)
    run_scheduled_instances([::AWSConfig]; LaunchSpecification=, ScheduledInstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "RunScheduledInstances", arguments::Dict)
    ec2([::AWSConfig], "RunScheduledInstances", LaunchSpecification=, ScheduledInstanceId=, <keyword arguments>)

# RunScheduledInstances Operation

Launches the specified Scheduled Instances.

Before you can launch a Scheduled Instance, you must purchase it and obtain an identifier using [PurchaseScheduledInstances](@ref).

You must launch a Scheduled Instance during its scheduled time period. You can't stop or reboot a Scheduled Instance, but you can terminate it as needed. If you terminate a Scheduled Instance before the current scheduled time period ends, you can launch it again after a few minutes. For more information, see [Scheduled Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `ClientToken = ::String`
Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `InstanceCount = ::Int`
The number of instances.

Default: 1


## `LaunchSpecification = [ ... ]` -- *Required*
The launch specification. You must match the instance type, Availability Zone, network, and platform of the schedule that you purchased.
```
 LaunchSpecification = [
        "BlockDeviceMapping" =>  [[
            "DeviceName" =>  ::String,
            "Ebs" =>  [
                "DeleteOnTermination" =>  ::Bool,
                "Encrypted" =>  ::Bool,
                "Iops" =>  ::Int,
                "SnapshotId" =>  ::String,
                "VolumeSize" =>  ::Int,
                "VolumeType" =>  ::String
            ],
            "NoDevice" =>  ::String,
            "VirtualName" =>  ::String
        ], ...],
        "EbsOptimized" =>  ::Bool,
        "IamInstanceProfile" =>  [
            "Arn" =>  ::String,
            "Name" =>  ::String
        ],
        "ImageId" => <required> ::String,
        "InstanceType" =>  ::String,
        "KernelId" =>  ::String,
        "KeyName" =>  ::String,
        "Monitoring" =>  ["Enabled" =>  ::Bool],
        "NetworkInterface" =>  [[
            "AssociatePublicIpAddress" =>  ::Bool,
            "DeleteOnTermination" =>  ::Bool,
            "Description" =>  ::String,
            "DeviceIndex" =>  ::Int,
            "Group" =>  [::String, ...],
            "Ipv6AddressCount" =>  ::Int,
            "Ipv6Address" =>  [["Ipv6Address" =>  ::String], ...],
            "NetworkInterfaceId" =>  ::String,
            "PrivateIpAddress" =>  ::String,
            "PrivateIpAddressConfig" =>  [[
                "Primary" =>  ::Bool,
                "PrivateIpAddress" =>  ::String
            ], ...],
            "SecondaryPrivateIpAddressCount" =>  ::Int,
            "SubnetId" =>  ::String
        ], ...],
        "Placement" =>  [
            "AvailabilityZone" =>  ::String,
            "GroupName" =>  ::String
        ],
        "RamdiskId" =>  ::String,
        "SecurityGroupId" =>  [::String, ...],
        "SubnetId" =>  ::String,
        "UserData" =>  ::String
    ]
```

## `ScheduledInstanceId = ::String` -- *Required*
The Scheduled Instance ID.




# Returns

`RunScheduledInstancesResult`

# Example: To launch a Scheduled Instance in a VPC

This example launches the specified Scheduled Instance in a VPC.

Input:
```
[
    "InstanceCount" => 1,
    "LaunchSpecification" => [
        "IamInstanceProfile" => [
            "Name" => "my-iam-role"
        ],
        "ImageId" => "ami-12345678",
        "InstanceType" => "c4.large",
        "KeyName" => "my-key-pair",
        "NetworkInterfaces" => [
            [
                "AssociatePublicIpAddress" => true,
                "DeviceIndex" => 0,
                "Groups" => [
                    "sg-12345678"
                ],
                "SubnetId" => "subnet-12345678"
            ]
        ]
    ],
    "ScheduledInstanceId" => "sci-1234-1234-1234-1234-123456789012"
]
```

Output:
```
Dict(
    "InstanceIdSet" => [
        "i-1234567890abcdef0"
    ]
)
```

# Example: To launch a Scheduled Instance in EC2-Classic

This example launches the specified Scheduled Instance in EC2-Classic.

Input:
```
[
    "InstanceCount" => 1,
    "LaunchSpecification" => [
        "IamInstanceProfile" => [
            "Name" => "my-iam-role"
        ],
        "ImageId" => "ami-12345678",
        "InstanceType" => "c4.large",
        "KeyName" => "my-key-pair",
        "Placement" => [
            "AvailabilityZone" => "us-west-2b"
        ],
        "SecurityGroupIds" => [
            "sg-12345678"
        ]
    ],
    "ScheduledInstanceId" => "sci-1234-1234-1234-1234-123456789012"
]
```

Output:
```
Dict(
    "InstanceIdSet" => [
        "i-1234567890abcdef0"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RunScheduledInstances)
"""
@inline run_scheduled_instances(aws::AWSConfig=default_aws_config(); args...) = run_scheduled_instances(aws, args)

@inline run_scheduled_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "RunScheduledInstances", args)

@inline run_scheduled_instances(args) = run_scheduled_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.start_instances
    start_instances([::AWSConfig], arguments::Dict)
    start_instances([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "StartInstances", arguments::Dict)
    ec2([::AWSConfig], "StartInstances", InstanceId=, <keyword arguments>)

# StartInstances Operation

Starts an Amazon EBS-backed instance that you've previously stopped.

Instances that use Amazon EBS volumes as their root devices can be quickly stopped and started. When an instance is stopped, the compute resources are released and you are not billed for instance usage. However, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. You can restart your instance at any time. Every time you start your Windows instance, Amazon EC2 charges you for a full instance hour. If you stop and restart your Windows instance, a new instance hour begins and Amazon EC2 charges you for another full instance hour even if you are still within the same 60-minute period when it was stopped. Every time you start your Linux instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage.

Before stopping an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM.

Performing this operation on an instance that uses an instance store as its root device returns an error.

For more information, see [Stopping Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `InstanceId = [::String, ...]` -- *Required*
One or more instance IDs.


## `AdditionalInfo = ::String`
Reserved.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`StartInstancesResult`

# Example: To start a stopped EC2 instance

This example starts the specified EC2 instance.

Input:
```
[
    "InstanceIds" => [
        "i-1234567890abcdef0"
    ]
]
```

Output:
```
Dict(
    "StartingInstances" => [
        Dict(
            "CurrentState" => Dict(
                "Code" => 0,
                "Name" => "pending"
            ),
            "InstanceId" => "i-1234567890abcdef0",
            "PreviousState" => Dict(
                "Code" => 80,
                "Name" => "stopped"
            )
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/StartInstances)
"""
@inline start_instances(aws::AWSConfig=default_aws_config(); args...) = start_instances(aws, args)

@inline start_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "StartInstances", args)

@inline start_instances(args) = start_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.stop_instances
    stop_instances([::AWSConfig], arguments::Dict)
    stop_instances([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "StopInstances", arguments::Dict)
    ec2([::AWSConfig], "StopInstances", InstanceId=, <keyword arguments>)

# StopInstances Operation

Stops an Amazon EBS-backed instance.

We don't charge usage for a stopped instance, or data transfer fees; however, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. Every time you start your Windows instance, Amazon EC2 charges you for a full instance hour. If you stop and restart your Windows instance, a new instance hour begins and Amazon EC2 charges you for another full instance hour even if you are still within the same 60-minute period when it was stopped. Every time you start your Linux instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage.

You can't start or stop Spot Instances, and you can't stop instance store-backed instances.

When you stop an instance, we shut it down. You can restart your instance at any time. Before stopping an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM.

Stopping an instance is different to rebooting or terminating it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, the root device and any other devices attached during the instance launch are automatically deleted. For more information about the differences between rebooting, stopping, and terminating instances, see [Instance Lifecycle](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) in the *Amazon Elastic Compute Cloud User Guide*.

When you stop an instance, we attempt to shut it down forcibly after a short while. If your instance appears stuck in the stopping state after a period of time, there may be an issue with the underlying host computer. For more information, see [Troubleshooting Stopping Your Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `InstanceId = [::String, ...]` -- *Required*
One or more instance IDs.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `Force = ::Bool`
Forces the instances to stop. The instances do not have an opportunity to flush file system caches or file system metadata. If you use this option, you must perform file system check and repair procedures. This option is not recommended for Windows instances.

Default: `false`




# Returns

`StopInstancesResult`

# Example: To stop a running EC2 instance

This example stops the specified EC2 instance.

Input:
```
[
    "InstanceIds" => [
        "i-1234567890abcdef0"
    ]
]
```

Output:
```
Dict(
    "StoppingInstances" => [
        Dict(
            "CurrentState" => Dict(
                "Code" => 64,
                "Name" => "stopping"
            ),
            "InstanceId" => "i-1234567890abcdef0",
            "PreviousState" => Dict(
                "Code" => 16,
                "Name" => "running"
            )
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/StopInstances)
"""
@inline stop_instances(aws::AWSConfig=default_aws_config(); args...) = stop_instances(aws, args)

@inline stop_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "StopInstances", args)

@inline stop_instances(args) = stop_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.terminate_instances
    terminate_instances([::AWSConfig], arguments::Dict)
    terminate_instances([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "TerminateInstances", arguments::Dict)
    ec2([::AWSConfig], "TerminateInstances", InstanceId=, <keyword arguments>)

# TerminateInstances Operation

Shuts down one or more instances. This operation is idempotent; if you terminate an instance more than once, each call succeeds.

If you specify multiple instances and the request fails (for example, because of a single incorrect instance ID), none of the instances are terminated.

Terminated instances remain visible after termination (for approximately one hour).

By default, Amazon EC2 deletes all EBS volumes that were attached when the instance launched. Volumes attached after instance launch continue running.

You can stop, start, and terminate EBS-backed instances. You can only terminate instance store-backed instances. What happens to an instance differs if you stop it or terminate it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, any attached EBS volumes with the `DeleteOnTermination` block device mapping parameter set to `true` are automatically deleted. For more information about the differences between stopping and terminating instances, see [Instance Lifecycle](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) in the *Amazon Elastic Compute Cloud User Guide*.

For more information about troubleshooting, see [Troubleshooting Terminating Your Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `InstanceId = [::String, ...]` -- *Required*
One or more instance IDs.

Constraints: Up to 1000 instance IDs. We recommend breaking up this request into smaller batches.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`TerminateInstancesResult`

# Example: To terminate an EC2 instance

This example terminates the specified EC2 instance.

Input:
```
[
    "InstanceIds" => [
        "i-1234567890abcdef0"
    ]
]
```

Output:
```
Dict(
    "TerminatingInstances" => [
        Dict(
            "CurrentState" => Dict(
                "Code" => 32,
                "Name" => "shutting-down"
            ),
            "InstanceId" => "i-1234567890abcdef0",
            "PreviousState" => Dict(
                "Code" => 16,
                "Name" => "running"
            )
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/TerminateInstances)
"""
@inline terminate_instances(aws::AWSConfig=default_aws_config(); args...) = terminate_instances(aws, args)

@inline terminate_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "TerminateInstances", args)

@inline terminate_instances(args) = terminate_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.unassign_ipv6addresses
    unassign_ipv6addresses([::AWSConfig], arguments::Dict)
    unassign_ipv6addresses([::AWSConfig]; Ipv6Addresses=, NetworkInterfaceId=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "UnassignIpv6Addresses", arguments::Dict)
    ec2([::AWSConfig], "UnassignIpv6Addresses", Ipv6Addresses=, NetworkInterfaceId=)

# UnassignIpv6Addresses Operation

Unassigns one or more IPv6 addresses from a network interface.

# Arguments

## `Ipv6Addresses = [::String, ...]` -- *Required*
The IPv6 addresses to unassign from the network interface.


## `NetworkInterfaceId = ::String` -- *Required*
The ID of the network interface.




# Returns

`UnassignIpv6AddressesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnassignIpv6Addresses)
"""
@inline unassign_ipv6addresses(aws::AWSConfig=default_aws_config(); args...) = unassign_ipv6addresses(aws, args)

@inline unassign_ipv6addresses(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "UnassignIpv6Addresses", args)

@inline unassign_ipv6addresses(args) = unassign_ipv6addresses(default_aws_config(), args)


"""
    using AWSSDK.EC2.unassign_private_ip_addresses
    unassign_private_ip_addresses([::AWSConfig], arguments::Dict)
    unassign_private_ip_addresses([::AWSConfig]; NetworkInterfaceId=, PrivateIpAddress=)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "UnassignPrivateIpAddresses", arguments::Dict)
    ec2([::AWSConfig], "UnassignPrivateIpAddresses", NetworkInterfaceId=, PrivateIpAddress=)

# UnassignPrivateIpAddresses Operation

Unassigns one or more secondary private IP addresses from a network interface.

# Arguments

## `NetworkInterfaceId = ::String` -- *Required*
The ID of the network interface.


## `PrivateIpAddress = [::String, ...]` -- *Required*
The secondary private IP addresses to unassign from the network interface. You can specify this option multiple times to unassign more than one IP address.




# Example: To unassign a secondary private IP address from a network interface

This example unassigns the specified private IP address from the specified network interface.

Input:
```
[
    "NetworkInterfaceId" => "eni-e5aa89a3",
    "PrivateIpAddresses" => [
        "10.0.0.82"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnassignPrivateIpAddresses)
"""
@inline unassign_private_ip_addresses(aws::AWSConfig=default_aws_config(); args...) = unassign_private_ip_addresses(aws, args)

@inline unassign_private_ip_addresses(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "UnassignPrivateIpAddresses", args)

@inline unassign_private_ip_addresses(args) = unassign_private_ip_addresses(default_aws_config(), args)


"""
    using AWSSDK.EC2.unmonitor_instances
    unmonitor_instances([::AWSConfig], arguments::Dict)
    unmonitor_instances([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "UnmonitorInstances", arguments::Dict)
    ec2([::AWSConfig], "UnmonitorInstances", InstanceId=, <keyword arguments>)

# UnmonitorInstances Operation

Disables detailed monitoring for a running instance. For more information, see [Monitoring Your Instances and Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html) in the *Amazon Elastic Compute Cloud User Guide*.

# Arguments

## `InstanceId = [::String, ...]` -- *Required*
One or more instance IDs.


## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.




# Returns

`UnmonitorInstancesResult`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnmonitorInstances)
"""
@inline unmonitor_instances(aws::AWSConfig=default_aws_config(); args...) = unmonitor_instances(aws, args)

@inline unmonitor_instances(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "UnmonitorInstances", args)

@inline unmonitor_instances(args) = unmonitor_instances(default_aws_config(), args)


"""
    using AWSSDK.EC2.update_security_group_rule_descriptions_egress
    update_security_group_rule_descriptions_egress([::AWSConfig], arguments::Dict)
    update_security_group_rule_descriptions_egress([::AWSConfig]; IpPermissions=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "UpdateSecurityGroupRuleDescriptionsEgress", arguments::Dict)
    ec2([::AWSConfig], "UpdateSecurityGroupRuleDescriptionsEgress", IpPermissions=, <keyword arguments>)

# UpdateSecurityGroupRuleDescriptionsEgress Operation

[EC2-VPC only] Updates the description of an egress (outbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously.

You specify the description as part of the IP permissions structure. You can remove a description for a security group rule by omitting the description parameter in the request.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `GroupId = ::String`
The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.


## `GroupName = ::String`
[Default VPC] The name of the security group. You must specify either the security group ID or the security group name in the request.


## `IpPermissions = [[ ... ], ...]` -- *Required*
The IP permissions for the security group rule.
```
 IpPermissions = [[
        "FromPort" =>  ::Int,
        "IpProtocol" =>  ::String,
        "IpRanges" =>  [[
            "CidrIp" =>  ::String,
            "Description" =>  ::String
        ], ...],
        "Ipv6Ranges" =>  [[
            "CidrIpv6" =>  ::String,
            "Description" =>  ::String
        ], ...],
        "PrefixListIds" =>  [[
            "Description" =>  ::String,
            "PrefixListId" =>  ::String
        ], ...],
        "ToPort" =>  ::Int,
        "Groups" =>  [[
            "Description" =>  ::String,
            "GroupId" =>  ::String,
            "GroupName" =>  ::String,
            "PeeringStatus" =>  ::String,
            "UserId" =>  ::String,
            "VpcId" =>  ::String,
            "VpcPeeringConnectionId" =>  ::String
        ], ...]
    ], ...]
```



# Returns

`UpdateSecurityGroupRuleDescriptionsEgressResult`

# Example: To update an outbound security group rule description

This example updates the description for the specified security group rule.

Input:
```
[
    "GroupId" => "sg-123abc12",
    "IpPermissions" => [
        [
            "FromPort" => 80,
            "IpProtocol" => "tcp",
            "IpRanges" => [
                [
                    "CidrIp" => "203.0.113.0/24",
                    "Description" => "Outbound HTTP access to server 2"
                ]
            ],
            "ToPort" => 80
        ]
    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UpdateSecurityGroupRuleDescriptionsEgress)
"""
@inline update_security_group_rule_descriptions_egress(aws::AWSConfig=default_aws_config(); args...) = update_security_group_rule_descriptions_egress(aws, args)

@inline update_security_group_rule_descriptions_egress(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "UpdateSecurityGroupRuleDescriptionsEgress", args)

@inline update_security_group_rule_descriptions_egress(args) = update_security_group_rule_descriptions_egress(default_aws_config(), args)


"""
    using AWSSDK.EC2.update_security_group_rule_descriptions_ingress
    update_security_group_rule_descriptions_ingress([::AWSConfig], arguments::Dict)
    update_security_group_rule_descriptions_ingress([::AWSConfig]; IpPermissions=, <keyword arguments>)

    using AWSCore.Services.ec2
    ec2([::AWSConfig], "UpdateSecurityGroupRuleDescriptionsIngress", arguments::Dict)
    ec2([::AWSConfig], "UpdateSecurityGroupRuleDescriptionsIngress", IpPermissions=, <keyword arguments>)

# UpdateSecurityGroupRuleDescriptionsIngress Operation

Updates the description of an ingress (inbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously.

You specify the description as part of the IP permissions structure. You can remove a description for a security group rule by omitting the description parameter in the request.

# Arguments

## `DryRun = ::Bool`
Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.


## `GroupId = ::String`
The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.


## `GroupName = ::String`
[EC2-Classic, default VPC] The name of the security group. You must specify either the security group ID or the security group name in the request.


## `IpPermissions = [[ ... ], ...]` -- *Required*
The IP permissions for the security group rule.
```
 IpPermissions = [[
        "FromPort" =>  ::Int,
        "IpProtocol" =>  ::String,
        "IpRanges" =>  [[
            "CidrIp" =>  ::String,
            "Description" =>  ::String
        ], ...],
        "Ipv6Ranges" =>  [[
            "CidrIpv6" =>  ::String,
            "Description" =>  ::String
        ], ...],
        "PrefixListIds" =>  [[
            "Description" =>  ::String,
            "PrefixListId" =>  ::String
        ], ...],
        "ToPort" =>  ::Int,
        "Groups" =>  [[
            "Description" =>  ::String,
            "GroupId" =>  ::String,
            "GroupName" =>  ::String,
            "PeeringStatus" =>  ::String,
            "UserId" =>  ::String,
            "VpcId" =>  ::String,
            "VpcPeeringConnectionId" =>  ::String
        ], ...]
    ], ...]
```



# Returns

`UpdateSecurityGroupRuleDescriptionsIngressResult`

# Example: To update an inbound security group rule description

This example updates the description for the specified security group rule.

Input:
```
[
    "GroupId" => "sg-123abc12",
    "IpPermissions" => [
        [
            "FromPort" => 22,
            "IpProtocol" => "tcp",
            "IpRanges" => [
                [
                    "CidrIp" => "203.0.113.0/16",
                    "Description" => "SSH access from the LA office"
                ]
            ],
            "ToPort" => 22
        ]
    ]
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UpdateSecurityGroupRuleDescriptionsIngress)
"""
@inline update_security_group_rule_descriptions_ingress(aws::AWSConfig=default_aws_config(); args...) = update_security_group_rule_descriptions_ingress(aws, args)

@inline update_security_group_rule_descriptions_ingress(aws::AWSConfig, args) = AWSCore.Services.ec2(aws, "UpdateSecurityGroupRuleDescriptionsIngress", args)

@inline update_security_group_rule_descriptions_ingress(args) = update_security_group_rule_descriptions_ingress(default_aws_config(), args)




end # module EC2


#==============================================================================#
# End of file
#==============================================================================#
