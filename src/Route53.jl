#==============================================================================#
# Route53.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/route53-2013-04-01.normal.json
#==============================================================================#

__precompile__()

module Route53

using AWSCore


"""
    using AWSSDK.Route53.associate_vpcwith_hosted_zone
    associate_vpcwith_hosted_zone([::AWSConfig], arguments::Dict)
    associate_vpcwith_hosted_zone([::AWSConfig]; Id=, VPC=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone/{Id}/associatevpc", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone/{Id}/associatevpc", Id=, VPC=, <keyword arguments>)

# AssociateVPCWithHostedZone Operation

Associates an Amazon VPC with a private hosted zone.

**Important**
> To perform the association, the VPC and the private hosted zone must already exist. You can't convert a public hosted zone into a private hosted zone.

**Note**
> If you want to associate a VPC that was created by using one AWS account with a private hosted zone that was created by using a different account, the AWS account that created the private hosted zone must first submit a `CreateVPCAssociationAuthorization` request. Then the account that created the VPC must submit an `AssociateVPCWithHostedZone` request.

# Arguments

## `Id = ::String` -- *Required*
The ID of the private hosted zone that you want to associate an Amazon VPC with.

Note that you can't associate a VPC with a hosted zone that doesn't have an existing VPC association.


## `VPC = [ ... ]` -- *Required*
A complex type that contains information about the VPC that you want to associate with a private hosted zone.
```
 VPC = [
        "VPCRegion" =>  "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "sa-east-1", "ca-central-1" or "cn-north-1",
        "VPCId" =>  ::String
    ]
```

## `Comment = ::String`
*Optional:* A comment about the association request.




# Returns

`AssociateVPCWithHostedZoneResponse`

# Exceptions

`NoSuchHostedZone`, `NotAuthorizedException`, `InvalidVPCId`, `InvalidInput`, `PublicZoneVPCAssociation`, `ConflictingDomainExists` or `LimitsExceeded`.

# Example: To associate a VPC with a hosted zone

The following example associates the VPC with ID vpc-1a2b3c4d with the hosted zone with ID Z3M3LMPEXAMPLE.

Input:
```
[
    "Comment" => "",
    "HostedZoneId" => "Z3M3LMPEXAMPLE",
    "VPC" => [
        "VPCId" => "vpc-1a2b3c4d",
        "VPCRegion" => "us-east-2"
    ]
]
```

Output:
```
Dict(
    "ChangeInfo" => Dict(
        "Comment" => "",
        "Id" => "/change/C3HC6WDB2UANE2",
        "Status" => "INSYNC",
        "SubmittedAt" => "2017-01-31T01:36:41.958Z"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/AssociateVPCWithHostedZone)
"""
@inline associate_vpcwith_hosted_zone(aws::AWSConfig=default_aws_config(); args...) = associate_vpcwith_hosted_zone(aws, args)

@inline associate_vpcwith_hosted_zone(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/hostedzone/{Id}/associatevpc", args)

@inline associate_vpcwith_hosted_zone(args) = associate_vpcwith_hosted_zone(default_aws_config(), args)


"""
    using AWSSDK.Route53.change_resource_record_sets
    change_resource_record_sets([::AWSConfig], arguments::Dict)
    change_resource_record_sets([::AWSConfig]; Id=, ChangeBatch=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone/{Id}/rrset/", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone/{Id}/rrset/", Id=, ChangeBatch=)

# ChangeResourceRecordSets Operation

Creates, changes, or deletes a resource record set, which contains authoritative DNS information for a specified domain name or subdomain name. For example, you can use `ChangeResourceRecordSets` to create a resource record set that routes traffic for test.example.com to a web server that has an IP address of 192.0.2.44.

**Change Batches and Transactional Changes**

The request body must include a document with a `ChangeResourceRecordSetsRequest` element. The request body contains a list of change items, known as a change batch. Change batches are considered transactional changes. When using the Amazon Route 53 API to change resource record sets, Amazon Route 53 either makes all or none of the changes in a change batch request. This ensures that Amazon Route 53 never partially implements the intended changes to the resource record sets in a hosted zone.

For example, a change batch request that deletes the `CNAME` record for www.example.com and creates an alias resource record set for www.example.com. Amazon Route 53 deletes the first resource record set and creates the second resource record set in a single operation. If either the `DELETE` or the `CREATE` action fails, then both changes (plus any other changes in the batch) fail, and the original `CNAME` record continues to exist.

**Important**
> Due to the nature of transactional changes, you can't delete the same resource record set more than once in a single change batch. If you attempt to delete the same change batch more than once, Amazon Route 53 returns an `InvalidChangeBatch` error.

**Traffic Flow**

To create resource record sets for complex routing configurations, use either the traffic flow visual editor in the Amazon Route 53 console or the API actions for traffic policies and traffic policy instances. Save the configuration as a traffic policy, then associate the traffic policy with one or more domain names (such as example.com) or subdomain names (such as www.example.com), in the same hosted zone or in multiple hosted zones. You can roll back the updates if the new configuration isn't performing as expected. For more information, see [Using Traffic Flow to Route DNS Traffic](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/traffic-flow.html) in the *Amazon Route 53 Developer Guide*.

**Create, Delete, and Upsert**

Use `ChangeResourceRecordsSetsRequest` to perform the following actions:

*   `CREATE`: Creates a resource record set that has the specified values.

*   `DELETE`: Deletes an existing resource record set that has the specified values.

*   `UPSERT`: If a resource record set does not already exist, AWS creates it. If a resource set does exist, Amazon Route 53 updates it with the values in the request.

**Syntaxes for Creating, Updating, and Deleting Resource Record Sets**

The syntax for a request depends on the type of resource record set that you want to create, delete, or update, such as weighted, alias, or failover. The XML elements in your request must appear in the order listed in the syntax.

For an example for each type of resource record set, see "Examples."

Don't refer to the syntax in the "Parameter Syntax" section, which includes all of the elements for every kind of resource record set that you can create, delete, or update by using `ChangeResourceRecordSets`.

**Change Propagation to Amazon Route 53 DNS Servers**

When you submit a `ChangeResourceRecordSets` request, Amazon Route 53 propagates your changes to all of the Amazon Route 53 authoritative DNS servers. While your changes are propagating, `GetChange` returns a status of `PENDING`. When propagation is complete, `GetChange` returns a status of `INSYNC`. Changes generally propagate to all Amazon Route 53 name servers within 60 seconds. For more information, see [GetChange](@ref).

**Limits on ChangeResourceRecordSets Requests**

For information about the limits on a `ChangeResourceRecordSets` request, see [Limits](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html) in the *Amazon Route 53 Developer Guide*.

# Arguments

## `Id = ::String` -- *Required*
The ID of the hosted zone that contains the resource record sets that you want to change.


## `ChangeBatch = [ ... ]` -- *Required*
A complex type that contains an optional comment and the `Changes` element.
```
 ChangeBatch = [
        "Comment" =>  ::String,
        "Changes" => <required> [[
            "Action" => <required> "CREATE", "DELETE" or "UPSERT",
            "ResourceRecordSet" => <required> [
                "Name" => <required> ::String,
                "Type" => <required> "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA" or "CAA",
                "SetIdentifier" =>  ::String,
                "Weight" =>  ::Int,
                "Region" =>  "us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "sa-east-1", "cn-north-1", "cn-northwest-1" or "ap-south-1",
                "GeoLocation" =>  [
                    "ContinentCode" =>  ::String,
                    "CountryCode" =>  ::String,
                    "SubdivisionCode" =>  ::String
                ],
                "Failover" =>  "PRIMARY" or "SECONDARY",
                "MultiValueAnswer" =>  ::Bool,
                "TTL" =>  ::Int,
                "ResourceRecords" =>  [["Value" => <required> ::String], ...],
                "AliasTarget" =>  [
                    "HostedZoneId" => <required> ::String,
                    "DNSName" => <required> ::String,
                    "EvaluateTargetHealth" => <required> ::Bool
                ],
                "HealthCheckId" =>  ::String,
                "TrafficPolicyInstanceId" =>  ::String
            ]
        ], ...]
    ]
```



# Returns

`ChangeResourceRecordSetsResponse`

# Exceptions

`NoSuchHostedZone`, `NoSuchHealthCheck`, `InvalidChangeBatch`, `InvalidInput` or `PriorRequestNotComplete`.

# Example: To create a basic resource record set

The following example creates a resource record set that routes Internet traffic to a resource with an IP address of 192.0.2.44.

Input:
```
[
    "ChangeBatch" => [
        "Changes" => [
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "Name" => "example.com",
                    "ResourceRecords" => [
                        [
                            "Value" => "192.0.2.44"
                        ]
                    ],
                    "TTL" => 60,
                    "Type" => "A"
                ]
            ]
        ],
        "Comment" => "Web server for example.com"
    ],
    "HostedZoneId" => "Z3M3LMPEXAMPLE"
]
```

Output:
```
Dict(
    "ChangeInfo" => Dict(
        "Comment" => "Web server for example.com",
        "Id" => "/change/C2682N5HXP0BZ4",
        "Status" => "PENDING",
        "SubmittedAt" => "2017-02-10T01:36:41.958Z"
    )
)
```

# Example: To create weighted resource record sets

The following example creates two weighted resource record sets. The resource with a Weight of 100 will get 1/3rd of traffic (100/100+200), and the other resource will get the rest of the traffic for example.com.

Input:
```
[
    "ChangeBatch" => [
        "Changes" => [
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "HealthCheckId" => "abcdef11-2222-3333-4444-555555fedcba",
                    "Name" => "example.com",
                    "ResourceRecords" => [
                        [
                            "Value" => "192.0.2.44"
                        ]
                    ],
                    "SetIdentifier" => "Seattle data center",
                    "TTL" => 60,
                    "Type" => "A",
                    "Weight" => 100
                ]
            ],
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "HealthCheckId" => "abcdef66-7777-8888-9999-000000fedcba",
                    "Name" => "example.com",
                    "ResourceRecords" => [
                        [
                            "Value" => "192.0.2.45"
                        ]
                    ],
                    "SetIdentifier" => "Portland data center",
                    "TTL" => 60,
                    "Type" => "A",
                    "Weight" => 200
                ]
            ]
        ],
        "Comment" => "Web servers for example.com"
    ],
    "HostedZoneId" => "Z3M3LMPEXAMPLE"
]
```

Output:
```
Dict(
    "ChangeInfo" => Dict(
        "Comment" => "Web servers for example.com",
        "Id" => "/change/C2682N5HXP0BZ4",
        "Status" => "PENDING",
        "SubmittedAt" => "2017-02-10T01:36:41.958Z"
    )
)
```

# Example: To create an alias resource record set

The following example creates an alias resource record set that routes traffic to a CloudFront distribution.

Input:
```
[
    "ChangeBatch" => [
        "Changes" => [
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "AliasTarget" => [
                        "DNSName" => "d123rk29d0stfj.cloudfront.net",
                        "EvaluateTargetHealth" => false,
                        "HostedZoneId" => "Z2FDTNDATAQYW2"
                    ],
                    "Name" => "example.com",
                    "Type" => "A"
                ]
            ]
        ],
        "Comment" => "CloudFront distribution for example.com"
    ],
    "HostedZoneId" => "Z3M3LMPEXAMPLE"
]
```

Output:
```
Dict(
    "ChangeInfo" => Dict(
        "Comment" => "CloudFront distribution for example.com",
        "Id" => "/change/C2682N5HXP0BZ4",
        "Status" => "PENDING",
        "SubmittedAt" => "2017-02-10T01:36:41.958Z"
    )
)
```

# Example: To create weighted alias resource record sets

The following example creates two weighted alias resource record sets that route traffic to ELB load balancers. The resource with a Weight of 100 will get 1/3rd of traffic (100/100+200), and the other resource will get the rest of the traffic for example.com.

Input:
```
[
    "ChangeBatch" => [
        "Changes" => [
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "AliasTarget" => [
                        "DNSName" => "example-com-123456789.us-east-2.elb.amazonaws.com ",
                        "EvaluateTargetHealth" => true,
                        "HostedZoneId" => "Z3AADJGX6KTTL2"
                    ],
                    "Name" => "example.com",
                    "SetIdentifier" => "Ohio region",
                    "Type" => "A",
                    "Weight" => 100
                ]
            ],
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "AliasTarget" => [
                        "DNSName" => "example-com-987654321.us-west-2.elb.amazonaws.com ",
                        "EvaluateTargetHealth" => true,
                        "HostedZoneId" => "Z1H1FL5HABSF5"
                    ],
                    "Name" => "example.com",
                    "SetIdentifier" => "Oregon region",
                    "Type" => "A",
                    "Weight" => 200
                ]
            ]
        ],
        "Comment" => "ELB load balancers for example.com"
    ],
    "HostedZoneId" => "Z3M3LMPEXAMPLE"
]
```

Output:
```
Dict(
    "ChangeInfo" => Dict(
        "Comment" => "ELB load balancers for example.com",
        "Id" => "/change/C2682N5HXP0BZ4",
        "Status" => "PENDING",
        "SubmittedAt" => "2017-02-10T01:36:41.958Z"
    )
)
```

# Example: To create latency resource record sets

The following example creates two latency resource record sets that route traffic to EC2 instances. Traffic for example.com is routed either to the Ohio region or the Oregon region, depending on the latency between the user and those regions.

Input:
```
[
    "ChangeBatch" => [
        "Changes" => [
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "HealthCheckId" => "abcdef11-2222-3333-4444-555555fedcba",
                    "Name" => "example.com",
                    "Region" => "us-east-2",
                    "ResourceRecords" => [
                        [
                            "Value" => "192.0.2.44"
                        ]
                    ],
                    "SetIdentifier" => "Ohio region",
                    "TTL" => 60,
                    "Type" => "A"
                ]
            ],
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "HealthCheckId" => "abcdef66-7777-8888-9999-000000fedcba",
                    "Name" => "example.com",
                    "Region" => "us-west-2",
                    "ResourceRecords" => [
                        [
                            "Value" => "192.0.2.45"
                        ]
                    ],
                    "SetIdentifier" => "Oregon region",
                    "TTL" => 60,
                    "Type" => "A"
                ]
            ]
        ],
        "Comment" => "EC2 instances for example.com"
    ],
    "HostedZoneId" => "Z3M3LMPEXAMPLE"
]
```

Output:
```
Dict(
    "ChangeInfo" => Dict(
        "Comment" => "EC2 instances for example.com",
        "Id" => "/change/C2682N5HXP0BZ4",
        "Status" => "PENDING",
        "SubmittedAt" => "2017-02-10T01:36:41.958Z"
    )
)
```

# Example: To create latency alias resource record sets

The following example creates two latency alias resource record sets that route traffic for example.com to ELB load balancers. Requests are routed either to the Ohio region or the Oregon region, depending on the latency between the user and those regions.

Input:
```
[
    "ChangeBatch" => [
        "Changes" => [
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "AliasTarget" => [
                        "DNSName" => "example-com-123456789.us-east-2.elb.amazonaws.com ",
                        "EvaluateTargetHealth" => true,
                        "HostedZoneId" => "Z3AADJGX6KTTL2"
                    ],
                    "Name" => "example.com",
                    "Region" => "us-east-2",
                    "SetIdentifier" => "Ohio region",
                    "Type" => "A"
                ]
            ],
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "AliasTarget" => [
                        "DNSName" => "example-com-987654321.us-west-2.elb.amazonaws.com ",
                        "EvaluateTargetHealth" => true,
                        "HostedZoneId" => "Z1H1FL5HABSF5"
                    ],
                    "Name" => "example.com",
                    "Region" => "us-west-2",
                    "SetIdentifier" => "Oregon region",
                    "Type" => "A"
                ]
            ]
        ],
        "Comment" => "ELB load balancers for example.com"
    ],
    "HostedZoneId" => "Z3M3LMPEXAMPLE"
]
```

Output:
```
Dict(
    "ChangeInfo" => Dict(
        "Comment" => "ELB load balancers for example.com",
        "Id" => "/change/C2682N5HXP0BZ4",
        "Status" => "PENDING",
        "SubmittedAt" => "2017-02-10T01:36:41.958Z"
    )
)
```

# Example: To create failover resource record sets

The following example creates primary and secondary failover resource record sets that route traffic to EC2 instances. Traffic is generally routed to the primary resource, in the Ohio region. If that resource is unavailable, traffic is routed to the secondary resource, in the Oregon region.

Input:
```
[
    "ChangeBatch" => [
        "Changes" => [
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "Failover" => "PRIMARY",
                    "HealthCheckId" => "abcdef11-2222-3333-4444-555555fedcba",
                    "Name" => "example.com",
                    "ResourceRecords" => [
                        [
                            "Value" => "192.0.2.44"
                        ]
                    ],
                    "SetIdentifier" => "Ohio region",
                    "TTL" => 60,
                    "Type" => "A"
                ]
            ],
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "Failover" => "SECONDARY",
                    "HealthCheckId" => "abcdef66-7777-8888-9999-000000fedcba",
                    "Name" => "example.com",
                    "ResourceRecords" => [
                        [
                            "Value" => "192.0.2.45"
                        ]
                    ],
                    "SetIdentifier" => "Oregon region",
                    "TTL" => 60,
                    "Type" => "A"
                ]
            ]
        ],
        "Comment" => "Failover configuration for example.com"
    ],
    "HostedZoneId" => "Z3M3LMPEXAMPLE"
]
```

Output:
```
Dict(
    "ChangeInfo" => Dict(
        "Comment" => "Failover configuration for example.com",
        "Id" => "/change/C2682N5HXP0BZ4",
        "Status" => "PENDING",
        "SubmittedAt" => "2017-02-10T01:36:41.958Z"
    )
)
```

# Example: To create failover alias resource record sets

The following example creates primary and secondary failover alias resource record sets that route traffic to ELB load balancers. Traffic is generally routed to the primary resource, in the Ohio region. If that resource is unavailable, traffic is routed to the secondary resource, in the Oregon region.

Input:
```
[
    "ChangeBatch" => [
        "Changes" => [
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "AliasTarget" => [
                        "DNSName" => "example-com-123456789.us-east-2.elb.amazonaws.com ",
                        "EvaluateTargetHealth" => true,
                        "HostedZoneId" => "Z3AADJGX6KTTL2"
                    ],
                    "Failover" => "PRIMARY",
                    "Name" => "example.com",
                    "SetIdentifier" => "Ohio region",
                    "Type" => "A"
                ]
            ],
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "AliasTarget" => [
                        "DNSName" => "example-com-987654321.us-west-2.elb.amazonaws.com ",
                        "EvaluateTargetHealth" => true,
                        "HostedZoneId" => "Z1H1FL5HABSF5"
                    ],
                    "Failover" => "SECONDARY",
                    "Name" => "example.com",
                    "SetIdentifier" => "Oregon region",
                    "Type" => "A"
                ]
            ]
        ],
        "Comment" => "Failover alias configuration for example.com"
    ],
    "HostedZoneId" => "Z3M3LMPEXAMPLE"
]
```

Output:
```
Dict(
    "ChangeInfo" => Dict(
        "Comment" => "Failover alias configuration for example.com",
        "Id" => "/change/C2682N5HXP0BZ4",
        "Status" => "PENDING",
        "SubmittedAt" => "2017-02-10T01:36:41.958Z"
    )
)
```

# Example: To create geolocation resource record sets

The following example creates four geolocation resource record sets that use IPv4 addresses to route traffic to resources such as web servers running on EC2 instances. Traffic is routed to one of four IP addresses, for North America (NA), for South America (SA), for Europe (EU), and for all other locations (*).

Input:
```
[
    "ChangeBatch" => [
        "Changes" => [
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "GeoLocation" => [
                        "ContinentCode" => "NA"
                    ],
                    "Name" => "example.com",
                    "ResourceRecords" => [
                        [
                            "Value" => "192.0.2.44"
                        ]
                    ],
                    "SetIdentifier" => "North America",
                    "TTL" => 60,
                    "Type" => "A"
                ]
            ],
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "GeoLocation" => [
                        "ContinentCode" => "SA"
                    ],
                    "Name" => "example.com",
                    "ResourceRecords" => [
                        [
                            "Value" => "192.0.2.45"
                        ]
                    ],
                    "SetIdentifier" => "South America",
                    "TTL" => 60,
                    "Type" => "A"
                ]
            ],
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "GeoLocation" => [
                        "ContinentCode" => "EU"
                    ],
                    "Name" => "example.com",
                    "ResourceRecords" => [
                        [
                            "Value" => "192.0.2.46"
                        ]
                    ],
                    "SetIdentifier" => "Europe",
                    "TTL" => 60,
                    "Type" => "A"
                ]
            ],
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "GeoLocation" => [
                        "CountryCode" => "*"
                    ],
                    "Name" => "example.com",
                    "ResourceRecords" => [
                        [
                            "Value" => "192.0.2.47"
                        ]
                    ],
                    "SetIdentifier" => "Other locations",
                    "TTL" => 60,
                    "Type" => "A"
                ]
            ]
        ],
        "Comment" => "Geolocation configuration for example.com"
    ],
    "HostedZoneId" => "Z3M3LMPEXAMPLE"
]
```

Output:
```
Dict(
    "ChangeInfo" => Dict(
        "Comment" => "Geolocation configuration for example.com",
        "Id" => "/change/C2682N5HXP0BZ4",
        "Status" => "PENDING",
        "SubmittedAt" => "2017-02-10T01:36:41.958Z"
    )
)
```

# Example: To create geolocation alias resource record sets

The following example creates four geolocation alias resource record sets that route traffic to ELB load balancers. Traffic is routed to one of four IP addresses, for North America (NA), for South America (SA), for Europe (EU), and for all other locations (*).

Input:
```
[
    "ChangeBatch" => [
        "Changes" => [
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "AliasTarget" => [
                        "DNSName" => "example-com-123456789.us-east-2.elb.amazonaws.com ",
                        "EvaluateTargetHealth" => true,
                        "HostedZoneId" => "Z3AADJGX6KTTL2"
                    ],
                    "GeoLocation" => [
                        "ContinentCode" => "NA"
                    ],
                    "Name" => "example.com",
                    "SetIdentifier" => "North America",
                    "Type" => "A"
                ]
            ],
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "AliasTarget" => [
                        "DNSName" => "example-com-234567890.sa-east-1.elb.amazonaws.com ",
                        "EvaluateTargetHealth" => true,
                        "HostedZoneId" => "Z2P70J7HTTTPLU"
                    ],
                    "GeoLocation" => [
                        "ContinentCode" => "SA"
                    ],
                    "Name" => "example.com",
                    "SetIdentifier" => "South America",
                    "Type" => "A"
                ]
            ],
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "AliasTarget" => [
                        "DNSName" => "example-com-234567890.eu-central-1.elb.amazonaws.com ",
                        "EvaluateTargetHealth" => true,
                        "HostedZoneId" => "Z215JYRZR1TBD5"
                    ],
                    "GeoLocation" => [
                        "ContinentCode" => "EU"
                    ],
                    "Name" => "example.com",
                    "SetIdentifier" => "Europe",
                    "Type" => "A"
                ]
            ],
            [
                "Action" => "CREATE",
                "ResourceRecordSet" => [
                    "AliasTarget" => [
                        "DNSName" => "example-com-234567890.ap-southeast-1.elb.amazonaws.com ",
                        "EvaluateTargetHealth" => true,
                        "HostedZoneId" => "Z1LMS91P8CMLE5"
                    ],
                    "GeoLocation" => [
                        "CountryCode" => "*"
                    ],
                    "Name" => "example.com",
                    "SetIdentifier" => "Other locations",
                    "Type" => "A"
                ]
            ]
        ],
        "Comment" => "Geolocation alias configuration for example.com"
    ],
    "HostedZoneId" => "Z3M3LMPEXAMPLE"
]
```

Output:
```
Dict(
    "ChangeInfo" => Dict(
        "Comment" => "Geolocation alias configuration for example.com",
        "Id" => "/change/C2682N5HXP0BZ4",
        "Status" => "PENDING",
        "SubmittedAt" => "2017-02-10T01:36:41.958Z"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ChangeResourceRecordSets)
"""
@inline change_resource_record_sets(aws::AWSConfig=default_aws_config(); args...) = change_resource_record_sets(aws, args)

@inline change_resource_record_sets(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/hostedzone/{Id}/rrset/", args)

@inline change_resource_record_sets(args) = change_resource_record_sets(default_aws_config(), args)


"""
    using AWSSDK.Route53.change_tags_for_resource
    change_tags_for_resource([::AWSConfig], arguments::Dict)
    change_tags_for_resource([::AWSConfig]; ResourceType=, ResourceId=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/tags/{ResourceType}/{ResourceId}", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/tags/{ResourceType}/{ResourceId}", ResourceType=, ResourceId=, <keyword arguments>)

# ChangeTagsForResource Operation

Adds, edits, or deletes tags for a health check or a hosted zone.

For information about using tags for cost allocation, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html) in the *AWS Billing and Cost Management User Guide*.

# Arguments

## `ResourceType = "healthcheck" or "hostedzone"` -- *Required*
The type of the resource.

*   The resource type for health checks is `healthcheck`.

*   The resource type for hosted zones is `hostedzone`.


## `ResourceId = ::String` -- *Required*
The ID of the resource for which you want to add, change, or delete tags.


## `AddTags = [[ ... ], ...]`
A complex type that contains a list of the tags that you want to add to the specified health check or hosted zone and/or the tags that you want to edit `Value` for.

You can add a maximum of 10 tags to a health check or a hosted zone.
```
 AddTags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```

## `RemoveTagKeys = [::String, ...]`
A complex type that contains a list of the tags that you want to delete from the specified health check or hosted zone. You can specify up to 10 keys.




# Returns

`ChangeTagsForResourceResponse`

# Exceptions

`InvalidInput`, `NoSuchHealthCheck`, `NoSuchHostedZone`, `PriorRequestNotComplete` or `ThrottlingException`.

# Example: To add or remove tags from a hosted zone or health check

The following example adds two tags and removes one tag from the hosted zone with ID Z3M3LMPEXAMPLE.

Input:
```
[
    "AddTags" => [
        [
            "Key" => "apex",
            "Value" => "3874"
        ],
        [
            "Key" => "acme",
            "Value" => "4938"
        ]
    ],
    "RemoveTagKeys" => [
        "Nadir"
    ],
    "ResourceId" => "Z3M3LMPEXAMPLE",
    "ResourceType" => "hostedzone"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ChangeTagsForResource)
"""
@inline change_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = change_tags_for_resource(aws, args)

@inline change_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/tags/{ResourceType}/{ResourceId}", args)

@inline change_tags_for_resource(args) = change_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.Route53.create_health_check
    create_health_check([::AWSConfig], arguments::Dict)
    create_health_check([::AWSConfig]; CallerReference=, HealthCheckConfig=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/healthcheck", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/healthcheck", CallerReference=, HealthCheckConfig=)

# CreateHealthCheck Operation

Creates a new health check.

For information about adding health checks to resource record sets, see [ResourceRecordSet\$HealthCheckId](@ref) in [ChangeResourceRecordSets](@ref).

**ELB Load Balancers**

If you're registering EC2 instances with an Elastic Load Balancing (ELB) load balancer, do not create Amazon Route 53 health checks for the EC2 instances. When you register an EC2 instance with a load balancer, you configure settings for an ELB health check, which performs a similar function to an Amazon Route 53 health check.

**Private Hosted Zones**

You can associate health checks with failover resource record sets in a private hosted zone. Note the following:

*   Amazon Route 53 health checkers are outside the VPC. To check the health of an endpoint within a VPC by IP address, you must assign a public IP address to the instance in the VPC.

*   You can configure a health checker to check the health of an external resource that the instance relies on, such as a database server.

*   You can create a CloudWatch metric, associate an alarm with the metric, and then create a health check that is based on the state of the alarm. For example, you might create a CloudWatch metric that checks the status of the Amazon EC2 `StatusCheckFailed` metric, add an alarm to the metric, and then create a health check that is based on the state of the alarm. For information about creating CloudWatch metrics and alarms by using the CloudWatch console, see the [Amazon CloudWatch User Guide](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html).

# Arguments

## `CallerReference = ::String` -- *Required*
A unique string that identifies the request and that allows you to retry a failed `CreateHealthCheck` request without the risk of creating two identical health checks:

*   If you send a `CreateHealthCheck` request with the same `CallerReference` and settings as a previous request, and if the health check doesn't exist, Amazon Route 53 creates the health check. If the health check does exist, Amazon Route 53 returns the settings for the existing health check.

*   If you send a `CreateHealthCheck` request with the same `CallerReference` as a deleted health check, regardless of the settings, Amazon Route 53 returns a `HealthCheckAlreadyExists` error.

*   If you send a `CreateHealthCheck` request with the same `CallerReference` as an existing health check but with different settings, Amazon Route 53 returns a `HealthCheckAlreadyExists` error.

*   If you send a `CreateHealthCheck` request with a unique `CallerReference` but settings identical to an existing health check, Amazon Route 53 creates the health check.


## `HealthCheckConfig = [ ... ]` -- *Required*
A complex type that contains the response to a `CreateHealthCheck` request.
```
 HealthCheckConfig = [
        "IPAddress" =>  ::String,
        "Port" =>  ::Int,
        "Type" => <required> "HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED" or "CLOUDWATCH_METRIC",
        "ResourcePath" =>  ::String,
        "FullyQualifiedDomainName" =>  ::String,
        "SearchString" =>  ::String,
        "RequestInterval" =>  ::Int,
        "FailureThreshold" =>  ::Int,
        "MeasureLatency" =>  ::Bool,
        "Inverted" =>  ::Bool,
        "HealthThreshold" =>  ::Int,
        "ChildHealthChecks" =>  [::String, ...],
        "EnableSNI" =>  ::Bool,
        "Regions" =>  ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1" or "sa-east-1", ...],
        "AlarmIdentifier" =>  [
            "Region" => <required> "us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3" or "sa-east-1",
            "Name" => <required> ::String
        ],
        "InsufficientDataHealthStatus" =>  "Healthy", "Unhealthy" or "LastKnownStatus"
    ]
```



# Returns

`CreateHealthCheckResponse`

# Exceptions

`TooManyHealthChecks`, `HealthCheckAlreadyExists` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/CreateHealthCheck)
"""
@inline create_health_check(aws::AWSConfig=default_aws_config(); args...) = create_health_check(aws, args)

@inline create_health_check(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/healthcheck", args)

@inline create_health_check(args) = create_health_check(default_aws_config(), args)


"""
    using AWSSDK.Route53.create_hosted_zone
    create_hosted_zone([::AWSConfig], arguments::Dict)
    create_hosted_zone([::AWSConfig]; Name=, CallerReference=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone", Name=, CallerReference=, <keyword arguments>)

# CreateHostedZone Operation

Creates a new public hosted zone, which you use to specify how the Domain Name System (DNS) routes traffic on the Internet for a domain, such as example.com, and its subdomains.

**Important**
> You can't convert a public hosted zones to a private hosted zone or vice versa. Instead, you must create a new hosted zone with the same name and create new resource record sets.

For more information about charges for hosted zones, see [Amazon Route 53 Pricing](http://aws.amazon.com/route53/pricing/).

Note the following:

*   You can't create a hosted zone for a top-level domain (TLD).

*   Amazon Route 53 automatically creates a default SOA record and four NS records for the zone. For more information about SOA and NS records, see [NS and SOA Records that Amazon Route 53 Creates for a Hosted Zone](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html) in the *Amazon Route 53 Developer Guide*.

    If you want to use the same name servers for multiple hosted zones, you can optionally associate a reusable delegation set with the hosted zone. See the `DelegationSetId` element.

*   If your domain is registered with a registrar other than Amazon Route 53, you must update the name servers with your registrar to make Amazon Route 53 your DNS service. For more information, see [Configuring Amazon Route 53 as your DNS Service](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/creating-migrating.html) in the *Amazon Route 53 Developer Guide*.

When you submit a `CreateHostedZone` request, the initial status of the hosted zone is `PENDING`. This means that the NS and SOA records are not yet available on all Amazon Route 53 DNS servers. When the NS and SOA records are available, the status of the zone changes to `INSYNC`.

# Arguments

## `Name = ::String` -- *Required*
The name of the domain. For resource record types that include a domain name, specify a fully qualified domain name, for example, *www.example.com*. The trailing dot is optional; Amazon Route 53 assumes that the domain name is fully qualified. This means that Amazon Route 53 treats *www.example.com* (without a trailing dot) and *www.example.com.* (with a trailing dot) as identical.

If you're creating a public hosted zone, this is the name you have registered with your DNS registrar. If your domain name is registered with a registrar other than Amazon Route 53, change the name servers for your domain to the set of `NameServers` that `CreateHostedZone` returns in `DelegationSet`.


## `VPC = [ ... ]`
(Private hosted zones only) A complex type that contains information about the Amazon VPC that you're associating with this hosted zone.

You can specify only one Amazon VPC when you create a private hosted zone. To associate additional Amazon VPCs with the hosted zone, use [AssociateVPCWithHostedZone](@ref) after you create a hosted zone.
```
 VPC = [
        "VPCRegion" =>  "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "sa-east-1", "ca-central-1" or "cn-north-1",
        "VPCId" =>  ::String
    ]
```

## `CallerReference = ::String` -- *Required*
A unique string that identifies the request and that allows failed `CreateHostedZone` requests to be retried without the risk of executing the operation twice. You must use a unique `CallerReference` string every time you submit a `CreateHostedZone` request. `CallerReference` can be any unique string, for example, a date/time stamp.


## `HostedZoneConfig = [ ... ]`
(Optional) A complex type that contains the following optional values:

*   For public and private hosted zones, an optional comment

*   For private hosted zones, an optional `PrivateZone` element

If you don't specify a comment or the `PrivateZone` element, omit `HostedZoneConfig` and the other elements.
```
 HostedZoneConfig = [
        "Comment" =>  ::String,
        "PrivateZone" =>  ::Bool
    ]
```

## `DelegationSetId = ::String`
If you want to associate a reusable delegation set with this hosted zone, the ID that Amazon Route 53 assigned to the reusable delegation set when you created it. For more information about reusable delegation sets, see [CreateReusableDelegationSet](@ref).




# Returns

`CreateHostedZoneResponse`

# Exceptions

`InvalidDomainName`, `HostedZoneAlreadyExists`, `TooManyHostedZones`, `InvalidVPCId`, `InvalidInput`, `DelegationSetNotAvailable`, `ConflictingDomainExists`, `NoSuchDelegationSet` or `DelegationSetNotReusable`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/CreateHostedZone)
"""
@inline create_hosted_zone(aws::AWSConfig=default_aws_config(); args...) = create_hosted_zone(aws, args)

@inline create_hosted_zone(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/hostedzone", args)

@inline create_hosted_zone(args) = create_hosted_zone(default_aws_config(), args)


"""
    using AWSSDK.Route53.create_query_logging_config
    create_query_logging_config([::AWSConfig], arguments::Dict)
    create_query_logging_config([::AWSConfig]; HostedZoneId=, CloudWatchLogsLogGroupArn=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/queryloggingconfig", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/queryloggingconfig", HostedZoneId=, CloudWatchLogsLogGroupArn=)

# CreateQueryLoggingConfig Operation

Creates a configuration for DNS query logging. After you create a query logging configuration, Amazon Route 53 begins to publish log data to an Amazon CloudWatch Logs log group.

DNS query logs contain information about the queries that Amazon Route 53 receives for a specified public hosted zone, such as the following:

*   Amazon Route 53 edge location that responded to the DNS query

*   Domain or subdomain that was requested

*   DNS record type, such as A or AAAA

*   DNS response code, such as `NoError` or `ServFail`

<dl>

<dt>Log Group and Resource Policy</dt>

<dd>

Before you create a query logging configuration, perform the following operations.

**Note**
> If you create a query logging configuration using the Amazon Route 53 console, Amazon Route 53 performs these operations automatically.

1.  Create a CloudWatch Logs log group, and make note of the ARN, which you specify when you create a query logging configuration. Note the following:

    *   You must create the log group in the us-east-1 region.

    *   You must use the same AWS account to create the log group and the hosted zone that you want to configure query logging for.

    *   When you create log groups for query logging, we recommend that you use a consistent prefix, for example:

        `/aws/route53/*hosted zone name*`

        In the next step, you'll create a resource policy, which controls access to one or more log groups and the associated AWS resources, such as Amazon Route 53 hosted zones. There's a limit on the number of resource policies that you can create, so we recommend that you use a consistent prefix so you can use the same resource policy for all the log groups that you create for query logging.

2.  Create a CloudWatch Logs resource policy, and give it the permissions that Amazon Route 53 needs to create log streams and to send query logs to log streams. For the value of `Resource`, specify the ARN for the log group that you created in the previous step. To use the same resource policy for all the CloudWatch Logs log groups that you created for query logging configurations, replace the hosted zone name with `*`, for example:

    `arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*`

    **Note**
    > You can't use the CloudWatch console to create or edit a resource policy. You must use the CloudWatch API, one of the AWS SDKs, or the AWS CLI.

</dd>

<dt>Log Streams and Edge Locations</dt>

<dd>

When Amazon Route 53 finishes creating the configuration for DNS query logging, it does the following:

*   Creates a log stream for an edge location the first time that the edge location responds to DNS queries for the specified hosted zone. That log stream is used to log all queries that Amazon Route 53 responds to for that edge location.

*   Begins to send query logs to the applicable log stream.

The name of each log stream is in the following format:

`*hosted zone ID*/*edge location code*`

The edge location code is a three-letter code and an arbitrarily assigned number, for example, DFW3. The three-letter code typically corresponds with the International Air Transport Association airport code for an airport near the edge location. (These abbreviations might change in the future.) For a list of edge locations, see "The Amazon Route 53 Global Network" on the [Amazon Route 53 Product Details](http://aws.amazon.com/route53/details/) page.

</dd>

<dt>Queries That Are Logged</dt>

<dd>

Query logs contain only the queries that DNS resolvers forward to Amazon Route 53. If a DNS resolver has already cached the response to a query (such as the IP address for a load balancer for example.com), the resolver will continue to return the cached response. It doesn't forward another query to Amazon Route 53 until the TTL for the corresponding resource record set expires. Depending on how many DNS queries are submitted for a resource record set, and depending on the TTL for that resource record set, query logs might contain information about only one query out of every several thousand queries that are submitted to DNS. For more information about how DNS works, see [Routing Internet Traffic to Your Website or Web Application](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html) in the *Amazon Route 53 Developer Guide*.

</dd>

<dt>Log File Format</dt>

<dd>

For a list of the values in each query log and the format of each value, see [Logging DNS Queries](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html) in the *Amazon Route 53 Developer Guide*.

</dd>

<dt>Pricing</dt>

<dd>

For information about charges for query logs, see [Amazon CloudWatch Pricing](http://aws.amazon.com/cloudwatch/pricing/).

</dd>

<dt>How to Stop Logging</dt>

<dd>

If you want Amazon Route 53 to stop sending query logs to CloudWatch Logs, delete the query logging configuration. For more information, see [DeleteQueryLoggingConfig](@ref).

</dd>

</dl>

# Arguments

## `HostedZoneId = ::String` -- *Required*
The ID of the hosted zone that you want to log queries for. You can log queries only for public hosted zones.


## `CloudWatchLogsLogGroupArn = ::String` -- *Required*
The Amazon Resource Name (ARN) for the log group that you want to Amazon Route 53 to send query logs to. This is the format of the ARN:

arn:aws:logs:*region*:*account-id*:log-group:*log_group_name*

To get the ARN for a log group, you can use the CloudWatch console, the [DescribeLogGroups](http://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeLogGroups.html) API action, the [describe-log-groups](http://docs.aws.amazon.com/cli/latest/reference/logs/describe-log-groups.html) command, or the applicable command in one of the AWS SDKs.




# Returns

`CreateQueryLoggingConfigResponse`

# Exceptions

`ConcurrentModification`, `NoSuchHostedZone`, `NoSuchCloudWatchLogsLogGroup`, `InvalidInput`, `QueryLoggingConfigAlreadyExists` or `InsufficientCloudWatchLogsResourcePolicy`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/CreateQueryLoggingConfig)
"""
@inline create_query_logging_config(aws::AWSConfig=default_aws_config(); args...) = create_query_logging_config(aws, args)

@inline create_query_logging_config(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/queryloggingconfig", args)

@inline create_query_logging_config(args) = create_query_logging_config(default_aws_config(), args)


"""
    using AWSSDK.Route53.create_reusable_delegation_set
    create_reusable_delegation_set([::AWSConfig], arguments::Dict)
    create_reusable_delegation_set([::AWSConfig]; CallerReference=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/delegationset", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/delegationset", CallerReference=, <keyword arguments>)

# CreateReusableDelegationSet Operation

Creates a delegation set (a group of four name servers) that can be reused by multiple hosted zones. If a hosted zoned ID is specified, `CreateReusableDelegationSet` marks the delegation set associated with that zone as reusable.

**Note**
> You can't associate a reusable delegation set with a private hosted zone.

For information about using a reusable delegation set to configure white label name servers, see [Configuring White Label Name Servers](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/white-label-name-servers.html).

The process for migrating existing hosted zones to use a reusable delegation set is comparable to the process for configuring white label name servers. You need to perform the following steps:

1.  Create a reusable delegation set.

2.  Recreate hosted zones, and reduce the TTL to 60 seconds or less.

3.  Recreate resource record sets in the new hosted zones.

4.  Change the registrar's name servers to use the name servers for the new hosted zones.

5.  Monitor traffic for the website or application.

6.  Change TTLs back to their original values.

If you want to migrate existing hosted zones to use a reusable delegation set, the existing hosted zones can't use any of the name servers that are assigned to the reusable delegation set. If one or more hosted zones do use one or more name servers that are assigned to the reusable delegation set, you can do one of the following:

*   For small numbers of hosted zones—up to a few hundred—it's relatively easy to create reusable delegation sets until you get one that has four name servers that don't overlap with any of the name servers in your hosted zones.

*   For larger numbers of hosted zones, the easiest solution is to use more than one reusable delegation set.

*   For larger numbers of hosted zones, you can also migrate hosted zones that have overlapping name servers to hosted zones that don't have overlapping name servers, then migrate the hosted zones again to use the reusable delegation set.

# Arguments

## `CallerReference = ::String` -- *Required*
A unique string that identifies the request, and that allows you to retry failed `CreateReusableDelegationSet` requests without the risk of executing the operation twice. You must use a unique `CallerReference` string every time you submit a `CreateReusableDelegationSet` request. `CallerReference` can be any unique string, for example a date/time stamp.


## `HostedZoneId = ::String`
If you want to mark the delegation set for an existing hosted zone as reusable, the ID for that hosted zone.




# Returns

`CreateReusableDelegationSetResponse`

# Exceptions

`DelegationSetAlreadyCreated`, `LimitsExceeded`, `HostedZoneNotFound`, `InvalidArgument`, `InvalidInput`, `DelegationSetNotAvailable` or `DelegationSetAlreadyReusable`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/CreateReusableDelegationSet)
"""
@inline create_reusable_delegation_set(aws::AWSConfig=default_aws_config(); args...) = create_reusable_delegation_set(aws, args)

@inline create_reusable_delegation_set(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/delegationset", args)

@inline create_reusable_delegation_set(args) = create_reusable_delegation_set(default_aws_config(), args)


"""
    using AWSSDK.Route53.create_traffic_policy
    create_traffic_policy([::AWSConfig], arguments::Dict)
    create_traffic_policy([::AWSConfig]; Name=, Document=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/trafficpolicy", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/trafficpolicy", Name=, Document=, <keyword arguments>)

# CreateTrafficPolicy Operation

Creates a traffic policy, which you use to create multiple DNS resource record sets for one domain name (such as example.com) or one subdomain name (such as www.example.com).

# Arguments

## `Name = ::String` -- *Required*
The name of the traffic policy.


## `Document = ::String` -- *Required*
The definition of this traffic policy in JSON format. For more information, see [Traffic Policy Document Format](http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html).


## `Comment = ::String`
(Optional) Any comments that you want to include about the traffic policy.




# Returns

`CreateTrafficPolicyResponse`

# Exceptions

`InvalidInput`, `TooManyTrafficPolicies`, `TrafficPolicyAlreadyExists` or `InvalidTrafficPolicyDocument`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/CreateTrafficPolicy)
"""
@inline create_traffic_policy(aws::AWSConfig=default_aws_config(); args...) = create_traffic_policy(aws, args)

@inline create_traffic_policy(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/trafficpolicy", args)

@inline create_traffic_policy(args) = create_traffic_policy(default_aws_config(), args)


"""
    using AWSSDK.Route53.create_traffic_policy_instance
    create_traffic_policy_instance([::AWSConfig], arguments::Dict)
    create_traffic_policy_instance([::AWSConfig]; HostedZoneId=, Name=, TTL=, TrafficPolicyId=, TrafficPolicyVersion=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/trafficpolicyinstance", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/trafficpolicyinstance", HostedZoneId=, Name=, TTL=, TrafficPolicyId=, TrafficPolicyVersion=)

# CreateTrafficPolicyInstance Operation

Creates resource record sets in a specified hosted zone based on the settings in a specified traffic policy version. In addition, `CreateTrafficPolicyInstance` associates the resource record sets with a specified domain name (such as example.com) or subdomain name (such as www.example.com). Amazon Route 53 responds to DNS queries for the domain or subdomain name by using the resource record sets that `CreateTrafficPolicyInstance` created.

# Arguments

## `HostedZoneId = ::String` -- *Required*
The ID of the hosted zone in which you want Amazon Route 53 to create resource record sets by using the configuration in a traffic policy.


## `Name = ::String` -- *Required*
The domain name (such as example.com) or subdomain name (such as www.example.com) for which Amazon Route 53 responds to DNS queries by using the resource record sets that Amazon Route 53 creates for this traffic policy instance.


## `TTL = ::Int` -- *Required*
(Optional) The TTL that you want Amazon Route 53 to assign to all of the resource record sets that it creates in the specified hosted zone.


## `TrafficPolicyId = ::String` -- *Required*
The ID of the traffic policy that you want to use to create resource record sets in the specified hosted zone.


## `TrafficPolicyVersion = ::Int` -- *Required*
The version of the traffic policy that you want to use to create resource record sets in the specified hosted zone.




# Returns

`CreateTrafficPolicyInstanceResponse`

# Exceptions

`NoSuchHostedZone`, `InvalidInput`, `TooManyTrafficPolicyInstances`, `NoSuchTrafficPolicy` or `TrafficPolicyInstanceAlreadyExists`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/CreateTrafficPolicyInstance)
"""
@inline create_traffic_policy_instance(aws::AWSConfig=default_aws_config(); args...) = create_traffic_policy_instance(aws, args)

@inline create_traffic_policy_instance(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/trafficpolicyinstance", args)

@inline create_traffic_policy_instance(args) = create_traffic_policy_instance(default_aws_config(), args)


"""
    using AWSSDK.Route53.create_traffic_policy_version
    create_traffic_policy_version([::AWSConfig], arguments::Dict)
    create_traffic_policy_version([::AWSConfig]; Id=, Document=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/trafficpolicy/{Id}", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/trafficpolicy/{Id}", Id=, Document=, <keyword arguments>)

# CreateTrafficPolicyVersion Operation

Creates a new version of an existing traffic policy. When you create a new version of a traffic policy, you specify the ID of the traffic policy that you want to update and a JSON-formatted document that describes the new version. You use traffic policies to create multiple DNS resource record sets for one domain name (such as example.com) or one subdomain name (such as www.example.com). You can create a maximum of 1000 versions of a traffic policy. If you reach the limit and need to create another version, you'll need to start a new traffic policy.

# Arguments

## `Id = ::String` -- *Required*
The ID of the traffic policy for which you want to create a new version.


## `Document = ::String` -- *Required*
The definition of this version of the traffic policy, in JSON format. You specified the JSON in the `CreateTrafficPolicyVersion` request. For more information about the JSON format, see [CreateTrafficPolicy](@ref).


## `Comment = ::String`
The comment that you specified in the `CreateTrafficPolicyVersion` request, if any.




# Returns

`CreateTrafficPolicyVersionResponse`

# Exceptions

`NoSuchTrafficPolicy`, `InvalidInput`, `TooManyTrafficPolicyVersionsForCurrentPolicy`, `ConcurrentModification` or `InvalidTrafficPolicyDocument`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/CreateTrafficPolicyVersion)
"""
@inline create_traffic_policy_version(aws::AWSConfig=default_aws_config(); args...) = create_traffic_policy_version(aws, args)

@inline create_traffic_policy_version(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/trafficpolicy/{Id}", args)

@inline create_traffic_policy_version(args) = create_traffic_policy_version(default_aws_config(), args)


"""
    using AWSSDK.Route53.create_vpcassociation_authorization
    create_vpcassociation_authorization([::AWSConfig], arguments::Dict)
    create_vpcassociation_authorization([::AWSConfig]; Id=, VPC=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone/{Id}/authorizevpcassociation", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone/{Id}/authorizevpcassociation", Id=, VPC=)

# CreateVPCAssociationAuthorization Operation

Authorizes the AWS account that created a specified VPC to submit an `AssociateVPCWithHostedZone` request to associate the VPC with a specified hosted zone that was created by a different account. To submit a `CreateVPCAssociationAuthorization` request, you must use the account that created the hosted zone. After you authorize the association, use the account that created the VPC to submit an `AssociateVPCWithHostedZone` request.

**Note**
> If you want to associate multiple VPCs that you created by using one account with a hosted zone that you created by using a different account, you must submit one authorization request for each VPC.

# Arguments

## `Id = ::String` -- *Required*
The ID of the private hosted zone that you want to authorize associating a VPC with.


## `VPC = [ ... ]` -- *Required*
A complex type that contains the VPC ID and region for the VPC that you want to authorize associating with your hosted zone.
```
 VPC = [
        "VPCRegion" =>  "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "sa-east-1", "ca-central-1" or "cn-north-1",
        "VPCId" =>  ::String
    ]
```



# Returns

`CreateVPCAssociationAuthorizationResponse`

# Exceptions

`ConcurrentModification`, `TooManyVPCAssociationAuthorizations`, `NoSuchHostedZone`, `InvalidVPCId` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/CreateVPCAssociationAuthorization)
"""
@inline create_vpcassociation_authorization(aws::AWSConfig=default_aws_config(); args...) = create_vpcassociation_authorization(aws, args)

@inline create_vpcassociation_authorization(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/hostedzone/{Id}/authorizevpcassociation", args)

@inline create_vpcassociation_authorization(args) = create_vpcassociation_authorization(default_aws_config(), args)


"""
    using AWSSDK.Route53.delete_health_check
    delete_health_check([::AWSConfig], arguments::Dict)
    delete_health_check([::AWSConfig]; HealthCheckId=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "DELETE", "/2013-04-01/healthcheck/{HealthCheckId}", arguments::Dict)
    route53([::AWSConfig], "DELETE", "/2013-04-01/healthcheck/{HealthCheckId}", HealthCheckId=)

# DeleteHealthCheck Operation

Deletes a health check.

**Important**
> Amazon Route 53 does not prevent you from deleting a health check even if the health check is associated with one or more resource record sets. If you delete a health check and you don't update the associated resource record sets, the future status of the health check can't be predicted and may change. This will affect the routing of DNS queries for your DNS failover configuration. For more information, see [Replacing and Deleting Health Checks](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html) in the *Amazon Route 53 Developer Guide*.

# Arguments

## `HealthCheckId = ::String` -- *Required*
The ID of the health check that you want to delete.




# Returns

`DeleteHealthCheckResponse`

# Exceptions

`NoSuchHealthCheck`, `HealthCheckInUse` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/DeleteHealthCheck)
"""
@inline delete_health_check(aws::AWSConfig=default_aws_config(); args...) = delete_health_check(aws, args)

@inline delete_health_check(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "DELETE", "/2013-04-01/healthcheck/{HealthCheckId}", args)

@inline delete_health_check(args) = delete_health_check(default_aws_config(), args)


"""
    using AWSSDK.Route53.delete_hosted_zone
    delete_hosted_zone([::AWSConfig], arguments::Dict)
    delete_hosted_zone([::AWSConfig]; Id=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "DELETE", "/2013-04-01/hostedzone/{Id}", arguments::Dict)
    route53([::AWSConfig], "DELETE", "/2013-04-01/hostedzone/{Id}", Id=)

# DeleteHostedZone Operation

Deletes a hosted zone.

**Important**
> If the name servers for the hosted zone are associated with a domain and if you want to make the domain unavailable on the Internet, we recommend that you delete the name servers from the domain to prevent future DNS queries from possibly being misrouted. If the domain is registered with Amazon Route 53, see `UpdateDomainNameservers`. If the domain is registered with another registrar, use the method provided by the registrar to delete name servers for the domain.

Some domain registries don't allow you to remove all of the name servers for a domain. If the registry for your domain requires one or more name servers, we recommend that you delete the hosted zone only if you transfer DNS service to another service provider, and you replace the name servers for the domain with name servers from the new provider.

You can delete a hosted zone only if it contains only the default SOA record and NS resource record sets. If the hosted zone contains other resource record sets, you must delete them before you can delete the hosted zone. If you try to delete a hosted zone that contains other resource record sets, the request fails, and Amazon Route 53 returns a `HostedZoneNotEmpty` error. For information about deleting records from your hosted zone, see [ChangeResourceRecordSets](@ref).

To verify that the hosted zone has been deleted, do one of the following:

*   Use the `GetHostedZone` action to request information about the hosted zone.

*   Use the `ListHostedZones` action to get a list of the hosted zones associated with the current AWS account.

# Arguments

## `Id = ::String` -- *Required*
The ID of the hosted zone you want to delete.




# Returns

`DeleteHostedZoneResponse`

# Exceptions

`NoSuchHostedZone`, `HostedZoneNotEmpty`, `PriorRequestNotComplete`, `InvalidInput` or `InvalidDomainName`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/DeleteHostedZone)
"""
@inline delete_hosted_zone(aws::AWSConfig=default_aws_config(); args...) = delete_hosted_zone(aws, args)

@inline delete_hosted_zone(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "DELETE", "/2013-04-01/hostedzone/{Id}", args)

@inline delete_hosted_zone(args) = delete_hosted_zone(default_aws_config(), args)


"""
    using AWSSDK.Route53.delete_query_logging_config
    delete_query_logging_config([::AWSConfig], arguments::Dict)
    delete_query_logging_config([::AWSConfig]; Id=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "DELETE", "/2013-04-01/queryloggingconfig/{Id}", arguments::Dict)
    route53([::AWSConfig], "DELETE", "/2013-04-01/queryloggingconfig/{Id}", Id=)

# DeleteQueryLoggingConfig Operation

Deletes a configuration for DNS query logging. If you delete a configuration, Amazon Route 53 stops sending query logs to CloudWatch Logs. Amazon Route 53 doesn't delete any logs that are already in CloudWatch Logs.

For more information about DNS query logs, see [CreateQueryLoggingConfig](@ref).

# Arguments

## `Id = ::String` -- *Required*
The ID of the configuration that you want to delete.




# Returns

`DeleteQueryLoggingConfigResponse`

# Exceptions

`ConcurrentModification`, `NoSuchQueryLoggingConfig` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/DeleteQueryLoggingConfig)
"""
@inline delete_query_logging_config(aws::AWSConfig=default_aws_config(); args...) = delete_query_logging_config(aws, args)

@inline delete_query_logging_config(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "DELETE", "/2013-04-01/queryloggingconfig/{Id}", args)

@inline delete_query_logging_config(args) = delete_query_logging_config(default_aws_config(), args)


"""
    using AWSSDK.Route53.delete_reusable_delegation_set
    delete_reusable_delegation_set([::AWSConfig], arguments::Dict)
    delete_reusable_delegation_set([::AWSConfig]; Id=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "DELETE", "/2013-04-01/delegationset/{Id}", arguments::Dict)
    route53([::AWSConfig], "DELETE", "/2013-04-01/delegationset/{Id}", Id=)

# DeleteReusableDelegationSet Operation

Deletes a reusable delegation set.

**Important**
> You can delete a reusable delegation set only if it isn't associated with any hosted zones.

To verify that the reusable delegation set is not associated with any hosted zones, submit a [GetReusableDelegationSet](@ref) request and specify the ID of the reusable delegation set that you want to delete.

# Arguments

## `Id = ::String` -- *Required*
The ID of the reusable delegation set that you want to delete.




# Returns

`DeleteReusableDelegationSetResponse`

# Exceptions

`NoSuchDelegationSet`, `DelegationSetInUse`, `DelegationSetNotReusable` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/DeleteReusableDelegationSet)
"""
@inline delete_reusable_delegation_set(aws::AWSConfig=default_aws_config(); args...) = delete_reusable_delegation_set(aws, args)

@inline delete_reusable_delegation_set(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "DELETE", "/2013-04-01/delegationset/{Id}", args)

@inline delete_reusable_delegation_set(args) = delete_reusable_delegation_set(default_aws_config(), args)


"""
    using AWSSDK.Route53.delete_traffic_policy
    delete_traffic_policy([::AWSConfig], arguments::Dict)
    delete_traffic_policy([::AWSConfig]; Id=, Version=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "DELETE", "/2013-04-01/trafficpolicy/{Id}/{Version}", arguments::Dict)
    route53([::AWSConfig], "DELETE", "/2013-04-01/trafficpolicy/{Id}/{Version}", Id=, Version=)

# DeleteTrafficPolicy Operation

Deletes a traffic policy.

# Arguments

## `Id = ::String` -- *Required*
The ID of the traffic policy that you want to delete.


## `Version = ::Int` -- *Required*
The version number of the traffic policy that you want to delete.




# Returns

`DeleteTrafficPolicyResponse`

# Exceptions

`NoSuchTrafficPolicy`, `InvalidInput`, `TrafficPolicyInUse` or `ConcurrentModification`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/DeleteTrafficPolicy)
"""
@inline delete_traffic_policy(aws::AWSConfig=default_aws_config(); args...) = delete_traffic_policy(aws, args)

@inline delete_traffic_policy(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "DELETE", "/2013-04-01/trafficpolicy/{Id}/{Version}", args)

@inline delete_traffic_policy(args) = delete_traffic_policy(default_aws_config(), args)


"""
    using AWSSDK.Route53.delete_traffic_policy_instance
    delete_traffic_policy_instance([::AWSConfig], arguments::Dict)
    delete_traffic_policy_instance([::AWSConfig]; Id=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "DELETE", "/2013-04-01/trafficpolicyinstance/{Id}", arguments::Dict)
    route53([::AWSConfig], "DELETE", "/2013-04-01/trafficpolicyinstance/{Id}", Id=)

# DeleteTrafficPolicyInstance Operation

Deletes a traffic policy instance and all of the resource record sets that Amazon Route 53 created when you created the instance.

**Note**
> In the Amazon Route 53 console, traffic policy instances are known as policy records.

# Arguments

## `Id = ::String` -- *Required*
The ID of the traffic policy instance that you want to delete.

**Important**
> When you delete a traffic policy instance, Amazon Route 53 also deletes all of the resource record sets that were created when you created the traffic policy instance.




# Returns

`DeleteTrafficPolicyInstanceResponse`

# Exceptions

`NoSuchTrafficPolicyInstance`, `InvalidInput` or `PriorRequestNotComplete`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/DeleteTrafficPolicyInstance)
"""
@inline delete_traffic_policy_instance(aws::AWSConfig=default_aws_config(); args...) = delete_traffic_policy_instance(aws, args)

@inline delete_traffic_policy_instance(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "DELETE", "/2013-04-01/trafficpolicyinstance/{Id}", args)

@inline delete_traffic_policy_instance(args) = delete_traffic_policy_instance(default_aws_config(), args)


"""
    using AWSSDK.Route53.delete_vpcassociation_authorization
    delete_vpcassociation_authorization([::AWSConfig], arguments::Dict)
    delete_vpcassociation_authorization([::AWSConfig]; Id=, VPC=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone/{Id}/deauthorizevpcassociation", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone/{Id}/deauthorizevpcassociation", Id=, VPC=)

# DeleteVPCAssociationAuthorization Operation

Removes authorization to submit an `AssociateVPCWithHostedZone` request to associate a specified VPC with a hosted zone that was created by a different account. You must use the account that created the hosted zone to submit a `DeleteVPCAssociationAuthorization` request.

**Important**
> Sending this request only prevents the AWS account that created the VPC from associating the VPC with the Amazon Route 53 hosted zone in the future. If the VPC is already associated with the hosted zone, `DeleteVPCAssociationAuthorization` won't disassociate the VPC from the hosted zone. If you want to delete an existing association, use `DisassociateVPCFromHostedZone`.

# Arguments

## `Id = ::String` -- *Required*
When removing authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account, the ID of the hosted zone.


## `VPC = [ ... ]` -- *Required*
When removing authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account, a complex type that includes the ID and region of the VPC.
```
 VPC = [
        "VPCRegion" =>  "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "sa-east-1", "ca-central-1" or "cn-north-1",
        "VPCId" =>  ::String
    ]
```



# Returns

`DeleteVPCAssociationAuthorizationResponse`

# Exceptions

`ConcurrentModification`, `VPCAssociationAuthorizationNotFound`, `NoSuchHostedZone`, `InvalidVPCId` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/DeleteVPCAssociationAuthorization)
"""
@inline delete_vpcassociation_authorization(aws::AWSConfig=default_aws_config(); args...) = delete_vpcassociation_authorization(aws, args)

@inline delete_vpcassociation_authorization(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/hostedzone/{Id}/deauthorizevpcassociation", args)

@inline delete_vpcassociation_authorization(args) = delete_vpcassociation_authorization(default_aws_config(), args)


"""
    using AWSSDK.Route53.disassociate_vpcfrom_hosted_zone
    disassociate_vpcfrom_hosted_zone([::AWSConfig], arguments::Dict)
    disassociate_vpcfrom_hosted_zone([::AWSConfig]; Id=, VPC=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone/{Id}/disassociatevpc", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone/{Id}/disassociatevpc", Id=, VPC=, <keyword arguments>)

# DisassociateVPCFromHostedZone Operation

Disassociates a VPC from a Amazon Route 53 private hosted zone.

**Note**
> You can't disassociate the last VPC from a private hosted zone.

**Important**
> You can't disassociate a VPC from a private hosted zone when only one VPC is associated with the hosted zone. You also can't convert a private hosted zone into a public hosted zone.

# Arguments

## `Id = ::String` -- *Required*
The ID of the private hosted zone that you want to disassociate a VPC from.


## `VPC = [ ... ]` -- *Required*
A complex type that contains information about the VPC that you're disassociating from the specified hosted zone.
```
 VPC = [
        "VPCRegion" =>  "us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "sa-east-1", "ca-central-1" or "cn-north-1",
        "VPCId" =>  ::String
    ]
```

## `Comment = ::String`
*Optional:* A comment about the disassociation request.




# Returns

`DisassociateVPCFromHostedZoneResponse`

# Exceptions

`NoSuchHostedZone`, `InvalidVPCId`, `VPCAssociationNotFound`, `LastVPCAssociation` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/DisassociateVPCFromHostedZone)
"""
@inline disassociate_vpcfrom_hosted_zone(aws::AWSConfig=default_aws_config(); args...) = disassociate_vpcfrom_hosted_zone(aws, args)

@inline disassociate_vpcfrom_hosted_zone(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/hostedzone/{Id}/disassociatevpc", args)

@inline disassociate_vpcfrom_hosted_zone(args) = disassociate_vpcfrom_hosted_zone(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_account_limit
    get_account_limit([::AWSConfig], arguments::Dict)
    get_account_limit([::AWSConfig]; Type=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/accountlimit/{Type}", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/accountlimit/{Type}", Type=)

# GetAccountLimit Operation

Gets the specified limit for the current account, for example, the maximum number of health checks that you can create using the account.

For the default limit, see [Limits](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html) in the *Amazon Route 53 Developer Guide*. To request a higher limit, [open a case](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53).

# Arguments

## `Type = "MAX_HEALTH_CHECKS_BY_OWNER", "MAX_HOSTED_ZONES_BY_OWNER", "MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER", "MAX_REUSABLE_DELEGATION_SETS_BY_OWNER" or "MAX_TRAFFIC_POLICIES_BY_OWNER"` -- *Required*
The limit that you want to get. Valid values include the following:

*   **MAX_HEALTH_CHECKS_BY_OWNER**: The maximum number of health checks that you can create using the current account.

*   **MAX_HOSTED_ZONES_BY_OWNER**: The maximum number of hosted zones that you can create using the current account.

*   **MAX_REUSABLE_DELEGATION_SETS_BY_OWNER**: The maximum number of reusable delegation sets that you can create using the current account.

*   **MAX_TRAFFIC_POLICIES_BY_OWNER**: The maximum number of traffic policies that you can create using the current account.

*   **MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER**: The maximum number of traffic policy instances that you can create using the current account. (Traffic policy instances are referred to as traffic flow policy records in the Amazon Route 53 console.)




# Returns

`GetAccountLimitResponse`

# Exceptions

`InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetAccountLimit)
"""
@inline get_account_limit(aws::AWSConfig=default_aws_config(); args...) = get_account_limit(aws, args)

@inline get_account_limit(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/accountlimit/{Type}", args)

@inline get_account_limit(args) = get_account_limit(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_change
    get_change([::AWSConfig], arguments::Dict)
    get_change([::AWSConfig]; Id=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/change/{Id}", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/change/{Id}", Id=)

# GetChange Operation

Returns the current status of a change batch request. The status is one of the following values:

*   `PENDING` indicates that the changes in this request have not propagated to all Amazon Route 53 DNS servers. This is the initial status of all change batch requests.

*   `INSYNC` indicates that the changes have propagated to all Amazon Route 53 DNS servers.

# Arguments

## `Id = ::String` -- *Required*
The ID of the change batch request. The value that you specify here is the value that `ChangeResourceRecordSets` returned in the `Id` element when you submitted the request.




# Returns

`GetChangeResponse`

# Exceptions

`NoSuchChange` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetChange)
"""
@inline get_change(aws::AWSConfig=default_aws_config(); args...) = get_change(aws, args)

@inline get_change(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/change/{Id}", args)

@inline get_change(args) = get_change(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_checker_ip_ranges
    get_checker_ip_ranges([::AWSConfig], arguments::Dict)
    get_checker_ip_ranges([::AWSConfig]; )

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/checkeripranges", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/checkeripranges", )

# GetCheckerIpRanges Operation

`GetCheckerIpRanges` still works, but we recommend that you download ip-ranges.json, which includes IP address ranges for all AWS services. For more information, see [IP Address Ranges of Amazon Route 53 Servers](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-ip-addresses.html) in the *Amazon Route 53 Developer Guide*.

# Arguments



# Returns

`GetCheckerIpRangesResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetCheckerIpRanges)
"""
@inline get_checker_ip_ranges(aws::AWSConfig=default_aws_config(); args...) = get_checker_ip_ranges(aws, args)

@inline get_checker_ip_ranges(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/checkeripranges", args)

@inline get_checker_ip_ranges(args) = get_checker_ip_ranges(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_geo_location
    get_geo_location([::AWSConfig], arguments::Dict)
    get_geo_location([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/geolocation", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/geolocation", <keyword arguments>)

# GetGeoLocation Operation

Gets information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets.

Use the following syntax to determine whether a continent is supported for geolocation:

`GET /2013-04-01/geolocation?ContinentCode=*two-letter abbreviation for a continent*`

Use the following syntax to determine whether a country is supported for geolocation:

`GET /2013-04-01/geolocation?CountryCode=*two-character country code*`

Use the following syntax to determine whether a subdivision of a country is supported for geolocation:

`GET /2013-04-01/geolocation?CountryCode=*two-character country code*&SubdivisionCode=*subdivision code*`

# Arguments

## `continentcode = ::String`
Amazon Route 53 supports the following continent codes:

*   **AF**: Africa

*   **AN**: Antarctica

*   **AS**: Asia

*   **EU**: Europe

*   **OC**: Oceania

*   **NA**: North America

*   **SA**: South America


## `countrycode = ::String`
Amazon Route 53 uses the two-letter country codes that are specified in [ISO standard 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).


## `subdivisioncode = ::String`
Amazon Route 53 uses the one- to three-letter subdivision codes that are specified in [ISO standard 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Amazon Route 53 doesn't support subdivision codes for all countries. If you specify `SubdivisionCode`, you must also specify `CountryCode`.




# Returns

`GetGeoLocationResponse`

# Exceptions

`NoSuchGeoLocation` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetGeoLocation)
"""
@inline get_geo_location(aws::AWSConfig=default_aws_config(); args...) = get_geo_location(aws, args)

@inline get_geo_location(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/geolocation", args)

@inline get_geo_location(args) = get_geo_location(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_health_check
    get_health_check([::AWSConfig], arguments::Dict)
    get_health_check([::AWSConfig]; HealthCheckId=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/healthcheck/{HealthCheckId}", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/healthcheck/{HealthCheckId}", HealthCheckId=)

# GetHealthCheck Operation

Gets information about a specified health check.

# Arguments

## `HealthCheckId = ::String` -- *Required*
The identifier that Amazon Route 53 assigned to the health check when you created it. When you add or update a resource record set, you use this value to specify which health check to use. The value can be up to 64 characters long.




# Returns

`GetHealthCheckResponse`

# Exceptions

`NoSuchHealthCheck`, `InvalidInput` or `IncompatibleVersion`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetHealthCheck)
"""
@inline get_health_check(aws::AWSConfig=default_aws_config(); args...) = get_health_check(aws, args)

@inline get_health_check(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/healthcheck/{HealthCheckId}", args)

@inline get_health_check(args) = get_health_check(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_health_check_count
    get_health_check_count([::AWSConfig], arguments::Dict)
    get_health_check_count([::AWSConfig]; )

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/healthcheckcount", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/healthcheckcount", )

# GetHealthCheckCount Operation

Retrieves the number of health checks that are associated with the current AWS account.

# Arguments



# Returns

`GetHealthCheckCountResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetHealthCheckCount)
"""
@inline get_health_check_count(aws::AWSConfig=default_aws_config(); args...) = get_health_check_count(aws, args)

@inline get_health_check_count(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/healthcheckcount", args)

@inline get_health_check_count(args) = get_health_check_count(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_health_check_last_failure_reason
    get_health_check_last_failure_reason([::AWSConfig], arguments::Dict)
    get_health_check_last_failure_reason([::AWSConfig]; HealthCheckId=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason", HealthCheckId=)

# GetHealthCheckLastFailureReason Operation

Gets the reason that a specified health check failed most recently.

# Arguments

## `HealthCheckId = ::String` -- *Required*
The ID for the health check for which you want the last failure reason. When you created the health check, `CreateHealthCheck` returned the ID in the response, in the `HealthCheckId` element.

**Note**
> If you want to get the last failure reason for a calculated health check, you must use the Amazon Route 53 console or the CloudWatch console. You can't use `GetHealthCheckLastFailureReason` for a calculated health check.




# Returns

`GetHealthCheckLastFailureReasonResponse`

# Exceptions

`NoSuchHealthCheck` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetHealthCheckLastFailureReason)
"""
@inline get_health_check_last_failure_reason(aws::AWSConfig=default_aws_config(); args...) = get_health_check_last_failure_reason(aws, args)

@inline get_health_check_last_failure_reason(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason", args)

@inline get_health_check_last_failure_reason(args) = get_health_check_last_failure_reason(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_health_check_status
    get_health_check_status([::AWSConfig], arguments::Dict)
    get_health_check_status([::AWSConfig]; HealthCheckId=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/healthcheck/{HealthCheckId}/status", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/healthcheck/{HealthCheckId}/status", HealthCheckId=)

# GetHealthCheckStatus Operation

Gets status of a specified health check.

# Arguments

## `HealthCheckId = ::String` -- *Required*
The ID for the health check that you want the current status for. When you created the health check, `CreateHealthCheck` returned the ID in the response, in the `HealthCheckId` element.

**Note**
> If you want to check the status of a calculated health check, you must use the Amazon Route 53 console or the CloudWatch console. You can't use `GetHealthCheckStatus` to get the status of a calculated health check.




# Returns

`GetHealthCheckStatusResponse`

# Exceptions

`NoSuchHealthCheck` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetHealthCheckStatus)
"""
@inline get_health_check_status(aws::AWSConfig=default_aws_config(); args...) = get_health_check_status(aws, args)

@inline get_health_check_status(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/healthcheck/{HealthCheckId}/status", args)

@inline get_health_check_status(args) = get_health_check_status(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_hosted_zone
    get_hosted_zone([::AWSConfig], arguments::Dict)
    get_hosted_zone([::AWSConfig]; Id=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzone/{Id}", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzone/{Id}", Id=)

# GetHostedZone Operation

Gets information about a specified hosted zone including the four name servers assigned to the hosted zone.

# Arguments

## `Id = ::String` -- *Required*
The ID of the hosted zone that you want to get information about.




# Returns

`GetHostedZoneResponse`

# Exceptions

`NoSuchHostedZone` or `InvalidInput`.

# Example: To get information about a hosted zone

The following example gets information about the Z3M3LMPEXAMPLE hosted zone.

Input:
```
[
    "Id" => "Z3M3LMPEXAMPLE"
]
```

Output:
```
Dict(
    "DelegationSet" => Dict(
        "NameServers" => [
            "ns-2048.awsdns-64.com",
            "ns-2049.awsdns-65.net",
            "ns-2050.awsdns-66.org",
            "ns-2051.awsdns-67.co.uk"
        ]
    ),
    "HostedZone" => Dict(
        "CallerReference" => "C741617D-04E4-F8DE-B9D7-0D150FC61C2E",
        "Config" => Dict(
            "PrivateZone" => false
        ),
        "Id" => "/hostedzone/Z3M3LMPEXAMPLE",
        "Name" => "myawsbucket.com.",
        "ResourceRecordSetCount" => 8
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetHostedZone)
"""
@inline get_hosted_zone(aws::AWSConfig=default_aws_config(); args...) = get_hosted_zone(aws, args)

@inline get_hosted_zone(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/hostedzone/{Id}", args)

@inline get_hosted_zone(args) = get_hosted_zone(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_hosted_zone_count
    get_hosted_zone_count([::AWSConfig], arguments::Dict)
    get_hosted_zone_count([::AWSConfig]; )

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzonecount", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzonecount", )

# GetHostedZoneCount Operation

Retrieves the number of hosted zones that are associated with the current AWS account.

# Arguments



# Returns

`GetHostedZoneCountResponse`

# Exceptions

`InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetHostedZoneCount)
"""
@inline get_hosted_zone_count(aws::AWSConfig=default_aws_config(); args...) = get_hosted_zone_count(aws, args)

@inline get_hosted_zone_count(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/hostedzonecount", args)

@inline get_hosted_zone_count(args) = get_hosted_zone_count(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_hosted_zone_limit
    get_hosted_zone_limit([::AWSConfig], arguments::Dict)
    get_hosted_zone_limit([::AWSConfig]; Type=, Id=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzonelimit/{Id}/{Type}", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzonelimit/{Id}/{Type}", Type=, Id=)

# GetHostedZoneLimit Operation

Gets the specified limit for a specified hosted zone, for example, the maximum number of records that you can create in the hosted zone.

For the default limit, see [Limits](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html) in the *Amazon Route 53 Developer Guide*. To request a higher limit, [open a case](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53).

# Arguments

## `Type = "MAX_RRSETS_BY_ZONE" or "MAX_VPCS_ASSOCIATED_BY_ZONE"` -- *Required*
The limit that you want to get. Valid values include the following:

*   **MAX_RRSETS_BY_ZONE**: The maximum number of records that you can create in the specified hosted zone.

*   **MAX_VPCS_ASSOCIATED_BY_ZONE**: The maximum number of Amazon VPCs that you can associate with the specified private hosted zone.


## `Id = ::String` -- *Required*
The ID of the hosted zone that you want to get a limit for.




# Returns

`GetHostedZoneLimitResponse`

# Exceptions

`NoSuchHostedZone`, `InvalidInput` or `HostedZoneNotPrivate`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetHostedZoneLimit)
"""
@inline get_hosted_zone_limit(aws::AWSConfig=default_aws_config(); args...) = get_hosted_zone_limit(aws, args)

@inline get_hosted_zone_limit(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/hostedzonelimit/{Id}/{Type}", args)

@inline get_hosted_zone_limit(args) = get_hosted_zone_limit(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_query_logging_config
    get_query_logging_config([::AWSConfig], arguments::Dict)
    get_query_logging_config([::AWSConfig]; Id=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/queryloggingconfig/{Id}", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/queryloggingconfig/{Id}", Id=)

# GetQueryLoggingConfig Operation

Gets information about a specified configuration for DNS query logging.

For more information about DNS query logs, see [CreateQueryLoggingConfig](@ref) and [Logging DNS Queries](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html).

# Arguments

## `Id = ::String` -- *Required*
The ID of the configuration for DNS query logging that you want to get information about.




# Returns

`GetQueryLoggingConfigResponse`

# Exceptions

`NoSuchQueryLoggingConfig` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetQueryLoggingConfig)
"""
@inline get_query_logging_config(aws::AWSConfig=default_aws_config(); args...) = get_query_logging_config(aws, args)

@inline get_query_logging_config(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/queryloggingconfig/{Id}", args)

@inline get_query_logging_config(args) = get_query_logging_config(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_reusable_delegation_set
    get_reusable_delegation_set([::AWSConfig], arguments::Dict)
    get_reusable_delegation_set([::AWSConfig]; Id=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/delegationset/{Id}", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/delegationset/{Id}", Id=)

# GetReusableDelegationSet Operation

Retrieves information about a specified reusable delegation set, including the four name servers that are assigned to the delegation set.

# Arguments

## `Id = ::String` -- *Required*
The ID of the reusable delegation set that you want to get a list of name servers for.




# Returns

`GetReusableDelegationSetResponse`

# Exceptions

`NoSuchDelegationSet`, `DelegationSetNotReusable` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetReusableDelegationSet)
"""
@inline get_reusable_delegation_set(aws::AWSConfig=default_aws_config(); args...) = get_reusable_delegation_set(aws, args)

@inline get_reusable_delegation_set(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/delegationset/{Id}", args)

@inline get_reusable_delegation_set(args) = get_reusable_delegation_set(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_reusable_delegation_set_limit
    get_reusable_delegation_set_limit([::AWSConfig], arguments::Dict)
    get_reusable_delegation_set_limit([::AWSConfig]; Type=, Id=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/reusabledelegationsetlimit/{Id}/{Type}", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/reusabledelegationsetlimit/{Id}/{Type}", Type=, Id=)

# GetReusableDelegationSetLimit Operation

Gets the maximum number of hosted zones that you can associate with the specified reusable delegation set.

For the default limit, see [Limits](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html) in the *Amazon Route 53 Developer Guide*. To request a higher limit, [open a case](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53).

# Arguments

## `Type = "MAX_ZONES_BY_REUSABLE_DELEGATION_SET"` -- *Required*
Specify `MAX_ZONES_BY_REUSABLE_DELEGATION_SET` to get the maximum number of hosted zones that you can associate with the specified reusable delegation set.


## `Id = ::String` -- *Required*
The ID of the delegation set that you want to get the limit for.




# Returns

`GetReusableDelegationSetLimitResponse`

# Exceptions

`InvalidInput` or `NoSuchDelegationSet`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetReusableDelegationSetLimit)
"""
@inline get_reusable_delegation_set_limit(aws::AWSConfig=default_aws_config(); args...) = get_reusable_delegation_set_limit(aws, args)

@inline get_reusable_delegation_set_limit(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/reusabledelegationsetlimit/{Id}/{Type}", args)

@inline get_reusable_delegation_set_limit(args) = get_reusable_delegation_set_limit(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_traffic_policy
    get_traffic_policy([::AWSConfig], arguments::Dict)
    get_traffic_policy([::AWSConfig]; Id=, Version=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicy/{Id}/{Version}", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicy/{Id}/{Version}", Id=, Version=)

# GetTrafficPolicy Operation

Gets information about a specific traffic policy version.

# Arguments

## `Id = ::String` -- *Required*
The ID of the traffic policy that you want to get information about.


## `Version = ::Int` -- *Required*
The version number of the traffic policy that you want to get information about.




# Returns

`GetTrafficPolicyResponse`

# Exceptions

`NoSuchTrafficPolicy` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetTrafficPolicy)
"""
@inline get_traffic_policy(aws::AWSConfig=default_aws_config(); args...) = get_traffic_policy(aws, args)

@inline get_traffic_policy(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/trafficpolicy/{Id}/{Version}", args)

@inline get_traffic_policy(args) = get_traffic_policy(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_traffic_policy_instance
    get_traffic_policy_instance([::AWSConfig], arguments::Dict)
    get_traffic_policy_instance([::AWSConfig]; Id=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicyinstance/{Id}", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicyinstance/{Id}", Id=)

# GetTrafficPolicyInstance Operation

Gets information about a specified traffic policy instance.

**Note**
> After you submit a `CreateTrafficPolicyInstance` or an `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the `State` response element.

**Note**
> In the Amazon Route 53 console, traffic policy instances are known as policy records.

# Arguments

## `Id = ::String` -- *Required*
The ID of the traffic policy instance that you want to get information about.




# Returns

`GetTrafficPolicyInstanceResponse`

# Exceptions

`NoSuchTrafficPolicyInstance` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetTrafficPolicyInstance)
"""
@inline get_traffic_policy_instance(aws::AWSConfig=default_aws_config(); args...) = get_traffic_policy_instance(aws, args)

@inline get_traffic_policy_instance(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/trafficpolicyinstance/{Id}", args)

@inline get_traffic_policy_instance(args) = get_traffic_policy_instance(default_aws_config(), args)


"""
    using AWSSDK.Route53.get_traffic_policy_instance_count
    get_traffic_policy_instance_count([::AWSConfig], arguments::Dict)
    get_traffic_policy_instance_count([::AWSConfig]; )

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicyinstancecount", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicyinstancecount", )

# GetTrafficPolicyInstanceCount Operation

Gets the number of traffic policy instances that are associated with the current AWS account.

# Arguments



# Returns

`GetTrafficPolicyInstanceCountResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/GetTrafficPolicyInstanceCount)
"""
@inline get_traffic_policy_instance_count(aws::AWSConfig=default_aws_config(); args...) = get_traffic_policy_instance_count(aws, args)

@inline get_traffic_policy_instance_count(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/trafficpolicyinstancecount", args)

@inline get_traffic_policy_instance_count(args) = get_traffic_policy_instance_count(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_geo_locations
    list_geo_locations([::AWSConfig], arguments::Dict)
    list_geo_locations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/geolocations", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/geolocations", <keyword arguments>)

# ListGeoLocations Operation

Retrieves a list of supported geo locations.

Countries are listed first, and continents are listed last. If Amazon Route 53 supports subdivisions for a country (for example, states or provinces), the subdivisions for that country are listed in alphabetical order immediately after the corresponding country.

# Arguments

## `startcontinentcode = ::String`
The code for the continent with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Amazon Route 53 has already returned a page or more of results, if `IsTruncated` is true, and if `NextContinentCode` from the previous response has a value, enter that value in `StartContinentCode` to return the next page of results.

Include `StartContinentCode` only if you want to list continents. Don't include `StartContinentCode` when you're listing countries or countries with their subdivisions.


## `startcountrycode = ::String`
The code for the country with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Amazon Route 53 has already returned a page or more of results, if `IsTruncated` is `true`, and if `NextCountryCode` from the previous response has a value, enter that value in `StartCountryCode` to return the next page of results.

Amazon Route 53 uses the two-letter country codes that are specified in [ISO standard 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).


## `startsubdivisioncode = ::String`
The code for the subdivision (for example, state or province) with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Amazon Route 53 has already returned a page or more of results, if `IsTruncated` is `true`, and if `NextSubdivisionCode` from the previous response has a value, enter that value in `StartSubdivisionCode` to return the next page of results.

To list subdivisions of a country, you must include both `StartCountryCode` and `StartSubdivisionCode`.


## `maxitems = ::String`
(Optional) The maximum number of geolocations to be included in the response body for this request. If more than `MaxItems` geolocations remain to be listed, then the value of the `IsTruncated` element in the response is `true`.




# Returns

`ListGeoLocationsResponse`

# Exceptions

`InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListGeoLocations)
"""
@inline list_geo_locations(aws::AWSConfig=default_aws_config(); args...) = list_geo_locations(aws, args)

@inline list_geo_locations(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/geolocations", args)

@inline list_geo_locations(args) = list_geo_locations(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_health_checks
    list_health_checks([::AWSConfig], arguments::Dict)
    list_health_checks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/healthcheck", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/healthcheck", <keyword arguments>)

# ListHealthChecks Operation

Retrieve a list of the health checks that are associated with the current AWS account.

# Arguments

## `marker = ::String`
If the value of `IsTruncated` in the previous response was `true`, you have more health checks. To get another group, submit another `ListHealthChecks` request.

For the value of `marker`, specify the value of `NextMarker` from the previous response, which is the ID of the first health check that Amazon Route 53 will return if you submit another request.

If the value of `IsTruncated` in the previous response was `false`, there are no more health checks to get.


## `maxitems = ::String`
The maximum number of health checks that you want `ListHealthChecks` to return in response to the current request. Amazon Route 53 returns a maximum of 100 items. If you set `MaxItems` to a value greater than 100, Amazon Route 53 returns only the first 100 health checks.




# Returns

`ListHealthChecksResponse`

# Exceptions

`InvalidInput` or `IncompatibleVersion`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListHealthChecks)
"""
@inline list_health_checks(aws::AWSConfig=default_aws_config(); args...) = list_health_checks(aws, args)

@inline list_health_checks(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/healthcheck", args)

@inline list_health_checks(args) = list_health_checks(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_hosted_zones
    list_hosted_zones([::AWSConfig], arguments::Dict)
    list_hosted_zones([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzone", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzone", <keyword arguments>)

# ListHostedZones Operation

Retrieves a list of the public and private hosted zones that are associated with the current AWS account. The response includes a `HostedZones` child element for each hosted zone.

Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of hosted zones, you can use the `maxitems` parameter to list them in groups of up to 100.

# Arguments

## `marker = ::String`
If the value of `IsTruncated` in the previous response was `true`, you have more hosted zones. To get more hosted zones, submit another `ListHostedZones` request.

For the value of `marker`, specify the value of `NextMarker` from the previous response, which is the ID of the first hosted zone that Amazon Route 53 will return if you submit another request.

If the value of `IsTruncated` in the previous response was `false`, there are no more hosted zones to get.


## `maxitems = ::String`
(Optional) The maximum number of hosted zones that you want Amazon Route 53 to return. If you have more than `maxitems` hosted zones, the value of `IsTruncated` in the response is `true`, and the value of `NextMarker` is the hosted zone ID of the first hosted zone that Amazon Route 53 will return if you submit another request.


## `delegationsetid = ::String`
If you're using reusable delegation sets and you want to list all of the hosted zones that are associated with a reusable delegation set, specify the ID of that reusable delegation set.




# Returns

`ListHostedZonesResponse`

# Exceptions

`InvalidInput`, `NoSuchDelegationSet` or `DelegationSetNotReusable`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListHostedZones)
"""
@inline list_hosted_zones(aws::AWSConfig=default_aws_config(); args...) = list_hosted_zones(aws, args)

@inline list_hosted_zones(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/hostedzone", args)

@inline list_hosted_zones(args) = list_hosted_zones(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_hosted_zones_by_name
    list_hosted_zones_by_name([::AWSConfig], arguments::Dict)
    list_hosted_zones_by_name([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzonesbyname", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzonesbyname", <keyword arguments>)

# ListHostedZonesByName Operation

Retrieves a list of your hosted zones in lexicographic order. The response includes a `HostedZones` child element for each hosted zone created by the current AWS account.

`ListHostedZonesByName` sorts hosted zones by name with the labels reversed. For example:

`com.example.www.`

Note the trailing dot, which can change the sort order in some circumstances.

If the domain name includes escape characters or Punycode, `ListHostedZonesByName` alphabetizes the domain name using the escaped or Punycoded value, which is the format that Amazon Route 53 saves in its database. For example, to create a hosted zone for exämple.com, you specify ex\\344mple.com for the domain name. `ListHostedZonesByName` alphabetizes it as:

`com.ex\\344mple.`

The labels are reversed and alphabetized using the escaped value. For more information about valid domain name formats, including internationalized domain names, see [DNS Domain Name Format](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html) in the *Amazon Route 53 Developer Guide*.

Amazon Route 53 returns up to 100 items in each response. If you have a lot of hosted zones, use the `MaxItems` parameter to list them in groups of up to 100. The response includes values that help navigate from one group of `MaxItems` hosted zones to the next:

*   The `DNSName` and `HostedZoneId` elements in the response contain the values, if any, specified for the `dnsname` and `hostedzoneid` parameters in the request that produced the current response.

*   The `MaxItems` element in the response contains the value, if any, that you specified for the `maxitems` parameter in the request that produced the current response.

*   If the value of `IsTruncated` in the response is true, there are more hosted zones associated with the current AWS account.

    If `IsTruncated` is false, this response includes the last hosted zone that is associated with the current account. The `NextDNSName` element and `NextHostedZoneId` elements are omitted from the response.

*   The `NextDNSName` and `NextHostedZoneId` elements in the response contain the domain name and the hosted zone ID of the next hosted zone that is associated with the current AWS account. If you want to list more hosted zones, make another call to `ListHostedZonesByName`, and specify the value of `NextDNSName` and `NextHostedZoneId` in the `dnsname` and `hostedzoneid` parameters, respectively.

# Arguments

## `dnsname = ::String`
(Optional) For your first request to `ListHostedZonesByName`, include the `dnsname` parameter only if you want to specify the name of the first hosted zone in the response. If you don't include the `dnsname` parameter, Amazon Route 53 returns all of the hosted zones that were created by the current AWS account, in ASCII order. For subsequent requests, include both `dnsname` and `hostedzoneid` parameters. For `dnsname`, specify the value of `NextDNSName` from the previous response.


## `hostedzoneid = ::String`
(Optional) For your first request to `ListHostedZonesByName`, do not include the `hostedzoneid` parameter.

If you have more hosted zones than the value of `maxitems`, `ListHostedZonesByName` returns only the first `maxitems` hosted zones. To get the next group of `maxitems` hosted zones, submit another request to `ListHostedZonesByName` and include both `dnsname` and `hostedzoneid` parameters. For the value of `hostedzoneid`, specify the value of the `NextHostedZoneId` element from the previous response.


## `maxitems = ::String`
The maximum number of hosted zones to be included in the response body for this request. If you have more than `maxitems` hosted zones, then the value of the `IsTruncated` element in the response is true, and the values of `NextDNSName` and `NextHostedZoneId` specify the first hosted zone in the next group of `maxitems` hosted zones.




# Returns

`ListHostedZonesByNameResponse`

# Exceptions

`InvalidInput` or `InvalidDomainName`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListHostedZonesByName)
"""
@inline list_hosted_zones_by_name(aws::AWSConfig=default_aws_config(); args...) = list_hosted_zones_by_name(aws, args)

@inline list_hosted_zones_by_name(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/hostedzonesbyname", args)

@inline list_hosted_zones_by_name(args) = list_hosted_zones_by_name(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_query_logging_configs
    list_query_logging_configs([::AWSConfig], arguments::Dict)
    list_query_logging_configs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/queryloggingconfig", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/queryloggingconfig", <keyword arguments>)

# ListQueryLoggingConfigs Operation

Lists the configurations for DNS query logging that are associated with the current AWS account or the configuration that is associated with a specified hosted zone.

For more information about DNS query logs, see [CreateQueryLoggingConfig](@ref). Additional information, including the format of DNS query logs, appears in [Logging DNS Queries](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html) in the *Amazon Route 53 Developer Guide*.

# Arguments

## `hostedzoneid = ::String`
(Optional) If you want to list the query logging configuration that is associated with a hosted zone, specify the ID in `HostedZoneId`.

If you don't specify a hosted zone ID, `ListQueryLoggingConfigs` returns all of the configurations that are associated with the current AWS account.


## `nexttoken = ::String`
(Optional) If the current AWS account has more than `MaxResults` query logging configurations, use `NextToken` to get the second and subsequent pages of results.

For the first `ListQueryLoggingConfigs` request, omit this value.

For the second and subsequent requests, get the value of `NextToken` from the previous response and specify that value for `NextToken` in the request.


## `maxresults = ::String`
(Optional) The maximum number of query logging configurations that you want Amazon Route 53 to return in response to the current request. If the current AWS account has more than `MaxResults` configurations, use the value of [ListQueryLoggingConfigsResponse\$NextToken](@ref) in the response to get the next page of results.

If you don't specify a value for `MaxResults`, Amazon Route 53 returns up to 100 configurations.




# Returns

`ListQueryLoggingConfigsResponse`

# Exceptions

`InvalidInput`, `InvalidPaginationToken` or `NoSuchHostedZone`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListQueryLoggingConfigs)
"""
@inline list_query_logging_configs(aws::AWSConfig=default_aws_config(); args...) = list_query_logging_configs(aws, args)

@inline list_query_logging_configs(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/queryloggingconfig", args)

@inline list_query_logging_configs(args) = list_query_logging_configs(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_resource_record_sets
    list_resource_record_sets([::AWSConfig], arguments::Dict)
    list_resource_record_sets([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzone/{Id}/rrset", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzone/{Id}/rrset", Id=, <keyword arguments>)

# ListResourceRecordSets Operation

Lists the resource record sets in a specified hosted zone.

`ListResourceRecordSets` returns up to 100 resource record sets at a time in ASCII order, beginning at a position specified by the `name` and `type` elements. The action sorts results first by DNS name with the labels reversed, for example:

`com.example.www.`

Note the trailing dot, which can change the sort order in some circumstances.

When multiple records have the same DNS name, the action sorts results by the record type.

You can use the name and type elements to adjust the beginning position of the list of resource record sets returned:

<dl>

<dt>If you do not specify Name or Type</dt>

<dd>

The results begin with the first resource record set that the hosted zone contains.

</dd>

<dt>If you specify Name but not Type</dt>

<dd>

The results begin with the first resource record set in the list whose name is greater than or equal to `Name`.

</dd>

<dt>If you specify Type but not Name</dt>

<dd>

Amazon Route 53 returns the `InvalidInput` error.

</dd>

<dt>If you specify both Name and Type</dt>

<dd>

The results begin with the first resource record set in the list whose name is greater than or equal to `Name`, and whose type is greater than or equal to `Type`.

</dd>

</dl>

This action returns the most current version of the records. This includes records that are `PENDING`, and that are not yet available on all Amazon Route 53 DNS servers.

To ensure that you get an accurate listing of the resource record sets for a hosted zone at a point in time, do not submit a `ChangeResourceRecordSets` request while you're paging through the results of a `ListResourceRecordSets` request. If you do, some pages may display results without the latest changes while other pages display results with the latest changes.

# Arguments

## `Id = ::String` -- *Required*
The ID of the hosted zone that contains the resource record sets that you want to list.


## `name = ::String`
The first name in the lexicographic ordering of resource record sets that you want to list.


## `type = "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA" or "CAA"`
The type of resource record set to begin the record listing from.

Valid values for basic resource record sets: `A` | `AAAA` | `CAA` | `CNAME` | `MX` | `NAPTR` | `NS` | `PTR` | `SOA` | `SPF` | `SRV` | `TXT`

Values for weighted, latency, geo, and failover resource record sets: `A` | `AAAA` | `CAA` | `CNAME` | `MX` | `NAPTR` | `PTR` | `SPF` | `SRV` | `TXT`

Values for alias resource record sets:

*   **CloudFront distribution**: A or AAAA

*   **Elastic Beanstalk environment that has a regionalized subdomain**: A

*   **ELB load balancer**: A | AAAA

*   **Amazon S3 bucket**: A

*   **Another resource record set in this hosted zone:** The type of the resource record set that the alias references.

Constraint: Specifying `type` without specifying `name` returns an `InvalidInput` error.


## `identifier = ::String`
*Weighted resource record sets only:* If results were truncated for a given DNS name and type, specify the value of `NextRecordIdentifier` from the previous response to get the next resource record set that has the current DNS name and type.


## `maxitems = ::String`
(Optional) The maximum number of resource records sets to include in the response body for this request. If the response includes more than `maxitems` resource record sets, the value of the `IsTruncated` element in the response is `true`, and the values of the `NextRecordName` and `NextRecordType` elements in the response identify the first resource record set in the next group of `maxitems` resource record sets.




# Returns

`ListResourceRecordSetsResponse`

# Exceptions

`NoSuchHostedZone` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListResourceRecordSets)
"""
@inline list_resource_record_sets(aws::AWSConfig=default_aws_config(); args...) = list_resource_record_sets(aws, args)

@inline list_resource_record_sets(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/hostedzone/{Id}/rrset", args)

@inline list_resource_record_sets(args) = list_resource_record_sets(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_reusable_delegation_sets
    list_reusable_delegation_sets([::AWSConfig], arguments::Dict)
    list_reusable_delegation_sets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/delegationset", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/delegationset", <keyword arguments>)

# ListReusableDelegationSets Operation

Retrieves a list of the reusable delegation sets that are associated with the current AWS account.

# Arguments

## `marker = ::String`
If the value of `IsTruncated` in the previous response was `true`, you have more reusable delegation sets. To get another group, submit another `ListReusableDelegationSets` request.

For the value of `marker`, specify the value of `NextMarker` from the previous response, which is the ID of the first reusable delegation set that Amazon Route 53 will return if you submit another request.

If the value of `IsTruncated` in the previous response was `false`, there are no more reusable delegation sets to get.


## `maxitems = ::String`
The number of reusable delegation sets that you want Amazon Route 53 to return in the response to this request. If you specify a value greater than 100, Amazon Route 53 returns only the first 100 reusable delegation sets.




# Returns

`ListReusableDelegationSetsResponse`

# Exceptions

`InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListReusableDelegationSets)
"""
@inline list_reusable_delegation_sets(aws::AWSConfig=default_aws_config(); args...) = list_reusable_delegation_sets(aws, args)

@inline list_reusable_delegation_sets(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/delegationset", args)

@inline list_reusable_delegation_sets(args) = list_reusable_delegation_sets(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; ResourceType=, ResourceId=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/tags/{ResourceType}/{ResourceId}", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/tags/{ResourceType}/{ResourceId}", ResourceType=, ResourceId=)

# ListTagsForResource Operation

Lists tags for one health check or hosted zone.

For information about using tags for cost allocation, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html) in the *AWS Billing and Cost Management User Guide*.

# Arguments

## `ResourceType = "healthcheck" or "hostedzone"` -- *Required*
The type of the resource.

*   The resource type for health checks is `healthcheck`.

*   The resource type for hosted zones is `hostedzone`.


## `ResourceId = ::String` -- *Required*
The ID of the resource for which you want to retrieve tags.




# Returns

`ListTagsForResourceResponse`

# Exceptions

`InvalidInput`, `NoSuchHealthCheck`, `NoSuchHostedZone`, `PriorRequestNotComplete` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/tags/{ResourceType}/{ResourceId}", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_tags_for_resources
    list_tags_for_resources([::AWSConfig], arguments::Dict)
    list_tags_for_resources([::AWSConfig]; ResourceType=, ResourceIds=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/tags/{ResourceType}", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/tags/{ResourceType}", ResourceType=, ResourceIds=)

# ListTagsForResources Operation

Lists tags for up to 10 health checks or hosted zones.

For information about using tags for cost allocation, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html) in the *AWS Billing and Cost Management User Guide*.

# Arguments

## `ResourceType = "healthcheck" or "hostedzone"` -- *Required*
The type of the resources.

*   The resource type for health checks is `healthcheck`.

*   The resource type for hosted zones is `hostedzone`.


## `ResourceIds = [::String, ...]` -- *Required*
A complex type that contains the ResourceId element for each resource for which you want to get a list of tags.




# Returns

`ListTagsForResourcesResponse`

# Exceptions

`InvalidInput`, `NoSuchHealthCheck`, `NoSuchHostedZone`, `PriorRequestNotComplete` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListTagsForResources)
"""
@inline list_tags_for_resources(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resources(aws, args)

@inline list_tags_for_resources(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/tags/{ResourceType}", args)

@inline list_tags_for_resources(args) = list_tags_for_resources(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_traffic_policies
    list_traffic_policies([::AWSConfig], arguments::Dict)
    list_traffic_policies([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicies", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicies", <keyword arguments>)

# ListTrafficPolicies Operation

Gets information about the latest version for every traffic policy that is associated with the current AWS account. Policies are listed in the order in which they were created.

# Arguments

## `trafficpolicyid = ::String`
(Conditional) For your first request to `ListTrafficPolicies`, don't include the `TrafficPolicyIdMarker` parameter.

If you have more traffic policies than the value of `MaxItems`, `ListTrafficPolicies` returns only the first `MaxItems` traffic policies. To get the next group of policies, submit another request to `ListTrafficPolicies`. For the value of `TrafficPolicyIdMarker`, specify the value of `TrafficPolicyIdMarker` that was returned in the previous response.


## `maxitems = ::String`
(Optional) The maximum number of traffic policies that you want Amazon Route 53 to return in response to this request. If you have more than `MaxItems` traffic policies, the value of `IsTruncated` in the response is `true`, and the value of `TrafficPolicyIdMarker` is the ID of the first traffic policy that Amazon Route 53 will return if you submit another request.




# Returns

`ListTrafficPoliciesResponse`

# Exceptions

`InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListTrafficPolicies)
"""
@inline list_traffic_policies(aws::AWSConfig=default_aws_config(); args...) = list_traffic_policies(aws, args)

@inline list_traffic_policies(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/trafficpolicies", args)

@inline list_traffic_policies(args) = list_traffic_policies(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_traffic_policy_instances
    list_traffic_policy_instances([::AWSConfig], arguments::Dict)
    list_traffic_policy_instances([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicyinstances", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicyinstances", <keyword arguments>)

# ListTrafficPolicyInstances Operation

Gets information about the traffic policy instances that you created by using the current AWS account.

**Note**
> After you submit an `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the `State` response element.

Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the `MaxItems` parameter to list them in groups of up to 100.

# Arguments

## `hostedzoneid = ::String`
If the value of `IsTruncated` in the previous response was `true`, you have more traffic policy instances. To get more traffic policy instances, submit another `ListTrafficPolicyInstances` request. For the value of `HostedZoneId`, specify the value of `HostedZoneIdMarker` from the previous response, which is the hosted zone ID of the first traffic policy instance in the next group of traffic policy instances.

If the value of `IsTruncated` in the previous response was `false`, there are no more traffic policy instances to get.


## `trafficpolicyinstancename = ::String`
If the value of `IsTruncated` in the previous response was `true`, you have more traffic policy instances. To get more traffic policy instances, submit another `ListTrafficPolicyInstances` request. For the value of `trafficpolicyinstancename`, specify the value of `TrafficPolicyInstanceNameMarker` from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances.

If the value of `IsTruncated` in the previous response was `false`, there are no more traffic policy instances to get.


## `trafficpolicyinstancetype = "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA" or "CAA"`
If the value of `IsTruncated` in the previous response was `true`, you have more traffic policy instances. To get more traffic policy instances, submit another `ListTrafficPolicyInstances` request. For the value of `trafficpolicyinstancetype`, specify the value of `TrafficPolicyInstanceTypeMarker` from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances.

If the value of `IsTruncated` in the previous response was `false`, there are no more traffic policy instances to get.


## `maxitems = ::String`
The maximum number of traffic policy instances that you want Amazon Route 53 to return in response to a `ListTrafficPolicyInstances` request. If you have more than `MaxItems` traffic policy instances, the value of the `IsTruncated` element in the response is `true`, and the values of `HostedZoneIdMarker`, `TrafficPolicyInstanceNameMarker`, and `TrafficPolicyInstanceTypeMarker` represent the first traffic policy instance in the next group of `MaxItems` traffic policy instances.




# Returns

`ListTrafficPolicyInstancesResponse`

# Exceptions

`InvalidInput` or `NoSuchTrafficPolicyInstance`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListTrafficPolicyInstances)
"""
@inline list_traffic_policy_instances(aws::AWSConfig=default_aws_config(); args...) = list_traffic_policy_instances(aws, args)

@inline list_traffic_policy_instances(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/trafficpolicyinstances", args)

@inline list_traffic_policy_instances(args) = list_traffic_policy_instances(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_traffic_policy_instances_by_hosted_zone
    list_traffic_policy_instances_by_hosted_zone([::AWSConfig], arguments::Dict)
    list_traffic_policy_instances_by_hosted_zone([::AWSConfig]; id=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicyinstances/hostedzone", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicyinstances/hostedzone", id=, <keyword arguments>)

# ListTrafficPolicyInstancesByHostedZone Operation

Gets information about the traffic policy instances that you created in a specified hosted zone.

**Note**
> After you submit a `CreateTrafficPolicyInstance` or an `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the `State` response element.

Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the `MaxItems` parameter to list them in groups of up to 100.

# Arguments

## `id = ::String` -- *Required*
The ID of the hosted zone that you want to list traffic policy instances for.


## `trafficpolicyinstancename = ::String`
If the value of `IsTruncated` in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another `ListTrafficPolicyInstances` request. For the value of `trafficpolicyinstancename`, specify the value of `TrafficPolicyInstanceNameMarker` from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances.

If the value of `IsTruncated` in the previous response was `false`, there are no more traffic policy instances to get.


## `trafficpolicyinstancetype = "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA" or "CAA"`
If the value of `IsTruncated` in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another `ListTrafficPolicyInstances` request. For the value of `trafficpolicyinstancetype`, specify the value of `TrafficPolicyInstanceTypeMarker` from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances.

If the value of `IsTruncated` in the previous response was `false`, there are no more traffic policy instances to get.


## `maxitems = ::String`
The maximum number of traffic policy instances to be included in the response body for this request. If you have more than `MaxItems` traffic policy instances, the value of the `IsTruncated` element in the response is `true`, and the values of `HostedZoneIdMarker`, `TrafficPolicyInstanceNameMarker`, and `TrafficPolicyInstanceTypeMarker` represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.




# Returns

`ListTrafficPolicyInstancesByHostedZoneResponse`

# Exceptions

`InvalidInput`, `NoSuchTrafficPolicyInstance` or `NoSuchHostedZone`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListTrafficPolicyInstancesByHostedZone)
"""
@inline list_traffic_policy_instances_by_hosted_zone(aws::AWSConfig=default_aws_config(); args...) = list_traffic_policy_instances_by_hosted_zone(aws, args)

@inline list_traffic_policy_instances_by_hosted_zone(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/trafficpolicyinstances/hostedzone", args)

@inline list_traffic_policy_instances_by_hosted_zone(args) = list_traffic_policy_instances_by_hosted_zone(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_traffic_policy_instances_by_policy
    list_traffic_policy_instances_by_policy([::AWSConfig], arguments::Dict)
    list_traffic_policy_instances_by_policy([::AWSConfig]; id=, version=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicyinstances/trafficpolicy", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicyinstances/trafficpolicy", id=, version=, <keyword arguments>)

# ListTrafficPolicyInstancesByPolicy Operation

Gets information about the traffic policy instances that you created by using a specify traffic policy version.

**Note**
> After you submit a `CreateTrafficPolicyInstance` or an `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the `State` response element.

Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the `MaxItems` parameter to list them in groups of up to 100.

# Arguments

## `id = ::String` -- *Required*
The ID of the traffic policy for which you want to list traffic policy instances.


## `version = ::Int` -- *Required*
The version of the traffic policy for which you want to list traffic policy instances. The version must be associated with the traffic policy that is specified by `TrafficPolicyId`.


## `hostedzoneid = ::String`
If the value of `IsTruncated` in the previous response was `true`, you have more traffic policy instances. To get more traffic policy instances, submit another `ListTrafficPolicyInstancesByPolicy` request.

For the value of `hostedzoneid`, specify the value of `HostedZoneIdMarker` from the previous response, which is the hosted zone ID of the first traffic policy instance that Amazon Route 53 will return if you submit another request.

If the value of `IsTruncated` in the previous response was `false`, there are no more traffic policy instances to get.


## `trafficpolicyinstancename = ::String`
If the value of `IsTruncated` in the previous response was `true`, you have more traffic policy instances. To get more traffic policy instances, submit another `ListTrafficPolicyInstancesByPolicy` request.

For the value of `trafficpolicyinstancename`, specify the value of `TrafficPolicyInstanceNameMarker` from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request.

If the value of `IsTruncated` in the previous response was `false`, there are no more traffic policy instances to get.


## `trafficpolicyinstancetype = "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA" or "CAA"`
If the value of `IsTruncated` in the previous response was `true`, you have more traffic policy instances. To get more traffic policy instances, submit another `ListTrafficPolicyInstancesByPolicy` request.

For the value of `trafficpolicyinstancetype`, specify the value of `TrafficPolicyInstanceTypeMarker` from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request.

If the value of `IsTruncated` in the previous response was `false`, there are no more traffic policy instances to get.


## `maxitems = ::String`
The maximum number of traffic policy instances to be included in the response body for this request. If you have more than `MaxItems` traffic policy instances, the value of the `IsTruncated` element in the response is `true`, and the values of `HostedZoneIdMarker`, `TrafficPolicyInstanceNameMarker`, and `TrafficPolicyInstanceTypeMarker` represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.




# Returns

`ListTrafficPolicyInstancesByPolicyResponse`

# Exceptions

`InvalidInput`, `NoSuchTrafficPolicyInstance` or `NoSuchTrafficPolicy`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListTrafficPolicyInstancesByPolicy)
"""
@inline list_traffic_policy_instances_by_policy(aws::AWSConfig=default_aws_config(); args...) = list_traffic_policy_instances_by_policy(aws, args)

@inline list_traffic_policy_instances_by_policy(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/trafficpolicyinstances/trafficpolicy", args)

@inline list_traffic_policy_instances_by_policy(args) = list_traffic_policy_instances_by_policy(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_traffic_policy_versions
    list_traffic_policy_versions([::AWSConfig], arguments::Dict)
    list_traffic_policy_versions([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicies/{Id}/versions", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/trafficpolicies/{Id}/versions", Id=, <keyword arguments>)

# ListTrafficPolicyVersions Operation

Gets information about all of the versions for a specified traffic policy.

Traffic policy versions are listed in numerical order by `VersionNumber`.

# Arguments

## `Id = ::String` -- *Required*
Specify the value of `Id` of the traffic policy for which you want to list all versions.


## `trafficpolicyversion = ::String`
For your first request to `ListTrafficPolicyVersions`, don't include the `TrafficPolicyVersionMarker` parameter.

If you have more traffic policy versions than the value of `MaxItems`, `ListTrafficPolicyVersions` returns only the first group of `MaxItems` versions. To get more traffic policy versions, submit another `ListTrafficPolicyVersions` request. For the value of `TrafficPolicyVersionMarker`, specify the value of `TrafficPolicyVersionMarker` in the previous response.


## `maxitems = ::String`
The maximum number of traffic policy versions that you want Amazon Route 53 to include in the response body for this request. If the specified traffic policy has more than `MaxItems` versions, the value of `IsTruncated` in the response is `true`, and the value of the `TrafficPolicyVersionMarker` element is the ID of the first version that Amazon Route 53 will return if you submit another request.




# Returns

`ListTrafficPolicyVersionsResponse`

# Exceptions

`InvalidInput` or `NoSuchTrafficPolicy`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListTrafficPolicyVersions)
"""
@inline list_traffic_policy_versions(aws::AWSConfig=default_aws_config(); args...) = list_traffic_policy_versions(aws, args)

@inline list_traffic_policy_versions(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/trafficpolicies/{Id}/versions", args)

@inline list_traffic_policy_versions(args) = list_traffic_policy_versions(default_aws_config(), args)


"""
    using AWSSDK.Route53.list_vpcassociation_authorizations
    list_vpcassociation_authorizations([::AWSConfig], arguments::Dict)
    list_vpcassociation_authorizations([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzone/{Id}/authorizevpcassociation", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/hostedzone/{Id}/authorizevpcassociation", Id=, <keyword arguments>)

# ListVPCAssociationAuthorizations Operation

Gets a list of the VPCs that were created by other accounts and that can be associated with a specified hosted zone because you've submitted one or more `CreateVPCAssociationAuthorization` requests.

The response includes a `VPCs` element with a `VPC` child element for each VPC that can be associated with the hosted zone.

# Arguments

## `Id = ::String` -- *Required*
The ID of the hosted zone for which you want a list of VPCs that can be associated with the hosted zone.


## `nexttoken = ::String`
*Optional*: If a response includes a `NextToken` element, there are more VPCs that can be associated with the specified hosted zone. To get the next page of results, submit another request, and include the value of `NextToken` from the response in the `nexttoken` parameter in another `ListVPCAssociationAuthorizations` request.


## `maxresults = ::String`
*Optional*: An integer that specifies the maximum number of VPCs that you want Amazon Route 53 to return. If you don't specify a value for `MaxResults`, Amazon Route 53 returns up to 50 VPCs per page.




# Returns

`ListVPCAssociationAuthorizationsResponse`

# Exceptions

`NoSuchHostedZone`, `InvalidInput` or `InvalidPaginationToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/ListVPCAssociationAuthorizations)
"""
@inline list_vpcassociation_authorizations(aws::AWSConfig=default_aws_config(); args...) = list_vpcassociation_authorizations(aws, args)

@inline list_vpcassociation_authorizations(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/hostedzone/{Id}/authorizevpcassociation", args)

@inline list_vpcassociation_authorizations(args) = list_vpcassociation_authorizations(default_aws_config(), args)


"""
    using AWSSDK.Route53.test_dnsanswer
    test_dnsanswer([::AWSConfig], arguments::Dict)
    test_dnsanswer([::AWSConfig]; hostedzoneid=, recordname=, recordtype=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "GET", "/2013-04-01/testdnsanswer", arguments::Dict)
    route53([::AWSConfig], "GET", "/2013-04-01/testdnsanswer", hostedzoneid=, recordname=, recordtype=, <keyword arguments>)

# TestDNSAnswer Operation

Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type. You can optionally specify the IP address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet mask.

# Arguments

## `hostedzoneid = ::String` -- *Required*
The ID of the hosted zone that you want Amazon Route 53 to simulate a query for.


## `recordname = ::String` -- *Required*
The name of the resource record set that you want Amazon Route 53 to simulate a query for.


## `recordtype = "SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA" or "CAA"` -- *Required*
The type of the resource record set.


## `resolverip = ::String`
If you want to simulate a request from a specific DNS resolver, specify the IP address for that resolver. If you omit this value, `TestDnsAnswer` uses the IP address of a DNS resolver in the AWS US East (N. Virginia) Region (`us-east-1`).


## `edns0clientsubnetip = ::String`
If the resolver that you specified for resolverip supports EDNS0, specify the IPv4 or IPv6 address of a client in the applicable location, for example, `192.0.2.44` or `2001:db8:85a3::8a2e:370:7334`.


## `edns0clientsubnetmask = ::String`
If you specify an IP address for `edns0clientsubnetip`, you can optionally specify the number of bits of the IP address that you want the checking tool to include in the DNS query. For example, if you specify `192.0.2.44` for `edns0clientsubnetip` and `24` for `edns0clientsubnetmask`, the checking tool will simulate a request from 192.0.2.0/24. The default value is 24 bits for IPv4 addresses and 64 bits for IPv6 addresses.




# Returns

`TestDNSAnswerResponse`

# Exceptions

`NoSuchHostedZone` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/TestDNSAnswer)
"""
@inline test_dnsanswer(aws::AWSConfig=default_aws_config(); args...) = test_dnsanswer(aws, args)

@inline test_dnsanswer(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "GET", "/2013-04-01/testdnsanswer", args)

@inline test_dnsanswer(args) = test_dnsanswer(default_aws_config(), args)


"""
    using AWSSDK.Route53.update_health_check
    update_health_check([::AWSConfig], arguments::Dict)
    update_health_check([::AWSConfig]; HealthCheckId=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/healthcheck/{HealthCheckId}", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/healthcheck/{HealthCheckId}", HealthCheckId=, <keyword arguments>)

# UpdateHealthCheck Operation

Updates an existing health check. Note that some values can't be updated.

For more information about updating health checks, see [Creating, Updating, and Deleting Health Checks](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html) in the *Amazon Route 53 Developer Guide*.

# Arguments

## `HealthCheckId = ::String` -- *Required*
The ID for the health check for which you want detailed information. When you created the health check, `CreateHealthCheck` returned the ID in the response, in the `HealthCheckId` element.


## `HealthCheckVersion = ::Int`
A sequential counter that Amazon Route 53 sets to `1` when you create a health check and increments by 1 each time you update settings for the health check.

We recommend that you use `GetHealthCheck` or `ListHealthChecks` to get the current value of `HealthCheckVersion` for the health check that you want to update, and that you include that value in your `UpdateHealthCheck` request. This prevents Amazon Route 53 from overwriting an intervening update:

*   If the value in the `UpdateHealthCheck` request matches the value of `HealthCheckVersion` in the health check, Amazon Route 53 updates the health check with the new settings.

*   If the value of `HealthCheckVersion` in the health check is greater, the health check was changed after you got the version number. Amazon Route 53 does not update the health check, and it returns a `HealthCheckVersionMismatch` error.


## `IPAddress = ::String`
The IPv4 or IPv6 IP address for the endpoint that you want Amazon Route 53 to perform health checks on. If you don't specify a value for `IPAddress`, Amazon Route 53 sends a DNS request to resolve the domain name that you specify in `FullyQualifiedDomainName` at the interval that you specify in `RequestInterval`. Using an IP address that is returned by DNS, Amazon Route 53 then checks the health of the endpoint.

Use one of the following formats for the value of `IPAddress`:

*   **IPv4 address**: four values between 0 and 255, separated by periods (.), for example, `192.0.2.44`.

*   **IPv6 address**: eight groups of four hexadecimal values, separated by colons (:), for example, `2001:0db8:85a3:0000:0000:abcd:0001:2345`. You can also shorten IPv6 addresses as described in RFC 5952, for example, `2001:db8:85a3::abcd:1:2345`.

If the endpoint is an EC2 instance, we recommend that you create an Elastic IP address, associate it with your EC2 instance, and specify the Elastic IP address for `IPAddress`. This ensures that the IP address of your instance never changes. For more information, see the applicable documentation:

*   Linux: [Elastic IP Addresses (EIP)](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon EC2 User Guide for Linux Instances*

*   Windows: [Elastic IP Addresses (EIP)](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-ip-addresses-eip.html) in the *Amazon EC2 User Guide for Windows Instances*

**Note**
> If a health check already has a value for `IPAddress`, you can change the value. However, you can't update an existing health check to add or remove the value of `IPAddress`.

For more information, see [UpdateHealthCheckRequest\$FullyQualifiedDomainName](@ref).

Constraints: Amazon Route 53 can't check the health of endpoints for which the IP address is in local, private, non-routable, or multicast ranges. For more information about IP addresses for which you can't create health checks, see the following documents:

*   [RFC 5735, Special Use IPv4 Addresses](https://tools.ietf.org/html/rfc5735)

*   [RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space](https://tools.ietf.org/html/rfc6598)

*   [RFC 5156, Special-Use IPv6 Addresses](https://tools.ietf.org/html/rfc5156)


## `Port = ::Int`
The port on the endpoint on which you want Amazon Route 53 to perform health checks.


## `ResourcePath = ::String`
The path that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example the file /docs/route53-health-check.html.

Specify this value only if you want to change it.


## `FullyQualifiedDomainName = ::String`
Amazon Route 53 behavior depends on whether you specify a value for `IPAddress`.

**Note**
> If a health check already has a value for `IPAddress`, you can change the value. However, you can't update an existing health check to add or remove the value of `IPAddress`.

**If you specify a value for** `IPAddress`:

Amazon Route 53 sends health check requests to the specified IPv4 or IPv6 address and passes the value of `FullyQualifiedDomainName` in the `Host` header for all health checks except TCP health checks. This is typically the fully qualified DNS name of the endpoint on which you want Amazon Route 53 to perform health checks.

When Amazon Route 53 checks the health of an endpoint, here is how it constructs the `Host` header:

*   If you specify a value of `80` for `Port` and `HTTP` or `HTTP_STR_MATCH` for `Type`, Amazon Route 53 passes the value of `FullyQualifiedDomainName` to the endpoint in the `Host` header.

*   If you specify a value of `443` for `Port` and `HTTPS` or `HTTPS_STR_MATCH` for `Type`, Amazon Route 53 passes the value of `FullyQualifiedDomainName` to the endpoint in the `Host` header.

*   If you specify another value for `Port` and any value except `TCP` for `Type`, Amazon Route 53 passes *`FullyQualifiedDomainName`:`Port`* to the endpoint in the `Host` header.

If you don't specify a value for `FullyQualifiedDomainName`, Amazon Route 53 substitutes the value of `IPAddress` in the `Host` header in each of the above cases.

**If you don't specify a value for** `IPAddress`:

If you don't specify a value for `IPAddress`, Amazon Route 53 sends a DNS request to the domain that you specify in `FullyQualifiedDomainName` at the interval you specify in `RequestInterval`. Using an IPv4 address that is returned by DNS, Amazon Route 53 then checks the health of the endpoint.

**Note**
> If you don't specify a value for `IPAddress`, Amazon Route 53 uses only IPv4 to send health checks to the endpoint. If there's no resource record set with a type of A for the name that you specify for `FullyQualifiedDomainName`, the health check fails with a "DNS resolution failed" error.

If you want to check the health of weighted, latency, or failover resource record sets and you choose to specify the endpoint only by `FullyQualifiedDomainName`, we recommend that you create a separate health check for each endpoint. For example, create a health check for each HTTP server that is serving content for www.example.com. For the value of `FullyQualifiedDomainName`, specify the domain name of the server (such as `us-east-2-www.example.com`), not the name of the resource record sets (www.example.com).

**Important**
> In this configuration, if the value of `FullyQualifiedDomainName` matches the name of the resource record sets and you then associate the health check with those resource record sets, health check results will be unpredictable.

In addition, if the value of `Type` is `HTTP`, `HTTPS`, `HTTP_STR_MATCH`, or `HTTPS_STR_MATCH`, Amazon Route 53 passes the value of `FullyQualifiedDomainName` in the `Host` header, as it does when you specify a value for `IPAddress`. If the value of `Type` is `TCP`, Amazon Route 53 doesn't pass a `Host` header.


## `SearchString = ::String`
If the value of `Type` is `HTTP_STR_MATCH` or `HTTP_STR_MATCH`, the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the response body, Amazon Route 53 considers the resource healthy. (You can't change the value of `Type` when you update a health check.)


## `FailureThreshold = ::Int`
The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see [How Amazon Route 53 Determines Whether an Endpoint Is Healthy](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html) in the *Amazon Route 53 Developer Guide*.

If you don't specify a value for `FailureThreshold`, the default value is three health checks.


## `Inverted = ::Bool`
Specify whether you want Amazon Route 53 to invert the status of a health check, for example, to consider a health check unhealthy when it otherwise would be considered healthy.


## `HealthThreshold = ::Int`
The number of child health checks that are associated with a `CALCULATED` health that Amazon Route 53 must consider healthy for the `CALCULATED` health check to be considered healthy. To specify the child health checks that you want to associate with a `CALCULATED` health check, use the `ChildHealthChecks` and `ChildHealthCheck` elements.

Note the following:

*   If you specify a number greater than the number of child health checks, Amazon Route 53 always considers this health check to be unhealthy.

*   If you specify `0`, Amazon Route 53 always considers this health check to be healthy.


## `ChildHealthChecks = [::String, ...]`
A complex type that contains one `ChildHealthCheck` element for each health check that you want to associate with a `CALCULATED` health check.


## `EnableSNI = ::Bool`
Specify whether you want Amazon Route 53 to send the value of `FullyQualifiedDomainName` to the endpoint in the `client_hello` message during `TLS` negotiation. This allows the endpoint to respond to `HTTPS` health check requests with the applicable SSL/TLS certificate.

Some endpoints require that HTTPS requests include the host name in the `client_hello` message. If you don't enable SNI, the status of the health check will be SSL alert `handshake_failure`. A health check can also have that status for other reasons. If SNI is enabled and you're still getting the error, check the SSL/TLS configuration on your endpoint and confirm that your certificate is valid.

The SSL/TLS certificate on your endpoint includes a domain name in the `Common Name` field and possibly several more in the `Subject Alternative Names` field. One of the domain names in the certificate should match the value that you specify for `FullyQualifiedDomainName`. If the endpoint responds to the `client_hello` message with a certificate that does not include the domain name that you specified in `FullyQualifiedDomainName`, a health checker will retry the handshake. In the second attempt, the health checker will omit `FullyQualifiedDomainName` from the `client_hello` message.


## `Regions = ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1" or "sa-east-1", ...]`
A complex type that contains one `Region` element for each region that you want Amazon Route 53 health checkers to check the specified endpoint from.


## `AlarmIdentifier = [ ... ]`

```
 AlarmIdentifier = [
        "Region" => <required> "us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3" or "sa-east-1",
        "Name" => <required> ::String
    ]
```

## `InsufficientDataHealthStatus = "Healthy", "Unhealthy" or "LastKnownStatus"`
When CloudWatch has insufficient data about the metric to determine the alarm state, the status that you want Amazon Route 53 to assign to the health check:

*   `Healthy`: Amazon Route 53 considers the health check to be healthy.

*   `Unhealthy`: Amazon Route 53 considers the health check to be unhealthy.

*   `LastKnownStatus`: Amazon Route 53 uses the status of the health check from the last time CloudWatch had sufficient data to determine the alarm state. For new health checks that have no last known status, the default status for the health check is healthy.


## `ResetElements = ["FullyQualifiedDomainName", "Regions", "ResourcePath" or "ChildHealthChecks", ...]`
A complex type that contains one `ResettableElementName` element for each element that you want to reset to the default value. Valid values for `ResettableElementName` include the following:

*   `ChildHealthChecks`: Amazon Route 53 resets [HealthCheckConfig\$ChildHealthChecks](@ref) to null.

*   `FullyQualifiedDomainName`: Amazon Route 53 resets [HealthCheckConfig\$FullyQualifiedDomainName](@ref) to null.

*   `Regions`: Amazon Route 53 resets the [HealthCheckConfig\$Regions](@ref) list to the default set of regions.

*   `ResourcePath`: Amazon Route 53 resets [HealthCheckConfig\$ResourcePath](@ref) to null.




# Returns

`UpdateHealthCheckResponse`

# Exceptions

`NoSuchHealthCheck`, `InvalidInput` or `HealthCheckVersionMismatch`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/UpdateHealthCheck)
"""
@inline update_health_check(aws::AWSConfig=default_aws_config(); args...) = update_health_check(aws, args)

@inline update_health_check(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/healthcheck/{HealthCheckId}", args)

@inline update_health_check(args) = update_health_check(default_aws_config(), args)


"""
    using AWSSDK.Route53.update_hosted_zone_comment
    update_hosted_zone_comment([::AWSConfig], arguments::Dict)
    update_hosted_zone_comment([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone/{Id}", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/hostedzone/{Id}", Id=, <keyword arguments>)

# UpdateHostedZoneComment Operation

Updates the comment for a specified hosted zone.

# Arguments

## `Id = ::String` -- *Required*
The ID for the hosted zone that you want to update the comment for.


## `Comment = ::String`
The new comment for the hosted zone. If you don't specify a value for `Comment`, Amazon Route 53 deletes the existing value of the `Comment` element, if any.




# Returns

`UpdateHostedZoneCommentResponse`

# Exceptions

`NoSuchHostedZone` or `InvalidInput`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/UpdateHostedZoneComment)
"""
@inline update_hosted_zone_comment(aws::AWSConfig=default_aws_config(); args...) = update_hosted_zone_comment(aws, args)

@inline update_hosted_zone_comment(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/hostedzone/{Id}", args)

@inline update_hosted_zone_comment(args) = update_hosted_zone_comment(default_aws_config(), args)


"""
    using AWSSDK.Route53.update_traffic_policy_comment
    update_traffic_policy_comment([::AWSConfig], arguments::Dict)
    update_traffic_policy_comment([::AWSConfig]; Id=, Version=, Comment=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/trafficpolicy/{Id}/{Version}", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/trafficpolicy/{Id}/{Version}", Id=, Version=, Comment=)

# UpdateTrafficPolicyComment Operation

Updates the comment for a specified traffic policy version.

# Arguments

## `Id = ::String` -- *Required*
The value of `Id` for the traffic policy that you want to update the comment for.


## `Version = ::Int` -- *Required*
The value of `Version` for the traffic policy that you want to update the comment for.


## `Comment = ::String` -- *Required*
The new comment for the specified traffic policy and version.




# Returns

`UpdateTrafficPolicyCommentResponse`

# Exceptions

`InvalidInput`, `NoSuchTrafficPolicy` or `ConcurrentModification`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/UpdateTrafficPolicyComment)
"""
@inline update_traffic_policy_comment(aws::AWSConfig=default_aws_config(); args...) = update_traffic_policy_comment(aws, args)

@inline update_traffic_policy_comment(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/trafficpolicy/{Id}/{Version}", args)

@inline update_traffic_policy_comment(args) = update_traffic_policy_comment(default_aws_config(), args)


"""
    using AWSSDK.Route53.update_traffic_policy_instance
    update_traffic_policy_instance([::AWSConfig], arguments::Dict)
    update_traffic_policy_instance([::AWSConfig]; Id=, TTL=, TrafficPolicyId=, TrafficPolicyVersion=)

    using AWSCore.Services.route53
    route53([::AWSConfig], "POST", "/2013-04-01/trafficpolicyinstance/{Id}", arguments::Dict)
    route53([::AWSConfig], "POST", "/2013-04-01/trafficpolicyinstance/{Id}", Id=, TTL=, TrafficPolicyId=, TrafficPolicyVersion=)

# UpdateTrafficPolicyInstance Operation

Updates the resource record sets in a specified hosted zone that were created based on the settings in a specified traffic policy version.

When you update a traffic policy instance, Amazon Route 53 continues to respond to DNS queries for the root resource record set name (such as example.com) while it replaces one group of resource record sets with another. Amazon Route 53 performs the following operations:

1.  Amazon Route 53 creates a new group of resource record sets based on the specified traffic policy. This is true regardless of how significant the differences are between the existing resource record sets and the new resource record sets.

2.  When all of the new resource record sets have been created, Amazon Route 53 starts to respond to DNS queries for the root resource record set name (such as example.com) by using the new resource record sets.

3.  Amazon Route 53 deletes the old group of resource record sets that are associated with the root resource record set name.

# Arguments

## `Id = ::String` -- *Required*
The ID of the traffic policy instance that you want to update.


## `TTL = ::Int` -- *Required*
The TTL that you want Amazon Route 53 to assign to all of the updated resource record sets.


## `TrafficPolicyId = ::String` -- *Required*
The ID of the traffic policy that you want Amazon Route 53 to use to update resource record sets for the specified traffic policy instance.


## `TrafficPolicyVersion = ::Int` -- *Required*
The version of the traffic policy that you want Amazon Route 53 to use to update resource record sets for the specified traffic policy instance.




# Returns

`UpdateTrafficPolicyInstanceResponse`

# Exceptions

`InvalidInput`, `NoSuchTrafficPolicy`, `NoSuchTrafficPolicyInstance`, `PriorRequestNotComplete` or `ConflictingTypes`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/route53-2013-04-01/UpdateTrafficPolicyInstance)
"""
@inline update_traffic_policy_instance(aws::AWSConfig=default_aws_config(); args...) = update_traffic_policy_instance(aws, args)

@inline update_traffic_policy_instance(aws::AWSConfig, args) = AWSCore.Services.route53(aws, "POST", "/2013-04-01/trafficpolicyinstance/{Id}", args)

@inline update_traffic_policy_instance(args) = update_traffic_policy_instance(default_aws_config(), args)




end # module Route53


#==============================================================================#
# End of file
#==============================================================================#
