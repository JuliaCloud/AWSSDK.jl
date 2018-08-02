#==============================================================================#
# ELBv2.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/elasticloadbalancingv2-2015-12-01.normal.json
#==============================================================================#

__precompile__()

module ELBv2

using AWSCore


"""
    using AWSSDK.ELBv2.add_listener_certificates
    add_listener_certificates([::AWSConfig], arguments::Dict)
    add_listener_certificates([::AWSConfig]; ListenerArn=, Certificates=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "AddListenerCertificates", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "AddListenerCertificates", ListenerArn=, Certificates=)

# AddListenerCertificates Operation

Adds the specified certificate to the specified secure listener.

If the certificate was already added, the call is successful but the certificate is not added again.

To list the certificates for your listener, use [DescribeListenerCertificates](@ref). To remove certificates from your listener, use [RemoveListenerCertificates](@ref).

# Arguments

## `ListenerArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the listener.


## `Certificates = [[ ... ], ...]` -- *Required*
The certificate to add. You can specify one certificate per call.
```
 Certificates = [[
        "CertificateArn" =>  ::String,
        "IsDefault" =>  ::Bool
    ], ...]
```



# Returns

`AddListenerCertificatesOutput`

# Exceptions

`ListenerNotFoundException`, `TooManyCertificatesException` or `CertificateNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AddListenerCertificates)
"""
@inline add_listener_certificates(aws::AWSConfig=default_aws_config(); args...) = add_listener_certificates(aws, args)

@inline add_listener_certificates(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "AddListenerCertificates", args)

@inline add_listener_certificates(args) = add_listener_certificates(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.add_tags
    add_tags([::AWSConfig], arguments::Dict)
    add_tags([::AWSConfig]; ResourceArns=, Tags=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "AddTags", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "AddTags", ResourceArns=, Tags=)

# AddTags Operation

Adds the specified tags to the specified Elastic Load Balancing resource. You can tag your Application Load Balancers, Network Load Balancers, and your target groups.

Each tag consists of a key and an optional value. If a resource already has a tag with the same key, `AddTags` updates its value.

To list the current tags for your resources, use [DescribeTags](@ref). To remove tags from your resources, use [RemoveTags](@ref).

# Arguments

## `ResourceArns = [::String, ...]` -- *Required*
The Amazon Resource Name (ARN) of the resource.


## `Tags = [[ ... ], ...]` -- *Required*
The tags. Each resource can have a maximum of 10 tags.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`AddTagsOutput`

# Exceptions

`DuplicateTagKeysException`, `TooManyTagsException`, `LoadBalancerNotFoundException` or `TargetGroupNotFoundException`.

# Example: To add tags to a load balancer

This example adds the specified tags to the specified load balancer.

Input:
```
[
    "ResourceArns" => [
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
    ],
    "Tags" => [
        [
            "Key" => "project",
            "Value" => "lima"
        ],
        [
            "Key" => "department",
            "Value" => "digital-media"
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AddTags)
"""
@inline add_tags(aws::AWSConfig=default_aws_config(); args...) = add_tags(aws, args)

@inline add_tags(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "AddTags", args)

@inline add_tags(args) = add_tags(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.create_listener
    create_listener([::AWSConfig], arguments::Dict)
    create_listener([::AWSConfig]; LoadBalancerArn=, Protocol=, Port=, DefaultActions=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "CreateListener", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "CreateListener", LoadBalancerArn=, Protocol=, Port=, DefaultActions=, <keyword arguments>)

# CreateListener Operation

Creates a listener for the specified Application Load Balancer or Network Load Balancer.

To update a listener, use [ModifyListener](@ref). When you are finished with a listener, you can delete it using [DeleteListener](@ref). If you are finished with both the listener and the load balancer, you can delete them both using [DeleteLoadBalancer](@ref).

This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple listeners with the same settings, each call succeeds.

For more information, see [Listeners for Your Application Load Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html) in the *Application Load Balancers Guide* and [Listeners for Your Network Load Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html) in the *Network Load Balancers Guide*.

# Arguments

## `LoadBalancerArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the load balancer.


## `Protocol = "HTTP", "HTTPS" or "TCP"` -- *Required*
The protocol for connections from clients to the load balancer. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocol is TCP.


## `Port = ::Int` -- *Required*
The port on which the load balancer is listening.


## `SslPolicy = ::String`
[HTTPS listeners] The security policy that defines which ciphers and protocols are supported. The default is the current predefined security policy.


## `Certificates = [[ ... ], ...]`
[HTTPS listeners] The default SSL server certificate. You must provide exactly one default certificate. To create a certificate list, use [AddListenerCertificates](@ref).
```
 Certificates = [[
        "CertificateArn" =>  ::String,
        "IsDefault" =>  ::Bool
    ], ...]
```

## `DefaultActions = [[ ... ], ...]` -- *Required*
The actions for the default rule. The rule must include one forward action or one or more fixed-response actions.

If the action type is `forward`, you can specify a single target group. The protocol of the target group must be HTTP or HTTPS for an Application Load Balancer or TCP for a Network Load Balancer.

[HTTPS listener] If the action type is `authenticate-oidc`, you can use an identity provider that is OpenID Connect (OIDC) compliant to authenticate users as they access your application.

[HTTPS listener] If the action type is `authenticate-cognito`, you can use Amazon Cognito to authenticate users as they access your application.

[Application Load Balancer] If the action type is `redirect`, you can redirect HTTP and HTTPS requests.

[Application Load Balancer] If the action type is `fixed-response`, you can return a custom HTTP response.
```
 DefaultActions = [[
        "Type" => <required> "forward", "authenticate-oidc", "authenticate-cognito", "redirect" or "fixed-response",
        "TargetGroupArn" =>  ::String,
        "AuthenticateOidcConfig" =>  [
            "Issuer" => <required> ::String,
            "AuthorizationEndpoint" => <required> ::String,
            "TokenEndpoint" => <required> ::String,
            "UserInfoEndpoint" => <required> ::String,
            "ClientId" => <required> ::String,
            "ClientSecret" => <required> ::String,
            "SessionCookieName" =>  ::String,
            "Scope" =>  ::String,
            "SessionTimeout" =>  ::Int,
            "AuthenticationRequestExtraParams" =>  ::Dict{String,String},
            "OnUnauthenticatedRequest" =>  "deny", "allow" or "authenticate"
        ],
        "AuthenticateCognitoConfig" =>  [
            "UserPoolArn" => <required> ::String,
            "UserPoolClientId" => <required> ::String,
            "UserPoolDomain" => <required> ::String,
            "SessionCookieName" =>  ::String,
            "Scope" =>  ::String,
            "SessionTimeout" =>  ::Int,
            "AuthenticationRequestExtraParams" =>  ::Dict{String,String},
            "OnUnauthenticatedRequest" =>  "deny", "allow" or "authenticate"
        ],
        "Order" =>  ::Int,
        "RedirectConfig" =>  [
            "Protocol" =>  ::String,
            "Port" =>  ::String,
            "Host" =>  ::String,
            "Path" =>  ::String,
            "Query" =>  ::String,
            "StatusCode" => <required> "HTTP_301" or "HTTP_302"
        ],
        "FixedResponseConfig" =>  [
            "MessageBody" =>  ::String,
            "StatusCode" => <required> ::String,
            "ContentType" =>  ::String
        ]
    ], ...]
```



# Returns

`CreateListenerOutput`

# Exceptions

`DuplicateListenerException`, `TooManyListenersException`, `TooManyCertificatesException`, `LoadBalancerNotFoundException`, `TargetGroupNotFoundException`, `TargetGroupAssociationLimitException`, `InvalidConfigurationRequestException`, `IncompatibleProtocolsException`, `SSLPolicyNotFoundException`, `CertificateNotFoundException`, `UnsupportedProtocolException`, `TooManyRegistrationsForTargetIdException`, `TooManyTargetsException`, `TooManyActionsException` or `InvalidLoadBalancerActionException`.

# Example: To create an HTTP listener

This example creates an HTTP listener for the specified load balancer that forwards requests to the specified target group.

Input:
```
[
    "DefaultActions" => [
        [
            "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
            "Type" => "forward"
        ]
    ],
    "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    "Port" => 80,
    "Protocol" => "HTTP"
]
```

Output:
```
Dict(
    "Listeners" => [
        Dict(
            "DefaultActions" => [
                Dict(
                    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
                    "Type" => "forward"
                )
            ],
            "ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2",
            "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
            "Port" => 80,
            "Protocol" => "HTTP"
        )
    ]
)
```

# Example: To create an HTTPS listener

This example creates an HTTPS listener for the specified load balancer that forwards requests to the specified target group. Note that you must specify an SSL certificate for an HTTPS listener. You can create and manage certificates using AWS Certificate Manager (ACM). Alternatively, you can create a certificate using SSL/TLS tools, get the certificate signed by a certificate authority (CA), and upload the certificate to AWS Identity and Access Management (IAM).

Input:
```
[
    "Certificates" => [
        [
            "CertificateArn" => "arn:aws:iam::123456789012:server-certificate/my-server-cert"
        ]
    ],
    "DefaultActions" => [
        [
            "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
            "Type" => "forward"
        ]
    ],
    "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    "Port" => 443,
    "Protocol" => "HTTPS",
    "SslPolicy" => "ELBSecurityPolicy-2015-05"
]
```

Output:
```
Dict(
    "Listeners" => [
        Dict(
            "Certificates" => [
                Dict(
                    "CertificateArn" => "arn:aws:iam::123456789012:server-certificate/my-server-cert"
                )
            ],
            "DefaultActions" => [
                Dict(
                    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
                    "Type" => "forward"
                )
            ],
            "ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2",
            "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
            "Port" => 443,
            "Protocol" => "HTTPS",
            "SslPolicy" => "ELBSecurityPolicy-2015-05"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateListener)
"""
@inline create_listener(aws::AWSConfig=default_aws_config(); args...) = create_listener(aws, args)

@inline create_listener(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "CreateListener", args)

@inline create_listener(args) = create_listener(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.create_load_balancer
    create_load_balancer([::AWSConfig], arguments::Dict)
    create_load_balancer([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "CreateLoadBalancer", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "CreateLoadBalancer", Name=, <keyword arguments>)

# CreateLoadBalancer Operation

Creates an Application Load Balancer or a Network Load Balancer.

When you create a load balancer, you can specify security groups, public subnets, IP address type, and tags. Otherwise, you could do so later using [SetSecurityGroups](@ref), [SetSubnets](@ref), [SetIpAddressType](@ref), and [AddTags](@ref).

To create listeners for your load balancer, use [CreateListener](@ref). To describe your current load balancers, see [DescribeLoadBalancers](@ref). When you are finished with a load balancer, you can delete it using [DeleteLoadBalancer](@ref).

For limit information, see [Limits for Your Application Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html) in the *Application Load Balancers Guide* and [Limits for Your Network Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html) in the *Network Load Balancers Guide*.

This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple load balancers with the same settings, each call succeeds.

For more information, see [Application Load Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html) in the *Application Load Balancers Guide* and [Network Load Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html) in the *Network Load Balancers Guide*.

# Arguments

## `Name = ::String` -- *Required*
The name of the load balancer.

This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, must not begin or end with a hyphen, and must not begin with "internal-".


## `Subnets = [::String, ...]`
The IDs of the public subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings.

[Application Load Balancers] You must specify subnets from at least two Availability Zones.

[Network Load Balancers] You can specify subnets from one or more Availability Zones.


## `SubnetMappings = [[ ... ], ...]`
The IDs of the public subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings.

[Application Load Balancers] You must specify subnets from at least two Availability Zones. You cannot specify Elastic IP addresses for your subnets.

[Network Load Balancers] You can specify subnets from one or more Availability Zones. You can specify one Elastic IP address per subnet.
```
 SubnetMappings = [[
        "SubnetId" =>  ::String,
        "AllocationId" =>  ::String
    ], ...]
```

## `SecurityGroups = [::String, ...]`
[Application Load Balancers] The IDs of the security groups for the load balancer.


## `Scheme = "internet-facing" or "internal"`
The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes. Therefore, Internet-facing load balancers can route requests from clients over the internet.

The nodes of an internal load balancer have only private IP addresses. The DNS name of an internal load balancer is publicly resolvable to the private IP addresses of the nodes. Therefore, internal load balancers can only route requests from clients with access to the VPC for the load balancer.

The default is an Internet-facing load balancer.


## `Tags = [[ ... ], ...]`
One or more tags to assign to the load balancer.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```

## `Type = "application" or "network"`
The type of load balancer. The default is `application`.


## `IpAddressType = "ipv4" or "dualstack"`
[Application Load Balancers] The type of IP addresses used by the subnets for your load balancer. The possible values are `ipv4` (for IPv4 addresses) and `dualstack` (for IPv4 and IPv6 addresses). Internal load balancers must use `ipv4`.




# Returns

`CreateLoadBalancerOutput`

# Exceptions

`DuplicateLoadBalancerNameException`, `TooManyLoadBalancersException`, `InvalidConfigurationRequestException`, `SubnetNotFoundException`, `InvalidSubnetException`, `InvalidSecurityGroupException`, `InvalidSchemeException`, `TooManyTagsException`, `DuplicateTagKeysException`, `ResourceInUseException`, `AllocationIdNotFoundException`, `AvailabilityZoneNotSupportedException` or `OperationNotPermittedException`.

# Example: To create an Internet-facing load balancer

This example creates an Internet-facing load balancer and enables the Availability Zones for the specified subnets.

Input:
```
[
    "Name" => "my-load-balancer",
    "Subnets" => [
        "subnet-b7d581c0",
        "subnet-8360a9e7"
    ]
]
```

Output:
```
Dict(
    "LoadBalancers" => [
        Dict(
            "AvailabilityZones" => [
                Dict(
                    "SubnetId" => "subnet-8360a9e7",
                    "ZoneName" => "us-west-2a"
                ),
                Dict(
                    "SubnetId" => "subnet-b7d581c0",
                    "ZoneName" => "us-west-2b"
                )
            ],
            "CanonicalHostedZoneId" => "Z2P70J7EXAMPLE",
            "CreatedTime" => "2016-03-25T21:26:12.920Z",
            "DNSName" => "my-load-balancer-424835706.us-west-2.elb.amazonaws.com",
            "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
            "LoadBalancerName" => "my-load-balancer",
            "Scheme" => "internet-facing",
            "SecurityGroups" => [
                "sg-5943793c"
            ],
            "State" => Dict(
                "Code" => "provisioning"
            ),
            "Type" => "application",
            "VpcId" => "vpc-3ac0fb5f"
        )
    ]
)
```

# Example: To create an internal load balancer

This example creates an internal load balancer and enables the Availability Zones for the specified subnets.

Input:
```
[
    "Name" => "my-internal-load-balancer",
    "Scheme" => "internal",
    "SecurityGroups" => [

    ],
    "Subnets" => [
        "subnet-b7d581c0",
        "subnet-8360a9e7"
    ]
]
```

Output:
```
Dict(
    "LoadBalancers" => [
        Dict(
            "AvailabilityZones" => [
                Dict(
                    "SubnetId" => "subnet-8360a9e7",
                    "ZoneName" => "us-west-2a"
                ),
                Dict(
                    "SubnetId" => "subnet-b7d581c0",
                    "ZoneName" => "us-west-2b"
                )
            ],
            "CanonicalHostedZoneId" => "Z2P70J7EXAMPLE",
            "CreatedTime" => "2016-03-25T21:29:48.850Z",
            "DNSName" => "internal-my-internal-load-balancer-1529930873.us-west-2.elb.amazonaws.com",
            "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-internal-load-balancer/5b49b8d4303115c2",
            "LoadBalancerName" => "my-internal-load-balancer",
            "Scheme" => "internal",
            "SecurityGroups" => [
                "sg-5943793c"
            ],
            "State" => Dict(
                "Code" => "provisioning"
            ),
            "Type" => "application",
            "VpcId" => "vpc-3ac0fb5f"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateLoadBalancer)
"""
@inline create_load_balancer(aws::AWSConfig=default_aws_config(); args...) = create_load_balancer(aws, args)

@inline create_load_balancer(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "CreateLoadBalancer", args)

@inline create_load_balancer(args) = create_load_balancer(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.create_rule
    create_rule([::AWSConfig], arguments::Dict)
    create_rule([::AWSConfig]; ListenerArn=, Conditions=, Priority=, Actions=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "CreateRule", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "CreateRule", ListenerArn=, Conditions=, Priority=, Actions=)

# CreateRule Operation

Creates a rule for the specified listener. The listener must be associated with an Application Load Balancer.

Rules are evaluated in priority order, from the lowest value to the highest value. When the conditions for a rule are met, its actions are performed. If the conditions for no rules are met, the actions for the default rule are performed. For more information, see [Listener Rules](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules) in the *Application Load Balancers Guide*.

To view your current rules, use [DescribeRules](@ref). To update a rule, use [ModifyRule](@ref). To set the priorities of your rules, use [SetRulePriorities](@ref). To delete a rule, use [DeleteRule](@ref).

# Arguments

## `ListenerArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the listener.


## `Conditions = [[ ... ], ...]` -- *Required*
The conditions. Each condition specifies a field name and a single value.

If the field name is `host-header`, you can specify a single host name (for example, my.example.com). A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters. You can include up to three wildcard characters.

*   A-Z, a-z, 0-9

*   - .

*   * (matches 0 or more characters)

*   ? (matches exactly 1 character)

If the field name is `path-pattern`, you can specify a single path pattern. A path pattern is case-sensitive, can be up to 128 characters in length, and can contain any of the following characters. You can include up to three wildcard characters.

*   A-Z, a-z, 0-9

*   _ - . \$ / ~ " ' @ : +

*   & (using &amp;)

*   * (matches 0 or more characters)

*   ? (matches exactly 1 character)
```
 Conditions = [[
        "Field" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `Priority = ::Int` -- *Required*
The rule priority. A listener can't have multiple rules with the same priority.


## `Actions = [[ ... ], ...]` -- *Required*
The actions. Each rule must include exactly one of the following types of actions: `forward`, `fixed-response`, or `redirect`.

If the action type is `forward`, you can specify a single target group.

[HTTPS listener] If the action type is `authenticate-oidc`, you can use an identity provider that is OpenID Connect (OIDC) compliant to authenticate users as they access your application.

[HTTPS listener] If the action type is `authenticate-cognito`, you can use Amazon Cognito to authenticate users as they access your application.

[Application Load Balancer] If the action type is `redirect`, you can redirect HTTP and HTTPS requests.

[Application Load Balancer] If the action type is `fixed-response`, you can return a custom HTTP response.
```
 Actions = [[
        "Type" => <required> "forward", "authenticate-oidc", "authenticate-cognito", "redirect" or "fixed-response",
        "TargetGroupArn" =>  ::String,
        "AuthenticateOidcConfig" =>  [
            "Issuer" => <required> ::String,
            "AuthorizationEndpoint" => <required> ::String,
            "TokenEndpoint" => <required> ::String,
            "UserInfoEndpoint" => <required> ::String,
            "ClientId" => <required> ::String,
            "ClientSecret" => <required> ::String,
            "SessionCookieName" =>  ::String,
            "Scope" =>  ::String,
            "SessionTimeout" =>  ::Int,
            "AuthenticationRequestExtraParams" =>  ::Dict{String,String},
            "OnUnauthenticatedRequest" =>  "deny", "allow" or "authenticate"
        ],
        "AuthenticateCognitoConfig" =>  [
            "UserPoolArn" => <required> ::String,
            "UserPoolClientId" => <required> ::String,
            "UserPoolDomain" => <required> ::String,
            "SessionCookieName" =>  ::String,
            "Scope" =>  ::String,
            "SessionTimeout" =>  ::Int,
            "AuthenticationRequestExtraParams" =>  ::Dict{String,String},
            "OnUnauthenticatedRequest" =>  "deny", "allow" or "authenticate"
        ],
        "Order" =>  ::Int,
        "RedirectConfig" =>  [
            "Protocol" =>  ::String,
            "Port" =>  ::String,
            "Host" =>  ::String,
            "Path" =>  ::String,
            "Query" =>  ::String,
            "StatusCode" => <required> "HTTP_301" or "HTTP_302"
        ],
        "FixedResponseConfig" =>  [
            "MessageBody" =>  ::String,
            "StatusCode" => <required> ::String,
            "ContentType" =>  ::String
        ]
    ], ...]
```



# Returns

`CreateRuleOutput`

# Exceptions

`PriorityInUseException`, `TooManyTargetGroupsException`, `TooManyRulesException`, `TargetGroupAssociationLimitException`, `IncompatibleProtocolsException`, `ListenerNotFoundException`, `TargetGroupNotFoundException`, `InvalidConfigurationRequestException`, `TooManyRegistrationsForTargetIdException`, `TooManyTargetsException`, `UnsupportedProtocolException`, `TooManyActionsException` or `InvalidLoadBalancerActionException`.

# Example: To create a rule

This example creates a rule that forwards requests to the specified target group if the URL contains the specified pattern (for example, /img/*).

Input:
```
[
    "Actions" => [
        [
            "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
            "Type" => "forward"
        ]
    ],
    "Conditions" => [
        [
            "Field" => "path-pattern",
            "Values" => [
                "/img/*"
            ]
        ]
    ],
    "ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2",
    "Priority" => 10
]
```

Output:
```
Dict(
    "Rules" => [
        Dict(
            "Actions" => [
                Dict(
                    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
                    "Type" => "forward"
                )
            ],
            "Conditions" => [
                Dict(
                    "Field" => "path-pattern",
                    "Values" => [
                        "/img/*"
                    ]
                )
            ],
            "IsDefault" => false,
            "Priority" => "10",
            "RuleArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateRule)
"""
@inline create_rule(aws::AWSConfig=default_aws_config(); args...) = create_rule(aws, args)

@inline create_rule(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "CreateRule", args)

@inline create_rule(args) = create_rule(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.create_target_group
    create_target_group([::AWSConfig], arguments::Dict)
    create_target_group([::AWSConfig]; Name=, Protocol=, Port=, VpcId=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "CreateTargetGroup", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "CreateTargetGroup", Name=, Protocol=, Port=, VpcId=, <keyword arguments>)

# CreateTargetGroup Operation

Creates a target group.

To register targets with the target group, use [RegisterTargets](@ref). To update the health check settings for the target group, use [ModifyTargetGroup](@ref). To monitor the health of targets in the target group, use [DescribeTargetHealth](@ref).

To route traffic to the targets in a target group, specify the target group in an action using [CreateListener](@ref) or [CreateRule](@ref).

To delete a target group, use [DeleteTargetGroup](@ref).

This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple target groups with the same settings, each call succeeds.

For more information, see [Target Groups for Your Application Load Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html) in the *Application Load Balancers Guide* or [Target Groups for Your Network Load Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html) in the *Network Load Balancers Guide*.

# Arguments

## `Name = ::String` -- *Required*
The name of the target group.

This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.


## `Protocol = "HTTP", "HTTPS" or "TCP"` -- *Required*
The protocol to use for routing traffic to the targets. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocol is TCP.


## `Port = ::Int` -- *Required*
The port on which the targets receive traffic. This port is used unless you specify a port override when registering the target.


## `VpcId = ::String` -- *Required*
The identifier of the virtual private cloud (VPC).


## `HealthCheckProtocol = "HTTP", "HTTPS" or "TCP"`
The protocol the load balancer uses when performing health checks on targets. The TCP protocol is supported only if the protocol of the target group is TCP. For Application Load Balancers, the default is HTTP. For Network Load Balancers, the default is TCP.


## `HealthCheckPort = ::String`
The port the load balancer uses when performing health checks on targets. The default is `traffic-port`, which is the port on which each target receives traffic from the load balancer.


## `HealthCheckPath = ::String`
[HTTP/HTTPS health checks] The ping path that is the destination on the targets for health checks. The default is /.


## `HealthCheckIntervalSeconds = ::Int`
The approximate amount of time, in seconds, between health checks of an individual target. For Application Load Balancers, the range is 5–300 seconds. For Network Load Balancers, the supported values are 10 or 30 seconds. The default is 30 seconds.


## `HealthCheckTimeoutSeconds = ::Int`
The amount of time, in seconds, during which no response from a target means a failed health check. For Application Load Balancers, the range is 2–60 seconds and the default is 5 seconds. For Network Load Balancers, this is 10 seconds for TCP and HTTPS health checks and 6 seconds for HTTP health checks.


## `HealthyThresholdCount = ::Int`
The number of consecutive health checks successes required before considering an unhealthy target healthy. For Application Load Balancers, the default is 5. For Network Load Balancers, the default is 3.


## `UnhealthyThresholdCount = ::Int`
The number of consecutive health check failures required before considering a target unhealthy. For Application Load Balancers, the default is 2. For Network Load Balancers, this value must be the same as the healthy threshold count.


## `Matcher = ["HttpCode" => <required> ::String]`
[HTTP/HTTPS health checks] The HTTP codes to use when checking for a successful response from a target.


## `TargetType = "instance" or "ip"`
The type of target that you must specify when registering targets with this target group. The possible values are `instance` (targets are specified by instance ID) or `ip` (targets are specified by IP address). The default is `instance`. You can't specify targets for a target group using both instance IDs and IP addresses.

If the target type is `ip`, specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses.




# Returns

`CreateTargetGroupOutput`

# Exceptions

`DuplicateTargetGroupNameException`, `TooManyTargetGroupsException` or `InvalidConfigurationRequestException`.

# Example: To create a target group

This example creates a target group that you can use to route traffic to targets using HTTP on port 80. This target group uses the default health check configuration.

Input:
```
[
    "Name" => "my-targets",
    "Port" => 80,
    "Protocol" => "HTTP",
    "VpcId" => "vpc-3ac0fb5f"
]
```

Output:
```
Dict(
    "TargetGroups" => [
        Dict(
            "HealthCheckIntervalSeconds" => 30,
            "HealthCheckPath" => "/",
            "HealthCheckPort" => "traffic-port",
            "HealthCheckProtocol" => "HTTP",
            "HealthCheckTimeoutSeconds" => 5,
            "HealthyThresholdCount" => 5,
            "Matcher" => Dict(
                "HttpCode" => "200"
            ),
            "Port" => 80,
            "Protocol" => "HTTP",
            "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
            "TargetGroupName" => "my-targets",
            "UnhealthyThresholdCount" => 2,
            "VpcId" => "vpc-3ac0fb5f"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateTargetGroup)
"""
@inline create_target_group(aws::AWSConfig=default_aws_config(); args...) = create_target_group(aws, args)

@inline create_target_group(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "CreateTargetGroup", args)

@inline create_target_group(args) = create_target_group(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.delete_listener
    delete_listener([::AWSConfig], arguments::Dict)
    delete_listener([::AWSConfig]; ListenerArn=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DeleteListener", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DeleteListener", ListenerArn=)

# DeleteListener Operation

Deletes the specified listener.

Alternatively, your listener is deleted when you delete the load balancer to which it is attached, using [DeleteLoadBalancer](@ref).

# Arguments

## `ListenerArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the listener.




# Returns

`DeleteListenerOutput`

# Exceptions

`ListenerNotFoundException`.

# Example: To delete a listener

This example deletes the specified listener.

Input:
```
[
    "ListenerArn" => "arn:aws:elasticloadbalancing:ua-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteListener)
"""
@inline delete_listener(aws::AWSConfig=default_aws_config(); args...) = delete_listener(aws, args)

@inline delete_listener(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DeleteListener", args)

@inline delete_listener(args) = delete_listener(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.delete_load_balancer
    delete_load_balancer([::AWSConfig], arguments::Dict)
    delete_load_balancer([::AWSConfig]; LoadBalancerArn=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DeleteLoadBalancer", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DeleteLoadBalancer", LoadBalancerArn=)

# DeleteLoadBalancer Operation

Deletes the specified Application Load Balancer or Network Load Balancer and its attached listeners.

You can't delete a load balancer if deletion protection is enabled. If the load balancer does not exist or has already been deleted, the call succeeds.

Deleting a load balancer does not affect its registered targets. For example, your EC2 instances continue to run and are still registered to their target groups. If you no longer need these EC2 instances, you can stop or terminate them.

# Arguments

## `LoadBalancerArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the load balancer.




# Returns

`DeleteLoadBalancerOutput`

# Exceptions

`LoadBalancerNotFoundException`, `OperationNotPermittedException` or `ResourceInUseException`.

# Example: To delete a load balancer

This example deletes the specified load balancer.

Input:
```
[
    "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteLoadBalancer)
"""
@inline delete_load_balancer(aws::AWSConfig=default_aws_config(); args...) = delete_load_balancer(aws, args)

@inline delete_load_balancer(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DeleteLoadBalancer", args)

@inline delete_load_balancer(args) = delete_load_balancer(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.delete_rule
    delete_rule([::AWSConfig], arguments::Dict)
    delete_rule([::AWSConfig]; RuleArn=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DeleteRule", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DeleteRule", RuleArn=)

# DeleteRule Operation

Deletes the specified rule.

# Arguments

## `RuleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the rule.




# Returns

`DeleteRuleOutput`

# Exceptions

`RuleNotFoundException` or `OperationNotPermittedException`.

# Example: To delete a rule

This example deletes the specified rule.

Input:
```
[
    "RuleArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/1291d13826f405c3"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteRule)
"""
@inline delete_rule(aws::AWSConfig=default_aws_config(); args...) = delete_rule(aws, args)

@inline delete_rule(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DeleteRule", args)

@inline delete_rule(args) = delete_rule(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.delete_target_group
    delete_target_group([::AWSConfig], arguments::Dict)
    delete_target_group([::AWSConfig]; TargetGroupArn=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DeleteTargetGroup", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DeleteTargetGroup", TargetGroupArn=)

# DeleteTargetGroup Operation

Deletes the specified target group.

You can delete a target group if it is not referenced by any actions. Deleting a target group also deletes any associated health checks.

# Arguments

## `TargetGroupArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the target group.




# Returns

`DeleteTargetGroupOutput`

# Exceptions

`ResourceInUseException`.

# Example: To delete a target group

This example deletes the specified target group.

Input:
```
[
    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteTargetGroup)
"""
@inline delete_target_group(aws::AWSConfig=default_aws_config(); args...) = delete_target_group(aws, args)

@inline delete_target_group(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DeleteTargetGroup", args)

@inline delete_target_group(args) = delete_target_group(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.deregister_targets
    deregister_targets([::AWSConfig], arguments::Dict)
    deregister_targets([::AWSConfig]; TargetGroupArn=, Targets=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DeregisterTargets", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DeregisterTargets", TargetGroupArn=, Targets=)

# DeregisterTargets Operation

Deregisters the specified targets from the specified target group. After the targets are deregistered, they no longer receive traffic from the load balancer.

# Arguments

## `TargetGroupArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the target group.


## `Targets = [[ ... ], ...]` -- *Required*
The targets. If you specified a port override when you registered a target, you must specify both the target ID and the port when you deregister it.
```
 Targets = [[
        "Id" => <required> ::String,
        "Port" =>  ::Int,
        "AvailabilityZone" =>  ::String
    ], ...]
```



# Returns

`DeregisterTargetsOutput`

# Exceptions

`TargetGroupNotFoundException` or `InvalidTargetException`.

# Example: To deregister a target from a target group

This example deregisters the specified instance from the specified target group.

Input:
```
[
    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    "Targets" => [
        [
            "Id" => "i-0f76fade"
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeregisterTargets)
"""
@inline deregister_targets(aws::AWSConfig=default_aws_config(); args...) = deregister_targets(aws, args)

@inline deregister_targets(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DeregisterTargets", args)

@inline deregister_targets(args) = deregister_targets(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.describe_account_limits
    describe_account_limits([::AWSConfig], arguments::Dict)
    describe_account_limits([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DescribeAccountLimits", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DescribeAccountLimits", <keyword arguments>)

# DescribeAccountLimits Operation

Describes the current Elastic Load Balancing resource limits for your AWS account.

For more information, see [Limits for Your Application Load Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html) in the *Application Load Balancer Guide* or [Limits for Your Network Load Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html) in the *Network Load Balancers Guide*.

# Arguments

## `Marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `PageSize = ::Int`
The maximum number of results to return with this call.




# Returns

`DescribeAccountLimitsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeAccountLimits)
"""
@inline describe_account_limits(aws::AWSConfig=default_aws_config(); args...) = describe_account_limits(aws, args)

@inline describe_account_limits(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DescribeAccountLimits", args)

@inline describe_account_limits(args) = describe_account_limits(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.describe_listener_certificates
    describe_listener_certificates([::AWSConfig], arguments::Dict)
    describe_listener_certificates([::AWSConfig]; ListenerArn=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DescribeListenerCertificates", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DescribeListenerCertificates", ListenerArn=, <keyword arguments>)

# DescribeListenerCertificates Operation

Describes the certificates for the specified secure listener.

# Arguments

## `ListenerArn = ::String` -- *Required*
The Amazon Resource Names (ARN) of the listener.


## `Marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `PageSize = ::Int`
The maximum number of results to return with this call.




# Returns

`DescribeListenerCertificatesOutput`

# Exceptions

`ListenerNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeListenerCertificates)
"""
@inline describe_listener_certificates(aws::AWSConfig=default_aws_config(); args...) = describe_listener_certificates(aws, args)

@inline describe_listener_certificates(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DescribeListenerCertificates", args)

@inline describe_listener_certificates(args) = describe_listener_certificates(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.describe_listeners
    describe_listeners([::AWSConfig], arguments::Dict)
    describe_listeners([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DescribeListeners", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DescribeListeners", <keyword arguments>)

# DescribeListeners Operation

Describes the specified listeners or the listeners for the specified Application Load Balancer or Network Load Balancer. You must specify either a load balancer or one or more listeners.

# Arguments

## `LoadBalancerArn = ::String`
The Amazon Resource Name (ARN) of the load balancer.


## `ListenerArns = [::String, ...]`
The Amazon Resource Names (ARN) of the listeners.


## `Marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `PageSize = ::Int`
The maximum number of results to return with this call.




# Returns

`DescribeListenersOutput`

# Exceptions

`ListenerNotFoundException`, `LoadBalancerNotFoundException` or `UnsupportedProtocolException`.

# Example: To describe a listener

This example describes the specified listener.

Input:
```
[
    "ListenerArns" => [
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2"
    ]
]
```

Output:
```
Dict(
    "Listeners" => [
        Dict(
            "DefaultActions" => [
                Dict(
                    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
                    "Type" => "forward"
                )
            ],
            "ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2",
            "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
            "Port" => 80,
            "Protocol" => "HTTP"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeListeners)
"""
@inline describe_listeners(aws::AWSConfig=default_aws_config(); args...) = describe_listeners(aws, args)

@inline describe_listeners(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DescribeListeners", args)

@inline describe_listeners(args) = describe_listeners(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.describe_load_balancer_attributes
    describe_load_balancer_attributes([::AWSConfig], arguments::Dict)
    describe_load_balancer_attributes([::AWSConfig]; LoadBalancerArn=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DescribeLoadBalancerAttributes", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DescribeLoadBalancerAttributes", LoadBalancerArn=)

# DescribeLoadBalancerAttributes Operation

Describes the attributes for the specified Application Load Balancer or Network Load Balancer.

For more information, see [Load Balancer Attributes](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html#load-balancer-attributes) in the *Application Load Balancers Guide* or [Load Balancer Attributes](http://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#load-balancer-attributes) in the *Network Load Balancers Guide*.

# Arguments

## `LoadBalancerArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the load balancer.




# Returns

`DescribeLoadBalancerAttributesOutput`

# Exceptions

`LoadBalancerNotFoundException`.

# Example: To describe load balancer attributes

This example describes the attributes of the specified load balancer.

Input:
```
[
    "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
]
```

Output:
```
Dict(
    "Attributes" => [
        Dict(
            "Key" => "access_logs.s3.enabled",
            "Value" => "false"
        ),
        Dict(
            "Key" => "idle_timeout.timeout_seconds",
            "Value" => "60"
        ),
        Dict(
            "Key" => "access_logs.s3.prefix",
            "Value" => ""
        ),
        Dict(
            "Key" => "deletion_protection.enabled",
            "Value" => "false"
        ),
        Dict(
            "Key" => "access_logs.s3.bucket",
            "Value" => ""
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeLoadBalancerAttributes)
"""
@inline describe_load_balancer_attributes(aws::AWSConfig=default_aws_config(); args...) = describe_load_balancer_attributes(aws, args)

@inline describe_load_balancer_attributes(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DescribeLoadBalancerAttributes", args)

@inline describe_load_balancer_attributes(args) = describe_load_balancer_attributes(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.describe_load_balancers
    describe_load_balancers([::AWSConfig], arguments::Dict)
    describe_load_balancers([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DescribeLoadBalancers", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DescribeLoadBalancers", <keyword arguments>)

# DescribeLoadBalancers Operation

Describes the specified load balancers or all of your load balancers.

To describe the listeners for a load balancer, use [DescribeListeners](@ref). To describe the attributes for a load balancer, use [DescribeLoadBalancerAttributes](@ref).

# Arguments

## `LoadBalancerArns = [::String, ...]`
The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load balancers in a single call.


## `Names = [::String, ...]`
The names of the load balancers.


## `Marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `PageSize = ::Int`
The maximum number of results to return with this call.




# Returns

`DescribeLoadBalancersOutput`

# Exceptions

`LoadBalancerNotFoundException`.

# Example: To describe a load balancer

This example describes the specified load balancer.

Input:
```
[
    "LoadBalancerArns" => [
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
    ]
]
```

Output:
```
Dict(
    "LoadBalancers" => [
        Dict(
            "AvailabilityZones" => [
                Dict(
                    "SubnetId" => "subnet-8360a9e7",
                    "ZoneName" => "us-west-2a"
                ),
                Dict(
                    "SubnetId" => "subnet-b7d581c0",
                    "ZoneName" => "us-west-2b"
                )
            ],
            "CanonicalHostedZoneId" => "Z2P70J7EXAMPLE",
            "CreatedTime" => "2016-03-25T21:26:12.920Z",
            "DNSName" => "my-load-balancer-424835706.us-west-2.elb.amazonaws.com",
            "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
            "LoadBalancerName" => "my-load-balancer",
            "Scheme" => "internet-facing",
            "SecurityGroups" => [
                "sg-5943793c"
            ],
            "State" => Dict(
                "Code" => "active"
            ),
            "Type" => "application",
            "VpcId" => "vpc-3ac0fb5f"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeLoadBalancers)
"""
@inline describe_load_balancers(aws::AWSConfig=default_aws_config(); args...) = describe_load_balancers(aws, args)

@inline describe_load_balancers(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DescribeLoadBalancers", args)

@inline describe_load_balancers(args) = describe_load_balancers(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.describe_rules
    describe_rules([::AWSConfig], arguments::Dict)
    describe_rules([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DescribeRules", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DescribeRules", <keyword arguments>)

# DescribeRules Operation

Describes the specified rules or the rules for the specified listener. You must specify either a listener or one or more rules.

# Arguments

## `ListenerArn = ::String`
The Amazon Resource Name (ARN) of the listener.


## `RuleArns = [::String, ...]`
The Amazon Resource Names (ARN) of the rules.


## `Marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `PageSize = ::Int`
The maximum number of results to return with this call.




# Returns

`DescribeRulesOutput`

# Exceptions

`ListenerNotFoundException`, `RuleNotFoundException` or `UnsupportedProtocolException`.

# Example: To describe a rule

This example describes the specified rule.

Input:
```
[
    "RuleArns" => [
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee"
    ]
]
```

Output:
```
Dict(
    "Rules" => [
        Dict(
            "Actions" => [
                Dict(
                    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
                    "Type" => "forward"
                )
            ],
            "Conditions" => [
                Dict(
                    "Field" => "path-pattern",
                    "Values" => [
                        "/img/*"
                    ]
                )
            ],
            "IsDefault" => false,
            "Priority" => "10",
            "RuleArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeRules)
"""
@inline describe_rules(aws::AWSConfig=default_aws_config(); args...) = describe_rules(aws, args)

@inline describe_rules(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DescribeRules", args)

@inline describe_rules(args) = describe_rules(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.describe_sslpolicies
    describe_sslpolicies([::AWSConfig], arguments::Dict)
    describe_sslpolicies([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DescribeSSLPolicies", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DescribeSSLPolicies", <keyword arguments>)

# DescribeSSLPolicies Operation

Describes the specified policies or all policies used for SSL negotiation.

For more information, see [Security Policies](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies) in the *Application Load Balancers Guide*.

# Arguments

## `Names = [::String, ...]`
The names of the policies.


## `Marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `PageSize = ::Int`
The maximum number of results to return with this call.




# Returns

`DescribeSSLPoliciesOutput`

# Exceptions

`SSLPolicyNotFoundException`.

# Example: To describe a policy used for SSL negotiation

This example describes the specified policy used for SSL negotiation.

Input:
```
[
    "Names" => [
        "ELBSecurityPolicy-2015-05"
    ]
]
```

Output:
```
Dict(
    "SslPolicies" => [
        Dict(
            "Ciphers" => [
                Dict(
                    "Name" => "ECDHE-ECDSA-AES128-GCM-SHA256",
                    "Priority" => 1
                ),
                Dict(
                    "Name" => "ECDHE-RSA-AES128-GCM-SHA256",
                    "Priority" => 2
                ),
                Dict(
                    "Name" => "ECDHE-ECDSA-AES128-SHA256",
                    "Priority" => 3
                ),
                Dict(
                    "Name" => "ECDHE-RSA-AES128-SHA256",
                    "Priority" => 4
                ),
                Dict(
                    "Name" => "ECDHE-ECDSA-AES128-SHA",
                    "Priority" => 5
                ),
                Dict(
                    "Name" => "ECDHE-RSA-AES128-SHA",
                    "Priority" => 6
                ),
                Dict(
                    "Name" => "DHE-RSA-AES128-SHA",
                    "Priority" => 7
                ),
                Dict(
                    "Name" => "ECDHE-ECDSA-AES256-GCM-SHA384",
                    "Priority" => 8
                ),
                Dict(
                    "Name" => "ECDHE-RSA-AES256-GCM-SHA384",
                    "Priority" => 9
                ),
                Dict(
                    "Name" => "ECDHE-ECDSA-AES256-SHA384",
                    "Priority" => 10
                ),
                Dict(
                    "Name" => "ECDHE-RSA-AES256-SHA384",
                    "Priority" => 11
                ),
                Dict(
                    "Name" => "ECDHE-RSA-AES256-SHA",
                    "Priority" => 12
                ),
                Dict(
                    "Name" => "ECDHE-ECDSA-AES256-SHA",
                    "Priority" => 13
                ),
                Dict(
                    "Name" => "AES128-GCM-SHA256",
                    "Priority" => 14
                ),
                Dict(
                    "Name" => "AES128-SHA256",
                    "Priority" => 15
                ),
                Dict(
                    "Name" => "AES128-SHA",
                    "Priority" => 16
                ),
                Dict(
                    "Name" => "AES256-GCM-SHA384",
                    "Priority" => 17
                ),
                Dict(
                    "Name" => "AES256-SHA256",
                    "Priority" => 18
                ),
                Dict(
                    "Name" => "AES256-SHA",
                    "Priority" => 19
                )
            ],
            "Name" => "ELBSecurityPolicy-2015-05",
            "SslProtocols" => [
                "TLSv1",
                "TLSv1.1",
                "TLSv1.2"
            ]
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeSSLPolicies)
"""
@inline describe_sslpolicies(aws::AWSConfig=default_aws_config(); args...) = describe_sslpolicies(aws, args)

@inline describe_sslpolicies(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DescribeSSLPolicies", args)

@inline describe_sslpolicies(args) = describe_sslpolicies(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.describe_tags
    describe_tags([::AWSConfig], arguments::Dict)
    describe_tags([::AWSConfig]; ResourceArns=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DescribeTags", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DescribeTags", ResourceArns=)

# DescribeTags Operation

Describes the tags for the specified resources. You can describe the tags for one or more Application Load Balancers, Network Load Balancers, and target groups.

# Arguments

## `ResourceArns = [::String, ...]` -- *Required*
The Amazon Resource Names (ARN) of the resources.




# Returns

`DescribeTagsOutput`

# Exceptions

`LoadBalancerNotFoundException`, `TargetGroupNotFoundException`, `ListenerNotFoundException` or `RuleNotFoundException`.

# Example: To describe the tags assigned to a load balancer

This example describes the tags assigned to the specified load balancer.

Input:
```
[
    "ResourceArns" => [
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
    ]
]
```

Output:
```
Dict(
    "TagDescriptions" => [
        Dict(
            "ResourceArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
            "Tags" => [
                Dict(
                    "Key" => "project",
                    "Value" => "lima"
                ),
                Dict(
                    "Key" => "department",
                    "Value" => "digital-media"
                )
            ]
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTags)
"""
@inline describe_tags(aws::AWSConfig=default_aws_config(); args...) = describe_tags(aws, args)

@inline describe_tags(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DescribeTags", args)

@inline describe_tags(args) = describe_tags(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.describe_target_group_attributes
    describe_target_group_attributes([::AWSConfig], arguments::Dict)
    describe_target_group_attributes([::AWSConfig]; TargetGroupArn=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DescribeTargetGroupAttributes", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DescribeTargetGroupAttributes", TargetGroupArn=)

# DescribeTargetGroupAttributes Operation

Describes the attributes for the specified target group.

For more information, see [Target Group Attributes](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes) in the *Application Load Balancers Guide* or [Target Group Attributes](http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes) in the *Network Load Balancers Guide*.

# Arguments

## `TargetGroupArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the target group.




# Returns

`DescribeTargetGroupAttributesOutput`

# Exceptions

`TargetGroupNotFoundException`.

# Example: To describe target group attributes

This example describes the attributes of the specified target group.

Input:
```
[
    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
]
```

Output:
```
Dict(
    "Attributes" => [
        Dict(
            "Key" => "stickiness.enabled",
            "Value" => "false"
        ),
        Dict(
            "Key" => "deregistration_delay.timeout_seconds",
            "Value" => "300"
        ),
        Dict(
            "Key" => "stickiness.type",
            "Value" => "lb_cookie"
        ),
        Dict(
            "Key" => "stickiness.lb_cookie.duration_seconds",
            "Value" => "86400"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetGroupAttributes)
"""
@inline describe_target_group_attributes(aws::AWSConfig=default_aws_config(); args...) = describe_target_group_attributes(aws, args)

@inline describe_target_group_attributes(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DescribeTargetGroupAttributes", args)

@inline describe_target_group_attributes(args) = describe_target_group_attributes(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.describe_target_groups
    describe_target_groups([::AWSConfig], arguments::Dict)
    describe_target_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DescribeTargetGroups", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DescribeTargetGroups", <keyword arguments>)

# DescribeTargetGroups Operation

Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups.

To describe the targets for a target group, use [DescribeTargetHealth](@ref). To describe the attributes of a target group, use [DescribeTargetGroupAttributes](@ref).

# Arguments

## `LoadBalancerArn = ::String`
The Amazon Resource Name (ARN) of the load balancer.


## `TargetGroupArns = [::String, ...]`
The Amazon Resource Names (ARN) of the target groups.


## `Names = [::String, ...]`
The names of the target groups.


## `Marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `PageSize = ::Int`
The maximum number of results to return with this call.




# Returns

`DescribeTargetGroupsOutput`

# Exceptions

`LoadBalancerNotFoundException` or `TargetGroupNotFoundException`.

# Example: To describe a target group

This example describes the specified target group.

Input:
```
[
    "TargetGroupArns" => [
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
    ]
]
```

Output:
```
Dict(
    "TargetGroups" => [
        Dict(
            "HealthCheckIntervalSeconds" => 30,
            "HealthCheckPath" => "/",
            "HealthCheckPort" => "traffic-port",
            "HealthCheckProtocol" => "HTTP",
            "HealthCheckTimeoutSeconds" => 5,
            "HealthyThresholdCount" => 5,
            "LoadBalancerArns" => [
                "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
            ],
            "Matcher" => Dict(
                "HttpCode" => "200"
            ),
            "Port" => 80,
            "Protocol" => "HTTP",
            "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
            "TargetGroupName" => "my-targets",
            "UnhealthyThresholdCount" => 2,
            "VpcId" => "vpc-3ac0fb5f"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetGroups)
"""
@inline describe_target_groups(aws::AWSConfig=default_aws_config(); args...) = describe_target_groups(aws, args)

@inline describe_target_groups(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DescribeTargetGroups", args)

@inline describe_target_groups(args) = describe_target_groups(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.describe_target_health
    describe_target_health([::AWSConfig], arguments::Dict)
    describe_target_health([::AWSConfig]; TargetGroupArn=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "DescribeTargetHealth", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "DescribeTargetHealth", TargetGroupArn=, <keyword arguments>)

# DescribeTargetHealth Operation

Describes the health of the specified targets or all of your targets.

# Arguments

## `TargetGroupArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the target group.


## `Targets = [[ ... ], ...]`
The targets.
```
 Targets = [[
        "Id" => <required> ::String,
        "Port" =>  ::Int,
        "AvailabilityZone" =>  ::String
    ], ...]
```



# Returns

`DescribeTargetHealthOutput`

# Exceptions

`InvalidTargetException`, `TargetGroupNotFoundException` or `HealthUnavailableException`.

# Example: To describe the health of the targets for a target group

This example describes the health of the targets for the specified target group. One target is healthy but the other is not specified in an action, so it can't receive traffic from the load balancer.

Input:
```
[
    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
]
```

Output:
```
Dict(
    "TargetHealthDescriptions" => [
        Dict(
            "Target" => Dict(
                "Id" => "i-0f76fade",
                "Port" => 80
            ),
            "TargetHealth" => Dict(
                "Description" => "Given target group is not configured to receive traffic from ELB",
                "Reason" => "Target.NotInUse",
                "State" => "unused"
            )
        ),
        Dict(
            "HealthCheckPort" => "80",
            "Target" => Dict(
                "Id" => "i-0f76fade",
                "Port" => 80
            ),
            "TargetHealth" => Dict(
                "State" => "healthy"
            )
        )
    ]
)
```

# Example: To describe the health of a target

This example describes the health of the specified target. This target is healthy.

Input:
```
[
    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    "Targets" => [
        [
            "Id" => "i-0f76fade",
            "Port" => 80
        ]
    ]
]
```

Output:
```
Dict(
    "TargetHealthDescriptions" => [
        Dict(
            "HealthCheckPort" => "80",
            "Target" => Dict(
                "Id" => "i-0f76fade",
                "Port" => 80
            ),
            "TargetHealth" => Dict(
                "State" => "healthy"
            )
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetHealth)
"""
@inline describe_target_health(aws::AWSConfig=default_aws_config(); args...) = describe_target_health(aws, args)

@inline describe_target_health(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "DescribeTargetHealth", args)

@inline describe_target_health(args) = describe_target_health(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.modify_listener
    modify_listener([::AWSConfig], arguments::Dict)
    modify_listener([::AWSConfig]; ListenerArn=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "ModifyListener", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "ModifyListener", ListenerArn=, <keyword arguments>)

# ModifyListener Operation

Modifies the specified properties of the specified listener.

Any properties that you do not specify retain their current values. However, changing the protocol from HTTPS to HTTP removes the security policy and SSL certificate properties. If you change the protocol from HTTP to HTTPS, you must add the security policy and server certificate.

# Arguments

## `ListenerArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the listener.


## `Port = ::Int`
The port for connections from clients to the load balancer.


## `Protocol = "HTTP", "HTTPS" or "TCP"`
The protocol for connections from clients to the load balancer. Application Load Balancers support HTTP and HTTPS and Network Load Balancers support TCP.


## `SslPolicy = ::String`
[HTTPS listeners] The security policy that defines which protocols and ciphers are supported. For more information, see [Security Policies](http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies) in the *Application Load Balancers Guide*.


## `Certificates = [[ ... ], ...]`
[HTTPS listeners] The default SSL server certificate. You must provide exactly one default certificate. To create a certificate list, use [AddListenerCertificates](@ref).
```
 Certificates = [[
        "CertificateArn" =>  ::String,
        "IsDefault" =>  ::Bool
    ], ...]
```

## `DefaultActions = [[ ... ], ...]`
The actions for the default rule. The rule must include one forward action or one or more fixed-response actions.

If the action type is `forward`, you can specify a single target group. The protocol of the target group must be HTTP or HTTPS for an Application Load Balancer or TCP for a Network Load Balancer.

[HTTPS listener] If the action type is `authenticate-oidc`, you can use an identity provider that is OpenID Connect (OIDC) compliant to authenticate users as they access your application.

[HTTPS listener] If the action type is `authenticate-cognito`, you can use Amazon Cognito to authenticate users as they access your application.

[Application Load Balancer] If the action type is `redirect`, you can redirect HTTP and HTTPS requests.

[Application Load Balancer] If the action type is `fixed-response`, you can return a custom HTTP response.
```
 DefaultActions = [[
        "Type" => <required> "forward", "authenticate-oidc", "authenticate-cognito", "redirect" or "fixed-response",
        "TargetGroupArn" =>  ::String,
        "AuthenticateOidcConfig" =>  [
            "Issuer" => <required> ::String,
            "AuthorizationEndpoint" => <required> ::String,
            "TokenEndpoint" => <required> ::String,
            "UserInfoEndpoint" => <required> ::String,
            "ClientId" => <required> ::String,
            "ClientSecret" => <required> ::String,
            "SessionCookieName" =>  ::String,
            "Scope" =>  ::String,
            "SessionTimeout" =>  ::Int,
            "AuthenticationRequestExtraParams" =>  ::Dict{String,String},
            "OnUnauthenticatedRequest" =>  "deny", "allow" or "authenticate"
        ],
        "AuthenticateCognitoConfig" =>  [
            "UserPoolArn" => <required> ::String,
            "UserPoolClientId" => <required> ::String,
            "UserPoolDomain" => <required> ::String,
            "SessionCookieName" =>  ::String,
            "Scope" =>  ::String,
            "SessionTimeout" =>  ::Int,
            "AuthenticationRequestExtraParams" =>  ::Dict{String,String},
            "OnUnauthenticatedRequest" =>  "deny", "allow" or "authenticate"
        ],
        "Order" =>  ::Int,
        "RedirectConfig" =>  [
            "Protocol" =>  ::String,
            "Port" =>  ::String,
            "Host" =>  ::String,
            "Path" =>  ::String,
            "Query" =>  ::String,
            "StatusCode" => <required> "HTTP_301" or "HTTP_302"
        ],
        "FixedResponseConfig" =>  [
            "MessageBody" =>  ::String,
            "StatusCode" => <required> ::String,
            "ContentType" =>  ::String
        ]
    ], ...]
```



# Returns

`ModifyListenerOutput`

# Exceptions

`DuplicateListenerException`, `TooManyListenersException`, `TooManyCertificatesException`, `ListenerNotFoundException`, `TargetGroupNotFoundException`, `TargetGroupAssociationLimitException`, `IncompatibleProtocolsException`, `SSLPolicyNotFoundException`, `CertificateNotFoundException`, `InvalidConfigurationRequestException`, `UnsupportedProtocolException`, `TooManyRegistrationsForTargetIdException`, `TooManyTargetsException`, `TooManyActionsException` or `InvalidLoadBalancerActionException`.

# Example: To change the default action for a listener

This example changes the default action for the specified listener.

Input:
```
[
    "DefaultActions" => [
        [
            "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/2453ed029918f21f",
            "Type" => "forward"
        ]
    ],
    "ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2"
]
```

Output:
```
Dict(
    "Listeners" => [
        Dict(
            "DefaultActions" => [
                Dict(
                    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/2453ed029918f21f",
                    "Type" => "forward"
                )
            ],
            "ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2",
            "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
            "Port" => 80,
            "Protocol" => "HTTP"
        )
    ]
)
```

# Example: To change the server certificate

This example changes the server certificate for the specified HTTPS listener.

Input:
```
[
    "Certificates" => [
        [
            "CertificateArn" => "arn:aws:iam::123456789012:server-certificate/my-new-server-cert"
        ]
    ],
    "ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/0467ef3c8400ae65"
]
```

Output:
```
Dict(
    "Listeners" => [
        Dict(
            "Certificates" => [
                Dict(
                    "CertificateArn" => "arn:aws:iam::123456789012:server-certificate/my-new-server-cert"
                )
            ],
            "DefaultActions" => [
                Dict(
                    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
                    "Type" => "forward"
                )
            ],
            "ListenerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/0467ef3c8400ae65",
            "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
            "Port" => 443,
            "Protocol" => "HTTPS",
            "SslPolicy" => "ELBSecurityPolicy-2015-05"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyListener)
"""
@inline modify_listener(aws::AWSConfig=default_aws_config(); args...) = modify_listener(aws, args)

@inline modify_listener(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "ModifyListener", args)

@inline modify_listener(args) = modify_listener(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.modify_load_balancer_attributes
    modify_load_balancer_attributes([::AWSConfig], arguments::Dict)
    modify_load_balancer_attributes([::AWSConfig]; LoadBalancerArn=, Attributes=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "ModifyLoadBalancerAttributes", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "ModifyLoadBalancerAttributes", LoadBalancerArn=, Attributes=)

# ModifyLoadBalancerAttributes Operation

Modifies the specified attributes of the specified Application Load Balancer or Network Load Balancer.

If any of the specified attributes can't be modified as requested, the call fails. Any existing attributes that you do not modify retain their current values.

# Arguments

## `LoadBalancerArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the load balancer.


## `Attributes = [[ ... ], ...]` -- *Required*
The load balancer attributes.
```
 Attributes = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`ModifyLoadBalancerAttributesOutput`

# Exceptions

`LoadBalancerNotFoundException` or `InvalidConfigurationRequestException`.

# Example: To enable deletion protection

This example enables deletion protection for the specified load balancer.

Input:
```
[
    "Attributes" => [
        [
            "Key" => "deletion_protection.enabled",
            "Value" => "true"
        ]
    ],
    "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
]
```

Output:
```
Dict(
    "Attributes" => [
        Dict(
            "Key" => "deletion_protection.enabled",
            "Value" => "true"
        ),
        Dict(
            "Key" => "access_logs.s3.enabled",
            "Value" => "false"
        ),
        Dict(
            "Key" => "idle_timeout.timeout_seconds",
            "Value" => "60"
        ),
        Dict(
            "Key" => "access_logs.s3.prefix",
            "Value" => ""
        ),
        Dict(
            "Key" => "access_logs.s3.bucket",
            "Value" => ""
        )
    ]
)
```

# Example: To change the idle timeout

This example changes the idle timeout value for the specified load balancer.

Input:
```
[
    "Attributes" => [
        [
            "Key" => "idle_timeout.timeout_seconds",
            "Value" => "30"
        ]
    ],
    "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
]
```

Output:
```
Dict(
    "Attributes" => [
        Dict(
            "Key" => "idle_timeout.timeout_seconds",
            "Value" => "30"
        ),
        Dict(
            "Key" => "access_logs.s3.enabled",
            "Value" => "false"
        ),
        Dict(
            "Key" => "access_logs.s3.prefix",
            "Value" => ""
        ),
        Dict(
            "Key" => "deletion_protection.enabled",
            "Value" => "true"
        ),
        Dict(
            "Key" => "access_logs.s3.bucket",
            "Value" => ""
        )
    ]
)
```

# Example: To enable access logs

This example enables access logs for the specified load balancer. Note that the S3 bucket must exist in the same region as the load balancer and must have a policy attached that grants access to the Elastic Load Balancing service.

Input:
```
[
    "Attributes" => [
        [
            "Key" => "access_logs.s3.enabled",
            "Value" => "true"
        ],
        [
            "Key" => "access_logs.s3.bucket",
            "Value" => "my-loadbalancer-logs"
        ],
        [
            "Key" => "access_logs.s3.prefix",
            "Value" => "myapp"
        ]
    ],
    "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
]
```

Output:
```
Dict(
    "Attributes" => [
        Dict(
            "Key" => "access_logs.s3.enabled",
            "Value" => "true"
        ),
        Dict(
            "Key" => "access_logs.s3.bucket",
            "Value" => "my-load-balancer-logs"
        ),
        Dict(
            "Key" => "access_logs.s3.prefix",
            "Value" => "myapp"
        ),
        Dict(
            "Key" => "idle_timeout.timeout_seconds",
            "Value" => "60"
        ),
        Dict(
            "Key" => "deletion_protection.enabled",
            "Value" => "false"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyLoadBalancerAttributes)
"""
@inline modify_load_balancer_attributes(aws::AWSConfig=default_aws_config(); args...) = modify_load_balancer_attributes(aws, args)

@inline modify_load_balancer_attributes(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "ModifyLoadBalancerAttributes", args)

@inline modify_load_balancer_attributes(args) = modify_load_balancer_attributes(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.modify_rule
    modify_rule([::AWSConfig], arguments::Dict)
    modify_rule([::AWSConfig]; RuleArn=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "ModifyRule", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "ModifyRule", RuleArn=, <keyword arguments>)

# ModifyRule Operation

Modifies the specified rule.

Any existing properties that you do not modify retain their current values.

To modify the actions for the default rule, use [ModifyListener](@ref).

# Arguments

## `RuleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the rule.


## `Conditions = [[ ... ], ...]`
The conditions. Each condition specifies a field name and a single value.

If the field name is `host-header`, you can specify a single host name (for example, my.example.com). A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters. You can include up to three wildcard characters.

*   A-Z, a-z, 0-9

*   - .

*   * (matches 0 or more characters)

*   ? (matches exactly 1 character)

If the field name is `path-pattern`, you can specify a single path pattern. A path pattern is case-sensitive, can be up to 128 characters in length, and can contain any of the following characters. You can include up to three wildcard characters.

*   A-Z, a-z, 0-9

*   _ - . \$ / ~ " ' @ : +

*   & (using &amp;)

*   * (matches 0 or more characters)

*   ? (matches exactly 1 character)
```
 Conditions = [[
        "Field" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `Actions = [[ ... ], ...]`
The actions.

If the action type is `forward`, you can specify a single target group.

If the action type is `authenticate-oidc`, you can use an identity provider that is OpenID Connect (OIDC) compliant to authenticate users as they access your application.

If the action type is `authenticate-cognito`, you can use Amazon Cognito to authenticate users as they access your application.
```
 Actions = [[
        "Type" => <required> "forward", "authenticate-oidc", "authenticate-cognito", "redirect" or "fixed-response",
        "TargetGroupArn" =>  ::String,
        "AuthenticateOidcConfig" =>  [
            "Issuer" => <required> ::String,
            "AuthorizationEndpoint" => <required> ::String,
            "TokenEndpoint" => <required> ::String,
            "UserInfoEndpoint" => <required> ::String,
            "ClientId" => <required> ::String,
            "ClientSecret" => <required> ::String,
            "SessionCookieName" =>  ::String,
            "Scope" =>  ::String,
            "SessionTimeout" =>  ::Int,
            "AuthenticationRequestExtraParams" =>  ::Dict{String,String},
            "OnUnauthenticatedRequest" =>  "deny", "allow" or "authenticate"
        ],
        "AuthenticateCognitoConfig" =>  [
            "UserPoolArn" => <required> ::String,
            "UserPoolClientId" => <required> ::String,
            "UserPoolDomain" => <required> ::String,
            "SessionCookieName" =>  ::String,
            "Scope" =>  ::String,
            "SessionTimeout" =>  ::Int,
            "AuthenticationRequestExtraParams" =>  ::Dict{String,String},
            "OnUnauthenticatedRequest" =>  "deny", "allow" or "authenticate"
        ],
        "Order" =>  ::Int,
        "RedirectConfig" =>  [
            "Protocol" =>  ::String,
            "Port" =>  ::String,
            "Host" =>  ::String,
            "Path" =>  ::String,
            "Query" =>  ::String,
            "StatusCode" => <required> "HTTP_301" or "HTTP_302"
        ],
        "FixedResponseConfig" =>  [
            "MessageBody" =>  ::String,
            "StatusCode" => <required> ::String,
            "ContentType" =>  ::String
        ]
    ], ...]
```



# Returns

`ModifyRuleOutput`

# Exceptions

`TargetGroupAssociationLimitException`, `IncompatibleProtocolsException`, `RuleNotFoundException`, `OperationNotPermittedException`, `TooManyRegistrationsForTargetIdException`, `TooManyTargetsException`, `TargetGroupNotFoundException`, `UnsupportedProtocolException`, `TooManyActionsException` or `InvalidLoadBalancerActionException`.

# Example: To modify a rule

This example modifies the condition for the specified rule.

Input:
```
[
    "Conditions" => [
        [
            "Field" => "path-pattern",
            "Values" => [
                "/images/*"
            ]
        ]
    ],
    "RuleArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee"
]
```

Output:
```
Dict(
    "Rules" => [
        Dict(
            "Actions" => [
                Dict(
                    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
                    "Type" => "forward"
                )
            ],
            "Conditions" => [
                Dict(
                    "Field" => "path-pattern",
                    "Values" => [
                        "/images/*"
                    ]
                )
            ],
            "IsDefault" => false,
            "Priority" => "10",
            "RuleArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyRule)
"""
@inline modify_rule(aws::AWSConfig=default_aws_config(); args...) = modify_rule(aws, args)

@inline modify_rule(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "ModifyRule", args)

@inline modify_rule(args) = modify_rule(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.modify_target_group
    modify_target_group([::AWSConfig], arguments::Dict)
    modify_target_group([::AWSConfig]; TargetGroupArn=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "ModifyTargetGroup", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "ModifyTargetGroup", TargetGroupArn=, <keyword arguments>)

# ModifyTargetGroup Operation

Modifies the health checks used when evaluating the health state of the targets in the specified target group.

To monitor the health of the targets, use [DescribeTargetHealth](@ref).

# Arguments

## `TargetGroupArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the target group.


## `HealthCheckProtocol = "HTTP", "HTTPS" or "TCP"`
The protocol the load balancer uses when performing health checks on targets. The TCP protocol is supported only if the protocol of the target group is TCP.


## `HealthCheckPort = ::String`
The port the load balancer uses when performing health checks on targets.


## `HealthCheckPath = ::String`
[HTTP/HTTPS health checks] The ping path that is the destination for the health check request.


## `HealthCheckIntervalSeconds = ::Int`
The approximate amount of time, in seconds, between health checks of an individual target. For Application Load Balancers, the range is 5–300 seconds. For Network Load Balancers, the supported values are 10 or 30 seconds.


## `HealthCheckTimeoutSeconds = ::Int`
[HTTP/HTTPS health checks] The amount of time, in seconds, during which no response means a failed health check.


## `HealthyThresholdCount = ::Int`
The number of consecutive health checks successes required before considering an unhealthy target healthy.


## `UnhealthyThresholdCount = ::Int`
The number of consecutive health check failures required before considering the target unhealthy. For Network Load Balancers, this value must be the same as the healthy threshold count.


## `Matcher = ["HttpCode" => <required> ::String]`
[HTTP/HTTPS health checks] The HTTP codes to use when checking for a successful response from a target.




# Returns

`ModifyTargetGroupOutput`

# Exceptions

`TargetGroupNotFoundException` or `InvalidConfigurationRequestException`.

# Example: To modify the health check configuration for a target group

This example changes the configuration of the health checks used to evaluate the health of the targets for the specified target group.

Input:
```
[
    "HealthCheckPort" => "443",
    "HealthCheckProtocol" => "HTTPS",
    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-https-targets/2453ed029918f21f"
]
```

Output:
```
Dict(
    "TargetGroups" => [
        Dict(
            "HealthCheckIntervalSeconds" => 30,
            "HealthCheckPort" => "443",
            "HealthCheckProtocol" => "HTTPS",
            "HealthCheckTimeoutSeconds" => 5,
            "HealthyThresholdCount" => 5,
            "LoadBalancerArns" => [
                "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
            ],
            "Matcher" => Dict(
                "HttpCode" => "200"
            ),
            "Port" => 443,
            "Protocol" => "HTTPS",
            "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-https-targets/2453ed029918f21f",
            "TargetGroupName" => "my-https-targets",
            "UnhealthyThresholdCount" => 2,
            "VpcId" => "vpc-3ac0fb5f"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyTargetGroup)
"""
@inline modify_target_group(aws::AWSConfig=default_aws_config(); args...) = modify_target_group(aws, args)

@inline modify_target_group(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "ModifyTargetGroup", args)

@inline modify_target_group(args) = modify_target_group(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.modify_target_group_attributes
    modify_target_group_attributes([::AWSConfig], arguments::Dict)
    modify_target_group_attributes([::AWSConfig]; TargetGroupArn=, Attributes=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "ModifyTargetGroupAttributes", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "ModifyTargetGroupAttributes", TargetGroupArn=, Attributes=)

# ModifyTargetGroupAttributes Operation

Modifies the specified attributes of the specified target group.

# Arguments

## `TargetGroupArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the target group.


## `Attributes = [[ ... ], ...]` -- *Required*
The attributes.
```
 Attributes = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`ModifyTargetGroupAttributesOutput`

# Exceptions

`TargetGroupNotFoundException` or `InvalidConfigurationRequestException`.

# Example: To modify the deregistration delay timeout

This example sets the deregistration delay timeout to the specified value for the specified target group.

Input:
```
[
    "Attributes" => [
        [
            "Key" => "deregistration_delay.timeout_seconds",
            "Value" => "600"
        ]
    ],
    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067"
]
```

Output:
```
Dict(
    "Attributes" => [
        Dict(
            "Key" => "stickiness.enabled",
            "Value" => "false"
        ),
        Dict(
            "Key" => "deregistration_delay.timeout_seconds",
            "Value" => "600"
        ),
        Dict(
            "Key" => "stickiness.type",
            "Value" => "lb_cookie"
        ),
        Dict(
            "Key" => "stickiness.lb_cookie.duration_seconds",
            "Value" => "86400"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyTargetGroupAttributes)
"""
@inline modify_target_group_attributes(aws::AWSConfig=default_aws_config(); args...) = modify_target_group_attributes(aws, args)

@inline modify_target_group_attributes(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "ModifyTargetGroupAttributes", args)

@inline modify_target_group_attributes(args) = modify_target_group_attributes(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.register_targets
    register_targets([::AWSConfig], arguments::Dict)
    register_targets([::AWSConfig]; TargetGroupArn=, Targets=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "RegisterTargets", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "RegisterTargets", TargetGroupArn=, Targets=)

# RegisterTargets Operation

Registers the specified targets with the specified target group.

You can register targets by instance ID or by IP address. If the target is an EC2 instance, it must be in the `running` state when you register it.

By default, the load balancer routes requests to registered targets using the protocol and port for the target group. Alternatively, you can override the port for a target when you register it. You can register each EC2 instance or IP address with the same target group multiple times using different ports.

With a Network Load Balancer, you cannot register instances by instance ID if they have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register instances of these types by IP address.

To remove a target from a target group, use [DeregisterTargets](@ref).

# Arguments

## `TargetGroupArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the target group.


## `Targets = [[ ... ], ...]` -- *Required*
The targets.
```
 Targets = [[
        "Id" => <required> ::String,
        "Port" =>  ::Int,
        "AvailabilityZone" =>  ::String
    ], ...]
```



# Returns

`RegisterTargetsOutput`

# Exceptions

`TargetGroupNotFoundException`, `TooManyTargetsException`, `InvalidTargetException` or `TooManyRegistrationsForTargetIdException`.

# Example: To register targets with a target group

This example registers the specified instances with the specified target group.

Input:
```
[
    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
    "Targets" => [
        [
            "Id" => "i-80c8dd94"
        ],
        [
            "Id" => "i-ceddcd4d"
        ]
    ]
]
```

# Example: To register targets with a target group using port overrides

This example registers the specified instance with the specified target group using multiple ports. This enables you to register ECS containers on the same instance as targets in the target group.

Input:
```
[
    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/3bb63f11dfb0faf9",
    "Targets" => [
        [
            "Id" => "i-80c8dd94",
            "Port" => 80
        ],
        [
            "Id" => "i-80c8dd94",
            "Port" => 766
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RegisterTargets)
"""
@inline register_targets(aws::AWSConfig=default_aws_config(); args...) = register_targets(aws, args)

@inline register_targets(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "RegisterTargets", args)

@inline register_targets(args) = register_targets(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.remove_listener_certificates
    remove_listener_certificates([::AWSConfig], arguments::Dict)
    remove_listener_certificates([::AWSConfig]; ListenerArn=, Certificates=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "RemoveListenerCertificates", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "RemoveListenerCertificates", ListenerArn=, Certificates=)

# RemoveListenerCertificates Operation

Removes the specified certificate from the specified secure listener.

You can't remove the default certificate for a listener. To replace the default certificate, call [ModifyListener](@ref).

To list the certificates for your listener, use [DescribeListenerCertificates](@ref).

# Arguments

## `ListenerArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the listener.


## `Certificates = [[ ... ], ...]` -- *Required*
The certificate to remove. You can specify one certificate per call.
```
 Certificates = [[
        "CertificateArn" =>  ::String,
        "IsDefault" =>  ::Bool
    ], ...]
```



# Returns

`RemoveListenerCertificatesOutput`

# Exceptions

`ListenerNotFoundException` or `OperationNotPermittedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RemoveListenerCertificates)
"""
@inline remove_listener_certificates(aws::AWSConfig=default_aws_config(); args...) = remove_listener_certificates(aws, args)

@inline remove_listener_certificates(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "RemoveListenerCertificates", args)

@inline remove_listener_certificates(args) = remove_listener_certificates(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.remove_tags
    remove_tags([::AWSConfig], arguments::Dict)
    remove_tags([::AWSConfig]; ResourceArns=, TagKeys=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "RemoveTags", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "RemoveTags", ResourceArns=, TagKeys=)

# RemoveTags Operation

Removes the specified tags from the specified Elastic Load Balancing resource.

To list the current tags for your resources, use [DescribeTags](@ref).

# Arguments

## `ResourceArns = [::String, ...]` -- *Required*
The Amazon Resource Name (ARN) of the resource.


## `TagKeys = [::String, ...]` -- *Required*
The tag keys for the tags to remove.




# Returns

`RemoveTagsOutput`

# Exceptions

`LoadBalancerNotFoundException`, `TargetGroupNotFoundException`, `ListenerNotFoundException`, `RuleNotFoundException` or `TooManyTagsException`.

# Example: To remove tags from a load balancer

This example removes the specified tags from the specified load balancer.

Input:
```
[
    "ResourceArns" => [
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
    ],
    "TagKeys" => [
        "project",
        "department"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RemoveTags)
"""
@inline remove_tags(aws::AWSConfig=default_aws_config(); args...) = remove_tags(aws, args)

@inline remove_tags(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "RemoveTags", args)

@inline remove_tags(args) = remove_tags(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.set_ip_address_type
    set_ip_address_type([::AWSConfig], arguments::Dict)
    set_ip_address_type([::AWSConfig]; LoadBalancerArn=, IpAddressType=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "SetIpAddressType", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "SetIpAddressType", LoadBalancerArn=, IpAddressType=)

# SetIpAddressType Operation

Sets the type of IP addresses used by the subnets of the specified Application Load Balancer or Network Load Balancer.

Network Load Balancers must use `ipv4`.

# Arguments

## `LoadBalancerArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the load balancer.


## `IpAddressType = "ipv4" or "dualstack"` -- *Required*
The IP address type. The possible values are `ipv4` (for IPv4 addresses) and `dualstack` (for IPv4 and IPv6 addresses). Internal load balancers must use `ipv4`.




# Returns

`SetIpAddressTypeOutput`

# Exceptions

`LoadBalancerNotFoundException`, `InvalidConfigurationRequestException` or `InvalidSubnetException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetIpAddressType)
"""
@inline set_ip_address_type(aws::AWSConfig=default_aws_config(); args...) = set_ip_address_type(aws, args)

@inline set_ip_address_type(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "SetIpAddressType", args)

@inline set_ip_address_type(args) = set_ip_address_type(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.set_rule_priorities
    set_rule_priorities([::AWSConfig], arguments::Dict)
    set_rule_priorities([::AWSConfig]; RulePriorities=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "SetRulePriorities", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "SetRulePriorities", RulePriorities=)

# SetRulePriorities Operation

Sets the priorities of the specified rules.

You can reorder the rules as long as there are no priority conflicts in the new order. Any existing rules that you do not specify retain their current priority.

# Arguments

## `RulePriorities = [[ ... ], ...]` -- *Required*
The rule priorities.
```
 RulePriorities = [[
        "RuleArn" =>  ::String,
        "Priority" =>  ::Int
    ], ...]
```



# Returns

`SetRulePrioritiesOutput`

# Exceptions

`RuleNotFoundException`, `PriorityInUseException` or `OperationNotPermittedException`.

# Example: To set the rule priority

This example sets the priority of the specified rule.

Input:
```
[
    "RulePriorities" => [
        [
            "Priority" => 5,
            "RuleArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/1291d13826f405c3"
        ]
    ]
]
```

Output:
```
Dict(
    "Rules" => [
        Dict(
            "Actions" => [
                Dict(
                    "TargetGroupArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067",
                    "Type" => "forward"
                )
            ],
            "Conditions" => [
                Dict(
                    "Field" => "path-pattern",
                    "Values" => [
                        "/img/*"
                    ]
                )
            ],
            "IsDefault" => false,
            "Priority" => "5",
            "RuleArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/1291d13826f405c3"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetRulePriorities)
"""
@inline set_rule_priorities(aws::AWSConfig=default_aws_config(); args...) = set_rule_priorities(aws, args)

@inline set_rule_priorities(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "SetRulePriorities", args)

@inline set_rule_priorities(args) = set_rule_priorities(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.set_security_groups
    set_security_groups([::AWSConfig], arguments::Dict)
    set_security_groups([::AWSConfig]; LoadBalancerArn=, SecurityGroups=)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "SetSecurityGroups", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "SetSecurityGroups", LoadBalancerArn=, SecurityGroups=)

# SetSecurityGroups Operation

Associates the specified security groups with the specified Application Load Balancer. The specified security groups override the previously associated security groups.

You can't specify a security group for a Network Load Balancer.

# Arguments

## `LoadBalancerArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the load balancer.


## `SecurityGroups = [::String, ...]` -- *Required*
The IDs of the security groups.




# Returns

`SetSecurityGroupsOutput`

# Exceptions

`LoadBalancerNotFoundException`, `InvalidConfigurationRequestException` or `InvalidSecurityGroupException`.

# Example: To associate a security group with a load balancer

This example associates the specified security group with the specified load balancer.

Input:
```
[
    "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    "SecurityGroups" => [
        "sg-5943793c"
    ]
]
```

Output:
```
Dict(
    "SecurityGroupIds" => [
        "sg-5943793c"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetSecurityGroups)
"""
@inline set_security_groups(aws::AWSConfig=default_aws_config(); args...) = set_security_groups(aws, args)

@inline set_security_groups(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "SetSecurityGroups", args)

@inline set_security_groups(args) = set_security_groups(default_aws_config(), args)


"""
    using AWSSDK.ELBv2.set_subnets
    set_subnets([::AWSConfig], arguments::Dict)
    set_subnets([::AWSConfig]; LoadBalancerArn=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancingv2
    elasticloadbalancingv2([::AWSConfig], "SetSubnets", arguments::Dict)
    elasticloadbalancingv2([::AWSConfig], "SetSubnets", LoadBalancerArn=, <keyword arguments>)

# SetSubnets Operation

Enables the Availability Zone for the specified public subnets for the specified Application Load Balancer. The specified subnets replace the previously enabled subnets.

You can't change the subnets for a Network Load Balancer.

# Arguments

## `LoadBalancerArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the load balancer.


## `Subnets = [::String, ...]`
The IDs of the public subnets. You must specify subnets from at least two Availability Zones. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings.


## `SubnetMappings = [[ ... ], ...]`
The IDs of the public subnets. You must specify subnets from at least two Availability Zones. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings.

You cannot specify Elastic IP addresses for your subnets.
```
 SubnetMappings = [[
        "SubnetId" =>  ::String,
        "AllocationId" =>  ::String
    ], ...]
```



# Returns

`SetSubnetsOutput`

# Exceptions

`LoadBalancerNotFoundException`, `InvalidConfigurationRequestException`, `SubnetNotFoundException`, `InvalidSubnetException`, `AllocationIdNotFoundException` or `AvailabilityZoneNotSupportedException`.

# Example: To enable Availability Zones for a load balancer

This example enables the Availability Zones for the specified subnets for the specified load balancer.

Input:
```
[
    "LoadBalancerArn" => "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
    "Subnets" => [
        "subnet-8360a9e7",
        "subnet-b7d581c0"
    ]
]
```

Output:
```
Dict(
    "AvailabilityZones" => [
        Dict(
            "SubnetId" => "subnet-8360a9e7",
            "ZoneName" => "us-west-2a"
        ),
        Dict(
            "SubnetId" => "subnet-b7d581c0",
            "ZoneName" => "us-west-2b"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetSubnets)
"""
@inline set_subnets(aws::AWSConfig=default_aws_config(); args...) = set_subnets(aws, args)

@inline set_subnets(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancingv2(aws, "SetSubnets", args)

@inline set_subnets(args) = set_subnets(default_aws_config(), args)




end # module ELBv2


#==============================================================================#
# End of file
#==============================================================================#
