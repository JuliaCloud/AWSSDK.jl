#==============================================================================#
# Comprehend.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/comprehend-2017-11-27.normal.json
#==============================================================================#

__precompile__()

module Comprehend

using AWSCore


"""
    using AWSSDK.Comprehend.batch_detect_dominant_language
    batch_detect_dominant_language([::AWSConfig], arguments::Dict)
    batch_detect_dominant_language([::AWSConfig]; TextList=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "BatchDetectDominantLanguage", arguments::Dict)
    comprehend([::AWSConfig], "BatchDetectDominantLanguage", TextList=)

# BatchDetectDominantLanguage Operation

Determines the dominant language of the input text for a batch of documents. For a list of languages that Amazon Comprehend can detect, see [Amazon Comprehend Supported Languages](http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).

# Arguments

## `TextList = [::String, ...]` -- *Required*
A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document should contain at least 20 characters and must contain fewer than 5,000 bytes of UTF-8 encoded characters.




# Returns

`BatchDetectDominantLanguageResponse`

# Exceptions

`InvalidRequestException`, `TextSizeLimitExceededException`, `BatchSizeLimitExceededException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectDominantLanguage)
"""
@inline batch_detect_dominant_language(aws::AWSConfig=default_aws_config(); args...) = batch_detect_dominant_language(aws, args)

@inline batch_detect_dominant_language(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "BatchDetectDominantLanguage", args)

@inline batch_detect_dominant_language(args) = batch_detect_dominant_language(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.batch_detect_entities
    batch_detect_entities([::AWSConfig], arguments::Dict)
    batch_detect_entities([::AWSConfig]; TextList=, LanguageCode=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "BatchDetectEntities", arguments::Dict)
    comprehend([::AWSConfig], "BatchDetectEntities", TextList=, LanguageCode=)

# BatchDetectEntities Operation

Inspects the text of a batch of documents for named entities and returns information about them. For more information about named entities, see [how-entities](@ref)

# Arguments

## `TextList = [::String, ...]` -- *Required*
A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer than 5,000 bytes of UTF-8 encoded characters.


## `LanguageCode = "en" or "es"` -- *Required*
The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.




# Returns

`BatchDetectEntitiesResponse`

# Exceptions

`InvalidRequestException`, `TextSizeLimitExceededException`, `UnsupportedLanguageException`, `BatchSizeLimitExceededException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectEntities)
"""
@inline batch_detect_entities(aws::AWSConfig=default_aws_config(); args...) = batch_detect_entities(aws, args)

@inline batch_detect_entities(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "BatchDetectEntities", args)

@inline batch_detect_entities(args) = batch_detect_entities(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.batch_detect_key_phrases
    batch_detect_key_phrases([::AWSConfig], arguments::Dict)
    batch_detect_key_phrases([::AWSConfig]; TextList=, LanguageCode=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "BatchDetectKeyPhrases", arguments::Dict)
    comprehend([::AWSConfig], "BatchDetectKeyPhrases", TextList=, LanguageCode=)

# BatchDetectKeyPhrases Operation

Detects the key noun phrases found in a batch of documents.

# Arguments

## `TextList = [::String, ...]` -- *Required*
A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.


## `LanguageCode = "en" or "es"` -- *Required*
The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.




# Returns

`BatchDetectKeyPhrasesResponse`

# Exceptions

`InvalidRequestException`, `TextSizeLimitExceededException`, `UnsupportedLanguageException`, `BatchSizeLimitExceededException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectKeyPhrases)
"""
@inline batch_detect_key_phrases(aws::AWSConfig=default_aws_config(); args...) = batch_detect_key_phrases(aws, args)

@inline batch_detect_key_phrases(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "BatchDetectKeyPhrases", args)

@inline batch_detect_key_phrases(args) = batch_detect_key_phrases(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.batch_detect_sentiment
    batch_detect_sentiment([::AWSConfig], arguments::Dict)
    batch_detect_sentiment([::AWSConfig]; TextList=, LanguageCode=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "BatchDetectSentiment", arguments::Dict)
    comprehend([::AWSConfig], "BatchDetectSentiment", TextList=, LanguageCode=)

# BatchDetectSentiment Operation

Inspects a batch of documents and returns an inference of the prevailing sentiment, `POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`, in each one.

# Arguments

## `TextList = [::String, ...]` -- *Required*
A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.


## `LanguageCode = "en" or "es"` -- *Required*
The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.




# Returns

`BatchDetectSentimentResponse`

# Exceptions

`InvalidRequestException`, `TextSizeLimitExceededException`, `UnsupportedLanguageException`, `BatchSizeLimitExceededException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSentiment)
"""
@inline batch_detect_sentiment(aws::AWSConfig=default_aws_config(); args...) = batch_detect_sentiment(aws, args)

@inline batch_detect_sentiment(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "BatchDetectSentiment", args)

@inline batch_detect_sentiment(args) = batch_detect_sentiment(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.batch_detect_syntax
    batch_detect_syntax([::AWSConfig], arguments::Dict)
    batch_detect_syntax([::AWSConfig]; TextList=, LanguageCode=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "BatchDetectSyntax", arguments::Dict)
    comprehend([::AWSConfig], "BatchDetectSyntax", TextList=, LanguageCode=)

# BatchDetectSyntax Operation

Inspects the text of a batch of documents for the syntax and part of speech of the words in the document and returns information about them. For more information, see [how-syntax](@ref).

# Arguments

## `TextList = [::String, ...]` -- *Required*
A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.


## `LanguageCode = "en"` -- *Required*
The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.




# Returns

`BatchDetectSyntaxResponse`

# Exceptions

`InvalidRequestException`, `TextSizeLimitExceededException`, `UnsupportedLanguageException`, `BatchSizeLimitExceededException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSyntax)
"""
@inline batch_detect_syntax(aws::AWSConfig=default_aws_config(); args...) = batch_detect_syntax(aws, args)

@inline batch_detect_syntax(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "BatchDetectSyntax", args)

@inline batch_detect_syntax(args) = batch_detect_syntax(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.describe_dominant_language_detection_job
    describe_dominant_language_detection_job([::AWSConfig], arguments::Dict)
    describe_dominant_language_detection_job([::AWSConfig]; JobId=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "DescribeDominantLanguageDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "DescribeDominantLanguageDetectionJob", JobId=)

# DescribeDominantLanguageDetectionJob Operation

Gets the properties associated with a dominant language detection job. Use this operation to get the status of a detection job.

# Arguments

## `JobId = ::String` -- *Required*
The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.




# Returns

`DescribeDominantLanguageDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `JobNotFoundException`, `TooManyRequestsException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDominantLanguageDetectionJob)
"""
@inline describe_dominant_language_detection_job(aws::AWSConfig=default_aws_config(); args...) = describe_dominant_language_detection_job(aws, args)

@inline describe_dominant_language_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "DescribeDominantLanguageDetectionJob", args)

@inline describe_dominant_language_detection_job(args) = describe_dominant_language_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.describe_entities_detection_job
    describe_entities_detection_job([::AWSConfig], arguments::Dict)
    describe_entities_detection_job([::AWSConfig]; JobId=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "DescribeEntitiesDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "DescribeEntitiesDetectionJob", JobId=)

# DescribeEntitiesDetectionJob Operation

Gets the properties associated with an entities detection job. Use this operation to get the status of a detection job.

# Arguments

## `JobId = ::String` -- *Required*
The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.




# Returns

`DescribeEntitiesDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `JobNotFoundException`, `TooManyRequestsException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEntitiesDetectionJob)
"""
@inline describe_entities_detection_job(aws::AWSConfig=default_aws_config(); args...) = describe_entities_detection_job(aws, args)

@inline describe_entities_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "DescribeEntitiesDetectionJob", args)

@inline describe_entities_detection_job(args) = describe_entities_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.describe_key_phrases_detection_job
    describe_key_phrases_detection_job([::AWSConfig], arguments::Dict)
    describe_key_phrases_detection_job([::AWSConfig]; JobId=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "DescribeKeyPhrasesDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "DescribeKeyPhrasesDetectionJob", JobId=)

# DescribeKeyPhrasesDetectionJob Operation

Gets the properties associated with a key phrases detection job. Use this operation to get the status of a detection job.

# Arguments

## `JobId = ::String` -- *Required*
The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.




# Returns

`DescribeKeyPhrasesDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `JobNotFoundException`, `TooManyRequestsException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeKeyPhrasesDetectionJob)
"""
@inline describe_key_phrases_detection_job(aws::AWSConfig=default_aws_config(); args...) = describe_key_phrases_detection_job(aws, args)

@inline describe_key_phrases_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "DescribeKeyPhrasesDetectionJob", args)

@inline describe_key_phrases_detection_job(args) = describe_key_phrases_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.describe_sentiment_detection_job
    describe_sentiment_detection_job([::AWSConfig], arguments::Dict)
    describe_sentiment_detection_job([::AWSConfig]; JobId=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "DescribeSentimentDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "DescribeSentimentDetectionJob", JobId=)

# DescribeSentimentDetectionJob Operation

Gets the properties associated with a sentiment detection job. Use this operation to get the status of a detection job.

# Arguments

## `JobId = ::String` -- *Required*
The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.




# Returns

`DescribeSentimentDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `JobNotFoundException`, `TooManyRequestsException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeSentimentDetectionJob)
"""
@inline describe_sentiment_detection_job(aws::AWSConfig=default_aws_config(); args...) = describe_sentiment_detection_job(aws, args)

@inline describe_sentiment_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "DescribeSentimentDetectionJob", args)

@inline describe_sentiment_detection_job(args) = describe_sentiment_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.describe_topics_detection_job
    describe_topics_detection_job([::AWSConfig], arguments::Dict)
    describe_topics_detection_job([::AWSConfig]; JobId=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "DescribeTopicsDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "DescribeTopicsDetectionJob", JobId=)

# DescribeTopicsDetectionJob Operation

Gets the properties associated with a topic detection job. Use this operation to get the status of a detection job.

# Arguments

## `JobId = ::String` -- *Required*
The identifier assigned by the user to the detection job.




# Returns

`DescribeTopicsDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `JobNotFoundException`, `TooManyRequestsException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeTopicsDetectionJob)
"""
@inline describe_topics_detection_job(aws::AWSConfig=default_aws_config(); args...) = describe_topics_detection_job(aws, args)

@inline describe_topics_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "DescribeTopicsDetectionJob", args)

@inline describe_topics_detection_job(args) = describe_topics_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.detect_dominant_language
    detect_dominant_language([::AWSConfig], arguments::Dict)
    detect_dominant_language([::AWSConfig]; Text=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "DetectDominantLanguage", arguments::Dict)
    comprehend([::AWSConfig], "DetectDominantLanguage", Text=)

# DetectDominantLanguage Operation

Determines the dominant language of the input text. For a list of languages that Amazon Comprehend can detect, see [Amazon Comprehend Supported Languages](http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).

# Arguments

## `Text = ::String` -- *Required*
A UTF-8 text string. Each string should contain at least 20 characters and must contain fewer that 5,000 bytes of UTF-8 encoded characters.




# Returns

`DetectDominantLanguageResponse`

# Exceptions

`InvalidRequestException`, `TextSizeLimitExceededException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectDominantLanguage)
"""
@inline detect_dominant_language(aws::AWSConfig=default_aws_config(); args...) = detect_dominant_language(aws, args)

@inline detect_dominant_language(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "DetectDominantLanguage", args)

@inline detect_dominant_language(args) = detect_dominant_language(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.detect_entities
    detect_entities([::AWSConfig], arguments::Dict)
    detect_entities([::AWSConfig]; Text=, LanguageCode=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "DetectEntities", arguments::Dict)
    comprehend([::AWSConfig], "DetectEntities", Text=, LanguageCode=)

# DetectEntities Operation

Inspects text for named entities, and returns information about them. For more information, about named entities, see [how-entities](@ref).

# Arguments

## `Text = ::String` -- *Required*
A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.


## `LanguageCode = "en" or "es"` -- *Required*
The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.




# Returns

`DetectEntitiesResponse`

# Exceptions

`InvalidRequestException`, `TextSizeLimitExceededException`, `UnsupportedLanguageException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectEntities)
"""
@inline detect_entities(aws::AWSConfig=default_aws_config(); args...) = detect_entities(aws, args)

@inline detect_entities(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "DetectEntities", args)

@inline detect_entities(args) = detect_entities(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.detect_key_phrases
    detect_key_phrases([::AWSConfig], arguments::Dict)
    detect_key_phrases([::AWSConfig]; Text=, LanguageCode=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "DetectKeyPhrases", arguments::Dict)
    comprehend([::AWSConfig], "DetectKeyPhrases", Text=, LanguageCode=)

# DetectKeyPhrases Operation

Detects the key noun phrases found in the text.

# Arguments

## `Text = ::String` -- *Required*
A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.


## `LanguageCode = "en" or "es"` -- *Required*
The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.




# Returns

`DetectKeyPhrasesResponse`

# Exceptions

`InvalidRequestException`, `TextSizeLimitExceededException`, `UnsupportedLanguageException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectKeyPhrases)
"""
@inline detect_key_phrases(aws::AWSConfig=default_aws_config(); args...) = detect_key_phrases(aws, args)

@inline detect_key_phrases(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "DetectKeyPhrases", args)

@inline detect_key_phrases(args) = detect_key_phrases(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.detect_sentiment
    detect_sentiment([::AWSConfig], arguments::Dict)
    detect_sentiment([::AWSConfig]; Text=, LanguageCode=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "DetectSentiment", arguments::Dict)
    comprehend([::AWSConfig], "DetectSentiment", Text=, LanguageCode=)

# DetectSentiment Operation

Inspects text and returns an inference of the prevailing sentiment (`POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`).

# Arguments

## `Text = ::String` -- *Required*
A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.


## `LanguageCode = "en" or "es"` -- *Required*
The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.




# Returns

`DetectSentimentResponse`

# Exceptions

`InvalidRequestException`, `TextSizeLimitExceededException`, `UnsupportedLanguageException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSentiment)
"""
@inline detect_sentiment(aws::AWSConfig=default_aws_config(); args...) = detect_sentiment(aws, args)

@inline detect_sentiment(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "DetectSentiment", args)

@inline detect_sentiment(args) = detect_sentiment(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.detect_syntax
    detect_syntax([::AWSConfig], arguments::Dict)
    detect_syntax([::AWSConfig]; Text=, LanguageCode=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "DetectSyntax", arguments::Dict)
    comprehend([::AWSConfig], "DetectSyntax", Text=, LanguageCode=)

# DetectSyntax Operation

Inspects text for syntax and the part of speech of words in the document. For more information, [how-syntax](@ref).

# Arguments

## `Text = ::String` -- *Required*
A UTF-8 string. Each string must contain fewer that 5,000 bytes of UTF encoded characters.


## `LanguageCode = "en"` -- *Required*
The language code of the input documents. You can specify English ("en") or Spanish ("es").




# Returns

`DetectSyntaxResponse`

# Exceptions

`InvalidRequestException`, `TextSizeLimitExceededException`, `UnsupportedLanguageException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSyntax)
"""
@inline detect_syntax(aws::AWSConfig=default_aws_config(); args...) = detect_syntax(aws, args)

@inline detect_syntax(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "DetectSyntax", args)

@inline detect_syntax(args) = detect_syntax(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.list_dominant_language_detection_jobs
    list_dominant_language_detection_jobs([::AWSConfig], arguments::Dict)
    list_dominant_language_detection_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "ListDominantLanguageDetectionJobs", arguments::Dict)
    comprehend([::AWSConfig], "ListDominantLanguageDetectionJobs", <keyword arguments>)

# ListDominantLanguageDetectionJobs Operation

Gets a list of the dominant language detection jobs that you have submitted.

# Arguments

## `Filter = [ ... ]`
Filters that jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
```
 Filter = [
        "JobName" =>  ::String,
        "JobStatus" =>  "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED" or "STOPPED",
        "SubmitTimeBefore" =>  timestamp,
        "SubmitTimeAfter" =>  timestamp
    ]
```

## `NextToken = ::String`
Identifies the next page of results to return.


## `MaxResults = ::Int`
The maximum number of results to return in each page. The default is 100.




# Returns

`ListDominantLanguageDetectionJobsResponse`

# Exceptions

`InvalidRequestException`, `TooManyRequestsException`, `InvalidFilterException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDominantLanguageDetectionJobs)
"""
@inline list_dominant_language_detection_jobs(aws::AWSConfig=default_aws_config(); args...) = list_dominant_language_detection_jobs(aws, args)

@inline list_dominant_language_detection_jobs(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "ListDominantLanguageDetectionJobs", args)

@inline list_dominant_language_detection_jobs(args) = list_dominant_language_detection_jobs(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.list_entities_detection_jobs
    list_entities_detection_jobs([::AWSConfig], arguments::Dict)
    list_entities_detection_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "ListEntitiesDetectionJobs", arguments::Dict)
    comprehend([::AWSConfig], "ListEntitiesDetectionJobs", <keyword arguments>)

# ListEntitiesDetectionJobs Operation

Gets a list of the entity detection jobs that you have submitted.

# Arguments

## `Filter = [ ... ]`
Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
```
 Filter = [
        "JobName" =>  ::String,
        "JobStatus" =>  "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED" or "STOPPED",
        "SubmitTimeBefore" =>  timestamp,
        "SubmitTimeAfter" =>  timestamp
    ]
```

## `NextToken = ::String`
Identifies the next page of results to return.


## `MaxResults = ::Int`
The maximum number of results to return in each page. The default is 100.




# Returns

`ListEntitiesDetectionJobsResponse`

# Exceptions

`InvalidRequestException`, `TooManyRequestsException`, `InvalidFilterException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEntitiesDetectionJobs)
"""
@inline list_entities_detection_jobs(aws::AWSConfig=default_aws_config(); args...) = list_entities_detection_jobs(aws, args)

@inline list_entities_detection_jobs(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "ListEntitiesDetectionJobs", args)

@inline list_entities_detection_jobs(args) = list_entities_detection_jobs(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.list_key_phrases_detection_jobs
    list_key_phrases_detection_jobs([::AWSConfig], arguments::Dict)
    list_key_phrases_detection_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "ListKeyPhrasesDetectionJobs", arguments::Dict)
    comprehend([::AWSConfig], "ListKeyPhrasesDetectionJobs", <keyword arguments>)

# ListKeyPhrasesDetectionJobs Operation

Get a list of key phrase detection jobs that you have submitted.

# Arguments

## `Filter = [ ... ]`
Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
```
 Filter = [
        "JobName" =>  ::String,
        "JobStatus" =>  "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED" or "STOPPED",
        "SubmitTimeBefore" =>  timestamp,
        "SubmitTimeAfter" =>  timestamp
    ]
```

## `NextToken = ::String`
Identifies the next page of results to return.


## `MaxResults = ::Int`
The maximum number of results to return in each page. The default is 100.




# Returns

`ListKeyPhrasesDetectionJobsResponse`

# Exceptions

`InvalidRequestException`, `TooManyRequestsException`, `InvalidFilterException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListKeyPhrasesDetectionJobs)
"""
@inline list_key_phrases_detection_jobs(aws::AWSConfig=default_aws_config(); args...) = list_key_phrases_detection_jobs(aws, args)

@inline list_key_phrases_detection_jobs(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "ListKeyPhrasesDetectionJobs", args)

@inline list_key_phrases_detection_jobs(args) = list_key_phrases_detection_jobs(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.list_sentiment_detection_jobs
    list_sentiment_detection_jobs([::AWSConfig], arguments::Dict)
    list_sentiment_detection_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "ListSentimentDetectionJobs", arguments::Dict)
    comprehend([::AWSConfig], "ListSentimentDetectionJobs", <keyword arguments>)

# ListSentimentDetectionJobs Operation

Gets a list of sentiment detection jobs that you have submitted.

# Arguments

## `Filter = [ ... ]`
Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
```
 Filter = [
        "JobName" =>  ::String,
        "JobStatus" =>  "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED" or "STOPPED",
        "SubmitTimeBefore" =>  timestamp,
        "SubmitTimeAfter" =>  timestamp
    ]
```

## `NextToken = ::String`
Identifies the next page of results to return.


## `MaxResults = ::Int`
The maximum number of results to return in each page. The default is 100.




# Returns

`ListSentimentDetectionJobsResponse`

# Exceptions

`InvalidRequestException`, `TooManyRequestsException`, `InvalidFilterException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListSentimentDetectionJobs)
"""
@inline list_sentiment_detection_jobs(aws::AWSConfig=default_aws_config(); args...) = list_sentiment_detection_jobs(aws, args)

@inline list_sentiment_detection_jobs(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "ListSentimentDetectionJobs", args)

@inline list_sentiment_detection_jobs(args) = list_sentiment_detection_jobs(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.list_topics_detection_jobs
    list_topics_detection_jobs([::AWSConfig], arguments::Dict)
    list_topics_detection_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "ListTopicsDetectionJobs", arguments::Dict)
    comprehend([::AWSConfig], "ListTopicsDetectionJobs", <keyword arguments>)

# ListTopicsDetectionJobs Operation

Gets a list of the topic detection jobs that you have submitted.

# Arguments

## `Filter = [ ... ]`
Filters the jobs that are returned. Jobs can be filtered on their name, status, or the date and time that they were submitted. You can set only one filter at a time.
```
 Filter = [
        "JobName" =>  ::String,
        "JobStatus" =>  "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED" or "STOPPED",
        "SubmitTimeBefore" =>  timestamp,
        "SubmitTimeAfter" =>  timestamp
    ]
```

## `NextToken = ::String`
Identifies the next page of results to return.


## `MaxResults = ::Int`
The maximum number of results to return in each page. The default is 100.




# Returns

`ListTopicsDetectionJobsResponse`

# Exceptions

`InvalidRequestException`, `TooManyRequestsException`, `InvalidFilterException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListTopicsDetectionJobs)
"""
@inline list_topics_detection_jobs(aws::AWSConfig=default_aws_config(); args...) = list_topics_detection_jobs(aws, args)

@inline list_topics_detection_jobs(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "ListTopicsDetectionJobs", args)

@inline list_topics_detection_jobs(args) = list_topics_detection_jobs(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.start_dominant_language_detection_job
    start_dominant_language_detection_job([::AWSConfig], arguments::Dict)
    start_dominant_language_detection_job([::AWSConfig]; InputDataConfig=, OutputDataConfig=, DataAccessRoleArn=, <keyword arguments>)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "StartDominantLanguageDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "StartDominantLanguageDetectionJob", InputDataConfig=, OutputDataConfig=, DataAccessRoleArn=, <keyword arguments>)

# StartDominantLanguageDetectionJob Operation

Starts an asynchronous dominant language detection job for a collection of documents. Use the operation to track the status of a job.

# Arguments

## `InputDataConfig = [ ... ]` -- *Required*
Specifies the format and location of the input data for the job.
```
 InputDataConfig = [
        "S3Uri" => <required> ::String,
        "InputFormat" =>  "ONE_DOC_PER_FILE" or "ONE_DOC_PER_LINE"
    ]
```

## `OutputDataConfig = ["S3Uri" => <required> ::String]` -- *Required*
Specifies where to send the output files.


## `DataAccessRoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions](https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions).


## `JobName = ::String`
An identifier for the job.


## `ClientRequestToken = ::String`
A unique identifier for the request. If you do not set the client request token, Amazon Comprehend generates one.




# Returns

`StartDominantLanguageDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `TooManyRequestsException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartDominantLanguageDetectionJob)
"""
@inline start_dominant_language_detection_job(aws::AWSConfig=default_aws_config(); args...) = start_dominant_language_detection_job(aws, args)

@inline start_dominant_language_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "StartDominantLanguageDetectionJob", args)

@inline start_dominant_language_detection_job(args) = start_dominant_language_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.start_entities_detection_job
    start_entities_detection_job([::AWSConfig], arguments::Dict)
    start_entities_detection_job([::AWSConfig]; InputDataConfig=, OutputDataConfig=, DataAccessRoleArn=, LanguageCode=, <keyword arguments>)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "StartEntitiesDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "StartEntitiesDetectionJob", InputDataConfig=, OutputDataConfig=, DataAccessRoleArn=, LanguageCode=, <keyword arguments>)

# StartEntitiesDetectionJob Operation

Starts an asynchronous entity detection job for a collection of documents. Use the operation to track the status of a job.

# Arguments

## `InputDataConfig = [ ... ]` -- *Required*
Specifies the format and location of the input data for the job.
```
 InputDataConfig = [
        "S3Uri" => <required> ::String,
        "InputFormat" =>  "ONE_DOC_PER_FILE" or "ONE_DOC_PER_LINE"
    ]
```

## `OutputDataConfig = ["S3Uri" => <required> ::String]` -- *Required*
Specifies where to send the output files.


## `DataAccessRoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions](https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions).


## `JobName = ::String`
The identifier of the job.


## `LanguageCode = "en" or "es"` -- *Required*
The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.


## `ClientRequestToken = ::String`
A unique identifier for the request. If you don't set the client request token, Amazon Comprehend generates one.




# Returns

`StartEntitiesDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `TooManyRequestsException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartEntitiesDetectionJob)
"""
@inline start_entities_detection_job(aws::AWSConfig=default_aws_config(); args...) = start_entities_detection_job(aws, args)

@inline start_entities_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "StartEntitiesDetectionJob", args)

@inline start_entities_detection_job(args) = start_entities_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.start_key_phrases_detection_job
    start_key_phrases_detection_job([::AWSConfig], arguments::Dict)
    start_key_phrases_detection_job([::AWSConfig]; InputDataConfig=, OutputDataConfig=, DataAccessRoleArn=, LanguageCode=, <keyword arguments>)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "StartKeyPhrasesDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "StartKeyPhrasesDetectionJob", InputDataConfig=, OutputDataConfig=, DataAccessRoleArn=, LanguageCode=, <keyword arguments>)

# StartKeyPhrasesDetectionJob Operation

Starts an asynchronous key phrase detection job for a collection of documents. Use the operation to track the status of a job.

# Arguments

## `InputDataConfig = [ ... ]` -- *Required*
Specifies the format and location of the input data for the job.
```
 InputDataConfig = [
        "S3Uri" => <required> ::String,
        "InputFormat" =>  "ONE_DOC_PER_FILE" or "ONE_DOC_PER_LINE"
    ]
```

## `OutputDataConfig = ["S3Uri" => <required> ::String]` -- *Required*
Specifies where to send the output files.


## `DataAccessRoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions](https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions).


## `JobName = ::String`
The identifier of the job.


## `LanguageCode = "en" or "es"` -- *Required*
The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.


## `ClientRequestToken = ::String`
A unique identifier for the request. If you don't set the client request token, Amazon Comprehend generates one.




# Returns

`StartKeyPhrasesDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `TooManyRequestsException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartKeyPhrasesDetectionJob)
"""
@inline start_key_phrases_detection_job(aws::AWSConfig=default_aws_config(); args...) = start_key_phrases_detection_job(aws, args)

@inline start_key_phrases_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "StartKeyPhrasesDetectionJob", args)

@inline start_key_phrases_detection_job(args) = start_key_phrases_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.start_sentiment_detection_job
    start_sentiment_detection_job([::AWSConfig], arguments::Dict)
    start_sentiment_detection_job([::AWSConfig]; InputDataConfig=, OutputDataConfig=, DataAccessRoleArn=, LanguageCode=, <keyword arguments>)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "StartSentimentDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "StartSentimentDetectionJob", InputDataConfig=, OutputDataConfig=, DataAccessRoleArn=, LanguageCode=, <keyword arguments>)

# StartSentimentDetectionJob Operation

Starts an asynchronous sentiment detection job for a collection of documents. use the operation to track the status of a job.

# Arguments

## `InputDataConfig = [ ... ]` -- *Required*
Specifies the format and location of the input data for the job.
```
 InputDataConfig = [
        "S3Uri" => <required> ::String,
        "InputFormat" =>  "ONE_DOC_PER_FILE" or "ONE_DOC_PER_LINE"
    ]
```

## `OutputDataConfig = ["S3Uri" => <required> ::String]` -- *Required*
Specifies where to send the output files.


## `DataAccessRoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions](https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions).


## `JobName = ::String`
The identifier of the job.


## `LanguageCode = "en" or "es"` -- *Required*
The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.


## `ClientRequestToken = ::String`
A unique identifier for the request. If you don't set the client request token, Amazon Comprehend generates one.




# Returns

`StartSentimentDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `TooManyRequestsException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartSentimentDetectionJob)
"""
@inline start_sentiment_detection_job(aws::AWSConfig=default_aws_config(); args...) = start_sentiment_detection_job(aws, args)

@inline start_sentiment_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "StartSentimentDetectionJob", args)

@inline start_sentiment_detection_job(args) = start_sentiment_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.start_topics_detection_job
    start_topics_detection_job([::AWSConfig], arguments::Dict)
    start_topics_detection_job([::AWSConfig]; InputDataConfig=, OutputDataConfig=, DataAccessRoleArn=, <keyword arguments>)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "StartTopicsDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "StartTopicsDetectionJob", InputDataConfig=, OutputDataConfig=, DataAccessRoleArn=, <keyword arguments>)

# StartTopicsDetectionJob Operation

Starts an asynchronous topic detection job. Use the `DescribeTopicDetectionJob` operation to track the status of a job.

# Arguments

## `InputDataConfig = [ ... ]` -- *Required*
Specifies the format and location of the input data for the job.
```
 InputDataConfig = [
        "S3Uri" => <required> ::String,
        "InputFormat" =>  "ONE_DOC_PER_FILE" or "ONE_DOC_PER_LINE"
    ]
```

## `OutputDataConfig = ["S3Uri" => <required> ::String]` -- *Required*
Specifies where to send the output files. The output is a compressed archive with two files, `topic-terms.csv` that lists the terms associated with each topic, and `doc-topics.csv` that lists the documents associated with each topic


## `DataAccessRoleArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions](https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions).


## `JobName = ::String`
The identifier of the job.


## `NumberOfTopics = ::Int`
The number of topics to detect.


## `ClientRequestToken = ::String`
A unique identifier for the request. If you do not set the client request token, Amazon Comprehend generates one.




# Returns

`StartTopicsDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `TooManyRequestsException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartTopicsDetectionJob)
"""
@inline start_topics_detection_job(aws::AWSConfig=default_aws_config(); args...) = start_topics_detection_job(aws, args)

@inline start_topics_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "StartTopicsDetectionJob", args)

@inline start_topics_detection_job(args) = start_topics_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.stop_dominant_language_detection_job
    stop_dominant_language_detection_job([::AWSConfig], arguments::Dict)
    stop_dominant_language_detection_job([::AWSConfig]; JobId=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "StopDominantLanguageDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "StopDominantLanguageDetectionJob", JobId=)

# StopDominantLanguageDetectionJob Operation

Stops a dominant language detection job in progress.

If the job state is `IN_PROGRESS` the job is marked for termination and put into the `STOP_REQUESTED` state. If the job completes before it can be stopped, it is put into the `COMPLETED` state; otherwise the job is stopped and put into the `STOPPED` state.

If the job is in the `COMPLETED` or `FAILED` state when you call the `StopDominantLanguageDetectionJob` operation, the operation returns a 400 Internal Request Exception.

When a job is stopped, any documents already processed are written to the output location.

# Arguments

## `JobId = ::String` -- *Required*
The identifier of the dominant language detection job to stop.




# Returns

`StopDominantLanguageDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `JobNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopDominantLanguageDetectionJob)
"""
@inline stop_dominant_language_detection_job(aws::AWSConfig=default_aws_config(); args...) = stop_dominant_language_detection_job(aws, args)

@inline stop_dominant_language_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "StopDominantLanguageDetectionJob", args)

@inline stop_dominant_language_detection_job(args) = stop_dominant_language_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.stop_entities_detection_job
    stop_entities_detection_job([::AWSConfig], arguments::Dict)
    stop_entities_detection_job([::AWSConfig]; JobId=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "StopEntitiesDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "StopEntitiesDetectionJob", JobId=)

# StopEntitiesDetectionJob Operation

Stops an entities detection job in progress.

If the job state is `IN_PROGRESS` the job is marked for termination and put into the `STOP_REQUESTED` state. If the job completes before it can be stopped, it is put into the `COMPLETED` state; otherwise the job is stopped and put into the `STOPPED` state.

If the job is in the `COMPLETED` or `FAILED` state when you call the `StopDominantLanguageDetectionJob` operation, the operation returns a 400 Internal Request Exception.

When a job is stopped, any documents already processed are written to the output location.

# Arguments

## `JobId = ::String` -- *Required*
The identifier of the entities detection job to stop.




# Returns

`StopEntitiesDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `JobNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopEntitiesDetectionJob)
"""
@inline stop_entities_detection_job(aws::AWSConfig=default_aws_config(); args...) = stop_entities_detection_job(aws, args)

@inline stop_entities_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "StopEntitiesDetectionJob", args)

@inline stop_entities_detection_job(args) = stop_entities_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.stop_key_phrases_detection_job
    stop_key_phrases_detection_job([::AWSConfig], arguments::Dict)
    stop_key_phrases_detection_job([::AWSConfig]; JobId=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "StopKeyPhrasesDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "StopKeyPhrasesDetectionJob", JobId=)

# StopKeyPhrasesDetectionJob Operation

Stops a key phrases detection job in progress.

If the job state is `IN_PROGRESS` the job is marked for termination and put into the `STOP_REQUESTED` state. If the job completes before it can be stopped, it is put into the `COMPLETED` state; otherwise the job is stopped and put into the `STOPPED` state.

If the job is in the `COMPLETED` or `FAILED` state when you call the `StopDominantLanguageDetectionJob` operation, the operation returns a 400 Internal Request Exception.

When a job is stopped, any documents already processed are written to the output location.

# Arguments

## `JobId = ::String` -- *Required*
The identifier of the key phrases detection job to stop.




# Returns

`StopKeyPhrasesDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `JobNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopKeyPhrasesDetectionJob)
"""
@inline stop_key_phrases_detection_job(aws::AWSConfig=default_aws_config(); args...) = stop_key_phrases_detection_job(aws, args)

@inline stop_key_phrases_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "StopKeyPhrasesDetectionJob", args)

@inline stop_key_phrases_detection_job(args) = stop_key_phrases_detection_job(default_aws_config(), args)


"""
    using AWSSDK.Comprehend.stop_sentiment_detection_job
    stop_sentiment_detection_job([::AWSConfig], arguments::Dict)
    stop_sentiment_detection_job([::AWSConfig]; JobId=)

    using AWSCore.Services.comprehend
    comprehend([::AWSConfig], "StopSentimentDetectionJob", arguments::Dict)
    comprehend([::AWSConfig], "StopSentimentDetectionJob", JobId=)

# StopSentimentDetectionJob Operation

Stops a sentiment detection job in progress.

If the job state is `IN_PROGRESS` the job is marked for termination and put into the `STOP_REQUESTED` state. If the job completes before it can be stopped, it is put into the `COMPLETED` state; otherwise the job is be stopped and put into the `STOPPED` state.

If the job is in the `COMPLETED` or `FAILED` state when you call the `StopDominantLanguageDetectionJob` operation, the operation returns a 400 Internal Request Exception.

When a job is stopped, any documents already processed are written to the output location.

# Arguments

## `JobId = ::String` -- *Required*
The identifier of the sentiment detection job to stop.




# Returns

`StopSentimentDetectionJobResponse`

# Exceptions

`InvalidRequestException`, `JobNotFoundException` or `InternalServerException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopSentimentDetectionJob)
"""
@inline stop_sentiment_detection_job(aws::AWSConfig=default_aws_config(); args...) = stop_sentiment_detection_job(aws, args)

@inline stop_sentiment_detection_job(aws::AWSConfig, args) = AWSCore.Services.comprehend(aws, "StopSentimentDetectionJob", args)

@inline stop_sentiment_detection_job(args) = stop_sentiment_detection_job(default_aws_config(), args)




end # module Comprehend


#==============================================================================#
# End of file
#==============================================================================#
