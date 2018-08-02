#==============================================================================#
# IoT1ClickDevicesService.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/iot1click-devices-2018-05-14.normal.json
#==============================================================================#

__precompile__()

module IoT1ClickDevicesService

using AWSCore


"""
    using AWSSDK.IoT1ClickDevicesService.claim_devices_by_claim_code
    claim_devices_by_claim_code([::AWSConfig], arguments::Dict)
    claim_devices_by_claim_code([::AWSConfig]; claimCode=)

    using AWSCore.Services.devices
    devices([::AWSConfig], "PUT", "/claims/{claimCode}", arguments::Dict)
    devices([::AWSConfig], "PUT", "/claims/{claimCode}", claimCode=)

# ClaimDevicesByClaimCode Operation

Adds device(s) to your account (i.e., claim one or more devices) if and only if you received a claim code with the device(s).

# Arguments

## `claimCode = ::String` -- *Required*
The claim code, starting with "C-", as provided by the device manufacturer.




# Returns

`ClaimDevicesByClaimCodeResponse`

# Exceptions

`InvalidRequestException`, `InternalFailureException` or `ForbiddenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ClaimDevicesByClaimCode)
"""
@inline claim_devices_by_claim_code(aws::AWSConfig=default_aws_config(); args...) = claim_devices_by_claim_code(aws, args)

@inline claim_devices_by_claim_code(aws::AWSConfig, args) = AWSCore.Services.devices(aws, "PUT", "/claims/{claimCode}", args)

@inline claim_devices_by_claim_code(args) = claim_devices_by_claim_code(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickDevicesService.describe_device
    describe_device([::AWSConfig], arguments::Dict)
    describe_device([::AWSConfig]; deviceId=)

    using AWSCore.Services.devices
    devices([::AWSConfig], "GET", "/devices/{deviceId}", arguments::Dict)
    devices([::AWSConfig], "GET", "/devices/{deviceId}", deviceId=)

# DescribeDevice Operation

Given a device ID, returns a DescribeDeviceResponse object describing the details of the device.

# Arguments

## `deviceId = ::String` -- *Required*
The unique identifier of the device.




# Returns

`DescribeDeviceResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/DescribeDevice)
"""
@inline describe_device(aws::AWSConfig=default_aws_config(); args...) = describe_device(aws, args)

@inline describe_device(aws::AWSConfig, args) = AWSCore.Services.devices(aws, "GET", "/devices/{deviceId}", args)

@inline describe_device(args) = describe_device(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickDevicesService.finalize_device_claim
    finalize_device_claim([::AWSConfig], arguments::Dict)
    finalize_device_claim([::AWSConfig]; deviceId=)

    using AWSCore.Services.devices
    devices([::AWSConfig], "PUT", "/devices/{deviceId}/finalize-claim", arguments::Dict)
    devices([::AWSConfig], "PUT", "/devices/{deviceId}/finalize-claim", deviceId=)

# FinalizeDeviceClaim Operation

Given a device ID, finalizes the claim request for the associated device.

**Note**
> Claiming a device consists of initiating a claim, then publishing a device event, and finalizing the claim. For a device of type button, a device event can be published by simply clicking the device.

# Arguments

## `deviceId = ::String` -- *Required*
The unique identifier of the device.




# Returns

`FinalizeDeviceClaimResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `InternalFailureException`, `PreconditionFailedException` or `ResourceConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/FinalizeDeviceClaim)
"""
@inline finalize_device_claim(aws::AWSConfig=default_aws_config(); args...) = finalize_device_claim(aws, args)

@inline finalize_device_claim(aws::AWSConfig, args) = AWSCore.Services.devices(aws, "PUT", "/devices/{deviceId}/finalize-claim", args)

@inline finalize_device_claim(args) = finalize_device_claim(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickDevicesService.get_device_methods
    get_device_methods([::AWSConfig], arguments::Dict)
    get_device_methods([::AWSConfig]; deviceId=)

    using AWSCore.Services.devices
    devices([::AWSConfig], "GET", "/devices/{deviceId}/methods", arguments::Dict)
    devices([::AWSConfig], "GET", "/devices/{deviceId}/methods", deviceId=)

# GetDeviceMethods Operation

Given a device ID, returns the invokable methods associated with the device.

# Arguments

## `deviceId = ::String` -- *Required*
The unique identifier of the device.




# Returns

`GetDeviceMethodsResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/GetDeviceMethods)
"""
@inline get_device_methods(aws::AWSConfig=default_aws_config(); args...) = get_device_methods(aws, args)

@inline get_device_methods(aws::AWSConfig, args) = AWSCore.Services.devices(aws, "GET", "/devices/{deviceId}/methods", args)

@inline get_device_methods(args) = get_device_methods(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickDevicesService.initiate_device_claim
    initiate_device_claim([::AWSConfig], arguments::Dict)
    initiate_device_claim([::AWSConfig]; deviceId=)

    using AWSCore.Services.devices
    devices([::AWSConfig], "PUT", "/devices/{deviceId}/initiate-claim", arguments::Dict)
    devices([::AWSConfig], "PUT", "/devices/{deviceId}/initiate-claim", deviceId=)

# InitiateDeviceClaim Operation

Given a device ID, initiates a claim request for the associated device.

**Note**
> Claiming a device consists of initiating a claim, then publishing a device event, and finalizing the claim. For a device of type button, a device event can be published by simply clicking the device.

# Arguments

## `deviceId = ::String` -- *Required*
The unique identifier of the device.




# Returns

`InitiateDeviceClaimResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `InternalFailureException` or `ResourceConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/InitiateDeviceClaim)
"""
@inline initiate_device_claim(aws::AWSConfig=default_aws_config(); args...) = initiate_device_claim(aws, args)

@inline initiate_device_claim(aws::AWSConfig, args) = AWSCore.Services.devices(aws, "PUT", "/devices/{deviceId}/initiate-claim", args)

@inline initiate_device_claim(args) = initiate_device_claim(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickDevicesService.invoke_device_method
    invoke_device_method([::AWSConfig], arguments::Dict)
    invoke_device_method([::AWSConfig]; deviceId=, <keyword arguments>)

    using AWSCore.Services.devices
    devices([::AWSConfig], "POST", "/devices/{deviceId}/methods", arguments::Dict)
    devices([::AWSConfig], "POST", "/devices/{deviceId}/methods", deviceId=, <keyword arguments>)

# InvokeDeviceMethod Operation

Given a device ID, issues a request to invoke a named device method (with possible parameters). See the "Example POST" code snippet below.

# Arguments

## `deviceId = ::String` -- *Required*
The unique identifier of the device.


## `deviceMethod = [ ... ]`
The device method to invoke.
```
 deviceMethod = [
        "deviceType" =>  ::String,
        "methodName" =>  ::String
    ]
```

## `deviceMethodParameters = ::String`
A JSON encoded string containing the device method request parameters.




# Returns

`InvokeDeviceMethodResponse`

# Exceptions

`InvalidRequestException`, `PreconditionFailedException`, `InternalFailureException`, `ResourceNotFoundException`, `RangeNotSatisfiableException` or `ResourceConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/InvokeDeviceMethod)
"""
@inline invoke_device_method(aws::AWSConfig=default_aws_config(); args...) = invoke_device_method(aws, args)

@inline invoke_device_method(aws::AWSConfig, args) = AWSCore.Services.devices(aws, "POST", "/devices/{deviceId}/methods", args)

@inline invoke_device_method(args) = invoke_device_method(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickDevicesService.list_device_events
    list_device_events([::AWSConfig], arguments::Dict)
    list_device_events([::AWSConfig]; deviceId=, fromTimeStamp=, toTimeStamp=, <keyword arguments>)

    using AWSCore.Services.devices
    devices([::AWSConfig], "GET", "/devices/{deviceId}/events", arguments::Dict)
    devices([::AWSConfig], "GET", "/devices/{deviceId}/events", deviceId=, fromTimeStamp=, toTimeStamp=, <keyword arguments>)

# ListDeviceEvents Operation

Using a device ID, returns a DeviceEventsResponse object containing an array of events for the device.

# Arguments

## `deviceId = ::String` -- *Required*
The unique identifier of the device.


## `fromTimeStamp = timestamp` -- *Required*
The start date for the device event query, in ISO8061 format. For example, 2018-03-28T15:45:12.880Z


## `maxResults = ::Int`
The maximum number of results to return per request. If not set, a default value of 100 is used.


## `nextToken = ::String`
The token to retrieve the next set of results.


## `toTimeStamp = timestamp` -- *Required*
The end date for the device event query, in ISO8061 format. For example, 2018-03-28T15:45:12.880Z




# Returns

`ListDeviceEventsResponse`

# Exceptions

`ResourceNotFoundException`, `RangeNotSatisfiableException`, `InvalidRequestException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ListDeviceEvents)
"""
@inline list_device_events(aws::AWSConfig=default_aws_config(); args...) = list_device_events(aws, args)

@inline list_device_events(aws::AWSConfig, args) = AWSCore.Services.devices(aws, "GET", "/devices/{deviceId}/events", args)

@inline list_device_events(args) = list_device_events(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickDevicesService.list_devices
    list_devices([::AWSConfig], arguments::Dict)
    list_devices([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.devices
    devices([::AWSConfig], "GET", "/devices", arguments::Dict)
    devices([::AWSConfig], "GET", "/devices", <keyword arguments>)

# ListDevices Operation

Lists the 1-Click compatible devices associated with your AWS account.

# Arguments

## `deviceType = ::String`
The type of the device, such as "button".


## `maxResults = ::Int`
The maximum number of results to return per request. If not set, a default value of 100 is used.


## `nextToken = ::String`
The token to retrieve the next set of results.




# Returns

`ListDevicesResponse`

# Exceptions

`RangeNotSatisfiableException`, `InvalidRequestException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/ListDevices)
"""
@inline list_devices(aws::AWSConfig=default_aws_config(); args...) = list_devices(aws, args)

@inline list_devices(aws::AWSConfig, args) = AWSCore.Services.devices(aws, "GET", "/devices", args)

@inline list_devices(args) = list_devices(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickDevicesService.unclaim_device
    unclaim_device([::AWSConfig], arguments::Dict)
    unclaim_device([::AWSConfig]; deviceId=)

    using AWSCore.Services.devices
    devices([::AWSConfig], "PUT", "/devices/{deviceId}/unclaim", arguments::Dict)
    devices([::AWSConfig], "PUT", "/devices/{deviceId}/unclaim", deviceId=)

# UnclaimDevice Operation

Disassociates a device from your AWS account using its device ID.

# Arguments

## `deviceId = ::String` -- *Required*
The unique identifier of the device.




# Returns

`UnclaimDeviceResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/UnclaimDevice)
"""
@inline unclaim_device(aws::AWSConfig=default_aws_config(); args...) = unclaim_device(aws, args)

@inline unclaim_device(aws::AWSConfig, args) = AWSCore.Services.devices(aws, "PUT", "/devices/{deviceId}/unclaim", args)

@inline unclaim_device(args) = unclaim_device(default_aws_config(), args)


"""
    using AWSSDK.IoT1ClickDevicesService.update_device_state
    update_device_state([::AWSConfig], arguments::Dict)
    update_device_state([::AWSConfig]; deviceId=, <keyword arguments>)

    using AWSCore.Services.devices
    devices([::AWSConfig], "PUT", "/devices/{deviceId}/state", arguments::Dict)
    devices([::AWSConfig], "PUT", "/devices/{deviceId}/state", deviceId=, <keyword arguments>)

# UpdateDeviceState Operation

Using a Boolean value (true or false), this operation enables or disables the device given a device ID.

# Arguments

## `deviceId = ::String` -- *Required*
The unique identifier of the device.


## `enabled = ::Bool`
If true, the device is enabled. If false, the device is disabled.




# Returns

`UpdateDeviceStateResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/devices-2018-05-14/UpdateDeviceState)
"""
@inline update_device_state(aws::AWSConfig=default_aws_config(); args...) = update_device_state(aws, args)

@inline update_device_state(aws::AWSConfig, args) = AWSCore.Services.devices(aws, "PUT", "/devices/{deviceId}/state", args)

@inline update_device_state(args) = update_device_state(default_aws_config(), args)




end # module IoT1ClickDevicesService


#==============================================================================#
# End of file
#==============================================================================#
