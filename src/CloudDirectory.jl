#==============================================================================#
# CloudDirectory.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/clouddirectory-2017-01-11.normal.json
#==============================================================================#

__precompile__()

module CloudDirectory

using AWSCore


"""
    using AWSSDK.CloudDirectory.add_facet_to_object
    add_facet_to_object([::AWSConfig], arguments::Dict)
    add_facet_to_object([::AWSConfig]; *header:* x-amz-data-partition=, SchemaFacet=, ObjectReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object/facets", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object/facets", *header:* x-amz-data-partition=, SchemaFacet=, ObjectReference=, <keyword arguments>)

# AddFacetToObject Operation

Adds a new [Facet](@ref) to an object. An object can have more than one facet applied on it.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where the object resides. For more information, see [arns](@ref).


## `SchemaFacet = [ ... ]` -- *Required*
Identifiers for the facet that you are adding to the object. See [SchemaFacet](@ref) for details.
```
 SchemaFacet = [
        "SchemaArn" =>  ::String,
        "FacetName" =>  ::String
    ]
```

## `ObjectAttributeList = [[ ... ], ...]`
Attributes on the facet that you are adding to the object.
```
 ObjectAttributeList = [[
        "Key" => <required> [
            "SchemaArn" => <required> ::String,
            "FacetName" => <required> ::String,
            "Name" => <required> ::String
        ],
        "Value" => <required> [
            "StringValue" =>  ::String,
            "BinaryValue" =>  blob,
            "BooleanValue" =>  ::Bool,
            "NumberValue" =>  ::String,
            "DatetimeValue" =>  timestamp
        ]
    ], ...]
```

## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
A reference to the object you are adding the specified facet to.




# Returns

`AddFacetToObjectResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AddFacetToObject)
"""
@inline add_facet_to_object(aws::AWSConfig=default_aws_config(); args...) = add_facet_to_object(aws, args)

@inline add_facet_to_object(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/object/facets", args)

@inline add_facet_to_object(args) = add_facet_to_object(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.apply_schema
    apply_schema([::AWSConfig], arguments::Dict)
    apply_schema([::AWSConfig]; PublishedSchemaArn=, *header:* x-amz-data-partition=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/apply", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/apply", PublishedSchemaArn=, *header:* x-amz-data-partition=)

# ApplySchema Operation

Copies the input published schema, at the specified version, into the [Directory](@ref) with the same name and version as that of the published schema.

# Arguments

## `PublishedSchemaArn = ::String` -- *Required*
Published schema Amazon Resource Name (ARN) that needs to be copied. For more information, see [arns](@ref).


## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) into which the schema is copied. For more information, see [arns](@ref).




# Returns

`ApplySchemaResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `SchemaAlreadyExistsException`, `ResourceNotFoundException` or `InvalidAttachmentException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ApplySchema)
"""
@inline apply_schema(aws::AWSConfig=default_aws_config(); args...) = apply_schema(aws, args)

@inline apply_schema(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/schema/apply", args)

@inline apply_schema(args) = apply_schema(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.attach_object
    attach_object([::AWSConfig], arguments::Dict)
    attach_object([::AWSConfig]; *header:* x-amz-data-partition=, ParentReference=, ChildReference=, LinkName=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object/attach", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object/attach", *header:* x-amz-data-partition=, ParentReference=, ChildReference=, LinkName=)

# AttachObject Operation

Attaches an existing object to another object. An object can be accessed in two ways:

1.  Using the path

2.  Using `ObjectIdentifier`

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where both objects reside. For more information, see [arns](@ref).


## `ParentReference = ["Selector" =>  ::String]` -- *Required*
The parent object reference.


## `ChildReference = ["Selector" =>  ::String]` -- *Required*
The child object reference to be attached to the object.


## `LinkName = ::String` -- *Required*
The link name with which the child object is attached to the parent.




# Returns

`AttachObjectResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException`, `LinkNameAlreadyInUseException`, `InvalidAttachmentException`, `ValidationException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttachObject)
"""
@inline attach_object(aws::AWSConfig=default_aws_config(); args...) = attach_object(aws, args)

@inline attach_object(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/object/attach", args)

@inline attach_object(args) = attach_object(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.attach_policy
    attach_policy([::AWSConfig], arguments::Dict)
    attach_policy([::AWSConfig]; *header:* x-amz-data-partition=, PolicyReference=, ObjectReference=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/policy/attach", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/policy/attach", *header:* x-amz-data-partition=, PolicyReference=, ObjectReference=)

# AttachPolicy Operation

Attaches a policy object to a regular object. An object can have a limited number of attached policies.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where both objects reside. For more information, see [arns](@ref).


## `PolicyReference = ["Selector" =>  ::String]` -- *Required*
The reference that is associated with the policy object.


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
The reference that identifies the object to which the policy will be attached.




# Returns

`AttachPolicyResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException` or `NotPolicyException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttachPolicy)
"""
@inline attach_policy(aws::AWSConfig=default_aws_config(); args...) = attach_policy(aws, args)

@inline attach_policy(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/policy/attach", args)

@inline attach_policy(args) = attach_policy(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.attach_to_index
    attach_to_index([::AWSConfig], arguments::Dict)
    attach_to_index([::AWSConfig]; *header:* x-amz-data-partition=, IndexReference=, TargetReference=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/index/attach", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/index/attach", *header:* x-amz-data-partition=, IndexReference=, TargetReference=)

# AttachToIndex Operation

Attaches the specified object to the specified index.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) of the directory where the object and index exist.


## `IndexReference = ["Selector" =>  ::String]` -- *Required*
A reference to the index that you are attaching the object to.


## `TargetReference = ["Selector" =>  ::String]` -- *Required*
A reference to the object that you are attaching to the index.




# Returns

`AttachToIndexResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `InvalidAttachmentException`, `ResourceNotFoundException`, `LinkNameAlreadyInUseException`, `IndexedAttributeMissingException` or `NotIndexException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttachToIndex)
"""
@inline attach_to_index(aws::AWSConfig=default_aws_config(); args...) = attach_to_index(aws, args)

@inline attach_to_index(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/index/attach", args)

@inline attach_to_index(args) = attach_to_index(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.attach_typed_link
    attach_typed_link([::AWSConfig], arguments::Dict)
    attach_typed_link([::AWSConfig]; *header:* x-amz-data-partition=, SourceObjectReference=, TargetObjectReference=, TypedLinkFacet=, Attributes=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/typedlink/attach", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/typedlink/attach", *header:* x-amz-data-partition=, SourceObjectReference=, TargetObjectReference=, TypedLinkFacet=, Attributes=)

# AttachTypedLink Operation

Attaches a typed link to a specified source and target object. For more information, see [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) of the directory where you want to attach the typed link.


## `SourceObjectReference = ["Selector" =>  ::String]` -- *Required*
Identifies the source object that the typed link will attach to.


## `TargetObjectReference = ["Selector" =>  ::String]` -- *Required*
Identifies the target object that the typed link will attach to.


## `TypedLinkFacet = [ ... ]` -- *Required*
Identifies the typed link facet that is associated with the typed link.
```
 TypedLinkFacet = [
        "SchemaArn" => <required> ::String,
        "TypedLinkName" => <required> ::String
    ]
```

## `Attributes = [[ ... ], ...]` -- *Required*
A set of attributes that are associated with the typed link.
```
 Attributes = [[
        "AttributeName" => <required> ::String,
        "Value" => <required> [
            "StringValue" =>  ::String,
            "BinaryValue" =>  blob,
            "BooleanValue" =>  ::Bool,
            "NumberValue" =>  ::String,
            "DatetimeValue" =>  timestamp
        ]
    ], ...]
```



# Returns

`AttachTypedLinkResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException`, `InvalidAttachmentException`, `ValidationException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/AttachTypedLink)
"""
@inline attach_typed_link(aws::AWSConfig=default_aws_config(); args...) = attach_typed_link(aws, args)

@inline attach_typed_link(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/typedlink/attach", args)

@inline attach_typed_link(args) = attach_typed_link(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.batch_read
    batch_read([::AWSConfig], arguments::Dict)
    batch_read([::AWSConfig]; *header:* x-amz-data-partition=, Operations=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/batchread", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/batchread", *header:* x-amz-data-partition=, Operations=, <keyword arguments>)

# BatchRead Operation

Performs all the read operations in a batch.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref). For more information, see [arns](@ref).


## `Operations = [[ ... ], ...]` -- *Required*
A list of operations that are part of the batch.
```
 Operations = [[
        "ListObjectAttributes" =>  [
            "ObjectReference" => <required> ["Selector" =>  ::String],
            "NextToken" =>  ::String,
            "MaxResults" =>  ::Int,
            "FacetFilter" =>  [
                "SchemaArn" =>  ::String,
                "FacetName" =>  ::String
            ]
        ],
        "ListObjectChildren" =>  [
            "ObjectReference" => <required> ["Selector" =>  ::String],
            "NextToken" =>  ::String,
            "MaxResults" =>  ::Int
        ],
        "ListAttachedIndices" =>  [
            "TargetReference" => <required> ["Selector" =>  ::String],
            "NextToken" =>  ::String,
            "MaxResults" =>  ::Int
        ],
        "ListObjectParentPaths" =>  [
            "ObjectReference" => <required> ["Selector" =>  ::String],
            "NextToken" =>  ::String,
            "MaxResults" =>  ::Int
        ],
        "GetObjectInformation" =>  ["ObjectReference" => <required> ["Selector" =>  ::String]],
        "GetObjectAttributes" =>  [
            "ObjectReference" => <required> ["Selector" =>  ::String],
            "SchemaFacet" => <required> [
                "SchemaArn" =>  ::String,
                "FacetName" =>  ::String
            ],
            "AttributeNames" => <required> [::String, ...]
        ],
        "ListObjectPolicies" =>  [
            "ObjectReference" => <required> ["Selector" =>  ::String],
            "NextToken" =>  ::String,
            "MaxResults" =>  ::Int
        ],
        "ListPolicyAttachments" =>  [
            "PolicyReference" => <required> ["Selector" =>  ::String],
            "NextToken" =>  ::String,
            "MaxResults" =>  ::Int
        ],
        "LookupPolicy" =>  [
            "ObjectReference" => <required> ["Selector" =>  ::String],
            "NextToken" =>  ::String,
            "MaxResults" =>  ::Int
        ],
        "ListIndex" =>  [
            "RangesOnIndexedValues" =>  [[
                "AttributeKey" =>  [
                    "SchemaArn" => <required> ::String,
                    "FacetName" => <required> ::String,
                    "Name" => <required> ::String
                ],
                "Range" =>  [
                    "StartMode" => <required> "FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE" or "EXCLUSIVE",
                    "StartValue" =>  [
                        "StringValue" =>  ::String,
                        "BinaryValue" =>  blob,
                        "BooleanValue" =>  ::Bool,
                        "NumberValue" =>  ::String,
                        "DatetimeValue" =>  timestamp
                    ],
                    "EndMode" => <required> "FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE" or "EXCLUSIVE",
                    "EndValue" =>  [
                        "StringValue" =>  ::String,
                        "BinaryValue" =>  blob,
                        "BooleanValue" =>  ::Bool,
                        "NumberValue" =>  ::String,
                        "DatetimeValue" =>  timestamp
                    ]
                ]
            ], ...],
            "IndexReference" => <required> ["Selector" =>  ::String],
            "MaxResults" =>  ::Int,
            "NextToken" =>  ::String
        ],
        "ListOutgoingTypedLinks" =>  [
            "ObjectReference" => <required> ["Selector" =>  ::String],
            "FilterAttributeRanges" =>  [[
                "AttributeName" =>  ::String,
                "Range" => <required> [
                    "StartMode" => <required> "FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE" or "EXCLUSIVE",
                    "StartValue" =>  [
                        "StringValue" =>  ::String,
                        "BinaryValue" =>  blob,
                        "BooleanValue" =>  ::Bool,
                        "NumberValue" =>  ::String,
                        "DatetimeValue" =>  timestamp
                    ],
                    "EndMode" => <required> "FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE" or "EXCLUSIVE",
                    "EndValue" =>  [
                        "StringValue" =>  ::String,
                        "BinaryValue" =>  blob,
                        "BooleanValue" =>  ::Bool,
                        "NumberValue" =>  ::String,
                        "DatetimeValue" =>  timestamp
                    ]
                ]
            ], ...],
            "FilterTypedLink" =>  [
                "SchemaArn" => <required> ::String,
                "TypedLinkName" => <required> ::String
            ],
            "NextToken" =>  ::String,
            "MaxResults" =>  ::Int
        ],
        "ListIncomingTypedLinks" =>  [
            "ObjectReference" => <required> ["Selector" =>  ::String],
            "FilterAttributeRanges" =>  [[
                "AttributeName" =>  ::String,
                "Range" => <required> [
                    "StartMode" => <required> "FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE" or "EXCLUSIVE",
                    "StartValue" =>  [
                        "StringValue" =>  ::String,
                        "BinaryValue" =>  blob,
                        "BooleanValue" =>  ::Bool,
                        "NumberValue" =>  ::String,
                        "DatetimeValue" =>  timestamp
                    ],
                    "EndMode" => <required> "FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE" or "EXCLUSIVE",
                    "EndValue" =>  [
                        "StringValue" =>  ::String,
                        "BinaryValue" =>  blob,
                        "BooleanValue" =>  ::Bool,
                        "NumberValue" =>  ::String,
                        "DatetimeValue" =>  timestamp
                    ]
                ]
            ], ...],
            "FilterTypedLink" =>  [
                "SchemaArn" => <required> ::String,
                "TypedLinkName" => <required> ::String
            ],
            "NextToken" =>  ::String,
            "MaxResults" =>  ::Int
        ],
        "GetLinkAttributes" =>  [
            "TypedLinkSpecifier" => <required> [
                "TypedLinkFacet" => <required> [
                    "SchemaArn" => <required> ::String,
                    "TypedLinkName" => <required> ::String
                ],
                "SourceObjectReference" => <required> ["Selector" =>  ::String],
                "TargetObjectReference" => <required> ["Selector" =>  ::String],
                "IdentityAttributeValues" => <required> [[
                    "AttributeName" => <required> ::String,
                    "Value" => <required> [
                        "StringValue" =>  ::String,
                        "BinaryValue" =>  blob,
                        "BooleanValue" =>  ::Bool,
                        "NumberValue" =>  ::String,
                        "DatetimeValue" =>  timestamp
                    ]
                ], ...]
            ],
            "AttributeNames" => <required> [::String, ...]
        ]
    ], ...]
```

## `*header:* x-amz-consistency-level = "SERIALIZABLE" or "EVENTUAL"`
Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.




# Returns

`BatchReadResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException` or `DirectoryNotEnabledException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchRead)
"""
@inline batch_read(aws::AWSConfig=default_aws_config(); args...) = batch_read(aws, args)

@inline batch_read(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/batchread", args)

@inline batch_read(args) = batch_read(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.batch_write
    batch_write([::AWSConfig], arguments::Dict)
    batch_write([::AWSConfig]; *header:* x-amz-data-partition=, Operations=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/batchwrite", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/batchwrite", *header:* x-amz-data-partition=, Operations=)

# BatchWrite Operation

Performs all the write operations in a batch. Either all the operations succeed or none.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref). For more information, see [arns](@ref).


## `Operations = [[ ... ], ...]` -- *Required*
A list of operations that are part of the batch.
```
 Operations = [[
        "CreateObject" =>  [
            "SchemaFacet" => <required> [[
                "SchemaArn" =>  ::String,
                "FacetName" =>  ::String
            ], ...],
            "ObjectAttributeList" => <required> [[
                "Key" => <required> [
                    "SchemaArn" => <required> ::String,
                    "FacetName" => <required> ::String,
                    "Name" => <required> ::String
                ],
                "Value" => <required> [
                    "StringValue" =>  ::String,
                    "BinaryValue" =>  blob,
                    "BooleanValue" =>  ::Bool,
                    "NumberValue" =>  ::String,
                    "DatetimeValue" =>  timestamp
                ]
            ], ...],
            "ParentReference" =>  ["Selector" =>  ::String],
            "LinkName" =>  ::String,
            "BatchReferenceName" =>  ::String
        ],
        "AttachObject" =>  [
            "ParentReference" => <required> ["Selector" =>  ::String],
            "ChildReference" => <required> ["Selector" =>  ::String],
            "LinkName" => <required> ::String
        ],
        "DetachObject" =>  [
            "ParentReference" => <required> ["Selector" =>  ::String],
            "LinkName" => <required> ::String,
            "BatchReferenceName" =>  ::String
        ],
        "UpdateObjectAttributes" =>  [
            "ObjectReference" => <required> ["Selector" =>  ::String],
            "AttributeUpdates" => <required> [[
                "ObjectAttributeKey" =>  [
                    "SchemaArn" => <required> ::String,
                    "FacetName" => <required> ::String,
                    "Name" => <required> ::String
                ],
                "ObjectAttributeAction" =>  [
                    "ObjectAttributeActionType" =>  "CREATE_OR_UPDATE" or "DELETE",
                    "ObjectAttributeUpdateValue" =>  [
                        "StringValue" =>  ::String,
                        "BinaryValue" =>  blob,
                        "BooleanValue" =>  ::Bool,
                        "NumberValue" =>  ::String,
                        "DatetimeValue" =>  timestamp
                    ]
                ]
            ], ...]
        ],
        "DeleteObject" =>  ["ObjectReference" => <required> ["Selector" =>  ::String]],
        "AddFacetToObject" =>  [
            "SchemaFacet" => <required> [
                "SchemaArn" =>  ::String,
                "FacetName" =>  ::String
            ],
            "ObjectAttributeList" => <required> [[
                "Key" => <required> [
                    "SchemaArn" => <required> ::String,
                    "FacetName" => <required> ::String,
                    "Name" => <required> ::String
                ],
                "Value" => <required> [
                    "StringValue" =>  ::String,
                    "BinaryValue" =>  blob,
                    "BooleanValue" =>  ::Bool,
                    "NumberValue" =>  ::String,
                    "DatetimeValue" =>  timestamp
                ]
            ], ...],
            "ObjectReference" => <required> ["Selector" =>  ::String]
        ],
        "RemoveFacetFromObject" =>  [
            "SchemaFacet" => <required> [
                "SchemaArn" =>  ::String,
                "FacetName" =>  ::String
            ],
            "ObjectReference" => <required> ["Selector" =>  ::String]
        ],
        "AttachPolicy" =>  [
            "PolicyReference" => <required> ["Selector" =>  ::String],
            "ObjectReference" => <required> ["Selector" =>  ::String]
        ],
        "DetachPolicy" =>  [
            "PolicyReference" => <required> ["Selector" =>  ::String],
            "ObjectReference" => <required> ["Selector" =>  ::String]
        ],
        "CreateIndex" =>  [
            "OrderedIndexedAttributeList" => <required> [[
                "SchemaArn" => <required> ::String,
                "FacetName" => <required> ::String,
                "Name" => <required> ::String
            ], ...],
            "IsUnique" => <required> ::Bool,
            "ParentReference" =>  ["Selector" =>  ::String],
            "LinkName" =>  ::String,
            "BatchReferenceName" =>  ::String
        ],
        "AttachToIndex" =>  [
            "IndexReference" => <required> ["Selector" =>  ::String],
            "TargetReference" => <required> ["Selector" =>  ::String]
        ],
        "DetachFromIndex" =>  [
            "IndexReference" => <required> ["Selector" =>  ::String],
            "TargetReference" => <required> ["Selector" =>  ::String]
        ],
        "AttachTypedLink" =>  [
            "SourceObjectReference" => <required> ["Selector" =>  ::String],
            "TargetObjectReference" => <required> ["Selector" =>  ::String],
            "TypedLinkFacet" => <required> [
                "SchemaArn" => <required> ::String,
                "TypedLinkName" => <required> ::String
            ],
            "Attributes" => <required> [[
                "AttributeName" => <required> ::String,
                "Value" => <required> [
                    "StringValue" =>  ::String,
                    "BinaryValue" =>  blob,
                    "BooleanValue" =>  ::Bool,
                    "NumberValue" =>  ::String,
                    "DatetimeValue" =>  timestamp
                ]
            ], ...]
        ],
        "DetachTypedLink" =>  ["TypedLinkSpecifier" => <required> [
                "TypedLinkFacet" => <required> [
                    "SchemaArn" => <required> ::String,
                    "TypedLinkName" => <required> ::String
                ],
                "SourceObjectReference" => <required> ["Selector" =>  ::String],
                "TargetObjectReference" => <required> ["Selector" =>  ::String],
                "IdentityAttributeValues" => <required> [[
                    "AttributeName" => <required> ::String,
                    "Value" => <required> [
                        "StringValue" =>  ::String,
                        "BinaryValue" =>  blob,
                        "BooleanValue" =>  ::Bool,
                        "NumberValue" =>  ::String,
                        "DatetimeValue" =>  timestamp
                    ]
                ], ...]
            ]],
        "UpdateLinkAttributes" =>  [
            "TypedLinkSpecifier" => <required> [
                "TypedLinkFacet" => <required> [
                    "SchemaArn" => <required> ::String,
                    "TypedLinkName" => <required> ::String
                ],
                "SourceObjectReference" => <required> ["Selector" =>  ::String],
                "TargetObjectReference" => <required> ["Selector" =>  ::String],
                "IdentityAttributeValues" => <required> [[
                    "AttributeName" => <required> ::String,
                    "Value" => <required> [
                        "StringValue" =>  ::String,
                        "BinaryValue" =>  blob,
                        "BooleanValue" =>  ::Bool,
                        "NumberValue" =>  ::String,
                        "DatetimeValue" =>  timestamp
                    ]
                ], ...]
            ],
            "AttributeUpdates" => <required> [[
                "AttributeKey" =>  [
                    "SchemaArn" => <required> ::String,
                    "FacetName" => <required> ::String,
                    "Name" => <required> ::String
                ],
                "AttributeAction" =>  [
                    "AttributeActionType" =>  "CREATE_OR_UPDATE" or "DELETE",
                    "AttributeUpdateValue" =>  [
                        "StringValue" =>  ::String,
                        "BinaryValue" =>  blob,
                        "BooleanValue" =>  ::Bool,
                        "NumberValue" =>  ::String,
                        "DatetimeValue" =>  timestamp
                    ]
                ]
            ], ...]
        ]
    ], ...]
```



# Returns

`BatchWriteResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException` or `BatchWriteException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/BatchWrite)
"""
@inline batch_write(aws::AWSConfig=default_aws_config(); args...) = batch_write(aws, args)

@inline batch_write(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/batchwrite", args)

@inline batch_write(args) = batch_write(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.create_directory
    create_directory([::AWSConfig], arguments::Dict)
    create_directory([::AWSConfig]; Name=, *header:* x-amz-data-partition=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/directory/create", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/directory/create", Name=, *header:* x-amz-data-partition=)

# CreateDirectory Operation

Creates a [Directory](@ref) by copying the published schema into the directory. A directory cannot be created without a schema.

# Arguments

## `Name = ::String` -- *Required*
The name of the [Directory](@ref). Should be unique per account, per region.


## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) of the published schema that will be copied into the data [Directory](@ref). For more information, see [arns](@ref).




# Returns

`CreateDirectoryResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryAlreadyExistsException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateDirectory)
"""
@inline create_directory(aws::AWSConfig=default_aws_config(); args...) = create_directory(aws, args)

@inline create_directory(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/directory/create", args)

@inline create_directory(args) = create_directory(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.create_facet
    create_facet([::AWSConfig], arguments::Dict)
    create_facet([::AWSConfig]; *header:* x-amz-data-partition=, Name=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/facet/create", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/facet/create", *header:* x-amz-data-partition=, Name=, <keyword arguments>)

# CreateFacet Operation

Creates a new [Facet](@ref) in a schema. Facet creation is allowed only in development or applied schemas.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The schema ARN in which the new [Facet](@ref) will be created. For more information, see [arns](@ref).


## `Name = ::String` -- *Required*
The name of the [Facet](@ref), which is unique for a given schema.


## `Attributes = [[ ... ], ...]`
The attributes that are associated with the [Facet](@ref).
```
 Attributes = [[
        "Name" => <required> ::String,
        "AttributeDefinition" =>  [
            "Type" => <required> "STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME" or "VARIANT",
            "DefaultValue" =>  [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ],
            "IsImmutable" =>  ::Bool,
            "Rules" =>  ::Dict{String,String}
        ],
        "AttributeReference" =>  [
            "TargetFacetName" => <required> ::String,
            "TargetAttributeName" => <required> ::String
        ],
        "RequiredBehavior" =>  "REQUIRED_ALWAYS" or "NOT_REQUIRED"
    ], ...]
```

## `ObjectType = "NODE", "LEAF_NODE", "POLICY" or "INDEX"`
Specifies whether a given object created from this facet is of type node, leaf node, policy or index.

*   Node: Can have multiple children but one parent.

*   Leaf node: Cannot have children but can have multiple parents.

*   Policy: Allows you to store a policy document and policy type. For more information, see [Policies](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies).

*   Index: Can be created with the Index API.


## `FacetStyle = "STATIC" or "DYNAMIC"`
There are two different styles that you can define on any given facet, `Static` and `Dynamic`. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.




# Returns

`CreateFacetResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException`, `FacetAlreadyExistsException`, `InvalidRuleException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateFacet)
"""
@inline create_facet(aws::AWSConfig=default_aws_config(); args...) = create_facet(aws, args)

@inline create_facet(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/facet/create", args)

@inline create_facet(args) = create_facet(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.create_index
    create_index([::AWSConfig], arguments::Dict)
    create_index([::AWSConfig]; *header:* x-amz-data-partition=, OrderedIndexedAttributeList=, IsUnique=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/index", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/index", *header:* x-amz-data-partition=, OrderedIndexedAttributeList=, IsUnique=, <keyword arguments>)

# CreateIndex Operation

Creates an index object. See [Indexing](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_indexing.html) for more information.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the directory where the index should be created.


## `OrderedIndexedAttributeList = [[ ... ], ...]` -- *Required*
Specifies the attributes that should be indexed on. Currently only a single attribute is supported.
```
 OrderedIndexedAttributeList = [[
        "SchemaArn" => <required> ::String,
        "FacetName" => <required> ::String,
        "Name" => <required> ::String
    ], ...]
```

## `IsUnique = ::Bool` -- *Required*
Indicates whether the attribute that is being indexed has unique values or not.


## `ParentReference = ["Selector" =>  ::String]`
A reference to the parent object that contains the index object.


## `LinkName = ::String`
The name of the link between the parent object and the index object.




# Returns

`CreateIndexResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException`, `FacetValidationException`, `LinkNameAlreadyInUseException` or `UnsupportedIndexTypeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateIndex)
"""
@inline create_index(aws::AWSConfig=default_aws_config(); args...) = create_index(aws, args)

@inline create_index(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/index", args)

@inline create_index(args) = create_index(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.create_object
    create_object([::AWSConfig], arguments::Dict)
    create_object([::AWSConfig]; *header:* x-amz-data-partition=, SchemaFacets=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object", *header:* x-amz-data-partition=, SchemaFacets=, <keyword arguments>)

# CreateObject Operation

Creates an object in a [Directory](@ref). Additionally attaches the object to a parent, if a parent reference and `LinkName` is specified. An object is simply a collection of [Facet](@ref) attributes. You can also use this API call to create a policy object, if the facet from which you create the object is a policy facet.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) in which the object will be created. For more information, see [arns](@ref).


## `SchemaFacets = [[ ... ], ...]` -- *Required*
A list of schema facets to be associated with the object. Do not provide minor version components. See [SchemaFacet](@ref) for details.
```
 SchemaFacets = [[
        "SchemaArn" =>  ::String,
        "FacetName" =>  ::String
    ], ...]
```

## `ObjectAttributeList = [[ ... ], ...]`
The attribute map whose attribute ARN contains the key and attribute value as the map value.
```
 ObjectAttributeList = [[
        "Key" => <required> [
            "SchemaArn" => <required> ::String,
            "FacetName" => <required> ::String,
            "Name" => <required> ::String
        ],
        "Value" => <required> [
            "StringValue" =>  ::String,
            "BinaryValue" =>  blob,
            "BooleanValue" =>  ::Bool,
            "NumberValue" =>  ::String,
            "DatetimeValue" =>  timestamp
        ]
    ], ...]
```

## `ParentReference = ["Selector" =>  ::String]`
If specified, the parent reference to which this object will be attached.


## `LinkName = ::String`
The name of link that is used to attach this object to a parent.




# Returns

`CreateObjectResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException`, `FacetValidationException`, `LinkNameAlreadyInUseException` or `UnsupportedIndexTypeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateObject)
"""
@inline create_object(aws::AWSConfig=default_aws_config(); args...) = create_object(aws, args)

@inline create_object(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/object", args)

@inline create_object(args) = create_object(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.create_schema
    create_schema([::AWSConfig], arguments::Dict)
    create_schema([::AWSConfig]; Name=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/create", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/create", Name=)

# CreateSchema Operation

Creates a new schema in a development state. A schema can exist in three phases:

*   *Development:* This is a mutable phase of the schema. All new schemas are in the development phase. Once the schema is finalized, it can be published.

*   *Published:* Published schemas are immutable and have a version associated with them.

*   *Applied:* Applied schemas are mutable in a way that allows you to add new schema facets. You can also add new, nonrequired attributes to existing schema facets. You can apply only published schemas to directories.

# Arguments

## `Name = ::String` -- *Required*
The name that is associated with the schema. This is unique to each account and in each region.




# Returns

`CreateSchemaResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `SchemaAlreadyExistsException` or `AccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateSchema)
"""
@inline create_schema(aws::AWSConfig=default_aws_config(); args...) = create_schema(aws, args)

@inline create_schema(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/schema/create", args)

@inline create_schema(args) = create_schema(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.create_typed_link_facet
    create_typed_link_facet([::AWSConfig], arguments::Dict)
    create_typed_link_facet([::AWSConfig]; *header:* x-amz-data-partition=, Facet=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/create", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/create", *header:* x-amz-data-partition=, Facet=)

# CreateTypedLinkFacet Operation

Creates a [TypedLinkFacet](@ref). For more information, see [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the schema. For more information, see [arns](@ref).


## `Facet = [ ... ]` -- *Required*
[Facet](@ref) structure that is associated with the typed link facet.
```
 Facet = [
        "Name" => <required> ::String,
        "Attributes" => <required> [[
            "Name" => <required> ::String,
            "Type" => <required> "STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME" or "VARIANT",
            "DefaultValue" =>  [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ],
            "IsImmutable" =>  ::Bool,
            "Rules" =>  ::Dict{String,String},
            "RequiredBehavior" => <required> "REQUIRED_ALWAYS" or "NOT_REQUIRED"
        ], ...],
        "IdentityAttributeOrder" => <required> [::String, ...]
    ]
```



# Returns

`CreateTypedLinkFacetResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException`, `FacetAlreadyExistsException`, `InvalidRuleException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/CreateTypedLinkFacet)
"""
@inline create_typed_link_facet(aws::AWSConfig=default_aws_config(); args...) = create_typed_link_facet(aws, args)

@inline create_typed_link_facet(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/create", args)

@inline create_typed_link_facet(args) = create_typed_link_facet(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.delete_directory
    delete_directory([::AWSConfig], arguments::Dict)
    delete_directory([::AWSConfig]; *header:* x-amz-data-partition=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/directory", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/directory", *header:* x-amz-data-partition=)

# DeleteDirectory Operation

Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme caution when deleting directories.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the directory to delete.




# Returns

`DeleteDirectoryResponse`

# Exceptions

`ResourceNotFoundException`, `DirectoryNotDisabledException`, `InternalServiceException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryDeletedException`, `RetryableConflictException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteDirectory)
"""
@inline delete_directory(aws::AWSConfig=default_aws_config(); args...) = delete_directory(aws, args)

@inline delete_directory(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/directory", args)

@inline delete_directory(args) = delete_directory(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.delete_facet
    delete_facet([::AWSConfig], arguments::Dict)
    delete_facet([::AWSConfig]; *header:* x-amz-data-partition=, Name=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/facet/delete", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/facet/delete", *header:* x-amz-data-partition=, Name=)

# DeleteFacet Operation

Deletes a given [Facet](@ref). All attributes and [Rule](@ref)s that are associated with the facet will be deleted. Only development schema facets are allowed deletion.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Facet](@ref). For more information, see [arns](@ref).


## `Name = ::String` -- *Required*
The name of the facet to delete.




# Returns

`DeleteFacetResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException`, `FacetNotFoundException` or `FacetInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteFacet)
"""
@inline delete_facet(aws::AWSConfig=default_aws_config(); args...) = delete_facet(aws, args)

@inline delete_facet(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/facet/delete", args)

@inline delete_facet(args) = delete_facet(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.delete_object
    delete_object([::AWSConfig], arguments::Dict)
    delete_object([::AWSConfig]; *header:* x-amz-data-partition=, ObjectReference=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object/delete", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object/delete", *header:* x-amz-data-partition=, ObjectReference=)

# DeleteObject Operation

Deletes an object and its associated attributes. Only objects with no children and no parents can be deleted.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where the object resides. For more information, see [arns](@ref).


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
A reference that identifies the object.




# Returns

`DeleteObjectResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException` or `ObjectNotDetachedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteObject)
"""
@inline delete_object(aws::AWSConfig=default_aws_config(); args...) = delete_object(aws, args)

@inline delete_object(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/object/delete", args)

@inline delete_object(args) = delete_object(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.delete_schema
    delete_schema([::AWSConfig], arguments::Dict)
    delete_schema([::AWSConfig]; *header:* x-amz-data-partition=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema", *header:* x-amz-data-partition=)

# DeleteSchema Operation

Deletes a given schema. Schemas in a development and published state can only be deleted.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) of the development schema. For more information, see [arns](@ref).




# Returns

`DeleteSchemaResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `StillContainsLinksException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteSchema)
"""
@inline delete_schema(aws::AWSConfig=default_aws_config(); args...) = delete_schema(aws, args)

@inline delete_schema(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/schema", args)

@inline delete_schema(args) = delete_schema(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.delete_typed_link_facet
    delete_typed_link_facet([::AWSConfig], arguments::Dict)
    delete_typed_link_facet([::AWSConfig]; *header:* x-amz-data-partition=, Name=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/delete", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/delete", *header:* x-amz-data-partition=, Name=)

# DeleteTypedLinkFacet Operation

Deletes a [TypedLinkFacet](@ref). For more information, see [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the schema. For more information, see [arns](@ref).


## `Name = ::String` -- *Required*
The unique name of the typed link facet.




# Returns

`DeleteTypedLinkFacetResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `FacetNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DeleteTypedLinkFacet)
"""
@inline delete_typed_link_facet(aws::AWSConfig=default_aws_config(); args...) = delete_typed_link_facet(aws, args)

@inline delete_typed_link_facet(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/delete", args)

@inline delete_typed_link_facet(args) = delete_typed_link_facet(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.detach_from_index
    detach_from_index([::AWSConfig], arguments::Dict)
    detach_from_index([::AWSConfig]; *header:* x-amz-data-partition=, IndexReference=, TargetReference=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/index/detach", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/index/detach", *header:* x-amz-data-partition=, IndexReference=, TargetReference=)

# DetachFromIndex Operation

Detaches the specified object from the specified index.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) of the directory the index and object exist in.


## `IndexReference = ["Selector" =>  ::String]` -- *Required*
A reference to the index object.


## `TargetReference = ["Selector" =>  ::String]` -- *Required*
A reference to the object being detached from the index.




# Returns

`DetachFromIndexResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException`, `ObjectAlreadyDetachedException` or `NotIndexException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DetachFromIndex)
"""
@inline detach_from_index(aws::AWSConfig=default_aws_config(); args...) = detach_from_index(aws, args)

@inline detach_from_index(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/index/detach", args)

@inline detach_from_index(args) = detach_from_index(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.detach_object
    detach_object([::AWSConfig], arguments::Dict)
    detach_object([::AWSConfig]; *header:* x-amz-data-partition=, ParentReference=, LinkName=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object/detach", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object/detach", *header:* x-amz-data-partition=, ParentReference=, LinkName=)

# DetachObject Operation

Detaches a given object from the parent object. The object that is to be detached from the parent is specified by the link name.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where objects reside. For more information, see [arns](@ref).


## `ParentReference = ["Selector" =>  ::String]` -- *Required*
The parent reference from which the object with the specified link name is detached.


## `LinkName = ::String` -- *Required*
The link name associated with the object that needs to be detached.




# Returns

`DetachObjectResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException` or `NotNodeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DetachObject)
"""
@inline detach_object(aws::AWSConfig=default_aws_config(); args...) = detach_object(aws, args)

@inline detach_object(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/object/detach", args)

@inline detach_object(args) = detach_object(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.detach_policy
    detach_policy([::AWSConfig], arguments::Dict)
    detach_policy([::AWSConfig]; *header:* x-amz-data-partition=, PolicyReference=, ObjectReference=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/policy/detach", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/policy/detach", *header:* x-amz-data-partition=, PolicyReference=, ObjectReference=)

# DetachPolicy Operation

Detaches a policy from an object.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where both objects reside. For more information, see [arns](@ref).


## `PolicyReference = ["Selector" =>  ::String]` -- *Required*
Reference that identifies the policy object.


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
Reference that identifies the object whose policy object will be detached.




# Returns

`DetachPolicyResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException` or `NotPolicyException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DetachPolicy)
"""
@inline detach_policy(aws::AWSConfig=default_aws_config(); args...) = detach_policy(aws, args)

@inline detach_policy(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/policy/detach", args)

@inline detach_policy(args) = detach_policy(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.detach_typed_link
    detach_typed_link([::AWSConfig], arguments::Dict)
    detach_typed_link([::AWSConfig]; *header:* x-amz-data-partition=, TypedLinkSpecifier=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/typedlink/detach", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/typedlink/detach", *header:* x-amz-data-partition=, TypedLinkSpecifier=)

# DetachTypedLink Operation

Detaches a typed link from a specified source and target object. For more information, see [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) of the directory where you want to detach the typed link.


## `TypedLinkSpecifier = [ ... ]` -- *Required*
Used to accept a typed link specifier as input.
```
 TypedLinkSpecifier = [
        "TypedLinkFacet" => <required> [
            "SchemaArn" => <required> ::String,
            "TypedLinkName" => <required> ::String
        ],
        "SourceObjectReference" => <required> ["Selector" =>  ::String],
        "TargetObjectReference" => <required> ["Selector" =>  ::String],
        "IdentityAttributeValues" => <required> [[
            "AttributeName" => <required> ::String,
            "Value" => <required> [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ]
        ], ...]
    ]
```



# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DetachTypedLink)
"""
@inline detach_typed_link(aws::AWSConfig=default_aws_config(); args...) = detach_typed_link(aws, args)

@inline detach_typed_link(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/typedlink/detach", args)

@inline detach_typed_link(args) = detach_typed_link(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.disable_directory
    disable_directory([::AWSConfig], arguments::Dict)
    disable_directory([::AWSConfig]; *header:* x-amz-data-partition=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/directory/disable", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/directory/disable", *header:* x-amz-data-partition=)

# DisableDirectory Operation

Disables the specified directory. Disabled directories cannot be read or written to. Only enabled directories can be disabled. Disabled directories may be reenabled.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the directory to disable.




# Returns

`DisableDirectoryResponse`

# Exceptions

`ResourceNotFoundException`, `DirectoryDeletedException`, `InternalServiceException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `RetryableConflictException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/DisableDirectory)
"""
@inline disable_directory(aws::AWSConfig=default_aws_config(); args...) = disable_directory(aws, args)

@inline disable_directory(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/directory/disable", args)

@inline disable_directory(args) = disable_directory(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.enable_directory
    enable_directory([::AWSConfig], arguments::Dict)
    enable_directory([::AWSConfig]; *header:* x-amz-data-partition=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/directory/enable", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/directory/enable", *header:* x-amz-data-partition=)

# EnableDirectory Operation

Enables the specified directory. Only disabled directories can be enabled. Once enabled, the directory can then be read and written to.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the directory to enable.




# Returns

`EnableDirectoryResponse`

# Exceptions

`ResourceNotFoundException`, `DirectoryDeletedException`, `InternalServiceException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `RetryableConflictException` or `InvalidArnException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/EnableDirectory)
"""
@inline enable_directory(aws::AWSConfig=default_aws_config(); args...) = enable_directory(aws, args)

@inline enable_directory(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/directory/enable", args)

@inline enable_directory(args) = enable_directory(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.get_applied_schema_version
    get_applied_schema_version([::AWSConfig], arguments::Dict)
    get_applied_schema_version([::AWSConfig]; SchemaArn=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/schema/getappliedschema", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/schema/getappliedschema", SchemaArn=)

# GetAppliedSchemaVersion Operation

Returns current applied schema version ARN, including the minor version in use.

# Arguments

## `SchemaArn = ::String` -- *Required*
The ARN of the applied schema.




# Returns

`GetAppliedSchemaVersionResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetAppliedSchemaVersion)
"""
@inline get_applied_schema_version(aws::AWSConfig=default_aws_config(); args...) = get_applied_schema_version(aws, args)

@inline get_applied_schema_version(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/schema/getappliedschema", args)

@inline get_applied_schema_version(args) = get_applied_schema_version(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.get_directory
    get_directory([::AWSConfig], arguments::Dict)
    get_directory([::AWSConfig]; *header:* x-amz-data-partition=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/directory/get", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/directory/get", *header:* x-amz-data-partition=)

# GetDirectory Operation

Retrieves metadata about a directory.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the directory.




# Returns

`GetDirectoryResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException` or `AccessDeniedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetDirectory)
"""
@inline get_directory(aws::AWSConfig=default_aws_config(); args...) = get_directory(aws, args)

@inline get_directory(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/directory/get", args)

@inline get_directory(args) = get_directory(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.get_facet
    get_facet([::AWSConfig], arguments::Dict)
    get_facet([::AWSConfig]; *header:* x-amz-data-partition=, Name=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/facet", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/facet", *header:* x-amz-data-partition=, Name=)

# GetFacet Operation

Gets details of the [Facet](@ref), such as facet name, attributes, [Rule](@ref)s, or `ObjectType`. You can call this on all kinds of schema facets -- published, development, or applied.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Facet](@ref). For more information, see [arns](@ref).


## `Name = ::String` -- *Required*
The name of the facet to retrieve.




# Returns

`GetFacetResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `FacetNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetFacet)
"""
@inline get_facet(aws::AWSConfig=default_aws_config(); args...) = get_facet(aws, args)

@inline get_facet(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/facet", args)

@inline get_facet(args) = get_facet(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.get_link_attributes
    get_link_attributes([::AWSConfig], arguments::Dict)
    get_link_attributes([::AWSConfig]; *header:* x-amz-data-partition=, TypedLinkSpecifier=, AttributeNames=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/get", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/get", *header:* x-amz-data-partition=, TypedLinkSpecifier=, AttributeNames=, <keyword arguments>)

# GetLinkAttributes Operation

Retrieves attributes that are associated with a typed link.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the Directory where the typed link resides. For more information, see [arns](@ref) or [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).


## `TypedLinkSpecifier = [ ... ]` -- *Required*
Allows a typed link specifier to be accepted as input.
```
 TypedLinkSpecifier = [
        "TypedLinkFacet" => <required> [
            "SchemaArn" => <required> ::String,
            "TypedLinkName" => <required> ::String
        ],
        "SourceObjectReference" => <required> ["Selector" =>  ::String],
        "TargetObjectReference" => <required> ["Selector" =>  ::String],
        "IdentityAttributeValues" => <required> [[
            "AttributeName" => <required> ::String,
            "Value" => <required> [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ]
        ], ...]
    ]
```

## `AttributeNames = [::String, ...]` -- *Required*
A list of attribute names whose values will be retrieved.


## `ConsistencyLevel = "SERIALIZABLE" or "EVENTUAL"`
The consistency level at which to retrieve the attributes on a typed link.




# Returns

`GetLinkAttributesResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetLinkAttributes)
"""
@inline get_link_attributes(aws::AWSConfig=default_aws_config(); args...) = get_link_attributes(aws, args)

@inline get_link_attributes(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/get", args)

@inline get_link_attributes(args) = get_link_attributes(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.get_object_attributes
    get_object_attributes([::AWSConfig], arguments::Dict)
    get_object_attributes([::AWSConfig]; *header:* x-amz-data-partition=, ObjectReference=, SchemaFacet=, AttributeNames=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/attributes/get", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/attributes/get", *header:* x-amz-data-partition=, ObjectReference=, SchemaFacet=, AttributeNames=, <keyword arguments>)

# GetObjectAttributes Operation

Retrieves attributes within a facet that are associated with an object.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where the object resides.


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
Reference that identifies the object whose attributes will be retrieved.


## `*header:* x-amz-consistency-level = "SERIALIZABLE" or "EVENTUAL"`
The consistency level at which to retrieve the attributes on an object.


## `SchemaFacet = [ ... ]` -- *Required*
Identifier for the facet whose attributes will be retrieved. See [SchemaFacet](@ref) for details.
```
 SchemaFacet = [
        "SchemaArn" =>  ::String,
        "FacetName" =>  ::String
    ]
```

## `AttributeNames = [::String, ...]` -- *Required*
List of attribute names whose values will be retrieved.




# Returns

`GetObjectAttributesResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetObjectAttributes)
"""
@inline get_object_attributes(aws::AWSConfig=default_aws_config(); args...) = get_object_attributes(aws, args)

@inline get_object_attributes(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/object/attributes/get", args)

@inline get_object_attributes(args) = get_object_attributes(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.get_object_information
    get_object_information([::AWSConfig], arguments::Dict)
    get_object_information([::AWSConfig]; *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/information", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/information", *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

# GetObjectInformation Operation

Retrieves metadata about an object.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the directory being retrieved.


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
A reference to the object.


## `*header:* x-amz-consistency-level = "SERIALIZABLE" or "EVENTUAL"`
The consistency level at which to retrieve the object information.




# Returns

`GetObjectInformationResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetObjectInformation)
"""
@inline get_object_information(aws::AWSConfig=default_aws_config(); args...) = get_object_information(aws, args)

@inline get_object_information(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/object/information", args)

@inline get_object_information(args) = get_object_information(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.get_schema_as_json
    get_schema_as_json([::AWSConfig], arguments::Dict)
    get_schema_as_json([::AWSConfig]; *header:* x-amz-data-partition=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/schema/json", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/schema/json", *header:* x-amz-data-partition=)

# GetSchemaAsJson Operation

Retrieves a JSON representation of the schema. See [JSON Schema Format](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat) for more information.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the schema to retrieve.




# Returns

`GetSchemaAsJsonResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `ValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetSchemaAsJson)
"""
@inline get_schema_as_json(aws::AWSConfig=default_aws_config(); args...) = get_schema_as_json(aws, args)

@inline get_schema_as_json(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/schema/json", args)

@inline get_schema_as_json(args) = get_schema_as_json(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.get_typed_link_facet_information
    get_typed_link_facet_information([::AWSConfig], arguments::Dict)
    get_typed_link_facet_information([::AWSConfig]; *header:* x-amz-data-partition=, Name=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/get", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/get", *header:* x-amz-data-partition=, Name=)

# GetTypedLinkFacetInformation Operation

Returns the identity attribute order for a specific [TypedLinkFacet](@ref). For more information, see [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the schema. For more information, see [arns](@ref).


## `Name = ::String` -- *Required*
The unique name of the typed link facet.




# Returns

`GetTypedLinkFacetInformationResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException`, `InvalidNextTokenException` or `FacetNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/GetTypedLinkFacetInformation)
"""
@inline get_typed_link_facet_information(aws::AWSConfig=default_aws_config(); args...) = get_typed_link_facet_information(aws, args)

@inline get_typed_link_facet_information(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/get", args)

@inline get_typed_link_facet_information(args) = get_typed_link_facet_information(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_applied_schema_arns
    list_applied_schema_arns([::AWSConfig], arguments::Dict)
    list_applied_schema_arns([::AWSConfig]; DirectoryArn=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/schema/applied", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/schema/applied", DirectoryArn=, <keyword arguments>)

# ListAppliedSchemaArns Operation

Lists schema major versions applied to a directory. If `SchemaArn` is provided, lists the minor version.

# Arguments

## `DirectoryArn = ::String` -- *Required*
The ARN of the directory you are listing.


## `SchemaArn = ::String`
The response for `ListAppliedSchemaArns` when this parameter is used will list all minor version ARNs for a major version.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of results to retrieve.




# Returns

`ListAppliedSchemaArnsResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListAppliedSchemaArns)
"""
@inline list_applied_schema_arns(aws::AWSConfig=default_aws_config(); args...) = list_applied_schema_arns(aws, args)

@inline list_applied_schema_arns(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/schema/applied", args)

@inline list_applied_schema_arns(args) = list_applied_schema_arns(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_attached_indices
    list_attached_indices([::AWSConfig], arguments::Dict)
    list_attached_indices([::AWSConfig]; *header:* x-amz-data-partition=, TargetReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/indices", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/indices", *header:* x-amz-data-partition=, TargetReference=, <keyword arguments>)

# ListAttachedIndices Operation

Lists indices attached to the specified object.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the directory.


## `TargetReference = ["Selector" =>  ::String]` -- *Required*
A reference to the object that has indices attached.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of results to retrieve.


## `*header:* x-amz-consistency-level = "SERIALIZABLE" or "EVENTUAL"`
The consistency level to use for this operation.




# Returns

`ListAttachedIndicesResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListAttachedIndices)
"""
@inline list_attached_indices(aws::AWSConfig=default_aws_config(); args...) = list_attached_indices(aws, args)

@inline list_attached_indices(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/object/indices", args)

@inline list_attached_indices(args) = list_attached_indices(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_development_schema_arns
    list_development_schema_arns([::AWSConfig], arguments::Dict)
    list_development_schema_arns([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/schema/development", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/schema/development", <keyword arguments>)

# ListDevelopmentSchemaArns Operation

Retrieves each Amazon Resource Name (ARN) of schemas in the development state.

# Arguments

## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of results to retrieve.




# Returns

`ListDevelopmentSchemaArnsResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListDevelopmentSchemaArns)
"""
@inline list_development_schema_arns(aws::AWSConfig=default_aws_config(); args...) = list_development_schema_arns(aws, args)

@inline list_development_schema_arns(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/schema/development", args)

@inline list_development_schema_arns(args) = list_development_schema_arns(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_directories
    list_directories([::AWSConfig], arguments::Dict)
    list_directories([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/directory/list", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/directory/list", <keyword arguments>)

# ListDirectories Operation

Lists directories created within an account.

# Arguments

## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of results to retrieve.


## `state = "ENABLED", "DISABLED" or "DELETED"`
The state of the directories in the list. Can be either Enabled, Disabled, or Deleted.




# Returns

`ListDirectoriesResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListDirectories)
"""
@inline list_directories(aws::AWSConfig=default_aws_config(); args...) = list_directories(aws, args)

@inline list_directories(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/directory/list", args)

@inline list_directories(args) = list_directories(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_facet_attributes
    list_facet_attributes([::AWSConfig], arguments::Dict)
    list_facet_attributes([::AWSConfig]; *header:* x-amz-data-partition=, Name=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/facet/attributes", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/facet/attributes", *header:* x-amz-data-partition=, Name=, <keyword arguments>)

# ListFacetAttributes Operation

Retrieves attributes attached to the facet.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the schema where the facet resides.


## `Name = ::String` -- *Required*
The name of the facet whose attributes will be retrieved.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of results to retrieve.




# Returns

`ListFacetAttributesResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException`, `FacetNotFoundException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListFacetAttributes)
"""
@inline list_facet_attributes(aws::AWSConfig=default_aws_config(); args...) = list_facet_attributes(aws, args)

@inline list_facet_attributes(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/facet/attributes", args)

@inline list_facet_attributes(args) = list_facet_attributes(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_facet_names
    list_facet_names([::AWSConfig], arguments::Dict)
    list_facet_names([::AWSConfig]; *header:* x-amz-data-partition=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/facet/list", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/facet/list", *header:* x-amz-data-partition=, <keyword arguments>)

# ListFacetNames Operation

Retrieves the names of facets that exist in a schema.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) to retrieve facet names from.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of results to retrieve.




# Returns

`ListFacetNamesResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListFacetNames)
"""
@inline list_facet_names(aws::AWSConfig=default_aws_config(); args...) = list_facet_names(aws, args)

@inline list_facet_names(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/facet/list", args)

@inline list_facet_names(args) = list_facet_names(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_incoming_typed_links
    list_incoming_typed_links([::AWSConfig], arguments::Dict)
    list_incoming_typed_links([::AWSConfig]; *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/incoming", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/incoming", *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

# ListIncomingTypedLinks Operation

Returns a paginated list of all the incoming [TypedLinkSpecifier](@ref) information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) of the directory where you want to list the typed links.


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
Reference that identifies the object whose attributes will be listed.


## `FilterAttributeRanges = [[ ... ], ...]`
Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.
```
 FilterAttributeRanges = [[
        "AttributeName" =>  ::String,
        "Range" => <required> [
            "StartMode" => <required> "FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE" or "EXCLUSIVE",
            "StartValue" =>  [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ],
            "EndMode" => <required> "FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE" or "EXCLUSIVE",
            "EndValue" =>  [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ]
        ]
    ], ...]
```

## `FilterTypedLink = [ ... ]`
Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls.
```
 FilterTypedLink = [
        "SchemaArn" => <required> ::String,
        "TypedLinkName" => <required> ::String
    ]
```

## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of results to retrieve.


## `ConsistencyLevel = "SERIALIZABLE" or "EVENTUAL"`
The consistency level to execute the request at.




# Returns

`ListIncomingTypedLinksResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException`, `InvalidNextTokenException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListIncomingTypedLinks)
"""
@inline list_incoming_typed_links(aws::AWSConfig=default_aws_config(); args...) = list_incoming_typed_links(aws, args)

@inline list_incoming_typed_links(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/typedlink/incoming", args)

@inline list_incoming_typed_links(args) = list_incoming_typed_links(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_index
    list_index([::AWSConfig], arguments::Dict)
    list_index([::AWSConfig]; *header:* x-amz-data-partition=, IndexReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/index/targets", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/index/targets", *header:* x-amz-data-partition=, IndexReference=, <keyword arguments>)

# ListIndex Operation

Lists objects attached to the specified index.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the directory that the index exists in.


## `RangesOnIndexedValues = [[ ... ], ...]`
Specifies the ranges of indexed values that you want to query.
```
 RangesOnIndexedValues = [[
        "AttributeKey" =>  [
            "SchemaArn" => <required> ::String,
            "FacetName" => <required> ::String,
            "Name" => <required> ::String
        ],
        "Range" =>  [
            "StartMode" => <required> "FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE" or "EXCLUSIVE",
            "StartValue" =>  [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ],
            "EndMode" => <required> "FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE" or "EXCLUSIVE",
            "EndValue" =>  [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ]
        ]
    ], ...]
```

## `IndexReference = ["Selector" =>  ::String]` -- *Required*
The reference to the index to list.


## `MaxResults = ::Int`
The maximum number of objects in a single page to retrieve from the index during a request. For more information, see [AWS Directory Service Limits](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/limits.html#limits_cd).


## `NextToken = ::String`
The pagination token.


## `*header:* x-amz-consistency-level = "SERIALIZABLE" or "EVENTUAL"`
The consistency level to execute the request at.




# Returns

`ListIndexResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `FacetValidationException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `InvalidNextTokenException`, `ResourceNotFoundException` or `NotIndexException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListIndex)
"""
@inline list_index(aws::AWSConfig=default_aws_config(); args...) = list_index(aws, args)

@inline list_index(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/index/targets", args)

@inline list_index(args) = list_index(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_managed_schema_arns
    list_managed_schema_arns([::AWSConfig], arguments::Dict)
    list_managed_schema_arns([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/schema/managed", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/schema/managed", <keyword arguments>)

# ListManagedSchemaArns Operation

Lists the major version families of each managed schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.

# Arguments

## `SchemaArn = ::String`
The response for ListManagedSchemaArns. When this parameter is used, all minor version ARNs for a major version are listed.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of results to retrieve.




# Returns

`ListManagedSchemaArnsResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `ValidationException`, `AccessDeniedException`, `ResourceNotFoundException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListManagedSchemaArns)
"""
@inline list_managed_schema_arns(aws::AWSConfig=default_aws_config(); args...) = list_managed_schema_arns(aws, args)

@inline list_managed_schema_arns(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/schema/managed", args)

@inline list_managed_schema_arns(args) = list_managed_schema_arns(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_object_attributes
    list_object_attributes([::AWSConfig], arguments::Dict)
    list_object_attributes([::AWSConfig]; *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/attributes", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/attributes", *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

# ListObjectAttributes Operation

Lists all attributes that are associated with an object.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where the object resides. For more information, see [arns](@ref).


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
The reference that identifies the object whose attributes will be listed.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of items to be retrieved in a single call. This is an approximate number.


## `*header:* x-amz-consistency-level = "SERIALIZABLE" or "EVENTUAL"`
Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.


## `FacetFilter = [ ... ]`
Used to filter the list of object attributes that are associated with a certain facet.
```
 FacetFilter = [
        "SchemaArn" =>  ::String,
        "FacetName" =>  ::String
    ]
```



# Returns

`ListObjectAttributesResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException`, `InvalidNextTokenException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectAttributes)
"""
@inline list_object_attributes(aws::AWSConfig=default_aws_config(); args...) = list_object_attributes(aws, args)

@inline list_object_attributes(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/object/attributes", args)

@inline list_object_attributes(args) = list_object_attributes(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_object_children
    list_object_children([::AWSConfig], arguments::Dict)
    list_object_children([::AWSConfig]; *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/children", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/children", *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

# ListObjectChildren Operation

Returns a paginated list of child objects that are associated with a given object.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where the object resides. For more information, see [arns](@ref).


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
The reference that identifies the object for which child objects are being listed.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of items to be retrieved in a single call. This is an approximate number.


## `*header:* x-amz-consistency-level = "SERIALIZABLE" or "EVENTUAL"`
Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.




# Returns

`ListObjectChildrenResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException`, `InvalidNextTokenException` or `NotNodeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectChildren)
"""
@inline list_object_children(aws::AWSConfig=default_aws_config(); args...) = list_object_children(aws, args)

@inline list_object_children(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/object/children", args)

@inline list_object_children(args) = list_object_children(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_object_parent_paths
    list_object_parent_paths([::AWSConfig], arguments::Dict)
    list_object_parent_paths([::AWSConfig]; *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/parentpaths", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/parentpaths", *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

# ListObjectParentPaths Operation

Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see [Directory Structure](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#dirstructure).

Use this API to evaluate all parents for an object. The call returns all objects from the root of the directory up to the requested object. The API returns the number of paths based on user-defined `MaxResults`, in case there are multiple paths to the parent. The order of the paths and nodes returned is consistent among multiple API calls unless the objects are deleted or moved. Paths not leading to the directory root are ignored from the target object.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the directory to which the parent path applies.


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
The reference that identifies the object whose parent paths are listed.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of items to be retrieved in a single call. This is an approximate number.




# Returns

`ListObjectParentPathsResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `InvalidNextTokenException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectParentPaths)
"""
@inline list_object_parent_paths(aws::AWSConfig=default_aws_config(); args...) = list_object_parent_paths(aws, args)

@inline list_object_parent_paths(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/object/parentpaths", args)

@inline list_object_parent_paths(args) = list_object_parent_paths(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_object_parents
    list_object_parents([::AWSConfig], arguments::Dict)
    list_object_parents([::AWSConfig]; *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/parent", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/parent", *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

# ListObjectParents Operation

Lists parent objects that are associated with a given object in pagination fashion.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where the object resides. For more information, see [arns](@ref).


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
The reference that identifies the object for which parent objects are being listed.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of items to be retrieved in a single call. This is an approximate number.


## `*header:* x-amz-consistency-level = "SERIALIZABLE" or "EVENTUAL"`
Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.




# Returns

`ListObjectParentsResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException`, `InvalidNextTokenException` or `CannotListParentOfRootException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectParents)
"""
@inline list_object_parents(aws::AWSConfig=default_aws_config(); args...) = list_object_parents(aws, args)

@inline list_object_parents(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/object/parent", args)

@inline list_object_parents(args) = list_object_parents(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_object_policies
    list_object_policies([::AWSConfig], arguments::Dict)
    list_object_policies([::AWSConfig]; *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/policy", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/object/policy", *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

# ListObjectPolicies Operation

Returns policies attached to an object in pagination fashion.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where objects reside. For more information, see [arns](@ref).


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
Reference that identifies the object for which policies will be listed.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of items to be retrieved in a single call. This is an approximate number.


## `*header:* x-amz-consistency-level = "SERIALIZABLE" or "EVENTUAL"`
Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.




# Returns

`ListObjectPoliciesResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListObjectPolicies)
"""
@inline list_object_policies(aws::AWSConfig=default_aws_config(); args...) = list_object_policies(aws, args)

@inline list_object_policies(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/object/policy", args)

@inline list_object_policies(args) = list_object_policies(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_outgoing_typed_links
    list_outgoing_typed_links([::AWSConfig], arguments::Dict)
    list_outgoing_typed_links([::AWSConfig]; *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/outgoing", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/outgoing", *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

# ListOutgoingTypedLinks Operation

Returns a paginated list of all the outgoing [TypedLinkSpecifier](@ref) information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) of the directory where you want to list the typed links.


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
A reference that identifies the object whose attributes will be listed.


## `FilterAttributeRanges = [[ ... ], ...]`
Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.
```
 FilterAttributeRanges = [[
        "AttributeName" =>  ::String,
        "Range" => <required> [
            "StartMode" => <required> "FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE" or "EXCLUSIVE",
            "StartValue" =>  [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ],
            "EndMode" => <required> "FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE" or "EXCLUSIVE",
            "EndValue" =>  [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ]
        ]
    ], ...]
```

## `FilterTypedLink = [ ... ]`
Filters are interpreted in the order of the attributes defined on the typed link facet, not the order they are supplied to any API calls.
```
 FilterTypedLink = [
        "SchemaArn" => <required> ::String,
        "TypedLinkName" => <required> ::String
    ]
```

## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of results to retrieve.


## `ConsistencyLevel = "SERIALIZABLE" or "EVENTUAL"`
The consistency level to execute the request at.




# Returns

`ListOutgoingTypedLinksResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException`, `InvalidNextTokenException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListOutgoingTypedLinks)
"""
@inline list_outgoing_typed_links(aws::AWSConfig=default_aws_config(); args...) = list_outgoing_typed_links(aws, args)

@inline list_outgoing_typed_links(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/typedlink/outgoing", args)

@inline list_outgoing_typed_links(args) = list_outgoing_typed_links(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_policy_attachments
    list_policy_attachments([::AWSConfig], arguments::Dict)
    list_policy_attachments([::AWSConfig]; *header:* x-amz-data-partition=, PolicyReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/policy/attachment", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/policy/attachment", *header:* x-amz-data-partition=, PolicyReference=, <keyword arguments>)

# ListPolicyAttachments Operation

Returns all of the `ObjectIdentifiers` to which a given policy is attached.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where objects reside. For more information, see [arns](@ref).


## `PolicyReference = ["Selector" =>  ::String]` -- *Required*
The reference that identifies the policy object.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of items to be retrieved in a single call. This is an approximate number.


## `*header:* x-amz-consistency-level = "SERIALIZABLE" or "EVENTUAL"`
Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.




# Returns

`ListPolicyAttachmentsResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `InvalidNextTokenException`, `ResourceNotFoundException` or `NotPolicyException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListPolicyAttachments)
"""
@inline list_policy_attachments(aws::AWSConfig=default_aws_config(); args...) = list_policy_attachments(aws, args)

@inline list_policy_attachments(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/policy/attachment", args)

@inline list_policy_attachments(args) = list_policy_attachments(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_published_schema_arns
    list_published_schema_arns([::AWSConfig], arguments::Dict)
    list_published_schema_arns([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/schema/published", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/schema/published", <keyword arguments>)

# ListPublishedSchemaArns Operation

Lists the major version families of each published schema. If a major version ARN is provided as `SchemaArn`, the minor version revisions in that family are listed instead.

# Arguments

## `SchemaArn = ::String`
The response for `ListPublishedSchemaArns` when this parameter is used will list all minor version ARNs for a major version.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of results to retrieve.




# Returns

`ListPublishedSchemaArnsResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListPublishedSchemaArns)
"""
@inline list_published_schema_arns(aws::AWSConfig=default_aws_config(); args...) = list_published_schema_arns(aws, args)

@inline list_published_schema_arns(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/schema/published", args)

@inline list_published_schema_arns(args) = list_published_schema_arns(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; ResourceArn=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/tags", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/tags", ResourceArn=, <keyword arguments>)

# ListTagsForResource Operation

Returns tags for a resource. Tagging is currently supported only for directories with a limit of 50 tags per directory. All 50 tags are returned for a given directory with this API call.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.


## `NextToken = ::String`
The pagination token. This is for future use. Currently pagination is not supported for tagging.


## `MaxResults = ::Int`
The `MaxResults` parameter sets the maximum number of results returned in a single page. This is for future use and is not supported currently.




# Returns

`ListTagsForResourceResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `InvalidTaggingRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/tags", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_typed_link_facet_attributes
    list_typed_link_facet_attributes([::AWSConfig], arguments::Dict)
    list_typed_link_facet_attributes([::AWSConfig]; *header:* x-amz-data-partition=, Name=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes", *header:* x-amz-data-partition=, Name=, <keyword arguments>)

# ListTypedLinkFacetAttributes Operation

Returns a paginated list of all attribute definitions for a particular [TypedLinkFacet](@ref). For more information, see [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the schema. For more information, see [arns](@ref).


## `Name = ::String` -- *Required*
The unique name of the typed link facet.


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of results to retrieve.




# Returns

`ListTypedLinkFacetAttributesResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException`, `FacetNotFoundException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListTypedLinkFacetAttributes)
"""
@inline list_typed_link_facet_attributes(aws::AWSConfig=default_aws_config(); args...) = list_typed_link_facet_attributes(aws, args)

@inline list_typed_link_facet_attributes(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes", args)

@inline list_typed_link_facet_attributes(args) = list_typed_link_facet_attributes(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.list_typed_link_facet_names
    list_typed_link_facet_names([::AWSConfig], arguments::Dict)
    list_typed_link_facet_names([::AWSConfig]; *header:* x-amz-data-partition=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/list", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/list", *header:* x-amz-data-partition=, <keyword arguments>)

# ListTypedLinkFacetNames Operation

Returns a paginated list of `TypedLink` facet names for a particular schema. For more information, see [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the schema. For more information, see [arns](@ref).


## `NextToken = ::String`
The pagination token.


## `MaxResults = ::Int`
The maximum number of results to retrieve.




# Returns

`ListTypedLinkFacetNamesResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `InvalidNextTokenException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/ListTypedLinkFacetNames)
"""
@inline list_typed_link_facet_names(aws::AWSConfig=default_aws_config(); args...) = list_typed_link_facet_names(aws, args)

@inline list_typed_link_facet_names(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/list", args)

@inline list_typed_link_facet_names(args) = list_typed_link_facet_names(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.lookup_policy
    lookup_policy([::AWSConfig], arguments::Dict)
    lookup_policy([::AWSConfig]; *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/policy/lookup", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/policy/lookup", *header:* x-amz-data-partition=, ObjectReference=, <keyword arguments>)

# LookupPolicy Operation

Lists all policies from the root of the [Directory](@ref) to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the `ObjectIdentifier` for such objects. If policies are present, it returns `ObjectIdentifier`, `policyId`, and `policyType`. Paths that don't lead to the root from the target object are ignored. For more information, see [Policies](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies).

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref). For more information, see [arns](@ref).


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
Reference that identifies the object whose policies will be looked up.


## `NextToken = ::String`
The token to request the next page of results.


## `MaxResults = ::Int`
The maximum number of items to be retrieved in a single call. This is an approximate number.




# Returns

`LookupPolicyResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `InvalidNextTokenException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/LookupPolicy)
"""
@inline lookup_policy(aws::AWSConfig=default_aws_config(); args...) = lookup_policy(aws, args)

@inline lookup_policy(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/policy/lookup", args)

@inline lookup_policy(args) = lookup_policy(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.publish_schema
    publish_schema([::AWSConfig], arguments::Dict)
    publish_schema([::AWSConfig]; *header:* x-amz-data-partition=, Version=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/publish", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/publish", *header:* x-amz-data-partition=, Version=, <keyword arguments>)

# PublishSchema Operation

Publishes a development schema with a major version and a recommended minor version.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the development schema. For more information, see [arns](@ref).


## `Version = ::String` -- *Required*
The major version under which the schema will be published. Schemas have both a major and minor version associated with them.


## `MinorVersion = ::String`
The minor version under which the schema will be published. This parameter is recommended. Schemas have both a major and minor version associated with them.


## `Name = ::String`
The new name under which the schema will be published. If this is not provided, the development schema is considered.




# Returns

`PublishSchemaResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `SchemaAlreadyPublishedException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/PublishSchema)
"""
@inline publish_schema(aws::AWSConfig=default_aws_config(); args...) = publish_schema(aws, args)

@inline publish_schema(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/schema/publish", args)

@inline publish_schema(args) = publish_schema(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.put_schema_from_json
    put_schema_from_json([::AWSConfig], arguments::Dict)
    put_schema_from_json([::AWSConfig]; *header:* x-amz-data-partition=, Document=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/json", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/json", *header:* x-amz-data-partition=, Document=)

# PutSchemaFromJson Operation

Allows a schema to be updated using JSON upload. Only available for development schemas. See [JSON Schema Format](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat) for more information.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the schema to update.


## `Document = ::String` -- *Required*
The replacement JSON schema.




# Returns

`PutSchemaFromJsonResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `InvalidSchemaDocException` or `InvalidRuleException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/PutSchemaFromJson)
"""
@inline put_schema_from_json(aws::AWSConfig=default_aws_config(); args...) = put_schema_from_json(aws, args)

@inline put_schema_from_json(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/schema/json", args)

@inline put_schema_from_json(args) = put_schema_from_json(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.remove_facet_from_object
    remove_facet_from_object([::AWSConfig], arguments::Dict)
    remove_facet_from_object([::AWSConfig]; *header:* x-amz-data-partition=, SchemaFacet=, ObjectReference=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object/facets/delete", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object/facets/delete", *header:* x-amz-data-partition=, SchemaFacet=, ObjectReference=)

# RemoveFacetFromObject Operation

Removes the specified facet from the specified object.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The ARN of the directory in which the object resides.


## `SchemaFacet = [ ... ]` -- *Required*
The facet to remove. See [SchemaFacet](@ref) for details.
```
 SchemaFacet = [
        "SchemaArn" =>  ::String,
        "FacetName" =>  ::String
    ]
```

## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
A reference to the object to remove the facet from.




# Returns

`RemoveFacetFromObjectResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/RemoveFacetFromObject)
"""
@inline remove_facet_from_object(aws::AWSConfig=default_aws_config(); args...) = remove_facet_from_object(aws, args)

@inline remove_facet_from_object(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/object/facets/delete", args)

@inline remove_facet_from_object(args) = remove_facet_from_object(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.tag_resource
    tag_resource([::AWSConfig], arguments::Dict)
    tag_resource([::AWSConfig]; ResourceArn=, Tags=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/tags/add", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/tags/add", ResourceArn=, Tags=)

# TagResource Operation

An API operation for adding tags to a resource.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.


## `Tags = [[ ... ], ...]` -- *Required*
A list of tag key-value pairs.
```
 Tags = [[
        "Key" =>  ::String,
        "Value" =>  ::String
    ], ...]
```



# Returns

`TagResourceResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `InvalidTaggingRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/TagResource)
"""
@inline tag_resource(aws::AWSConfig=default_aws_config(); args...) = tag_resource(aws, args)

@inline tag_resource(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/tags/add", args)

@inline tag_resource(args) = tag_resource(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.untag_resource
    untag_resource([::AWSConfig], arguments::Dict)
    untag_resource([::AWSConfig]; ResourceArn=, TagKeys=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/tags/remove", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/tags/remove", ResourceArn=, TagKeys=)

# UntagResource Operation

An API operation for removing tags from a resource.

# Arguments

## `ResourceArn = ::String` -- *Required*
The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.


## `TagKeys = [::String, ...]` -- *Required*
Keys of the tag that need to be removed from the resource.




# Returns

`UntagResourceResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `ResourceNotFoundException` or `InvalidTaggingRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UntagResource)
"""
@inline untag_resource(aws::AWSConfig=default_aws_config(); args...) = untag_resource(aws, args)

@inline untag_resource(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/tags/remove", args)

@inline untag_resource(args) = untag_resource(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.update_facet
    update_facet([::AWSConfig], arguments::Dict)
    update_facet([::AWSConfig]; *header:* x-amz-data-partition=, Name=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/facet", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/facet", *header:* x-amz-data-partition=, Name=, <keyword arguments>)

# UpdateFacet Operation

Does the following:

1.  Adds new `Attributes`, `Rules`, or `ObjectTypes`.

2.  Updates existing `Attributes`, `Rules`, or `ObjectTypes`.

3.  Deletes existing `Attributes`, `Rules`, or `ObjectTypes`.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Facet](@ref). For more information, see [arns](@ref).


## `Name = ::String` -- *Required*
The name of the facet.


## `AttributeUpdates = [[ ... ], ...]`
List of attributes that need to be updated in a given schema [Facet](@ref). Each attribute is followed by `AttributeAction`, which specifies the type of update operation to perform.
```
 AttributeUpdates = [[
        "Attribute" =>  [
            "Name" => <required> ::String,
            "AttributeDefinition" =>  [
                "Type" => <required> "STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME" or "VARIANT",
                "DefaultValue" =>  [
                    "StringValue" =>  ::String,
                    "BinaryValue" =>  blob,
                    "BooleanValue" =>  ::Bool,
                    "NumberValue" =>  ::String,
                    "DatetimeValue" =>  timestamp
                ],
                "IsImmutable" =>  ::Bool,
                "Rules" =>  ::Dict{String,String}
            ],
            "AttributeReference" =>  [
                "TargetFacetName" => <required> ::String,
                "TargetAttributeName" => <required> ::String
            ],
            "RequiredBehavior" =>  "REQUIRED_ALWAYS" or "NOT_REQUIRED"
        ],
        "Action" =>  "CREATE_OR_UPDATE" or "DELETE"
    ], ...]
```

## `ObjectType = "NODE", "LEAF_NODE", "POLICY" or "INDEX"`
The object type that is associated with the facet. See [CreateFacetRequest\$ObjectType](@ref) for more details.




# Returns

`UpdateFacetResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `InvalidFacetUpdateException`, `FacetValidationException`, `ResourceNotFoundException`, `FacetNotFoundException` or `InvalidRuleException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateFacet)
"""
@inline update_facet(aws::AWSConfig=default_aws_config(); args...) = update_facet(aws, args)

@inline update_facet(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/facet", args)

@inline update_facet(args) = update_facet(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.update_link_attributes
    update_link_attributes([::AWSConfig], arguments::Dict)
    update_link_attributes([::AWSConfig]; *header:* x-amz-data-partition=, TypedLinkSpecifier=, AttributeUpdates=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/update", arguments::Dict)
    clouddirectory([::AWSConfig], "POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/update", *header:* x-amz-data-partition=, TypedLinkSpecifier=, AttributeUpdates=)

# UpdateLinkAttributes Operation

Updates a given typed link’s attributes. Attributes to be updated must not contribute to the typed link’s identity, as defined by its `IdentityAttributeOrder`.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the Directory where the updated typed link resides. For more information, see [arns](@ref) or [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).


## `TypedLinkSpecifier = [ ... ]` -- *Required*
Allows a typed link specifier to be accepted as input.
```
 TypedLinkSpecifier = [
        "TypedLinkFacet" => <required> [
            "SchemaArn" => <required> ::String,
            "TypedLinkName" => <required> ::String
        ],
        "SourceObjectReference" => <required> ["Selector" =>  ::String],
        "TargetObjectReference" => <required> ["Selector" =>  ::String],
        "IdentityAttributeValues" => <required> [[
            "AttributeName" => <required> ::String,
            "Value" => <required> [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ]
        ], ...]
    ]
```

## `AttributeUpdates = [[ ... ], ...]` -- *Required*
The attributes update structure.
```
 AttributeUpdates = [[
        "AttributeKey" =>  [
            "SchemaArn" => <required> ::String,
            "FacetName" => <required> ::String,
            "Name" => <required> ::String
        ],
        "AttributeAction" =>  [
            "AttributeActionType" =>  "CREATE_OR_UPDATE" or "DELETE",
            "AttributeUpdateValue" =>  [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ]
        ]
    ], ...]
```



# Returns

`UpdateLinkAttributesResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateLinkAttributes)
"""
@inline update_link_attributes(aws::AWSConfig=default_aws_config(); args...) = update_link_attributes(aws, args)

@inline update_link_attributes(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/update", args)

@inline update_link_attributes(args) = update_link_attributes(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.update_object_attributes
    update_object_attributes([::AWSConfig], arguments::Dict)
    update_object_attributes([::AWSConfig]; *header:* x-amz-data-partition=, ObjectReference=, AttributeUpdates=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object/update", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/object/update", *header:* x-amz-data-partition=, ObjectReference=, AttributeUpdates=)

# UpdateObjectAttributes Operation

Updates a given object's attributes.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the [Directory](@ref) where the object resides. For more information, see [arns](@ref).


## `ObjectReference = ["Selector" =>  ::String]` -- *Required*
The reference that identifies the object.


## `AttributeUpdates = [[ ... ], ...]` -- *Required*
The attributes update structure.
```
 AttributeUpdates = [[
        "ObjectAttributeKey" =>  [
            "SchemaArn" => <required> ::String,
            "FacetName" => <required> ::String,
            "Name" => <required> ::String
        ],
        "ObjectAttributeAction" =>  [
            "ObjectAttributeActionType" =>  "CREATE_OR_UPDATE" or "DELETE",
            "ObjectAttributeUpdateValue" =>  [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ]
        ]
    ], ...]
```



# Returns

`UpdateObjectAttributesResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `DirectoryNotEnabledException`, `ResourceNotFoundException`, `LinkNameAlreadyInUseException` or `FacetValidationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateObjectAttributes)
"""
@inline update_object_attributes(aws::AWSConfig=default_aws_config(); args...) = update_object_attributes(aws, args)

@inline update_object_attributes(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/object/update", args)

@inline update_object_attributes(args) = update_object_attributes(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.update_schema
    update_schema([::AWSConfig], arguments::Dict)
    update_schema([::AWSConfig]; *header:* x-amz-data-partition=, Name=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/update", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/update", *header:* x-amz-data-partition=, Name=)

# UpdateSchema Operation

Updates the schema name with a new name. Only development schema names can be updated.

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) of the development schema. For more information, see [arns](@ref).


## `Name = ::String` -- *Required*
The name of the schema.




# Returns

`UpdateSchemaResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException` or `ResourceNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateSchema)
"""
@inline update_schema(aws::AWSConfig=default_aws_config(); args...) = update_schema(aws, args)

@inline update_schema(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/schema/update", args)

@inline update_schema(args) = update_schema(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.update_typed_link_facet
    update_typed_link_facet([::AWSConfig], arguments::Dict)
    update_typed_link_facet([::AWSConfig]; *header:* x-amz-data-partition=, Name=, AttributeUpdates=, IdentityAttributeOrder=)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet", *header:* x-amz-data-partition=, Name=, AttributeUpdates=, IdentityAttributeOrder=)

# UpdateTypedLinkFacet Operation

Updates a [TypedLinkFacet](@ref). For more information, see [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).

# Arguments

## `*header:* x-amz-data-partition = ::String` -- *Required*
The Amazon Resource Name (ARN) that is associated with the schema. For more information, see [arns](@ref).


## `Name = ::String` -- *Required*
The unique name of the typed link facet.


## `AttributeUpdates = [[ ... ], ...]` -- *Required*
Attributes update structure.
```
 AttributeUpdates = [[
        "Attribute" => <required> [
            "Name" => <required> ::String,
            "Type" => <required> "STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME" or "VARIANT",
            "DefaultValue" =>  [
                "StringValue" =>  ::String,
                "BinaryValue" =>  blob,
                "BooleanValue" =>  ::Bool,
                "NumberValue" =>  ::String,
                "DatetimeValue" =>  timestamp
            ],
            "IsImmutable" =>  ::Bool,
            "Rules" =>  ::Dict{String,String},
            "RequiredBehavior" => <required> "REQUIRED_ALWAYS" or "NOT_REQUIRED"
        ],
        "Action" => <required> "CREATE_OR_UPDATE" or "DELETE"
    ], ...]
```

## `IdentityAttributeOrder = [::String, ...]` -- *Required*
The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed links considers the order that the attributes are defined on the typed link facet. When providing ranges to a typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range. Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls. For more information about identity attributes, see [Typed link](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink).




# Returns

`UpdateTypedLinkFacetResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `LimitExceededException`, `AccessDeniedException`, `FacetValidationException`, `InvalidFacetUpdateException`, `ResourceNotFoundException`, `FacetNotFoundException` or `InvalidRuleException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpdateTypedLinkFacet)
"""
@inline update_typed_link_facet(aws::AWSConfig=default_aws_config(); args...) = update_typed_link_facet(aws, args)

@inline update_typed_link_facet(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet", args)

@inline update_typed_link_facet(args) = update_typed_link_facet(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.upgrade_applied_schema
    upgrade_applied_schema([::AWSConfig], arguments::Dict)
    upgrade_applied_schema([::AWSConfig]; PublishedSchemaArn=, DirectoryArn=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/upgradeapplied", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/upgradeapplied", PublishedSchemaArn=, DirectoryArn=, <keyword arguments>)

# UpgradeAppliedSchema Operation

Upgrades a single directory in-place using the `PublishedSchemaArn` with schema updates found in `MinorVersion`. Backwards-compatible minor version upgrades are instantaneously available for readers on all objects in the directory. Note: This is a synchronous API call and upgrades only one schema on a given directory per call. To upgrade multiple directories from one schema, you would need to call this API on each directory.

# Arguments

## `PublishedSchemaArn = ::String` -- *Required*
The revision of the published schema to upgrade the directory to.


## `DirectoryArn = ::String` -- *Required*
The ARN for the directory to which the upgraded schema will be applied.


## `DryRun = ::Bool`
Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional.




# Returns

`UpgradeAppliedSchemaResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `IncompatibleSchemaException`, `AccessDeniedException`, `ResourceNotFoundException`, `InvalidAttachmentException` or `SchemaAlreadyExistsException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpgradeAppliedSchema)
"""
@inline upgrade_applied_schema(aws::AWSConfig=default_aws_config(); args...) = upgrade_applied_schema(aws, args)

@inline upgrade_applied_schema(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/schema/upgradeapplied", args)

@inline upgrade_applied_schema(args) = upgrade_applied_schema(default_aws_config(), args)


"""
    using AWSSDK.CloudDirectory.upgrade_published_schema
    upgrade_published_schema([::AWSConfig], arguments::Dict)
    upgrade_published_schema([::AWSConfig]; DevelopmentSchemaArn=, PublishedSchemaArn=, MinorVersion=, <keyword arguments>)

    using AWSCore.Services.clouddirectory
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/upgradepublished", arguments::Dict)
    clouddirectory([::AWSConfig], "PUT", "/amazonclouddirectory/2017-01-11/schema/upgradepublished", DevelopmentSchemaArn=, PublishedSchemaArn=, MinorVersion=, <keyword arguments>)

# UpgradePublishedSchema Operation

Upgrades a published schema under a new minor version revision using the current contents of `DevelopmentSchemaArn`.

# Arguments

## `DevelopmentSchemaArn = ::String` -- *Required*
The ARN of the development schema with the changes used for the upgrade.


## `PublishedSchemaArn = ::String` -- *Required*
The ARN of the published schema to be upgraded.


## `MinorVersion = ::String` -- *Required*
Identifies the minor version of the published schema that will be created. This parameter is NOT optional.


## `DryRun = ::Bool`
Used for testing whether the Development schema provided is backwards compatible, or not, with the publish schema provided by the user to be upgraded. If schema compatibility fails, an exception would be thrown else the call would succeed. This parameter is optional and defaults to false.




# Returns

`UpgradePublishedSchemaResponse`

# Exceptions

`InternalServiceException`, `InvalidArnException`, `RetryableConflictException`, `ValidationException`, `IncompatibleSchemaException`, `AccessDeniedException`, `ResourceNotFoundException`, `InvalidAttachmentException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2017-01-11/UpgradePublishedSchema)
"""
@inline upgrade_published_schema(aws::AWSConfig=default_aws_config(); args...) = upgrade_published_schema(aws, args)

@inline upgrade_published_schema(aws::AWSConfig, args) = AWSCore.Services.clouddirectory(aws, "PUT", "/amazonclouddirectory/2017-01-11/schema/upgradepublished", args)

@inline upgrade_published_schema(args) = upgrade_published_schema(default_aws_config(), args)




end # module CloudDirectory


#==============================================================================#
# End of file
#==============================================================================#
