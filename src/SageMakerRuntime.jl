#==============================================================================#
# SageMakerRuntime.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/runtime.sagemaker-2017-05-13.normal.json
#==============================================================================#

__precompile__()

module SageMakerRuntime

using AWSCore


"""
    using AWSSDK.SageMakerRuntime.invoke_endpoint
    invoke_endpoint([::AWSConfig], arguments::Dict)
    invoke_endpoint([::AWSConfig]; EndpointName=, Body=, <keyword arguments>)

    using AWSCore.Services.runtime_sagemaker
    runtime_sagemaker([::AWSConfig], "POST", "/endpoints/{EndpointName}/invocations", arguments::Dict)
    runtime_sagemaker([::AWSConfig], "POST", "/endpoints/{EndpointName}/invocations", EndpointName=, Body=, <keyword arguments>)

# InvokeEndpoint Operation

After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint.

For an overview of Amazon SageMaker, see [How It Works](http://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html)

Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax.

# Arguments

## `EndpointName = ::String` -- *Required*
The name of the endpoint that you specified when you created the endpoint using the [CreateEndpoint](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html) API.


## `Body = blob` -- *Required*
Provides input data, in the format specified in the `ContentType` request header. Amazon SageMaker passes all of the data in the body to the model.


## `*header:* Content-Type = ::String`
The MIME type of the input data in the request body.


## `*header:* Accept = ::String`
The desired MIME type of the inference in the response.




# Returns

`InvokeEndpointOutput`

# Exceptions

`InternalFailure`, `ServiceUnavailable`, `ValidationError` or `ModelError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/runtime.sagemaker-2017-05-13/InvokeEndpoint)
"""
@inline invoke_endpoint(aws::AWSConfig=default_aws_config(); args...) = invoke_endpoint(aws, args)

@inline invoke_endpoint(aws::AWSConfig, args) = AWSCore.Services.runtime_sagemaker(aws, "POST", "/endpoints/{EndpointName}/invocations", args)

@inline invoke_endpoint(args) = invoke_endpoint(default_aws_config(), args)




end # module SageMakerRuntime


#==============================================================================#
# End of file
#==============================================================================#
