#==============================================================================#
# MediaLive.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/medialive-2017-10-14.normal.json
#==============================================================================#

__precompile__()

module MediaLive

using AWSCore


"""
    using AWSSDK.MediaLive.create_channel
    create_channel([::AWSConfig], arguments::Dict)
    create_channel([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "POST", "/prod/channels", arguments::Dict)
    medialive([::AWSConfig], "POST", "/prod/channels", <keyword arguments>)

# CreateChannel Operation

Creates a new channel

# Arguments

## `destinations = [[ ... ], ...]`

```
 destinations = [[
        "id" =>  ::String,
        "settings" =>  [[
            "passwordParam" =>  ::String,
            "streamName" =>  ::String,
            "url" =>  ::String,
            "username" =>  ::String
        ], ...]
    ], ...]
```

## `encoderSettings = [ ... ]`

```
 encoderSettings = [
        "audioDescriptions" => <required> [[
            "audioNormalizationSettings" =>  [
                "algorithm" =>  "ITU_1770_1" or "ITU_1770_2",
                "algorithmControl" =>  "CORRECT_AUDIO",
                "targetLkfs" =>  double
            ],
            "audioSelectorName" => <required> ::String,
            "audioType" =>  "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED" or "VISUAL_IMPAIRED_COMMENTARY",
            "audioTypeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
            "codecSettings" =>  [
                "aacSettings" =>  [
                    "bitrate" =>  double,
                    "codingMode" =>  "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_5_1",
                    "inputType" =>  "BROADCASTER_MIXED_AD" or "NORMAL",
                    "profile" =>  "HEV1", "HEV2" or "LC",
                    "rateControlMode" =>  "CBR" or "VBR",
                    "rawFormat" =>  "LATM_LOAS" or "NONE",
                    "sampleRate" =>  double,
                    "spec" =>  "MPEG2" or "MPEG4",
                    "vbrQuality" =>  "HIGH", "LOW", "MEDIUM_HIGH" or "MEDIUM_LOW"
                ],
                "ac3Settings" =>  [
                    "bitrate" =>  double,
                    "bitstreamMode" =>  "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED" or "VOICE_OVER",
                    "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_3_2_LFE",
                    "dialnorm" =>  ::Int,
                    "drcProfile" =>  "FILM_STANDARD" or "NONE",
                    "lfeFilter" =>  "DISABLED" or "ENABLED",
                    "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED"
                ],
                "eac3Settings" =>  [
                    "attenuationControl" =>  "ATTENUATE_3_DB" or "NONE",
                    "bitrate" =>  double,
                    "bitstreamMode" =>  "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED" or "VISUALLY_IMPAIRED",
                    "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_2_0" or "CODING_MODE_3_2",
                    "dcFilter" =>  "DISABLED" or "ENABLED",
                    "dialnorm" =>  ::Int,
                    "drcLine" =>  "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE" or "SPEECH",
                    "drcRf" =>  "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE" or "SPEECH",
                    "lfeControl" =>  "LFE" or "NO_LFE",
                    "lfeFilter" =>  "DISABLED" or "ENABLED",
                    "loRoCenterMixLevel" =>  double,
                    "loRoSurroundMixLevel" =>  double,
                    "ltRtCenterMixLevel" =>  double,
                    "ltRtSurroundMixLevel" =>  double,
                    "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                    "passthroughControl" =>  "NO_PASSTHROUGH" or "WHEN_POSSIBLE",
                    "phaseControl" =>  "NO_SHIFT" or "SHIFT_90_DEGREES",
                    "stereoDownmix" =>  "DPL2", "LO_RO", "LT_RT" or "NOT_INDICATED",
                    "surroundExMode" =>  "DISABLED", "ENABLED" or "NOT_INDICATED",
                    "surroundMode" =>  "DISABLED", "ENABLED" or "NOT_INDICATED"
                ],
                "mp2Settings" =>  [
                    "bitrate" =>  double,
                    "codingMode" =>  "CODING_MODE_1_0" or "CODING_MODE_2_0",
                    "sampleRate" =>  double
                ],
                "passThroughSettings" =>  [
                    
                ]
            ],
            "languageCode" =>  ::String,
            "languageCodeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
            "name" => <required> ::String,
            "remixSettings" =>  [
                "channelMappings" => <required> [[
                    "inputChannelLevels" => <required> [[
                        "gain" => <required> ::Int,
                        "inputChannel" => <required> ::Int
                    ], ...],
                    "outputChannel" => <required> ::Int
                ], ...],
                "channelsIn" =>  ::Int,
                "channelsOut" =>  ::Int
            ],
            "streamName" =>  ::String
        ], ...],
        "availBlanking" =>  [
            "availBlankingImage" =>  [
                "passwordParam" =>  ::String,
                "uri" => <required> ::String,
                "username" =>  ::String
            ],
            "state" =>  "DISABLED" or "ENABLED"
        ],
        "availConfiguration" =>  ["availSettings" =>  [
                "scte35SpliceInsert" =>  [
                    "adAvailOffset" =>  ::Int,
                    "noRegionalBlackoutFlag" =>  "FOLLOW" or "IGNORE",
                    "webDeliveryAllowedFlag" =>  "FOLLOW" or "IGNORE"
                ],
                "scte35TimeSignalApos" =>  [
                    "adAvailOffset" =>  ::Int,
                    "noRegionalBlackoutFlag" =>  "FOLLOW" or "IGNORE",
                    "webDeliveryAllowedFlag" =>  "FOLLOW" or "IGNORE"
                ]
            ]],
        "blackoutSlate" =>  [
            "blackoutSlateImage" =>  [
                "passwordParam" =>  ::String,
                "uri" => <required> ::String,
                "username" =>  ::String
            ],
            "networkEndBlackout" =>  "DISABLED" or "ENABLED",
            "networkEndBlackoutImage" =>  [
                "passwordParam" =>  ::String,
                "uri" => <required> ::String,
                "username" =>  ::String
            ],
            "networkId" =>  ::String,
            "state" =>  "DISABLED" or "ENABLED"
        ],
        "captionDescriptions" =>  [[
            "captionSelectorName" => <required> ::String,
            "destinationSettings" =>  [
                "aribDestinationSettings" =>  [
                    
                ],
                "burnInDestinationSettings" =>  [
                    "alignment" =>  "CENTERED", "LEFT" or "SMART",
                    "backgroundColor" =>  "BLACK", "NONE" or "WHITE",
                    "backgroundOpacity" =>  ::Int,
                    "font" =>  [
                        "passwordParam" =>  ::String,
                        "uri" => <required> ::String,
                        "username" =>  ::String
                    ],
                    "fontColor" =>  "BLACK", "BLUE", "GREEN", "RED", "WHITE" or "YELLOW",
                    "fontOpacity" =>  ::Int,
                    "fontResolution" =>  ::Int,
                    "fontSize" =>  ::String,
                    "outlineColor" =>  "BLACK", "BLUE", "GREEN", "RED", "WHITE" or "YELLOW",
                    "outlineSize" =>  ::Int,
                    "shadowColor" =>  "BLACK", "NONE" or "WHITE",
                    "shadowOpacity" =>  ::Int,
                    "shadowXOffset" =>  ::Int,
                    "shadowYOffset" =>  ::Int,
                    "teletextGridControl" =>  "FIXED" or "SCALED",
                    "xPosition" =>  ::Int,
                    "yPosition" =>  ::Int
                ],
                "dvbSubDestinationSettings" =>  [
                    "alignment" =>  "CENTERED", "LEFT" or "SMART",
                    "backgroundColor" =>  "BLACK", "NONE" or "WHITE",
                    "backgroundOpacity" =>  ::Int,
                    "font" =>  [
                        "passwordParam" =>  ::String,
                        "uri" => <required> ::String,
                        "username" =>  ::String
                    ],
                    "fontColor" =>  "BLACK", "BLUE", "GREEN", "RED", "WHITE" or "YELLOW",
                    "fontOpacity" =>  ::Int,
                    "fontResolution" =>  ::Int,
                    "fontSize" =>  ::String,
                    "outlineColor" =>  "BLACK", "BLUE", "GREEN", "RED", "WHITE" or "YELLOW",
                    "outlineSize" =>  ::Int,
                    "shadowColor" =>  "BLACK", "NONE" or "WHITE",
                    "shadowOpacity" =>  ::Int,
                    "shadowXOffset" =>  ::Int,
                    "shadowYOffset" =>  ::Int,
                    "teletextGridControl" =>  "FIXED" or "SCALED",
                    "xPosition" =>  ::Int,
                    "yPosition" =>  ::Int
                ],
                "embeddedDestinationSettings" =>  [
                    
                ],
                "embeddedPlusScte20DestinationSettings" =>  [
                    
                ],
                "rtmpCaptionInfoDestinationSettings" =>  [
                    
                ],
                "scte20PlusEmbeddedDestinationSettings" =>  [
                    
                ],
                "scte27DestinationSettings" =>  [
                    
                ],
                "smpteTtDestinationSettings" =>  [
                    
                ],
                "teletextDestinationSettings" =>  [
                    
                ],
                "ttmlDestinationSettings" =>  ["styleControl" =>  "PASSTHROUGH" or "USE_CONFIGURED"],
                "webvttDestinationSettings" =>  [
                    
                ]
            ],
            "languageCode" =>  ::String,
            "languageDescription" =>  ::String,
            "name" => <required> ::String
        ], ...],
        "globalConfiguration" =>  [
            "initialAudioGain" =>  ::Int,
            "inputEndAction" =>  "NONE" or "SWITCH_AND_LOOP_INPUTS",
            "inputLossBehavior" =>  [
                "blackFrameMsec" =>  ::Int,
                "inputLossImageColor" =>  ::String,
                "inputLossImageSlate" =>  [
                    "passwordParam" =>  ::String,
                    "uri" => <required> ::String,
                    "username" =>  ::String
                ],
                "inputLossImageType" =>  "COLOR" or "SLATE",
                "repeatFrameMsec" =>  ::Int
            ],
            "outputTimingSource" =>  "INPUT_CLOCK" or "SYSTEM_CLOCK",
            "supportLowFramerateInputs" =>  "DISABLED" or "ENABLED"
        ],
        "outputGroups" => <required> [[
            "name" =>  ::String,
            "outputGroupSettings" => <required> [
                "archiveGroupSettings" =>  [
                    "destination" => <required> ["destinationRefId" =>  ::String],
                    "rolloverInterval" =>  ::Int
                ],
                "hlsGroupSettings" =>  [
                    "adMarkers" =>  ["ADOBE", "ELEMENTAL" or "ELEMENTAL_SCTE35", ...],
                    "baseUrlContent" =>  ::String,
                    "baseUrlManifest" =>  ::String,
                    "captionLanguageMappings" =>  [[
                        "captionChannel" => <required> ::Int,
                        "languageCode" => <required> ::String,
                        "languageDescription" => <required> ::String
                    ], ...],
                    "captionLanguageSetting" =>  "INSERT", "NONE" or "OMIT",
                    "clientCache" =>  "DISABLED" or "ENABLED",
                    "codecSpecification" =>  "RFC_4281" or "RFC_6381",
                    "constantIv" =>  ::String,
                    "destination" => <required> ["destinationRefId" =>  ::String],
                    "directoryStructure" =>  "SINGLE_DIRECTORY" or "SUBDIRECTORY_PER_STREAM",
                    "encryptionType" =>  "AES128" or "SAMPLE_AES",
                    "hlsCdnSettings" =>  [
                        "hlsAkamaiSettings" =>  [
                            "connectionRetryInterval" =>  ::Int,
                            "filecacheDuration" =>  ::Int,
                            "httpTransferMode" =>  "CHUNKED" or "NON_CHUNKED",
                            "numRetries" =>  ::Int,
                            "restartDelay" =>  ::Int,
                            "salt" =>  ::String,
                            "token" =>  ::String
                        ],
                        "hlsBasicPutSettings" =>  [
                            "connectionRetryInterval" =>  ::Int,
                            "filecacheDuration" =>  ::Int,
                            "numRetries" =>  ::Int,
                            "restartDelay" =>  ::Int
                        ],
                        "hlsMediaStoreSettings" =>  [
                            "connectionRetryInterval" =>  ::Int,
                            "filecacheDuration" =>  ::Int,
                            "mediaStoreStorageClass" =>  "TEMPORAL",
                            "numRetries" =>  ::Int,
                            "restartDelay" =>  ::Int
                        ],
                        "hlsWebdavSettings" =>  [
                            "connectionRetryInterval" =>  ::Int,
                            "filecacheDuration" =>  ::Int,
                            "httpTransferMode" =>  "CHUNKED" or "NON_CHUNKED",
                            "numRetries" =>  ::Int,
                            "restartDelay" =>  ::Int
                        ]
                    ],
                    "indexNSegments" =>  ::Int,
                    "inputLossAction" =>  "EMIT_OUTPUT" or "PAUSE_OUTPUT",
                    "ivInManifest" =>  "EXCLUDE" or "INCLUDE",
                    "ivSource" =>  "EXPLICIT" or "FOLLOWS_SEGMENT_NUMBER",
                    "keepSegments" =>  ::Int,
                    "keyFormat" =>  ::String,
                    "keyFormatVersions" =>  ::String,
                    "keyProviderSettings" =>  ["staticKeySettings" =>  [
                            "keyProviderServer" =>  [
                                "passwordParam" =>  ::String,
                                "uri" => <required> ::String,
                                "username" =>  ::String
                            ],
                            "staticKeyValue" => <required> ::String
                        ]],
                    "manifestCompression" =>  "GZIP" or "NONE",
                    "manifestDurationFormat" =>  "FLOATING_POINT" or "INTEGER",
                    "minSegmentLength" =>  ::Int,
                    "mode" =>  "LIVE" or "VOD",
                    "outputSelection" =>  "MANIFESTS_AND_SEGMENTS" or "SEGMENTS_ONLY",
                    "programDateTime" =>  "EXCLUDE" or "INCLUDE",
                    "programDateTimePeriod" =>  ::Int,
                    "segmentLength" =>  ::Int,
                    "segmentationMode" =>  "USE_INPUT_SEGMENTATION" or "USE_SEGMENT_DURATION",
                    "segmentsPerSubdirectory" =>  ::Int,
                    "streamInfResolution" =>  "EXCLUDE" or "INCLUDE",
                    "timedMetadataId3Frame" =>  "NONE", "PRIV" or "TDRL",
                    "timedMetadataId3Period" =>  ::Int,
                    "timestampDeltaMilliseconds" =>  ::Int,
                    "tsFileMode" =>  "SEGMENTED_FILES" or "SINGLE_FILE"
                ],
                "msSmoothGroupSettings" =>  [
                    "acquisitionPointId" =>  ::String,
                    "audioOnlyTimecodeControl" =>  "PASSTHROUGH" or "USE_CONFIGURED_CLOCK",
                    "certificateMode" =>  "SELF_SIGNED" or "VERIFY_AUTHENTICITY",
                    "connectionRetryInterval" =>  ::Int,
                    "destination" => <required> ["destinationRefId" =>  ::String],
                    "eventId" =>  ::String,
                    "eventIdMode" =>  "NO_EVENT_ID", "USE_CONFIGURED" or "USE_TIMESTAMP",
                    "eventStopBehavior" =>  "NONE" or "SEND_EOS",
                    "filecacheDuration" =>  ::Int,
                    "fragmentLength" =>  ::Int,
                    "inputLossAction" =>  "EMIT_OUTPUT" or "PAUSE_OUTPUT",
                    "numRetries" =>  ::Int,
                    "restartDelay" =>  ::Int,
                    "segmentationMode" =>  "USE_INPUT_SEGMENTATION" or "USE_SEGMENT_DURATION",
                    "sendDelayMs" =>  ::Int,
                    "sparseTrackType" =>  "NONE" or "SCTE_35",
                    "streamManifestBehavior" =>  "DO_NOT_SEND" or "SEND",
                    "timestampOffset" =>  ::String,
                    "timestampOffsetMode" =>  "USE_CONFIGURED_OFFSET" or "USE_EVENT_START_DATE"
                ],
                "rtmpGroupSettings" =>  [
                    "authenticationScheme" =>  "AKAMAI" or "COMMON",
                    "cacheFullBehavior" =>  "DISCONNECT_IMMEDIATELY" or "WAIT_FOR_SERVER",
                    "cacheLength" =>  ::Int,
                    "captionData" =>  "ALL", "FIELD1_608" or "FIELD1_AND_FIELD2_608",
                    "restartDelay" =>  ::Int
                ],
                "udpGroupSettings" =>  [
                    "inputLossAction" =>  "DROP_PROGRAM", "DROP_TS" or "EMIT_PROGRAM",
                    "timedMetadataId3Frame" =>  "NONE", "PRIV" or "TDRL",
                    "timedMetadataId3Period" =>  ::Int
                ]
            ],
            "outputs" => <required> [[
                "audioDescriptionNames" =>  [::String, ...],
                "captionDescriptionNames" =>  [::String, ...],
                "outputName" =>  ::String,
                "outputSettings" => <required> [
                    "archiveOutputSettings" =>  [
                        "containerSettings" => <required> ["m2tsSettings" =>  [
                                "absentInputAudioBehavior" =>  "DROP" or "ENCODE_SILENCE",
                                "arib" =>  "DISABLED" or "ENABLED",
                                "aribCaptionsPid" =>  ::String,
                                "aribCaptionsPidControl" =>  "AUTO" or "USE_CONFIGURED",
                                "audioBufferModel" =>  "ATSC" or "DVB",
                                "audioFramesPerPes" =>  ::Int,
                                "audioPids" =>  ::String,
                                "audioStreamType" =>  "ATSC" or "DVB",
                                "bitrate" =>  ::Int,
                                "bufferModel" =>  "MULTIPLEX" or "NONE",
                                "ccDescriptor" =>  "DISABLED" or "ENABLED",
                                "dvbNitSettings" =>  [
                                    "networkId" => <required> ::Int,
                                    "networkName" => <required> ::String,
                                    "repInterval" =>  ::Int
                                ],
                                "dvbSdtSettings" =>  [
                                    "outputSdt" =>  "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL" or "SDT_NONE",
                                    "repInterval" =>  ::Int,
                                    "serviceName" =>  ::String,
                                    "serviceProviderName" =>  ::String
                                ],
                                "dvbSubPids" =>  ::String,
                                "dvbTdtSettings" =>  ["repInterval" =>  ::Int],
                                "dvbTeletextPid" =>  ::String,
                                "ebif" =>  "NONE" or "PASSTHROUGH",
                                "ebpAudioInterval" =>  "VIDEO_AND_FIXED_INTERVALS" or "VIDEO_INTERVAL",
                                "ebpLookaheadMs" =>  ::Int,
                                "ebpPlacement" =>  "VIDEO_AND_AUDIO_PIDS" or "VIDEO_PID",
                                "ecmPid" =>  ::String,
                                "esRateInPes" =>  "EXCLUDE" or "INCLUDE",
                                "etvPlatformPid" =>  ::String,
                                "etvSignalPid" =>  ::String,
                                "fragmentTime" =>  double,
                                "klv" =>  "NONE" or "PASSTHROUGH",
                                "klvDataPids" =>  ::String,
                                "nullPacketBitrate" =>  double,
                                "patInterval" =>  ::Int,
                                "pcrControl" =>  "CONFIGURED_PCR_PERIOD" or "PCR_EVERY_PES_PACKET",
                                "pcrPeriod" =>  ::Int,
                                "pcrPid" =>  ::String,
                                "pmtInterval" =>  ::Int,
                                "pmtPid" =>  ::String,
                                "programNum" =>  ::Int,
                                "rateMode" =>  "CBR" or "VBR",
                                "scte27Pids" =>  ::String,
                                "scte35Control" =>  "NONE" or "PASSTHROUGH",
                                "scte35Pid" =>  ::String,
                                "segmentationMarkers" =>  "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT" or "RAI_SEGSTART",
                                "segmentationStyle" =>  "MAINTAIN_CADENCE" or "RESET_CADENCE",
                                "segmentationTime" =>  double,
                                "timedMetadataBehavior" =>  "NO_PASSTHROUGH" or "PASSTHROUGH",
                                "timedMetadataPid" =>  ::String,
                                "transportStreamId" =>  ::Int,
                                "videoPid" =>  ::String
                            ]],
                        "extension" =>  ::String,
                        "nameModifier" =>  ::String
                    ],
                    "hlsOutputSettings" =>  [
                        "hlsSettings" => <required> [
                            "audioOnlyHlsSettings" =>  [
                                "audioGroupId" =>  ::String,
                                "audioOnlyImage" =>  [
                                    "passwordParam" =>  ::String,
                                    "uri" => <required> ::String,
                                    "username" =>  ::String
                                ],
                                "audioTrackType" =>  "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT" or "AUDIO_ONLY_VARIANT_STREAM"
                            ],
                            "standardHlsSettings" =>  [
                                "audioRenditionSets" =>  ::String,
                                "m3u8Settings" => <required> [
                                    "audioFramesPerPes" =>  ::Int,
                                    "audioPids" =>  ::String,
                                    "ecmPid" =>  ::String,
                                    "patInterval" =>  ::Int,
                                    "pcrControl" =>  "CONFIGURED_PCR_PERIOD" or "PCR_EVERY_PES_PACKET",
                                    "pcrPeriod" =>  ::Int,
                                    "pcrPid" =>  ::String,
                                    "pmtInterval" =>  ::Int,
                                    "pmtPid" =>  ::String,
                                    "programNum" =>  ::Int,
                                    "scte35Behavior" =>  "NO_PASSTHROUGH" or "PASSTHROUGH",
                                    "scte35Pid" =>  ::String,
                                    "timedMetadataBehavior" =>  "NO_PASSTHROUGH" or "PASSTHROUGH",
                                    "timedMetadataPid" =>  ::String,
                                    "transportStreamId" =>  ::Int,
                                    "videoPid" =>  ::String
                                ]
                            ]
                        ],
                        "nameModifier" =>  ::String,
                        "segmentModifier" =>  ::String
                    ],
                    "msSmoothOutputSettings" =>  ["nameModifier" =>  ::String],
                    "rtmpOutputSettings" =>  [
                        "certificateMode" =>  "SELF_SIGNED" or "VERIFY_AUTHENTICITY",
                        "connectionRetryInterval" =>  ::Int,
                        "destination" => <required> ["destinationRefId" =>  ::String],
                        "numRetries" =>  ::Int
                    ],
                    "udpOutputSettings" =>  [
                        "bufferMsec" =>  ::Int,
                        "containerSettings" => <required> ["m2tsSettings" =>  [
                                "absentInputAudioBehavior" =>  "DROP" or "ENCODE_SILENCE",
                                "arib" =>  "DISABLED" or "ENABLED",
                                "aribCaptionsPid" =>  ::String,
                                "aribCaptionsPidControl" =>  "AUTO" or "USE_CONFIGURED",
                                "audioBufferModel" =>  "ATSC" or "DVB",
                                "audioFramesPerPes" =>  ::Int,
                                "audioPids" =>  ::String,
                                "audioStreamType" =>  "ATSC" or "DVB",
                                "bitrate" =>  ::Int,
                                "bufferModel" =>  "MULTIPLEX" or "NONE",
                                "ccDescriptor" =>  "DISABLED" or "ENABLED",
                                "dvbNitSettings" =>  [
                                    "networkId" => <required> ::Int,
                                    "networkName" => <required> ::String,
                                    "repInterval" =>  ::Int
                                ],
                                "dvbSdtSettings" =>  [
                                    "outputSdt" =>  "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL" or "SDT_NONE",
                                    "repInterval" =>  ::Int,
                                    "serviceName" =>  ::String,
                                    "serviceProviderName" =>  ::String
                                ],
                                "dvbSubPids" =>  ::String,
                                "dvbTdtSettings" =>  ["repInterval" =>  ::Int],
                                "dvbTeletextPid" =>  ::String,
                                "ebif" =>  "NONE" or "PASSTHROUGH",
                                "ebpAudioInterval" =>  "VIDEO_AND_FIXED_INTERVALS" or "VIDEO_INTERVAL",
                                "ebpLookaheadMs" =>  ::Int,
                                "ebpPlacement" =>  "VIDEO_AND_AUDIO_PIDS" or "VIDEO_PID",
                                "ecmPid" =>  ::String,
                                "esRateInPes" =>  "EXCLUDE" or "INCLUDE",
                                "etvPlatformPid" =>  ::String,
                                "etvSignalPid" =>  ::String,
                                "fragmentTime" =>  double,
                                "klv" =>  "NONE" or "PASSTHROUGH",
                                "klvDataPids" =>  ::String,
                                "nullPacketBitrate" =>  double,
                                "patInterval" =>  ::Int,
                                "pcrControl" =>  "CONFIGURED_PCR_PERIOD" or "PCR_EVERY_PES_PACKET",
                                "pcrPeriod" =>  ::Int,
                                "pcrPid" =>  ::String,
                                "pmtInterval" =>  ::Int,
                                "pmtPid" =>  ::String,
                                "programNum" =>  ::Int,
                                "rateMode" =>  "CBR" or "VBR",
                                "scte27Pids" =>  ::String,
                                "scte35Control" =>  "NONE" or "PASSTHROUGH",
                                "scte35Pid" =>  ::String,
                                "segmentationMarkers" =>  "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT" or "RAI_SEGSTART",
                                "segmentationStyle" =>  "MAINTAIN_CADENCE" or "RESET_CADENCE",
                                "segmentationTime" =>  double,
                                "timedMetadataBehavior" =>  "NO_PASSTHROUGH" or "PASSTHROUGH",
                                "timedMetadataPid" =>  ::String,
                                "transportStreamId" =>  ::Int,
                                "videoPid" =>  ::String
                            ]],
                        "destination" => <required> ["destinationRefId" =>  ::String],
                        "fecOutputSettings" =>  [
                            "columnDepth" =>  ::Int,
                            "includeFec" =>  "COLUMN" or "COLUMN_AND_ROW",
                            "rowLength" =>  ::Int
                        ]
                    ]
                ],
                "videoDescriptionName" =>  ::String
            ], ...]
        ], ...],
        "timecodeConfig" => <required> [
            "source" => <required> "EMBEDDED", "SYSTEMCLOCK" or "ZEROBASED",
            "syncThreshold" =>  ::Int
        ],
        "videoDescriptions" => <required> [[
            "codecSettings" =>  ["h264Settings" =>  [
                    "adaptiveQuantization" =>  "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM" or "OFF",
                    "afdSignaling" =>  "AUTO", "FIXED" or "NONE",
                    "bitrate" =>  ::Int,
                    "bufFillPct" =>  ::Int,
                    "bufSize" =>  ::Int,
                    "colorMetadata" =>  "IGNORE" or "INSERT",
                    "entropyEncoding" =>  "CABAC" or "CAVLC",
                    "fixedAfd" =>  "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110" or "AFD_1111",
                    "flickerAq" =>  "DISABLED" or "ENABLED",
                    "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "framerateDenominator" =>  ::Int,
                    "framerateNumerator" =>  ::Int,
                    "gopBReference" =>  "DISABLED" or "ENABLED",
                    "gopClosedCadence" =>  ::Int,
                    "gopNumBFrames" =>  ::Int,
                    "gopSize" =>  double,
                    "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                    "level" =>  "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2" or "H264_LEVEL_AUTO",
                    "lookAheadRateControl" =>  "HIGH", "LOW" or "MEDIUM",
                    "maxBitrate" =>  ::Int,
                    "minIInterval" =>  ::Int,
                    "numRefFrames" =>  ::Int,
                    "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "parDenominator" =>  ::Int,
                    "parNumerator" =>  ::Int,
                    "profile" =>  "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT" or "MAIN",
                    "rateControlMode" =>  "CBR" or "VBR",
                    "scanType" =>  "INTERLACED" or "PROGRESSIVE",
                    "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                    "slices" =>  ::Int,
                    "softness" =>  ::Int,
                    "spatialAq" =>  "DISABLED" or "ENABLED",
                    "syntax" =>  "DEFAULT" or "RP2027",
                    "temporalAq" =>  "DISABLED" or "ENABLED",
                    "timecodeInsertion" =>  "DISABLED" or "PIC_TIMING_SEI"
                ]],
            "height" =>  ::Int,
            "name" => <required> ::String,
            "respondToAfd" =>  "NONE", "PASSTHROUGH" or "RESPOND",
            "scalingBehavior" =>  "DEFAULT" or "STRETCH_TO_OUTPUT",
            "sharpness" =>  ::Int,
            "width" =>  ::Int
        ], ...]
    ]
```

## `inputAttachments = [[ ... ], ...]`
List of input attachments for channel.
```
 inputAttachments = [[
        "inputId" =>  ::String,
        "inputSettings" =>  [
            "audioSelectors" =>  [[
                "name" => <required> ::String,
                "selectorSettings" =>  [
                    "audioLanguageSelection" =>  [
                        "languageCode" => <required> ::String,
                        "languageSelectionPolicy" =>  "LOOSE" or "STRICT"
                    ],
                    "audioPidSelection" =>  ["pid" => <required> ::Int]
                ]
            ], ...],
            "captionSelectors" =>  [[
                "languageCode" =>  ::String,
                "name" => <required> ::String,
                "selectorSettings" =>  [
                    "aribSourceSettings" =>  [
                        
                    ],
                    "dvbSubSourceSettings" =>  ["pid" =>  ::Int],
                    "embeddedSourceSettings" =>  [
                        "convert608To708" =>  "DISABLED" or "UPCONVERT",
                        "scte20Detection" =>  "AUTO" or "OFF",
                        "source608ChannelNumber" =>  ::Int,
                        "source608TrackNumber" =>  ::Int
                    ],
                    "scte20SourceSettings" =>  [
                        "convert608To708" =>  "DISABLED" or "UPCONVERT",
                        "source608ChannelNumber" =>  ::Int
                    ],
                    "scte27SourceSettings" =>  ["pid" =>  ::Int],
                    "teletextSourceSettings" =>  ["pageNumber" =>  ::String]
                ]
            ], ...],
            "deblockFilter" =>  "DISABLED" or "ENABLED",
            "denoiseFilter" =>  "DISABLED" or "ENABLED",
            "filterStrength" =>  ::Int,
            "inputFilter" =>  "AUTO", "DISABLED" or "FORCED",
            "networkInputSettings" =>  [
                "hlsInputSettings" =>  [
                    "bandwidth" =>  ::Int,
                    "bufferSegments" =>  ::Int,
                    "retries" =>  ::Int,
                    "retryInterval" =>  ::Int
                ],
                "serverValidation" =>  "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME" or "CHECK_CRYPTOGRAPHY_ONLY"
            ],
            "sourceEndBehavior" =>  "CONTINUE" or "LOOP",
            "videoSelector" =>  [
                "colorSpace" =>  "FOLLOW", "REC_601" or "REC_709",
                "colorSpaceUsage" =>  "FALLBACK" or "FORCE",
                "selectorSettings" =>  [
                    "videoSelectorPid" =>  ["pid" =>  ::Int],
                    "videoSelectorProgramId" =>  ["programId" =>  ::Int]
                ]
            ]
        ]
    ], ...]
```

## `inputSpecification = [ ... ]`
Specification of input for this channel (max. bitrate, resolution, codec, etc.)
```
 inputSpecification = [
        "codec" =>  "MPEG2", "AVC" or "HEVC",
        "maximumBitrate" =>  "MAX_10_MBPS", "MAX_20_MBPS" or "MAX_50_MBPS",
        "resolution" =>  "SD", "HD" or "UHD"
    ]
```

## `logLevel = "ERROR", "WARNING", "INFO", "DEBUG" or "DISABLED"`
The log level to write to CloudWatch Logs.


## `name = ::String`
Name of channel.


## `requestId = ::String`
Unique request ID to be specified. This is needed to prevent retries from creating multiple resources.


## `reserved = ::String`
Deprecated field that's only usable by whitelisted customers.


## `roleArn = ::String`
An optional Amazon Resource Name (ARN) of the role to assume when running the Channel.




# Returns

`CreateChannelResponse`

# Exceptions

`BadRequestException`, `UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `GatewayTimeoutException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateChannel)
"""
@inline create_channel(aws::AWSConfig=default_aws_config(); args...) = create_channel(aws, args)

@inline create_channel(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "POST", "/prod/channels", args)

@inline create_channel(args) = create_channel(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.create_input
    create_input([::AWSConfig], arguments::Dict)
    create_input([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "POST", "/prod/inputs", arguments::Dict)
    medialive([::AWSConfig], "POST", "/prod/inputs", <keyword arguments>)

# CreateInput Operation

Create an input

# Arguments

## `destinations = [["streamName" =>  ::String], ...]`
Destination settings for PUSH type inputs.


## `inputSecurityGroups = [::String, ...]`
A list of security groups referenced by IDs to attach to the input.


## `name = ::String`
Name of the input.


## `requestId = ::String`
Unique identifier of the request to ensure the request is handled exactly once in case of retries.


## `sources = [[ ... ], ...]`
The source URLs for a PULL-type input. Every PULL type input needs exactly two source URLs for redundancy. Only specify sources for PULL type Inputs. Leave Destinations empty.
```
 sources = [[
        "passwordParam" =>  ::String,
        "url" =>  ::String,
        "username" =>  ::String
    ], ...]
```

## `type = "UDP_PUSH", "RTP_PUSH", "RTMP_PUSH", "RTMP_PULL" or "URL_PULL"`





# Returns

`CreateInputResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInput)
"""
@inline create_input(aws::AWSConfig=default_aws_config(); args...) = create_input(aws, args)

@inline create_input(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "POST", "/prod/inputs", args)

@inline create_input(args) = create_input(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.create_input_security_group
    create_input_security_group([::AWSConfig], arguments::Dict)
    create_input_security_group([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "POST", "/prod/inputSecurityGroups", arguments::Dict)
    medialive([::AWSConfig], "POST", "/prod/inputSecurityGroups", <keyword arguments>)

# CreateInputSecurityGroup Operation

Creates a Input Security Group

# Arguments

## `whitelistRules = [["cidr" =>  ::String], ...]`
List of IPv4 CIDR addresses to whitelist




# Returns

`CreateInputSecurityGroupResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInputSecurityGroup)
"""
@inline create_input_security_group(aws::AWSConfig=default_aws_config(); args...) = create_input_security_group(aws, args)

@inline create_input_security_group(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "POST", "/prod/inputSecurityGroups", args)

@inline create_input_security_group(args) = create_input_security_group(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.delete_channel
    delete_channel([::AWSConfig], arguments::Dict)
    delete_channel([::AWSConfig]; channelId=)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "DELETE", "/prod/channels/{channelId}", arguments::Dict)
    medialive([::AWSConfig], "DELETE", "/prod/channels/{channelId}", channelId=)

# DeleteChannel Operation

Starts deletion of channel. The associated outputs are also deleted.

# Arguments

## `channelId = ::String` -- *Required*
Unique ID of the channel.




# Returns

`DeleteChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteChannel)
"""
@inline delete_channel(aws::AWSConfig=default_aws_config(); args...) = delete_channel(aws, args)

@inline delete_channel(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "DELETE", "/prod/channels/{channelId}", args)

@inline delete_channel(args) = delete_channel(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.delete_input
    delete_input([::AWSConfig], arguments::Dict)
    delete_input([::AWSConfig]; inputId=)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "DELETE", "/prod/inputs/{inputId}", arguments::Dict)
    medialive([::AWSConfig], "DELETE", "/prod/inputs/{inputId}", inputId=)

# DeleteInput Operation

Deletes the input end point

# Arguments

## `inputId = ::String` -- *Required*
Unique ID of the input




# Returns

`DeleteInputResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteInput)
"""
@inline delete_input(aws::AWSConfig=default_aws_config(); args...) = delete_input(aws, args)

@inline delete_input(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "DELETE", "/prod/inputs/{inputId}", args)

@inline delete_input(args) = delete_input(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.delete_input_security_group
    delete_input_security_group([::AWSConfig], arguments::Dict)
    delete_input_security_group([::AWSConfig]; inputSecurityGroupId=)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "DELETE", "/prod/inputSecurityGroups/{inputSecurityGroupId}", arguments::Dict)
    medialive([::AWSConfig], "DELETE", "/prod/inputSecurityGroups/{inputSecurityGroupId}", inputSecurityGroupId=)

# DeleteInputSecurityGroup Operation

Deletes an Input Security Group

# Arguments

## `inputSecurityGroupId = ::String` -- *Required*
The Input Security Group to delete




# Returns

`DeleteInputSecurityGroupResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteInputSecurityGroup)
"""
@inline delete_input_security_group(aws::AWSConfig=default_aws_config(); args...) = delete_input_security_group(aws, args)

@inline delete_input_security_group(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "DELETE", "/prod/inputSecurityGroups/{inputSecurityGroupId}", args)

@inline delete_input_security_group(args) = delete_input_security_group(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.delete_reservation
    delete_reservation([::AWSConfig], arguments::Dict)
    delete_reservation([::AWSConfig]; reservationId=)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "DELETE", "/prod/reservations/{reservationId}", arguments::Dict)
    medialive([::AWSConfig], "DELETE", "/prod/reservations/{reservationId}", reservationId=)

# DeleteReservation Operation

Delete an expired reservation.

# Arguments

## `reservationId = ::String` -- *Required*
Unique reservation ID, e.g. '1234567'




# Returns

`DeleteReservationResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteReservation)
"""
@inline delete_reservation(aws::AWSConfig=default_aws_config(); args...) = delete_reservation(aws, args)

@inline delete_reservation(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "DELETE", "/prod/reservations/{reservationId}", args)

@inline delete_reservation(args) = delete_reservation(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.describe_channel
    describe_channel([::AWSConfig], arguments::Dict)
    describe_channel([::AWSConfig]; channelId=)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "GET", "/prod/channels/{channelId}", arguments::Dict)
    medialive([::AWSConfig], "GET", "/prod/channels/{channelId}", channelId=)

# DescribeChannel Operation

Gets details about a channel

# Arguments

## `channelId = ::String` -- *Required*
channel ID




# Returns

`DescribeChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeChannel)
"""
@inline describe_channel(aws::AWSConfig=default_aws_config(); args...) = describe_channel(aws, args)

@inline describe_channel(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "GET", "/prod/channels/{channelId}", args)

@inline describe_channel(args) = describe_channel(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.describe_input
    describe_input([::AWSConfig], arguments::Dict)
    describe_input([::AWSConfig]; inputId=)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "GET", "/prod/inputs/{inputId}", arguments::Dict)
    medialive([::AWSConfig], "GET", "/prod/inputs/{inputId}", inputId=)

# DescribeInput Operation

Produces details about an input

# Arguments

## `inputId = ::String` -- *Required*
Unique ID of the input




# Returns

`DescribeInputResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInput)
"""
@inline describe_input(aws::AWSConfig=default_aws_config(); args...) = describe_input(aws, args)

@inline describe_input(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "GET", "/prod/inputs/{inputId}", args)

@inline describe_input(args) = describe_input(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.describe_input_security_group
    describe_input_security_group([::AWSConfig], arguments::Dict)
    describe_input_security_group([::AWSConfig]; inputSecurityGroupId=)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "GET", "/prod/inputSecurityGroups/{inputSecurityGroupId}", arguments::Dict)
    medialive([::AWSConfig], "GET", "/prod/inputSecurityGroups/{inputSecurityGroupId}", inputSecurityGroupId=)

# DescribeInputSecurityGroup Operation

Produces a summary of an Input Security Group

# Arguments

## `inputSecurityGroupId = ::String` -- *Required*
The id of the Input Security Group to describe




# Returns

`DescribeInputSecurityGroupResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputSecurityGroup)
"""
@inline describe_input_security_group(aws::AWSConfig=default_aws_config(); args...) = describe_input_security_group(aws, args)

@inline describe_input_security_group(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "GET", "/prod/inputSecurityGroups/{inputSecurityGroupId}", args)

@inline describe_input_security_group(args) = describe_input_security_group(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.describe_offering
    describe_offering([::AWSConfig], arguments::Dict)
    describe_offering([::AWSConfig]; offeringId=)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "GET", "/prod/offerings/{offeringId}", arguments::Dict)
    medialive([::AWSConfig], "GET", "/prod/offerings/{offeringId}", offeringId=)

# DescribeOffering Operation

Get details for an offering.

# Arguments

## `offeringId = ::String` -- *Required*
Unique offering ID, e.g. '87654321'




# Returns

`DescribeOfferingResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeOffering)
"""
@inline describe_offering(aws::AWSConfig=default_aws_config(); args...) = describe_offering(aws, args)

@inline describe_offering(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "GET", "/prod/offerings/{offeringId}", args)

@inline describe_offering(args) = describe_offering(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.describe_reservation
    describe_reservation([::AWSConfig], arguments::Dict)
    describe_reservation([::AWSConfig]; reservationId=)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "GET", "/prod/reservations/{reservationId}", arguments::Dict)
    medialive([::AWSConfig], "GET", "/prod/reservations/{reservationId}", reservationId=)

# DescribeReservation Operation

Get details for a reservation.

# Arguments

## `reservationId = ::String` -- *Required*
Unique reservation ID, e.g. '1234567'




# Returns

`DescribeReservationResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeReservation)
"""
@inline describe_reservation(aws::AWSConfig=default_aws_config(); args...) = describe_reservation(aws, args)

@inline describe_reservation(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "GET", "/prod/reservations/{reservationId}", args)

@inline describe_reservation(args) = describe_reservation(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.list_channels
    list_channels([::AWSConfig], arguments::Dict)
    list_channels([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "GET", "/prod/channels", arguments::Dict)
    medialive([::AWSConfig], "GET", "/prod/channels", <keyword arguments>)

# ListChannels Operation

Produces list of channels that have been created

# Arguments

## `maxResults = ::Int`



## `nextToken = ::String`





# Returns

`ListChannelsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListChannels)
"""
@inline list_channels(aws::AWSConfig=default_aws_config(); args...) = list_channels(aws, args)

@inline list_channels(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "GET", "/prod/channels", args)

@inline list_channels(args) = list_channels(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.list_input_security_groups
    list_input_security_groups([::AWSConfig], arguments::Dict)
    list_input_security_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "GET", "/prod/inputSecurityGroups", arguments::Dict)
    medialive([::AWSConfig], "GET", "/prod/inputSecurityGroups", <keyword arguments>)

# ListInputSecurityGroups Operation

Produces a list of Input Security Groups for an account

# Arguments

## `maxResults = ::Int`



## `nextToken = ::String`





# Returns

`ListInputSecurityGroupsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputSecurityGroups)
"""
@inline list_input_security_groups(aws::AWSConfig=default_aws_config(); args...) = list_input_security_groups(aws, args)

@inline list_input_security_groups(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "GET", "/prod/inputSecurityGroups", args)

@inline list_input_security_groups(args) = list_input_security_groups(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.list_inputs
    list_inputs([::AWSConfig], arguments::Dict)
    list_inputs([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "GET", "/prod/inputs", arguments::Dict)
    medialive([::AWSConfig], "GET", "/prod/inputs", <keyword arguments>)

# ListInputs Operation

Produces list of inputs that have been created

# Arguments

## `maxResults = ::Int`



## `nextToken = ::String`





# Returns

`ListInputsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputs)
"""
@inline list_inputs(aws::AWSConfig=default_aws_config(); args...) = list_inputs(aws, args)

@inline list_inputs(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "GET", "/prod/inputs", args)

@inline list_inputs(args) = list_inputs(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.list_offerings
    list_offerings([::AWSConfig], arguments::Dict)
    list_offerings([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "GET", "/prod/offerings", arguments::Dict)
    medialive([::AWSConfig], "GET", "/prod/offerings", <keyword arguments>)

# ListOfferings Operation

List offerings available for purchase.

# Arguments

## `channelConfiguration = ::String`
Filter to offerings that match the configuration of an existing channel, e.g. '2345678' (a channel ID)


## `codec = ::String`
Filter by codec, 'AVC', 'HEVC', 'MPEG2', or 'AUDIO'


## `maxResults = ::Int`



## `maximumBitrate = ::String`
Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'


## `maximumFramerate = ::String`
Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'


## `nextToken = ::String`



## `resolution = ::String`
Filter by resolution, 'SD', 'HD', or 'UHD'


## `resourceType = ::String`
Filter by resource type, 'INPUT', 'OUTPUT', or 'CHANNEL'


## `specialFeature = ::String`
Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'


## `videoQuality = ::String`
Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'




# Returns

`ListOfferingsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListOfferings)
"""
@inline list_offerings(aws::AWSConfig=default_aws_config(); args...) = list_offerings(aws, args)

@inline list_offerings(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "GET", "/prod/offerings", args)

@inline list_offerings(args) = list_offerings(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.list_reservations
    list_reservations([::AWSConfig], arguments::Dict)
    list_reservations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "GET", "/prod/reservations", arguments::Dict)
    medialive([::AWSConfig], "GET", "/prod/reservations", <keyword arguments>)

# ListReservations Operation

List purchased reservations.

# Arguments

## `codec = ::String`
Filter by codec, 'AVC', 'HEVC', 'MPEG2', or 'AUDIO'


## `maxResults = ::Int`



## `maximumBitrate = ::String`
Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'


## `maximumFramerate = ::String`
Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'


## `nextToken = ::String`



## `resolution = ::String`
Filter by resolution, 'SD', 'HD', or 'UHD'


## `resourceType = ::String`
Filter by resource type, 'INPUT', 'OUTPUT', or 'CHANNEL'


## `specialFeature = ::String`
Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'


## `videoQuality = ::String`
Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'




# Returns

`ListReservationsResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `GatewayTimeoutException` or `TooManyRequestsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListReservations)
"""
@inline list_reservations(aws::AWSConfig=default_aws_config(); args...) = list_reservations(aws, args)

@inline list_reservations(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "GET", "/prod/reservations", args)

@inline list_reservations(args) = list_reservations(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.purchase_offering
    purchase_offering([::AWSConfig], arguments::Dict)
    purchase_offering([::AWSConfig]; offeringId=, <keyword arguments>)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "POST", "/prod/offerings/{offeringId}/purchase", arguments::Dict)
    medialive([::AWSConfig], "POST", "/prod/offerings/{offeringId}/purchase", offeringId=, <keyword arguments>)

# PurchaseOffering Operation

Purchase an offering and create a reservation.

# Arguments

## `count = ::Int`
Number of resources


## `name = ::String`
Name for the new reservation


## `offeringId = ::String` -- *Required*
Offering to purchase, e.g. '87654321'


## `requestId = ::String`
Unique request ID to be specified. This is needed to prevent retries from creating multiple resources.




# Returns

`PurchaseOfferingResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/PurchaseOffering)
"""
@inline purchase_offering(aws::AWSConfig=default_aws_config(); args...) = purchase_offering(aws, args)

@inline purchase_offering(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "POST", "/prod/offerings/{offeringId}/purchase", args)

@inline purchase_offering(args) = purchase_offering(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.start_channel
    start_channel([::AWSConfig], arguments::Dict)
    start_channel([::AWSConfig]; channelId=)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "POST", "/prod/channels/{channelId}/start", arguments::Dict)
    medialive([::AWSConfig], "POST", "/prod/channels/{channelId}/start", channelId=)

# StartChannel Operation

Starts an existing channel

# Arguments

## `channelId = ::String` -- *Required*
A request to start a channel




# Returns

`StartChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StartChannel)
"""
@inline start_channel(aws::AWSConfig=default_aws_config(); args...) = start_channel(aws, args)

@inline start_channel(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "POST", "/prod/channels/{channelId}/start", args)

@inline start_channel(args) = start_channel(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.stop_channel
    stop_channel([::AWSConfig], arguments::Dict)
    stop_channel([::AWSConfig]; channelId=)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "POST", "/prod/channels/{channelId}/stop", arguments::Dict)
    medialive([::AWSConfig], "POST", "/prod/channels/{channelId}/stop", channelId=)

# StopChannel Operation

Stops a running channel

# Arguments

## `channelId = ::String` -- *Required*
A request to stop a running channel




# Returns

`StopChannelResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException`, `TooManyRequestsException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StopChannel)
"""
@inline stop_channel(aws::AWSConfig=default_aws_config(); args...) = stop_channel(aws, args)

@inline stop_channel(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "POST", "/prod/channels/{channelId}/stop", args)

@inline stop_channel(args) = stop_channel(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.update_channel
    update_channel([::AWSConfig], arguments::Dict)
    update_channel([::AWSConfig]; channelId=, <keyword arguments>)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "PUT", "/prod/channels/{channelId}", arguments::Dict)
    medialive([::AWSConfig], "PUT", "/prod/channels/{channelId}", channelId=, <keyword arguments>)

# UpdateChannel Operation

Updates a channel.

# Arguments

## `channelId = ::String` -- *Required*
channel ID


## `destinations = [[ ... ], ...]`
A list of output destinations for this channel.
```
 destinations = [[
        "id" =>  ::String,
        "settings" =>  [[
            "passwordParam" =>  ::String,
            "streamName" =>  ::String,
            "url" =>  ::String,
            "username" =>  ::String
        ], ...]
    ], ...]
```

## `encoderSettings = [ ... ]`
The encoder settings for this channel.
```
 encoderSettings = [
        "audioDescriptions" => <required> [[
            "audioNormalizationSettings" =>  [
                "algorithm" =>  "ITU_1770_1" or "ITU_1770_2",
                "algorithmControl" =>  "CORRECT_AUDIO",
                "targetLkfs" =>  double
            ],
            "audioSelectorName" => <required> ::String,
            "audioType" =>  "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED" or "VISUAL_IMPAIRED_COMMENTARY",
            "audioTypeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
            "codecSettings" =>  [
                "aacSettings" =>  [
                    "bitrate" =>  double,
                    "codingMode" =>  "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_5_1",
                    "inputType" =>  "BROADCASTER_MIXED_AD" or "NORMAL",
                    "profile" =>  "HEV1", "HEV2" or "LC",
                    "rateControlMode" =>  "CBR" or "VBR",
                    "rawFormat" =>  "LATM_LOAS" or "NONE",
                    "sampleRate" =>  double,
                    "spec" =>  "MPEG2" or "MPEG4",
                    "vbrQuality" =>  "HIGH", "LOW", "MEDIUM_HIGH" or "MEDIUM_LOW"
                ],
                "ac3Settings" =>  [
                    "bitrate" =>  double,
                    "bitstreamMode" =>  "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED" or "VOICE_OVER",
                    "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0" or "CODING_MODE_3_2_LFE",
                    "dialnorm" =>  ::Int,
                    "drcProfile" =>  "FILM_STANDARD" or "NONE",
                    "lfeFilter" =>  "DISABLED" or "ENABLED",
                    "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED"
                ],
                "eac3Settings" =>  [
                    "attenuationControl" =>  "ATTENUATE_3_DB" or "NONE",
                    "bitrate" =>  double,
                    "bitstreamMode" =>  "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED" or "VISUALLY_IMPAIRED",
                    "codingMode" =>  "CODING_MODE_1_0", "CODING_MODE_2_0" or "CODING_MODE_3_2",
                    "dcFilter" =>  "DISABLED" or "ENABLED",
                    "dialnorm" =>  ::Int,
                    "drcLine" =>  "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE" or "SPEECH",
                    "drcRf" =>  "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE" or "SPEECH",
                    "lfeControl" =>  "LFE" or "NO_LFE",
                    "lfeFilter" =>  "DISABLED" or "ENABLED",
                    "loRoCenterMixLevel" =>  double,
                    "loRoSurroundMixLevel" =>  double,
                    "ltRtCenterMixLevel" =>  double,
                    "ltRtSurroundMixLevel" =>  double,
                    "metadataControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
                    "passthroughControl" =>  "NO_PASSTHROUGH" or "WHEN_POSSIBLE",
                    "phaseControl" =>  "NO_SHIFT" or "SHIFT_90_DEGREES",
                    "stereoDownmix" =>  "DPL2", "LO_RO", "LT_RT" or "NOT_INDICATED",
                    "surroundExMode" =>  "DISABLED", "ENABLED" or "NOT_INDICATED",
                    "surroundMode" =>  "DISABLED", "ENABLED" or "NOT_INDICATED"
                ],
                "mp2Settings" =>  [
                    "bitrate" =>  double,
                    "codingMode" =>  "CODING_MODE_1_0" or "CODING_MODE_2_0",
                    "sampleRate" =>  double
                ],
                "passThroughSettings" =>  [
                    
                ]
            ],
            "languageCode" =>  ::String,
            "languageCodeControl" =>  "FOLLOW_INPUT" or "USE_CONFIGURED",
            "name" => <required> ::String,
            "remixSettings" =>  [
                "channelMappings" => <required> [[
                    "inputChannelLevels" => <required> [[
                        "gain" => <required> ::Int,
                        "inputChannel" => <required> ::Int
                    ], ...],
                    "outputChannel" => <required> ::Int
                ], ...],
                "channelsIn" =>  ::Int,
                "channelsOut" =>  ::Int
            ],
            "streamName" =>  ::String
        ], ...],
        "availBlanking" =>  [
            "availBlankingImage" =>  [
                "passwordParam" =>  ::String,
                "uri" => <required> ::String,
                "username" =>  ::String
            ],
            "state" =>  "DISABLED" or "ENABLED"
        ],
        "availConfiguration" =>  ["availSettings" =>  [
                "scte35SpliceInsert" =>  [
                    "adAvailOffset" =>  ::Int,
                    "noRegionalBlackoutFlag" =>  "FOLLOW" or "IGNORE",
                    "webDeliveryAllowedFlag" =>  "FOLLOW" or "IGNORE"
                ],
                "scte35TimeSignalApos" =>  [
                    "adAvailOffset" =>  ::Int,
                    "noRegionalBlackoutFlag" =>  "FOLLOW" or "IGNORE",
                    "webDeliveryAllowedFlag" =>  "FOLLOW" or "IGNORE"
                ]
            ]],
        "blackoutSlate" =>  [
            "blackoutSlateImage" =>  [
                "passwordParam" =>  ::String,
                "uri" => <required> ::String,
                "username" =>  ::String
            ],
            "networkEndBlackout" =>  "DISABLED" or "ENABLED",
            "networkEndBlackoutImage" =>  [
                "passwordParam" =>  ::String,
                "uri" => <required> ::String,
                "username" =>  ::String
            ],
            "networkId" =>  ::String,
            "state" =>  "DISABLED" or "ENABLED"
        ],
        "captionDescriptions" =>  [[
            "captionSelectorName" => <required> ::String,
            "destinationSettings" =>  [
                "aribDestinationSettings" =>  [
                    
                ],
                "burnInDestinationSettings" =>  [
                    "alignment" =>  "CENTERED", "LEFT" or "SMART",
                    "backgroundColor" =>  "BLACK", "NONE" or "WHITE",
                    "backgroundOpacity" =>  ::Int,
                    "font" =>  [
                        "passwordParam" =>  ::String,
                        "uri" => <required> ::String,
                        "username" =>  ::String
                    ],
                    "fontColor" =>  "BLACK", "BLUE", "GREEN", "RED", "WHITE" or "YELLOW",
                    "fontOpacity" =>  ::Int,
                    "fontResolution" =>  ::Int,
                    "fontSize" =>  ::String,
                    "outlineColor" =>  "BLACK", "BLUE", "GREEN", "RED", "WHITE" or "YELLOW",
                    "outlineSize" =>  ::Int,
                    "shadowColor" =>  "BLACK", "NONE" or "WHITE",
                    "shadowOpacity" =>  ::Int,
                    "shadowXOffset" =>  ::Int,
                    "shadowYOffset" =>  ::Int,
                    "teletextGridControl" =>  "FIXED" or "SCALED",
                    "xPosition" =>  ::Int,
                    "yPosition" =>  ::Int
                ],
                "dvbSubDestinationSettings" =>  [
                    "alignment" =>  "CENTERED", "LEFT" or "SMART",
                    "backgroundColor" =>  "BLACK", "NONE" or "WHITE",
                    "backgroundOpacity" =>  ::Int,
                    "font" =>  [
                        "passwordParam" =>  ::String,
                        "uri" => <required> ::String,
                        "username" =>  ::String
                    ],
                    "fontColor" =>  "BLACK", "BLUE", "GREEN", "RED", "WHITE" or "YELLOW",
                    "fontOpacity" =>  ::Int,
                    "fontResolution" =>  ::Int,
                    "fontSize" =>  ::String,
                    "outlineColor" =>  "BLACK", "BLUE", "GREEN", "RED", "WHITE" or "YELLOW",
                    "outlineSize" =>  ::Int,
                    "shadowColor" =>  "BLACK", "NONE" or "WHITE",
                    "shadowOpacity" =>  ::Int,
                    "shadowXOffset" =>  ::Int,
                    "shadowYOffset" =>  ::Int,
                    "teletextGridControl" =>  "FIXED" or "SCALED",
                    "xPosition" =>  ::Int,
                    "yPosition" =>  ::Int
                ],
                "embeddedDestinationSettings" =>  [
                    
                ],
                "embeddedPlusScte20DestinationSettings" =>  [
                    
                ],
                "rtmpCaptionInfoDestinationSettings" =>  [
                    
                ],
                "scte20PlusEmbeddedDestinationSettings" =>  [
                    
                ],
                "scte27DestinationSettings" =>  [
                    
                ],
                "smpteTtDestinationSettings" =>  [
                    
                ],
                "teletextDestinationSettings" =>  [
                    
                ],
                "ttmlDestinationSettings" =>  ["styleControl" =>  "PASSTHROUGH" or "USE_CONFIGURED"],
                "webvttDestinationSettings" =>  [
                    
                ]
            ],
            "languageCode" =>  ::String,
            "languageDescription" =>  ::String,
            "name" => <required> ::String
        ], ...],
        "globalConfiguration" =>  [
            "initialAudioGain" =>  ::Int,
            "inputEndAction" =>  "NONE" or "SWITCH_AND_LOOP_INPUTS",
            "inputLossBehavior" =>  [
                "blackFrameMsec" =>  ::Int,
                "inputLossImageColor" =>  ::String,
                "inputLossImageSlate" =>  [
                    "passwordParam" =>  ::String,
                    "uri" => <required> ::String,
                    "username" =>  ::String
                ],
                "inputLossImageType" =>  "COLOR" or "SLATE",
                "repeatFrameMsec" =>  ::Int
            ],
            "outputTimingSource" =>  "INPUT_CLOCK" or "SYSTEM_CLOCK",
            "supportLowFramerateInputs" =>  "DISABLED" or "ENABLED"
        ],
        "outputGroups" => <required> [[
            "name" =>  ::String,
            "outputGroupSettings" => <required> [
                "archiveGroupSettings" =>  [
                    "destination" => <required> ["destinationRefId" =>  ::String],
                    "rolloverInterval" =>  ::Int
                ],
                "hlsGroupSettings" =>  [
                    "adMarkers" =>  ["ADOBE", "ELEMENTAL" or "ELEMENTAL_SCTE35", ...],
                    "baseUrlContent" =>  ::String,
                    "baseUrlManifest" =>  ::String,
                    "captionLanguageMappings" =>  [[
                        "captionChannel" => <required> ::Int,
                        "languageCode" => <required> ::String,
                        "languageDescription" => <required> ::String
                    ], ...],
                    "captionLanguageSetting" =>  "INSERT", "NONE" or "OMIT",
                    "clientCache" =>  "DISABLED" or "ENABLED",
                    "codecSpecification" =>  "RFC_4281" or "RFC_6381",
                    "constantIv" =>  ::String,
                    "destination" => <required> ["destinationRefId" =>  ::String],
                    "directoryStructure" =>  "SINGLE_DIRECTORY" or "SUBDIRECTORY_PER_STREAM",
                    "encryptionType" =>  "AES128" or "SAMPLE_AES",
                    "hlsCdnSettings" =>  [
                        "hlsAkamaiSettings" =>  [
                            "connectionRetryInterval" =>  ::Int,
                            "filecacheDuration" =>  ::Int,
                            "httpTransferMode" =>  "CHUNKED" or "NON_CHUNKED",
                            "numRetries" =>  ::Int,
                            "restartDelay" =>  ::Int,
                            "salt" =>  ::String,
                            "token" =>  ::String
                        ],
                        "hlsBasicPutSettings" =>  [
                            "connectionRetryInterval" =>  ::Int,
                            "filecacheDuration" =>  ::Int,
                            "numRetries" =>  ::Int,
                            "restartDelay" =>  ::Int
                        ],
                        "hlsMediaStoreSettings" =>  [
                            "connectionRetryInterval" =>  ::Int,
                            "filecacheDuration" =>  ::Int,
                            "mediaStoreStorageClass" =>  "TEMPORAL",
                            "numRetries" =>  ::Int,
                            "restartDelay" =>  ::Int
                        ],
                        "hlsWebdavSettings" =>  [
                            "connectionRetryInterval" =>  ::Int,
                            "filecacheDuration" =>  ::Int,
                            "httpTransferMode" =>  "CHUNKED" or "NON_CHUNKED",
                            "numRetries" =>  ::Int,
                            "restartDelay" =>  ::Int
                        ]
                    ],
                    "indexNSegments" =>  ::Int,
                    "inputLossAction" =>  "EMIT_OUTPUT" or "PAUSE_OUTPUT",
                    "ivInManifest" =>  "EXCLUDE" or "INCLUDE",
                    "ivSource" =>  "EXPLICIT" or "FOLLOWS_SEGMENT_NUMBER",
                    "keepSegments" =>  ::Int,
                    "keyFormat" =>  ::String,
                    "keyFormatVersions" =>  ::String,
                    "keyProviderSettings" =>  ["staticKeySettings" =>  [
                            "keyProviderServer" =>  [
                                "passwordParam" =>  ::String,
                                "uri" => <required> ::String,
                                "username" =>  ::String
                            ],
                            "staticKeyValue" => <required> ::String
                        ]],
                    "manifestCompression" =>  "GZIP" or "NONE",
                    "manifestDurationFormat" =>  "FLOATING_POINT" or "INTEGER",
                    "minSegmentLength" =>  ::Int,
                    "mode" =>  "LIVE" or "VOD",
                    "outputSelection" =>  "MANIFESTS_AND_SEGMENTS" or "SEGMENTS_ONLY",
                    "programDateTime" =>  "EXCLUDE" or "INCLUDE",
                    "programDateTimePeriod" =>  ::Int,
                    "segmentLength" =>  ::Int,
                    "segmentationMode" =>  "USE_INPUT_SEGMENTATION" or "USE_SEGMENT_DURATION",
                    "segmentsPerSubdirectory" =>  ::Int,
                    "streamInfResolution" =>  "EXCLUDE" or "INCLUDE",
                    "timedMetadataId3Frame" =>  "NONE", "PRIV" or "TDRL",
                    "timedMetadataId3Period" =>  ::Int,
                    "timestampDeltaMilliseconds" =>  ::Int,
                    "tsFileMode" =>  "SEGMENTED_FILES" or "SINGLE_FILE"
                ],
                "msSmoothGroupSettings" =>  [
                    "acquisitionPointId" =>  ::String,
                    "audioOnlyTimecodeControl" =>  "PASSTHROUGH" or "USE_CONFIGURED_CLOCK",
                    "certificateMode" =>  "SELF_SIGNED" or "VERIFY_AUTHENTICITY",
                    "connectionRetryInterval" =>  ::Int,
                    "destination" => <required> ["destinationRefId" =>  ::String],
                    "eventId" =>  ::String,
                    "eventIdMode" =>  "NO_EVENT_ID", "USE_CONFIGURED" or "USE_TIMESTAMP",
                    "eventStopBehavior" =>  "NONE" or "SEND_EOS",
                    "filecacheDuration" =>  ::Int,
                    "fragmentLength" =>  ::Int,
                    "inputLossAction" =>  "EMIT_OUTPUT" or "PAUSE_OUTPUT",
                    "numRetries" =>  ::Int,
                    "restartDelay" =>  ::Int,
                    "segmentationMode" =>  "USE_INPUT_SEGMENTATION" or "USE_SEGMENT_DURATION",
                    "sendDelayMs" =>  ::Int,
                    "sparseTrackType" =>  "NONE" or "SCTE_35",
                    "streamManifestBehavior" =>  "DO_NOT_SEND" or "SEND",
                    "timestampOffset" =>  ::String,
                    "timestampOffsetMode" =>  "USE_CONFIGURED_OFFSET" or "USE_EVENT_START_DATE"
                ],
                "rtmpGroupSettings" =>  [
                    "authenticationScheme" =>  "AKAMAI" or "COMMON",
                    "cacheFullBehavior" =>  "DISCONNECT_IMMEDIATELY" or "WAIT_FOR_SERVER",
                    "cacheLength" =>  ::Int,
                    "captionData" =>  "ALL", "FIELD1_608" or "FIELD1_AND_FIELD2_608",
                    "restartDelay" =>  ::Int
                ],
                "udpGroupSettings" =>  [
                    "inputLossAction" =>  "DROP_PROGRAM", "DROP_TS" or "EMIT_PROGRAM",
                    "timedMetadataId3Frame" =>  "NONE", "PRIV" or "TDRL",
                    "timedMetadataId3Period" =>  ::Int
                ]
            ],
            "outputs" => <required> [[
                "audioDescriptionNames" =>  [::String, ...],
                "captionDescriptionNames" =>  [::String, ...],
                "outputName" =>  ::String,
                "outputSettings" => <required> [
                    "archiveOutputSettings" =>  [
                        "containerSettings" => <required> ["m2tsSettings" =>  [
                                "absentInputAudioBehavior" =>  "DROP" or "ENCODE_SILENCE",
                                "arib" =>  "DISABLED" or "ENABLED",
                                "aribCaptionsPid" =>  ::String,
                                "aribCaptionsPidControl" =>  "AUTO" or "USE_CONFIGURED",
                                "audioBufferModel" =>  "ATSC" or "DVB",
                                "audioFramesPerPes" =>  ::Int,
                                "audioPids" =>  ::String,
                                "audioStreamType" =>  "ATSC" or "DVB",
                                "bitrate" =>  ::Int,
                                "bufferModel" =>  "MULTIPLEX" or "NONE",
                                "ccDescriptor" =>  "DISABLED" or "ENABLED",
                                "dvbNitSettings" =>  [
                                    "networkId" => <required> ::Int,
                                    "networkName" => <required> ::String,
                                    "repInterval" =>  ::Int
                                ],
                                "dvbSdtSettings" =>  [
                                    "outputSdt" =>  "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL" or "SDT_NONE",
                                    "repInterval" =>  ::Int,
                                    "serviceName" =>  ::String,
                                    "serviceProviderName" =>  ::String
                                ],
                                "dvbSubPids" =>  ::String,
                                "dvbTdtSettings" =>  ["repInterval" =>  ::Int],
                                "dvbTeletextPid" =>  ::String,
                                "ebif" =>  "NONE" or "PASSTHROUGH",
                                "ebpAudioInterval" =>  "VIDEO_AND_FIXED_INTERVALS" or "VIDEO_INTERVAL",
                                "ebpLookaheadMs" =>  ::Int,
                                "ebpPlacement" =>  "VIDEO_AND_AUDIO_PIDS" or "VIDEO_PID",
                                "ecmPid" =>  ::String,
                                "esRateInPes" =>  "EXCLUDE" or "INCLUDE",
                                "etvPlatformPid" =>  ::String,
                                "etvSignalPid" =>  ::String,
                                "fragmentTime" =>  double,
                                "klv" =>  "NONE" or "PASSTHROUGH",
                                "klvDataPids" =>  ::String,
                                "nullPacketBitrate" =>  double,
                                "patInterval" =>  ::Int,
                                "pcrControl" =>  "CONFIGURED_PCR_PERIOD" or "PCR_EVERY_PES_PACKET",
                                "pcrPeriod" =>  ::Int,
                                "pcrPid" =>  ::String,
                                "pmtInterval" =>  ::Int,
                                "pmtPid" =>  ::String,
                                "programNum" =>  ::Int,
                                "rateMode" =>  "CBR" or "VBR",
                                "scte27Pids" =>  ::String,
                                "scte35Control" =>  "NONE" or "PASSTHROUGH",
                                "scte35Pid" =>  ::String,
                                "segmentationMarkers" =>  "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT" or "RAI_SEGSTART",
                                "segmentationStyle" =>  "MAINTAIN_CADENCE" or "RESET_CADENCE",
                                "segmentationTime" =>  double,
                                "timedMetadataBehavior" =>  "NO_PASSTHROUGH" or "PASSTHROUGH",
                                "timedMetadataPid" =>  ::String,
                                "transportStreamId" =>  ::Int,
                                "videoPid" =>  ::String
                            ]],
                        "extension" =>  ::String,
                        "nameModifier" =>  ::String
                    ],
                    "hlsOutputSettings" =>  [
                        "hlsSettings" => <required> [
                            "audioOnlyHlsSettings" =>  [
                                "audioGroupId" =>  ::String,
                                "audioOnlyImage" =>  [
                                    "passwordParam" =>  ::String,
                                    "uri" => <required> ::String,
                                    "username" =>  ::String
                                ],
                                "audioTrackType" =>  "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT" or "AUDIO_ONLY_VARIANT_STREAM"
                            ],
                            "standardHlsSettings" =>  [
                                "audioRenditionSets" =>  ::String,
                                "m3u8Settings" => <required> [
                                    "audioFramesPerPes" =>  ::Int,
                                    "audioPids" =>  ::String,
                                    "ecmPid" =>  ::String,
                                    "patInterval" =>  ::Int,
                                    "pcrControl" =>  "CONFIGURED_PCR_PERIOD" or "PCR_EVERY_PES_PACKET",
                                    "pcrPeriod" =>  ::Int,
                                    "pcrPid" =>  ::String,
                                    "pmtInterval" =>  ::Int,
                                    "pmtPid" =>  ::String,
                                    "programNum" =>  ::Int,
                                    "scte35Behavior" =>  "NO_PASSTHROUGH" or "PASSTHROUGH",
                                    "scte35Pid" =>  ::String,
                                    "timedMetadataBehavior" =>  "NO_PASSTHROUGH" or "PASSTHROUGH",
                                    "timedMetadataPid" =>  ::String,
                                    "transportStreamId" =>  ::Int,
                                    "videoPid" =>  ::String
                                ]
                            ]
                        ],
                        "nameModifier" =>  ::String,
                        "segmentModifier" =>  ::String
                    ],
                    "msSmoothOutputSettings" =>  ["nameModifier" =>  ::String],
                    "rtmpOutputSettings" =>  [
                        "certificateMode" =>  "SELF_SIGNED" or "VERIFY_AUTHENTICITY",
                        "connectionRetryInterval" =>  ::Int,
                        "destination" => <required> ["destinationRefId" =>  ::String],
                        "numRetries" =>  ::Int
                    ],
                    "udpOutputSettings" =>  [
                        "bufferMsec" =>  ::Int,
                        "containerSettings" => <required> ["m2tsSettings" =>  [
                                "absentInputAudioBehavior" =>  "DROP" or "ENCODE_SILENCE",
                                "arib" =>  "DISABLED" or "ENABLED",
                                "aribCaptionsPid" =>  ::String,
                                "aribCaptionsPidControl" =>  "AUTO" or "USE_CONFIGURED",
                                "audioBufferModel" =>  "ATSC" or "DVB",
                                "audioFramesPerPes" =>  ::Int,
                                "audioPids" =>  ::String,
                                "audioStreamType" =>  "ATSC" or "DVB",
                                "bitrate" =>  ::Int,
                                "bufferModel" =>  "MULTIPLEX" or "NONE",
                                "ccDescriptor" =>  "DISABLED" or "ENABLED",
                                "dvbNitSettings" =>  [
                                    "networkId" => <required> ::Int,
                                    "networkName" => <required> ::String,
                                    "repInterval" =>  ::Int
                                ],
                                "dvbSdtSettings" =>  [
                                    "outputSdt" =>  "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL" or "SDT_NONE",
                                    "repInterval" =>  ::Int,
                                    "serviceName" =>  ::String,
                                    "serviceProviderName" =>  ::String
                                ],
                                "dvbSubPids" =>  ::String,
                                "dvbTdtSettings" =>  ["repInterval" =>  ::Int],
                                "dvbTeletextPid" =>  ::String,
                                "ebif" =>  "NONE" or "PASSTHROUGH",
                                "ebpAudioInterval" =>  "VIDEO_AND_FIXED_INTERVALS" or "VIDEO_INTERVAL",
                                "ebpLookaheadMs" =>  ::Int,
                                "ebpPlacement" =>  "VIDEO_AND_AUDIO_PIDS" or "VIDEO_PID",
                                "ecmPid" =>  ::String,
                                "esRateInPes" =>  "EXCLUDE" or "INCLUDE",
                                "etvPlatformPid" =>  ::String,
                                "etvSignalPid" =>  ::String,
                                "fragmentTime" =>  double,
                                "klv" =>  "NONE" or "PASSTHROUGH",
                                "klvDataPids" =>  ::String,
                                "nullPacketBitrate" =>  double,
                                "patInterval" =>  ::Int,
                                "pcrControl" =>  "CONFIGURED_PCR_PERIOD" or "PCR_EVERY_PES_PACKET",
                                "pcrPeriod" =>  ::Int,
                                "pcrPid" =>  ::String,
                                "pmtInterval" =>  ::Int,
                                "pmtPid" =>  ::String,
                                "programNum" =>  ::Int,
                                "rateMode" =>  "CBR" or "VBR",
                                "scte27Pids" =>  ::String,
                                "scte35Control" =>  "NONE" or "PASSTHROUGH",
                                "scte35Pid" =>  ::String,
                                "segmentationMarkers" =>  "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT" or "RAI_SEGSTART",
                                "segmentationStyle" =>  "MAINTAIN_CADENCE" or "RESET_CADENCE",
                                "segmentationTime" =>  double,
                                "timedMetadataBehavior" =>  "NO_PASSTHROUGH" or "PASSTHROUGH",
                                "timedMetadataPid" =>  ::String,
                                "transportStreamId" =>  ::Int,
                                "videoPid" =>  ::String
                            ]],
                        "destination" => <required> ["destinationRefId" =>  ::String],
                        "fecOutputSettings" =>  [
                            "columnDepth" =>  ::Int,
                            "includeFec" =>  "COLUMN" or "COLUMN_AND_ROW",
                            "rowLength" =>  ::Int
                        ]
                    ]
                ],
                "videoDescriptionName" =>  ::String
            ], ...]
        ], ...],
        "timecodeConfig" => <required> [
            "source" => <required> "EMBEDDED", "SYSTEMCLOCK" or "ZEROBASED",
            "syncThreshold" =>  ::Int
        ],
        "videoDescriptions" => <required> [[
            "codecSettings" =>  ["h264Settings" =>  [
                    "adaptiveQuantization" =>  "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM" or "OFF",
                    "afdSignaling" =>  "AUTO", "FIXED" or "NONE",
                    "bitrate" =>  ::Int,
                    "bufFillPct" =>  ::Int,
                    "bufSize" =>  ::Int,
                    "colorMetadata" =>  "IGNORE" or "INSERT",
                    "entropyEncoding" =>  "CABAC" or "CAVLC",
                    "fixedAfd" =>  "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110" or "AFD_1111",
                    "flickerAq" =>  "DISABLED" or "ENABLED",
                    "framerateControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "framerateDenominator" =>  ::Int,
                    "framerateNumerator" =>  ::Int,
                    "gopBReference" =>  "DISABLED" or "ENABLED",
                    "gopClosedCadence" =>  ::Int,
                    "gopNumBFrames" =>  ::Int,
                    "gopSize" =>  double,
                    "gopSizeUnits" =>  "FRAMES" or "SECONDS",
                    "level" =>  "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2" or "H264_LEVEL_AUTO",
                    "lookAheadRateControl" =>  "HIGH", "LOW" or "MEDIUM",
                    "maxBitrate" =>  ::Int,
                    "minIInterval" =>  ::Int,
                    "numRefFrames" =>  ::Int,
                    "parControl" =>  "INITIALIZE_FROM_SOURCE" or "SPECIFIED",
                    "parDenominator" =>  ::Int,
                    "parNumerator" =>  ::Int,
                    "profile" =>  "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT" or "MAIN",
                    "rateControlMode" =>  "CBR" or "VBR",
                    "scanType" =>  "INTERLACED" or "PROGRESSIVE",
                    "sceneChangeDetect" =>  "DISABLED" or "ENABLED",
                    "slices" =>  ::Int,
                    "softness" =>  ::Int,
                    "spatialAq" =>  "DISABLED" or "ENABLED",
                    "syntax" =>  "DEFAULT" or "RP2027",
                    "temporalAq" =>  "DISABLED" or "ENABLED",
                    "timecodeInsertion" =>  "DISABLED" or "PIC_TIMING_SEI"
                ]],
            "height" =>  ::Int,
            "name" => <required> ::String,
            "respondToAfd" =>  "NONE", "PASSTHROUGH" or "RESPOND",
            "scalingBehavior" =>  "DEFAULT" or "STRETCH_TO_OUTPUT",
            "sharpness" =>  ::Int,
            "width" =>  ::Int
        ], ...]
    ]
```

## `inputAttachments = [[ ... ], ...]`

```
 inputAttachments = [[
        "inputId" =>  ::String,
        "inputSettings" =>  [
            "audioSelectors" =>  [[
                "name" => <required> ::String,
                "selectorSettings" =>  [
                    "audioLanguageSelection" =>  [
                        "languageCode" => <required> ::String,
                        "languageSelectionPolicy" =>  "LOOSE" or "STRICT"
                    ],
                    "audioPidSelection" =>  ["pid" => <required> ::Int]
                ]
            ], ...],
            "captionSelectors" =>  [[
                "languageCode" =>  ::String,
                "name" => <required> ::String,
                "selectorSettings" =>  [
                    "aribSourceSettings" =>  [
                        
                    ],
                    "dvbSubSourceSettings" =>  ["pid" =>  ::Int],
                    "embeddedSourceSettings" =>  [
                        "convert608To708" =>  "DISABLED" or "UPCONVERT",
                        "scte20Detection" =>  "AUTO" or "OFF",
                        "source608ChannelNumber" =>  ::Int,
                        "source608TrackNumber" =>  ::Int
                    ],
                    "scte20SourceSettings" =>  [
                        "convert608To708" =>  "DISABLED" or "UPCONVERT",
                        "source608ChannelNumber" =>  ::Int
                    ],
                    "scte27SourceSettings" =>  ["pid" =>  ::Int],
                    "teletextSourceSettings" =>  ["pageNumber" =>  ::String]
                ]
            ], ...],
            "deblockFilter" =>  "DISABLED" or "ENABLED",
            "denoiseFilter" =>  "DISABLED" or "ENABLED",
            "filterStrength" =>  ::Int,
            "inputFilter" =>  "AUTO", "DISABLED" or "FORCED",
            "networkInputSettings" =>  [
                "hlsInputSettings" =>  [
                    "bandwidth" =>  ::Int,
                    "bufferSegments" =>  ::Int,
                    "retries" =>  ::Int,
                    "retryInterval" =>  ::Int
                ],
                "serverValidation" =>  "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME" or "CHECK_CRYPTOGRAPHY_ONLY"
            ],
            "sourceEndBehavior" =>  "CONTINUE" or "LOOP",
            "videoSelector" =>  [
                "colorSpace" =>  "FOLLOW", "REC_601" or "REC_709",
                "colorSpaceUsage" =>  "FALLBACK" or "FORCE",
                "selectorSettings" =>  [
                    "videoSelectorPid" =>  ["pid" =>  ::Int],
                    "videoSelectorProgramId" =>  ["programId" =>  ::Int]
                ]
            ]
        ]
    ], ...]
```

## `inputSpecification = [ ... ]`
Specification of input for this channel (max. bitrate, resolution, codec, etc.)
```
 inputSpecification = [
        "codec" =>  "MPEG2", "AVC" or "HEVC",
        "maximumBitrate" =>  "MAX_10_MBPS", "MAX_20_MBPS" or "MAX_50_MBPS",
        "resolution" =>  "SD", "HD" or "UHD"
    ]
```

## `logLevel = "ERROR", "WARNING", "INFO", "DEBUG" or "DISABLED"`
The log level to write to CloudWatch Logs.


## `name = ::String`
The name of the channel.


## `roleArn = ::String`
An optional Amazon Resource Name (ARN) of the role to assume when running the Channel. If you do not specify this on an update call but the role was previously set that role will be removed.




# Returns

`UpdateChannelResponse`

# Exceptions

`BadRequestException`, `UnprocessableEntityException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `GatewayTimeoutException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateChannel)
"""
@inline update_channel(aws::AWSConfig=default_aws_config(); args...) = update_channel(aws, args)

@inline update_channel(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "PUT", "/prod/channels/{channelId}", args)

@inline update_channel(args) = update_channel(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.update_input
    update_input([::AWSConfig], arguments::Dict)
    update_input([::AWSConfig]; inputId=, <keyword arguments>)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "PUT", "/prod/inputs/{inputId}", arguments::Dict)
    medialive([::AWSConfig], "PUT", "/prod/inputs/{inputId}", inputId=, <keyword arguments>)

# UpdateInput Operation

Updates an input.

# Arguments

## `destinations = [["streamName" =>  ::String], ...]`
Destination settings for PUSH type inputs.


## `inputId = ::String` -- *Required*
Unique ID of the input.


## `inputSecurityGroups = [::String, ...]`
A list of security groups referenced by IDs to attach to the input.


## `name = ::String`
Name of the input.


## `sources = [[ ... ], ...]`
The source URLs for a PULL-type input. Every PULL type input needs exactly two source URLs for redundancy. Only specify sources for PULL type Inputs. Leave Destinations empty.
```
 sources = [[
        "passwordParam" =>  ::String,
        "url" =>  ::String,
        "username" =>  ::String
    ], ...]
```



# Returns

`UpdateInputResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInput)
"""
@inline update_input(aws::AWSConfig=default_aws_config(); args...) = update_input(aws, args)

@inline update_input(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "PUT", "/prod/inputs/{inputId}", args)

@inline update_input(args) = update_input(default_aws_config(), args)


"""
    using AWSSDK.MediaLive.update_input_security_group
    update_input_security_group([::AWSConfig], arguments::Dict)
    update_input_security_group([::AWSConfig]; inputSecurityGroupId=, <keyword arguments>)

    using AWSCore.Services.medialive
    medialive([::AWSConfig], "PUT", "/prod/inputSecurityGroups/{inputSecurityGroupId}", arguments::Dict)
    medialive([::AWSConfig], "PUT", "/prod/inputSecurityGroups/{inputSecurityGroupId}", inputSecurityGroupId=, <keyword arguments>)

# UpdateInputSecurityGroup Operation

Update an Input Security Group's Whilelists.

# Arguments

## `inputSecurityGroupId = ::String` -- *Required*
The id of the Input Security Group to update.


## `whitelistRules = [["cidr" =>  ::String], ...]`
List of IPv4 CIDR addresses to whitelist




# Returns

`UpdateInputSecurityGroupResponse`

# Exceptions

`BadRequestException`, `InternalServerErrorException`, `ForbiddenException`, `BadGatewayException`, `NotFoundException`, `GatewayTimeoutException` or `ConflictException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputSecurityGroup)
"""
@inline update_input_security_group(aws::AWSConfig=default_aws_config(); args...) = update_input_security_group(aws, args)

@inline update_input_security_group(aws::AWSConfig, args) = AWSCore.Services.medialive(aws, "PUT", "/prod/inputSecurityGroups/{inputSecurityGroupId}", args)

@inline update_input_security_group(args) = update_input_security_group(default_aws_config(), args)




end # module MediaLive


#==============================================================================#
# End of file
#==============================================================================#
