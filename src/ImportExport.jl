#==============================================================================#
# ImportExport.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/importexport-2010-06-01.normal.json
#==============================================================================#

__precompile__()

module ImportExport

using AWSCore


"""
    using AWSSDK.ImportExport.cancel_job
    cancel_job([::AWSConfig], arguments::Dict)
    cancel_job([::AWSConfig]; JobId=, <keyword arguments>)

    using AWSCore.Services.importexport
    importexport([::AWSConfig], "POST", "/?Operation=CancelJob", "CancelJob", arguments::Dict)
    importexport([::AWSConfig], "POST", "/?Operation=CancelJob", "CancelJob", JobId=, <keyword arguments>)

# CancelJob Operation

This operation cancels a specified job. Only the job owner can cancel it. The operation fails if the job has already started or is complete.

# Arguments

## `JobId = ::String` -- *Required*



## `APIVersion = ::String`





# Returns

`CancelJobOutput`

# Exceptions

`InvalidJobIdException`, `ExpiredJobIdException`, `CanceledJobIdException`, `UnableToCancelJobIdException`, `InvalidAccessKeyIdException` or `InvalidVersionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/importexport-2010-06-01/CancelJob)
"""
@inline cancel_job(aws::AWSConfig=default_aws_config(); args...) = cancel_job(aws, args)

@inline cancel_job(aws::AWSConfig, args) = AWSCore.Services.importexport(aws, "POST", "/?Operation=CancelJob", "CancelJob", args)

@inline cancel_job(args) = cancel_job(default_aws_config(), args)


"""
    using AWSSDK.ImportExport.create_job
    create_job([::AWSConfig], arguments::Dict)
    create_job([::AWSConfig]; JobType=, Manifest=, ValidateOnly=, <keyword arguments>)

    using AWSCore.Services.importexport
    importexport([::AWSConfig], "POST", "/?Operation=CreateJob", "CreateJob", arguments::Dict)
    importexport([::AWSConfig], "POST", "/?Operation=CreateJob", "CreateJob", JobType=, Manifest=, ValidateOnly=, <keyword arguments>)

# CreateJob Operation

This operation initiates the process of scheduling an upload or download of your data. You include in the request a manifest that describes the data transfer specifics. The response to the request includes a job ID, which you can use in other operations, a signature that you use to identify your storage device, and the address where you should ship your storage device.

# Arguments

## `JobType = "Import" or "Export"` -- *Required*



## `Manifest = ::String` -- *Required*



## `ManifestAddendum = ::String`



## `ValidateOnly = ::Bool` -- *Required*



## `APIVersion = ::String`





# Returns

`CreateJobOutput`

# Exceptions

`MissingParameterException`, `InvalidParameterException`, `InvalidAccessKeyIdException`, `InvalidAddressException`, `InvalidManifestFieldException`, `MissingManifestFieldException`, `NoSuchBucketException`, `MissingCustomsException`, `InvalidCustomsException`, `InvalidFileSystemException`, `MultipleRegionsException`, `BucketPermissionException`, `MalformedManifestException`, `CreateJobQuotaExceededException`, `InvalidJobIdException` or `InvalidVersionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/importexport-2010-06-01/CreateJob)
"""
@inline create_job(aws::AWSConfig=default_aws_config(); args...) = create_job(aws, args)

@inline create_job(aws::AWSConfig, args) = AWSCore.Services.importexport(aws, "POST", "/?Operation=CreateJob", "CreateJob", args)

@inline create_job(args) = create_job(default_aws_config(), args)


"""
    using AWSSDK.ImportExport.get_shipping_label
    get_shipping_label([::AWSConfig], arguments::Dict)
    get_shipping_label([::AWSConfig]; jobIds=, <keyword arguments>)

    using AWSCore.Services.importexport
    importexport([::AWSConfig], "POST", "/?Operation=GetShippingLabel", "GetShippingLabel", arguments::Dict)
    importexport([::AWSConfig], "POST", "/?Operation=GetShippingLabel", "GetShippingLabel", jobIds=, <keyword arguments>)

# GetShippingLabel Operation

This operation generates a pre-paid UPS shipping label that you will use to ship your device to AWS for processing.

# Arguments

## `jobIds = [::String, ...]` -- *Required*



## `name = ::String`



## `company = ::String`



## `phoneNumber = ::String`



## `country = ::String`



## `stateOrProvince = ::String`



## `city = ::String`



## `postalCode = ::String`



## `street1 = ::String`



## `street2 = ::String`



## `street3 = ::String`



## `APIVersion = ::String`





# Returns

`GetShippingLabelOutput`

# Exceptions

`InvalidJobIdException`, `ExpiredJobIdException`, `CanceledJobIdException`, `InvalidAccessKeyIdException`, `InvalidAddressException`, `InvalidVersionException` or `InvalidParameterException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/importexport-2010-06-01/GetShippingLabel)
"""
@inline get_shipping_label(aws::AWSConfig=default_aws_config(); args...) = get_shipping_label(aws, args)

@inline get_shipping_label(aws::AWSConfig, args) = AWSCore.Services.importexport(aws, "POST", "/?Operation=GetShippingLabel", "GetShippingLabel", args)

@inline get_shipping_label(args) = get_shipping_label(default_aws_config(), args)


"""
    using AWSSDK.ImportExport.get_status
    get_status([::AWSConfig], arguments::Dict)
    get_status([::AWSConfig]; JobId=, <keyword arguments>)

    using AWSCore.Services.importexport
    importexport([::AWSConfig], "POST", "/?Operation=GetStatus", "GetStatus", arguments::Dict)
    importexport([::AWSConfig], "POST", "/?Operation=GetStatus", "GetStatus", JobId=, <keyword arguments>)

# GetStatus Operation

This operation returns information about a job, including where the job is in the processing pipeline, the status of the results, and the signature value associated with the job. You can only return information about jobs you own.

# Arguments

## `JobId = ::String` -- *Required*



## `APIVersion = ::String`





# Returns

`GetStatusOutput`

# Exceptions

`InvalidJobIdException`, `ExpiredJobIdException`, `CanceledJobIdException`, `InvalidAccessKeyIdException` or `InvalidVersionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/importexport-2010-06-01/GetStatus)
"""
@inline get_status(aws::AWSConfig=default_aws_config(); args...) = get_status(aws, args)

@inline get_status(aws::AWSConfig, args) = AWSCore.Services.importexport(aws, "POST", "/?Operation=GetStatus", "GetStatus", args)

@inline get_status(args) = get_status(default_aws_config(), args)


"""
    using AWSSDK.ImportExport.list_jobs
    list_jobs([::AWSConfig], arguments::Dict)
    list_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.importexport
    importexport([::AWSConfig], "POST", "/?Operation=ListJobs", "ListJobs", arguments::Dict)
    importexport([::AWSConfig], "POST", "/?Operation=ListJobs", "ListJobs", <keyword arguments>)

# ListJobs Operation

This operation returns the jobs associated with the requester. AWS Import/Export lists the jobs in reverse chronological order based on the date of creation. For example if Job Test1 was created 2009Dec30 and Test2 was created 2010Feb05, the ListJobs operation would return Test2 followed by Test1.

# Arguments

## `MaxJobs = ::Int`



## `Marker = ::String`



## `APIVersion = ::String`





# Returns

`ListJobsOutput`

# Exceptions

`InvalidParameterException`, `InvalidAccessKeyIdException` or `InvalidVersionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/importexport-2010-06-01/ListJobs)
"""
@inline list_jobs(aws::AWSConfig=default_aws_config(); args...) = list_jobs(aws, args)

@inline list_jobs(aws::AWSConfig, args) = AWSCore.Services.importexport(aws, "POST", "/?Operation=ListJobs", "ListJobs", args)

@inline list_jobs(args) = list_jobs(default_aws_config(), args)


"""
    using AWSSDK.ImportExport.update_job
    update_job([::AWSConfig], arguments::Dict)
    update_job([::AWSConfig]; JobId=, Manifest=, JobType=, ValidateOnly=, <keyword arguments>)

    using AWSCore.Services.importexport
    importexport([::AWSConfig], "POST", "/?Operation=UpdateJob", "UpdateJob", arguments::Dict)
    importexport([::AWSConfig], "POST", "/?Operation=UpdateJob", "UpdateJob", JobId=, Manifest=, JobType=, ValidateOnly=, <keyword arguments>)

# UpdateJob Operation

You use this operation to change the parameters specified in the original manifest file by supplying a new manifest file. The manifest file attached to this request replaces the original manifest file. You can only use the operation after a CreateJob request but before the data transfer starts and you can only use it on jobs you own.

# Arguments

## `JobId = ::String` -- *Required*



## `Manifest = ::String` -- *Required*



## `JobType = "Import" or "Export"` -- *Required*



## `ValidateOnly = ::Bool` -- *Required*



## `APIVersion = ::String`





# Returns

`UpdateJobOutput`

# Exceptions

`MissingParameterException`, `InvalidParameterException`, `InvalidAccessKeyIdException`, `InvalidAddressException`, `InvalidManifestFieldException`, `InvalidJobIdException`, `MissingManifestFieldException`, `NoSuchBucketException`, `ExpiredJobIdException`, `CanceledJobIdException`, `MissingCustomsException`, `InvalidCustomsException`, `InvalidFileSystemException`, `MultipleRegionsException`, `BucketPermissionException`, `MalformedManifestException`, `UnableToUpdateJobIdException` or `InvalidVersionException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/importexport-2010-06-01/UpdateJob)
"""
@inline update_job(aws::AWSConfig=default_aws_config(); args...) = update_job(aws, args)

@inline update_job(aws::AWSConfig, args) = AWSCore.Services.importexport(aws, "POST", "/?Operation=UpdateJob", "UpdateJob", args)

@inline update_job(args) = update_job(default_aws_config(), args)




end # module ImportExport


#==============================================================================#
# End of file
#==============================================================================#
