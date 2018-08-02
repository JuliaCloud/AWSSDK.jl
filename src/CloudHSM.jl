#==============================================================================#
# CloudHSM.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/cloudhsm-2014-05-30.normal.json
#==============================================================================#

__precompile__()

module CloudHSM

using AWSCore


"""
    using AWSSDK.CloudHSM.add_tags_to_resource
    add_tags_to_resource([::AWSConfig], arguments::Dict)
    add_tags_to_resource([::AWSConfig]; ResourceArn=, TagList=)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "AddTagsToResource", arguments::Dict)
    cloudhsm([::AWSConfig], "AddTagsToResource", ResourceArn=, TagList=)

# AddTagsToResource Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Adds or overwrites one or more tags for the specified AWS CloudHSM resource.

Each tag consists of a key and a value. Tag keys must be unique to each resource.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.


## `TagList = [[ ... ], ...]` -- *Required*
One or more tags.
```
 TagList = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Returns

`AddTagsToResourceResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/AddTagsToResource)
"""
@inline add_tags_to_resource(aws::AWSConfig=default_aws_config(); args...) = add_tags_to_resource(aws, args)

@inline add_tags_to_resource(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "AddTagsToResource", args)

@inline add_tags_to_resource(args) = add_tags_to_resource(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.create_hapg
    create_hapg([::AWSConfig], arguments::Dict)
    create_hapg([::AWSConfig]; Label=)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "CreateHapg", arguments::Dict)
    cloudhsm([::AWSConfig], "CreateHapg", Label=)

# CreateHapg Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Creates a high-availability partition group. A high-availability partition group is a group of partitions that spans multiple physical HSMs.

# Arguments

## `Label = ::String` -- *Required*
The label of the new high-availability partition group.




# Returns

`CreateHapgResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/CreateHapg)
"""
@inline create_hapg(aws::AWSConfig=default_aws_config(); args...) = create_hapg(aws, args)

@inline create_hapg(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "CreateHapg", args)

@inline create_hapg(args) = create_hapg(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.create_hsm
    create_hsm([::AWSConfig], arguments::Dict)
    create_hsm([::AWSConfig]; SubnetId=, SshKey=, IamRoleArn=, SubscriptionType=, <keyword arguments>)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "CreateHsm", arguments::Dict)
    cloudhsm([::AWSConfig], "CreateHsm", SubnetId=, SshKey=, IamRoleArn=, SubscriptionType=, <keyword arguments>)

# CreateHsm Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Creates an uninitialized HSM instance.

There is an upfront fee charged for each HSM instance that you create with the `CreateHsm` operation. If you accidentally provision an HSM and want to request a refund, delete the instance using the [DeleteHsm](@ref) operation, go to the [AWS Support Center](https://console.aws.amazon.com/support/home), create a new case, and select **Account and Billing Support**.

**Important**
> It can take up to 20 minutes to create and provision an HSM. You can monitor the status of the HSM with the [DescribeHsm](@ref) operation. The HSM is ready to be initialized when the status changes to `RUNNING`.

# Arguments

## `SubnetId = ::String` -- *Required*
The identifier of the subnet in your VPC in which to place the HSM.


## `SshKey = ::String` -- *Required*
The SSH public key to install on the HSM.


## `EniIp = ::String`
The IP address to assign to the HSM's ENI.

If an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the subnet.


## `IamRoleArn = ::String` -- *Required*
The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your behalf.


## `ExternalId = ::String`
The external ID from `IamRoleArn`, if present.


## `SubscriptionType = "PRODUCTION"` -- *Required*



## `ClientToken = ::String`
A user-defined token to ensure idempotence. Subsequent calls to this operation with the same token will be ignored.


## `SyslogIp = ::String`
The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.




# Returns

`CreateHsmResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/CreateHsm)
"""
@inline create_hsm(aws::AWSConfig=default_aws_config(); args...) = create_hsm(aws, args)

@inline create_hsm(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "CreateHsm", args)

@inline create_hsm(args) = create_hsm(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.create_luna_client
    create_luna_client([::AWSConfig], arguments::Dict)
    create_luna_client([::AWSConfig]; Certificate=, <keyword arguments>)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "CreateLunaClient", arguments::Dict)
    cloudhsm([::AWSConfig], "CreateLunaClient", Certificate=, <keyword arguments>)

# CreateLunaClient Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Creates an HSM client.

# Arguments

## `Label = ::String`
The label for the client.


## `Certificate = ::String` -- *Required*
The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used by this client.




# Returns

`CreateLunaClientResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/CreateLunaClient)
"""
@inline create_luna_client(aws::AWSConfig=default_aws_config(); args...) = create_luna_client(aws, args)

@inline create_luna_client(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "CreateLunaClient", args)

@inline create_luna_client(args) = create_luna_client(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.delete_hapg
    delete_hapg([::AWSConfig], arguments::Dict)
    delete_hapg([::AWSConfig]; HapgArn=)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "DeleteHapg", arguments::Dict)
    cloudhsm([::AWSConfig], "DeleteHapg", HapgArn=)

# DeleteHapg Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Deletes a high-availability partition group.

# Arguments

## `HapgArn = ::String` -- *Required*
The ARN of the high-availability partition group to delete.




# Returns

`DeleteHapgResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/DeleteHapg)
"""
@inline delete_hapg(aws::AWSConfig=default_aws_config(); args...) = delete_hapg(aws, args)

@inline delete_hapg(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "DeleteHapg", args)

@inline delete_hapg(args) = delete_hapg(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.delete_hsm
    delete_hsm([::AWSConfig], arguments::Dict)
    delete_hsm([::AWSConfig]; HsmArn=)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "DeleteHsm", arguments::Dict)
    cloudhsm([::AWSConfig], "DeleteHsm", HsmArn=)

# DeleteHsm Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Deletes an HSM. After completion, this operation cannot be undone and your key material cannot be recovered.

# Arguments

## `HsmArn = ::String` -- *Required*
The ARN of the HSM to delete.




# Returns

`DeleteHsmResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/DeleteHsm)
"""
@inline delete_hsm(aws::AWSConfig=default_aws_config(); args...) = delete_hsm(aws, args)

@inline delete_hsm(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "DeleteHsm", args)

@inline delete_hsm(args) = delete_hsm(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.delete_luna_client
    delete_luna_client([::AWSConfig], arguments::Dict)
    delete_luna_client([::AWSConfig]; ClientArn=)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "DeleteLunaClient", arguments::Dict)
    cloudhsm([::AWSConfig], "DeleteLunaClient", ClientArn=)

# DeleteLunaClient Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Deletes a client.

# Arguments

## `ClientArn = ::String` -- *Required*
The ARN of the client to delete.




# Returns

`DeleteLunaClientResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/DeleteLunaClient)
"""
@inline delete_luna_client(aws::AWSConfig=default_aws_config(); args...) = delete_luna_client(aws, args)

@inline delete_luna_client(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "DeleteLunaClient", args)

@inline delete_luna_client(args) = delete_luna_client(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.describe_hapg
    describe_hapg([::AWSConfig], arguments::Dict)
    describe_hapg([::AWSConfig]; HapgArn=)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "DescribeHapg", arguments::Dict)
    cloudhsm([::AWSConfig], "DescribeHapg", HapgArn=)

# DescribeHapg Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Retrieves information about a high-availability partition group.

# Arguments

## `HapgArn = ::String` -- *Required*
The ARN of the high-availability partition group to describe.




# Returns

`DescribeHapgResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/DescribeHapg)
"""
@inline describe_hapg(aws::AWSConfig=default_aws_config(); args...) = describe_hapg(aws, args)

@inline describe_hapg(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "DescribeHapg", args)

@inline describe_hapg(args) = describe_hapg(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.describe_hsm
    describe_hsm([::AWSConfig], arguments::Dict)
    describe_hsm([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "DescribeHsm", arguments::Dict)
    cloudhsm([::AWSConfig], "DescribeHsm", <keyword arguments>)

# DescribeHsm Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Retrieves information about an HSM. You can identify the HSM by its ARN or its serial number.

# Arguments

## `HsmArn = ::String`
The ARN of the HSM. Either the `HsmArn` or the `SerialNumber` parameter must be specified.


## `HsmSerialNumber = ::String`
The serial number of the HSM. Either the `HsmArn` or the `HsmSerialNumber` parameter must be specified.




# Returns

`DescribeHsmResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/DescribeHsm)
"""
@inline describe_hsm(aws::AWSConfig=default_aws_config(); args...) = describe_hsm(aws, args)

@inline describe_hsm(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "DescribeHsm", args)

@inline describe_hsm(args) = describe_hsm(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.describe_luna_client
    describe_luna_client([::AWSConfig], arguments::Dict)
    describe_luna_client([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "DescribeLunaClient", arguments::Dict)
    cloudhsm([::AWSConfig], "DescribeLunaClient", <keyword arguments>)

# DescribeLunaClient Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Retrieves information about an HSM client.

# Arguments

## `ClientArn = ::String`
The ARN of the client.


## `CertificateFingerprint = ::String`
The certificate fingerprint.




# Returns

`DescribeLunaClientResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/DescribeLunaClient)
"""
@inline describe_luna_client(aws::AWSConfig=default_aws_config(); args...) = describe_luna_client(aws, args)

@inline describe_luna_client(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "DescribeLunaClient", args)

@inline describe_luna_client(args) = describe_luna_client(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.get_config
    get_config([::AWSConfig], arguments::Dict)
    get_config([::AWSConfig]; ClientArn=, ClientVersion=, HapgList=)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "GetConfig", arguments::Dict)
    cloudhsm([::AWSConfig], "GetConfig", ClientArn=, ClientVersion=, HapgList=)

# GetConfig Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Gets the configuration files necessary to connect to all high availability partition groups the client is associated with.

# Arguments

## `ClientArn = ::String` -- *Required*
The ARN of the client.


## `ClientVersion = "5.1" or "5.3"` -- *Required*
The client version.


## `HapgList = [::String, ...]` -- *Required*
A list of ARNs that identify the high-availability partition groups that are associated with the client.




# Returns

`GetConfigResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/GetConfig)
"""
@inline get_config(aws::AWSConfig=default_aws_config(); args...) = get_config(aws, args)

@inline get_config(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "GetConfig", args)

@inline get_config(args) = get_config(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.list_available_zones
    list_available_zones([::AWSConfig], arguments::Dict)
    list_available_zones([::AWSConfig]; )

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "ListAvailableZones", arguments::Dict)
    cloudhsm([::AWSConfig], "ListAvailableZones", )

# ListAvailableZones Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Lists the Availability Zones that have available AWS CloudHSM capacity.

# Arguments



# Returns

`ListAvailableZonesResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/ListAvailableZones)
"""
@inline list_available_zones(aws::AWSConfig=default_aws_config(); args...) = list_available_zones(aws, args)

@inline list_available_zones(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "ListAvailableZones", args)

@inline list_available_zones(args) = list_available_zones(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.list_hapgs
    list_hapgs([::AWSConfig], arguments::Dict)
    list_hapgs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "ListHapgs", arguments::Dict)
    cloudhsm([::AWSConfig], "ListHapgs", <keyword arguments>)

# ListHapgs Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Lists the high-availability partition groups for the account.

This operation supports pagination with the use of the `NextToken` member. If more results are available, the `NextToken` member of the response contains a token that you pass in the next call to `ListHapgs` to retrieve the next set of items.

# Arguments

## `NextToken = ::String`
The `NextToken` value from a previous call to `ListHapgs`. Pass null if this is the first call.




# Returns

`ListHapgsResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/ListHapgs)
"""
@inline list_hapgs(aws::AWSConfig=default_aws_config(); args...) = list_hapgs(aws, args)

@inline list_hapgs(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "ListHapgs", args)

@inline list_hapgs(args) = list_hapgs(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.list_hsms
    list_hsms([::AWSConfig], arguments::Dict)
    list_hsms([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "ListHsms", arguments::Dict)
    cloudhsm([::AWSConfig], "ListHsms", <keyword arguments>)

# ListHsms Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Retrieves the identifiers of all of the HSMs provisioned for the current customer.

This operation supports pagination with the use of the `NextToken` member. If more results are available, the `NextToken` member of the response contains a token that you pass in the next call to `ListHsms` to retrieve the next set of items.

# Arguments

## `NextToken = ::String`
The `NextToken` value from a previous call to `ListHsms`. Pass null if this is the first call.




# Returns

`ListHsmsResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/ListHsms)
"""
@inline list_hsms(aws::AWSConfig=default_aws_config(); args...) = list_hsms(aws, args)

@inline list_hsms(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "ListHsms", args)

@inline list_hsms(args) = list_hsms(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.list_luna_clients
    list_luna_clients([::AWSConfig], arguments::Dict)
    list_luna_clients([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "ListLunaClients", arguments::Dict)
    cloudhsm([::AWSConfig], "ListLunaClients", <keyword arguments>)

# ListLunaClients Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Lists all of the clients.

This operation supports pagination with the use of the `NextToken` member. If more results are available, the `NextToken` member of the response contains a token that you pass in the next call to `ListLunaClients` to retrieve the next set of items.

# Arguments

## `NextToken = ::String`
The `NextToken` value from a previous call to `ListLunaClients`. Pass null if this is the first call.




# Returns

`ListLunaClientsResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/ListLunaClients)
"""
@inline list_luna_clients(aws::AWSConfig=default_aws_config(); args...) = list_luna_clients(aws, args)

@inline list_luna_clients(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "ListLunaClients", args)

@inline list_luna_clients(args) = list_luna_clients(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; ResourceArn=)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "ListTagsForResource", arguments::Dict)
    cloudhsm([::AWSConfig], "ListTagsForResource", ResourceArn=)

# ListTagsForResource Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Returns a list of all tags for the specified AWS CloudHSM resource.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the AWS CloudHSM resource.




# Returns

`ListTagsForResourceResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "ListTagsForResource", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.modify_hapg
    modify_hapg([::AWSConfig], arguments::Dict)
    modify_hapg([::AWSConfig]; HapgArn=, <keyword arguments>)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "ModifyHapg", arguments::Dict)
    cloudhsm([::AWSConfig], "ModifyHapg", HapgArn=, <keyword arguments>)

# ModifyHapg Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Modifies an existing high-availability partition group.

# Arguments

## `HapgArn = ::String` -- *Required*
The ARN of the high-availability partition group to modify.


## `Label = ::String`
The new label for the high-availability partition group.


## `PartitionSerialList = [::String, ...]`
The list of partition serial numbers to make members of the high-availability partition group.




# Returns

`ModifyHapgResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/ModifyHapg)
"""
@inline modify_hapg(aws::AWSConfig=default_aws_config(); args...) = modify_hapg(aws, args)

@inline modify_hapg(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "ModifyHapg", args)

@inline modify_hapg(args) = modify_hapg(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.modify_hsm
    modify_hsm([::AWSConfig], arguments::Dict)
    modify_hsm([::AWSConfig]; HsmArn=, <keyword arguments>)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "ModifyHsm", arguments::Dict)
    cloudhsm([::AWSConfig], "ModifyHsm", HsmArn=, <keyword arguments>)

# ModifyHsm Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Modifies an HSM.

**Important**
> This operation can result in the HSM being offline for up to 15 minutes while the AWS CloudHSM service is reconfigured. If you are modifying a production HSM, you should ensure that your AWS CloudHSM service is configured for high availability, and consider executing this operation during a maintenance window.

# Arguments

## `HsmArn = ::String` -- *Required*
The ARN of the HSM to modify.


## `SubnetId = ::String`
The new identifier of the subnet that the HSM is in. The new subnet must be in the same Availability Zone as the current subnet.


## `EniIp = ::String`
The new IP address for the elastic network interface (ENI) attached to the HSM.

If the HSM is moved to a different subnet, and an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the new subnet.


## `IamRoleArn = ::String`
The new IAM role ARN.


## `ExternalId = ::String`
The new external ID.


## `SyslogIp = ::String`
The new IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.




# Returns

`ModifyHsmResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/ModifyHsm)
"""
@inline modify_hsm(aws::AWSConfig=default_aws_config(); args...) = modify_hsm(aws, args)

@inline modify_hsm(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "ModifyHsm", args)

@inline modify_hsm(args) = modify_hsm(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.modify_luna_client
    modify_luna_client([::AWSConfig], arguments::Dict)
    modify_luna_client([::AWSConfig]; ClientArn=, Certificate=)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "ModifyLunaClient", arguments::Dict)
    cloudhsm([::AWSConfig], "ModifyLunaClient", ClientArn=, Certificate=)

# ModifyLunaClient Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Modifies the certificate used by the client.

This action can potentially start a workflow to install the new certificate on the client's HSMs.

# Arguments

## `ClientArn = ::String` -- *Required*
The ARN of the client.


## `Certificate = ::String` -- *Required*
The new certificate for the client.




# Returns

`ModifyLunaClientResponse`

# Exceptions

`CloudHsmServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/ModifyLunaClient)
"""
@inline modify_luna_client(aws::AWSConfig=default_aws_config(); args...) = modify_luna_client(aws, args)

@inline modify_luna_client(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "ModifyLunaClient", args)

@inline modify_luna_client(args) = modify_luna_client(default_aws_config(), args)


"""
    using AWSSDK.CloudHSM.remove_tags_from_resource
    remove_tags_from_resource([::AWSConfig], arguments::Dict)
    remove_tags_from_resource([::AWSConfig]; ResourceArn=, TagKeyList=)

    using AWSCore.Services.cloudhsm
    cloudhsm([::AWSConfig], "RemoveTagsFromResource", arguments::Dict)
    cloudhsm([::AWSConfig], "RemoveTagsFromResource", ResourceArn=, TagKeyList=)

# RemoveTagsFromResource Operation

This is documentation for **AWS CloudHSM Classic**. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Removes one or more tags from the specified AWS CloudHSM resource.

To remove a tag, specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use [AddTagsToResource](@ref).

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the AWS CloudHSM resource.


## `TagKeyList = [::String, ...]` -- *Required*
The tag key or keys to remove.

Specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use [AddTagsToResource](@ref).




# Returns

`RemoveTagsFromResourceResponse`

# Exceptions

`CloudHsmServiceException`, `CloudHsmInternalException` or `InvalidRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/cloudhsm-2014-05-30/RemoveTagsFromResource)
"""
@inline remove_tags_from_resource(aws::AWSConfig=default_aws_config(); args...) = remove_tags_from_resource(aws, args)

@inline remove_tags_from_resource(aws::AWSConfig, args) = AWSCore.Services.cloudhsm(aws, "RemoveTagsFromResource", args)

@inline remove_tags_from_resource(args) = remove_tags_from_resource(default_aws_config(), args)




end # module CloudHSM


#==============================================================================#
# End of file
#==============================================================================#
