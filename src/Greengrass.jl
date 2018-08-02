#==============================================================================#
# Greengrass.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/greengrass-2017-06-07.normal.json
#==============================================================================#

__precompile__()

module Greengrass

using AWSCore


"""
    using AWSSDK.Greengrass.associate_role_to_group
    associate_role_to_group([::AWSConfig], arguments::Dict)
    associate_role_to_group([::AWSConfig]; GroupId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "PUT", "/greengrass/groups/{GroupId}/role", arguments::Dict)
    greengrass([::AWSConfig], "PUT", "/greengrass/groups/{GroupId}/role", GroupId=, <keyword arguments>)

# AssociateRoleToGroup Operation

Associates a role with a group. Your AWS Greengrass core will use the role to access AWS cloud services. The role's permissions should allow Greengrass core Lambda functions to perform actions against the cloud.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.


## `RoleArn = ::String`
The ARN of the role you wish to associate with this group.




# Returns

`AssociateRoleToGroupResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/AssociateRoleToGroup)
"""
@inline associate_role_to_group(aws::AWSConfig=default_aws_config(); args...) = associate_role_to_group(aws, args)

@inline associate_role_to_group(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "PUT", "/greengrass/groups/{GroupId}/role", args)

@inline associate_role_to_group(args) = associate_role_to_group(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.associate_service_role_to_account
    associate_service_role_to_account([::AWSConfig], arguments::Dict)
    associate_service_role_to_account([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "PUT", "/greengrass/servicerole", arguments::Dict)
    greengrass([::AWSConfig], "PUT", "/greengrass/servicerole", <keyword arguments>)

# AssociateServiceRoleToAccount Operation

Associates a role with your account. AWS Greengrass will use the role to access your Lambda functions and AWS IoT resources. This is necessary for deployments to succeed. The role must have at least minimum permissions in the policy ''AWSGreengrassResourceAccessRolePolicy''.

# Arguments

## `RoleArn = ::String`
The ARN of the service role you wish to associate with your account.




# Returns

`AssociateServiceRoleToAccountResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/AssociateServiceRoleToAccount)
"""
@inline associate_service_role_to_account(aws::AWSConfig=default_aws_config(); args...) = associate_service_role_to_account(aws, args)

@inline associate_service_role_to_account(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "PUT", "/greengrass/servicerole", args)

@inline associate_service_role_to_account(args) = associate_service_role_to_account(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_core_definition
    create_core_definition([::AWSConfig], arguments::Dict)
    create_core_definition([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/definition/cores", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/definition/cores", <keyword arguments>)

# CreateCoreDefinition Operation

Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. AWS Greengrass groups must each contain exactly one AWS Greengrass core.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `InitialVersion = ["Cores" =>  [[ ... ], ...]]`
Information about the initial version of the core definition.
```
 InitialVersion = ["Cores" =>  [[
            "CertificateArn" =>  ::String,
            "Id" =>  ::String,
            "SyncShadow" =>  ::Bool,
            "ThingArn" =>  ::String
        ], ...]]
```

## `Name = ::String`
The name of the core definition.




# Returns

`CreateCoreDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateCoreDefinition)
"""
@inline create_core_definition(aws::AWSConfig=default_aws_config(); args...) = create_core_definition(aws, args)

@inline create_core_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/definition/cores", args)

@inline create_core_definition(args) = create_core_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_core_definition_version
    create_core_definition_version([::AWSConfig], arguments::Dict)
    create_core_definition_version([::AWSConfig]; CoreDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/definition/cores/{CoreDefinitionId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/definition/cores/{CoreDefinitionId}/versions", CoreDefinitionId=, <keyword arguments>)

# CreateCoreDefinitionVersion Operation

Creates a version of a core definition that has already been defined. AWS Greengrass groups must each contain exactly one AWS Greengrass core.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `CoreDefinitionId = ::String` -- *Required*
The ID of the core definition.


## `Cores = [[ ... ], ...]`
A list of cores in the core definition version.
```
 Cores = [[
        "CertificateArn" =>  ::String,
        "Id" =>  ::String,
        "SyncShadow" =>  ::Bool,
        "ThingArn" =>  ::String
    ], ...]
```



# Returns

`CreateCoreDefinitionVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateCoreDefinitionVersion)
"""
@inline create_core_definition_version(aws::AWSConfig=default_aws_config(); args...) = create_core_definition_version(aws, args)

@inline create_core_definition_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/definition/cores/{CoreDefinitionId}/versions", args)

@inline create_core_definition_version(args) = create_core_definition_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_deployment
    create_deployment([::AWSConfig], arguments::Dict)
    create_deployment([::AWSConfig]; GroupId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/groups/{GroupId}/deployments", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/groups/{GroupId}/deployments", GroupId=, <keyword arguments>)

# CreateDeployment Operation

Creates a deployment.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `DeploymentId = ::String`
The ID of the deployment if you wish to redeploy a previous deployment.


## `DeploymentType = "NewDeployment", "Redeployment", "ResetDeployment" or "ForceResetDeployment"`
The type of deployment. When used in ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.


## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.


## `GroupVersionId = ::String`
The ID of the group version to be deployed.




# Returns

`CreateDeploymentResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeployment)
"""
@inline create_deployment(aws::AWSConfig=default_aws_config(); args...) = create_deployment(aws, args)

@inline create_deployment(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/groups/{GroupId}/deployments", args)

@inline create_deployment(args) = create_deployment(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_device_definition
    create_device_definition([::AWSConfig], arguments::Dict)
    create_device_definition([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/definition/devices", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/definition/devices", <keyword arguments>)

# CreateDeviceDefinition Operation

Creates a device definition. You may provide the initial version of the device definition now or use ''CreateDeviceDefinitionVersion'' at a later time.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `InitialVersion = ["Devices" =>  [[ ... ], ...]]`
Information about the initial version of the device definition.
```
 InitialVersion = ["Devices" =>  [[
            "CertificateArn" =>  ::String,
            "Id" =>  ::String,
            "SyncShadow" =>  ::Bool,
            "ThingArn" =>  ::String
        ], ...]]
```

## `Name = ::String`
The name of the device definition.




# Returns

`CreateDeviceDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeviceDefinition)
"""
@inline create_device_definition(aws::AWSConfig=default_aws_config(); args...) = create_device_definition(aws, args)

@inline create_device_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/definition/devices", args)

@inline create_device_definition(args) = create_device_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_device_definition_version
    create_device_definition_version([::AWSConfig], arguments::Dict)
    create_device_definition_version([::AWSConfig]; DeviceDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/definition/devices/{DeviceDefinitionId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/definition/devices/{DeviceDefinitionId}/versions", DeviceDefinitionId=, <keyword arguments>)

# CreateDeviceDefinitionVersion Operation

Creates a version of a device definition that has already been defined.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `DeviceDefinitionId = ::String` -- *Required*
The ID of the device definition.


## `Devices = [[ ... ], ...]`
A list of devices in the definition version.
```
 Devices = [[
        "CertificateArn" =>  ::String,
        "Id" =>  ::String,
        "SyncShadow" =>  ::Bool,
        "ThingArn" =>  ::String
    ], ...]
```



# Returns

`CreateDeviceDefinitionVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateDeviceDefinitionVersion)
"""
@inline create_device_definition_version(aws::AWSConfig=default_aws_config(); args...) = create_device_definition_version(aws, args)

@inline create_device_definition_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/definition/devices/{DeviceDefinitionId}/versions", args)

@inline create_device_definition_version(args) = create_device_definition_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_function_definition
    create_function_definition([::AWSConfig], arguments::Dict)
    create_function_definition([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/definition/functions", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/definition/functions", <keyword arguments>)

# CreateFunctionDefinition Operation

Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ''CreateFunctionDefinitionVersion'' later.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `InitialVersion = ["Functions" =>  [[ ... ], ...]]`
Information about the initial version of the function definition.
```
 InitialVersion = ["Functions" =>  [[
            "FunctionArn" =>  ::String,
            "FunctionConfiguration" =>  [
                "EncodingType" =>  "binary" or "json",
                "Environment" =>  [
                    "AccessSysfs" =>  ::Bool,
                    "ResourceAccessPolicies" =>  [[
                        "Permission" =>  "ro" or "rw",
                        "ResourceId" =>  ::String
                    ], ...],
                    "Variables" =>  ::Dict{String,String}
                ],
                "ExecArgs" =>  ::String,
                "Executable" =>  ::String,
                "MemorySize" =>  ::Int,
                "Pinned" =>  ::Bool,
                "Timeout" =>  ::Int
            ],
            "Id" =>  ::String
        ], ...]]
```

## `Name = ::String`
The name of the function definition.




# Returns

`CreateFunctionDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateFunctionDefinition)
"""
@inline create_function_definition(aws::AWSConfig=default_aws_config(); args...) = create_function_definition(aws, args)

@inline create_function_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/definition/functions", args)

@inline create_function_definition(args) = create_function_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_function_definition_version
    create_function_definition_version([::AWSConfig], arguments::Dict)
    create_function_definition_version([::AWSConfig]; FunctionDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/definition/functions/{FunctionDefinitionId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/definition/functions/{FunctionDefinitionId}/versions", FunctionDefinitionId=, <keyword arguments>)

# CreateFunctionDefinitionVersion Operation

Creates a version of a Lambda function definition that has already been defined.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `FunctionDefinitionId = ::String` -- *Required*
The ID of the Lambda function definition.


## `Functions = [[ ... ], ...]`
A list of Lambda functions in this function definition version.
```
 Functions = [[
        "FunctionArn" =>  ::String,
        "FunctionConfiguration" =>  [
            "EncodingType" =>  "binary" or "json",
            "Environment" =>  [
                "AccessSysfs" =>  ::Bool,
                "ResourceAccessPolicies" =>  [[
                    "Permission" =>  "ro" or "rw",
                    "ResourceId" =>  ::String
                ], ...],
                "Variables" =>  ::Dict{String,String}
            ],
            "ExecArgs" =>  ::String,
            "Executable" =>  ::String,
            "MemorySize" =>  ::Int,
            "Pinned" =>  ::Bool,
            "Timeout" =>  ::Int
        ],
        "Id" =>  ::String
    ], ...]
```



# Returns

`CreateFunctionDefinitionVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateFunctionDefinitionVersion)
"""
@inline create_function_definition_version(aws::AWSConfig=default_aws_config(); args...) = create_function_definition_version(aws, args)

@inline create_function_definition_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/definition/functions/{FunctionDefinitionId}/versions", args)

@inline create_function_definition_version(args) = create_function_definition_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_group
    create_group([::AWSConfig], arguments::Dict)
    create_group([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/groups", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/groups", <keyword arguments>)

# CreateGroup Operation

Creates a group. You may provide the initial version of the group or use ''CreateGroupVersion'' at a later time.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `InitialVersion = [ ... ]`
Information about the initial version of the group.
```
 InitialVersion = [
        "CoreDefinitionVersionArn" =>  ::String,
        "DeviceDefinitionVersionArn" =>  ::String,
        "FunctionDefinitionVersionArn" =>  ::String,
        "LoggerDefinitionVersionArn" =>  ::String,
        "ResourceDefinitionVersionArn" =>  ::String,
        "SubscriptionDefinitionVersionArn" =>  ::String
    ]
```

## `Name = ::String`
The name of the group.




# Returns

`CreateGroupResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroup)
"""
@inline create_group(aws::AWSConfig=default_aws_config(); args...) = create_group(aws, args)

@inline create_group(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/groups", args)

@inline create_group(args) = create_group(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_group_certificate_authority
    create_group_certificate_authority([::AWSConfig], arguments::Dict)
    create_group_certificate_authority([::AWSConfig]; GroupId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/groups/{GroupId}/certificateauthorities", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/groups/{GroupId}/certificateauthorities", GroupId=, <keyword arguments>)

# CreateGroupCertificateAuthority Operation

Creates a CA for the group. If a CA already exists, it will rotate the existing CA.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.




# Returns

`CreateGroupCertificateAuthorityResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupCertificateAuthority)
"""
@inline create_group_certificate_authority(aws::AWSConfig=default_aws_config(); args...) = create_group_certificate_authority(aws, args)

@inline create_group_certificate_authority(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/groups/{GroupId}/certificateauthorities", args)

@inline create_group_certificate_authority(args) = create_group_certificate_authority(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_group_version
    create_group_version([::AWSConfig], arguments::Dict)
    create_group_version([::AWSConfig]; GroupId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/groups/{GroupId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/groups/{GroupId}/versions", GroupId=, <keyword arguments>)

# CreateGroupVersion Operation

Creates a version of a group which has already been defined.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `CoreDefinitionVersionArn = ::String`
The ARN of the core definition version for this group.


## `DeviceDefinitionVersionArn = ::String`
The ARN of the device definition version for this group.


## `FunctionDefinitionVersionArn = ::String`
The ARN of the function definition version for this group.


## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.


## `LoggerDefinitionVersionArn = ::String`
The ARN of the logger definition version for this group.


## `ResourceDefinitionVersionArn = ::String`
The resource definition version ARN for this group.


## `SubscriptionDefinitionVersionArn = ::String`
The ARN of the subscription definition version for this group.




# Returns

`CreateGroupVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateGroupVersion)
"""
@inline create_group_version(aws::AWSConfig=default_aws_config(); args...) = create_group_version(aws, args)

@inline create_group_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/groups/{GroupId}/versions", args)

@inline create_group_version(args) = create_group_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_logger_definition
    create_logger_definition([::AWSConfig], arguments::Dict)
    create_logger_definition([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/definition/loggers", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/definition/loggers", <keyword arguments>)

# CreateLoggerDefinition Operation

Creates a logger definition. You may provide the initial version of the logger definition now or use ''CreateLoggerDefinitionVersion'' at a later time.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `InitialVersion = ["Loggers" =>  [[ ... ], ...]]`
Information about the initial version of the logger definition.
```
 InitialVersion = ["Loggers" =>  [[
            "Component" =>  "GreengrassSystem" or "Lambda",
            "Id" =>  ::String,
            "Level" =>  "DEBUG", "INFO", "WARN", "ERROR" or "FATAL",
            "Space" =>  ::Int,
            "Type" =>  "FileSystem" or "AWSCloudWatch"
        ], ...]]
```

## `Name = ::String`
The name of the logger definition.




# Returns

`CreateLoggerDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateLoggerDefinition)
"""
@inline create_logger_definition(aws::AWSConfig=default_aws_config(); args...) = create_logger_definition(aws, args)

@inline create_logger_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/definition/loggers", args)

@inline create_logger_definition(args) = create_logger_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_logger_definition_version
    create_logger_definition_version([::AWSConfig], arguments::Dict)
    create_logger_definition_version([::AWSConfig]; LoggerDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", LoggerDefinitionId=, <keyword arguments>)

# CreateLoggerDefinitionVersion Operation

Creates a version of a logger definition that has already been defined.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `LoggerDefinitionId = ::String` -- *Required*
The ID of the logger definition.


## `Loggers = [[ ... ], ...]`
A list of loggers.
```
 Loggers = [[
        "Component" =>  "GreengrassSystem" or "Lambda",
        "Id" =>  ::String,
        "Level" =>  "DEBUG", "INFO", "WARN", "ERROR" or "FATAL",
        "Space" =>  ::Int,
        "Type" =>  "FileSystem" or "AWSCloudWatch"
    ], ...]
```



# Returns

`CreateLoggerDefinitionVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateLoggerDefinitionVersion)
"""
@inline create_logger_definition_version(aws::AWSConfig=default_aws_config(); args...) = create_logger_definition_version(aws, args)

@inline create_logger_definition_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", args)

@inline create_logger_definition_version(args) = create_logger_definition_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_resource_definition
    create_resource_definition([::AWSConfig], arguments::Dict)
    create_resource_definition([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/definition/resources", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/definition/resources", <keyword arguments>)

# CreateResourceDefinition Operation

Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ''CreateResourceDefinitionVersion'' later.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `InitialVersion = ["Resources" =>  [[ ... ], ...]]`
Information about the initial version of the resource definition.
```
 InitialVersion = ["Resources" =>  [[
            "Id" =>  ::String,
            "Name" =>  ::String,
            "ResourceDataContainer" =>  [
                "LocalDeviceResourceData" =>  [
                    "GroupOwnerSetting" =>  [
                        "AutoAddGroupOwner" =>  ::Bool,
                        "GroupOwner" =>  ::String
                    ],
                    "SourcePath" =>  ::String
                ],
                "LocalVolumeResourceData" =>  [
                    "DestinationPath" =>  ::String,
                    "GroupOwnerSetting" =>  [
                        "AutoAddGroupOwner" =>  ::Bool,
                        "GroupOwner" =>  ::String
                    ],
                    "SourcePath" =>  ::String
                ],
                "S3MachineLearningModelResourceData" =>  [
                    "DestinationPath" =>  ::String,
                    "S3Uri" =>  ::String
                ],
                "SageMakerMachineLearningModelResourceData" =>  [
                    "DestinationPath" =>  ::String,
                    "SageMakerJobArn" =>  ::String
                ]
            ]
        ], ...]]
```

## `Name = ::String`
The name of the resource definition.




# Returns

`CreateResourceDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateResourceDefinition)
"""
@inline create_resource_definition(aws::AWSConfig=default_aws_config(); args...) = create_resource_definition(aws, args)

@inline create_resource_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/definition/resources", args)

@inline create_resource_definition(args) = create_resource_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_resource_definition_version
    create_resource_definition_version([::AWSConfig], arguments::Dict)
    create_resource_definition_version([::AWSConfig]; ResourceDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/definition/resources/{ResourceDefinitionId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/definition/resources/{ResourceDefinitionId}/versions", ResourceDefinitionId=, <keyword arguments>)

# CreateResourceDefinitionVersion Operation

Creates a version of a resource definition that has already been defined.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `ResourceDefinitionId = ::String` -- *Required*
The ID of the resource definition.


## `Resources = [[ ... ], ...]`
A list of resources.
```
 Resources = [[
        "Id" =>  ::String,
        "Name" =>  ::String,
        "ResourceDataContainer" =>  [
            "LocalDeviceResourceData" =>  [
                "GroupOwnerSetting" =>  [
                    "AutoAddGroupOwner" =>  ::Bool,
                    "GroupOwner" =>  ::String
                ],
                "SourcePath" =>  ::String
            ],
            "LocalVolumeResourceData" =>  [
                "DestinationPath" =>  ::String,
                "GroupOwnerSetting" =>  [
                    "AutoAddGroupOwner" =>  ::Bool,
                    "GroupOwner" =>  ::String
                ],
                "SourcePath" =>  ::String
            ],
            "S3MachineLearningModelResourceData" =>  [
                "DestinationPath" =>  ::String,
                "S3Uri" =>  ::String
            ],
            "SageMakerMachineLearningModelResourceData" =>  [
                "DestinationPath" =>  ::String,
                "SageMakerJobArn" =>  ::String
            ]
        ]
    ], ...]
```



# Returns

`CreateResourceDefinitionVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateResourceDefinitionVersion)
"""
@inline create_resource_definition_version(aws::AWSConfig=default_aws_config(); args...) = create_resource_definition_version(aws, args)

@inline create_resource_definition_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/definition/resources/{ResourceDefinitionId}/versions", args)

@inline create_resource_definition_version(args) = create_resource_definition_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_software_update_job
    create_software_update_job([::AWSConfig], arguments::Dict)
    create_software_update_job([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/updates", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/updates", <keyword arguments>)

# CreateSoftwareUpdateJob Operation

Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `S3UrlSignerRole = ::String`



## `SoftwareToUpdate = "core" or "ota_agent"`



## `UpdateAgentLogLevel = "NONE", "TRACE", "DEBUG", "VERBOSE", "INFO", "WARN", "ERROR" or "FATAL"`



## `UpdateTargets = [::String, ...]`



## `UpdateTargetsArchitecture = "armv7l", "x86_64" or "aarch64"`



## `UpdateTargetsOperatingSystem = "ubuntu", "raspbian" or "amazon_linux"`





# Returns

`CreateSoftwareUpdateJobResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSoftwareUpdateJob)
"""
@inline create_software_update_job(aws::AWSConfig=default_aws_config(); args...) = create_software_update_job(aws, args)

@inline create_software_update_job(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/updates", args)

@inline create_software_update_job(args) = create_software_update_job(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_subscription_definition
    create_subscription_definition([::AWSConfig], arguments::Dict)
    create_subscription_definition([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/definition/subscriptions", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/definition/subscriptions", <keyword arguments>)

# CreateSubscriptionDefinition Operation

Creates a subscription definition. You may provide the initial version of the subscription definition now or use ''CreateSubscriptionDefinitionVersion'' at a later time.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `InitialVersion = ["Subscriptions" =>  [[ ... ], ...]]`
Information about the initial version of the subscription definition.
```
 InitialVersion = ["Subscriptions" =>  [[
            "Id" =>  ::String,
            "Source" =>  ::String,
            "Subject" =>  ::String,
            "Target" =>  ::String
        ], ...]]
```

## `Name = ::String`
The name of the subscription definition.




# Returns

`CreateSubscriptionDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSubscriptionDefinition)
"""
@inline create_subscription_definition(aws::AWSConfig=default_aws_config(); args...) = create_subscription_definition(aws, args)

@inline create_subscription_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/definition/subscriptions", args)

@inline create_subscription_definition(args) = create_subscription_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.create_subscription_definition_version
    create_subscription_definition_version([::AWSConfig], arguments::Dict)
    create_subscription_definition_version([::AWSConfig]; SubscriptionDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", SubscriptionDefinitionId=, <keyword arguments>)

# CreateSubscriptionDefinitionVersion Operation

Creates a version of a subscription definition which has already been defined.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `SubscriptionDefinitionId = ::String` -- *Required*
The ID of the subscription definition.


## `Subscriptions = [[ ... ], ...]`
A list of subscriptions.
```
 Subscriptions = [[
        "Id" =>  ::String,
        "Source" =>  ::String,
        "Subject" =>  ::String,
        "Target" =>  ::String
    ], ...]
```



# Returns

`CreateSubscriptionDefinitionVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/CreateSubscriptionDefinitionVersion)
"""
@inline create_subscription_definition_version(aws::AWSConfig=default_aws_config(); args...) = create_subscription_definition_version(aws, args)

@inline create_subscription_definition_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", args)

@inline create_subscription_definition_version(args) = create_subscription_definition_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.delete_core_definition
    delete_core_definition([::AWSConfig], arguments::Dict)
    delete_core_definition([::AWSConfig]; CoreDefinitionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "DELETE", "/greengrass/definition/cores/{CoreDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "DELETE", "/greengrass/definition/cores/{CoreDefinitionId}", CoreDefinitionId=)

# DeleteCoreDefinition Operation

Deletes a core definition.

# Arguments

## `CoreDefinitionId = ::String` -- *Required*
The ID of the core definition.




# Returns

`DeleteCoreDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteCoreDefinition)
"""
@inline delete_core_definition(aws::AWSConfig=default_aws_config(); args...) = delete_core_definition(aws, args)

@inline delete_core_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "DELETE", "/greengrass/definition/cores/{CoreDefinitionId}", args)

@inline delete_core_definition(args) = delete_core_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.delete_device_definition
    delete_device_definition([::AWSConfig], arguments::Dict)
    delete_device_definition([::AWSConfig]; DeviceDefinitionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "DELETE", "/greengrass/definition/devices/{DeviceDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "DELETE", "/greengrass/definition/devices/{DeviceDefinitionId}", DeviceDefinitionId=)

# DeleteDeviceDefinition Operation

Deletes a device definition.

# Arguments

## `DeviceDefinitionId = ::String` -- *Required*
The ID of the device definition.




# Returns

`DeleteDeviceDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteDeviceDefinition)
"""
@inline delete_device_definition(aws::AWSConfig=default_aws_config(); args...) = delete_device_definition(aws, args)

@inline delete_device_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "DELETE", "/greengrass/definition/devices/{DeviceDefinitionId}", args)

@inline delete_device_definition(args) = delete_device_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.delete_function_definition
    delete_function_definition([::AWSConfig], arguments::Dict)
    delete_function_definition([::AWSConfig]; FunctionDefinitionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "DELETE", "/greengrass/definition/functions/{FunctionDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "DELETE", "/greengrass/definition/functions/{FunctionDefinitionId}", FunctionDefinitionId=)

# DeleteFunctionDefinition Operation

Deletes a Lambda function definition.

# Arguments

## `FunctionDefinitionId = ::String` -- *Required*
The ID of the Lambda function definition.




# Returns

`DeleteFunctionDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteFunctionDefinition)
"""
@inline delete_function_definition(aws::AWSConfig=default_aws_config(); args...) = delete_function_definition(aws, args)

@inline delete_function_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "DELETE", "/greengrass/definition/functions/{FunctionDefinitionId}", args)

@inline delete_function_definition(args) = delete_function_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.delete_group
    delete_group([::AWSConfig], arguments::Dict)
    delete_group([::AWSConfig]; GroupId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "DELETE", "/greengrass/groups/{GroupId}", arguments::Dict)
    greengrass([::AWSConfig], "DELETE", "/greengrass/groups/{GroupId}", GroupId=)

# DeleteGroup Operation

Deletes a group.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.




# Returns

`DeleteGroupResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteGroup)
"""
@inline delete_group(aws::AWSConfig=default_aws_config(); args...) = delete_group(aws, args)

@inline delete_group(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "DELETE", "/greengrass/groups/{GroupId}", args)

@inline delete_group(args) = delete_group(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.delete_logger_definition
    delete_logger_definition([::AWSConfig], arguments::Dict)
    delete_logger_definition([::AWSConfig]; LoggerDefinitionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "DELETE", "/greengrass/definition/loggers/{LoggerDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "DELETE", "/greengrass/definition/loggers/{LoggerDefinitionId}", LoggerDefinitionId=)

# DeleteLoggerDefinition Operation

Deletes a logger definition.

# Arguments

## `LoggerDefinitionId = ::String` -- *Required*
The ID of the logger definition.




# Returns

`DeleteLoggerDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteLoggerDefinition)
"""
@inline delete_logger_definition(aws::AWSConfig=default_aws_config(); args...) = delete_logger_definition(aws, args)

@inline delete_logger_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "DELETE", "/greengrass/definition/loggers/{LoggerDefinitionId}", args)

@inline delete_logger_definition(args) = delete_logger_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.delete_resource_definition
    delete_resource_definition([::AWSConfig], arguments::Dict)
    delete_resource_definition([::AWSConfig]; ResourceDefinitionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "DELETE", "/greengrass/definition/resources/{ResourceDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "DELETE", "/greengrass/definition/resources/{ResourceDefinitionId}", ResourceDefinitionId=)

# DeleteResourceDefinition Operation

Deletes a resource definition.

# Arguments

## `ResourceDefinitionId = ::String` -- *Required*
The ID of the resource definition.




# Returns

`DeleteResourceDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteResourceDefinition)
"""
@inline delete_resource_definition(aws::AWSConfig=default_aws_config(); args...) = delete_resource_definition(aws, args)

@inline delete_resource_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "DELETE", "/greengrass/definition/resources/{ResourceDefinitionId}", args)

@inline delete_resource_definition(args) = delete_resource_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.delete_subscription_definition
    delete_subscription_definition([::AWSConfig], arguments::Dict)
    delete_subscription_definition([::AWSConfig]; SubscriptionDefinitionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "DELETE", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "DELETE", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", SubscriptionDefinitionId=)

# DeleteSubscriptionDefinition Operation

Deletes a subscription definition.

# Arguments

## `SubscriptionDefinitionId = ::String` -- *Required*
The ID of the subscription definition.




# Returns

`DeleteSubscriptionDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DeleteSubscriptionDefinition)
"""
@inline delete_subscription_definition(aws::AWSConfig=default_aws_config(); args...) = delete_subscription_definition(aws, args)

@inline delete_subscription_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "DELETE", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", args)

@inline delete_subscription_definition(args) = delete_subscription_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.disassociate_role_from_group
    disassociate_role_from_group([::AWSConfig], arguments::Dict)
    disassociate_role_from_group([::AWSConfig]; GroupId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "DELETE", "/greengrass/groups/{GroupId}/role", arguments::Dict)
    greengrass([::AWSConfig], "DELETE", "/greengrass/groups/{GroupId}/role", GroupId=)

# DisassociateRoleFromGroup Operation

Disassociates the role from a group.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.




# Returns

`DisassociateRoleFromGroupResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DisassociateRoleFromGroup)
"""
@inline disassociate_role_from_group(aws::AWSConfig=default_aws_config(); args...) = disassociate_role_from_group(aws, args)

@inline disassociate_role_from_group(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "DELETE", "/greengrass/groups/{GroupId}/role", args)

@inline disassociate_role_from_group(args) = disassociate_role_from_group(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.disassociate_service_role_from_account
    disassociate_service_role_from_account([::AWSConfig], arguments::Dict)
    disassociate_service_role_from_account([::AWSConfig]; )

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "DELETE", "/greengrass/servicerole", arguments::Dict)
    greengrass([::AWSConfig], "DELETE", "/greengrass/servicerole", )

# DisassociateServiceRoleFromAccount Operation

Disassociates the service role from your account. Without a service role, deployments will not work.

# Arguments



# Returns

`DisassociateServiceRoleFromAccountResponse`

# Exceptions

`InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/DisassociateServiceRoleFromAccount)
"""
@inline disassociate_service_role_from_account(aws::AWSConfig=default_aws_config(); args...) = disassociate_service_role_from_account(aws, args)

@inline disassociate_service_role_from_account(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "DELETE", "/greengrass/servicerole", args)

@inline disassociate_service_role_from_account(args) = disassociate_service_role_from_account(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_associated_role
    get_associated_role([::AWSConfig], arguments::Dict)
    get_associated_role([::AWSConfig]; GroupId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/role", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/role", GroupId=)

# GetAssociatedRole Operation

Retrieves the role associated with a particular group.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.




# Returns

`GetAssociatedRoleResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetAssociatedRole)
"""
@inline get_associated_role(aws::AWSConfig=default_aws_config(); args...) = get_associated_role(aws, args)

@inline get_associated_role(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/groups/{GroupId}/role", args)

@inline get_associated_role(args) = get_associated_role(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_connectivity_info
    get_connectivity_info([::AWSConfig], arguments::Dict)
    get_connectivity_info([::AWSConfig]; ThingName=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/things/{ThingName}/connectivityInfo", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/things/{ThingName}/connectivityInfo", ThingName=)

# GetConnectivityInfo Operation

Retrieves the connectivity information for a core.

# Arguments

## `ThingName = ::String` -- *Required*
The thing name.




# Returns

`GetConnectivityInfoResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetConnectivityInfo)
"""
@inline get_connectivity_info(aws::AWSConfig=default_aws_config(); args...) = get_connectivity_info(aws, args)

@inline get_connectivity_info(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/things/{ThingName}/connectivityInfo", args)

@inline get_connectivity_info(args) = get_connectivity_info(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_core_definition
    get_core_definition([::AWSConfig], arguments::Dict)
    get_core_definition([::AWSConfig]; CoreDefinitionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/cores/{CoreDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/cores/{CoreDefinitionId}", CoreDefinitionId=)

# GetCoreDefinition Operation

Retrieves information about a core definition version.

# Arguments

## `CoreDefinitionId = ::String` -- *Required*
The ID of the core definition.




# Returns

`GetCoreDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetCoreDefinition)
"""
@inline get_core_definition(aws::AWSConfig=default_aws_config(); args...) = get_core_definition(aws, args)

@inline get_core_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/cores/{CoreDefinitionId}", args)

@inline get_core_definition(args) = get_core_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_core_definition_version
    get_core_definition_version([::AWSConfig], arguments::Dict)
    get_core_definition_version([::AWSConfig]; CoreDefinitionId=, CoreDefinitionVersionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}", CoreDefinitionId=, CoreDefinitionVersionId=)

# GetCoreDefinitionVersion Operation

Retrieves information about a core definition version.

# Arguments

## `CoreDefinitionId = ::String` -- *Required*
The ID of the core definition.


## `CoreDefinitionVersionId = ::String` -- *Required*
The ID of the core definition version.




# Returns

`GetCoreDefinitionVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetCoreDefinitionVersion)
"""
@inline get_core_definition_version(aws::AWSConfig=default_aws_config(); args...) = get_core_definition_version(aws, args)

@inline get_core_definition_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}", args)

@inline get_core_definition_version(args) = get_core_definition_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_deployment_status
    get_deployment_status([::AWSConfig], arguments::Dict)
    get_deployment_status([::AWSConfig]; DeploymentId=, GroupId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status", DeploymentId=, GroupId=)

# GetDeploymentStatus Operation

Returns the status of a deployment.

# Arguments

## `DeploymentId = ::String` -- *Required*
The ID of the deployment.


## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.




# Returns

`GetDeploymentStatusResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeploymentStatus)
"""
@inline get_deployment_status(aws::AWSConfig=default_aws_config(); args...) = get_deployment_status(aws, args)

@inline get_deployment_status(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status", args)

@inline get_deployment_status(args) = get_deployment_status(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_device_definition
    get_device_definition([::AWSConfig], arguments::Dict)
    get_device_definition([::AWSConfig]; DeviceDefinitionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/devices/{DeviceDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/devices/{DeviceDefinitionId}", DeviceDefinitionId=)

# GetDeviceDefinition Operation

Retrieves information about a device definition.

# Arguments

## `DeviceDefinitionId = ::String` -- *Required*
The ID of the device definition.




# Returns

`GetDeviceDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeviceDefinition)
"""
@inline get_device_definition(aws::AWSConfig=default_aws_config(); args...) = get_device_definition(aws, args)

@inline get_device_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/devices/{DeviceDefinitionId}", args)

@inline get_device_definition(args) = get_device_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_device_definition_version
    get_device_definition_version([::AWSConfig], arguments::Dict)
    get_device_definition_version([::AWSConfig]; DeviceDefinitionId=, DeviceDefinitionVersionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}", DeviceDefinitionId=, DeviceDefinitionVersionId=)

# GetDeviceDefinitionVersion Operation

Retrieves information about a device definition version.

# Arguments

## `DeviceDefinitionId = ::String` -- *Required*
The ID of the device definition.


## `DeviceDefinitionVersionId = ::String` -- *Required*
The ID of the device definition version.




# Returns

`GetDeviceDefinitionVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetDeviceDefinitionVersion)
"""
@inline get_device_definition_version(aws::AWSConfig=default_aws_config(); args...) = get_device_definition_version(aws, args)

@inline get_device_definition_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}", args)

@inline get_device_definition_version(args) = get_device_definition_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_function_definition
    get_function_definition([::AWSConfig], arguments::Dict)
    get_function_definition([::AWSConfig]; FunctionDefinitionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/functions/{FunctionDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/functions/{FunctionDefinitionId}", FunctionDefinitionId=)

# GetFunctionDefinition Operation

Retrieves information about a Lambda function definition, including its creation time and latest version.

# Arguments

## `FunctionDefinitionId = ::String` -- *Required*
The ID of the Lambda function definition.




# Returns

`GetFunctionDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetFunctionDefinition)
"""
@inline get_function_definition(aws::AWSConfig=default_aws_config(); args...) = get_function_definition(aws, args)

@inline get_function_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/functions/{FunctionDefinitionId}", args)

@inline get_function_definition(args) = get_function_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_function_definition_version
    get_function_definition_version([::AWSConfig], arguments::Dict)
    get_function_definition_version([::AWSConfig]; FunctionDefinitionId=, FunctionDefinitionVersionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}", FunctionDefinitionId=, FunctionDefinitionVersionId=)

# GetFunctionDefinitionVersion Operation

Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations.

# Arguments

## `FunctionDefinitionId = ::String` -- *Required*
The ID of the Lambda function definition.


## `FunctionDefinitionVersionId = ::String` -- *Required*
The ID of the function definition version.




# Returns

`GetFunctionDefinitionVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetFunctionDefinitionVersion)
"""
@inline get_function_definition_version(aws::AWSConfig=default_aws_config(); args...) = get_function_definition_version(aws, args)

@inline get_function_definition_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}", args)

@inline get_function_definition_version(args) = get_function_definition_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_group
    get_group([::AWSConfig], arguments::Dict)
    get_group([::AWSConfig]; GroupId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}", GroupId=)

# GetGroup Operation

Retrieves information about a group.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.




# Returns

`GetGroupResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroup)
"""
@inline get_group(aws::AWSConfig=default_aws_config(); args...) = get_group(aws, args)

@inline get_group(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/groups/{GroupId}", args)

@inline get_group(args) = get_group(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_group_certificate_authority
    get_group_certificate_authority([::AWSConfig], arguments::Dict)
    get_group_certificate_authority([::AWSConfig]; CertificateAuthorityId=, GroupId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}", CertificateAuthorityId=, GroupId=)

# GetGroupCertificateAuthority Operation

Retreives the CA associated with a group. Returns the public key of the CA.

# Arguments

## `CertificateAuthorityId = ::String` -- *Required*
The ID of the certificate authority.


## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.




# Returns

`GetGroupCertificateAuthorityResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupCertificateAuthority)
"""
@inline get_group_certificate_authority(aws::AWSConfig=default_aws_config(); args...) = get_group_certificate_authority(aws, args)

@inline get_group_certificate_authority(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}", args)

@inline get_group_certificate_authority(args) = get_group_certificate_authority(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_group_certificate_configuration
    get_group_certificate_configuration([::AWSConfig], arguments::Dict)
    get_group_certificate_configuration([::AWSConfig]; GroupId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", GroupId=)

# GetGroupCertificateConfiguration Operation

Retrieves the current configuration for the CA used by the group.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.




# Returns

`GetGroupCertificateConfigurationResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupCertificateConfiguration)
"""
@inline get_group_certificate_configuration(aws::AWSConfig=default_aws_config(); args...) = get_group_certificate_configuration(aws, args)

@inline get_group_certificate_configuration(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", args)

@inline get_group_certificate_configuration(args) = get_group_certificate_configuration(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_group_version
    get_group_version([::AWSConfig], arguments::Dict)
    get_group_version([::AWSConfig]; GroupId=, GroupVersionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/versions/{GroupVersionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/versions/{GroupVersionId}", GroupId=, GroupVersionId=)

# GetGroupVersion Operation

Retrieves information about a group version.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.


## `GroupVersionId = ::String` -- *Required*
The ID of the group version.




# Returns

`GetGroupVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetGroupVersion)
"""
@inline get_group_version(aws::AWSConfig=default_aws_config(); args...) = get_group_version(aws, args)

@inline get_group_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/groups/{GroupId}/versions/{GroupVersionId}", args)

@inline get_group_version(args) = get_group_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_logger_definition
    get_logger_definition([::AWSConfig], arguments::Dict)
    get_logger_definition([::AWSConfig]; LoggerDefinitionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/loggers/{LoggerDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/loggers/{LoggerDefinitionId}", LoggerDefinitionId=)

# GetLoggerDefinition Operation

Retrieves information about a logger definition.

# Arguments

## `LoggerDefinitionId = ::String` -- *Required*
The ID of the logger definition.




# Returns

`GetLoggerDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetLoggerDefinition)
"""
@inline get_logger_definition(aws::AWSConfig=default_aws_config(); args...) = get_logger_definition(aws, args)

@inline get_logger_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/loggers/{LoggerDefinitionId}", args)

@inline get_logger_definition(args) = get_logger_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_logger_definition_version
    get_logger_definition_version([::AWSConfig], arguments::Dict)
    get_logger_definition_version([::AWSConfig]; LoggerDefinitionId=, LoggerDefinitionVersionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}", LoggerDefinitionId=, LoggerDefinitionVersionId=)

# GetLoggerDefinitionVersion Operation

Retrieves information about a logger definition version.

# Arguments

## `LoggerDefinitionId = ::String` -- *Required*
The ID of the logger definition.


## `LoggerDefinitionVersionId = ::String` -- *Required*
The ID of the logger definition version.




# Returns

`GetLoggerDefinitionVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetLoggerDefinitionVersion)
"""
@inline get_logger_definition_version(aws::AWSConfig=default_aws_config(); args...) = get_logger_definition_version(aws, args)

@inline get_logger_definition_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}", args)

@inline get_logger_definition_version(args) = get_logger_definition_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_resource_definition
    get_resource_definition([::AWSConfig], arguments::Dict)
    get_resource_definition([::AWSConfig]; ResourceDefinitionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/resources/{ResourceDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/resources/{ResourceDefinitionId}", ResourceDefinitionId=)

# GetResourceDefinition Operation

Retrieves information about a resource definition, including its creation time and latest version.

# Arguments

## `ResourceDefinitionId = ::String` -- *Required*
The ID of the resource definition.




# Returns

`GetResourceDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetResourceDefinition)
"""
@inline get_resource_definition(aws::AWSConfig=default_aws_config(); args...) = get_resource_definition(aws, args)

@inline get_resource_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/resources/{ResourceDefinitionId}", args)

@inline get_resource_definition(args) = get_resource_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_resource_definition_version
    get_resource_definition_version([::AWSConfig], arguments::Dict)
    get_resource_definition_version([::AWSConfig]; ResourceDefinitionId=, ResourceDefinitionVersionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}", ResourceDefinitionId=, ResourceDefinitionVersionId=)

# GetResourceDefinitionVersion Operation

Retrieves information about a resource definition version, including which resources are included in the version.

# Arguments

## `ResourceDefinitionId = ::String` -- *Required*
The ID of the resource definition.


## `ResourceDefinitionVersionId = ::String` -- *Required*
The ID of the resource definition version.




# Returns

`GetResourceDefinitionVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetResourceDefinitionVersion)
"""
@inline get_resource_definition_version(aws::AWSConfig=default_aws_config(); args...) = get_resource_definition_version(aws, args)

@inline get_resource_definition_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}", args)

@inline get_resource_definition_version(args) = get_resource_definition_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_service_role_for_account
    get_service_role_for_account([::AWSConfig], arguments::Dict)
    get_service_role_for_account([::AWSConfig]; )

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/servicerole", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/servicerole", )

# GetServiceRoleForAccount Operation

Retrieves the service role that is attached to your account.

# Arguments



# Returns

`GetServiceRoleForAccountResponse`

# Exceptions

`InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetServiceRoleForAccount)
"""
@inline get_service_role_for_account(aws::AWSConfig=default_aws_config(); args...) = get_service_role_for_account(aws, args)

@inline get_service_role_for_account(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/servicerole", args)

@inline get_service_role_for_account(args) = get_service_role_for_account(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_subscription_definition
    get_subscription_definition([::AWSConfig], arguments::Dict)
    get_subscription_definition([::AWSConfig]; SubscriptionDefinitionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", SubscriptionDefinitionId=)

# GetSubscriptionDefinition Operation

Retrieves information about a subscription definition.

# Arguments

## `SubscriptionDefinitionId = ::String` -- *Required*
The ID of the subscription definition.




# Returns

`GetSubscriptionDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetSubscriptionDefinition)
"""
@inline get_subscription_definition(aws::AWSConfig=default_aws_config(); args...) = get_subscription_definition(aws, args)

@inline get_subscription_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", args)

@inline get_subscription_definition(args) = get_subscription_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.get_subscription_definition_version
    get_subscription_definition_version([::AWSConfig], arguments::Dict)
    get_subscription_definition_version([::AWSConfig]; SubscriptionDefinitionId=, SubscriptionDefinitionVersionId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}", SubscriptionDefinitionId=, SubscriptionDefinitionVersionId=)

# GetSubscriptionDefinitionVersion Operation

Retrieves information about a subscription definition version.

# Arguments

## `SubscriptionDefinitionId = ::String` -- *Required*
The ID of the subscription definition.


## `SubscriptionDefinitionVersionId = ::String` -- *Required*
The ID of the subscription definition version.




# Returns

`GetSubscriptionDefinitionVersionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/GetSubscriptionDefinitionVersion)
"""
@inline get_subscription_definition_version(aws::AWSConfig=default_aws_config(); args...) = get_subscription_definition_version(aws, args)

@inline get_subscription_definition_version(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}", args)

@inline get_subscription_definition_version(args) = get_subscription_definition_version(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_core_definition_versions
    list_core_definition_versions([::AWSConfig], arguments::Dict)
    list_core_definition_versions([::AWSConfig]; CoreDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/cores/{CoreDefinitionId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/cores/{CoreDefinitionId}/versions", CoreDefinitionId=, <keyword arguments>)

# ListCoreDefinitionVersions Operation

Lists the versions of a core definition.

# Arguments

## `CoreDefinitionId = ::String` -- *Required*
The ID of the core definition.


## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListCoreDefinitionVersionsResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListCoreDefinitionVersions)
"""
@inline list_core_definition_versions(aws::AWSConfig=default_aws_config(); args...) = list_core_definition_versions(aws, args)

@inline list_core_definition_versions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/cores/{CoreDefinitionId}/versions", args)

@inline list_core_definition_versions(args) = list_core_definition_versions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_core_definitions
    list_core_definitions([::AWSConfig], arguments::Dict)
    list_core_definitions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/cores", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/cores", <keyword arguments>)

# ListCoreDefinitions Operation

Retrieves a list of core definitions.

# Arguments

## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListCoreDefinitionsResponse`

# Exceptions

.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListCoreDefinitions)
"""
@inline list_core_definitions(aws::AWSConfig=default_aws_config(); args...) = list_core_definitions(aws, args)

@inline list_core_definitions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/cores", args)

@inline list_core_definitions(args) = list_core_definitions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_deployments
    list_deployments([::AWSConfig], arguments::Dict)
    list_deployments([::AWSConfig]; GroupId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/deployments", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/deployments", GroupId=, <keyword arguments>)

# ListDeployments Operation

Returns a history of deployments for the group.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.


## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListDeploymentsResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDeployments)
"""
@inline list_deployments(aws::AWSConfig=default_aws_config(); args...) = list_deployments(aws, args)

@inline list_deployments(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/groups/{GroupId}/deployments", args)

@inline list_deployments(args) = list_deployments(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_device_definition_versions
    list_device_definition_versions([::AWSConfig], arguments::Dict)
    list_device_definition_versions([::AWSConfig]; DeviceDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/devices/{DeviceDefinitionId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/devices/{DeviceDefinitionId}/versions", DeviceDefinitionId=, <keyword arguments>)

# ListDeviceDefinitionVersions Operation

Lists the versions of a device definition.

# Arguments

## `DeviceDefinitionId = ::String` -- *Required*
The ID of the device definition.


## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListDeviceDefinitionVersionsResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDeviceDefinitionVersions)
"""
@inline list_device_definition_versions(aws::AWSConfig=default_aws_config(); args...) = list_device_definition_versions(aws, args)

@inline list_device_definition_versions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/devices/{DeviceDefinitionId}/versions", args)

@inline list_device_definition_versions(args) = list_device_definition_versions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_device_definitions
    list_device_definitions([::AWSConfig], arguments::Dict)
    list_device_definitions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/devices", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/devices", <keyword arguments>)

# ListDeviceDefinitions Operation

Retrieves a list of device definitions.

# Arguments

## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListDeviceDefinitionsResponse`

# Exceptions

.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListDeviceDefinitions)
"""
@inline list_device_definitions(aws::AWSConfig=default_aws_config(); args...) = list_device_definitions(aws, args)

@inline list_device_definitions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/devices", args)

@inline list_device_definitions(args) = list_device_definitions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_function_definition_versions
    list_function_definition_versions([::AWSConfig], arguments::Dict)
    list_function_definition_versions([::AWSConfig]; FunctionDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/functions/{FunctionDefinitionId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/functions/{FunctionDefinitionId}/versions", FunctionDefinitionId=, <keyword arguments>)

# ListFunctionDefinitionVersions Operation

Lists the versions of a Lambda function definition.

# Arguments

## `FunctionDefinitionId = ::String` -- *Required*
The ID of the Lambda function definition.


## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListFunctionDefinitionVersionsResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListFunctionDefinitionVersions)
"""
@inline list_function_definition_versions(aws::AWSConfig=default_aws_config(); args...) = list_function_definition_versions(aws, args)

@inline list_function_definition_versions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/functions/{FunctionDefinitionId}/versions", args)

@inline list_function_definition_versions(args) = list_function_definition_versions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_function_definitions
    list_function_definitions([::AWSConfig], arguments::Dict)
    list_function_definitions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/functions", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/functions", <keyword arguments>)

# ListFunctionDefinitions Operation

Retrieves a list of Lambda function definitions.

# Arguments

## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListFunctionDefinitionsResponse`

# Exceptions

.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListFunctionDefinitions)
"""
@inline list_function_definitions(aws::AWSConfig=default_aws_config(); args...) = list_function_definitions(aws, args)

@inline list_function_definitions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/functions", args)

@inline list_function_definitions(args) = list_function_definitions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_group_certificate_authorities
    list_group_certificate_authorities([::AWSConfig], arguments::Dict)
    list_group_certificate_authorities([::AWSConfig]; GroupId=)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/certificateauthorities", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/certificateauthorities", GroupId=)

# ListGroupCertificateAuthorities Operation

Retrieves the current CAs for a group.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.




# Returns

`ListGroupCertificateAuthoritiesResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroupCertificateAuthorities)
"""
@inline list_group_certificate_authorities(aws::AWSConfig=default_aws_config(); args...) = list_group_certificate_authorities(aws, args)

@inline list_group_certificate_authorities(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/groups/{GroupId}/certificateauthorities", args)

@inline list_group_certificate_authorities(args) = list_group_certificate_authorities(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_group_versions
    list_group_versions([::AWSConfig], arguments::Dict)
    list_group_versions([::AWSConfig]; GroupId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/groups/{GroupId}/versions", GroupId=, <keyword arguments>)

# ListGroupVersions Operation

Lists the versions of a group.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.


## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListGroupVersionsResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroupVersions)
"""
@inline list_group_versions(aws::AWSConfig=default_aws_config(); args...) = list_group_versions(aws, args)

@inline list_group_versions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/groups/{GroupId}/versions", args)

@inline list_group_versions(args) = list_group_versions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_groups
    list_groups([::AWSConfig], arguments::Dict)
    list_groups([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/groups", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/groups", <keyword arguments>)

# ListGroups Operation

Retrieves a list of groups.

# Arguments

## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListGroupsResponse`

# Exceptions

.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListGroups)
"""
@inline list_groups(aws::AWSConfig=default_aws_config(); args...) = list_groups(aws, args)

@inline list_groups(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/groups", args)

@inline list_groups(args) = list_groups(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_logger_definition_versions
    list_logger_definition_versions([::AWSConfig], arguments::Dict)
    list_logger_definition_versions([::AWSConfig]; LoggerDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", LoggerDefinitionId=, <keyword arguments>)

# ListLoggerDefinitionVersions Operation

Lists the versions of a logger definition.

# Arguments

## `LoggerDefinitionId = ::String` -- *Required*
The ID of the logger definition.


## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListLoggerDefinitionVersionsResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListLoggerDefinitionVersions)
"""
@inline list_logger_definition_versions(aws::AWSConfig=default_aws_config(); args...) = list_logger_definition_versions(aws, args)

@inline list_logger_definition_versions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", args)

@inline list_logger_definition_versions(args) = list_logger_definition_versions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_logger_definitions
    list_logger_definitions([::AWSConfig], arguments::Dict)
    list_logger_definitions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/loggers", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/loggers", <keyword arguments>)

# ListLoggerDefinitions Operation

Retrieves a list of logger definitions.

# Arguments

## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListLoggerDefinitionsResponse`

# Exceptions

.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListLoggerDefinitions)
"""
@inline list_logger_definitions(aws::AWSConfig=default_aws_config(); args...) = list_logger_definitions(aws, args)

@inline list_logger_definitions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/loggers", args)

@inline list_logger_definitions(args) = list_logger_definitions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_resource_definition_versions
    list_resource_definition_versions([::AWSConfig], arguments::Dict)
    list_resource_definition_versions([::AWSConfig]; ResourceDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/resources/{ResourceDefinitionId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/resources/{ResourceDefinitionId}/versions", ResourceDefinitionId=, <keyword arguments>)

# ListResourceDefinitionVersions Operation

Lists the versions of a resource definition.

# Arguments

## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.


## `ResourceDefinitionId = ::String` -- *Required*
The ID of the resource definition.




# Returns

`ListResourceDefinitionVersionsResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListResourceDefinitionVersions)
"""
@inline list_resource_definition_versions(aws::AWSConfig=default_aws_config(); args...) = list_resource_definition_versions(aws, args)

@inline list_resource_definition_versions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/resources/{ResourceDefinitionId}/versions", args)

@inline list_resource_definition_versions(args) = list_resource_definition_versions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_resource_definitions
    list_resource_definitions([::AWSConfig], arguments::Dict)
    list_resource_definitions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/resources", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/resources", <keyword arguments>)

# ListResourceDefinitions Operation

Retrieves a list of resource definitions.

# Arguments

## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListResourceDefinitionsResponse`

# Exceptions

.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListResourceDefinitions)
"""
@inline list_resource_definitions(aws::AWSConfig=default_aws_config(); args...) = list_resource_definitions(aws, args)

@inline list_resource_definitions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/resources", args)

@inline list_resource_definitions(args) = list_resource_definitions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_subscription_definition_versions
    list_subscription_definition_versions([::AWSConfig], arguments::Dict)
    list_subscription_definition_versions([::AWSConfig]; SubscriptionDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", SubscriptionDefinitionId=, <keyword arguments>)

# ListSubscriptionDefinitionVersions Operation

Lists the versions of a subscription definition.

# Arguments

## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.


## `SubscriptionDefinitionId = ::String` -- *Required*
The ID of the subscription definition.




# Returns

`ListSubscriptionDefinitionVersionsResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListSubscriptionDefinitionVersions)
"""
@inline list_subscription_definition_versions(aws::AWSConfig=default_aws_config(); args...) = list_subscription_definition_versions(aws, args)

@inline list_subscription_definition_versions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", args)

@inline list_subscription_definition_versions(args) = list_subscription_definition_versions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.list_subscription_definitions
    list_subscription_definitions([::AWSConfig], arguments::Dict)
    list_subscription_definitions([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "GET", "/greengrass/definition/subscriptions", arguments::Dict)
    greengrass([::AWSConfig], "GET", "/greengrass/definition/subscriptions", <keyword arguments>)

# ListSubscriptionDefinitions Operation

Retrieves a list of subscription definitions.

# Arguments

## `MaxResults = ::String`
The maximum number of results to be returned per request.


## `NextToken = ::String`
The token for the next set of results, or ''null'' if there are no additional results.




# Returns

`ListSubscriptionDefinitionsResponse`

# Exceptions

.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ListSubscriptionDefinitions)
"""
@inline list_subscription_definitions(aws::AWSConfig=default_aws_config(); args...) = list_subscription_definitions(aws, args)

@inline list_subscription_definitions(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "GET", "/greengrass/definition/subscriptions", args)

@inline list_subscription_definitions(args) = list_subscription_definitions(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.reset_deployments
    reset_deployments([::AWSConfig], arguments::Dict)
    reset_deployments([::AWSConfig]; GroupId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "POST", "/greengrass/groups/{GroupId}/deployments/\$reset", arguments::Dict)
    greengrass([::AWSConfig], "POST", "/greengrass/groups/{GroupId}/deployments/\$reset", GroupId=, <keyword arguments>)

# ResetDeployments Operation

Resets a group's deployments.

# Arguments

## `*header:* X-Amzn-Client-Token = ::String`
A client token used to correlate requests and responses.


## `Force = ::Bool`
If true, performs a best-effort only core reset.


## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.




# Returns

`ResetDeploymentsResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/ResetDeployments)
"""
@inline reset_deployments(aws::AWSConfig=default_aws_config(); args...) = reset_deployments(aws, args)

@inline reset_deployments(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "POST", "/greengrass/groups/{GroupId}/deployments/\$reset", args)

@inline reset_deployments(args) = reset_deployments(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.update_connectivity_info
    update_connectivity_info([::AWSConfig], arguments::Dict)
    update_connectivity_info([::AWSConfig]; ThingName=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "PUT", "/greengrass/things/{ThingName}/connectivityInfo", arguments::Dict)
    greengrass([::AWSConfig], "PUT", "/greengrass/things/{ThingName}/connectivityInfo", ThingName=, <keyword arguments>)

# UpdateConnectivityInfo Operation

Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it.

# Arguments

## `ConnectivityInfo = [[ ... ], ...]`
A list of connectivity info.
```
 ConnectivityInfo = [[
        "HostAddress" =>  ::String,
        "Id" =>  ::String,
        "Metadata" =>  ::String,
        "PortNumber" =>  ::Int
    ], ...]
```

## `ThingName = ::String` -- *Required*
The thing name.




# Returns

`UpdateConnectivityInfoResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateConnectivityInfo)
"""
@inline update_connectivity_info(aws::AWSConfig=default_aws_config(); args...) = update_connectivity_info(aws, args)

@inline update_connectivity_info(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "PUT", "/greengrass/things/{ThingName}/connectivityInfo", args)

@inline update_connectivity_info(args) = update_connectivity_info(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.update_core_definition
    update_core_definition([::AWSConfig], arguments::Dict)
    update_core_definition([::AWSConfig]; CoreDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "PUT", "/greengrass/definition/cores/{CoreDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "PUT", "/greengrass/definition/cores/{CoreDefinitionId}", CoreDefinitionId=, <keyword arguments>)

# UpdateCoreDefinition Operation

Updates a core definition.

# Arguments

## `CoreDefinitionId = ::String` -- *Required*
The ID of the core definition.


## `Name = ::String`
The name of the definition.




# Returns

`UpdateCoreDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateCoreDefinition)
"""
@inline update_core_definition(aws::AWSConfig=default_aws_config(); args...) = update_core_definition(aws, args)

@inline update_core_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "PUT", "/greengrass/definition/cores/{CoreDefinitionId}", args)

@inline update_core_definition(args) = update_core_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.update_device_definition
    update_device_definition([::AWSConfig], arguments::Dict)
    update_device_definition([::AWSConfig]; DeviceDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "PUT", "/greengrass/definition/devices/{DeviceDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "PUT", "/greengrass/definition/devices/{DeviceDefinitionId}", DeviceDefinitionId=, <keyword arguments>)

# UpdateDeviceDefinition Operation

Updates a device definition.

# Arguments

## `DeviceDefinitionId = ::String` -- *Required*
The ID of the device definition.


## `Name = ::String`
The name of the definition.




# Returns

`UpdateDeviceDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateDeviceDefinition)
"""
@inline update_device_definition(aws::AWSConfig=default_aws_config(); args...) = update_device_definition(aws, args)

@inline update_device_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "PUT", "/greengrass/definition/devices/{DeviceDefinitionId}", args)

@inline update_device_definition(args) = update_device_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.update_function_definition
    update_function_definition([::AWSConfig], arguments::Dict)
    update_function_definition([::AWSConfig]; FunctionDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "PUT", "/greengrass/definition/functions/{FunctionDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "PUT", "/greengrass/definition/functions/{FunctionDefinitionId}", FunctionDefinitionId=, <keyword arguments>)

# UpdateFunctionDefinition Operation

Updates a Lambda function definition.

# Arguments

## `FunctionDefinitionId = ::String` -- *Required*
The ID of the Lambda function definition.


## `Name = ::String`
The name of the definition.




# Returns

`UpdateFunctionDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateFunctionDefinition)
"""
@inline update_function_definition(aws::AWSConfig=default_aws_config(); args...) = update_function_definition(aws, args)

@inline update_function_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "PUT", "/greengrass/definition/functions/{FunctionDefinitionId}", args)

@inline update_function_definition(args) = update_function_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.update_group
    update_group([::AWSConfig], arguments::Dict)
    update_group([::AWSConfig]; GroupId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "PUT", "/greengrass/groups/{GroupId}", arguments::Dict)
    greengrass([::AWSConfig], "PUT", "/greengrass/groups/{GroupId}", GroupId=, <keyword arguments>)

# UpdateGroup Operation

Updates a group.

# Arguments

## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.


## `Name = ::String`
The name of the definition.




# Returns

`UpdateGroupResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateGroup)
"""
@inline update_group(aws::AWSConfig=default_aws_config(); args...) = update_group(aws, args)

@inline update_group(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "PUT", "/greengrass/groups/{GroupId}", args)

@inline update_group(args) = update_group(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.update_group_certificate_configuration
    update_group_certificate_configuration([::AWSConfig], arguments::Dict)
    update_group_certificate_configuration([::AWSConfig]; GroupId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "PUT", "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", arguments::Dict)
    greengrass([::AWSConfig], "PUT", "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", GroupId=, <keyword arguments>)

# UpdateGroupCertificateConfiguration Operation

Updates the Certificate expiry time for a group.

# Arguments

## `CertificateExpiryInMilliseconds = ::String`
The amount of time remaining before the certificate expires, in milliseconds.


## `GroupId = ::String` -- *Required*
The ID of the AWS Greengrass group.




# Returns

`UpdateGroupCertificateConfigurationResponse`

# Exceptions

`BadRequestException` or `InternalServerErrorException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateGroupCertificateConfiguration)
"""
@inline update_group_certificate_configuration(aws::AWSConfig=default_aws_config(); args...) = update_group_certificate_configuration(aws, args)

@inline update_group_certificate_configuration(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "PUT", "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", args)

@inline update_group_certificate_configuration(args) = update_group_certificate_configuration(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.update_logger_definition
    update_logger_definition([::AWSConfig], arguments::Dict)
    update_logger_definition([::AWSConfig]; LoggerDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "PUT", "/greengrass/definition/loggers/{LoggerDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "PUT", "/greengrass/definition/loggers/{LoggerDefinitionId}", LoggerDefinitionId=, <keyword arguments>)

# UpdateLoggerDefinition Operation

Updates a logger definition.

# Arguments

## `LoggerDefinitionId = ::String` -- *Required*
The ID of the logger definition.


## `Name = ::String`
The name of the definition.




# Returns

`UpdateLoggerDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateLoggerDefinition)
"""
@inline update_logger_definition(aws::AWSConfig=default_aws_config(); args...) = update_logger_definition(aws, args)

@inline update_logger_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "PUT", "/greengrass/definition/loggers/{LoggerDefinitionId}", args)

@inline update_logger_definition(args) = update_logger_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.update_resource_definition
    update_resource_definition([::AWSConfig], arguments::Dict)
    update_resource_definition([::AWSConfig]; ResourceDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "PUT", "/greengrass/definition/resources/{ResourceDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "PUT", "/greengrass/definition/resources/{ResourceDefinitionId}", ResourceDefinitionId=, <keyword arguments>)

# UpdateResourceDefinition Operation

Updates a resource definition.

# Arguments

## `Name = ::String`
The name of the definition.


## `ResourceDefinitionId = ::String` -- *Required*
The ID of the resource definition.




# Returns

`UpdateResourceDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateResourceDefinition)
"""
@inline update_resource_definition(aws::AWSConfig=default_aws_config(); args...) = update_resource_definition(aws, args)

@inline update_resource_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "PUT", "/greengrass/definition/resources/{ResourceDefinitionId}", args)

@inline update_resource_definition(args) = update_resource_definition(default_aws_config(), args)


"""
    using AWSSDK.Greengrass.update_subscription_definition
    update_subscription_definition([::AWSConfig], arguments::Dict)
    update_subscription_definition([::AWSConfig]; SubscriptionDefinitionId=, <keyword arguments>)

    using AWSCore.Services.greengrass
    greengrass([::AWSConfig], "PUT", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", arguments::Dict)
    greengrass([::AWSConfig], "PUT", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", SubscriptionDefinitionId=, <keyword arguments>)

# UpdateSubscriptionDefinition Operation

Updates a subscription definition.

# Arguments

## `Name = ::String`
The name of the definition.


## `SubscriptionDefinitionId = ::String` -- *Required*
The ID of the subscription definition.




# Returns

`UpdateSubscriptionDefinitionResponse`

# Exceptions

`BadRequestException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/greengrass-2017-06-07/UpdateSubscriptionDefinition)
"""
@inline update_subscription_definition(aws::AWSConfig=default_aws_config(); args...) = update_subscription_definition(aws, args)

@inline update_subscription_definition(aws::AWSConfig, args) = AWSCore.Services.greengrass(aws, "PUT", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", args)

@inline update_subscription_definition(args) = update_subscription_definition(default_aws_config(), args)




end # module Greengrass


#==============================================================================#
# End of file
#==============================================================================#
