#==============================================================================#
# SSM.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/ssm-2014-11-06.normal.json
#==============================================================================#

__precompile__()

module SSM

using AWSCore


"""
    using AWSSDK.SSM.add_tags_to_resource
    add_tags_to_resource([::AWSConfig], arguments::Dict)
    add_tags_to_resource([::AWSConfig]; ResourceType=, ResourceId=, Tags=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "AddTagsToResource", arguments::Dict)
    ssm([::AWSConfig], "AddTagsToResource", ResourceType=, ResourceId=, Tags=)

# AddTagsToResource Operation

Adds or overwrites one or more tags for the specified resource. Tags are metadata that you can assign to your documents, managed instances, Maintenance Windows, Parameter Store parameters, and patch baselines. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment. Each tag consists of a key and an optional value, both of which you define. For example, you could define a set of tags for your account's managed instances that helps you track each instance's owner and stack level. For example: Key=Owner and Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and Value=Production, Pre-Production, or Test.

Each resource can have a maximum of 50 tags.

We recommend that you devise a set of tag keys that meets your needs for each resource type. Using a consistent set of tag keys makes it easier for you to manage your resources. You can search and filter the resources based on the tags you add. Tags don't have any semantic meaning to Amazon EC2 and are interpreted strictly as a string of characters.

For more information about tags, see [Tagging Your Amazon EC2 Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the *Amazon EC2 User Guide*.

# Arguments

## `ResourceType = "Document", "ManagedInstance", "MaintenanceWindow", "Parameter" or "PatchBaseline"` -- *Required*
Specifies the type of resource you are tagging.

**Note**
> The ManagedInstance type for this API action is for on-premises managed instances. You must specify the the name of the managed instance in the following format: mi-ID_number. For example, mi-1a2b3c4d5e6f.


## `ResourceId = ::String` -- *Required*
The resource ID you want to tag.

Use the ID of the resource. Here are some examples:

ManagedInstance: mi-012345abcde

MaintenanceWindow: mw-012345abcde

PatchBaseline: pb-012345abcde

For the Document and Parameter values, use the name of the resource.

**Note**
> The ManagedInstance type for this API action is only for on-premises managed instances. You must specify the the name of the managed instance in the following format: mi-ID_number. For example, mi-1a2b3c4d5e6f.


## `Tags = [[ ... ], ...]` -- *Required*
One or more tags. The value parameter is required, but if you don't want the tag to have a value, specify the parameter with no value, and we set the value to an empty string.

**Important**
> Do not enter personally identifiable information in this field.
```
 Tags = [[
        "Key" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```



# Returns

`AddTagsToResourceResult`

# Exceptions

`InvalidResourceType`, `InvalidResourceId`, `InternalServerError`, `TooManyTagsError` or `TooManyUpdates`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AddTagsToResource)
"""
@inline add_tags_to_resource(aws::AWSConfig=default_aws_config(); args...) = add_tags_to_resource(aws, args)

@inline add_tags_to_resource(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "AddTagsToResource", args)

@inline add_tags_to_resource(args) = add_tags_to_resource(default_aws_config(), args)


"""
    using AWSSDK.SSM.cancel_command
    cancel_command([::AWSConfig], arguments::Dict)
    cancel_command([::AWSConfig]; CommandId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "CancelCommand", arguments::Dict)
    ssm([::AWSConfig], "CancelCommand", CommandId=, <keyword arguments>)

# CancelCommand Operation

Attempts to cancel the command specified by the Command ID. There is no guarantee that the command will be terminated and the underlying process stopped.

# Arguments

## `CommandId = ::String` -- *Required*
The ID of the command you want to cancel.


## `InstanceIds = [::String, ...]`
(Optional) A list of instance IDs on which you want to cancel the command. If not provided, the command is canceled on every instance on which it was requested.




# Returns

`CancelCommandResult`

# Exceptions

`InternalServerError`, `InvalidCommandId`, `InvalidInstanceId` or `DuplicateInstanceId`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CancelCommand)
"""
@inline cancel_command(aws::AWSConfig=default_aws_config(); args...) = cancel_command(aws, args)

@inline cancel_command(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "CancelCommand", args)

@inline cancel_command(args) = cancel_command(default_aws_config(), args)


"""
    using AWSSDK.SSM.create_activation
    create_activation([::AWSConfig], arguments::Dict)
    create_activation([::AWSConfig]; IamRole=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "CreateActivation", arguments::Dict)
    ssm([::AWSConfig], "CreateActivation", IamRole=, <keyword arguments>)

# CreateActivation Operation

Registers your on-premises server or virtual machine with Amazon EC2 so that you can manage these resources using Run Command. An on-premises server or virtual machine that has been registered with EC2 is called a managed instance. For more information about activations, see [Setting Up Systems Manager in Hybrid Environments](http://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances.html).

# Arguments

## `Description = ::String`
A user-defined description of the resource that you want to register with Amazon EC2.

**Important**
> Do not enter personally identifiable information in this field.


## `DefaultInstanceName = ::String`
The name of the registered, managed instance as it will appear in the Amazon EC2 console or when you use the AWS command line tools to list EC2 resources.

**Important**
> Do not enter personally identifiable information in this field.


## `IamRole = ::String` -- *Required*
The Amazon Identity and Access Management (IAM) role that you want to assign to the managed instance.


## `RegistrationLimit = ::Int`
Specify the maximum number of managed instances you want to register. The default value is 1 instance.


## `ExpirationDate = timestamp`
The date by which this activation request should expire. The default value is 24 hours.




# Returns

`CreateActivationResult`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateActivation)
"""
@inline create_activation(aws::AWSConfig=default_aws_config(); args...) = create_activation(aws, args)

@inline create_activation(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "CreateActivation", args)

@inline create_activation(args) = create_activation(default_aws_config(), args)


"""
    using AWSSDK.SSM.create_association
    create_association([::AWSConfig], arguments::Dict)
    create_association([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "CreateAssociation", arguments::Dict)
    ssm([::AWSConfig], "CreateAssociation", Name=, <keyword arguments>)

# CreateAssociation Operation

Associates the specified Systems Manager document with the specified instances or targets.

When you associate a document with one or more instances using instance IDs or tags, the SSM Agent running on the instance processes the document and configures the instance as specified.

If you associate a document with an instance that already has an associated document, the system throws the AssociationAlreadyExists exception.

# Arguments

## `Name = ::String` -- *Required*
The name of the Systems Manager document.


## `DocumentVersion = ::String`
The document version you want to associate with the target(s). Can be a specific version or the default version.


## `InstanceId = ::String`
The instance ID.


## `Parameters = ::Dict{String,String}`
The parameters for the documents runtime configuration.


## `Targets = [[ ... ], ...]`
The targets (either instances or tags) for the association.
```
 Targets = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `ScheduleExpression = ::String`
A cron expression when the association will be applied to the target(s).


## `OutputLocation = ["S3Location" =>  [ ... ]]`
An Amazon S3 bucket where you want to store the output details of the request.
```
 OutputLocation = ["S3Location" =>  [
            "OutputS3Region" =>  ::String,
            "OutputS3BucketName" =>  ::String,
            "OutputS3KeyPrefix" =>  ::String
        ]]
```

## `AssociationName = ::String`
Specify a descriptive name for the association.




# Returns

`CreateAssociationResult`

# Exceptions

`AssociationAlreadyExists`, `AssociationLimitExceeded`, `InternalServerError`, `InvalidDocument`, `InvalidDocumentVersion`, `InvalidInstanceId`, `UnsupportedPlatformType`, `InvalidOutputLocation`, `InvalidParameters`, `InvalidTarget` or `InvalidSchedule`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociation)
"""
@inline create_association(aws::AWSConfig=default_aws_config(); args...) = create_association(aws, args)

@inline create_association(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "CreateAssociation", args)

@inline create_association(args) = create_association(default_aws_config(), args)


"""
    using AWSSDK.SSM.create_association_batch
    create_association_batch([::AWSConfig], arguments::Dict)
    create_association_batch([::AWSConfig]; Entries=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "CreateAssociationBatch", arguments::Dict)
    ssm([::AWSConfig], "CreateAssociationBatch", Entries=)

# CreateAssociationBatch Operation

Associates the specified Systems Manager document with the specified instances or targets.

When you associate a document with one or more instances using instance IDs or tags, the SSM Agent running on the instance processes the document and configures the instance as specified.

If you associate a document with an instance that already has an associated document, the system throws the AssociationAlreadyExists exception.

# Arguments

## `Entries = [[ ... ], ...]` -- *Required*
One or more associations.
```
 Entries = [[
        "Name" => <required> ::String,
        "InstanceId" =>  ::String,
        "Parameters" =>  ::Dict{String,String},
        "DocumentVersion" =>  ::String,
        "Targets" =>  [[
            "Key" =>  ::String,
            "Values" =>  [::String, ...]
        ], ...],
        "ScheduleExpression" =>  ::String,
        "OutputLocation" =>  ["S3Location" =>  [
                "OutputS3Region" =>  ::String,
                "OutputS3BucketName" =>  ::String,
                "OutputS3KeyPrefix" =>  ::String
            ]],
        "AssociationName" =>  ::String
    ], ...]
```



# Returns

`CreateAssociationBatchResult`

# Exceptions

`InternalServerError`, `InvalidDocument`, `InvalidDocumentVersion`, `InvalidInstanceId`, `InvalidParameters`, `DuplicateInstanceId`, `AssociationLimitExceeded`, `UnsupportedPlatformType`, `InvalidOutputLocation`, `InvalidTarget` or `InvalidSchedule`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociationBatch)
"""
@inline create_association_batch(aws::AWSConfig=default_aws_config(); args...) = create_association_batch(aws, args)

@inline create_association_batch(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "CreateAssociationBatch", args)

@inline create_association_batch(args) = create_association_batch(default_aws_config(), args)


"""
    using AWSSDK.SSM.create_document
    create_document([::AWSConfig], arguments::Dict)
    create_document([::AWSConfig]; Content=, Name=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "CreateDocument", arguments::Dict)
    ssm([::AWSConfig], "CreateDocument", Content=, Name=, <keyword arguments>)

# CreateDocument Operation

Creates a Systems Manager document.

After you create a document, you can use CreateAssociation to associate it with one or more running instances.

# Arguments

## `Content = ::String` -- *Required*
A valid JSON or YAML string.


## `Name = ::String` -- *Required*
A name for the Systems Manager document.

**Important**
> Do not use the following to begin the names of documents you create. They are reserved by AWS for use as document prefixes:

*   `aws`

*   `amazon`

*   `amzn`


## `DocumentType = "Command", "Policy" or "Automation"`
The type of document to create. Valid document types include: Policy, Automation, and Command.


## `DocumentFormat = "YAML" or "JSON"`
Specify the document format for the request. The document format can be either JSON or YAML. JSON is the default format.


## `TargetType = ::String`
Specify a target type to define the kinds of resources the document can run on. For example, to run a document on EC2 instances, specify the following value: /AWS::EC2::Instance. If you specify a value of '/' the document can run on all types of resources. If you don't specify a value, the document can't run on any resources. For a list of valid resource types, see [AWS Resource Types Reference](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html) in the *AWS CloudFormation User Guide*.




# Returns

`CreateDocumentResult`

# Exceptions

`DocumentAlreadyExists`, `MaxDocumentSizeExceeded`, `InternalServerError`, `InvalidDocumentContent`, `DocumentLimitExceeded` or `InvalidDocumentSchemaVersion`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateDocument)
"""
@inline create_document(aws::AWSConfig=default_aws_config(); args...) = create_document(aws, args)

@inline create_document(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "CreateDocument", args)

@inline create_document(args) = create_document(default_aws_config(), args)


"""
    using AWSSDK.SSM.create_maintenance_window
    create_maintenance_window([::AWSConfig], arguments::Dict)
    create_maintenance_window([::AWSConfig]; Name=, Schedule=, Duration=, Cutoff=, AllowUnassociatedTargets=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "CreateMaintenanceWindow", arguments::Dict)
    ssm([::AWSConfig], "CreateMaintenanceWindow", Name=, Schedule=, Duration=, Cutoff=, AllowUnassociatedTargets=, <keyword arguments>)

# CreateMaintenanceWindow Operation

Creates a new Maintenance Window.

# Arguments

## `Name = ::String` -- *Required*
The name of the Maintenance Window.


## `Description = ::String`
An optional description for the Maintenance Window. We recommend specifying a description to help you organize your Maintenance Windows.


## `Schedule = ::String` -- *Required*
The schedule of the Maintenance Window in the form of a cron or rate expression.


## `Duration = ::Int` -- *Required*
The duration of the Maintenance Window in hours.


## `Cutoff = ::Int` -- *Required*
The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.


## `AllowUnassociatedTargets = ::Bool` -- *Required*
Enables a Maintenance Window task to execute on managed instances, even if you have not registered those instances as targets. If enabled, then you must specify the unregistered instances (by instance ID) when you register a task with the Maintenance Window

If you don't enable this option, then you must specify previously-registered targets when you register a task with the Maintenance Window.


## `ClientToken = ::String`
User-provided idempotency token.




# Returns

`CreateMaintenanceWindowResult`

# Exceptions

`IdempotentParameterMismatch`, `ResourceLimitExceededException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateMaintenanceWindow)
"""
@inline create_maintenance_window(aws::AWSConfig=default_aws_config(); args...) = create_maintenance_window(aws, args)

@inline create_maintenance_window(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "CreateMaintenanceWindow", args)

@inline create_maintenance_window(args) = create_maintenance_window(default_aws_config(), args)


"""
    using AWSSDK.SSM.create_patch_baseline
    create_patch_baseline([::AWSConfig], arguments::Dict)
    create_patch_baseline([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "CreatePatchBaseline", arguments::Dict)
    ssm([::AWSConfig], "CreatePatchBaseline", Name=, <keyword arguments>)

# CreatePatchBaseline Operation

Creates a patch baseline.

**Note**
> For information about valid key and value pairs in `PatchFilters` for each supported operating system type, see [PatchFilter](http://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html).

# Arguments

## `OperatingSystem = "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE" or "CENTOS"`
Defines the operating system the patch baseline applies to. The Default value is WINDOWS.


## `Name = ::String` -- *Required*
The name of the patch baseline.


## `GlobalFilters = ["PatchFilters" => <required> [[ ... ], ...]]`
A set of global filters used to exclude patches from the baseline.
```
 GlobalFilters = ["PatchFilters" => <required> [[
            "Key" => <required> "PRODUCT", "CLASSIFICATION", "MSRC_SEVERITY", "PATCH_ID", "SECTION", "PRIORITY" or "SEVERITY",
            "Values" => <required> [::String, ...]
        ], ...]]
```

## `ApprovalRules = ["PatchRules" => <required> [[ ... ], ...]]`
A set of rules used to include patches in the baseline.
```
 ApprovalRules = ["PatchRules" => <required> [[
            "PatchFilterGroup" => <required> ["PatchFilters" => <required> [[
                    "Key" => <required> "PRODUCT", "CLASSIFICATION", "MSRC_SEVERITY", "PATCH_ID", "SECTION", "PRIORITY" or "SEVERITY",
                    "Values" => <required> [::String, ...]
                ], ...]],
            "ComplianceLevel" =>  "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL" or "UNSPECIFIED",
            "ApproveAfterDays" => <required> ::Int,
            "EnableNonSecurity" =>  ::Bool
        ], ...]]
```

## `ApprovedPatches = [::String, ...]`
A list of explicitly approved patches for the baseline.

For information about accepted formats for lists of approved patches and rejected patches, see [Package Name Formats for Approved and Rejected Patch Lists](http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html) in the *AWS Systems Manager User Guide*.


## `ApprovedPatchesComplianceLevel = "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL" or "UNSPECIFIED"`
Defines the compliance level for approved patches. This means that if an approved patch is reported as missing, this is the severity of the compliance violation. The default value is UNSPECIFIED.


## `ApprovedPatchesEnableNonSecurity = ::Bool`
Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.


## `RejectedPatches = [::String, ...]`
A list of explicitly rejected patches for the baseline.

For information about accepted formats for lists of approved patches and rejected patches, see [Package Name Formats for Approved and Rejected Patch Lists](http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html) in the *AWS Systems Manager User Guide*.


## `Description = ::String`
A description of the patch baseline.


## `Sources = [[ ... ], ...]`
Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.
```
 Sources = [[
        "Name" => <required> ::String,
        "Products" => <required> [::String, ...],
        "Configuration" => <required> ::String
    ], ...]
```

## `ClientToken = ::String`
User-provided idempotency token.




# Returns

`CreatePatchBaselineResult`

# Exceptions

`IdempotentParameterMismatch`, `ResourceLimitExceededException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreatePatchBaseline)
"""
@inline create_patch_baseline(aws::AWSConfig=default_aws_config(); args...) = create_patch_baseline(aws, args)

@inline create_patch_baseline(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "CreatePatchBaseline", args)

@inline create_patch_baseline(args) = create_patch_baseline(default_aws_config(), args)


"""
    using AWSSDK.SSM.create_resource_data_sync
    create_resource_data_sync([::AWSConfig], arguments::Dict)
    create_resource_data_sync([::AWSConfig]; SyncName=, S3Destination=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "CreateResourceDataSync", arguments::Dict)
    ssm([::AWSConfig], "CreateResourceDataSync", SyncName=, S3Destination=)

# CreateResourceDataSync Operation

Creates a resource data sync configuration to a single bucket in Amazon S3. This is an asynchronous operation that returns immediately. After a successful initial sync is completed, the system continuously syncs data to the Amazon S3 bucket. To check the status of the sync, use the [ListResourceDataSync](@ref).

By default, data is not encrypted in Amazon S3. We strongly recommend that you enable encryption in Amazon S3 to ensure secure data storage. We also recommend that you secure access to the Amazon S3 bucket by creating a restrictive bucket policy. To view an example of a restrictive Amazon S3 bucket policy for Resource Data Sync, see [Create a Resource Data Sync for Inventory](http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-datasync-create.html) in the *AWS Systems Manager User Guide*.

# Arguments

## `SyncName = ::String` -- *Required*
A name for the configuration.


## `S3Destination = [ ... ]` -- *Required*
Amazon S3 configuration details for the sync.
```
 S3Destination = [
        "BucketName" => <required> ::String,
        "Prefix" =>  ::String,
        "SyncFormat" => <required> "JsonSerDe",
        "Region" => <required> ::String,
        "AWSKMSKeyARN" =>  ::String
    ]
```



# Returns

`CreateResourceDataSyncResult`

# Exceptions

`InternalServerError`, `ResourceDataSyncCountExceededException`, `ResourceDataSyncAlreadyExistsException` or `ResourceDataSyncInvalidConfigurationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateResourceDataSync)
"""
@inline create_resource_data_sync(aws::AWSConfig=default_aws_config(); args...) = create_resource_data_sync(aws, args)

@inline create_resource_data_sync(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "CreateResourceDataSync", args)

@inline create_resource_data_sync(args) = create_resource_data_sync(default_aws_config(), args)


"""
    using AWSSDK.SSM.delete_activation
    delete_activation([::AWSConfig], arguments::Dict)
    delete_activation([::AWSConfig]; ActivationId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeleteActivation", arguments::Dict)
    ssm([::AWSConfig], "DeleteActivation", ActivationId=)

# DeleteActivation Operation

Deletes an activation. You are not required to delete an activation. If you delete an activation, you can no longer use it to register additional managed instances. Deleting an activation does not de-register managed instances. You must manually de-register managed instances.

# Arguments

## `ActivationId = ::String` -- *Required*
The ID of the activation that you want to delete.




# Returns

`DeleteActivationResult`

# Exceptions

`InvalidActivationId`, `InvalidActivation`, `InternalServerError` or `TooManyUpdates`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteActivation)
"""
@inline delete_activation(aws::AWSConfig=default_aws_config(); args...) = delete_activation(aws, args)

@inline delete_activation(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeleteActivation", args)

@inline delete_activation(args) = delete_activation(default_aws_config(), args)


"""
    using AWSSDK.SSM.delete_association
    delete_association([::AWSConfig], arguments::Dict)
    delete_association([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeleteAssociation", arguments::Dict)
    ssm([::AWSConfig], "DeleteAssociation", <keyword arguments>)

# DeleteAssociation Operation

Disassociates the specified Systems Manager document from the specified instance.

When you disassociate a document from an instance, it does not change the configuration of the instance. To change the configuration state of an instance after you disassociate a document, you must create a new document with the desired configuration and associate it with the instance.

# Arguments

## `Name = ::String`
The name of the Systems Manager document.


## `InstanceId = ::String`
The ID of the instance.


## `AssociationId = ::String`
The association ID that you want to delete.




# Returns

`DeleteAssociationResult`

# Exceptions

`AssociationDoesNotExist`, `InternalServerError`, `InvalidDocument`, `InvalidInstanceId` or `TooManyUpdates`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteAssociation)
"""
@inline delete_association(aws::AWSConfig=default_aws_config(); args...) = delete_association(aws, args)

@inline delete_association(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeleteAssociation", args)

@inline delete_association(args) = delete_association(default_aws_config(), args)


"""
    using AWSSDK.SSM.delete_document
    delete_document([::AWSConfig], arguments::Dict)
    delete_document([::AWSConfig]; Name=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeleteDocument", arguments::Dict)
    ssm([::AWSConfig], "DeleteDocument", Name=)

# DeleteDocument Operation

Deletes the Systems Manager document and all instance associations to the document.

Before you delete the document, we recommend that you use [DeleteAssociation](@ref) to disassociate all instances that are associated with the document.

# Arguments

## `Name = ::String` -- *Required*
The name of the document.




# Returns

`DeleteDocumentResult`

# Exceptions

`InternalServerError`, `InvalidDocument`, `InvalidDocumentOperation` or `AssociatedInstances`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteDocument)
"""
@inline delete_document(aws::AWSConfig=default_aws_config(); args...) = delete_document(aws, args)

@inline delete_document(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeleteDocument", args)

@inline delete_document(args) = delete_document(default_aws_config(), args)


"""
    using AWSSDK.SSM.delete_inventory
    delete_inventory([::AWSConfig], arguments::Dict)
    delete_inventory([::AWSConfig]; TypeName=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeleteInventory", arguments::Dict)
    ssm([::AWSConfig], "DeleteInventory", TypeName=, <keyword arguments>)

# DeleteInventory Operation

Delete a custom inventory type, or the data associated with a custom Inventory type. Deleting a custom inventory type is also referred to as deleting a custom inventory schema.

# Arguments

## `TypeName = ::String` -- *Required*
The name of the custom inventory type for which you want to delete either all previously collected data, or the inventory type itself.


## `SchemaDeleteOption = "DisableSchema" or "DeleteSchema"`
Use the `SchemaDeleteOption` to delete a custom inventory type (schema). If you don't choose this option, the system only deletes existing inventory data associated with the custom inventory type. Choose one of the following options:

DisableSchema: If you choose this option, the system ignores all inventory data for the specified version, and any earlier versions. To enable this schema again, you must call the `PutInventory` action for a version greater than the disbled version.

DeleteSchema: This option deletes the specified custom type from the Inventory service. You can recreate the schema later, if you want.


## `DryRun = ::Bool`
Use this option to view a summary of the deletion request without deleting any data or the data type. This option is useful when you only want to understand what will be deleted. Once you validate that the data to be deleted is what you intend to delete, you can run the same command without specifying the `DryRun` option.


## `ClientToken = ::String`
User-provided idempotency token.




# Returns

`DeleteInventoryResult`

# Exceptions

`InternalServerError`, `InvalidTypeNameException`, `InvalidOptionException`, `InvalidDeleteInventoryParametersException` or `InvalidInventoryRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteInventory)
"""
@inline delete_inventory(aws::AWSConfig=default_aws_config(); args...) = delete_inventory(aws, args)

@inline delete_inventory(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeleteInventory", args)

@inline delete_inventory(args) = delete_inventory(default_aws_config(), args)


"""
    using AWSSDK.SSM.delete_maintenance_window
    delete_maintenance_window([::AWSConfig], arguments::Dict)
    delete_maintenance_window([::AWSConfig]; WindowId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeleteMaintenanceWindow", arguments::Dict)
    ssm([::AWSConfig], "DeleteMaintenanceWindow", WindowId=)

# DeleteMaintenanceWindow Operation

Deletes a Maintenance Window.

# Arguments

## `WindowId = ::String` -- *Required*
The ID of the Maintenance Window to delete.




# Returns

`DeleteMaintenanceWindowResult`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteMaintenanceWindow)
"""
@inline delete_maintenance_window(aws::AWSConfig=default_aws_config(); args...) = delete_maintenance_window(aws, args)

@inline delete_maintenance_window(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeleteMaintenanceWindow", args)

@inline delete_maintenance_window(args) = delete_maintenance_window(default_aws_config(), args)


"""
    using AWSSDK.SSM.delete_parameter
    delete_parameter([::AWSConfig], arguments::Dict)
    delete_parameter([::AWSConfig]; Name=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeleteParameter", arguments::Dict)
    ssm([::AWSConfig], "DeleteParameter", Name=)

# DeleteParameter Operation

Delete a parameter from the system.

# Arguments

## `Name = ::String` -- *Required*
The name of the parameter to delete.




# Returns

`DeleteParameterResult`

# Exceptions

`InternalServerError` or `ParameterNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParameter)
"""
@inline delete_parameter(aws::AWSConfig=default_aws_config(); args...) = delete_parameter(aws, args)

@inline delete_parameter(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeleteParameter", args)

@inline delete_parameter(args) = delete_parameter(default_aws_config(), args)


"""
    using AWSSDK.SSM.delete_parameters
    delete_parameters([::AWSConfig], arguments::Dict)
    delete_parameters([::AWSConfig]; Names=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeleteParameters", arguments::Dict)
    ssm([::AWSConfig], "DeleteParameters", Names=)

# DeleteParameters Operation

Delete a list of parameters. This API is used to delete parameters by using the Amazon EC2 console.

# Arguments

## `Names = [::String, ...]` -- *Required*
The names of the parameters to delete.




# Returns

`DeleteParametersResult`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParameters)
"""
@inline delete_parameters(aws::AWSConfig=default_aws_config(); args...) = delete_parameters(aws, args)

@inline delete_parameters(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeleteParameters", args)

@inline delete_parameters(args) = delete_parameters(default_aws_config(), args)


"""
    using AWSSDK.SSM.delete_patch_baseline
    delete_patch_baseline([::AWSConfig], arguments::Dict)
    delete_patch_baseline([::AWSConfig]; BaselineId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeletePatchBaseline", arguments::Dict)
    ssm([::AWSConfig], "DeletePatchBaseline", BaselineId=)

# DeletePatchBaseline Operation

Deletes a patch baseline.

# Arguments

## `BaselineId = ::String` -- *Required*
The ID of the patch baseline to delete.




# Returns

`DeletePatchBaselineResult`

# Exceptions

`ResourceInUseException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeletePatchBaseline)
"""
@inline delete_patch_baseline(aws::AWSConfig=default_aws_config(); args...) = delete_patch_baseline(aws, args)

@inline delete_patch_baseline(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeletePatchBaseline", args)

@inline delete_patch_baseline(args) = delete_patch_baseline(default_aws_config(), args)


"""
    using AWSSDK.SSM.delete_resource_data_sync
    delete_resource_data_sync([::AWSConfig], arguments::Dict)
    delete_resource_data_sync([::AWSConfig]; SyncName=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeleteResourceDataSync", arguments::Dict)
    ssm([::AWSConfig], "DeleteResourceDataSync", SyncName=)

# DeleteResourceDataSync Operation

Deletes a Resource Data Sync configuration. After the configuration is deleted, changes to inventory data on managed instances are no longer synced with the target Amazon S3 bucket. Deleting a sync configuration does not delete data in the target Amazon S3 bucket.

# Arguments

## `SyncName = ::String` -- *Required*
The name of the configuration to delete.




# Returns

`DeleteResourceDataSyncResult`

# Exceptions

`InternalServerError` or `ResourceDataSyncNotFoundException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteResourceDataSync)
"""
@inline delete_resource_data_sync(aws::AWSConfig=default_aws_config(); args...) = delete_resource_data_sync(aws, args)

@inline delete_resource_data_sync(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeleteResourceDataSync", args)

@inline delete_resource_data_sync(args) = delete_resource_data_sync(default_aws_config(), args)


"""
    using AWSSDK.SSM.deregister_managed_instance
    deregister_managed_instance([::AWSConfig], arguments::Dict)
    deregister_managed_instance([::AWSConfig]; InstanceId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeregisterManagedInstance", arguments::Dict)
    ssm([::AWSConfig], "DeregisterManagedInstance", InstanceId=)

# DeregisterManagedInstance Operation

Removes the server or virtual machine from the list of registered servers. You can reregister the instance again at any time. If you don't plan to use Run Command on the server, we suggest uninstalling SSM Agent first.

# Arguments

## `InstanceId = ::String` -- *Required*
The ID assigned to the managed instance when you registered it using the activation process.




# Returns

`DeregisterManagedInstanceResult`

# Exceptions

`InvalidInstanceId` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterManagedInstance)
"""
@inline deregister_managed_instance(aws::AWSConfig=default_aws_config(); args...) = deregister_managed_instance(aws, args)

@inline deregister_managed_instance(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeregisterManagedInstance", args)

@inline deregister_managed_instance(args) = deregister_managed_instance(default_aws_config(), args)


"""
    using AWSSDK.SSM.deregister_patch_baseline_for_patch_group
    deregister_patch_baseline_for_patch_group([::AWSConfig], arguments::Dict)
    deregister_patch_baseline_for_patch_group([::AWSConfig]; BaselineId=, PatchGroup=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeregisterPatchBaselineForPatchGroup", arguments::Dict)
    ssm([::AWSConfig], "DeregisterPatchBaselineForPatchGroup", BaselineId=, PatchGroup=)

# DeregisterPatchBaselineForPatchGroup Operation

Removes a patch group from a patch baseline.

# Arguments

## `BaselineId = ::String` -- *Required*
The ID of the patch baseline to deregister the patch group from.


## `PatchGroup = ::String` -- *Required*
The name of the patch group that should be deregistered from the patch baseline.




# Returns

`DeregisterPatchBaselineForPatchGroupResult`

# Exceptions

`InvalidResourceId` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterPatchBaselineForPatchGroup)
"""
@inline deregister_patch_baseline_for_patch_group(aws::AWSConfig=default_aws_config(); args...) = deregister_patch_baseline_for_patch_group(aws, args)

@inline deregister_patch_baseline_for_patch_group(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeregisterPatchBaselineForPatchGroup", args)

@inline deregister_patch_baseline_for_patch_group(args) = deregister_patch_baseline_for_patch_group(default_aws_config(), args)


"""
    using AWSSDK.SSM.deregister_target_from_maintenance_window
    deregister_target_from_maintenance_window([::AWSConfig], arguments::Dict)
    deregister_target_from_maintenance_window([::AWSConfig]; WindowId=, WindowTargetId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeregisterTargetFromMaintenanceWindow", arguments::Dict)
    ssm([::AWSConfig], "DeregisterTargetFromMaintenanceWindow", WindowId=, WindowTargetId=, <keyword arguments>)

# DeregisterTargetFromMaintenanceWindow Operation

Removes a target from a Maintenance Window.

# Arguments

## `WindowId = ::String` -- *Required*
The ID of the Maintenance Window the target should be removed from.


## `WindowTargetId = ::String` -- *Required*
The ID of the target definition to remove.


## `Safe = ::Bool`
The system checks if the target is being referenced by a task. If the target is being referenced, the system returns an error and does not deregister the target from the Maintenance Window.




# Returns

`DeregisterTargetFromMaintenanceWindowResult`

# Exceptions

`DoesNotExistException`, `InternalServerError` or `TargetInUseException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterTargetFromMaintenanceWindow)
"""
@inline deregister_target_from_maintenance_window(aws::AWSConfig=default_aws_config(); args...) = deregister_target_from_maintenance_window(aws, args)

@inline deregister_target_from_maintenance_window(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeregisterTargetFromMaintenanceWindow", args)

@inline deregister_target_from_maintenance_window(args) = deregister_target_from_maintenance_window(default_aws_config(), args)


"""
    using AWSSDK.SSM.deregister_task_from_maintenance_window
    deregister_task_from_maintenance_window([::AWSConfig], arguments::Dict)
    deregister_task_from_maintenance_window([::AWSConfig]; WindowId=, WindowTaskId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DeregisterTaskFromMaintenanceWindow", arguments::Dict)
    ssm([::AWSConfig], "DeregisterTaskFromMaintenanceWindow", WindowId=, WindowTaskId=)

# DeregisterTaskFromMaintenanceWindow Operation

Removes a task from a Maintenance Window.

# Arguments

## `WindowId = ::String` -- *Required*
The ID of the Maintenance Window the task should be removed from.


## `WindowTaskId = ::String` -- *Required*
The ID of the task to remove from the Maintenance Window.




# Returns

`DeregisterTaskFromMaintenanceWindowResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterTaskFromMaintenanceWindow)
"""
@inline deregister_task_from_maintenance_window(aws::AWSConfig=default_aws_config(); args...) = deregister_task_from_maintenance_window(aws, args)

@inline deregister_task_from_maintenance_window(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DeregisterTaskFromMaintenanceWindow", args)

@inline deregister_task_from_maintenance_window(args) = deregister_task_from_maintenance_window(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_activations
    describe_activations([::AWSConfig], arguments::Dict)
    describe_activations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeActivations", arguments::Dict)
    ssm([::AWSConfig], "DescribeActivations", <keyword arguments>)

# DescribeActivations Operation

Details about the activation, including: the date and time the activation was created, the expiration date, the IAM role assigned to the instances in the activation, and the number of instances activated by this registration.

# Arguments

## `Filters = [[ ... ], ...]`
A filter to view information about your activations.
```
 Filters = [[
        "FilterKey" =>  "ActivationIds", "DefaultInstanceName" or "IamRole",
        "FilterValues" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
A token to start the list. Use this token to get the next set of results.




# Returns

`DescribeActivationsResult`

# Exceptions

`InvalidFilter`, `InvalidNextToken` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeActivations)
"""
@inline describe_activations(aws::AWSConfig=default_aws_config(); args...) = describe_activations(aws, args)

@inline describe_activations(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeActivations", args)

@inline describe_activations(args) = describe_activations(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_association
    describe_association([::AWSConfig], arguments::Dict)
    describe_association([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeAssociation", arguments::Dict)
    ssm([::AWSConfig], "DescribeAssociation", <keyword arguments>)

# DescribeAssociation Operation

Describes the association for the specified target or instance. If you created the association by using the `Targets` parameter, then you must retrieve the association by using the association ID. If you created the association by specifying an instance ID and a Systems Manager document, then you retrieve the association by specifying the document name and the instance ID.

# Arguments

## `Name = ::String`
The name of the Systems Manager document.


## `InstanceId = ::String`
The instance ID.


## `AssociationId = ::String`
The association ID for which you want information.


## `AssociationVersion = ::String`
Specify the association version to retrieve. To view the latest version, either specify `\$LATEST` for this parameter, or omit this parameter. To view a list of all associations for an instance, use ListInstanceAssociations. To get a list of versions for a specific association, use ListAssociationVersions.




# Returns

`DescribeAssociationResult`

# Exceptions

`AssociationDoesNotExist`, `InvalidAssociationVersion`, `InternalServerError`, `InvalidDocument` or `InvalidInstanceId`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociation)
"""
@inline describe_association(aws::AWSConfig=default_aws_config(); args...) = describe_association(aws, args)

@inline describe_association(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeAssociation", args)

@inline describe_association(args) = describe_association(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_association_execution_targets
    describe_association_execution_targets([::AWSConfig], arguments::Dict)
    describe_association_execution_targets([::AWSConfig]; AssociationId=, ExecutionId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeAssociationExecutionTargets", arguments::Dict)
    ssm([::AWSConfig], "DescribeAssociationExecutionTargets", AssociationId=, ExecutionId=, <keyword arguments>)

# DescribeAssociationExecutionTargets Operation

Use this API action to view information about a specific execution of a specific association.

# Arguments

## `AssociationId = ::String` -- *Required*
The association ID that includes the execution for which you want to view details.


## `ExecutionId = ::String` -- *Required*
The execution ID for which you want to view details.


## `Filters = [[ ... ], ...]`
Filters for the request. You can specify the following filters and values.

Status (EQUAL)

ResourceId (EQUAL)

ResourceType (EQUAL)
```
 Filters = [[
        "Key" => <required> "Status", "ResourceId" or "ResourceType",
        "Value" => <required> ::String
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
A token to start the list. Use this token to get the next set of results.




# Returns

`DescribeAssociationExecutionTargetsResult`

# Exceptions

`InternalServerError`, `AssociationDoesNotExist`, `InvalidNextToken` or `AssociationExecutionDoesNotExist`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationExecutionTargets)
"""
@inline describe_association_execution_targets(aws::AWSConfig=default_aws_config(); args...) = describe_association_execution_targets(aws, args)

@inline describe_association_execution_targets(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeAssociationExecutionTargets", args)

@inline describe_association_execution_targets(args) = describe_association_execution_targets(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_association_executions
    describe_association_executions([::AWSConfig], arguments::Dict)
    describe_association_executions([::AWSConfig]; AssociationId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeAssociationExecutions", arguments::Dict)
    ssm([::AWSConfig], "DescribeAssociationExecutions", AssociationId=, <keyword arguments>)

# DescribeAssociationExecutions Operation

Use this API action to view all executions for a specific association ID.

# Arguments

## `AssociationId = ::String` -- *Required*
The association ID for which you want to view execution history details.


## `Filters = [[ ... ], ...]`
Filters for the request. You can specify the following filters and values.

ExecutionId (EQUAL)

Status (EQUAL)

CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)
```
 Filters = [[
        "Key" => <required> "ExecutionId", "Status" or "CreatedTime",
        "Value" => <required> ::String,
        "Type" => <required> "EQUAL", "LESS_THAN" or "GREATER_THAN"
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
A token to start the list. Use this token to get the next set of results.




# Returns

`DescribeAssociationExecutionsResult`

# Exceptions

`InternalServerError`, `AssociationDoesNotExist` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationExecutions)
"""
@inline describe_association_executions(aws::AWSConfig=default_aws_config(); args...) = describe_association_executions(aws, args)

@inline describe_association_executions(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeAssociationExecutions", args)

@inline describe_association_executions(args) = describe_association_executions(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_automation_executions
    describe_automation_executions([::AWSConfig], arguments::Dict)
    describe_automation_executions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeAutomationExecutions", arguments::Dict)
    ssm([::AWSConfig], "DescribeAutomationExecutions", <keyword arguments>)

# DescribeAutomationExecutions Operation

Provides details about all active and terminated Automation executions.

# Arguments

## `Filters = [[ ... ], ...]`
Filters used to limit the scope of executions that are requested.
```
 Filters = [[
        "Key" => <required> "DocumentNamePrefix", "ExecutionStatus", "ExecutionId", "ParentExecutionId", "CurrentAction", "StartTimeBefore" or "StartTimeAfter",
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeAutomationExecutionsResult`

# Exceptions

`InvalidFilterKey`, `InvalidFilterValue`, `InvalidNextToken` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAutomationExecutions)
"""
@inline describe_automation_executions(aws::AWSConfig=default_aws_config(); args...) = describe_automation_executions(aws, args)

@inline describe_automation_executions(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeAutomationExecutions", args)

@inline describe_automation_executions(args) = describe_automation_executions(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_automation_step_executions
    describe_automation_step_executions([::AWSConfig], arguments::Dict)
    describe_automation_step_executions([::AWSConfig]; AutomationExecutionId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeAutomationStepExecutions", arguments::Dict)
    ssm([::AWSConfig], "DescribeAutomationStepExecutions", AutomationExecutionId=, <keyword arguments>)

# DescribeAutomationStepExecutions Operation

Information about all active and terminated step executions in an Automation workflow.

# Arguments

## `AutomationExecutionId = ::String` -- *Required*
The Automation execution ID for which you want step execution descriptions.


## `Filters = [[ ... ], ...]`
One or more filters to limit the number of step executions returned by the request.
```
 Filters = [[
        "Key" => <required> "StartTimeBefore", "StartTimeAfter", "StepExecutionStatus", "StepExecutionId", "StepName" or "Action",
        "Values" => <required> [::String, ...]
    ], ...]
```

## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `ReverseOrder = ::Bool`
A boolean that indicates whether to list step executions in reverse order by start time. The default value is false.




# Returns

`DescribeAutomationStepExecutionsResult`

# Exceptions

`AutomationExecutionNotFoundException`, `InvalidNextToken`, `InvalidFilterKey`, `InvalidFilterValue` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAutomationStepExecutions)
"""
@inline describe_automation_step_executions(aws::AWSConfig=default_aws_config(); args...) = describe_automation_step_executions(aws, args)

@inline describe_automation_step_executions(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeAutomationStepExecutions", args)

@inline describe_automation_step_executions(args) = describe_automation_step_executions(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_available_patches
    describe_available_patches([::AWSConfig], arguments::Dict)
    describe_available_patches([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeAvailablePatches", arguments::Dict)
    ssm([::AWSConfig], "DescribeAvailablePatches", <keyword arguments>)

# DescribeAvailablePatches Operation

Lists all patches that could possibly be included in a patch baseline.

# Arguments

## `Filters = [[ ... ], ...]`
Filters used to scope down the returned patches.
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of patches to return (per page).


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeAvailablePatchesResult`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAvailablePatches)
"""
@inline describe_available_patches(aws::AWSConfig=default_aws_config(); args...) = describe_available_patches(aws, args)

@inline describe_available_patches(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeAvailablePatches", args)

@inline describe_available_patches(args) = describe_available_patches(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_document
    describe_document([::AWSConfig], arguments::Dict)
    describe_document([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeDocument", arguments::Dict)
    ssm([::AWSConfig], "DescribeDocument", Name=, <keyword arguments>)

# DescribeDocument Operation

Describes the specified Systems Manager document.

# Arguments

## `Name = ::String` -- *Required*
The name of the Systems Manager document.


## `DocumentVersion = ::String`
The document version for which you want information. Can be a specific version or the default version.




# Returns

`DescribeDocumentResult`

# Exceptions

`InternalServerError`, `InvalidDocument` or `InvalidDocumentVersion`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocument)
"""
@inline describe_document(aws::AWSConfig=default_aws_config(); args...) = describe_document(aws, args)

@inline describe_document(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeDocument", args)

@inline describe_document(args) = describe_document(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_document_permission
    describe_document_permission([::AWSConfig], arguments::Dict)
    describe_document_permission([::AWSConfig]; Name=, PermissionType=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeDocumentPermission", arguments::Dict)
    ssm([::AWSConfig], "DescribeDocumentPermission", Name=, PermissionType=)

# DescribeDocumentPermission Operation

Describes the permissions for a Systems Manager document. If you created the document, you are the owner. If a document is shared, it can either be shared privately (by specifying a user's AWS account ID) or publicly (*All*).

# Arguments

## `Name = ::String` -- *Required*
The name of the document for which you are the owner.


## `PermissionType = "Share"` -- *Required*
The permission type for the document. The permission type can be *Share*.




# Returns

`DescribeDocumentPermissionResponse`

# Exceptions

`InternalServerError`, `InvalidDocument` or `InvalidPermissionType`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocumentPermission)
"""
@inline describe_document_permission(aws::AWSConfig=default_aws_config(); args...) = describe_document_permission(aws, args)

@inline describe_document_permission(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeDocumentPermission", args)

@inline describe_document_permission(args) = describe_document_permission(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_effective_instance_associations
    describe_effective_instance_associations([::AWSConfig], arguments::Dict)
    describe_effective_instance_associations([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeEffectiveInstanceAssociations", arguments::Dict)
    ssm([::AWSConfig], "DescribeEffectiveInstanceAssociations", InstanceId=, <keyword arguments>)

# DescribeEffectiveInstanceAssociations Operation

All associations for the instance(s).

# Arguments

## `InstanceId = ::String` -- *Required*
The instance ID for which you want to view all associations.


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeEffectiveInstanceAssociationsResult`

# Exceptions

`InternalServerError`, `InvalidInstanceId` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeEffectiveInstanceAssociations)
"""
@inline describe_effective_instance_associations(aws::AWSConfig=default_aws_config(); args...) = describe_effective_instance_associations(aws, args)

@inline describe_effective_instance_associations(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeEffectiveInstanceAssociations", args)

@inline describe_effective_instance_associations(args) = describe_effective_instance_associations(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_effective_patches_for_patch_baseline
    describe_effective_patches_for_patch_baseline([::AWSConfig], arguments::Dict)
    describe_effective_patches_for_patch_baseline([::AWSConfig]; BaselineId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeEffectivePatchesForPatchBaseline", arguments::Dict)
    ssm([::AWSConfig], "DescribeEffectivePatchesForPatchBaseline", BaselineId=, <keyword arguments>)

# DescribeEffectivePatchesForPatchBaseline Operation

Retrieves the current effective patches (the patch and the approval state) for the specified patch baseline. Note that this API applies only to Windows patch baselines.

# Arguments

## `BaselineId = ::String` -- *Required*
The ID of the patch baseline to retrieve the effective patches for.


## `MaxResults = ::Int`
The maximum number of patches to return (per page).


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeEffectivePatchesForPatchBaselineResult`

# Exceptions

`InvalidResourceId`, `DoesNotExistException`, `UnsupportedOperatingSystem` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeEffectivePatchesForPatchBaseline)
"""
@inline describe_effective_patches_for_patch_baseline(aws::AWSConfig=default_aws_config(); args...) = describe_effective_patches_for_patch_baseline(aws, args)

@inline describe_effective_patches_for_patch_baseline(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeEffectivePatchesForPatchBaseline", args)

@inline describe_effective_patches_for_patch_baseline(args) = describe_effective_patches_for_patch_baseline(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_instance_associations_status
    describe_instance_associations_status([::AWSConfig], arguments::Dict)
    describe_instance_associations_status([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeInstanceAssociationsStatus", arguments::Dict)
    ssm([::AWSConfig], "DescribeInstanceAssociationsStatus", InstanceId=, <keyword arguments>)

# DescribeInstanceAssociationsStatus Operation

The status of the associations for the instance(s).

# Arguments

## `InstanceId = ::String` -- *Required*
The instance IDs for which you want association status information.


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeInstanceAssociationsStatusResult`

# Exceptions

`InternalServerError`, `InvalidInstanceId` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstanceAssociationsStatus)
"""
@inline describe_instance_associations_status(aws::AWSConfig=default_aws_config(); args...) = describe_instance_associations_status(aws, args)

@inline describe_instance_associations_status(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeInstanceAssociationsStatus", args)

@inline describe_instance_associations_status(args) = describe_instance_associations_status(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_instance_information
    describe_instance_information([::AWSConfig], arguments::Dict)
    describe_instance_information([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeInstanceInformation", arguments::Dict)
    ssm([::AWSConfig], "DescribeInstanceInformation", <keyword arguments>)

# DescribeInstanceInformation Operation

Describes one or more of your instances. You can use this to get information about instances like the operating system platform, the SSM Agent version (Linux), status etc. If you specify one or more instance IDs, it returns information for those instances. If you do not specify instance IDs, it returns information for all your instances. If you specify an instance ID that is not valid or an instance that you do not own, you receive an error.

**Note**
> The IamRole field for this API action is the Amazon Identity and Access Management (IAM) role assigned to on-premises instances. This call does not return the IAM role for Amazon EC2 instances.

# Arguments

## `InstanceInformationFilterList = [[ ... ], ...]`
One or more filters. Use a filter to return a more specific list of instances.
```
 InstanceInformationFilterList = [[
        "key" => <required> "InstanceIds", "AgentVersion", "PingStatus", "PlatformTypes", "ActivationIds", "IamRole", "ResourceType" or "AssociationStatus",
        "valueSet" => <required> [::String, ...]
    ], ...]
```

## `Filters = [[ ... ], ...]`
One or more filters. Use a filter to return a more specific list of instances.
```
 Filters = [[
        "Key" => <required> ::String,
        "Values" => <required> [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeInstanceInformationResult`

# Exceptions

`InternalServerError`, `InvalidInstanceId`, `InvalidNextToken`, `InvalidInstanceInformationFilterValue` or `InvalidFilterKey`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstanceInformation)
"""
@inline describe_instance_information(aws::AWSConfig=default_aws_config(); args...) = describe_instance_information(aws, args)

@inline describe_instance_information(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeInstanceInformation", args)

@inline describe_instance_information(args) = describe_instance_information(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_instance_patch_states
    describe_instance_patch_states([::AWSConfig], arguments::Dict)
    describe_instance_patch_states([::AWSConfig]; InstanceIds=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeInstancePatchStates", arguments::Dict)
    ssm([::AWSConfig], "DescribeInstancePatchStates", InstanceIds=, <keyword arguments>)

# DescribeInstancePatchStates Operation

Retrieves the high-level patch state of one or more instances.

# Arguments

## `InstanceIds = [::String, ...]` -- *Required*
The ID of the instance whose patch state information should be retrieved.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxResults = ::Int`
The maximum number of instances to return (per page).




# Returns

`DescribeInstancePatchStatesResult`

# Exceptions

`InternalServerError` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchStates)
"""
@inline describe_instance_patch_states(aws::AWSConfig=default_aws_config(); args...) = describe_instance_patch_states(aws, args)

@inline describe_instance_patch_states(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeInstancePatchStates", args)

@inline describe_instance_patch_states(args) = describe_instance_patch_states(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_instance_patch_states_for_patch_group
    describe_instance_patch_states_for_patch_group([::AWSConfig], arguments::Dict)
    describe_instance_patch_states_for_patch_group([::AWSConfig]; PatchGroup=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeInstancePatchStatesForPatchGroup", arguments::Dict)
    ssm([::AWSConfig], "DescribeInstancePatchStatesForPatchGroup", PatchGroup=, <keyword arguments>)

# DescribeInstancePatchStatesForPatchGroup Operation

Retrieves the high-level patch state for the instances in the specified patch group.

# Arguments

## `PatchGroup = ::String` -- *Required*
The name of the patch group for which the patch state information should be retrieved.


## `Filters = [[ ... ], ...]`
Each entry in the array is a structure containing:

Key (string between 1 and 200 characters)

Values (array containing a single string)

Type (string "Equal", "NotEqual", "LessThan", "GreaterThan")
```
 Filters = [[
        "Key" => <required> ::String,
        "Values" => <required> [::String, ...],
        "Type" => <required> "Equal", "NotEqual", "LessThan" or "GreaterThan"
    ], ...]
```

## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxResults = ::Int`
The maximum number of patches to return (per page).




# Returns

`DescribeInstancePatchStatesForPatchGroupResult`

# Exceptions

`InternalServerError`, `InvalidFilter` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchStatesForPatchGroup)
"""
@inline describe_instance_patch_states_for_patch_group(aws::AWSConfig=default_aws_config(); args...) = describe_instance_patch_states_for_patch_group(aws, args)

@inline describe_instance_patch_states_for_patch_group(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeInstancePatchStatesForPatchGroup", args)

@inline describe_instance_patch_states_for_patch_group(args) = describe_instance_patch_states_for_patch_group(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_instance_patches
    describe_instance_patches([::AWSConfig], arguments::Dict)
    describe_instance_patches([::AWSConfig]; InstanceId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeInstancePatches", arguments::Dict)
    ssm([::AWSConfig], "DescribeInstancePatches", InstanceId=, <keyword arguments>)

# DescribeInstancePatches Operation

Retrieves information about the patches on the specified instance and their state relative to the patch baseline being used for the instance.

# Arguments

## `InstanceId = ::String` -- *Required*
The ID of the instance whose patch state information should be retrieved.


## `Filters = [[ ... ], ...]`
Each entry in the array is a structure containing:

Key (string, between 1 and 128 characters)

Values (array of strings, each string between 1 and 256 characters)
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxResults = ::Int`
The maximum number of patches to return (per page).




# Returns

`DescribeInstancePatchesResult`

# Exceptions

`InternalServerError`, `InvalidInstanceId`, `InvalidFilter` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatches)
"""
@inline describe_instance_patches(aws::AWSConfig=default_aws_config(); args...) = describe_instance_patches(aws, args)

@inline describe_instance_patches(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeInstancePatches", args)

@inline describe_instance_patches(args) = describe_instance_patches(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_inventory_deletions
    describe_inventory_deletions([::AWSConfig], arguments::Dict)
    describe_inventory_deletions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeInventoryDeletions", arguments::Dict)
    ssm([::AWSConfig], "DescribeInventoryDeletions", <keyword arguments>)

# DescribeInventoryDeletions Operation

Describes a specific delete inventory operation.

# Arguments

## `DeletionId = ::String`
Specify the delete inventory ID for which you want information. This ID was returned by the `DeleteInventory` action.


## `NextToken = ::String`
A token to start the list. Use this token to get the next set of results.


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.




# Returns

`DescribeInventoryDeletionsResult`

# Exceptions

`InternalServerError`, `InvalidDeletionIdException` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInventoryDeletions)
"""
@inline describe_inventory_deletions(aws::AWSConfig=default_aws_config(); args...) = describe_inventory_deletions(aws, args)

@inline describe_inventory_deletions(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeInventoryDeletions", args)

@inline describe_inventory_deletions(args) = describe_inventory_deletions(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_maintenance_window_execution_task_invocations
    describe_maintenance_window_execution_task_invocations([::AWSConfig], arguments::Dict)
    describe_maintenance_window_execution_task_invocations([::AWSConfig]; WindowExecutionId=, TaskId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeMaintenanceWindowExecutionTaskInvocations", arguments::Dict)
    ssm([::AWSConfig], "DescribeMaintenanceWindowExecutionTaskInvocations", WindowExecutionId=, TaskId=, <keyword arguments>)

# DescribeMaintenanceWindowExecutionTaskInvocations Operation

Retrieves the individual task executions (one per target) for a particular task executed as part of a Maintenance Window execution.

# Arguments

## `WindowExecutionId = ::String` -- *Required*
The ID of the Maintenance Window execution the task is part of.


## `TaskId = ::String` -- *Required*
The ID of the specific task in the Maintenance Window task that should be retrieved.


## `Filters = [[ ... ], ...]`
Optional filters used to scope down the returned task invocations. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED.
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeMaintenanceWindowExecutionTaskInvocationsResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutionTaskInvocations)
"""
@inline describe_maintenance_window_execution_task_invocations(aws::AWSConfig=default_aws_config(); args...) = describe_maintenance_window_execution_task_invocations(aws, args)

@inline describe_maintenance_window_execution_task_invocations(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeMaintenanceWindowExecutionTaskInvocations", args)

@inline describe_maintenance_window_execution_task_invocations(args) = describe_maintenance_window_execution_task_invocations(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_maintenance_window_execution_tasks
    describe_maintenance_window_execution_tasks([::AWSConfig], arguments::Dict)
    describe_maintenance_window_execution_tasks([::AWSConfig]; WindowExecutionId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeMaintenanceWindowExecutionTasks", arguments::Dict)
    ssm([::AWSConfig], "DescribeMaintenanceWindowExecutionTasks", WindowExecutionId=, <keyword arguments>)

# DescribeMaintenanceWindowExecutionTasks Operation

For a given Maintenance Window execution, lists the tasks that were executed.

# Arguments

## `WindowExecutionId = ::String` -- *Required*
The ID of the Maintenance Window execution whose task executions should be retrieved.


## `Filters = [[ ... ], ...]`
Optional filters used to scope down the returned tasks. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED.
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeMaintenanceWindowExecutionTasksResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutionTasks)
"""
@inline describe_maintenance_window_execution_tasks(aws::AWSConfig=default_aws_config(); args...) = describe_maintenance_window_execution_tasks(aws, args)

@inline describe_maintenance_window_execution_tasks(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeMaintenanceWindowExecutionTasks", args)

@inline describe_maintenance_window_execution_tasks(args) = describe_maintenance_window_execution_tasks(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_maintenance_window_executions
    describe_maintenance_window_executions([::AWSConfig], arguments::Dict)
    describe_maintenance_window_executions([::AWSConfig]; WindowId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeMaintenanceWindowExecutions", arguments::Dict)
    ssm([::AWSConfig], "DescribeMaintenanceWindowExecutions", WindowId=, <keyword arguments>)

# DescribeMaintenanceWindowExecutions Operation

Lists the executions of a Maintenance Window. This includes information about when the Maintenance Window was scheduled to be active, and information about tasks registered and run with the Maintenance Window.

# Arguments

## `WindowId = ::String` -- *Required*
The ID of the Maintenance Window whose executions should be retrieved.


## `Filters = [[ ... ], ...]`
Each entry in the array is a structure containing:

Key (string, between 1 and 128 characters)

Values (array of strings, each string is between 1 and 256 characters)

The supported Keys are ExecutedBefore and ExecutedAfter with the value being a date/time string such as 2016-11-04T05:00:00Z.
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeMaintenanceWindowExecutionsResult`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutions)
"""
@inline describe_maintenance_window_executions(aws::AWSConfig=default_aws_config(); args...) = describe_maintenance_window_executions(aws, args)

@inline describe_maintenance_window_executions(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeMaintenanceWindowExecutions", args)

@inline describe_maintenance_window_executions(args) = describe_maintenance_window_executions(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_maintenance_window_targets
    describe_maintenance_window_targets([::AWSConfig], arguments::Dict)
    describe_maintenance_window_targets([::AWSConfig]; WindowId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeMaintenanceWindowTargets", arguments::Dict)
    ssm([::AWSConfig], "DescribeMaintenanceWindowTargets", WindowId=, <keyword arguments>)

# DescribeMaintenanceWindowTargets Operation

Lists the targets registered with the Maintenance Window.

# Arguments

## `WindowId = ::String` -- *Required*
The ID of the Maintenance Window whose targets should be retrieved.


## `Filters = [[ ... ], ...]`
Optional filters that can be used to narrow down the scope of the returned window targets. The supported filter keys are Type, WindowTargetId and OwnerInformation.
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeMaintenanceWindowTargetsResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowTargets)
"""
@inline describe_maintenance_window_targets(aws::AWSConfig=default_aws_config(); args...) = describe_maintenance_window_targets(aws, args)

@inline describe_maintenance_window_targets(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeMaintenanceWindowTargets", args)

@inline describe_maintenance_window_targets(args) = describe_maintenance_window_targets(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_maintenance_window_tasks
    describe_maintenance_window_tasks([::AWSConfig], arguments::Dict)
    describe_maintenance_window_tasks([::AWSConfig]; WindowId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeMaintenanceWindowTasks", arguments::Dict)
    ssm([::AWSConfig], "DescribeMaintenanceWindowTasks", WindowId=, <keyword arguments>)

# DescribeMaintenanceWindowTasks Operation

Lists the tasks in a Maintenance Window.

# Arguments

## `WindowId = ::String` -- *Required*
The ID of the Maintenance Window whose tasks should be retrieved.


## `Filters = [[ ... ], ...]`
Optional filters used to narrow down the scope of the returned tasks. The supported filter keys are WindowTaskId, TaskArn, Priority, and TaskType.
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeMaintenanceWindowTasksResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowTasks)
"""
@inline describe_maintenance_window_tasks(aws::AWSConfig=default_aws_config(); args...) = describe_maintenance_window_tasks(aws, args)

@inline describe_maintenance_window_tasks(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeMaintenanceWindowTasks", args)

@inline describe_maintenance_window_tasks(args) = describe_maintenance_window_tasks(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_maintenance_windows
    describe_maintenance_windows([::AWSConfig], arguments::Dict)
    describe_maintenance_windows([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeMaintenanceWindows", arguments::Dict)
    ssm([::AWSConfig], "DescribeMaintenanceWindows", <keyword arguments>)

# DescribeMaintenanceWindows Operation

Retrieves the Maintenance Windows in an AWS account.

# Arguments

## `Filters = [[ ... ], ...]`
Optional filters used to narrow down the scope of the returned Maintenance Windows. Supported filter keys are Name and Enabled.
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeMaintenanceWindowsResult`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindows)
"""
@inline describe_maintenance_windows(aws::AWSConfig=default_aws_config(); args...) = describe_maintenance_windows(aws, args)

@inline describe_maintenance_windows(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeMaintenanceWindows", args)

@inline describe_maintenance_windows(args) = describe_maintenance_windows(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_parameters
    describe_parameters([::AWSConfig], arguments::Dict)
    describe_parameters([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribeParameters", arguments::Dict)
    ssm([::AWSConfig], "DescribeParameters", <keyword arguments>)

# DescribeParameters Operation

Get information about a parameter.

Request results are returned on a best-effort basis. If you specify `MaxResults` in the request, the response includes information up to the limit specified. The number of items returned, however, can be between zero and the value of `MaxResults`. If the service reaches an internal limit while processing the results, it stops the operation and returns the matching values up to that point and a `NextToken`. You can specify the `NextToken` in a subsequent call to get the next set of results.

# Arguments

## `Filters = [[ ... ], ...]`
One or more filters. Use a filter to return a more specific list of results.
```
 Filters = [[
        "Key" => <required> "Name", "Type" or "KeyId",
        "Values" => <required> [::String, ...]
    ], ...]
```

## `ParameterFilters = [[ ... ], ...]`
Filters to limit the request results.
```
 ParameterFilters = [[
        "Key" => <required> ::String,
        "Option" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribeParametersResult`

# Exceptions

`InternalServerError`, `InvalidFilterKey`, `InvalidFilterOption`, `InvalidFilterValue` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeParameters)
"""
@inline describe_parameters(aws::AWSConfig=default_aws_config(); args...) = describe_parameters(aws, args)

@inline describe_parameters(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribeParameters", args)

@inline describe_parameters(args) = describe_parameters(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_patch_baselines
    describe_patch_baselines([::AWSConfig], arguments::Dict)
    describe_patch_baselines([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribePatchBaselines", arguments::Dict)
    ssm([::AWSConfig], "DescribePatchBaselines", <keyword arguments>)

# DescribePatchBaselines Operation

Lists the patch baselines in your AWS account.

# Arguments

## `Filters = [[ ... ], ...]`
Each element in the array is a structure containing:

Key: (string, "NAME_PREFIX" or "OWNER")

Value: (array of strings, exactly 1 entry, between 1 and 255 characters)
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of patch baselines to return (per page).


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribePatchBaselinesResult`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchBaselines)
"""
@inline describe_patch_baselines(aws::AWSConfig=default_aws_config(); args...) = describe_patch_baselines(aws, args)

@inline describe_patch_baselines(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribePatchBaselines", args)

@inline describe_patch_baselines(args) = describe_patch_baselines(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_patch_group_state
    describe_patch_group_state([::AWSConfig], arguments::Dict)
    describe_patch_group_state([::AWSConfig]; PatchGroup=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribePatchGroupState", arguments::Dict)
    ssm([::AWSConfig], "DescribePatchGroupState", PatchGroup=)

# DescribePatchGroupState Operation

Returns high-level aggregated patch compliance state for a patch group.

# Arguments

## `PatchGroup = ::String` -- *Required*
The name of the patch group whose patch snapshot should be retrieved.




# Returns

`DescribePatchGroupStateResult`

# Exceptions

`InternalServerError` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchGroupState)
"""
@inline describe_patch_group_state(aws::AWSConfig=default_aws_config(); args...) = describe_patch_group_state(aws, args)

@inline describe_patch_group_state(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribePatchGroupState", args)

@inline describe_patch_group_state(args) = describe_patch_group_state(default_aws_config(), args)


"""
    using AWSSDK.SSM.describe_patch_groups
    describe_patch_groups([::AWSConfig], arguments::Dict)
    describe_patch_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "DescribePatchGroups", arguments::Dict)
    ssm([::AWSConfig], "DescribePatchGroups", <keyword arguments>)

# DescribePatchGroups Operation

Lists all patch groups that have been registered with patch baselines.

# Arguments

## `MaxResults = ::Int`
The maximum number of patch groups to return (per page).


## `Filters = [[ ... ], ...]`
One or more filters. Use a filter to return a more specific list of results.
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`DescribePatchGroupsResult`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchGroups)
"""
@inline describe_patch_groups(aws::AWSConfig=default_aws_config(); args...) = describe_patch_groups(aws, args)

@inline describe_patch_groups(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "DescribePatchGroups", args)

@inline describe_patch_groups(args) = describe_patch_groups(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_automation_execution
    get_automation_execution([::AWSConfig], arguments::Dict)
    get_automation_execution([::AWSConfig]; AutomationExecutionId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetAutomationExecution", arguments::Dict)
    ssm([::AWSConfig], "GetAutomationExecution", AutomationExecutionId=)

# GetAutomationExecution Operation

Get detailed information about a particular Automation execution.

# Arguments

## `AutomationExecutionId = ::String` -- *Required*
The unique identifier for an existing automation execution to examine. The execution ID is returned by StartAutomationExecution when the execution of an Automation document is initiated.




# Returns

`GetAutomationExecutionResult`

# Exceptions

`AutomationExecutionNotFoundException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetAutomationExecution)
"""
@inline get_automation_execution(aws::AWSConfig=default_aws_config(); args...) = get_automation_execution(aws, args)

@inline get_automation_execution(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetAutomationExecution", args)

@inline get_automation_execution(args) = get_automation_execution(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_command_invocation
    get_command_invocation([::AWSConfig], arguments::Dict)
    get_command_invocation([::AWSConfig]; CommandId=, InstanceId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetCommandInvocation", arguments::Dict)
    ssm([::AWSConfig], "GetCommandInvocation", CommandId=, InstanceId=, <keyword arguments>)

# GetCommandInvocation Operation

Returns detailed information about command execution for an invocation or plugin.

# Arguments

## `CommandId = ::String` -- *Required*
(Required) The parent command ID of the invocation plugin.


## `InstanceId = ::String` -- *Required*
(Required) The ID of the managed instance targeted by the command. A managed instance can be an Amazon EC2 instance or an instance in your hybrid environment that is configured for Systems Manager.


## `PluginName = ::String`
(Optional) The name of the plugin for which you want detailed results. If the document contains only one plugin, the name can be omitted and the details will be returned.




# Returns

`GetCommandInvocationResult`

# Exceptions

`InternalServerError`, `InvalidCommandId`, `InvalidInstanceId`, `InvalidPluginName` or `InvocationDoesNotExist`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetCommandInvocation)
"""
@inline get_command_invocation(aws::AWSConfig=default_aws_config(); args...) = get_command_invocation(aws, args)

@inline get_command_invocation(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetCommandInvocation", args)

@inline get_command_invocation(args) = get_command_invocation(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_default_patch_baseline
    get_default_patch_baseline([::AWSConfig], arguments::Dict)
    get_default_patch_baseline([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetDefaultPatchBaseline", arguments::Dict)
    ssm([::AWSConfig], "GetDefaultPatchBaseline", <keyword arguments>)

# GetDefaultPatchBaseline Operation

Retrieves the default patch baseline. Note that Systems Manager supports creating multiple default patch baselines. For example, you can create a default patch baseline for each operating system.

If you do not specify an operating system value, the default patch baseline for Windows is returned.

# Arguments

## `OperatingSystem = "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE" or "CENTOS"`
Returns the default patch baseline for the specified operating system.




# Returns

`GetDefaultPatchBaselineResult`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDefaultPatchBaseline)
"""
@inline get_default_patch_baseline(aws::AWSConfig=default_aws_config(); args...) = get_default_patch_baseline(aws, args)

@inline get_default_patch_baseline(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetDefaultPatchBaseline", args)

@inline get_default_patch_baseline(args) = get_default_patch_baseline(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_deployable_patch_snapshot_for_instance
    get_deployable_patch_snapshot_for_instance([::AWSConfig], arguments::Dict)
    get_deployable_patch_snapshot_for_instance([::AWSConfig]; InstanceId=, SnapshotId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetDeployablePatchSnapshotForInstance", arguments::Dict)
    ssm([::AWSConfig], "GetDeployablePatchSnapshotForInstance", InstanceId=, SnapshotId=)

# GetDeployablePatchSnapshotForInstance Operation

Retrieves the current snapshot for the patch baseline the instance uses. This API is primarily used by the AWS-RunPatchBaseline Systems Manager document.

# Arguments

## `InstanceId = ::String` -- *Required*
The ID of the instance for which the appropriate patch snapshot should be retrieved.


## `SnapshotId = ::String` -- *Required*
The user-defined snapshot ID.




# Returns

`GetDeployablePatchSnapshotForInstanceResult`

# Exceptions

`InternalServerError` or `UnsupportedOperatingSystem`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDeployablePatchSnapshotForInstance)
"""
@inline get_deployable_patch_snapshot_for_instance(aws::AWSConfig=default_aws_config(); args...) = get_deployable_patch_snapshot_for_instance(aws, args)

@inline get_deployable_patch_snapshot_for_instance(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetDeployablePatchSnapshotForInstance", args)

@inline get_deployable_patch_snapshot_for_instance(args) = get_deployable_patch_snapshot_for_instance(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_document
    get_document([::AWSConfig], arguments::Dict)
    get_document([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetDocument", arguments::Dict)
    ssm([::AWSConfig], "GetDocument", Name=, <keyword arguments>)

# GetDocument Operation

Gets the contents of the specified Systems Manager document.

# Arguments

## `Name = ::String` -- *Required*
The name of the Systems Manager document.


## `DocumentVersion = ::String`
The document version for which you want information.


## `DocumentFormat = "YAML" or "JSON"`
Returns the document in the specified format. The document format can be either JSON or YAML. JSON is the default format.




# Returns

`GetDocumentResult`

# Exceptions

`InternalServerError`, `InvalidDocument` or `InvalidDocumentVersion`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDocument)
"""
@inline get_document(aws::AWSConfig=default_aws_config(); args...) = get_document(aws, args)

@inline get_document(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetDocument", args)

@inline get_document(args) = get_document(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_inventory
    get_inventory([::AWSConfig], arguments::Dict)
    get_inventory([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetInventory", arguments::Dict)
    ssm([::AWSConfig], "GetInventory", <keyword arguments>)

# GetInventory Operation

Query inventory information.

# Arguments

## `Filters = [[ ... ], ...]`
One or more filters. Use a filter to return a more specific list of results.
```
 Filters = [[
        "Key" => <required> ::String,
        "Values" => <required> [::String, ...],
        "Type" =>  "Equal", "NotEqual", "BeginWith", "LessThan" or "GreaterThan"
    ], ...]
```

## `Aggregators = [[ ... ], ...]`
Returns counts of inventory types based on one or more expressions. For example, if you aggregate by using an expression that uses the `AWS:InstanceInformation.PlatformType` type, you can see a count of how many Windows and Linux instances exist in your inventoried fleet.
```
 Aggregators = [[
        "Expression" =>  ::String,
        "Aggregators" =>  list
    ], ...]
```

## `ResultAttributes = [["TypeName" => <required> ::String], ...]`
The list of inventory item types to return.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.




# Returns

`GetInventoryResult`

# Exceptions

`InternalServerError`, `InvalidFilter`, `InvalidNextToken`, `InvalidTypeNameException` or `InvalidResultAttributeException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetInventory)
"""
@inline get_inventory(aws::AWSConfig=default_aws_config(); args...) = get_inventory(aws, args)

@inline get_inventory(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetInventory", args)

@inline get_inventory(args) = get_inventory(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_inventory_schema
    get_inventory_schema([::AWSConfig], arguments::Dict)
    get_inventory_schema([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetInventorySchema", arguments::Dict)
    ssm([::AWSConfig], "GetInventorySchema", <keyword arguments>)

# GetInventorySchema Operation

Return a list of inventory type names for the account, or return a list of attribute names for a specific Inventory item type.

# Arguments

## `TypeName = ::String`
The type of inventory item to return.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `Aggregator = ::Bool`
Returns inventory schemas that support aggregation. For example, this call returns the `AWS:InstanceInformation` type, because it supports aggregation based on the `PlatformName`, `PlatformType`, and `PlatformVersion` attributes.


## `SubType = ::Bool`
Returns the sub-type schema for a specified inventory type.




# Returns

`GetInventorySchemaResult`

# Exceptions

`InternalServerError`, `InvalidTypeNameException` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetInventorySchema)
"""
@inline get_inventory_schema(aws::AWSConfig=default_aws_config(); args...) = get_inventory_schema(aws, args)

@inline get_inventory_schema(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetInventorySchema", args)

@inline get_inventory_schema(args) = get_inventory_schema(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_maintenance_window
    get_maintenance_window([::AWSConfig], arguments::Dict)
    get_maintenance_window([::AWSConfig]; WindowId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetMaintenanceWindow", arguments::Dict)
    ssm([::AWSConfig], "GetMaintenanceWindow", WindowId=)

# GetMaintenanceWindow Operation

Retrieves a Maintenance Window.

# Arguments

## `WindowId = ::String` -- *Required*
The ID of the desired Maintenance Window.




# Returns

`GetMaintenanceWindowResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindow)
"""
@inline get_maintenance_window(aws::AWSConfig=default_aws_config(); args...) = get_maintenance_window(aws, args)

@inline get_maintenance_window(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetMaintenanceWindow", args)

@inline get_maintenance_window(args) = get_maintenance_window(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_maintenance_window_execution
    get_maintenance_window_execution([::AWSConfig], arguments::Dict)
    get_maintenance_window_execution([::AWSConfig]; WindowExecutionId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetMaintenanceWindowExecution", arguments::Dict)
    ssm([::AWSConfig], "GetMaintenanceWindowExecution", WindowExecutionId=)

# GetMaintenanceWindowExecution Operation

Retrieves details about a specific task executed as part of a Maintenance Window execution.

# Arguments

## `WindowExecutionId = ::String` -- *Required*
The ID of the Maintenance Window execution that includes the task.




# Returns

`GetMaintenanceWindowExecutionResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecution)
"""
@inline get_maintenance_window_execution(aws::AWSConfig=default_aws_config(); args...) = get_maintenance_window_execution(aws, args)

@inline get_maintenance_window_execution(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetMaintenanceWindowExecution", args)

@inline get_maintenance_window_execution(args) = get_maintenance_window_execution(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_maintenance_window_execution_task
    get_maintenance_window_execution_task([::AWSConfig], arguments::Dict)
    get_maintenance_window_execution_task([::AWSConfig]; WindowExecutionId=, TaskId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetMaintenanceWindowExecutionTask", arguments::Dict)
    ssm([::AWSConfig], "GetMaintenanceWindowExecutionTask", WindowExecutionId=, TaskId=)

# GetMaintenanceWindowExecutionTask Operation

Retrieves the details about a specific task executed as part of a Maintenance Window execution.

# Arguments

## `WindowExecutionId = ::String` -- *Required*
The ID of the Maintenance Window execution that includes the task.


## `TaskId = ::String` -- *Required*
The ID of the specific task execution in the Maintenance Window task that should be retrieved.




# Returns

`GetMaintenanceWindowExecutionTaskResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionTask)
"""
@inline get_maintenance_window_execution_task(aws::AWSConfig=default_aws_config(); args...) = get_maintenance_window_execution_task(aws, args)

@inline get_maintenance_window_execution_task(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetMaintenanceWindowExecutionTask", args)

@inline get_maintenance_window_execution_task(args) = get_maintenance_window_execution_task(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_maintenance_window_execution_task_invocation
    get_maintenance_window_execution_task_invocation([::AWSConfig], arguments::Dict)
    get_maintenance_window_execution_task_invocation([::AWSConfig]; WindowExecutionId=, TaskId=, InvocationId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetMaintenanceWindowExecutionTaskInvocation", arguments::Dict)
    ssm([::AWSConfig], "GetMaintenanceWindowExecutionTaskInvocation", WindowExecutionId=, TaskId=, InvocationId=)

# GetMaintenanceWindowExecutionTaskInvocation Operation

Retrieves a task invocation. A task invocation is a specific task executing on a specific target. Maintenance Windows report status for all invocations.

# Arguments

## `WindowExecutionId = ::String` -- *Required*
The ID of the Maintenance Window execution for which the task is a part.


## `TaskId = ::String` -- *Required*
The ID of the specific task in the Maintenance Window task that should be retrieved.


## `InvocationId = ::String` -- *Required*
The invocation ID to retrieve.




# Returns

`GetMaintenanceWindowExecutionTaskInvocationResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionTaskInvocation)
"""
@inline get_maintenance_window_execution_task_invocation(aws::AWSConfig=default_aws_config(); args...) = get_maintenance_window_execution_task_invocation(aws, args)

@inline get_maintenance_window_execution_task_invocation(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetMaintenanceWindowExecutionTaskInvocation", args)

@inline get_maintenance_window_execution_task_invocation(args) = get_maintenance_window_execution_task_invocation(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_maintenance_window_task
    get_maintenance_window_task([::AWSConfig], arguments::Dict)
    get_maintenance_window_task([::AWSConfig]; WindowId=, WindowTaskId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetMaintenanceWindowTask", arguments::Dict)
    ssm([::AWSConfig], "GetMaintenanceWindowTask", WindowId=, WindowTaskId=)

# GetMaintenanceWindowTask Operation

Lists the tasks in a Maintenance Window.

# Arguments

## `WindowId = ::String` -- *Required*
The Maintenance Window ID that includes the task to retrieve.


## `WindowTaskId = ::String` -- *Required*
The Maintenance Window task ID to retrieve.




# Returns

`GetMaintenanceWindowTaskResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowTask)
"""
@inline get_maintenance_window_task(aws::AWSConfig=default_aws_config(); args...) = get_maintenance_window_task(aws, args)

@inline get_maintenance_window_task(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetMaintenanceWindowTask", args)

@inline get_maintenance_window_task(args) = get_maintenance_window_task(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_parameter
    get_parameter([::AWSConfig], arguments::Dict)
    get_parameter([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetParameter", arguments::Dict)
    ssm([::AWSConfig], "GetParameter", Name=, <keyword arguments>)

# GetParameter Operation

Get information about a parameter by using the parameter name. Don't confuse this API action with the [GetParameters](@ref) API action.

# Arguments

## `Name = ::String` -- *Required*
The name of the parameter you want to query.


## `WithDecryption = ::Bool`
Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.




# Returns

`GetParameterResult`

# Exceptions

`InternalServerError`, `InvalidKeyId`, `ParameterNotFound` or `ParameterVersionNotFound`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameter)
"""
@inline get_parameter(aws::AWSConfig=default_aws_config(); args...) = get_parameter(aws, args)

@inline get_parameter(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetParameter", args)

@inline get_parameter(args) = get_parameter(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_parameter_history
    get_parameter_history([::AWSConfig], arguments::Dict)
    get_parameter_history([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetParameterHistory", arguments::Dict)
    ssm([::AWSConfig], "GetParameterHistory", Name=, <keyword arguments>)

# GetParameterHistory Operation

Query a list of all parameters used by the AWS account.

# Arguments

## `Name = ::String` -- *Required*
The name of a parameter you want to query.


## `WithDecryption = ::Bool`
Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`GetParameterHistoryResult`

# Exceptions

`InternalServerError`, `ParameterNotFound`, `InvalidNextToken` or `InvalidKeyId`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameterHistory)
"""
@inline get_parameter_history(aws::AWSConfig=default_aws_config(); args...) = get_parameter_history(aws, args)

@inline get_parameter_history(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetParameterHistory", args)

@inline get_parameter_history(args) = get_parameter_history(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_parameters
    get_parameters([::AWSConfig], arguments::Dict)
    get_parameters([::AWSConfig]; Names=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetParameters", arguments::Dict)
    ssm([::AWSConfig], "GetParameters", Names=, <keyword arguments>)

# GetParameters Operation

Get details of a parameter. Don't confuse this API action with the [GetParameter](@ref) API action.

# Arguments

## `Names = [::String, ...]` -- *Required*
Names of the parameters for which you want to query information.


## `WithDecryption = ::Bool`
Return decrypted secure string value. Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.




# Returns

`GetParametersResult`

# Exceptions

`InvalidKeyId` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameters)
"""
@inline get_parameters(aws::AWSConfig=default_aws_config(); args...) = get_parameters(aws, args)

@inline get_parameters(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetParameters", args)

@inline get_parameters(args) = get_parameters(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_parameters_by_path
    get_parameters_by_path([::AWSConfig], arguments::Dict)
    get_parameters_by_path([::AWSConfig]; Path=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetParametersByPath", arguments::Dict)
    ssm([::AWSConfig], "GetParametersByPath", Path=, <keyword arguments>)

# GetParametersByPath Operation

Retrieve parameters in a specific hierarchy. For more information, see [Working with Systems Manager Parameters](http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-working.html) in the *AWS Systems Manager User Guide*.

Request results are returned on a best-effort basis. If you specify `MaxResults` in the request, the response includes information up to the limit specified. The number of items returned, however, can be between zero and the value of `MaxResults`. If the service reaches an internal limit while processing the results, it stops the operation and returns the matching values up to that point and a `NextToken`. You can specify the `NextToken` in a subsequent call to get the next set of results.

**Note**
> This API action doesn't support filtering by tags.

# Arguments

## `Path = ::String` -- *Required*
The hierarchy for the parameter. Hierarchies start with a forward slash (/) and end with the parameter name. A parameter name hierarchy can have a maximum of 15 levels. Here is an example of a hierarchy: `/Finance/Prod/IAD/WinServ2016/license33`


## `Recursive = ::Bool`
Retrieve all parameters within a hierarchy.

**Important**
> If a user has access to a path, then the user can access all levels of that path. For example, if a user has permission to access path /a, then the user can also access /a/b. Even if a user has explicitly been denied access in IAM for parameter /a, they can still call the GetParametersByPath API action recursively and view /a/b.


## `ParameterFilters = [[ ... ], ...]`
Filters to limit the request results.

**Note**
> You can't filter using the parameter name.
```
 ParameterFilters = [[
        "Key" => <required> ::String,
        "Option" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `WithDecryption = ::Bool`
Retrieve all parameters in a hierarchy with their value decrypted.


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
A token to start the list. Use this token to get the next set of results.




# Returns

`GetParametersByPathResult`

# Exceptions

`InternalServerError`, `InvalidFilterKey`, `InvalidFilterOption`, `InvalidFilterValue`, `InvalidKeyId` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParametersByPath)
"""
@inline get_parameters_by_path(aws::AWSConfig=default_aws_config(); args...) = get_parameters_by_path(aws, args)

@inline get_parameters_by_path(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetParametersByPath", args)

@inline get_parameters_by_path(args) = get_parameters_by_path(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_patch_baseline
    get_patch_baseline([::AWSConfig], arguments::Dict)
    get_patch_baseline([::AWSConfig]; BaselineId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetPatchBaseline", arguments::Dict)
    ssm([::AWSConfig], "GetPatchBaseline", BaselineId=)

# GetPatchBaseline Operation

Retrieves information about a patch baseline.

# Arguments

## `BaselineId = ::String` -- *Required*
The ID of the patch baseline to retrieve.




# Returns

`GetPatchBaselineResult`

# Exceptions

`DoesNotExistException`, `InvalidResourceId` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaseline)
"""
@inline get_patch_baseline(aws::AWSConfig=default_aws_config(); args...) = get_patch_baseline(aws, args)

@inline get_patch_baseline(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetPatchBaseline", args)

@inline get_patch_baseline(args) = get_patch_baseline(default_aws_config(), args)


"""
    using AWSSDK.SSM.get_patch_baseline_for_patch_group
    get_patch_baseline_for_patch_group([::AWSConfig], arguments::Dict)
    get_patch_baseline_for_patch_group([::AWSConfig]; PatchGroup=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "GetPatchBaselineForPatchGroup", arguments::Dict)
    ssm([::AWSConfig], "GetPatchBaselineForPatchGroup", PatchGroup=, <keyword arguments>)

# GetPatchBaselineForPatchGroup Operation

Retrieves the patch baseline that should be used for the specified patch group.

# Arguments

## `PatchGroup = ::String` -- *Required*
The name of the patch group whose patch baseline should be retrieved.


## `OperatingSystem = "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE" or "CENTOS"`
Returns he operating system rule specified for patch groups using the patch baseline.




# Returns

`GetPatchBaselineForPatchGroupResult`

# Exceptions

`InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaselineForPatchGroup)
"""
@inline get_patch_baseline_for_patch_group(aws::AWSConfig=default_aws_config(); args...) = get_patch_baseline_for_patch_group(aws, args)

@inline get_patch_baseline_for_patch_group(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "GetPatchBaselineForPatchGroup", args)

@inline get_patch_baseline_for_patch_group(args) = get_patch_baseline_for_patch_group(default_aws_config(), args)


"""
    using AWSSDK.SSM.label_parameter_version
    label_parameter_version([::AWSConfig], arguments::Dict)
    label_parameter_version([::AWSConfig]; Name=, Labels=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "LabelParameterVersion", arguments::Dict)
    ssm([::AWSConfig], "LabelParameterVersion", Name=, Labels=, <keyword arguments>)

# LabelParameterVersion Operation



# Arguments

## `Name = ::String` -- *Required*



## `ParameterVersion = ::Int`



## `Labels = [::String, ...]` -- *Required*





# Returns

`LabelParameterVersionResult`

# Exceptions

`InternalServerError`, `TooManyUpdates`, `ParameterNotFound`, `ParameterVersionNotFound` or `ParameterVersionLabelLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/LabelParameterVersion)
"""
@inline label_parameter_version(aws::AWSConfig=default_aws_config(); args...) = label_parameter_version(aws, args)

@inline label_parameter_version(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "LabelParameterVersion", args)

@inline label_parameter_version(args) = label_parameter_version(default_aws_config(), args)


"""
    using AWSSDK.SSM.list_association_versions
    list_association_versions([::AWSConfig], arguments::Dict)
    list_association_versions([::AWSConfig]; AssociationId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ListAssociationVersions", arguments::Dict)
    ssm([::AWSConfig], "ListAssociationVersions", AssociationId=, <keyword arguments>)

# ListAssociationVersions Operation

Retrieves all versions of an association for a specific association ID.

# Arguments

## `AssociationId = ::String` -- *Required*
The association ID for which you want to view all versions.


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
A token to start the list. Use this token to get the next set of results.




# Returns

`ListAssociationVersionsResult`

# Exceptions

`InternalServerError`, `InvalidNextToken` or `AssociationDoesNotExist`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListAssociationVersions)
"""
@inline list_association_versions(aws::AWSConfig=default_aws_config(); args...) = list_association_versions(aws, args)

@inline list_association_versions(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ListAssociationVersions", args)

@inline list_association_versions(args) = list_association_versions(default_aws_config(), args)


"""
    using AWSSDK.SSM.list_associations
    list_associations([::AWSConfig], arguments::Dict)
    list_associations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ListAssociations", arguments::Dict)
    ssm([::AWSConfig], "ListAssociations", <keyword arguments>)

# ListAssociations Operation

Lists the associations for the specified Systems Manager document or instance.

# Arguments

## `AssociationFilterList = [[ ... ], ...]`
One or more filters. Use a filter to return a more specific list of results.
```
 AssociationFilterList = [[
        "key" => <required> "InstanceId", "Name", "AssociationId", "AssociationStatusName", "LastExecutedBefore", "LastExecutedAfter" or "AssociationName",
        "value" => <required> ::String
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`ListAssociationsResult`

# Exceptions

`InternalServerError` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListAssociations)
"""
@inline list_associations(aws::AWSConfig=default_aws_config(); args...) = list_associations(aws, args)

@inline list_associations(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ListAssociations", args)

@inline list_associations(args) = list_associations(default_aws_config(), args)


"""
    using AWSSDK.SSM.list_command_invocations
    list_command_invocations([::AWSConfig], arguments::Dict)
    list_command_invocations([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ListCommandInvocations", arguments::Dict)
    ssm([::AWSConfig], "ListCommandInvocations", <keyword arguments>)

# ListCommandInvocations Operation

An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user executes SendCommand against three instances, then a command invocation is created for each requested instance ID. ListCommandInvocations provide status about command execution.

# Arguments

## `CommandId = ::String`
(Optional) The invocations for a specific command ID.


## `InstanceId = ::String`
(Optional) The command execution details for a specific instance ID.


## `MaxResults = ::Int`
(Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
(Optional) The token for the next set of items to return. (You received this token from a previous call.)


## `Filters = [[ ... ], ...]`
(Optional) One or more filters. Use a filter to return a more specific list of results.
```
 Filters = [[
        "key" => <required> "InvokedAfter", "InvokedBefore" or "Status",
        "value" => <required> ::String
    ], ...]
```

## `Details = ::Bool`
(Optional) If set this returns the response of the command executions and any command output. By default this is set to False.




# Returns

`ListCommandInvocationsResult`

# Exceptions

`InternalServerError`, `InvalidCommandId`, `InvalidInstanceId`, `InvalidFilterKey` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListCommandInvocations)
"""
@inline list_command_invocations(aws::AWSConfig=default_aws_config(); args...) = list_command_invocations(aws, args)

@inline list_command_invocations(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ListCommandInvocations", args)

@inline list_command_invocations(args) = list_command_invocations(default_aws_config(), args)


"""
    using AWSSDK.SSM.list_commands
    list_commands([::AWSConfig], arguments::Dict)
    list_commands([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ListCommands", arguments::Dict)
    ssm([::AWSConfig], "ListCommands", <keyword arguments>)

# ListCommands Operation

Lists the commands requested by users of the AWS account.

# Arguments

## `CommandId = ::String`
(Optional) If provided, lists only the specified command.


## `InstanceId = ::String`
(Optional) Lists commands issued against this instance ID.


## `MaxResults = ::Int`
(Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
(Optional) The token for the next set of items to return. (You received this token from a previous call.)


## `Filters = [[ ... ], ...]`
(Optional) One or more filters. Use a filter to return a more specific list of results.
```
 Filters = [[
        "key" => <required> "InvokedAfter", "InvokedBefore" or "Status",
        "value" => <required> ::String
    ], ...]
```



# Returns

`ListCommandsResult`

# Exceptions

`InternalServerError`, `InvalidCommandId`, `InvalidInstanceId`, `InvalidFilterKey` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListCommands)
"""
@inline list_commands(aws::AWSConfig=default_aws_config(); args...) = list_commands(aws, args)

@inline list_commands(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ListCommands", args)

@inline list_commands(args) = list_commands(default_aws_config(), args)


"""
    using AWSSDK.SSM.list_compliance_items
    list_compliance_items([::AWSConfig], arguments::Dict)
    list_compliance_items([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ListComplianceItems", arguments::Dict)
    ssm([::AWSConfig], "ListComplianceItems", <keyword arguments>)

# ListComplianceItems Operation

For a specified resource ID, this API action returns a list of compliance statuses for different resource types. Currently, you can only specify one resource ID per call. List results depend on the criteria specified in the filter.

# Arguments

## `Filters = [[ ... ], ...]`
One or more compliance filters. Use a filter to return a more specific list of results.
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...],
        "Type" =>  "EQUAL", "NOT_EQUAL", "BEGIN_WITH", "LESS_THAN" or "GREATER_THAN"
    ], ...]
```

## `ResourceIds = [::String, ...]`
The ID for the resources from which to get compliance information. Currently, you can only specify one resource ID.


## `ResourceTypes = [::String, ...]`
The type of resource from which to get compliance information. Currently, the only supported resource type is `ManagedInstance`.


## `NextToken = ::String`
A token to start the list. Use this token to get the next set of results.


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.




# Returns

`ListComplianceItemsResult`

# Exceptions

`InvalidResourceType`, `InvalidResourceId`, `InternalServerError`, `InvalidFilter` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListComplianceItems)
"""
@inline list_compliance_items(aws::AWSConfig=default_aws_config(); args...) = list_compliance_items(aws, args)

@inline list_compliance_items(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ListComplianceItems", args)

@inline list_compliance_items(args) = list_compliance_items(default_aws_config(), args)


"""
    using AWSSDK.SSM.list_compliance_summaries
    list_compliance_summaries([::AWSConfig], arguments::Dict)
    list_compliance_summaries([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ListComplianceSummaries", arguments::Dict)
    ssm([::AWSConfig], "ListComplianceSummaries", <keyword arguments>)

# ListComplianceSummaries Operation

Returns a summary count of compliant and non-compliant resources for a compliance type. For example, this call can return State Manager associations, patches, or custom compliance types according to the filter criteria that you specify.

# Arguments

## `Filters = [[ ... ], ...]`
One or more compliance or inventory filters. Use a filter to return a more specific list of results.
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...],
        "Type" =>  "EQUAL", "NOT_EQUAL", "BEGIN_WITH", "LESS_THAN" or "GREATER_THAN"
    ], ...]
```

## `NextToken = ::String`
A token to start the list. Use this token to get the next set of results.


## `MaxResults = ::Int`
The maximum number of items to return for this call. Currently, you can specify null or 50. The call also returns a token that you can specify in a subsequent call to get the next set of results.




# Returns

`ListComplianceSummariesResult`

# Exceptions

`InvalidFilter`, `InvalidNextToken` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListComplianceSummaries)
"""
@inline list_compliance_summaries(aws::AWSConfig=default_aws_config(); args...) = list_compliance_summaries(aws, args)

@inline list_compliance_summaries(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ListComplianceSummaries", args)

@inline list_compliance_summaries(args) = list_compliance_summaries(default_aws_config(), args)


"""
    using AWSSDK.SSM.list_document_versions
    list_document_versions([::AWSConfig], arguments::Dict)
    list_document_versions([::AWSConfig]; Name=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ListDocumentVersions", arguments::Dict)
    ssm([::AWSConfig], "ListDocumentVersions", Name=, <keyword arguments>)

# ListDocumentVersions Operation

List all versions for a document.

# Arguments

## `Name = ::String` -- *Required*
The name of the document about which you want version information.


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`ListDocumentVersionsResult`

# Exceptions

`InternalServerError`, `InvalidNextToken` or `InvalidDocument`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocumentVersions)
"""
@inline list_document_versions(aws::AWSConfig=default_aws_config(); args...) = list_document_versions(aws, args)

@inline list_document_versions(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ListDocumentVersions", args)

@inline list_document_versions(args) = list_document_versions(default_aws_config(), args)


"""
    using AWSSDK.SSM.list_documents
    list_documents([::AWSConfig], arguments::Dict)
    list_documents([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ListDocuments", arguments::Dict)
    ssm([::AWSConfig], "ListDocuments", <keyword arguments>)

# ListDocuments Operation

Describes one or more of your Systems Manager documents.

# Arguments

## `DocumentFilterList = [[ ... ], ...]`
One or more filters. Use a filter to return a more specific list of results.
```
 DocumentFilterList = [[
        "key" => <required> "Name", "Owner", "PlatformTypes" or "DocumentType",
        "value" => <required> ::String
    ], ...]
```

## `Filters = [[ ... ], ...]`
One or more filters. Use a filter to return a more specific list of results.
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.


## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)




# Returns

`ListDocumentsResult`

# Exceptions

`InternalServerError`, `InvalidNextToken` or `InvalidFilterKey`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocuments)
"""
@inline list_documents(aws::AWSConfig=default_aws_config(); args...) = list_documents(aws, args)

@inline list_documents(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ListDocuments", args)

@inline list_documents(args) = list_documents(default_aws_config(), args)


"""
    using AWSSDK.SSM.list_inventory_entries
    list_inventory_entries([::AWSConfig], arguments::Dict)
    list_inventory_entries([::AWSConfig]; InstanceId=, TypeName=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ListInventoryEntries", arguments::Dict)
    ssm([::AWSConfig], "ListInventoryEntries", InstanceId=, TypeName=, <keyword arguments>)

# ListInventoryEntries Operation

A list of inventory items returned by the request.

# Arguments

## `InstanceId = ::String` -- *Required*
The instance ID for which you want inventory information.


## `TypeName = ::String` -- *Required*
The type of inventory item for which you want information.


## `Filters = [[ ... ], ...]`
One or more filters. Use a filter to return a more specific list of results.
```
 Filters = [[
        "Key" => <required> ::String,
        "Values" => <required> [::String, ...],
        "Type" =>  "Equal", "NotEqual", "BeginWith", "LessThan" or "GreaterThan"
    ], ...]
```

## `NextToken = ::String`
The token for the next set of items to return. (You received this token from a previous call.)


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.




# Returns

`ListInventoryEntriesResult`

# Exceptions

`InternalServerError`, `InvalidInstanceId`, `InvalidTypeNameException`, `InvalidFilter` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListInventoryEntries)
"""
@inline list_inventory_entries(aws::AWSConfig=default_aws_config(); args...) = list_inventory_entries(aws, args)

@inline list_inventory_entries(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ListInventoryEntries", args)

@inline list_inventory_entries(args) = list_inventory_entries(default_aws_config(), args)


"""
    using AWSSDK.SSM.list_resource_compliance_summaries
    list_resource_compliance_summaries([::AWSConfig], arguments::Dict)
    list_resource_compliance_summaries([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ListResourceComplianceSummaries", arguments::Dict)
    ssm([::AWSConfig], "ListResourceComplianceSummaries", <keyword arguments>)

# ListResourceComplianceSummaries Operation

Returns a resource-level summary count. The summary includes information about compliant and non-compliant statuses and detailed compliance-item severity counts, according to the filter criteria you specify.

# Arguments

## `Filters = [[ ... ], ...]`
One or more filters. Use a filter to return a more specific list of results.
```
 Filters = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...],
        "Type" =>  "EQUAL", "NOT_EQUAL", "BEGIN_WITH", "LESS_THAN" or "GREATER_THAN"
    ], ...]
```

## `NextToken = ::String`
A token to start the list. Use this token to get the next set of results.


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.




# Returns

`ListResourceComplianceSummariesResult`

# Exceptions

`InvalidFilter`, `InvalidNextToken` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListResourceComplianceSummaries)
"""
@inline list_resource_compliance_summaries(aws::AWSConfig=default_aws_config(); args...) = list_resource_compliance_summaries(aws, args)

@inline list_resource_compliance_summaries(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ListResourceComplianceSummaries", args)

@inline list_resource_compliance_summaries(args) = list_resource_compliance_summaries(default_aws_config(), args)


"""
    using AWSSDK.SSM.list_resource_data_sync
    list_resource_data_sync([::AWSConfig], arguments::Dict)
    list_resource_data_sync([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ListResourceDataSync", arguments::Dict)
    ssm([::AWSConfig], "ListResourceDataSync", <keyword arguments>)

# ListResourceDataSync Operation

Lists your resource data sync configurations. Includes information about the last time a sync attempted to start, the last sync status, and the last time a sync successfully completed.

The number of sync configurations might be too large to return using a single call to `ListResourceDataSync`. You can limit the number of sync configurations returned by using the `MaxResults` parameter. To determine whether there are more sync configurations to list, check the value of `NextToken` in the output. If there are more sync configurations to list, you can request them by specifying the `NextToken` returned in the call to the parameter of a subsequent call.

# Arguments

## `NextToken = ::String`
A token to start the list. Use this token to get the next set of results.


## `MaxResults = ::Int`
The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.




# Returns

`ListResourceDataSyncResult`

# Exceptions

`InternalServerError` or `InvalidNextToken`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListResourceDataSync)
"""
@inline list_resource_data_sync(aws::AWSConfig=default_aws_config(); args...) = list_resource_data_sync(aws, args)

@inline list_resource_data_sync(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ListResourceDataSync", args)

@inline list_resource_data_sync(args) = list_resource_data_sync(default_aws_config(), args)


"""
    using AWSSDK.SSM.list_tags_for_resource
    list_tags_for_resource([::AWSConfig], arguments::Dict)
    list_tags_for_resource([::AWSConfig]; ResourceType=, ResourceId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ListTagsForResource", arguments::Dict)
    ssm([::AWSConfig], "ListTagsForResource", ResourceType=, ResourceId=)

# ListTagsForResource Operation

Returns a list of the tags assigned to the specified resource.

# Arguments

## `ResourceType = "Document", "ManagedInstance", "MaintenanceWindow", "Parameter" or "PatchBaseline"` -- *Required*
Returns a list of tags for a specific resource type.


## `ResourceId = ::String` -- *Required*
The resource ID for which you want to see a list of tags.




# Returns

`ListTagsForResourceResult`

# Exceptions

`InvalidResourceType`, `InvalidResourceId` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListTagsForResource)
"""
@inline list_tags_for_resource(aws::AWSConfig=default_aws_config(); args...) = list_tags_for_resource(aws, args)

@inline list_tags_for_resource(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ListTagsForResource", args)

@inline list_tags_for_resource(args) = list_tags_for_resource(default_aws_config(), args)


"""
    using AWSSDK.SSM.modify_document_permission
    modify_document_permission([::AWSConfig], arguments::Dict)
    modify_document_permission([::AWSConfig]; Name=, PermissionType=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "ModifyDocumentPermission", arguments::Dict)
    ssm([::AWSConfig], "ModifyDocumentPermission", Name=, PermissionType=, <keyword arguments>)

# ModifyDocumentPermission Operation

Shares a Systems Manager document publicly or privately. If you share a document privately, you must specify the AWS user account IDs for those people who can use the document. If you share a document publicly, you must specify *All* as the account ID.

# Arguments

## `Name = ::String` -- *Required*
The name of the document that you want to share.


## `PermissionType = "Share"` -- *Required*
The permission type for the document. The permission type can be *Share*.


## `AccountIdsToAdd = [::String, ...]`
The AWS user accounts that should have access to the document. The account IDs can either be a group of account IDs or *All*.


## `AccountIdsToRemove = [::String, ...]`
The AWS user accounts that should no longer have access to the document. The AWS user account can either be a group of account IDs or *All*. This action has a higher priority than *AccountIdsToAdd*. If you specify an account ID to add and the same ID to remove, the system removes access to the document.




# Returns

`ModifyDocumentPermissionResponse`

# Exceptions

`InternalServerError`, `InvalidDocument`, `InvalidPermissionType`, `DocumentPermissionLimit` or `DocumentLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ModifyDocumentPermission)
"""
@inline modify_document_permission(aws::AWSConfig=default_aws_config(); args...) = modify_document_permission(aws, args)

@inline modify_document_permission(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "ModifyDocumentPermission", args)

@inline modify_document_permission(args) = modify_document_permission(default_aws_config(), args)


"""
    using AWSSDK.SSM.put_compliance_items
    put_compliance_items([::AWSConfig], arguments::Dict)
    put_compliance_items([::AWSConfig]; ResourceId=, ResourceType=, ComplianceType=, ExecutionSummary=, Items=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "PutComplianceItems", arguments::Dict)
    ssm([::AWSConfig], "PutComplianceItems", ResourceId=, ResourceType=, ComplianceType=, ExecutionSummary=, Items=, <keyword arguments>)

# PutComplianceItems Operation

Registers a compliance type and other compliance details on a designated resource. This action lets you register custom compliance details with a resource. This call overwrites existing compliance information on the resource, so you must provide a full list of compliance items each time that you send the request.

ComplianceType can be one of the following:

*   ExecutionId: The execution ID when the patch, association, or custom compliance item was applied.

*   ExecutionType: Specify patch, association, or Custom:`string`.

*   ExecutionTime. The time the patch, association, or custom compliance item was applied to the instance.

*   Id: The patch, association, or custom compliance ID.

*   Title: A title.

*   Status: The status of the compliance item. For example, `approved` for patches, or `Failed` for associations.

*   Severity: A patch severity. For example, `critical`.

*   DocumentName: A SSM document name. For example, AWS-RunPatchBaseline.

*   DocumentVersion: An SSM document version number. For example, 4.

*   Classification: A patch classification. For example, `security updates`.

*   PatchBaselineId: A patch baseline ID.

*   PatchSeverity: A patch severity. For example, `Critical`.

*   PatchState: A patch state. For example, `InstancesWithFailedPatches`.

*   PatchGroup: The name of a patch group.

*   InstalledTime: The time the association, patch, or custom compliance item was applied to the resource. Specify the time by using the following format: yyyy-MM-dd'T'HH:mm:ss'Z'

# Arguments

## `ResourceId = ::String` -- *Required*
Specify an ID for this resource. For a managed instance, this is the instance ID.


## `ResourceType = ::String` -- *Required*
Specify the type of resource. `ManagedInstance` is currently the only supported resource type.


## `ComplianceType = ::String` -- *Required*
Specify the compliance type. For example, specify Association (for a State Manager association), Patch, or Custom:`string`.


## `ExecutionSummary = [ ... ]` -- *Required*
A summary of the call execution that includes an execution ID, the type of execution (for example, `Command`), and the date/time of the execution using a datetime object that is saved in the following format: yyyy-MM-dd'T'HH:mm:ss'Z'.
```
 ExecutionSummary = [
        "ExecutionTime" => <required> timestamp,
        "ExecutionId" =>  ::String,
        "ExecutionType" =>  ::String
    ]
```

## `Items = [[ ... ], ...]` -- *Required*
Information about the compliance as defined by the resource type. For example, for a patch compliance type, `Items` includes information about the PatchSeverity, Classification, etc.
```
 Items = [[
        "Id" =>  ::String,
        "Title" =>  ::String,
        "Severity" => <required> "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL" or "UNSPECIFIED",
        "Status" => <required> "COMPLIANT" or "NON_COMPLIANT",
        "Details" =>  ::Dict{String,String}
    ], ...]
```

## `ItemContentHash = ::String`
MD5 or SHA-256 content hash. The content hash is used to determine if existing information should be overwritten or ignored. If the content hashes match, the request to put compliance information is ignored.




# Returns

`PutComplianceItemsResult`

# Exceptions

`InternalServerError`, `InvalidItemContentException`, `TotalSizeLimitExceededException`, `ItemSizeLimitExceededException`, `ComplianceTypeCountLimitExceededException`, `InvalidResourceType` or `InvalidResourceId`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutComplianceItems)
"""
@inline put_compliance_items(aws::AWSConfig=default_aws_config(); args...) = put_compliance_items(aws, args)

@inline put_compliance_items(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "PutComplianceItems", args)

@inline put_compliance_items(args) = put_compliance_items(default_aws_config(), args)


"""
    using AWSSDK.SSM.put_inventory
    put_inventory([::AWSConfig], arguments::Dict)
    put_inventory([::AWSConfig]; InstanceId=, Items=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "PutInventory", arguments::Dict)
    ssm([::AWSConfig], "PutInventory", InstanceId=, Items=)

# PutInventory Operation

Bulk update custom inventory items on one more instance. The request adds an inventory item, if it doesn't already exist, or updates an inventory item, if it does exist.

# Arguments

## `InstanceId = ::String` -- *Required*
One or more instance IDs where you want to add or update inventory items.


## `Items = [[ ... ], ...]` -- *Required*
The inventory items that you want to add or update on instances.
```
 Items = [[
        "TypeName" => <required> ::String,
        "SchemaVersion" => <required> ::String,
        "CaptureTime" => <required> ::String,
        "ContentHash" =>  ::String,
        "Content" =>  [::Dict{String,String}, ...],
        "Context" =>  ::Dict{String,String}
    ], ...]
```



# Returns

`PutInventoryResult`

# Exceptions

`InternalServerError`, `InvalidInstanceId`, `InvalidTypeNameException`, `InvalidItemContentException`, `TotalSizeLimitExceededException`, `ItemSizeLimitExceededException`, `ItemContentMismatchException`, `CustomSchemaCountLimitExceededException`, `UnsupportedInventorySchemaVersionException`, `UnsupportedInventoryItemContextException`, `InvalidInventoryItemContextException` or `SubTypeCountLimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutInventory)
"""
@inline put_inventory(aws::AWSConfig=default_aws_config(); args...) = put_inventory(aws, args)

@inline put_inventory(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "PutInventory", args)

@inline put_inventory(args) = put_inventory(default_aws_config(), args)


"""
    using AWSSDK.SSM.put_parameter
    put_parameter([::AWSConfig], arguments::Dict)
    put_parameter([::AWSConfig]; Name=, Value=, Type=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "PutParameter", arguments::Dict)
    ssm([::AWSConfig], "PutParameter", Name=, Value=, Type=, <keyword arguments>)

# PutParameter Operation

Add a parameter to the system.

# Arguments

## `Name = ::String` -- *Required*
The fully qualified name of the parameter that you want to add to the system. The fully qualified name includes the complete hierarchy of the parameter path and name. For example: `/Dev/DBServer/MySQL/db-string13`

Naming Constraints:

*   Parameter names are case sensitive.

*   A parameter name must be unique within an AWS Region

*   A parameter name can't be prefixed with "aws" or "ssm" (case-insensitive).

*   Parameter names can include only the following symbols and letters: `a-zA-Z0-9_.-/`

*   A parameter name can't include spaces.

*   Parameter hierarchies are limited to a maximum depth of fifteen levels.

For additional information about valid values for parameter names, see [Requirements and Constraints for Parameter Names](http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html) in the *AWS Systems Manager User Guide*.

**Note**
> The maximum length constraint listed below includes capacity for additional system attributes that are not part of the name. The maximum length for the fully qualified parameter name is 1011 characters.


## `Description = ::String`
Information about the parameter that you want to add to the system. Optional but recommended.

**Important**
> Do not enter personally identifiable information in this field.


## `Value = ::String` -- *Required*
The parameter value that you want to add to the system.


## `Type = "String", "StringList" or "SecureString"` -- *Required*
The type of parameter that you want to add to the system.

Items in a `StringList` must be separated by a comma (,). You can't use other punctuation or special character to escape items in the list. If you have a parameter value that requires a comma, then use the `String` data type.

**Note**
> `SecureString` is not currently supported for AWS CloudFormation templates or in the China Regions.


## `KeyId = ::String`
The KMS Key ID that you want to use to encrypt a parameter. Either the default AWS Key Management Service (AWS KMS) key automatically assigned to your AWS account or a custom key. Required for parameters that use the `SecureString` data type.

If you don't specify a key ID, the system uses the default key associated with your AWS account.

*   To use your default AWS KMS key, choose the `SecureString` data type, and do *not* specify the `Key ID` when you create the parameter. The system automatically populates `Key ID` with your default KMS key.

*   To use a custom KMS key, choose the `SecureString` data type with the `Key ID` parameter.


## `Overwrite = ::Bool`
Overwrite an existing parameter. If not specified, will default to "false".


## `AllowedPattern = ::String`
A regular expression used to validate the parameter value. For example, for String types with values restricted to numbers, you can specify the following: AllowedPattern=^\\d+\$




# Returns

`PutParameterResult`

# Exceptions

`InternalServerError`, `InvalidKeyId`, `ParameterLimitExceeded`, `TooManyUpdates`, `ParameterAlreadyExists`, `HierarchyLevelLimitExceededException`, `HierarchyTypeMismatchException`, `InvalidAllowedPatternException`, `ParameterMaxVersionLimitExceeded`, `ParameterPatternMismatchException` or `UnsupportedParameterType`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutParameter)
"""
@inline put_parameter(aws::AWSConfig=default_aws_config(); args...) = put_parameter(aws, args)

@inline put_parameter(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "PutParameter", args)

@inline put_parameter(args) = put_parameter(default_aws_config(), args)


"""
    using AWSSDK.SSM.register_default_patch_baseline
    register_default_patch_baseline([::AWSConfig], arguments::Dict)
    register_default_patch_baseline([::AWSConfig]; BaselineId=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "RegisterDefaultPatchBaseline", arguments::Dict)
    ssm([::AWSConfig], "RegisterDefaultPatchBaseline", BaselineId=)

# RegisterDefaultPatchBaseline Operation

Defines the default patch baseline.

# Arguments

## `BaselineId = ::String` -- *Required*
The ID of the patch baseline that should be the default patch baseline.




# Returns

`RegisterDefaultPatchBaselineResult`

# Exceptions

`InvalidResourceId`, `DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterDefaultPatchBaseline)
"""
@inline register_default_patch_baseline(aws::AWSConfig=default_aws_config(); args...) = register_default_patch_baseline(aws, args)

@inline register_default_patch_baseline(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "RegisterDefaultPatchBaseline", args)

@inline register_default_patch_baseline(args) = register_default_patch_baseline(default_aws_config(), args)


"""
    using AWSSDK.SSM.register_patch_baseline_for_patch_group
    register_patch_baseline_for_patch_group([::AWSConfig], arguments::Dict)
    register_patch_baseline_for_patch_group([::AWSConfig]; BaselineId=, PatchGroup=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "RegisterPatchBaselineForPatchGroup", arguments::Dict)
    ssm([::AWSConfig], "RegisterPatchBaselineForPatchGroup", BaselineId=, PatchGroup=)

# RegisterPatchBaselineForPatchGroup Operation

Registers a patch baseline for a patch group.

# Arguments

## `BaselineId = ::String` -- *Required*
The ID of the patch baseline to register the patch group with.


## `PatchGroup = ::String` -- *Required*
The name of the patch group that should be registered with the patch baseline.




# Returns

`RegisterPatchBaselineForPatchGroupResult`

# Exceptions

`AlreadyExistsException`, `DoesNotExistException`, `InvalidResourceId`, `ResourceLimitExceededException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterPatchBaselineForPatchGroup)
"""
@inline register_patch_baseline_for_patch_group(aws::AWSConfig=default_aws_config(); args...) = register_patch_baseline_for_patch_group(aws, args)

@inline register_patch_baseline_for_patch_group(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "RegisterPatchBaselineForPatchGroup", args)

@inline register_patch_baseline_for_patch_group(args) = register_patch_baseline_for_patch_group(default_aws_config(), args)


"""
    using AWSSDK.SSM.register_target_with_maintenance_window
    register_target_with_maintenance_window([::AWSConfig], arguments::Dict)
    register_target_with_maintenance_window([::AWSConfig]; WindowId=, ResourceType=, Targets=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "RegisterTargetWithMaintenanceWindow", arguments::Dict)
    ssm([::AWSConfig], "RegisterTargetWithMaintenanceWindow", WindowId=, ResourceType=, Targets=, <keyword arguments>)

# RegisterTargetWithMaintenanceWindow Operation

Registers a target with a Maintenance Window.

# Arguments

## `WindowId = ::String` -- *Required*
The ID of the Maintenance Window the target should be registered with.


## `ResourceType = "INSTANCE"` -- *Required*
The type of target being registered with the Maintenance Window.


## `Targets = [[ ... ], ...]` -- *Required*
The targets (either instances or tags).

Specify instances using the following format:

`Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>`

Specify tags using either of the following formats:

`Key=tag:<tag-key>,Values=<tag-value-1>,<tag-value-2>`

`Key=tag-key,Values=<tag-key-1>,<tag-key-2>`
```
 Targets = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `OwnerInformation = ::String`
User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.


## `Name = ::String`
An optional name for the target.


## `Description = ::String`
An optional description for the target.


## `ClientToken = ::String`
User-provided idempotency token.




# Returns

`RegisterTargetWithMaintenanceWindowResult`

# Exceptions

`IdempotentParameterMismatch`, `DoesNotExistException`, `ResourceLimitExceededException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterTargetWithMaintenanceWindow)
"""
@inline register_target_with_maintenance_window(aws::AWSConfig=default_aws_config(); args...) = register_target_with_maintenance_window(aws, args)

@inline register_target_with_maintenance_window(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "RegisterTargetWithMaintenanceWindow", args)

@inline register_target_with_maintenance_window(args) = register_target_with_maintenance_window(default_aws_config(), args)


"""
    using AWSSDK.SSM.register_task_with_maintenance_window
    register_task_with_maintenance_window([::AWSConfig], arguments::Dict)
    register_task_with_maintenance_window([::AWSConfig]; WindowId=, Targets=, TaskArn=, ServiceRoleArn=, TaskType=, MaxConcurrency=, MaxErrors=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "RegisterTaskWithMaintenanceWindow", arguments::Dict)
    ssm([::AWSConfig], "RegisterTaskWithMaintenanceWindow", WindowId=, Targets=, TaskArn=, ServiceRoleArn=, TaskType=, MaxConcurrency=, MaxErrors=, <keyword arguments>)

# RegisterTaskWithMaintenanceWindow Operation

Adds a new task to a Maintenance Window.

# Arguments

## `WindowId = ::String` -- *Required*
The ID of the Maintenance Window the task should be added to.


## `Targets = [[ ... ], ...]` -- *Required*
The targets (either instances or Maintenance Window targets).

Specify instances using the following format:

`Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>`

Specify Maintenance Window targets using the following format:

`Key=<WindowTargetIds>,Values=<window-target-id-1>,<window-target-id-2>`
```
 Targets = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `TaskArn = ::String` -- *Required*
The ARN of the task to execute


## `ServiceRoleArn = ::String` -- *Required*
The role that should be assumed when executing the task.


## `TaskType = "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS" or "LAMBDA"` -- *Required*
The type of task being registered.


## `TaskParameters = ::Dict{String,String}`
The parameters that should be passed to the task when it is executed.

**Note**
> `TaskParameters` has been deprecated. To specify parameters to pass to a task when it runs, instead use the `Parameters` option in the `TaskInvocationParameters` structure. For information about how Systems Manager handles these options for the supported Maintenance Window task types, see [MaintenanceWindowTaskInvocationParameters](@ref).


## `TaskInvocationParameters = [ ... ]`
The parameters that the task should use during execution. Populate only the fields that match the task type. All other fields should be empty.
```
 TaskInvocationParameters = [
        "RunCommand" =>  [
            "Comment" =>  ::String,
            "DocumentHash" =>  ::String,
            "DocumentHashType" =>  "Sha256" or "Sha1",
            "NotificationConfig" =>  [
                "NotificationArn" =>  ::String,
                "NotificationEvents" =>  ["All", "InProgress", "Success", "TimedOut", "Cancelled" or "Failed", ...],
                "NotificationType" =>  "Command" or "Invocation"
            ],
            "OutputS3BucketName" =>  ::String,
            "OutputS3KeyPrefix" =>  ::String,
            "Parameters" =>  ::Dict{String,String},
            "ServiceRoleArn" =>  ::String,
            "TimeoutSeconds" =>  ::Int
        ],
        "Automation" =>  [
            "DocumentVersion" =>  ::String,
            "Parameters" =>  ::Dict{String,String}
        ],
        "StepFunctions" =>  [
            "Input" =>  ::String,
            "Name" =>  ::String
        ],
        "Lambda" =>  [
            "ClientContext" =>  ::String,
            "Qualifier" =>  ::String,
            "Payload" =>  blob
        ]
    ]
```

## `Priority = ::Int`
The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel.


## `MaxConcurrency = ::String` -- *Required*
The maximum number of targets this task can be run for in parallel.


## `MaxErrors = ::String` -- *Required*
The maximum number of errors allowed before this task stops being scheduled.


## `LoggingInfo = [ ... ]`
A structure containing information about an Amazon S3 bucket to write instance-level logs to.

**Note**
> `LoggingInfo` has been deprecated. To specify an S3 bucket to contain logs, instead use the `OutputS3BucketName` and `OutputS3KeyPrefix` options in the `TaskInvocationParameters` structure. For information about how Systems Manager handles these options for the supported Maintenance Window task types, see [MaintenanceWindowTaskInvocationParameters](@ref).
```
 LoggingInfo = [
        "S3BucketName" => <required> ::String,
        "S3KeyPrefix" =>  ::String,
        "S3Region" => <required> ::String
    ]
```

## `Name = ::String`
An optional name for the task.


## `Description = ::String`
An optional description for the task.


## `ClientToken = ::String`
User-provided idempotency token.




# Returns

`RegisterTaskWithMaintenanceWindowResult`

# Exceptions

`IdempotentParameterMismatch`, `DoesNotExistException`, `ResourceLimitExceededException`, `FeatureNotAvailableException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterTaskWithMaintenanceWindow)
"""
@inline register_task_with_maintenance_window(aws::AWSConfig=default_aws_config(); args...) = register_task_with_maintenance_window(aws, args)

@inline register_task_with_maintenance_window(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "RegisterTaskWithMaintenanceWindow", args)

@inline register_task_with_maintenance_window(args) = register_task_with_maintenance_window(default_aws_config(), args)


"""
    using AWSSDK.SSM.remove_tags_from_resource
    remove_tags_from_resource([::AWSConfig], arguments::Dict)
    remove_tags_from_resource([::AWSConfig]; ResourceType=, ResourceId=, TagKeys=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "RemoveTagsFromResource", arguments::Dict)
    ssm([::AWSConfig], "RemoveTagsFromResource", ResourceType=, ResourceId=, TagKeys=)

# RemoveTagsFromResource Operation

Removes all tags from the specified resource.

# Arguments

## `ResourceType = "Document", "ManagedInstance", "MaintenanceWindow", "Parameter" or "PatchBaseline"` -- *Required*
The type of resource of which you want to remove a tag.

**Note**
> The ManagedInstance type for this API action is only for on-premises managed instances. You must specify the the name of the managed instance in the following format: mi-ID_number. For example, mi-1a2b3c4d5e6f.


## `ResourceId = ::String` -- *Required*
The resource ID for which you want to remove tags. Use the ID of the resource. Here are some examples:

ManagedInstance: mi-012345abcde

MaintenanceWindow: mw-012345abcde

PatchBaseline: pb-012345abcde

For the Document and Parameter values, use the name of the resource.

**Note**
> The ManagedInstance type for this API action is only for on-premises managed instances. You must specify the the name of the managed instance in the following format: mi-ID_number. For example, mi-1a2b3c4d5e6f.


## `TagKeys = [::String, ...]` -- *Required*
Tag keys that you want to remove from the specified resource.




# Returns

`RemoveTagsFromResourceResult`

# Exceptions

`InvalidResourceType`, `InvalidResourceId`, `InternalServerError` or `TooManyUpdates`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RemoveTagsFromResource)
"""
@inline remove_tags_from_resource(aws::AWSConfig=default_aws_config(); args...) = remove_tags_from_resource(aws, args)

@inline remove_tags_from_resource(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "RemoveTagsFromResource", args)

@inline remove_tags_from_resource(args) = remove_tags_from_resource(default_aws_config(), args)


"""
    using AWSSDK.SSM.send_automation_signal
    send_automation_signal([::AWSConfig], arguments::Dict)
    send_automation_signal([::AWSConfig]; AutomationExecutionId=, SignalType=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "SendAutomationSignal", arguments::Dict)
    ssm([::AWSConfig], "SendAutomationSignal", AutomationExecutionId=, SignalType=, <keyword arguments>)

# SendAutomationSignal Operation

Sends a signal to an Automation execution to change the current behavior or status of the execution.

# Arguments

## `AutomationExecutionId = ::String` -- *Required*
The unique identifier for an existing Automation execution that you want to send the signal to.


## `SignalType = "Approve", "Reject", "StartStep", "StopStep" or "Resume"` -- *Required*
The type of signal. Valid signal types include the following: Approve and Reject


## `Payload = ::Dict{String,String}`
The data sent with the signal. The data schema depends on the type of signal used in the request.




# Returns

`SendAutomationSignalResult`

# Exceptions

`AutomationExecutionNotFoundException`, `AutomationStepNotFoundException`, `InvalidAutomationSignalException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SendAutomationSignal)
"""
@inline send_automation_signal(aws::AWSConfig=default_aws_config(); args...) = send_automation_signal(aws, args)

@inline send_automation_signal(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "SendAutomationSignal", args)

@inline send_automation_signal(args) = send_automation_signal(default_aws_config(), args)


"""
    using AWSSDK.SSM.send_command
    send_command([::AWSConfig], arguments::Dict)
    send_command([::AWSConfig]; DocumentName=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "SendCommand", arguments::Dict)
    ssm([::AWSConfig], "SendCommand", DocumentName=, <keyword arguments>)

# SendCommand Operation

Executes commands on one or more managed instances.

# Arguments

## `InstanceIds = [::String, ...]`
The instance IDs where the command should execute. You can specify a maximum of 50 IDs. If you prefer not to list individual instance IDs, you can instead send commands to a fleet of instances using the Targets parameter, which accepts EC2 tags. For more information about how to use Targets, see [Sending Commands to a Fleet](http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html) in the *AWS Systems Manager User Guide*.


## `Targets = [[ ... ], ...]`
(Optional) An array of search criteria that targets instances using a Key,Value combination that you specify. Targets is required if you don't provide one or more instance IDs in the call. For more information about how to use Targets, see [Sending Commands to a Fleet](http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html) in the *AWS Systems Manager User Guide*.
```
 Targets = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `DocumentName = ::String` -- *Required*
Required. The name of the Systems Manager document to execute. This can be a public document or a custom document.


## `DocumentVersion = ::String`
The SSM document version to use in the request. You can specify \$DEFAULT, \$LATEST, or a specific version number. If you execute commands by using the AWS CLI, then you must escape the first two options by using a backslash. If you specify a version number, then you don't need to use the backslash. For example:

--document-version "\\\$DEFAULT"

--document-version "\\\$LATEST"

--document-version "3"


## `DocumentHash = ::String`
The Sha256 or Sha1 hash created by the system when the document was created.

**Note**
> Sha1 hashes have been deprecated.


## `DocumentHashType = "Sha256" or "Sha1"`
Sha256 or Sha1.

**Note**
> Sha1 hashes have been deprecated.


## `TimeoutSeconds = ::Int`
If this time is reached and the command has not already started executing, it will not run.


## `Comment = ::String`
User-specified information about the command, such as a brief description of what the command should do.


## `Parameters = ::Dict{String,String}`
The required and optional parameters specified in the document being executed.


## `OutputS3Region = ::String`
(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Amazon S3 bucket region.


## `OutputS3BucketName = ::String`
The name of the S3 bucket where command execution responses should be stored.


## `OutputS3KeyPrefix = ::String`
The directory structure within the S3 bucket where the responses should be stored.


## `MaxConcurrency = ::String`
(Optional) The maximum number of instances that are allowed to execute the command at the same time. You can specify a number such as 10 or a percentage such as 10%. The default value is 50. For more information about how to use MaxConcurrency, see [Using Concurrency Controls](http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity) in the *AWS Systems Manager User Guide*.


## `MaxErrors = ::String`
The maximum number of errors allowed without the command failing. When the command fails one more time beyond the value of MaxErrors, the systems stops sending the command to additional targets. You can specify a number like 10 or a percentage like 10%. The default value is 0. For more information about how to use MaxErrors, see [Using Error Controls](http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors) in the *AWS Systems Manager User Guide*.


## `ServiceRoleArn = ::String`
The IAM role that Systems Manager uses to send notifications.


## `NotificationConfig = [ ... ]`
Configurations for sending notifications.
```
 NotificationConfig = [
        "NotificationArn" =>  ::String,
        "NotificationEvents" =>  ["All", "InProgress", "Success", "TimedOut", "Cancelled" or "Failed", ...],
        "NotificationType" =>  "Command" or "Invocation"
    ]
```

## `CloudWatchOutputConfig = [ ... ]`
Enables Systems Manager to send Run Command output to Amazon CloudWatch Logs.
```
 CloudWatchOutputConfig = [
        "CloudWatchLogGroupName" =>  ::String,
        "CloudWatchOutputEnabled" =>  ::Bool
    ]
```



# Returns

`SendCommandResult`

# Exceptions

`DuplicateInstanceId`, `InternalServerError`, `InvalidInstanceId`, `InvalidDocument`, `InvalidDocumentVersion`, `InvalidOutputFolder`, `InvalidParameters`, `UnsupportedPlatformType`, `MaxDocumentSizeExceeded`, `InvalidRole` or `InvalidNotificationConfig`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SendCommand)
"""
@inline send_command(aws::AWSConfig=default_aws_config(); args...) = send_command(aws, args)

@inline send_command(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "SendCommand", args)

@inline send_command(args) = send_command(default_aws_config(), args)


"""
    using AWSSDK.SSM.start_associations_once
    start_associations_once([::AWSConfig], arguments::Dict)
    start_associations_once([::AWSConfig]; AssociationIds=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "StartAssociationsOnce", arguments::Dict)
    ssm([::AWSConfig], "StartAssociationsOnce", AssociationIds=)

# StartAssociationsOnce Operation

Use this API action to execute an association immediately and only one time. This action can be helpful when troubleshooting associations.

# Arguments

## `AssociationIds = [::String, ...]` -- *Required*
The association IDs that you want to execute immediately and only one time.




# Returns

`StartAssociationsOnceResult`

# Exceptions

`InvalidAssociation` or `AssociationDoesNotExist`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAssociationsOnce)
"""
@inline start_associations_once(aws::AWSConfig=default_aws_config(); args...) = start_associations_once(aws, args)

@inline start_associations_once(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "StartAssociationsOnce", args)

@inline start_associations_once(args) = start_associations_once(default_aws_config(), args)


"""
    using AWSSDK.SSM.start_automation_execution
    start_automation_execution([::AWSConfig], arguments::Dict)
    start_automation_execution([::AWSConfig]; DocumentName=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "StartAutomationExecution", arguments::Dict)
    ssm([::AWSConfig], "StartAutomationExecution", DocumentName=, <keyword arguments>)

# StartAutomationExecution Operation

Initiates execution of an Automation document.

# Arguments

## `DocumentName = ::String` -- *Required*
The name of the Automation document to use for this execution.


## `DocumentVersion = ::String`
The version of the Automation document to use for this execution.


## `Parameters = ::Dict{String,String}`
A key-value map of execution parameters, which match the declared parameters in the Automation document.


## `ClientToken = ::String`
User-provided idempotency token. The token must be unique, is case insensitive, enforces the UUID format, and can't be reused.


## `Mode = "Auto" or "Interactive"`
The execution mode of the automation. Valid modes include the following: Auto and Interactive. The default mode is Auto.


## `TargetParameterName = ::String`
The name of the parameter used as the target resource for the rate-controlled execution. Required if you specify Targets.


## `Targets = [[ ... ], ...]`
A key-value mapping to target resources. Required if you specify TargetParameterName.
```
 Targets = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `MaxConcurrency = ::String`
The maximum number of targets allowed to run this task in parallel. You can specify a number, such as 10, or a percentage, such as 10%. The default value is 10.


## `MaxErrors = ::String`
The number of errors that are allowed before the system stops running the automation on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops running the automation when the fourth error is received. If you specify 0, then the system stops running the automation on additional targets after the first error result is returned. If you run an automation on 50 resources and set max-errors to 10%, then the system stops running the automation on additional targets when the sixth error is received.

Executions that are already running an automation when max-errors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set max-concurrency to 1 so the executions proceed one at a time.




# Returns

`StartAutomationExecutionResult`

# Exceptions

`AutomationDefinitionNotFoundException`, `InvalidAutomationExecutionParametersException`, `AutomationExecutionLimitExceededException`, `AutomationDefinitionVersionNotFoundException`, `IdempotentParameterMismatch`, `InvalidTarget` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAutomationExecution)
"""
@inline start_automation_execution(aws::AWSConfig=default_aws_config(); args...) = start_automation_execution(aws, args)

@inline start_automation_execution(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "StartAutomationExecution", args)

@inline start_automation_execution(args) = start_automation_execution(default_aws_config(), args)


"""
    using AWSSDK.SSM.stop_automation_execution
    stop_automation_execution([::AWSConfig], arguments::Dict)
    stop_automation_execution([::AWSConfig]; AutomationExecutionId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "StopAutomationExecution", arguments::Dict)
    ssm([::AWSConfig], "StopAutomationExecution", AutomationExecutionId=, <keyword arguments>)

# StopAutomationExecution Operation

Stop an Automation that is currently executing.

# Arguments

## `AutomationExecutionId = ::String` -- *Required*
The execution ID of the Automation to stop.


## `Type = "Complete" or "Cancel"`
The stop request type. Valid types include the following: Cancel and Complete. The default type is Cancel.




# Returns

`StopAutomationExecutionResult`

# Exceptions

`AutomationExecutionNotFoundException`, `InvalidAutomationStatusUpdateException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StopAutomationExecution)
"""
@inline stop_automation_execution(aws::AWSConfig=default_aws_config(); args...) = stop_automation_execution(aws, args)

@inline stop_automation_execution(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "StopAutomationExecution", args)

@inline stop_automation_execution(args) = stop_automation_execution(default_aws_config(), args)


"""
    using AWSSDK.SSM.update_association
    update_association([::AWSConfig], arguments::Dict)
    update_association([::AWSConfig]; AssociationId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "UpdateAssociation", arguments::Dict)
    ssm([::AWSConfig], "UpdateAssociation", AssociationId=, <keyword arguments>)

# UpdateAssociation Operation

Updates an association. You can update the association name and version, the document version, schedule, parameters, and Amazon S3 output.

# Arguments

## `AssociationId = ::String` -- *Required*
The ID of the association you want to update.


## `Parameters = ::Dict{String,String}`
The parameters you want to update for the association. If you create a parameter using Parameter Store, you can reference the parameter using {{ssm:parameter-name}}


## `DocumentVersion = ::String`
The document version you want update for the association.


## `ScheduleExpression = ::String`
The cron expression used to schedule the association that you want to update.


## `OutputLocation = ["S3Location" =>  [ ... ]]`
An Amazon S3 bucket where you want to store the results of this request.
```
 OutputLocation = ["S3Location" =>  [
            "OutputS3Region" =>  ::String,
            "OutputS3BucketName" =>  ::String,
            "OutputS3KeyPrefix" =>  ::String
        ]]
```

## `Name = ::String`
The name of the association document.


## `Targets = [[ ... ], ...]`
The targets of the association.
```
 Targets = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `AssociationName = ::String`
The name of the association that you want to update.


## `AssociationVersion = ::String`
This parameter is provided for concurrency control purposes. You must specify the latest association version in the service. If you want to ensure that this request succeeds, either specify `\$LATEST`, or omit this parameter.




# Returns

`UpdateAssociationResult`

# Exceptions

`InternalServerError`, `InvalidSchedule`, `InvalidParameters`, `InvalidOutputLocation`, `InvalidDocumentVersion`, `AssociationDoesNotExist`, `InvalidUpdate`, `TooManyUpdates`, `InvalidDocument`, `InvalidTarget`, `InvalidAssociationVersion` or `AssociationVersionLimitExceeded`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateAssociation)
"""
@inline update_association(aws::AWSConfig=default_aws_config(); args...) = update_association(aws, args)

@inline update_association(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "UpdateAssociation", args)

@inline update_association(args) = update_association(default_aws_config(), args)


"""
    using AWSSDK.SSM.update_association_status
    update_association_status([::AWSConfig], arguments::Dict)
    update_association_status([::AWSConfig]; Name=, InstanceId=, AssociationStatus=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "UpdateAssociationStatus", arguments::Dict)
    ssm([::AWSConfig], "UpdateAssociationStatus", Name=, InstanceId=, AssociationStatus=)

# UpdateAssociationStatus Operation

Updates the status of the Systems Manager document associated with the specified instance.

# Arguments

## `Name = ::String` -- *Required*
The name of the Systems Manager document.


## `InstanceId = ::String` -- *Required*
The ID of the instance.


## `AssociationStatus = [ ... ]` -- *Required*
The association status.
```
 AssociationStatus = [
        "Date" => <required> timestamp,
        "Name" => <required> "Pending", "Success" or "Failed",
        "Message" => <required> ::String,
        "AdditionalInfo" =>  ::String
    ]
```



# Returns

`UpdateAssociationStatusResult`

# Exceptions

`InternalServerError`, `InvalidInstanceId`, `InvalidDocument`, `AssociationDoesNotExist`, `StatusUnchanged` or `TooManyUpdates`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateAssociationStatus)
"""
@inline update_association_status(aws::AWSConfig=default_aws_config(); args...) = update_association_status(aws, args)

@inline update_association_status(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "UpdateAssociationStatus", args)

@inline update_association_status(args) = update_association_status(default_aws_config(), args)


"""
    using AWSSDK.SSM.update_document
    update_document([::AWSConfig], arguments::Dict)
    update_document([::AWSConfig]; Content=, Name=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "UpdateDocument", arguments::Dict)
    ssm([::AWSConfig], "UpdateDocument", Content=, Name=, <keyword arguments>)

# UpdateDocument Operation

The document you want to update.

# Arguments

## `Content = ::String` -- *Required*
The content in a document that you want to update.


## `Name = ::String` -- *Required*
The name of the document that you want to update.


## `DocumentVersion = ::String`
The version of the document that you want to update.


## `DocumentFormat = "YAML" or "JSON"`
Specify the document format for the new document version. Systems Manager supports JSON and YAML documents. JSON is the default format.


## `TargetType = ::String`
Specify a new target type for the document.




# Returns

`UpdateDocumentResult`

# Exceptions

`MaxDocumentSizeExceeded`, `DocumentVersionLimitExceeded`, `InternalServerError`, `DuplicateDocumentContent`, `InvalidDocumentContent`, `InvalidDocumentVersion`, `InvalidDocumentSchemaVersion` or `InvalidDocument`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocument)
"""
@inline update_document(aws::AWSConfig=default_aws_config(); args...) = update_document(aws, args)

@inline update_document(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "UpdateDocument", args)

@inline update_document(args) = update_document(default_aws_config(), args)


"""
    using AWSSDK.SSM.update_document_default_version
    update_document_default_version([::AWSConfig], arguments::Dict)
    update_document_default_version([::AWSConfig]; Name=, DocumentVersion=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "UpdateDocumentDefaultVersion", arguments::Dict)
    ssm([::AWSConfig], "UpdateDocumentDefaultVersion", Name=, DocumentVersion=)

# UpdateDocumentDefaultVersion Operation

Set the default version of a document.

# Arguments

## `Name = ::String` -- *Required*
The name of a custom document that you want to set as the default version.


## `DocumentVersion = ::String` -- *Required*
The version of a custom document that you want to set as the default version.




# Returns

`UpdateDocumentDefaultVersionResult`

# Exceptions

`InternalServerError`, `InvalidDocument`, `InvalidDocumentVersion` or `InvalidDocumentSchemaVersion`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocumentDefaultVersion)
"""
@inline update_document_default_version(aws::AWSConfig=default_aws_config(); args...) = update_document_default_version(aws, args)

@inline update_document_default_version(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "UpdateDocumentDefaultVersion", args)

@inline update_document_default_version(args) = update_document_default_version(default_aws_config(), args)


"""
    using AWSSDK.SSM.update_maintenance_window
    update_maintenance_window([::AWSConfig], arguments::Dict)
    update_maintenance_window([::AWSConfig]; WindowId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "UpdateMaintenanceWindow", arguments::Dict)
    ssm([::AWSConfig], "UpdateMaintenanceWindow", WindowId=, <keyword arguments>)

# UpdateMaintenanceWindow Operation

Updates an existing Maintenance Window. Only specified parameters are modified.

# Arguments

## `WindowId = ::String` -- *Required*
The ID of the Maintenance Window to update.


## `Name = ::String`
The name of the Maintenance Window.


## `Description = ::String`
An optional description for the update request.


## `Schedule = ::String`
The schedule of the Maintenance Window in the form of a cron or rate expression.


## `Duration = ::Int`
The duration of the Maintenance Window in hours.


## `Cutoff = ::Int`
The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.


## `AllowUnassociatedTargets = ::Bool`
Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.


## `Enabled = ::Bool`
Whether the Maintenance Window is enabled.


## `Replace = ::Bool`
If True, then all fields that are required by the CreateMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.




# Returns

`UpdateMaintenanceWindowResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindow)
"""
@inline update_maintenance_window(aws::AWSConfig=default_aws_config(); args...) = update_maintenance_window(aws, args)

@inline update_maintenance_window(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "UpdateMaintenanceWindow", args)

@inline update_maintenance_window(args) = update_maintenance_window(default_aws_config(), args)


"""
    using AWSSDK.SSM.update_maintenance_window_target
    update_maintenance_window_target([::AWSConfig], arguments::Dict)
    update_maintenance_window_target([::AWSConfig]; WindowId=, WindowTargetId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "UpdateMaintenanceWindowTarget", arguments::Dict)
    ssm([::AWSConfig], "UpdateMaintenanceWindowTarget", WindowId=, WindowTargetId=, <keyword arguments>)

# UpdateMaintenanceWindowTarget Operation

Modifies the target of an existing Maintenance Window. You can't change the target type, but you can change the following:

The target from being an ID target to a Tag target, or a Tag target to an ID target.

IDs for an ID target.

Tags for a Tag target.

Owner.

Name.

Description.

If a parameter is null, then the corresponding field is not modified.

# Arguments

## `WindowId = ::String` -- *Required*
The Maintenance Window ID with which to modify the target.


## `WindowTargetId = ::String` -- *Required*
The target ID to modify.


## `Targets = [[ ... ], ...]`
The targets to add or replace.
```
 Targets = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `OwnerInformation = ::String`
User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.


## `Name = ::String`
A name for the update.


## `Description = ::String`
An optional description for the update.


## `Replace = ::Bool`
If True, then all fields that are required by the RegisterTargetWithMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.




# Returns

`UpdateMaintenanceWindowTargetResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowTarget)
"""
@inline update_maintenance_window_target(aws::AWSConfig=default_aws_config(); args...) = update_maintenance_window_target(aws, args)

@inline update_maintenance_window_target(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "UpdateMaintenanceWindowTarget", args)

@inline update_maintenance_window_target(args) = update_maintenance_window_target(default_aws_config(), args)


"""
    using AWSSDK.SSM.update_maintenance_window_task
    update_maintenance_window_task([::AWSConfig], arguments::Dict)
    update_maintenance_window_task([::AWSConfig]; WindowId=, WindowTaskId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "UpdateMaintenanceWindowTask", arguments::Dict)
    ssm([::AWSConfig], "UpdateMaintenanceWindowTask", WindowId=, WindowTaskId=, <keyword arguments>)

# UpdateMaintenanceWindowTask Operation

Modifies a task assigned to a Maintenance Window. You can't change the task type, but you can change the following values:

*   TaskARN. For example, you can change a RUN_COMMAND task from AWS-RunPowerShellScript to AWS-RunShellScript.

*   ServiceRoleArn

*   TaskInvocationParameters

*   Priority

*   MaxConcurrency

*   MaxErrors

If a parameter is null, then the corresponding field is not modified. Also, if you set Replace to true, then all fields required by the [RegisterTaskWithMaintenanceWindow](@ref) action are required for this request. Optional fields that aren't specified are set to null.

# Arguments

## `WindowId = ::String` -- *Required*
The Maintenance Window ID that contains the task to modify.


## `WindowTaskId = ::String` -- *Required*
The task ID to modify.


## `Targets = [[ ... ], ...]`
The targets (either instances or tags) to modify. Instances are specified using Key=instanceids,Values=instanceID_1,instanceID_2. Tags are specified using Key=tag_name,Values=tag_value.
```
 Targets = [[
        "Key" =>  ::String,
        "Values" =>  [::String, ...]
    ], ...]
```

## `TaskArn = ::String`
The task ARN to modify.


## `ServiceRoleArn = ::String`
The IAM service role ARN to modify. The system assumes this role during task execution.


## `TaskParameters = ::Dict{String,String}`
The parameters to modify.

**Note**
> `TaskParameters` has been deprecated. To specify parameters to pass to a task when it runs, instead use the `Parameters` option in the `TaskInvocationParameters` structure. For information about how Systems Manager handles these options for the supported Maintenance Window task types, see [MaintenanceWindowTaskInvocationParameters](@ref).

The map has the following format:

Key: string, between 1 and 255 characters

Value: an array of strings, each string is between 1 and 255 characters


## `TaskInvocationParameters = [ ... ]`
The parameters that the task should use during execution. Populate only the fields that match the task type. All other fields should be empty.
```
 TaskInvocationParameters = [
        "RunCommand" =>  [
            "Comment" =>  ::String,
            "DocumentHash" =>  ::String,
            "DocumentHashType" =>  "Sha256" or "Sha1",
            "NotificationConfig" =>  [
                "NotificationArn" =>  ::String,
                "NotificationEvents" =>  ["All", "InProgress", "Success", "TimedOut", "Cancelled" or "Failed", ...],
                "NotificationType" =>  "Command" or "Invocation"
            ],
            "OutputS3BucketName" =>  ::String,
            "OutputS3KeyPrefix" =>  ::String,
            "Parameters" =>  ::Dict{String,String},
            "ServiceRoleArn" =>  ::String,
            "TimeoutSeconds" =>  ::Int
        ],
        "Automation" =>  [
            "DocumentVersion" =>  ::String,
            "Parameters" =>  ::Dict{String,String}
        ],
        "StepFunctions" =>  [
            "Input" =>  ::String,
            "Name" =>  ::String
        ],
        "Lambda" =>  [
            "ClientContext" =>  ::String,
            "Qualifier" =>  ::String,
            "Payload" =>  blob
        ]
    ]
```

## `Priority = ::Int`
The new task priority to specify. The lower the number, the higher the priority. Tasks that have the same priority are scheduled in parallel.


## `MaxConcurrency = ::String`
The new `MaxConcurrency` value you want to specify. `MaxConcurrency` is the number of targets that are allowed to run this task in parallel.


## `MaxErrors = ::String`
The new `MaxErrors` value to specify. `MaxErrors` is the maximum number of errors that are allowed before the task stops being scheduled.


## `LoggingInfo = [ ... ]`
The new logging location in Amazon S3 to specify.

**Note**
> `LoggingInfo` has been deprecated. To specify an S3 bucket to contain logs, instead use the `OutputS3BucketName` and `OutputS3KeyPrefix` options in the `TaskInvocationParameters` structure. For information about how Systems Manager handles these options for the supported Maintenance Window task types, see [MaintenanceWindowTaskInvocationParameters](@ref).
```
 LoggingInfo = [
        "S3BucketName" => <required> ::String,
        "S3KeyPrefix" =>  ::String,
        "S3Region" => <required> ::String
    ]
```

## `Name = ::String`
The new task name to specify.


## `Description = ::String`
The new task description to specify.


## `Replace = ::Bool`
If True, then all fields that are required by the RegisterTaskWithMaintenanceWndow action are also required for this API request. Optional fields that are not specified are set to null.




# Returns

`UpdateMaintenanceWindowTaskResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowTask)
"""
@inline update_maintenance_window_task(aws::AWSConfig=default_aws_config(); args...) = update_maintenance_window_task(aws, args)

@inline update_maintenance_window_task(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "UpdateMaintenanceWindowTask", args)

@inline update_maintenance_window_task(args) = update_maintenance_window_task(default_aws_config(), args)


"""
    using AWSSDK.SSM.update_managed_instance_role
    update_managed_instance_role([::AWSConfig], arguments::Dict)
    update_managed_instance_role([::AWSConfig]; InstanceId=, IamRole=)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "UpdateManagedInstanceRole", arguments::Dict)
    ssm([::AWSConfig], "UpdateManagedInstanceRole", InstanceId=, IamRole=)

# UpdateManagedInstanceRole Operation

Assigns or changes an Amazon Identity and Access Management (IAM) role to the managed instance.

# Arguments

## `InstanceId = ::String` -- *Required*
The ID of the managed instance where you want to update the role.


## `IamRole = ::String` -- *Required*
The IAM role you want to assign or change.




# Returns

`UpdateManagedInstanceRoleResult`

# Exceptions

`InvalidInstanceId` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateManagedInstanceRole)
"""
@inline update_managed_instance_role(aws::AWSConfig=default_aws_config(); args...) = update_managed_instance_role(aws, args)

@inline update_managed_instance_role(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "UpdateManagedInstanceRole", args)

@inline update_managed_instance_role(args) = update_managed_instance_role(default_aws_config(), args)


"""
    using AWSSDK.SSM.update_patch_baseline
    update_patch_baseline([::AWSConfig], arguments::Dict)
    update_patch_baseline([::AWSConfig]; BaselineId=, <keyword arguments>)

    using AWSCore.Services.ssm
    ssm([::AWSConfig], "UpdatePatchBaseline", arguments::Dict)
    ssm([::AWSConfig], "UpdatePatchBaseline", BaselineId=, <keyword arguments>)

# UpdatePatchBaseline Operation

Modifies an existing patch baseline. Fields not specified in the request are left unchanged.

**Note**
> For information about valid key and value pairs in `PatchFilters` for each supported operating system type, see [PatchFilter](http://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html).

# Arguments

## `BaselineId = ::String` -- *Required*
The ID of the patch baseline to update.


## `Name = ::String`
The name of the patch baseline.


## `GlobalFilters = ["PatchFilters" => <required> [[ ... ], ...]]`
A set of global filters used to exclude patches from the baseline.
```
 GlobalFilters = ["PatchFilters" => <required> [[
            "Key" => <required> "PRODUCT", "CLASSIFICATION", "MSRC_SEVERITY", "PATCH_ID", "SECTION", "PRIORITY" or "SEVERITY",
            "Values" => <required> [::String, ...]
        ], ...]]
```

## `ApprovalRules = ["PatchRules" => <required> [[ ... ], ...]]`
A set of rules used to include patches in the baseline.
```
 ApprovalRules = ["PatchRules" => <required> [[
            "PatchFilterGroup" => <required> ["PatchFilters" => <required> [[
                    "Key" => <required> "PRODUCT", "CLASSIFICATION", "MSRC_SEVERITY", "PATCH_ID", "SECTION", "PRIORITY" or "SEVERITY",
                    "Values" => <required> [::String, ...]
                ], ...]],
            "ComplianceLevel" =>  "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL" or "UNSPECIFIED",
            "ApproveAfterDays" => <required> ::Int,
            "EnableNonSecurity" =>  ::Bool
        ], ...]]
```

## `ApprovedPatches = [::String, ...]`
A list of explicitly approved patches for the baseline.

For information about accepted formats for lists of approved patches and rejected patches, see [Package Name Formats for Approved and Rejected Patch Lists](http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html) in the *AWS Systems Manager User Guide*.


## `ApprovedPatchesComplianceLevel = "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL" or "UNSPECIFIED"`
Assigns a new compliance severity level to an existing patch baseline.


## `ApprovedPatchesEnableNonSecurity = ::Bool`
Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.


## `RejectedPatches = [::String, ...]`
A list of explicitly rejected patches for the baseline.

For information about accepted formats for lists of approved patches and rejected patches, see [Package Name Formats for Approved and Rejected Patch Lists](http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html) in the *AWS Systems Manager User Guide*.


## `Description = ::String`
A description of the patch baseline.


## `Sources = [[ ... ], ...]`
Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.
```
 Sources = [[
        "Name" => <required> ::String,
        "Products" => <required> [::String, ...],
        "Configuration" => <required> ::String
    ], ...]
```

## `Replace = ::Bool`
If True, then all fields that are required by the CreatePatchBaseline action are also required for this API request. Optional fields that are not specified are set to null.




# Returns

`UpdatePatchBaselineResult`

# Exceptions

`DoesNotExistException` or `InternalServerError`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdatePatchBaseline)
"""
@inline update_patch_baseline(aws::AWSConfig=default_aws_config(); args...) = update_patch_baseline(aws, args)

@inline update_patch_baseline(aws::AWSConfig, args) = AWSCore.Services.ssm(aws, "UpdatePatchBaseline", args)

@inline update_patch_baseline(args) = update_patch_baseline(default_aws_config(), args)




end # module SSM


#==============================================================================#
# End of file
#==============================================================================#
