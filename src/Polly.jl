#==============================================================================#
# Polly.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/polly-2016-06-10.normal.json
#==============================================================================#

__precompile__()

module Polly

using AWSCore


"""
    using AWSSDK.Polly.delete_lexicon
    delete_lexicon([::AWSConfig], arguments::Dict)
    delete_lexicon([::AWSConfig]; LexiconName=)

    using AWSCore.Services.polly
    polly([::AWSConfig], "DELETE", "/v1/lexicons/{LexiconName}", arguments::Dict)
    polly([::AWSConfig], "DELETE", "/v1/lexicons/{LexiconName}", LexiconName=)

# DeleteLexicon Operation

Deletes the specified pronunciation lexicon stored in an AWS Region. A lexicon which has been deleted is not available for speech synthesis, nor is it possible to retrieve it using either the `GetLexicon` or `ListLexicon` APIs.

For more information, see [Managing Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).

# Arguments

## `LexiconName = ::String` -- *Required*
The name of the lexicon to delete. Must be an existing lexicon in the region.




# Returns

`DeleteLexiconOutput`

# Exceptions

`LexiconNotFoundException` or `ServiceFailureException`.

# Example: To delete a lexicon

Deletes a specified pronunciation lexicon stored in an AWS Region.

Input:
```
[
    "Name" => "example"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/DeleteLexicon)
"""
@inline delete_lexicon(aws::AWSConfig=default_aws_config(); args...) = delete_lexicon(aws, args)

@inline delete_lexicon(aws::AWSConfig, args) = AWSCore.Services.polly(aws, "DELETE", "/v1/lexicons/{LexiconName}", args)

@inline delete_lexicon(args) = delete_lexicon(default_aws_config(), args)


"""
    using AWSSDK.Polly.describe_voices
    describe_voices([::AWSConfig], arguments::Dict)
    describe_voices([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.polly
    polly([::AWSConfig], "GET", "/v1/voices", arguments::Dict)
    polly([::AWSConfig], "GET", "/v1/voices", <keyword arguments>)

# DescribeVoices Operation

Returns the list of voices that are available for use when requesting speech synthesis. Each voice speaks a specified language, is either male or female, and is identified by an ID, which is the ASCII version of the voice name.

When synthesizing speech ( `SynthesizeSpeech` ), you provide the voice ID for the voice you want from the list of voices returned by `DescribeVoices`.

For example, you want your news reader application to read news in a specific language, but giving a user the option to choose the voice. Using the `DescribeVoices` operation you can provide the user with a list of available voices to select from.

You can optionally specify a language code to filter the available voices. For example, if you specify `en-US`, the operation returns a list of all available US English voices.

This operation requires permissions to perform the `polly:DescribeVoices` action.

# Arguments

## `LanguageCode = "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ko-KR", "ja-JP", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE" or "tr-TR"`
The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned.


## `NextToken = ::String`
An opaque pagination token returned from the previous `DescribeVoices` operation. If present, this indicates where to continue the listing.




# Returns

`DescribeVoicesOutput`

# Exceptions

`InvalidNextTokenException` or `ServiceFailureException`.

# Example: To describe available voices

Returns the list of voices that are available for use when requesting speech synthesis. Displayed languages are those within the specified language code. If no language code is specified, voices for all available languages are displayed.

Input:
```
[
    "LanguageCode" => "en-GB"
]
```

Output:
```
Dict(
    "Voices" => [
        Dict(
            "Gender" => "Female",
            "Id" => "Emma",
            "LanguageCode" => "en-GB",
            "LanguageName" => "British English",
            "Name" => "Emma"
        ),
        Dict(
            "Gender" => "Male",
            "Id" => "Brian",
            "LanguageCode" => "en-GB",
            "LanguageName" => "British English",
            "Name" => "Brian"
        ),
        Dict(
            "Gender" => "Female",
            "Id" => "Amy",
            "LanguageCode" => "en-GB",
            "LanguageName" => "British English",
            "Name" => "Amy"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/DescribeVoices)
"""
@inline describe_voices(aws::AWSConfig=default_aws_config(); args...) = describe_voices(aws, args)

@inline describe_voices(aws::AWSConfig, args) = AWSCore.Services.polly(aws, "GET", "/v1/voices", args)

@inline describe_voices(args) = describe_voices(default_aws_config(), args)


"""
    using AWSSDK.Polly.get_lexicon
    get_lexicon([::AWSConfig], arguments::Dict)
    get_lexicon([::AWSConfig]; LexiconName=)

    using AWSCore.Services.polly
    polly([::AWSConfig], "GET", "/v1/lexicons/{LexiconName}", arguments::Dict)
    polly([::AWSConfig], "GET", "/v1/lexicons/{LexiconName}", LexiconName=)

# GetLexicon Operation

Returns the content of the specified pronunciation lexicon stored in an AWS Region. For more information, see [Managing Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).

# Arguments

## `LexiconName = ::String` -- *Required*
Name of the lexicon.




# Returns

`GetLexiconOutput`

# Exceptions

`LexiconNotFoundException` or `ServiceFailureException`.

# Example: To retrieve a lexicon

Returns the content of the specified pronunciation lexicon stored in an AWS Region.

Input:
```
[
    "Name" => ""
]
```

Output:
```
Dict(
    "Lexicon" => Dict(
        "Content" => "<?xml version="1.0" encoding="UTF-8"?>
<lexicon version="1.0" 
      xmlns="http://www.w3.org/2005/01/pronunciation-lexicon"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
      xsi:schemaLocation="http://www.w3.org/2005/01/pronunciation-lexicon 
        http://www.w3.org/TR/2007/CR-pronunciation-lexicon-20071212/pls.xsd"
      alphabet="ipa" 
      xml:lang="en-US">
  <lexeme>
    <grapheme>W3C</grapheme>
    <alias>World Wide Web Consortium</alias>
  </lexeme>
</lexicon>",
        "Name" => "example"
    ),
    "LexiconAttributes" => Dict(
        "Alphabet" => "ipa",
        "LanguageCode" => "en-US",
        "LastModified" => 1.478542980117e9,
        "LexemesCount" => 1,
        "LexiconArn" => "arn:aws:polly:us-east-1:123456789012:lexicon/example",
        "Size" => 503
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/GetLexicon)
"""
@inline get_lexicon(aws::AWSConfig=default_aws_config(); args...) = get_lexicon(aws, args)

@inline get_lexicon(aws::AWSConfig, args) = AWSCore.Services.polly(aws, "GET", "/v1/lexicons/{LexiconName}", args)

@inline get_lexicon(args) = get_lexicon(default_aws_config(), args)


"""
    using AWSSDK.Polly.get_speech_synthesis_task
    get_speech_synthesis_task([::AWSConfig], arguments::Dict)
    get_speech_synthesis_task([::AWSConfig]; TaskId=)

    using AWSCore.Services.polly
    polly([::AWSConfig], "GET", "/v1/synthesisTasks/{TaskId}", arguments::Dict)
    polly([::AWSConfig], "GET", "/v1/synthesisTasks/{TaskId}", TaskId=)

# GetSpeechSynthesisTask Operation

Retrieves a specific SpeechSynthesisTask object based on its TaskID. This object contains information about the given speech synthesis task, including the status of the task, and a link to the S3 bucket containing the output of the task.

# Arguments

## `TaskId = ::String` -- *Required*
The Amazon Polly generated identifier for a speech synthesis task.




# Returns

`GetSpeechSynthesisTaskOutput`

# Exceptions

`InvalidTaskIdException`, `ServiceFailureException` or `SynthesisTaskNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/GetSpeechSynthesisTask)
"""
@inline get_speech_synthesis_task(aws::AWSConfig=default_aws_config(); args...) = get_speech_synthesis_task(aws, args)

@inline get_speech_synthesis_task(aws::AWSConfig, args) = AWSCore.Services.polly(aws, "GET", "/v1/synthesisTasks/{TaskId}", args)

@inline get_speech_synthesis_task(args) = get_speech_synthesis_task(default_aws_config(), args)


"""
    using AWSSDK.Polly.list_lexicons
    list_lexicons([::AWSConfig], arguments::Dict)
    list_lexicons([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.polly
    polly([::AWSConfig], "GET", "/v1/lexicons", arguments::Dict)
    polly([::AWSConfig], "GET", "/v1/lexicons", <keyword arguments>)

# ListLexicons Operation

Returns a list of pronunciation lexicons stored in an AWS Region. For more information, see [Managing Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).

# Arguments

## `NextToken = ::String`
An opaque pagination token returned from previous `ListLexicons` operation. If present, indicates where to continue the list of lexicons.




# Returns

`ListLexiconsOutput`

# Exceptions

`InvalidNextTokenException` or `ServiceFailureException`.

# Example: To list all lexicons in a region

Returns a list of pronunciation lexicons stored in an AWS Region.

Input:
```
[

]
```

Output:
```
Dict(
    "Lexicons" => [
        Dict(
            "Attributes" => Dict(
                "Alphabet" => "ipa",
                "LanguageCode" => "en-US",
                "LastModified" => 1.478542980117e9,
                "LexemesCount" => 1,
                "LexiconArn" => "arn:aws:polly:us-east-1:123456789012:lexicon/example",
                "Size" => 503
            ),
            "Name" => "example"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/ListLexicons)
"""
@inline list_lexicons(aws::AWSConfig=default_aws_config(); args...) = list_lexicons(aws, args)

@inline list_lexicons(aws::AWSConfig, args) = AWSCore.Services.polly(aws, "GET", "/v1/lexicons", args)

@inline list_lexicons(args) = list_lexicons(default_aws_config(), args)


"""
    using AWSSDK.Polly.list_speech_synthesis_tasks
    list_speech_synthesis_tasks([::AWSConfig], arguments::Dict)
    list_speech_synthesis_tasks([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.polly
    polly([::AWSConfig], "GET", "/v1/synthesisTasks", arguments::Dict)
    polly([::AWSConfig], "GET", "/v1/synthesisTasks", <keyword arguments>)

# ListSpeechSynthesisTasks Operation

Returns a list of SpeechSynthesisTask objects ordered by their creation date. This operation can filter the tasks by their status, for example, allowing users to list only tasks that are completed.

# Arguments

## `MaxResults = ::Int`
Maximum number of speech synthesis tasks returned in a List operation.


## `NextToken = ::String`
The pagination token to use in the next request to continue the listing of speech synthesis tasks.


## `Status = "scheduled", "inProgress", "completed" or "failed"`
Status of the speech synthesis tasks returned in a List operation




# Returns

`ListSpeechSynthesisTasksOutput`

# Exceptions

`InvalidNextTokenException` or `ServiceFailureException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/ListSpeechSynthesisTasks)
"""
@inline list_speech_synthesis_tasks(aws::AWSConfig=default_aws_config(); args...) = list_speech_synthesis_tasks(aws, args)

@inline list_speech_synthesis_tasks(aws::AWSConfig, args) = AWSCore.Services.polly(aws, "GET", "/v1/synthesisTasks", args)

@inline list_speech_synthesis_tasks(args) = list_speech_synthesis_tasks(default_aws_config(), args)


"""
    using AWSSDK.Polly.put_lexicon
    put_lexicon([::AWSConfig], arguments::Dict)
    put_lexicon([::AWSConfig]; LexiconName=, Content=)

    using AWSCore.Services.polly
    polly([::AWSConfig], "PUT", "/v1/lexicons/{LexiconName}", arguments::Dict)
    polly([::AWSConfig], "PUT", "/v1/lexicons/{LexiconName}", LexiconName=, Content=)

# PutLexicon Operation

Stores a pronunciation lexicon in an AWS Region. If a lexicon with the same name already exists in the region, it is overwritten by the new lexicon. Lexicon operations have eventual consistency, therefore, it might take some time before the lexicon is available to the SynthesizeSpeech operation.

For more information, see [Managing Lexicons](http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).

# Arguments

## `LexiconName = ::String` -- *Required*
Name of the lexicon. The name must follow the regular express format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive alphanumeric string up to 20 characters long.


## `Content = ::String` -- *Required*
Content of the PLS lexicon as string data.




# Returns

`PutLexiconOutput`

# Exceptions

`InvalidLexiconException`, `UnsupportedPlsAlphabetException`, `UnsupportedPlsLanguageException`, `LexiconSizeExceededException`, `MaxLexemeLengthExceededException`, `MaxLexiconsNumberExceededException` or `ServiceFailureException`.

# Example: To save a lexicon

Stores a pronunciation lexicon in an AWS Region.

Input:
```
[
    "Content" => "file://example.pls",
    "Name" => "W3C"
]
```

Output:
```
Dict(

)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/PutLexicon)
"""
@inline put_lexicon(aws::AWSConfig=default_aws_config(); args...) = put_lexicon(aws, args)

@inline put_lexicon(aws::AWSConfig, args) = AWSCore.Services.polly(aws, "PUT", "/v1/lexicons/{LexiconName}", args)

@inline put_lexicon(args) = put_lexicon(default_aws_config(), args)


"""
    using AWSSDK.Polly.start_speech_synthesis_task
    start_speech_synthesis_task([::AWSConfig], arguments::Dict)
    start_speech_synthesis_task([::AWSConfig]; OutputFormat=, OutputS3BucketName=, Text=, VoiceId=, <keyword arguments>)

    using AWSCore.Services.polly
    polly([::AWSConfig], "POST", "/v1/synthesisTasks", arguments::Dict)
    polly([::AWSConfig], "POST", "/v1/synthesisTasks", OutputFormat=, OutputS3BucketName=, Text=, VoiceId=, <keyword arguments>)

# StartSpeechSynthesisTask Operation

Allows the creation of an asynchronous synthesis task, by starting a new `SpeechSynthesisTask`. This operation requires all the standard information needed for speech synthesis, plus the name of an Amazon S3 bucket for the service to store the output of the synthesis task and two optional parameters (OutputS3KeyPrefix and SnsTopicArn). Once the synthesis task is created, this operation will return a SpeechSynthesisTask object, which will include an identifier of this task as well as the current status.

# Arguments

## `LexiconNames = [::String, ...]`
List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice.


## `OutputFormat = "json", "mp3", "ogg_vorbis" or "pcm"` -- *Required*
The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.


## `OutputS3BucketName = ::String` -- *Required*
Amazon S3 bucket name to which the output file will be saved.


## `OutputS3KeyPrefix = ::String`
The Amazon S3 Key prefix for the output speech file.


## `SampleRate = ::String`
The audio frequency specified in Hz.

The valid values for mp3 and ogg_vorbis are "8000", "16000", and "22050". The default value is "22050".

Valid values for pcm are "8000" and "16000" The default value is "16000".


## `SnsTopicArn = ::String`
ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.


## `SpeechMarkTypes = ["sentence", "ssml", "viseme" or "word", ...]`
The type of speech marks returned for the input text.


## `Text = ::String` -- *Required*
The input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text.


## `TextType = "ssml" or "text"`
Specifies whether the input text is plain text or SSML. The default value is plain text.


## `VoiceId = "Geraint", "Gwyneth", "Mads", "Naja", "Hans", "Marlene", "Nicole", "Russell", "Amy", "Brian", "Emma", "Raveena", "Ivy", "Joanna", "Joey", "Justin", "Kendra", "Kimberly", "Matthew", "Salli", "Conchita", "Enrique", "Miguel", "Penelope", "Chantal", "Celine", "Lea", "Mathieu", "Dora", "Karl", "Carla", "Giorgio", "Mizuki", "Liv", "Lotte", "Ruben", "Ewa", "Jacek", "Jan", "Maja", "Ricardo", "Vitoria", "Cristiano", "Ines", "Carmen", "Maxim", "Tatyana", "Astrid", "Filiz", "Vicki", "Takumi", "Seoyeon" or "Aditi"` -- *Required*
Voice ID to use for the synthesis.




# Returns

`StartSpeechSynthesisTaskOutput`

# Exceptions

`TextLengthExceededException`, `InvalidS3BucketException`, `InvalidS3KeyException`, `InvalidSampleRateException`, `InvalidSnsTopicArnException`, `InvalidSsmlException`, `LexiconNotFoundException`, `ServiceFailureException`, `MarksNotSupportedForFormatException` or `SsmlMarksNotSupportedForTextTypeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/StartSpeechSynthesisTask)
"""
@inline start_speech_synthesis_task(aws::AWSConfig=default_aws_config(); args...) = start_speech_synthesis_task(aws, args)

@inline start_speech_synthesis_task(aws::AWSConfig, args) = AWSCore.Services.polly(aws, "POST", "/v1/synthesisTasks", args)

@inline start_speech_synthesis_task(args) = start_speech_synthesis_task(default_aws_config(), args)


"""
    using AWSSDK.Polly.synthesize_speech
    synthesize_speech([::AWSConfig], arguments::Dict)
    synthesize_speech([::AWSConfig]; OutputFormat=, Text=, VoiceId=, <keyword arguments>)

    using AWSCore.Services.polly
    polly([::AWSConfig], "POST", "/v1/speech", arguments::Dict)
    polly([::AWSConfig], "POST", "/v1/speech", OutputFormat=, Text=, VoiceId=, <keyword arguments>)

# SynthesizeSpeech Operation

Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML input must be valid, well-formed SSML. Some alphabets might not be available with all the voices (for example, Cyrillic might not be read at all by English voices) unless phoneme mapping is used. For more information, see [How it Works](http://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html).

# Arguments

## `LexiconNames = [::String, ...]`
List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see [PutLexicon](http://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html).


## `OutputFormat = "json", "mp3", "ogg_vorbis" or "pcm"` -- *Required*
The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.


## `SampleRate = ::String`
The audio frequency specified in Hz.

The valid values for `mp3` and `ogg_vorbis` are "8000", "16000", and "22050". The default value is "22050".

Valid values for `pcm` are "8000" and "16000" The default value is "16000".


## `SpeechMarkTypes = ["sentence", "ssml", "viseme" or "word", ...]`
The type of speech marks returned for the input text.


## `Text = ::String` -- *Required*
Input text to synthesize. If you specify `ssml` as the `TextType`, follow the SSML format for the input text.


## `TextType = "ssml" or "text"`
Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see [Using SSML](http://docs.aws.amazon.com/polly/latest/dg/ssml.html).


## `VoiceId = "Geraint", "Gwyneth", "Mads", "Naja", "Hans", "Marlene", "Nicole", "Russell", "Amy", "Brian", "Emma", "Raveena", "Ivy", "Joanna", "Joey", "Justin", "Kendra", "Kimberly", "Matthew", "Salli", "Conchita", "Enrique", "Miguel", "Penelope", "Chantal", "Celine", "Lea", "Mathieu", "Dora", "Karl", "Carla", "Giorgio", "Mizuki", "Liv", "Lotte", "Ruben", "Ewa", "Jacek", "Jan", "Maja", "Ricardo", "Vitoria", "Cristiano", "Ines", "Carmen", "Maxim", "Tatyana", "Astrid", "Filiz", "Vicki", "Takumi", "Seoyeon" or "Aditi"` -- *Required*
Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the [DescribeVoices](http://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html) operation.




# Returns

`SynthesizeSpeechOutput`

# Exceptions

`TextLengthExceededException`, `InvalidSampleRateException`, `InvalidSsmlException`, `LexiconNotFoundException`, `ServiceFailureException`, `MarksNotSupportedForFormatException` or `SsmlMarksNotSupportedForTextTypeException`.

# Example: To synthesize speech

Synthesizes plain text or SSML into a file of human-like speech.

Input:
```
[
    "LexiconNames" => [
        "example"
    ],
    "OutputFormat" => "mp3",
    "SampleRate" => "8000",
    "Text" => "All Gaul is divided into three parts",
    "TextType" => "text",
    "VoiceId" => "Joanna"
]
```

Output:
```
Dict(
    "AudioStream" => "TEXT",
    "ContentType" => "audio/mpeg",
    "RequestCharacters" => 37
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/SynthesizeSpeech)
"""
@inline synthesize_speech(aws::AWSConfig=default_aws_config(); args...) = synthesize_speech(aws, args)

@inline synthesize_speech(aws::AWSConfig, args) = AWSCore.Services.polly(aws, "POST", "/v1/speech", args)

@inline synthesize_speech(args) = synthesize_speech(default_aws_config(), args)




end # module Polly


#==============================================================================#
# End of file
#==============================================================================#
