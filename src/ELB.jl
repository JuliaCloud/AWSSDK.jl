#==============================================================================#
# ELB.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/elasticloadbalancing-2012-06-01.normal.json
#==============================================================================#

__precompile__()

module ELB

using AWSCore


"""
    using AWSSDK.ELB.add_tags
    add_tags([::AWSConfig], arguments::Dict)
    add_tags([::AWSConfig]; LoadBalancerNames=, Tags=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "AddTags", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "AddTags", LoadBalancerNames=, Tags=)

# AddTags Operation

Adds the specified tags to the specified load balancer. Each load balancer can have a maximum of 10 tags.

Each tag consists of a key and an optional value. If a tag with the same key is already associated with the load balancer, `AddTags` updates its value.

For more information, see [Tag Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerNames = [::String, ...]` -- *Required*
The name of the load balancer. You can specify one load balancer only.


## `Tags = [[ ... ], ...]` -- *Required*
The tags.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`AddTagsOutput`

# Exceptions

`AccessPointNotFoundException`, `TooManyTagsException` or `DuplicateTagKeysException`.

# Example: To add tags to a load balancer

This example adds two tags to the specified load balancer.

Input:
```
[
    "LoadBalancerNames" => [
        "my-load-balancer"
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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/AddTags)
"""
@inline add_tags(aws::AWSConfig=default_aws_config(); args...) = add_tags(aws, args)

@inline add_tags(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "AddTags", args)

@inline add_tags(args) = add_tags(default_aws_config(), args)


"""
    using AWSSDK.ELB.apply_security_groups_to_load_balancer
    apply_security_groups_to_load_balancer([::AWSConfig], arguments::Dict)
    apply_security_groups_to_load_balancer([::AWSConfig]; LoadBalancerName=, SecurityGroups=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "ApplySecurityGroupsToLoadBalancer", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "ApplySecurityGroupsToLoadBalancer", LoadBalancerName=, SecurityGroups=)

# ApplySecurityGroupsToLoadBalancer Operation

Associates one or more security groups with your load balancer in a virtual private cloud (VPC). The specified security groups override the previously associated security groups.

For more information, see [Security Groups for Load Balancers in a VPC](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-groups.html#elb-vpc-security-groups) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `SecurityGroups = [::String, ...]` -- *Required*
The IDs of the security groups to associate with the load balancer. Note that you cannot specify the name of the security group.




# Returns

`ApplySecurityGroupsToLoadBalancerOutput`

# Exceptions

`AccessPointNotFoundException`, `InvalidConfigurationRequestException` or `InvalidSecurityGroupException`.

# Example: To associate a security group with a load balancer in a VPC

This example associates a security group with the specified load balancer in a VPC.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer",
    "SecurityGroups" => [
        "sg-fc448899"
    ]
]
```

Output:
```
Dict(
    "SecurityGroups" => [
        "sg-fc448899"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/ApplySecurityGroupsToLoadBalancer)
"""
@inline apply_security_groups_to_load_balancer(aws::AWSConfig=default_aws_config(); args...) = apply_security_groups_to_load_balancer(aws, args)

@inline apply_security_groups_to_load_balancer(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "ApplySecurityGroupsToLoadBalancer", args)

@inline apply_security_groups_to_load_balancer(args) = apply_security_groups_to_load_balancer(default_aws_config(), args)


"""
    using AWSSDK.ELB.attach_load_balancer_to_subnets
    attach_load_balancer_to_subnets([::AWSConfig], arguments::Dict)
    attach_load_balancer_to_subnets([::AWSConfig]; LoadBalancerName=, Subnets=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "AttachLoadBalancerToSubnets", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "AttachLoadBalancerToSubnets", LoadBalancerName=, Subnets=)

# AttachLoadBalancerToSubnets Operation

Adds one or more subnets to the set of configured subnets for the specified load balancer.

The load balancer evenly distributes requests across all registered subnets. For more information, see [Add or Remove Subnets for Your Load Balancer in a VPC](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-manage-subnets.html) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `Subnets = [::String, ...]` -- *Required*
The IDs of the subnets to add. You can add only one subnet per Availability Zone.




# Returns

`AttachLoadBalancerToSubnetsOutput`

# Exceptions

`AccessPointNotFoundException`, `InvalidConfigurationRequestException`, `SubnetNotFoundException` or `InvalidSubnetException`.

# Example: To attach subnets to a load balancer

This example adds the specified subnet to the set of configured subnets for the specified load balancer.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer",
    "Subnets" => [
        "subnet-0ecac448"
    ]
]
```

Output:
```
Dict(
    "Subnets" => [
        "subnet-15aaab61",
        "subnet-0ecac448"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/AttachLoadBalancerToSubnets)
"""
@inline attach_load_balancer_to_subnets(aws::AWSConfig=default_aws_config(); args...) = attach_load_balancer_to_subnets(aws, args)

@inline attach_load_balancer_to_subnets(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "AttachLoadBalancerToSubnets", args)

@inline attach_load_balancer_to_subnets(args) = attach_load_balancer_to_subnets(default_aws_config(), args)


"""
    using AWSSDK.ELB.configure_health_check
    configure_health_check([::AWSConfig], arguments::Dict)
    configure_health_check([::AWSConfig]; LoadBalancerName=, HealthCheck=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "ConfigureHealthCheck", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "ConfigureHealthCheck", LoadBalancerName=, HealthCheck=)

# ConfigureHealthCheck Operation

Specifies the health check settings to use when evaluating the health state of your EC2 instances.

For more information, see [Configure Health Checks for Your Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-healthchecks.html) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `HealthCheck = [ ... ]` -- *Required*
The configuration information.
```
 HealthCheck = [
        "Target" => <required> ::String,
        "Interval" => <required> ::Int,
        "Timeout" => <required> ::Int,
        "UnhealthyThreshold" => <required> ::Int,
        "HealthyThreshold" => <required> ::Int
    ]
```



# Returns

`ConfigureHealthCheckOutput`

# Exceptions

`AccessPointNotFoundException`.

# Example: To specify the health check settings for your backend EC2 instances

This example specifies the health check settings used to evaluate the health of your backend EC2 instances.

Input:
```
[
    "HealthCheck" => [
        "HealthyThreshold" => 2,
        "Interval" => 30,
        "Target" => "HTTP:80/png",
        "Timeout" => 3,
        "UnhealthyThreshold" => 2
    ],
    "LoadBalancerName" => "my-load-balancer"
]
```

Output:
```
Dict(
    "HealthCheck" => Dict(
        "HealthyThreshold" => 2,
        "Interval" => 30,
        "Target" => "HTTP:80/png",
        "Timeout" => 3,
        "UnhealthyThreshold" => 2
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/ConfigureHealthCheck)
"""
@inline configure_health_check(aws::AWSConfig=default_aws_config(); args...) = configure_health_check(aws, args)

@inline configure_health_check(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "ConfigureHealthCheck", args)

@inline configure_health_check(args) = configure_health_check(default_aws_config(), args)


"""
    using AWSSDK.ELB.create_app_cookie_stickiness_policy
    create_app_cookie_stickiness_policy([::AWSConfig], arguments::Dict)
    create_app_cookie_stickiness_policy([::AWSConfig]; LoadBalancerName=, PolicyName=, CookieName=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "CreateAppCookieStickinessPolicy", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "CreateAppCookieStickinessPolicy", LoadBalancerName=, PolicyName=, CookieName=)

# CreateAppCookieStickinessPolicy Operation

Generates a stickiness policy with sticky session lifetimes that follow that of an application-generated cookie. This policy can be associated only with HTTP/HTTPS listeners.

This policy is similar to the policy created by [CreateLBCookieStickinessPolicy](@ref), except that the lifetime of the special Elastic Load Balancing cookie, `AWSELB`, follows the lifetime of the application-generated cookie specified in the policy configuration. The load balancer only inserts a new stickiness cookie when the application response includes a new application cookie.

If the application cookie is explicitly removed or expires, the session stops being sticky until a new application cookie is issued.

For more information, see [Application-Controlled Session Stickiness](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `PolicyName = ::String` -- *Required*
The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.


## `CookieName = ::String` -- *Required*
The name of the application cookie used for stickiness.




# Returns

`CreateAppCookieStickinessPolicyOutput`

# Exceptions

`AccessPointNotFoundException`, `DuplicatePolicyNameException`, `TooManyPoliciesException` or `InvalidConfigurationRequestException`.

# Example: To generate a stickiness policy for your load balancer

This example generates a stickiness policy that follows the sticky session lifetimes of the application-generated cookie.

Input:
```
[
    "CookieName" => "my-app-cookie",
    "LoadBalancerName" => "my-load-balancer",
    "PolicyName" => "my-app-cookie-policy"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/CreateAppCookieStickinessPolicy)
"""
@inline create_app_cookie_stickiness_policy(aws::AWSConfig=default_aws_config(); args...) = create_app_cookie_stickiness_policy(aws, args)

@inline create_app_cookie_stickiness_policy(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "CreateAppCookieStickinessPolicy", args)

@inline create_app_cookie_stickiness_policy(args) = create_app_cookie_stickiness_policy(default_aws_config(), args)


"""
    using AWSSDK.ELB.create_lbcookie_stickiness_policy
    create_lbcookie_stickiness_policy([::AWSConfig], arguments::Dict)
    create_lbcookie_stickiness_policy([::AWSConfig]; LoadBalancerName=, PolicyName=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "CreateLBCookieStickinessPolicy", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "CreateLBCookieStickinessPolicy", LoadBalancerName=, PolicyName=, <keyword arguments>)

# CreateLBCookieStickinessPolicy Operation

Generates a stickiness policy with sticky session lifetimes controlled by the lifetime of the browser (user-agent) or a specified expiration period. This policy can be associated only with HTTP/HTTPS listeners.

When a load balancer implements this policy, the load balancer uses a special cookie to track the instance for each request. When the load balancer receives a request, it first checks to see if this cookie is present in the request. If so, the load balancer sends the request to the application server specified in the cookie. If not, the load balancer sends the request to a server that is chosen based on the existing load-balancing algorithm.

A cookie is inserted into the response for binding subsequent requests from the same user to that server. The validity of the cookie is based on the cookie expiration time, which is specified in the policy configuration.

For more information, see [Duration-Based Session Stickiness](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `PolicyName = ::String` -- *Required*
The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.


## `CookieExpirationPeriod = ::Int`
The time period, in seconds, after which the cookie should be considered stale. If you do not specify this parameter, the default value is 0, which indicates that the sticky session should last for the duration of the browser session.




# Returns

`CreateLBCookieStickinessPolicyOutput`

# Exceptions

`AccessPointNotFoundException`, `DuplicatePolicyNameException`, `TooManyPoliciesException` or `InvalidConfigurationRequestException`.

# Example: To generate a duration-based stickiness policy for your load balancer

This example generates a stickiness policy with sticky session lifetimes controlled by the specified expiration period.

Input:
```
[
    "CookieExpirationPeriod" => 60,
    "LoadBalancerName" => "my-load-balancer",
    "PolicyName" => "my-duration-cookie-policy"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/CreateLBCookieStickinessPolicy)
"""
@inline create_lbcookie_stickiness_policy(aws::AWSConfig=default_aws_config(); args...) = create_lbcookie_stickiness_policy(aws, args)

@inline create_lbcookie_stickiness_policy(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "CreateLBCookieStickinessPolicy", args)

@inline create_lbcookie_stickiness_policy(args) = create_lbcookie_stickiness_policy(default_aws_config(), args)


"""
    using AWSSDK.ELB.create_load_balancer
    create_load_balancer([::AWSConfig], arguments::Dict)
    create_load_balancer([::AWSConfig]; LoadBalancerName=, Listeners=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "CreateLoadBalancer", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "CreateLoadBalancer", LoadBalancerName=, Listeners=, <keyword arguments>)

# CreateLoadBalancer Operation

Creates a Classic Load Balancer.

You can add listeners, security groups, subnets, and tags when you create your load balancer, or you can add them later using [CreateLoadBalancerListeners](@ref), [ApplySecurityGroupsToLoadBalancer](@ref), [AttachLoadBalancerToSubnets](@ref), and [AddTags](@ref).

To describe your current load balancers, see [DescribeLoadBalancers](@ref). When you are finished with a load balancer, you can delete it using [DeleteLoadBalancer](@ref).

You can create up to 20 load balancers per region per account. You can request an increase for the number of load balancers for your account. For more information, see [Limits for Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.

This name must be unique within your set of load balancers for the region, must have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and cannot begin or end with a hyphen.


## `Listeners = [[ ... ], ...]` -- *Required*
The listeners.

For more information, see [Listeners for Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html) in the *Classic Load Balancer Guide*.
```
 Listeners = [[
        "Protocol" => <required> ::String,
        "LoadBalancerPort" => <required> ::Int,
        "InstanceProtocol" =>  ::String,
        "InstancePort" => <required> ::Int,
        "SSLCertificateId" =>  ::String
    ], ...]
```

## `AvailabilityZones = [::String, ...]`
One or more Availability Zones from the same region as the load balancer.

You must specify at least one Availability Zone.

You can add more Availability Zones after you create the load balancer using [EnableAvailabilityZonesForLoadBalancer](@ref).


## `Subnets = [::String, ...]`
The IDs of the subnets in your VPC to attach to the load balancer. Specify one subnet per Availability Zone specified in `AvailabilityZones`.


## `SecurityGroups = [::String, ...]`
The IDs of the security groups to assign to the load balancer.


## `Scheme = ::String`
The type of a load balancer. Valid only for load balancers in a VPC.

By default, Elastic Load Balancing creates an Internet-facing load balancer with a DNS name that resolves to public IP addresses. For more information about Internet-facing and Internal load balancers, see [Load Balancer Scheme](http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/how-elastic-load-balancing-works.html#load-balancer-scheme) in the *Elastic Load Balancing User Guide*.

Specify `internal` to create a load balancer with a DNS name that resolves to private IP addresses.


## `Tags = [[ ... ], ...]`
A list of tags to assign to the load balancer.

For more information about tagging your load balancer, see [Tag Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html) in the *Classic Load Balancer Guide*.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`CreateAccessPointOutput`

# Exceptions

`DuplicateAccessPointNameException`, `TooManyAccessPointsException`, `CertificateNotFoundException`, `InvalidConfigurationRequestException`, `SubnetNotFoundException`, `InvalidSubnetException`, `InvalidSecurityGroupException`, `InvalidSchemeException`, `TooManyTagsException`, `DuplicateTagKeysException`, `UnsupportedProtocolException` or `OperationNotPermittedException`.

# Example: To create an HTTP load balancer in a VPC

This example creates a load balancer with an HTTP listener in a VPC.

Input:
```
[
    "Listeners" => [
        [
            "InstancePort" => 80,
            "InstanceProtocol" => "HTTP",
            "LoadBalancerPort" => 80,
            "Protocol" => "HTTP"
        ]
    ],
    "LoadBalancerName" => "my-load-balancer",
    "SecurityGroups" => [
        "sg-a61988c3"
    ],
    "Subnets" => [
        "subnet-15aaab61"
    ]
]
```

Output:
```
Dict(
    "DNSName" => "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com"
)
```

# Example: To create an HTTP load balancer in EC2-Classic

This example creates a load balancer with an HTTP listener in EC2-Classic.

Input:
```
[
    "AvailabilityZones" => [
        "us-west-2a"
    ],
    "Listeners" => [
        [
            "InstancePort" => 80,
            "InstanceProtocol" => "HTTP",
            "LoadBalancerPort" => 80,
            "Protocol" => "HTTP"
        ]
    ],
    "LoadBalancerName" => "my-load-balancer"
]
```

Output:
```
Dict(
    "DNSName" => "my-load-balancer-123456789.us-west-2.elb.amazonaws.com"
)
```

# Example: To create an HTTPS load balancer in a VPC

This example creates a load balancer with an HTTPS listener in a VPC.

Input:
```
[
    "Listeners" => [
        [
            "InstancePort" => 80,
            "InstanceProtocol" => "HTTP",
            "LoadBalancerPort" => 80,
            "Protocol" => "HTTP"
        ],
        [
            "InstancePort" => 80,
            "InstanceProtocol" => "HTTP",
            "LoadBalancerPort" => 443,
            "Protocol" => "HTTPS",
            "SSLCertificateId" => "arn:aws:iam::123456789012:server-certificate/my-server-cert"
        ]
    ],
    "LoadBalancerName" => "my-load-balancer",
    "SecurityGroups" => [
        "sg-a61988c3"
    ],
    "Subnets" => [
        "subnet-15aaab61"
    ]
]
```

Output:
```
Dict(
    "DNSName" => "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com"
)
```

# Example: To create an HTTPS load balancer in EC2-Classic

This example creates a load balancer with an HTTPS listener in EC2-Classic.

Input:
```
[
    "AvailabilityZones" => [
        "us-west-2a"
    ],
    "Listeners" => [
        [
            "InstancePort" => 80,
            "InstanceProtocol" => "HTTP",
            "LoadBalancerPort" => 80,
            "Protocol" => "HTTP"
        ],
        [
            "InstancePort" => 80,
            "InstanceProtocol" => "HTTP",
            "LoadBalancerPort" => 443,
            "Protocol" => "HTTPS",
            "SSLCertificateId" => "arn:aws:iam::123456789012:server-certificate/my-server-cert"
        ]
    ],
    "LoadBalancerName" => "my-load-balancer"
]
```

Output:
```
Dict(
    "DNSName" => "my-load-balancer-123456789.us-west-2.elb.amazonaws.com"
)
```

# Example: To create an internal load balancer

This example creates an internal load balancer with an HTTP listener in a VPC.

Input:
```
[
    "Listeners" => [
        [
            "InstancePort" => 80,
            "InstanceProtocol" => "HTTP",
            "LoadBalancerPort" => 80,
            "Protocol" => "HTTP"
        ]
    ],
    "LoadBalancerName" => "my-load-balancer",
    "Scheme" => "internal",
    "SecurityGroups" => [
        "sg-a61988c3"
    ],
    "Subnets" => [
        "subnet-15aaab61"
    ]
]
```

Output:
```
Dict(
    "DNSName" => "internal-my-load-balancer-123456789.us-west-2.elb.amazonaws.com"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/CreateLoadBalancer)
"""
@inline create_load_balancer(aws::AWSConfig=default_aws_config(); args...) = create_load_balancer(aws, args)

@inline create_load_balancer(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "CreateLoadBalancer", args)

@inline create_load_balancer(args) = create_load_balancer(default_aws_config(), args)


"""
    using AWSSDK.ELB.create_load_balancer_listeners
    create_load_balancer_listeners([::AWSConfig], arguments::Dict)
    create_load_balancer_listeners([::AWSConfig]; LoadBalancerName=, Listeners=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "CreateLoadBalancerListeners", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "CreateLoadBalancerListeners", LoadBalancerName=, Listeners=)

# CreateLoadBalancerListeners Operation

Creates one or more listeners for the specified load balancer. If a listener with the specified port does not already exist, it is created; otherwise, the properties of the new listener must match the properties of the existing listener.

For more information, see [Listeners for Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `Listeners = [[ ... ], ...]` -- *Required*
The listeners.
```
 Listeners = [[
        "Protocol" => <required> ::String,
        "LoadBalancerPort" => <required> ::Int,
        "InstanceProtocol" =>  ::String,
        "InstancePort" => <required> ::Int,
        "SSLCertificateId" =>  ::String
    ], ...]
```



# Returns

`CreateLoadBalancerListenerOutput`

# Exceptions

`AccessPointNotFoundException`, `DuplicateListenerException`, `CertificateNotFoundException`, `InvalidConfigurationRequestException` or `UnsupportedProtocolException`.

# Example: To create an HTTP listener for a load balancer

This example creates a listener for your load balancer at port 80 using the HTTP protocol.

Input:
```
[
    "Listeners" => [
        [
            "InstancePort" => 80,
            "InstanceProtocol" => "HTTP",
            "LoadBalancerPort" => 80,
            "Protocol" => "HTTP"
        ]
    ],
    "LoadBalancerName" => "my-load-balancer"
]
```

# Example: To create an HTTPS listener for a load balancer

This example creates a listener for your load balancer at port 443 using the HTTPS protocol.

Input:
```
[
    "Listeners" => [
        [
            "InstancePort" => 80,
            "InstanceProtocol" => "HTTP",
            "LoadBalancerPort" => 443,
            "Protocol" => "HTTPS",
            "SSLCertificateId" => "arn:aws:iam::123456789012:server-certificate/my-server-cert"
        ]
    ],
    "LoadBalancerName" => "my-load-balancer"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/CreateLoadBalancerListeners)
"""
@inline create_load_balancer_listeners(aws::AWSConfig=default_aws_config(); args...) = create_load_balancer_listeners(aws, args)

@inline create_load_balancer_listeners(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "CreateLoadBalancerListeners", args)

@inline create_load_balancer_listeners(args) = create_load_balancer_listeners(default_aws_config(), args)


"""
    using AWSSDK.ELB.create_load_balancer_policy
    create_load_balancer_policy([::AWSConfig], arguments::Dict)
    create_load_balancer_policy([::AWSConfig]; LoadBalancerName=, PolicyName=, PolicyTypeName=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "CreateLoadBalancerPolicy", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "CreateLoadBalancerPolicy", LoadBalancerName=, PolicyName=, PolicyTypeName=, <keyword arguments>)

# CreateLoadBalancerPolicy Operation

Creates a policy with the specified attributes for the specified load balancer.

Policies are settings that are saved for your load balancer and that can be applied to the listener or the application server, depending on the policy type.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `PolicyName = ::String` -- *Required*
The name of the load balancer policy to be created. This name must be unique within the set of policies for this load balancer.


## `PolicyTypeName = ::String` -- *Required*
The name of the base policy type. To get the list of policy types, use [DescribeLoadBalancerPolicyTypes](@ref).


## `PolicyAttributes = [[ ... ], ...]`
The policy attributes.
```
 PolicyAttributes = [[
        "AttributeName" =>  ::String,
        "AttributeValue" =>  ::String
    ], ...]
```



# Returns

`CreateLoadBalancerPolicyOutput`

# Exceptions

`AccessPointNotFoundException`, `PolicyTypeNotFoundException`, `DuplicatePolicyNameException`, `TooManyPoliciesException` or `InvalidConfigurationRequestException`.

# Example: To create a policy that enables Proxy Protocol on a load balancer

This example creates a policy that enables Proxy Protocol on the specified load balancer.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer",
    "PolicyAttributes" => [
        [
            "AttributeName" => "ProxyProtocol",
            "AttributeValue" => "true"
        ]
    ],
    "PolicyName" => "my-ProxyProtocol-policy",
    "PolicyTypeName" => "ProxyProtocolPolicyType"
]
```

# Example: To create a public key policy

This example creates a public key policy.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer",
    "PolicyAttributes" => [
        [
            "AttributeName" => "PublicKey",
            "AttributeValue" => "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwAYUjnfyEyXr1pxjhFWBpMlggUcqoi3kl+dS74kj//c6x7ROtusUaeQCTgIUkayttRDWchuqo1pHC1u+n5xxXnBBe2ejbb2WRsKIQ5rXEeixsjFpFsojpSQKkzhVGI6mJVZBJDVKSHmswnwLBdofLhzvllpovBPTHe+o4haAWvDBALJU0pkSI1FecPHcs2hwxf14zHoXy1e2k36A64nXW43wtfx5qcVSIxtCEOjnYRg7RPvybaGfQ+v6Iaxb/+7J5kEvZhTFQId+bSiJImF1FSUT1W1xwzBZPUbcUkkXDj45vC2s3Z8E+Lk7a3uZhvsQHLZnrfuWjBWGWvZ/MhZYgEXAMPLE"
        ]
    ],
    "PolicyName" => "my-PublicKey-policy",
    "PolicyTypeName" => "PublicKeyPolicyType"
]
```

# Example: To create a backend server authentication policy

This example creates a backend server authentication policy that enables authentication on your backend instance using a public key policy.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer",
    "PolicyAttributes" => [
        [
            "AttributeName" => "PublicKeyPolicyName",
            "AttributeValue" => "my-PublicKey-policy"
        ]
    ],
    "PolicyName" => "my-authentication-policy",
    "PolicyTypeName" => "BackendServerAuthenticationPolicyType"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/CreateLoadBalancerPolicy)
"""
@inline create_load_balancer_policy(aws::AWSConfig=default_aws_config(); args...) = create_load_balancer_policy(aws, args)

@inline create_load_balancer_policy(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "CreateLoadBalancerPolicy", args)

@inline create_load_balancer_policy(args) = create_load_balancer_policy(default_aws_config(), args)


"""
    using AWSSDK.ELB.delete_load_balancer
    delete_load_balancer([::AWSConfig], arguments::Dict)
    delete_load_balancer([::AWSConfig]; LoadBalancerName=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DeleteLoadBalancer", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DeleteLoadBalancer", LoadBalancerName=)

# DeleteLoadBalancer Operation

Deletes the specified load balancer.

If you are attempting to recreate a load balancer, you must reconfigure all settings. The DNS name associated with a deleted load balancer are no longer usable. The name and associated DNS record of the deleted load balancer no longer exist and traffic sent to any of its IP addresses is no longer delivered to your instances.

If the load balancer does not exist or has already been deleted, the call to `DeleteLoadBalancer` still succeeds.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.




# Returns

`DeleteAccessPointOutput`

# Example: To delete a load balancer

This example deletes the specified load balancer.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DeleteLoadBalancer)
"""
@inline delete_load_balancer(aws::AWSConfig=default_aws_config(); args...) = delete_load_balancer(aws, args)

@inline delete_load_balancer(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DeleteLoadBalancer", args)

@inline delete_load_balancer(args) = delete_load_balancer(default_aws_config(), args)


"""
    using AWSSDK.ELB.delete_load_balancer_listeners
    delete_load_balancer_listeners([::AWSConfig], arguments::Dict)
    delete_load_balancer_listeners([::AWSConfig]; LoadBalancerName=, LoadBalancerPorts=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DeleteLoadBalancerListeners", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DeleteLoadBalancerListeners", LoadBalancerName=, LoadBalancerPorts=)

# DeleteLoadBalancerListeners Operation

Deletes the specified listeners from the specified load balancer.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `LoadBalancerPorts = [::Int, ...]` -- *Required*
The client port numbers of the listeners.




# Returns

`DeleteLoadBalancerListenerOutput`

# Exceptions

`AccessPointNotFoundException`.

# Example: To delete a listener from your load balancer

This example deletes the listener for the specified port from the specified load balancer.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer",
    "LoadBalancerPorts" => [
        80
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DeleteLoadBalancerListeners)
"""
@inline delete_load_balancer_listeners(aws::AWSConfig=default_aws_config(); args...) = delete_load_balancer_listeners(aws, args)

@inline delete_load_balancer_listeners(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DeleteLoadBalancerListeners", args)

@inline delete_load_balancer_listeners(args) = delete_load_balancer_listeners(default_aws_config(), args)


"""
    using AWSSDK.ELB.delete_load_balancer_policy
    delete_load_balancer_policy([::AWSConfig], arguments::Dict)
    delete_load_balancer_policy([::AWSConfig]; LoadBalancerName=, PolicyName=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DeleteLoadBalancerPolicy", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DeleteLoadBalancerPolicy", LoadBalancerName=, PolicyName=)

# DeleteLoadBalancerPolicy Operation

Deletes the specified policy from the specified load balancer. This policy must not be enabled for any listeners.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `PolicyName = ::String` -- *Required*
The name of the policy.




# Returns

`DeleteLoadBalancerPolicyOutput`

# Exceptions

`AccessPointNotFoundException` or `InvalidConfigurationRequestException`.

# Example: To delete a policy from your load balancer

This example deletes the specified policy from the specified load balancer. The policy must not be enabled on any listener.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer",
    "PolicyName" => "my-duration-cookie-policy"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DeleteLoadBalancerPolicy)
"""
@inline delete_load_balancer_policy(aws::AWSConfig=default_aws_config(); args...) = delete_load_balancer_policy(aws, args)

@inline delete_load_balancer_policy(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DeleteLoadBalancerPolicy", args)

@inline delete_load_balancer_policy(args) = delete_load_balancer_policy(default_aws_config(), args)


"""
    using AWSSDK.ELB.deregister_instances_from_load_balancer
    deregister_instances_from_load_balancer([::AWSConfig], arguments::Dict)
    deregister_instances_from_load_balancer([::AWSConfig]; LoadBalancerName=, Instances=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DeregisterInstancesFromLoadBalancer", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DeregisterInstancesFromLoadBalancer", LoadBalancerName=, Instances=)

# DeregisterInstancesFromLoadBalancer Operation

Deregisters the specified instances from the specified load balancer. After the instance is deregistered, it no longer receives traffic from the load balancer.

You can use [DescribeLoadBalancers](@ref) to verify that the instance is deregistered from the load balancer.

For more information, see [Register or De-Register EC2 Instances](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `Instances = [["InstanceId" =>  ::String], ...]` -- *Required*
The IDs of the instances.




# Returns

`DeregisterEndPointsOutput`

# Exceptions

`AccessPointNotFoundException` or `InvalidEndPointException`.

# Example: To deregister instances from a load balancer

This example deregisters the specified instance from the specified load balancer.

Input:
```
[
    "Instances" => [
        [
            "InstanceId" => "i-d6f6fae3"
        ]
    ],
    "LoadBalancerName" => "my-load-balancer"
]
```

Output:
```
Dict(
    "Instances" => [
        Dict(
            "InstanceId" => "i-207d9717"
        ),
        Dict(
            "InstanceId" => "i-afefb49b"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DeregisterInstancesFromLoadBalancer)
"""
@inline deregister_instances_from_load_balancer(aws::AWSConfig=default_aws_config(); args...) = deregister_instances_from_load_balancer(aws, args)

@inline deregister_instances_from_load_balancer(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DeregisterInstancesFromLoadBalancer", args)

@inline deregister_instances_from_load_balancer(args) = deregister_instances_from_load_balancer(default_aws_config(), args)


"""
    using AWSSDK.ELB.describe_account_limits
    describe_account_limits([::AWSConfig], arguments::Dict)
    describe_account_limits([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DescribeAccountLimits", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DescribeAccountLimits", <keyword arguments>)

# DescribeAccountLimits Operation

Describes the current Elastic Load Balancing resource limits for your AWS account.

For more information, see [Limits for Your Classic Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html) in the *Classic Load Balancer Guide*.

# Arguments

## `Marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `PageSize = ::Int`
The maximum number of results to return with this call.




# Returns

`DescribeAccountLimitsOutput`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeAccountLimits)
"""
@inline describe_account_limits(aws::AWSConfig=default_aws_config(); args...) = describe_account_limits(aws, args)

@inline describe_account_limits(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DescribeAccountLimits", args)

@inline describe_account_limits(args) = describe_account_limits(default_aws_config(), args)


"""
    using AWSSDK.ELB.describe_instance_health
    describe_instance_health([::AWSConfig], arguments::Dict)
    describe_instance_health([::AWSConfig]; LoadBalancerName=, <keyword arguments>)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DescribeInstanceHealth", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DescribeInstanceHealth", LoadBalancerName=, <keyword arguments>)

# DescribeInstanceHealth Operation

Describes the state of the specified instances with respect to the specified load balancer. If no instances are specified, the call describes the state of all instances that are currently registered with the load balancer. If instances are specified, their state is returned even if they are no longer registered with the load balancer. The state of terminated instances is not returned.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `Instances = [["InstanceId" =>  ::String], ...]`
The IDs of the instances.




# Returns

`DescribeEndPointStateOutput`

# Exceptions

`AccessPointNotFoundException` or `InvalidEndPointException`.

# Example: To describe the health of the instances for a load balancer

This example describes the health of the instances for the specified load balancer.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer"
]
```

Output:
```
Dict(
    "InstanceStates" => [
        Dict(
            "Description" => "N/A",
            "InstanceId" => "i-207d9717",
            "ReasonCode" => "N/A",
            "State" => "InService"
        ),
        Dict(
            "Description" => "N/A",
            "InstanceId" => "i-afefb49b",
            "ReasonCode" => "N/A",
            "State" => "InService"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeInstanceHealth)
"""
@inline describe_instance_health(aws::AWSConfig=default_aws_config(); args...) = describe_instance_health(aws, args)

@inline describe_instance_health(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DescribeInstanceHealth", args)

@inline describe_instance_health(args) = describe_instance_health(default_aws_config(), args)


"""
    using AWSSDK.ELB.describe_load_balancer_attributes
    describe_load_balancer_attributes([::AWSConfig], arguments::Dict)
    describe_load_balancer_attributes([::AWSConfig]; LoadBalancerName=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DescribeLoadBalancerAttributes", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DescribeLoadBalancerAttributes", LoadBalancerName=)

# DescribeLoadBalancerAttributes Operation

Describes the attributes for the specified load balancer.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.




# Returns

`DescribeLoadBalancerAttributesOutput`

# Exceptions

`AccessPointNotFoundException` or `LoadBalancerAttributeNotFoundException`.

# Example: To describe the attributes of a load balancer

This example describes the attributes of the specified load balancer.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer"
]
```

Output:
```
Dict(
    "LoadBalancerAttributes" => Dict(
        "AccessLog" => Dict(
            "Enabled" => false
        ),
        "ConnectionDraining" => Dict(
            "Enabled" => false,
            "Timeout" => 300
        ),
        "ConnectionSettings" => Dict(
            "IdleTimeout" => 60
        ),
        "CrossZoneLoadBalancing" => Dict(
            "Enabled" => false
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeLoadBalancerAttributes)
"""
@inline describe_load_balancer_attributes(aws::AWSConfig=default_aws_config(); args...) = describe_load_balancer_attributes(aws, args)

@inline describe_load_balancer_attributes(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DescribeLoadBalancerAttributes", args)

@inline describe_load_balancer_attributes(args) = describe_load_balancer_attributes(default_aws_config(), args)


"""
    using AWSSDK.ELB.describe_load_balancer_policies
    describe_load_balancer_policies([::AWSConfig], arguments::Dict)
    describe_load_balancer_policies([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DescribeLoadBalancerPolicies", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DescribeLoadBalancerPolicies", <keyword arguments>)

# DescribeLoadBalancerPolicies Operation

Describes the specified policies.

If you specify a load balancer name, the action returns the descriptions of all policies created for the load balancer. If you specify a policy name associated with your load balancer, the action returns the description of that policy. If you don't specify a load balancer name, the action returns descriptions of the specified sample policies, or descriptions of all sample policies. The names of the sample policies have the `ELBSample-` prefix.

# Arguments

## `LoadBalancerName = ::String`
The name of the load balancer.


## `PolicyNames = [::String, ...]`
The names of the policies.




# Returns

`DescribeLoadBalancerPoliciesOutput`

# Exceptions

`AccessPointNotFoundException` or `PolicyNotFoundException`.

# Example: To describe a policy associated with a load balancer

This example describes the specified policy associated with the specified load balancer.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer",
    "PolicyNames" => [
        "my-authentication-policy"
    ]
]
```

Output:
```
Dict(
    "PolicyDescriptions" => [
        Dict(
            "PolicyAttributeDescriptions" => [
                Dict(
                    "AttributeName" => "PublicKeyPolicyName",
                    "AttributeValue" => "my-PublicKey-policy"
                )
            ],
            "PolicyName" => "my-authentication-policy",
            "PolicyTypeName" => "BackendServerAuthenticationPolicyType"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeLoadBalancerPolicies)
"""
@inline describe_load_balancer_policies(aws::AWSConfig=default_aws_config(); args...) = describe_load_balancer_policies(aws, args)

@inline describe_load_balancer_policies(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DescribeLoadBalancerPolicies", args)

@inline describe_load_balancer_policies(args) = describe_load_balancer_policies(default_aws_config(), args)


"""
    using AWSSDK.ELB.describe_load_balancer_policy_types
    describe_load_balancer_policy_types([::AWSConfig], arguments::Dict)
    describe_load_balancer_policy_types([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DescribeLoadBalancerPolicyTypes", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DescribeLoadBalancerPolicyTypes", <keyword arguments>)

# DescribeLoadBalancerPolicyTypes Operation

Describes the specified load balancer policy types or all load balancer policy types.

The description of each type indicates how it can be used. For example, some policies can be used only with layer 7 listeners, some policies can be used only with layer 4 listeners, and some policies can be used only with your EC2 instances.

You can use [CreateLoadBalancerPolicy](@ref) to create a policy configuration for any of these policy types. Then, depending on the policy type, use either [SetLoadBalancerPoliciesOfListener](@ref) or [SetLoadBalancerPoliciesForBackendServer](@ref) to set the policy.

# Arguments

## `PolicyTypeNames = [::String, ...]`
The names of the policy types. If no names are specified, describes all policy types defined by Elastic Load Balancing.




# Returns

`DescribeLoadBalancerPolicyTypesOutput`

# Exceptions

`PolicyTypeNotFoundException`.

# Example: To describe a load balancer policy type defined by Elastic Load Balancing

This example describes the specified load balancer policy type.

Input:
```
[
    "PolicyTypeNames" => [
        "ProxyProtocolPolicyType"
    ]
]
```

Output:
```
Dict(
    "PolicyTypeDescriptions" => [
        Dict(
            "Description" => "Policy that controls whether to include the IP address and port of the originating request for TCP messages. This policy operates on TCP listeners only.",
            "PolicyAttributeTypeDescriptions" => [
                Dict(
                    "AttributeName" => "ProxyProtocol",
                    "AttributeType" => "Boolean",
                    "Cardinality" => "ONE"
                )
            ],
            "PolicyTypeName" => "ProxyProtocolPolicyType"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeLoadBalancerPolicyTypes)
"""
@inline describe_load_balancer_policy_types(aws::AWSConfig=default_aws_config(); args...) = describe_load_balancer_policy_types(aws, args)

@inline describe_load_balancer_policy_types(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DescribeLoadBalancerPolicyTypes", args)

@inline describe_load_balancer_policy_types(args) = describe_load_balancer_policy_types(default_aws_config(), args)


"""
    using AWSSDK.ELB.describe_load_balancers
    describe_load_balancers([::AWSConfig], arguments::Dict)
    describe_load_balancers([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DescribeLoadBalancers", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DescribeLoadBalancers", <keyword arguments>)

# DescribeLoadBalancers Operation

Describes the specified the load balancers. If no load balancers are specified, the call describes all of your load balancers.

# Arguments

## `LoadBalancerNames = [::String, ...]`
The names of the load balancers.


## `Marker = ::String`
The marker for the next set of results. (You received this marker from a previous call.)


## `PageSize = ::Int`
The maximum number of results to return with this call (a number from 1 to 400). The default is 400.




# Returns

`DescribeAccessPointsOutput`

# Exceptions

`AccessPointNotFoundException` or `DependencyThrottleException`.

# Example: To describe one of your load balancers

This example describes the specified load balancer.

Input:
```
[
    "LoadBalancerNames" => [
        "my-load-balancer"
    ]
]
```

Output:
```
Dict(
    "LoadBalancerDescriptions" => [
        Dict(
            "AvailabilityZones" => [
                "us-west-2a"
            ],
            "BackendServerDescriptions" => [
                Dict(
                    "InstancePort" => 80,
                    "PolicyNames" => [
                        "my-ProxyProtocol-policy"
                    ]
                )
            ],
            "CanonicalHostedZoneName" => "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com",
            "CanonicalHostedZoneNameID" => "Z3DZXE0EXAMPLE",
            "CreatedTime" => "2015-03-19T03:24:02.650Z",
            "DNSName" => "my-load-balancer-1234567890.us-west-2.elb.amazonaws.com",
            "HealthCheck" => Dict(
                "HealthyThreshold" => 2,
                "Interval" => 30,
                "Target" => "HTTP:80/png",
                "Timeout" => 3,
                "UnhealthyThreshold" => 2
            ),
            "Instances" => [
                Dict(
                    "InstanceId" => "i-207d9717"
                ),
                Dict(
                    "InstanceId" => "i-afefb49b"
                )
            ],
            "ListenerDescriptions" => [
                Dict(
                    "Listener" => Dict(
                        "InstancePort" => 80,
                        "InstanceProtocol" => "HTTP",
                        "LoadBalancerPort" => 80,
                        "Protocol" => "HTTP"
                    ),
                    "PolicyNames" => [

                    ]
                ),
                Dict(
                    "Listener" => Dict(
                        "InstancePort" => 443,
                        "InstanceProtocol" => "HTTPS",
                        "LoadBalancerPort" => 443,
                        "Protocol" => "HTTPS",
                        "SSLCertificateId" => "arn:aws:iam::123456789012:server-certificate/my-server-cert"
                    ),
                    "PolicyNames" => [
                        "ELBSecurityPolicy-2015-03"
                    ]
                )
            ],
            "LoadBalancerName" => "my-load-balancer",
            "Policies" => Dict(
                "AppCookieStickinessPolicies" => [

                ],
                "LBCookieStickinessPolicies" => [
                    Dict(
                        "CookieExpirationPeriod" => 60,
                        "PolicyName" => "my-duration-cookie-policy"
                    )
                ],
                "OtherPolicies" => [
                    "my-PublicKey-policy",
                    "my-authentication-policy",
                    "my-SSLNegotiation-policy",
                    "my-ProxyProtocol-policy",
                    "ELBSecurityPolicy-2015-03"
                ]
            ),
            "Scheme" => "internet-facing",
            "SecurityGroups" => [
                "sg-a61988c3"
            ],
            "SourceSecurityGroup" => Dict(
                "GroupName" => "my-elb-sg",
                "OwnerAlias" => "123456789012"
            ),
            "Subnets" => [
                "subnet-15aaab61"
            ],
            "VPCId" => "vpc-a01106c2"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeLoadBalancers)
"""
@inline describe_load_balancers(aws::AWSConfig=default_aws_config(); args...) = describe_load_balancers(aws, args)

@inline describe_load_balancers(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DescribeLoadBalancers", args)

@inline describe_load_balancers(args) = describe_load_balancers(default_aws_config(), args)


"""
    using AWSSDK.ELB.describe_tags
    describe_tags([::AWSConfig], arguments::Dict)
    describe_tags([::AWSConfig]; LoadBalancerNames=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DescribeTags", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DescribeTags", LoadBalancerNames=)

# DescribeTags Operation

Describes the tags associated with the specified load balancers.

# Arguments

## `LoadBalancerNames = [::String, ...]` -- *Required*
The names of the load balancers.




# Returns

`DescribeTagsOutput`

# Exceptions

`AccessPointNotFoundException`.

# Example: To describe the tags for a load balancer

This example describes the tags for the specified load balancer.

Input:
```
[
    "LoadBalancerNames" => [
        "my-load-balancer"
    ]
]
```

Output:
```
Dict(
    "TagDescriptions" => [
        Dict(
            "LoadBalancerName" => "my-load-balancer",
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

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DescribeTags)
"""
@inline describe_tags(aws::AWSConfig=default_aws_config(); args...) = describe_tags(aws, args)

@inline describe_tags(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DescribeTags", args)

@inline describe_tags(args) = describe_tags(default_aws_config(), args)


"""
    using AWSSDK.ELB.detach_load_balancer_from_subnets
    detach_load_balancer_from_subnets([::AWSConfig], arguments::Dict)
    detach_load_balancer_from_subnets([::AWSConfig]; LoadBalancerName=, Subnets=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DetachLoadBalancerFromSubnets", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DetachLoadBalancerFromSubnets", LoadBalancerName=, Subnets=)

# DetachLoadBalancerFromSubnets Operation

Removes the specified subnets from the set of configured subnets for the load balancer.

After a subnet is removed, all EC2 instances registered with the load balancer in the removed subnet go into the `OutOfService` state. Then, the load balancer balances the traffic among the remaining routable subnets.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `Subnets = [::String, ...]` -- *Required*
The IDs of the subnets.




# Returns

`DetachLoadBalancerFromSubnetsOutput`

# Exceptions

`AccessPointNotFoundException` or `InvalidConfigurationRequestException`.

# Example: To detach a load balancer from a subnet

This example detaches the specified load balancer from the specified subnet.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer",
    "Subnets" => [
        "subnet-0ecac448"
    ]
]
```

Output:
```
Dict(
    "Subnets" => [
        "subnet-15aaab61"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DetachLoadBalancerFromSubnets)
"""
@inline detach_load_balancer_from_subnets(aws::AWSConfig=default_aws_config(); args...) = detach_load_balancer_from_subnets(aws, args)

@inline detach_load_balancer_from_subnets(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DetachLoadBalancerFromSubnets", args)

@inline detach_load_balancer_from_subnets(args) = detach_load_balancer_from_subnets(default_aws_config(), args)


"""
    using AWSSDK.ELB.disable_availability_zones_for_load_balancer
    disable_availability_zones_for_load_balancer([::AWSConfig], arguments::Dict)
    disable_availability_zones_for_load_balancer([::AWSConfig]; LoadBalancerName=, AvailabilityZones=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "DisableAvailabilityZonesForLoadBalancer", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "DisableAvailabilityZonesForLoadBalancer", LoadBalancerName=, AvailabilityZones=)

# DisableAvailabilityZonesForLoadBalancer Operation

Removes the specified Availability Zones from the set of Availability Zones for the specified load balancer.

There must be at least one Availability Zone registered with a load balancer at all times. After an Availability Zone is removed, all instances registered with the load balancer that are in the removed Availability Zone go into the `OutOfService` state. Then, the load balancer attempts to equally balance the traffic among its remaining Availability Zones.

For more information, see [Add or Remove Availability Zones](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `AvailabilityZones = [::String, ...]` -- *Required*
The Availability Zones.




# Returns

`RemoveAvailabilityZonesOutput`

# Exceptions

`AccessPointNotFoundException` or `InvalidConfigurationRequestException`.

# Example: To disable an Availability Zone for a load balancer

This example removes the specified Availability Zone from the set of Availability Zones for the specified load balancer.

Input:
```
[
    "AvailabilityZones" => [
        "us-west-2a"
    ],
    "LoadBalancerName" => "my-load-balancer"
]
```

Output:
```
Dict(
    "AvailabilityZones" => [
        "us-west-2b"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/DisableAvailabilityZonesForLoadBalancer)
"""
@inline disable_availability_zones_for_load_balancer(aws::AWSConfig=default_aws_config(); args...) = disable_availability_zones_for_load_balancer(aws, args)

@inline disable_availability_zones_for_load_balancer(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "DisableAvailabilityZonesForLoadBalancer", args)

@inline disable_availability_zones_for_load_balancer(args) = disable_availability_zones_for_load_balancer(default_aws_config(), args)


"""
    using AWSSDK.ELB.enable_availability_zones_for_load_balancer
    enable_availability_zones_for_load_balancer([::AWSConfig], arguments::Dict)
    enable_availability_zones_for_load_balancer([::AWSConfig]; LoadBalancerName=, AvailabilityZones=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "EnableAvailabilityZonesForLoadBalancer", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "EnableAvailabilityZonesForLoadBalancer", LoadBalancerName=, AvailabilityZones=)

# EnableAvailabilityZonesForLoadBalancer Operation

Adds the specified Availability Zones to the set of Availability Zones for the specified load balancer.

The load balancer evenly distributes requests across all its registered Availability Zones that contain instances.

For more information, see [Add or Remove Availability Zones](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `AvailabilityZones = [::String, ...]` -- *Required*
The Availability Zones. These must be in the same region as the load balancer.




# Returns

`AddAvailabilityZonesOutput`

# Exceptions

`AccessPointNotFoundException`.

# Example: To enable an Availability Zone for a load balancer

This example adds the specified Availability Zone to the specified load balancer.

Input:
```
[
    "AvailabilityZones" => [
        "us-west-2b"
    ],
    "LoadBalancerName" => "my-load-balancer"
]
```

Output:
```
Dict(
    "AvailabilityZones" => [
        "us-west-2a",
        "us-west-2b"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/EnableAvailabilityZonesForLoadBalancer)
"""
@inline enable_availability_zones_for_load_balancer(aws::AWSConfig=default_aws_config(); args...) = enable_availability_zones_for_load_balancer(aws, args)

@inline enable_availability_zones_for_load_balancer(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "EnableAvailabilityZonesForLoadBalancer", args)

@inline enable_availability_zones_for_load_balancer(args) = enable_availability_zones_for_load_balancer(default_aws_config(), args)


"""
    using AWSSDK.ELB.modify_load_balancer_attributes
    modify_load_balancer_attributes([::AWSConfig], arguments::Dict)
    modify_load_balancer_attributes([::AWSConfig]; LoadBalancerName=, LoadBalancerAttributes=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "ModifyLoadBalancerAttributes", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "ModifyLoadBalancerAttributes", LoadBalancerName=, LoadBalancerAttributes=)

# ModifyLoadBalancerAttributes Operation

Modifies the attributes of the specified load balancer.

You can modify the load balancer attributes, such as `AccessLogs`, `ConnectionDraining`, and `CrossZoneLoadBalancing` by either enabling or disabling them. Or, you can modify the load balancer attribute `ConnectionSettings` by specifying an idle connection timeout value for your load balancer.

For more information, see the following in the *Classic Load Balancer Guide*:

*   [Cross-Zone Load Balancing](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html)

*   [Connection Draining](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html)

*   [Access Logs](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html)

*   [Idle Connection Timeout](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html)

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `LoadBalancerAttributes = [ ... ]` -- *Required*
The attributes for the load balancer.
```
 LoadBalancerAttributes = [
        "CrossZoneLoadBalancing" =>  ["Enabled" => <required> ::Bool],
        "AccessLog" =>  [
            "Enabled" => <required> ::Bool,
            "S3BucketName" =>  ::String,
            "EmitInterval" =>  ::Int,
            "S3BucketPrefix" =>  ::String
        ],
        "ConnectionDraining" =>  [
            "Enabled" => <required> ::Bool,
            "Timeout" =>  ::Int
        ],
        "ConnectionSettings" =>  ["IdleTimeout" => <required> ::Int],
        "AdditionalAttributes" =>  [[
            "Key" =>  ::String,
            "Value" =>  ::String
        ], ...]
    ]
```



# Returns

`ModifyLoadBalancerAttributesOutput`

# Exceptions

`AccessPointNotFoundException`, `LoadBalancerAttributeNotFoundException` or `InvalidConfigurationRequestException`.

# Example: To enable cross-zone load balancing

This example enables cross-zone load balancing for the specified load balancer.

Input:
```
[
    "LoadBalancerAttributes" => [
        "CrossZoneLoadBalancing" => [
            "Enabled" => true
        ]
    ],
    "LoadBalancerName" => "my-load-balancer"
]
```

Output:
```
Dict(
    "LoadBalancerAttributes" => Dict(
        "CrossZoneLoadBalancing" => Dict(
            "Enabled" => true
        )
    ),
    "LoadBalancerName" => "my-load-balancer"
)
```

# Example: To enable connection draining

This example enables connection draining for the specified load balancer.

Input:
```
[
    "LoadBalancerAttributes" => [
        "ConnectionDraining" => [
            "Enabled" => true,
            "Timeout" => 300
        ]
    ],
    "LoadBalancerName" => "my-load-balancer"
]
```

Output:
```
Dict(
    "LoadBalancerAttributes" => Dict(
        "ConnectionDraining" => Dict(
            "Enabled" => true,
            "Timeout" => 300
        )
    ),
    "LoadBalancerName" => "my-load-balancer"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/ModifyLoadBalancerAttributes)
"""
@inline modify_load_balancer_attributes(aws::AWSConfig=default_aws_config(); args...) = modify_load_balancer_attributes(aws, args)

@inline modify_load_balancer_attributes(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "ModifyLoadBalancerAttributes", args)

@inline modify_load_balancer_attributes(args) = modify_load_balancer_attributes(default_aws_config(), args)


"""
    using AWSSDK.ELB.register_instances_with_load_balancer
    register_instances_with_load_balancer([::AWSConfig], arguments::Dict)
    register_instances_with_load_balancer([::AWSConfig]; LoadBalancerName=, Instances=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "RegisterInstancesWithLoadBalancer", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "RegisterInstancesWithLoadBalancer", LoadBalancerName=, Instances=)

# RegisterInstancesWithLoadBalancer Operation

Adds the specified instances to the specified load balancer.

The instance must be a running instance in the same network as the load balancer (EC2-Classic or the same VPC). If you have EC2-Classic instances and a load balancer in a VPC with ClassicLink enabled, you can link the EC2-Classic instances to that VPC and then register the linked EC2-Classic instances with the load balancer in the VPC.

Note that `RegisterInstanceWithLoadBalancer` completes when the request has been registered. Instance registration takes a little time to complete. To check the state of the registered instances, use [DescribeLoadBalancers](@ref) or [DescribeInstanceHealth](@ref).

After the instance is registered, it starts receiving traffic and requests from the load balancer. Any instance that is not in one of the Availability Zones registered for the load balancer is moved to the `OutOfService` state. If an Availability Zone is added to the load balancer later, any instances registered with the load balancer move to the `InService` state.

To deregister instances from a load balancer, use [DeregisterInstancesFromLoadBalancer](@ref).

For more information, see [Register or De-Register EC2 Instances](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `Instances = [["InstanceId" =>  ::String], ...]` -- *Required*
The IDs of the instances.




# Returns

`RegisterEndPointsOutput`

# Exceptions

`AccessPointNotFoundException` or `InvalidEndPointException`.

# Example: To register instances with a load balancer

This example registers the specified instance with the specified load balancer.

Input:
```
[
    "Instances" => [
        [
            "InstanceId" => "i-d6f6fae3"
        ]
    ],
    "LoadBalancerName" => "my-load-balancer"
]
```

Output:
```
Dict(
    "Instances" => [
        Dict(
            "InstanceId" => "i-d6f6fae3"
        ),
        Dict(
            "InstanceId" => "i-207d9717"
        ),
        Dict(
            "InstanceId" => "i-afefb49b"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/RegisterInstancesWithLoadBalancer)
"""
@inline register_instances_with_load_balancer(aws::AWSConfig=default_aws_config(); args...) = register_instances_with_load_balancer(aws, args)

@inline register_instances_with_load_balancer(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "RegisterInstancesWithLoadBalancer", args)

@inline register_instances_with_load_balancer(args) = register_instances_with_load_balancer(default_aws_config(), args)


"""
    using AWSSDK.ELB.remove_tags
    remove_tags([::AWSConfig], arguments::Dict)
    remove_tags([::AWSConfig]; LoadBalancerNames=, Tags=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "RemoveTags", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "RemoveTags", LoadBalancerNames=, Tags=)

# RemoveTags Operation

Removes one or more tags from the specified load balancer.

# Arguments

## `LoadBalancerNames = [::String, ...]` -- *Required*
The name of the load balancer. You can specify a maximum of one load balancer name.


## `Tags = [["Key" =>  ::String], ...]` -- *Required*
The list of tag keys to remove.




# Returns

`RemoveTagsOutput`

# Exceptions

`AccessPointNotFoundException`.

# Example: To remove tags from a load balancer

This example removes the specified tag from the specified load balancer.

Input:
```
[
    "LoadBalancerNames" => [
        "my-load-balancer"
    ],
    "Tags" => [
        [
            "Key" => "project"
        ]
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/RemoveTags)
"""
@inline remove_tags(aws::AWSConfig=default_aws_config(); args...) = remove_tags(aws, args)

@inline remove_tags(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "RemoveTags", args)

@inline remove_tags(args) = remove_tags(default_aws_config(), args)


"""
    using AWSSDK.ELB.set_load_balancer_listener_sslcertificate
    set_load_balancer_listener_sslcertificate([::AWSConfig], arguments::Dict)
    set_load_balancer_listener_sslcertificate([::AWSConfig]; LoadBalancerName=, LoadBalancerPort=, SSLCertificateId=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "SetLoadBalancerListenerSSLCertificate", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "SetLoadBalancerListenerSSLCertificate", LoadBalancerName=, LoadBalancerPort=, SSLCertificateId=)

# SetLoadBalancerListenerSSLCertificate Operation

Sets the certificate that terminates the specified listener's SSL connections. The specified certificate replaces any prior certificate that was used on the same load balancer and port.

For more information about updating your SSL certificate, see [Replace the SSL Certificate for Your Load Balancer](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-update-ssl-cert.html) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `LoadBalancerPort = ::Int` -- *Required*
The port that uses the specified SSL certificate.


## `SSLCertificateId = ::String` -- *Required*
The Amazon Resource Name (ARN) of the SSL certificate.




# Returns

`SetLoadBalancerListenerSSLCertificateOutput`

# Exceptions

`CertificateNotFoundException`, `AccessPointNotFoundException`, `ListenerNotFoundException`, `InvalidConfigurationRequestException` or `UnsupportedProtocolException`.

# Example: To update the SSL certificate for an HTTPS listener

This example replaces the existing SSL certificate for the specified HTTPS listener.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer",
    "LoadBalancerPort" => 443,
    "SSLCertificateId" => "arn:aws:iam::123456789012:server-certificate/new-server-cert"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/SetLoadBalancerListenerSSLCertificate)
"""
@inline set_load_balancer_listener_sslcertificate(aws::AWSConfig=default_aws_config(); args...) = set_load_balancer_listener_sslcertificate(aws, args)

@inline set_load_balancer_listener_sslcertificate(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "SetLoadBalancerListenerSSLCertificate", args)

@inline set_load_balancer_listener_sslcertificate(args) = set_load_balancer_listener_sslcertificate(default_aws_config(), args)


"""
    using AWSSDK.ELB.set_load_balancer_policies_for_backend_server
    set_load_balancer_policies_for_backend_server([::AWSConfig], arguments::Dict)
    set_load_balancer_policies_for_backend_server([::AWSConfig]; LoadBalancerName=, InstancePort=, PolicyNames=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "SetLoadBalancerPoliciesForBackendServer", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "SetLoadBalancerPoliciesForBackendServer", LoadBalancerName=, InstancePort=, PolicyNames=)

# SetLoadBalancerPoliciesForBackendServer Operation

Replaces the set of policies associated with the specified port on which the EC2 instance is listening with a new set of policies. At this time, only the back-end server authentication policy type can be applied to the instance ports; this policy type is composed of multiple public key policies.

Each time you use `SetLoadBalancerPoliciesForBackendServer` to enable the policies, use the `PolicyNames` parameter to list the policies that you want to enable.

You can use [DescribeLoadBalancers](@ref) or [DescribeLoadBalancerPolicies](@ref) to verify that the policy is associated with the EC2 instance.

For more information about enabling back-end instance authentication, see [Configure Back-end Instance Authentication](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html#configure_backendauth_clt) in the *Classic Load Balancer Guide*. For more information about Proxy Protocol, see [Configure Proxy Protocol Support](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-proxy-protocol.html) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `InstancePort = ::Int` -- *Required*
The port number associated with the EC2 instance.


## `PolicyNames = [::String, ...]` -- *Required*
The names of the policies. If the list is empty, then all current polices are removed from the EC2 instance.




# Returns

`SetLoadBalancerPoliciesForBackendServerOutput`

# Exceptions

`AccessPointNotFoundException`, `PolicyNotFoundException` or `InvalidConfigurationRequestException`.

# Example: To replace the policies associated with a port for a backend instance

This example replaces the policies that are currently associated with the specified port.

Input:
```
[
    "InstancePort" => 80,
    "LoadBalancerName" => "my-load-balancer",
    "PolicyNames" => [
        "my-ProxyProtocol-policy"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/SetLoadBalancerPoliciesForBackendServer)
"""
@inline set_load_balancer_policies_for_backend_server(aws::AWSConfig=default_aws_config(); args...) = set_load_balancer_policies_for_backend_server(aws, args)

@inline set_load_balancer_policies_for_backend_server(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "SetLoadBalancerPoliciesForBackendServer", args)

@inline set_load_balancer_policies_for_backend_server(args) = set_load_balancer_policies_for_backend_server(default_aws_config(), args)


"""
    using AWSSDK.ELB.set_load_balancer_policies_of_listener
    set_load_balancer_policies_of_listener([::AWSConfig], arguments::Dict)
    set_load_balancer_policies_of_listener([::AWSConfig]; LoadBalancerName=, LoadBalancerPort=, PolicyNames=)

    using AWSCore.Services.elasticloadbalancing
    elasticloadbalancing([::AWSConfig], "SetLoadBalancerPoliciesOfListener", arguments::Dict)
    elasticloadbalancing([::AWSConfig], "SetLoadBalancerPoliciesOfListener", LoadBalancerName=, LoadBalancerPort=, PolicyNames=)

# SetLoadBalancerPoliciesOfListener Operation

Replaces the current set of policies for the specified load balancer port with the specified set of policies.

To enable back-end server authentication, use [SetLoadBalancerPoliciesForBackendServer](@ref).

For more information about setting policies, see [Update the SSL Negotiation Configuration](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/ssl-config-update.html), [Duration-Based Session Stickiness](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration), and [Application-Controlled Session Stickiness](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application) in the *Classic Load Balancer Guide*.

# Arguments

## `LoadBalancerName = ::String` -- *Required*
The name of the load balancer.


## `LoadBalancerPort = ::Int` -- *Required*
The external port of the load balancer.


## `PolicyNames = [::String, ...]` -- *Required*
The names of the policies. This list must include all policies to be enabled. If you omit a policy that is currently enabled, it is disabled. If the list is empty, all current policies are disabled.




# Returns

`SetLoadBalancerPoliciesOfListenerOutput`

# Exceptions

`AccessPointNotFoundException`, `PolicyNotFoundException`, `ListenerNotFoundException` or `InvalidConfigurationRequestException`.

# Example: To replace the policies associated with a listener

This example replaces the policies that are currently associated with the specified listener.

Input:
```
[
    "LoadBalancerName" => "my-load-balancer",
    "LoadBalancerPort" => 80,
    "PolicyNames" => [
        "my-SSLNegotiation-policy"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2012-06-01/SetLoadBalancerPoliciesOfListener)
"""
@inline set_load_balancer_policies_of_listener(aws::AWSConfig=default_aws_config(); args...) = set_load_balancer_policies_of_listener(aws, args)

@inline set_load_balancer_policies_of_listener(aws::AWSConfig, args) = AWSCore.Services.elasticloadbalancing(aws, "SetLoadBalancerPoliciesOfListener", args)

@inline set_load_balancer_policies_of_listener(args) = set_load_balancer_policies_of_listener(default_aws_config(), args)




end # module ELB


#==============================================================================#
# End of file
#==============================================================================#
