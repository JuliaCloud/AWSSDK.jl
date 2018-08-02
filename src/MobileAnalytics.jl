#==============================================================================#
# MobileAnalytics.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/mobileanalytics-2014-06-05.normal.json
#==============================================================================#

__precompile__()

module MobileAnalytics

using AWSCore


"""
    using AWSSDK.MobileAnalytics.put_events
    put_events([::AWSConfig], arguments::Dict)
    put_events([::AWSConfig]; events=, *header:* x-amz-Client-Context=, <keyword arguments>)

    using AWSCore.Services.mobileanalytics
    mobileanalytics([::AWSConfig], "POST", "/2014-06-05/events", arguments::Dict)
    mobileanalytics([::AWSConfig], "POST", "/2014-06-05/events", events=, *header:* x-amz-Client-Context=, <keyword arguments>)

# PutEvents Operation

The PutEvents operation records one or more events. You can have up to 1,500 unique custom events per app, any combination of up to 40 attributes and metrics per custom event, and any number of attribute or metric values.

# Arguments

## `events = [[ ... ], ...]` -- *Required*
An array of Event JSON objects
```
 events = [[
        "eventType" => <required> ::String,
        "timestamp" => <required> ::String,
        "session" =>  [
            "id" =>  ::String,
            "duration" =>  ::Int,
            "startTimestamp" =>  ::String,
            "stopTimestamp" =>  ::String
        ],
        "version" =>  ::String,
        "attributes" =>  ::Dict{String,String},
        "metrics" =>  ::Dict{String,String}
    ], ...]
```

## `*header:* x-amz-Client-Context = ::String` -- *Required*
The client context including the client ID, app title, app version and package name.


## `*header:* x-amz-Client-Context-Encoding = ::String`
The encoding used for the client context.




# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mobileanalytics-2014-06-05/PutEvents)
"""
@inline put_events(aws::AWSConfig=default_aws_config(); args...) = put_events(aws, args)

@inline put_events(aws::AWSConfig, args) = AWSCore.Services.mobileanalytics(aws, "POST", "/2014-06-05/events", args)

@inline put_events(args) = put_events(default_aws_config(), args)




end # module MobileAnalytics


#==============================================================================#
# End of file
#==============================================================================#
