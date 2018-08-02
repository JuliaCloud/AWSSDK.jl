#==============================================================================#
# Translate.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/translate-2017-07-01.normal.json
#==============================================================================#

__precompile__()

module Translate

using AWSCore


"""
    using AWSSDK.Translate.translate_text
    translate_text([::AWSConfig], arguments::Dict)
    translate_text([::AWSConfig]; Text=, SourceLanguageCode=, TargetLanguageCode=)

    using AWSCore.Services.translate
    translate([::AWSConfig], "TranslateText", arguments::Dict)
    translate([::AWSConfig], "TranslateText", Text=, SourceLanguageCode=, TargetLanguageCode=)

# TranslateText Operation

Translates input text from the source language to the target language. You can translate between English (en) and one of the following languages, or between one of the following languages and English.

*   Arabic (ar)

*   Chinese (Simplified) (zh)

*   French (fr)

*   German (de)

*   Portuguese (pt)

*   Spanish (es)

To have Amazon Translate determine the source language of your text, you can specify `auto` in the `SourceLanguageCode` field. If you specify `auto`, Amazon Translate will call Amazon Comprehend to determine the source language.

# Arguments

## `Text = ::String` -- *Required*
The text to translate.


## `SourceLanguageCode = ::String` -- *Required*
One of the supported language codes for the source text. If the `TargetLanguageCode` is not "en", the `SourceLanguageCode` must be "en".

To have Amazon Translate determine the source language of your text, you can specify `auto` in the `SourceLanguageCode` field. If you specify `auto`, Amazon Translate will call Amazon Comprehend to determine the source language.


## `TargetLanguageCode = ::String` -- *Required*
One of the supported language codes for the target text. If the `SourceLanguageCode` is not "en", the `TargetLanguageCode` must be "en".




# Returns

`TranslateTextResponse`

# Exceptions

`InvalidRequestException`, `TextSizeLimitExceededException`, `TooManyRequestsException`, `UnsupportedLanguagePairException`, `DetectedLanguageLowConfidenceException`, `InternalServerException` or `ServiceUnavailableException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateText)
"""
@inline translate_text(aws::AWSConfig=default_aws_config(); args...) = translate_text(aws, args)

@inline translate_text(aws::AWSConfig, args) = AWSCore.Services.translate(aws, "TranslateText", args)

@inline translate_text(args) = translate_text(default_aws_config(), args)




end # module Translate


#==============================================================================#
# End of file
#==============================================================================#
