#==============================================================================#
# Rekognition.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/rekognition-2016-06-27.normal.json
#==============================================================================#

__precompile__()

module Rekognition

using AWSCore


"""
    using AWSSDK.Rekognition.compare_faces
    compare_faces([::AWSConfig], arguments::Dict)
    compare_faces([::AWSConfig]; SourceImage=, TargetImage=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "CompareFaces", arguments::Dict)
    rekognition([::AWSConfig], "CompareFaces", SourceImage=, TargetImage=, <keyword arguments>)

# CompareFaces Operation

Compares a face in the *source* input image with each of the 100 largest faces detected in the *target* input image.

**Note**
> If the source image contains multiple faces, the service detects the largest face and compares it with each face detected in the target image.

You pass the input and target images either as base64-encoded image bytes or as a references to images in an Amazon S3 bucket. If you use the Amazon CLI to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file.

In response, the operation returns an array of face matches ordered by similarity score in descending order. For each face match, the response provides a bounding box of the face, facial landmarks, pose details (pitch, role, and yaw), quality (brightness and sharpness), and confidence value (indicating the level of confidence that the bounding box contains a face). The response also provides a similarity score, which indicates how closely the faces match.

**Note**
> By default, only faces with a similarity score of greater than or equal to 80% are returned in the response. You can change this value by specifying the `SimilarityThreshold` parameter.

`CompareFaces` also returns an array of faces that don't match the source image. For each face, it returns a bounding box, confidence value, landmarks, pose details, and quality. The response also returns information about the face in the source image, including the bounding box of the face and confidence value.

If the image doesn't contain Exif metadata, `CompareFaces` returns orientation information for the source and target images. Use these values to display the images with the correct image orientation.

If no faces are detected in the source or target images, `CompareFaces` returns an `InvalidParameterException` error.

**Note**
> This is a stateless API operation. That is, data returned by this operation doesn't persist.

For an example, see Comparing Faces in Images in the Amazon Rekognition Developer Guide.

This operation requires permissions to perform the `rekognition:CompareFaces` action.

# Arguments

## `SourceImage = [ ... ]` -- *Required*
The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.
```
 SourceImage = [
        "Bytes" =>  blob,
        "S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]
    ]
```

## `TargetImage = [ ... ]` -- *Required*
The target image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.
```
 TargetImage = [
        "Bytes" =>  blob,
        "S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]
    ]
```

## `SimilarityThreshold = float`
The minimum level of confidence in the face matches that a match must meet to be included in the `FaceMatches` array.




# Returns

`CompareFacesResponse`

# Exceptions

`InvalidParameterException`, `InvalidS3ObjectException`, `ImageTooLargeException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException` or `InvalidImageFormatException`.

# Example: To compare two images

This operation compares the largest face detected in the source image with each face detected in the target image.

Input:
```
[
    "SimilarityThreshold" => 90,
    "SourceImage" => [
        "S3Object" => [
            "Bucket" => "mybucket",
            "Name" => "mysourceimage"
        ]
    ],
    "TargetImage" => [
        "S3Object" => [
            "Bucket" => "mybucket",
            "Name" => "mytargetimage"
        ]
    ]
]
```

Output:
```
Dict(
    "FaceMatches" => [
        Dict(
            "Face" => Dict(
                "BoundingBox" => Dict(
                    "Height" => 0.33481481671333313,
                    "Left" => 0.31888890266418457,
                    "Top" => 0.4933333396911621,
                    "Width" => 0.25
                ),
                "Confidence" => 99.9991226196289
            ),
            "Similarity" => 100
        )
    ],
    "SourceImageFace" => Dict(
        "BoundingBox" => Dict(
            "Height" => 0.33481481671333313,
            "Left" => 0.31888890266418457,
            "Top" => 0.4933333396911621,
            "Width" => 0.25
        ),
        "Confidence" => 99.9991226196289
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/CompareFaces)
"""
@inline compare_faces(aws::AWSConfig=default_aws_config(); args...) = compare_faces(aws, args)

@inline compare_faces(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "CompareFaces", args)

@inline compare_faces(args) = compare_faces(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.create_collection
    create_collection([::AWSConfig], arguments::Dict)
    create_collection([::AWSConfig]; CollectionId=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "CreateCollection", arguments::Dict)
    rekognition([::AWSConfig], "CreateCollection", CollectionId=)

# CreateCollection Operation

Creates a collection in an AWS Region. You can add faces to the collection using the operation.

For example, you might create collections, one for each of your application users. A user can then index faces using the `IndexFaces` operation and persist results in a specific collection. Then, a user can search the collection for faces in the user-specific container.

**Note**
> Collection names are case-sensitive.

This operation requires permissions to perform the `rekognition:CreateCollection` action.

# Arguments

## `CollectionId = ::String` -- *Required*
ID for the collection that you are creating.




# Returns

`CreateCollectionResponse`

# Exceptions

`InvalidParameterException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException` or `ResourceAlreadyExistsException`.

# Example: To create a collection

This operation creates a Rekognition collection for storing image data.

Input:
```
[
    "CollectionId" => "myphotos"
]
```

Output:
```
Dict(
    "CollectionArn" => "aws:rekognition:us-west-2:123456789012:collection/myphotos",
    "StatusCode" => 200
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/CreateCollection)
"""
@inline create_collection(aws::AWSConfig=default_aws_config(); args...) = create_collection(aws, args)

@inline create_collection(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "CreateCollection", args)

@inline create_collection(args) = create_collection(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.create_stream_processor
    create_stream_processor([::AWSConfig], arguments::Dict)
    create_stream_processor([::AWSConfig]; Input=, Output=, Name=, Settings=, RoleArn=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "CreateStreamProcessor", arguments::Dict)
    rekognition([::AWSConfig], "CreateStreamProcessor", Input=, Output=, Name=, Settings=, RoleArn=)

# CreateStreamProcessor Operation

Creates an Amazon Rekognition stream processor that you can use to detect and recognize faces in a streaming video.

Amazon Rekognition Video is a consumer of live video from Amazon Kinesis Video Streams. Amazon Rekognition Video sends analysis results to Amazon Kinesis Data Streams.

You provide as input a Kinesis video stream (`Input`) and a Kinesis data stream (`Output`) stream. You also specify the face recognition criteria in `Settings`. For example, the collection containing faces that you want to recognize. Use `Name` to assign an identifier for the stream processor. You use `Name` to manage the stream processor. For example, you can start processing the source video by calling with the `Name` field.

After you have finished analyzing a streaming video, use to stop processing. You can delete the stream processor by calling .

# Arguments

## `Input = ["KinesisVideoStream" =>  ["Arn" =>  ::String]]` -- *Required*
Kinesis video stream stream that provides the source streaming video. If you are using the AWS CLI, the parameter name is `StreamProcessorInput`.


## `Output = ["KinesisDataStream" =>  ["Arn" =>  ::String]]` -- *Required*
Kinesis data stream stream to which Amazon Rekognition Video puts the analysis results. If you are using the AWS CLI, the parameter name is `StreamProcessorOutput`.


## `Name = ::String` -- *Required*
An identifier you assign to the stream processor. You can use `Name` to manage the stream processor. For example, you can get the current status of the stream processor by calling . `Name` is idempotent.


## `Settings = ["FaceSearch" =>  [ ... ]]` -- *Required*
Face recognition input parameters to be used by the stream processor. Includes the collection to use for face recognition and the face attributes to detect.
```
 Settings = ["FaceSearch" =>  [
            "CollectionId" =>  ::String,
            "FaceMatchThreshold" =>  float
        ]]
```

## `RoleArn = ::String` -- *Required*
ARN of the IAM role that allows access to the stream processor.




# Returns

`CreateStreamProcessorResponse`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `InvalidParameterException`, `LimitExceededException`, `ResourceInUseException` or `ProvisionedThroughputExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/CreateStreamProcessor)
"""
@inline create_stream_processor(aws::AWSConfig=default_aws_config(); args...) = create_stream_processor(aws, args)

@inline create_stream_processor(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "CreateStreamProcessor", args)

@inline create_stream_processor(args) = create_stream_processor(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.delete_collection
    delete_collection([::AWSConfig], arguments::Dict)
    delete_collection([::AWSConfig]; CollectionId=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "DeleteCollection", arguments::Dict)
    rekognition([::AWSConfig], "DeleteCollection", CollectionId=)

# DeleteCollection Operation

Deletes the specified collection. Note that this operation removes all faces in the collection. For an example, see [delete-collection-procedure](@ref).

This operation requires permissions to perform the `rekognition:DeleteCollection` action.

# Arguments

## `CollectionId = ::String` -- *Required*
ID of the collection to delete.




# Returns

`DeleteCollectionResponse`

# Exceptions

`InvalidParameterException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException` or `ResourceNotFoundException`.

# Example: To delete a collection

This operation deletes a Rekognition collection.

Input:
```
[
    "CollectionId" => "myphotos"
]
```

Output:
```
Dict(
    "StatusCode" => 200
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/DeleteCollection)
"""
@inline delete_collection(aws::AWSConfig=default_aws_config(); args...) = delete_collection(aws, args)

@inline delete_collection(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "DeleteCollection", args)

@inline delete_collection(args) = delete_collection(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.delete_faces
    delete_faces([::AWSConfig], arguments::Dict)
    delete_faces([::AWSConfig]; CollectionId=, FaceIds=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "DeleteFaces", arguments::Dict)
    rekognition([::AWSConfig], "DeleteFaces", CollectionId=, FaceIds=)

# DeleteFaces Operation

Deletes faces from a collection. You specify a collection ID and an array of face IDs to remove from the collection.

This operation requires permissions to perform the `rekognition:DeleteFaces` action.

# Arguments

## `CollectionId = ::String` -- *Required*
Collection from which to remove the specific faces.


## `FaceIds = [::String, ...]` -- *Required*
An array of face IDs to delete.




# Returns

`DeleteFacesResponse`

# Exceptions

`InvalidParameterException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException` or `ResourceNotFoundException`.

# Example: To delete a face

This operation deletes one or more faces from a Rekognition collection.

Input:
```
[
    "CollectionId" => "myphotos",
    "FaceIds" => [
        "ff43d742-0c13-5d16-a3e8-03d3f58e980b"
    ]
]
```

Output:
```
Dict(
    "DeletedFaces" => [
        "ff43d742-0c13-5d16-a3e8-03d3f58e980b"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/DeleteFaces)
"""
@inline delete_faces(aws::AWSConfig=default_aws_config(); args...) = delete_faces(aws, args)

@inline delete_faces(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "DeleteFaces", args)

@inline delete_faces(args) = delete_faces(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.delete_stream_processor
    delete_stream_processor([::AWSConfig], arguments::Dict)
    delete_stream_processor([::AWSConfig]; Name=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "DeleteStreamProcessor", arguments::Dict)
    rekognition([::AWSConfig], "DeleteStreamProcessor", Name=)

# DeleteStreamProcessor Operation

Deletes the stream processor identified by `Name`. You assign the value for `Name` when you create the stream processor with . You might not be able to use the same name for a stream processor for a few seconds after calling `DeleteStreamProcessor`.

# Arguments

## `Name = ::String` -- *Required*
The name of the stream processor you want to delete.




# Returns

`DeleteStreamProcessorResponse`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `InvalidParameterException`, `ResourceNotFoundException`, `ResourceInUseException` or `ProvisionedThroughputExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/DeleteStreamProcessor)
"""
@inline delete_stream_processor(aws::AWSConfig=default_aws_config(); args...) = delete_stream_processor(aws, args)

@inline delete_stream_processor(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "DeleteStreamProcessor", args)

@inline delete_stream_processor(args) = delete_stream_processor(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.describe_stream_processor
    describe_stream_processor([::AWSConfig], arguments::Dict)
    describe_stream_processor([::AWSConfig]; Name=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "DescribeStreamProcessor", arguments::Dict)
    rekognition([::AWSConfig], "DescribeStreamProcessor", Name=)

# DescribeStreamProcessor Operation

Provides information about a stream processor created by . You can get information about the input and output streams, the input parameters for the face recognition being performed, and the current status of the stream processor.

# Arguments

## `Name = ::String` -- *Required*
Name of the stream processor for which you want information.




# Returns

`DescribeStreamProcessorResponse`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `InvalidParameterException`, `ResourceNotFoundException` or `ProvisionedThroughputExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/DescribeStreamProcessor)
"""
@inline describe_stream_processor(aws::AWSConfig=default_aws_config(); args...) = describe_stream_processor(aws, args)

@inline describe_stream_processor(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "DescribeStreamProcessor", args)

@inline describe_stream_processor(args) = describe_stream_processor(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.detect_faces
    detect_faces([::AWSConfig], arguments::Dict)
    detect_faces([::AWSConfig]; Image=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "DetectFaces", arguments::Dict)
    rekognition([::AWSConfig], "DetectFaces", Image=, <keyword arguments>)

# DetectFaces Operation

Detects faces within an image that is provided as input.

`DetectFaces` detects the 100 largest faces in the image. For each face detected, the operation returns face details including a bounding box of the face, a confidence value (that the bounding box contains a face), and a fixed set of attributes such as facial landmarks (for example, coordinates of eye and mouth), gender, presence of beard, sunglasses, etc.

The face-detection algorithm is most effective on frontal faces. For non-frontal or obscured faces, the algorithm may not detect the faces or might detect faces with lower confidence.

You pass the input image either as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the Amazon CLI to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file.

**Note**
> This is a stateless API operation. That is, the operation does not persist any data.

This operation requires permissions to perform the `rekognition:DetectFaces` action.

# Arguments

## `Image = [ ... ]` -- *Required*
The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.
```
 Image = [
        "Bytes" =>  blob,
        "S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]
    ]
```

## `Attributes = ["DEFAULT" or "ALL", ...]`
An array of facial attributes you want to be returned. This can be the default list of attributes or all attributes. If you don't specify a value for `Attributes` or if you specify `["DEFAULT"]`, the API returns the following subset of facial attributes: `BoundingBox`, `Confidence`, `Pose`, `Quality` and `Landmarks`. If you provide `["ALL"]`, all facial attributes are returned but the operation will take longer to complete.

If you provide both, `["ALL", "DEFAULT"]`, the service uses a logical AND operator to determine which attributes to return (in this case, all attributes).




# Returns

`DetectFacesResponse`

# Exceptions

`InvalidS3ObjectException`, `InvalidParameterException`, `ImageTooLargeException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException` or `InvalidImageFormatException`.

# Example: To detect faces in an image

This operation detects faces in an image stored in an AWS S3 bucket.

Input:
```
[
    "Image" => [
        "S3Object" => [
            "Bucket" => "mybucket",
            "Name" => "myphoto"
        ]
    ]
]
```

Output:
```
Dict(
    "FaceDetails" => [
        Dict(
            "BoundingBox" => Dict(
                "Height" => 0.18000000715255737,
                "Left" => 0.5555555820465088,
                "Top" => 0.33666667342185974,
                "Width" => 0.23999999463558197
            ),
            "Confidence" => 100,
            "Landmarks" => [
                Dict(
                    "Type" => "eyeLeft",
                    "X" => 0.6394737362861633,
                    "Y" => 0.40819624066352844
                ),
                Dict(
                    "Type" => "eyeRight",
                    "X" => 0.7266660928726196,
                    "Y" => 0.41039225459098816
                ),
                Dict(
                    "Type" => "eyeRight",
                    "X" => 0.6912462115287781,
                    "Y" => 0.44240960478782654
                ),
                Dict(
                    "Type" => "mouthDown",
                    "X" => 0.6306198239326477,
                    "Y" => 0.46700039505958557
                ),
                Dict(
                    "Type" => "mouthUp",
                    "X" => 0.7215608954429626,
                    "Y" => 0.47114261984825134
                )
            ],
            "Pose" => Dict(
                "Pitch" => 4.050806522369385,
                "Roll" => 0.9950747489929199,
                "Yaw" => 13.693790435791016
            ),
            "Quality" => Dict(
                "Brightness" => 37.60169982910156,
                "Sharpness" => 80
            )
        )
    ],
    "OrientationCorrection" => "ROTATE_0"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/DetectFaces)
"""
@inline detect_faces(aws::AWSConfig=default_aws_config(); args...) = detect_faces(aws, args)

@inline detect_faces(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "DetectFaces", args)

@inline detect_faces(args) = detect_faces(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.detect_labels
    detect_labels([::AWSConfig], arguments::Dict)
    detect_labels([::AWSConfig]; Image=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "DetectLabels", arguments::Dict)
    rekognition([::AWSConfig], "DetectLabels", Image=, <keyword arguments>)

# DetectLabels Operation

Detects instances of real-world entities within an image (JPEG or PNG) provided as input. This includes objects like flower, tree, and table; events like wedding, graduation, and birthday party; and concepts like landscape, evening, and nature.

For an example, see Analyzing Images Stored in an Amazon S3 Bucket in the Amazon Rekognition Developer Guide.

**Note**
> `DetectLabels` does not support the detection of activities. However, activity detection is supported for label detection in videos. For more information, see StartLabelDetection in the Amazon Rekognition Developer Guide.

You pass the input image as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the Amazon CLI to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file.

For each object, scene, and concept the API returns one or more labels. Each label provides the object name, and the level of confidence that the image contains the object. For example, suppose the input image has a lighthouse, the sea, and a rock. The response will include all three labels, one for each object.

`{Name: lighthouse, Confidence: 98.4629}`

`{Name: rock,Confidence: 79.2097}`

`{Name: sea,Confidence: 75.061}`

In the preceding example, the operation returns one label for each of the three objects. The operation can also return multiple labels for the same object in the image. For example, if the input image shows a flower (for example, a tulip), the operation might return the following three labels.

`{Name: flower,Confidence: 99.0562}`

`{Name: plant,Confidence: 99.0562}`

`{Name: tulip,Confidence: 99.0562}`

In this example, the detection algorithm more precisely identifies the flower as a tulip.

In response, the API returns an array of labels. In addition, the response also includes the orientation correction. Optionally, you can specify `MinConfidence` to control the confidence threshold for the labels returned. The default is 50%. You can also add the `MaxLabels` parameter to limit the number of labels returned.

**Note**
> If the object detected is a person, the operation doesn't provide the same facial details that the [DetectFaces](@ref) operation provides.

This is a stateless API operation. That is, the operation does not persist any data.

This operation requires permissions to perform the `rekognition:DetectLabels` action.

# Arguments

## `Image = [ ... ]` -- *Required*
The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.
```
 Image = [
        "Bytes" =>  blob,
        "S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]
    ]
```

## `MaxLabels = ::Int`
Maximum number of labels you want the service to return in the response. The service returns the specified number of highest confidence labels.


## `MinConfidence = float`
Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't return any labels with confidence lower than this specified value.

If `MinConfidence` is not specified, the operation returns labels with a confidence values greater than or equal to 50 percent.




# Returns

`DetectLabelsResponse`

# Exceptions

`InvalidS3ObjectException`, `InvalidParameterException`, `ImageTooLargeException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException` or `InvalidImageFormatException`.

# Example: To detect labels

This operation detects labels in the supplied image

Input:
```
[
    "Image" => [
        "S3Object" => [
            "Bucket" => "mybucket",
            "Name" => "myphoto"
        ]
    ],
    "MaxLabels" => 123,
    "MinConfidence" => 70
]
```

Output:
```
Dict(
    "Labels" => [
        Dict(
            "Confidence" => 99.25072479248047,
            "Name" => "People"
        ),
        Dict(
            "Confidence" => 99.25074005126953,
            "Name" => "Person"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/DetectLabels)
"""
@inline detect_labels(aws::AWSConfig=default_aws_config(); args...) = detect_labels(aws, args)

@inline detect_labels(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "DetectLabels", args)

@inline detect_labels(args) = detect_labels(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.detect_moderation_labels
    detect_moderation_labels([::AWSConfig], arguments::Dict)
    detect_moderation_labels([::AWSConfig]; Image=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "DetectModerationLabels", arguments::Dict)
    rekognition([::AWSConfig], "DetectModerationLabels", Image=, <keyword arguments>)

# DetectModerationLabels Operation

Detects explicit or suggestive adult content in a specified JPEG or PNG format image. Use `DetectModerationLabels` to moderate images depending on your requirements. For example, you might want to filter images that contain nudity, but not images containing suggestive content.

To filter images, use the labels returned by `DetectModerationLabels` to determine which types of content are appropriate.

For information about moderation labels, see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.

You pass the input image either as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the Amazon CLI to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file.

# Arguments

## `Image = [ ... ]` -- *Required*
The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.
```
 Image = [
        "Bytes" =>  blob,
        "S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]
    ]
```

## `MinConfidence = float`
Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't return any labels with a confidence level lower than this specified value.

If you don't specify `MinConfidence`, the operation returns labels with confidence values greater than or equal to 50 percent.




# Returns

`DetectModerationLabelsResponse`

# Exceptions

`InvalidS3ObjectException`, `InvalidParameterException`, `ImageTooLargeException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException` or `InvalidImageFormatException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/DetectModerationLabels)
"""
@inline detect_moderation_labels(aws::AWSConfig=default_aws_config(); args...) = detect_moderation_labels(aws, args)

@inline detect_moderation_labels(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "DetectModerationLabels", args)

@inline detect_moderation_labels(args) = detect_moderation_labels(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.detect_text
    detect_text([::AWSConfig], arguments::Dict)
    detect_text([::AWSConfig]; Image=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "DetectText", arguments::Dict)
    rekognition([::AWSConfig], "DetectText", Image=)

# DetectText Operation

Detects text in the input image and converts it into machine-readable text.

Pass the input image as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, you must pass it as a reference to an image in an Amazon S3 bucket. For the AWS CLI, passing image bytes is not supported. The image must be either a .png or .jpeg formatted file.

The `DetectText` operation returns text in an array of elements, `TextDetections`. Each `TextDetection` element provides information about a single word or line of text that was detected in the image.

A word is one or more ISO basic latin script characters that are not separated by spaces. `DetectText` can detect up to 50 words in an image.

A line is a string of equally spaced words. A line isn't necessarily a complete sentence. For example, a driver's license number is detected as a line. A line ends when there is no aligned text after it. Also, a line ends when there is a large gap between words, relative to the length of the words. This means, depending on the gap between words, Amazon Rekognition may detect multiple lines in text aligned in the same direction. Periods don't represent the end of a line. If a sentence spans multiple lines, the `DetectText` operation returns multiple lines.

To determine whether a `TextDetection` element is a line of text or a word, use the `TextDetection` object `Type` field.

To be detected, text must be within +/- 30 degrees orientation of the horizontal axis.

For more information, see DetectText in the Amazon Rekognition Developer Guide.

# Arguments

## `Image = [ ... ]` -- *Required*
The input image as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI to call Amazon Rekognition operations, you can't pass image bytes.
```
 Image = [
        "Bytes" =>  blob,
        "S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]
    ]
```



# Returns

`DetectTextResponse`

# Exceptions

`InvalidS3ObjectException`, `InvalidParameterException`, `ImageTooLargeException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException` or `InvalidImageFormatException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/DetectText)
"""
@inline detect_text(aws::AWSConfig=default_aws_config(); args...) = detect_text(aws, args)

@inline detect_text(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "DetectText", args)

@inline detect_text(args) = detect_text(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.get_celebrity_info
    get_celebrity_info([::AWSConfig], arguments::Dict)
    get_celebrity_info([::AWSConfig]; Id=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "GetCelebrityInfo", arguments::Dict)
    rekognition([::AWSConfig], "GetCelebrityInfo", Id=)

# GetCelebrityInfo Operation

Gets the name and additional information about a celebrity based on his or her Rekognition ID. The additional information is returned as an array of URLs. If there is no additional information about the celebrity, this list is empty.

For more information, see Recognizing Celebrities in an Image in the Amazon Rekognition Developer Guide.

This operation requires permissions to perform the `rekognition:GetCelebrityInfo` action.

# Arguments

## `Id = ::String` -- *Required*
The ID for the celebrity. You get the celebrity ID from a call to the operation, which recognizes celebrities in an image.




# Returns

`GetCelebrityInfoResponse`

# Exceptions

`InvalidParameterException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/GetCelebrityInfo)
"""
@inline get_celebrity_info(aws::AWSConfig=default_aws_config(); args...) = get_celebrity_info(aws, args)

@inline get_celebrity_info(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "GetCelebrityInfo", args)

@inline get_celebrity_info(args) = get_celebrity_info(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.get_celebrity_recognition
    get_celebrity_recognition([::AWSConfig], arguments::Dict)
    get_celebrity_recognition([::AWSConfig]; JobId=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "GetCelebrityRecognition", arguments::Dict)
    rekognition([::AWSConfig], "GetCelebrityRecognition", JobId=, <keyword arguments>)

# GetCelebrityRecognition Operation

Gets the celebrity recognition results for a Amazon Rekognition Video analysis started by .

Celebrity recognition in a video is an asynchronous operation. Analysis is started by a call to which returns a job identifier (`JobId`). When the celebrity recognition operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to `StartCelebrityRecognition`. To get the results of the celebrity recognition analysis, first check that the status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call `GetCelebrityDetection` and pass the job identifier (`JobId`) from the initial call to `StartCelebrityDetection`.

For more information, see Working With Stored Videos in the Amazon Rekognition Developer Guide.

`GetCelebrityRecognition` returns detected celebrities and the time(s) they are detected in an array (`Celebrities`) of objects. Each `CelebrityRecognition` contains information about the celebrity in a object and the time, `Timestamp`, the celebrity was detected.

**Note**
> `GetCelebrityRecognition` only returns the default facial attributes (`BoundingBox`, `Confidence`, `Landmarks`, `Pose`, and `Quality`). The other facial attributes listed in the `Face` object of the following response syntax are not returned. For more information, see FaceDetail in the Amazon Rekognition Developer Guide.

By default, the `Celebrities` array is sorted by time (milliseconds from the start of the video). You can also sort the array by celebrity by specifying the value `ID` in the `SortBy` input parameter.

The `CelebrityDetail` object includes the celebrity identifer and additional information urls. If you don't store the additional information urls, you can get them later by calling with the celebrity identifer.

No information is returned for faces not recognized as celebrities.

Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in `MaxResults`, the value of `NextToken` in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call `GetCelebrityDetection` and populate the `NextToken` request parameter with the token value returned from the previous call to `GetCelebrityRecognition`.

# Arguments

## `JobId = ::String` -- *Required*
Job identifier for the required celebrity recognition analysis. You can get the job identifer from a call to `StartCelebrityRecognition`.


## `MaxResults = ::Int`
Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.


## `NextToken = ::String`
If the previous response was incomplete (because there is more recognized celebrities to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of celebrities.


## `SortBy = "ID" or "TIMESTAMP"`
Sort to use for celebrities returned in `Celebrities` field. Specify `ID` to sort by the celebrity identifier, specify `TIMESTAMP` to sort by the time the celebrity was recognized.




# Returns

`GetCelebrityRecognitionResponse`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `InvalidParameterException`, `InvalidPaginationTokenException`, `ProvisionedThroughputExceededException`, `ResourceNotFoundException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/GetCelebrityRecognition)
"""
@inline get_celebrity_recognition(aws::AWSConfig=default_aws_config(); args...) = get_celebrity_recognition(aws, args)

@inline get_celebrity_recognition(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "GetCelebrityRecognition", args)

@inline get_celebrity_recognition(args) = get_celebrity_recognition(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.get_content_moderation
    get_content_moderation([::AWSConfig], arguments::Dict)
    get_content_moderation([::AWSConfig]; JobId=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "GetContentModeration", arguments::Dict)
    rekognition([::AWSConfig], "GetContentModeration", JobId=, <keyword arguments>)

# GetContentModeration Operation

Gets the content moderation analysis results for a Amazon Rekognition Video analysis started by .

Content moderation analysis of a video is an asynchronous operation. You start analysis by calling . which returns a job identifier (`JobId`). When analysis finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to `StartContentModeration`. To get the results of the content moderation analysis, first check that the status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call `GetCelebrityDetection` and pass the job identifier (`JobId`) from the initial call to `StartCelebrityDetection`.

For more information, see Working with Stored Videos in the Amazon Rekognition Devlopers Guide.

`GetContentModeration` returns detected content moderation labels, and the time they are detected, in an array, `ModerationLabels`, of objects.

By default, the moderated labels are returned sorted by time, in milliseconds from the start of the video. You can also sort them by moderated label by specifying `NAME` for the `SortBy` input parameter.

Since video analysis can return a large number of results, use the `MaxResults` parameter to limit the number of labels returned in a single call to `GetContentModeration`. If there are more results than specified in `MaxResults`, the value of `NextToken` in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call `GetContentModeration` and populate the `NextToken` request parameter with the value of `NextToken` returned from the previous call to `GetContentModeration`.

For more information, see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.

# Arguments

## `JobId = ::String` -- *Required*
The identifier for the content moderation job. Use `JobId` to identify the job in a subsequent call to `GetContentModeration`.


## `MaxResults = ::Int`
Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.


## `NextToken = ::String`
If the previous response was incomplete (because there is more data to retrieve), Amazon Rekognition returns a pagination token in the response. You can use this pagination token to retrieve the next set of content moderation labels.


## `SortBy = "NAME" or "TIMESTAMP"`
Sort to use for elements in the `ModerationLabelDetections` array. Use `TIMESTAMP` to sort array elements by the time labels are detected. Use `NAME` to alphabetically group elements for a label together. Within each label group, the array element are sorted by detection confidence. The default sort is by `TIMESTAMP`.




# Returns

`GetContentModerationResponse`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `InvalidParameterException`, `InvalidPaginationTokenException`, `ProvisionedThroughputExceededException`, `ResourceNotFoundException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/GetContentModeration)
"""
@inline get_content_moderation(aws::AWSConfig=default_aws_config(); args...) = get_content_moderation(aws, args)

@inline get_content_moderation(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "GetContentModeration", args)

@inline get_content_moderation(args) = get_content_moderation(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.get_face_detection
    get_face_detection([::AWSConfig], arguments::Dict)
    get_face_detection([::AWSConfig]; JobId=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "GetFaceDetection", arguments::Dict)
    rekognition([::AWSConfig], "GetFaceDetection", JobId=, <keyword arguments>)

# GetFaceDetection Operation

Gets face detection results for a Amazon Rekognition Video analysis started by .

Face detection with Amazon Rekognition Video is an asynchronous operation. You start face detection by calling which returns a job identifier (`JobId`). When the face detection operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to `StartFaceDetection`. To get the results of the face detection operation, first check that the status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call and pass the job identifier (`JobId`) from the initial call to `StartFaceDetection`.

`GetFaceDetection` returns an array of detected faces (`Faces`) sorted by the time the faces were detected.

Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in `MaxResults`, the value of `NextToken` in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call `GetFaceDetection` and populate the `NextToken` request parameter with the token value returned from the previous call to `GetFaceDetection`.

# Arguments

## `JobId = ::String` -- *Required*
Unique identifier for the face detection job. The `JobId` is returned from `StartFaceDetection`.


## `MaxResults = ::Int`
Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.


## `NextToken = ::String`
If the previous response was incomplete (because there are more faces to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of faces.




# Returns

`GetFaceDetectionResponse`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `InvalidParameterException`, `InvalidPaginationTokenException`, `ProvisionedThroughputExceededException`, `ResourceNotFoundException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/GetFaceDetection)
"""
@inline get_face_detection(aws::AWSConfig=default_aws_config(); args...) = get_face_detection(aws, args)

@inline get_face_detection(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "GetFaceDetection", args)

@inline get_face_detection(args) = get_face_detection(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.get_face_search
    get_face_search([::AWSConfig], arguments::Dict)
    get_face_search([::AWSConfig]; JobId=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "GetFaceSearch", arguments::Dict)
    rekognition([::AWSConfig], "GetFaceSearch", JobId=, <keyword arguments>)

# GetFaceSearch Operation

Gets the face search results for Amazon Rekognition Video face search started by . The search returns faces in a collection that match the faces of persons detected in a video. It also includes the time(s) that faces are matched in the video.

Face search in a video is an asynchronous operation. You start face search by calling to which returns a job identifier (`JobId`). When the search operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to `StartFaceSearch`. To get the search results, first check that the status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call `GetFaceSearch` and pass the job identifier (`JobId`) from the initial call to `StartFaceSearch`.

For more information, see Searching Faces in a Collection in the Amazon Rekognition Developer Guide.

The search results are retured in an array, `Persons`, of objects. Each`PersonMatch` element contains details about the matching faces in the input collection, person information (facial attributes, bounding boxes, and person identifer) for the matched person, and the time the person was matched in the video.

**Note**
> `GetFaceSearch` only returns the default facial attributes (`BoundingBox`, `Confidence`, `Landmarks`, `Pose`, and `Quality`). The other facial attributes listed in the `Face` object of the following response syntax are not returned. For more information, see FaceDetail in the Amazon Rekognition Developer Guide.

By default, the `Persons` array is sorted by the time, in milliseconds from the start of the video, persons are matched. You can also sort by persons by specifying `INDEX` for the `SORTBY` input parameter.

# Arguments

## `JobId = ::String` -- *Required*
The job identifer for the search request. You get the job identifier from an initial call to `StartFaceSearch`.


## `MaxResults = ::Int`
Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.


## `NextToken = ::String`
If the previous response was incomplete (because there is more search results to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of search results.


## `SortBy = "INDEX" or "TIMESTAMP"`
Sort to use for grouping faces in the response. Use `TIMESTAMP` to group faces by the time that they are recognized. Use `INDEX` to sort by recognized faces.




# Returns

`GetFaceSearchResponse`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `InvalidParameterException`, `InvalidPaginationTokenException`, `ProvisionedThroughputExceededException`, `ResourceNotFoundException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/GetFaceSearch)
"""
@inline get_face_search(aws::AWSConfig=default_aws_config(); args...) = get_face_search(aws, args)

@inline get_face_search(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "GetFaceSearch", args)

@inline get_face_search(args) = get_face_search(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.get_label_detection
    get_label_detection([::AWSConfig], arguments::Dict)
    get_label_detection([::AWSConfig]; JobId=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "GetLabelDetection", arguments::Dict)
    rekognition([::AWSConfig], "GetLabelDetection", JobId=, <keyword arguments>)

# GetLabelDetection Operation

Gets the label detection results of a Amazon Rekognition Video analysis started by .

The label detection operation is started by a call to which returns a job identifier (`JobId`). When the label detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to `StartlabelDetection`. To get the results of the label detection operation, first check that the status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call and pass the job identifier (`JobId`) from the initial call to `StartLabelDetection`.

`GetLabelDetection` returns an array of detected labels (`Labels`) sorted by the time the labels were detected. You can also sort by the label name by specifying `NAME` for the `SortBy` input parameter.

The labels returned include the label name, the percentage confidence in the accuracy of the detected label, and the time the label was detected in the video.

Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in `MaxResults`, the value of `NextToken` in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call `GetlabelDetection` and populate the `NextToken` request parameter with the token value returned from the previous call to `GetLabelDetection`.

# Arguments

## `JobId = ::String` -- *Required*
Job identifier for the label detection operation for which you want results returned. You get the job identifer from an initial call to `StartlabelDetection`.


## `MaxResults = ::Int`
Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.


## `NextToken = ::String`
If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of labels.


## `SortBy = "NAME" or "TIMESTAMP"`
Sort to use for elements in the `Labels` array. Use `TIMESTAMP` to sort array elements by the time labels are detected. Use `NAME` to alphabetically group elements for a label together. Within each label group, the array element are sorted by detection confidence. The default sort is by `TIMESTAMP`.




# Returns

`GetLabelDetectionResponse`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `InvalidParameterException`, `InvalidPaginationTokenException`, `ProvisionedThroughputExceededException`, `ResourceNotFoundException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/GetLabelDetection)
"""
@inline get_label_detection(aws::AWSConfig=default_aws_config(); args...) = get_label_detection(aws, args)

@inline get_label_detection(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "GetLabelDetection", args)

@inline get_label_detection(args) = get_label_detection(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.get_person_tracking
    get_person_tracking([::AWSConfig], arguments::Dict)
    get_person_tracking([::AWSConfig]; JobId=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "GetPersonTracking", arguments::Dict)
    rekognition([::AWSConfig], "GetPersonTracking", JobId=, <keyword arguments>)

# GetPersonTracking Operation

Gets the person tracking results of a Amazon Rekognition Video analysis started by .

The person detection operation is started by a call to `StartPersonTracking` which returns a job identifier (`JobId`). When the person detection operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to `StartPersonTracking`.

To get the results of the person tracking operation, first check that the status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call and pass the job identifier (`JobId`) from the initial call to `StartPersonTracking`.

`GetPersonTracking` returns an array, `Persons`, of tracked persons and the time(s) they were tracked in the video.

**Note**
> `GetPersonTracking` only returns the default facial attributes (`BoundingBox`, `Confidence`, `Landmarks`, `Pose`, and `Quality`). The other facial attributes listed in the `Face` object of the following response syntax are not returned.

For more information, see FaceDetail in the Amazon Rekognition Developer Guide.

By default, the array is sorted by the time(s) a person is tracked in the video. You can sort by tracked persons by specifying `INDEX` for the `SortBy` input parameter.

Use the `MaxResults` parameter to limit the number of items returned. If there are more results than specified in `MaxResults`, the value of `NextToken` in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call `GetPersonTracking` and populate the `NextToken` request parameter with the token value returned from the previous call to `GetPersonTracking`.

# Arguments

## `JobId = ::String` -- *Required*
The identifier for a job that tracks persons in a video. You get the `JobId` from a call to `StartPersonTracking`.


## `MaxResults = ::Int`
Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.


## `NextToken = ::String`
If the previous response was incomplete (because there are more persons to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of persons.


## `SortBy = "INDEX" or "TIMESTAMP"`
Sort to use for elements in the `Persons` array. Use `TIMESTAMP` to sort array elements by the time persons are detected. Use `INDEX` to sort by the tracked persons. If you sort by `INDEX`, the array elements for each person are sorted by detection confidence. The default sort is by `TIMESTAMP`.




# Returns

`GetPersonTrackingResponse`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `InvalidParameterException`, `InvalidPaginationTokenException`, `ProvisionedThroughputExceededException`, `ResourceNotFoundException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/GetPersonTracking)
"""
@inline get_person_tracking(aws::AWSConfig=default_aws_config(); args...) = get_person_tracking(aws, args)

@inline get_person_tracking(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "GetPersonTracking", args)

@inline get_person_tracking(args) = get_person_tracking(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.index_faces
    index_faces([::AWSConfig], arguments::Dict)
    index_faces([::AWSConfig]; CollectionId=, Image=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "IndexFaces", arguments::Dict)
    rekognition([::AWSConfig], "IndexFaces", CollectionId=, Image=, <keyword arguments>)

# IndexFaces Operation

Detects faces in the input image and adds them to the specified collection.

Amazon Rekognition does not save the actual faces detected. Instead, the underlying detection algorithm first detects the faces in the input image, and for each face extracts facial features into a feature vector, and stores it in the back-end database. Amazon Rekognition uses feature vectors when performing face match and search operations using the and operations.

If you are using version 1.0 of the face detection model, `IndexFaces` indexes the 15 largest faces in the input image. Later versions of the face detection model index the 100 largest faces in the input image. To determine which version of the model you are using, check the the value of `FaceModelVersion` in the response from `IndexFaces`.

For more information, see Model Versioning in the Amazon Rekognition Developer Guide.

If you provide the optional `ExternalImageID` for the input image you provided, Amazon Rekognition associates this ID with all faces that it detects. When you call the operation, the response returns the external ID. You can use this external image ID to create a client-side index to associate the faces with each image. You can then use the index to find all faces in an image.

In response, the operation returns an array of metadata for all detected faces. This includes, the bounding box of the detected face, confidence value (indicating the bounding box contains a face), a face ID assigned by the service for each face that is detected and stored, and an image ID assigned by the service for the input image. If you request all facial attributes (using the `detectionAttributes` parameter, Amazon Rekognition returns detailed facial attributes such as facial landmarks (for example, location of eye and mount) and other facial attributes such gender. If you provide the same image, specify the same collection, and use the same external ID in the `IndexFaces` operation, Amazon Rekognition doesn't save duplicate face metadata.

For more information, see Adding Faces to a Collection in the Amazon Rekognition Developer Guide.

The input image is passed either as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the Amazon CLI to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file.

This operation requires permissions to perform the `rekognition:IndexFaces` action.

# Arguments

## `CollectionId = ::String` -- *Required*
The ID of an existing collection to which you want to add the faces that are detected in the input images.


## `Image = [ ... ]` -- *Required*
The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.
```
 Image = [
        "Bytes" =>  blob,
        "S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]
    ]
```

## `ExternalImageId = ::String`
ID you want to assign to all the faces detected in the image.


## `DetectionAttributes = ["DEFAULT" or "ALL", ...]`
An array of facial attributes that you want to be returned. This can be the default list of attributes or all attributes. If you don't specify a value for `Attributes` or if you specify `["DEFAULT"]`, the API returns the following subset of facial attributes: `BoundingBox`, `Confidence`, `Pose`, `Quality` and `Landmarks`. If you provide `["ALL"]`, all facial attributes are returned but the operation will take longer to complete.

If you provide both, `["ALL", "DEFAULT"]`, the service uses a logical AND operator to determine which attributes to return (in this case, all attributes).




# Returns

`IndexFacesResponse`

# Exceptions

`InvalidS3ObjectException`, `InvalidParameterException`, `ImageTooLargeException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException`, `ResourceNotFoundException` or `InvalidImageFormatException`.

# Example: To add a face to a collection

This operation detects faces in an image and adds them to the specified Rekognition collection.

Input:
```
[
    "CollectionId" => "myphotos",
    "DetectionAttributes" => [

    ],
    "ExternalImageId" => "myphotoid",
    "Image" => [
        "S3Object" => [
            "Bucket" => "mybucket",
            "Name" => "myphoto"
        ]
    ]
]
```

Output:
```
Dict(
    "FaceRecords" => [
        Dict(
            "Face" => Dict(
                "BoundingBox" => Dict(
                    "Height" => 0.33481481671333313,
                    "Left" => 0.31888890266418457,
                    "Top" => 0.4933333396911621,
                    "Width" => 0.25
                ),
                "Confidence" => 99.9991226196289,
                "FaceId" => "ff43d742-0c13-5d16-a3e8-03d3f58e980b",
                "ImageId" => "465f4e93-763e-51d0-b030-b9667a2d94b1"
            ),
            "FaceDetail" => Dict(
                "BoundingBox" => Dict(
                    "Height" => 0.33481481671333313,
                    "Left" => 0.31888890266418457,
                    "Top" => 0.4933333396911621,
                    "Width" => 0.25
                ),
                "Confidence" => 99.9991226196289,
                "Landmarks" => [
                    Dict(
                        "Type" => "eyeLeft",
                        "X" => 0.3976764678955078,
                        "Y" => 0.6248345971107483
                    ),
                    Dict(
                        "Type" => "eyeRight",
                        "X" => 0.4810936450958252,
                        "Y" => 0.6317117214202881
                    ),
                    Dict(
                        "Type" => "noseLeft",
                        "X" => 0.41986238956451416,
                        "Y" => 0.7111940383911133
                    ),
                    Dict(
                        "Type" => "mouthDown",
                        "X" => 0.40525302290916443,
                        "Y" => 0.7497701048851013
                    ),
                    Dict(
                        "Type" => "mouthUp",
                        "X" => 0.4753248989582062,
                        "Y" => 0.7558549642562866
                    )
                ],
                "Pose" => Dict(
                    "Pitch" => -9.713645935058594,
                    "Roll" => 4.707281112670898,
                    "Yaw" => -24.438663482666016
                ),
                "Quality" => Dict(
                    "Brightness" => 29.23358917236328,
                    "Sharpness" => 80
                )
            )
        ),
        Dict(
            "Face" => Dict(
                "BoundingBox" => Dict(
                    "Height" => 0.32592591643333435,
                    "Left" => 0.5144444704055786,
                    "Top" => 0.15111111104488373,
                    "Width" => 0.24444444477558136
                ),
                "Confidence" => 99.99950408935547,
                "FaceId" => "8be04dba-4e58-520d-850e-9eae4af70eb2",
                "ImageId" => "465f4e93-763e-51d0-b030-b9667a2d94b1"
            ),
            "FaceDetail" => Dict(
                "BoundingBox" => Dict(
                    "Height" => 0.32592591643333435,
                    "Left" => 0.5144444704055786,
                    "Top" => 0.15111111104488373,
                    "Width" => 0.24444444477558136
                ),
                "Confidence" => 99.99950408935547,
                "Landmarks" => [
                    Dict(
                        "Type" => "eyeLeft",
                        "X" => 0.6006892323493958,
                        "Y" => 0.290842205286026
                    ),
                    Dict(
                        "Type" => "eyeRight",
                        "X" => 0.6808141469955444,
                        "Y" => 0.29609042406082153
                    ),
                    Dict(
                        "Type" => "noseLeft",
                        "X" => 0.6395332217216492,
                        "Y" => 0.3522595763206482
                    ),
                    Dict(
                        "Type" => "mouthDown",
                        "X" => 0.5892083048820496,
                        "Y" => 0.38689887523651123
                    ),
                    Dict(
                        "Type" => "mouthUp",
                        "X" => 0.674560010433197,
                        "Y" => 0.394125759601593
                    )
                ],
                "Pose" => Dict(
                    "Pitch" => -4.683138370513916,
                    "Roll" => 2.1029529571533203,
                    "Yaw" => 6.716655254364014
                ),
                "Quality" => Dict(
                    "Brightness" => 34.951698303222656,
                    "Sharpness" => 160
                )
            )
        )
    ],
    "OrientationCorrection" => "ROTATE_0"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/IndexFaces)
"""
@inline index_faces(aws::AWSConfig=default_aws_config(); args...) = index_faces(aws, args)

@inline index_faces(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "IndexFaces", args)

@inline index_faces(args) = index_faces(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.list_collections
    list_collections([::AWSConfig], arguments::Dict)
    list_collections([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "ListCollections", arguments::Dict)
    rekognition([::AWSConfig], "ListCollections", <keyword arguments>)

# ListCollections Operation

Returns list of collection IDs in your account. If the result is truncated, the response also provides a `NextToken` that you can use in the subsequent request to fetch the next set of collection IDs.

For an example, see Listing Collections in the Amazon Rekognition Developer Guide.

This operation requires permissions to perform the `rekognition:ListCollections` action.

# Arguments

## `NextToken = ::String`
Pagination token from the previous response.


## `MaxResults = ::Int`
Maximum number of collection IDs to return.




# Returns

`ListCollectionsResponse`

# Exceptions

`InvalidParameterException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException`, `InvalidPaginationTokenException` or `ResourceNotFoundException`.

# Example: To list the collections

This operation returns a list of Rekognition collections.

Input:
```
[

]
```

Output:
```
Dict(
    "CollectionIds" => [
        "myphotos"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/ListCollections)
"""
@inline list_collections(aws::AWSConfig=default_aws_config(); args...) = list_collections(aws, args)

@inline list_collections(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "ListCollections", args)

@inline list_collections(args) = list_collections(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.list_faces
    list_faces([::AWSConfig], arguments::Dict)
    list_faces([::AWSConfig]; CollectionId=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "ListFaces", arguments::Dict)
    rekognition([::AWSConfig], "ListFaces", CollectionId=, <keyword arguments>)

# ListFaces Operation

Returns metadata for faces in the specified collection. This metadata includes information such as the bounding box coordinates, the confidence (that the bounding box contains a face), and face ID. For an example, see Listing Faces in a Collection in the Amazon Rekognition Developer Guide.

This operation requires permissions to perform the `rekognition:ListFaces` action.

# Arguments

## `CollectionId = ::String` -- *Required*
ID of the collection from which to list the faces.


## `NextToken = ::String`
If the previous response was incomplete (because there is more data to retrieve), Amazon Rekognition returns a pagination token in the response. You can use this pagination token to retrieve the next set of faces.


## `MaxResults = ::Int`
Maximum number of faces to return.




# Returns

`ListFacesResponse`

# Exceptions

`InvalidParameterException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException`, `InvalidPaginationTokenException` or `ResourceNotFoundException`.

# Example: To list the faces in a collection

This operation lists the faces in a Rekognition collection.

Input:
```
[
    "CollectionId" => "myphotos",
    "MaxResults" => 20
]
```

Output:
```
Dict(
    "Faces" => [
        Dict(
            "BoundingBox" => Dict(
                "Height" => 0.18000000715255737,
                "Left" => 0.5555559992790222,
                "Top" => 0.336667001247406,
                "Width" => 0.23999999463558197
            ),
            "Confidence" => 100,
            "FaceId" => "1c62e8b5-69a7-5b7d-b3cd-db4338a8a7e7",
            "ImageId" => "147fdf82-7a71-52cf-819b-e786c7b9746e"
        ),
        Dict(
            "BoundingBox" => Dict(
                "Height" => 0.16555599868297577,
                "Left" => 0.30963000655174255,
                "Top" => 0.7066670060157776,
                "Width" => 0.22074100375175476
            ),
            "Confidence" => 100,
            "FaceId" => "29a75abe-397b-5101-ba4f-706783b2246c",
            "ImageId" => "147fdf82-7a71-52cf-819b-e786c7b9746e"
        ),
        Dict(
            "BoundingBox" => Dict(
                "Height" => 0.3234420120716095,
                "Left" => 0.3233329951763153,
                "Top" => 0.5,
                "Width" => 0.24222199618816376
            ),
            "Confidence" => 99.99829864501953,
            "FaceId" => "38271d79-7bc2-5efb-b752-398a8d575b85",
            "ImageId" => "d5631190-d039-54e4-b267-abd22c8647c5"
        ),
        Dict(
            "BoundingBox" => Dict(
                "Height" => 0.03555560111999512,
                "Left" => 0.37388700246810913,
                "Top" => 0.2477779984474182,
                "Width" => 0.04747769981622696
            ),
            "Confidence" => 99.99210357666016,
            "FaceId" => "3b01bef0-c883-5654-ba42-d5ad28b720b3",
            "ImageId" => "812d9f04-86f9-54fc-9275-8d0dcbcb6784"
        ),
        Dict(
            "BoundingBox" => Dict(
                "Height" => 0.05333330109715462,
                "Left" => 0.2937690019607544,
                "Top" => 0.35666701197624207,
                "Width" => 0.07121659815311432
            ),
            "Confidence" => 99.99919891357422,
            "FaceId" => "4839a608-49d0-566c-8301-509d71b534d1",
            "ImageId" => "812d9f04-86f9-54fc-9275-8d0dcbcb6784"
        ),
        Dict(
            "BoundingBox" => Dict(
                "Height" => 0.3249259889125824,
                "Left" => 0.5155559778213501,
                "Top" => 0.1513350009918213,
                "Width" => 0.24333299696445465
            ),
            "Confidence" => 99.99949645996094,
            "FaceId" => "70008e50-75e4-55d0-8e80-363fb73b3a14",
            "ImageId" => "d5631190-d039-54e4-b267-abd22c8647c5"
        ),
        Dict(
            "BoundingBox" => Dict(
                "Height" => 0.03777780011296272,
                "Left" => 0.7002969980239868,
                "Top" => 0.18777799606323242,
                "Width" => 0.05044509842991829
            ),
            "Confidence" => 99.92639923095703,
            "FaceId" => "7f5f88ed-d684-5a88-b0df-01e4a521552b",
            "ImageId" => "812d9f04-86f9-54fc-9275-8d0dcbcb6784"
        ),
        Dict(
            "BoundingBox" => Dict(
                "Height" => 0.05555560067296028,
                "Left" => 0.13946600258350372,
                "Top" => 0.46333301067352295,
                "Width" => 0.07270029932260513
            ),
            "Confidence" => 99.99469757080078,
            "FaceId" => "895b4e2c-81de-5902-a4bd-d1792bda00b2",
            "ImageId" => "812d9f04-86f9-54fc-9275-8d0dcbcb6784"
        ),
        Dict(
            "BoundingBox" => Dict(
                "Height" => 0.3259260058403015,
                "Left" => 0.5144439935684204,
                "Top" => 0.15111100673675537,
                "Width" => 0.24444399774074554
            ),
            "Confidence" => 99.99949645996094,
            "FaceId" => "8be04dba-4e58-520d-850e-9eae4af70eb2",
            "ImageId" => "465f4e93-763e-51d0-b030-b9667a2d94b1"
        ),
        Dict(
            "BoundingBox" => Dict(
                "Height" => 0.18888899683952332,
                "Left" => 0.3783380091190338,
                "Top" => 0.2355560064315796,
                "Width" => 0.25222599506378174
            ),
            "Confidence" => 99.9999008178711,
            "FaceId" => "908544ad-edc3-59df-8faf-6a87cc256cf5",
            "ImageId" => "3c731605-d772-541a-a5e7-0375dbc68a07"
        ),
        Dict(
            "BoundingBox" => Dict(
                "Height" => 0.33481499552726746,
                "Left" => 0.31888899207115173,
                "Top" => 0.49333301186561584,
                "Width" => 0.25
            ),
            "Confidence" => 99.99909973144531,
            "FaceId" => "ff43d742-0c13-5d16-a3e8-03d3f58e980b",
            "ImageId" => "465f4e93-763e-51d0-b030-b9667a2d94b1"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/ListFaces)
"""
@inline list_faces(aws::AWSConfig=default_aws_config(); args...) = list_faces(aws, args)

@inline list_faces(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "ListFaces", args)

@inline list_faces(args) = list_faces(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.list_stream_processors
    list_stream_processors([::AWSConfig], arguments::Dict)
    list_stream_processors([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "ListStreamProcessors", arguments::Dict)
    rekognition([::AWSConfig], "ListStreamProcessors", <keyword arguments>)

# ListStreamProcessors Operation

Gets a list of stream processors that you have created with .

# Arguments

## `NextToken = ::String`
If the previous response was incomplete (because there are more stream processors to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of stream processors.


## `MaxResults = ::Int`
Maximum number of stream processors you want Amazon Rekognition Video to return in the response. The default is 1000.




# Returns

`ListStreamProcessorsResponse`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `InvalidParameterException`, `InvalidPaginationTokenException` or `ProvisionedThroughputExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/ListStreamProcessors)
"""
@inline list_stream_processors(aws::AWSConfig=default_aws_config(); args...) = list_stream_processors(aws, args)

@inline list_stream_processors(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "ListStreamProcessors", args)

@inline list_stream_processors(args) = list_stream_processors(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.recognize_celebrities
    recognize_celebrities([::AWSConfig], arguments::Dict)
    recognize_celebrities([::AWSConfig]; Image=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "RecognizeCelebrities", arguments::Dict)
    rekognition([::AWSConfig], "RecognizeCelebrities", Image=)

# RecognizeCelebrities Operation

Returns an array of celebrities recognized in the input image. For more information, see Recognizing Celebrities in the Amazon Rekognition Developer Guide.

`RecognizeCelebrities` returns the 100 largest faces in the image. It lists recognized celebrities in the `CelebrityFaces` array and unrecognized faces in the `UnrecognizedFaces` array. `RecognizeCelebrities` doesn't return celebrities whose faces are not amongst the largest 100 faces in the image.

For each celebrity recognized, the `RecognizeCelebrities` returns a `Celebrity` object. The `Celebrity` object contains the celebrity name, ID, URL links to additional information, match confidence, and a `ComparedFace` object that you can use to locate the celebrity's face on the image.

Rekognition does not retain information about which images a celebrity has been recognized in. Your application must store this information and use the `Celebrity` ID property as a unique identifier for the celebrity. If you don't store the celebrity name or additional information URLs returned by `RecognizeCelebrities`, you will need the ID to identify the celebrity in a call to the operation.

You pass the imput image either as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the Amazon CLI to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file.

For an example, see Recognizing Celebrities in an Image in the Amazon Rekognition Developer Guide.

This operation requires permissions to perform the `rekognition:RecognizeCelebrities` operation.

# Arguments

## `Image = [ ... ]` -- *Required*
The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.
```
 Image = [
        "Bytes" =>  blob,
        "S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]
    ]
```



# Returns

`RecognizeCelebritiesResponse`

# Exceptions

`InvalidS3ObjectException`, `InvalidParameterException`, `InvalidImageFormatException`, `ImageTooLargeException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException` or `InvalidImageFormatException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/RecognizeCelebrities)
"""
@inline recognize_celebrities(aws::AWSConfig=default_aws_config(); args...) = recognize_celebrities(aws, args)

@inline recognize_celebrities(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "RecognizeCelebrities", args)

@inline recognize_celebrities(args) = recognize_celebrities(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.search_faces
    search_faces([::AWSConfig], arguments::Dict)
    search_faces([::AWSConfig]; CollectionId=, FaceId=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "SearchFaces", arguments::Dict)
    rekognition([::AWSConfig], "SearchFaces", CollectionId=, FaceId=, <keyword arguments>)

# SearchFaces Operation

For a given input face ID, searches for matching faces in the collection the face belongs to. You get a face ID when you add a face to the collection using the [IndexFaces](@ref) operation. The operation compares the features of the input face with faces in the specified collection.

**Note**
> You can also search faces without indexing faces by using the `SearchFacesByImage` operation.

The operation response returns an array of faces that match, ordered by similarity score with the highest similarity first. More specifically, it is an array of metadata for each face match that is found. Along with the metadata, the response also includes a `confidence` value for each face match, indicating the confidence that the specific face matches the input face.

For an example, see Searching for a Face Using Its Face ID in the Amazon Rekognition Developer Guide.

This operation requires permissions to perform the `rekognition:SearchFaces` action.

# Arguments

## `CollectionId = ::String` -- *Required*
ID of the collection the face belongs to.


## `FaceId = ::String` -- *Required*
ID of a face to find matches for in the collection.


## `MaxFaces = ::Int`
Maximum number of faces to return. The operation returns the maximum number of faces with the highest confidence in the match.


## `FaceMatchThreshold = float`
Optional value specifying the minimum confidence in the face match to return. For example, don't return any matches where confidence in matches is less than 70%.




# Returns

`SearchFacesResponse`

# Exceptions

`InvalidParameterException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException` or `ResourceNotFoundException`.

# Example: To delete a face

This operation searches for matching faces in the collection the supplied face belongs to.

Input:
```
[
    "CollectionId" => "myphotos",
    "FaceId" => "70008e50-75e4-55d0-8e80-363fb73b3a14",
    "FaceMatchThreshold" => 90,
    "MaxFaces" => 10
]
```

Output:
```
Dict(
    "FaceMatches" => [
        Dict(
            "Face" => Dict(
                "BoundingBox" => Dict(
                    "Height" => 0.3259260058403015,
                    "Left" => 0.5144439935684204,
                    "Top" => 0.15111100673675537,
                    "Width" => 0.24444399774074554
                ),
                "Confidence" => 99.99949645996094,
                "FaceId" => "8be04dba-4e58-520d-850e-9eae4af70eb2",
                "ImageId" => "465f4e93-763e-51d0-b030-b9667a2d94b1"
            ),
            "Similarity" => 99.97222137451172
        ),
        Dict(
            "Face" => Dict(
                "BoundingBox" => Dict(
                    "Height" => 0.16555599868297577,
                    "Left" => 0.30963000655174255,
                    "Top" => 0.7066670060157776,
                    "Width" => 0.22074100375175476
                ),
                "Confidence" => 100,
                "FaceId" => "29a75abe-397b-5101-ba4f-706783b2246c",
                "ImageId" => "147fdf82-7a71-52cf-819b-e786c7b9746e"
            ),
            "Similarity" => 97.04154968261719
        ),
        Dict(
            "Face" => Dict(
                "BoundingBox" => Dict(
                    "Height" => 0.18888899683952332,
                    "Left" => 0.3783380091190338,
                    "Top" => 0.2355560064315796,
                    "Width" => 0.25222599506378174
                ),
                "Confidence" => 99.9999008178711,
                "FaceId" => "908544ad-edc3-59df-8faf-6a87cc256cf5",
                "ImageId" => "3c731605-d772-541a-a5e7-0375dbc68a07"
            ),
            "Similarity" => 95.94520568847656
        )
    ],
    "SearchedFaceId" => "70008e50-75e4-55d0-8e80-363fb73b3a14"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/SearchFaces)
"""
@inline search_faces(aws::AWSConfig=default_aws_config(); args...) = search_faces(aws, args)

@inline search_faces(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "SearchFaces", args)

@inline search_faces(args) = search_faces(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.search_faces_by_image
    search_faces_by_image([::AWSConfig], arguments::Dict)
    search_faces_by_image([::AWSConfig]; CollectionId=, Image=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "SearchFacesByImage", arguments::Dict)
    rekognition([::AWSConfig], "SearchFacesByImage", CollectionId=, Image=, <keyword arguments>)

# SearchFacesByImage Operation

For a given input image, first detects the largest face in the image, and then searches the specified collection for matching faces. The operation compares the features of the input face with faces in the specified collection.

**Note**
> To search for all faces in an input image, you might first call the operation, and then use the face IDs returned in subsequent calls to the operation.

You can also call the `DetectFaces` operation and use the bounding boxes in the response to make face crops, which then you can pass in to the `SearchFacesByImage` operation.

You pass the input image either as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the Amazon CLI to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file.

The response returns an array of faces that match, ordered by similarity score with the highest similarity first. More specifically, it is an array of metadata for each face match found. Along with the metadata, the response also includes a `similarity` indicating how similar the face is to the input face. In the response, the operation also returns the bounding box (and a confidence level that the bounding box contains a face) of the face that Amazon Rekognition used for the input image.

For an example, Searching for a Face Using an Image in the Amazon Rekognition Developer Guide.

This operation requires permissions to perform the `rekognition:SearchFacesByImage` action.

# Arguments

## `CollectionId = ::String` -- *Required*
ID of the collection to search.


## `Image = [ ... ]` -- *Required*
The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.
```
 Image = [
        "Bytes" =>  blob,
        "S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]
    ]
```

## `MaxFaces = ::Int`
Maximum number of faces to return. The operation returns the maximum number of faces with the highest confidence in the match.


## `FaceMatchThreshold = float`
(Optional) Specifies the minimum confidence in the face match to return. For example, don't return any matches where confidence in matches is less than 70%.




# Returns

`SearchFacesByImageResponse`

# Exceptions

`InvalidS3ObjectException`, `InvalidParameterException`, `ImageTooLargeException`, `AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `ProvisionedThroughputExceededException`, `ResourceNotFoundException` or `InvalidImageFormatException`.

# Example: To search for faces matching a supplied image

This operation searches for faces in a Rekognition collection that match the largest face in an S3 bucket stored image.

Input:
```
[
    "CollectionId" => "myphotos",
    "FaceMatchThreshold" => 95,
    "Image" => [
        "S3Object" => [
            "Bucket" => "mybucket",
            "Name" => "myphoto"
        ]
    ],
    "MaxFaces" => 5
]
```

Output:
```
Dict(
    "FaceMatches" => [
        Dict(
            "Face" => Dict(
                "BoundingBox" => Dict(
                    "Height" => 0.3234420120716095,
                    "Left" => 0.3233329951763153,
                    "Top" => 0.5,
                    "Width" => 0.24222199618816376
                ),
                "Confidence" => 99.99829864501953,
                "FaceId" => "38271d79-7bc2-5efb-b752-398a8d575b85",
                "ImageId" => "d5631190-d039-54e4-b267-abd22c8647c5"
            ),
            "Similarity" => 99.97036743164062
        )
    ],
    "SearchedFaceBoundingBox" => Dict(
        "Height" => 0.33481481671333313,
        "Left" => 0.31888890266418457,
        "Top" => 0.4933333396911621,
        "Width" => 0.25
    ),
    "SearchedFaceConfidence" => 99.9991226196289
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/SearchFacesByImage)
"""
@inline search_faces_by_image(aws::AWSConfig=default_aws_config(); args...) = search_faces_by_image(aws, args)

@inline search_faces_by_image(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "SearchFacesByImage", args)

@inline search_faces_by_image(args) = search_faces_by_image(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.start_celebrity_recognition
    start_celebrity_recognition([::AWSConfig], arguments::Dict)
    start_celebrity_recognition([::AWSConfig]; Video=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "StartCelebrityRecognition", arguments::Dict)
    rekognition([::AWSConfig], "StartCelebrityRecognition", Video=, <keyword arguments>)

# StartCelebrityRecognition Operation

Starts asynchronous recognition of celebrities in a stored video.

Amazon Rekognition Video can detect celebrities in a video must be stored in an Amazon S3 bucket. Use [Video](@ref) to specify the bucket name and the filename of the video. `StartCelebrityRecognition` returns a job identifier (`JobId`) which you use to get the results of the analysis. When celebrity recognition analysis is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in `NotificationChannel`. To get the results of the celebrity recognition analysis, first check that the status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call and pass the job identifier (`JobId`) from the initial call to `StartCelebrityRecognition`.

For more information, see Recognizing Celebrities in the Amazon Rekognition Developer Guide.

# Arguments

## `Video = ["S3Object" =>  [ ... ]]` -- *Required*
The video in which you want to recognize celebrities. The video must be stored in an Amazon S3 bucket.
```
 Video = ["S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]]
```

## `ClientRequestToken = ::String`
Idempotent token used to identify the start request. If you use the same token with multiple `StartCelebrityRecognition` requests, the same `JobId` is returned. Use `ClientRequestToken` to prevent the same job from being accidently started more than once.


## `NotificationChannel = [ ... ]`
The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the celebrity recognition analysis to.
```
 NotificationChannel = [
        "SNSTopicArn" => <required> ::String,
        "RoleArn" => <required> ::String
    ]
```

## `JobTag = ::String`
Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic.




# Returns

`StartCelebrityRecognitionResponse`

# Exceptions

`AccessDeniedException`, `IdempotentParameterMismatchException`, `InvalidParameterException`, `InvalidS3ObjectException`, `InternalServerError`, `VideoTooLargeException`, `ProvisionedThroughputExceededException`, `LimitExceededException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/StartCelebrityRecognition)
"""
@inline start_celebrity_recognition(aws::AWSConfig=default_aws_config(); args...) = start_celebrity_recognition(aws, args)

@inline start_celebrity_recognition(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "StartCelebrityRecognition", args)

@inline start_celebrity_recognition(args) = start_celebrity_recognition(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.start_content_moderation
    start_content_moderation([::AWSConfig], arguments::Dict)
    start_content_moderation([::AWSConfig]; Video=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "StartContentModeration", arguments::Dict)
    rekognition([::AWSConfig], "StartContentModeration", Video=, <keyword arguments>)

# StartContentModeration Operation

Starts asynchronous detection of explicit or suggestive adult content in a stored video.

Amazon Rekognition Video can moderate content in a video stored in an Amazon S3 bucket. Use [Video](@ref) to specify the bucket name and the filename of the video. `StartContentModeration` returns a job identifier (`JobId`) which you use to get the results of the analysis. When content moderation analysis is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in `NotificationChannel`.

To get the results of the content moderation analysis, first check that the status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call and pass the job identifier (`JobId`) from the initial call to `StartContentModeration`.

For more information, see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.

# Arguments

## `Video = ["S3Object" =>  [ ... ]]` -- *Required*
The video in which you want to moderate content. The video must be stored in an Amazon S3 bucket.
```
 Video = ["S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]]
```

## `MinConfidence = float`
Specifies the minimum confidence that Amazon Rekognition must have in order to return a moderated content label. Confidence represents how certain Amazon Rekognition is that the moderated content is correctly identified. 0 is the lowest confidence. 100 is the highest confidence. Amazon Rekognition doesn't return any moderated content labels with a confidence level lower than this specified value.


## `ClientRequestToken = ::String`
Idempotent token used to identify the start request. If you use the same token with multiple `StartContentModeration` requests, the same `JobId` is returned. Use `ClientRequestToken` to prevent the same job from being accidently started more than once.


## `NotificationChannel = [ ... ]`
The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the content moderation analysis to.
```
 NotificationChannel = [
        "SNSTopicArn" => <required> ::String,
        "RoleArn" => <required> ::String
    ]
```

## `JobTag = ::String`
Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic.




# Returns

`StartContentModerationResponse`

# Exceptions

`AccessDeniedException`, `IdempotentParameterMismatchException`, `InvalidParameterException`, `InvalidS3ObjectException`, `InternalServerError`, `VideoTooLargeException`, `ProvisionedThroughputExceededException`, `LimitExceededException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/StartContentModeration)
"""
@inline start_content_moderation(aws::AWSConfig=default_aws_config(); args...) = start_content_moderation(aws, args)

@inline start_content_moderation(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "StartContentModeration", args)

@inline start_content_moderation(args) = start_content_moderation(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.start_face_detection
    start_face_detection([::AWSConfig], arguments::Dict)
    start_face_detection([::AWSConfig]; Video=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "StartFaceDetection", arguments::Dict)
    rekognition([::AWSConfig], "StartFaceDetection", Video=, <keyword arguments>)

# StartFaceDetection Operation

Starts asynchronous detection of faces in a stored video.

Amazon Rekognition Video can detect faces in a video stored in an Amazon S3 bucket. Use [Video](@ref) to specify the bucket name and the filename of the video. `StartFaceDetection` returns a job identifier (`JobId`) that you use to get the results of the operation. When face detection is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in `NotificationChannel`. To get the results of the label detection operation, first check that the status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call and pass the job identifier (`JobId`) from the initial call to `StartFaceDetection`.

For more information, see Detecting Faces in a Stored Video in the Amazon Rekognition Developer Guide.

# Arguments

## `Video = ["S3Object" =>  [ ... ]]` -- *Required*
The video in which you want to detect faces. The video must be stored in an Amazon S3 bucket.
```
 Video = ["S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]]
```

## `ClientRequestToken = ::String`
Idempotent token used to identify the start request. If you use the same token with multiple `StartFaceDetection` requests, the same `JobId` is returned. Use `ClientRequestToken` to prevent the same job from being accidently started more than once.


## `NotificationChannel = [ ... ]`
The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the face detection operation.
```
 NotificationChannel = [
        "SNSTopicArn" => <required> ::String,
        "RoleArn" => <required> ::String
    ]
```

## `FaceAttributes = "DEFAULT" or "ALL"`
The face attributes you want returned.

`DEFAULT` - The following subset of facial attributes are returned: BoundingBox, Confidence, Pose, Quality and Landmarks.

`ALL` - All facial attributes are returned.


## `JobTag = ::String`
Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic.




# Returns

`StartFaceDetectionResponse`

# Exceptions

`AccessDeniedException`, `IdempotentParameterMismatchException`, `InvalidParameterException`, `InvalidS3ObjectException`, `InternalServerError`, `VideoTooLargeException`, `ProvisionedThroughputExceededException`, `LimitExceededException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/StartFaceDetection)
"""
@inline start_face_detection(aws::AWSConfig=default_aws_config(); args...) = start_face_detection(aws, args)

@inline start_face_detection(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "StartFaceDetection", args)

@inline start_face_detection(args) = start_face_detection(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.start_face_search
    start_face_search([::AWSConfig], arguments::Dict)
    start_face_search([::AWSConfig]; Video=, CollectionId=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "StartFaceSearch", arguments::Dict)
    rekognition([::AWSConfig], "StartFaceSearch", Video=, CollectionId=, <keyword arguments>)

# StartFaceSearch Operation

Starts the asynchronous search for faces in a collection that match the faces of persons detected in a stored video.

The video must be stored in an Amazon S3 bucket. Use [Video](@ref) to specify the bucket name and the filename of the video. `StartFaceSearch` returns a job identifier (`JobId`) which you use to get the search results once the search has completed. When searching is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in `NotificationChannel`. To get the search results, first check that the status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call and pass the job identifier (`JobId`) from the initial call to `StartFaceSearch`. For more information, see [collections-search-person](@ref).

# Arguments

## `Video = ["S3Object" =>  [ ... ]]` -- *Required*
The video you want to search. The video must be stored in an Amazon S3 bucket.
```
 Video = ["S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]]
```

## `ClientRequestToken = ::String`
Idempotent token used to identify the start request. If you use the same token with multiple `StartFaceSearch` requests, the same `JobId` is returned. Use `ClientRequestToken` to prevent the same job from being accidently started more than once.


## `FaceMatchThreshold = float`
The minimum confidence in the person match to return. For example, don't return any matches where confidence in matches is less than 70%.


## `CollectionId = ::String` -- *Required*
ID of the collection that contains the faces you want to search for.


## `NotificationChannel = [ ... ]`
The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the search.
```
 NotificationChannel = [
        "SNSTopicArn" => <required> ::String,
        "RoleArn" => <required> ::String
    ]
```

## `JobTag = ::String`
Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic.




# Returns

`StartFaceSearchResponse`

# Exceptions

`AccessDeniedException`, `IdempotentParameterMismatchException`, `InvalidParameterException`, `InvalidS3ObjectException`, `InternalServerError`, `VideoTooLargeException`, `ProvisionedThroughputExceededException`, `LimitExceededException`, `ResourceNotFoundException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/StartFaceSearch)
"""
@inline start_face_search(aws::AWSConfig=default_aws_config(); args...) = start_face_search(aws, args)

@inline start_face_search(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "StartFaceSearch", args)

@inline start_face_search(args) = start_face_search(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.start_label_detection
    start_label_detection([::AWSConfig], arguments::Dict)
    start_label_detection([::AWSConfig]; Video=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "StartLabelDetection", arguments::Dict)
    rekognition([::AWSConfig], "StartLabelDetection", Video=, <keyword arguments>)

# StartLabelDetection Operation

Starts asynchronous detection of labels in a stored video.

Amazon Rekognition Video can detect labels in a video. Labels are instances of real-world entities. This includes objects like flower, tree, and table; events like wedding, graduation, and birthday party; concepts like landscape, evening, and nature; and activities like a person getting out of a car or a person skiing.

The video must be stored in an Amazon S3 bucket. Use [Video](@ref) to specify the bucket name and the filename of the video. `StartLabelDetection` returns a job identifier (`JobId`) which you use to get the results of the operation. When label detection is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in `NotificationChannel`.

To get the results of the label detection operation, first check that the status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call and pass the job identifier (`JobId`) from the initial call to `StartLabelDetection`.

# Arguments

## `Video = ["S3Object" =>  [ ... ]]` -- *Required*
The video in which you want to detect labels. The video must be stored in an Amazon S3 bucket.
```
 Video = ["S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]]
```

## `ClientRequestToken = ::String`
Idempotent token used to identify the start request. If you use the same token with multiple `StartLabelDetection` requests, the same `JobId` is returned. Use `ClientRequestToken` to prevent the same job from being accidently started more than once.


## `MinConfidence = float`
Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected label. Confidence represents how certain Amazon Rekognition is that a label is correctly identified.0 is the lowest confidence. 100 is the highest confidence. Amazon Rekognition Video doesn't return any labels with a confidence level lower than this specified value.

If you don't specify `MinConfidence`, the operation returns labels with confidence values greater than or equal to 50 percent.


## `NotificationChannel = [ ... ]`
The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the label detection operation to.
```
 NotificationChannel = [
        "SNSTopicArn" => <required> ::String,
        "RoleArn" => <required> ::String
    ]
```

## `JobTag = ::String`
Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic.




# Returns

`StartLabelDetectionResponse`

# Exceptions

`AccessDeniedException`, `IdempotentParameterMismatchException`, `InvalidParameterException`, `InvalidS3ObjectException`, `InternalServerError`, `VideoTooLargeException`, `ProvisionedThroughputExceededException`, `LimitExceededException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/StartLabelDetection)
"""
@inline start_label_detection(aws::AWSConfig=default_aws_config(); args...) = start_label_detection(aws, args)

@inline start_label_detection(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "StartLabelDetection", args)

@inline start_label_detection(args) = start_label_detection(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.start_person_tracking
    start_person_tracking([::AWSConfig], arguments::Dict)
    start_person_tracking([::AWSConfig]; Video=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "StartPersonTracking", arguments::Dict)
    rekognition([::AWSConfig], "StartPersonTracking", Video=, <keyword arguments>)

# StartPersonTracking Operation

Starts the asynchronous tracking of persons in a stored video.

Amazon Rekognition Video can track persons in a video stored in an Amazon S3 bucket. Use [Video](@ref) to specify the bucket name and the filename of the video. `StartPersonTracking` returns a job identifier (`JobId`) which you use to get the results of the operation. When label detection is finished, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic that you specify in `NotificationChannel`.

To get the results of the person detection operation, first check that the status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call and pass the job identifier (`JobId`) from the initial call to `StartPersonTracking`.

# Arguments

## `Video = ["S3Object" =>  [ ... ]]` -- *Required*
The video in which you want to detect people. The video must be stored in an Amazon S3 bucket.
```
 Video = ["S3Object" =>  [
            "Bucket" =>  ::String,
            "Name" =>  ::String,
            "Version" =>  ::String
        ]]
```

## `ClientRequestToken = ::String`
Idempotent token used to identify the start request. If you use the same token with multiple `StartPersonTracking` requests, the same `JobId` is returned. Use `ClientRequestToken` to prevent the same job from being accidently started more than once.


## `NotificationChannel = [ ... ]`
The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the people detection operation to.
```
 NotificationChannel = [
        "SNSTopicArn" => <required> ::String,
        "RoleArn" => <required> ::String
    ]
```

## `JobTag = ::String`
Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic.




# Returns

`StartPersonTrackingResponse`

# Exceptions

`AccessDeniedException`, `IdempotentParameterMismatchException`, `InvalidParameterException`, `InvalidS3ObjectException`, `InternalServerError`, `VideoTooLargeException`, `ProvisionedThroughputExceededException`, `LimitExceededException` or `ThrottlingException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/StartPersonTracking)
"""
@inline start_person_tracking(aws::AWSConfig=default_aws_config(); args...) = start_person_tracking(aws, args)

@inline start_person_tracking(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "StartPersonTracking", args)

@inline start_person_tracking(args) = start_person_tracking(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.start_stream_processor
    start_stream_processor([::AWSConfig], arguments::Dict)
    start_stream_processor([::AWSConfig]; Name=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "StartStreamProcessor", arguments::Dict)
    rekognition([::AWSConfig], "StartStreamProcessor", Name=)

# StartStreamProcessor Operation

Starts processing a stream processor. You create a stream processor by calling . To tell `StartStreamProcessor` which stream processor to start, use the value of the `Name` field specified in the call to `CreateStreamProcessor`.

# Arguments

## `Name = ::String` -- *Required*
The name of the stream processor to start processing.




# Returns

`StartStreamProcessorResponse`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `InvalidParameterException`, `ResourceNotFoundException`, `ResourceInUseException` or `ProvisionedThroughputExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/StartStreamProcessor)
"""
@inline start_stream_processor(aws::AWSConfig=default_aws_config(); args...) = start_stream_processor(aws, args)

@inline start_stream_processor(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "StartStreamProcessor", args)

@inline start_stream_processor(args) = start_stream_processor(default_aws_config(), args)


"""
    using AWSSDK.Rekognition.stop_stream_processor
    stop_stream_processor([::AWSConfig], arguments::Dict)
    stop_stream_processor([::AWSConfig]; Name=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "StopStreamProcessor", arguments::Dict)
    rekognition([::AWSConfig], "StopStreamProcessor", Name=)

# StopStreamProcessor Operation

Stops a running stream processor that was created by .

# Arguments

## `Name = ::String` -- *Required*
The name of a stream processor created by .




# Returns

`StopStreamProcessorResponse`

# Exceptions

`AccessDeniedException`, `InternalServerError`, `ThrottlingException`, `InvalidParameterException`, `ResourceNotFoundException`, `ResourceInUseException` or `ProvisionedThroughputExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/rekognition-2016-06-27/StopStreamProcessor)
"""
@inline stop_stream_processor(aws::AWSConfig=default_aws_config(); args...) = stop_stream_processor(aws, args)

@inline stop_stream_processor(aws::AWSConfig, args) = AWSCore.Services.rekognition(aws, "StopStreamProcessor", args)

@inline stop_stream_processor(args) = stop_stream_processor(default_aws_config(), args)




end # module Rekognition


#==============================================================================#
# End of file
#==============================================================================#
