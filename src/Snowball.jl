#==============================================================================#
# Snowball.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/snowball-2016-06-30.normal.json
#==============================================================================#

__precompile__()

module Snowball

using AWSCore


"""
    using AWSSDK.Snowball.cancel_cluster
    cancel_cluster([::AWSConfig], arguments::Dict)
    cancel_cluster([::AWSConfig]; ClusterId=)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "CancelCluster", arguments::Dict)
    snowball([::AWSConfig], "CancelCluster", ClusterId=)

# CancelCluster Operation

Cancels a cluster job. You can only cancel a cluster job while it's in the `AwaitingQuorum` status. You'll have at least an hour after creating a cluster job to cancel it.

# Arguments

## `ClusterId = ::String` -- *Required*
The 39-character ID for the cluster that you want to cancel, for example `CID123e4567-e89b-12d3-a456-426655440000`.




# Returns

`CancelClusterResult`

# Exceptions

`KMSRequestFailedException`, `InvalidJobStateException` or `InvalidResourceException`.

# Example: To cancel a cluster job

This operation cancels a cluster job. You can only cancel a cluster job while it's in the AwaitingQuorum status.

Input:
```
[
    "ClusterId" => "CID123e4567-e89b-12d3-a456-426655440000"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CancelCluster)
"""
@inline cancel_cluster(aws::AWSConfig=default_aws_config(); args...) = cancel_cluster(aws, args)

@inline cancel_cluster(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "CancelCluster", args)

@inline cancel_cluster(args) = cancel_cluster(default_aws_config(), args)


"""
    using AWSSDK.Snowball.cancel_job
    cancel_job([::AWSConfig], arguments::Dict)
    cancel_job([::AWSConfig]; JobId=)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "CancelJob", arguments::Dict)
    snowball([::AWSConfig], "CancelJob", JobId=)

# CancelJob Operation

Cancels the specified job. You can only cancel a job before its `JobState` value changes to `PreparingAppliance`. Requesting the `ListJobs` or `DescribeJob` action returns a job's `JobState` as part of the response element data returned.

# Arguments

## `JobId = ::String` -- *Required*
The 39-character job ID for the job that you want to cancel, for example `JID123e4567-e89b-12d3-a456-426655440000`.




# Returns

`CancelJobResult`

# Exceptions

`InvalidResourceException`, `InvalidJobStateException` or `KMSRequestFailedException`.

# Example: To cancel a job for a Snowball device

This operation cancels a job. You can only cancel a job before its JobState value changes to PreparingAppliance.

Input:
```
[
    "JobId" => "JID123e4567-e89b-12d3-a456-426655440000"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CancelJob)
"""
@inline cancel_job(aws::AWSConfig=default_aws_config(); args...) = cancel_job(aws, args)

@inline cancel_job(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "CancelJob", args)

@inline cancel_job(args) = cancel_job(default_aws_config(), args)


"""
    using AWSSDK.Snowball.create_address
    create_address([::AWSConfig], arguments::Dict)
    create_address([::AWSConfig]; Address=)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "CreateAddress", arguments::Dict)
    snowball([::AWSConfig], "CreateAddress", Address=)

# CreateAddress Operation

Creates an address for a Snowball to be shipped to. In most regions, addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.

# Arguments

## `Address = [ ... ]` -- *Required*
The address that you want the Snowball shipped to.
```
 Address = [
        "AddressId" =>  ::String,
        "Name" =>  ::String,
        "Company" =>  ::String,
        "Street1" =>  ::String,
        "Street2" =>  ::String,
        "Street3" =>  ::String,
        "City" =>  ::String,
        "StateOrProvince" =>  ::String,
        "PrefectureOrDistrict" =>  ::String,
        "Landmark" =>  ::String,
        "Country" =>  ::String,
        "PostalCode" =>  ::String,
        "PhoneNumber" =>  ::String,
        "IsRestricted" =>  ::Bool
    ]
```



# Returns

`CreateAddressResult`

# Exceptions

`InvalidAddressException` or `UnsupportedAddressException`.

# Example: To create an address for a job

This operation creates an address for a job. Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.

Input:
```
[
    "Address" => [
        "City" => "Seattle",
        "Company" => "My Company's Name",
        "Country" => "USA",
        "Name" => "My Name",
        "PhoneNumber" => "425-555-5555",
        "PostalCode" => "98101",
        "StateOrProvince" => "WA",
        "Street1" => "123 Main Street"
    ]
]
```

Output:
```
Dict(
    "AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateAddress)
"""
@inline create_address(aws::AWSConfig=default_aws_config(); args...) = create_address(aws, args)

@inline create_address(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "CreateAddress", args)

@inline create_address(args) = create_address(default_aws_config(), args)


"""
    using AWSSDK.Snowball.create_cluster
    create_cluster([::AWSConfig], arguments::Dict)
    create_cluster([::AWSConfig]; JobType=, Resources=, AddressId=, RoleARN=, ShippingOption=, <keyword arguments>)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "CreateCluster", arguments::Dict)
    snowball([::AWSConfig], "CreateCluster", JobType=, Resources=, AddressId=, RoleARN=, ShippingOption=, <keyword arguments>)

# CreateCluster Operation

Creates an empty cluster. Each cluster supports five nodes. You use the [CreateJob](@ref) action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.

# Arguments

## `JobType = "IMPORT", "EXPORT" or "LOCAL_USE"` -- *Required*
The type of job for this cluster. Currently, the only job type supported for clusters is `LOCAL_USE`.


## `Resources = [ ... ]` -- *Required*
The resources associated with the cluster job. These resources include Amazon S3 buckets and optional AWS Lambda functions written in the Python language.
```
 Resources = [
        "S3Resources" =>  [[
            "BucketArn" =>  ::String,
            "KeyRange" =>  [
                "BeginMarker" =>  ::String,
                "EndMarker" =>  ::String
            ]
        ], ...],
        "LambdaResources" =>  [[
            "LambdaArn" =>  ::String,
            "EventTriggers" =>  [["EventResourceARN" =>  ::String], ...]
        ], ...],
        "Ec2AmiResources" =>  [[
            "AmiId" => <required> ::String,
            "SnowballAmiId" =>  ::String
        ], ...]
    ]
```

## `Description = ::String`
An optional description of this specific cluster, for example `Environmental Data Cluster-01`.


## `AddressId = ::String` -- *Required*
The ID for the address that you want the cluster shipped to.


## `KmsKeyARN = ::String`
The `KmsKeyARN` value that you want to associate with this cluster. `KmsKeyARN` values are created by using the [CreateKey](http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html) API action in AWS Key Management Service (AWS KMS).


## `RoleARN = ::String` -- *Required*
The `RoleARN` that you want to associate with this cluster. `RoleArn` values are created by using the [CreateRole](http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html) API action in AWS Identity and Access Management (IAM).


## `SnowballType = "STANDARD" or "EDGE"`
The type of AWS Snowball device to use for this cluster. Currently, the only supported device type for cluster jobs is `EDGE`.


## `ShippingOption = "SECOND_DAY", "NEXT_DAY", "EXPRESS" or "STANDARD"` -- *Required*
The shipping speed for each node in this cluster. This speed doesn't dictate how soon you'll get each Snowball Edge device, rather it represents how quickly each device moves to its destination while in transit. Regional shipping speeds are as follows:

*   In Australia, you have access to express shipping. Typically, devices shipped express are delivered in about a day.

*   In the European Union (EU), you have access to express shipping. Typically, Snowball Edges shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.

*   In India, Snowball Edges are delivered in one to seven days.

*   In the US, you have access to one-day shipping and two-day shipping.


## `Notification = [ ... ]`
The Amazon Simple Notification Service (Amazon SNS) notification settings for this cluster.
```
 Notification = [
        "SnsTopicARN" =>  ::String,
        "JobStatesToNotify" =>  ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing" or "Pending", ...],
        "NotifyAll" =>  ::Bool
    ]
```

## `ForwardingAddressId = ::String`
The forwarding address ID for a cluster. This field is not supported in most regions.




# Returns

`CreateClusterResult`

# Exceptions

`InvalidResourceException`, `KMSRequestFailedException`, `InvalidInputCombinationException` or `Ec2RequestFailedException`.

# Example: To create a cluster

Creates an empty cluster. Each cluster supports five nodes. You use the CreateJob action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.

Input:
```
[
    "AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b",
    "Description" => "MyCluster",
    "JobType" => "LOCAL_USE",
    "KmsKeyARN" => "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456",
    "Notification" => [
        "JobStatesToNotify" => [

        ],
        "NotifyAll" => false
    ],
    "Resources" => [
        "S3Resources" => [
            [
                "BucketArn" => "arn:aws:s3:::MyBucket",
                "KeyRange" => [

                ]
            ]
        ]
    ],
    "RoleARN" => "arn:aws:iam::123456789012:role/snowball-import-S3-role",
    "ShippingOption" => "SECOND_DAY",
    "SnowballType" => "EDGE"
]
```

Output:
```
Dict(
    "ClusterId" => "CID123e4567-e89b-12d3-a456-426655440000"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateCluster)
"""
@inline create_cluster(aws::AWSConfig=default_aws_config(); args...) = create_cluster(aws, args)

@inline create_cluster(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "CreateCluster", args)

@inline create_cluster(args) = create_cluster(default_aws_config(), args)


"""
    using AWSSDK.Snowball.create_job
    create_job([::AWSConfig], arguments::Dict)
    create_job([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "CreateJob", arguments::Dict)
    snowball([::AWSConfig], "CreateJob", <keyword arguments>)

# CreateJob Operation

Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for Snowball. If you're creating a job for a node in a cluster, you only need to provide the `clusterId` value; the other job attributes are inherited from the cluster.

# Arguments

## `JobType = "IMPORT", "EXPORT" or "LOCAL_USE"`
Defines the type of job that you're creating.


## `Resources = [ ... ]`
Defines the Amazon S3 buckets associated with this job.

With `IMPORT` jobs, you specify the bucket or buckets that your transferred data will be imported into.

With `EXPORT` jobs, you specify the bucket or buckets that your transferred data will be exported from. Optionally, you can also specify a `KeyRange` value. If you choose to export a range, you define the length of the range by providing either an inclusive `BeginMarker` value, an inclusive `EndMarker` value, or both. Ranges are UTF-8 binary sorted.
```
 Resources = [
        "S3Resources" =>  [[
            "BucketArn" =>  ::String,
            "KeyRange" =>  [
                "BeginMarker" =>  ::String,
                "EndMarker" =>  ::String
            ]
        ], ...],
        "LambdaResources" =>  [[
            "LambdaArn" =>  ::String,
            "EventTriggers" =>  [["EventResourceARN" =>  ::String], ...]
        ], ...],
        "Ec2AmiResources" =>  [[
            "AmiId" => <required> ::String,
            "SnowballAmiId" =>  ::String
        ], ...]
    ]
```

## `Description = ::String`
Defines an optional description of this specific job, for example `Important Photos 2016-08-11`.


## `AddressId = ::String`
The ID for the address that you want the Snowball shipped to.


## `KmsKeyARN = ::String`
The `KmsKeyARN` that you want to associate with this job. `KmsKeyARN`s are created using the [CreateKey](http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html) AWS Key Management Service (KMS) API action.


## `RoleARN = ::String`
The `RoleARN` that you want to associate with this job. `RoleArn`s are created using the [CreateRole](http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html) AWS Identity and Access Management (IAM) API action.


## `SnowballCapacityPreference = "T50", "T80", "T100" or "NoPreference"`
If your job is being created in one of the US regions, you have the option of specifying what size Snowball you'd like for this job. In all other regions, Snowballs come with 80 TB in storage capacity.


## `ShippingOption = "SECOND_DAY", "NEXT_DAY", "EXPRESS" or "STANDARD"`
The shipping speed for this job. This speed doesn't dictate how soon you'll get the Snowball, rather it represents how quickly the Snowball moves to its destination while in transit. Regional shipping speeds are as follows:

*   In Australia, you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day.

*   In the European Union (EU), you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.

*   In India, Snowballs are delivered in one to seven days.

*   In the US, you have access to one-day shipping and two-day shipping.


## `Notification = [ ... ]`
Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for this job.
```
 Notification = [
        "SnsTopicARN" =>  ::String,
        "JobStatesToNotify" =>  ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing" or "Pending", ...],
        "NotifyAll" =>  ::Bool
    ]
```

## `ClusterId = ::String`
The ID of a cluster. If you're creating a job for a node in a cluster, you need to provide only this `clusterId` value. The other job attributes are inherited from the cluster.


## `SnowballType = "STANDARD" or "EDGE"`
The type of AWS Snowball device to use for this job. Currently, the only supported device type for cluster jobs is `EDGE`.


## `ForwardingAddressId = ::String`
The forwarding address ID for a job. This field is not supported in most regions.




# Returns

`CreateJobResult`

# Exceptions

`InvalidResourceException`, `KMSRequestFailedException`, `InvalidInputCombinationException`, `ClusterLimitExceededException` or `Ec2RequestFailedException`.

# Example: To create a job

Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for Snowball. If you're creating a job for a node in a cluster, you only need to provide the clusterId value; the other job attributes are inherited from the cluster.

Input:
```
[
    "AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b",
    "Description" => "My Job",
    "JobType" => "IMPORT",
    "KmsKeyARN" => "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456",
    "Notification" => [
        "JobStatesToNotify" => [

        ],
        "NotifyAll" => false
    ],
    "Resources" => [
        "S3Resources" => [
            [
                "BucketArn" => "arn:aws:s3:::MyBucket",
                "KeyRange" => [

                ]
            ]
        ]
    ],
    "RoleARN" => "arn:aws:iam::123456789012:role/snowball-import-S3-role",
    "ShippingOption" => "SECOND_DAY",
    "SnowballCapacityPreference" => "T80",
    "SnowballType" => "STANDARD"
]
```

Output:
```
Dict(
    "JobId" => "JID123e4567-e89b-12d3-a456-426655440000"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateJob)
"""
@inline create_job(aws::AWSConfig=default_aws_config(); args...) = create_job(aws, args)

@inline create_job(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "CreateJob", args)

@inline create_job(args) = create_job(default_aws_config(), args)


"""
    using AWSSDK.Snowball.describe_address
    describe_address([::AWSConfig], arguments::Dict)
    describe_address([::AWSConfig]; AddressId=)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "DescribeAddress", arguments::Dict)
    snowball([::AWSConfig], "DescribeAddress", AddressId=)

# DescribeAddress Operation

Takes an `AddressId` and returns specific details about that address in the form of an `Address` object.

# Arguments

## `AddressId = ::String` -- *Required*
The automatically generated ID for a specific address.




# Returns

`DescribeAddressResult`

# Exceptions

`InvalidResourceException`.

# Example: To describe an address for a job

This operation describes an address for a job.

Input:
```
[
    "AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b"
]
```

Output:
```
Dict(
    "Address" => Dict(
        "AddressId" => "ADID5643ec50-3eec-4eb3-9be6-9374c10eb51b",
        "City" => "Seattle",
        "Company" => "My Company",
        "Country" => "US",
        "Name" => "My Name",
        "PhoneNumber" => "425-555-5555",
        "PostalCode" => "98101",
        "StateOrProvince" => "WA",
        "Street1" => "123 Main Street"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeAddress)
"""
@inline describe_address(aws::AWSConfig=default_aws_config(); args...) = describe_address(aws, args)

@inline describe_address(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "DescribeAddress", args)

@inline describe_address(args) = describe_address(default_aws_config(), args)


"""
    using AWSSDK.Snowball.describe_addresses
    describe_addresses([::AWSConfig], arguments::Dict)
    describe_addresses([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "DescribeAddresses", arguments::Dict)
    snowball([::AWSConfig], "DescribeAddresses", <keyword arguments>)

# DescribeAddresses Operation

Returns a specified number of `ADDRESS` objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.

# Arguments

## `MaxResults = ::Int`
The number of `ADDRESS` objects to return.


## `NextToken = ::String`
HTTP requests are stateless. To identify what object comes "next" in the list of `ADDRESS` objects, you have the option of specifying a value for `NextToken` as the starting point for your list of returned addresses.




# Returns

`DescribeAddressesResult`

# Exceptions

`InvalidResourceException` or `InvalidNextTokenException`.

# Example: To describe all the addresses you've created for AWS Snowball

This operation describes all the addresses that you've created for AWS Snowball. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.

Input:
```
[

]
```

Output:
```
Dict(
    "Addresses" => [
        Dict(
            "AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b",
            "City" => "Seattle",
            "Company" => "My Company",
            "Country" => "US",
            "Name" => "My Name",
            "PhoneNumber" => "425-555-5555",
            "PostalCode" => "98101",
            "StateOrProvince" => "WA",
            "Street1" => "123 Main Street"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeAddresses)
"""
@inline describe_addresses(aws::AWSConfig=default_aws_config(); args...) = describe_addresses(aws, args)

@inline describe_addresses(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "DescribeAddresses", args)

@inline describe_addresses(args) = describe_addresses(default_aws_config(), args)


"""
    using AWSSDK.Snowball.describe_cluster
    describe_cluster([::AWSConfig], arguments::Dict)
    describe_cluster([::AWSConfig]; ClusterId=)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "DescribeCluster", arguments::Dict)
    snowball([::AWSConfig], "DescribeCluster", ClusterId=)

# DescribeCluster Operation

Returns information about a specific cluster including shipping information, cluster status, and other important metadata.

# Arguments

## `ClusterId = ::String` -- *Required*
The automatically generated ID for a cluster.




# Returns

`DescribeClusterResult`

# Exceptions

`InvalidResourceException`.

# Example: To describe a cluster

Returns information about a specific cluster including shipping information, cluster status, and other important metadata.

Input:
```
[
    "ClusterId" => "CID123e4567-e89b-12d3-a456-426655440000"
]
```

Output:
```
Dict(
    "ClusterMetadata" => Dict(
        "AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b",
        "ClusterId" => "CID123e4567-e89b-12d3-a456-426655440000",
        "ClusterState" => "Pending",
        "CreationDate" => "1480475517.0",
        "Description" => "MyCluster",
        "JobType" => "LOCAL_USE",
        "KmsKeyARN" => "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456",
        "Notification" => Dict(
            "JobStatesToNotify" => [

            ],
            "NotifyAll" => false
        ),
        "Resources" => Dict(
            "S3Resources" => [
                Dict(
                    "BucketArn" => "arn:aws:s3:::MyBucket",
                    "KeyRange" => Dict(

                    )
                )
            ]
        ),
        "RoleARN" => "arn:aws:iam::123456789012:role/snowball-import-S3-role",
        "ShippingOption" => "SECOND_DAY"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeCluster)
"""
@inline describe_cluster(aws::AWSConfig=default_aws_config(); args...) = describe_cluster(aws, args)

@inline describe_cluster(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "DescribeCluster", args)

@inline describe_cluster(args) = describe_cluster(default_aws_config(), args)


"""
    using AWSSDK.Snowball.describe_job
    describe_job([::AWSConfig], arguments::Dict)
    describe_job([::AWSConfig]; JobId=)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "DescribeJob", arguments::Dict)
    snowball([::AWSConfig], "DescribeJob", JobId=)

# DescribeJob Operation

Returns information about a specific job including shipping information, job status, and other important metadata.

# Arguments

## `JobId = ::String` -- *Required*
The automatically generated ID for a job, for example `JID123e4567-e89b-12d3-a456-426655440000`.




# Returns

`DescribeJobResult`

# Exceptions

`InvalidResourceException`.

# Example: To describe a job you've created for AWS Snowball

This operation describes a job you've created for AWS Snowball.

Input:
```
[
    "JobId" => "JID123e4567-e89b-12d3-a456-426655440000"
]
```

Output:
```
Dict(
    "JobMetadata" => Dict(
        "AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b",
        "CreationDate" => "1475626164",
        "Description" => "My Job",
        "JobId" => "JID123e4567-e89b-12d3-a456-426655440000",
        "JobState" => "New",
        "JobType" => "IMPORT",
        "KmsKeyARN" => "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456",
        "Notification" => Dict(
            "JobStatesToNotify" => [

            ],
            "NotifyAll" => false
        ),
        "Resources" => Dict(
            "S3Resources" => [
                Dict(
                    "BucketArn" => "arn:aws:s3:::MyBucket",
                    "KeyRange" => Dict(

                    )
                )
            ]
        ),
        "RoleARN" => "arn:aws:iam::123456789012:role/snowball-import-S3-role",
        "ShippingDetails" => Dict(
            "ShippingOption" => "SECOND_DAY"
        ),
        "SnowballCapacityPreference" => "T80",
        "SnowballType" => "STANDARD"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeJob)
"""
@inline describe_job(aws::AWSConfig=default_aws_config(); args...) = describe_job(aws, args)

@inline describe_job(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "DescribeJob", args)

@inline describe_job(args) = describe_job(default_aws_config(), args)


"""
    using AWSSDK.Snowball.get_job_manifest
    get_job_manifest([::AWSConfig], arguments::Dict)
    get_job_manifest([::AWSConfig]; JobId=)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "GetJobManifest", arguments::Dict)
    snowball([::AWSConfig], "GetJobManifest", JobId=)

# GetJobManifest Operation

Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified `JobId` value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the `GetJobManifest` action.

The manifest is an encrypted file that you can download after your job enters the `WithCustomer` status. The manifest is decrypted by using the `UnlockCode` code value, when you pass both values to the Snowball through the Snowball client when the client is started for the first time.

As a best practice, we recommend that you don't save a copy of an `UnlockCode` value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.

The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.

# Arguments

## `JobId = ::String` -- *Required*
The ID for a job that you want to get the manifest file for, for example `JID123e4567-e89b-12d3-a456-426655440000`.




# Returns

`GetJobManifestResult`

# Exceptions

`InvalidResourceException` or `InvalidJobStateException`.

# Example: To get the manifest for a job you've created for AWS Snowball

Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified JobId value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the GetJobManifest action.

The manifest is an encrypted file that you can download after your job enters the WithCustomer status. The manifest is decrypted by using the UnlockCode code value, when you pass both values to the Snowball through the Snowball client when the client is started for the first time.

As a best practice, we recommend that you don't save a copy of an UnlockCode value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.

The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.

Input:
```
[
    "JobId" => "JID123e4567-e89b-12d3-a456-426655440000"
]
```

Output:
```
Dict(
    "ManifestURI" => "https://awsie-frosty-manifests-prod.s3.amazonaws.com/JID123e4567-e89b-12d3-a456-426655440000_manifest.bin?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20161224T005115Z&X-Amz-SignedHeaders=..."
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetJobManifest)
"""
@inline get_job_manifest(aws::AWSConfig=default_aws_config(); args...) = get_job_manifest(aws, args)

@inline get_job_manifest(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "GetJobManifest", args)

@inline get_job_manifest(args) = get_job_manifest(default_aws_config(), args)


"""
    using AWSSDK.Snowball.get_job_unlock_code
    get_job_unlock_code([::AWSConfig], arguments::Dict)
    get_job_unlock_code([::AWSConfig]; JobId=)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "GetJobUnlockCode", arguments::Dict)
    snowball([::AWSConfig], "GetJobUnlockCode", JobId=)

# GetJobUnlockCode Operation

Returns the `UnlockCode` code value for the specified job. A particular `UnlockCode` value can be accessed for up to 90 days after the associated job has been created.

The `UnlockCode` value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snowball through the Snowball client when the client is started for the first time.

As a best practice, we recommend that you don't save a copy of the `UnlockCode` in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.

# Arguments

## `JobId = ::String` -- *Required*
The ID for the job that you want to get the `UnlockCode` value for, for example `JID123e4567-e89b-12d3-a456-426655440000`.




# Returns

`GetJobUnlockCodeResult`

# Exceptions

`InvalidResourceException` or `InvalidJobStateException`.

# Example: To get the unlock code for a job you've created for AWS Snowball

Returns the UnlockCode code value for the specified job. A particular UnlockCode value can be accessed for up to 90 days after the associated job has been created.

The UnlockCode value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snowball through the Snowball client when the client is started for the first time.

As a best practice, we recommend that you don't save a copy of the UnlockCode in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.

Input:
```
[
    "JobId" => "JID123e4567-e89b-12d3-a456-426655440000"
]
```

Output:
```
Dict(
    "UnlockCode" => "12345-abcde-56789-fghij-01234"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetJobUnlockCode)
"""
@inline get_job_unlock_code(aws::AWSConfig=default_aws_config(); args...) = get_job_unlock_code(aws, args)

@inline get_job_unlock_code(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "GetJobUnlockCode", args)

@inline get_job_unlock_code(args) = get_job_unlock_code(default_aws_config(), args)


"""
    using AWSSDK.Snowball.get_snowball_usage
    get_snowball_usage([::AWSConfig], arguments::Dict)
    get_snowball_usage([::AWSConfig]; )

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "GetSnowballUsage", arguments::Dict)
    snowball([::AWSConfig], "GetSnowballUsage", )

# GetSnowballUsage Operation

Returns information about the Snowball service limit for your account, and also the number of Snowballs your account has in use.

The default service limit for the number of Snowballs that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.

# Arguments



# Returns

`GetSnowballUsageResult`

# Example: To see your Snowball service limit and the number of Snowballs you have in use

Returns information about the Snowball service limit for your account, and also the number of Snowballs your account has in use.

The default service limit for the number of Snowballs that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.

Input:
```
[

]
```

Output:
```
Dict(
    "SnowballLimit" => 1,
    "SnowballsInUse" => 0
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetSnowballUsage)
"""
@inline get_snowball_usage(aws::AWSConfig=default_aws_config(); args...) = get_snowball_usage(aws, args)

@inline get_snowball_usage(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "GetSnowballUsage", args)

@inline get_snowball_usage(args) = get_snowball_usage(default_aws_config(), args)


"""
    using AWSSDK.Snowball.list_cluster_jobs
    list_cluster_jobs([::AWSConfig], arguments::Dict)
    list_cluster_jobs([::AWSConfig]; ClusterId=, <keyword arguments>)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "ListClusterJobs", arguments::Dict)
    snowball([::AWSConfig], "ListClusterJobs", ClusterId=, <keyword arguments>)

# ListClusterJobs Operation

Returns an array of `JobListEntry` objects of the specified length. Each `JobListEntry` object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.

# Arguments

## `ClusterId = ::String` -- *Required*
The 39-character ID for the cluster that you want to list, for example `CID123e4567-e89b-12d3-a456-426655440000`.


## `MaxResults = ::Int`
The number of `JobListEntry` objects to return.


## `NextToken = ::String`
HTTP requests are stateless. To identify what object comes "next" in the list of `JobListEntry` objects, you have the option of specifying `NextToken` as the starting point for your returned list.




# Returns

`ListClusterJobsResult`

# Exceptions

`InvalidResourceException` or `InvalidNextTokenException`.

# Example: To get a list of jobs in a cluster that you've created for AWS Snowball

Returns an array of JobListEntry objects of the specified length. Each JobListEntry object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.

Input:
```
[
    "ClusterId" => "CID123e4567-e89b-12d3-a456-426655440000"
]
```

Output:
```
Dict(
    "JobListEntries" => [
        Dict(
            "CreationDate" => "1480475524.0",
            "Description" => "MyClustrer-node-001",
            "IsMaster" => false,
            "JobId" => "JID123e4567-e89b-12d3-a456-426655440000",
            "JobState" => "New",
            "JobType" => "LOCAL_USE",
            "SnowballType" => "EDGE"
        ),
        Dict(
            "CreationDate" => "1480475525.0",
            "Description" => "MyClustrer-node-002",
            "IsMaster" => false,
            "JobId" => "JID123e4567-e89b-12d3-a456-426655440001",
            "JobState" => "New",
            "JobType" => "LOCAL_USE",
            "SnowballType" => "EDGE"
        ),
        Dict(
            "CreationDate" => "1480475525.0",
            "Description" => "MyClustrer-node-003",
            "IsMaster" => false,
            "JobId" => "JID123e4567-e89b-12d3-a456-426655440002",
            "JobState" => "New",
            "JobType" => "LOCAL_USE",
            "SnowballType" => "EDGE"
        ),
        Dict(
            "CreationDate" => "1480475525.0",
            "Description" => "MyClustrer-node-004",
            "IsMaster" => false,
            "JobId" => "JID123e4567-e89b-12d3-a456-426655440003",
            "JobState" => "New",
            "JobType" => "LOCAL_USE",
            "SnowballType" => "EDGE"
        ),
        Dict(
            "CreationDate" => "1480475525.0",
            "Description" => "MyClustrer-node-005",
            "IsMaster" => false,
            "JobId" => "JID123e4567-e89b-12d3-a456-426655440004",
            "JobState" => "New",
            "JobType" => "LOCAL_USE",
            "SnowballType" => "EDGE"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListClusterJobs)
"""
@inline list_cluster_jobs(aws::AWSConfig=default_aws_config(); args...) = list_cluster_jobs(aws, args)

@inline list_cluster_jobs(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "ListClusterJobs", args)

@inline list_cluster_jobs(args) = list_cluster_jobs(default_aws_config(), args)


"""
    using AWSSDK.Snowball.list_clusters
    list_clusters([::AWSConfig], arguments::Dict)
    list_clusters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "ListClusters", arguments::Dict)
    snowball([::AWSConfig], "ListClusters", <keyword arguments>)

# ListClusters Operation

Returns an array of `ClusterListEntry` objects of the specified length. Each `ClusterListEntry` object contains a cluster's state, a cluster's ID, and other important status information.

# Arguments

## `MaxResults = ::Int`
The number of `ClusterListEntry` objects to return.


## `NextToken = ::String`
HTTP requests are stateless. To identify what object comes "next" in the list of `ClusterListEntry` objects, you have the option of specifying `NextToken` as the starting point for your returned list.




# Returns

`ListClustersResult`

# Exceptions

`InvalidNextTokenException`.

# Example: To get a list of clusters that you've created for AWS Snowball

Returns an array of ClusterListEntry objects of the specified length. Each ClusterListEntry object contains a cluster's state, a cluster's ID, and other important status information.

Input:
```
[

]
```

Output:
```
Dict(
    "ClusterListEntries" => [
        Dict(
            "ClusterId" => "CID123e4567-e89b-12d3-a456-426655440000",
            "ClusterState" => "Pending",
            "CreationDate" => "1480475517.0",
            "Description" => "MyCluster"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListClusters)
"""
@inline list_clusters(aws::AWSConfig=default_aws_config(); args...) = list_clusters(aws, args)

@inline list_clusters(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "ListClusters", args)

@inline list_clusters(args) = list_clusters(default_aws_config(), args)


"""
    using AWSSDK.Snowball.list_compatible_images
    list_compatible_images([::AWSConfig], arguments::Dict)
    list_compatible_images([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "ListCompatibleImages", arguments::Dict)
    snowball([::AWSConfig], "ListCompatibleImages", <keyword arguments>)

# ListCompatibleImages Operation

This action returns a list of the different Amazon EC2 Amazon Machine Images (AMIs) that are owned by your AWS account that would be supported for use on a Snowball Edge device. Currently, supported AMIs are based on the CentOS 7 (x86_64) - with Updates HVM, Ubuntu Server 14.04 LTS (HVM), and Ubuntu 16.04 LTS - Xenial (HVM) images, available on the AWS Marketplace.

# Arguments

## `MaxResults = ::Int`
The maximum number of results for the list of compatible images. Currently, a Snowball Edge device can store 10 AMIs.


## `NextToken = ::String`
HTTP requests are stateless. To identify what object comes "next" in the list of compatible images, you can specify a value for `NextToken` as the starting point for your list of returned images.




# Returns

`ListCompatibleImagesResult`

# Exceptions

`InvalidNextTokenException` or `Ec2RequestFailedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListCompatibleImages)
"""
@inline list_compatible_images(aws::AWSConfig=default_aws_config(); args...) = list_compatible_images(aws, args)

@inline list_compatible_images(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "ListCompatibleImages", args)

@inline list_compatible_images(args) = list_compatible_images(default_aws_config(), args)


"""
    using AWSSDK.Snowball.list_jobs
    list_jobs([::AWSConfig], arguments::Dict)
    list_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "ListJobs", arguments::Dict)
    snowball([::AWSConfig], "ListJobs", <keyword arguments>)

# ListJobs Operation

Returns an array of `JobListEntry` objects of the specified length. Each `JobListEntry` object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.

# Arguments

## `MaxResults = ::Int`
The number of `JobListEntry` objects to return.


## `NextToken = ::String`
HTTP requests are stateless. To identify what object comes "next" in the list of `JobListEntry` objects, you have the option of specifying `NextToken` as the starting point for your returned list.




# Returns

`ListJobsResult`

# Exceptions

`InvalidNextTokenException`.

# Example: To get a list of jobs that you've created for AWS Snowball

Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.

Input:
```
[

]
```

Output:
```
Dict(
    "JobListEntries" => [
        Dict(
            "CreationDate" => "1460678186.0",
            "Description" => "MyJob",
            "IsMaster" => false,
            "JobId" => "JID123e4567-e89b-12d3-a456-426655440000",
            "JobState" => "New",
            "JobType" => "IMPORT",
            "SnowballType" => "STANDARD"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListJobs)
"""
@inline list_jobs(aws::AWSConfig=default_aws_config(); args...) = list_jobs(aws, args)

@inline list_jobs(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "ListJobs", args)

@inline list_jobs(args) = list_jobs(default_aws_config(), args)


"""
    using AWSSDK.Snowball.update_cluster
    update_cluster([::AWSConfig], arguments::Dict)
    update_cluster([::AWSConfig]; ClusterId=, <keyword arguments>)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "UpdateCluster", arguments::Dict)
    snowball([::AWSConfig], "UpdateCluster", ClusterId=, <keyword arguments>)

# UpdateCluster Operation

While a cluster's `ClusterState` value is in the `AwaitingQuorum` state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.

# Arguments

## `ClusterId = ::String` -- *Required*
The cluster ID of the cluster that you want to update, for example `CID123e4567-e89b-12d3-a456-426655440000`.


## `RoleARN = ::String`
The new role Amazon Resource Name (ARN) that you want to associate with this cluster. To create a role ARN, use the [CreateRole](http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html) API action in AWS Identity and Access Management (IAM).


## `Description = ::String`
The updated description of this cluster.


## `Resources = [ ... ]`
The updated arrays of [JobResource](@ref) objects that can include updated [S3Resource](@ref) objects or [LambdaResource](@ref) objects.
```
 Resources = [
        "S3Resources" =>  [[
            "BucketArn" =>  ::String,
            "KeyRange" =>  [
                "BeginMarker" =>  ::String,
                "EndMarker" =>  ::String
            ]
        ], ...],
        "LambdaResources" =>  [[
            "LambdaArn" =>  ::String,
            "EventTriggers" =>  [["EventResourceARN" =>  ::String], ...]
        ], ...],
        "Ec2AmiResources" =>  [[
            "AmiId" => <required> ::String,
            "SnowballAmiId" =>  ::String
        ], ...]
    ]
```

## `AddressId = ::String`
The ID of the updated [Address](@ref) object.


## `ShippingOption = "SECOND_DAY", "NEXT_DAY", "EXPRESS" or "STANDARD"`
The updated shipping option value of this cluster's [ShippingDetails](@ref) object.


## `Notification = [ ... ]`
The new or updated [Notification](@ref) object.
```
 Notification = [
        "SnsTopicARN" =>  ::String,
        "JobStatesToNotify" =>  ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing" or "Pending", ...],
        "NotifyAll" =>  ::Bool
    ]
```

## `ForwardingAddressId = ::String`
The updated ID for the forwarding address for a cluster. This field is not supported in most regions.




# Returns

`UpdateClusterResult`

# Exceptions

`InvalidResourceException`, `InvalidJobStateException`, `KMSRequestFailedException`, `InvalidInputCombinationException` or `Ec2RequestFailedException`.

# Example: To update a cluster

This action allows you to update certain parameters for a cluster. Once the cluster changes to a different state, usually within 60 minutes of it being created, this action is no longer available.

Input:
```
[
    "AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b",
    "ClusterId" => "CID123e4567-e89b-12d3-a456-426655440000",
    "Description" => "Updated the address to send this to image processing - RJ"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateCluster)
"""
@inline update_cluster(aws::AWSConfig=default_aws_config(); args...) = update_cluster(aws, args)

@inline update_cluster(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "UpdateCluster", args)

@inline update_cluster(args) = update_cluster(default_aws_config(), args)


"""
    using AWSSDK.Snowball.update_job
    update_job([::AWSConfig], arguments::Dict)
    update_job([::AWSConfig]; JobId=, <keyword arguments>)

    using AWSCore.Services.snowball
    snowball([::AWSConfig], "UpdateJob", arguments::Dict)
    snowball([::AWSConfig], "UpdateJob", JobId=, <keyword arguments>)

# UpdateJob Operation

While a job's `JobState` value is `New`, you can update some of the information associated with a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.

# Arguments

## `JobId = ::String` -- *Required*
The job ID of the job that you want to update, for example `JID123e4567-e89b-12d3-a456-426655440000`.


## `RoleARN = ::String`
The new role Amazon Resource Name (ARN) that you want to associate with this job. To create a role ARN, use the [CreateRole](http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html)AWS Identity and Access Management (IAM) API action.


## `Notification = [ ... ]`
The new or updated [Notification](@ref) object.
```
 Notification = [
        "SnsTopicARN" =>  ::String,
        "JobStatesToNotify" =>  ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing" or "Pending", ...],
        "NotifyAll" =>  ::Bool
    ]
```

## `Resources = [ ... ]`
The updated `JobResource` object, or the updated [JobResource](@ref) object.
```
 Resources = [
        "S3Resources" =>  [[
            "BucketArn" =>  ::String,
            "KeyRange" =>  [
                "BeginMarker" =>  ::String,
                "EndMarker" =>  ::String
            ]
        ], ...],
        "LambdaResources" =>  [[
            "LambdaArn" =>  ::String,
            "EventTriggers" =>  [["EventResourceARN" =>  ::String], ...]
        ], ...],
        "Ec2AmiResources" =>  [[
            "AmiId" => <required> ::String,
            "SnowballAmiId" =>  ::String
        ], ...]
    ]
```

## `AddressId = ::String`
The ID of the updated [Address](@ref) object.


## `ShippingOption = "SECOND_DAY", "NEXT_DAY", "EXPRESS" or "STANDARD"`
The updated shipping option value of this job's [ShippingDetails](@ref) object.


## `Description = ::String`
The updated description of this job's [JobMetadata](@ref) object.


## `SnowballCapacityPreference = "T50", "T80", "T100" or "NoPreference"`
The updated `SnowballCapacityPreference` of this job's [JobMetadata](@ref) object. The 50 TB Snowballs are only available in the US regions.


## `ForwardingAddressId = ::String`
The updated ID for the forwarding address for a job. This field is not supported in most regions.




# Returns

`UpdateJobResult`

# Exceptions

`InvalidResourceException`, `InvalidJobStateException`, `KMSRequestFailedException`, `InvalidInputCombinationException`, `ClusterLimitExceededException` or `Ec2RequestFailedException`.

# Example: To update a job

This action allows you to update certain parameters for a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.

Input:
```
[
    "AddressId" => "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b",
    "Description" => "Upgraded to Edge, shipped to Finance Dept, and requested faster shipping speed - TS.",
    "JobId" => "JID123e4567-e89b-12d3-a456-426655440000",
    "ShippingOption" => "NEXT_DAY",
    "SnowballCapacityPreference" => "T100"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateJob)
"""
@inline update_job(aws::AWSConfig=default_aws_config(); args...) = update_job(aws, args)

@inline update_job(aws::AWSConfig, args) = AWSCore.Services.snowball(aws, "UpdateJob", args)

@inline update_job(args) = update_job(default_aws_config(), args)




end # module Snowball


#==============================================================================#
# End of file
#==============================================================================#
