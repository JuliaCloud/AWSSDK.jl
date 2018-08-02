#==============================================================================#
# IotData.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/iot-data-2015-05-28.normal.json
#==============================================================================#

__precompile__()

module IotData

using AWSCore


"""
    using AWSSDK.IotData.delete_thing_shadow
    delete_thing_shadow([::AWSConfig], arguments::Dict)
    delete_thing_shadow([::AWSConfig]; thingName=)

    using AWSCore.Services.iot_data
    iot_data([::AWSConfig], "DELETE", "/things/{thingName}/shadow", arguments::Dict)
    iot_data([::AWSConfig], "DELETE", "/things/{thingName}/shadow", thingName=)

# DeleteThingShadow Operation

Deletes the thing shadow for the specified thing.

For more information, see [DeleteThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html) in the *AWS IoT Developer Guide*.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing.




# Returns

`DeleteThingShadowResponse`

# Exceptions

`ResourceNotFoundException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException`, `MethodNotAllowedException` or `UnsupportedDocumentEncodingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-data-2015-05-28/DeleteThingShadow)
"""
@inline delete_thing_shadow(aws::AWSConfig=default_aws_config(); args...) = delete_thing_shadow(aws, args)

@inline delete_thing_shadow(aws::AWSConfig, args) = AWSCore.Services.iot_data(aws, "DELETE", "/things/{thingName}/shadow", args)

@inline delete_thing_shadow(args) = delete_thing_shadow(default_aws_config(), args)


"""
    using AWSSDK.IotData.get_thing_shadow
    get_thing_shadow([::AWSConfig], arguments::Dict)
    get_thing_shadow([::AWSConfig]; thingName=)

    using AWSCore.Services.iot_data
    iot_data([::AWSConfig], "GET", "/things/{thingName}/shadow", arguments::Dict)
    iot_data([::AWSConfig], "GET", "/things/{thingName}/shadow", thingName=)

# GetThingShadow Operation

Gets the thing shadow for the specified thing.

For more information, see [GetThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html) in the *AWS IoT Developer Guide*.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing.




# Returns

`GetThingShadowResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException`, `MethodNotAllowedException` or `UnsupportedDocumentEncodingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-data-2015-05-28/GetThingShadow)
"""
@inline get_thing_shadow(aws::AWSConfig=default_aws_config(); args...) = get_thing_shadow(aws, args)

@inline get_thing_shadow(aws::AWSConfig, args) = AWSCore.Services.iot_data(aws, "GET", "/things/{thingName}/shadow", args)

@inline get_thing_shadow(args) = get_thing_shadow(default_aws_config(), args)


"""
    using AWSSDK.IotData.publish
    publish([::AWSConfig], arguments::Dict)
    publish([::AWSConfig]; topic=, <keyword arguments>)

    using AWSCore.Services.iot_data
    iot_data([::AWSConfig], "POST", "/topics/{topic}", arguments::Dict)
    iot_data([::AWSConfig], "POST", "/topics/{topic}", topic=, <keyword arguments>)

# Publish Operation

Publishes state information.

For more information, see [HTTP Protocol](http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http) in the *AWS IoT Developer Guide*.

# Arguments

## `topic = ::String` -- *Required*
The name of the MQTT topic.


## `qos = ::Int`
The Quality of Service (QoS) level.


## `payload = blob`
The state information, in JSON format.




# Exceptions

`InternalFailureException`, `InvalidRequestException`, `UnauthorizedException` or `MethodNotAllowedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-data-2015-05-28/Publish)
"""
@inline publish(aws::AWSConfig=default_aws_config(); args...) = publish(aws, args)

@inline publish(aws::AWSConfig, args) = AWSCore.Services.iot_data(aws, "POST", "/topics/{topic}", args)

@inline publish(args) = publish(default_aws_config(), args)


"""
    using AWSSDK.IotData.update_thing_shadow
    update_thing_shadow([::AWSConfig], arguments::Dict)
    update_thing_shadow([::AWSConfig]; thingName=, payload=)

    using AWSCore.Services.iot_data
    iot_data([::AWSConfig], "POST", "/things/{thingName}/shadow", arguments::Dict)
    iot_data([::AWSConfig], "POST", "/things/{thingName}/shadow", thingName=, payload=)

# UpdateThingShadow Operation

Updates the thing shadow for the specified thing.

For more information, see [UpdateThingShadow](http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html) in the *AWS IoT Developer Guide*.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing.


## `payload = blob` -- *Required*
The state information, in JSON format.




# Returns

`UpdateThingShadowResponse`

# Exceptions

`ConflictException`, `RequestEntityTooLargeException`, `InvalidRequestException`, `ThrottlingException`, `UnauthorizedException`, `ServiceUnavailableException`, `InternalFailureException`, `MethodNotAllowedException` or `UnsupportedDocumentEncodingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-data-2015-05-28/UpdateThingShadow)
"""
@inline update_thing_shadow(aws::AWSConfig=default_aws_config(); args...) = update_thing_shadow(aws, args)

@inline update_thing_shadow(aws::AWSConfig, args) = AWSCore.Services.iot_data(aws, "POST", "/things/{thingName}/shadow", args)

@inline update_thing_shadow(args) = update_thing_shadow(default_aws_config(), args)




end # module IotData


#==============================================================================#
# End of file
#==============================================================================#
