#==============================================================================#
# MediaConvert.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/mediaconvert-2017-08-29.normal.json
#==============================================================================#

__precompile__()

module MediaConvert

using AWSCore


"""
    using AWSSDK.MediaConvert.cancel_job
    cancel_job([::AWSConfig], arguments::Dict)
    cancel_job([::AWSConfig]; id=)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "DELETE", "/2017-08-29/jobs/{id}", arguments::Dict)
    mediaconvert([::AWSConfig], "DELETE", "/2017-08-29/jobs/{id}", id=)

# CancelJob Operation

Permanently remove a job from a queue. Once you have canceled a job, you can't start it again. You can't delete a running job.

# Arguments

## `id = ::String` -- *Required*
The Job ID of the job to be cancelled.




# Returns

`CancelJobResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CancelJob)
"""
@inline cancel_job(aws::AWSConfig=default_aws_config(); args...) = cancel_job(aws, args)

@inline cancel_job(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "DELETE", "/2017-08-29/jobs/{id}", args)

@inline cancel_job(args) = cancel_job(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.create_job
    create_job([::AWSConfig], arguments::Dict)
    create_job([::AWSConfig]; role=, settings=, <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "POST", "/2017-08-29/jobs", arguments::Dict)
    mediaconvert([::AWSConfig], "POST", "/2017-08-29/jobs", role=, settings=, <keyword arguments>)

# CreateJob Operation

Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

# Arguments

## `clientRequestToken = ::String`
Idempotency token for CreateJob operation.


## `jobTemplate = ::String`
When you create a job, you can either specify a job template or specify the transcoding settings individually


## `queue = ::String`
Optional. When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html.


## `role = ::String` -- *Required*
Required. The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.


## `settings = [ ... ]` -- *Required*

```
 settings = [
        "adAvailOffset" =>  ::Int,
        "availBlanking" =>  ["availBlankingImage" =>  ::String],
        "inputs" => <required> [[
            "audioSelectorGroups" =>  ::Dict{String,String},
            "audioSelectors" =>  ::Dict{String,String},
            "captionSelectors" =>  ::Dict{String,String},
            "deblockFilter" =>  "ENABLED" or "DISABLED",
            "denoiseFilter" =>  "ENABLED" or "DISABLED",
            "fileInput" => <required> ::String,
            "filterEnable" =>  "AUTO", "DISABLE" or "FORCE",
            "filterStrength" =>  ::Int,
            "inputClippings" =>  [[
                "endTimecode" =>  ::String,
                "startTimecode" =>  ::String
            ], ...],
            "programNumber" =>  ::Int,
            "psiControl" =>  "IGNORE_PSI" or "USE_PSI",
            "timecodeSource" =>  "EMBEDDED", "ZEROBASED" or "SPECIFIEDSTART",
            "videoSelector" =>  [
                "colorSpace" =>  "FOLLOW", "REC_601", "REC_709", "HDR10" or "HLG_2020",
                "colorSpaceUsage" =>  "FORCE" or "FALLBACK",
                "hdr10Metadata" =>  [
                    "bluePrimaryX" =>  ::Int,
                    "bluePrimaryY" =>  ::Int,
                    "greenPrimaryX" =>  ::Int,
                    "greenPrimaryY" =>  ::Int,
                    "maxContentLightLevel" => <required> ::Int,
                    "maxFrameAverageLightLevel" => <required> ::Int,
                    "maxLuminance" =>  ::Int,
                    "minLuminance" =>  ::Int,
                    "redPrimaryX" =>  ::Int,
                    "redPrimaryY" =>  ::Int,
                    "whitePointX" =>  ::Int,
                    "whitePointY" =>  ::Int
                ],
                "pid" =>  ::Int,
                "programNumber" =>  ::Int
            ]
        ], ...],
        "nielsenConfiguration" =>  [
            "breakoutCode" =>  ::Int,
            "distributorId" =>  ::String
        ],
        "outputGroups" => <required> [[
            "customName" =>  ::String,
            "name" =>  ::String,
            "outputGroupSettings" => <required> [
                "cmafGroupSettings" =>  [
                    "baseUrl" =>  ::String,
                    "clientCache" =>  "DISABLED" or "ENABLED",
                    "codecSpecification" =>  "RFC_6381" or "RFC_4281",
                    "destination" =>  ::String,
                    "encryption" =>  [
                        "constantInitializationVector" =>  ::String,
                        "encryptionMethod" =>  "SAMPLE_AES",
                        "initializationVectorInManifest" =>  "INCLUDE" or "EXCLUDE",
                        "staticKeyProvider" =>  [
                            "keyFormat" =>  ::String,
                            "keyFormatVersions" =>  ::String,
                            "staticKeyValue" => <required> ::String,
                            "url" => <required> ::String
                        ],
                        "type" => <required> "STATIC_KEY"
                    ],
                    "fragmentLength" => <required> ::Int,
                    "manifestCompression" =>  "GZIP" or "NONE",
                    "manifestDurationFormat" =>  "FLOATING_POINT" or "INTEGER",
                    "minBufferTime" =>  ::Int,
                    "segmentControl" =>  "SINGLE_FILE" or "SEGMENTED_FILES",
                    "segmentLength" => <required> ::Int,
                    "streamInfResolution" =>  "INCLUDE" or "EXCLUDE",
                    "writeDashManifest" =>  "DISABLED" or "ENABLED",
                    "writeHlsManifest" =>  "DISABLED" or "ENABLED"
                ],
                "dashIsoGroupSettings" =>  [
                    "baseUrl" =>  ::String,
                    "destination" =>  ::String,
                    "encryption" =>  ["spekeKeyProvider" => <required> [
                            "resourceId" => <required> ::String,
                            "systemIds" => <required> [::String, ...],
                            "url" => <required> ::String
                        ]],
                    "fragmentLength" => <required> ::Int,
                    "hbbtvCompliance" =>  "HBBTV_1_5" or "NONE",
                    "minBufferTime" =>  ::Int,
                    "segmentControl" =>  "SINGLE_FILE" or "SEGMENTED_FILES",
                    "segmentLength" => <required> ::Int
                ],
                "fileGroupSettings" =>  ["destination" =>  ::String],
                "hlsGroupSettings" =>  [
                    "adMarkers" =>  ["ELEMENTAL" or "ELEMENTAL_SCTE35", ...],
                    "baseUrl" =>  ::String,
                    "captionLanguageMappings" =>  [[
                        "captionChannel" =>  ::Int,
                        "customLanguageCode" =>  ::String,
                        "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
                        "languageDescription" =>  ::String
                    ], ...],
                    "captionLanguageSetting" =>  "INSERT", "OMIT" or "NONE",
                    "clientCache" =>  "DISABLED" or "ENABLED",
                    "codecSpecification" =>  "RFC_6381" or "RFC_4281",
                    "destination" =>  ::String,
                    "directoryStructure" =>  "SINGLE_DIRECTORY" or "SUBDIRECTORY_PER_STREAM",
                    "encryption" =>  [
                        "constantInitializationVector" =>  ::String,
                        "encryptionMethod" =>  "AES128" or "SAMPLE_AES",
                        "initializationVectorInManifest" =>  "INCLUDE" or "EXCLUDE",
                        "spekeKeyProvider" =>  [
                            "resourceId" => <required> ::String,
                            "systemIds" => <required> [::String, ...],
                            "url" => <required> ::String
                        ],
                        "staticKeyProvider" =>  [
                            "keyFormat" =>  ::String,
                            "keyFormatVersions" =>  ::String,
                            "staticKeyValue" => <required> ::String,
                            "url" => <required> ::String
                        ],
                        "type" => <required> "SPEKE" or "STATIC_KEY"
                    ],
                    "manifestCompression" =>  "GZIP" or "NONE",
                    "manifestDurationFormat" =>  "FLOATING_POINT" or "INTEGER",
                    "minSegmentLength" => <required> ::Int,
                    "outputSelection" =>  "MANIFESTS_AND_SEGMENTS" or "SEGMENTS_ONLY",
                    "programDateTime" =>  "INCLUDE" or "EXCLUDE",
                    "programDateTimePeriod" =>  ::Int,
                    "segmentControl" =>  "SINGLE_FILE" or "SEGMENTED_FILES",
                    "segmentLength" => <required> ::Int,
                    "segmentsPerSubdirectory" =>  ::Int,
                    "streamInfResolution" =>  "INCLUDE" or "EXCLUDE",
                    "timedMetadataId3Frame" =>  "NONE", "PRIV" or "TDRL",
                    "timedMetadataId3Period" =>  ::Int,
                    "timestampDeltaMilliseconds" =>  ::Int
                ],
                "msSmoothGroupSettings" =>  [
                    "audioDeduplication" =>  "COMBINE_DUPLICATE_STREAMS" or "NONE",
                    "destination" =>  ::String,
                    "encryption" =>  ["spekeKeyProvider" => <required> [
                            "resourceId" => <required> ::String,
                            "systemIds" => <required> [::String, ...],
                            "url" => <required> ::String
                        ]],
                    "fragmentLength" => <required> ::Int,
                    "manifestEncoding" =>  "UTF8" or "UTF16"
                ],
                "type" => <required> "HLS_GROUP_SETTINGS", "DASH_ISO_GROUP_SETTINGS", "FILE_GROUP_SETTINGS", "MS_SMOOTH_GROUP_SETTINGS" or "CMAF_GROUP_SETTINGS"
            ],
            "outputs" => <required> [[
                "audioDescriptions" =>  [[
                    "audioNormalizationSettings" =>  [
                        "algorithm" =>  "ITU_BS_1770_1" or "ITU_BS_1770_2",
                        "algorithmControl" =>  "CORRECT_AUDIO" or "MEASURE_ONLY",
                        "correctionGateLevel" =>  ::Int,
                        "loudnessLogging" =>  "LOG" or "DONT_LOG",
                        "peakCalculation" =>  "TRUE_PEAK" or "NONE",
                        "targetLkfs" =>  double
                    ],
                    "audioSourceName" =>  ::String,
                    "audioType" =>  ::Int,
                    "audioTypeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                    "codecSettings" => <required> [
                        "aacSettings" =>  [
                            "audioDescriptionBroadcasterMix" =>  "BROADCASTER_MIXED_AD" or "NORMAL",
                            "bitrate" =>  ::Int,
                            "codecProfile" =>  "LC", "HEV1" or "HEV2",
                            "codingMode" => <required> "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_5_1",
                            "rateControlMode" =>  "CBR" or "VBR",
                            "rawFormat" =>  "LATM_LOAS" or "NONE",
                            "sampleRate" => <required> ::Int,
                            "specification" =>  "MPEG2" or "MPEG4",
                            "vbrQuality" =>  "LOW", "MEDIUM_LOW", "MEDIUM_HIGH" or "HIGH"
                        ],
                        "ac3Settings" =>  [
                            "bitrate" =>  ::Int,
                            "bitstreamMode" =>  "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED" or "VOICE_OVER",
                            "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_3_2_LFE",
                            "dialnorm" =>  ::Int,
                            "dynamicRangeCompressionProfile" =>  "FILM_STANDARD" or "NONE",
                            "lfeFilter" =>  "ENABLED" or "DISABLED",
                            "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                            "sampleRate" =>  ::Int
                        ],
                        "aiffSettings" =>  [
                            "bitDepth" =>  ::Int,
                            "channels" =>  ::Int,
                            "sampleRate" =>  ::Int
                        ],
                        "codec" => <required> "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3" or "PASSTHROUGH",
                        "eac3Settings" =>  [
                            "attenuationControl" =>  "ATTENUATE_3_DB" or "NONE",
                            "bitrate" =>  ::Int,
                            "bitstreamMode" =>  "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED" or "VISUALLY_IMPAIRED",
                            "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_2_0" or "CODING_MODE_3_2",
                            "dcFilter" =>  "ENABLED" or "DISABLED",
                            "dialnorm" =>  ::Int,
                            "dynamicRangeCompressionLine" =>  "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT" or "SPEECH",
                            "dynamicRangeCompressionRf" =>  "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT" or "SPEECH",
                            "lfeControl" =>  "LFE" or "NO_LFE",
                            "lfeFilter" =>  "ENABLED" or "DISABLED",
                            "loRoCenterMixLevel" =>  double,
                            "loRoSurroundMixLevel" =>  double,
                            "ltRtCenterMixLevel" =>  double,
                            "ltRtSurroundMixLevel" =>  double,
                            "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                            "passthroughControl" =>  "WHEN_POSSIBLE" or "NO_PASSTHROUGH",
                            "phaseControl" =>  "SHIFT_90_DEGREES" or "NO_SHIFT",
                            "sampleRate" =>  ::Int,
                            "stereoDownmix" =>  "NOT_INDICATED", "LO_RO", "LT_RT" or "DPL2",
                            "surroundExMode" =>  "NOT_INDICATED", "ENABLED" or "DISABLED",
                            "surroundMode" =>  "NOT_INDICATED", "ENABLED" or "DISABLED"
                        ],
                        "mp2Settings" =>  [
                            "bitrate" =>  ::Int,
                            "channels" =>  ::Int,
                            "sampleRate" =>  ::Int
                        ],
                        "wavSettings" =>  [
                            "bitDepth" =>  ::Int,
                            "channels" =>  ::Int,
                            "format" =>  "RIFF" or "RF64",
                            "sampleRate" =>  ::Int
                        ]
                    ],
                    "customLanguageCode" =>  ::String,
                    "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
                    "languageCodeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                    "remixSettings" =>  [
                        "channelMapping" => <required> ["outputChannels" => <required> [["inputChannels" => <required> [::Int, ...]], ...]],
                        "channelsIn" => <required> ::Int,
                        "channelsOut" => <required> ::Int
                    ],
                    "streamName" =>  ::String
                ], ...],
                "captionDescriptions" =>  [[
                    "captionSelectorName" => <required> ::String,
                    "customLanguageCode" =>  ::String,
                    "destinationSettings" => <required> [
                        "burninDestinationSettings" =>  [
                            "alignment" => <required> "CENTERED" or "LEFT",
                            "backgroundColor" =>  "NONE", "BLACK" or "WHITE",
                            "backgroundOpacity" =>  ::Int,
                            "fontColor" =>  "WHITE", "BLACK", "YELLOW", "RED", "GREEN" or "BLUE",
                            "fontOpacity" => <required> ::Int,
                            "fontResolution" =>  ::Int,
                            "fontSize" =>  ::Int,
                            "outlineColor" => <required> "BLACK", "WHITE", "YELLOW", "RED", "GREEN" or "BLUE",
                            "outlineSize" => <required> ::Int,
                            "shadowColor" =>  "NONE", "BLACK" or "WHITE",
                            "shadowOpacity" =>  ::Int,
                            "shadowXOffset" =>  ::Int,
                            "shadowYOffset" =>  ::Int,
                            "teletextSpacing" =>  "FIXED_GRID" or "PROPORTIONAL",
                            "xPosition" =>  ::Int,
                            "yPosition" =>  ::Int
                        ],
                        "destinationType" => <required> "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML" or "WEBVTT",
                        "dvbSubDestinationSettings" =>  [
                            "alignment" => <required> "CENTERED" or "LEFT",
                            "backgroundColor" =>  "NONE", "BLACK" or "WHITE",
                            "backgroundOpacity" =>  ::Int,
                            "fontColor" =>  "WHITE", "BLACK", "YELLOW", "RED", "GREEN" or "BLUE",
                            "fontOpacity" => <required> ::Int,
                            "fontResolution" =>  ::Int,
                            "fontSize" =>  ::Int,
                            "outlineColor" => <required> "BLACK", "WHITE", "YELLOW", "RED", "GREEN" or "BLUE",
                            "outlineSize" => <required> ::Int,
                            "shadowColor" =>  "NONE", "BLACK" or "WHITE",
                            "shadowOpacity" =>  ::Int,
                            "shadowXOffset" =>  ::Int,
                            "shadowYOffset" =>  ::Int,
                            "teletextSpacing" =>  "FIXED_GRID" or "PROPORTIONAL",
                            "xPosition" =>  ::Int,
                            "yPosition" =>  ::Int
                        ],
                        "sccDestinationSettings" =>  ["framerate" =>  "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME" or "FRAMERATE_29_97_NON_DROPFRAME"],
                        "teletextDestinationSettings" =>  ["pageNumber" =>  ::String],
                        "ttmlDestinationSettings" =>  ["stylePassthrough" =>  "ENABLED" or "DISABLED"]
                    ],
                    "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
                    "languageDescription" =>  ::String
                ], ...],
                "containerSettings" =>  [
                    "container" => <required> "F4V", "ISMV", "M2TS", "M3U8", "CMFC", "MOV", "MP4", "MPD", "MXF" or "RAW",
                    "f4vSettings" =>  ["moovPlacement" =>  "PROGRESSIVE_DOWNLOAD" or "NORMAL"],
                    "m2tsSettings" =>  [
                        "audioBufferModel" =>  "DVB" or "ATSC",
                        "audioFramesPerPes" =>  ::Int,
                        "audioPids" =>  [::Int, ...],
                        "bitrate" =>  ::Int,
                        "bufferModel" =>  "MULTIPLEX" or "NONE",
                        "dvbNitSettings" =>  [
                            "networkId" => <required> ::Int,
                            "networkName" => <required> ::String,
                            "nitInterval" => <required> ::Int
                        ],
                        "dvbSdtSettings" =>  [
                            "outputSdt" =>  "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL" or "SDT_NONE",
                            "sdtInterval" =>  ::Int,
                            "serviceName" =>  ::String,
                            "serviceProviderName" =>  ::String
                        ],
                        "dvbSubPids" =>  [::Int, ...],
                        "dvbTdtSettings" =>  ["tdtInterval" => <required> ::Int],
                        "dvbTeletextPid" =>  ::Int,
                        "ebpAudioInterval" =>  "VIDEO_AND_FIXED_INTERVALS" or "VIDEO_INTERVAL",
                        "ebpPlacement" =>  "VIDEO_AND_AUDIO_PIDS" or "VIDEO_PID",
                        "esRateInPes" =>  "INCLUDE" or "EXCLUDE",
                        "fragmentTime" =>  double,
                        "maxPcrInterval" =>  ::Int,
                        "minEbpInterval" =>  ::Int,
                        "nielsenId3" =>  "INSERT" or "NONE",
                        "nullPacketBitrate" =>  double,
                        "patInterval" =>  ::Int,
                        "pcrControl" =>  "PCR_EVERY_PES_PACKET" or "CONFIGURED_PCR_PERIOD",
                        "pcrPid" =>  ::Int,
                        "pmtInterval" =>  ::Int,
                        "pmtPid" =>  ::Int,
                        "privateMetadataPid" =>  ::Int,
                        "programNumber" =>  ::Int,
                        "rateMode" =>  "VBR" or "CBR",
                        "scte35Pid" =>  ::Int,
                        "scte35Source" =>  "PASSTHROUGH" or "NONE",
                        "segmentationMarkers" =>  "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP" or "EBP_LEGACY",
                        "segmentationStyle" =>  "MAINTAIN_CADENCE" or "RESET_CADENCE",
                        "segmentationTime" =>  double,
                        "timedMetadataPid" =>  ::Int,
                        "transportStreamId" =>  ::Int,
                        "videoPid" =>  ::Int
                    ],
                    "m3u8Settings" =>  [
                        "audioFramesPerPes" =>  ::Int,
                        "audioPids" =>  [::Int, ...],
                        "nielsenId3" =>  "INSERT" or "NONE",
                        "patInterval" =>  ::Int,
                        "pcrControl" =>  "PCR_EVERY_PES_PACKET" or "CONFIGURED_PCR_PERIOD",
                        "pcrPid" =>  ::Int,
                        "pmtInterval" =>  ::Int,
                        "pmtPid" =>  ::Int,
                        "privateMetadataPid" =>  ::Int,
                        "programNumber" =>  ::Int,
                        "scte35Pid" =>  ::Int,
                        "scte35Source" =>  "PASSTHROUGH" or "NONE",
                        "timedMetadata" =>  "PASSTHROUGH" or "NONE",
                        "timedMetadataPid" =>  ::Int,
                        "transportStreamId" =>  ::Int,
                        "videoPid" =>  ::Int
                    ],
                    "movSettings" =>  [
                        "clapAtom" =>  "INCLUDE" or "EXCLUDE",
                        "cslgAtom" =>  "INCLUDE" or "EXCLUDE",
                        "mpeg2FourCCControl" =>  "XDCAM" or "MPEG",
                        "paddingControl" =>  "OMNEON" or "NONE",
                        "reference" =>  "SELF_CONTAINED" or "EXTERNAL"
                    ],
                    "mp4Settings" =>  [
                        "cslgAtom" =>  "INCLUDE" or "EXCLUDE",
                        "freeSpaceBox" =>  "INCLUDE" or "EXCLUDE",
                        "moovPlacement" =>  "PROGRESSIVE_DOWNLOAD" or "NORMAL",
                        "mp4MajorBrand" =>  ::String
                    ]
                ],
                "extension" =>  ::String,
                "nameModifier" =>  ::String,
                "outputSettings" =>  ["hlsSettings" =>  [
                        "audioGroupId" =>  ::String,
                        "audioRenditionSets" =>  ::String,
                        "audioTrackType" =>  "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT" or "AUDIO_ONLY_VARIANT_STREAM",
                        "iFrameOnlyManifest" =>  "INCLUDE" or "EXCLUDE",
                        "segmentModifier" =>  ::String
                    ]],
                "preset" =>  ::String,
                "videoDescription" =>  [
                    "afdSignaling" =>  "NONE", "AUTO" or "FIXED",
                    "antiAlias" =>  "DISABLED" or "ENABLED",
                    "codecSettings" => <required> [
                        "codec" => <required> "FRAME_CAPTURE", "H_264", "H_265", "MPEG2" or "PRORES",
                        "frameCaptureSettings" =>  [
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "maxCaptures" =>  ::Int,
                            "quality" =>  ::Int
                        ],
                        "h264Settings" =>  [
                            "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER" or "MAX",
                            "bitrate" =>  ::Int,
                            "codecLevel" =>  "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1" or "LEVEL_5_2",
                            "codecProfile" =>  "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT" or "MAIN",
                            "entropyEncoding" =>  "CABAC" or "CAVLC",
                            "fieldEncoding" =>  "PAFF" or "FORCE_FIELD",
                            "flickerAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "gopBReference" =>  "DISABLED" or "ENABLED",
                            "gopClosedCadence" =>  ::Int,
                            "gopSize" =>  double,
                            "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                            "hrdBufferInitialFillPercentage" =>  ::Int,
                            "hrdBufferSize" =>  ::Int,
                            "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                            "maxBitrate" =>  ::Int,
                            "minIInterval" =>  ::Int,
                            "numberBFramesBetweenReferenceFrames" =>  ::Int,
                            "numberReferenceFrames" =>  ::Int,
                            "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "parDenominator" =>  ::Int,
                            "parNumerator" =>  ::Int,
                            "qualityTuningLevel" =>  "SINGLE_PASS", "SINGLE_PASS_HQ" or "MULTI_PASS_HQ",
                            "rateControlMode" =>  "VBR" or "CBR",
                            "repeatPps" =>  "DISABLED" or "ENABLED",
                            "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                            "slices" =>  ::Int,
                            "slowPal" =>  "DISABLED" or "ENABLED",
                            "softness" =>  ::Int,
                            "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "syntax" =>  "DEFAULT" or "RP2027",
                            "telecine" =>  "NONE", "SOFT" or "HARD",
                            "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "unregisteredSeiTimecode" =>  "DISABLED" or "ENABLED"
                        ],
                        "h265Settings" =>  [
                            "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER" or "MAX",
                            "alternateTransferFunctionSei" =>  "DISABLED" or "ENABLED",
                            "bitrate" =>  ::Int,
                            "codecLevel" =>  "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1" or "LEVEL_6_2",
                            "codecProfile" =>  "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN" or "MAIN_422_10BIT_HIGH",
                            "flickerAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "gopBReference" =>  "DISABLED" or "ENABLED",
                            "gopClosedCadence" =>  ::Int,
                            "gopSize" =>  double,
                            "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                            "hrdBufferInitialFillPercentage" =>  ::Int,
                            "hrdBufferSize" =>  ::Int,
                            "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                            "maxBitrate" =>  ::Int,
                            "minIInterval" =>  ::Int,
                            "numberBFramesBetweenReferenceFrames" =>  ::Int,
                            "numberReferenceFrames" =>  ::Int,
                            "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "parDenominator" =>  ::Int,
                            "parNumerator" =>  ::Int,
                            "qualityTuningLevel" =>  "SINGLE_PASS", "SINGLE_PASS_HQ" or "MULTI_PASS_HQ",
                            "rateControlMode" =>  "VBR" or "CBR",
                            "sampleAdaptiveOffsetFilterMode" =>  "DEFAULT", "ADAPTIVE" or "OFF",
                            "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                            "slices" =>  ::Int,
                            "slowPal" =>  "DISABLED" or "ENABLED",
                            "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "telecine" =>  "NONE", "SOFT" or "HARD",
                            "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "temporalIds" =>  "DISABLED" or "ENABLED",
                            "tiles" =>  "DISABLED" or "ENABLED",
                            "unregisteredSeiTimecode" =>  "DISABLED" or "ENABLED",
                            "writeMp4PackagingType" =>  "HVC1" or "HEV1"
                        ],
                        "mpeg2Settings" =>  [
                            "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM" or "HIGH",
                            "bitrate" =>  ::Int,
                            "codecLevel" =>  "AUTO", "LOW", "MAIN", "HIGH1440" or "HIGH",
                            "codecProfile" =>  "MAIN" or "PROFILE_422",
                            "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "gopClosedCadence" =>  ::Int,
                            "gopSize" =>  double,
                            "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                            "hrdBufferInitialFillPercentage" =>  ::Int,
                            "hrdBufferSize" =>  ::Int,
                            "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                            "intraDcPrecision" =>  "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10" or "INTRA_DC_PRECISION_11",
                            "maxBitrate" =>  ::Int,
                            "minIInterval" =>  ::Int,
                            "numberBFramesBetweenReferenceFrames" =>  ::Int,
                            "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "parDenominator" =>  ::Int,
                            "parNumerator" =>  ::Int,
                            "qualityTuningLevel" =>  "SINGLE_PASS" or "MULTI_PASS",
                            "rateControlMode" =>  "VBR" or "CBR",
                            "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                            "slowPal" =>  "DISABLED" or "ENABLED",
                            "softness" =>  ::Int,
                            "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "syntax" =>  "DEFAULT" or "D_10",
                            "telecine" =>  "NONE", "SOFT" or "HARD",
                            "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED"
                        ],
                        "proresSettings" =>  [
                            "codecProfile" =>  "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT" or "APPLE_PRORES_422_PROXY",
                            "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                            "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "parDenominator" =>  ::Int,
                            "parNumerator" =>  ::Int,
                            "slowPal" =>  "DISABLED" or "ENABLED",
                            "telecine" =>  "NONE" or "HARD"
                        ]
                    ],
                    "colorMetadata" =>  "IGNORE" or "INSERT",
                    "crop" =>  [
                        "height" => <required> ::Int,
                        "width" => <required> ::Int,
                        "x" => <required> ::Int,
                        "y" => <required> ::Int
                    ],
                    "dropFrameTimecode" =>  "DISABLED" or "ENABLED",
                    "fixedAfd" =>  ::Int,
                    "height" =>  ::Int,
                    "position" =>  [
                        "height" => <required> ::Int,
                        "width" => <required> ::Int,
                        "x" => <required> ::Int,
                        "y" => <required> ::Int
                    ],
                    "respondToAfd" =>  "NONE", "RESPOND" or "PASSTHROUGH",
                    "scalingBehavior" =>  "DEFAULT" or "STRETCH_TO_OUTPUT",
                    "sharpness" =>  ::Int,
                    "timecodeInsertion" =>  "DISABLED" or "PIC_TIMING_SEI",
                    "videoPreprocessors" =>  [
                        "colorCorrector" =>  [
                            "brightness" =>  ::Int,
                            "colorSpaceConversion" =>  "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10" or "FORCE_HLG_2020",
                            "contrast" =>  ::Int,
                            "hdr10Metadata" =>  [
                                "bluePrimaryX" =>  ::Int,
                                "bluePrimaryY" =>  ::Int,
                                "greenPrimaryX" =>  ::Int,
                                "greenPrimaryY" =>  ::Int,
                                "maxContentLightLevel" => <required> ::Int,
                                "maxFrameAverageLightLevel" => <required> ::Int,
                                "maxLuminance" =>  ::Int,
                                "minLuminance" =>  ::Int,
                                "redPrimaryX" =>  ::Int,
                                "redPrimaryY" =>  ::Int,
                                "whitePointX" =>  ::Int,
                                "whitePointY" =>  ::Int
                            ],
                            "hue" =>  ::Int,
                            "saturation" =>  ::Int
                        ],
                        "deinterlacer" =>  [
                            "algorithm" =>  "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND" or "BLEND_TICKER",
                            "control" =>  "FORCE_ALL_FRAMES" or "NORMAL",
                            "mode" =>  "DEINTERLACE", "INVERSE_TELECINE" or "ADAPTIVE"
                        ],
                        "imageInserter" =>  ["insertableImages" => <required> [[
                                "duration" =>  ::Int,
                                "fadeIn" =>  ::Int,
                                "fadeOut" =>  ::Int,
                                "height" =>  ::Int,
                                "imageInserterInput" => <required> ::String,
                                "imageX" => <required> ::Int,
                                "imageY" => <required> ::Int,
                                "layer" => <required> ::Int,
                                "opacity" => <required> ::Int,
                                "startTime" =>  ::String,
                                "width" =>  ::Int
                            ], ...]],
                        "noiseReducer" =>  [
                            "filter" => <required> "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE" or "SPATIAL",
                            "filterSettings" =>  ["strength" =>  ::Int],
                            "spatialFilterSettings" =>  [
                                "postFilterSharpenStrength" =>  ::Int,
                                "speed" =>  ::Int,
                                "strength" =>  ::Int
                            ]
                        ],
                        "timecodeBurnin" =>  [
                            "fontSize" =>  ::Int,
                            "position" =>  "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER" or "BOTTOM_RIGHT",
                            "prefix" =>  ::String
                        ]
                    ],
                    "width" =>  ::Int
                ]
            ], ...]
        ], ...],
        "timecodeConfig" =>  [
            "anchor" =>  ::String,
            "source" =>  "EMBEDDED", "ZEROBASED" or "SPECIFIEDSTART",
            "start" =>  ::String,
            "timestampOffset" =>  ::String
        ],
        "timedMetadataInsertion" =>  ["id3Insertions" => <required> [[
                "id3" => <required> ::String,
                "timecode" => <required> ::String
            ], ...]]
    ]
```

## `userMetadata = ::Dict{String,String}`
User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.




# Returns

`CreateJobResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateJob)
"""
@inline create_job(aws::AWSConfig=default_aws_config(); args...) = create_job(aws, args)

@inline create_job(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "POST", "/2017-08-29/jobs", args)

@inline create_job(args) = create_job(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.create_job_template
    create_job_template([::AWSConfig], arguments::Dict)
    create_job_template([::AWSConfig]; name=, settings=, <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "POST", "/2017-08-29/jobTemplates", arguments::Dict)
    mediaconvert([::AWSConfig], "POST", "/2017-08-29/jobTemplates", name=, settings=, <keyword arguments>)

# CreateJobTemplate Operation

Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

# Arguments

## `category = ::String`
Optional. A category for the job template you are creating


## `description = ::String`
Optional. A description of the job template you are creating.


## `name = ::String` -- *Required*
The name of the job template you are creating.


## `queue = ::String`
Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue.


## `settings = [ ... ]` -- *Required*

```
 settings = [
        "adAvailOffset" =>  ::Int,
        "availBlanking" =>  ["availBlankingImage" =>  ::String],
        "inputs" =>  [[
            "audioSelectorGroups" =>  ::Dict{String,String},
            "audioSelectors" =>  ::Dict{String,String},
            "captionSelectors" =>  ::Dict{String,String},
            "deblockFilter" =>  "ENABLED" or "DISABLED",
            "denoiseFilter" =>  "ENABLED" or "DISABLED",
            "filterEnable" =>  "AUTO", "DISABLE" or "FORCE",
            "filterStrength" =>  ::Int,
            "inputClippings" =>  [[
                "endTimecode" =>  ::String,
                "startTimecode" =>  ::String
            ], ...],
            "programNumber" =>  ::Int,
            "psiControl" =>  "IGNORE_PSI" or "USE_PSI",
            "timecodeSource" =>  "EMBEDDED", "ZEROBASED" or "SPECIFIEDSTART",
            "videoSelector" =>  [
                "colorSpace" =>  "FOLLOW", "REC_601", "REC_709", "HDR10" or "HLG_2020",
                "colorSpaceUsage" =>  "FORCE" or "FALLBACK",
                "hdr10Metadata" =>  [
                    "bluePrimaryX" =>  ::Int,
                    "bluePrimaryY" =>  ::Int,
                    "greenPrimaryX" =>  ::Int,
                    "greenPrimaryY" =>  ::Int,
                    "maxContentLightLevel" => <required> ::Int,
                    "maxFrameAverageLightLevel" => <required> ::Int,
                    "maxLuminance" =>  ::Int,
                    "minLuminance" =>  ::Int,
                    "redPrimaryX" =>  ::Int,
                    "redPrimaryY" =>  ::Int,
                    "whitePointX" =>  ::Int,
                    "whitePointY" =>  ::Int
                ],
                "pid" =>  ::Int,
                "programNumber" =>  ::Int
            ]
        ], ...],
        "nielsenConfiguration" =>  [
            "breakoutCode" =>  ::Int,
            "distributorId" =>  ::String
        ],
        "outputGroups" => <required> [[
            "customName" =>  ::String,
            "name" =>  ::String,
            "outputGroupSettings" => <required> [
                "cmafGroupSettings" =>  [
                    "baseUrl" =>  ::String,
                    "clientCache" =>  "DISABLED" or "ENABLED",
                    "codecSpecification" =>  "RFC_6381" or "RFC_4281",
                    "destination" =>  ::String,
                    "encryption" =>  [
                        "constantInitializationVector" =>  ::String,
                        "encryptionMethod" =>  "SAMPLE_AES",
                        "initializationVectorInManifest" =>  "INCLUDE" or "EXCLUDE",
                        "staticKeyProvider" =>  [
                            "keyFormat" =>  ::String,
                            "keyFormatVersions" =>  ::String,
                            "staticKeyValue" => <required> ::String,
                            "url" => <required> ::String
                        ],
                        "type" => <required> "STATIC_KEY"
                    ],
                    "fragmentLength" => <required> ::Int,
                    "manifestCompression" =>  "GZIP" or "NONE",
                    "manifestDurationFormat" =>  "FLOATING_POINT" or "INTEGER",
                    "minBufferTime" =>  ::Int,
                    "segmentControl" =>  "SINGLE_FILE" or "SEGMENTED_FILES",
                    "segmentLength" => <required> ::Int,
                    "streamInfResolution" =>  "INCLUDE" or "EXCLUDE",
                    "writeDashManifest" =>  "DISABLED" or "ENABLED",
                    "writeHlsManifest" =>  "DISABLED" or "ENABLED"
                ],
                "dashIsoGroupSettings" =>  [
                    "baseUrl" =>  ::String,
                    "destination" =>  ::String,
                    "encryption" =>  ["spekeKeyProvider" => <required> [
                            "resourceId" => <required> ::String,
                            "systemIds" => <required> [::String, ...],
                            "url" => <required> ::String
                        ]],
                    "fragmentLength" => <required> ::Int,
                    "hbbtvCompliance" =>  "HBBTV_1_5" or "NONE",
                    "minBufferTime" =>  ::Int,
                    "segmentControl" =>  "SINGLE_FILE" or "SEGMENTED_FILES",
                    "segmentLength" => <required> ::Int
                ],
                "fileGroupSettings" =>  ["destination" =>  ::String],
                "hlsGroupSettings" =>  [
                    "adMarkers" =>  ["ELEMENTAL" or "ELEMENTAL_SCTE35", ...],
                    "baseUrl" =>  ::String,
                    "captionLanguageMappings" =>  [[
                        "captionChannel" =>  ::Int,
                        "customLanguageCode" =>  ::String,
                        "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
                        "languageDescription" =>  ::String
                    ], ...],
                    "captionLanguageSetting" =>  "INSERT", "OMIT" or "NONE",
                    "clientCache" =>  "DISABLED" or "ENABLED",
                    "codecSpecification" =>  "RFC_6381" or "RFC_4281",
                    "destination" =>  ::String,
                    "directoryStructure" =>  "SINGLE_DIRECTORY" or "SUBDIRECTORY_PER_STREAM",
                    "encryption" =>  [
                        "constantInitializationVector" =>  ::String,
                        "encryptionMethod" =>  "AES128" or "SAMPLE_AES",
                        "initializationVectorInManifest" =>  "INCLUDE" or "EXCLUDE",
                        "spekeKeyProvider" =>  [
                            "resourceId" => <required> ::String,
                            "systemIds" => <required> [::String, ...],
                            "url" => <required> ::String
                        ],
                        "staticKeyProvider" =>  [
                            "keyFormat" =>  ::String,
                            "keyFormatVersions" =>  ::String,
                            "staticKeyValue" => <required> ::String,
                            "url" => <required> ::String
                        ],
                        "type" => <required> "SPEKE" or "STATIC_KEY"
                    ],
                    "manifestCompression" =>  "GZIP" or "NONE",
                    "manifestDurationFormat" =>  "FLOATING_POINT" or "INTEGER",
                    "minSegmentLength" => <required> ::Int,
                    "outputSelection" =>  "MANIFESTS_AND_SEGMENTS" or "SEGMENTS_ONLY",
                    "programDateTime" =>  "INCLUDE" or "EXCLUDE",
                    "programDateTimePeriod" =>  ::Int,
                    "segmentControl" =>  "SINGLE_FILE" or "SEGMENTED_FILES",
                    "segmentLength" => <required> ::Int,
                    "segmentsPerSubdirectory" =>  ::Int,
                    "streamInfResolution" =>  "INCLUDE" or "EXCLUDE",
                    "timedMetadataId3Frame" =>  "NONE", "PRIV" or "TDRL",
                    "timedMetadataId3Period" =>  ::Int,
                    "timestampDeltaMilliseconds" =>  ::Int
                ],
                "msSmoothGroupSettings" =>  [
                    "audioDeduplication" =>  "COMBINE_DUPLICATE_STREAMS" or "NONE",
                    "destination" =>  ::String,
                    "encryption" =>  ["spekeKeyProvider" => <required> [
                            "resourceId" => <required> ::String,
                            "systemIds" => <required> [::String, ...],
                            "url" => <required> ::String
                        ]],
                    "fragmentLength" => <required> ::Int,
                    "manifestEncoding" =>  "UTF8" or "UTF16"
                ],
                "type" => <required> "HLS_GROUP_SETTINGS", "DASH_ISO_GROUP_SETTINGS", "FILE_GROUP_SETTINGS", "MS_SMOOTH_GROUP_SETTINGS" or "CMAF_GROUP_SETTINGS"
            ],
            "outputs" => <required> [[
                "audioDescriptions" =>  [[
                    "audioNormalizationSettings" =>  [
                        "algorithm" =>  "ITU_BS_1770_1" or "ITU_BS_1770_2",
                        "algorithmControl" =>  "CORRECT_AUDIO" or "MEASURE_ONLY",
                        "correctionGateLevel" =>  ::Int,
                        "loudnessLogging" =>  "LOG" or "DONT_LOG",
                        "peakCalculation" =>  "TRUE_PEAK" or "NONE",
                        "targetLkfs" =>  double
                    ],
                    "audioSourceName" =>  ::String,
                    "audioType" =>  ::Int,
                    "audioTypeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                    "codecSettings" => <required> [
                        "aacSettings" =>  [
                            "audioDescriptionBroadcasterMix" =>  "BROADCASTER_MIXED_AD" or "NORMAL",
                            "bitrate" =>  ::Int,
                            "codecProfile" =>  "LC", "HEV1" or "HEV2",
                            "codingMode" => <required> "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_5_1",
                            "rateControlMode" =>  "CBR" or "VBR",
                            "rawFormat" =>  "LATM_LOAS" or "NONE",
                            "sampleRate" => <required> ::Int,
                            "specification" =>  "MPEG2" or "MPEG4",
                            "vbrQuality" =>  "LOW", "MEDIUM_LOW", "MEDIUM_HIGH" or "HIGH"
                        ],
                        "ac3Settings" =>  [
                            "bitrate" =>  ::Int,
                            "bitstreamMode" =>  "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED" or "VOICE_OVER",
                            "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_3_2_LFE",
                            "dialnorm" =>  ::Int,
                            "dynamicRangeCompressionProfile" =>  "FILM_STANDARD" or "NONE",
                            "lfeFilter" =>  "ENABLED" or "DISABLED",
                            "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                            "sampleRate" =>  ::Int
                        ],
                        "aiffSettings" =>  [
                            "bitDepth" =>  ::Int,
                            "channels" =>  ::Int,
                            "sampleRate" =>  ::Int
                        ],
                        "codec" => <required> "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3" or "PASSTHROUGH",
                        "eac3Settings" =>  [
                            "attenuationControl" =>  "ATTENUATE_3_DB" or "NONE",
                            "bitrate" =>  ::Int,
                            "bitstreamMode" =>  "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED" or "VISUALLY_IMPAIRED",
                            "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_2_0" or "CODING_MODE_3_2",
                            "dcFilter" =>  "ENABLED" or "DISABLED",
                            "dialnorm" =>  ::Int,
                            "dynamicRangeCompressionLine" =>  "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT" or "SPEECH",
                            "dynamicRangeCompressionRf" =>  "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT" or "SPEECH",
                            "lfeControl" =>  "LFE" or "NO_LFE",
                            "lfeFilter" =>  "ENABLED" or "DISABLED",
                            "loRoCenterMixLevel" =>  double,
                            "loRoSurroundMixLevel" =>  double,
                            "ltRtCenterMixLevel" =>  double,
                            "ltRtSurroundMixLevel" =>  double,
                            "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                            "passthroughControl" =>  "WHEN_POSSIBLE" or "NO_PASSTHROUGH",
                            "phaseControl" =>  "SHIFT_90_DEGREES" or "NO_SHIFT",
                            "sampleRate" =>  ::Int,
                            "stereoDownmix" =>  "NOT_INDICATED", "LO_RO", "LT_RT" or "DPL2",
                            "surroundExMode" =>  "NOT_INDICATED", "ENABLED" or "DISABLED",
                            "surroundMode" =>  "NOT_INDICATED", "ENABLED" or "DISABLED"
                        ],
                        "mp2Settings" =>  [
                            "bitrate" =>  ::Int,
                            "channels" =>  ::Int,
                            "sampleRate" =>  ::Int
                        ],
                        "wavSettings" =>  [
                            "bitDepth" =>  ::Int,
                            "channels" =>  ::Int,
                            "format" =>  "RIFF" or "RF64",
                            "sampleRate" =>  ::Int
                        ]
                    ],
                    "customLanguageCode" =>  ::String,
                    "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
                    "languageCodeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                    "remixSettings" =>  [
                        "channelMapping" => <required> ["outputChannels" => <required> [["inputChannels" => <required> [::Int, ...]], ...]],
                        "channelsIn" => <required> ::Int,
                        "channelsOut" => <required> ::Int
                    ],
                    "streamName" =>  ::String
                ], ...],
                "captionDescriptions" =>  [[
                    "captionSelectorName" => <required> ::String,
                    "customLanguageCode" =>  ::String,
                    "destinationSettings" => <required> [
                        "burninDestinationSettings" =>  [
                            "alignment" => <required> "CENTERED" or "LEFT",
                            "backgroundColor" =>  "NONE", "BLACK" or "WHITE",
                            "backgroundOpacity" =>  ::Int,
                            "fontColor" =>  "WHITE", "BLACK", "YELLOW", "RED", "GREEN" or "BLUE",
                            "fontOpacity" => <required> ::Int,
                            "fontResolution" =>  ::Int,
                            "fontSize" =>  ::Int,
                            "outlineColor" => <required> "BLACK", "WHITE", "YELLOW", "RED", "GREEN" or "BLUE",
                            "outlineSize" => <required> ::Int,
                            "shadowColor" =>  "NONE", "BLACK" or "WHITE",
                            "shadowOpacity" =>  ::Int,
                            "shadowXOffset" =>  ::Int,
                            "shadowYOffset" =>  ::Int,
                            "teletextSpacing" =>  "FIXED_GRID" or "PROPORTIONAL",
                            "xPosition" =>  ::Int,
                            "yPosition" =>  ::Int
                        ],
                        "destinationType" => <required> "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML" or "WEBVTT",
                        "dvbSubDestinationSettings" =>  [
                            "alignment" => <required> "CENTERED" or "LEFT",
                            "backgroundColor" =>  "NONE", "BLACK" or "WHITE",
                            "backgroundOpacity" =>  ::Int,
                            "fontColor" =>  "WHITE", "BLACK", "YELLOW", "RED", "GREEN" or "BLUE",
                            "fontOpacity" => <required> ::Int,
                            "fontResolution" =>  ::Int,
                            "fontSize" =>  ::Int,
                            "outlineColor" => <required> "BLACK", "WHITE", "YELLOW", "RED", "GREEN" or "BLUE",
                            "outlineSize" => <required> ::Int,
                            "shadowColor" =>  "NONE", "BLACK" or "WHITE",
                            "shadowOpacity" =>  ::Int,
                            "shadowXOffset" =>  ::Int,
                            "shadowYOffset" =>  ::Int,
                            "teletextSpacing" =>  "FIXED_GRID" or "PROPORTIONAL",
                            "xPosition" =>  ::Int,
                            "yPosition" =>  ::Int
                        ],
                        "sccDestinationSettings" =>  ["framerate" =>  "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME" or "FRAMERATE_29_97_NON_DROPFRAME"],
                        "teletextDestinationSettings" =>  ["pageNumber" =>  ::String],
                        "ttmlDestinationSettings" =>  ["stylePassthrough" =>  "ENABLED" or "DISABLED"]
                    ],
                    "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
                    "languageDescription" =>  ::String
                ], ...],
                "containerSettings" =>  [
                    "container" => <required> "F4V", "ISMV", "M2TS", "M3U8", "CMFC", "MOV", "MP4", "MPD", "MXF" or "RAW",
                    "f4vSettings" =>  ["moovPlacement" =>  "PROGRESSIVE_DOWNLOAD" or "NORMAL"],
                    "m2tsSettings" =>  [
                        "audioBufferModel" =>  "DVB" or "ATSC",
                        "audioFramesPerPes" =>  ::Int,
                        "audioPids" =>  [::Int, ...],
                        "bitrate" =>  ::Int,
                        "bufferModel" =>  "MULTIPLEX" or "NONE",
                        "dvbNitSettings" =>  [
                            "networkId" => <required> ::Int,
                            "networkName" => <required> ::String,
                            "nitInterval" => <required> ::Int
                        ],
                        "dvbSdtSettings" =>  [
                            "outputSdt" =>  "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL" or "SDT_NONE",
                            "sdtInterval" =>  ::Int,
                            "serviceName" =>  ::String,
                            "serviceProviderName" =>  ::String
                        ],
                        "dvbSubPids" =>  [::Int, ...],
                        "dvbTdtSettings" =>  ["tdtInterval" => <required> ::Int],
                        "dvbTeletextPid" =>  ::Int,
                        "ebpAudioInterval" =>  "VIDEO_AND_FIXED_INTERVALS" or "VIDEO_INTERVAL",
                        "ebpPlacement" =>  "VIDEO_AND_AUDIO_PIDS" or "VIDEO_PID",
                        "esRateInPes" =>  "INCLUDE" or "EXCLUDE",
                        "fragmentTime" =>  double,
                        "maxPcrInterval" =>  ::Int,
                        "minEbpInterval" =>  ::Int,
                        "nielsenId3" =>  "INSERT" or "NONE",
                        "nullPacketBitrate" =>  double,
                        "patInterval" =>  ::Int,
                        "pcrControl" =>  "PCR_EVERY_PES_PACKET" or "CONFIGURED_PCR_PERIOD",
                        "pcrPid" =>  ::Int,
                        "pmtInterval" =>  ::Int,
                        "pmtPid" =>  ::Int,
                        "privateMetadataPid" =>  ::Int,
                        "programNumber" =>  ::Int,
                        "rateMode" =>  "VBR" or "CBR",
                        "scte35Pid" =>  ::Int,
                        "scte35Source" =>  "PASSTHROUGH" or "NONE",
                        "segmentationMarkers" =>  "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP" or "EBP_LEGACY",
                        "segmentationStyle" =>  "MAINTAIN_CADENCE" or "RESET_CADENCE",
                        "segmentationTime" =>  double,
                        "timedMetadataPid" =>  ::Int,
                        "transportStreamId" =>  ::Int,
                        "videoPid" =>  ::Int
                    ],
                    "m3u8Settings" =>  [
                        "audioFramesPerPes" =>  ::Int,
                        "audioPids" =>  [::Int, ...],
                        "nielsenId3" =>  "INSERT" or "NONE",
                        "patInterval" =>  ::Int,
                        "pcrControl" =>  "PCR_EVERY_PES_PACKET" or "CONFIGURED_PCR_PERIOD",
                        "pcrPid" =>  ::Int,
                        "pmtInterval" =>  ::Int,
                        "pmtPid" =>  ::Int,
                        "privateMetadataPid" =>  ::Int,
                        "programNumber" =>  ::Int,
                        "scte35Pid" =>  ::Int,
                        "scte35Source" =>  "PASSTHROUGH" or "NONE",
                        "timedMetadata" =>  "PASSTHROUGH" or "NONE",
                        "timedMetadataPid" =>  ::Int,
                        "transportStreamId" =>  ::Int,
                        "videoPid" =>  ::Int
                    ],
                    "movSettings" =>  [
                        "clapAtom" =>  "INCLUDE" or "EXCLUDE",
                        "cslgAtom" =>  "INCLUDE" or "EXCLUDE",
                        "mpeg2FourCCControl" =>  "XDCAM" or "MPEG",
                        "paddingControl" =>  "OMNEON" or "NONE",
                        "reference" =>  "SELF_CONTAINED" or "EXTERNAL"
                    ],
                    "mp4Settings" =>  [
                        "cslgAtom" =>  "INCLUDE" or "EXCLUDE",
                        "freeSpaceBox" =>  "INCLUDE" or "EXCLUDE",
                        "moovPlacement" =>  "PROGRESSIVE_DOWNLOAD" or "NORMAL",
                        "mp4MajorBrand" =>  ::String
                    ]
                ],
                "extension" =>  ::String,
                "nameModifier" =>  ::String,
                "outputSettings" =>  ["hlsSettings" =>  [
                        "audioGroupId" =>  ::String,
                        "audioRenditionSets" =>  ::String,
                        "audioTrackType" =>  "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT" or "AUDIO_ONLY_VARIANT_STREAM",
                        "iFrameOnlyManifest" =>  "INCLUDE" or "EXCLUDE",
                        "segmentModifier" =>  ::String
                    ]],
                "preset" =>  ::String,
                "videoDescription" =>  [
                    "afdSignaling" =>  "NONE", "AUTO" or "FIXED",
                    "antiAlias" =>  "DISABLED" or "ENABLED",
                    "codecSettings" => <required> [
                        "codec" => <required> "FRAME_CAPTURE", "H_264", "H_265", "MPEG2" or "PRORES",
                        "frameCaptureSettings" =>  [
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "maxCaptures" =>  ::Int,
                            "quality" =>  ::Int
                        ],
                        "h264Settings" =>  [
                            "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER" or "MAX",
                            "bitrate" =>  ::Int,
                            "codecLevel" =>  "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1" or "LEVEL_5_2",
                            "codecProfile" =>  "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT" or "MAIN",
                            "entropyEncoding" =>  "CABAC" or "CAVLC",
                            "fieldEncoding" =>  "PAFF" or "FORCE_FIELD",
                            "flickerAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "gopBReference" =>  "DISABLED" or "ENABLED",
                            "gopClosedCadence" =>  ::Int,
                            "gopSize" =>  double,
                            "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                            "hrdBufferInitialFillPercentage" =>  ::Int,
                            "hrdBufferSize" =>  ::Int,
                            "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                            "maxBitrate" =>  ::Int,
                            "minIInterval" =>  ::Int,
                            "numberBFramesBetweenReferenceFrames" =>  ::Int,
                            "numberReferenceFrames" =>  ::Int,
                            "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "parDenominator" =>  ::Int,
                            "parNumerator" =>  ::Int,
                            "qualityTuningLevel" =>  "SINGLE_PASS", "SINGLE_PASS_HQ" or "MULTI_PASS_HQ",
                            "rateControlMode" =>  "VBR" or "CBR",
                            "repeatPps" =>  "DISABLED" or "ENABLED",
                            "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                            "slices" =>  ::Int,
                            "slowPal" =>  "DISABLED" or "ENABLED",
                            "softness" =>  ::Int,
                            "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "syntax" =>  "DEFAULT" or "RP2027",
                            "telecine" =>  "NONE", "SOFT" or "HARD",
                            "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "unregisteredSeiTimecode" =>  "DISABLED" or "ENABLED"
                        ],
                        "h265Settings" =>  [
                            "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER" or "MAX",
                            "alternateTransferFunctionSei" =>  "DISABLED" or "ENABLED",
                            "bitrate" =>  ::Int,
                            "codecLevel" =>  "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1" or "LEVEL_6_2",
                            "codecProfile" =>  "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN" or "MAIN_422_10BIT_HIGH",
                            "flickerAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "gopBReference" =>  "DISABLED" or "ENABLED",
                            "gopClosedCadence" =>  ::Int,
                            "gopSize" =>  double,
                            "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                            "hrdBufferInitialFillPercentage" =>  ::Int,
                            "hrdBufferSize" =>  ::Int,
                            "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                            "maxBitrate" =>  ::Int,
                            "minIInterval" =>  ::Int,
                            "numberBFramesBetweenReferenceFrames" =>  ::Int,
                            "numberReferenceFrames" =>  ::Int,
                            "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "parDenominator" =>  ::Int,
                            "parNumerator" =>  ::Int,
                            "qualityTuningLevel" =>  "SINGLE_PASS", "SINGLE_PASS_HQ" or "MULTI_PASS_HQ",
                            "rateControlMode" =>  "VBR" or "CBR",
                            "sampleAdaptiveOffsetFilterMode" =>  "DEFAULT", "ADAPTIVE" or "OFF",
                            "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                            "slices" =>  ::Int,
                            "slowPal" =>  "DISABLED" or "ENABLED",
                            "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "telecine" =>  "NONE", "SOFT" or "HARD",
                            "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "temporalIds" =>  "DISABLED" or "ENABLED",
                            "tiles" =>  "DISABLED" or "ENABLED",
                            "unregisteredSeiTimecode" =>  "DISABLED" or "ENABLED",
                            "writeMp4PackagingType" =>  "HVC1" or "HEV1"
                        ],
                        "mpeg2Settings" =>  [
                            "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM" or "HIGH",
                            "bitrate" =>  ::Int,
                            "codecLevel" =>  "AUTO", "LOW", "MAIN", "HIGH1440" or "HIGH",
                            "codecProfile" =>  "MAIN" or "PROFILE_422",
                            "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "gopClosedCadence" =>  ::Int,
                            "gopSize" =>  double,
                            "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                            "hrdBufferInitialFillPercentage" =>  ::Int,
                            "hrdBufferSize" =>  ::Int,
                            "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                            "intraDcPrecision" =>  "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10" or "INTRA_DC_PRECISION_11",
                            "maxBitrate" =>  ::Int,
                            "minIInterval" =>  ::Int,
                            "numberBFramesBetweenReferenceFrames" =>  ::Int,
                            "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "parDenominator" =>  ::Int,
                            "parNumerator" =>  ::Int,
                            "qualityTuningLevel" =>  "SINGLE_PASS" or "MULTI_PASS",
                            "rateControlMode" =>  "VBR" or "CBR",
                            "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                            "slowPal" =>  "DISABLED" or "ENABLED",
                            "softness" =>  ::Int,
                            "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "syntax" =>  "DEFAULT" or "D_10",
                            "telecine" =>  "NONE", "SOFT" or "HARD",
                            "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED"
                        ],
                        "proresSettings" =>  [
                            "codecProfile" =>  "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT" or "APPLE_PRORES_422_PROXY",
                            "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                            "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "parDenominator" =>  ::Int,
                            "parNumerator" =>  ::Int,
                            "slowPal" =>  "DISABLED" or "ENABLED",
                            "telecine" =>  "NONE" or "HARD"
                        ]
                    ],
                    "colorMetadata" =>  "IGNORE" or "INSERT",
                    "crop" =>  [
                        "height" => <required> ::Int,
                        "width" => <required> ::Int,
                        "x" => <required> ::Int,
                        "y" => <required> ::Int
                    ],
                    "dropFrameTimecode" =>  "DISABLED" or "ENABLED",
                    "fixedAfd" =>  ::Int,
                    "height" =>  ::Int,
                    "position" =>  [
                        "height" => <required> ::Int,
                        "width" => <required> ::Int,
                        "x" => <required> ::Int,
                        "y" => <required> ::Int
                    ],
                    "respondToAfd" =>  "NONE", "RESPOND" or "PASSTHROUGH",
                    "scalingBehavior" =>  "DEFAULT" or "STRETCH_TO_OUTPUT",
                    "sharpness" =>  ::Int,
                    "timecodeInsertion" =>  "DISABLED" or "PIC_TIMING_SEI",
                    "videoPreprocessors" =>  [
                        "colorCorrector" =>  [
                            "brightness" =>  ::Int,
                            "colorSpaceConversion" =>  "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10" or "FORCE_HLG_2020",
                            "contrast" =>  ::Int,
                            "hdr10Metadata" =>  [
                                "bluePrimaryX" =>  ::Int,
                                "bluePrimaryY" =>  ::Int,
                                "greenPrimaryX" =>  ::Int,
                                "greenPrimaryY" =>  ::Int,
                                "maxContentLightLevel" => <required> ::Int,
                                "maxFrameAverageLightLevel" => <required> ::Int,
                                "maxLuminance" =>  ::Int,
                                "minLuminance" =>  ::Int,
                                "redPrimaryX" =>  ::Int,
                                "redPrimaryY" =>  ::Int,
                                "whitePointX" =>  ::Int,
                                "whitePointY" =>  ::Int
                            ],
                            "hue" =>  ::Int,
                            "saturation" =>  ::Int
                        ],
                        "deinterlacer" =>  [
                            "algorithm" =>  "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND" or "BLEND_TICKER",
                            "control" =>  "FORCE_ALL_FRAMES" or "NORMAL",
                            "mode" =>  "DEINTERLACE", "INVERSE_TELECINE" or "ADAPTIVE"
                        ],
                        "imageInserter" =>  ["insertableImages" => <required> [[
                                "duration" =>  ::Int,
                                "fadeIn" =>  ::Int,
                                "fadeOut" =>  ::Int,
                                "height" =>  ::Int,
                                "imageInserterInput" => <required> ::String,
                                "imageX" => <required> ::Int,
                                "imageY" => <required> ::Int,
                                "layer" => <required> ::Int,
                                "opacity" => <required> ::Int,
                                "startTime" =>  ::String,
                                "width" =>  ::Int
                            ], ...]],
                        "noiseReducer" =>  [
                            "filter" => <required> "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE" or "SPATIAL",
                            "filterSettings" =>  ["strength" =>  ::Int],
                            "spatialFilterSettings" =>  [
                                "postFilterSharpenStrength" =>  ::Int,
                                "speed" =>  ::Int,
                                "strength" =>  ::Int
                            ]
                        ],
                        "timecodeBurnin" =>  [
                            "fontSize" =>  ::Int,
                            "position" =>  "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER" or "BOTTOM_RIGHT",
                            "prefix" =>  ::String
                        ]
                    ],
                    "width" =>  ::Int
                ]
            ], ...]
        ], ...],
        "timecodeConfig" =>  [
            "anchor" =>  ::String,
            "source" =>  "EMBEDDED", "ZEROBASED" or "SPECIFIEDSTART",
            "start" =>  ::String,
            "timestampOffset" =>  ::String
        ],
        "timedMetadataInsertion" =>  ["id3Insertions" => <required> [[
                "id3" => <required> ::String,
                "timecode" => <required> ::String
            ], ...]]
    ]
```

## `tags = ::Dict{String,String}`
The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.




# Returns

`CreateJobTemplateResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateJobTemplate)
"""
@inline create_job_template(aws::AWSConfig=default_aws_config(); args...) = create_job_template(aws, args)

@inline create_job_template(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "POST", "/2017-08-29/jobTemplates", args)

@inline create_job_template(args) = create_job_template(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.create_preset
    create_preset([::AWSConfig], arguments::Dict)
    create_preset([::AWSConfig]; name=, settings=, <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "POST", "/2017-08-29/presets", arguments::Dict)
    mediaconvert([::AWSConfig], "POST", "/2017-08-29/presets", name=, settings=, <keyword arguments>)

# CreatePreset Operation

Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

# Arguments

## `category = ::String`
Optional. A category for the preset you are creating.


## `description = ::String`
Optional. A description of the preset you are creating.


## `name = ::String` -- *Required*
The name of the preset you are creating.


## `settings = [ ... ]` -- *Required*

```
 settings = [
        "audioDescriptions" =>  [[
            "audioNormalizationSettings" =>  [
                "algorithm" =>  "ITU_BS_1770_1" or "ITU_BS_1770_2",
                "algorithmControl" =>  "CORRECT_AUDIO" or "MEASURE_ONLY",
                "correctionGateLevel" =>  ::Int,
                "loudnessLogging" =>  "LOG" or "DONT_LOG",
                "peakCalculation" =>  "TRUE_PEAK" or "NONE",
                "targetLkfs" =>  double
            ],
            "audioSourceName" =>  ::String,
            "audioType" =>  ::Int,
            "audioTypeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
            "codecSettings" => <required> [
                "aacSettings" =>  [
                    "audioDescriptionBroadcasterMix" =>  "BROADCASTER_MIXED_AD" or "NORMAL",
                    "bitrate" =>  ::Int,
                    "codecProfile" =>  "LC", "HEV1" or "HEV2",
                    "codingMode" => <required> "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_5_1",
                    "rateControlMode" =>  "CBR" or "VBR",
                    "rawFormat" =>  "LATM_LOAS" or "NONE",
                    "sampleRate" => <required> ::Int,
                    "specification" =>  "MPEG2" or "MPEG4",
                    "vbrQuality" =>  "LOW", "MEDIUM_LOW", "MEDIUM_HIGH" or "HIGH"
                ],
                "ac3Settings" =>  [
                    "bitrate" =>  ::Int,
                    "bitstreamMode" =>  "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED" or "VOICE_OVER",
                    "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_3_2_LFE",
                    "dialnorm" =>  ::Int,
                    "dynamicRangeCompressionProfile" =>  "FILM_STANDARD" or "NONE",
                    "lfeFilter" =>  "ENABLED" or "DISABLED",
                    "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                    "sampleRate" =>  ::Int
                ],
                "aiffSettings" =>  [
                    "bitDepth" =>  ::Int,
                    "channels" =>  ::Int,
                    "sampleRate" =>  ::Int
                ],
                "codec" => <required> "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3" or "PASSTHROUGH",
                "eac3Settings" =>  [
                    "attenuationControl" =>  "ATTENUATE_3_DB" or "NONE",
                    "bitrate" =>  ::Int,
                    "bitstreamMode" =>  "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED" or "VISUALLY_IMPAIRED",
                    "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_2_0" or "CODING_MODE_3_2",
                    "dcFilter" =>  "ENABLED" or "DISABLED",
                    "dialnorm" =>  ::Int,
                    "dynamicRangeCompressionLine" =>  "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT" or "SPEECH",
                    "dynamicRangeCompressionRf" =>  "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT" or "SPEECH",
                    "lfeControl" =>  "LFE" or "NO_LFE",
                    "lfeFilter" =>  "ENABLED" or "DISABLED",
                    "loRoCenterMixLevel" =>  double,
                    "loRoSurroundMixLevel" =>  double,
                    "ltRtCenterMixLevel" =>  double,
                    "ltRtSurroundMixLevel" =>  double,
                    "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                    "passthroughControl" =>  "WHEN_POSSIBLE" or "NO_PASSTHROUGH",
                    "phaseControl" =>  "SHIFT_90_DEGREES" or "NO_SHIFT",
                    "sampleRate" =>  ::Int,
                    "stereoDownmix" =>  "NOT_INDICATED", "LO_RO", "LT_RT" or "DPL2",
                    "surroundExMode" =>  "NOT_INDICATED", "ENABLED" or "DISABLED",
                    "surroundMode" =>  "NOT_INDICATED", "ENABLED" or "DISABLED"
                ],
                "mp2Settings" =>  [
                    "bitrate" =>  ::Int,
                    "channels" =>  ::Int,
                    "sampleRate" =>  ::Int
                ],
                "wavSettings" =>  [
                    "bitDepth" =>  ::Int,
                    "channels" =>  ::Int,
                    "format" =>  "RIFF" or "RF64",
                    "sampleRate" =>  ::Int
                ]
            ],
            "customLanguageCode" =>  ::String,
            "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
            "languageCodeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
            "remixSettings" =>  [
                "channelMapping" => <required> ["outputChannels" => <required> [["inputChannels" => <required> [::Int, ...]], ...]],
                "channelsIn" => <required> ::Int,
                "channelsOut" => <required> ::Int
            ],
            "streamName" =>  ::String
        ], ...],
        "captionDescriptions" =>  [[
            "customLanguageCode" =>  ::String,
            "destinationSettings" => <required> [
                "burninDestinationSettings" =>  [
                    "alignment" => <required> "CENTERED" or "LEFT",
                    "backgroundColor" =>  "NONE", "BLACK" or "WHITE",
                    "backgroundOpacity" =>  ::Int,
                    "fontColor" =>  "WHITE", "BLACK", "YELLOW", "RED", "GREEN" or "BLUE",
                    "fontOpacity" => <required> ::Int,
                    "fontResolution" =>  ::Int,
                    "fontSize" =>  ::Int,
                    "outlineColor" => <required> "BLACK", "WHITE", "YELLOW", "RED", "GREEN" or "BLUE",
                    "outlineSize" => <required> ::Int,
                    "shadowColor" =>  "NONE", "BLACK" or "WHITE",
                    "shadowOpacity" =>  ::Int,
                    "shadowXOffset" =>  ::Int,
                    "shadowYOffset" =>  ::Int,
                    "teletextSpacing" =>  "FIXED_GRID" or "PROPORTIONAL",
                    "xPosition" =>  ::Int,
                    "yPosition" =>  ::Int
                ],
                "destinationType" => <required> "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML" or "WEBVTT",
                "dvbSubDestinationSettings" =>  [
                    "alignment" => <required> "CENTERED" or "LEFT",
                    "backgroundColor" =>  "NONE", "BLACK" or "WHITE",
                    "backgroundOpacity" =>  ::Int,
                    "fontColor" =>  "WHITE", "BLACK", "YELLOW", "RED", "GREEN" or "BLUE",
                    "fontOpacity" => <required> ::Int,
                    "fontResolution" =>  ::Int,
                    "fontSize" =>  ::Int,
                    "outlineColor" => <required> "BLACK", "WHITE", "YELLOW", "RED", "GREEN" or "BLUE",
                    "outlineSize" => <required> ::Int,
                    "shadowColor" =>  "NONE", "BLACK" or "WHITE",
                    "shadowOpacity" =>  ::Int,
                    "shadowXOffset" =>  ::Int,
                    "shadowYOffset" =>  ::Int,
                    "teletextSpacing" =>  "FIXED_GRID" or "PROPORTIONAL",
                    "xPosition" =>  ::Int,
                    "yPosition" =>  ::Int
                ],
                "sccDestinationSettings" =>  ["framerate" =>  "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME" or "FRAMERATE_29_97_NON_DROPFRAME"],
                "teletextDestinationSettings" =>  ["pageNumber" =>  ::String],
                "ttmlDestinationSettings" =>  ["stylePassthrough" =>  "ENABLED" or "DISABLED"]
            ],
            "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
            "languageDescription" =>  ::String
        ], ...],
        "containerSettings" =>  [
            "container" => <required> "F4V", "ISMV", "M2TS", "M3U8", "CMFC", "MOV", "MP4", "MPD", "MXF" or "RAW",
            "f4vSettings" =>  ["moovPlacement" =>  "PROGRESSIVE_DOWNLOAD" or "NORMAL"],
            "m2tsSettings" =>  [
                "audioBufferModel" =>  "DVB" or "ATSC",
                "audioFramesPerPes" =>  ::Int,
                "audioPids" =>  [::Int, ...],
                "bitrate" =>  ::Int,
                "bufferModel" =>  "MULTIPLEX" or "NONE",
                "dvbNitSettings" =>  [
                    "networkId" => <required> ::Int,
                    "networkName" => <required> ::String,
                    "nitInterval" => <required> ::Int
                ],
                "dvbSdtSettings" =>  [
                    "outputSdt" =>  "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL" or "SDT_NONE",
                    "sdtInterval" =>  ::Int,
                    "serviceName" =>  ::String,
                    "serviceProviderName" =>  ::String
                ],
                "dvbSubPids" =>  [::Int, ...],
                "dvbTdtSettings" =>  ["tdtInterval" => <required> ::Int],
                "dvbTeletextPid" =>  ::Int,
                "ebpAudioInterval" =>  "VIDEO_AND_FIXED_INTERVALS" or "VIDEO_INTERVAL",
                "ebpPlacement" =>  "VIDEO_AND_AUDIO_PIDS" or "VIDEO_PID",
                "esRateInPes" =>  "INCLUDE" or "EXCLUDE",
                "fragmentTime" =>  double,
                "maxPcrInterval" =>  ::Int,
                "minEbpInterval" =>  ::Int,
                "nielsenId3" =>  "INSERT" or "NONE",
                "nullPacketBitrate" =>  double,
                "patInterval" =>  ::Int,
                "pcrControl" =>  "PCR_EVERY_PES_PACKET" or "CONFIGURED_PCR_PERIOD",
                "pcrPid" =>  ::Int,
                "pmtInterval" =>  ::Int,
                "pmtPid" =>  ::Int,
                "privateMetadataPid" =>  ::Int,
                "programNumber" =>  ::Int,
                "rateMode" =>  "VBR" or "CBR",
                "scte35Pid" =>  ::Int,
                "scte35Source" =>  "PASSTHROUGH" or "NONE",
                "segmentationMarkers" =>  "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP" or "EBP_LEGACY",
                "segmentationStyle" =>  "MAINTAIN_CADENCE" or "RESET_CADENCE",
                "segmentationTime" =>  double,
                "timedMetadataPid" =>  ::Int,
                "transportStreamId" =>  ::Int,
                "videoPid" =>  ::Int
            ],
            "m3u8Settings" =>  [
                "audioFramesPerPes" =>  ::Int,
                "audioPids" =>  [::Int, ...],
                "nielsenId3" =>  "INSERT" or "NONE",
                "patInterval" =>  ::Int,
                "pcrControl" =>  "PCR_EVERY_PES_PACKET" or "CONFIGURED_PCR_PERIOD",
                "pcrPid" =>  ::Int,
                "pmtInterval" =>  ::Int,
                "pmtPid" =>  ::Int,
                "privateMetadataPid" =>  ::Int,
                "programNumber" =>  ::Int,
                "scte35Pid" =>  ::Int,
                "scte35Source" =>  "PASSTHROUGH" or "NONE",
                "timedMetadata" =>  "PASSTHROUGH" or "NONE",
                "timedMetadataPid" =>  ::Int,
                "transportStreamId" =>  ::Int,
                "videoPid" =>  ::Int
            ],
            "movSettings" =>  [
                "clapAtom" =>  "INCLUDE" or "EXCLUDE",
                "cslgAtom" =>  "INCLUDE" or "EXCLUDE",
                "mpeg2FourCCControl" =>  "XDCAM" or "MPEG",
                "paddingControl" =>  "OMNEON" or "NONE",
                "reference" =>  "SELF_CONTAINED" or "EXTERNAL"
            ],
            "mp4Settings" =>  [
                "cslgAtom" =>  "INCLUDE" or "EXCLUDE",
                "freeSpaceBox" =>  "INCLUDE" or "EXCLUDE",
                "moovPlacement" =>  "PROGRESSIVE_DOWNLOAD" or "NORMAL",
                "mp4MajorBrand" =>  ::String
            ]
        ],
        "videoDescription" =>  [
            "afdSignaling" =>  "NONE", "AUTO" or "FIXED",
            "antiAlias" =>  "DISABLED" or "ENABLED",
            "codecSettings" => <required> [
                "codec" => <required> "FRAME_CAPTURE", "H_264", "H_265", "MPEG2" or "PRORES",
                "frameCaptureSettings" =>  [
                    "framerateDenominator" =>  ::Int,
                    "framerateNumerator" =>  ::Int,
                    "maxCaptures" =>  ::Int,
                    "quality" =>  ::Int
                ],
                "h264Settings" =>  [
                    "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER" or "MAX",
                    "bitrate" =>  ::Int,
                    "codecLevel" =>  "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1" or "LEVEL_5_2",
                    "codecProfile" =>  "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT" or "MAIN",
                    "entropyEncoding" =>  "CABAC" or "CAVLC",
                    "fieldEncoding" =>  "PAFF" or "FORCE_FIELD",
                    "flickerAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                    "framerateDenominator" =>  ::Int,
                    "framerateNumerator" =>  ::Int,
                    "gopBReference" =>  "DISABLED" or "ENABLED",
                    "gopClosedCadence" =>  ::Int,
                    "gopSize" =>  double,
                    "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                    "hrdBufferInitialFillPercentage" =>  ::Int,
                    "hrdBufferSize" =>  ::Int,
                    "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                    "maxBitrate" =>  ::Int,
                    "minIInterval" =>  ::Int,
                    "numberBFramesBetweenReferenceFrames" =>  ::Int,
                    "numberReferenceFrames" =>  ::Int,
                    "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "parDenominator" =>  ::Int,
                    "parNumerator" =>  ::Int,
                    "qualityTuningLevel" =>  "SINGLE_PASS", "SINGLE_PASS_HQ" or "MULTI_PASS_HQ",
                    "rateControlMode" =>  "VBR" or "CBR",
                    "repeatPps" =>  "DISABLED" or "ENABLED",
                    "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                    "slices" =>  ::Int,
                    "slowPal" =>  "DISABLED" or "ENABLED",
                    "softness" =>  ::Int,
                    "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "syntax" =>  "DEFAULT" or "RP2027",
                    "telecine" =>  "NONE", "SOFT" or "HARD",
                    "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "unregisteredSeiTimecode" =>  "DISABLED" or "ENABLED"
                ],
                "h265Settings" =>  [
                    "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER" or "MAX",
                    "alternateTransferFunctionSei" =>  "DISABLED" or "ENABLED",
                    "bitrate" =>  ::Int,
                    "codecLevel" =>  "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1" or "LEVEL_6_2",
                    "codecProfile" =>  "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN" or "MAIN_422_10BIT_HIGH",
                    "flickerAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                    "framerateDenominator" =>  ::Int,
                    "framerateNumerator" =>  ::Int,
                    "gopBReference" =>  "DISABLED" or "ENABLED",
                    "gopClosedCadence" =>  ::Int,
                    "gopSize" =>  double,
                    "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                    "hrdBufferInitialFillPercentage" =>  ::Int,
                    "hrdBufferSize" =>  ::Int,
                    "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                    "maxBitrate" =>  ::Int,
                    "minIInterval" =>  ::Int,
                    "numberBFramesBetweenReferenceFrames" =>  ::Int,
                    "numberReferenceFrames" =>  ::Int,
                    "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "parDenominator" =>  ::Int,
                    "parNumerator" =>  ::Int,
                    "qualityTuningLevel" =>  "SINGLE_PASS", "SINGLE_PASS_HQ" or "MULTI_PASS_HQ",
                    "rateControlMode" =>  "VBR" or "CBR",
                    "sampleAdaptiveOffsetFilterMode" =>  "DEFAULT", "ADAPTIVE" or "OFF",
                    "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                    "slices" =>  ::Int,
                    "slowPal" =>  "DISABLED" or "ENABLED",
                    "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "telecine" =>  "NONE", "SOFT" or "HARD",
                    "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "temporalIds" =>  "DISABLED" or "ENABLED",
                    "tiles" =>  "DISABLED" or "ENABLED",
                    "unregisteredSeiTimecode" =>  "DISABLED" or "ENABLED",
                    "writeMp4PackagingType" =>  "HVC1" or "HEV1"
                ],
                "mpeg2Settings" =>  [
                    "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM" or "HIGH",
                    "bitrate" =>  ::Int,
                    "codecLevel" =>  "AUTO", "LOW", "MAIN", "HIGH1440" or "HIGH",
                    "codecProfile" =>  "MAIN" or "PROFILE_422",
                    "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                    "framerateDenominator" =>  ::Int,
                    "framerateNumerator" =>  ::Int,
                    "gopClosedCadence" =>  ::Int,
                    "gopSize" =>  double,
                    "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                    "hrdBufferInitialFillPercentage" =>  ::Int,
                    "hrdBufferSize" =>  ::Int,
                    "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                    "intraDcPrecision" =>  "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10" or "INTRA_DC_PRECISION_11",
                    "maxBitrate" =>  ::Int,
                    "minIInterval" =>  ::Int,
                    "numberBFramesBetweenReferenceFrames" =>  ::Int,
                    "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "parDenominator" =>  ::Int,
                    "parNumerator" =>  ::Int,
                    "qualityTuningLevel" =>  "SINGLE_PASS" or "MULTI_PASS",
                    "rateControlMode" =>  "VBR" or "CBR",
                    "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                    "slowPal" =>  "DISABLED" or "ENABLED",
                    "softness" =>  ::Int,
                    "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "syntax" =>  "DEFAULT" or "D_10",
                    "telecine" =>  "NONE", "SOFT" or "HARD",
                    "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED"
                ],
                "proresSettings" =>  [
                    "codecProfile" =>  "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT" or "APPLE_PRORES_422_PROXY",
                    "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                    "framerateDenominator" =>  ::Int,
                    "framerateNumerator" =>  ::Int,
                    "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                    "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "parDenominator" =>  ::Int,
                    "parNumerator" =>  ::Int,
                    "slowPal" =>  "DISABLED" or "ENABLED",
                    "telecine" =>  "NONE" or "HARD"
                ]
            ],
            "colorMetadata" =>  "IGNORE" or "INSERT",
            "crop" =>  [
                "height" => <required> ::Int,
                "width" => <required> ::Int,
                "x" => <required> ::Int,
                "y" => <required> ::Int
            ],
            "dropFrameTimecode" =>  "DISABLED" or "ENABLED",
            "fixedAfd" =>  ::Int,
            "height" =>  ::Int,
            "position" =>  [
                "height" => <required> ::Int,
                "width" => <required> ::Int,
                "x" => <required> ::Int,
                "y" => <required> ::Int
            ],
            "respondToAfd" =>  "NONE", "RESPOND" or "PASSTHROUGH",
            "scalingBehavior" =>  "DEFAULT" or "STRETCH_TO_OUTPUT",
            "sharpness" =>  ::Int,
            "timecodeInsertion" =>  "DISABLED" or "PIC_TIMING_SEI",
            "videoPreprocessors" =>  [
                "colorCorrector" =>  [
                    "brightness" =>  ::Int,
                    "colorSpaceConversion" =>  "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10" or "FORCE_HLG_2020",
                    "contrast" =>  ::Int,
                    "hdr10Metadata" =>  [
                        "bluePrimaryX" =>  ::Int,
                        "bluePrimaryY" =>  ::Int,
                        "greenPrimaryX" =>  ::Int,
                        "greenPrimaryY" =>  ::Int,
                        "maxContentLightLevel" => <required> ::Int,
                        "maxFrameAverageLightLevel" => <required> ::Int,
                        "maxLuminance" =>  ::Int,
                        "minLuminance" =>  ::Int,
                        "redPrimaryX" =>  ::Int,
                        "redPrimaryY" =>  ::Int,
                        "whitePointX" =>  ::Int,
                        "whitePointY" =>  ::Int
                    ],
                    "hue" =>  ::Int,
                    "saturation" =>  ::Int
                ],
                "deinterlacer" =>  [
                    "algorithm" =>  "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND" or "BLEND_TICKER",
                    "control" =>  "FORCE_ALL_FRAMES" or "NORMAL",
                    "mode" =>  "DEINTERLACE", "INVERSE_TELECINE" or "ADAPTIVE"
                ],
                "imageInserter" =>  ["insertableImages" => <required> [[
                        "duration" =>  ::Int,
                        "fadeIn" =>  ::Int,
                        "fadeOut" =>  ::Int,
                        "height" =>  ::Int,
                        "imageInserterInput" => <required> ::String,
                        "imageX" => <required> ::Int,
                        "imageY" => <required> ::Int,
                        "layer" => <required> ::Int,
                        "opacity" => <required> ::Int,
                        "startTime" =>  ::String,
                        "width" =>  ::Int
                    ], ...]],
                "noiseReducer" =>  [
                    "filter" => <required> "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE" or "SPATIAL",
                    "filterSettings" =>  ["strength" =>  ::Int],
                    "spatialFilterSettings" =>  [
                        "postFilterSharpenStrength" =>  ::Int,
                        "speed" =>  ::Int,
                        "strength" =>  ::Int
                    ]
                ],
                "timecodeBurnin" =>  [
                    "fontSize" =>  ::Int,
                    "position" =>  "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER" or "BOTTOM_RIGHT",
                    "prefix" =>  ::String
                ]
            ],
            "width" =>  ::Int
        ]
    ]
```

## `tags = ::Dict{String,String}`
The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.




# Returns

`CreatePresetResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreatePreset)
"""
@inline create_preset(aws::AWSConfig=default_aws_config(); args...) = create_preset(aws, args)

@inline create_preset(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "POST", "/2017-08-29/presets", args)

@inline create_preset(args) = create_preset(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.create_queue
    create_queue([::AWSConfig], arguments::Dict)
    create_queue([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "POST", "/2017-08-29/queues", arguments::Dict)
    mediaconvert([::AWSConfig], "POST", "/2017-08-29/queues", name=, <keyword arguments>)

# CreateQueue Operation

Create a new transcoding queue. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

# Arguments

## `description = ::String`
Optional. A description of the queue you are creating.


## `name = ::String` -- *Required*
The name of the queue you are creating.


## `tags = ::Dict{String,String}`
The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.




# Returns

`CreateQueueResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateQueue)
"""
@inline create_queue(aws::AWSConfig=default_aws_config(); args...) = create_queue(aws, args)

@inline create_queue(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "POST", "/2017-08-29/queues", args)

@inline create_queue(args) = create_queue(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.delete_job_template
    delete_job_template([::AWSConfig], arguments::Dict)
    delete_job_template([::AWSConfig]; name=)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "DELETE", "/2017-08-29/jobTemplates/{name}", arguments::Dict)
    mediaconvert([::AWSConfig], "DELETE", "/2017-08-29/jobTemplates/{name}", name=)

# DeleteJobTemplate Operation

Permanently delete a job template you have created.

# Arguments

## `name = ::String` -- *Required*
The name of the job template to be deleted.




# Returns

`DeleteJobTemplateResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeleteJobTemplate)
"""
@inline delete_job_template(aws::AWSConfig=default_aws_config(); args...) = delete_job_template(aws, args)

@inline delete_job_template(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "DELETE", "/2017-08-29/jobTemplates/{name}", args)

@inline delete_job_template(args) = delete_job_template(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.delete_preset
    delete_preset([::AWSConfig], arguments::Dict)
    delete_preset([::AWSConfig]; name=)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "DELETE", "/2017-08-29/presets/{name}", arguments::Dict)
    mediaconvert([::AWSConfig], "DELETE", "/2017-08-29/presets/{name}", name=)

# DeletePreset Operation

Permanently delete a preset you have created.

# Arguments

## `name = ::String` -- *Required*
The name of the preset to be deleted.




# Returns

`DeletePresetResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeletePreset)
"""
@inline delete_preset(aws::AWSConfig=default_aws_config(); args...) = delete_preset(aws, args)

@inline delete_preset(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "DELETE", "/2017-08-29/presets/{name}", args)

@inline delete_preset(args) = delete_preset(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.delete_queue
    delete_queue([::AWSConfig], arguments::Dict)
    delete_queue([::AWSConfig]; name=)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "DELETE", "/2017-08-29/queues/{name}", arguments::Dict)
    mediaconvert([::AWSConfig], "DELETE", "/2017-08-29/queues/{name}", name=)

# DeleteQueue Operation

Permanently delete a queue you have created.

# Arguments

## `name = ::String` -- *Required*
The name of the queue to be deleted.




# Returns

`DeleteQueueResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeleteQueue)
"""
@inline delete_queue(aws::AWSConfig=default_aws_config(); args...) = delete_queue(aws, args)

@inline delete_queue(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "DELETE", "/2017-08-29/queues/{name}", args)

@inline delete_queue(args) = delete_queue(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.describe_endpoints
    describe_endpoints([::AWSConfig], arguments::Dict)
    describe_endpoints([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "POST", "/2017-08-29/endpoints", arguments::Dict)
    mediaconvert([::AWSConfig], "POST", "/2017-08-29/endpoints", <keyword arguments>)

# DescribeEndpoints Operation

Send an request with an empty body to the regional API endpoint to get your account API endpoint.

# Arguments

## `maxResults = ::Int`
Optional. Max number of endpoints, up to twenty, that will be returned at one time.


## `nextToken = ::String`
Use this string, provided with the response to a previous request, to request the next batch of endpoints.




# Returns

`DescribeEndpointsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DescribeEndpoints)
"""
@inline describe_endpoints(aws::AWSConfig=default_aws_config(); args...) = describe_endpoints(aws, args)

@inline describe_endpoints(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "POST", "/2017-08-29/endpoints", args)

@inline describe_endpoints(args) = describe_endpoints(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.get_job
    get_job([::AWSConfig], arguments::Dict)
    get_job([::AWSConfig]; id=)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/jobs/{id}", arguments::Dict)
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/jobs/{id}", id=)

# GetJob Operation

Retrieve the JSON for a specific completed transcoding job.

# Arguments

## `id = ::String` -- *Required*
the job ID of the job.




# Returns

`GetJobResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetJob)
"""
@inline get_job(aws::AWSConfig=default_aws_config(); args...) = get_job(aws, args)

@inline get_job(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "GET", "/2017-08-29/jobs/{id}", args)

@inline get_job(args) = get_job(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.get_job_template
    get_job_template([::AWSConfig], arguments::Dict)
    get_job_template([::AWSConfig]; name=)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/jobTemplates/{name}", arguments::Dict)
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/jobTemplates/{name}", name=)

# GetJobTemplate Operation

Retrieve the JSON for a specific job template.

# Arguments

## `name = ::String` -- *Required*
The name of the job template.




# Returns

`GetJobTemplateResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetJobTemplate)
"""
@inline get_job_template(aws::AWSConfig=default_aws_config(); args...) = get_job_template(aws, args)

@inline get_job_template(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "GET", "/2017-08-29/jobTemplates/{name}", args)

@inline get_job_template(args) = get_job_template(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.get_preset
    get_preset([::AWSConfig], arguments::Dict)
    get_preset([::AWSConfig]; name=)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/presets/{name}", arguments::Dict)
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/presets/{name}", name=)

# GetPreset Operation

Retrieve the JSON for a specific preset.

# Arguments

## `name = ::String` -- *Required*
The name of the preset.




# Returns

`GetPresetResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetPreset)
"""
@inline get_preset(aws::AWSConfig=default_aws_config(); args...) = get_preset(aws, args)

@inline get_preset(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "GET", "/2017-08-29/presets/{name}", args)

@inline get_preset(args) = get_preset(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.get_queue
    get_queue([::AWSConfig], arguments::Dict)
    get_queue([::AWSConfig]; name=)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/queues/{name}", arguments::Dict)
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/queues/{name}", name=)

# GetQueue Operation

Retrieve the JSON for a specific queue.

# Arguments

## `name = ::String` -- *Required*
The name of the queue.




# Returns

`GetQueueResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetQueue)
"""
@inline get_queue(aws::AWSConfig=default_aws_config(); args...) = get_queue(aws, args)

@inline get_queue(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "GET", "/2017-08-29/queues/{name}", args)

@inline get_queue(args) = get_queue(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.list_job_templates
    list_job_templates([::AWSConfig], arguments::Dict)
    list_job_templates([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/jobTemplates", arguments::Dict)
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/jobTemplates", <keyword arguments>)

# ListJobTemplates Operation

Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array

# Arguments

## `category = ::String`
Optionally, specify a job template category to limit responses to only job templates from that category.


## `listBy = "NAME", "CREATION_DATE" or "SYSTEM"`



## `maxResults = ::Int`
Optional. Number of job templates, up to twenty, that will be returned at one time.


## `nextToken = ::String`
Use this string, provided with the response to a previous request, to request the next batch of job templates.


## `order = "ASCENDING" or "DESCENDING"`





# Returns

`ListJobTemplatesResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListJobTemplates)
"""
@inline list_job_templates(aws::AWSConfig=default_aws_config(); args...) = list_job_templates(aws, args)

@inline list_job_templates(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "GET", "/2017-08-29/jobTemplates", args)

@inline list_job_templates(args) = list_job_templates(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.list_jobs
    list_jobs([::AWSConfig], arguments::Dict)
    list_jobs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/jobs", arguments::Dict)
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/jobs", <keyword arguments>)

# ListJobs Operation

Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.

# Arguments

## `maxResults = ::Int`
Optional. Number of jobs, up to twenty, that will be returned at one time.


## `nextToken = ::String`
Use this string, provided with the response to a previous request, to request the next batch of jobs.


## `order = "ASCENDING" or "DESCENDING"`



## `queue = ::String`
Provide a queue name to get back only jobs from that queue.


## `status = "SUBMITTED", "PROGRESSING", "COMPLETE", "CANCELED" or "ERROR"`





# Returns

`ListJobsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListJobs)
"""
@inline list_jobs(aws::AWSConfig=default_aws_config(); args...) = list_jobs(aws, args)

@inline list_jobs(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "GET", "/2017-08-29/jobs", args)

@inline list_jobs(args) = list_jobs(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.list_presets
    list_presets([::AWSConfig], arguments::Dict)
    list_presets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/presets", arguments::Dict)
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/presets", <keyword arguments>)

# ListPresets Operation

Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.

# Arguments

## `category = ::String`
Optionally, specify a preset category to limit responses to only presets from that category.


## `listBy = "NAME", "CREATION_DATE" or "SYSTEM"`



## `maxResults = ::Int`
Optional. Number of presets, up to twenty, that will be returned at one time


## `nextToken = ::String`
Use this string, provided with the response to a previous request, to request the next batch of presets.


## `order = "ASCENDING" or "DESCENDING"`





# Returns

`ListPresetsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListPresets)
"""
@inline list_presets(aws::AWSConfig=default_aws_config(); args...) = list_presets(aws, args)

@inline list_presets(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "GET", "/2017-08-29/presets", args)

@inline list_presets(args) = list_presets(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.list_queues
    list_queues([::AWSConfig], arguments::Dict)
    list_queues([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/queues", arguments::Dict)
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/queues", <keyword arguments>)

# ListQueues Operation

Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.

# Arguments

## `listBy = "NAME" or "CREATION_DATE"`



## `maxResults = ::Int`
Optional. Number of queues, up to twenty, that will be returned at one time.


## `nextToken = ::String`
Use this string, provided with the response to a previous request, to request the next batch of queues.


## `order = "ASCENDING" or "DESCENDING"`





# Returns

`ListQueuesResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListQueues)
"""
@inline list_queues(aws::AWSConfig=default_aws_config(); args...) = list_queues(aws, args)

@inline list_queues(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "GET", "/2017-08-29/queues", args)

@inline list_queues(args) = list_queues(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; arn=)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/tags/{arn}", arguments::Dict)
    mediaconvert([::AWSConfig], "GET", "/2017-08-29/tags/{arn}", arn=)

# ListTagsForResource Operation

Retrieve the tags for a MediaConvert resource.

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource that you want to list tags for. To get the ARN, send a GET request with the resource name.




# Returns

`ListTagsForResourceResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "GET", "/2017-08-29/tags/{arn}", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; arn=, tags=)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "POST", "/2017-08-29/tags", arguments::Dict)
    mediaconvert([::AWSConfig], "POST", "/2017-08-29/tags", arn=, tags=)

# TagResource Operation

Tag a MediaConvert queue, preset, or job template. For information about these resource types, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

# Arguments

## `arn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource that you want to tag. To get the ARN, send a GET request with the resource name.


## `tags = ::Dict{String,String}` -- *Required*
The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.




# Returns

`TagResourceResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "POST", "/2017-08-29/tags", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "DELETE", "/2017-08-29/tags", arguments::Dict)
    mediaconvert([::AWSConfig], "DELETE", "/2017-08-29/tags", <keyword arguments>)

# UntagResource Operation

Untag a MediaConvert queue, preset, or job template. For information about these resource types, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

# Arguments

## `arn = ::String`
The Amazon Resource Name (ARN) of the resource that you want to remove tags from. To get the ARN, send a GET request with the resource name.


## `tagKeys = [::String, ...]`
The keys of the tags that you want to remove from the resource.




# Returns

`UntagResourceResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "DELETE", "/2017-08-29/tags", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.update_job_template
    update_job_template([::AWSConfig], arguments::Dict)
    update_job_template([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "PUT", "/2017-08-29/jobTemplates/{name}", arguments::Dict)
    mediaconvert([::AWSConfig], "PUT", "/2017-08-29/jobTemplates/{name}", name=, <keyword arguments>)

# UpdateJobTemplate Operation

Modify one of your existing job templates.

# Arguments

## `category = ::String`
The new category for the job template, if you are changing it.


## `description = ::String`
The new description for the job template, if you are changing it.


## `name = ::String` -- *Required*
The name of the job template you are modifying


## `queue = ::String`
The new queue for the job template, if you are changing it.


## `settings = [ ... ]`

```
 settings = [
        "adAvailOffset" =>  ::Int,
        "availBlanking" =>  ["availBlankingImage" =>  ::String],
        "inputs" =>  [[
            "audioSelectorGroups" =>  ::Dict{String,String},
            "audioSelectors" =>  ::Dict{String,String},
            "captionSelectors" =>  ::Dict{String,String},
            "deblockFilter" =>  "ENABLED" or "DISABLED",
            "denoiseFilter" =>  "ENABLED" or "DISABLED",
            "filterEnable" =>  "AUTO", "DISABLE" or "FORCE",
            "filterStrength" =>  ::Int,
            "inputClippings" =>  [[
                "endTimecode" =>  ::String,
                "startTimecode" =>  ::String
            ], ...],
            "programNumber" =>  ::Int,
            "psiControl" =>  "IGNORE_PSI" or "USE_PSI",
            "timecodeSource" =>  "EMBEDDED", "ZEROBASED" or "SPECIFIEDSTART",
            "videoSelector" =>  [
                "colorSpace" =>  "FOLLOW", "REC_601", "REC_709", "HDR10" or "HLG_2020",
                "colorSpaceUsage" =>  "FORCE" or "FALLBACK",
                "hdr10Metadata" =>  [
                    "bluePrimaryX" =>  ::Int,
                    "bluePrimaryY" =>  ::Int,
                    "greenPrimaryX" =>  ::Int,
                    "greenPrimaryY" =>  ::Int,
                    "maxContentLightLevel" => <required> ::Int,
                    "maxFrameAverageLightLevel" => <required> ::Int,
                    "maxLuminance" =>  ::Int,
                    "minLuminance" =>  ::Int,
                    "redPrimaryX" =>  ::Int,
                    "redPrimaryY" =>  ::Int,
                    "whitePointX" =>  ::Int,
                    "whitePointY" =>  ::Int
                ],
                "pid" =>  ::Int,
                "programNumber" =>  ::Int
            ]
        ], ...],
        "nielsenConfiguration" =>  [
            "breakoutCode" =>  ::Int,
            "distributorId" =>  ::String
        ],
        "outputGroups" => <required> [[
            "customName" =>  ::String,
            "name" =>  ::String,
            "outputGroupSettings" => <required> [
                "cmafGroupSettings" =>  [
                    "baseUrl" =>  ::String,
                    "clientCache" =>  "DISABLED" or "ENABLED",
                    "codecSpecification" =>  "RFC_6381" or "RFC_4281",
                    "destination" =>  ::String,
                    "encryption" =>  [
                        "constantInitializationVector" =>  ::String,
                        "encryptionMethod" =>  "SAMPLE_AES",
                        "initializationVectorInManifest" =>  "INCLUDE" or "EXCLUDE",
                        "staticKeyProvider" =>  [
                            "keyFormat" =>  ::String,
                            "keyFormatVersions" =>  ::String,
                            "staticKeyValue" => <required> ::String,
                            "url" => <required> ::String
                        ],
                        "type" => <required> "STATIC_KEY"
                    ],
                    "fragmentLength" => <required> ::Int,
                    "manifestCompression" =>  "GZIP" or "NONE",
                    "manifestDurationFormat" =>  "FLOATING_POINT" or "INTEGER",
                    "minBufferTime" =>  ::Int,
                    "segmentControl" =>  "SINGLE_FILE" or "SEGMENTED_FILES",
                    "segmentLength" => <required> ::Int,
                    "streamInfResolution" =>  "INCLUDE" or "EXCLUDE",
                    "writeDashManifest" =>  "DISABLED" or "ENABLED",
                    "writeHlsManifest" =>  "DISABLED" or "ENABLED"
                ],
                "dashIsoGroupSettings" =>  [
                    "baseUrl" =>  ::String,
                    "destination" =>  ::String,
                    "encryption" =>  ["spekeKeyProvider" => <required> [
                            "resourceId" => <required> ::String,
                            "systemIds" => <required> [::String, ...],
                            "url" => <required> ::String
                        ]],
                    "fragmentLength" => <required> ::Int,
                    "hbbtvCompliance" =>  "HBBTV_1_5" or "NONE",
                    "minBufferTime" =>  ::Int,
                    "segmentControl" =>  "SINGLE_FILE" or "SEGMENTED_FILES",
                    "segmentLength" => <required> ::Int
                ],
                "fileGroupSettings" =>  ["destination" =>  ::String],
                "hlsGroupSettings" =>  [
                    "adMarkers" =>  ["ELEMENTAL" or "ELEMENTAL_SCTE35", ...],
                    "baseUrl" =>  ::String,
                    "captionLanguageMappings" =>  [[
                        "captionChannel" =>  ::Int,
                        "customLanguageCode" =>  ::String,
                        "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
                        "languageDescription" =>  ::String
                    ], ...],
                    "captionLanguageSetting" =>  "INSERT", "OMIT" or "NONE",
                    "clientCache" =>  "DISABLED" or "ENABLED",
                    "codecSpecification" =>  "RFC_6381" or "RFC_4281",
                    "destination" =>  ::String,
                    "directoryStructure" =>  "SINGLE_DIRECTORY" or "SUBDIRECTORY_PER_STREAM",
                    "encryption" =>  [
                        "constantInitializationVector" =>  ::String,
                        "encryptionMethod" =>  "AES128" or "SAMPLE_AES",
                        "initializationVectorInManifest" =>  "INCLUDE" or "EXCLUDE",
                        "spekeKeyProvider" =>  [
                            "resourceId" => <required> ::String,
                            "systemIds" => <required> [::String, ...],
                            "url" => <required> ::String
                        ],
                        "staticKeyProvider" =>  [
                            "keyFormat" =>  ::String,
                            "keyFormatVersions" =>  ::String,
                            "staticKeyValue" => <required> ::String,
                            "url" => <required> ::String
                        ],
                        "type" => <required> "SPEKE" or "STATIC_KEY"
                    ],
                    "manifestCompression" =>  "GZIP" or "NONE",
                    "manifestDurationFormat" =>  "FLOATING_POINT" or "INTEGER",
                    "minSegmentLength" => <required> ::Int,
                    "outputSelection" =>  "MANIFESTS_AND_SEGMENTS" or "SEGMENTS_ONLY",
                    "programDateTime" =>  "INCLUDE" or "EXCLUDE",
                    "programDateTimePeriod" =>  ::Int,
                    "segmentControl" =>  "SINGLE_FILE" or "SEGMENTED_FILES",
                    "segmentLength" => <required> ::Int,
                    "segmentsPerSubdirectory" =>  ::Int,
                    "streamInfResolution" =>  "INCLUDE" or "EXCLUDE",
                    "timedMetadataId3Frame" =>  "NONE", "PRIV" or "TDRL",
                    "timedMetadataId3Period" =>  ::Int,
                    "timestampDeltaMilliseconds" =>  ::Int
                ],
                "msSmoothGroupSettings" =>  [
                    "audioDeduplication" =>  "COMBINE_DUPLICATE_STREAMS" or "NONE",
                    "destination" =>  ::String,
                    "encryption" =>  ["spekeKeyProvider" => <required> [
                            "resourceId" => <required> ::String,
                            "systemIds" => <required> [::String, ...],
                            "url" => <required> ::String
                        ]],
                    "fragmentLength" => <required> ::Int,
                    "manifestEncoding" =>  "UTF8" or "UTF16"
                ],
                "type" => <required> "HLS_GROUP_SETTINGS", "DASH_ISO_GROUP_SETTINGS", "FILE_GROUP_SETTINGS", "MS_SMOOTH_GROUP_SETTINGS" or "CMAF_GROUP_SETTINGS"
            ],
            "outputs" => <required> [[
                "audioDescriptions" =>  [[
                    "audioNormalizationSettings" =>  [
                        "algorithm" =>  "ITU_BS_1770_1" or "ITU_BS_1770_2",
                        "algorithmControl" =>  "CORRECT_AUDIO" or "MEASURE_ONLY",
                        "correctionGateLevel" =>  ::Int,
                        "loudnessLogging" =>  "LOG" or "DONT_LOG",
                        "peakCalculation" =>  "TRUE_PEAK" or "NONE",
                        "targetLkfs" =>  double
                    ],
                    "audioSourceName" =>  ::String,
                    "audioType" =>  ::Int,
                    "audioTypeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                    "codecSettings" => <required> [
                        "aacSettings" =>  [
                            "audioDescriptionBroadcasterMix" =>  "BROADCASTER_MIXED_AD" or "NORMAL",
                            "bitrate" =>  ::Int,
                            "codecProfile" =>  "LC", "HEV1" or "HEV2",
                            "codingMode" => <required> "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_5_1",
                            "rateControlMode" =>  "CBR" or "VBR",
                            "rawFormat" =>  "LATM_LOAS" or "NONE",
                            "sampleRate" => <required> ::Int,
                            "specification" =>  "MPEG2" or "MPEG4",
                            "vbrQuality" =>  "LOW", "MEDIUM_LOW", "MEDIUM_HIGH" or "HIGH"
                        ],
                        "ac3Settings" =>  [
                            "bitrate" =>  ::Int,
                            "bitstreamMode" =>  "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED" or "VOICE_OVER",
                            "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_3_2_LFE",
                            "dialnorm" =>  ::Int,
                            "dynamicRangeCompressionProfile" =>  "FILM_STANDARD" or "NONE",
                            "lfeFilter" =>  "ENABLED" or "DISABLED",
                            "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                            "sampleRate" =>  ::Int
                        ],
                        "aiffSettings" =>  [
                            "bitDepth" =>  ::Int,
                            "channels" =>  ::Int,
                            "sampleRate" =>  ::Int
                        ],
                        "codec" => <required> "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3" or "PASSTHROUGH",
                        "eac3Settings" =>  [
                            "attenuationControl" =>  "ATTENUATE_3_DB" or "NONE",
                            "bitrate" =>  ::Int,
                            "bitstreamMode" =>  "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED" or "VISUALLY_IMPAIRED",
                            "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_2_0" or "CODING_MODE_3_2",
                            "dcFilter" =>  "ENABLED" or "DISABLED",
                            "dialnorm" =>  ::Int,
                            "dynamicRangeCompressionLine" =>  "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT" or "SPEECH",
                            "dynamicRangeCompressionRf" =>  "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT" or "SPEECH",
                            "lfeControl" =>  "LFE" or "NO_LFE",
                            "lfeFilter" =>  "ENABLED" or "DISABLED",
                            "loRoCenterMixLevel" =>  double,
                            "loRoSurroundMixLevel" =>  double,
                            "ltRtCenterMixLevel" =>  double,
                            "ltRtSurroundMixLevel" =>  double,
                            "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                            "passthroughControl" =>  "WHEN_POSSIBLE" or "NO_PASSTHROUGH",
                            "phaseControl" =>  "SHIFT_90_DEGREES" or "NO_SHIFT",
                            "sampleRate" =>  ::Int,
                            "stereoDownmix" =>  "NOT_INDICATED", "LO_RO", "LT_RT" or "DPL2",
                            "surroundExMode" =>  "NOT_INDICATED", "ENABLED" or "DISABLED",
                            "surroundMode" =>  "NOT_INDICATED", "ENABLED" or "DISABLED"
                        ],
                        "mp2Settings" =>  [
                            "bitrate" =>  ::Int,
                            "channels" =>  ::Int,
                            "sampleRate" =>  ::Int
                        ],
                        "wavSettings" =>  [
                            "bitDepth" =>  ::Int,
                            "channels" =>  ::Int,
                            "format" =>  "RIFF" or "RF64",
                            "sampleRate" =>  ::Int
                        ]
                    ],
                    "customLanguageCode" =>  ::String,
                    "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
                    "languageCodeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                    "remixSettings" =>  [
                        "channelMapping" => <required> ["outputChannels" => <required> [["inputChannels" => <required> [::Int, ...]], ...]],
                        "channelsIn" => <required> ::Int,
                        "channelsOut" => <required> ::Int
                    ],
                    "streamName" =>  ::String
                ], ...],
                "captionDescriptions" =>  [[
                    "captionSelectorName" => <required> ::String,
                    "customLanguageCode" =>  ::String,
                    "destinationSettings" => <required> [
                        "burninDestinationSettings" =>  [
                            "alignment" => <required> "CENTERED" or "LEFT",
                            "backgroundColor" =>  "NONE", "BLACK" or "WHITE",
                            "backgroundOpacity" =>  ::Int,
                            "fontColor" =>  "WHITE", "BLACK", "YELLOW", "RED", "GREEN" or "BLUE",
                            "fontOpacity" => <required> ::Int,
                            "fontResolution" =>  ::Int,
                            "fontSize" =>  ::Int,
                            "outlineColor" => <required> "BLACK", "WHITE", "YELLOW", "RED", "GREEN" or "BLUE",
                            "outlineSize" => <required> ::Int,
                            "shadowColor" =>  "NONE", "BLACK" or "WHITE",
                            "shadowOpacity" =>  ::Int,
                            "shadowXOffset" =>  ::Int,
                            "shadowYOffset" =>  ::Int,
                            "teletextSpacing" =>  "FIXED_GRID" or "PROPORTIONAL",
                            "xPosition" =>  ::Int,
                            "yPosition" =>  ::Int
                        ],
                        "destinationType" => <required> "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML" or "WEBVTT",
                        "dvbSubDestinationSettings" =>  [
                            "alignment" => <required> "CENTERED" or "LEFT",
                            "backgroundColor" =>  "NONE", "BLACK" or "WHITE",
                            "backgroundOpacity" =>  ::Int,
                            "fontColor" =>  "WHITE", "BLACK", "YELLOW", "RED", "GREEN" or "BLUE",
                            "fontOpacity" => <required> ::Int,
                            "fontResolution" =>  ::Int,
                            "fontSize" =>  ::Int,
                            "outlineColor" => <required> "BLACK", "WHITE", "YELLOW", "RED", "GREEN" or "BLUE",
                            "outlineSize" => <required> ::Int,
                            "shadowColor" =>  "NONE", "BLACK" or "WHITE",
                            "shadowOpacity" =>  ::Int,
                            "shadowXOffset" =>  ::Int,
                            "shadowYOffset" =>  ::Int,
                            "teletextSpacing" =>  "FIXED_GRID" or "PROPORTIONAL",
                            "xPosition" =>  ::Int,
                            "yPosition" =>  ::Int
                        ],
                        "sccDestinationSettings" =>  ["framerate" =>  "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME" or "FRAMERATE_29_97_NON_DROPFRAME"],
                        "teletextDestinationSettings" =>  ["pageNumber" =>  ::String],
                        "ttmlDestinationSettings" =>  ["stylePassthrough" =>  "ENABLED" or "DISABLED"]
                    ],
                    "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
                    "languageDescription" =>  ::String
                ], ...],
                "containerSettings" =>  [
                    "container" => <required> "F4V", "ISMV", "M2TS", "M3U8", "CMFC", "MOV", "MP4", "MPD", "MXF" or "RAW",
                    "f4vSettings" =>  ["moovPlacement" =>  "PROGRESSIVE_DOWNLOAD" or "NORMAL"],
                    "m2tsSettings" =>  [
                        "audioBufferModel" =>  "DVB" or "ATSC",
                        "audioFramesPerPes" =>  ::Int,
                        "audioPids" =>  [::Int, ...],
                        "bitrate" =>  ::Int,
                        "bufferModel" =>  "MULTIPLEX" or "NONE",
                        "dvbNitSettings" =>  [
                            "networkId" => <required> ::Int,
                            "networkName" => <required> ::String,
                            "nitInterval" => <required> ::Int
                        ],
                        "dvbSdtSettings" =>  [
                            "outputSdt" =>  "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL" or "SDT_NONE",
                            "sdtInterval" =>  ::Int,
                            "serviceName" =>  ::String,
                            "serviceProviderName" =>  ::String
                        ],
                        "dvbSubPids" =>  [::Int, ...],
                        "dvbTdtSettings" =>  ["tdtInterval" => <required> ::Int],
                        "dvbTeletextPid" =>  ::Int,
                        "ebpAudioInterval" =>  "VIDEO_AND_FIXED_INTERVALS" or "VIDEO_INTERVAL",
                        "ebpPlacement" =>  "VIDEO_AND_AUDIO_PIDS" or "VIDEO_PID",
                        "esRateInPes" =>  "INCLUDE" or "EXCLUDE",
                        "fragmentTime" =>  double,
                        "maxPcrInterval" =>  ::Int,
                        "minEbpInterval" =>  ::Int,
                        "nielsenId3" =>  "INSERT" or "NONE",
                        "nullPacketBitrate" =>  double,
                        "patInterval" =>  ::Int,
                        "pcrControl" =>  "PCR_EVERY_PES_PACKET" or "CONFIGURED_PCR_PERIOD",
                        "pcrPid" =>  ::Int,
                        "pmtInterval" =>  ::Int,
                        "pmtPid" =>  ::Int,
                        "privateMetadataPid" =>  ::Int,
                        "programNumber" =>  ::Int,
                        "rateMode" =>  "VBR" or "CBR",
                        "scte35Pid" =>  ::Int,
                        "scte35Source" =>  "PASSTHROUGH" or "NONE",
                        "segmentationMarkers" =>  "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP" or "EBP_LEGACY",
                        "segmentationStyle" =>  "MAINTAIN_CADENCE" or "RESET_CADENCE",
                        "segmentationTime" =>  double,
                        "timedMetadataPid" =>  ::Int,
                        "transportStreamId" =>  ::Int,
                        "videoPid" =>  ::Int
                    ],
                    "m3u8Settings" =>  [
                        "audioFramesPerPes" =>  ::Int,
                        "audioPids" =>  [::Int, ...],
                        "nielsenId3" =>  "INSERT" or "NONE",
                        "patInterval" =>  ::Int,
                        "pcrControl" =>  "PCR_EVERY_PES_PACKET" or "CONFIGURED_PCR_PERIOD",
                        "pcrPid" =>  ::Int,
                        "pmtInterval" =>  ::Int,
                        "pmtPid" =>  ::Int,
                        "privateMetadataPid" =>  ::Int,
                        "programNumber" =>  ::Int,
                        "scte35Pid" =>  ::Int,
                        "scte35Source" =>  "PASSTHROUGH" or "NONE",
                        "timedMetadata" =>  "PASSTHROUGH" or "NONE",
                        "timedMetadataPid" =>  ::Int,
                        "transportStreamId" =>  ::Int,
                        "videoPid" =>  ::Int
                    ],
                    "movSettings" =>  [
                        "clapAtom" =>  "INCLUDE" or "EXCLUDE",
                        "cslgAtom" =>  "INCLUDE" or "EXCLUDE",
                        "mpeg2FourCCControl" =>  "XDCAM" or "MPEG",
                        "paddingControl" =>  "OMNEON" or "NONE",
                        "reference" =>  "SELF_CONTAINED" or "EXTERNAL"
                    ],
                    "mp4Settings" =>  [
                        "cslgAtom" =>  "INCLUDE" or "EXCLUDE",
                        "freeSpaceBox" =>  "INCLUDE" or "EXCLUDE",
                        "moovPlacement" =>  "PROGRESSIVE_DOWNLOAD" or "NORMAL",
                        "mp4MajorBrand" =>  ::String
                    ]
                ],
                "extension" =>  ::String,
                "nameModifier" =>  ::String,
                "outputSettings" =>  ["hlsSettings" =>  [
                        "audioGroupId" =>  ::String,
                        "audioRenditionSets" =>  ::String,
                        "audioTrackType" =>  "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT" or "AUDIO_ONLY_VARIANT_STREAM",
                        "iFrameOnlyManifest" =>  "INCLUDE" or "EXCLUDE",
                        "segmentModifier" =>  ::String
                    ]],
                "preset" =>  ::String,
                "videoDescription" =>  [
                    "afdSignaling" =>  "NONE", "AUTO" or "FIXED",
                    "antiAlias" =>  "DISABLED" or "ENABLED",
                    "codecSettings" => <required> [
                        "codec" => <required> "FRAME_CAPTURE", "H_264", "H_265", "MPEG2" or "PRORES",
                        "frameCaptureSettings" =>  [
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "maxCaptures" =>  ::Int,
                            "quality" =>  ::Int
                        ],
                        "h264Settings" =>  [
                            "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER" or "MAX",
                            "bitrate" =>  ::Int,
                            "codecLevel" =>  "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1" or "LEVEL_5_2",
                            "codecProfile" =>  "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT" or "MAIN",
                            "entropyEncoding" =>  "CABAC" or "CAVLC",
                            "fieldEncoding" =>  "PAFF" or "FORCE_FIELD",
                            "flickerAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "gopBReference" =>  "DISABLED" or "ENABLED",
                            "gopClosedCadence" =>  ::Int,
                            "gopSize" =>  double,
                            "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                            "hrdBufferInitialFillPercentage" =>  ::Int,
                            "hrdBufferSize" =>  ::Int,
                            "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                            "maxBitrate" =>  ::Int,
                            "minIInterval" =>  ::Int,
                            "numberBFramesBetweenReferenceFrames" =>  ::Int,
                            "numberReferenceFrames" =>  ::Int,
                            "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "parDenominator" =>  ::Int,
                            "parNumerator" =>  ::Int,
                            "qualityTuningLevel" =>  "SINGLE_PASS", "SINGLE_PASS_HQ" or "MULTI_PASS_HQ",
                            "rateControlMode" =>  "VBR" or "CBR",
                            "repeatPps" =>  "DISABLED" or "ENABLED",
                            "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                            "slices" =>  ::Int,
                            "slowPal" =>  "DISABLED" or "ENABLED",
                            "softness" =>  ::Int,
                            "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "syntax" =>  "DEFAULT" or "RP2027",
                            "telecine" =>  "NONE", "SOFT" or "HARD",
                            "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "unregisteredSeiTimecode" =>  "DISABLED" or "ENABLED"
                        ],
                        "h265Settings" =>  [
                            "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER" or "MAX",
                            "alternateTransferFunctionSei" =>  "DISABLED" or "ENABLED",
                            "bitrate" =>  ::Int,
                            "codecLevel" =>  "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1" or "LEVEL_6_2",
                            "codecProfile" =>  "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN" or "MAIN_422_10BIT_HIGH",
                            "flickerAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "gopBReference" =>  "DISABLED" or "ENABLED",
                            "gopClosedCadence" =>  ::Int,
                            "gopSize" =>  double,
                            "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                            "hrdBufferInitialFillPercentage" =>  ::Int,
                            "hrdBufferSize" =>  ::Int,
                            "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                            "maxBitrate" =>  ::Int,
                            "minIInterval" =>  ::Int,
                            "numberBFramesBetweenReferenceFrames" =>  ::Int,
                            "numberReferenceFrames" =>  ::Int,
                            "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "parDenominator" =>  ::Int,
                            "parNumerator" =>  ::Int,
                            "qualityTuningLevel" =>  "SINGLE_PASS", "SINGLE_PASS_HQ" or "MULTI_PASS_HQ",
                            "rateControlMode" =>  "VBR" or "CBR",
                            "sampleAdaptiveOffsetFilterMode" =>  "DEFAULT", "ADAPTIVE" or "OFF",
                            "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                            "slices" =>  ::Int,
                            "slowPal" =>  "DISABLED" or "ENABLED",
                            "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "telecine" =>  "NONE", "SOFT" or "HARD",
                            "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "temporalIds" =>  "DISABLED" or "ENABLED",
                            "tiles" =>  "DISABLED" or "ENABLED",
                            "unregisteredSeiTimecode" =>  "DISABLED" or "ENABLED",
                            "writeMp4PackagingType" =>  "HVC1" or "HEV1"
                        ],
                        "mpeg2Settings" =>  [
                            "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM" or "HIGH",
                            "bitrate" =>  ::Int,
                            "codecLevel" =>  "AUTO", "LOW", "MAIN", "HIGH1440" or "HIGH",
                            "codecProfile" =>  "MAIN" or "PROFILE_422",
                            "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "gopClosedCadence" =>  ::Int,
                            "gopSize" =>  double,
                            "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                            "hrdBufferInitialFillPercentage" =>  ::Int,
                            "hrdBufferSize" =>  ::Int,
                            "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                            "intraDcPrecision" =>  "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10" or "INTRA_DC_PRECISION_11",
                            "maxBitrate" =>  ::Int,
                            "minIInterval" =>  ::Int,
                            "numberBFramesBetweenReferenceFrames" =>  ::Int,
                            "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "parDenominator" =>  ::Int,
                            "parNumerator" =>  ::Int,
                            "qualityTuningLevel" =>  "SINGLE_PASS" or "MULTI_PASS",
                            "rateControlMode" =>  "VBR" or "CBR",
                            "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                            "slowPal" =>  "DISABLED" or "ENABLED",
                            "softness" =>  ::Int,
                            "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                            "syntax" =>  "DEFAULT" or "D_10",
                            "telecine" =>  "NONE", "SOFT" or "HARD",
                            "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED"
                        ],
                        "proresSettings" =>  [
                            "codecProfile" =>  "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT" or "APPLE_PRORES_422_PROXY",
                            "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                            "framerateDenominator" =>  ::Int,
                            "framerateNumerator" =>  ::Int,
                            "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                            "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                            "parDenominator" =>  ::Int,
                            "parNumerator" =>  ::Int,
                            "slowPal" =>  "DISABLED" or "ENABLED",
                            "telecine" =>  "NONE" or "HARD"
                        ]
                    ],
                    "colorMetadata" =>  "IGNORE" or "INSERT",
                    "crop" =>  [
                        "height" => <required> ::Int,
                        "width" => <required> ::Int,
                        "x" => <required> ::Int,
                        "y" => <required> ::Int
                    ],
                    "dropFrameTimecode" =>  "DISABLED" or "ENABLED",
                    "fixedAfd" =>  ::Int,
                    "height" =>  ::Int,
                    "position" =>  [
                        "height" => <required> ::Int,
                        "width" => <required> ::Int,
                        "x" => <required> ::Int,
                        "y" => <required> ::Int
                    ],
                    "respondToAfd" =>  "NONE", "RESPOND" or "PASSTHROUGH",
                    "scalingBehavior" =>  "DEFAULT" or "STRETCH_TO_OUTPUT",
                    "sharpness" =>  ::Int,
                    "timecodeInsertion" =>  "DISABLED" or "PIC_TIMING_SEI",
                    "videoPreprocessors" =>  [
                        "colorCorrector" =>  [
                            "brightness" =>  ::Int,
                            "colorSpaceConversion" =>  "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10" or "FORCE_HLG_2020",
                            "contrast" =>  ::Int,
                            "hdr10Metadata" =>  [
                                "bluePrimaryX" =>  ::Int,
                                "bluePrimaryY" =>  ::Int,
                                "greenPrimaryX" =>  ::Int,
                                "greenPrimaryY" =>  ::Int,
                                "maxContentLightLevel" => <required> ::Int,
                                "maxFrameAverageLightLevel" => <required> ::Int,
                                "maxLuminance" =>  ::Int,
                                "minLuminance" =>  ::Int,
                                "redPrimaryX" =>  ::Int,
                                "redPrimaryY" =>  ::Int,
                                "whitePointX" =>  ::Int,
                                "whitePointY" =>  ::Int
                            ],
                            "hue" =>  ::Int,
                            "saturation" =>  ::Int
                        ],
                        "deinterlacer" =>  [
                            "algorithm" =>  "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND" or "BLEND_TICKER",
                            "control" =>  "FORCE_ALL_FRAMES" or "NORMAL",
                            "mode" =>  "DEINTERLACE", "INVERSE_TELECINE" or "ADAPTIVE"
                        ],
                        "imageInserter" =>  ["insertableImages" => <required> [[
                                "duration" =>  ::Int,
                                "fadeIn" =>  ::Int,
                                "fadeOut" =>  ::Int,
                                "height" =>  ::Int,
                                "imageInserterInput" => <required> ::String,
                                "imageX" => <required> ::Int,
                                "imageY" => <required> ::Int,
                                "layer" => <required> ::Int,
                                "opacity" => <required> ::Int,
                                "startTime" =>  ::String,
                                "width" =>  ::Int
                            ], ...]],
                        "noiseReducer" =>  [
                            "filter" => <required> "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE" or "SPATIAL",
                            "filterSettings" =>  ["strength" =>  ::Int],
                            "spatialFilterSettings" =>  [
                                "postFilterSharpenStrength" =>  ::Int,
                                "speed" =>  ::Int,
                                "strength" =>  ::Int
                            ]
                        ],
                        "timecodeBurnin" =>  [
                            "fontSize" =>  ::Int,
                            "position" =>  "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER" or "BOTTOM_RIGHT",
                            "prefix" =>  ::String
                        ]
                    ],
                    "width" =>  ::Int
                ]
            ], ...]
        ], ...],
        "timecodeConfig" =>  [
            "anchor" =>  ::String,
            "source" =>  "EMBEDDED", "ZEROBASED" or "SPECIFIEDSTART",
            "start" =>  ::String,
            "timestampOffset" =>  ::String
        ],
        "timedMetadataInsertion" =>  ["id3Insertions" => <required> [[
                "id3" => <required> ::String,
                "timecode" => <required> ::String
            ], ...]]
    ]
```



# Returns

`UpdateJobTemplateResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdateJobTemplate)
"""
@inline update_job_template(aws::AWSConfig=default_aws_config(); args...) = update_job_template(aws, args)

@inline update_job_template(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "PUT", "/2017-08-29/jobTemplates/{name}", args)

@inline update_job_template(args) = update_job_template(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.update_preset
    update_preset([::AWSConfig], arguments::Dict)
    update_preset([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "PUT", "/2017-08-29/presets/{name}", arguments::Dict)
    mediaconvert([::AWSConfig], "PUT", "/2017-08-29/presets/{name}", name=, <keyword arguments>)

# UpdatePreset Operation

Modify one of your existing presets.

# Arguments

## `category = ::String`
The new category for the preset, if you are changing it.


## `description = ::String`
The new description for the preset, if you are changing it.


## `name = ::String` -- *Required*
The name of the preset you are modifying.


## `settings = [ ... ]`

```
 settings = [
        "audioDescriptions" =>  [[
            "audioNormalizationSettings" =>  [
                "algorithm" =>  "ITU_BS_1770_1" or "ITU_BS_1770_2",
                "algorithmControl" =>  "CORRECT_AUDIO" or "MEASURE_ONLY",
                "correctionGateLevel" =>  ::Int,
                "loudnessLogging" =>  "LOG" or "DONT_LOG",
                "peakCalculation" =>  "TRUE_PEAK" or "NONE",
                "targetLkfs" =>  double
            ],
            "audioSourceName" =>  ::String,
            "audioType" =>  ::Int,
            "audioTypeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
            "codecSettings" => <required> [
                "aacSettings" =>  [
                    "audioDescriptionBroadcasterMix" =>  "BROADCASTER_MIXED_AD" or "NORMAL",
                    "bitrate" =>  ::Int,
                    "codecProfile" =>  "LC", "HEV1" or "HEV2",
                    "codingMode" => <required> "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_5_1",
                    "rateControlMode" =>  "CBR" or "VBR",
                    "rawFormat" =>  "LATM_LOAS" or "NONE",
                    "sampleRate" => <required> ::Int,
                    "specification" =>  "MPEG2" or "MPEG4",
                    "vbrQuality" =>  "LOW", "MEDIUM_LOW", "MEDIUM_HIGH" or "HIGH"
                ],
                "ac3Settings" =>  [
                    "bitrate" =>  ::Int,
                    "bitstreamMode" =>  "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED" or "VOICE_OVER",
                    "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_3_2_LFE",
                    "dialnorm" =>  ::Int,
                    "dynamicRangeCompressionProfile" =>  "FILM_STANDARD" or "NONE",
                    "lfeFilter" =>  "ENABLED" or "DISABLED",
                    "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                    "sampleRate" =>  ::Int
                ],
                "aiffSettings" =>  [
                    "bitDepth" =>  ::Int,
                    "channels" =>  ::Int,
                    "sampleRate" =>  ::Int
                ],
                "codec" => <required> "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3" or "PASSTHROUGH",
                "eac3Settings" =>  [
                    "attenuationControl" =>  "ATTENUATE_3_DB" or "NONE",
                    "bitrate" =>  ::Int,
                    "bitstreamMode" =>  "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED" or "VISUALLY_IMPAIRED",
                    "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_2_0" or "CODING_MODE_3_2",
                    "dcFilter" =>  "ENABLED" or "DISABLED",
                    "dialnorm" =>  ::Int,
                    "dynamicRangeCompressionLine" =>  "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT" or "SPEECH",
                    "dynamicRangeCompressionRf" =>  "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT" or "SPEECH",
                    "lfeControl" =>  "LFE" or "NO_LFE",
                    "lfeFilter" =>  "ENABLED" or "DISABLED",
                    "loRoCenterMixLevel" =>  double,
                    "loRoSurroundMixLevel" =>  double,
                    "ltRtCenterMixLevel" =>  double,
                    "ltRtSurroundMixLevel" =>  double,
                    "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                    "passthroughControl" =>  "WHEN_POSSIBLE" or "NO_PASSTHROUGH",
                    "phaseControl" =>  "SHIFT_90_DEGREES" or "NO_SHIFT",
                    "sampleRate" =>  ::Int,
                    "stereoDownmix" =>  "NOT_INDICATED", "LO_RO", "LT_RT" or "DPL2",
                    "surroundExMode" =>  "NOT_INDICATED", "ENABLED" or "DISABLED",
                    "surroundMode" =>  "NOT_INDICATED", "ENABLED" or "DISABLED"
                ],
                "mp2Settings" =>  [
                    "bitrate" =>  ::Int,
                    "channels" =>  ::Int,
                    "sampleRate" =>  ::Int
                ],
                "wavSettings" =>  [
                    "bitDepth" =>  ::Int,
                    "channels" =>  ::Int,
                    "format" =>  "RIFF" or "RF64",
                    "sampleRate" =>  ::Int
                ]
            ],
            "customLanguageCode" =>  ::String,
            "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
            "languageCodeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
            "remixSettings" =>  [
                "channelMapping" => <required> ["outputChannels" => <required> [["inputChannels" => <required> [::Int, ...]], ...]],
                "channelsIn" => <required> ::Int,
                "channelsOut" => <required> ::Int
            ],
            "streamName" =>  ::String
        ], ...],
        "captionDescriptions" =>  [[
            "customLanguageCode" =>  ::String,
            "destinationSettings" => <required> [
                "burninDestinationSettings" =>  [
                    "alignment" => <required> "CENTERED" or "LEFT",
                    "backgroundColor" =>  "NONE", "BLACK" or "WHITE",
                    "backgroundOpacity" =>  ::Int,
                    "fontColor" =>  "WHITE", "BLACK", "YELLOW", "RED", "GREEN" or "BLUE",
                    "fontOpacity" => <required> ::Int,
                    "fontResolution" =>  ::Int,
                    "fontSize" =>  ::Int,
                    "outlineColor" => <required> "BLACK", "WHITE", "YELLOW", "RED", "GREEN" or "BLUE",
                    "outlineSize" => <required> ::Int,
                    "shadowColor" =>  "NONE", "BLACK" or "WHITE",
                    "shadowOpacity" =>  ::Int,
                    "shadowXOffset" =>  ::Int,
                    "shadowYOffset" =>  ::Int,
                    "teletextSpacing" =>  "FIXED_GRID" or "PROPORTIONAL",
                    "xPosition" =>  ::Int,
                    "yPosition" =>  ::Int
                ],
                "destinationType" => <required> "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML" or "WEBVTT",
                "dvbSubDestinationSettings" =>  [
                    "alignment" => <required> "CENTERED" or "LEFT",
                    "backgroundColor" =>  "NONE", "BLACK" or "WHITE",
                    "backgroundOpacity" =>  ::Int,
                    "fontColor" =>  "WHITE", "BLACK", "YELLOW", "RED", "GREEN" or "BLUE",
                    "fontOpacity" => <required> ::Int,
                    "fontResolution" =>  ::Int,
                    "fontSize" =>  ::Int,
                    "outlineColor" => <required> "BLACK", "WHITE", "YELLOW", "RED", "GREEN" or "BLUE",
                    "outlineSize" => <required> ::Int,
                    "shadowColor" =>  "NONE", "BLACK" or "WHITE",
                    "shadowOpacity" =>  ::Int,
                    "shadowXOffset" =>  ::Int,
                    "shadowYOffset" =>  ::Int,
                    "teletextSpacing" =>  "FIXED_GRID" or "PROPORTIONAL",
                    "xPosition" =>  ::Int,
                    "yPosition" =>  ::Int
                ],
                "sccDestinationSettings" =>  ["framerate" =>  "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME" or "FRAMERATE_29_97_NON_DROPFRAME"],
                "teletextDestinationSettings" =>  ["pageNumber" =>  ::String],
                "ttmlDestinationSettings" =>  ["stylePassthrough" =>  "ENABLED" or "DISABLED"]
            ],
            "languageCode" =>  "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC" or "TNG",
            "languageDescription" =>  ::String
        ], ...],
        "containerSettings" =>  [
            "container" => <required> "F4V", "ISMV", "M2TS", "M3U8", "CMFC", "MOV", "MP4", "MPD", "MXF" or "RAW",
            "f4vSettings" =>  ["moovPlacement" =>  "PROGRESSIVE_DOWNLOAD" or "NORMAL"],
            "m2tsSettings" =>  [
                "audioBufferModel" =>  "DVB" or "ATSC",
                "audioFramesPerPes" =>  ::Int,
                "audioPids" =>  [::Int, ...],
                "bitrate" =>  ::Int,
                "bufferModel" =>  "MULTIPLEX" or "NONE",
                "dvbNitSettings" =>  [
                    "networkId" => <required> ::Int,
                    "networkName" => <required> ::String,
                    "nitInterval" => <required> ::Int
                ],
                "dvbSdtSettings" =>  [
                    "outputSdt" =>  "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL" or "SDT_NONE",
                    "sdtInterval" =>  ::Int,
                    "serviceName" =>  ::String,
                    "serviceProviderName" =>  ::String
                ],
                "dvbSubPids" =>  [::Int, ...],
                "dvbTdtSettings" =>  ["tdtInterval" => <required> ::Int],
                "dvbTeletextPid" =>  ::Int,
                "ebpAudioInterval" =>  "VIDEO_AND_FIXED_INTERVALS" or "VIDEO_INTERVAL",
                "ebpPlacement" =>  "VIDEO_AND_AUDIO_PIDS" or "VIDEO_PID",
                "esRateInPes" =>  "INCLUDE" or "EXCLUDE",
                "fragmentTime" =>  double,
                "maxPcrInterval" =>  ::Int,
                "minEbpInterval" =>  ::Int,
                "nielsenId3" =>  "INSERT" or "NONE",
                "nullPacketBitrate" =>  double,
                "patInterval" =>  ::Int,
                "pcrControl" =>  "PCR_EVERY_PES_PACKET" or "CONFIGURED_PCR_PERIOD",
                "pcrPid" =>  ::Int,
                "pmtInterval" =>  ::Int,
                "pmtPid" =>  ::Int,
                "privateMetadataPid" =>  ::Int,
                "programNumber" =>  ::Int,
                "rateMode" =>  "VBR" or "CBR",
                "scte35Pid" =>  ::Int,
                "scte35Source" =>  "PASSTHROUGH" or "NONE",
                "segmentationMarkers" =>  "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP" or "EBP_LEGACY",
                "segmentationStyle" =>  "MAINTAIN_CADENCE" or "RESET_CADENCE",
                "segmentationTime" =>  double,
                "timedMetadataPid" =>  ::Int,
                "transportStreamId" =>  ::Int,
                "videoPid" =>  ::Int
            ],
            "m3u8Settings" =>  [
                "audioFramesPerPes" =>  ::Int,
                "audioPids" =>  [::Int, ...],
                "nielsenId3" =>  "INSERT" or "NONE",
                "patInterval" =>  ::Int,
                "pcrControl" =>  "PCR_EVERY_PES_PACKET" or "CONFIGURED_PCR_PERIOD",
                "pcrPid" =>  ::Int,
                "pmtInterval" =>  ::Int,
                "pmtPid" =>  ::Int,
                "privateMetadataPid" =>  ::Int,
                "programNumber" =>  ::Int,
                "scte35Pid" =>  ::Int,
                "scte35Source" =>  "PASSTHROUGH" or "NONE",
                "timedMetadata" =>  "PASSTHROUGH" or "NONE",
                "timedMetadataPid" =>  ::Int,
                "transportStreamId" =>  ::Int,
                "videoPid" =>  ::Int
            ],
            "movSettings" =>  [
                "clapAtom" =>  "INCLUDE" or "EXCLUDE",
                "cslgAtom" =>  "INCLUDE" or "EXCLUDE",
                "mpeg2FourCCControl" =>  "XDCAM" or "MPEG",
                "paddingControl" =>  "OMNEON" or "NONE",
                "reference" =>  "SELF_CONTAINED" or "EXTERNAL"
            ],
            "mp4Settings" =>  [
                "cslgAtom" =>  "INCLUDE" or "EXCLUDE",
                "freeSpaceBox" =>  "INCLUDE" or "EXCLUDE",
                "moovPlacement" =>  "PROGRESSIVE_DOWNLOAD" or "NORMAL",
                "mp4MajorBrand" =>  ::String
            ]
        ],
        "videoDescription" =>  [
            "afdSignaling" =>  "NONE", "AUTO" or "FIXED",
            "antiAlias" =>  "DISABLED" or "ENABLED",
            "codecSettings" => <required> [
                "codec" => <required> "FRAME_CAPTURE", "H_264", "H_265", "MPEG2" or "PRORES",
                "frameCaptureSettings" =>  [
                    "framerateDenominator" =>  ::Int,
                    "framerateNumerator" =>  ::Int,
                    "maxCaptures" =>  ::Int,
                    "quality" =>  ::Int
                ],
                "h264Settings" =>  [
                    "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER" or "MAX",
                    "bitrate" =>  ::Int,
                    "codecLevel" =>  "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1" or "LEVEL_5_2",
                    "codecProfile" =>  "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT" or "MAIN",
                    "entropyEncoding" =>  "CABAC" or "CAVLC",
                    "fieldEncoding" =>  "PAFF" or "FORCE_FIELD",
                    "flickerAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                    "framerateDenominator" =>  ::Int,
                    "framerateNumerator" =>  ::Int,
                    "gopBReference" =>  "DISABLED" or "ENABLED",
                    "gopClosedCadence" =>  ::Int,
                    "gopSize" =>  double,
                    "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                    "hrdBufferInitialFillPercentage" =>  ::Int,
                    "hrdBufferSize" =>  ::Int,
                    "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                    "maxBitrate" =>  ::Int,
                    "minIInterval" =>  ::Int,
                    "numberBFramesBetweenReferenceFrames" =>  ::Int,
                    "numberReferenceFrames" =>  ::Int,
                    "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "parDenominator" =>  ::Int,
                    "parNumerator" =>  ::Int,
                    "qualityTuningLevel" =>  "SINGLE_PASS", "SINGLE_PASS_HQ" or "MULTI_PASS_HQ",
                    "rateControlMode" =>  "VBR" or "CBR",
                    "repeatPps" =>  "DISABLED" or "ENABLED",
                    "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                    "slices" =>  ::Int,
                    "slowPal" =>  "DISABLED" or "ENABLED",
                    "softness" =>  ::Int,
                    "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "syntax" =>  "DEFAULT" or "RP2027",
                    "telecine" =>  "NONE", "SOFT" or "HARD",
                    "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "unregisteredSeiTimecode" =>  "DISABLED" or "ENABLED"
                ],
                "h265Settings" =>  [
                    "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER" or "MAX",
                    "alternateTransferFunctionSei" =>  "DISABLED" or "ENABLED",
                    "bitrate" =>  ::Int,
                    "codecLevel" =>  "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1" or "LEVEL_6_2",
                    "codecProfile" =>  "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN" or "MAIN_422_10BIT_HIGH",
                    "flickerAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                    "framerateDenominator" =>  ::Int,
                    "framerateNumerator" =>  ::Int,
                    "gopBReference" =>  "DISABLED" or "ENABLED",
                    "gopClosedCadence" =>  ::Int,
                    "gopSize" =>  double,
                    "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                    "hrdBufferInitialFillPercentage" =>  ::Int,
                    "hrdBufferSize" =>  ::Int,
                    "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                    "maxBitrate" =>  ::Int,
                    "minIInterval" =>  ::Int,
                    "numberBFramesBetweenReferenceFrames" =>  ::Int,
                    "numberReferenceFrames" =>  ::Int,
                    "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "parDenominator" =>  ::Int,
                    "parNumerator" =>  ::Int,
                    "qualityTuningLevel" =>  "SINGLE_PASS", "SINGLE_PASS_HQ" or "MULTI_PASS_HQ",
                    "rateControlMode" =>  "VBR" or "CBR",
                    "sampleAdaptiveOffsetFilterMode" =>  "DEFAULT", "ADAPTIVE" or "OFF",
                    "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                    "slices" =>  ::Int,
                    "slowPal" =>  "DISABLED" or "ENABLED",
                    "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "telecine" =>  "NONE", "SOFT" or "HARD",
                    "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "temporalIds" =>  "DISABLED" or "ENABLED",
                    "tiles" =>  "DISABLED" or "ENABLED",
                    "unregisteredSeiTimecode" =>  "DISABLED" or "ENABLED",
                    "writeMp4PackagingType" =>  "HVC1" or "HEV1"
                ],
                "mpeg2Settings" =>  [
                    "adaptiveQuantization" =>  "OFF", "LOW", "MEDIUM" or "HIGH",
                    "bitrate" =>  ::Int,
                    "codecLevel" =>  "AUTO", "LOW", "MAIN", "HIGH1440" or "HIGH",
                    "codecProfile" =>  "MAIN" or "PROFILE_422",
                    "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                    "framerateDenominator" =>  ::Int,
                    "framerateNumerator" =>  ::Int,
                    "gopClosedCadence" =>  ::Int,
                    "gopSize" =>  double,
                    "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                    "hrdBufferInitialFillPercentage" =>  ::Int,
                    "hrdBufferSize" =>  ::Int,
                    "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                    "intraDcPrecision" =>  "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10" or "INTRA_DC_PRECISION_11",
                    "maxBitrate" =>  ::Int,
                    "minIInterval" =>  ::Int,
                    "numberBFramesBetweenReferenceFrames" =>  ::Int,
                    "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "parDenominator" =>  ::Int,
                    "parNumerator" =>  ::Int,
                    "qualityTuningLevel" =>  "SINGLE_PASS" or "MULTI_PASS",
                    "rateControlMode" =>  "VBR" or "CBR",
                    "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                    "slowPal" =>  "DISABLED" or "ENABLED",
                    "softness" =>  ::Int,
                    "spatialAdaptiveQuantization" =>  "DISABLED" or "ENABLED",
                    "syntax" =>  "DEFAULT" or "D_10",
                    "telecine" =>  "NONE", "SOFT" or "HARD",
                    "temporalAdaptiveQuantization" =>  "DISABLED" or "ENABLED"
                ],
                "proresSettings" =>  [
                    "codecProfile" =>  "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT" or "APPLE_PRORES_422_PROXY",
                    "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "framerateConversionAlgorithm" =>  "DUPLICATE_DROP" or "INTERPOLATE",
                    "framerateDenominator" =>  ::Int,
                    "framerateNumerator" =>  ::Int,
                    "interlaceMode" =>  "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD" or "FOLLOW_BOTTOM_FIELD",
                    "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "parDenominator" =>  ::Int,
                    "parNumerator" =>  ::Int,
                    "slowPal" =>  "DISABLED" or "ENABLED",
                    "telecine" =>  "NONE" or "HARD"
                ]
            ],
            "colorMetadata" =>  "IGNORE" or "INSERT",
            "crop" =>  [
                "height" => <required> ::Int,
                "width" => <required> ::Int,
                "x" => <required> ::Int,
                "y" => <required> ::Int
            ],
            "dropFrameTimecode" =>  "DISABLED" or "ENABLED",
            "fixedAfd" =>  ::Int,
            "height" =>  ::Int,
            "position" =>  [
                "height" => <required> ::Int,
                "width" => <required> ::Int,
                "x" => <required> ::Int,
                "y" => <required> ::Int
            ],
            "respondToAfd" =>  "NONE", "RESPOND" or "PASSTHROUGH",
            "scalingBehavior" =>  "DEFAULT" or "STRETCH_TO_OUTPUT",
            "sharpness" =>  ::Int,
            "timecodeInsertion" =>  "DISABLED" or "PIC_TIMING_SEI",
            "videoPreprocessors" =>  [
                "colorCorrector" =>  [
                    "brightness" =>  ::Int,
                    "colorSpaceConversion" =>  "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10" or "FORCE_HLG_2020",
                    "contrast" =>  ::Int,
                    "hdr10Metadata" =>  [
                        "bluePrimaryX" =>  ::Int,
                        "bluePrimaryY" =>  ::Int,
                        "greenPrimaryX" =>  ::Int,
                        "greenPrimaryY" =>  ::Int,
                        "maxContentLightLevel" => <required> ::Int,
                        "maxFrameAverageLightLevel" => <required> ::Int,
                        "maxLuminance" =>  ::Int,
                        "minLuminance" =>  ::Int,
                        "redPrimaryX" =>  ::Int,
                        "redPrimaryY" =>  ::Int,
                        "whitePointX" =>  ::Int,
                        "whitePointY" =>  ::Int
                    ],
                    "hue" =>  ::Int,
                    "saturation" =>  ::Int
                ],
                "deinterlacer" =>  [
                    "algorithm" =>  "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND" or "BLEND_TICKER",
                    "control" =>  "FORCE_ALL_FRAMES" or "NORMAL",
                    "mode" =>  "DEINTERLACE", "INVERSE_TELECINE" or "ADAPTIVE"
                ],
                "imageInserter" =>  ["insertableImages" => <required> [[
                        "duration" =>  ::Int,
                        "fadeIn" =>  ::Int,
                        "fadeOut" =>  ::Int,
                        "height" =>  ::Int,
                        "imageInserterInput" => <required> ::String,
                        "imageX" => <required> ::Int,
                        "imageY" => <required> ::Int,
                        "layer" => <required> ::Int,
                        "opacity" => <required> ::Int,
                        "startTime" =>  ::String,
                        "width" =>  ::Int
                    ], ...]],
                "noiseReducer" =>  [
                    "filter" => <required> "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE" or "SPATIAL",
                    "filterSettings" =>  ["strength" =>  ::Int],
                    "spatialFilterSettings" =>  [
                        "postFilterSharpenStrength" =>  ::Int,
                        "speed" =>  ::Int,
                        "strength" =>  ::Int
                    ]
                ],
                "timecodeBurnin" =>  [
                    "fontSize" =>  ::Int,
                    "position" =>  "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER" or "BOTTOM_RIGHT",
                    "prefix" =>  ::String
                ]
            ],
            "width" =>  ::Int
        ]
    ]
```



# Returns

`UpdatePresetResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdatePreset)
"""
@inline update_preset(aws::AWSConfig=default_aws_config(); args...) = update_preset(aws, args)

@inline update_preset(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "PUT", "/2017-08-29/presets/{name}", args)

@inline update_preset(args) = update_preset(default_aws_config(), args)


"""
    using AWSSDK.MediaConvert.update_queue
    update_queue([::AWSConfig], arguments::Dict)
    update_queue([::AWSConfig]; name=, <keyword arguments>)

    using AWSCore.Services.mediaconvert
    mediaconvert([::AWSConfig], "PUT", "/2017-08-29/queues/{name}", arguments::Dict)
    mediaconvert([::AWSConfig], "PUT", "/2017-08-29/queues/{name}", name=, <keyword arguments>)

# UpdateQueue Operation

Modify one of your existing queues.

# Arguments

## `description = ::String`
The new description for the queue, if you are changing it.


## `name = ::String` -- *Required*
The name of the queue you are modifying.


## `status = "ACTIVE" or "PAUSED"`





# Returns

`UpdateQueueResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `NotFoundException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdateQueue)
"""
@inline update_queue(aws::AWSConfig=default_aws_config(); args...) = update_queue(aws, args)

@inline update_queue(aws::AWSConfig, args) = AWSCore.Services.mediaconvert(aws, "PUT", "/2017-08-29/queues/{name}", args)

@inline update_queue(args) = update_queue(default_aws_config(), args)




end # module MediaConvert


#==============================================================================#
# End of file
#==============================================================================#
