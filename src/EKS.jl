#==============================================================================#
# EKS.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/eks-2017-11-01.normal.json
#==============================================================================#

__precompile__()

module EKS

using AWSCore


"""
    using AWSSDK.EKS.create_cluster
    create_cluster([::AWSConfig], arguments::Dict)
    create_cluster([::AWSConfig]; name=, roleArn=, resourcesVpcConfig=, <keyword arguments>)

    using AWSCore.Services.eks
    eks([::AWSConfig], "POST", "/clusters", arguments::Dict)
    eks([::AWSConfig], "POST", "/clusters", name=, roleArn=, resourcesVpcConfig=, <keyword arguments>)

# CreateCluster Operation

Creates an Amazon EKS control plane.

The Amazon EKS control plane consists of control plane instances that run the Kubernetes software, like `etcd` and the API server. The control plane runs in an account managed by AWS, and the Kubernetes API is exposed via the Amazon EKS API server endpoint.

Amazon EKS worker nodes run in your AWS account and connect to your cluster's control plane via the Kubernetes API server endpoint and a certificate file that is created for your cluster.

The cluster control plane is provisioned across multiple Availability Zones and fronted by an Elastic Load Balancing Network Load Balancer. Amazon EKS also provisions elastic network interfaces in your VPC subnets to provide connectivity from the control plane instances to the worker nodes (for example, to support `kubectl exec`, `logs`, and `proxy` data flows).

After you create an Amazon EKS cluster, you must configure your Kubernetes tooling to communicate with the API server and launch worker nodes into your cluster. For more information, see [Managing Cluster Authentication](http://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html) and [Launching Amazon EKS Worker Nodes](http://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html)in the *Amazon EKS User Guide*.

# Arguments

## `name = ::String` -- *Required*
The unique name to give to your cluster.


## `version = ::String`
The desired Kubernetes version for your cluster. If you do not specify a value here, the latest version available in Amazon EKS is used.


## `roleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the IAM role that provides permissions for Amazon EKS to make calls to other AWS API operations on your behalf. For more information, see [Amazon EKS Service IAM Role](http://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html) in the **Amazon EKS User Guide**


## `resourcesVpcConfig = [ ... ]` -- *Required*
The VPC subnets and security groups used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see [Cluster VPC Considerations](http://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html) and [Cluster Security Group Considerations](http://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html) in the *Amazon EKS User Guide*.
```
 resourcesVpcConfig = [
        "subnetIds" => <required> [::String, ...],
        "securityGroupIds" =>  [::String, ...]
    ]
```

## `clientRequestToken = ::String`
Unique, case-sensitive identifier you provide to ensure the idempotency of the request.




# Returns

`CreateClusterResponse`

# Exceptions

`ResourceInUseException`, `ResourceLimitExceededException`, `InvalidParameterException`, `ClientException`, `ServerException`, `ServiceUnavailableException` or `UnsupportedAvailabilityZoneException`.

# Example: To create a new cluster

The following example creates an Amazon EKS cluster called prod.

Input:
```
[
    "version" => "1.10",
    "name" => "prod",
    "clientRequestToken" => "1d2129a1-3d38-460a-9756-e5b91fddb951",
    "resourcesVpcConfig" => [
        "securityGroupIds" => [
            "sg-6979fe18"
        ],
        "subnetIds" => [
            "subnet-6782e71e",
            "subnet-e7e761ac"
        ]
    ],
    "roleArn" => "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRoleForAmazonEKS-J7ONKE3BQ4PI"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/CreateCluster)
"""
@inline create_cluster(aws::AWSConfig=default_aws_config(); args...) = create_cluster(aws, args)

@inline create_cluster(aws::AWSConfig, args) = AWSCore.Services.eks(aws, "POST", "/clusters", args)

@inline create_cluster(args) = create_cluster(default_aws_config(), args)


"""
    using AWSSDK.EKS.delete_cluster
    delete_cluster([::AWSConfig], arguments::Dict)
    delete_cluster([::AWSConfig]; name=)

    using AWSCore.Services.eks
    eks([::AWSConfig], "DELETE", "/clusters/{name}", arguments::Dict)
    eks([::AWSConfig], "DELETE", "/clusters/{name}", name=)

# DeleteCluster Operation

Deletes the Amazon EKS cluster control plane.

**Note**
> If you have active services in your cluster that are associated with a load balancer, you must delete those services before deleting the cluster so that the load balancers are deleted properly. Otherwise, you can have orphaned resources in your VPC that prevent you from being able to delete the VPC. For more information, see [Deleting a Cluster](http://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html) in the *Amazon EKS User Guide*.

# Arguments

## `name = ::String` -- *Required*
The name of the cluster to delete.




# Returns

`DeleteClusterResponse`

# Exceptions

`ResourceInUseException`, `ResourceNotFoundException`, `ClientException`, `ServerException` or `ServiceUnavailableException`.

# Example: To delete a cluster

This example command deletes a cluster named `devel` in your default region.

Input:
```
[
    "name" => "devel"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DeleteCluster)
"""
@inline delete_cluster(aws::AWSConfig=default_aws_config(); args...) = delete_cluster(aws, args)

@inline delete_cluster(aws::AWSConfig, args) = AWSCore.Services.eks(aws, "DELETE", "/clusters/{name}", args)

@inline delete_cluster(args) = delete_cluster(default_aws_config(), args)


"""
    using AWSSDK.EKS.describe_cluster
    describe_cluster([::AWSConfig], arguments::Dict)
    describe_cluster([::AWSConfig]; name=)

    using AWSCore.Services.eks
    eks([::AWSConfig], "GET", "/clusters/{name}", arguments::Dict)
    eks([::AWSConfig], "GET", "/clusters/{name}", name=)

# DescribeCluster Operation

Returns descriptive information about an Amazon EKS cluster.

The API server endpoint and certificate authority data returned by this operation are required for `kubelet` and `kubectl` to communicate with your Kubernetes API server. For more information, see [Create a kubeconfig for Amazon EKS](http://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html).

**Note**
> The API server endpoint and certificate authority data are not available until the cluster reaches the `ACTIVE` state.

# Arguments

## `name = ::String` -- *Required*
The name of the cluster to describe.




# Returns

`DescribeClusterResponse`

# Exceptions

`ResourceNotFoundException`, `ClientException`, `ServerException` or `ServiceUnavailableException`.

# Example: To describe a cluster

This example command provides a description of the specified cluster in your default region.

Input:
```
[
    "name" => "devel"
]
```

Output:
```
Dict(
    "cluster" => Dict(
        "version" => "1.10",
        "name" => "devel",
        "arn" => "arn:aws:eks:us-west-2:012345678910:cluster/devel",
        "certificateAuthority" => Dict(
            "data" => "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUN5RENDQWJDZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRFNE1EVXpNVEl6TVRFek1Wb1hEVEk0TURVeU9ESXpNVEV6TVZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTTZWCjVUaG4rdFcySm9Xa2hQMzRlVUZMNitaRXJOZGIvWVdrTmtDdWNGS2RaaXl2TjlMVmdvUmV2MjlFVFZlN1ZGbSsKUTJ3ZURyRXJiQyt0dVlibkFuN1ZLYmE3ay9hb1BHekZMdmVnb0t6b0M1N2NUdGVwZzRIazRlK2tIWHNaME10MApyb3NzcjhFM1ROeExETnNJTThGL1cwdjhsTGNCbWRPcjQyV2VuTjFHZXJnaDNSZ2wzR3JIazBnNTU0SjFWenJZCm9hTi8zODFUczlOTFF2QTBXb0xIcjBFRlZpTFdSZEoyZ3lXaC9ybDVyOFNDOHZaQXg1YW1BU0hVd01aTFpWRC8KTDBpOW4wRVM0MkpVdzQyQmxHOEdpd3NhTkJWV3lUTHZKclNhRXlDSHFtVVZaUTFDZkFXUjl0L3JleVVOVXM3TApWV1FqM3BFbk9RMitMSWJrc0RzQ0F3RUFBYU1qTUNFd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQkFNZ3RsQ1dIQ2U2YzVHMXl2YlFTS0Q4K2hUalkKSm1NSG56L2EvRGt0WG9YUjFVQzIrZUgzT1BZWmVjRVZZZHVaSlZCckNNQ2VWR0ZkeWdBYlNLc1FxWDg0S2RXbAp1MU5QaERDSmEyRHliN2pVMUV6VThTQjFGZUZ5ZFE3a0hNS1E1blpBRVFQOTY4S01hSGUrSm0yQ2x1UFJWbEJVCjF4WlhTS1gzTVZ0K1Q0SU1EV2d6c3JRSjVuQkRjdEtLcUZtM3pKdVVubHo5ZEpVckdscEltMjVJWXJDckxYUFgKWkUwRUtRNWEzMHhkVWNrTHRGQkQrOEtBdFdqSS9yZUZPNzM1YnBMdVoyOTBaNm42QlF3elRrS0p4cnhVc3QvOAppNGsxcnlsaUdWMm5SSjBUYjNORkczNHgrYWdzYTRoSTFPbU90TFM0TmgvRXJxT3lIUXNDc2hEQUtKUT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
        ),
        "createdAt" => 1.527807879988e9,
        "endpoint" => "https://A0DCCD80A04F01705DD065655C30CC3D.yl4.us-west-2.eks.amazonaws.com",
        "resourcesVpcConfig" => Dict(
            "securityGroupIds" => [
                "sg-6979fe18"
            ],
            "subnetIds" => [
                "subnet-6782e71e",
                "subnet-e7e761ac"
            ],
            "vpcId" => "vpc-950809ec"
        ),
        "roleArn" => "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRoleForAmazonEKS-J7ONKE3BQ4PI",
        "status" => "ACTIVE"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/DescribeCluster)
"""
@inline describe_cluster(aws::AWSConfig=default_aws_config(); args...) = describe_cluster(aws, args)

@inline describe_cluster(aws::AWSConfig, args) = AWSCore.Services.eks(aws, "GET", "/clusters/{name}", args)

@inline describe_cluster(args) = describe_cluster(default_aws_config(), args)


"""
    using AWSSDK.EKS.list_clusters
    list_clusters([::AWSConfig], arguments::Dict)
    list_clusters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.eks
    eks([::AWSConfig], "GET", "/clusters", arguments::Dict)
    eks([::AWSConfig], "GET", "/clusters", <keyword arguments>)

# ListClusters Operation

Lists the Amazon EKS clusters in your AWS account in the specified region.

# Arguments

## `maxResults = ::Int`
The maximum number of cluster results returned by `ListClusters` in paginated output. When this parameter is used, `ListClusters` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `ListClusters` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `ListClusters` returns up to 100 results and a `nextToken` value if applicable.


## `nextToken = ::String`
The `nextToken` value returned from a previous paginated `ListClusters` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value.

**Note**
> This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.




# Returns

`ListClustersResponse`

# Exceptions

`InvalidParameterException`, `ClientException`, `ServerException` or `ServiceUnavailableException`.

# Example: To list your available clusters

This example command lists all of your available clusters in your default region.

Input:
```
[

]
```

Output:
```
Dict(
    "clusters" => [
        "devel",
        "prod"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01/ListClusters)
"""
@inline list_clusters(aws::AWSConfig=default_aws_config(); args...) = list_clusters(aws, args)

@inline list_clusters(aws::AWSConfig, args) = AWSCore.Services.eks(aws, "GET", "/clusters", args)

@inline list_clusters(args) = list_clusters(default_aws_config(), args)




end # module EKS


#==============================================================================#
# End of file
#==============================================================================#
