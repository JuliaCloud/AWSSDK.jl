#==============================================================================#
# IoTJobsDataPlane.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/iot-jobs-data-2017-09-29.normal.json
#==============================================================================#

__precompile__()

module IoTJobsDataPlane

using AWSCore


"""
    using AWSSDK.IoTJobsDataPlane.describe_job_execution
    describe_job_execution([::AWSConfig], arguments::Dict)
    describe_job_execution([::AWSConfig]; jobId=, thingName=, <keyword arguments>)

    using AWSCore.Services.iot_jobs_data
    iot_jobs_data([::AWSConfig], "GET", "/things/{thingName}/jobs/{jobId}", arguments::Dict)
    iot_jobs_data([::AWSConfig], "GET", "/things/{thingName}/jobs/{jobId}", jobId=, thingName=, <keyword arguments>)

# DescribeJobExecution Operation

Gets details of a job execution.

# Arguments

## `jobId = ::String` -- *Required*
The unique identifier assigned to this job when it was created.


## `thingName = ::String` -- *Required*
The thing name associated with the device the job execution is running on.


## `includeJobDocument = ::Bool`
Optional. When set to true, the response contains the job document. The default is false.


## `executionNumber = ::Int`
Optional. A number that identifies a particular job execution on a particular device. If not specified, the latest job execution is returned.




# Returns

`DescribeJobExecutionResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException`, `ServiceUnavailableException`, `CertificateValidationException` or `TerminalStateException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-jobs-data-2017-09-29/DescribeJobExecution)
"""
@inline describe_job_execution(aws::AWSConfig=default_aws_config(); args...) = describe_job_execution(aws, args)

@inline describe_job_execution(aws::AWSConfig, args) = AWSCore.Services.iot_jobs_data(aws, "GET", "/things/{thingName}/jobs/{jobId}", args)

@inline describe_job_execution(args) = describe_job_execution(default_aws_config(), args)


"""
    using AWSSDK.IoTJobsDataPlane.get_pending_job_executions
    get_pending_job_executions([::AWSConfig], arguments::Dict)
    get_pending_job_executions([::AWSConfig]; thingName=)

    using AWSCore.Services.iot_jobs_data
    iot_jobs_data([::AWSConfig], "GET", "/things/{thingName}/jobs", arguments::Dict)
    iot_jobs_data([::AWSConfig], "GET", "/things/{thingName}/jobs", thingName=)

# GetPendingJobExecutions Operation

Gets the list of all jobs for a thing that are not in a terminal status.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing that is executing the job.




# Returns

`GetPendingJobExecutionsResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException`, `ServiceUnavailableException` or `CertificateValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-jobs-data-2017-09-29/GetPendingJobExecutions)
"""
@inline get_pending_job_executions(aws::AWSConfig=default_aws_config(); args...) = get_pending_job_executions(aws, args)

@inline get_pending_job_executions(aws::AWSConfig, args) = AWSCore.Services.iot_jobs_data(aws, "GET", "/things/{thingName}/jobs", args)

@inline get_pending_job_executions(args) = get_pending_job_executions(default_aws_config(), args)


"""
    using AWSSDK.IoTJobsDataPlane.start_next_pending_job_execution
    start_next_pending_job_execution([::AWSConfig], arguments::Dict)
    start_next_pending_job_execution([::AWSConfig]; thingName=, <keyword arguments>)

    using AWSCore.Services.iot_jobs_data
    iot_jobs_data([::AWSConfig], "PUT", "/things/{thingName}/jobs/\$next", arguments::Dict)
    iot_jobs_data([::AWSConfig], "PUT", "/things/{thingName}/jobs/\$next", thingName=, <keyword arguments>)

# StartNextPendingJobExecution Operation

Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.

# Arguments

## `thingName = ::String` -- *Required*
The name of the thing associated with the device.


## `statusDetails = ::Dict{String,String}`
A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.




# Returns

`StartNextPendingJobExecutionResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException`, `ServiceUnavailableException` or `CertificateValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-jobs-data-2017-09-29/StartNextPendingJobExecution)
"""
@inline start_next_pending_job_execution(aws::AWSConfig=default_aws_config(); args...) = start_next_pending_job_execution(aws, args)

@inline start_next_pending_job_execution(aws::AWSConfig, args) = AWSCore.Services.iot_jobs_data(aws, "PUT", "/things/{thingName}/jobs/\$next", args)

@inline start_next_pending_job_execution(args) = start_next_pending_job_execution(default_aws_config(), args)


"""
    using AWSSDK.IoTJobsDataPlane.update_job_execution
    update_job_execution([::AWSConfig], arguments::Dict)
    update_job_execution([::AWSConfig]; jobId=, thingName=, status=, <keyword arguments>)

    using AWSCore.Services.iot_jobs_data
    iot_jobs_data([::AWSConfig], "POST", "/things/{thingName}/jobs/{jobId}", arguments::Dict)
    iot_jobs_data([::AWSConfig], "POST", "/things/{thingName}/jobs/{jobId}", jobId=, thingName=, status=, <keyword arguments>)

# UpdateJobExecution Operation

Updates the status of a job execution.

# Arguments

## `jobId = ::String` -- *Required*
The unique identifier assigned to this job when it was created.


## `thingName = ::String` -- *Required*
The name of the thing associated with the device.


## `status = "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "REJECTED", "REMOVED" or "CANCELED"` -- *Required*
The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED). This must be specified on every update.


## `statusDetails = ::Dict{String,String}`
Optional. A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.


## `expectedVersion = ::Int`
Optional. The expected current version of the job execution. Each time you update the job execution, its version is incremented. If the version of the job execution stored in Jobs does not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain the job execution status data.)


## `includeJobExecutionState = ::Bool`
Optional. When included and set to true, the response contains the JobExecutionState data. The default is false.


## `includeJobDocument = ::Bool`
Optional. When set to true, the response contains the job document. The default is false.


## `executionNumber = ::Int`
Optional. A number that identifies a particular job execution on a particular device.




# Returns

`UpdateJobExecutionResponse`

# Exceptions

`InvalidRequestException`, `ResourceNotFoundException`, `ThrottlingException`, `ServiceUnavailableException`, `CertificateValidationException` or `InvalidStateTransitionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/iot-jobs-data-2017-09-29/UpdateJobExecution)
"""
@inline update_job_execution(aws::AWSConfig=default_aws_config(); args...) = update_job_execution(aws, args)

@inline update_job_execution(aws::AWSConfig, args) = AWSCore.Services.iot_jobs_data(aws, "POST", "/things/{thingName}/jobs/{jobId}", args)

@inline update_job_execution(args) = update_job_execution(default_aws_config(), args)




end # module IoTJobsDataPlane


#==============================================================================#
# End of file
#==============================================================================#
