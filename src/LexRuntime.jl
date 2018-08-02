#==============================================================================#
# LexRuntime.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/runtime.lex-2016-11-28.normal.json
#==============================================================================#

__precompile__()

module LexRuntime

using AWSCore


"""
    using AWSSDK.LexRuntime.post_content
    post_content([::AWSConfig], arguments::Dict)
    post_content([::AWSConfig]; botName=, botAlias=, userId=, *header:* Content-Type=, inputStream=, <keyword arguments>)

    using AWSCore.Services.runtime_lex
    runtime_lex([::AWSConfig], "POST", "/bot/{botName}/alias/{botAlias}/user/{userId}/content", arguments::Dict)
    runtime_lex([::AWSConfig], "POST", "/bot/{botName}/alias/{botAlias}/user/{userId}/content", botName=, botAlias=, userId=, *header:* Content-Type=, inputStream=, <keyword arguments>)

# PostContent Operation

Sends user input (text or speech) to Amazon Lex. Clients use this API to send text and audio requests to Amazon Lex at runtime. Amazon Lex interprets the user input using the machine learning model that it built for the bot.

The `PostContent` operation supports audio input at 8kHz and 16kHz. You can use 8kHz audio to achieve higher speech recognition accuracy in telephone audio applications.

In response, Amazon Lex returns the next message to convey to the user. Consider the following example messages:

*   For a user input "I would like a pizza," Amazon Lex might return a response with a message eliciting slot data (for example, `PizzaSize`): "What size pizza would you like?".

*   After the user provides all of the pizza order information, Amazon Lex might return a response with a message to get user confirmation: "Order the pizza?".

*   After the user replies "Yes" to the confirmation prompt, Amazon Lex might return a conclusion statement: "Thank you, your cheese pizza has been ordered.".

Not all Amazon Lex messages require a response from the user. For example, conclusion statements do not require a response. Some messages require only a yes or no response. In addition to the `message`, Amazon Lex provides additional context about the message in the response that you can use to enhance client behavior, such as displaying the appropriate client user interface. Consider the following examples:

*   If the message is to elicit slot data, Amazon Lex returns the following context information:

    *   `x-amz-lex-dialog-state` header set to `ElicitSlot`

    *   `x-amz-lex-intent-name` header set to the intent name in the current context

    *   `x-amz-lex-slot-to-elicit` header set to the slot name for which the `message` is eliciting information

    *   `x-amz-lex-slots` header set to a map of slots configured for the intent with their current values

*   If the message is a confirmation prompt, the `x-amz-lex-dialog-state` header is set to `Confirmation` and the `x-amz-lex-slot-to-elicit` header is omitted.

*   If the message is a clarification prompt configured for the intent, indicating that the user intent is not understood, the `x-amz-dialog-state` header is set to `ElicitIntent` and the `x-amz-slot-to-elicit` header is omitted.

In addition, Amazon Lex also returns your application-specific `sessionAttributes`. For more information, see [Managing Conversation Context](http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).

# Arguments

## `botName = ::String` -- *Required*
Name of the Amazon Lex bot.


## `botAlias = ::String` -- *Required*
Alias of the Amazon Lex bot.


## `userId = ::String` -- *Required*
The ID of the client application user. Amazon Lex uses this to identify a user's conversation with your bot. At runtime, each request must contain the `userID` field.

To decide the user ID to use for your application, consider the following factors.

*   The `userID` field must not contain any personally identifiable information of the user, for example, name, personal identification numbers, or other end user personal information.

*   If you want a user to start a conversation on one device and continue on another device, use a user-specific identifier.

*   If you want the same user to be able to have two independent conversations on two different devices, choose a device-specific identifier.

*   A user can't have two independent conversations with two different versions of the same bot. For example, a user can't have a conversation with the PROD and BETA versions of the same bot. If you anticipate that a user will need to have conversation with two different versions, for example, while testing, include the bot alias in the user ID to separate the two conversations.


## `*header:* x-amz-lex-session-attributes = ::String`
You pass this value as the `x-amz-lex-session-attributes` HTTP header.

Application-specific information passed between Amazon Lex and a client application. The value must be a JSON serialized and base64 encoded map with string keys and values. The total size of the `sessionAttributes` and `requestAttributes` headers is limited to 12 KB.

For more information, see [Setting Session Attributes](http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs).


## `*header:* x-amz-lex-request-attributes = ::String`
You pass this value as the `x-amz-lex-request-attributes` HTTP header.

Request-specific information passed between Amazon Lex and a client application. The value must be a JSON serialized and base64 encoded map with string keys and values. The total size of the `requestAttributes` and `sessionAttributes` headers is limited to 12 KB.

The namespace `x-amz-lex:` is reserved for special attributes. Don't create any request attributes with the prefix `x-amz-lex:`.

For more information, see [Setting Request Attributes](http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs).


## `*header:* Content-Type = ::String` -- *Required*
You pass this value as the `Content-Type` HTTP header.

Indicates the audio format or text. The header value must start with one of the following prefixes:

*   PCM format, audio data must be in little-endian byte order.

    *   audio/l16; rate=16000; channels=1

    *   audio/x-l16; sample-rate=16000; channel-count=1

    *   audio/lpcm; sample-rate=8000; sample-size-bits=16; channel-count=1; is-big-endian=false

*   Opus format

    *   audio/x-cbr-opus-with-preamble; preamble-size=0; bit-rate=256000; frame-size-milliseconds=4

*   Text format

    *   text/plain; charset=utf-8


## `*header:* Accept = ::String`
You pass this value as the `Accept` HTTP header.

The message Amazon Lex returns in the response can be either text or speech based on the `Accept` HTTP header value in the request.

*   If the value is `text/plain; charset=utf-8`, Amazon Lex returns text in the response.

*   If the value begins with `audio/`, Amazon Lex returns speech in the response. Amazon Lex uses Amazon Polly to generate the speech (using the configuration you specified in the `Accept` header). For example, if you specify `audio/mpeg` as the value, Amazon Lex returns speech in the MPEG format.

    The following are the accepted values:

    *   audio/mpeg

    *   audio/ogg

    *   audio/pcm

    *   text/plain; charset=utf-8

    *   audio/* (defaults to mpeg)


## `inputStream = blob` -- *Required*
User input in PCM or Opus audio format or text format as described in the `Content-Type` HTTP header.

You can stream audio data to Amazon Lex or you can create a local buffer that captures all of the audio data before sending. In general, you get better performance if you stream audio data rather than buffering the data locally.




# Returns

`PostContentResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `LimitExceededException`, `InternalFailureException`, `ConflictException`, `UnsupportedMediaTypeException`, `NotAcceptableException`, `RequestTimeoutException`, `DependencyFailedException`, `BadGatewayException` or `LoopDetectedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostContent)
"""
@inline post_content(aws::AWSConfig=default_aws_config(); args...) = post_content(aws, args)

@inline post_content(aws::AWSConfig, args) = AWSCore.Services.runtime_lex(aws, "POST", "/bot/{botName}/alias/{botAlias}/user/{userId}/content", args)

@inline post_content(args) = post_content(default_aws_config(), args)


"""
    using AWSSDK.LexRuntime.post_text
    post_text([::AWSConfig], arguments::Dict)
    post_text([::AWSConfig]; botName=, botAlias=, userId=, inputText=, <keyword arguments>)

    using AWSCore.Services.runtime_lex
    runtime_lex([::AWSConfig], "POST", "/bot/{botName}/alias/{botAlias}/user/{userId}/text", arguments::Dict)
    runtime_lex([::AWSConfig], "POST", "/bot/{botName}/alias/{botAlias}/user/{userId}/text", botName=, botAlias=, userId=, inputText=, <keyword arguments>)

# PostText Operation

Sends user input (text-only) to Amazon Lex. Client applications can use this API to send requests to Amazon Lex at runtime. Amazon Lex then interprets the user input using the machine learning model it built for the bot.

In response, Amazon Lex returns the next `message` to convey to the user an optional `responseCard` to display. Consider the following example messages:

*   For a user input "I would like a pizza", Amazon Lex might return a response with a message eliciting slot data (for example, PizzaSize): "What size pizza would you like?"

*   After the user provides all of the pizza order information, Amazon Lex might return a response with a message to obtain user confirmation "Proceed with the pizza order?".

*   After the user replies to a confirmation prompt with a "yes", Amazon Lex might return a conclusion statement: "Thank you, your cheese pizza has been ordered.".

Not all Amazon Lex messages require a user response. For example, a conclusion statement does not require a response. Some messages require only a "yes" or "no" user response. In addition to the `message`, Amazon Lex provides additional context about the message in the response that you might use to enhance client behavior, for example, to display the appropriate client user interface. These are the `slotToElicit`, `dialogState`, `intentName`, and `slots` fields in the response. Consider the following examples:

*   If the message is to elicit slot data, Amazon Lex returns the following context information:

    *   `dialogState` set to ElicitSlot

    *   `intentName` set to the intent name in the current context

    *   `slotToElicit` set to the slot name for which the `message` is eliciting information

    *   `slots` set to a map of slots, configured for the intent, with currently known values

*   If the message is a confirmation prompt, the `dialogState` is set to ConfirmIntent and `SlotToElicit` is set to null.

*   If the message is a clarification prompt (configured for the intent) that indicates that user intent is not understood, the `dialogState` is set to ElicitIntent and `slotToElicit` is set to null.

In addition, Amazon Lex also returns your application-specific `sessionAttributes`. For more information, see [Managing Conversation Context](http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html).

# Arguments

## `botName = ::String` -- *Required*
The name of the Amazon Lex bot.


## `botAlias = ::String` -- *Required*
The alias of the Amazon Lex bot.


## `userId = ::String` -- *Required*
The ID of the client application user. Amazon Lex uses this to identify a user's conversation with your bot. At runtime, each request must contain the `userID` field.

To decide the user ID to use for your application, consider the following factors.

*   The `userID` field must not contain any personally identifiable information of the user, for example, name, personal identification numbers, or other end user personal information.

*   If you want a user to start a conversation on one device and continue on another device, use a user-specific identifier.

*   If you want the same user to be able to have two independent conversations on two different devices, choose a device-specific identifier.

*   A user can't have two independent conversations with two different versions of the same bot. For example, a user can't have a conversation with the PROD and BETA versions of the same bot. If you anticipate that a user will need to have conversation with two different versions, for example, while testing, include the bot alias in the user ID to separate the two conversations.


## `sessionAttributes = ::Dict{String,String}`
Application-specific information passed between Amazon Lex and a client application.

For more information, see [Setting Session Attributes](http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs).


## `requestAttributes = ::Dict{String,String}`
Request-specific information passed between Amazon Lex and a client application.

The namespace `x-amz-lex:` is reserved for special attributes. Don't create any request attributes with the prefix `x-amz-lex:`.

For more information, see [Setting Request Attributes](http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs).


## `inputText = ::String` -- *Required*
The text that the user entered (Amazon Lex interprets this text).




# Returns

`PostTextResponse`

# Exceptions

`NotFoundException`, `BadRequestException`, `LimitExceededException`, `InternalFailureException`, `ConflictException`, `DependencyFailedException`, `BadGatewayException` or `LoopDetectedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostText)
"""
@inline post_text(aws::AWSConfig=default_aws_config(); args...) = post_text(aws, args)

@inline post_text(aws::AWSConfig, args) = AWSCore.Services.runtime_lex(aws, "POST", "/bot/{botName}/alias/{botAlias}/user/{userId}/text", args)

@inline post_text(args) = post_text(default_aws_config(), args)




end # module LexRuntime


#==============================================================================#
# End of file
#==============================================================================#
