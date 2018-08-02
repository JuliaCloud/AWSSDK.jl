#==============================================================================#
# ElasticTranscoder.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/elastictranscoder-2012-09-25.normal.json
#==============================================================================#

__precompile__()

module ElasticTranscoder

using AWSCore


"""
    using AWSSDK.ElasticTranscoder.cancel_job
    cancel_job([::AWSConfig], arguments::Dict)
    cancel_job([::AWSConfig]; Id=)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "DELETE", "/2012-09-25/jobs/{Id}", arguments::Dict)
    elastictranscoder([::AWSConfig], "DELETE", "/2012-09-25/jobs/{Id}", Id=)

# CancelJob Operation

The CancelJob operation cancels an unfinished job.

**Note**
> You can only cancel a job that has a status of `Submitted`. To prevent a pipeline from starting to process a job while you're getting the job identifier, use [UpdatePipelineStatus](@ref) to temporarily pause the pipeline.

# Arguments

## `Id = ::String` -- *Required*
The identifier of the job that you want to cancel.

To get a list of the jobs (including their `jobId`) that have a status of `Submitted`, use the [ListJobsByStatus](@ref) API action.




# Returns

`CancelJobResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `ResourceNotFoundException`, `ResourceInUseException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/CancelJob)
"""
@inline cancel_job(aws::AWSConfig=default_aws_config(); args...) = cancel_job(aws, args)

@inline cancel_job(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "DELETE", "/2012-09-25/jobs/{Id}", args)

@inline cancel_job(args) = cancel_job(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.create_job
    create_job([::AWSConfig], arguments::Dict)
    create_job([::AWSConfig]; PipelineId=, <keyword arguments>)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "POST", "/2012-09-25/jobs", arguments::Dict)
    elastictranscoder([::AWSConfig], "POST", "/2012-09-25/jobs", PipelineId=, <keyword arguments>)

# CreateJob Operation

When you create a job, Elastic Transcoder returns JSON data that includes the values that you specified plus information about the job that is created.

If you have specified more than one output for your jobs (for example, one output for the Kindle Fire and another output for the Apple iPhone 4s), you currently must use the Elastic Transcoder API to list the jobs (as opposed to the AWS Console).

# Arguments

## `PipelineId = ::String` -- *Required*
The `Id` of the pipeline that you want Elastic Transcoder to use for transcoding. The pipeline determines several settings, including the Amazon S3 bucket from which Elastic Transcoder gets the files to transcode and the bucket into which Elastic Transcoder puts the transcoded files.


## `Input = [ ... ]`
A section of the request body that provides information about the file that is being transcoded.
```
 Input = [
        "Key" =>  ::String,
        "FrameRate" =>  ::String,
        "Resolution" =>  ::String,
        "AspectRatio" =>  ::String,
        "Interlaced" =>  ::String,
        "Container" =>  ::String,
        "Encryption" =>  [
            "Mode" =>  ::String,
            "Key" =>  ::String,
            "KeyMd5" =>  ::String,
            "InitializationVector" =>  ::String
        ],
        "TimeSpan" =>  [
            "StartTime" =>  ::String,
            "Duration" =>  ::String
        ],
        "InputCaptions" =>  [
            "MergePolicy" =>  ::String,
            "CaptionSources" =>  [[
                "Key" =>  ::String,
                "Language" =>  ::String,
                "TimeOffset" =>  ::String,
                "Label" =>  ::String,
                "Encryption" =>  [
                    "Mode" =>  ::String,
                    "Key" =>  ::String,
                    "KeyMd5" =>  ::String,
                    "InitializationVector" =>  ::String
                ]
            ], ...]
        ],
        "DetectedProperties" =>  [
            "Width" =>  ::Int,
            "Height" =>  ::Int,
            "FrameRate" =>  ::String,
            "FileSize" =>  ::Int,
            "DurationMillis" =>  ::Int
        ]
    ]
```

## `Inputs = [[ ... ], ...]`
A section of the request body that provides information about the files that are being transcoded.
```
 Inputs = [[
        "Key" =>  ::String,
        "FrameRate" =>  ::String,
        "Resolution" =>  ::String,
        "AspectRatio" =>  ::String,
        "Interlaced" =>  ::String,
        "Container" =>  ::String,
        "Encryption" =>  [
            "Mode" =>  ::String,
            "Key" =>  ::String,
            "KeyMd5" =>  ::String,
            "InitializationVector" =>  ::String
        ],
        "TimeSpan" =>  [
            "StartTime" =>  ::String,
            "Duration" =>  ::String
        ],
        "InputCaptions" =>  [
            "MergePolicy" =>  ::String,
            "CaptionSources" =>  [[
                "Key" =>  ::String,
                "Language" =>  ::String,
                "TimeOffset" =>  ::String,
                "Label" =>  ::String,
                "Encryption" =>  [
                    "Mode" =>  ::String,
                    "Key" =>  ::String,
                    "KeyMd5" =>  ::String,
                    "InitializationVector" =>  ::String
                ]
            ], ...]
        ],
        "DetectedProperties" =>  [
            "Width" =>  ::Int,
            "Height" =>  ::Int,
            "FrameRate" =>  ::String,
            "FileSize" =>  ::Int,
            "DurationMillis" =>  ::Int
        ]
    ], ...]
```

## `Output = [ ... ]`
A section of the request body that provides information about the transcoded (target) file. We strongly recommend that you use the `Outputs` syntax instead of the `Output` syntax.
```
 Output = [
        "Key" =>  ::String,
        "ThumbnailPattern" =>  ::String,
        "ThumbnailEncryption" =>  [
            "Mode" =>  ::String,
            "Key" =>  ::String,
            "KeyMd5" =>  ::String,
            "InitializationVector" =>  ::String
        ],
        "Rotate" =>  ::String,
        "PresetId" =>  ::String,
        "SegmentDuration" =>  ::String,
        "Watermarks" =>  [[
            "PresetWatermarkId" =>  ::String,
            "InputKey" =>  ::String,
            "Encryption" =>  [
                "Mode" =>  ::String,
                "Key" =>  ::String,
                "KeyMd5" =>  ::String,
                "InitializationVector" =>  ::String
            ]
        ], ...],
        "AlbumArt" =>  [
            "MergePolicy" =>  ::String,
            "Artwork" =>  [[
                "InputKey" =>  ::String,
                "MaxWidth" =>  ::String,
                "MaxHeight" =>  ::String,
                "SizingPolicy" =>  ::String,
                "PaddingPolicy" =>  ::String,
                "AlbumArtFormat" =>  ::String,
                "Encryption" =>  [
                    "Mode" =>  ::String,
                    "Key" =>  ::String,
                    "KeyMd5" =>  ::String,
                    "InitializationVector" =>  ::String
                ]
            ], ...]
        ],
        "Composition" =>  [["TimeSpan" =>  [
                "StartTime" =>  ::String,
                "Duration" =>  ::String
            ]], ...],
        "Captions" =>  [
            "MergePolicy" =>  ::String,
            "CaptionSources" =>  [[
                "Key" =>  ::String,
                "Language" =>  ::String,
                "TimeOffset" =>  ::String,
                "Label" =>  ::String,
                "Encryption" =>  [
                    "Mode" =>  ::String,
                    "Key" =>  ::String,
                    "KeyMd5" =>  ::String,
                    "InitializationVector" =>  ::String
                ]
            ], ...],
            "CaptionFormats" =>  [[
                "Format" =>  ::String,
                "Pattern" =>  ::String,
                "Encryption" =>  [
                    "Mode" =>  ::String,
                    "Key" =>  ::String,
                    "KeyMd5" =>  ::String,
                    "InitializationVector" =>  ::String
                ]
            ], ...]
        ],
        "Encryption" =>  [
            "Mode" =>  ::String,
            "Key" =>  ::String,
            "KeyMd5" =>  ::String,
            "InitializationVector" =>  ::String
        ]
    ]
```

## `Outputs = [[ ... ], ...]`
A section of the request body that provides information about the transcoded (target) files. We recommend that you use the `Outputs` syntax instead of the `Output` syntax.
```
 Outputs = [[
        "Key" =>  ::String,
        "ThumbnailPattern" =>  ::String,
        "ThumbnailEncryption" =>  [
            "Mode" =>  ::String,
            "Key" =>  ::String,
            "KeyMd5" =>  ::String,
            "InitializationVector" =>  ::String
        ],
        "Rotate" =>  ::String,
        "PresetId" =>  ::String,
        "SegmentDuration" =>  ::String,
        "Watermarks" =>  [[
            "PresetWatermarkId" =>  ::String,
            "InputKey" =>  ::String,
            "Encryption" =>  [
                "Mode" =>  ::String,
                "Key" =>  ::String,
                "KeyMd5" =>  ::String,
                "InitializationVector" =>  ::String
            ]
        ], ...],
        "AlbumArt" =>  [
            "MergePolicy" =>  ::String,
            "Artwork" =>  [[
                "InputKey" =>  ::String,
                "MaxWidth" =>  ::String,
                "MaxHeight" =>  ::String,
                "SizingPolicy" =>  ::String,
                "PaddingPolicy" =>  ::String,
                "AlbumArtFormat" =>  ::String,
                "Encryption" =>  [
                    "Mode" =>  ::String,
                    "Key" =>  ::String,
                    "KeyMd5" =>  ::String,
                    "InitializationVector" =>  ::String
                ]
            ], ...]
        ],
        "Composition" =>  [["TimeSpan" =>  [
                "StartTime" =>  ::String,
                "Duration" =>  ::String
            ]], ...],
        "Captions" =>  [
            "MergePolicy" =>  ::String,
            "CaptionSources" =>  [[
                "Key" =>  ::String,
                "Language" =>  ::String,
                "TimeOffset" =>  ::String,
                "Label" =>  ::String,
                "Encryption" =>  [
                    "Mode" =>  ::String,
                    "Key" =>  ::String,
                    "KeyMd5" =>  ::String,
                    "InitializationVector" =>  ::String
                ]
            ], ...],
            "CaptionFormats" =>  [[
                "Format" =>  ::String,
                "Pattern" =>  ::String,
                "Encryption" =>  [
                    "Mode" =>  ::String,
                    "Key" =>  ::String,
                    "KeyMd5" =>  ::String,
                    "InitializationVector" =>  ::String
                ]
            ], ...]
        ],
        "Encryption" =>  [
            "Mode" =>  ::String,
            "Key" =>  ::String,
            "KeyMd5" =>  ::String,
            "InitializationVector" =>  ::String
        ]
    ], ...]
```

## `OutputKeyPrefix = ::String`
The value, if any, that you want Elastic Transcoder to prepend to the names of all files that this job creates, including output files, thumbnails, and playlists.


## `Playlists = [[ ... ], ...]`
If you specify a preset in `PresetId` for which the value of `Container` is fmp4 (Fragmented MP4) or ts (MPEG-TS), Playlists contains information about the master playlists that you want Elastic Transcoder to create.

The maximum number of master playlists in a job is 30.
```
 Playlists = [[
        "Name" =>  ::String,
        "Format" =>  ::String,
        "OutputKeys" =>  [::String, ...],
        "HlsContentProtection" =>  [
            "Method" =>  ::String,
            "Key" =>  ::String,
            "KeyMd5" =>  ::String,
            "InitializationVector" =>  ::String,
            "LicenseAcquisitionUrl" =>  ::String,
            "KeyStoragePolicy" =>  ::String
        ],
        "PlayReadyDrm" =>  [
            "Format" =>  ::String,
            "Key" =>  ::String,
            "KeyMd5" =>  ::String,
            "KeyId" =>  ::String,
            "InitializationVector" =>  ::String,
            "LicenseAcquisitionUrl" =>  ::String
        ]
    ], ...]
```

## `UserMetadata = ::Dict{String,String}`
User-defined metadata that you want to associate with an Elastic Transcoder job. You specify metadata in `key/value` pairs, and you can add up to 10 `key/value` pairs per job. Elastic Transcoder does not guarantee that `key/value` pairs are returned in the same order in which you specify them.




# Returns

`CreateJobResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `ResourceNotFoundException`, `AccessDeniedException`, `LimitExceededException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/CreateJob)
"""
@inline create_job(aws::AWSConfig=default_aws_config(); args...) = create_job(aws, args)

@inline create_job(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "POST", "/2012-09-25/jobs", args)

@inline create_job(args) = create_job(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.create_pipeline
    create_pipeline([::AWSConfig], arguments::Dict)
    create_pipeline([::AWSConfig]; Name=, InputBucket=, Role=, <keyword arguments>)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "POST", "/2012-09-25/pipelines", arguments::Dict)
    elastictranscoder([::AWSConfig], "POST", "/2012-09-25/pipelines", Name=, InputBucket=, Role=, <keyword arguments>)

# CreatePipeline Operation

The CreatePipeline operation creates a pipeline with settings that you specify.

# Arguments

## `Name = ::String` -- *Required*
The name of the pipeline. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.

Constraints: Maximum 40 characters.


## `InputBucket = ::String` -- *Required*
The Amazon S3 bucket in which you saved the media files that you want to transcode.


## `OutputBucket = ::String`
The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files. (Use this, or use ContentConfig:Bucket plus ThumbnailConfig:Bucket.)

Specify this value when all of the following are true:

*   You want to save transcoded files, thumbnails (if any), and playlists (if any) together in one bucket.

*   You do not want to specify the users or groups who have access to the transcoded files, thumbnails, and playlists.

*   You do not want to specify the permissions that Elastic Transcoder grants to the files.

    **Important**
    > When Elastic Transcoder saves files in `OutputBucket`, it grants full control over the files only to the AWS account that owns the role that is specified by `Role`.

*   You want to associate the transcoded files and thumbnails with the Amazon S3 Standard storage class.

If you want to save transcoded files and playlists in one bucket and thumbnails in another bucket, specify which users can access the transcoded files or the permissions the users have, or change the Amazon S3 storage class, omit `OutputBucket` and specify values for `ContentConfig` and `ThumbnailConfig` instead.


## `Role = ::String` -- *Required*
The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to create the pipeline.


## `AwsKmsKeyArn = ::String`
The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.

If you use either `S3` or `S3-AWS-KMS` as your `Encryption:Mode`, you don't need to provide a key with your job because a default key, known as an AWS-KMS key, is created for you automatically. You need to provide an AWS-KMS key only if you want to use a non-default AWS-KMS key, or if you are using an `Encryption:Mode` of `AES-PKCS7`, `AES-CTR`, or `AES-GCM`.


## `Notifications = [ ... ]`
The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.

**Important**
> To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.

*   **Progressing**: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process a job in this pipeline. This is the ARN that Amazon SNS returned when you created the topic. For more information, see Create a Topic in the Amazon Simple Notification Service Developer Guide.

*   **Completed**: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job in this pipeline. This is the ARN that Amazon SNS returned when you created the topic.

*   **Warning**: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition while processing a job in this pipeline. This is the ARN that Amazon SNS returned when you created the topic.

*   **Error**: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition while processing a job in this pipeline. This is the ARN that Amazon SNS returned when you created the topic.
```
 Notifications = [
        "Progressing" =>  ::String,
        "Completed" =>  ::String,
        "Warning" =>  ::String,
        "Error" =>  ::String
    ]
```

## `ContentConfig = [ ... ]`
The optional `ContentConfig` object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists: which bucket to use, which users you want to have access to the files, the type of access you want users to have, and the storage class that you want to assign to the files.

If you specify values for `ContentConfig`, you must also specify values for `ThumbnailConfig`.

If you specify values for `ContentConfig` and `ThumbnailConfig`, omit the `OutputBucket` object.

*   **Bucket**: The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists.

*   **Permissions** (Optional): The Permissions object specifies which users you want to have access to transcoded files and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.

*   **Grantee Type**: Specify the type of value that appears in the `Grantee` object:

    *   **Canonical**: The value in the `Grantee` object is either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution. For more information about canonical user IDs, see Access Control List (ACL) Overview in the Amazon Simple Storage Service Developer Guide. For more information about using CloudFront origin access identities to require that users use CloudFront URLs instead of Amazon S3 URLs, see Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content.

        **Important**
        > A canonical user ID is not the same as an AWS account number.

    *   **Email**: The value in the `Grantee` object is the registered email address of an AWS account.

    *   **Group**: The value in the `Grantee` object is one of the following predefined Amazon S3 groups: `AllUsers`, `AuthenticatedUsers`, or `LogDelivery`.

*   **Grantee**: The AWS user or group that you want to have access to transcoded files and playlists. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group

*   **Access**: The permission that you want to give to the AWS user that you specified in `Grantee`. Permissions are granted on the files that Elastic Transcoder adds to the bucket, including playlists and video files. Valid values include:

    *   `READ`: The grantee can read the objects and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.

    *   `READ_ACP`: The grantee can read the object ACL for objects that Elastic Transcoder adds to the Amazon S3 bucket.

    *   `WRITE_ACP`: The grantee can write the ACL for the objects that Elastic Transcoder adds to the Amazon S3 bucket.

    *   `FULL_CONTROL`: The grantee has `READ`, `READ_ACP`, and `WRITE_ACP` permissions for the objects that Elastic Transcoder adds to the Amazon S3 bucket.

*   **StorageClass**: The Amazon S3 storage class, `Standard` or `ReducedRedundancy`, that you want Elastic Transcoder to assign to the video files and playlists that it stores in your Amazon S3 bucket.
```
 ContentConfig = [
        "Bucket" =>  ::String,
        "StorageClass" =>  ::String,
        "Permissions" =>  [[
            "GranteeType" =>  ::String,
            "Grantee" =>  ::String,
            "Access" =>  [::String, ...]
        ], ...]
    ]
```

## `ThumbnailConfig = [ ... ]`
The `ThumbnailConfig` object specifies several values, including the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files, which users you want to have access to the files, the type of access you want users to have, and the storage class that you want to assign to the files.

If you specify values for `ContentConfig`, you must also specify values for `ThumbnailConfig` even if you don't want to create thumbnails.

If you specify values for `ContentConfig` and `ThumbnailConfig`, omit the `OutputBucket` object.

*   **Bucket**: The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files.

*   **Permissions** (Optional): The `Permissions` object specifies which users and/or predefined Amazon S3 groups you want to have access to thumbnail files, and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.

*   **GranteeType**: Specify the type of value that appears in the Grantee object:

    *   **Canonical**: The value in the `Grantee` object is either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution.

        **Important**
        > A canonical user ID is not the same as an AWS account number.

    *   **Email**: The value in the `Grantee` object is the registered email address of an AWS account.

    *   **Group**: The value in the `Grantee` object is one of the following predefined Amazon S3 groups: `AllUsers`, `AuthenticatedUsers`, or `LogDelivery`.

*   **Grantee**: The AWS user or group that you want to have access to thumbnail files. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group.

*   **Access**: The permission that you want to give to the AWS user that you specified in `Grantee`. Permissions are granted on the thumbnail files that Elastic Transcoder adds to the bucket. Valid values include:

    *   `READ`: The grantee can read the thumbnails and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.

    *   `READ_ACP`: The grantee can read the object ACL for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.

    *   `WRITE_ACP`: The grantee can write the ACL for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.

    *   `FULL_CONTROL`: The grantee has `READ`, `READ_ACP`, and `WRITE_ACP` permissions for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.

*   **StorageClass**: The Amazon S3 storage class, `Standard` or `ReducedRedundancy`, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.
```
 ThumbnailConfig = [
        "Bucket" =>  ::String,
        "StorageClass" =>  ::String,
        "Permissions" =>  [[
            "GranteeType" =>  ::String,
            "Grantee" =>  ::String,
            "Access" =>  [::String, ...]
        ], ...]
    ]
```



# Returns

`CreatePipelineResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `AccessDeniedException`, `ResourceNotFoundException`, `LimitExceededException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/CreatePipeline)
"""
@inline create_pipeline(aws::AWSConfig=default_aws_config(); args...) = create_pipeline(aws, args)

@inline create_pipeline(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "POST", "/2012-09-25/pipelines", args)

@inline create_pipeline(args) = create_pipeline(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.create_preset
    create_preset([::AWSConfig], arguments::Dict)
    create_preset([::AWSConfig]; Name=, Container=, <keyword arguments>)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "POST", "/2012-09-25/presets", arguments::Dict)
    elastictranscoder([::AWSConfig], "POST", "/2012-09-25/presets", Name=, Container=, <keyword arguments>)

# CreatePreset Operation

The CreatePreset operation creates a preset with settings that you specify.

**Important**
> Elastic Transcoder checks the CreatePreset settings to ensure that they meet Elastic Transcoder requirements and to determine whether they comply with H.264 standards. If your settings are not valid for Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response (`ValidationException`) and does not create the preset. If the settings are valid for Elastic Transcoder but aren't strictly compliant with the H.264 standard, Elastic Transcoder creates the preset and returns a warning message in the response. This helps you determine whether your settings comply with the H.264 standard while giving you greater flexibility with respect to the video that Elastic Transcoder produces.

Elastic Transcoder uses the H.264 video-compression format. For more information, see the International Telecommunication Union publication *Recommendation ITU-T H.264: Advanced video coding for generic audiovisual services*.

# Arguments

## `Name = ::String` -- *Required*
The name of the preset. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.


## `Description = ::String`
A description of the preset.


## `Container = ::String` -- *Required*
The container type for the output file. Valid values include `flac`, `flv`, `fmp4`, `gif`, `mp3`, `mp4`, `mpg`, `mxf`, `oga`, `ogg`, `ts`, and `webm`.


## `Video = [ ... ]`
A section of the request body that specifies the video parameters.
```
 Video = [
        "Codec" =>  ::String,
        "CodecOptions" =>  ::Dict{String,String},
        "KeyframesMaxDist" =>  ::String,
        "FixedGOP" =>  ::String,
        "BitRate" =>  ::String,
        "FrameRate" =>  ::String,
        "MaxFrameRate" =>  ::String,
        "Resolution" =>  ::String,
        "AspectRatio" =>  ::String,
        "MaxWidth" =>  ::String,
        "MaxHeight" =>  ::String,
        "DisplayAspectRatio" =>  ::String,
        "SizingPolicy" =>  ::String,
        "PaddingPolicy" =>  ::String,
        "Watermarks" =>  [[
            "Id" =>  ::String,
            "MaxWidth" =>  ::String,
            "MaxHeight" =>  ::String,
            "SizingPolicy" =>  ::String,
            "HorizontalAlign" =>  ::String,
            "HorizontalOffset" =>  ::String,
            "VerticalAlign" =>  ::String,
            "VerticalOffset" =>  ::String,
            "Opacity" =>  ::String,
            "Target" =>  ::String
        ], ...]
    ]
```

## `Audio = [ ... ]`
A section of the request body that specifies the audio parameters.
```
 Audio = [
        "Codec" =>  ::String,
        "SampleRate" =>  ::String,
        "BitRate" =>  ::String,
        "Channels" =>  ::String,
        "AudioPackingMode" =>  ::String,
        "CodecOptions" =>  [
            "Profile" =>  ::String,
            "BitDepth" =>  ::String,
            "BitOrder" =>  ::String,
            "Signed" =>  ::String
        ]
    ]
```

## `Thumbnails = [ ... ]`
A section of the request body that specifies the thumbnail parameters, if any.
```
 Thumbnails = [
        "Format" =>  ::String,
        "Interval" =>  ::String,
        "Resolution" =>  ::String,
        "AspectRatio" =>  ::String,
        "MaxWidth" =>  ::String,
        "MaxHeight" =>  ::String,
        "SizingPolicy" =>  ::String,
        "PaddingPolicy" =>  ::String
    ]
```



# Returns

`CreatePresetResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `AccessDeniedException`, `LimitExceededException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/CreatePreset)
"""
@inline create_preset(aws::AWSConfig=default_aws_config(); args...) = create_preset(aws, args)

@inline create_preset(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "POST", "/2012-09-25/presets", args)

@inline create_preset(args) = create_preset(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.delete_pipeline
    delete_pipeline([::AWSConfig], arguments::Dict)
    delete_pipeline([::AWSConfig]; Id=)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "DELETE", "/2012-09-25/pipelines/{Id}", arguments::Dict)
    elastictranscoder([::AWSConfig], "DELETE", "/2012-09-25/pipelines/{Id}", Id=)

# DeletePipeline Operation

The DeletePipeline operation removes a pipeline.

You can only delete a pipeline that has never been used or that is not currently in use (doesn't contain any active jobs). If the pipeline is currently in use, `DeletePipeline` returns an error.

# Arguments

## `Id = ::String` -- *Required*
The identifier of the pipeline that you want to delete.




# Returns

`DeletePipelineResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `ResourceNotFoundException`, `ResourceInUseException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/DeletePipeline)
"""
@inline delete_pipeline(aws::AWSConfig=default_aws_config(); args...) = delete_pipeline(aws, args)

@inline delete_pipeline(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "DELETE", "/2012-09-25/pipelines/{Id}", args)

@inline delete_pipeline(args) = delete_pipeline(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.delete_preset
    delete_preset([::AWSConfig], arguments::Dict)
    delete_preset([::AWSConfig]; Id=)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "DELETE", "/2012-09-25/presets/{Id}", arguments::Dict)
    elastictranscoder([::AWSConfig], "DELETE", "/2012-09-25/presets/{Id}", Id=)

# DeletePreset Operation

The DeletePreset operation removes a preset that you've added in an AWS region.

**Note**
> You can't delete the default presets that are included with Elastic Transcoder.

# Arguments

## `Id = ::String` -- *Required*
The identifier of the preset for which you want to get detailed information.




# Returns

`DeletePresetResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `ResourceNotFoundException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/DeletePreset)
"""
@inline delete_preset(aws::AWSConfig=default_aws_config(); args...) = delete_preset(aws, args)

@inline delete_preset(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "DELETE", "/2012-09-25/presets/{Id}", args)

@inline delete_preset(args) = delete_preset(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.list_jobs_by_pipeline
    list_jobs_by_pipeline([::AWSConfig], arguments::Dict)
    list_jobs_by_pipeline([::AWSConfig]; PipelineId=, <keyword arguments>)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/jobsByPipeline/{PipelineId}", arguments::Dict)
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/jobsByPipeline/{PipelineId}", PipelineId=, <keyword arguments>)

# ListJobsByPipeline Operation

The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline.

Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains one element for each job that satisfies the search criteria.

# Arguments

## `PipelineId = ::String` -- *Required*
The ID of the pipeline for which you want to get job information.


## `Ascending = ::String`
To list jobs in chronological order by the date and time that they were submitted, enter `true`. To list jobs in reverse chronological order, enter `false`.


## `PageToken = ::String`
When Elastic Transcoder returns more than one page of results, use `pageToken` in subsequent `GET` requests to get each successive page of results.




# Returns

`ListJobsByPipelineResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `ResourceNotFoundException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/ListJobsByPipeline)
"""
@inline list_jobs_by_pipeline(aws::AWSConfig=default_aws_config(); args...) = list_jobs_by_pipeline(aws, args)

@inline list_jobs_by_pipeline(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "GET", "/2012-09-25/jobsByPipeline/{PipelineId}", args)

@inline list_jobs_by_pipeline(args) = list_jobs_by_pipeline(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.list_jobs_by_status
    list_jobs_by_status([::AWSConfig], arguments::Dict)
    list_jobs_by_status([::AWSConfig]; Status=, <keyword arguments>)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/jobsByStatus/{Status}", arguments::Dict)
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/jobsByStatus/{Status}", Status=, <keyword arguments>)

# ListJobsByStatus Operation

The ListJobsByStatus operation gets a list of jobs that have a specified status. The response body contains one element for each job that satisfies the search criteria.

# Arguments

## `Status = ::String` -- *Required*
To get information about all of the jobs associated with the current AWS account that have a given status, specify the following status: `Submitted`, `Progressing`, `Complete`, `Canceled`, or `Error`.


## `Ascending = ::String`
To list jobs in chronological order by the date and time that they were submitted, enter `true`. To list jobs in reverse chronological order, enter `false`.


## `PageToken = ::String`
When Elastic Transcoder returns more than one page of results, use `pageToken` in subsequent `GET` requests to get each successive page of results.




# Returns

`ListJobsByStatusResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `ResourceNotFoundException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/ListJobsByStatus)
"""
@inline list_jobs_by_status(aws::AWSConfig=default_aws_config(); args...) = list_jobs_by_status(aws, args)

@inline list_jobs_by_status(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "GET", "/2012-09-25/jobsByStatus/{Status}", args)

@inline list_jobs_by_status(args) = list_jobs_by_status(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.list_pipelines
    list_pipelines([::AWSConfig], arguments::Dict)
    list_pipelines([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/pipelines", arguments::Dict)
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/pipelines", <keyword arguments>)

# ListPipelines Operation

The ListPipelines operation gets a list of the pipelines associated with the current AWS account.

# Arguments

## `Ascending = ::String`
To list pipelines in chronological order by the date and time that they were created, enter `true`. To list pipelines in reverse chronological order, enter `false`.


## `PageToken = ::String`
When Elastic Transcoder returns more than one page of results, use `pageToken` in subsequent `GET` requests to get each successive page of results.




# Returns

`ListPipelinesResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/ListPipelines)
"""
@inline list_pipelines(aws::AWSConfig=default_aws_config(); args...) = list_pipelines(aws, args)

@inline list_pipelines(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "GET", "/2012-09-25/pipelines", args)

@inline list_pipelines(args) = list_pipelines(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.list_presets
    list_presets([::AWSConfig], arguments::Dict)
    list_presets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/presets", arguments::Dict)
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/presets", <keyword arguments>)

# ListPresets Operation

The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that you've added in an AWS region.

# Arguments

## `Ascending = ::String`
To list presets in chronological order by the date and time that they were created, enter `true`. To list presets in reverse chronological order, enter `false`.


## `PageToken = ::String`
When Elastic Transcoder returns more than one page of results, use `pageToken` in subsequent `GET` requests to get each successive page of results.




# Returns

`ListPresetsResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/ListPresets)
"""
@inline list_presets(aws::AWSConfig=default_aws_config(); args...) = list_presets(aws, args)

@inline list_presets(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "GET", "/2012-09-25/presets", args)

@inline list_presets(args) = list_presets(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.read_job
    read_job([::AWSConfig], arguments::Dict)
    read_job([::AWSConfig]; Id=)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/jobs/{Id}", arguments::Dict)
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/jobs/{Id}", Id=)

# ReadJob Operation

The ReadJob operation returns detailed information about a job.

# Arguments

## `Id = ::String` -- *Required*
The identifier of the job for which you want to get detailed information.




# Returns

`ReadJobResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `ResourceNotFoundException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/ReadJob)
"""
@inline read_job(aws::AWSConfig=default_aws_config(); args...) = read_job(aws, args)

@inline read_job(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "GET", "/2012-09-25/jobs/{Id}", args)

@inline read_job(args) = read_job(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.read_pipeline
    read_pipeline([::AWSConfig], arguments::Dict)
    read_pipeline([::AWSConfig]; Id=)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/pipelines/{Id}", arguments::Dict)
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/pipelines/{Id}", Id=)

# ReadPipeline Operation

The ReadPipeline operation gets detailed information about a pipeline.

# Arguments

## `Id = ::String` -- *Required*
The identifier of the pipeline to read.




# Returns

`ReadPipelineResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `ResourceNotFoundException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/ReadPipeline)
"""
@inline read_pipeline(aws::AWSConfig=default_aws_config(); args...) = read_pipeline(aws, args)

@inline read_pipeline(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "GET", "/2012-09-25/pipelines/{Id}", args)

@inline read_pipeline(args) = read_pipeline(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.read_preset
    read_preset([::AWSConfig], arguments::Dict)
    read_preset([::AWSConfig]; Id=)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/presets/{Id}", arguments::Dict)
    elastictranscoder([::AWSConfig], "GET", "/2012-09-25/presets/{Id}", Id=)

# ReadPreset Operation

The ReadPreset operation gets detailed information about a preset.

# Arguments

## `Id = ::String` -- *Required*
The identifier of the preset for which you want to get detailed information.




# Returns

`ReadPresetResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `ResourceNotFoundException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/ReadPreset)
"""
@inline read_preset(aws::AWSConfig=default_aws_config(); args...) = read_preset(aws, args)

@inline read_preset(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "GET", "/2012-09-25/presets/{Id}", args)

@inline read_preset(args) = read_preset(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.test_role
    test_role([::AWSConfig], arguments::Dict)
    test_role([::AWSConfig]; Role=, InputBucket=, OutputBucket=, Topics=)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "POST", "/2012-09-25/roleTests", arguments::Dict)
    elastictranscoder([::AWSConfig], "POST", "/2012-09-25/roleTests", Role=, InputBucket=, OutputBucket=, Topics=)

# TestRole Operation

The TestRole operation tests the IAM role used to create the pipeline.

The `TestRole` action lets you determine whether the IAM role you are using has sufficient permissions to let Elastic Transcoder perform tasks associated with the transcoding process. The action attempts to assume the specified IAM role, checks read access to the input and output buckets, and tries to send a test notification to Amazon SNS topics that you specify.

# Arguments

## `Role = ::String` -- *Required*
The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to test.


## `InputBucket = ::String` -- *Required*
The Amazon S3 bucket that contains media files to be transcoded. The action attempts to read from this bucket.


## `OutputBucket = ::String` -- *Required*
The Amazon S3 bucket that Elastic Transcoder writes transcoded media files to. The action attempts to read from this bucket.


## `Topics = [::String, ...]` -- *Required*
The ARNs of one or more Amazon Simple Notification Service (Amazon SNS) topics that you want the action to send a test notification to.




# Returns

`TestRoleResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `ResourceNotFoundException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/TestRole)
"""
@inline test_role(aws::AWSConfig=default_aws_config(); args...) = test_role(aws, args)

@inline test_role(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "POST", "/2012-09-25/roleTests", args)

@inline test_role(args) = test_role(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.update_pipeline
    update_pipeline([::AWSConfig], arguments::Dict)
    update_pipeline([::AWSConfig]; Id=, <keyword arguments>)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "PUT", "/2012-09-25/pipelines/{Id}", arguments::Dict)
    elastictranscoder([::AWSConfig], "PUT", "/2012-09-25/pipelines/{Id}", Id=, <keyword arguments>)

# UpdatePipeline Operation

Use the `UpdatePipeline` operation to update settings for a pipeline.

**Important**
> When you change pipeline settings, your changes take effect immediately. Jobs that you have already submitted and that Elastic Transcoder has not started to process are affected in addition to jobs that you submit after you change settings.

# Arguments

## `Id = ::String` -- *Required*
The ID of the pipeline that you want to update.


## `Name = ::String`
The name of the pipeline. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.

Constraints: Maximum 40 characters


## `InputBucket = ::String`
The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics that you want to use as watermarks.


## `Role = ::String`
The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for this pipeline.


## `AwsKmsKeyArn = ::String`
The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.

If you use either `S3` or `S3-AWS-KMS` as your `Encryption:Mode`, you don't need to provide a key with your job because a default key, known as an AWS-KMS key, is created for you automatically. You need to provide an AWS-KMS key only if you want to use a non-default AWS-KMS key, or if you are using an `Encryption:Mode` of `AES-PKCS7`, `AES-CTR`, or `AES-GCM`.


## `Notifications = [ ... ]`
The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.

**Important**
> To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.

*   **Progressing**: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process jobs that are added to this pipeline. This is the ARN that Amazon SNS returned when you created the topic.

*   **Completed**: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job. This is the ARN that Amazon SNS returned when you created the topic.

*   **Warning**: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition. This is the ARN that Amazon SNS returned when you created the topic.

*   **Error**: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition. This is the ARN that Amazon SNS returned when you created the topic.
```
 Notifications = [
        "Progressing" =>  ::String,
        "Completed" =>  ::String,
        "Warning" =>  ::String,
        "Error" =>  ::String
    ]
```

## `ContentConfig = [ ... ]`
The optional `ContentConfig` object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists: which bucket to use, which users you want to have access to the files, the type of access you want users to have, and the storage class that you want to assign to the files.

If you specify values for `ContentConfig`, you must also specify values for `ThumbnailConfig`.

If you specify values for `ContentConfig` and `ThumbnailConfig`, omit the `OutputBucket` object.

*   **Bucket**: The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists.

*   **Permissions** (Optional): The Permissions object specifies which users you want to have access to transcoded files and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.

*   **Grantee Type**: Specify the type of value that appears in the `Grantee` object:

    *   **Canonical**: The value in the `Grantee` object is either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution. For more information about canonical user IDs, see Access Control List (ACL) Overview in the Amazon Simple Storage Service Developer Guide. For more information about using CloudFront origin access identities to require that users use CloudFront URLs instead of Amazon S3 URLs, see Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content.

        **Important**
        > A canonical user ID is not the same as an AWS account number.

    *   **Email**: The value in the `Grantee` object is the registered email address of an AWS account.

    *   **Group**: The value in the `Grantee` object is one of the following predefined Amazon S3 groups: `AllUsers`, `AuthenticatedUsers`, or `LogDelivery`.

*   **Grantee**: The AWS user or group that you want to have access to transcoded files and playlists. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group

*   **Access**: The permission that you want to give to the AWS user that you specified in `Grantee`. Permissions are granted on the files that Elastic Transcoder adds to the bucket, including playlists and video files. Valid values include:

    *   `READ`: The grantee can read the objects and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.

    *   `READ_ACP`: The grantee can read the object ACL for objects that Elastic Transcoder adds to the Amazon S3 bucket.

    *   `WRITE_ACP`: The grantee can write the ACL for the objects that Elastic Transcoder adds to the Amazon S3 bucket.

    *   `FULL_CONTROL`: The grantee has `READ`, `READ_ACP`, and `WRITE_ACP` permissions for the objects that Elastic Transcoder adds to the Amazon S3 bucket.

*   **StorageClass**: The Amazon S3 storage class, `Standard` or `ReducedRedundancy`, that you want Elastic Transcoder to assign to the video files and playlists that it stores in your Amazon S3 bucket.
```
 ContentConfig = [
        "Bucket" =>  ::String,
        "StorageClass" =>  ::String,
        "Permissions" =>  [[
            "GranteeType" =>  ::String,
            "Grantee" =>  ::String,
            "Access" =>  [::String, ...]
        ], ...]
    ]
```

## `ThumbnailConfig = [ ... ]`
The `ThumbnailConfig` object specifies several values, including the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files, which users you want to have access to the files, the type of access you want users to have, and the storage class that you want to assign to the files.

If you specify values for `ContentConfig`, you must also specify values for `ThumbnailConfig` even if you don't want to create thumbnails.

If you specify values for `ContentConfig` and `ThumbnailConfig`, omit the `OutputBucket` object.

*   **Bucket**: The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files.

*   **Permissions** (Optional): The `Permissions` object specifies which users and/or predefined Amazon S3 groups you want to have access to thumbnail files, and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.

*   **GranteeType**: Specify the type of value that appears in the Grantee object:

    *   **Canonical**: The value in the `Grantee` object is either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution.

        **Important**
        > A canonical user ID is not the same as an AWS account number.

    *   **Email**: The value in the `Grantee` object is the registered email address of an AWS account.

    *   **Group**: The value in the `Grantee` object is one of the following predefined Amazon S3 groups: `AllUsers`, `AuthenticatedUsers`, or `LogDelivery`.

*   **Grantee**: The AWS user or group that you want to have access to thumbnail files. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group.

*   **Access**: The permission that you want to give to the AWS user that you specified in `Grantee`. Permissions are granted on the thumbnail files that Elastic Transcoder adds to the bucket. Valid values include:

    *   `READ`: The grantee can read the thumbnails and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.

    *   `READ_ACP`: The grantee can read the object ACL for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.

    *   `WRITE_ACP`: The grantee can write the ACL for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.

    *   `FULL_CONTROL`: The grantee has `READ`, `READ_ACP`, and `WRITE_ACP` permissions for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.

*   **StorageClass**: The Amazon S3 storage class, `Standard` or `ReducedRedundancy`, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.
```
 ThumbnailConfig = [
        "Bucket" =>  ::String,
        "StorageClass" =>  ::String,
        "Permissions" =>  [[
            "GranteeType" =>  ::String,
            "Grantee" =>  ::String,
            "Access" =>  [::String, ...]
        ], ...]
    ]
```



# Returns

`UpdatePipelineResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `AccessDeniedException`, `ResourceInUseException`, `ResourceNotFoundException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/UpdatePipeline)
"""
@inline update_pipeline(aws::AWSConfig=default_aws_config(); args...) = update_pipeline(aws, args)

@inline update_pipeline(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "PUT", "/2012-09-25/pipelines/{Id}", args)

@inline update_pipeline(args) = update_pipeline(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.update_pipeline_notifications
    update_pipeline_notifications([::AWSConfig], arguments::Dict)
    update_pipeline_notifications([::AWSConfig]; Id=, Notifications=)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "POST", "/2012-09-25/pipelines/{Id}/notifications", arguments::Dict)
    elastictranscoder([::AWSConfig], "POST", "/2012-09-25/pipelines/{Id}/notifications", Id=, Notifications=)

# UpdatePipelineNotifications Operation

With the UpdatePipelineNotifications operation, you can update Amazon Simple Notification Service (Amazon SNS) notifications for a pipeline.

When you update notifications for a pipeline, Elastic Transcoder returns the values that you specified in the request.

# Arguments

## `Id = ::String` -- *Required*
The identifier of the pipeline for which you want to change notification settings.


## `Notifications = [ ... ]` -- *Required*
The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.

**Important**
> To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.

*   **Progressing**: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process jobs that are added to this pipeline. This is the ARN that Amazon SNS returned when you created the topic.

*   **Completed**: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job. This is the ARN that Amazon SNS returned when you created the topic.

*   **Warning**: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition. This is the ARN that Amazon SNS returned when you created the topic.

*   **Error**: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition. This is the ARN that Amazon SNS returned when you created the topic.
```
 Notifications = [
        "Progressing" =>  ::String,
        "Completed" =>  ::String,
        "Warning" =>  ::String,
        "Error" =>  ::String
    ]
```



# Returns

`UpdatePipelineNotificationsResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `ResourceNotFoundException`, `ResourceInUseException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/UpdatePipelineNotifications)
"""
@inline update_pipeline_notifications(aws::AWSConfig=default_aws_config(); args...) = update_pipeline_notifications(aws, args)

@inline update_pipeline_notifications(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "POST", "/2012-09-25/pipelines/{Id}/notifications", args)

@inline update_pipeline_notifications(args) = update_pipeline_notifications(default_aws_config(), args)


"""
    using AWSSDK.ElasticTranscoder.update_pipeline_status
    update_pipeline_status([::AWSConfig], arguments::Dict)
    update_pipeline_status([::AWSConfig]; Id=, Status=)

    using AWSCore.Services.elastictranscoder
    elastictranscoder([::AWSConfig], "POST", "/2012-09-25/pipelines/{Id}/status", arguments::Dict)
    elastictranscoder([::AWSConfig], "POST", "/2012-09-25/pipelines/{Id}/status", Id=, Status=)

# UpdatePipelineStatus Operation

The UpdatePipelineStatus operation pauses or reactivates a pipeline, so that the pipeline stops or restarts the processing of jobs.

Changing the pipeline status is useful if you want to cancel one or more jobs. You can't cancel jobs after Elastic Transcoder has started processing them; if you pause the pipeline to which you submitted the jobs, you have more time to get the job IDs for the jobs that you want to cancel, and to send a [CancelJob](@ref) request.

# Arguments

## `Id = ::String` -- *Required*
The identifier of the pipeline to update.


## `Status = ::String` -- *Required*
The desired status of the pipeline:

*   `Active`: The pipeline is processing jobs.

*   `Paused`: The pipeline is not currently processing jobs.




# Returns

`UpdatePipelineStatusResponse`

# Exceptions

`ValidationException`, `IncompatibleVersionException`, `ResourceNotFoundException`, `ResourceInUseException`, `AccessDeniedException` or `InternalServiceException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder-2012-09-25/UpdatePipelineStatus)
"""
@inline update_pipeline_status(aws::AWSConfig=default_aws_config(); args...) = update_pipeline_status(aws, args)

@inline update_pipeline_status(aws::AWSConfig, args) = AWSCore.Services.elastictranscoder(aws, "POST", "/2012-09-25/pipelines/{Id}/status", args)

@inline update_pipeline_status(args) = update_pipeline_status(default_aws_config(), args)




end # module ElasticTranscoder


#==============================================================================#
# End of file
#==============================================================================#
