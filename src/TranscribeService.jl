#==============================================================================#
# TranscribeService.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/transcribe-2017-10-26.normal.json
#==============================================================================#

__precompile__()

module TranscribeService

using AWSCore


"""
    using AWSSDK.TranscribeService.create_vocabulary
    create_vocabulary([::AWSConfig], arguments::Dict)
    create_vocabulary([::AWSConfig]; VocabularyName=, LanguageCode=, Phrases=)

    using AWSCore.Services.transcribe
    transcribe([::AWSConfig], "CreateVocabulary", arguments::Dict)
    transcribe([::AWSConfig], "CreateVocabulary", VocabularyName=, LanguageCode=, Phrases=)

# CreateVocabulary Operation

Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file.

# Arguments

## `VocabularyName = ::String` -- *Required*
The name of the vocabulary. The name must be unique within an AWS account. The name is case-sensitive.


## `LanguageCode = "en-US" or "es-US"` -- *Required*
The language code of the vocabulary entries.


## `Phrases = [::String, ...]` -- *Required*
An array of strings that contains the vocabulary entries.




# Returns

`CreateVocabularyResponse`

# Exceptions

`BadRequestException`, `LimitExceededException`, `InternalFailureException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabulary)
"""
@inline create_vocabulary(aws::AWSConfig=default_aws_config(); args...) = create_vocabulary(aws, args)

@inline create_vocabulary(aws::AWSConfig, args) = AWSCore.Services.transcribe(aws, "CreateVocabulary", args)

@inline create_vocabulary(args) = create_vocabulary(default_aws_config(), args)


"""
    using AWSSDK.TranscribeService.delete_vocabulary
    delete_vocabulary([::AWSConfig], arguments::Dict)
    delete_vocabulary([::AWSConfig]; VocabularyName=)

    using AWSCore.Services.transcribe
    transcribe([::AWSConfig], "DeleteVocabulary", arguments::Dict)
    transcribe([::AWSConfig], "DeleteVocabulary", VocabularyName=)

# DeleteVocabulary Operation

Deletes a vocabulary from Amazon Transcribe.

# Arguments

## `VocabularyName = ::String` -- *Required*
The name of the vocabulary to delete.




# Exceptions

`NotFoundException`, `LimitExceededException`, `BadRequestException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteVocabulary)
"""
@inline delete_vocabulary(aws::AWSConfig=default_aws_config(); args...) = delete_vocabulary(aws, args)

@inline delete_vocabulary(aws::AWSConfig, args) = AWSCore.Services.transcribe(aws, "DeleteVocabulary", args)

@inline delete_vocabulary(args) = delete_vocabulary(default_aws_config(), args)


"""
    using AWSSDK.TranscribeService.get_transcription_job
    get_transcription_job([::AWSConfig], arguments::Dict)
    get_transcription_job([::AWSConfig]; TranscriptionJobName=)

    using AWSCore.Services.transcribe
    transcribe([::AWSConfig], "GetTranscriptionJob", arguments::Dict)
    transcribe([::AWSConfig], "GetTranscriptionJob", TranscriptionJobName=)

# GetTranscriptionJob Operation

Returns information about a transcription job. To see the status of the job, check the `TranscriptionJobStatus` field. If the status is `COMPLETED`, the job is finished and you can find the results at the location specified in the `TranscriptionFileUri` field.

# Arguments

## `TranscriptionJobName = ::String` -- *Required*
The name of the job.




# Returns

`GetTranscriptionJobResponse`

# Exceptions

`BadRequestException`, `LimitExceededException`, `InternalFailureException` or `NotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetTranscriptionJob)
"""
@inline get_transcription_job(aws::AWSConfig=default_aws_config(); args...) = get_transcription_job(aws, args)

@inline get_transcription_job(aws::AWSConfig, args) = AWSCore.Services.transcribe(aws, "GetTranscriptionJob", args)

@inline get_transcription_job(args) = get_transcription_job(default_aws_config(), args)


"""
    using AWSSDK.TranscribeService.get_vocabulary
    get_vocabulary([::AWSConfig], arguments::Dict)
    get_vocabulary([::AWSConfig]; VocabularyName=)

    using AWSCore.Services.transcribe
    transcribe([::AWSConfig], "GetVocabulary", arguments::Dict)
    transcribe([::AWSConfig], "GetVocabulary", VocabularyName=)

# GetVocabulary Operation

Gets information about a vocabulary.

# Arguments

## `VocabularyName = ::String` -- *Required*
The name of the vocabulary to return information about. The name is case-sensitive.




# Returns

`GetVocabularyResponse`

# Exceptions

`NotFoundException`, `LimitExceededException`, `InternalFailureException` or `BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetVocabulary)
"""
@inline get_vocabulary(aws::AWSConfig=default_aws_config(); args...) = get_vocabulary(aws, args)

@inline get_vocabulary(aws::AWSConfig, args) = AWSCore.Services.transcribe(aws, "GetVocabulary", args)

@inline get_vocabulary(args) = get_vocabulary(default_aws_config(), args)


"""
    using AWSSDK.TranscribeService.list_transcription_jobs
    list_transcription_jobs([::AWSConfig], arguments::Dict)
    list_transcription_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.transcribe
    transcribe([::AWSConfig], "ListTranscriptionJobs", arguments::Dict)
    transcribe([::AWSConfig], "ListTranscriptionJobs", <keyword arguments>)

# ListTranscriptionJobs Operation

Lists transcription jobs with the specified status.

# Arguments

## `Status = "IN_PROGRESS", "FAILED" or "COMPLETED"`
When specified, returns only transcription jobs with the specified status.


## `JobNameContains = ::String`
When specified, the jobs returned in the list are limited to jobs whose name contains the specified string.


## `NextToken = ::String`
If the result of the previous request to `ListTranscriptionJobs` was truncated, include the `NextToken` to fetch the next set of jobs.


## `MaxResults = ::Int`
The maximum number of jobs to return in the response. If there are fewer results in the list, this response contains only the actual results.




# Returns

`ListTranscriptionJobsResponse`

# Exceptions

`BadRequestException`, `LimitExceededException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListTranscriptionJobs)
"""
@inline list_transcription_jobs(aws::AWSConfig=default_aws_config(); args...) = list_transcription_jobs(aws, args)

@inline list_transcription_jobs(aws::AWSConfig, args) = AWSCore.Services.transcribe(aws, "ListTranscriptionJobs", args)

@inline list_transcription_jobs(args) = list_transcription_jobs(default_aws_config(), args)


"""
    using AWSSDK.TranscribeService.list_vocabularies
    list_vocabularies([::AWSConfig], arguments::Dict)
    list_vocabularies([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.transcribe
    transcribe([::AWSConfig], "ListVocabularies", arguments::Dict)
    transcribe([::AWSConfig], "ListVocabularies", <keyword arguments>)

# ListVocabularies Operation

Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.

# Arguments

## `NextToken = ::String`
If the result of the previous request to `ListVocabularies` was truncated, include the `NextToken` to fetch the next set of jobs.


## `MaxResults = ::Int`
The maximum number of vocabularies to return in the response. If there are fewer results in the list, this response contains only the actual results.


## `StateEquals = "PENDING", "READY" or "FAILED"`
When specified, only returns vocabularies with the `VocabularyState` field equal to the specified state.


## `NameContains = ::String`
When specified, the vocabularies returned in the list are limited to vocabularies whose name contains the specified string. The search is case-insensitive, `ListVocabularies` will return both "vocabularyname" and "VocabularyName" in the response list.




# Returns

`ListVocabulariesResponse`

# Exceptions

`BadRequestException`, `LimitExceededException` or `InternalFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListVocabularies)
"""
@inline list_vocabularies(aws::AWSConfig=default_aws_config(); args...) = list_vocabularies(aws, args)

@inline list_vocabularies(aws::AWSConfig, args) = AWSCore.Services.transcribe(aws, "ListVocabularies", args)

@inline list_vocabularies(args) = list_vocabularies(default_aws_config(), args)


"""
    using AWSSDK.TranscribeService.start_transcription_job
    start_transcription_job([::AWSConfig], arguments::Dict)
    start_transcription_job([::AWSConfig]; TranscriptionJobName=, LanguageCode=, MediaFormat=, Media=, <keyword arguments>)

    using AWSCore.Services.transcribe
    transcribe([::AWSConfig], "StartTranscriptionJob", arguments::Dict)
    transcribe([::AWSConfig], "StartTranscriptionJob", TranscriptionJobName=, LanguageCode=, MediaFormat=, Media=, <keyword arguments>)

# StartTranscriptionJob Operation

Starts an asynchronous job to transcribe speech to text.

# Arguments

## `TranscriptionJobName = ::String` -- *Required*
The name of the job. You can't use the strings "." or ".." in the job name. The name must be unique within an AWS account.


## `LanguageCode = "en-US" or "es-US"` -- *Required*
The language code for the language used in the input media file.


## `MediaSampleRateHertz = ::Int`
The sample rate, in Hertz, of the audio track in the input media file.


## `MediaFormat = "mp3", "mp4", "wav" or "flac"` -- *Required*
The format of the input media file.


## `Media = ["MediaFileUri" =>  ::String]` -- *Required*
An object that describes the input media for a transcription job.


## `OutputBucketName = ::String`
The location where the transcription is stored.

If you set the `OutputBucketName`, Amazon Transcribe puts the transcription in the specified S3 bucket. When you call the [GetTranscriptionJob](@ref) operation, the operation returns this location in the `TranscriptFileUri` field. The S3 bucket must have permissions that allow Amazon Transcribe to put files in the bucket. For more information, see [Permissions Required for IAM User Roles](https://docs.aws.amazon.com/transcribe/latest/dg/access-control-managing-permissions.html#auth-role-iam-user).

If you don't set the `OutputBucketName`, Amazon Transcribe generates a pre-signed URL, a shareable URL that provides secure access to your transcription, and returns it in the `TranscriptFileUri` field. Use this URL to download the transcription.


## `Settings = [ ... ]`
A `Settings` object that provides optional settings for a transcription job.
```
 Settings = [
        "VocabularyName" =>  ::String,
        "ShowSpeakerLabels" =>  ::Bool,
        "MaxSpeakerLabels" =>  ::Int,
        "ChannelIdentification" =>  ::Bool
    ]
```



# Returns

`StartTranscriptionJobResponse`

# Exceptions

`BadRequestException`, `LimitExceededException`, `InternalFailureException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartTranscriptionJob)
"""
@inline start_transcription_job(aws::AWSConfig=default_aws_config(); args...) = start_transcription_job(aws, args)

@inline start_transcription_job(aws::AWSConfig, args) = AWSCore.Services.transcribe(aws, "StartTranscriptionJob", args)

@inline start_transcription_job(args) = start_transcription_job(default_aws_config(), args)


"""
    using AWSSDK.TranscribeService.update_vocabulary
    update_vocabulary([::AWSConfig], arguments::Dict)
    update_vocabulary([::AWSConfig]; VocabularyName=, LanguageCode=, Phrases=)

    using AWSCore.Services.transcribe
    transcribe([::AWSConfig], "UpdateVocabulary", arguments::Dict)
    transcribe([::AWSConfig], "UpdateVocabulary", VocabularyName=, LanguageCode=, Phrases=)

# UpdateVocabulary Operation

Updates an existing vocabulary with new values. The `UpdateVocabulary` operation overwrites all of the existing information with the values that you provide in the request.

# Arguments

## `VocabularyName = ::String` -- *Required*
The name of the vocabulary to update. The name is case-sensitive.


## `LanguageCode = "en-US" or "es-US"` -- *Required*
The language code of the vocabulary entries.


## `Phrases = [::String, ...]` -- *Required*
An array of strings containing the vocabulary entries.




# Returns

`UpdateVocabularyResponse`

# Exceptions

`BadRequestException`, `LimitExceededException`, `InternalFailureException`, `NotFoundException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabulary)
"""
@inline update_vocabulary(aws::AWSConfig=default_aws_config(); args...) = update_vocabulary(aws, args)

@inline update_vocabulary(aws::AWSConfig, args) = AWSCore.Services.transcribe(aws, "UpdateVocabulary", args)

@inline update_vocabulary(args) = update_vocabulary(default_aws_config(), args)




end # module TranscribeService


#==============================================================================#
# End of file
#==============================================================================#
