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

Compares a face in the *source* input image with each face detected in the *target* input image.

**Note**
> If the source image contains multiple faces, the service detects the largest face and compares it with each face detected in the target image.

In response, the operation returns an array of face matches ordered by similarity score in descending order. For each face match, the response provides a bounding box of the face, facial landmarks, pose details (pitch, role, and yaw), quality (brightness and sharpness), and confidence value (indicating the level of confidence that the bounding box contains a face). The response also provides a similarity score, which indicates how closely the faces match.

**Note**
> By default, only faces with a similarity score of greater than or equal to 80% are returned in the response. You can change this value by specifying the `SimilarityThreshold` parameter.

`CompareFaces` also returns an array of faces that don't match the source image. For each face, it returns a bounding box, confidence value, landmarks, pose details, and quality. The response also returns information about the face in the source image, including the bounding box of the face and confidence value.

If the image doesn't contain Exif metadata, `CompareFaces` returns orientation information for the source and target images. Use these values to display the images with the correct image orientation.

**Note**
> This is a stateless API operation. That is, data returned by this operation doesn't persist.

For an example, see [get-started-exercise-compare-faces](@ref).

This operation requires permissions to perform the `rekognition:CompareFaces` action.

# Arguments

## `SourceImage = [ ... ]` -- *Required*
The source image, either as bytes or as an S3 object.
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
The target image, either as bytes or as an S3 object.
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

For an example, see [example1](@ref).

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
    using AWSSDK.Rekognition.delete_collection
    delete_collection([::AWSConfig], arguments::Dict)
    delete_collection([::AWSConfig]; CollectionId=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "DeleteCollection", arguments::Dict)
    rekognition([::AWSConfig], "DeleteCollection", CollectionId=)

# DeleteCollection Operation

Deletes the specified collection. Note that this operation removes all faces in the collection. For an example, see [example1](@ref).

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
    using AWSSDK.Rekognition.detect_faces
    detect_faces([::AWSConfig], arguments::Dict)
    detect_faces([::AWSConfig]; Image=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "DetectFaces", arguments::Dict)
    rekognition([::AWSConfig], "DetectFaces", Image=, <keyword arguments>)

# DetectFaces Operation

Detects faces within an image (JPEG or PNG) that is provided as input.

For each face detected, the operation returns face details including a bounding box of the face, a confidence value (that the bounding box contains a face), and a fixed set of attributes such as facial landmarks (for example, coordinates of eye and mouth), gender, presence of beard, sunglasses, etc.

The face-detection algorithm is most effective on frontal faces. For non-frontal or obscured faces, the algorithm may not detect the faces or might detect faces with lower confidence.

**Note**
> This is a stateless API operation. That is, the operation does not persist any data.

For an example, see [get-started-exercise-detect-faces](@ref).

This operation requires permissions to perform the `rekognition:DetectFaces` action.

# Arguments

## `Image = [ ... ]` -- *Required*
The image in which you want to detect faces. You can specify a blob or an S3 object.
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
                    "Type" => "EYE_LEFT",
                    "X" => 0.6394737362861633,
                    "Y" => 0.40819624066352844
                ),
                Dict(
                    "Type" => "EYE_RIGHT",
                    "X" => 0.7266660928726196,
                    "Y" => 0.41039225459098816
                ),
                Dict(
                    "Type" => "NOSE_LEFT",
                    "X" => 0.6912462115287781,
                    "Y" => 0.44240960478782654
                ),
                Dict(
                    "Type" => "MOUTH_DOWN",
                    "X" => 0.6306198239326477,
                    "Y" => 0.46700039505958557
                ),
                Dict(
                    "Type" => "MOUTH_UP",
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

Detects instances of real-world labels within an image (JPEG or PNG) provided as input. This includes objects like flower, tree, and table; events like wedding, graduation, and birthday party; and concepts like landscape, evening, and nature. For an example, see [get-started-exercise-detect-labels](@ref).

For each object, scene, and concept the API returns one or more labels. Each label provides the object name, and the level of confidence that the image contains the object. For example, suppose the input image has a lighthouse, the sea, and a rock. The response will include all three labels, one for each object.

`{Name: lighthouse, Confidence: 98.4629}`

`{Name: rock,Confidence: 79.2097}`

`{Name: sea,Confidence: 75.061}`

In the preceding example, the operation returns one label for each of the three objects. The operation can also return multiple labels for the same object in the image. For example, if the input image shows a flower (for example, a tulip), the operation might return the following three labels.

`{Name: flower,Confidence: 99.0562}`

`{Name: plant,Confidence: 99.0562}`

`{Name: tulip,Confidence: 99.0562}`

In this example, the detection algorithm more precisely identifies the flower as a tulip.

You can provide the input image as an S3 object or as base64-encoded bytes. In response, the API returns an array of labels. In addition, the response also includes the orientation correction. Optionally, you can specify `MinConfidence` to control the confidence threshold for the labels returned. The default is 50%. You can also add the `MaxLabels` parameter to limit the number of labels returned.

**Note**
> If the object detected is a person, the operation doesn't provide the same facial details that the [DetectFaces](@ref) operation provides.

This is a stateless API operation. That is, the operation does not persist any data.

This operation requires permissions to perform the `rekognition:DetectLabels` action.

# Arguments

## `Image = [ ... ]` -- *Required*
The input image. You can provide a blob of image bytes or an S3 object.
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

To filter images, use the labels returned by `DetectModerationLabels` to determine which types of content are appropriate. For information about moderation labels, see [image-moderation](@ref).

# Arguments

## `Image = [ ... ]` -- *Required*
The input image as bytes or an S3 object.
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
    using AWSSDK.Rekognition.get_celebrity_info
    get_celebrity_info([::AWSConfig], arguments::Dict)
    get_celebrity_info([::AWSConfig]; Id=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "GetCelebrityInfo", arguments::Dict)
    rekognition([::AWSConfig], "GetCelebrityInfo", Id=)

# GetCelebrityInfo Operation

Gets the name and additional information about a celebrity based on his or her Rekognition ID. The additional information is returned as an array of URLs. If there is no additional information about the celebrity, this list is empty. For more information, see [celebrity-recognition](@ref).

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
    using AWSSDK.Rekognition.index_faces
    index_faces([::AWSConfig], arguments::Dict)
    index_faces([::AWSConfig]; CollectionId=, Image=, <keyword arguments>)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "IndexFaces", arguments::Dict)
    rekognition([::AWSConfig], "IndexFaces", CollectionId=, Image=, <keyword arguments>)

# IndexFaces Operation

Detects faces in the input image and adds them to the specified collection.

Amazon Rekognition does not save the actual faces detected. Instead, the underlying detection algorithm first detects the faces in the input image, and for each face extracts facial features into a feature vector, and stores it in the back-end database. Amazon Rekognition uses feature vectors when performing face match and search operations using the and operations.

If you provide the optional `externalImageID` for the input image you provided, Amazon Rekognition associates this ID with all faces that it detects. When you call the operation, the response returns the external ID. You can use this external image ID to create a client-side index to associate the faces with each image. You can then use the index to find all faces in an image.

In response, the operation returns an array of metadata for all detected faces. This includes, the bounding box of the detected face, confidence value (indicating the bounding box contains a face), a face ID assigned by the service for each face that is detected and stored, and an image ID assigned by the service for the input image. If you request all facial attributes (using the `detectionAttributes` parameter, Amazon Rekognition returns detailed facial attributes such as facial landmarks (for example, location of eye and mount) and other facial attributes such gender. If you provide the same image, specify the same collection, and use the same external ID in the `IndexFaces` operation, Amazon Rekognition doesn't save duplicate face metadata.

For an example, see [example2](@ref).

This operation requires permissions to perform the `rekognition:IndexFaces` action.

# Arguments

## `CollectionId = ::String` -- *Required*
The ID of an existing collection to which you want to add the faces that are detected in the input images.


## `Image = [ ... ]` -- *Required*
The input image as bytes or an S3 object.
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
                        "Type" => "EYE_LEFT",
                        "X" => 0.3976764678955078,
                        "Y" => 0.6248345971107483
                    ),
                    Dict(
                        "Type" => "EYE_RIGHT",
                        "X" => 0.4810936450958252,
                        "Y" => 0.6317117214202881
                    ),
                    Dict(
                        "Type" => "NOSE_LEFT",
                        "X" => 0.41986238956451416,
                        "Y" => 0.7111940383911133
                    ),
                    Dict(
                        "Type" => "MOUTH_DOWN",
                        "X" => 0.40525302290916443,
                        "Y" => 0.7497701048851013
                    ),
                    Dict(
                        "Type" => "MOUTH_UP",
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
                        "Type" => "EYE_LEFT",
                        "X" => 0.6006892323493958,
                        "Y" => 0.290842205286026
                    ),
                    Dict(
                        "Type" => "EYE_RIGHT",
                        "X" => 0.6808141469955444,
                        "Y" => 0.29609042406082153
                    ),
                    Dict(
                        "Type" => "NOSE_LEFT",
                        "X" => 0.6395332217216492,
                        "Y" => 0.3522595763206482
                    ),
                    Dict(
                        "Type" => "MOUTH_DOWN",
                        "X" => 0.5892083048820496,
                        "Y" => 0.38689887523651123
                    ),
                    Dict(
                        "Type" => "MOUTH_UP",
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

For an example, see [example1](@ref).

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

Returns metadata for faces in the specified collection. This metadata includes information such as the bounding box coordinates, the confidence (that the bounding box contains a face), and face ID. For an example, see [example3](@ref).

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
    using AWSSDK.Rekognition.recognize_celebrities
    recognize_celebrities([::AWSConfig], arguments::Dict)
    recognize_celebrities([::AWSConfig]; Image=)

    using AWSCore.Services.rekognition
    rekognition([::AWSConfig], "RecognizeCelebrities", arguments::Dict)
    rekognition([::AWSConfig], "RecognizeCelebrities", Image=)

# RecognizeCelebrities Operation

Returns an array of celebrities recognized in the input image. The image is passed either as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. The image must be either a PNG or JPEG formatted file. For more information, see [celebrity-recognition](@ref).

`RecognizeCelebrities` returns the 15 largest faces in the image. It lists recognized celebrities in the `CelebrityFaces` list and unrecognized faces in the `UnrecognizedFaces` list. The operation doesn't return celebrities whose face sizes are smaller than the largest 15 faces in the image.

For each celebrity recognized, the API returns a `Celebrity` object. The `Celebrity` object contains the celebrity name, ID, URL links to additional information, match confidence, and a `ComparedFace` object that you can use to locate the celebrity's face on the image.

Rekognition does not retain information about which images a celebrity has been recognized in. Your application must store this information and use the `Celebrity` ID property as a unique identifier for the celebrity. If you don't store the celebrity name or additional information URLs returned by `RecognizeCelebrities`, you will need the ID to identify the celebrity in a call to the operation.

For an example, see [recognize-celebrities-tutorial](@ref).

This operation requires permissions to perform the `rekognition:RecognizeCelebrities` operation.

# Arguments

## `Image = [ ... ]` -- *Required*
The input image to use for celebrity recognition.
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

For an example, see [example3](@ref).

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

The response returns an array of faces that match, ordered by similarity score with the highest similarity first. More specifically, it is an array of metadata for each face match found. Along with the metadata, the response also includes a `similarity` indicating how similar the face is to the input face. In the response, the operation also returns the bounding box (and a confidence level that the bounding box contains a face) of the face that Amazon Rekognition used for the input image.

For an example, see [example3](@ref).

This operation requires permissions to perform the `rekognition:SearchFacesByImage` action.

# Arguments

## `CollectionId = ::String` -- *Required*
ID of the collection to search.


## `Image = [ ... ]` -- *Required*
The input image as bytes or an S3 object.
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




end # module Rekognition


#==============================================================================#
# End of file
#==============================================================================#
